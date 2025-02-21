import { Component } from '@angular/core';
import { VerdictComponent } from '../components/verdict/verdict.component';
import { LandingPageComponent } from '../components/landing-page/landing-page.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [LandingPageComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'PravnaInformatikaFE';
}
