import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../env/environment';

@Injectable({
  providedIn: 'root'
})
export class VerdictService {
  private baseUrl = `${environment.apiHost}verdict`;


  constructor(private http: HttpClient) { }

  // vraca listu imena fajlova sa backend-a
  getVerdictFiles(): Observable<string[]> {
    return this.http.get<string[]>(`${this.baseUrl}/verdicts-names`);
  }

  // vraca URL za otvaranje fajla
  getVerdictFileUrl(fileName: string): string {
    return `${this.baseUrl}/${fileName}`;
  }
}
