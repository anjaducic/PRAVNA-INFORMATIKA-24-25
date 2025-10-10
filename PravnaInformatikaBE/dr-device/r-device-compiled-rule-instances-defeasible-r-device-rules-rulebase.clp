([pen21-defeasibly-dot] of derived-attribute-rule
   (pos-name pen21-defeasibly-dot-gen290)
   (depends-on declare max_imprisonment domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen21] ) ) ) ?gen256 <- ( max_imprisonment ( value 5475 ) ( positive 1 ) ( positive-derivator pen21 $? ) ) ( test ( eq ( class ?gen256 ) max_imprisonment ) ) ( not ( and ?gen263 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen258 & : ( not ( member$ pen21 $?gen258 ) ) ) ) ) ) => ?gen256 <- ( max_imprisonment ( positive 0 ) )"))

([pen21-defeasibly] of derived-attribute-rule
   (pos-name pen21-defeasibly-gen292)
   (depends-on declare domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen21] ) ) ) ?gen263 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( max_imprisonment ( value 5475 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen258 & : ( not ( member$ pen21 $?gen258 ) ) ) ) ( test ( eq ( class ?gen256 ) max_imprisonment ) ) => ?gen256 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen21 ?gen263 ) )"))

([pen21-overruled-dot] of derived-attribute-rule
   (pos-name pen21-overruled-dot-gen294)
   (depends-on declare max_imprisonment domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen21] ) ) ) ?gen256 <- ( max_imprisonment ( value 5475 ) ( negative-support $?gen259 ) ( negative-overruled $?gen260 & : ( subseq-pos ( create$ pen21-overruled $?gen259 $$$ $?gen260 ) ) ) ) ( test ( eq ( class ?gen256 ) max_imprisonment ) ) ( not ( and ?gen263 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( max_imprisonment ( positive-defeated $?gen258 & : ( not ( member$ pen21 $?gen258 ) ) ) ) ) ) => ( calc ( bind $?gen261 ( delete-member$ $?gen260 ( create$ pen21-overruled $?gen259 ) ) ) ) ?gen256 <- ( max_imprisonment ( negative-overruled $?gen261 ) )"))

([pen21-overruled] of derived-attribute-rule
   (pos-name pen21-overruled-gen296)
   (depends-on declare domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen21] ) ) ) ?gen263 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( max_imprisonment ( value 5475 ) ( negative-support $?gen259 ) ( negative-overruled $?gen260 & : ( not ( subseq-pos ( create$ pen21-overruled $?gen259 $$$ $?gen260 ) ) ) ) ( positive-defeated $?gen258 & : ( not ( member$ pen21 $?gen258 ) ) ) ) ( test ( eq ( class ?gen256 ) max_imprisonment ) ) => ( calc ( bind $?gen261 ( create$ pen21-overruled $?gen259 $?gen260 ) ) ) ?gen256 <- ( max_imprisonment ( negative-overruled $?gen261 ) )"))

([pen21-support] of derived-attribute-rule
   (pos-name pen21-support-gen298)
   (depends-on declare domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen21] ) ) ) ?gen255 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ) ?gen256 <- ( max_imprisonment ( value 5475 ) ( positive-support $?gen258 & : ( not ( subseq-pos ( create$ pen21 ?gen255 $$$ $?gen258 ) ) ) ) ) ( test ( eq ( class ?gen256 ) max_imprisonment ) ) => ( calc ( bind $?gen261 ( create$ pen21 ?gen255 $?gen258 ) ) ) ?gen256 <- ( max_imprisonment ( positive-support $?gen261 ) )"))

([pen20-defeasibly-dot] of derived-attribute-rule
   (pos-name pen20-defeasibly-dot-gen300)
   (depends-on declare min_imprisonment domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen20] ) ) ) ?gen247 <- ( min_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen20 $? ) ) ( test ( eq ( class ?gen247 ) min_imprisonment ) ) ( not ( and ?gen254 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ pen20 $?gen249 ) ) ) ) ) ) => ?gen247 <- ( min_imprisonment ( positive 0 ) )"))

([pen20-defeasibly] of derived-attribute-rule
   (pos-name pen20-defeasibly-gen302)
   (depends-on declare domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen20] ) ) ) ?gen254 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( min_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ pen20 $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) min_imprisonment ) ) => ?gen247 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen20 ?gen254 ) )"))

([pen20-overruled-dot] of derived-attribute-rule
   (pos-name pen20-overruled-dot-gen304)
   (depends-on declare min_imprisonment domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen20] ) ) ) ?gen247 <- ( min_imprisonment ( value 1825 ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( subseq-pos ( create$ pen20-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( test ( eq ( class ?gen247 ) min_imprisonment ) ) ( not ( and ?gen254 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( min_imprisonment ( positive-defeated $?gen249 & : ( not ( member$ pen20 $?gen249 ) ) ) ) ) ) => ( calc ( bind $?gen252 ( delete-member$ $?gen251 ( create$ pen20-overruled $?gen250 ) ) ) ) ?gen247 <- ( min_imprisonment ( negative-overruled $?gen252 ) )"))

([pen20-overruled] of derived-attribute-rule
   (pos-name pen20-overruled-gen306)
   (depends-on declare domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen20] ) ) ) ?gen254 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( min_imprisonment ( value 1825 ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( not ( subseq-pos ( create$ pen20-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( positive-defeated $?gen249 & : ( not ( member$ pen20 $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) min_imprisonment ) ) => ( calc ( bind $?gen252 ( create$ pen20-overruled $?gen250 $?gen251 ) ) ) ?gen247 <- ( min_imprisonment ( negative-overruled $?gen252 ) )"))

([pen20-support] of derived-attribute-rule
   (pos-name pen20-support-gen308)
   (depends-on declare domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen20] ) ) ) ?gen246 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ) ?gen247 <- ( min_imprisonment ( value 1825 ) ( positive-support $?gen249 & : ( not ( subseq-pos ( create$ pen20 ?gen246 $$$ $?gen249 ) ) ) ) ) ( test ( eq ( class ?gen247 ) min_imprisonment ) ) => ( calc ( bind $?gen252 ( create$ pen20 ?gen246 $?gen249 ) ) ) ?gen247 <- ( min_imprisonment ( positive-support $?gen252 ) )"))

([pen19-defeasibly-dot] of derived-attribute-rule
   (pos-name pen19-defeasibly-dot-gen310)
   (depends-on declare max_imprisonment domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen19] ) ) ) ?gen238 <- ( max_imprisonment ( value 2920 ) ( positive 1 ) ( positive-derivator pen19 $? ) ) ( test ( eq ( class ?gen238 ) max_imprisonment ) ) ( not ( and ?gen245 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ pen19 $?gen240 ) ) ) ) ) ) => ?gen238 <- ( max_imprisonment ( positive 0 ) )"))

([pen19-defeasibly] of derived-attribute-rule
   (pos-name pen19-defeasibly-gen312)
   (depends-on declare domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen19] ) ) ) ?gen245 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( max_imprisonment ( value 2920 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ pen19 $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) max_imprisonment ) ) => ?gen238 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen19 ?gen245 ) )"))

([pen19-overruled-dot] of derived-attribute-rule
   (pos-name pen19-overruled-dot-gen314)
   (depends-on declare max_imprisonment domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen19] ) ) ) ?gen238 <- ( max_imprisonment ( value 2920 ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( subseq-pos ( create$ pen19-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( test ( eq ( class ?gen238 ) max_imprisonment ) ) ( not ( and ?gen245 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( max_imprisonment ( positive-defeated $?gen240 & : ( not ( member$ pen19 $?gen240 ) ) ) ) ) ) => ( calc ( bind $?gen243 ( delete-member$ $?gen242 ( create$ pen19-overruled $?gen241 ) ) ) ) ?gen238 <- ( max_imprisonment ( negative-overruled $?gen243 ) )"))

([pen19-overruled] of derived-attribute-rule
   (pos-name pen19-overruled-gen316)
   (depends-on declare domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen19] ) ) ) ?gen245 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( max_imprisonment ( value 2920 ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( not ( subseq-pos ( create$ pen19-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( positive-defeated $?gen240 & : ( not ( member$ pen19 $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) max_imprisonment ) ) => ( calc ( bind $?gen243 ( create$ pen19-overruled $?gen241 $?gen242 ) ) ) ?gen238 <- ( max_imprisonment ( negative-overruled $?gen243 ) )"))

([pen19-support] of derived-attribute-rule
   (pos-name pen19-support-gen318)
   (depends-on declare domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen19] ) ) ) ?gen237 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ) ?gen238 <- ( max_imprisonment ( value 2920 ) ( positive-support $?gen240 & : ( not ( subseq-pos ( create$ pen19 ?gen237 $$$ $?gen240 ) ) ) ) ) ( test ( eq ( class ?gen238 ) max_imprisonment ) ) => ( calc ( bind $?gen243 ( create$ pen19 ?gen237 $?gen240 ) ) ) ?gen238 <- ( max_imprisonment ( positive-support $?gen243 ) )"))

([pen18_ps14-defeasibly-dot] of derived-attribute-rule
   (pos-name pen18_ps14-defeasibly-dot-gen320)
   (depends-on declare min_imprisonment domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen18_ps14] ) ) ) ?gen229 <- ( min_imprisonment ( value 365 ) ( positive 1 ) ( positive-derivator pen18_ps14 $? ) ) ( test ( eq ( class ?gen229 ) min_imprisonment ) ) ( not ( and ?gen236 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen231 & : ( not ( member$ pen18_ps14 $?gen231 ) ) ) ) ) ) => ?gen229 <- ( min_imprisonment ( positive 0 ) )"))

([pen18_ps14-defeasibly] of derived-attribute-rule
   (pos-name pen18_ps14-defeasibly-gen322)
   (depends-on declare domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen18_ps14] ) ) ) ?gen236 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( min_imprisonment ( value 365 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen231 & : ( not ( member$ pen18_ps14 $?gen231 ) ) ) ) ( test ( eq ( class ?gen229 ) min_imprisonment ) ) => ?gen229 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen18_ps14 ?gen236 ) )"))

([pen18_ps14-overruled-dot] of derived-attribute-rule
   (pos-name pen18_ps14-overruled-dot-gen324)
   (depends-on declare min_imprisonment domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen18_ps14] ) ) ) ?gen229 <- ( min_imprisonment ( value 365 ) ( negative-support $?gen232 ) ( negative-overruled $?gen233 & : ( subseq-pos ( create$ pen18_ps14-overruled $?gen232 $$$ $?gen233 ) ) ) ) ( test ( eq ( class ?gen229 ) min_imprisonment ) ) ( not ( and ?gen236 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( min_imprisonment ( positive-defeated $?gen231 & : ( not ( member$ pen18_ps14 $?gen231 ) ) ) ) ) ) => ( calc ( bind $?gen234 ( delete-member$ $?gen233 ( create$ pen18_ps14-overruled $?gen232 ) ) ) ) ?gen229 <- ( min_imprisonment ( negative-overruled $?gen234 ) )"))

([pen18_ps14-overruled] of derived-attribute-rule
   (pos-name pen18_ps14-overruled-gen326)
   (depends-on declare domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen18_ps14] ) ) ) ?gen236 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( min_imprisonment ( value 365 ) ( negative-support $?gen232 ) ( negative-overruled $?gen233 & : ( not ( subseq-pos ( create$ pen18_ps14-overruled $?gen232 $$$ $?gen233 ) ) ) ) ( positive-defeated $?gen231 & : ( not ( member$ pen18_ps14 $?gen231 ) ) ) ) ( test ( eq ( class ?gen229 ) min_imprisonment ) ) => ( calc ( bind $?gen234 ( create$ pen18_ps14-overruled $?gen232 $?gen233 ) ) ) ?gen229 <- ( min_imprisonment ( negative-overruled $?gen234 ) )"))

([pen18_ps14-support] of derived-attribute-rule
   (pos-name pen18_ps14-support-gen328)
   (depends-on declare domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen18_ps14] ) ) ) ?gen228 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ) ?gen229 <- ( min_imprisonment ( value 365 ) ( positive-support $?gen231 & : ( not ( subseq-pos ( create$ pen18_ps14 ?gen228 $$$ $?gen231 ) ) ) ) ) ( test ( eq ( class ?gen229 ) min_imprisonment ) ) => ( calc ( bind $?gen234 ( create$ pen18_ps14 ?gen228 $?gen231 ) ) ) ?gen229 <- ( min_imprisonment ( positive-support $?gen234 ) )"))

