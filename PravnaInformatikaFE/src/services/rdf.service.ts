import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../env/environment';
import { RdfInputDTO } from '../model/rdfDTO-model';


// Interface for the API response
export interface RdfApiResponse {
    message: string;
    filePath: string;
    fileName: string;
    caseName: string;
}


@Injectable({
    providedIn: 'root'
})
export class RdfService {

    private baseUrl = `${environment.apiHost}rdf`;

    constructor(private http: HttpClient) { }

    generateRdf(rdfInput: RdfInputDTO): Observable<RdfApiResponse> {
        const url = `${this.baseUrl}/generate-rdf`;
        const headers = new HttpHeaders({
            'Content-Type': 'application/json'
        });

        return this.http.post<RdfApiResponse>(url, rdfInput, { headers });
    }





}