import { Component, OnInit } from '@angular/core';
import { VerdictService } from '../../services/verdict.service';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-verdict-list',
  templateUrl: './verdict-list.component.html',
  standalone: true,
  styleUrls: ['./verdict-list.component.css'],
  imports: [CommonModule, FormsModule],
})
export class VerdictListComponent implements OnInit {

  verdicts: string[] = [];
  filteredVerdicts: string[] = [];
  selectedFilter: 'all' | 'existing' | 'generated' = 'all';

  constructor(private verdictService: VerdictService) {}

  ngOnInit(): void {
    this.verdictService.getVerdictFiles().subscribe(list => {
      this.verdicts = list;
      this.applyFilter();
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
      this.filteredVerdicts = this.verdicts.filter(f => !f.startsWith('G'));
    } else if (this.selectedFilter === 'generated') {
      this.filteredVerdicts = this.verdicts.filter(f => f.startsWith('G'));
    }
  }
}
