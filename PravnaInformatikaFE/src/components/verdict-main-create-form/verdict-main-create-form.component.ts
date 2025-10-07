import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { MatDialog, MatDialogRef } from '@angular/material/dialog';
import { VerdictCreateFormComponent } from '../verdict-create-form/verdict-create-form.component';

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
    private dialogRef: MatDialogRef<VerdictCreateFormComponent>
  ) {}

  setVerdict(result: boolean) {
    this.isGuilty = result;
  }

  addViolation() {
    const dialogRef = this.dialog.open(VerdictCreateFormComponent, {
      width: '400px',
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
    this.dialogRef.close({
      isGuilty: this.isGuilty,
      violations: this.violations
    });
  }

  onCancel() {
    this.dialogRef.close();
  }
}
