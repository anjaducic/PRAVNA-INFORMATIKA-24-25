export interface VerdictSimilarity {
  caseName: string; // Presuda
  acknowledged?: boolean; // Priznao
  convicted?: boolean; // Osudjivan
  financialStatus?: string; // Materijalno_stanje
  maintenance?: boolean; // Izdrzavanje
  repentance?: boolean; // Kajanje
  previousFamilyIssues?: boolean; // Prethodni_porodicni_problemi
  injuryType?: string; // Tip_povrede
  correctBehavior?: boolean; // Korektno_drzanje
  injuredCriminalProsecution?: boolean; // Osteceni_goni_krivicno
  propertyClaim?: boolean; // Imovinsko_pravni_zahtjev
  accountability?: string; // Uracunljivost
  intentional?: boolean; // Sa_umisljajem
  similarity?: number

  //novi atributi za rasudjivanje po pravilima
  familyObligationsViolation?: string;  //krsenje porodicnih obaveza, korisno za ruleBase rasudjivanje
  extramaritalRelationshipMinor?: string; //vanbracna veza sa maloletnikom, korisno za ruleBase rasudjivanje, ostavljamo string posto je dropdown (zavisno koliko clanova je prekrseno)
  unlawfulDetention?: string; //ilegalno zadrzanje deteta, korisno za ruleBase rasudjivanje
  familyMemberMaintenance?: string;
  domesticViolence?: string;
}

