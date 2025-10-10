(import-rdf "facts.rdf")
		(export-rdf export.rdf  failure_to_provide_support_basic failure_to_provide_support_aggravated     
            family_obligation_violation_basic 
            enabling_minor_extramarital_union  
            child_abduction_aggravated 
            domestic_violence_basic domestic_violence_aggravated_weapon domestic_violence_aggravated_severe domestic_violence_aggravated_death 
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
  => 
	 
	(failure_to_provide_support_aggravated 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule3
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:violates_family_obligations "yes")
	) 
  => 
	 
	(family_obligation_violation_basic 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule7
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:used_force_threat_or_greed "yes")
	) 
  => 
	 
	(enabling_minor_extramarital_union 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule11
		 
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
		(declare (superior  rule14 rule15 )) 
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
	
(defeasiblerule pen8
		 
	(enabling_minor_extramarital_union 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 120)
	) 
) 
	
(defeasiblerule pen9
		 
	(enabling_minor_extramarital_union 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1020)
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
	