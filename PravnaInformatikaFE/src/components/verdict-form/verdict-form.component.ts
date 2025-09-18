import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { VerdictMetadata } from '../../model/verdict-metadata.model';
import { Verdict } from '../../model/verdict.model';
import { VerdictService } from '../../services/verdict.service';
import { Observable, of } from 'rxjs';
import { VerdictSimilarity } from '../../model/verdict-similarity.model';
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
    intentional: false
  };

  allowVerdict: boolean = false;
  loading: boolean = false;
  newVerdictHTML: string = "";

  get today(): string {
    return new Date().toISOString().split('T')[0];
  }

 
  constructor(private verdictService: VerdictService, private dialog: MatDialog, private snackBar: MatSnackBar, private router: Router) {}

  similarVerdicts$: Observable<VerdictSimilarity[]> = of([]);

  // ovdje se poziva rasudjivanje po pravilima i slucajevima
  executeReasoning() {
    console.log('Metapodaci:', this.metadata);
    console.log('Atributi:', this.attributes);

    this.attributes.caseName = this.metadata.caseName;

    this.similarVerdicts$ = this.verdictService.findTop5Similar(this.attributes);
    this.allowVerdict = true;
  }

  openVerdict(caseName: string): void {
    const url = this.verdictService.getVerdictFileUrl(caseName);
    window.open(url, '_blank');
  }
  
   openCreatedVerdict(verdictHTML: string): void {

    // setTimeout(() => {
    //   const url = this.verdictService.getVerdictFileUrl(caseName);
    //   window.open(url, '_blank');
    // }, 2000)
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