([pen17_ps13-defeasibly-dot] of derived-attribute-rule
   (pos-name pen17_ps13-defeasibly-dot-gen330)
   (depends-on declare max_imprisonment domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen17_ps13] ) ) ) ?gen220 <- ( max_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen17_ps13 $? ) ) ( test ( eq ( class ?gen220 ) max_imprisonment ) ) ( not ( and ?gen227 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen222 & : ( not ( member$ pen17_ps13 $?gen222 ) ) ) ) ) ) => ?gen220 <- ( max_imprisonment ( positive 0 ) )"))

([pen17_ps13-defeasibly] of derived-attribute-rule
   (pos-name pen17_ps13-defeasibly-gen332)
   (depends-on declare domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen17_ps13] ) ) ) ?gen227 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( max_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen222 & : ( not ( member$ pen17_ps13 $?gen222 ) ) ) ) ( test ( eq ( class ?gen220 ) max_imprisonment ) ) => ?gen220 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen17_ps13 ?gen227 ) )"))

([pen17_ps13-overruled-dot] of derived-attribute-rule
   (pos-name pen17_ps13-overruled-dot-gen334)
   (depends-on declare max_imprisonment domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen17_ps13] ) ) ) ?gen220 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen223 ) ( negative-overruled $?gen224 & : ( subseq-pos ( create$ pen17_ps13-overruled $?gen223 $$$ $?gen224 ) ) ) ) ( test ( eq ( class ?gen220 ) max_imprisonment ) ) ( not ( and ?gen227 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( max_imprisonment ( positive-defeated $?gen222 & : ( not ( member$ pen17_ps13 $?gen222 ) ) ) ) ) ) => ( calc ( bind $?gen225 ( delete-member$ $?gen224 ( create$ pen17_ps13-overruled $?gen223 ) ) ) ) ?gen220 <- ( max_imprisonment ( negative-overruled $?gen225 ) )"))

([pen17_ps13-overruled] of derived-attribute-rule
   (pos-name pen17_ps13-overruled-gen336)
   (depends-on declare domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen17_ps13] ) ) ) ?gen227 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen223 ) ( negative-overruled $?gen224 & : ( not ( subseq-pos ( create$ pen17_ps13-overruled $?gen223 $$$ $?gen224 ) ) ) ) ( positive-defeated $?gen222 & : ( not ( member$ pen17_ps13 $?gen222 ) ) ) ) ( test ( eq ( class ?gen220 ) max_imprisonment ) ) => ( calc ( bind $?gen225 ( create$ pen17_ps13-overruled $?gen223 $?gen224 ) ) ) ?gen220 <- ( max_imprisonment ( negative-overruled $?gen225 ) )"))

([pen17_ps13-support] of derived-attribute-rule
   (pos-name pen17_ps13-support-gen338)
   (depends-on declare domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen17_ps13] ) ) ) ?gen219 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) ?gen220 <- ( max_imprisonment ( value 1825 ) ( positive-support $?gen222 & : ( not ( subseq-pos ( create$ pen17_ps13 ?gen219 $$$ $?gen222 ) ) ) ) ) ( test ( eq ( class ?gen220 ) max_imprisonment ) ) => ( calc ( bind $?gen225 ( create$ pen17_ps13 ?gen219 $?gen222 ) ) ) ?gen220 <- ( max_imprisonment ( positive-support $?gen225 ) )"))

([pen18-defeasibly-dot] of derived-attribute-rule
   (pos-name pen18-defeasibly-dot-gen340)
   (depends-on declare min_imprisonment domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen18] ) ) ) ?gen211 <- ( min_imprisonment ( value 365 ) ( positive 1 ) ( positive-derivator pen18 $? ) ) ( test ( eq ( class ?gen211 ) min_imprisonment ) ) ( not ( and ?gen218 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen213 & : ( not ( member$ pen18 $?gen213 ) ) ) ) ) ) => ?gen211 <- ( min_imprisonment ( positive 0 ) )"))

([pen18-defeasibly] of derived-attribute-rule
   (pos-name pen18-defeasibly-gen342)
   (depends-on declare domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen18] ) ) ) ?gen218 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( min_imprisonment ( value 365 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen213 & : ( not ( member$ pen18 $?gen213 ) ) ) ) ( test ( eq ( class ?gen211 ) min_imprisonment ) ) => ?gen211 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen18 ?gen218 ) )"))

([pen18-overruled-dot] of derived-attribute-rule
   (pos-name pen18-overruled-dot-gen344)
   (depends-on declare min_imprisonment domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen18] ) ) ) ?gen211 <- ( min_imprisonment ( value 365 ) ( negative-support $?gen214 ) ( negative-overruled $?gen215 & : ( subseq-pos ( create$ pen18-overruled $?gen214 $$$ $?gen215 ) ) ) ) ( test ( eq ( class ?gen211 ) min_imprisonment ) ) ( not ( and ?gen218 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( min_imprisonment ( positive-defeated $?gen213 & : ( not ( member$ pen18 $?gen213 ) ) ) ) ) ) => ( calc ( bind $?gen216 ( delete-member$ $?gen215 ( create$ pen18-overruled $?gen214 ) ) ) ) ?gen211 <- ( min_imprisonment ( negative-overruled $?gen216 ) )"))

([pen18-overruled] of derived-attribute-rule
   (pos-name pen18-overruled-gen346)
   (depends-on declare domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen18] ) ) ) ?gen218 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( min_imprisonment ( value 365 ) ( negative-support $?gen214 ) ( negative-overruled $?gen215 & : ( not ( subseq-pos ( create$ pen18-overruled $?gen214 $$$ $?gen215 ) ) ) ) ( positive-defeated $?gen213 & : ( not ( member$ pen18 $?gen213 ) ) ) ) ( test ( eq ( class ?gen211 ) min_imprisonment ) ) => ( calc ( bind $?gen216 ( create$ pen18-overruled $?gen214 $?gen215 ) ) ) ?gen211 <- ( min_imprisonment ( negative-overruled $?gen216 ) )"))

([pen18-support] of derived-attribute-rule
   (pos-name pen18-support-gen348)
   (depends-on declare domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen18] ) ) ) ?gen210 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) ?gen211 <- ( min_imprisonment ( value 365 ) ( positive-support $?gen213 & : ( not ( subseq-pos ( create$ pen18 ?gen210 $$$ $?gen213 ) ) ) ) ) ( test ( eq ( class ?gen211 ) min_imprisonment ) ) => ( calc ( bind $?gen216 ( create$ pen18 ?gen210 $?gen213 ) ) ) ?gen211 <- ( min_imprisonment ( positive-support $?gen216 ) )"))

([pen17-defeasibly-dot] of derived-attribute-rule
   (pos-name pen17-defeasibly-dot-gen350)
   (depends-on declare max_imprisonment domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen17] ) ) ) ?gen202 <- ( max_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen17 $? ) ) ( test ( eq ( class ?gen202 ) max_imprisonment ) ) ( not ( and ?gen209 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen204 & : ( not ( member$ pen17 $?gen204 ) ) ) ) ) ) => ?gen202 <- ( max_imprisonment ( positive 0 ) )"))

([pen17-defeasibly] of derived-attribute-rule
   (pos-name pen17-defeasibly-gen352)
   (depends-on declare domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen17] ) ) ) ?gen209 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( max_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen204 & : ( not ( member$ pen17 $?gen204 ) ) ) ) ( test ( eq ( class ?gen202 ) max_imprisonment ) ) => ?gen202 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen17 ?gen209 ) )"))

([pen17-overruled-dot] of derived-attribute-rule
   (pos-name pen17-overruled-dot-gen354)
   (depends-on declare max_imprisonment domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen17] ) ) ) ?gen202 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen205 ) ( negative-overruled $?gen206 & : ( subseq-pos ( create$ pen17-overruled $?gen205 $$$ $?gen206 ) ) ) ) ( test ( eq ( class ?gen202 ) max_imprisonment ) ) ( not ( and ?gen209 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( max_imprisonment ( positive-defeated $?gen204 & : ( not ( member$ pen17 $?gen204 ) ) ) ) ) ) => ( calc ( bind $?gen207 ( delete-member$ $?gen206 ( create$ pen17-overruled $?gen205 ) ) ) ) ?gen202 <- ( max_imprisonment ( negative-overruled $?gen207 ) )"))

([pen17-overruled] of derived-attribute-rule
   (pos-name pen17-overruled-gen356)
   (depends-on declare domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen17] ) ) ) ?gen209 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen205 ) ( negative-overruled $?gen206 & : ( not ( subseq-pos ( create$ pen17-overruled $?gen205 $$$ $?gen206 ) ) ) ) ( positive-defeated $?gen204 & : ( not ( member$ pen17 $?gen204 ) ) ) ) ( test ( eq ( class ?gen202 ) max_imprisonment ) ) => ( calc ( bind $?gen207 ( create$ pen17-overruled $?gen205 $?gen206 ) ) ) ?gen202 <- ( max_imprisonment ( negative-overruled $?gen207 ) )"))

([pen17-support] of derived-attribute-rule
   (pos-name pen17-support-gen358)
   (depends-on declare domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen17] ) ) ) ?gen201 <- ( domestic_violence_basic ( defendant ?Defendant ) ) ?gen202 <- ( max_imprisonment ( value 1825 ) ( positive-support $?gen204 & : ( not ( subseq-pos ( create$ pen17 ?gen201 $$$ $?gen204 ) ) ) ) ) ( test ( eq ( class ?gen202 ) max_imprisonment ) ) => ( calc ( bind $?gen207 ( create$ pen17 ?gen201 $?gen204 ) ) ) ?gen202 <- ( max_imprisonment ( positive-support $?gen207 ) )"))

([pen16-defeasibly-dot] of derived-attribute-rule
   (pos-name pen16-defeasibly-dot-gen360)
   (depends-on declare min_imprisonment domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen16] ) ) ) ?gen193 <- ( min_imprisonment ( value 180 ) ( positive 1 ) ( positive-derivator pen16 $? ) ) ( test ( eq ( class ?gen193 ) min_imprisonment ) ) ( not ( and ?gen200 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen195 & : ( not ( member$ pen16 $?gen195 ) ) ) ) ) ) => ?gen193 <- ( min_imprisonment ( positive 0 ) )"))

([pen16-defeasibly] of derived-attribute-rule
   (pos-name pen16-defeasibly-gen362)
   (depends-on declare domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen16] ) ) ) ?gen200 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( min_imprisonment ( value 180 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen195 & : ( not ( member$ pen16 $?gen195 ) ) ) ) ( test ( eq ( class ?gen193 ) min_imprisonment ) ) => ?gen193 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen16 ?gen200 ) )"))

([pen16-overruled-dot] of derived-attribute-rule
   (pos-name pen16-overruled-dot-gen364)
   (depends-on declare min_imprisonment domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen16] ) ) ) ?gen193 <- ( min_imprisonment ( value 180 ) ( negative-support $?gen196 ) ( negative-overruled $?gen197 & : ( subseq-pos ( create$ pen16-overruled $?gen196 $$$ $?gen197 ) ) ) ) ( test ( eq ( class ?gen193 ) min_imprisonment ) ) ( not ( and ?gen200 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( min_imprisonment ( positive-defeated $?gen195 & : ( not ( member$ pen16 $?gen195 ) ) ) ) ) ) => ( calc ( bind $?gen198 ( delete-member$ $?gen197 ( create$ pen16-overruled $?gen196 ) ) ) ) ?gen193 <- ( min_imprisonment ( negative-overruled $?gen198 ) )"))

([pen16-overruled] of derived-attribute-rule
   (pos-name pen16-overruled-gen366)
   (depends-on declare domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen16] ) ) ) ?gen200 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen193 <- ( min_imprisonment ( value 180 ) ( negative-support $?gen196 ) ( negative-overruled $?gen197 & : ( not ( subseq-pos ( create$ pen16-overruled $?gen196 $$$ $?gen197 ) ) ) ) ( positive-defeated $?gen195 & : ( not ( member$ pen16 $?gen195 ) ) ) ) ( test ( eq ( class ?gen193 ) min_imprisonment ) ) => ( calc ( bind $?gen198 ( create$ pen16-overruled $?gen196 $?gen197 ) ) ) ?gen193 <- ( min_imprisonment ( negative-overruled $?gen198 ) )"))

