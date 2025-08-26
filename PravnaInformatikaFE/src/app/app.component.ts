import { Component } from '@angular/core';
import { RouterModule } from '@angular/router';
import { MenuComponent } from '../components/menu/menu.component'
import { HttpClient } from '@angular/common/http';
import { CommonModule } from '@angular/common';


@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterModule, MenuComponent, CommonModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'PravnaInformatikaFE';
  

 lawData: any = null; // metapodaci zakona

  constructor(private http: HttpClient) {}

  ngOnInit() {
      this.http.get('laws/laws.csv', { responseType: 'text' }).subscribe(data => {
        const rows = data.split('\n').map(row => row.split(','));
        const headers = rows[0];
        const values = rows[1];
        this.lawData = headers.reduce((obj: any, key: string, index: number) => {
          obj[key.trim()] = values[index]?.trim();
          return obj;
        }, {});
      });
    }

  openKrivicni() {
    // sa putanje 'public/laws/krivicni.html'  
    const url = 'laws/krivicni.html'; 
    window.open(url, '_blank'); // otvara novi tab
  }
}
