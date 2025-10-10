export interface Verdict {
  caseName: string; // Presuda
  acknowledged?: boolean; // Priznao
  convicted?: boolean; // Osudjivan
  financialStatus?: string; // Materijalno_stanje
  maintenance?: boolean; // Izdrzavanje, korisno za ruleBase rasudjivanje
  repentance?: boolean; // Kajanje
  previousFamilyIssues?: boolean; // Prethodni_porodicni_problemi
  injuryType?: string; // Tip_povrede, korisno za ruleBase rasudjivanje
  correctBehavior?: boolean; // Korektno_drzanje
  injuredCriminalProsecution?: boolean; // Osteceni_goni_krivicno
  propertyClaim?: boolean; // Imovinsko_pravni_zahtjev
  accountability?: string; // Uracunljivost
  intentional?: boolean; // Sa_umisljajem

  //novi atributi za rasudjivanje po pravilima
  fails_to_provide_support?: boolean;
  support_duty_legally_established?: boolean;
  violates_family_obligations?: boolean;
  used_force_threat_or_greed?: boolean;
  endangered_child_wellbeing?: boolean;
  commits_domestic_violence?: boolean;
  used_weapon_or_child_present?: boolean;
  caused_severe_injury_or_against_child?: boolean;
  family_member_died?: boolean;
}
