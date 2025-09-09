export interface VerdictRdfData {

  // Article 221
  fails_to_provide_support?: boolean;
  support_duty_legally_established?: boolean;
  severe_consequences_occurred?: boolean;

  // Article 222
  violates_family_obligations?: boolean;
  family_member_left_in_hardship?: boolean;
  severe_health_damage_occurred?: boolean;
  family_member_died?: boolean;

  // Article 216
  is_adult?: boolean;
  lives_in_extramarital_union_with_minor?: boolean;
  is_parent_or_guardian?: boolean;
  enables_minor_extramarital_union?: boolean;
  used_force_threat_or_greed?: boolean;

  // Article 217
  unlawfully_handles_child_custody?: boolean;
  prevents_contact_execution?: boolean;
  endangered_child_wellbeing?: boolean;

  // Article 220
  commits_domestic_violence?: boolean;
  used_weapon_or_child_present?: boolean;
  caused_severe_injury_or_against_child?: boolean;
  violates_domestic_violence_protection_order?: boolean;

}