import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class ViolationService {
  private readonly violationMap: { [key: string]: string } = {
    // Article 221 - Failure to Provide Support
    failure_to_provide_support_basic: 'Osnovni oblik nedavanja izdržavanja',
    failure_to_provide_support_aggravated:
      'Otežani oblik nedavanja izdržavanja',

    // Article 222 - Family Obligation Violations
    family_obligation_violation_basic:
      'Osnovni oblik kršenja porodičnih obaveza',
    family_obligation_violation_aggravated_health:
      'Kršenje porodičnih obaveza sa zdravstvenim posledicama',
    family_obligation_violation_aggravated_death:
      'Kršenje porodičnih obaveza sa smrtnim ishodom',

    // Article 216 - Extramarital Unions with Minors
    extramarital_union_with_minor_basic: 'Vanbračna zajednica sa maloletnikom',
    enabling_minor_extramarital_union:
      'Omogućavanje vanbračne zajednice maloletnika',
    enabling_minor_extramarital_union_aggravated:
      'Otežano omogućavanje vanbračne zajednice maloletnika',

    // Article 217 - Child Abduction
    child_abduction_basic: 'Osnovni oblik oduzimanja deteta',
    preventing_child_contact: 'Sprečavanje kontakta sa detetom',
    child_abduction_aggravated: 'Otežani oblik oduzimanja deteta',

    // Article 220 - Domestic Violence
    domestic_violence_basic: 'Osnovno nasilje u porodici',
    domestic_violence_aggravated_weapon:
      'Nasilje u porodici sa oružjem ili u prisustvu deteta',
    domestic_violence_aggravated_severe: 'Teško nasilje u porodici',
    domestic_violence_aggravated_death: 'Nasilje u porodici sa smrtnim ishodom',
  };

  translateViolation(violation: string): string {
    return this.violationMap[violation] || violation;
  }

  getAllViolationTypes(): string[] {
    return Object.keys(this.violationMap);
  }
}