([pen16-support] of derived-attribute-rule
   (pos-name pen16-support-gen368)
   (depends-on declare domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen16] ) ) ) ?gen192 <- ( domestic_violence_basic ( defendant ?Defendant ) ) ?gen193 <- ( min_imprisonment ( value 180 ) ( positive-support $?gen195 & : ( not ( subseq-pos ( create$ pen16 ?gen192 $$$ $?gen195 ) ) ) ) ) ( test ( eq ( class ?gen193 ) min_imprisonment ) ) => ( calc ( bind $?gen198 ( create$ pen16 ?gen192 $?gen195 ) ) ) ?gen193 <- ( min_imprisonment ( positive-support $?gen198 ) )"))

([pen15-defeasibly-dot] of derived-attribute-rule
   (pos-name pen15-defeasibly-dot-gen370)
   (depends-on declare max_imprisonment child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen15] ) ) ) ?gen184 <- ( max_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen15 $? ) ) ( test ( eq ( class ?gen184 ) max_imprisonment ) ) ( not ( and ?gen191 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen186 & : ( not ( member$ pen15 $?gen186 ) ) ) ) ) ) => ?gen184 <- ( max_imprisonment ( positive 0 ) )"))

([pen15-defeasibly] of derived-attribute-rule
   (pos-name pen15-defeasibly-gen372)
   (depends-on declare child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen15] ) ) ) ?gen191 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( max_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen186 & : ( not ( member$ pen15 $?gen186 ) ) ) ) ( test ( eq ( class ?gen184 ) max_imprisonment ) ) => ?gen184 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen15 ?gen191 ) )"))

([pen15-overruled-dot] of derived-attribute-rule
   (pos-name pen15-overruled-dot-gen374)
   (depends-on declare max_imprisonment child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen15] ) ) ) ?gen184 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen187 ) ( negative-overruled $?gen188 & : ( subseq-pos ( create$ pen15-overruled $?gen187 $$$ $?gen188 ) ) ) ) ( test ( eq ( class ?gen184 ) max_imprisonment ) ) ( not ( and ?gen191 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( max_imprisonment ( positive-defeated $?gen186 & : ( not ( member$ pen15 $?gen186 ) ) ) ) ) ) => ( calc ( bind $?gen189 ( delete-member$ $?gen188 ( create$ pen15-overruled $?gen187 ) ) ) ) ?gen184 <- ( max_imprisonment ( negative-overruled $?gen189 ) )"))

([pen15-overruled] of derived-attribute-rule
   (pos-name pen15-overruled-gen376)
   (depends-on declare child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen15] ) ) ) ?gen191 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen190 & : ( >= ?gen190 1 ) ) ) ?gen184 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen187 ) ( negative-overruled $?gen188 & : ( not ( subseq-pos ( create$ pen15-overruled $?gen187 $$$ $?gen188 ) ) ) ) ( positive-defeated $?gen186 & : ( not ( member$ pen15 $?gen186 ) ) ) ) ( test ( eq ( class ?gen184 ) max_imprisonment ) ) => ( calc ( bind $?gen189 ( create$ pen15-overruled $?gen187 $?gen188 ) ) ) ?gen184 <- ( max_imprisonment ( negative-overruled $?gen189 ) )"))

([pen15-support] of derived-attribute-rule
   (pos-name pen15-support-gen378)
   (depends-on declare child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen15] ) ) ) ?gen183 <- ( child_abduction_aggravated ( defendant ?Defendant ) ) ?gen184 <- ( max_imprisonment ( value 1825 ) ( positive-support $?gen186 & : ( not ( subseq-pos ( create$ pen15 ?gen183 $$$ $?gen186 ) ) ) ) ) ( test ( eq ( class ?gen184 ) max_imprisonment ) ) => ( calc ( bind $?gen189 ( create$ pen15 ?gen183 $?gen186 ) ) ) ?gen184 <- ( max_imprisonment ( positive-support $?gen189 ) )"))

([pen14-defeasibly-dot] of derived-attribute-rule
   (pos-name pen14-defeasibly-dot-gen380)
   (depends-on declare min_imprisonment child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen14] ) ) ) ?gen175 <- ( min_imprisonment ( value 90 ) ( positive 1 ) ( positive-derivator pen14 $? ) ) ( test ( eq ( class ?gen175 ) min_imprisonment ) ) ( not ( and ?gen182 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen177 & : ( not ( member$ pen14 $?gen177 ) ) ) ) ) ) => ?gen175 <- ( min_imprisonment ( positive 0 ) )"))

([pen14-defeasibly] of derived-attribute-rule
   (pos-name pen14-defeasibly-gen382)
   (depends-on declare child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen14] ) ) ) ?gen182 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( min_imprisonment ( value 90 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen177 & : ( not ( member$ pen14 $?gen177 ) ) ) ) ( test ( eq ( class ?gen175 ) min_imprisonment ) ) => ?gen175 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen14 ?gen182 ) )"))

([pen14-overruled-dot] of derived-attribute-rule
   (pos-name pen14-overruled-dot-gen384)
   (depends-on declare min_imprisonment child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen14] ) ) ) ?gen175 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen178 ) ( negative-overruled $?gen179 & : ( subseq-pos ( create$ pen14-overruled $?gen178 $$$ $?gen179 ) ) ) ) ( test ( eq ( class ?gen175 ) min_imprisonment ) ) ( not ( and ?gen182 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( min_imprisonment ( positive-defeated $?gen177 & : ( not ( member$ pen14 $?gen177 ) ) ) ) ) ) => ( calc ( bind $?gen180 ( delete-member$ $?gen179 ( create$ pen14-overruled $?gen178 ) ) ) ) ?gen175 <- ( min_imprisonment ( negative-overruled $?gen180 ) )"))

([pen14-overruled] of derived-attribute-rule
   (pos-name pen14-overruled-gen386)
   (depends-on declare child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen14] ) ) ) ?gen182 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen181 & : ( >= ?gen181 1 ) ) ) ?gen175 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen178 ) ( negative-overruled $?gen179 & : ( not ( subseq-pos ( create$ pen14-overruled $?gen178 $$$ $?gen179 ) ) ) ) ( positive-defeated $?gen177 & : ( not ( member$ pen14 $?gen177 ) ) ) ) ( test ( eq ( class ?gen175 ) min_imprisonment ) ) => ( calc ( bind $?gen180 ( create$ pen14-overruled $?gen178 $?gen179 ) ) ) ?gen175 <- ( min_imprisonment ( negative-overruled $?gen180 ) )"))

([pen14-support] of derived-attribute-rule
   (pos-name pen14-support-gen388)
   (depends-on declare child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen14] ) ) ) ?gen174 <- ( child_abduction_aggravated ( defendant ?Defendant ) ) ?gen175 <- ( min_imprisonment ( value 90 ) ( positive-support $?gen177 & : ( not ( subseq-pos ( create$ pen14 ?gen174 $$$ $?gen177 ) ) ) ) ) ( test ( eq ( class ?gen175 ) min_imprisonment ) ) => ( calc ( bind $?gen180 ( create$ pen14 ?gen174 $?gen177 ) ) ) ?gen175 <- ( min_imprisonment ( positive-support $?gen180 ) )"))

([pen9-defeasibly-dot] of derived-attribute-rule
   (pos-name pen9-defeasibly-dot-gen390)
   (depends-on declare max_imprisonment enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen9] ) ) ) ?gen166 <- ( max_imprisonment ( value 1020 ) ( positive 1 ) ( positive-derivator pen9 $? ) ) ( test ( eq ( class ?gen166 ) max_imprisonment ) ) ( not ( and ?gen173 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen168 & : ( not ( member$ pen9 $?gen168 ) ) ) ) ) ) => ?gen166 <- ( max_imprisonment ( positive 0 ) )"))

([pen9-defeasibly] of derived-attribute-rule
   (pos-name pen9-defeasibly-gen392)
   (depends-on declare enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen9] ) ) ) ?gen173 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( max_imprisonment ( value 1020 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen168 & : ( not ( member$ pen9 $?gen168 ) ) ) ) ( test ( eq ( class ?gen166 ) max_imprisonment ) ) => ?gen166 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen9 ?gen173 ) )"))

([pen9-overruled-dot] of derived-attribute-rule
   (pos-name pen9-overruled-dot-gen394)
   (depends-on declare max_imprisonment enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen9] ) ) ) ?gen166 <- ( max_imprisonment ( value 1020 ) ( negative-support $?gen169 ) ( negative-overruled $?gen170 & : ( subseq-pos ( create$ pen9-overruled $?gen169 $$$ $?gen170 ) ) ) ) ( test ( eq ( class ?gen166 ) max_imprisonment ) ) ( not ( and ?gen173 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( max_imprisonment ( positive-defeated $?gen168 & : ( not ( member$ pen9 $?gen168 ) ) ) ) ) ) => ( calc ( bind $?gen171 ( delete-member$ $?gen170 ( create$ pen9-overruled $?gen169 ) ) ) ) ?gen166 <- ( max_imprisonment ( negative-overruled $?gen171 ) )"))

([pen9-overruled] of derived-attribute-rule
   (pos-name pen9-overruled-gen396)
   (depends-on declare enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen9] ) ) ) ?gen173 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen166 <- ( max_imprisonment ( value 1020 ) ( negative-support $?gen169 ) ( negative-overruled $?gen170 & : ( not ( subseq-pos ( create$ pen9-overruled $?gen169 $$$ $?gen170 ) ) ) ) ( positive-defeated $?gen168 & : ( not ( member$ pen9 $?gen168 ) ) ) ) ( test ( eq ( class ?gen166 ) max_imprisonment ) ) => ( calc ( bind $?gen171 ( create$ pen9-overruled $?gen169 $?gen170 ) ) ) ?gen166 <- ( max_imprisonment ( negative-overruled $?gen171 ) )"))

([pen9-support] of derived-attribute-rule
   (pos-name pen9-support-gen398)
   (depends-on declare enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen9] ) ) ) ?gen165 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ) ?gen166 <- ( max_imprisonment ( value 1020 ) ( positive-support $?gen168 & : ( not ( subseq-pos ( create$ pen9 ?gen165 $$$ $?gen168 ) ) ) ) ) ( test ( eq ( class ?gen166 ) max_imprisonment ) ) => ( calc ( bind $?gen171 ( create$ pen9 ?gen165 $?gen168 ) ) ) ?gen166 <- ( max_imprisonment ( positive-support $?gen171 ) )"))

([pen8-defeasibly-dot] of derived-attribute-rule
   (pos-name pen8-defeasibly-dot-gen400)
   (depends-on declare min_imprisonment enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen8] ) ) ) ?gen157 <- ( min_imprisonment ( value 120 ) ( positive 1 ) ( positive-derivator pen8 $? ) ) ( test ( eq ( class ?gen157 ) min_imprisonment ) ) ( not ( and ?gen164 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen159 & : ( not ( member$ pen8 $?gen159 ) ) ) ) ) ) => ?gen157 <- ( min_imprisonment ( positive 0 ) )"))

([pen8-defeasibly] of derived-attribute-rule
   (pos-name pen8-defeasibly-gen402)
   (depends-on declare enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen8] ) ) ) ?gen164 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( min_imprisonment ( value 120 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen159 & : ( not ( member$ pen8 $?gen159 ) ) ) ) ( test ( eq ( class ?gen157 ) min_imprisonment ) ) => ?gen157 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen8 ?gen164 ) )"))

([pen8-overruled-dot] of derived-attribute-rule
   (pos-name pen8-overruled-dot-gen404)
   (depends-on declare min_imprisonment enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen8] ) ) ) ?gen157 <- ( min_imprisonment ( value 120 ) ( negative-support $?gen160 ) ( negative-overruled $?gen161 & : ( subseq-pos ( create$ pen8-overruled $?gen160 $$$ $?gen161 ) ) ) ) ( test ( eq ( class ?gen157 ) min_imprisonment ) ) ( not ( and ?gen164 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( min_imprisonment ( positive-defeated $?gen159 & : ( not ( member$ pen8 $?gen159 ) ) ) ) ) ) => ( calc ( bind $?gen162 ( delete-member$ $?gen161 ( create$ pen8-overruled $?gen160 ) ) ) ) ?gen157 <- ( min_imprisonment ( negative-overruled $?gen162 ) )"))

