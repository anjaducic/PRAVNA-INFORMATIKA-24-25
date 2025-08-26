export interface Verdict {
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
}

