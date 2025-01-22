import { Component } from '@angular/core';
import { VerdictComponent } from '../components/verdict/verdict.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [VerdictComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'PravnaInformatikaFE';
}