([pen8-overruled] of derived-attribute-rule
   (pos-name pen8-overruled-gen406)
   (depends-on declare enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen8] ) ) ) ?gen164 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen163 & : ( >= ?gen163 1 ) ) ) ?gen157 <- ( min_imprisonment ( value 120 ) ( negative-support $?gen160 ) ( negative-overruled $?gen161 & : ( not ( subseq-pos ( create$ pen8-overruled $?gen160 $$$ $?gen161 ) ) ) ) ( positive-defeated $?gen159 & : ( not ( member$ pen8 $?gen159 ) ) ) ) ( test ( eq ( class ?gen157 ) min_imprisonment ) ) => ( calc ( bind $?gen162 ( create$ pen8-overruled $?gen160 $?gen161 ) ) ) ?gen157 <- ( min_imprisonment ( negative-overruled $?gen162 ) )"))

([pen8-support] of derived-attribute-rule
   (pos-name pen8-support-gen408)
   (depends-on declare enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen8] ) ) ) ?gen156 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ) ?gen157 <- ( min_imprisonment ( value 120 ) ( positive-support $?gen159 & : ( not ( subseq-pos ( create$ pen8 ?gen156 $$$ $?gen159 ) ) ) ) ) ( test ( eq ( class ?gen157 ) min_imprisonment ) ) => ( calc ( bind $?gen162 ( create$ pen8 ?gen156 $?gen159 ) ) ) ?gen157 <- ( min_imprisonment ( positive-support $?gen162 ) )"))

([pen5-defeasibly-dot] of derived-attribute-rule
   (pos-name pen5-defeasibly-dot-gen410)
   (depends-on declare max_imprisonment family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen5] ) ) ) ?gen148 <- ( max_imprisonment ( value 1095 ) ( positive 1 ) ( positive-derivator pen5 $? ) ) ( test ( eq ( class ?gen148 ) max_imprisonment ) ) ( not ( and ?gen155 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen150 & : ( not ( member$ pen5 $?gen150 ) ) ) ) ) ) => ?gen148 <- ( max_imprisonment ( positive 0 ) )"))

([pen5-defeasibly] of derived-attribute-rule
   (pos-name pen5-defeasibly-gen412)
   (depends-on declare family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen5] ) ) ) ?gen155 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( max_imprisonment ( value 1095 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen150 & : ( not ( member$ pen5 $?gen150 ) ) ) ) ( test ( eq ( class ?gen148 ) max_imprisonment ) ) => ?gen148 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen5 ?gen155 ) )"))

([pen5-overruled-dot] of derived-attribute-rule
   (pos-name pen5-overruled-dot-gen414)
   (depends-on declare max_imprisonment family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen5] ) ) ) ?gen148 <- ( max_imprisonment ( value 1095 ) ( negative-support $?gen151 ) ( negative-overruled $?gen152 & : ( subseq-pos ( create$ pen5-overruled $?gen151 $$$ $?gen152 ) ) ) ) ( test ( eq ( class ?gen148 ) max_imprisonment ) ) ( not ( and ?gen155 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( max_imprisonment ( positive-defeated $?gen150 & : ( not ( member$ pen5 $?gen150 ) ) ) ) ) ) => ( calc ( bind $?gen153 ( delete-member$ $?gen152 ( create$ pen5-overruled $?gen151 ) ) ) ) ?gen148 <- ( max_imprisonment ( negative-overruled $?gen153 ) )"))

([pen5-overruled] of derived-attribute-rule
   (pos-name pen5-overruled-gen416)
   (depends-on declare family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen5] ) ) ) ?gen155 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen154 & : ( >= ?gen154 1 ) ) ) ?gen148 <- ( max_imprisonment ( value 1095 ) ( negative-support $?gen151 ) ( negative-overruled $?gen152 & : ( not ( subseq-pos ( create$ pen5-overruled $?gen151 $$$ $?gen152 ) ) ) ) ( positive-defeated $?gen150 & : ( not ( member$ pen5 $?gen150 ) ) ) ) ( test ( eq ( class ?gen148 ) max_imprisonment ) ) => ( calc ( bind $?gen153 ( create$ pen5-overruled $?gen151 $?gen152 ) ) ) ?gen148 <- ( max_imprisonment ( negative-overruled $?gen153 ) )"))

([pen5-support] of derived-attribute-rule
   (pos-name pen5-support-gen418)
   (depends-on declare family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen5] ) ) ) ?gen147 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ) ?gen148 <- ( max_imprisonment ( value 1095 ) ( positive-support $?gen150 & : ( not ( subseq-pos ( create$ pen5 ?gen147 $$$ $?gen150 ) ) ) ) ) ( test ( eq ( class ?gen148 ) max_imprisonment ) ) => ( calc ( bind $?gen153 ( create$ pen5 ?gen147 $?gen150 ) ) ) ?gen148 <- ( max_imprisonment ( positive-support $?gen153 ) )"))

([pen4-defeasibly-dot] of derived-attribute-rule
   (pos-name pen4-defeasibly-dot-gen420)
   (depends-on declare min_imprisonment family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen4] ) ) ) ?gen139 <- ( min_imprisonment ( value 90 ) ( positive 1 ) ( positive-derivator pen4 $? ) ) ( test ( eq ( class ?gen139 ) min_imprisonment ) ) ( not ( and ?gen146 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen141 & : ( not ( member$ pen4 $?gen141 ) ) ) ) ) ) => ?gen139 <- ( min_imprisonment ( positive 0 ) )"))

([pen4-defeasibly] of derived-attribute-rule
   (pos-name pen4-defeasibly-gen422)
   (depends-on declare family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen4] ) ) ) ?gen146 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( min_imprisonment ( value 90 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen141 & : ( not ( member$ pen4 $?gen141 ) ) ) ) ( test ( eq ( class ?gen139 ) min_imprisonment ) ) => ?gen139 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen4 ?gen146 ) )"))

([pen4-overruled-dot] of derived-attribute-rule
   (pos-name pen4-overruled-dot-gen424)
   (depends-on declare min_imprisonment family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen4] ) ) ) ?gen139 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen142 ) ( negative-overruled $?gen143 & : ( subseq-pos ( create$ pen4-overruled $?gen142 $$$ $?gen143 ) ) ) ) ( test ( eq ( class ?gen139 ) min_imprisonment ) ) ( not ( and ?gen146 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( min_imprisonment ( positive-defeated $?gen141 & : ( not ( member$ pen4 $?gen141 ) ) ) ) ) ) => ( calc ( bind $?gen144 ( delete-member$ $?gen143 ( create$ pen4-overruled $?gen142 ) ) ) ) ?gen139 <- ( min_imprisonment ( negative-overruled $?gen144 ) )"))

([pen4-overruled] of derived-attribute-rule
   (pos-name pen4-overruled-gen426)
   (depends-on declare family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen4] ) ) ) ?gen146 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen145 & : ( >= ?gen145 1 ) ) ) ?gen139 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen142 ) ( negative-overruled $?gen143 & : ( not ( subseq-pos ( create$ pen4-overruled $?gen142 $$$ $?gen143 ) ) ) ) ( positive-defeated $?gen141 & : ( not ( member$ pen4 $?gen141 ) ) ) ) ( test ( eq ( class ?gen139 ) min_imprisonment ) ) => ( calc ( bind $?gen144 ( create$ pen4-overruled $?gen142 $?gen143 ) ) ) ?gen139 <- ( min_imprisonment ( negative-overruled $?gen144 ) )"))

([pen4-support] of derived-attribute-rule
   (pos-name pen4-support-gen428)
   (depends-on declare family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen4] ) ) ) ?gen138 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ) ?gen139 <- ( min_imprisonment ( value 90 ) ( positive-support $?gen141 & : ( not ( subseq-pos ( create$ pen4 ?gen138 $$$ $?gen141 ) ) ) ) ) ( test ( eq ( class ?gen139 ) min_imprisonment ) ) => ( calc ( bind $?gen144 ( create$ pen4 ?gen138 $?gen141 ) ) ) ?gen139 <- ( min_imprisonment ( positive-support $?gen144 ) )"))

([pen3-defeasibly-dot] of derived-attribute-rule
   (pos-name pen3-defeasibly-dot-gen430)
   (depends-on declare max_imprisonment failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen3] ) ) ) ?gen130 <- ( max_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen3 $? ) ) ( test ( eq ( class ?gen130 ) max_imprisonment ) ) ( not ( and ?gen137 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen132 & : ( not ( member$ pen3 $?gen132 ) ) ) ) ) ) => ?gen130 <- ( max_imprisonment ( positive 0 ) )"))

([pen3-defeasibly] of derived-attribute-rule
   (pos-name pen3-defeasibly-gen432)
   (depends-on declare failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen3] ) ) ) ?gen137 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( max_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen132 & : ( not ( member$ pen3 $?gen132 ) ) ) ) ( test ( eq ( class ?gen130 ) max_imprisonment ) ) => ?gen130 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen3 ?gen137 ) )"))

([pen3-overruled-dot] of derived-attribute-rule
   (pos-name pen3-overruled-dot-gen434)
   (depends-on declare max_imprisonment failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen3] ) ) ) ?gen130 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen133 ) ( negative-overruled $?gen134 & : ( subseq-pos ( create$ pen3-overruled $?gen133 $$$ $?gen134 ) ) ) ) ( test ( eq ( class ?gen130 ) max_imprisonment ) ) ( not ( and ?gen137 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( max_imprisonment ( positive-defeated $?gen132 & : ( not ( member$ pen3 $?gen132 ) ) ) ) ) ) => ( calc ( bind $?gen135 ( delete-member$ $?gen134 ( create$ pen3-overruled $?gen133 ) ) ) ) ?gen130 <- ( max_imprisonment ( negative-overruled $?gen135 ) )"))

([pen3-overruled] of derived-attribute-rule
   (pos-name pen3-overruled-gen436)
   (depends-on declare failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen3] ) ) ) ?gen137 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ?gen130 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen133 ) ( negative-overruled $?gen134 & : ( not ( subseq-pos ( create$ pen3-overruled $?gen133 $$$ $?gen134 ) ) ) ) ( positive-defeated $?gen132 & : ( not ( member$ pen3 $?gen132 ) ) ) ) ( test ( eq ( class ?gen130 ) max_imprisonment ) ) => ( calc ( bind $?gen135 ( create$ pen3-overruled $?gen133 $?gen134 ) ) ) ?gen130 <- ( max_imprisonment ( negative-overruled $?gen135 ) )"))

([pen3-support] of derived-attribute-rule
   (pos-name pen3-support-gen438)
   (depends-on declare failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen3] ) ) ) ?gen129 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ) ?gen130 <- ( max_imprisonment ( value 1825 ) ( positive-support $?gen132 & : ( not ( subseq-pos ( create$ pen3 ?gen129 $$$ $?gen132 ) ) ) ) ) ( test ( eq ( class ?gen130 ) max_imprisonment ) ) => ( calc ( bind $?gen135 ( create$ pen3 ?gen129 $?gen132 ) ) ) ?gen130 <- ( max_imprisonment ( positive-support $?gen135 ) )"))

([pen2-defeasibly-dot] of derived-attribute-rule
   (pos-name pen2-defeasibly-dot-gen440)
   (depends-on declare min_imprisonment failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen2] ) ) ) ?gen121 <- ( min_imprisonment ( value 180 ) ( positive 1 ) ( positive-derivator pen2 $? ) ) ( test ( eq ( class ?gen121 ) min_imprisonment ) ) ( not ( and ?gen128 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen123 & : ( not ( member$ pen2 $?gen123 ) ) ) ) ) ) => ?gen121 <- ( min_imprisonment ( positive 0 ) )"))

([pen2-defeasibly] of derived-attribute-rule
   (pos-name pen2-defeasibly-gen442)
   (depends-on declare failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen2] ) ) ) ?gen128 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( min_imprisonment ( value 180 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen123 & : ( not ( member$ pen2 $?gen123 ) ) ) ) ( test ( eq ( class ?gen121 ) min_imprisonment ) ) => ?gen121 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen2 ?gen128 ) )"))

