export const VIOLATION_KEYS = [
  // 221
  'fails_to_provide_support',
  'support_duty_legally_established',

  // 222
  'violates_family_obligations',

  // 216
  'used_force_threat_or_greed',

  // 217
  'endangered_child_wellbeing',

  // 220
  'commits_domestic_violence',
  'used_weapon_or_child_present',
  'caused_severe_injury_or_against_child',
  'family_member_died',
] as const;

export type ViolationKey = (typeof VIOLATION_KEYS)[number];
export const VIOLATION_KEY_SET = new Set<string>(VIOLATION_KEYS); //  Kako bismo znali za ove atribute da se salju na BE
