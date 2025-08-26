import { Component, OnInit } from '@angular/core';
import { VerdictService } from '../../services/verdict.service';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { VerdictMetadata } from '../../model/verdict-metadata.model';
import { forkJoin } from 'rxjs';
import { Verdict } from '../../model/verdict.model';

@Component({
  selector: 'app-verdict-list',
  templateUrl: './verdict-list.component.html',
  standalone: true,
  styleUrls: ['./verdict-list.component.css'],
  imports: [CommonModule, FormsModule],
})
export class VerdictListComponent implements OnInit {

  verdicts: VerdictMetadata[] = [];
  filteredVerdicts: VerdictMetadata[] = [];
  verdictAttributesMap: { [fileName: string]: Partial<Verdict> } = {};
  selectedFilter: 'all' | 'existing' | 'generated' = 'all';

  constructor(private verdictService: VerdictService) {}

  ngOnInit(): void {
    this.verdictService.getVerdictFilesMetadata().subscribe(list => {
      this.verdicts = list;

      const attributeRequests = this.verdicts.map(v =>
        this.verdictService.getVerdictAttributes(v.fileName)
      );

      forkJoin(attributeRequests).subscribe(attributesList => {
        attributesList.forEach((attrs, index) => {
          this.verdictAttributesMap[this.verdicts[index].fileName] = attrs;
        });

        this.applyFilter();
      });
    });
  }

   openVerdict(fileName: string): void {
    const url = this.verdictService.getVerdictFileUrl(fileName);
    window.open(url, '_blank');
  }

  applyFilter(): void {
    if (this.selectedFilter === 'all') {
      this.filteredVerdicts = [...this.verdicts];
    } else if (this.selectedFilter === 'existing') {
      this.filteredVerdicts = this.verdicts.filter(f => !f.fileName.startsWith('G'));
    } else if (this.selectedFilter === 'generated') {
      this.filteredVerdicts = this.verdicts.filter(f => f.fileName.startsWith('G'));
    }
  }
}