([pen2-overruled-dot] of derived-attribute-rule
   (pos-name pen2-overruled-dot-gen444)
   (depends-on declare min_imprisonment failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen2] ) ) ) ?gen121 <- ( min_imprisonment ( value 180 ) ( negative-support $?gen124 ) ( negative-overruled $?gen125 & : ( subseq-pos ( create$ pen2-overruled $?gen124 $$$ $?gen125 ) ) ) ) ( test ( eq ( class ?gen121 ) min_imprisonment ) ) ( not ( and ?gen128 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( min_imprisonment ( positive-defeated $?gen123 & : ( not ( member$ pen2 $?gen123 ) ) ) ) ) ) => ( calc ( bind $?gen126 ( delete-member$ $?gen125 ( create$ pen2-overruled $?gen124 ) ) ) ) ?gen121 <- ( min_imprisonment ( negative-overruled $?gen126 ) )"))

([pen2-overruled] of derived-attribute-rule
   (pos-name pen2-overruled-gen446)
   (depends-on declare failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen2] ) ) ) ?gen128 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen127 & : ( >= ?gen127 1 ) ) ) ?gen121 <- ( min_imprisonment ( value 180 ) ( negative-support $?gen124 ) ( negative-overruled $?gen125 & : ( not ( subseq-pos ( create$ pen2-overruled $?gen124 $$$ $?gen125 ) ) ) ) ( positive-defeated $?gen123 & : ( not ( member$ pen2 $?gen123 ) ) ) ) ( test ( eq ( class ?gen121 ) min_imprisonment ) ) => ( calc ( bind $?gen126 ( create$ pen2-overruled $?gen124 $?gen125 ) ) ) ?gen121 <- ( min_imprisonment ( negative-overruled $?gen126 ) )"))

([pen2-support] of derived-attribute-rule
   (pos-name pen2-support-gen448)
   (depends-on declare failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen2] ) ) ) ?gen120 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ) ?gen121 <- ( min_imprisonment ( value 180 ) ( positive-support $?gen123 & : ( not ( subseq-pos ( create$ pen2 ?gen120 $$$ $?gen123 ) ) ) ) ) ( test ( eq ( class ?gen121 ) min_imprisonment ) ) => ( calc ( bind $?gen126 ( create$ pen2 ?gen120 $?gen123 ) ) ) ?gen121 <- ( min_imprisonment ( positive-support $?gen126 ) )"))

([pen1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen1-defeasibly-dot-gen450)
   (depends-on declare max_imprisonment failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen1] ) ) ) ?gen112 <- ( max_imprisonment ( value 730 ) ( positive 1 ) ( positive-derivator pen1 $? ) ) ( test ( eq ( class ?gen112 ) max_imprisonment ) ) ( not ( and ?gen119 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen114 & : ( not ( member$ pen1 $?gen114 ) ) ) ) ) ) => ?gen112 <- ( max_imprisonment ( positive 0 ) )"))

([pen1-defeasibly] of derived-attribute-rule
   (pos-name pen1-defeasibly-gen452)
   (depends-on declare failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen1] ) ) ) ?gen119 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( max_imprisonment ( value 730 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen114 & : ( not ( member$ pen1 $?gen114 ) ) ) ) ( test ( eq ( class ?gen112 ) max_imprisonment ) ) => ?gen112 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen1 ?gen119 ) )"))

([pen1-overruled-dot] of derived-attribute-rule
   (pos-name pen1-overruled-dot-gen454)
   (depends-on declare max_imprisonment failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen1] ) ) ) ?gen112 <- ( max_imprisonment ( value 730 ) ( negative-support $?gen115 ) ( negative-overruled $?gen116 & : ( subseq-pos ( create$ pen1-overruled $?gen115 $$$ $?gen116 ) ) ) ) ( test ( eq ( class ?gen112 ) max_imprisonment ) ) ( not ( and ?gen119 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( max_imprisonment ( positive-defeated $?gen114 & : ( not ( member$ pen1 $?gen114 ) ) ) ) ) ) => ( calc ( bind $?gen117 ( delete-member$ $?gen116 ( create$ pen1-overruled $?gen115 ) ) ) ) ?gen112 <- ( max_imprisonment ( negative-overruled $?gen117 ) )"))

([pen1-overruled] of derived-attribute-rule
   (pos-name pen1-overruled-gen456)
   (depends-on declare failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen1] ) ) ) ?gen119 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive ?gen118 & : ( >= ?gen118 1 ) ) ) ?gen112 <- ( max_imprisonment ( value 730 ) ( negative-support $?gen115 ) ( negative-overruled $?gen116 & : ( not ( subseq-pos ( create$ pen1-overruled $?gen115 $$$ $?gen116 ) ) ) ) ( positive-defeated $?gen114 & : ( not ( member$ pen1 $?gen114 ) ) ) ) ( test ( eq ( class ?gen112 ) max_imprisonment ) ) => ( calc ( bind $?gen117 ( create$ pen1-overruled $?gen115 $?gen116 ) ) ) ?gen112 <- ( max_imprisonment ( negative-overruled $?gen117 ) )"))

([pen1-support] of derived-attribute-rule
   (pos-name pen1-support-gen458)
   (depends-on declare failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen1] ) ) ) ?gen111 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ) ?gen112 <- ( max_imprisonment ( value 730 ) ( positive-support $?gen114 & : ( not ( subseq-pos ( create$ pen1 ?gen111 $$$ $?gen114 ) ) ) ) ) ( test ( eq ( class ?gen112 ) max_imprisonment ) ) => ( calc ( bind $?gen117 ( create$ pen1 ?gen111 $?gen114 ) ) ) ?gen112 <- ( max_imprisonment ( positive-support $?gen117 ) )"))

([rule15-defeasibly-dot] of derived-attribute-rule
   (pos-name rule15-defeasibly-dot-gen460)
   (depends-on declare domestic_violence_aggravated_death lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule15] ) ) ) ?gen99 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule15 $? ) ) ( test ( eq ( class ?gen99 ) domestic_violence_aggravated_death ) ) ( not ( and ?gen106 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen105 & : ( >= ?gen105 1 ) ) ) ?gen108 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen107 & : ( >= ?gen107 1 ) ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen99 <- ( domestic_violence_aggravated_death ( negative ~ 2 ) ( positive-overruled $?gen101 & : ( not ( member$ rule15 $?gen101 ) ) ) ) ) ) => ?gen99 <- ( domestic_violence_aggravated_death ( positive 0 ) )"))

([rule15-defeasibly] of derived-attribute-rule
   (pos-name rule15-defeasibly-gen462)
   (depends-on declare lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule15] ) ) ) ?gen106 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen105 & : ( >= ?gen105 1 ) ) ) ?gen108 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen107 & : ( >= ?gen107 1 ) ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen99 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen101 & : ( not ( member$ rule15 $?gen101 ) ) ) ) ( test ( eq ( class ?gen99 ) domestic_violence_aggravated_death ) ) => ?gen99 <- ( domestic_violence_aggravated_death ( positive 1 ) ( positive-derivator rule15 ?gen106 ?gen108 ?gen110 ) )"))

([rule15-overruled-dot] of derived-attribute-rule
   (pos-name rule15-overruled-dot-gen464)
   (depends-on declare domestic_violence_aggravated_death lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule15] ) ) ) ?gen99 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( negative-support $?gen102 ) ( negative-overruled $?gen103 & : ( subseq-pos ( create$ rule15-overruled $?gen102 $$$ $?gen103 ) ) ) ) ( test ( eq ( class ?gen99 ) domestic_violence_aggravated_death ) ) ( not ( and ?gen106 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen105 & : ( >= ?gen105 1 ) ) ) ?gen108 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen107 & : ( >= ?gen107 1 ) ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen99 <- ( domestic_violence_aggravated_death ( positive-defeated $?gen101 & : ( not ( member$ rule15 $?gen101 ) ) ) ) ) ) => ( calc ( bind $?gen104 ( delete-member$ $?gen103 ( create$ rule15-overruled $?gen102 ) ) ) ) ?gen99 <- ( domestic_violence_aggravated_death ( negative-overruled $?gen104 ) )"))

([rule15-overruled] of derived-attribute-rule
   (pos-name rule15-overruled-gen466)
   (depends-on declare lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule15] ) ) ) ?gen106 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen105 & : ( >= ?gen105 1 ) ) ) ?gen108 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen107 & : ( >= ?gen107 1 ) ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ?gen99 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( negative-support $?gen102 ) ( negative-overruled $?gen103 & : ( not ( subseq-pos ( create$ rule15-overruled $?gen102 $$$ $?gen103 ) ) ) ) ( positive-defeated $?gen101 & : ( not ( member$ rule15 $?gen101 ) ) ) ) ( test ( eq ( class ?gen99 ) domestic_violence_aggravated_death ) ) => ( calc ( bind $?gen104 ( create$ rule15-overruled $?gen102 $?gen103 ) ) ) ?gen99 <- ( domestic_violence_aggravated_death ( negative-overruled $?gen104 ) )"))

([rule15-support] of derived-attribute-rule
   (pos-name rule15-support-gen468)
   (depends-on declare lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule15] ) ) ) ?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ) ?gen99 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive-support $?gen101 & : ( not ( subseq-pos ( create$ rule15 ?gen96 ?gen97 ?gen98 $$$ $?gen101 ) ) ) ) ) ( test ( eq ( class ?gen99 ) domestic_violence_aggravated_death ) ) => ( calc ( bind $?gen104 ( create$ rule15 ?gen96 ?gen97 ?gen98 $?gen101 ) ) ) ?gen99 <- ( domestic_violence_aggravated_death ( positive-support $?gen104 ) )"))

([rule14-defeated-dot] of derived-attribute-rule
   (pos-name rule14-defeated-dot-gen470)
   (depends-on declare domestic_violence_aggravated_severe lc:case lc:case)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule14] ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( negative-defeated $?gen89 & : ( subseq-pos ( create$ rule14-defeated rule15 $$$ $?gen89 ) ) ) ) ( test ( eq ( class ?gen86 ) domestic_violence_aggravated_severe ) ) ( not ( and ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ) ) => ( calc ( bind $?gen88 ( delete-member$ $?gen89 ( create$ rule14-defeated rule15 ) ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( negative-defeated $?gen88 ) )"))

([rule14-defeated] of derived-attribute-rule
   (pos-name rule14-defeated-gen472)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule14] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( negative-defeated $?gen89 & : ( not ( subseq-pos ( create$ rule14-defeated rule15 $$$ $?gen89 ) ) ) ) ) ( test ( eq ( class ?gen86 ) domestic_violence_aggravated_severe ) ) => ( calc ( bind $?gen88 ( create$ rule14-defeated rule15 $?gen89 ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( negative-defeated $?gen88 ) )"))

([rule14-defeasibly-dot] of derived-attribute-rule
   (pos-name rule14-defeasibly-dot-gen474)
   (depends-on declare domestic_violence_aggravated_severe lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule14] ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule14 $? ) ) ( test ( eq ( class ?gen86 ) domestic_violence_aggravated_severe ) ) ( not ( and ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( negative ~ 2 ) ( positive-overruled $?gen88 & : ( not ( member$ rule14 $?gen88 ) ) ) ) ) ) => ?gen86 <- ( domestic_violence_aggravated_severe ( positive 0 ) )"))

([rule14-defeasibly] of derived-attribute-rule
   (pos-name rule14-defeasibly-gen476)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule14] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen88 & : ( not ( member$ rule14 $?gen88 ) ) ) ) ( test ( eq ( class ?gen86 ) domestic_violence_aggravated_severe ) ) => ?gen86 <- ( domestic_violence_aggravated_severe ( positive 1 ) ( positive-derivator rule14 ?gen93 ?gen95 ) )"))

