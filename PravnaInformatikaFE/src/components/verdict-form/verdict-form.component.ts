import { Component, HostListener } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { VerdictMetadata } from '../../model/verdict-metadata.model';
import { Verdict } from '../../model/verdict.model';
import { VerdictService } from '../../services/verdict.service';
import { Observable, of } from 'rxjs';
import { VerdictSimilarity } from '../../model/verdict-similarity.model';
import { ArticleViolations } from '../../model/articles-violation-model';
import { ARTICLE_OPTIONS } from '../../model/articles-options.constants';
import { RdfService } from '../../services/rdf.service';
import { RdfInputDTO } from '../../model/rdfDTO-model';

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

  selectedConditions: ArticleViolations = {
    article221: [],
    article222: [],
    article216: [],
    article217: [],
    article220: []
  };

  articleOptions = ARTICLE_OPTIONS; //  Ovde smo definisali opcije pa samo importujemo

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

  getSelectedOptionsDisplay(article: keyof ArticleViolations): string {
    const selected = this.selectedConditions[article];
    if (selected.length === 0) {
      return 'Izaberite opcije...';
    }

    const optionsMap = this.articleOptions[article];
    const selectedLabels = selected.map(value =>
      optionsMap.find(opt => opt.value === value)?.label || value
    );

    return selectedLabels.join(', ');
  }

  isOptionSelected(article: keyof ArticleViolations, value: string): boolean {
    return this.selectedConditions[article].includes(value);
  }


  get today(): string {
    return new Date().toISOString().split('T')[0];
  }


  constructor(private verdictService: VerdictService, private rdfService: RdfService) { }

  similarVerdicts$: Observable<VerdictSimilarity[]> = of([]);


  // ovdje se poziva rasudjivanje po pravilima i slucajevima
  executeReasoning() {
    console.log('Metapodaci:', this.metadata);
    console.log('Atributi:', this.attributes);
    console.log('Izabrani članci zakona:', this.selectedConditions);


    this.attributes.caseName = this.metadata.caseName;

    this.similarVerdicts$ = this.verdictService.findTop5Similar(this.attributes);

    //Generisemo rdf iz forme
    this.generateRdfFromSelectedArticles();

  }
  openVerdict(caseName: string): void {
    const url = this.verdictService.getVerdictFileUrl(caseName);
    window.open(url, '_blank');
  }


  generateRdfFromSelectedArticles(): void {
    const hasArticleViolations = Object.values(this.selectedConditions).some(article => article.length > 0);

    if (!hasArticleViolations) {
      console.log('Nema izabranih prekršaja iz članova zakona - preskačemo generisanje RDF-a');
      return;
    }

    const violations: { [key: string]: boolean } = {};

    Object.values(this.selectedConditions).flat().forEach(violation => {
      violations[violation] = true;
    });

    const rdfInput: RdfInputDTO = {
      caseName: this.metadata.caseName,
      defendant: this.metadata.defendant,
      dependent: this.metadata.injuredParty,
      violations: violations // Multiple select iz dropdowna, za nasih 5 artikala koji su modelovani
    };

    console.log('Generisanje RDF sa članovima zakona:', rdfInput);

    this.rdfService.generateRdf(rdfInput).subscribe({
      next: (response) => {
        console.log('RDF uspešno generisan sa članovima zakona:', response);
        // alert(`RDF fajl kreiran sa izabranim članovima!\nLokacija: ${response.filePath}`);
      },
      error: (error) => {
        console.error('Greška pri generisanju RDF sa članovima:', error);
        alert('Greška pri kreiranju RDF fajla sa članovima zakona.');
      }
    });
  }
}
