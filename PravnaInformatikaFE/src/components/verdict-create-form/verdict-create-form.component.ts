import { Component, Inject } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-verdict-create-form',
  standalone: true,
  imports: [CommonModule, FormsModule], 
  templateUrl: './verdict-create-form.component.html',
  styleUrls: ['./verdict-create-form.component.css']
})
export class VerdictCreateFormComponent {
  articleId: string = '';
  paragraphId: string = '';
  penalty: string = '';

   constructor(
    public dialogRef: MatDialogRef<VerdictCreateFormComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any
  ) {}

  onCancel() {
    this.dialogRef.close();
  }

  onSave() {
    this.dialogRef.close({ articleId: this.articleId, paragraphId: this.paragraphId, penalty: this.penalty });
  }
}