([rule14-overruled-dot] of derived-attribute-rule
   (pos-name rule14-overruled-dot-gen478)
   (depends-on declare domestic_violence_aggravated_severe lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule14] ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( negative-support $?gen89 ) ( negative-overruled $?gen90 & : ( subseq-pos ( create$ rule14-overruled $?gen89 $$$ $?gen90 ) ) ) ) ( test ( eq ( class ?gen86 ) domestic_violence_aggravated_severe ) ) ( not ( and ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( positive-defeated $?gen88 & : ( not ( member$ rule14 $?gen88 ) ) ) ) ) ) => ( calc ( bind $?gen91 ( delete-member$ $?gen90 ( create$ rule14-overruled $?gen89 ) ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( negative-overruled $?gen91 ) )"))

([rule14-overruled] of derived-attribute-rule
   (pos-name rule14-overruled-gen480)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule14] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( negative-support $?gen89 ) ( negative-overruled $?gen90 & : ( not ( subseq-pos ( create$ rule14-overruled $?gen89 $$$ $?gen90 ) ) ) ) ( positive-defeated $?gen88 & : ( not ( member$ rule14 $?gen88 ) ) ) ) ( test ( eq ( class ?gen86 ) domestic_violence_aggravated_severe ) ) => ( calc ( bind $?gen91 ( create$ rule14-overruled $?gen89 $?gen90 ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( negative-overruled $?gen91 ) )"))

([rule14-support] of derived-attribute-rule
   (pos-name rule14-support-gen482)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule14] ) ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive-support $?gen88 & : ( not ( subseq-pos ( create$ rule14 ?gen84 ?gen85 $$$ $?gen88 ) ) ) ) ) ( test ( eq ( class ?gen86 ) domestic_violence_aggravated_severe ) ) => ( calc ( bind $?gen91 ( create$ rule14 ?gen84 ?gen85 $?gen88 ) ) ) ?gen86 <- ( domestic_violence_aggravated_severe ( positive-support $?gen91 ) )"))

([rule13-defeated-dot] of derived-attribute-rule
   (pos-name rule13-defeated-dot-gen484)
   (depends-on declare domestic_violence_aggravated_weapon lc:case lc:case)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule13] ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( negative-defeated $?gen77 & : ( subseq-pos ( create$ rule13-defeated rule14 rule15 $$$ $?gen77 ) ) ) ) ( test ( eq ( class ?gen74 ) domestic_violence_aggravated_weapon ) ) ( not ( and ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ) ) => ( calc ( bind $?gen76 ( delete-member$ $?gen77 ( create$ rule13-defeated rule14 rule15 ) ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( negative-defeated $?gen76 ) )"))

([rule13-defeated] of derived-attribute-rule
   (pos-name rule13-defeated-gen486)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule13] ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( negative-defeated $?gen77 & : ( not ( subseq-pos ( create$ rule13-defeated rule14 rule15 $$$ $?gen77 ) ) ) ) ) ( test ( eq ( class ?gen74 ) domestic_violence_aggravated_weapon ) ) => ( calc ( bind $?gen76 ( create$ rule13-defeated rule14 rule15 $?gen77 ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( negative-defeated $?gen76 ) )"))

([rule13-defeasibly-dot] of derived-attribute-rule
   (pos-name rule13-defeasibly-dot-gen488)
   (depends-on declare domestic_violence_aggravated_weapon lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule13] ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule13 $? ) ) ( test ( eq ( class ?gen74 ) domestic_violence_aggravated_weapon ) ) ( not ( and ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( negative ~ 2 ) ( positive-overruled $?gen76 & : ( not ( member$ rule13 $?gen76 ) ) ) ) ) ) => ?gen74 <- ( domestic_violence_aggravated_weapon ( positive 0 ) )"))

([rule13-defeasibly] of derived-attribute-rule
   (pos-name rule13-defeasibly-gen490)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule13] ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen76 & : ( not ( member$ rule13 $?gen76 ) ) ) ) ( test ( eq ( class ?gen74 ) domestic_violence_aggravated_weapon ) ) => ?gen74 <- ( domestic_violence_aggravated_weapon ( positive 1 ) ( positive-derivator rule13 ?gen81 ?gen83 ) )"))

([rule13-overruled-dot] of derived-attribute-rule
   (pos-name rule13-overruled-dot-gen492)
   (depends-on declare domestic_violence_aggravated_weapon lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule13] ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( negative-support $?gen77 ) ( negative-overruled $?gen78 & : ( subseq-pos ( create$ rule13-overruled $?gen77 $$$ $?gen78 ) ) ) ) ( test ( eq ( class ?gen74 ) domestic_violence_aggravated_weapon ) ) ( not ( and ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( positive-defeated $?gen76 & : ( not ( member$ rule13 $?gen76 ) ) ) ) ) ) => ( calc ( bind $?gen79 ( delete-member$ $?gen78 ( create$ rule13-overruled $?gen77 ) ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( negative-overruled $?gen79 ) )"))

([rule13-overruled] of derived-attribute-rule
   (pos-name rule13-overruled-gen494)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule13] ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( negative-support $?gen77 ) ( negative-overruled $?gen78 & : ( not ( subseq-pos ( create$ rule13-overruled $?gen77 $$$ $?gen78 ) ) ) ) ( positive-defeated $?gen76 & : ( not ( member$ rule13 $?gen76 ) ) ) ) ( test ( eq ( class ?gen74 ) domestic_violence_aggravated_weapon ) ) => ( calc ( bind $?gen79 ( create$ rule13-overruled $?gen77 $?gen78 ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( negative-overruled $?gen79 ) )"))

([rule13-support] of derived-attribute-rule
   (pos-name rule13-support-gen496)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule13] ) ) ) ?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen73 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive-support $?gen76 & : ( not ( subseq-pos ( create$ rule13 ?gen72 ?gen73 $$$ $?gen76 ) ) ) ) ) ( test ( eq ( class ?gen74 ) domestic_violence_aggravated_weapon ) ) => ( calc ( bind $?gen79 ( create$ rule13 ?gen72 ?gen73 $?gen76 ) ) ) ?gen74 <- ( domestic_violence_aggravated_weapon ( positive-support $?gen79 ) )"))

([rule12-defeated-dot] of derived-attribute-rule
   (pos-name rule12-defeated-dot-gen498)
   (depends-on declare domestic_violence_basic lc:case)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule12] ) ) ) ?gen64 <- ( domestic_violence_basic ( defendant ?Defendant ) ( negative-defeated $?gen67 & : ( subseq-pos ( create$ rule12-defeated rule14 rule15 $$$ $?gen67 ) ) ) ) ( test ( eq ( class ?gen64 ) domestic_violence_basic ) ) ( not ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ) => ( calc ( bind $?gen66 ( delete-member$ $?gen67 ( create$ rule12-defeated rule14 rule15 ) ) ) ) ?gen64 <- ( domestic_violence_basic ( negative-defeated $?gen66 ) )"))

([rule12-defeated] of derived-attribute-rule
   (pos-name rule12-defeated-gen500)
   (depends-on declare lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule12] ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( domestic_violence_basic ( defendant ?Defendant ) ( negative-defeated $?gen67 & : ( not ( subseq-pos ( create$ rule12-defeated rule14 rule15 $$$ $?gen67 ) ) ) ) ) ( test ( eq ( class ?gen64 ) domestic_violence_basic ) ) => ( calc ( bind $?gen66 ( create$ rule12-defeated rule14 rule15 $?gen67 ) ) ) ?gen64 <- ( domestic_violence_basic ( negative-defeated $?gen66 ) )"))

([rule12-defeasibly-dot] of derived-attribute-rule
   (pos-name rule12-defeasibly-dot-gen502)
   (depends-on declare domestic_violence_basic lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule12] ) ) ) ?gen64 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule12 $? ) ) ( test ( eq ( class ?gen64 ) domestic_violence_basic ) ) ( not ( and ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( domestic_violence_basic ( negative ~ 2 ) ( positive-overruled $?gen66 & : ( not ( member$ rule12 $?gen66 ) ) ) ) ) ) => ?gen64 <- ( domestic_violence_basic ( positive 0 ) )"))

([rule12-defeasibly] of derived-attribute-rule
   (pos-name rule12-defeasibly-gen504)
   (depends-on declare lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule12] ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen66 & : ( not ( member$ rule12 $?gen66 ) ) ) ) ( test ( eq ( class ?gen64 ) domestic_violence_basic ) ) => ?gen64 <- ( domestic_violence_basic ( positive 1 ) ( positive-derivator rule12 ?gen71 ) )"))

([rule12-overruled-dot] of derived-attribute-rule
   (pos-name rule12-overruled-dot-gen506)
   (depends-on declare domestic_violence_basic lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule12] ) ) ) ?gen64 <- ( domestic_violence_basic ( defendant ?Defendant ) ( negative-support $?gen67 ) ( negative-overruled $?gen68 & : ( subseq-pos ( create$ rule12-overruled $?gen67 $$$ $?gen68 ) ) ) ) ( test ( eq ( class ?gen64 ) domestic_violence_basic ) ) ( not ( and ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( domestic_violence_basic ( positive-defeated $?gen66 & : ( not ( member$ rule12 $?gen66 ) ) ) ) ) ) => ( calc ( bind $?gen69 ( delete-member$ $?gen68 ( create$ rule12-overruled $?gen67 ) ) ) ) ?gen64 <- ( domestic_violence_basic ( negative-overruled $?gen69 ) )"))

([rule12-overruled] of derived-attribute-rule
   (pos-name rule12-overruled-gen508)
   (depends-on declare lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule12] ) ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen70 & : ( >= ?gen70 1 ) ) ) ?gen64 <- ( domestic_violence_basic ( defendant ?Defendant ) ( negative-support $?gen67 ) ( negative-overruled $?gen68 & : ( not ( subseq-pos ( create$ rule12-overruled $?gen67 $$$ $?gen68 ) ) ) ) ( positive-defeated $?gen66 & : ( not ( member$ rule12 $?gen66 ) ) ) ) ( test ( eq ( class ?gen64 ) domestic_violence_basic ) ) => ( calc ( bind $?gen69 ( create$ rule12-overruled $?gen67 $?gen68 ) ) ) ?gen64 <- ( domestic_violence_basic ( negative-overruled $?gen69 ) )"))

([rule12-support] of derived-attribute-rule
   (pos-name rule12-support-gen510)
   (depends-on declare lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule12] ) ) ) ?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen64 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive-support $?gen66 & : ( not ( subseq-pos ( create$ rule12 ?gen63 $$$ $?gen66 ) ) ) ) ) ( test ( eq ( class ?gen64 ) domestic_violence_basic ) ) => ( calc ( bind $?gen69 ( create$ rule12 ?gen63 $?gen66 ) ) ) ?gen64 <- ( domestic_violence_basic ( positive-support $?gen69 ) )"))

([rule11-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11-defeasibly-dot-gen512)
   (depends-on declare child_abduction_aggravated lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11] ) ) ) ?gen55 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule11 $? ) ) ( test ( eq ( class ?gen55 ) child_abduction_aggravated ) ) ( not ( and ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( child_abduction_aggravated ( negative ~ 2 ) ( positive-overruled $?gen57 & : ( not ( member$ rule11 $?gen57 ) ) ) ) ) ) => ?gen55 <- ( child_abduction_aggravated ( positive 0 ) )"))

([rule11-defeasibly] of derived-attribute-rule
   (pos-name rule11-defeasibly-gen514)
   (depends-on declare lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11] ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen57 & : ( not ( member$ rule11 $?gen57 ) ) ) ) ( test ( eq ( class ?gen55 ) child_abduction_aggravated ) ) => ?gen55 <- ( child_abduction_aggravated ( positive 1 ) ( positive-derivator rule11 ?gen62 ) )"))

([rule11-overruled-dot] of derived-attribute-rule
   (pos-name rule11-overruled-dot-gen516)
   (depends-on declare child_abduction_aggravated lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11] ) ) ) ?gen55 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( negative-support $?gen58 ) ( negative-overruled $?gen59 & : ( subseq-pos ( create$ rule11-overruled $?gen58 $$$ $?gen59 ) ) ) ) ( test ( eq ( class ?gen55 ) child_abduction_aggravated ) ) ( not ( and ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( child_abduction_aggravated ( positive-defeated $?gen57 & : ( not ( member$ rule11 $?gen57 ) ) ) ) ) ) => ( calc ( bind $?gen60 ( delete-member$ $?gen59 ( create$ rule11-overruled $?gen58 ) ) ) ) ?gen55 <- ( child_abduction_aggravated ( negative-overruled $?gen60 ) )"))

