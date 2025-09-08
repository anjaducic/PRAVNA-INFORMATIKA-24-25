import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { VerdictMetadata } from '../../model/verdict-metadata.model';
import { Verdict } from '../../model/verdict.model';
import { VerdictService } from '../../services/verdict.service';
import { Observable, of } from 'rxjs';
import { VerdictSimilarity } from '../../model/verdict-similarity.model';

@Component({
  selector: 'app-verdict-form',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './verdict-form.component.html',
  styleUrls: ['./verdict-form.component.css']
})
export class VerdictFormComponent {

  metadata: VerdictMetadata = {
    caseName: '',
    court: '',
    judge: '',
    clerk: '',
    defendant: '',
    prosecutorAttorney: '',
    defenseAttorney: '',
    injuredParty: '',
    legalRepresentative: '',
    expert: '',
    participants: '',
    organizations: '',
    date: ''
  };

  attributes: Verdict = {
    caseName: '',
    acknowledged: false,
    convicted: false,
    financialStatus: 'Dobro',
    maintenance: false,
    repentance: false,
    previousFamilyIssues: false,
    injuryType: 'Nema',
    correctBehavior: false,
    injuredCriminalProsecution: false,
    propertyClaim: false,
    accountability: 'Uracunljiv',
    intentional: false,

  };


 

  isDropdownOpen = false;

    selectedConditions: {
    article221: string[]
  } = {
    article221: []
  };

 article221Options = [
    { value: 'fails_to_provide_support', label: 'Ne daje izdržavanje' },
    { value: 'support_duty_legally_established', label: 'Obaveza izdržavanja pravno ustanovljena' },
    { value: 'severe_consequences_occurred', label: 'Nastupile teške posledice' }
  ];

  toggleDropdown() {
  this.isDropdownOpen = !this.isDropdownOpen;
}

toggleOption(value: string) {
  const index = this.selectedConditions.article221.indexOf(value);
  if (index > -1) {
    this.selectedConditions.article221.splice(index, 1);
  } else {
    this.selectedConditions.article221.push(value);
  }
}

isSelected(value: string): boolean {
  return this.selectedConditions.article221.includes(value);
}


  get today(): string {
    return new Date().toISOString().split('T')[0];
  }

 
  constructor(private verdictService: VerdictService) {}

  similarVerdicts$: Observable<VerdictSimilarity[]> = of([]);


  // Convert to format expected by backend
  convertToRdfData(): any {
    return {
      caseName: this.metadata.caseName,
      defendant: this.metadata.defendant,
      dependent: this.metadata.injuredParty,
      
      // Include all detailed conditions
      //...this.detailedConditions
    };
  }


  // ovdje se poziva rasudjivanje po pravilima i slucajevima
  executeReasoning() {
    console.log('Metapodaci:', this.metadata);
    console.log('Atributi:', this.attributes);

    this.attributes.caseName = this.metadata.caseName;

    this.similarVerdicts$ = this.verdictService.findTop5Similar(this.attributes);

  }
  openVerdict(caseName: string): void {
    const url = this.verdictService.getVerdictFileUrl(caseName);
    window.open(url, '_blank');
  }
}
