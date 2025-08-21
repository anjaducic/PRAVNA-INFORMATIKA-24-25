import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { VerdictComponent } from '../components/verdict/verdict.component';
import { LandingPageComponent } from '../components/landing-page/landing-page.component';
import { MenuComponent } from '../components/menu/menu.component'


@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterModule, LandingPageComponent, MenuComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'PravnaInformatikaFE';

  openKrivicni() {
    // sa putanje 'public/laws/krivicni.html'  
    const url = 'laws/krivicni.html'; 
    window.open(url, '_blank'); // otvara novi tab
  }
}
