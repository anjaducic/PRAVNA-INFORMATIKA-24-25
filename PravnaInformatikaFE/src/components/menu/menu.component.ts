import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common'; 
import { NavigationEnd, Router } from '@angular/router';
import { MatDialog } from '@angular/material/dialog';
import { VerdictFormComponent } from '../verdict-form/verdict-form.component';
import { filter } from 'rxjs';

@Component({
  selector: 'app-menu',
  standalone: true,
  imports: [CommonModule],  
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

   constructor(private router: Router, private dialog: MatDialog) {} 

  menuOptions = [
    'Pregled presuda',
    'Unos podataka o slučaju'
  ];

  activeOption = this.menuOptions[0];

  ngOnInit() {
    // Prati promjenu rute
    this.router.events
      .pipe(filter(event => event instanceof NavigationEnd))
      .subscribe(() => {
        if (this.router.url === '/unos-slucaja') {
          this.activeOption = 'Unos podataka o slučaju';
        } else {
          this.activeOption = 'Pregled presuda';
        }
      });
  }

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
