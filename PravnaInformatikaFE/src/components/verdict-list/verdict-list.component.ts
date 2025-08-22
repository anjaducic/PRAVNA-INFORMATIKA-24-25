import { Component, OnInit } from '@angular/core';
import { VerdictService } from '../../services/verdict.service';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-verdict-list',
  templateUrl: './verdict-list.component.html',
  standalone: true,
  styleUrls: ['./verdict-list.component.css'],
  imports: [CommonModule],
})
export class VerdictListComponent implements OnInit {

  verdicts: string[] = [];

  constructor(private verdictService: VerdictService) {}

  ngOnInit(): void {
    // vraca listu fajlova sa backend-a
    this.verdictService.getVerdictFiles().subscribe(list => {
      this.verdicts = list;
    });
  }

  // otvara HTML fajl u novom tabu
  openVerdict(fileName: string): void {
    const url = this.verdictService.getVerdictFileUrl(fileName);
    window.open(url, '_blank');
  }
}
