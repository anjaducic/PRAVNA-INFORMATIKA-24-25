import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { VerdictMetadata } from '../../model/verdict-metadata.model';
import { Violation } from '../../model/violation.model';
import { Verdict } from '../../model/verdict.model';
import { VerdictService } from '../../services/verdict.service';
import { Observable, of } from 'rxjs';
import { VerdictSimilarity } from '../../model/verdict-similarity.model';
import {
  VIOLATION_KEYS,
  ViolationKey,
} from '../../model/articles-options.constants';
import { RdfService } from '../../services/rdf.service';
import { RdfInputDTO } from '../../model/rdfDTO-model';
import { ViolationService } from '../../services/violations.service';
import { MatDialog, MatDialogModule } from '@angular/material/dialog';
import { VerdictCreate } from '../../model/verdict-create.model';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Router } from '@angular/router';
import { VerdictMainCreateFormComponent } from '../verdict-main-create-form/verdict-main-create-form.component';

@Component({
  selector: 'app-verdict-form',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    MatDialogModule,
    MatProgressSpinnerModule,
    MatSnackBarModule,
  ],
  templateUrl: './verdict-form.component.html',
  styleUrls: ['./verdict-form.component.css'],
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
    date: '',
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

    //Novi
    fails_to_provide_support: false,
    support_duty_legally_established: false,
    violates_family_obligations: false,
    used_force_threat_or_greed: false,
    endangered_child_wellbeing: false,
    commits_domestic_violence: false,
    used_weapon_or_child_present: false,
    caused_severe_injury_or_against_child: false,
    family_member_died: false,
  };

  allowVerdict: boolean = false;
  loading: boolean = false;
  newVerdictHTML: string = '';

  get today(): string {
    return new Date().toISOString().split('T')[0];
  }

  constructor(
    private verdictService: VerdictService,
    private dialog: MatDialog,
    private snackBar: MatSnackBar,
    private router: Router,
    private rdfService: RdfService,
    private violationService: ViolationService
  ) {}

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
    this.similarVerdicts$ = this.verdictService.findTop5Similar(
      this.attributes
    );

    //Generisemo rdf iz forme
    this.generateRdfFromSelectedArticles();
    this.allowVerdict = true;
  }

  openVerdict(caseName: string): void {
    const url = this.verdictService.getVerdictFileUrl(caseName);
    window.open(url, '_blank');
  }

  generateRdfFromSelectedArticles(): void {
    const violations: Record<string, boolean> = {}; //  Pravimo mapu od atributa koji se salju na BE, posto servis prima mapu
    for (const key of VIOLATION_KEYS as readonly ViolationKey[]) {
      if (this.attributes[key] === true) {
        violations[key] = true;
      }
    }

    if (Object.keys(violations).length === 0) {
      console.log('Nema izabranih prekršaja — preskačemo generisanje RDF-a');
      return;
    }

    // 3) Prepare DTO
    const rdfInput: RdfInputDTO = {
      caseName: this.metadata.caseName,
      defendant: this.metadata.defendant,
      dependent: this.metadata.injuredParty,
      violations, // ovde idu checkboxi koji su modelovani za dr-device
    };

    console.log('Generisanje RDF sa članovima zakona:', rdfInput);

    this.isAnalyzing = true;
    this.analysisError = '';
    this.legalAnalysisResult = null;

    this.rdfService.analyzeCase(rdfInput).subscribe({
      next: (response) => {
        console.log('Odgovor od dr-device:', response);
        this.legalAnalysisResult = response;
        this.isAnalyzing = false;
      },
      error: (error) => {
        console.error('Greška pri generisanju RDF sa članovima:', error);
        this.analysisError =
          'Greška pri kreiranju RDF fajla sa članovima zakona.';
        this.isAnalyzing = false;
      },
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
    const overlayContainer = document.querySelector(
      '.cdk-overlay-container'
    ) as HTMLElement;
    if (overlayContainer) {
      overlayContainer.style.zIndex = '2000';
    }
    const dialogRef = this.dialog.open(VerdictMainCreateFormComponent, {
      // width: '1000px',
      // height: '500px',
      disableClose: true,
      data: { caseName: this.metadata.caseName },
    });

    dialogRef.afterClosed().subscribe((result) => {
      if (result) {
        result.violations.forEach((v: Violation) => {
          console.log(
            `Član ${v.articleId}, stav ${v.paragraphId}, kazna: ${v.penalty}`
          );
        });
        console.log(result.isGuilty);

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
          injuredCriminalProsecution:
            this.attributes.injuredCriminalProsecution,
          propertyClaim: this.attributes.propertyClaim,
          accountability: this.attributes.accountability,
          intentional: this.attributes.intentional,

          violations: result.violations,
          foundGuilty: result.isGuilty,
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
          },
        });
      }
    });
  }

  showError(message: string) {
    this.snackBar.open(message, 'Zatvori', {
      duration: 6000,
      horizontalPosition: 'center',
      verticalPosition: 'top',
      panelClass: ['error-snackbar'],
    });
  }
}
