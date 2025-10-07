import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../env/environment';
import { VerdictMetadata } from '../model/verdict-metadata.model';
import { Verdict } from '../model/verdict.model';
import { VerdictCreate } from '../model/verdict-create.model';
import { CreatedVerdict } from '../model/created-verdict.model';

@Injectable({
  providedIn: 'root'
})
export class VerdictService {
  private baseUrl = `${environment.apiHost}verdict`;


  constructor(private http: HttpClient) { }

  // vraca listu metapodataka fajlova sa backend-a
  getVerdictFilesMetadata(): Observable<VerdictMetadata[]> {
    return this.http.get<VerdictMetadata[]>(`${this.baseUrl}/metadata`);
  }

  // vraca URL za otvaranje fajla
  getVerdictFileUrl(fileName: string): string {
    return `${this.baseUrl}/${fileName}`;
  }

  // vraca presudu opisanu atributima, po nazivu presude
  getVerdictAttributes(fileName: string): Observable<Partial<Verdict>> {
    return this.http.get<Partial<Verdict>>(`${this.baseUrl}/attributes/${fileName}`);
  }

  //rasudjivanje po slucajevima
  findTop5Similar(input: Verdict): Observable<Verdict[]> {
    return this.http.post<Verdict[]>(`${this.baseUrl}/findTop5Similar`, input);
  }

  createVerdict(verdict: VerdictCreate): Observable<CreatedVerdict>{
    return this.http.post<CreatedVerdict>(`${this.baseUrl}/generate`, verdict);
  }

  getVerdict(fileName: string): Observable<string> {
    return this.http.get<string>(`${this.baseUrl}/${fileName}`, { responseType: 'text' as 'json'});
  }
}