([rule11-overruled] of derived-attribute-rule
   (pos-name rule11-overruled-gen518)
   (depends-on declare lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11] ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen55 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( negative-support $?gen58 ) ( negative-overruled $?gen59 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen58 $$$ $?gen59 ) ) ) ) ( positive-defeated $?gen57 & : ( not ( member$ rule11 $?gen57 ) ) ) ) ( test ( eq ( class ?gen55 ) child_abduction_aggravated ) ) => ( calc ( bind $?gen60 ( create$ rule11-overruled $?gen58 $?gen59 ) ) ) ?gen55 <- ( child_abduction_aggravated ( negative-overruled $?gen60 ) )"))

([rule11-support] of derived-attribute-rule
   (pos-name rule11-support-gen520)
   (depends-on declare lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11] ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ) ?gen55 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive-support $?gen57 & : ( not ( subseq-pos ( create$ rule11 ?gen54 $$$ $?gen57 ) ) ) ) ) ( test ( eq ( class ?gen55 ) child_abduction_aggravated ) ) => ( calc ( bind $?gen60 ( create$ rule11 ?gen54 $?gen57 ) ) ) ?gen55 <- ( child_abduction_aggravated ( positive-support $?gen60 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen522)
   (depends-on declare enabling_minor_extramarital_union lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen46 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen46 ) enabling_minor_extramarital_union ) ) ( not ( and ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( enabling_minor_extramarital_union ( negative ~ 2 ) ( positive-overruled $?gen48 & : ( not ( member$ rule7 $?gen48 ) ) ) ) ) ) => ?gen46 <- ( enabling_minor_extramarital_union ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen524)
   (depends-on declare lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen48 & : ( not ( member$ rule7 $?gen48 ) ) ) ) ( test ( eq ( class ?gen46 ) enabling_minor_extramarital_union ) ) => ?gen46 <- ( enabling_minor_extramarital_union ( positive 1 ) ( positive-derivator rule7 ?gen53 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen526)
   (depends-on declare enabling_minor_extramarital_union lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen46 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( negative-support $?gen49 ) ( negative-overruled $?gen50 & : ( subseq-pos ( create$ rule7-overruled $?gen49 $$$ $?gen50 ) ) ) ) ( test ( eq ( class ?gen46 ) enabling_minor_extramarital_union ) ) ( not ( and ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( enabling_minor_extramarital_union ( positive-defeated $?gen48 & : ( not ( member$ rule7 $?gen48 ) ) ) ) ) ) => ( calc ( bind $?gen51 ( delete-member$ $?gen50 ( create$ rule7-overruled $?gen49 ) ) ) ) ?gen46 <- ( enabling_minor_extramarital_union ( negative-overruled $?gen51 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen528)
   (depends-on declare lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen46 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( negative-support $?gen49 ) ( negative-overruled $?gen50 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen49 $$$ $?gen50 ) ) ) ) ( positive-defeated $?gen48 & : ( not ( member$ rule7 $?gen48 ) ) ) ) ( test ( eq ( class ?gen46 ) enabling_minor_extramarital_union ) ) => ( calc ( bind $?gen51 ( create$ rule7-overruled $?gen49 $?gen50 ) ) ) ?gen46 <- ( enabling_minor_extramarital_union ( negative-overruled $?gen51 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen530)
   (depends-on declare lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen45 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ) ?gen46 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive-support $?gen48 & : ( not ( subseq-pos ( create$ rule7 ?gen45 $$$ $?gen48 ) ) ) ) ) ( test ( eq ( class ?gen46 ) enabling_minor_extramarital_union ) ) => ( calc ( bind $?gen51 ( create$ rule7 ?gen45 $?gen48 ) ) ) ?gen46 <- ( enabling_minor_extramarital_union ( positive-support $?gen51 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen532)
   (depends-on declare family_obligation_violation_basic lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen37 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen37 ) family_obligation_violation_basic ) ) ( not ( and ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen37 <- ( family_obligation_violation_basic ( negative ~ 2 ) ( positive-overruled $?gen39 & : ( not ( member$ rule3 $?gen39 ) ) ) ) ) ) => ?gen37 <- ( family_obligation_violation_basic ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen534)
   (depends-on declare lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen37 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen39 & : ( not ( member$ rule3 $?gen39 ) ) ) ) ( test ( eq ( class ?gen37 ) family_obligation_violation_basic ) ) => ?gen37 <- ( family_obligation_violation_basic ( positive 1 ) ( positive-derivator rule3 ?gen44 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen536)
   (depends-on declare family_obligation_violation_basic lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen37 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( negative-support $?gen40 ) ( negative-overruled $?gen41 & : ( subseq-pos ( create$ rule3-overruled $?gen40 $$$ $?gen41 ) ) ) ) ( test ( eq ( class ?gen37 ) family_obligation_violation_basic ) ) ( not ( and ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen37 <- ( family_obligation_violation_basic ( positive-defeated $?gen39 & : ( not ( member$ rule3 $?gen39 ) ) ) ) ) ) => ( calc ( bind $?gen42 ( delete-member$ $?gen41 ( create$ rule3-overruled $?gen40 ) ) ) ) ?gen37 <- ( family_obligation_violation_basic ( negative-overruled $?gen42 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen538)
   (depends-on declare lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen44 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen43 & : ( >= ?gen43 1 ) ) ) ?gen37 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( negative-support $?gen40 ) ( negative-overruled $?gen41 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen40 $$$ $?gen41 ) ) ) ) ( positive-defeated $?gen39 & : ( not ( member$ rule3 $?gen39 ) ) ) ) ( test ( eq ( class ?gen37 ) family_obligation_violation_basic ) ) => ( calc ( bind $?gen42 ( create$ rule3-overruled $?gen40 $?gen41 ) ) ) ?gen37 <- ( family_obligation_violation_basic ( negative-overruled $?gen42 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen540)
   (depends-on declare lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ?gen37 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive-support $?gen39 & : ( not ( subseq-pos ( create$ rule3 ?gen36 $$$ $?gen39 ) ) ) ) ) ( test ( eq ( class ?gen37 ) family_obligation_violation_basic ) ) => ( calc ( bind $?gen42 ( create$ rule3 ?gen36 $?gen39 ) ) ) ?gen37 <- ( family_obligation_violation_basic ( positive-support $?gen42 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen542)
   (depends-on declare failure_to_provide_support_aggravated lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen26 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen26 ) failure_to_provide_support_aggravated ) ) ( not ( and ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen26 <- ( failure_to_provide_support_aggravated ( negative ~ 2 ) ( positive-overruled $?gen28 & : ( not ( member$ rule2 $?gen28 ) ) ) ) ) ) => ?gen26 <- ( failure_to_provide_support_aggravated ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen544)
   (depends-on declare lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen26 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen28 & : ( not ( member$ rule2 $?gen28 ) ) ) ) ( test ( eq ( class ?gen26 ) failure_to_provide_support_aggravated ) ) => ?gen26 <- ( failure_to_provide_support_aggravated ( positive 1 ) ( positive-derivator rule2 ?gen33 ?gen35 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen546)
   (depends-on declare failure_to_provide_support_aggravated lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen26 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( negative-support $?gen29 ) ( negative-overruled $?gen30 & : ( subseq-pos ( create$ rule2-overruled $?gen29 $$$ $?gen30 ) ) ) ) ( test ( eq ( class ?gen26 ) failure_to_provide_support_aggravated ) ) ( not ( and ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen26 <- ( failure_to_provide_support_aggravated ( positive-defeated $?gen28 & : ( not ( member$ rule2 $?gen28 ) ) ) ) ) ) => ( calc ( bind $?gen31 ( delete-member$ $?gen30 ( create$ rule2-overruled $?gen29 ) ) ) ) ?gen26 <- ( failure_to_provide_support_aggravated ( negative-overruled $?gen31 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen548)
   (depends-on declare lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen33 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen32 & : ( >= ?gen32 1 ) ) ) ?gen35 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen34 & : ( >= ?gen34 1 ) ) ) ?gen26 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( negative-support $?gen29 ) ( negative-overruled $?gen30 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen29 $$$ $?gen30 ) ) ) ) ( positive-defeated $?gen28 & : ( not ( member$ rule2 $?gen28 ) ) ) ) ( test ( eq ( class ?gen26 ) failure_to_provide_support_aggravated ) ) => ( calc ( bind $?gen31 ( create$ rule2-overruled $?gen29 $?gen30 ) ) ) ?gen26 <- ( failure_to_provide_support_aggravated ( negative-overruled $?gen31 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen550)
   (depends-on declare lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ) ?gen26 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive-support $?gen28 & : ( not ( subseq-pos ( create$ rule2 ?gen24 ?gen25 $$$ $?gen28 ) ) ) ) ) ( test ( eq ( class ?gen26 ) failure_to_provide_support_aggravated ) ) => ( calc ( bind $?gen31 ( create$ rule2 ?gen24 ?gen25 $?gen28 ) ) ) ?gen26 <- ( failure_to_provide_support_aggravated ( positive-support $?gen31 ) )"))

([rule1-defeated-dot] of derived-attribute-rule
   (pos-name rule1-defeated-dot-gen552)
   (depends-on declare failure_to_provide_support_basic lc:case)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule1] ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( negative-defeated $?gen19 & : ( subseq-pos ( create$ rule1-defeated rule2 $$$ $?gen19 ) ) ) ) ( test ( eq ( class ?gen16 ) failure_to_provide_support_basic ) ) ( not ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ) => ( calc ( bind $?gen18 ( delete-member$ $?gen19 ( create$ rule1-defeated rule2 ) ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( negative-defeated $?gen18 ) )"))

([rule1-defeated] of derived-attribute-rule
   (pos-name rule1-defeated-gen554)
   (depends-on declare lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( negative-defeated $?gen19 & : ( not ( subseq-pos ( create$ rule1-defeated rule2 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen16 ) failure_to_provide_support_basic ) ) => ( calc ( bind $?gen18 ( create$ rule1-defeated rule2 $?gen19 ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( negative-defeated $?gen18 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen556)
   (depends-on declare failure_to_provide_support_basic lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen16 ) failure_to_provide_support_basic ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ?gen16 <- ( failure_to_provide_support_basic ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen558)
   (depends-on declare lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) failure_to_provide_support_basic ) ) => ?gen16 <- ( failure_to_provide_support_basic ( positive 1 ) ( positive-derivator rule1 ?gen23 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen560)
   (depends-on declare failure_to_provide_support_basic lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen16 ) failure_to_provide_support_basic ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ) ) => ( calc ( bind $?gen21 ( delete-member$ $?gen20 ( create$ rule1-overruled $?gen19 ) ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( negative-overruled $?gen21 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen562)
   (depends-on declare lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( positive-defeated $?gen18 & : ( not ( member$ rule1 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) failure_to_provide_support_basic ) ) => ( calc ( bind $?gen21 ( create$ rule1-overruled $?gen19 $?gen20 ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( negative-overruled $?gen21 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen564)
   (depends-on declare lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ?gen16 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive-support $?gen18 & : ( not ( subseq-pos ( create$ rule1 ?gen15 $$$ $?gen18 ) ) ) ) ) ( test ( eq ( class ?gen16 ) failure_to_provide_support_basic ) ) => ( calc ( bind $?gen21 ( create$ rule1 ?gen15 $?gen18 ) ) ) ?gen16 <- ( failure_to_provide_support_basic ( positive-support $?gen21 ) )"))

([pen21-deductive] of ntm-deductive-rule
   (pos-name pen21-deductive-gen289)
   (depends-on domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen255 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5475 ) ) ) => ( max_imprisonment ( value 5475 ) )")
   (production-rule "( defrule pen21-deductive-gen289 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen255 ) ( is-a domestic_violence_aggravated_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5475 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5475 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5475 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5475 ) ) )")
   (derived-class max_imprisonment))

([pen20-deductive] of ntm-deductive-rule
   (pos-name pen20-deductive-gen288)
   (depends-on domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen246 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1825 ) ) ) => ( min_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen20-deductive-gen288 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen246 ) ( is-a domestic_violence_aggravated_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1825 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1825 ) ) )")
   (derived-class min_imprisonment))

([pen19-deductive] of ntm-deductive-rule
   (pos-name pen19-deductive-gen287)
   (depends-on domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen237 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 2920 ) ) ) => ( max_imprisonment ( value 2920 ) )")
   (production-rule "( defrule pen19-deductive-gen287 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen237 ) ( is-a domestic_violence_aggravated_severe ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 2920 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 2920 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 2920 ) ) ) ( make-instance ?oid of max_imprisonment ( value 2920 ) ) )")
   (derived-class max_imprisonment))

([pen18_ps14-deductive] of ntm-deductive-rule
   (pos-name pen18_ps14-deductive-gen286)
   (depends-on domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen228 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 365 ) ) ) => ( min_imprisonment ( value 365 ) )")
   (production-rule "( defrule pen18_ps14-deductive-gen286 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen228 ) ( is-a domestic_violence_aggravated_severe ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 365 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 365 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 365 ) ) ) ( make-instance ?oid of min_imprisonment ( value 365 ) ) )")
   (derived-class min_imprisonment))

([pen17_ps13-deductive] of ntm-deductive-rule
   (pos-name pen17_ps13-deductive-gen285)
   (depends-on domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen219 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1825 ) ) ) => ( max_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen17_ps13-deductive-gen285 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen219 ) ( is-a domestic_violence_aggravated_weapon ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1825 ) ) )")
   (derived-class max_imprisonment))

