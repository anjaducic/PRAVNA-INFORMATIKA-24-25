import { Component, OnChanges, OnInit, SimpleChanges } from '@angular/core';
import { VerdictService } from '../../services/verdict.service';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { VerdictMetadata } from '../../model/verdict-metadata.model';
import { filter, forkJoin } from 'rxjs';
import { Verdict } from '../../model/verdict.model';
import { MatDialogModule } from '@angular/material/dialog';

@Component({
  selector: 'app-verdict-list',
  templateUrl: './verdict-list.component.html',
  standalone: true,
  styleUrls: ['./verdict-list.component.css'],
  imports: [CommonModule, FormsModule, MatDialogModule],
})
export class VerdictListComponent implements OnInit {

  verdicts: VerdictMetadata[] = [];
  filteredVerdicts: VerdictMetadata[] = [];
  verdictAttributesMap: { [caseName: string]: Partial<Verdict> } = {};
  selectedFilter: 'all' | 'existing' | 'generated' = 'all';

  constructor(private verdictService: VerdictService) {}
  
  public loadVerdicts(): void {
    this.verdictService.getVerdictFilesMetadata().subscribe(list => {
      this.verdicts = list;

      const attributeRequests = this.verdicts.map(v =>
        this.verdictService.getVerdictAttributes(v.caseName)
      );

      forkJoin(attributeRequests).subscribe(attributesList => {
        attributesList.forEach((attrs, index) => {
          this.verdictAttributesMap[this.verdicts[index].caseName] = attrs;
        });

        this.applyFilter();
      });
    });
  
  }
  ngOnInit(): void {
      this.loadVerdicts();
  }

  

   openVerdict(caseName: string): void {
    const url = this.verdictService.getVerdictFileUrl(caseName);
    window.open(url, '_blank');
  }

  applyFilter(): void {
    if (this.selectedFilter === 'all') {
      this.filteredVerdicts = [...this.verdicts];
    } else if (this.selectedFilter === 'existing') {
      this.filteredVerdicts = this.verdicts.filter(f => !f.caseName.startsWith('G'));
    } else if (this.selectedFilter === 'generated') {
      this.filteredVerdicts = this.verdicts.filter(f => f.caseName.startsWith('G'));
    }
  }
}
