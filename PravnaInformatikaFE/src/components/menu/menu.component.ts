import { Component } from '@angular/core';
import { CommonModule } from '@angular/common'; 
import { Router } from '@angular/router';
import { MatDialog } from '@angular/material/dialog';
import { VerdictFormComponent } from '../verdict-form/verdict-form.component';

@Component({
  selector: 'app-menu',
  standalone: true,
  imports: [CommonModule],  
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent {

   constructor(private router: Router, private dialog: MatDialog) {} 

  menuOptions = [
    'Pregled presuda',
    'Unos podataka o slučaju'
  ];

  activeOption = this.menuOptions[0];

  setActive(option: string) {
    this.activeOption = option;

    if(option === 'Pregled presuda') {
      this.router.navigate(['']);
    }


    if(option === 'Unos podataka o slučaju') {
      this.router.navigate(['unos-slucaja']); 
    }
  }
}
