import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { MatDialog, MatDialogRef } from '@angular/material/dialog';
import { VerdictCreateFormComponent } from '../verdict-create-form/verdict-create-form.component';
import { ConfirmDialogComponent } from '../confirm-dialog/confirm-dialog.component';
import { MAT_DIALOG_DATA } from '@angular/material/dialog';
import { Inject } from '@angular/core';

@Component({
  selector: 'app-verdict-main-create-form',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './verdict-main-create-form.component.html',
  styleUrl: './verdict-main-create-form.component.css'
})
export class VerdictMainCreateFormComponent {
  isGuilty: boolean | null = null;
  violations: any[] = [];

  constructor(
    private dialog: MatDialog,
    private dialogRef: MatDialogRef<VerdictCreateFormComponent>,
    @Inject(MAT_DIALOG_DATA) public data: { caseName: string }
  ) {}

  setVerdict(result: boolean) {
    this.isGuilty = result;
  }

  addViolation() {
    const dialogRef = this.dialog.open(VerdictCreateFormComponent, {
      width: '700px',
      // height: '450px',
      disableClose: true
    });

    dialogRef.afterClosed().subscribe(result => {
      if (result) {
        this.violations.push(result);
      }
    });
  }

  removeViolation(index: number) {
    this.violations.splice(index, 1);
  }

  onSave() {

    const verdict = this.data.caseName;

    const confirmDialog = this.dialog.open(ConfirmDialogComponent, {
      width: '420px',
      data: { title: "Potvrda generisanja" , message: "Da li ste sigurni da želite da generišete presudu${verdictTitle}?"}
    });

    confirmDialog.afterClosed().subscribe(result => {
      if (result) {
        this.dialogRef.close({
          isGuilty: this.isGuilty,
          violations: this.violations
        });
      } else {
        console.log('Generisanje presude otkazano.');
      }
    });

  }

  onCancel() {
    this.dialogRef.close();
  }
}