([pen18-deductive] of ntm-deductive-rule
   (pos-name pen18-deductive-gen284)
   (depends-on domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen210 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 365 ) ) ) => ( min_imprisonment ( value 365 ) )")
   (production-rule "( defrule pen18-deductive-gen284 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen210 ) ( is-a domestic_violence_aggravated_weapon ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 365 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 365 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 365 ) ) ) ( make-instance ?oid of min_imprisonment ( value 365 ) ) )")
   (derived-class min_imprisonment))

([pen17-deductive] of ntm-deductive-rule
   (pos-name pen17-deductive-gen283)
   (depends-on domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen201 <- ( domestic_violence_basic ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1825 ) ) ) => ( max_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen17-deductive-gen283 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen201 ) ( is-a domestic_violence_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1825 ) ) )")
   (derived-class max_imprisonment))

([pen16-deductive] of ntm-deductive-rule
   (pos-name pen16-deductive-gen282)
   (depends-on domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen192 <- ( domestic_violence_basic ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 180 ) ) ) => ( min_imprisonment ( value 180 ) )")
   (production-rule "( defrule pen16-deductive-gen282 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen192 ) ( is-a domestic_violence_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 180 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 180 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 180 ) ) ) ( make-instance ?oid of min_imprisonment ( value 180 ) ) )")
   (derived-class min_imprisonment))

([pen15-deductive] of ntm-deductive-rule
   (pos-name pen15-deductive-gen281)
   (depends-on child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen183 <- ( child_abduction_aggravated ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1825 ) ) ) => ( max_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen15-deductive-gen281 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen183 ) ( is-a child_abduction_aggravated ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1825 ) ) )")
   (derived-class max_imprisonment))

([pen14-deductive] of ntm-deductive-rule
   (pos-name pen14-deductive-gen280)
   (depends-on child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen174 <- ( child_abduction_aggravated ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 90 ) ) ) => ( min_imprisonment ( value 90 ) )")
   (production-rule "( defrule pen14-deductive-gen280 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen174 ) ( is-a child_abduction_aggravated ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 90 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ( make-instance ?oid of min_imprisonment ( value 90 ) ) )")
   (derived-class min_imprisonment))

([pen9-deductive] of ntm-deductive-rule
   (pos-name pen9-deductive-gen279)
   (depends-on enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen165 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1020 ) ) ) => ( max_imprisonment ( value 1020 ) )")
   (production-rule "( defrule pen9-deductive-gen279 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen165 ) ( is-a enabling_minor_extramarital_union ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1020 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1020 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1020 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1020 ) ) )")
   (derived-class max_imprisonment))

([pen8-deductive] of ntm-deductive-rule
   (pos-name pen8-deductive-gen278)
   (depends-on enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen156 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 120 ) ) ) => ( min_imprisonment ( value 120 ) )")
   (production-rule "( defrule pen8-deductive-gen278 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen156 ) ( is-a enabling_minor_extramarital_union ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 120 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 120 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 120 ) ) ) ( make-instance ?oid of min_imprisonment ( value 120 ) ) )")
   (derived-class min_imprisonment))

([pen5-deductive] of ntm-deductive-rule
   (pos-name pen5-deductive-gen277)
   (depends-on family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen147 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1095 ) ) ) => ( max_imprisonment ( value 1095 ) )")
   (production-rule "( defrule pen5-deductive-gen277 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen147 ) ( is-a family_obligation_violation_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1095 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1095 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1095 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1095 ) ) )")
   (derived-class max_imprisonment))

([pen4-deductive] of ntm-deductive-rule
   (pos-name pen4-deductive-gen276)
   (depends-on family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen138 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 90 ) ) ) => ( min_imprisonment ( value 90 ) )")
   (production-rule "( defrule pen4-deductive-gen276 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen138 ) ( is-a family_obligation_violation_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 90 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ( make-instance ?oid of min_imprisonment ( value 90 ) ) )")
   (derived-class min_imprisonment))

([pen3-deductive] of ntm-deductive-rule
   (pos-name pen3-deductive-gen275)
   (depends-on failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen129 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1825 ) ) ) => ( max_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen3-deductive-gen275 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen129 ) ( is-a failure_to_provide_support_aggravated ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1825 ) ) )")
   (derived-class max_imprisonment))

([pen2-deductive] of ntm-deductive-rule
   (pos-name pen2-deductive-gen274)
   (depends-on failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen120 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 180 ) ) ) => ( min_imprisonment ( value 180 ) )")
   (production-rule "( defrule pen2-deductive-gen274 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen120 ) ( is-a failure_to_provide_support_aggravated ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 180 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 180 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 180 ) ) ) ( make-instance ?oid of min_imprisonment ( value 180 ) ) )")
   (derived-class min_imprisonment))

([pen1-deductive] of ntm-deductive-rule
   (pos-name pen1-deductive-gen273)
   (depends-on failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen111 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 730 ) ) ) => ( max_imprisonment ( value 730 ) )")
   (production-rule "( defrule pen1-deductive-gen273 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen111 ) ( is-a failure_to_provide_support_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 730 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 730 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 730 ) ) ) ( make-instance ?oid of max_imprisonment ( value 730 ) ) )")
   (derived-class max_imprisonment))

([rule15-deductive] of ntm-deductive-rule
   (pos-name rule15-deductive-gen272)
   (depends-on lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (deductive-rule "?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ) ( not ( domestic_violence_aggravated_death ( defendant ?Defendant ) ) ) => ( domestic_violence_aggravated_death ( defendant ?Defendant ) )")
   (production-rule "( defrule rule15-deductive-gen272 ( declare ( salience ( calc-salience domestic_violence_aggravated_death ) ) ) ( run-deductive-rules ) ( object ( name ?gen96 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ( object ( name ?gen97 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ( object ( name ?gen98 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ) ( not ( object ( is-a domestic_violence_aggravated_death ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_death ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_death ?Defendant ) ) ) ( make-instance ?oid of domestic_violence_aggravated_death ( defendant ?Defendant ) ) )")
   (derived-class domestic_violence_aggravated_death))

([rule14-deductive] of ntm-deductive-rule
   (pos-name rule14-deductive-gen271)
   (depends-on lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (deductive-rule "?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ( not ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ) ) => ( domestic_violence_aggravated_severe ( defendant ?Defendant ) )")
   (production-rule "( defrule rule14-deductive-gen271 ( declare ( salience ( calc-salience domestic_violence_aggravated_severe ) ) ) ( run-deductive-rules ) ( object ( name ?gen84 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ( object ( name ?gen85 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ( not ( object ( is-a domestic_violence_aggravated_severe ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_severe ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_severe ?Defendant ) ) ) ( make-instance ?oid of domestic_violence_aggravated_severe ( defendant ?Defendant ) ) )")
   (derived-class domestic_violence_aggravated_severe))

([rule13-deductive] of ntm-deductive-rule
   (pos-name rule13-deductive-gen270)
   (depends-on lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (deductive-rule "?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen73 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ) ( not ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) ) => ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) )")
   (production-rule "( defrule rule13-deductive-gen270 ( declare ( salience ( calc-salience domestic_violence_aggravated_weapon ) ) ) ( run-deductive-rules ) ( object ( name ?gen72 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ( object ( name ?gen73 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ) ( not ( object ( is-a domestic_violence_aggravated_weapon ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_weapon ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_weapon ?Defendant ) ) ) ( make-instance ?oid of domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) )")
   (derived-class domestic_violence_aggravated_weapon))

([rule12-deductive] of ntm-deductive-rule
   (pos-name rule12-deductive-gen269)
   (depends-on lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (deductive-rule "?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ( not ( domestic_violence_basic ( defendant ?Defendant ) ) ) => ( domestic_violence_basic ( defendant ?Defendant ) )")
   (production-rule "( defrule rule12-deductive-gen269 ( declare ( salience ( calc-salience domestic_violence_basic ) ) ) ( run-deductive-rules ) ( object ( name ?gen63 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ( not ( object ( is-a domestic_violence_basic ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat domestic_violence_basic ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat domestic_violence_basic ?Defendant ) ) ) ( make-instance ?oid of domestic_violence_basic ( defendant ?Defendant ) ) )")
   (derived-class domestic_violence_basic))

([rule11-deductive] of ntm-deductive-rule
   (pos-name rule11-deductive-gen268)
   (depends-on lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (deductive-rule "?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ) ( not ( child_abduction_aggravated ( defendant ?Defendant ) ) ) => ( child_abduction_aggravated ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11-deductive-gen268 ( declare ( salience ( calc-salience child_abduction_aggravated ) ) ) ( run-deductive-rules ) ( object ( name ?gen54 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ) ( not ( object ( is-a child_abduction_aggravated ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat child_abduction_aggravated ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat child_abduction_aggravated ?Defendant ) ) ) ( make-instance ?oid of child_abduction_aggravated ( defendant ?Defendant ) ) )")
   (derived-class child_abduction_aggravated))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen267)
   (depends-on lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (deductive-rule "?gen45 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ) ( not ( enabling_minor_extramarital_union ( defendant ?Defendant ) ) ) => ( enabling_minor_extramarital_union ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen267 ( declare ( salience ( calc-salience enabling_minor_extramarital_union ) ) ) ( run-deductive-rules ) ( object ( name ?gen45 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ) ( not ( object ( is-a enabling_minor_extramarital_union ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat enabling_minor_extramarital_union ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat enabling_minor_extramarital_union ?Defendant ) ) ) ( make-instance ?oid of enabling_minor_extramarital_union ( defendant ?Defendant ) ) )")
   (derived-class enabling_minor_extramarital_union))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen266)
   (depends-on lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (deductive-rule "?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ( not ( family_obligation_violation_basic ( defendant ?Defendant ) ) ) => ( family_obligation_violation_basic ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen266 ( declare ( salience ( calc-salience family_obligation_violation_basic ) ) ) ( run-deductive-rules ) ( object ( name ?gen36 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ( not ( object ( is-a family_obligation_violation_basic ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat family_obligation_violation_basic ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat family_obligation_violation_basic ?Defendant ) ) ) ( make-instance ?oid of family_obligation_violation_basic ( defendant ?Defendant ) ) )")
   (derived-class family_obligation_violation_basic))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen265)
   (depends-on lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (deductive-rule "?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ) ( not ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ) ) => ( failure_to_provide_support_aggravated ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen265 ( declare ( salience ( calc-salience failure_to_provide_support_aggravated ) ) ) ( run-deductive-rules ) ( object ( name ?gen24 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ( object ( name ?gen25 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ) ( not ( object ( is-a failure_to_provide_support_aggravated ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat failure_to_provide_support_aggravated ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat failure_to_provide_support_aggravated ?Defendant ) ) ) ( make-instance ?oid of failure_to_provide_support_aggravated ( defendant ?Defendant ) ) )")
   (derived-class failure_to_provide_support_aggravated))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen264)
   (depends-on lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ( not ( failure_to_provide_support_basic ( defendant ?Defendant ) ) ) => ( failure_to_provide_support_basic ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen264 ( declare ( salience ( calc-salience failure_to_provide_support_basic ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ( not ( object ( is-a failure_to_provide_support_basic ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat failure_to_provide_support_basic ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat failure_to_provide_support_basic ?Defendant ) ) ) ( make-instance ?oid of failure_to_provide_support_basic ( defendant ?Defendant ) ) )")
   (derived-class failure_to_provide_support_basic))

