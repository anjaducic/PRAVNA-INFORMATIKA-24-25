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
import { ViolationService } from '../../services/violations.service';
import { MatDialog, MatDialogModule } from '@angular/material/dialog';
import { VerdictCreateFormComponent } from '../verdict-create-form/verdict-create-form.component';
import { VerdictCreate } from '../../model/verdict-create.model';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Router } from '@angular/router';


@Component({
  selector: 'app-verdict-form',
  standalone: true,
  imports: [CommonModule, FormsModule, MatDialogModule, MatProgressSpinnerModule, MatSnackBarModule],
  templateUrl: './verdict-form.component.html',
  styleUrls: ['./verdict-form.component.css']
})
export class VerdictFormComponent {

  legalAnalysisResult: any = null;
  isAnalyzing: boolean = false;
  analysisError: string = '';

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

  allowVerdict: boolean = false;
  loading: boolean = false;
  newVerdictHTML: string = "";

  get today(): string {
    return new Date().toISOString().split('T')[0];
  }


  constructor(private verdictService: VerdictService, private dialog: MatDialog, private snackBar: MatSnackBar, private router: Router, private rdfService: RdfService, private violationService: ViolationService) { }

  similarVerdicts$: Observable<VerdictSimilarity[]> = of([]);

  //  Posto sa BE dobijemo na engleskom imena, onda ih formatiramo ovako
  formatViolationName(violation: string): string {
    return this.violationService.translateViolation(violation);
  }

  // ovdje se poziva rasudjivanje po pravilima i slucajevima
  executeReasoning() {
    console.log('Metapodaci:', this.metadata);
    console.log('Atributi:', this.attributes);

    this.attributes.caseName = this.metadata.caseName;
    this.similarVerdicts$ = this.verdictService.findTop5Similar(this.attributes);

    //Generisemo rdf iz forme
    this.generateRdfFromSelectedArticles();

    this.allowVerdict = true;
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

    this.isAnalyzing = true;
    this.analysisError = '';
    this.legalAnalysisResult = null;

    this.rdfService.analyzeCase(rdfInput).subscribe({
      next: (response) => {
        console.log('Odgovor od dr-device:', response); //  Ovde izvlacimo podatke iz export.rdf od dr-device, dobijamo koje glave kog clana iz zakonika je prekrsio
        this.legalAnalysisResult = response;
        this.isAnalyzing = false;
      },
      error: (error) => {
        console.error('Greška pri generisanju RDF sa članovima:', error);
        this.analysisError = 'Greška pri kreiranju RDF fajla sa članovima zakona.';
        this.isAnalyzing = false;
      }
    });
  }

  openCreatedVerdict(verdictHTML: string): void {

    const newWindow = window.open('', '_blank');

    if (newWindow) {
      newWindow.document.open();
      newWindow.document.write(verdictHTML);
      newWindow.document.close();
    }
    this.router.navigate(['']);

  }

  openVerdictCreateForm() {
    const overlayContainer = document.querySelector('.cdk-overlay-container') as HTMLElement;
    if (overlayContainer) {
      overlayContainer.style.zIndex = '2000';
    }
    const dialogRef = this.dialog.open(VerdictCreateFormComponent, {
      width: '1000px',
      // height: '500px',
      disableClose: true,
    });

    dialogRef.afterClosed().subscribe(result => {
      if (result) {
        const payload: VerdictCreate = {
          caseName: this.metadata.caseName,
          court: this.metadata.court,
          judge: this.metadata.judge,
          clerk: this.metadata.clerk,
          defendant: this.metadata.defendant,
          prosecutorAttorney: this.metadata.prosecutorAttorney,
          defenseAttorney: this.metadata.defenseAttorney,
          injuredParty: this.metadata.injuredParty,
          legalRepresentative: this.metadata.legalRepresentative,
          expert: this.metadata.expert,
          participants: this.metadata.participants,
          organizations: this.metadata.organizations,
          date: this.metadata.date,

          acknowledged: this.attributes.acknowledged,
          convicted: this.attributes.convicted,
          financialStatus: this.attributes.financialStatus,
          maintenance: this.attributes.maintenance,
          repentance: this.attributes.repentance,
          previousFamilyIssues: this.attributes.previousFamilyIssues,
          injuryType: this.attributes.injuryType,
          correctBehavior: this.attributes.correctBehavior,
          injuredCriminalProsecution: this.attributes.injuredCriminalProsecution,
          propertyClaim: this.attributes.propertyClaim,
          accountability: this.attributes.accountability,
          intentional: this.attributes.intentional,

          articleId: result.articleId,
          paragraphId: result.paragraphId,
          penalty: result.penalty
        };

        console.log(payload);
        this.loading = true;
        this.verdictService.createVerdict(payload).subscribe({
          next: (response) => {
            console.log('Response from backend!');
            // setTimeout(() => {
            //   this.loading = false;
            //   console.log(response.fileName);
            //   this.fileName = response.fileName;
            //   // this.openVerdict(response.fileName);
            // }, 125000);
            this.loading = false;
            console.log(response.fileName);
            this.newVerdictHTML = response.fileName;
          },
          error: (err) => {
            console.error('Error:', err);
            this.loading = false;
            this.showError('Došlo je do greške prilikom generisanja presude.');
          }
        });
      }
    });
  }

  showError(message: string) {
    this.snackBar.open(message, 'Zatvori', {
      duration: 6000,
      horizontalPosition: 'center',
      verticalPosition: 'top',
      panelClass: ['error-snackbar']
    });
  }

}
