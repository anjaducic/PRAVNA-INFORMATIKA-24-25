(import-rdf "facts.rdf")
		(export-rdf export.rdf  failure_to_provide_support_basic failure_to_provide_support_aggravated     
            family_obligation_violation_basic family_obligation_violation_aggravated_health family_obligation_violation_aggravated_death
            extramarital_union_with_minor_basic enabling_minor_extramarital_union enabling_minor_extramarital_union_aggravated 
            child_abduction_basic preventing_child_contact child_abduction_aggravated 
            domestic_violence_basic domestic_violence_aggravated_weapon domestic_violence_aggravated_severe domestic_violence_aggravated_death domestic_violence_protection_violation 
            max_imprisonment min_imprisonment)
		(export-proof proof.ruleml)
		
(defeasiblerule rule1
		(declare (superior rule2 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:fails_to_provide_support "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:support_duty_legally_established "yes")
	) 
  => 
	 
	(failure_to_provide_support_basic 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule2
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:fails_to_provide_support "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:support_duty_legally_established "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:severe_consequences_occurred "yes")
	) 
  => 
	 
	(failure_to_provide_support_aggravated 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule3
		(declare (superior rule4 rule5 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_family_obligations "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:family_member_left_in_hardship "yes")
	) 
  => 
	 
	(family_obligation_violation_basic 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule4
		(declare (superior rule5 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_family_obligations "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:family_member_left_in_hardship "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:severe_health_damage_occurred "yes")
	) 
  => 
	 
	(family_obligation_violation_aggravated_health 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule5
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_family_obligations "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:family_member_left_in_hardship "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:family_member_died "yes")
	) 
  => 
	 
	(family_obligation_violation_aggravated_death 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule6
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_adult "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:lives_in_extramarital_union_with_minor "yes")
	) 
  => 
	 
	(extramarital_union_with_minor_basic 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule7
		(declare (superior rule8 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_parent_or_guardian "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:enables_minor_extramarital_union "yes")
	) 
  => 
	 
	(enabling_minor_extramarital_union 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule8
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_parent_or_guardian "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:enables_minor_extramarital_union "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:used_force_threat_or_greed "yes")
	) 
  => 
	 
	(enabling_minor_extramarital_union_aggravated 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule9
		(declare (superior rule11 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:unlawfully_handles_child_custody "yes")
	) 
  => 
	 
	(child_abduction_basic 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule10
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:prevents_contact_execution "yes")
	) 
  => 
	 
	(preventing_child_contact 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule11
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:unlawfully_handles_child_custody "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:endangered_child_wellbeing "yes")
	) 
  => 
	 
	(child_abduction_aggravated 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule12
		(declare (superior rule13 rule14 rule15 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:commits_domestic_violence "yes")
	) 
  => 
	 
	(domestic_violence_basic 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule13
		(declare (superior rule14 rule15 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:commits_domestic_violence "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:used_weapon_or_child_present "yes")
	) 
  => 
	 
	(domestic_violence_aggravated_weapon 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule14
		(declare (superior rule15 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:commits_domestic_violence "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:caused_severe_injury_or_against_child "yes")
	) 
  => 
	 
	(domestic_violence_aggravated_severe 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule15
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:commits_domestic_violence "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:caused_severe_injury_or_against_child "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:family_member_died "yes")
	) 
  => 
	 
	(domestic_violence_aggravated_death 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule16
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_domestic_violence_protection_order "yes")
	) 
  => 
	 
	(domestic_violence_protection_violation 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule pen1
		 
	(failure_to_provide_support_basic 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 730)
	) 
) 
	
(defeasiblerule pen2
		 
	(failure_to_provide_support_aggravated 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 180)
	) 
) 
	
(defeasiblerule pen3
		 
	(failure_to_provide_support_aggravated 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1825)
	) 
) 
	
(defeasiblerule pen4
		 
	(family_obligation_violation_basic 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 90)
	) 
) 
	
(defeasiblerule pen5
		 
	(family_obligation_violation_basic 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1095)
	) 
) 
	
(defeasiblerule pen6
		 
	(family_obligation_violation_aggravated_health 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 365)
	) 
) 
	
(defeasiblerule pen7
		 
	(family_obligation_violation_aggravated_death 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 2920)
	) 
) 
	
(defeasiblerule pen8_ps6
		 
	(extramarital_union_with_minor_basic 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 90)
	) 
) 
	
(defeasiblerule pen9_ps6
		 
	(extramarital_union_with_minor_basic 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1095)
	) 
) 
	
(defeasiblerule pen8_ps7
		 
	(enabling_minor_extramarital_union 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 90)
	) 
) 
	
(defeasiblerule pen9_ps7
		 
	(enabling_minor_extramarital_union 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1095)
	) 
) 
	
(defeasiblerule pen10
		 
	(enabling_minor_extramarital_union_aggravated 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 180)
	) 
) 
	
(defeasiblerule pen11
		 
	(enabling_minor_extramarital_union_aggravated 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1825)
	) 
) 
	
(defeasiblerule pen12
		 
	(child_abduction_basic 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 730)
	) 
) 
	
(defeasiblerule pen13
		 
	(preventing_child_contact 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 365)
	) 
) 
	
(defeasiblerule pen14
		 
	(child_abduction_aggravated 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 90)
	) 
) 
	
(defeasiblerule pen15
		 
	(child_abduction_aggravated 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1825)
	) 
) 
	
(defeasiblerule pen16
		 
	(domestic_violence_basic 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 180)
	) 
) 
	
(defeasiblerule pen17
		 
	(domestic_violence_basic 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1825)
	) 
) 
	
(defeasiblerule pen18
		 
	(domestic_violence_aggravated_weapon 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 365)
	) 
) 
	
(defeasiblerule pen17_ps13
		 
	(domestic_violence_aggravated_weapon 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1825)
	) 
) 
	
(defeasiblerule pen18_ps14
		 
	(domestic_violence_aggravated_severe 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 365)
	) 
) 
	
(defeasiblerule pen19
		 
	(domestic_violence_aggravated_severe 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 2920)
	) 
) 
	
(defeasiblerule pen20
		 
	(domestic_violence_aggravated_death 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 1825)
	) 
) 
	
(defeasiblerule pen21
		 
	(domestic_violence_aggravated_death 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 5475)
	) 
) 
	
(defeasiblerule pen22
		 
	(domestic_violence_protection_violation 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 365)
	) 
) 
	