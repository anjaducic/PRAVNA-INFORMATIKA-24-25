import { Component } from '@angular/core';
import { CommonModule } from '@angular/common'; 
import { Router } from '@angular/router';

@Component({
  selector: 'app-menu',
  standalone: true,
  imports: [CommonModule],  
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent {

   constructor(private router: Router) {} 

  menuOptions = [
    'Pregled presuda',
    'Unos atributa za rasuđivanje'
  ];

  activeOption = this.menuOptions[0];

  setActive(option: string) {
    this.activeOption = option;

    if(option === 'Pregled postojećih presuda') {
    this.router.navigate(['']);
  }
  }
}
