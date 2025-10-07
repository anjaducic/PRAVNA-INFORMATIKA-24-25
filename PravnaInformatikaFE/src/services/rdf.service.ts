import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../env/environment';
import { RdfInputDTO } from '../model/rdfDTO-model';


// Interface for the API response
export interface RdfApiResponse {
    provenViolations: string[];
    minSentenceDays: number;
    maxSentenceDays: number;
}


@Injectable({
    providedIn: 'root'
})
export class RdfService {

    private baseUrl = `${environment.apiHost}rdf`;

    constructor(private http: HttpClient) { }

    analyzeCase(rdfInput: RdfInputDTO): Observable<RdfApiResponse> {
        const url = `${this.baseUrl}/analyze-case`;
        const headers = new HttpHeaders({
            'Content-Type': 'application/json'
        });

        return this.http.post<RdfApiResponse>(url, rdfInput, { headers });
    }





}