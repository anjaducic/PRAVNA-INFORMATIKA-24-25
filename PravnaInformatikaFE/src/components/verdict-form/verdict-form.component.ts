import { Component, HostListener } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { VerdictMetadata } from '../../model/verdict-metadata.model';
import { Verdict } from '../../model/verdict.model';
import { VerdictService } from '../../services/verdict.service';
import { Observable, of } from 'rxjs';
import { VerdictSimilarity } from '../../model/verdict-similarity.model';
import { MatSelectModule } from '@angular/material/select';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';

@Component({
  selector: 'app-verdict-form',
  standalone: true,
  imports: [CommonModule, FormsModule, MatSelectModule, MatFormFieldModule, MatInputModule],
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


  selectedConditions: {  //Definisemo svaki artikal kao prazan niz (posto je multipleSelect niz)
    article221: string[];
    article222: string[];
    article216: string[];
    article217: string[];
    article220: string[];
  } = {
      article221: [],
      article222: [],
      article216: [],
      article217: [],
      article220: []
    };

  //Opcije definisemo ovde za dropdown
  article221Options = [
    { value: 'fails_to_provide_support', label: 'Ne daje izdržavanje' },
    { value: 'support_duty_legally_established', label: 'Obaveza izdržavanja pravno ustanovljena' },
    { value: 'severe_consequences_occurred', label: 'Nastupile teške posledice' }
  ];

  article222Options = [
    { value: 'violates_family_obligations', label: 'Krši porodične obaveze' },
    { value: 'family_member_left_in_hardship', label: 'Član porodice ostavljen u nevolji' },
    { value: 'severe_health_damage_occurred', label: 'Nastupila teška šteta po zdravlje' },
    { value: 'family_member_died', label: 'Član porodice je umro' }
  ];

  article216Options = [
    { value: 'is_adult', label: 'Punoletan je' },
    { value: 'lives_in_extramarital_union_with_minor', label: 'Živi u vanbračnoj zajednici sa maloletnim licem' },
    { value: 'is_parent_or_guardian', label: 'Roditelj ili staratelj' },
    { value: 'enables_minor_extramarital_union', label: 'Omogućava maloletnom licu vanbračnu zajednicu' },
    { value: 'used_force_threat_or_greed', label: 'Koristio silu, pretnju ili koristoljublje' }
  ];

  article217Options = [
    { value: 'unlawfully_handles_child_custody', label: 'Nezakonito rukuje čuvanjem deteta' },
    { value: 'prevents_contact_execution', label: 'Sprečava izvršavanje kontakta' },
    { value: 'endangered_child_wellbeing', label: 'Ugrožava blagostanje deteta' }
  ];

  article220Options = [
    { value: 'commits_domestic_violence', label: 'Čini nasilje u porodici' },
    { value: 'used_weapon_or_child_present', label: 'Koristio oružje ili u prisustvu deteta' },
    { value: 'caused_severe_injury_or_against_child', label: 'Prouzrokovao tešku povredu ili protiv deteta' },
    { value: 'violates_domestic_violence_protection_order', label: 'Krši zaštitnu meru nasilja u porodici' }
  ];

  dropdownStates = {
    article221: false,
    article222: false,
    article216: false,
    article217: false,
    article220: false
  };

  // Gledamo da li je kliknuto van dropdown, ako jeste, onda ga zatvori
  @HostListener('document:click', ['$event'])
  onDocumentClick(event: MouseEvent): void {
    const target = event.target as HTMLElement;
    const isInsideDropdown = target.closest('.custom-dropdown');

    if (!isInsideDropdown) {
      Object.keys(this.dropdownStates).forEach(key => {
        this.dropdownStates[key as keyof typeof this.dropdownStates] = false;
      });
    }
  }

  toggleDropdown(article: keyof typeof this.dropdownStates): void {
    Object.keys(this.dropdownStates).forEach(key => {
      if (key !== article) {
        this.dropdownStates[key as keyof typeof this.dropdownStates] = false;
      }
    });

    this.dropdownStates[article] = !this.dropdownStates[article];
  }

  toggleOption(article: keyof typeof this.selectedConditions, value: string): void {
    const index = this.selectedConditions[article].indexOf(value);
    if (index > -1) {
      this.selectedConditions[article].splice(index, 1);
    } else {
      this.selectedConditions[article].push(value);
    }
  }

  getSelectedOptionsDisplay(article: keyof typeof this.selectedConditions): string {
    const selected = this.selectedConditions[article];
    if (selected.length === 0) {
      return 'Izaberite opcije...';
    }

    const optionsMap = this.getOptionsForArticle(article);
    const selectedLabels = selected.map(value =>
      optionsMap.find(opt => opt.value === value)?.label || value
    );

    return selectedLabels.join(', ');
  }

  getOptionsForArticle(article: keyof typeof this.selectedConditions) { //Uzmi opcije za svaki artikal po id
    switch (article) {
      case 'article221': return this.article221Options;
      case 'article222': return this.article222Options;
      case 'article216': return this.article216Options;
      case 'article217': return this.article217Options;
      case 'article220': return this.article220Options;
      default: return [];
    }
  }

  isOptionSelected(article: keyof typeof this.selectedConditions, value: string): boolean {
    return this.selectedConditions[article].includes(value);
  }

  get today(): string {
    return new Date().toISOString().split('T')[0];
  }


  constructor(private verdictService: VerdictService) { }

  similarVerdicts$: Observable<VerdictSimilarity[]> = of([]);


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
