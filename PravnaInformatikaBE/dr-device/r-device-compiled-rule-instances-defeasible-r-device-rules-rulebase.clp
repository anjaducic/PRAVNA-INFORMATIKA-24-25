([pen22-defeasibly-dot] of derived-attribute-rule
   (pos-name pen22-defeasibly-dot-gen486)
   (depends-on declare max_imprisonment domestic_violence_protection_violation max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen22] ) ) ) ?gen436 <- ( max_imprisonment ( value 365 ) ( positive 1 ) ( positive-derivator pen22 $? ) ) ( test ( eq ( class ?gen436 ) max_imprisonment ) ) ( not ( and ?gen443 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen438 & : ( not ( member$ pen22 $?gen438 ) ) ) ) ) ) => ?gen436 <- ( max_imprisonment ( positive 0 ) )"))

([pen22-defeasibly] of derived-attribute-rule
   (pos-name pen22-defeasibly-gen488)
   (depends-on declare domestic_violence_protection_violation max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen22] ) ) ) ?gen443 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( max_imprisonment ( value 365 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen438 & : ( not ( member$ pen22 $?gen438 ) ) ) ) ( test ( eq ( class ?gen436 ) max_imprisonment ) ) => ?gen436 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen22 ?gen443 ) )"))

([pen22-overruled-dot] of derived-attribute-rule
   (pos-name pen22-overruled-dot-gen490)
   (depends-on declare max_imprisonment domestic_violence_protection_violation max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen22] ) ) ) ?gen436 <- ( max_imprisonment ( value 365 ) ( negative-support $?gen439 ) ( negative-overruled $?gen440 & : ( subseq-pos ( create$ pen22-overruled $?gen439 $$$ $?gen440 ) ) ) ) ( test ( eq ( class ?gen436 ) max_imprisonment ) ) ( not ( and ?gen443 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( max_imprisonment ( positive-defeated $?gen438 & : ( not ( member$ pen22 $?gen438 ) ) ) ) ) ) => ( calc ( bind $?gen441 ( delete-member$ $?gen440 ( create$ pen22-overruled $?gen439 ) ) ) ) ?gen436 <- ( max_imprisonment ( negative-overruled $?gen441 ) )"))

([pen22-overruled] of derived-attribute-rule
   (pos-name pen22-overruled-gen492)
   (depends-on declare domestic_violence_protection_violation max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen22] ) ) ) ?gen443 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( max_imprisonment ( value 365 ) ( negative-support $?gen439 ) ( negative-overruled $?gen440 & : ( not ( subseq-pos ( create$ pen22-overruled $?gen439 $$$ $?gen440 ) ) ) ) ( positive-defeated $?gen438 & : ( not ( member$ pen22 $?gen438 ) ) ) ) ( test ( eq ( class ?gen436 ) max_imprisonment ) ) => ( calc ( bind $?gen441 ( create$ pen22-overruled $?gen439 $?gen440 ) ) ) ?gen436 <- ( max_imprisonment ( negative-overruled $?gen441 ) )"))

([pen22-support] of derived-attribute-rule
   (pos-name pen22-support-gen494)
   (depends-on declare domestic_violence_protection_violation max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen22] ) ) ) ?gen435 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ) ?gen436 <- ( max_imprisonment ( value 365 ) ( positive-support $?gen438 & : ( not ( subseq-pos ( create$ pen22 ?gen435 $$$ $?gen438 ) ) ) ) ) ( test ( eq ( class ?gen436 ) max_imprisonment ) ) => ( calc ( bind $?gen441 ( create$ pen22 ?gen435 $?gen438 ) ) ) ?gen436 <- ( max_imprisonment ( positive-support $?gen441 ) )"))

([pen21-defeasibly-dot] of derived-attribute-rule
   (pos-name pen21-defeasibly-dot-gen496)
   (depends-on declare max_imprisonment domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen21] ) ) ) ?gen427 <- ( max_imprisonment ( value 5475 ) ( positive 1 ) ( positive-derivator pen21 $? ) ) ( test ( eq ( class ?gen427 ) max_imprisonment ) ) ( not ( and ?gen434 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen429 & : ( not ( member$ pen21 $?gen429 ) ) ) ) ) ) => ?gen427 <- ( max_imprisonment ( positive 0 ) )"))

([pen21-defeasibly] of derived-attribute-rule
   (pos-name pen21-defeasibly-gen498)
   (depends-on declare domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen21] ) ) ) ?gen434 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( max_imprisonment ( value 5475 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen429 & : ( not ( member$ pen21 $?gen429 ) ) ) ) ( test ( eq ( class ?gen427 ) max_imprisonment ) ) => ?gen427 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen21 ?gen434 ) )"))

([pen21-overruled-dot] of derived-attribute-rule
   (pos-name pen21-overruled-dot-gen500)
   (depends-on declare max_imprisonment domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen21] ) ) ) ?gen427 <- ( max_imprisonment ( value 5475 ) ( negative-support $?gen430 ) ( negative-overruled $?gen431 & : ( subseq-pos ( create$ pen21-overruled $?gen430 $$$ $?gen431 ) ) ) ) ( test ( eq ( class ?gen427 ) max_imprisonment ) ) ( not ( and ?gen434 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( max_imprisonment ( positive-defeated $?gen429 & : ( not ( member$ pen21 $?gen429 ) ) ) ) ) ) => ( calc ( bind $?gen432 ( delete-member$ $?gen431 ( create$ pen21-overruled $?gen430 ) ) ) ) ?gen427 <- ( max_imprisonment ( negative-overruled $?gen432 ) )"))

([pen21-overruled] of derived-attribute-rule
   (pos-name pen21-overruled-gen502)
   (depends-on declare domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen21] ) ) ) ?gen434 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( max_imprisonment ( value 5475 ) ( negative-support $?gen430 ) ( negative-overruled $?gen431 & : ( not ( subseq-pos ( create$ pen21-overruled $?gen430 $$$ $?gen431 ) ) ) ) ( positive-defeated $?gen429 & : ( not ( member$ pen21 $?gen429 ) ) ) ) ( test ( eq ( class ?gen427 ) max_imprisonment ) ) => ( calc ( bind $?gen432 ( create$ pen21-overruled $?gen430 $?gen431 ) ) ) ?gen427 <- ( max_imprisonment ( negative-overruled $?gen432 ) )"))

([pen21-support] of derived-attribute-rule
   (pos-name pen21-support-gen504)
   (depends-on declare domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen21] ) ) ) ?gen426 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ) ?gen427 <- ( max_imprisonment ( value 5475 ) ( positive-support $?gen429 & : ( not ( subseq-pos ( create$ pen21 ?gen426 $$$ $?gen429 ) ) ) ) ) ( test ( eq ( class ?gen427 ) max_imprisonment ) ) => ( calc ( bind $?gen432 ( create$ pen21 ?gen426 $?gen429 ) ) ) ?gen427 <- ( max_imprisonment ( positive-support $?gen432 ) )"))

([pen20-defeasibly-dot] of derived-attribute-rule
   (pos-name pen20-defeasibly-dot-gen506)
   (depends-on declare min_imprisonment domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen20] ) ) ) ?gen418 <- ( min_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen20 $? ) ) ( test ( eq ( class ?gen418 ) min_imprisonment ) ) ( not ( and ?gen425 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen420 & : ( not ( member$ pen20 $?gen420 ) ) ) ) ) ) => ?gen418 <- ( min_imprisonment ( positive 0 ) )"))

([pen20-defeasibly] of derived-attribute-rule
   (pos-name pen20-defeasibly-gen508)
   (depends-on declare domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen20] ) ) ) ?gen425 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( min_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen420 & : ( not ( member$ pen20 $?gen420 ) ) ) ) ( test ( eq ( class ?gen418 ) min_imprisonment ) ) => ?gen418 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen20 ?gen425 ) )"))

([pen20-overruled-dot] of derived-attribute-rule
   (pos-name pen20-overruled-dot-gen510)
   (depends-on declare min_imprisonment domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen20] ) ) ) ?gen418 <- ( min_imprisonment ( value 1825 ) ( negative-support $?gen421 ) ( negative-overruled $?gen422 & : ( subseq-pos ( create$ pen20-overruled $?gen421 $$$ $?gen422 ) ) ) ) ( test ( eq ( class ?gen418 ) min_imprisonment ) ) ( not ( and ?gen425 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( min_imprisonment ( positive-defeated $?gen420 & : ( not ( member$ pen20 $?gen420 ) ) ) ) ) ) => ( calc ( bind $?gen423 ( delete-member$ $?gen422 ( create$ pen20-overruled $?gen421 ) ) ) ) ?gen418 <- ( min_imprisonment ( negative-overruled $?gen423 ) )"))

([pen20-overruled] of derived-attribute-rule
   (pos-name pen20-overruled-gen512)
   (depends-on declare domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen20] ) ) ) ?gen425 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( min_imprisonment ( value 1825 ) ( negative-support $?gen421 ) ( negative-overruled $?gen422 & : ( not ( subseq-pos ( create$ pen20-overruled $?gen421 $$$ $?gen422 ) ) ) ) ( positive-defeated $?gen420 & : ( not ( member$ pen20 $?gen420 ) ) ) ) ( test ( eq ( class ?gen418 ) min_imprisonment ) ) => ( calc ( bind $?gen423 ( create$ pen20-overruled $?gen421 $?gen422 ) ) ) ?gen418 <- ( min_imprisonment ( negative-overruled $?gen423 ) )"))

([pen20-support] of derived-attribute-rule
   (pos-name pen20-support-gen514)
   (depends-on declare domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen20] ) ) ) ?gen417 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ) ?gen418 <- ( min_imprisonment ( value 1825 ) ( positive-support $?gen420 & : ( not ( subseq-pos ( create$ pen20 ?gen417 $$$ $?gen420 ) ) ) ) ) ( test ( eq ( class ?gen418 ) min_imprisonment ) ) => ( calc ( bind $?gen423 ( create$ pen20 ?gen417 $?gen420 ) ) ) ?gen418 <- ( min_imprisonment ( positive-support $?gen423 ) )"))

([pen19-defeasibly-dot] of derived-attribute-rule
   (pos-name pen19-defeasibly-dot-gen516)
   (depends-on declare max_imprisonment domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen19] ) ) ) ?gen409 <- ( max_imprisonment ( value 2920 ) ( positive 1 ) ( positive-derivator pen19 $? ) ) ( test ( eq ( class ?gen409 ) max_imprisonment ) ) ( not ( and ?gen416 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen411 & : ( not ( member$ pen19 $?gen411 ) ) ) ) ) ) => ?gen409 <- ( max_imprisonment ( positive 0 ) )"))

([pen19-defeasibly] of derived-attribute-rule
   (pos-name pen19-defeasibly-gen518)
   (depends-on declare domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen19] ) ) ) ?gen416 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_imprisonment ( value 2920 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen411 & : ( not ( member$ pen19 $?gen411 ) ) ) ) ( test ( eq ( class ?gen409 ) max_imprisonment ) ) => ?gen409 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen19 ?gen416 ) )"))

([pen19-overruled-dot] of derived-attribute-rule
   (pos-name pen19-overruled-dot-gen520)
   (depends-on declare max_imprisonment domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen19] ) ) ) ?gen409 <- ( max_imprisonment ( value 2920 ) ( negative-support $?gen412 ) ( negative-overruled $?gen413 & : ( subseq-pos ( create$ pen19-overruled $?gen412 $$$ $?gen413 ) ) ) ) ( test ( eq ( class ?gen409 ) max_imprisonment ) ) ( not ( and ?gen416 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_imprisonment ( positive-defeated $?gen411 & : ( not ( member$ pen19 $?gen411 ) ) ) ) ) ) => ( calc ( bind $?gen414 ( delete-member$ $?gen413 ( create$ pen19-overruled $?gen412 ) ) ) ) ?gen409 <- ( max_imprisonment ( negative-overruled $?gen414 ) )"))

([pen19-overruled] of derived-attribute-rule
   (pos-name pen19-overruled-gen522)
   (depends-on declare domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen19] ) ) ) ?gen416 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_imprisonment ( value 2920 ) ( negative-support $?gen412 ) ( negative-overruled $?gen413 & : ( not ( subseq-pos ( create$ pen19-overruled $?gen412 $$$ $?gen413 ) ) ) ) ( positive-defeated $?gen411 & : ( not ( member$ pen19 $?gen411 ) ) ) ) ( test ( eq ( class ?gen409 ) max_imprisonment ) ) => ( calc ( bind $?gen414 ( create$ pen19-overruled $?gen412 $?gen413 ) ) ) ?gen409 <- ( max_imprisonment ( negative-overruled $?gen414 ) )"))

([pen19-support] of derived-attribute-rule
   (pos-name pen19-support-gen524)
   (depends-on declare domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen19] ) ) ) ?gen408 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ) ?gen409 <- ( max_imprisonment ( value 2920 ) ( positive-support $?gen411 & : ( not ( subseq-pos ( create$ pen19 ?gen408 $$$ $?gen411 ) ) ) ) ) ( test ( eq ( class ?gen409 ) max_imprisonment ) ) => ( calc ( bind $?gen414 ( create$ pen19 ?gen408 $?gen411 ) ) ) ?gen409 <- ( max_imprisonment ( positive-support $?gen414 ) )"))

([pen18_ps14-defeasibly-dot] of derived-attribute-rule
   (pos-name pen18_ps14-defeasibly-dot-gen526)
   (depends-on declare min_imprisonment domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen18_ps14] ) ) ) ?gen400 <- ( min_imprisonment ( value 365 ) ( positive 1 ) ( positive-derivator pen18_ps14 $? ) ) ( test ( eq ( class ?gen400 ) min_imprisonment ) ) ( not ( and ?gen407 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen402 & : ( not ( member$ pen18_ps14 $?gen402 ) ) ) ) ) ) => ?gen400 <- ( min_imprisonment ( positive 0 ) )"))

([pen18_ps14-defeasibly] of derived-attribute-rule
   (pos-name pen18_ps14-defeasibly-gen528)
   (depends-on declare domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen18_ps14] ) ) ) ?gen407 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( min_imprisonment ( value 365 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen402 & : ( not ( member$ pen18_ps14 $?gen402 ) ) ) ) ( test ( eq ( class ?gen400 ) min_imprisonment ) ) => ?gen400 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen18_ps14 ?gen407 ) )"))

([pen18_ps14-overruled-dot] of derived-attribute-rule
   (pos-name pen18_ps14-overruled-dot-gen530)
   (depends-on declare min_imprisonment domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen18_ps14] ) ) ) ?gen400 <- ( min_imprisonment ( value 365 ) ( negative-support $?gen403 ) ( negative-overruled $?gen404 & : ( subseq-pos ( create$ pen18_ps14-overruled $?gen403 $$$ $?gen404 ) ) ) ) ( test ( eq ( class ?gen400 ) min_imprisonment ) ) ( not ( and ?gen407 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( min_imprisonment ( positive-defeated $?gen402 & : ( not ( member$ pen18_ps14 $?gen402 ) ) ) ) ) ) => ( calc ( bind $?gen405 ( delete-member$ $?gen404 ( create$ pen18_ps14-overruled $?gen403 ) ) ) ) ?gen400 <- ( min_imprisonment ( negative-overruled $?gen405 ) )"))

([pen18_ps14-overruled] of derived-attribute-rule
   (pos-name pen18_ps14-overruled-gen532)
   (depends-on declare domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen18_ps14] ) ) ) ?gen407 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( min_imprisonment ( value 365 ) ( negative-support $?gen403 ) ( negative-overruled $?gen404 & : ( not ( subseq-pos ( create$ pen18_ps14-overruled $?gen403 $$$ $?gen404 ) ) ) ) ( positive-defeated $?gen402 & : ( not ( member$ pen18_ps14 $?gen402 ) ) ) ) ( test ( eq ( class ?gen400 ) min_imprisonment ) ) => ( calc ( bind $?gen405 ( create$ pen18_ps14-overruled $?gen403 $?gen404 ) ) ) ?gen400 <- ( min_imprisonment ( negative-overruled $?gen405 ) )"))

([pen18_ps14-support] of derived-attribute-rule
   (pos-name pen18_ps14-support-gen534)
   (depends-on declare domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen18_ps14] ) ) ) ?gen399 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ) ?gen400 <- ( min_imprisonment ( value 365 ) ( positive-support $?gen402 & : ( not ( subseq-pos ( create$ pen18_ps14 ?gen399 $$$ $?gen402 ) ) ) ) ) ( test ( eq ( class ?gen400 ) min_imprisonment ) ) => ( calc ( bind $?gen405 ( create$ pen18_ps14 ?gen399 $?gen402 ) ) ) ?gen400 <- ( min_imprisonment ( positive-support $?gen405 ) )"))

([pen17_ps13-defeasibly-dot] of derived-attribute-rule
   (pos-name pen17_ps13-defeasibly-dot-gen536)
   (depends-on declare max_imprisonment domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen17_ps13] ) ) ) ?gen391 <- ( max_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen17_ps13 $? ) ) ( test ( eq ( class ?gen391 ) max_imprisonment ) ) ( not ( and ?gen398 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen393 & : ( not ( member$ pen17_ps13 $?gen393 ) ) ) ) ) ) => ?gen391 <- ( max_imprisonment ( positive 0 ) )"))

([pen17_ps13-defeasibly] of derived-attribute-rule
   (pos-name pen17_ps13-defeasibly-gen538)
   (depends-on declare domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen17_ps13] ) ) ) ?gen398 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( max_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen393 & : ( not ( member$ pen17_ps13 $?gen393 ) ) ) ) ( test ( eq ( class ?gen391 ) max_imprisonment ) ) => ?gen391 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen17_ps13 ?gen398 ) )"))

([pen17_ps13-overruled-dot] of derived-attribute-rule
   (pos-name pen17_ps13-overruled-dot-gen540)
   (depends-on declare max_imprisonment domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen17_ps13] ) ) ) ?gen391 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen394 ) ( negative-overruled $?gen395 & : ( subseq-pos ( create$ pen17_ps13-overruled $?gen394 $$$ $?gen395 ) ) ) ) ( test ( eq ( class ?gen391 ) max_imprisonment ) ) ( not ( and ?gen398 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( max_imprisonment ( positive-defeated $?gen393 & : ( not ( member$ pen17_ps13 $?gen393 ) ) ) ) ) ) => ( calc ( bind $?gen396 ( delete-member$ $?gen395 ( create$ pen17_ps13-overruled $?gen394 ) ) ) ) ?gen391 <- ( max_imprisonment ( negative-overruled $?gen396 ) )"))

([pen17_ps13-overruled] of derived-attribute-rule
   (pos-name pen17_ps13-overruled-gen542)
   (depends-on declare domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen17_ps13] ) ) ) ?gen398 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen394 ) ( negative-overruled $?gen395 & : ( not ( subseq-pos ( create$ pen17_ps13-overruled $?gen394 $$$ $?gen395 ) ) ) ) ( positive-defeated $?gen393 & : ( not ( member$ pen17_ps13 $?gen393 ) ) ) ) ( test ( eq ( class ?gen391 ) max_imprisonment ) ) => ( calc ( bind $?gen396 ( create$ pen17_ps13-overruled $?gen394 $?gen395 ) ) ) ?gen391 <- ( max_imprisonment ( negative-overruled $?gen396 ) )"))

([pen17_ps13-support] of derived-attribute-rule
   (pos-name pen17_ps13-support-gen544)
   (depends-on declare domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen17_ps13] ) ) ) ?gen390 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) ?gen391 <- ( max_imprisonment ( value 1825 ) ( positive-support $?gen393 & : ( not ( subseq-pos ( create$ pen17_ps13 ?gen390 $$$ $?gen393 ) ) ) ) ) ( test ( eq ( class ?gen391 ) max_imprisonment ) ) => ( calc ( bind $?gen396 ( create$ pen17_ps13 ?gen390 $?gen393 ) ) ) ?gen391 <- ( max_imprisonment ( positive-support $?gen396 ) )"))

([pen18-defeasibly-dot] of derived-attribute-rule
   (pos-name pen18-defeasibly-dot-gen546)
   (depends-on declare min_imprisonment domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen18] ) ) ) ?gen382 <- ( min_imprisonment ( value 365 ) ( positive 1 ) ( positive-derivator pen18 $? ) ) ( test ( eq ( class ?gen382 ) min_imprisonment ) ) ( not ( and ?gen389 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen384 & : ( not ( member$ pen18 $?gen384 ) ) ) ) ) ) => ?gen382 <- ( min_imprisonment ( positive 0 ) )"))

([pen18-defeasibly] of derived-attribute-rule
   (pos-name pen18-defeasibly-gen548)
   (depends-on declare domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen18] ) ) ) ?gen389 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( min_imprisonment ( value 365 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen384 & : ( not ( member$ pen18 $?gen384 ) ) ) ) ( test ( eq ( class ?gen382 ) min_imprisonment ) ) => ?gen382 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen18 ?gen389 ) )"))

([pen18-overruled-dot] of derived-attribute-rule
   (pos-name pen18-overruled-dot-gen550)
   (depends-on declare min_imprisonment domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen18] ) ) ) ?gen382 <- ( min_imprisonment ( value 365 ) ( negative-support $?gen385 ) ( negative-overruled $?gen386 & : ( subseq-pos ( create$ pen18-overruled $?gen385 $$$ $?gen386 ) ) ) ) ( test ( eq ( class ?gen382 ) min_imprisonment ) ) ( not ( and ?gen389 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( min_imprisonment ( positive-defeated $?gen384 & : ( not ( member$ pen18 $?gen384 ) ) ) ) ) ) => ( calc ( bind $?gen387 ( delete-member$ $?gen386 ( create$ pen18-overruled $?gen385 ) ) ) ) ?gen382 <- ( min_imprisonment ( negative-overruled $?gen387 ) )"))

([pen18-overruled] of derived-attribute-rule
   (pos-name pen18-overruled-gen552)
   (depends-on declare domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen18] ) ) ) ?gen389 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( min_imprisonment ( value 365 ) ( negative-support $?gen385 ) ( negative-overruled $?gen386 & : ( not ( subseq-pos ( create$ pen18-overruled $?gen385 $$$ $?gen386 ) ) ) ) ( positive-defeated $?gen384 & : ( not ( member$ pen18 $?gen384 ) ) ) ) ( test ( eq ( class ?gen382 ) min_imprisonment ) ) => ( calc ( bind $?gen387 ( create$ pen18-overruled $?gen385 $?gen386 ) ) ) ?gen382 <- ( min_imprisonment ( negative-overruled $?gen387 ) )"))

([pen18-support] of derived-attribute-rule
   (pos-name pen18-support-gen554)
   (depends-on declare domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen18] ) ) ) ?gen381 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) ?gen382 <- ( min_imprisonment ( value 365 ) ( positive-support $?gen384 & : ( not ( subseq-pos ( create$ pen18 ?gen381 $$$ $?gen384 ) ) ) ) ) ( test ( eq ( class ?gen382 ) min_imprisonment ) ) => ( calc ( bind $?gen387 ( create$ pen18 ?gen381 $?gen384 ) ) ) ?gen382 <- ( min_imprisonment ( positive-support $?gen387 ) )"))

([pen17-defeasibly-dot] of derived-attribute-rule
   (pos-name pen17-defeasibly-dot-gen556)
   (depends-on declare max_imprisonment domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen17] ) ) ) ?gen373 <- ( max_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen17 $? ) ) ( test ( eq ( class ?gen373 ) max_imprisonment ) ) ( not ( and ?gen380 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen375 & : ( not ( member$ pen17 $?gen375 ) ) ) ) ) ) => ?gen373 <- ( max_imprisonment ( positive 0 ) )"))

([pen17-defeasibly] of derived-attribute-rule
   (pos-name pen17-defeasibly-gen558)
   (depends-on declare domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen17] ) ) ) ?gen380 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( max_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen375 & : ( not ( member$ pen17 $?gen375 ) ) ) ) ( test ( eq ( class ?gen373 ) max_imprisonment ) ) => ?gen373 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen17 ?gen380 ) )"))

([pen17-overruled-dot] of derived-attribute-rule
   (pos-name pen17-overruled-dot-gen560)
   (depends-on declare max_imprisonment domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen17] ) ) ) ?gen373 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen376 ) ( negative-overruled $?gen377 & : ( subseq-pos ( create$ pen17-overruled $?gen376 $$$ $?gen377 ) ) ) ) ( test ( eq ( class ?gen373 ) max_imprisonment ) ) ( not ( and ?gen380 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( max_imprisonment ( positive-defeated $?gen375 & : ( not ( member$ pen17 $?gen375 ) ) ) ) ) ) => ( calc ( bind $?gen378 ( delete-member$ $?gen377 ( create$ pen17-overruled $?gen376 ) ) ) ) ?gen373 <- ( max_imprisonment ( negative-overruled $?gen378 ) )"))

([pen17-overruled] of derived-attribute-rule
   (pos-name pen17-overruled-gen562)
   (depends-on declare domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen17] ) ) ) ?gen380 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen376 ) ( negative-overruled $?gen377 & : ( not ( subseq-pos ( create$ pen17-overruled $?gen376 $$$ $?gen377 ) ) ) ) ( positive-defeated $?gen375 & : ( not ( member$ pen17 $?gen375 ) ) ) ) ( test ( eq ( class ?gen373 ) max_imprisonment ) ) => ( calc ( bind $?gen378 ( create$ pen17-overruled $?gen376 $?gen377 ) ) ) ?gen373 <- ( max_imprisonment ( negative-overruled $?gen378 ) )"))

([pen17-support] of derived-attribute-rule
   (pos-name pen17-support-gen564)
   (depends-on declare domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen17] ) ) ) ?gen372 <- ( domestic_violence_basic ( defendant ?Defendant ) ) ?gen373 <- ( max_imprisonment ( value 1825 ) ( positive-support $?gen375 & : ( not ( subseq-pos ( create$ pen17 ?gen372 $$$ $?gen375 ) ) ) ) ) ( test ( eq ( class ?gen373 ) max_imprisonment ) ) => ( calc ( bind $?gen378 ( create$ pen17 ?gen372 $?gen375 ) ) ) ?gen373 <- ( max_imprisonment ( positive-support $?gen378 ) )"))

([pen16-defeasibly-dot] of derived-attribute-rule
   (pos-name pen16-defeasibly-dot-gen566)
   (depends-on declare min_imprisonment domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen16] ) ) ) ?gen364 <- ( min_imprisonment ( value 180 ) ( positive 1 ) ( positive-derivator pen16 $? ) ) ( test ( eq ( class ?gen364 ) min_imprisonment ) ) ( not ( and ?gen371 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen366 & : ( not ( member$ pen16 $?gen366 ) ) ) ) ) ) => ?gen364 <- ( min_imprisonment ( positive 0 ) )"))

([pen16-defeasibly] of derived-attribute-rule
   (pos-name pen16-defeasibly-gen568)
   (depends-on declare domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen16] ) ) ) ?gen371 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( min_imprisonment ( value 180 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen366 & : ( not ( member$ pen16 $?gen366 ) ) ) ) ( test ( eq ( class ?gen364 ) min_imprisonment ) ) => ?gen364 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen16 ?gen371 ) )"))

([pen16-overruled-dot] of derived-attribute-rule
   (pos-name pen16-overruled-dot-gen570)
   (depends-on declare min_imprisonment domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen16] ) ) ) ?gen364 <- ( min_imprisonment ( value 180 ) ( negative-support $?gen367 ) ( negative-overruled $?gen368 & : ( subseq-pos ( create$ pen16-overruled $?gen367 $$$ $?gen368 ) ) ) ) ( test ( eq ( class ?gen364 ) min_imprisonment ) ) ( not ( and ?gen371 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( min_imprisonment ( positive-defeated $?gen366 & : ( not ( member$ pen16 $?gen366 ) ) ) ) ) ) => ( calc ( bind $?gen369 ( delete-member$ $?gen368 ( create$ pen16-overruled $?gen367 ) ) ) ) ?gen364 <- ( min_imprisonment ( negative-overruled $?gen369 ) )"))

([pen16-overruled] of derived-attribute-rule
   (pos-name pen16-overruled-gen572)
   (depends-on declare domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen16] ) ) ) ?gen371 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( min_imprisonment ( value 180 ) ( negative-support $?gen367 ) ( negative-overruled $?gen368 & : ( not ( subseq-pos ( create$ pen16-overruled $?gen367 $$$ $?gen368 ) ) ) ) ( positive-defeated $?gen366 & : ( not ( member$ pen16 $?gen366 ) ) ) ) ( test ( eq ( class ?gen364 ) min_imprisonment ) ) => ( calc ( bind $?gen369 ( create$ pen16-overruled $?gen367 $?gen368 ) ) ) ?gen364 <- ( min_imprisonment ( negative-overruled $?gen369 ) )"))

([pen16-support] of derived-attribute-rule
   (pos-name pen16-support-gen574)
   (depends-on declare domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen16] ) ) ) ?gen363 <- ( domestic_violence_basic ( defendant ?Defendant ) ) ?gen364 <- ( min_imprisonment ( value 180 ) ( positive-support $?gen366 & : ( not ( subseq-pos ( create$ pen16 ?gen363 $$$ $?gen366 ) ) ) ) ) ( test ( eq ( class ?gen364 ) min_imprisonment ) ) => ( calc ( bind $?gen369 ( create$ pen16 ?gen363 $?gen366 ) ) ) ?gen364 <- ( min_imprisonment ( positive-support $?gen369 ) )"))

([pen15-defeasibly-dot] of derived-attribute-rule
   (pos-name pen15-defeasibly-dot-gen576)
   (depends-on declare max_imprisonment child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen15] ) ) ) ?gen355 <- ( max_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen15 $? ) ) ( test ( eq ( class ?gen355 ) max_imprisonment ) ) ( not ( and ?gen362 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen357 & : ( not ( member$ pen15 $?gen357 ) ) ) ) ) ) => ?gen355 <- ( max_imprisonment ( positive 0 ) )"))

([pen15-defeasibly] of derived-attribute-rule
   (pos-name pen15-defeasibly-gen578)
   (depends-on declare child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen15] ) ) ) ?gen362 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( max_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen357 & : ( not ( member$ pen15 $?gen357 ) ) ) ) ( test ( eq ( class ?gen355 ) max_imprisonment ) ) => ?gen355 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen15 ?gen362 ) )"))

([pen15-overruled-dot] of derived-attribute-rule
   (pos-name pen15-overruled-dot-gen580)
   (depends-on declare max_imprisonment child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen15] ) ) ) ?gen355 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen358 ) ( negative-overruled $?gen359 & : ( subseq-pos ( create$ pen15-overruled $?gen358 $$$ $?gen359 ) ) ) ) ( test ( eq ( class ?gen355 ) max_imprisonment ) ) ( not ( and ?gen362 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( max_imprisonment ( positive-defeated $?gen357 & : ( not ( member$ pen15 $?gen357 ) ) ) ) ) ) => ( calc ( bind $?gen360 ( delete-member$ $?gen359 ( create$ pen15-overruled $?gen358 ) ) ) ) ?gen355 <- ( max_imprisonment ( negative-overruled $?gen360 ) )"))

([pen15-overruled] of derived-attribute-rule
   (pos-name pen15-overruled-gen582)
   (depends-on declare child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen15] ) ) ) ?gen362 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen358 ) ( negative-overruled $?gen359 & : ( not ( subseq-pos ( create$ pen15-overruled $?gen358 $$$ $?gen359 ) ) ) ) ( positive-defeated $?gen357 & : ( not ( member$ pen15 $?gen357 ) ) ) ) ( test ( eq ( class ?gen355 ) max_imprisonment ) ) => ( calc ( bind $?gen360 ( create$ pen15-overruled $?gen358 $?gen359 ) ) ) ?gen355 <- ( max_imprisonment ( negative-overruled $?gen360 ) )"))

([pen15-support] of derived-attribute-rule
   (pos-name pen15-support-gen584)
   (depends-on declare child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen15] ) ) ) ?gen354 <- ( child_abduction_aggravated ( defendant ?Defendant ) ) ?gen355 <- ( max_imprisonment ( value 1825 ) ( positive-support $?gen357 & : ( not ( subseq-pos ( create$ pen15 ?gen354 $$$ $?gen357 ) ) ) ) ) ( test ( eq ( class ?gen355 ) max_imprisonment ) ) => ( calc ( bind $?gen360 ( create$ pen15 ?gen354 $?gen357 ) ) ) ?gen355 <- ( max_imprisonment ( positive-support $?gen360 ) )"))

([pen14-defeasibly-dot] of derived-attribute-rule
   (pos-name pen14-defeasibly-dot-gen586)
   (depends-on declare min_imprisonment child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen14] ) ) ) ?gen346 <- ( min_imprisonment ( value 90 ) ( positive 1 ) ( positive-derivator pen14 $? ) ) ( test ( eq ( class ?gen346 ) min_imprisonment ) ) ( not ( and ?gen353 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen348 & : ( not ( member$ pen14 $?gen348 ) ) ) ) ) ) => ?gen346 <- ( min_imprisonment ( positive 0 ) )"))

([pen14-defeasibly] of derived-attribute-rule
   (pos-name pen14-defeasibly-gen588)
   (depends-on declare child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen14] ) ) ) ?gen353 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( min_imprisonment ( value 90 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen348 & : ( not ( member$ pen14 $?gen348 ) ) ) ) ( test ( eq ( class ?gen346 ) min_imprisonment ) ) => ?gen346 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen14 ?gen353 ) )"))

([pen14-overruled-dot] of derived-attribute-rule
   (pos-name pen14-overruled-dot-gen590)
   (depends-on declare min_imprisonment child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen14] ) ) ) ?gen346 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen349 ) ( negative-overruled $?gen350 & : ( subseq-pos ( create$ pen14-overruled $?gen349 $$$ $?gen350 ) ) ) ) ( test ( eq ( class ?gen346 ) min_imprisonment ) ) ( not ( and ?gen353 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( min_imprisonment ( positive-defeated $?gen348 & : ( not ( member$ pen14 $?gen348 ) ) ) ) ) ) => ( calc ( bind $?gen351 ( delete-member$ $?gen350 ( create$ pen14-overruled $?gen349 ) ) ) ) ?gen346 <- ( min_imprisonment ( negative-overruled $?gen351 ) )"))

([pen14-overruled] of derived-attribute-rule
   (pos-name pen14-overruled-gen592)
   (depends-on declare child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen14] ) ) ) ?gen353 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen349 ) ( negative-overruled $?gen350 & : ( not ( subseq-pos ( create$ pen14-overruled $?gen349 $$$ $?gen350 ) ) ) ) ( positive-defeated $?gen348 & : ( not ( member$ pen14 $?gen348 ) ) ) ) ( test ( eq ( class ?gen346 ) min_imprisonment ) ) => ( calc ( bind $?gen351 ( create$ pen14-overruled $?gen349 $?gen350 ) ) ) ?gen346 <- ( min_imprisonment ( negative-overruled $?gen351 ) )"))

([pen14-support] of derived-attribute-rule
   (pos-name pen14-support-gen594)
   (depends-on declare child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen14] ) ) ) ?gen345 <- ( child_abduction_aggravated ( defendant ?Defendant ) ) ?gen346 <- ( min_imprisonment ( value 90 ) ( positive-support $?gen348 & : ( not ( subseq-pos ( create$ pen14 ?gen345 $$$ $?gen348 ) ) ) ) ) ( test ( eq ( class ?gen346 ) min_imprisonment ) ) => ( calc ( bind $?gen351 ( create$ pen14 ?gen345 $?gen348 ) ) ) ?gen346 <- ( min_imprisonment ( positive-support $?gen351 ) )"))

([pen13-defeasibly-dot] of derived-attribute-rule
   (pos-name pen13-defeasibly-dot-gen596)
   (depends-on declare max_imprisonment preventing_child_contact max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen13] ) ) ) ?gen337 <- ( max_imprisonment ( value 365 ) ( positive 1 ) ( positive-derivator pen13 $? ) ) ( test ( eq ( class ?gen337 ) max_imprisonment ) ) ( not ( and ?gen344 <- ( preventing_child_contact ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen339 & : ( not ( member$ pen13 $?gen339 ) ) ) ) ) ) => ?gen337 <- ( max_imprisonment ( positive 0 ) )"))

([pen13-defeasibly] of derived-attribute-rule
   (pos-name pen13-defeasibly-gen598)
   (depends-on declare preventing_child_contact max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen13] ) ) ) ?gen344 <- ( preventing_child_contact ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( max_imprisonment ( value 365 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen339 & : ( not ( member$ pen13 $?gen339 ) ) ) ) ( test ( eq ( class ?gen337 ) max_imprisonment ) ) => ?gen337 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen13 ?gen344 ) )"))

([pen13-overruled-dot] of derived-attribute-rule
   (pos-name pen13-overruled-dot-gen600)
   (depends-on declare max_imprisonment preventing_child_contact max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen13] ) ) ) ?gen337 <- ( max_imprisonment ( value 365 ) ( negative-support $?gen340 ) ( negative-overruled $?gen341 & : ( subseq-pos ( create$ pen13-overruled $?gen340 $$$ $?gen341 ) ) ) ) ( test ( eq ( class ?gen337 ) max_imprisonment ) ) ( not ( and ?gen344 <- ( preventing_child_contact ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( max_imprisonment ( positive-defeated $?gen339 & : ( not ( member$ pen13 $?gen339 ) ) ) ) ) ) => ( calc ( bind $?gen342 ( delete-member$ $?gen341 ( create$ pen13-overruled $?gen340 ) ) ) ) ?gen337 <- ( max_imprisonment ( negative-overruled $?gen342 ) )"))

([pen13-overruled] of derived-attribute-rule
   (pos-name pen13-overruled-gen602)
   (depends-on declare preventing_child_contact max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen13] ) ) ) ?gen344 <- ( preventing_child_contact ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( max_imprisonment ( value 365 ) ( negative-support $?gen340 ) ( negative-overruled $?gen341 & : ( not ( subseq-pos ( create$ pen13-overruled $?gen340 $$$ $?gen341 ) ) ) ) ( positive-defeated $?gen339 & : ( not ( member$ pen13 $?gen339 ) ) ) ) ( test ( eq ( class ?gen337 ) max_imprisonment ) ) => ( calc ( bind $?gen342 ( create$ pen13-overruled $?gen340 $?gen341 ) ) ) ?gen337 <- ( max_imprisonment ( negative-overruled $?gen342 ) )"))

([pen13-support] of derived-attribute-rule
   (pos-name pen13-support-gen604)
   (depends-on declare preventing_child_contact max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen13] ) ) ) ?gen336 <- ( preventing_child_contact ( defendant ?Defendant ) ) ?gen337 <- ( max_imprisonment ( value 365 ) ( positive-support $?gen339 & : ( not ( subseq-pos ( create$ pen13 ?gen336 $$$ $?gen339 ) ) ) ) ) ( test ( eq ( class ?gen337 ) max_imprisonment ) ) => ( calc ( bind $?gen342 ( create$ pen13 ?gen336 $?gen339 ) ) ) ?gen337 <- ( max_imprisonment ( positive-support $?gen342 ) )"))

([pen12-defeasibly-dot] of derived-attribute-rule
   (pos-name pen12-defeasibly-dot-gen606)
   (depends-on declare max_imprisonment child_abduction_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen12] ) ) ) ?gen328 <- ( max_imprisonment ( value 730 ) ( positive 1 ) ( positive-derivator pen12 $? ) ) ( test ( eq ( class ?gen328 ) max_imprisonment ) ) ( not ( and ?gen335 <- ( child_abduction_basic ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen330 & : ( not ( member$ pen12 $?gen330 ) ) ) ) ) ) => ?gen328 <- ( max_imprisonment ( positive 0 ) )"))

([pen12-defeasibly] of derived-attribute-rule
   (pos-name pen12-defeasibly-gen608)
   (depends-on declare child_abduction_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen12] ) ) ) ?gen335 <- ( child_abduction_basic ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( max_imprisonment ( value 730 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen330 & : ( not ( member$ pen12 $?gen330 ) ) ) ) ( test ( eq ( class ?gen328 ) max_imprisonment ) ) => ?gen328 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen12 ?gen335 ) )"))

([pen12-overruled-dot] of derived-attribute-rule
   (pos-name pen12-overruled-dot-gen610)
   (depends-on declare max_imprisonment child_abduction_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen12] ) ) ) ?gen328 <- ( max_imprisonment ( value 730 ) ( negative-support $?gen331 ) ( negative-overruled $?gen332 & : ( subseq-pos ( create$ pen12-overruled $?gen331 $$$ $?gen332 ) ) ) ) ( test ( eq ( class ?gen328 ) max_imprisonment ) ) ( not ( and ?gen335 <- ( child_abduction_basic ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( max_imprisonment ( positive-defeated $?gen330 & : ( not ( member$ pen12 $?gen330 ) ) ) ) ) ) => ( calc ( bind $?gen333 ( delete-member$ $?gen332 ( create$ pen12-overruled $?gen331 ) ) ) ) ?gen328 <- ( max_imprisonment ( negative-overruled $?gen333 ) )"))

([pen12-overruled] of derived-attribute-rule
   (pos-name pen12-overruled-gen612)
   (depends-on declare child_abduction_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen12] ) ) ) ?gen335 <- ( child_abduction_basic ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( max_imprisonment ( value 730 ) ( negative-support $?gen331 ) ( negative-overruled $?gen332 & : ( not ( subseq-pos ( create$ pen12-overruled $?gen331 $$$ $?gen332 ) ) ) ) ( positive-defeated $?gen330 & : ( not ( member$ pen12 $?gen330 ) ) ) ) ( test ( eq ( class ?gen328 ) max_imprisonment ) ) => ( calc ( bind $?gen333 ( create$ pen12-overruled $?gen331 $?gen332 ) ) ) ?gen328 <- ( max_imprisonment ( negative-overruled $?gen333 ) )"))

([pen12-support] of derived-attribute-rule
   (pos-name pen12-support-gen614)
   (depends-on declare child_abduction_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen12] ) ) ) ?gen327 <- ( child_abduction_basic ( defendant ?Defendant ) ) ?gen328 <- ( max_imprisonment ( value 730 ) ( positive-support $?gen330 & : ( not ( subseq-pos ( create$ pen12 ?gen327 $$$ $?gen330 ) ) ) ) ) ( test ( eq ( class ?gen328 ) max_imprisonment ) ) => ( calc ( bind $?gen333 ( create$ pen12 ?gen327 $?gen330 ) ) ) ?gen328 <- ( max_imprisonment ( positive-support $?gen333 ) )"))

([pen11-defeasibly-dot] of derived-attribute-rule
   (pos-name pen11-defeasibly-dot-gen616)
   (depends-on declare max_imprisonment enabling_minor_extramarital_union_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen11] ) ) ) ?gen319 <- ( max_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen11 $? ) ) ( test ( eq ( class ?gen319 ) max_imprisonment ) ) ( not ( and ?gen326 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen321 & : ( not ( member$ pen11 $?gen321 ) ) ) ) ) ) => ?gen319 <- ( max_imprisonment ( positive 0 ) )"))

([pen11-defeasibly] of derived-attribute-rule
   (pos-name pen11-defeasibly-gen618)
   (depends-on declare enabling_minor_extramarital_union_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen11] ) ) ) ?gen326 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( max_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen321 & : ( not ( member$ pen11 $?gen321 ) ) ) ) ( test ( eq ( class ?gen319 ) max_imprisonment ) ) => ?gen319 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen11 ?gen326 ) )"))

([pen11-overruled-dot] of derived-attribute-rule
   (pos-name pen11-overruled-dot-gen620)
   (depends-on declare max_imprisonment enabling_minor_extramarital_union_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen11] ) ) ) ?gen319 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen322 ) ( negative-overruled $?gen323 & : ( subseq-pos ( create$ pen11-overruled $?gen322 $$$ $?gen323 ) ) ) ) ( test ( eq ( class ?gen319 ) max_imprisonment ) ) ( not ( and ?gen326 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( max_imprisonment ( positive-defeated $?gen321 & : ( not ( member$ pen11 $?gen321 ) ) ) ) ) ) => ( calc ( bind $?gen324 ( delete-member$ $?gen323 ( create$ pen11-overruled $?gen322 ) ) ) ) ?gen319 <- ( max_imprisonment ( negative-overruled $?gen324 ) )"))

([pen11-overruled] of derived-attribute-rule
   (pos-name pen11-overruled-gen622)
   (depends-on declare enabling_minor_extramarital_union_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen11] ) ) ) ?gen326 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen322 ) ( negative-overruled $?gen323 & : ( not ( subseq-pos ( create$ pen11-overruled $?gen322 $$$ $?gen323 ) ) ) ) ( positive-defeated $?gen321 & : ( not ( member$ pen11 $?gen321 ) ) ) ) ( test ( eq ( class ?gen319 ) max_imprisonment ) ) => ( calc ( bind $?gen324 ( create$ pen11-overruled $?gen322 $?gen323 ) ) ) ?gen319 <- ( max_imprisonment ( negative-overruled $?gen324 ) )"))

([pen11-support] of derived-attribute-rule
   (pos-name pen11-support-gen624)
   (depends-on declare enabling_minor_extramarital_union_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen11] ) ) ) ?gen318 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ) ?gen319 <- ( max_imprisonment ( value 1825 ) ( positive-support $?gen321 & : ( not ( subseq-pos ( create$ pen11 ?gen318 $$$ $?gen321 ) ) ) ) ) ( test ( eq ( class ?gen319 ) max_imprisonment ) ) => ( calc ( bind $?gen324 ( create$ pen11 ?gen318 $?gen321 ) ) ) ?gen319 <- ( max_imprisonment ( positive-support $?gen324 ) )"))

([pen10-defeasibly-dot] of derived-attribute-rule
   (pos-name pen10-defeasibly-dot-gen626)
   (depends-on declare min_imprisonment enabling_minor_extramarital_union_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen10] ) ) ) ?gen310 <- ( min_imprisonment ( value 180 ) ( positive 1 ) ( positive-derivator pen10 $? ) ) ( test ( eq ( class ?gen310 ) min_imprisonment ) ) ( not ( and ?gen317 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen312 & : ( not ( member$ pen10 $?gen312 ) ) ) ) ) ) => ?gen310 <- ( min_imprisonment ( positive 0 ) )"))

([pen10-defeasibly] of derived-attribute-rule
   (pos-name pen10-defeasibly-gen628)
   (depends-on declare enabling_minor_extramarital_union_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen10] ) ) ) ?gen317 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( min_imprisonment ( value 180 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen312 & : ( not ( member$ pen10 $?gen312 ) ) ) ) ( test ( eq ( class ?gen310 ) min_imprisonment ) ) => ?gen310 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen10 ?gen317 ) )"))

([pen10-overruled-dot] of derived-attribute-rule
   (pos-name pen10-overruled-dot-gen630)
   (depends-on declare min_imprisonment enabling_minor_extramarital_union_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen10] ) ) ) ?gen310 <- ( min_imprisonment ( value 180 ) ( negative-support $?gen313 ) ( negative-overruled $?gen314 & : ( subseq-pos ( create$ pen10-overruled $?gen313 $$$ $?gen314 ) ) ) ) ( test ( eq ( class ?gen310 ) min_imprisonment ) ) ( not ( and ?gen317 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( min_imprisonment ( positive-defeated $?gen312 & : ( not ( member$ pen10 $?gen312 ) ) ) ) ) ) => ( calc ( bind $?gen315 ( delete-member$ $?gen314 ( create$ pen10-overruled $?gen313 ) ) ) ) ?gen310 <- ( min_imprisonment ( negative-overruled $?gen315 ) )"))

([pen10-overruled] of derived-attribute-rule
   (pos-name pen10-overruled-gen632)
   (depends-on declare enabling_minor_extramarital_union_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen10] ) ) ) ?gen317 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( min_imprisonment ( value 180 ) ( negative-support $?gen313 ) ( negative-overruled $?gen314 & : ( not ( subseq-pos ( create$ pen10-overruled $?gen313 $$$ $?gen314 ) ) ) ) ( positive-defeated $?gen312 & : ( not ( member$ pen10 $?gen312 ) ) ) ) ( test ( eq ( class ?gen310 ) min_imprisonment ) ) => ( calc ( bind $?gen315 ( create$ pen10-overruled $?gen313 $?gen314 ) ) ) ?gen310 <- ( min_imprisonment ( negative-overruled $?gen315 ) )"))

([pen10-support] of derived-attribute-rule
   (pos-name pen10-support-gen634)
   (depends-on declare enabling_minor_extramarital_union_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen10] ) ) ) ?gen309 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ) ?gen310 <- ( min_imprisonment ( value 180 ) ( positive-support $?gen312 & : ( not ( subseq-pos ( create$ pen10 ?gen309 $$$ $?gen312 ) ) ) ) ) ( test ( eq ( class ?gen310 ) min_imprisonment ) ) => ( calc ( bind $?gen315 ( create$ pen10 ?gen309 $?gen312 ) ) ) ?gen310 <- ( min_imprisonment ( positive-support $?gen315 ) )"))

([pen9_ps7-defeasibly-dot] of derived-attribute-rule
   (pos-name pen9_ps7-defeasibly-dot-gen636)
   (depends-on declare max_imprisonment enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen9_ps7] ) ) ) ?gen301 <- ( max_imprisonment ( value 1095 ) ( positive 1 ) ( positive-derivator pen9_ps7 $? ) ) ( test ( eq ( class ?gen301 ) max_imprisonment ) ) ( not ( and ?gen308 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen303 & : ( not ( member$ pen9_ps7 $?gen303 ) ) ) ) ) ) => ?gen301 <- ( max_imprisonment ( positive 0 ) )"))

([pen9_ps7-defeasibly] of derived-attribute-rule
   (pos-name pen9_ps7-defeasibly-gen638)
   (depends-on declare enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen9_ps7] ) ) ) ?gen308 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( max_imprisonment ( value 1095 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen303 & : ( not ( member$ pen9_ps7 $?gen303 ) ) ) ) ( test ( eq ( class ?gen301 ) max_imprisonment ) ) => ?gen301 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen9_ps7 ?gen308 ) )"))

([pen9_ps7-overruled-dot] of derived-attribute-rule
   (pos-name pen9_ps7-overruled-dot-gen640)
   (depends-on declare max_imprisonment enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen9_ps7] ) ) ) ?gen301 <- ( max_imprisonment ( value 1095 ) ( negative-support $?gen304 ) ( negative-overruled $?gen305 & : ( subseq-pos ( create$ pen9_ps7-overruled $?gen304 $$$ $?gen305 ) ) ) ) ( test ( eq ( class ?gen301 ) max_imprisonment ) ) ( not ( and ?gen308 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( max_imprisonment ( positive-defeated $?gen303 & : ( not ( member$ pen9_ps7 $?gen303 ) ) ) ) ) ) => ( calc ( bind $?gen306 ( delete-member$ $?gen305 ( create$ pen9_ps7-overruled $?gen304 ) ) ) ) ?gen301 <- ( max_imprisonment ( negative-overruled $?gen306 ) )"))

([pen9_ps7-overruled] of derived-attribute-rule
   (pos-name pen9_ps7-overruled-gen642)
   (depends-on declare enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen9_ps7] ) ) ) ?gen308 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( max_imprisonment ( value 1095 ) ( negative-support $?gen304 ) ( negative-overruled $?gen305 & : ( not ( subseq-pos ( create$ pen9_ps7-overruled $?gen304 $$$ $?gen305 ) ) ) ) ( positive-defeated $?gen303 & : ( not ( member$ pen9_ps7 $?gen303 ) ) ) ) ( test ( eq ( class ?gen301 ) max_imprisonment ) ) => ( calc ( bind $?gen306 ( create$ pen9_ps7-overruled $?gen304 $?gen305 ) ) ) ?gen301 <- ( max_imprisonment ( negative-overruled $?gen306 ) )"))

([pen9_ps7-support] of derived-attribute-rule
   (pos-name pen9_ps7-support-gen644)
   (depends-on declare enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen9_ps7] ) ) ) ?gen300 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ) ?gen301 <- ( max_imprisonment ( value 1095 ) ( positive-support $?gen303 & : ( not ( subseq-pos ( create$ pen9_ps7 ?gen300 $$$ $?gen303 ) ) ) ) ) ( test ( eq ( class ?gen301 ) max_imprisonment ) ) => ( calc ( bind $?gen306 ( create$ pen9_ps7 ?gen300 $?gen303 ) ) ) ?gen301 <- ( max_imprisonment ( positive-support $?gen306 ) )"))

([pen8_ps7-defeasibly-dot] of derived-attribute-rule
   (pos-name pen8_ps7-defeasibly-dot-gen646)
   (depends-on declare min_imprisonment enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen8_ps7] ) ) ) ?gen292 <- ( min_imprisonment ( value 90 ) ( positive 1 ) ( positive-derivator pen8_ps7 $? ) ) ( test ( eq ( class ?gen292 ) min_imprisonment ) ) ( not ( and ?gen299 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen294 & : ( not ( member$ pen8_ps7 $?gen294 ) ) ) ) ) ) => ?gen292 <- ( min_imprisonment ( positive 0 ) )"))

([pen8_ps7-defeasibly] of derived-attribute-rule
   (pos-name pen8_ps7-defeasibly-gen648)
   (depends-on declare enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen8_ps7] ) ) ) ?gen299 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( min_imprisonment ( value 90 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen294 & : ( not ( member$ pen8_ps7 $?gen294 ) ) ) ) ( test ( eq ( class ?gen292 ) min_imprisonment ) ) => ?gen292 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen8_ps7 ?gen299 ) )"))

([pen8_ps7-overruled-dot] of derived-attribute-rule
   (pos-name pen8_ps7-overruled-dot-gen650)
   (depends-on declare min_imprisonment enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen8_ps7] ) ) ) ?gen292 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen295 ) ( negative-overruled $?gen296 & : ( subseq-pos ( create$ pen8_ps7-overruled $?gen295 $$$ $?gen296 ) ) ) ) ( test ( eq ( class ?gen292 ) min_imprisonment ) ) ( not ( and ?gen299 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( min_imprisonment ( positive-defeated $?gen294 & : ( not ( member$ pen8_ps7 $?gen294 ) ) ) ) ) ) => ( calc ( bind $?gen297 ( delete-member$ $?gen296 ( create$ pen8_ps7-overruled $?gen295 ) ) ) ) ?gen292 <- ( min_imprisonment ( negative-overruled $?gen297 ) )"))

([pen8_ps7-overruled] of derived-attribute-rule
   (pos-name pen8_ps7-overruled-gen652)
   (depends-on declare enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen8_ps7] ) ) ) ?gen299 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen295 ) ( negative-overruled $?gen296 & : ( not ( subseq-pos ( create$ pen8_ps7-overruled $?gen295 $$$ $?gen296 ) ) ) ) ( positive-defeated $?gen294 & : ( not ( member$ pen8_ps7 $?gen294 ) ) ) ) ( test ( eq ( class ?gen292 ) min_imprisonment ) ) => ( calc ( bind $?gen297 ( create$ pen8_ps7-overruled $?gen295 $?gen296 ) ) ) ?gen292 <- ( min_imprisonment ( negative-overruled $?gen297 ) )"))

([pen8_ps7-support] of derived-attribute-rule
   (pos-name pen8_ps7-support-gen654)
   (depends-on declare enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen8_ps7] ) ) ) ?gen291 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ) ?gen292 <- ( min_imprisonment ( value 90 ) ( positive-support $?gen294 & : ( not ( subseq-pos ( create$ pen8_ps7 ?gen291 $$$ $?gen294 ) ) ) ) ) ( test ( eq ( class ?gen292 ) min_imprisonment ) ) => ( calc ( bind $?gen297 ( create$ pen8_ps7 ?gen291 $?gen294 ) ) ) ?gen292 <- ( min_imprisonment ( positive-support $?gen297 ) )"))

([pen9_ps6-defeasibly-dot] of derived-attribute-rule
   (pos-name pen9_ps6-defeasibly-dot-gen656)
   (depends-on declare max_imprisonment extramarital_union_with_minor_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen9_ps6] ) ) ) ?gen283 <- ( max_imprisonment ( value 1095 ) ( positive 1 ) ( positive-derivator pen9_ps6 $? ) ) ( test ( eq ( class ?gen283 ) max_imprisonment ) ) ( not ( and ?gen290 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen285 & : ( not ( member$ pen9_ps6 $?gen285 ) ) ) ) ) ) => ?gen283 <- ( max_imprisonment ( positive 0 ) )"))

([pen9_ps6-defeasibly] of derived-attribute-rule
   (pos-name pen9_ps6-defeasibly-gen658)
   (depends-on declare extramarital_union_with_minor_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen9_ps6] ) ) ) ?gen290 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( max_imprisonment ( value 1095 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen285 & : ( not ( member$ pen9_ps6 $?gen285 ) ) ) ) ( test ( eq ( class ?gen283 ) max_imprisonment ) ) => ?gen283 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen9_ps6 ?gen290 ) )"))

([pen9_ps6-overruled-dot] of derived-attribute-rule
   (pos-name pen9_ps6-overruled-dot-gen660)
   (depends-on declare max_imprisonment extramarital_union_with_minor_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen9_ps6] ) ) ) ?gen283 <- ( max_imprisonment ( value 1095 ) ( negative-support $?gen286 ) ( negative-overruled $?gen287 & : ( subseq-pos ( create$ pen9_ps6-overruled $?gen286 $$$ $?gen287 ) ) ) ) ( test ( eq ( class ?gen283 ) max_imprisonment ) ) ( not ( and ?gen290 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( max_imprisonment ( positive-defeated $?gen285 & : ( not ( member$ pen9_ps6 $?gen285 ) ) ) ) ) ) => ( calc ( bind $?gen288 ( delete-member$ $?gen287 ( create$ pen9_ps6-overruled $?gen286 ) ) ) ) ?gen283 <- ( max_imprisonment ( negative-overruled $?gen288 ) )"))

([pen9_ps6-overruled] of derived-attribute-rule
   (pos-name pen9_ps6-overruled-gen662)
   (depends-on declare extramarital_union_with_minor_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen9_ps6] ) ) ) ?gen290 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( max_imprisonment ( value 1095 ) ( negative-support $?gen286 ) ( negative-overruled $?gen287 & : ( not ( subseq-pos ( create$ pen9_ps6-overruled $?gen286 $$$ $?gen287 ) ) ) ) ( positive-defeated $?gen285 & : ( not ( member$ pen9_ps6 $?gen285 ) ) ) ) ( test ( eq ( class ?gen283 ) max_imprisonment ) ) => ( calc ( bind $?gen288 ( create$ pen9_ps6-overruled $?gen286 $?gen287 ) ) ) ?gen283 <- ( max_imprisonment ( negative-overruled $?gen288 ) )"))

([pen9_ps6-support] of derived-attribute-rule
   (pos-name pen9_ps6-support-gen664)
   (depends-on declare extramarital_union_with_minor_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen9_ps6] ) ) ) ?gen282 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ) ?gen283 <- ( max_imprisonment ( value 1095 ) ( positive-support $?gen285 & : ( not ( subseq-pos ( create$ pen9_ps6 ?gen282 $$$ $?gen285 ) ) ) ) ) ( test ( eq ( class ?gen283 ) max_imprisonment ) ) => ( calc ( bind $?gen288 ( create$ pen9_ps6 ?gen282 $?gen285 ) ) ) ?gen283 <- ( max_imprisonment ( positive-support $?gen288 ) )"))

([pen8_ps6-defeasibly-dot] of derived-attribute-rule
   (pos-name pen8_ps6-defeasibly-dot-gen666)
   (depends-on declare min_imprisonment extramarital_union_with_minor_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen8_ps6] ) ) ) ?gen274 <- ( min_imprisonment ( value 90 ) ( positive 1 ) ( positive-derivator pen8_ps6 $? ) ) ( test ( eq ( class ?gen274 ) min_imprisonment ) ) ( not ( and ?gen281 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen276 & : ( not ( member$ pen8_ps6 $?gen276 ) ) ) ) ) ) => ?gen274 <- ( min_imprisonment ( positive 0 ) )"))

([pen8_ps6-defeasibly] of derived-attribute-rule
   (pos-name pen8_ps6-defeasibly-gen668)
   (depends-on declare extramarital_union_with_minor_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen8_ps6] ) ) ) ?gen281 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( min_imprisonment ( value 90 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen276 & : ( not ( member$ pen8_ps6 $?gen276 ) ) ) ) ( test ( eq ( class ?gen274 ) min_imprisonment ) ) => ?gen274 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen8_ps6 ?gen281 ) )"))

([pen8_ps6-overruled-dot] of derived-attribute-rule
   (pos-name pen8_ps6-overruled-dot-gen670)
   (depends-on declare min_imprisonment extramarital_union_with_minor_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen8_ps6] ) ) ) ?gen274 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen277 ) ( negative-overruled $?gen278 & : ( subseq-pos ( create$ pen8_ps6-overruled $?gen277 $$$ $?gen278 ) ) ) ) ( test ( eq ( class ?gen274 ) min_imprisonment ) ) ( not ( and ?gen281 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( min_imprisonment ( positive-defeated $?gen276 & : ( not ( member$ pen8_ps6 $?gen276 ) ) ) ) ) ) => ( calc ( bind $?gen279 ( delete-member$ $?gen278 ( create$ pen8_ps6-overruled $?gen277 ) ) ) ) ?gen274 <- ( min_imprisonment ( negative-overruled $?gen279 ) )"))

([pen8_ps6-overruled] of derived-attribute-rule
   (pos-name pen8_ps6-overruled-gen672)
   (depends-on declare extramarital_union_with_minor_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen8_ps6] ) ) ) ?gen281 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen277 ) ( negative-overruled $?gen278 & : ( not ( subseq-pos ( create$ pen8_ps6-overruled $?gen277 $$$ $?gen278 ) ) ) ) ( positive-defeated $?gen276 & : ( not ( member$ pen8_ps6 $?gen276 ) ) ) ) ( test ( eq ( class ?gen274 ) min_imprisonment ) ) => ( calc ( bind $?gen279 ( create$ pen8_ps6-overruled $?gen277 $?gen278 ) ) ) ?gen274 <- ( min_imprisonment ( negative-overruled $?gen279 ) )"))

([pen8_ps6-support] of derived-attribute-rule
   (pos-name pen8_ps6-support-gen674)
   (depends-on declare extramarital_union_with_minor_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen8_ps6] ) ) ) ?gen273 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ) ?gen274 <- ( min_imprisonment ( value 90 ) ( positive-support $?gen276 & : ( not ( subseq-pos ( create$ pen8_ps6 ?gen273 $$$ $?gen276 ) ) ) ) ) ( test ( eq ( class ?gen274 ) min_imprisonment ) ) => ( calc ( bind $?gen279 ( create$ pen8_ps6 ?gen273 $?gen276 ) ) ) ?gen274 <- ( min_imprisonment ( positive-support $?gen279 ) )"))

([pen7-defeasibly-dot] of derived-attribute-rule
   (pos-name pen7-defeasibly-dot-gen676)
   (depends-on declare max_imprisonment family_obligation_violation_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen7] ) ) ) ?gen265 <- ( max_imprisonment ( value 2920 ) ( positive 1 ) ( positive-derivator pen7 $? ) ) ( test ( eq ( class ?gen265 ) max_imprisonment ) ) ( not ( and ?gen272 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen267 & : ( not ( member$ pen7 $?gen267 ) ) ) ) ) ) => ?gen265 <- ( max_imprisonment ( positive 0 ) )"))

([pen7-defeasibly] of derived-attribute-rule
   (pos-name pen7-defeasibly-gen678)
   (depends-on declare family_obligation_violation_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen7] ) ) ) ?gen272 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( max_imprisonment ( value 2920 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen267 & : ( not ( member$ pen7 $?gen267 ) ) ) ) ( test ( eq ( class ?gen265 ) max_imprisonment ) ) => ?gen265 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen7 ?gen272 ) )"))

([pen7-overruled-dot] of derived-attribute-rule
   (pos-name pen7-overruled-dot-gen680)
   (depends-on declare max_imprisonment family_obligation_violation_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen7] ) ) ) ?gen265 <- ( max_imprisonment ( value 2920 ) ( negative-support $?gen268 ) ( negative-overruled $?gen269 & : ( subseq-pos ( create$ pen7-overruled $?gen268 $$$ $?gen269 ) ) ) ) ( test ( eq ( class ?gen265 ) max_imprisonment ) ) ( not ( and ?gen272 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( max_imprisonment ( positive-defeated $?gen267 & : ( not ( member$ pen7 $?gen267 ) ) ) ) ) ) => ( calc ( bind $?gen270 ( delete-member$ $?gen269 ( create$ pen7-overruled $?gen268 ) ) ) ) ?gen265 <- ( max_imprisonment ( negative-overruled $?gen270 ) )"))

([pen7-overruled] of derived-attribute-rule
   (pos-name pen7-overruled-gen682)
   (depends-on declare family_obligation_violation_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen7] ) ) ) ?gen272 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( max_imprisonment ( value 2920 ) ( negative-support $?gen268 ) ( negative-overruled $?gen269 & : ( not ( subseq-pos ( create$ pen7-overruled $?gen268 $$$ $?gen269 ) ) ) ) ( positive-defeated $?gen267 & : ( not ( member$ pen7 $?gen267 ) ) ) ) ( test ( eq ( class ?gen265 ) max_imprisonment ) ) => ( calc ( bind $?gen270 ( create$ pen7-overruled $?gen268 $?gen269 ) ) ) ?gen265 <- ( max_imprisonment ( negative-overruled $?gen270 ) )"))

([pen7-support] of derived-attribute-rule
   (pos-name pen7-support-gen684)
   (depends-on declare family_obligation_violation_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen7] ) ) ) ?gen264 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ) ?gen265 <- ( max_imprisonment ( value 2920 ) ( positive-support $?gen267 & : ( not ( subseq-pos ( create$ pen7 ?gen264 $$$ $?gen267 ) ) ) ) ) ( test ( eq ( class ?gen265 ) max_imprisonment ) ) => ( calc ( bind $?gen270 ( create$ pen7 ?gen264 $?gen267 ) ) ) ?gen265 <- ( max_imprisonment ( positive-support $?gen270 ) )"))

([pen6-defeasibly-dot] of derived-attribute-rule
   (pos-name pen6-defeasibly-dot-gen686)
   (depends-on declare min_imprisonment family_obligation_violation_aggravated_health min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen6] ) ) ) ?gen256 <- ( min_imprisonment ( value 365 ) ( positive 1 ) ( positive-derivator pen6 $? ) ) ( test ( eq ( class ?gen256 ) min_imprisonment ) ) ( not ( and ?gen263 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen258 & : ( not ( member$ pen6 $?gen258 ) ) ) ) ) ) => ?gen256 <- ( min_imprisonment ( positive 0 ) )"))

([pen6-defeasibly] of derived-attribute-rule
   (pos-name pen6-defeasibly-gen688)
   (depends-on declare family_obligation_violation_aggravated_health min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen6] ) ) ) ?gen263 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( min_imprisonment ( value 365 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen258 & : ( not ( member$ pen6 $?gen258 ) ) ) ) ( test ( eq ( class ?gen256 ) min_imprisonment ) ) => ?gen256 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen6 ?gen263 ) )"))

([pen6-overruled-dot] of derived-attribute-rule
   (pos-name pen6-overruled-dot-gen690)
   (depends-on declare min_imprisonment family_obligation_violation_aggravated_health min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen6] ) ) ) ?gen256 <- ( min_imprisonment ( value 365 ) ( negative-support $?gen259 ) ( negative-overruled $?gen260 & : ( subseq-pos ( create$ pen6-overruled $?gen259 $$$ $?gen260 ) ) ) ) ( test ( eq ( class ?gen256 ) min_imprisonment ) ) ( not ( and ?gen263 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( min_imprisonment ( positive-defeated $?gen258 & : ( not ( member$ pen6 $?gen258 ) ) ) ) ) ) => ( calc ( bind $?gen261 ( delete-member$ $?gen260 ( create$ pen6-overruled $?gen259 ) ) ) ) ?gen256 <- ( min_imprisonment ( negative-overruled $?gen261 ) )"))

([pen6-overruled] of derived-attribute-rule
   (pos-name pen6-overruled-gen692)
   (depends-on declare family_obligation_violation_aggravated_health min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen6] ) ) ) ?gen263 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen256 <- ( min_imprisonment ( value 365 ) ( negative-support $?gen259 ) ( negative-overruled $?gen260 & : ( not ( subseq-pos ( create$ pen6-overruled $?gen259 $$$ $?gen260 ) ) ) ) ( positive-defeated $?gen258 & : ( not ( member$ pen6 $?gen258 ) ) ) ) ( test ( eq ( class ?gen256 ) min_imprisonment ) ) => ( calc ( bind $?gen261 ( create$ pen6-overruled $?gen259 $?gen260 ) ) ) ?gen256 <- ( min_imprisonment ( negative-overruled $?gen261 ) )"))

([pen6-support] of derived-attribute-rule
   (pos-name pen6-support-gen694)
   (depends-on declare family_obligation_violation_aggravated_health min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen6] ) ) ) ?gen255 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ) ?gen256 <- ( min_imprisonment ( value 365 ) ( positive-support $?gen258 & : ( not ( subseq-pos ( create$ pen6 ?gen255 $$$ $?gen258 ) ) ) ) ) ( test ( eq ( class ?gen256 ) min_imprisonment ) ) => ( calc ( bind $?gen261 ( create$ pen6 ?gen255 $?gen258 ) ) ) ?gen256 <- ( min_imprisonment ( positive-support $?gen261 ) )"))

([pen5-defeasibly-dot] of derived-attribute-rule
   (pos-name pen5-defeasibly-dot-gen696)
   (depends-on declare max_imprisonment family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen5] ) ) ) ?gen247 <- ( max_imprisonment ( value 1095 ) ( positive 1 ) ( positive-derivator pen5 $? ) ) ( test ( eq ( class ?gen247 ) max_imprisonment ) ) ( not ( and ?gen254 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ pen5 $?gen249 ) ) ) ) ) ) => ?gen247 <- ( max_imprisonment ( positive 0 ) )"))

([pen5-defeasibly] of derived-attribute-rule
   (pos-name pen5-defeasibly-gen698)
   (depends-on declare family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen5] ) ) ) ?gen254 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( max_imprisonment ( value 1095 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen249 & : ( not ( member$ pen5 $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) max_imprisonment ) ) => ?gen247 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen5 ?gen254 ) )"))

([pen5-overruled-dot] of derived-attribute-rule
   (pos-name pen5-overruled-dot-gen700)
   (depends-on declare max_imprisonment family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen5] ) ) ) ?gen247 <- ( max_imprisonment ( value 1095 ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( subseq-pos ( create$ pen5-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( test ( eq ( class ?gen247 ) max_imprisonment ) ) ( not ( and ?gen254 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( max_imprisonment ( positive-defeated $?gen249 & : ( not ( member$ pen5 $?gen249 ) ) ) ) ) ) => ( calc ( bind $?gen252 ( delete-member$ $?gen251 ( create$ pen5-overruled $?gen250 ) ) ) ) ?gen247 <- ( max_imprisonment ( negative-overruled $?gen252 ) )"))

([pen5-overruled] of derived-attribute-rule
   (pos-name pen5-overruled-gen702)
   (depends-on declare family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen5] ) ) ) ?gen254 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen253 & : ( >= ?gen253 1 ) ) ) ?gen247 <- ( max_imprisonment ( value 1095 ) ( negative-support $?gen250 ) ( negative-overruled $?gen251 & : ( not ( subseq-pos ( create$ pen5-overruled $?gen250 $$$ $?gen251 ) ) ) ) ( positive-defeated $?gen249 & : ( not ( member$ pen5 $?gen249 ) ) ) ) ( test ( eq ( class ?gen247 ) max_imprisonment ) ) => ( calc ( bind $?gen252 ( create$ pen5-overruled $?gen250 $?gen251 ) ) ) ?gen247 <- ( max_imprisonment ( negative-overruled $?gen252 ) )"))

([pen5-support] of derived-attribute-rule
   (pos-name pen5-support-gen704)
   (depends-on declare family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen5] ) ) ) ?gen246 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ) ?gen247 <- ( max_imprisonment ( value 1095 ) ( positive-support $?gen249 & : ( not ( subseq-pos ( create$ pen5 ?gen246 $$$ $?gen249 ) ) ) ) ) ( test ( eq ( class ?gen247 ) max_imprisonment ) ) => ( calc ( bind $?gen252 ( create$ pen5 ?gen246 $?gen249 ) ) ) ?gen247 <- ( max_imprisonment ( positive-support $?gen252 ) )"))

([pen4-defeasibly-dot] of derived-attribute-rule
   (pos-name pen4-defeasibly-dot-gen706)
   (depends-on declare min_imprisonment family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen4] ) ) ) ?gen238 <- ( min_imprisonment ( value 90 ) ( positive 1 ) ( positive-derivator pen4 $? ) ) ( test ( eq ( class ?gen238 ) min_imprisonment ) ) ( not ( and ?gen245 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ pen4 $?gen240 ) ) ) ) ) ) => ?gen238 <- ( min_imprisonment ( positive 0 ) )"))

([pen4-defeasibly] of derived-attribute-rule
   (pos-name pen4-defeasibly-gen708)
   (depends-on declare family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen4] ) ) ) ?gen245 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( min_imprisonment ( value 90 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen240 & : ( not ( member$ pen4 $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) min_imprisonment ) ) => ?gen238 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen4 ?gen245 ) )"))

([pen4-overruled-dot] of derived-attribute-rule
   (pos-name pen4-overruled-dot-gen710)
   (depends-on declare min_imprisonment family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen4] ) ) ) ?gen238 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( subseq-pos ( create$ pen4-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( test ( eq ( class ?gen238 ) min_imprisonment ) ) ( not ( and ?gen245 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( min_imprisonment ( positive-defeated $?gen240 & : ( not ( member$ pen4 $?gen240 ) ) ) ) ) ) => ( calc ( bind $?gen243 ( delete-member$ $?gen242 ( create$ pen4-overruled $?gen241 ) ) ) ) ?gen238 <- ( min_imprisonment ( negative-overruled $?gen243 ) )"))

([pen4-overruled] of derived-attribute-rule
   (pos-name pen4-overruled-gen712)
   (depends-on declare family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen4] ) ) ) ?gen245 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive ?gen244 & : ( >= ?gen244 1 ) ) ) ?gen238 <- ( min_imprisonment ( value 90 ) ( negative-support $?gen241 ) ( negative-overruled $?gen242 & : ( not ( subseq-pos ( create$ pen4-overruled $?gen241 $$$ $?gen242 ) ) ) ) ( positive-defeated $?gen240 & : ( not ( member$ pen4 $?gen240 ) ) ) ) ( test ( eq ( class ?gen238 ) min_imprisonment ) ) => ( calc ( bind $?gen243 ( create$ pen4-overruled $?gen241 $?gen242 ) ) ) ?gen238 <- ( min_imprisonment ( negative-overruled $?gen243 ) )"))

([pen4-support] of derived-attribute-rule
   (pos-name pen4-support-gen714)
   (depends-on declare family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen4] ) ) ) ?gen237 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ) ?gen238 <- ( min_imprisonment ( value 90 ) ( positive-support $?gen240 & : ( not ( subseq-pos ( create$ pen4 ?gen237 $$$ $?gen240 ) ) ) ) ) ( test ( eq ( class ?gen238 ) min_imprisonment ) ) => ( calc ( bind $?gen243 ( create$ pen4 ?gen237 $?gen240 ) ) ) ?gen238 <- ( min_imprisonment ( positive-support $?gen243 ) )"))

([pen3-defeasibly-dot] of derived-attribute-rule
   (pos-name pen3-defeasibly-dot-gen716)
   (depends-on declare max_imprisonment failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen3] ) ) ) ?gen229 <- ( max_imprisonment ( value 1825 ) ( positive 1 ) ( positive-derivator pen3 $? ) ) ( test ( eq ( class ?gen229 ) max_imprisonment ) ) ( not ( and ?gen236 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen231 & : ( not ( member$ pen3 $?gen231 ) ) ) ) ) ) => ?gen229 <- ( max_imprisonment ( positive 0 ) )"))

([pen3-defeasibly] of derived-attribute-rule
   (pos-name pen3-defeasibly-gen718)
   (depends-on declare failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen3] ) ) ) ?gen236 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( max_imprisonment ( value 1825 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen231 & : ( not ( member$ pen3 $?gen231 ) ) ) ) ( test ( eq ( class ?gen229 ) max_imprisonment ) ) => ?gen229 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen3 ?gen236 ) )"))

([pen3-overruled-dot] of derived-attribute-rule
   (pos-name pen3-overruled-dot-gen720)
   (depends-on declare max_imprisonment failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen3] ) ) ) ?gen229 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen232 ) ( negative-overruled $?gen233 & : ( subseq-pos ( create$ pen3-overruled $?gen232 $$$ $?gen233 ) ) ) ) ( test ( eq ( class ?gen229 ) max_imprisonment ) ) ( not ( and ?gen236 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( max_imprisonment ( positive-defeated $?gen231 & : ( not ( member$ pen3 $?gen231 ) ) ) ) ) ) => ( calc ( bind $?gen234 ( delete-member$ $?gen233 ( create$ pen3-overruled $?gen232 ) ) ) ) ?gen229 <- ( max_imprisonment ( negative-overruled $?gen234 ) )"))

([pen3-overruled] of derived-attribute-rule
   (pos-name pen3-overruled-gen722)
   (depends-on declare failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen3] ) ) ) ?gen236 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen235 & : ( >= ?gen235 1 ) ) ) ?gen229 <- ( max_imprisonment ( value 1825 ) ( negative-support $?gen232 ) ( negative-overruled $?gen233 & : ( not ( subseq-pos ( create$ pen3-overruled $?gen232 $$$ $?gen233 ) ) ) ) ( positive-defeated $?gen231 & : ( not ( member$ pen3 $?gen231 ) ) ) ) ( test ( eq ( class ?gen229 ) max_imprisonment ) ) => ( calc ( bind $?gen234 ( create$ pen3-overruled $?gen232 $?gen233 ) ) ) ?gen229 <- ( max_imprisonment ( negative-overruled $?gen234 ) )"))

([pen3-support] of derived-attribute-rule
   (pos-name pen3-support-gen724)
   (depends-on declare failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen3] ) ) ) ?gen228 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ) ?gen229 <- ( max_imprisonment ( value 1825 ) ( positive-support $?gen231 & : ( not ( subseq-pos ( create$ pen3 ?gen228 $$$ $?gen231 ) ) ) ) ) ( test ( eq ( class ?gen229 ) max_imprisonment ) ) => ( calc ( bind $?gen234 ( create$ pen3 ?gen228 $?gen231 ) ) ) ?gen229 <- ( max_imprisonment ( positive-support $?gen234 ) )"))

([pen2-defeasibly-dot] of derived-attribute-rule
   (pos-name pen2-defeasibly-dot-gen726)
   (depends-on declare min_imprisonment failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen2] ) ) ) ?gen220 <- ( min_imprisonment ( value 180 ) ( positive 1 ) ( positive-derivator pen2 $? ) ) ( test ( eq ( class ?gen220 ) min_imprisonment ) ) ( not ( and ?gen227 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen222 & : ( not ( member$ pen2 $?gen222 ) ) ) ) ) ) => ?gen220 <- ( min_imprisonment ( positive 0 ) )"))

([pen2-defeasibly] of derived-attribute-rule
   (pos-name pen2-defeasibly-gen728)
   (depends-on declare failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen2] ) ) ) ?gen227 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( min_imprisonment ( value 180 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen222 & : ( not ( member$ pen2 $?gen222 ) ) ) ) ( test ( eq ( class ?gen220 ) min_imprisonment ) ) => ?gen220 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pen2 ?gen227 ) )"))

([pen2-overruled-dot] of derived-attribute-rule
   (pos-name pen2-overruled-dot-gen730)
   (depends-on declare min_imprisonment failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen2] ) ) ) ?gen220 <- ( min_imprisonment ( value 180 ) ( negative-support $?gen223 ) ( negative-overruled $?gen224 & : ( subseq-pos ( create$ pen2-overruled $?gen223 $$$ $?gen224 ) ) ) ) ( test ( eq ( class ?gen220 ) min_imprisonment ) ) ( not ( and ?gen227 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( min_imprisonment ( positive-defeated $?gen222 & : ( not ( member$ pen2 $?gen222 ) ) ) ) ) ) => ( calc ( bind $?gen225 ( delete-member$ $?gen224 ( create$ pen2-overruled $?gen223 ) ) ) ) ?gen220 <- ( min_imprisonment ( negative-overruled $?gen225 ) )"))

([pen2-overruled] of derived-attribute-rule
   (pos-name pen2-overruled-gen732)
   (depends-on declare failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen2] ) ) ) ?gen227 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive ?gen226 & : ( >= ?gen226 1 ) ) ) ?gen220 <- ( min_imprisonment ( value 180 ) ( negative-support $?gen223 ) ( negative-overruled $?gen224 & : ( not ( subseq-pos ( create$ pen2-overruled $?gen223 $$$ $?gen224 ) ) ) ) ( positive-defeated $?gen222 & : ( not ( member$ pen2 $?gen222 ) ) ) ) ( test ( eq ( class ?gen220 ) min_imprisonment ) ) => ( calc ( bind $?gen225 ( create$ pen2-overruled $?gen223 $?gen224 ) ) ) ?gen220 <- ( min_imprisonment ( negative-overruled $?gen225 ) )"))

([pen2-support] of derived-attribute-rule
   (pos-name pen2-support-gen734)
   (depends-on declare failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen2] ) ) ) ?gen219 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ) ?gen220 <- ( min_imprisonment ( value 180 ) ( positive-support $?gen222 & : ( not ( subseq-pos ( create$ pen2 ?gen219 $$$ $?gen222 ) ) ) ) ) ( test ( eq ( class ?gen220 ) min_imprisonment ) ) => ( calc ( bind $?gen225 ( create$ pen2 ?gen219 $?gen222 ) ) ) ?gen220 <- ( min_imprisonment ( positive-support $?gen225 ) )"))

([pen1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen1-defeasibly-dot-gen736)
   (depends-on declare max_imprisonment failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen1] ) ) ) ?gen211 <- ( max_imprisonment ( value 730 ) ( positive 1 ) ( positive-derivator pen1 $? ) ) ( test ( eq ( class ?gen211 ) max_imprisonment ) ) ( not ( and ?gen218 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen213 & : ( not ( member$ pen1 $?gen213 ) ) ) ) ) ) => ?gen211 <- ( max_imprisonment ( positive 0 ) )"))

([pen1-defeasibly] of derived-attribute-rule
   (pos-name pen1-defeasibly-gen738)
   (depends-on declare failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen1] ) ) ) ?gen218 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( max_imprisonment ( value 730 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen213 & : ( not ( member$ pen1 $?gen213 ) ) ) ) ( test ( eq ( class ?gen211 ) max_imprisonment ) ) => ?gen211 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pen1 ?gen218 ) )"))

([pen1-overruled-dot] of derived-attribute-rule
   (pos-name pen1-overruled-dot-gen740)
   (depends-on declare max_imprisonment failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen1] ) ) ) ?gen211 <- ( max_imprisonment ( value 730 ) ( negative-support $?gen214 ) ( negative-overruled $?gen215 & : ( subseq-pos ( create$ pen1-overruled $?gen214 $$$ $?gen215 ) ) ) ) ( test ( eq ( class ?gen211 ) max_imprisonment ) ) ( not ( and ?gen218 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( max_imprisonment ( positive-defeated $?gen213 & : ( not ( member$ pen1 $?gen213 ) ) ) ) ) ) => ( calc ( bind $?gen216 ( delete-member$ $?gen215 ( create$ pen1-overruled $?gen214 ) ) ) ) ?gen211 <- ( max_imprisonment ( negative-overruled $?gen216 ) )"))

([pen1-overruled] of derived-attribute-rule
   (pos-name pen1-overruled-gen742)
   (depends-on declare failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen1] ) ) ) ?gen218 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive ?gen217 & : ( >= ?gen217 1 ) ) ) ?gen211 <- ( max_imprisonment ( value 730 ) ( negative-support $?gen214 ) ( negative-overruled $?gen215 & : ( not ( subseq-pos ( create$ pen1-overruled $?gen214 $$$ $?gen215 ) ) ) ) ( positive-defeated $?gen213 & : ( not ( member$ pen1 $?gen213 ) ) ) ) ( test ( eq ( class ?gen211 ) max_imprisonment ) ) => ( calc ( bind $?gen216 ( create$ pen1-overruled $?gen214 $?gen215 ) ) ) ?gen211 <- ( max_imprisonment ( negative-overruled $?gen216 ) )"))

([pen1-support] of derived-attribute-rule
   (pos-name pen1-support-gen744)
   (depends-on declare failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen1] ) ) ) ?gen210 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ) ?gen211 <- ( max_imprisonment ( value 730 ) ( positive-support $?gen213 & : ( not ( subseq-pos ( create$ pen1 ?gen210 $$$ $?gen213 ) ) ) ) ) ( test ( eq ( class ?gen211 ) max_imprisonment ) ) => ( calc ( bind $?gen216 ( create$ pen1 ?gen210 $?gen213 ) ) ) ?gen211 <- ( max_imprisonment ( positive-support $?gen216 ) )"))

([rule16-defeasibly-dot] of derived-attribute-rule
   (pos-name rule16-defeasibly-dot-gen746)
   (depends-on declare domestic_violence_protection_violation lc:case domestic_violence_protection_violation)
   (implies domestic_violence_protection_violation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule16] ) ) ) ?gen202 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule16 $? ) ) ( test ( eq ( class ?gen202 ) domestic_violence_protection_violation ) ) ( not ( and ?gen209 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_domestic_violence_protection_order \"yes\" ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( domestic_violence_protection_violation ( negative ~ 2 ) ( positive-overruled $?gen204 & : ( not ( member$ rule16 $?gen204 ) ) ) ) ) ) => ?gen202 <- ( domestic_violence_protection_violation ( positive 0 ) )"))

([rule16-defeasibly] of derived-attribute-rule
   (pos-name rule16-defeasibly-gen748)
   (depends-on declare lc:case domestic_violence_protection_violation)
   (implies domestic_violence_protection_violation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule16] ) ) ) ?gen209 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_domestic_violence_protection_order \"yes\" ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen204 & : ( not ( member$ rule16 $?gen204 ) ) ) ) ( test ( eq ( class ?gen202 ) domestic_violence_protection_violation ) ) => ?gen202 <- ( domestic_violence_protection_violation ( positive 1 ) ( positive-derivator rule16 ?gen209 ) )"))

([rule16-overruled-dot] of derived-attribute-rule
   (pos-name rule16-overruled-dot-gen750)
   (depends-on declare domestic_violence_protection_violation lc:case domestic_violence_protection_violation)
   (implies domestic_violence_protection_violation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule16] ) ) ) ?gen202 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ( negative-support $?gen205 ) ( negative-overruled $?gen206 & : ( subseq-pos ( create$ rule16-overruled $?gen205 $$$ $?gen206 ) ) ) ) ( test ( eq ( class ?gen202 ) domestic_violence_protection_violation ) ) ( not ( and ?gen209 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_domestic_violence_protection_order \"yes\" ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( domestic_violence_protection_violation ( positive-defeated $?gen204 & : ( not ( member$ rule16 $?gen204 ) ) ) ) ) ) => ( calc ( bind $?gen207 ( delete-member$ $?gen206 ( create$ rule16-overruled $?gen205 ) ) ) ) ?gen202 <- ( domestic_violence_protection_violation ( negative-overruled $?gen207 ) )"))

([rule16-overruled] of derived-attribute-rule
   (pos-name rule16-overruled-gen752)
   (depends-on declare lc:case domestic_violence_protection_violation)
   (implies domestic_violence_protection_violation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule16] ) ) ) ?gen209 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_domestic_violence_protection_order \"yes\" ) ( positive ?gen208 & : ( >= ?gen208 1 ) ) ) ?gen202 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ( negative-support $?gen205 ) ( negative-overruled $?gen206 & : ( not ( subseq-pos ( create$ rule16-overruled $?gen205 $$$ $?gen206 ) ) ) ) ( positive-defeated $?gen204 & : ( not ( member$ rule16 $?gen204 ) ) ) ) ( test ( eq ( class ?gen202 ) domestic_violence_protection_violation ) ) => ( calc ( bind $?gen207 ( create$ rule16-overruled $?gen205 $?gen206 ) ) ) ?gen202 <- ( domestic_violence_protection_violation ( negative-overruled $?gen207 ) )"))

([rule16-support] of derived-attribute-rule
   (pos-name rule16-support-gen754)
   (depends-on declare lc:case domestic_violence_protection_violation)
   (implies domestic_violence_protection_violation)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule16] ) ) ) ?gen201 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_domestic_violence_protection_order \"yes\" ) ) ?gen202 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ( positive-support $?gen204 & : ( not ( subseq-pos ( create$ rule16 ?gen201 $$$ $?gen204 ) ) ) ) ) ( test ( eq ( class ?gen202 ) domestic_violence_protection_violation ) ) => ( calc ( bind $?gen207 ( create$ rule16 ?gen201 $?gen204 ) ) ) ?gen202 <- ( domestic_violence_protection_violation ( positive-support $?gen207 ) )"))

([rule15-defeasibly-dot] of derived-attribute-rule
   (pos-name rule15-defeasibly-dot-gen756)
   (depends-on declare domestic_violence_aggravated_death lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule15] ) ) ) ?gen189 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule15 $? ) ) ( test ( eq ( class ?gen189 ) domestic_violence_aggravated_death ) ) ( not ( and ?gen196 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen195 & : ( >= ?gen195 1 ) ) ) ?gen198 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen197 & : ( >= ?gen197 1 ) ) ) ?gen200 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen189 <- ( domestic_violence_aggravated_death ( negative ~ 2 ) ( positive-overruled $?gen191 & : ( not ( member$ rule15 $?gen191 ) ) ) ) ) ) => ?gen189 <- ( domestic_violence_aggravated_death ( positive 0 ) )"))

([rule15-defeasibly] of derived-attribute-rule
   (pos-name rule15-defeasibly-gen758)
   (depends-on declare lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule15] ) ) ) ?gen196 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen195 & : ( >= ?gen195 1 ) ) ) ?gen198 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen197 & : ( >= ?gen197 1 ) ) ) ?gen200 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen189 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen191 & : ( not ( member$ rule15 $?gen191 ) ) ) ) ( test ( eq ( class ?gen189 ) domestic_violence_aggravated_death ) ) => ?gen189 <- ( domestic_violence_aggravated_death ( positive 1 ) ( positive-derivator rule15 ?gen196 ?gen198 ?gen200 ) )"))

([rule15-overruled-dot] of derived-attribute-rule
   (pos-name rule15-overruled-dot-gen760)
   (depends-on declare domestic_violence_aggravated_death lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule15] ) ) ) ?gen189 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( negative-support $?gen192 ) ( negative-overruled $?gen193 & : ( subseq-pos ( create$ rule15-overruled $?gen192 $$$ $?gen193 ) ) ) ) ( test ( eq ( class ?gen189 ) domestic_violence_aggravated_death ) ) ( not ( and ?gen196 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen195 & : ( >= ?gen195 1 ) ) ) ?gen198 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen197 & : ( >= ?gen197 1 ) ) ) ?gen200 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen189 <- ( domestic_violence_aggravated_death ( positive-defeated $?gen191 & : ( not ( member$ rule15 $?gen191 ) ) ) ) ) ) => ( calc ( bind $?gen194 ( delete-member$ $?gen193 ( create$ rule15-overruled $?gen192 ) ) ) ) ?gen189 <- ( domestic_violence_aggravated_death ( negative-overruled $?gen194 ) )"))

([rule15-overruled] of derived-attribute-rule
   (pos-name rule15-overruled-gen762)
   (depends-on declare lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule15] ) ) ) ?gen196 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen195 & : ( >= ?gen195 1 ) ) ) ?gen198 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen197 & : ( >= ?gen197 1 ) ) ) ?gen200 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen199 & : ( >= ?gen199 1 ) ) ) ?gen189 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( negative-support $?gen192 ) ( negative-overruled $?gen193 & : ( not ( subseq-pos ( create$ rule15-overruled $?gen192 $$$ $?gen193 ) ) ) ) ( positive-defeated $?gen191 & : ( not ( member$ rule15 $?gen191 ) ) ) ) ( test ( eq ( class ?gen189 ) domestic_violence_aggravated_death ) ) => ( calc ( bind $?gen194 ( create$ rule15-overruled $?gen192 $?gen193 ) ) ) ?gen189 <- ( domestic_violence_aggravated_death ( negative-overruled $?gen194 ) )"))

([rule15-support] of derived-attribute-rule
   (pos-name rule15-support-gen764)
   (depends-on declare lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule15] ) ) ) ?gen186 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen187 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ?gen188 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ) ?gen189 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ( positive-support $?gen191 & : ( not ( subseq-pos ( create$ rule15 ?gen186 ?gen187 ?gen188 $$$ $?gen191 ) ) ) ) ) ( test ( eq ( class ?gen189 ) domestic_violence_aggravated_death ) ) => ( calc ( bind $?gen194 ( create$ rule15 ?gen186 ?gen187 ?gen188 $?gen191 ) ) ) ?gen189 <- ( domestic_violence_aggravated_death ( positive-support $?gen194 ) )"))

([rule14-defeated-dot] of derived-attribute-rule
   (pos-name rule14-defeated-dot-gen766)
   (depends-on declare domestic_violence_aggravated_severe lc:case lc:case)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule14] ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( negative-defeated $?gen179 & : ( subseq-pos ( create$ rule14-defeated rule15 $$$ $?gen179 ) ) ) ) ( test ( eq ( class ?gen176 ) domestic_violence_aggravated_severe ) ) ( not ( and ?gen183 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen182 & : ( >= ?gen182 1 ) ) ) ?gen185 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ) ) => ( calc ( bind $?gen178 ( delete-member$ $?gen179 ( create$ rule14-defeated rule15 ) ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( negative-defeated $?gen178 ) )"))

([rule14-defeated] of derived-attribute-rule
   (pos-name rule14-defeated-gen768)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule14] ) ) ) ?gen183 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen182 & : ( >= ?gen182 1 ) ) ) ?gen185 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( negative-defeated $?gen179 & : ( not ( subseq-pos ( create$ rule14-defeated rule15 $$$ $?gen179 ) ) ) ) ) ( test ( eq ( class ?gen176 ) domestic_violence_aggravated_severe ) ) => ( calc ( bind $?gen178 ( create$ rule14-defeated rule15 $?gen179 ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( negative-defeated $?gen178 ) )"))

([rule14-defeasibly-dot] of derived-attribute-rule
   (pos-name rule14-defeasibly-dot-gen770)
   (depends-on declare domestic_violence_aggravated_severe lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule14] ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule14 $? ) ) ( test ( eq ( class ?gen176 ) domestic_violence_aggravated_severe ) ) ( not ( and ?gen183 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen182 & : ( >= ?gen182 1 ) ) ) ?gen185 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( negative ~ 2 ) ( positive-overruled $?gen178 & : ( not ( member$ rule14 $?gen178 ) ) ) ) ) ) => ?gen176 <- ( domestic_violence_aggravated_severe ( positive 0 ) )"))

([rule14-defeasibly] of derived-attribute-rule
   (pos-name rule14-defeasibly-gen772)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule14] ) ) ) ?gen183 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen182 & : ( >= ?gen182 1 ) ) ) ?gen185 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen178 & : ( not ( member$ rule14 $?gen178 ) ) ) ) ( test ( eq ( class ?gen176 ) domestic_violence_aggravated_severe ) ) => ?gen176 <- ( domestic_violence_aggravated_severe ( positive 1 ) ( positive-derivator rule14 ?gen183 ?gen185 ) )"))

([rule14-overruled-dot] of derived-attribute-rule
   (pos-name rule14-overruled-dot-gen774)
   (depends-on declare domestic_violence_aggravated_severe lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule14] ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( negative-support $?gen179 ) ( negative-overruled $?gen180 & : ( subseq-pos ( create$ rule14-overruled $?gen179 $$$ $?gen180 ) ) ) ) ( test ( eq ( class ?gen176 ) domestic_violence_aggravated_severe ) ) ( not ( and ?gen183 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen182 & : ( >= ?gen182 1 ) ) ) ?gen185 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( positive-defeated $?gen178 & : ( not ( member$ rule14 $?gen178 ) ) ) ) ) ) => ( calc ( bind $?gen181 ( delete-member$ $?gen180 ( create$ rule14-overruled $?gen179 ) ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( negative-overruled $?gen181 ) )"))

([rule14-overruled] of derived-attribute-rule
   (pos-name rule14-overruled-gen776)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule14] ) ) ) ?gen183 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen182 & : ( >= ?gen182 1 ) ) ) ?gen185 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( negative-support $?gen179 ) ( negative-overruled $?gen180 & : ( not ( subseq-pos ( create$ rule14-overruled $?gen179 $$$ $?gen180 ) ) ) ) ( positive-defeated $?gen178 & : ( not ( member$ rule14 $?gen178 ) ) ) ) ( test ( eq ( class ?gen176 ) domestic_violence_aggravated_severe ) ) => ( calc ( bind $?gen181 ( create$ rule14-overruled $?gen179 $?gen180 ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( negative-overruled $?gen181 ) )"))

([rule14-support] of derived-attribute-rule
   (pos-name rule14-support-gen778)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule14] ) ) ) ?gen174 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen175 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ( positive-support $?gen178 & : ( not ( subseq-pos ( create$ rule14 ?gen174 ?gen175 $$$ $?gen178 ) ) ) ) ) ( test ( eq ( class ?gen176 ) domestic_violence_aggravated_severe ) ) => ( calc ( bind $?gen181 ( create$ rule14 ?gen174 ?gen175 $?gen178 ) ) ) ?gen176 <- ( domestic_violence_aggravated_severe ( positive-support $?gen181 ) )"))

([rule13-defeated-dot] of derived-attribute-rule
   (pos-name rule13-defeated-dot-gen780)
   (depends-on declare domestic_violence_aggravated_weapon lc:case lc:case)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule13] ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( negative-defeated $?gen167 & : ( subseq-pos ( create$ rule13-defeated rule14 rule15 $$$ $?gen167 ) ) ) ) ( test ( eq ( class ?gen164 ) domestic_violence_aggravated_weapon ) ) ( not ( and ?gen171 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen170 & : ( >= ?gen170 1 ) ) ) ?gen173 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ) ) => ( calc ( bind $?gen166 ( delete-member$ $?gen167 ( create$ rule13-defeated rule14 rule15 ) ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( negative-defeated $?gen166 ) )"))

([rule13-defeated] of derived-attribute-rule
   (pos-name rule13-defeated-gen782)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule13] ) ) ) ?gen171 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen170 & : ( >= ?gen170 1 ) ) ) ?gen173 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( negative-defeated $?gen167 & : ( not ( subseq-pos ( create$ rule13-defeated rule14 rule15 $$$ $?gen167 ) ) ) ) ) ( test ( eq ( class ?gen164 ) domestic_violence_aggravated_weapon ) ) => ( calc ( bind $?gen166 ( create$ rule13-defeated rule14 rule15 $?gen167 ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( negative-defeated $?gen166 ) )"))

([rule13-defeasibly-dot] of derived-attribute-rule
   (pos-name rule13-defeasibly-dot-gen784)
   (depends-on declare domestic_violence_aggravated_weapon lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule13] ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule13 $? ) ) ( test ( eq ( class ?gen164 ) domestic_violence_aggravated_weapon ) ) ( not ( and ?gen171 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen170 & : ( >= ?gen170 1 ) ) ) ?gen173 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( negative ~ 2 ) ( positive-overruled $?gen166 & : ( not ( member$ rule13 $?gen166 ) ) ) ) ) ) => ?gen164 <- ( domestic_violence_aggravated_weapon ( positive 0 ) )"))

([rule13-defeasibly] of derived-attribute-rule
   (pos-name rule13-defeasibly-gen786)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule13] ) ) ) ?gen171 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen170 & : ( >= ?gen170 1 ) ) ) ?gen173 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen166 & : ( not ( member$ rule13 $?gen166 ) ) ) ) ( test ( eq ( class ?gen164 ) domestic_violence_aggravated_weapon ) ) => ?gen164 <- ( domestic_violence_aggravated_weapon ( positive 1 ) ( positive-derivator rule13 ?gen171 ?gen173 ) )"))

([rule13-overruled-dot] of derived-attribute-rule
   (pos-name rule13-overruled-dot-gen788)
   (depends-on declare domestic_violence_aggravated_weapon lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule13] ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( negative-support $?gen167 ) ( negative-overruled $?gen168 & : ( subseq-pos ( create$ rule13-overruled $?gen167 $$$ $?gen168 ) ) ) ) ( test ( eq ( class ?gen164 ) domestic_violence_aggravated_weapon ) ) ( not ( and ?gen171 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen170 & : ( >= ?gen170 1 ) ) ) ?gen173 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( positive-defeated $?gen166 & : ( not ( member$ rule13 $?gen166 ) ) ) ) ) ) => ( calc ( bind $?gen169 ( delete-member$ $?gen168 ( create$ rule13-overruled $?gen167 ) ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( negative-overruled $?gen169 ) )"))

([rule13-overruled] of derived-attribute-rule
   (pos-name rule13-overruled-gen790)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule13] ) ) ) ?gen171 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen170 & : ( >= ?gen170 1 ) ) ) ?gen173 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ( positive ?gen172 & : ( >= ?gen172 1 ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( negative-support $?gen167 ) ( negative-overruled $?gen168 & : ( not ( subseq-pos ( create$ rule13-overruled $?gen167 $$$ $?gen168 ) ) ) ) ( positive-defeated $?gen166 & : ( not ( member$ rule13 $?gen166 ) ) ) ) ( test ( eq ( class ?gen164 ) domestic_violence_aggravated_weapon ) ) => ( calc ( bind $?gen169 ( create$ rule13-overruled $?gen167 $?gen168 ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( negative-overruled $?gen169 ) )"))

([rule13-support] of derived-attribute-rule
   (pos-name rule13-support-gen792)
   (depends-on declare lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule13] ) ) ) ?gen162 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen163 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ( positive-support $?gen166 & : ( not ( subseq-pos ( create$ rule13 ?gen162 ?gen163 $$$ $?gen166 ) ) ) ) ) ( test ( eq ( class ?gen164 ) domestic_violence_aggravated_weapon ) ) => ( calc ( bind $?gen169 ( create$ rule13 ?gen162 ?gen163 $?gen166 ) ) ) ?gen164 <- ( domestic_violence_aggravated_weapon ( positive-support $?gen169 ) )"))

([rule12-defeated-dot] of derived-attribute-rule
   (pos-name rule12-defeated-dot-gen794)
   (depends-on declare domestic_violence_basic lc:case)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule12] ) ) ) ?gen154 <- ( domestic_violence_basic ( defendant ?Defendant ) ( negative-defeated $?gen157 & : ( subseq-pos ( create$ rule12-defeated rule13 rule14 rule15 $$$ $?gen157 ) ) ) ) ( test ( eq ( class ?gen154 ) domestic_violence_basic ) ) ( not ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ) => ( calc ( bind $?gen156 ( delete-member$ $?gen157 ( create$ rule12-defeated rule13 rule14 rule15 ) ) ) ) ?gen154 <- ( domestic_violence_basic ( negative-defeated $?gen156 ) )"))

([rule12-defeated] of derived-attribute-rule
   (pos-name rule12-defeated-gen796)
   (depends-on declare lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule12] ) ) ) ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( domestic_violence_basic ( defendant ?Defendant ) ( negative-defeated $?gen157 & : ( not ( subseq-pos ( create$ rule12-defeated rule13 rule14 rule15 $$$ $?gen157 ) ) ) ) ) ( test ( eq ( class ?gen154 ) domestic_violence_basic ) ) => ( calc ( bind $?gen156 ( create$ rule12-defeated rule13 rule14 rule15 $?gen157 ) ) ) ?gen154 <- ( domestic_violence_basic ( negative-defeated $?gen156 ) )"))

([rule12-defeasibly-dot] of derived-attribute-rule
   (pos-name rule12-defeasibly-dot-gen798)
   (depends-on declare domestic_violence_basic lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule12] ) ) ) ?gen154 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule12 $? ) ) ( test ( eq ( class ?gen154 ) domestic_violence_basic ) ) ( not ( and ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( domestic_violence_basic ( negative ~ 2 ) ( positive-overruled $?gen156 & : ( not ( member$ rule12 $?gen156 ) ) ) ) ) ) => ?gen154 <- ( domestic_violence_basic ( positive 0 ) )"))

([rule12-defeasibly] of derived-attribute-rule
   (pos-name rule12-defeasibly-gen800)
   (depends-on declare lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule12] ) ) ) ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen156 & : ( not ( member$ rule12 $?gen156 ) ) ) ) ( test ( eq ( class ?gen154 ) domestic_violence_basic ) ) => ?gen154 <- ( domestic_violence_basic ( positive 1 ) ( positive-derivator rule12 ?gen161 ) )"))

([rule12-overruled-dot] of derived-attribute-rule
   (pos-name rule12-overruled-dot-gen802)
   (depends-on declare domestic_violence_basic lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule12] ) ) ) ?gen154 <- ( domestic_violence_basic ( defendant ?Defendant ) ( negative-support $?gen157 ) ( negative-overruled $?gen158 & : ( subseq-pos ( create$ rule12-overruled $?gen157 $$$ $?gen158 ) ) ) ) ( test ( eq ( class ?gen154 ) domestic_violence_basic ) ) ( not ( and ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( domestic_violence_basic ( positive-defeated $?gen156 & : ( not ( member$ rule12 $?gen156 ) ) ) ) ) ) => ( calc ( bind $?gen159 ( delete-member$ $?gen158 ( create$ rule12-overruled $?gen157 ) ) ) ) ?gen154 <- ( domestic_violence_basic ( negative-overruled $?gen159 ) )"))

([rule12-overruled] of derived-attribute-rule
   (pos-name rule12-overruled-gen804)
   (depends-on declare lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule12] ) ) ) ?gen161 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( domestic_violence_basic ( defendant ?Defendant ) ( negative-support $?gen157 ) ( negative-overruled $?gen158 & : ( not ( subseq-pos ( create$ rule12-overruled $?gen157 $$$ $?gen158 ) ) ) ) ( positive-defeated $?gen156 & : ( not ( member$ rule12 $?gen156 ) ) ) ) ( test ( eq ( class ?gen154 ) domestic_violence_basic ) ) => ( calc ( bind $?gen159 ( create$ rule12-overruled $?gen157 $?gen158 ) ) ) ?gen154 <- ( domestic_violence_basic ( negative-overruled $?gen159 ) )"))

([rule12-support] of derived-attribute-rule
   (pos-name rule12-support-gen806)
   (depends-on declare lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule12] ) ) ) ?gen153 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen154 <- ( domestic_violence_basic ( defendant ?Defendant ) ( positive-support $?gen156 & : ( not ( subseq-pos ( create$ rule12 ?gen153 $$$ $?gen156 ) ) ) ) ) ( test ( eq ( class ?gen154 ) domestic_violence_basic ) ) => ( calc ( bind $?gen159 ( create$ rule12 ?gen153 $?gen156 ) ) ) ?gen154 <- ( domestic_violence_basic ( positive-support $?gen159 ) )"))

([rule11-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11-defeasibly-dot-gen808)
   (depends-on declare child_abduction_aggravated lc:case lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11] ) ) ) ?gen143 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule11 $? ) ) ( test ( eq ( class ?gen143 ) child_abduction_aggravated ) ) ( not ( and ?gen150 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ( positive ?gen149 & : ( >= ?gen149 1 ) ) ) ?gen152 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen143 <- ( child_abduction_aggravated ( negative ~ 2 ) ( positive-overruled $?gen145 & : ( not ( member$ rule11 $?gen145 ) ) ) ) ) ) => ?gen143 <- ( child_abduction_aggravated ( positive 0 ) )"))

([rule11-defeasibly] of derived-attribute-rule
   (pos-name rule11-defeasibly-gen810)
   (depends-on declare lc:case lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11] ) ) ) ?gen150 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ( positive ?gen149 & : ( >= ?gen149 1 ) ) ) ?gen152 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen143 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen145 & : ( not ( member$ rule11 $?gen145 ) ) ) ) ( test ( eq ( class ?gen143 ) child_abduction_aggravated ) ) => ?gen143 <- ( child_abduction_aggravated ( positive 1 ) ( positive-derivator rule11 ?gen150 ?gen152 ) )"))

([rule11-overruled-dot] of derived-attribute-rule
   (pos-name rule11-overruled-dot-gen812)
   (depends-on declare child_abduction_aggravated lc:case lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11] ) ) ) ?gen143 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( negative-support $?gen146 ) ( negative-overruled $?gen147 & : ( subseq-pos ( create$ rule11-overruled $?gen146 $$$ $?gen147 ) ) ) ) ( test ( eq ( class ?gen143 ) child_abduction_aggravated ) ) ( not ( and ?gen150 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ( positive ?gen149 & : ( >= ?gen149 1 ) ) ) ?gen152 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen143 <- ( child_abduction_aggravated ( positive-defeated $?gen145 & : ( not ( member$ rule11 $?gen145 ) ) ) ) ) ) => ( calc ( bind $?gen148 ( delete-member$ $?gen147 ( create$ rule11-overruled $?gen146 ) ) ) ) ?gen143 <- ( child_abduction_aggravated ( negative-overruled $?gen148 ) )"))

([rule11-overruled] of derived-attribute-rule
   (pos-name rule11-overruled-gen814)
   (depends-on declare lc:case lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11] ) ) ) ?gen150 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ( positive ?gen149 & : ( >= ?gen149 1 ) ) ) ?gen152 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen143 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( negative-support $?gen146 ) ( negative-overruled $?gen147 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen146 $$$ $?gen147 ) ) ) ) ( positive-defeated $?gen145 & : ( not ( member$ rule11 $?gen145 ) ) ) ) ( test ( eq ( class ?gen143 ) child_abduction_aggravated ) ) => ( calc ( bind $?gen148 ( create$ rule11-overruled $?gen146 $?gen147 ) ) ) ?gen143 <- ( child_abduction_aggravated ( negative-overruled $?gen148 ) )"))

([rule11-support] of derived-attribute-rule
   (pos-name rule11-support-gen816)
   (depends-on declare lc:case lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11] ) ) ) ?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ) ?gen142 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ) ?gen143 <- ( child_abduction_aggravated ( defendant ?Defendant ) ( positive-support $?gen145 & : ( not ( subseq-pos ( create$ rule11 ?gen141 ?gen142 $$$ $?gen145 ) ) ) ) ) ( test ( eq ( class ?gen143 ) child_abduction_aggravated ) ) => ( calc ( bind $?gen148 ( create$ rule11 ?gen141 ?gen142 $?gen145 ) ) ) ?gen143 <- ( child_abduction_aggravated ( positive-support $?gen148 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen818)
   (depends-on declare preventing_child_contact lc:case preventing_child_contact)
   (implies preventing_child_contact)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen133 <- ( preventing_child_contact ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen133 ) preventing_child_contact ) ) ( not ( and ?gen140 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prevents_contact_execution \"yes\" ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( preventing_child_contact ( negative ~ 2 ) ( positive-overruled $?gen135 & : ( not ( member$ rule10 $?gen135 ) ) ) ) ) ) => ?gen133 <- ( preventing_child_contact ( positive 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen820)
   (depends-on declare lc:case preventing_child_contact)
   (implies preventing_child_contact)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen140 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prevents_contact_execution \"yes\" ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( preventing_child_contact ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen135 & : ( not ( member$ rule10 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) preventing_child_contact ) ) => ?gen133 <- ( preventing_child_contact ( positive 1 ) ( positive-derivator rule10 ?gen140 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen822)
   (depends-on declare preventing_child_contact lc:case preventing_child_contact)
   (implies preventing_child_contact)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen133 <- ( preventing_child_contact ( defendant ?Defendant ) ( negative-support $?gen136 ) ( negative-overruled $?gen137 & : ( subseq-pos ( create$ rule10-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( test ( eq ( class ?gen133 ) preventing_child_contact ) ) ( not ( and ?gen140 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prevents_contact_execution \"yes\" ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( preventing_child_contact ( positive-defeated $?gen135 & : ( not ( member$ rule10 $?gen135 ) ) ) ) ) ) => ( calc ( bind $?gen138 ( delete-member$ $?gen137 ( create$ rule10-overruled $?gen136 ) ) ) ) ?gen133 <- ( preventing_child_contact ( negative-overruled $?gen138 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen824)
   (depends-on declare lc:case preventing_child_contact)
   (implies preventing_child_contact)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen140 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prevents_contact_execution \"yes\" ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( preventing_child_contact ( defendant ?Defendant ) ( negative-support $?gen136 ) ( negative-overruled $?gen137 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( positive-defeated $?gen135 & : ( not ( member$ rule10 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) preventing_child_contact ) ) => ( calc ( bind $?gen138 ( create$ rule10-overruled $?gen136 $?gen137 ) ) ) ?gen133 <- ( preventing_child_contact ( negative-overruled $?gen138 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen826)
   (depends-on declare lc:case preventing_child_contact)
   (implies preventing_child_contact)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prevents_contact_execution \"yes\" ) ) ?gen133 <- ( preventing_child_contact ( defendant ?Defendant ) ( positive-support $?gen135 & : ( not ( subseq-pos ( create$ rule10 ?gen132 $$$ $?gen135 ) ) ) ) ) ( test ( eq ( class ?gen133 ) preventing_child_contact ) ) => ( calc ( bind $?gen138 ( create$ rule10 ?gen132 $?gen135 ) ) ) ?gen133 <- ( preventing_child_contact ( positive-support $?gen138 ) )"))

([rule9-defeated-dot] of derived-attribute-rule
   (pos-name rule9-defeated-dot-gen828)
   (depends-on declare child_abduction_basic lc:case)
   (implies child_abduction_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule9] ) ) ) ?gen124 <- ( child_abduction_basic ( defendant ?Defendant ) ( negative-defeated $?gen127 & : ( subseq-pos ( create$ rule9-defeated rule11 $$$ $?gen127 ) ) ) ) ( test ( eq ( class ?gen124 ) child_abduction_basic ) ) ( not ?gen131 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ) => ( calc ( bind $?gen126 ( delete-member$ $?gen127 ( create$ rule9-defeated rule11 ) ) ) ) ?gen124 <- ( child_abduction_basic ( negative-defeated $?gen126 ) )"))

([rule9-defeated] of derived-attribute-rule
   (pos-name rule9-defeated-gen830)
   (depends-on declare lc:case child_abduction_basic)
   (implies child_abduction_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule9] ) ) ) ?gen131 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( child_abduction_basic ( defendant ?Defendant ) ( negative-defeated $?gen127 & : ( not ( subseq-pos ( create$ rule9-defeated rule11 $$$ $?gen127 ) ) ) ) ) ( test ( eq ( class ?gen124 ) child_abduction_basic ) ) => ( calc ( bind $?gen126 ( create$ rule9-defeated rule11 $?gen127 ) ) ) ?gen124 <- ( child_abduction_basic ( negative-defeated $?gen126 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen832)
   (depends-on declare child_abduction_basic lc:case child_abduction_basic)
   (implies child_abduction_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen124 <- ( child_abduction_basic ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen124 ) child_abduction_basic ) ) ( not ( and ?gen131 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( child_abduction_basic ( negative ~ 2 ) ( positive-overruled $?gen126 & : ( not ( member$ rule9 $?gen126 ) ) ) ) ) ) => ?gen124 <- ( child_abduction_basic ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen834)
   (depends-on declare lc:case child_abduction_basic)
   (implies child_abduction_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen131 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( child_abduction_basic ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen126 & : ( not ( member$ rule9 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) child_abduction_basic ) ) => ?gen124 <- ( child_abduction_basic ( positive 1 ) ( positive-derivator rule9 ?gen131 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen836)
   (depends-on declare child_abduction_basic lc:case child_abduction_basic)
   (implies child_abduction_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen124 <- ( child_abduction_basic ( defendant ?Defendant ) ( negative-support $?gen127 ) ( negative-overruled $?gen128 & : ( subseq-pos ( create$ rule9-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( test ( eq ( class ?gen124 ) child_abduction_basic ) ) ( not ( and ?gen131 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( child_abduction_basic ( positive-defeated $?gen126 & : ( not ( member$ rule9 $?gen126 ) ) ) ) ) ) => ( calc ( bind $?gen129 ( delete-member$ $?gen128 ( create$ rule9-overruled $?gen127 ) ) ) ) ?gen124 <- ( child_abduction_basic ( negative-overruled $?gen129 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen838)
   (depends-on declare lc:case child_abduction_basic)
   (implies child_abduction_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen131 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( child_abduction_basic ( defendant ?Defendant ) ( negative-support $?gen127 ) ( negative-overruled $?gen128 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( positive-defeated $?gen126 & : ( not ( member$ rule9 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) child_abduction_basic ) ) => ( calc ( bind $?gen129 ( create$ rule9-overruled $?gen127 $?gen128 ) ) ) ?gen124 <- ( child_abduction_basic ( negative-overruled $?gen129 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen840)
   (depends-on declare lc:case child_abduction_basic)
   (implies child_abduction_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen123 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ) ?gen124 <- ( child_abduction_basic ( defendant ?Defendant ) ( positive-support $?gen126 & : ( not ( subseq-pos ( create$ rule9 ?gen123 $$$ $?gen126 ) ) ) ) ) ( test ( eq ( class ?gen124 ) child_abduction_basic ) ) => ( calc ( bind $?gen129 ( create$ rule9 ?gen123 $?gen126 ) ) ) ?gen124 <- ( child_abduction_basic ( positive-support $?gen129 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen842)
   (depends-on declare enabling_minor_extramarital_union_aggravated lc:case lc:case lc:case enabling_minor_extramarital_union_aggravated)
   (implies enabling_minor_extramarital_union_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule8 $? ) ) ( test ( eq ( class ?gen111 ) enabling_minor_extramarital_union_aggravated ) ) ( not ( and ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ( positive ?gen117 & : ( >= ?gen117 1 ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( negative ~ 2 ) ( positive-overruled $?gen113 & : ( not ( member$ rule8 $?gen113 ) ) ) ) ) ) => ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( positive 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen844)
   (depends-on declare lc:case lc:case lc:case enabling_minor_extramarital_union_aggravated)
   (implies enabling_minor_extramarital_union_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ( positive ?gen117 & : ( >= ?gen117 1 ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen113 & : ( not ( member$ rule8 $?gen113 ) ) ) ) ( test ( eq ( class ?gen111 ) enabling_minor_extramarital_union_aggravated ) ) => ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( positive 1 ) ( positive-derivator rule8 ?gen118 ?gen120 ?gen122 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen846)
   (depends-on declare enabling_minor_extramarital_union_aggravated lc:case lc:case lc:case enabling_minor_extramarital_union_aggravated)
   (implies enabling_minor_extramarital_union_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( negative-support $?gen114 ) ( negative-overruled $?gen115 & : ( subseq-pos ( create$ rule8-overruled $?gen114 $$$ $?gen115 ) ) ) ) ( test ( eq ( class ?gen111 ) enabling_minor_extramarital_union_aggravated ) ) ( not ( and ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ( positive ?gen117 & : ( >= ?gen117 1 ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( positive-defeated $?gen113 & : ( not ( member$ rule8 $?gen113 ) ) ) ) ) ) => ( calc ( bind $?gen116 ( delete-member$ $?gen115 ( create$ rule8-overruled $?gen114 ) ) ) ) ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( negative-overruled $?gen116 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen848)
   (depends-on declare lc:case lc:case lc:case enabling_minor_extramarital_union_aggravated)
   (implies enabling_minor_extramarital_union_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen118 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ( positive ?gen117 & : ( >= ?gen117 1 ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( negative-support $?gen114 ) ( negative-overruled $?gen115 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen114 $$$ $?gen115 ) ) ) ) ( positive-defeated $?gen113 & : ( not ( member$ rule8 $?gen113 ) ) ) ) ( test ( eq ( class ?gen111 ) enabling_minor_extramarital_union_aggravated ) ) => ( calc ( bind $?gen116 ( create$ rule8-overruled $?gen114 $?gen115 ) ) ) ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( negative-overruled $?gen116 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen850)
   (depends-on declare lc:case lc:case lc:case enabling_minor_extramarital_union_aggravated)
   (implies enabling_minor_extramarital_union_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen108 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ) ?gen109 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ) ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ( positive-support $?gen113 & : ( not ( subseq-pos ( create$ rule8 ?gen108 ?gen109 ?gen110 $$$ $?gen113 ) ) ) ) ) ( test ( eq ( class ?gen111 ) enabling_minor_extramarital_union_aggravated ) ) => ( calc ( bind $?gen116 ( create$ rule8 ?gen108 ?gen109 ?gen110 $?gen113 ) ) ) ?gen111 <- ( enabling_minor_extramarital_union_aggravated ( positive-support $?gen116 ) )"))

([rule7-defeated-dot] of derived-attribute-rule
   (pos-name rule7-defeated-dot-gen852)
   (depends-on declare enabling_minor_extramarital_union lc:case lc:case)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7] ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( negative-defeated $?gen101 & : ( subseq-pos ( create$ rule7-defeated rule8 $$$ $?gen101 ) ) ) ) ( test ( eq ( class ?gen98 ) enabling_minor_extramarital_union ) ) ( not ( and ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ) ) => ( calc ( bind $?gen100 ( delete-member$ $?gen101 ( create$ rule7-defeated rule8 ) ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( negative-defeated $?gen100 ) )"))

([rule7-defeated] of derived-attribute-rule
   (pos-name rule7-defeated-gen854)
   (depends-on declare lc:case lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7] ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( negative-defeated $?gen101 & : ( not ( subseq-pos ( create$ rule7-defeated rule8 $$$ $?gen101 ) ) ) ) ) ( test ( eq ( class ?gen98 ) enabling_minor_extramarital_union ) ) => ( calc ( bind $?gen100 ( create$ rule7-defeated rule8 $?gen101 ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( negative-defeated $?gen100 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen856)
   (depends-on declare enabling_minor_extramarital_union lc:case lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen98 ) enabling_minor_extramarital_union ) ) ( not ( and ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( negative ~ 2 ) ( positive-overruled $?gen100 & : ( not ( member$ rule7 $?gen100 ) ) ) ) ) ) => ?gen98 <- ( enabling_minor_extramarital_union ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen858)
   (depends-on declare lc:case lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen100 & : ( not ( member$ rule7 $?gen100 ) ) ) ) ( test ( eq ( class ?gen98 ) enabling_minor_extramarital_union ) ) => ?gen98 <- ( enabling_minor_extramarital_union ( positive 1 ) ( positive-derivator rule7 ?gen105 ?gen107 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen860)
   (depends-on declare enabling_minor_extramarital_union lc:case lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( negative-support $?gen101 ) ( negative-overruled $?gen102 & : ( subseq-pos ( create$ rule7-overruled $?gen101 $$$ $?gen102 ) ) ) ) ( test ( eq ( class ?gen98 ) enabling_minor_extramarital_union ) ) ( not ( and ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( positive-defeated $?gen100 & : ( not ( member$ rule7 $?gen100 ) ) ) ) ) ) => ( calc ( bind $?gen103 ( delete-member$ $?gen102 ( create$ rule7-overruled $?gen101 ) ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( negative-overruled $?gen103 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen862)
   (depends-on declare lc:case lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen105 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ( positive ?gen104 & : ( >= ?gen104 1 ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( negative-support $?gen101 ) ( negative-overruled $?gen102 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen101 $$$ $?gen102 ) ) ) ) ( positive-defeated $?gen100 & : ( not ( member$ rule7 $?gen100 ) ) ) ) ( test ( eq ( class ?gen98 ) enabling_minor_extramarital_union ) ) => ( calc ( bind $?gen103 ( create$ rule7-overruled $?gen101 $?gen102 ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( negative-overruled $?gen103 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen864)
   (depends-on declare lc:case lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ) ?gen98 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ( positive-support $?gen100 & : ( not ( subseq-pos ( create$ rule7 ?gen96 ?gen97 $$$ $?gen100 ) ) ) ) ) ( test ( eq ( class ?gen98 ) enabling_minor_extramarital_union ) ) => ( calc ( bind $?gen103 ( create$ rule7 ?gen96 ?gen97 $?gen100 ) ) ) ?gen98 <- ( enabling_minor_extramarital_union ( positive-support $?gen103 ) )"))

([rule6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6-defeasibly-dot-gen866)
   (depends-on declare extramarital_union_with_minor_basic lc:case lc:case extramarital_union_with_minor_basic)
   (implies extramarital_union_with_minor_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6] ) ) ) ?gen86 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule6 $? ) ) ( test ( eq ( class ?gen86 ) extramarital_union_with_minor_basic ) ) ( not ( and ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_adult \"yes\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lives_in_extramarital_union_with_minor \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( extramarital_union_with_minor_basic ( negative ~ 2 ) ( positive-overruled $?gen88 & : ( not ( member$ rule6 $?gen88 ) ) ) ) ) ) => ?gen86 <- ( extramarital_union_with_minor_basic ( positive 0 ) )"))

([rule6-defeasibly] of derived-attribute-rule
   (pos-name rule6-defeasibly-gen868)
   (depends-on declare lc:case lc:case extramarital_union_with_minor_basic)
   (implies extramarital_union_with_minor_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_adult \"yes\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lives_in_extramarital_union_with_minor \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen88 & : ( not ( member$ rule6 $?gen88 ) ) ) ) ( test ( eq ( class ?gen86 ) extramarital_union_with_minor_basic ) ) => ?gen86 <- ( extramarital_union_with_minor_basic ( positive 1 ) ( positive-derivator rule6 ?gen93 ?gen95 ) )"))

([rule6-overruled-dot] of derived-attribute-rule
   (pos-name rule6-overruled-dot-gen870)
   (depends-on declare extramarital_union_with_minor_basic lc:case lc:case extramarital_union_with_minor_basic)
   (implies extramarital_union_with_minor_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6] ) ) ) ?gen86 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( negative-support $?gen89 ) ( negative-overruled $?gen90 & : ( subseq-pos ( create$ rule6-overruled $?gen89 $$$ $?gen90 ) ) ) ) ( test ( eq ( class ?gen86 ) extramarital_union_with_minor_basic ) ) ( not ( and ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_adult \"yes\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lives_in_extramarital_union_with_minor \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( extramarital_union_with_minor_basic ( positive-defeated $?gen88 & : ( not ( member$ rule6 $?gen88 ) ) ) ) ) ) => ( calc ( bind $?gen91 ( delete-member$ $?gen90 ( create$ rule6-overruled $?gen89 ) ) ) ) ?gen86 <- ( extramarital_union_with_minor_basic ( negative-overruled $?gen91 ) )"))

([rule6-overruled] of derived-attribute-rule
   (pos-name rule6-overruled-gen872)
   (depends-on declare lc:case lc:case extramarital_union_with_minor_basic)
   (implies extramarital_union_with_minor_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6] ) ) ) ?gen93 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_adult \"yes\" ) ( positive ?gen92 & : ( >= ?gen92 1 ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lives_in_extramarital_union_with_minor \"yes\" ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen86 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( negative-support $?gen89 ) ( negative-overruled $?gen90 & : ( not ( subseq-pos ( create$ rule6-overruled $?gen89 $$$ $?gen90 ) ) ) ) ( positive-defeated $?gen88 & : ( not ( member$ rule6 $?gen88 ) ) ) ) ( test ( eq ( class ?gen86 ) extramarital_union_with_minor_basic ) ) => ( calc ( bind $?gen91 ( create$ rule6-overruled $?gen89 $?gen90 ) ) ) ?gen86 <- ( extramarital_union_with_minor_basic ( negative-overruled $?gen91 ) )"))

([rule6-support] of derived-attribute-rule
   (pos-name rule6-support-gen874)
   (depends-on declare lc:case lc:case extramarital_union_with_minor_basic)
   (implies extramarital_union_with_minor_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6] ) ) ) ?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_adult \"yes\" ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lives_in_extramarital_union_with_minor \"yes\" ) ) ?gen86 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ( positive-support $?gen88 & : ( not ( subseq-pos ( create$ rule6 ?gen84 ?gen85 $$$ $?gen88 ) ) ) ) ) ( test ( eq ( class ?gen86 ) extramarital_union_with_minor_basic ) ) => ( calc ( bind $?gen91 ( create$ rule6 ?gen84 ?gen85 $?gen88 ) ) ) ?gen86 <- ( extramarital_union_with_minor_basic ( positive-support $?gen91 ) )"))

([rule5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5-defeasibly-dot-gen876)
   (depends-on declare family_obligation_violation_aggravated_death lc:case lc:case lc:case family_obligation_violation_aggravated_death)
   (implies family_obligation_violation_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5] ) ) ) ?gen72 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule5 $? ) ) ( test ( eq ( class ?gen72 ) family_obligation_violation_aggravated_death ) ) ( not ( and ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen72 <- ( family_obligation_violation_aggravated_death ( negative ~ 2 ) ( positive-overruled $?gen74 & : ( not ( member$ rule5 $?gen74 ) ) ) ) ) ) => ?gen72 <- ( family_obligation_violation_aggravated_death ( positive 0 ) )"))

([rule5-defeasibly] of derived-attribute-rule
   (pos-name rule5-defeasibly-gen878)
   (depends-on declare lc:case lc:case lc:case family_obligation_violation_aggravated_death)
   (implies family_obligation_violation_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5] ) ) ) ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen72 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen74 & : ( not ( member$ rule5 $?gen74 ) ) ) ) ( test ( eq ( class ?gen72 ) family_obligation_violation_aggravated_death ) ) => ?gen72 <- ( family_obligation_violation_aggravated_death ( positive 1 ) ( positive-derivator rule5 ?gen79 ?gen81 ?gen83 ) )"))

([rule5-overruled-dot] of derived-attribute-rule
   (pos-name rule5-overruled-dot-gen880)
   (depends-on declare family_obligation_violation_aggravated_death lc:case lc:case lc:case family_obligation_violation_aggravated_death)
   (implies family_obligation_violation_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5] ) ) ) ?gen72 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ( negative-support $?gen75 ) ( negative-overruled $?gen76 & : ( subseq-pos ( create$ rule5-overruled $?gen75 $$$ $?gen76 ) ) ) ) ( test ( eq ( class ?gen72 ) family_obligation_violation_aggravated_death ) ) ( not ( and ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen72 <- ( family_obligation_violation_aggravated_death ( positive-defeated $?gen74 & : ( not ( member$ rule5 $?gen74 ) ) ) ) ) ) => ( calc ( bind $?gen77 ( delete-member$ $?gen76 ( create$ rule5-overruled $?gen75 ) ) ) ) ?gen72 <- ( family_obligation_violation_aggravated_death ( negative-overruled $?gen77 ) )"))

([rule5-overruled] of derived-attribute-rule
   (pos-name rule5-overruled-gen882)
   (depends-on declare lc:case lc:case lc:case family_obligation_violation_aggravated_death)
   (implies family_obligation_violation_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5] ) ) ) ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen72 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ( negative-support $?gen75 ) ( negative-overruled $?gen76 & : ( not ( subseq-pos ( create$ rule5-overruled $?gen75 $$$ $?gen76 ) ) ) ) ( positive-defeated $?gen74 & : ( not ( member$ rule5 $?gen74 ) ) ) ) ( test ( eq ( class ?gen72 ) family_obligation_violation_aggravated_death ) ) => ( calc ( bind $?gen77 ( create$ rule5-overruled $?gen75 $?gen76 ) ) ) ?gen72 <- ( family_obligation_violation_aggravated_death ( negative-overruled $?gen77 ) )"))

([rule5-support] of derived-attribute-rule
   (pos-name rule5-support-gen884)
   (depends-on declare lc:case lc:case lc:case family_obligation_violation_aggravated_death)
   (implies family_obligation_violation_aggravated_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5] ) ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ?gen70 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ) ?gen72 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ( positive-support $?gen74 & : ( not ( subseq-pos ( create$ rule5 ?gen69 ?gen70 ?gen71 $$$ $?gen74 ) ) ) ) ) ( test ( eq ( class ?gen72 ) family_obligation_violation_aggravated_death ) ) => ( calc ( bind $?gen77 ( create$ rule5 ?gen69 ?gen70 ?gen71 $?gen74 ) ) ) ?gen72 <- ( family_obligation_violation_aggravated_death ( positive-support $?gen77 ) )"))

([rule4-defeated-dot] of derived-attribute-rule
   (pos-name rule4-defeated-dot-gen886)
   (depends-on declare family_obligation_violation_aggravated_health lc:case lc:case lc:case)
   (implies family_obligation_violation_aggravated_health)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4] ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( negative-defeated $?gen60 & : ( subseq-pos ( create$ rule4-defeated rule5 $$$ $?gen60 ) ) ) ) ( test ( eq ( class ?gen57 ) family_obligation_violation_aggravated_health ) ) ( not ( and ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_health_damage_occurred \"yes\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ) ) => ( calc ( bind $?gen59 ( delete-member$ $?gen60 ( create$ rule4-defeated rule5 ) ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( negative-defeated $?gen59 ) )"))

([rule4-defeated] of derived-attribute-rule
   (pos-name rule4-defeated-gen888)
   (depends-on declare lc:case lc:case lc:case family_obligation_violation_aggravated_health)
   (implies family_obligation_violation_aggravated_health)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4] ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_health_damage_occurred \"yes\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( negative-defeated $?gen60 & : ( not ( subseq-pos ( create$ rule4-defeated rule5 $$$ $?gen60 ) ) ) ) ) ( test ( eq ( class ?gen57 ) family_obligation_violation_aggravated_health ) ) => ( calc ( bind $?gen59 ( create$ rule4-defeated rule5 $?gen60 ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( negative-defeated $?gen59 ) )"))

([rule4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4-defeasibly-dot-gen890)
   (depends-on declare family_obligation_violation_aggravated_health lc:case lc:case lc:case family_obligation_violation_aggravated_health)
   (implies family_obligation_violation_aggravated_health)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4] ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule4 $? ) ) ( test ( eq ( class ?gen57 ) family_obligation_violation_aggravated_health ) ) ( not ( and ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_health_damage_occurred \"yes\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( negative ~ 2 ) ( positive-overruled $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ) ) => ?gen57 <- ( family_obligation_violation_aggravated_health ( positive 0 ) )"))

([rule4-defeasibly] of derived-attribute-rule
   (pos-name rule4-defeasibly-gen892)
   (depends-on declare lc:case lc:case lc:case family_obligation_violation_aggravated_health)
   (implies family_obligation_violation_aggravated_health)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4] ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_health_damage_occurred \"yes\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ( test ( eq ( class ?gen57 ) family_obligation_violation_aggravated_health ) ) => ?gen57 <- ( family_obligation_violation_aggravated_health ( positive 1 ) ( positive-derivator rule4 ?gen64 ?gen66 ?gen68 ) )"))

([rule4-overruled-dot] of derived-attribute-rule
   (pos-name rule4-overruled-dot-gen894)
   (depends-on declare family_obligation_violation_aggravated_health lc:case lc:case lc:case family_obligation_violation_aggravated_health)
   (implies family_obligation_violation_aggravated_health)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4] ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( negative-support $?gen60 ) ( negative-overruled $?gen61 & : ( subseq-pos ( create$ rule4-overruled $?gen60 $$$ $?gen61 ) ) ) ) ( test ( eq ( class ?gen57 ) family_obligation_violation_aggravated_health ) ) ( not ( and ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_health_damage_occurred \"yes\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( positive-defeated $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ) ) => ( calc ( bind $?gen62 ( delete-member$ $?gen61 ( create$ rule4-overruled $?gen60 ) ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( negative-overruled $?gen62 ) )"))

([rule4-overruled] of derived-attribute-rule
   (pos-name rule4-overruled-gen896)
   (depends-on declare lc:case lc:case lc:case family_obligation_violation_aggravated_health)
   (implies family_obligation_violation_aggravated_health)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4] ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_health_damage_occurred \"yes\" ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( negative-support $?gen60 ) ( negative-overruled $?gen61 & : ( not ( subseq-pos ( create$ rule4-overruled $?gen60 $$$ $?gen61 ) ) ) ) ( positive-defeated $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ( test ( eq ( class ?gen57 ) family_obligation_violation_aggravated_health ) ) => ( calc ( bind $?gen62 ( create$ rule4-overruled $?gen60 $?gen61 ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( negative-overruled $?gen62 ) )"))

([rule4-support] of derived-attribute-rule
   (pos-name rule4-support-gen898)
   (depends-on declare lc:case lc:case lc:case family_obligation_violation_aggravated_health)
   (implies family_obligation_violation_aggravated_health)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4] ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_health_damage_occurred \"yes\" ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ( positive-support $?gen59 & : ( not ( subseq-pos ( create$ rule4 ?gen54 ?gen55 ?gen56 $$$ $?gen59 ) ) ) ) ) ( test ( eq ( class ?gen57 ) family_obligation_violation_aggravated_health ) ) => ( calc ( bind $?gen62 ( create$ rule4 ?gen54 ?gen55 ?gen56 $?gen59 ) ) ) ?gen57 <- ( family_obligation_violation_aggravated_health ( positive-support $?gen62 ) )"))

([rule3-defeated-dot] of derived-attribute-rule
   (pos-name rule3-defeated-dot-gen900)
   (depends-on declare family_obligation_violation_basic lc:case lc:case)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule3] ) ) ) ?gen44 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( negative-defeated $?gen47 & : ( subseq-pos ( create$ rule3-defeated rule4 rule5 $$$ $?gen47 ) ) ) ) ( test ( eq ( class ?gen44 ) family_obligation_violation_basic ) ) ( not ( and ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ) ) => ( calc ( bind $?gen46 ( delete-member$ $?gen47 ( create$ rule3-defeated rule4 rule5 ) ) ) ) ?gen44 <- ( family_obligation_violation_basic ( negative-defeated $?gen46 ) )"))

([rule3-defeated] of derived-attribute-rule
   (pos-name rule3-defeated-gen902)
   (depends-on declare lc:case lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( negative-defeated $?gen47 & : ( not ( subseq-pos ( create$ rule3-defeated rule4 rule5 $$$ $?gen47 ) ) ) ) ) ( test ( eq ( class ?gen44 ) family_obligation_violation_basic ) ) => ( calc ( bind $?gen46 ( create$ rule3-defeated rule4 rule5 $?gen47 ) ) ) ?gen44 <- ( family_obligation_violation_basic ( negative-defeated $?gen46 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen904)
   (depends-on declare family_obligation_violation_basic lc:case lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen44 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen44 ) family_obligation_violation_basic ) ) ( not ( and ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( family_obligation_violation_basic ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ) ) => ?gen44 <- ( family_obligation_violation_basic ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen906)
   (depends-on declare lc:case lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) family_obligation_violation_basic ) ) => ?gen44 <- ( family_obligation_violation_basic ( positive 1 ) ( positive-derivator rule3 ?gen51 ?gen53 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen908)
   (depends-on declare family_obligation_violation_basic lc:case lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen44 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( subseq-pos ( create$ rule3-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( test ( eq ( class ?gen44 ) family_obligation_violation_basic ) ) ( not ( and ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( family_obligation_violation_basic ( positive-defeated $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ) ) => ( calc ( bind $?gen49 ( delete-member$ $?gen48 ( create$ rule3-overruled $?gen47 ) ) ) ) ?gen44 <- ( family_obligation_violation_basic ( negative-overruled $?gen49 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen910)
   (depends-on declare lc:case lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ?gen44 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( positive-defeated $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) family_obligation_violation_basic ) ) => ( calc ( bind $?gen49 ( create$ rule3-overruled $?gen47 $?gen48 ) ) ) ?gen44 <- ( family_obligation_violation_basic ( negative-overruled $?gen49 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen912)
   (depends-on declare lc:case lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ?gen43 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ) ?gen44 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ( positive-support $?gen46 & : ( not ( subseq-pos ( create$ rule3 ?gen42 ?gen43 $$$ $?gen46 ) ) ) ) ) ( test ( eq ( class ?gen44 ) family_obligation_violation_basic ) ) => ( calc ( bind $?gen49 ( create$ rule3 ?gen42 ?gen43 $?gen46 ) ) ) ?gen44 <- ( family_obligation_violation_basic ( positive-support $?gen49 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen914)
   (depends-on declare failure_to_provide_support_aggravated lc:case lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen30 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen30 ) failure_to_provide_support_aggravated ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_occurred \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( failure_to_provide_support_aggravated ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ) ) => ?gen30 <- ( failure_to_provide_support_aggravated ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen916)
   (depends-on declare lc:case lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_occurred \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) failure_to_provide_support_aggravated ) ) => ?gen30 <- ( failure_to_provide_support_aggravated ( positive 1 ) ( positive-derivator rule2 ?gen37 ?gen39 ?gen41 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen918)
   (depends-on declare failure_to_provide_support_aggravated lc:case lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen30 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( subseq-pos ( create$ rule2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( test ( eq ( class ?gen30 ) failure_to_provide_support_aggravated ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_occurred \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( failure_to_provide_support_aggravated ( positive-defeated $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ) ) => ( calc ( bind $?gen35 ( delete-member$ $?gen34 ( create$ rule2-overruled $?gen33 ) ) ) ) ?gen30 <- ( failure_to_provide_support_aggravated ( negative-overruled $?gen35 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen920)
   (depends-on declare lc:case lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_occurred \"yes\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( positive-defeated $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) failure_to_provide_support_aggravated ) ) => ( calc ( bind $?gen35 ( create$ rule2-overruled $?gen33 $?gen34 ) ) ) ?gen30 <- ( failure_to_provide_support_aggravated ( negative-overruled $?gen35 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen922)
   (depends-on declare lc:case lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_occurred \"yes\" ) ) ?gen30 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ( positive-support $?gen32 & : ( not ( subseq-pos ( create$ rule2 ?gen27 ?gen28 ?gen29 $$$ $?gen32 ) ) ) ) ) ( test ( eq ( class ?gen30 ) failure_to_provide_support_aggravated ) ) => ( calc ( bind $?gen35 ( create$ rule2 ?gen27 ?gen28 ?gen29 $?gen32 ) ) ) ?gen30 <- ( failure_to_provide_support_aggravated ( positive-support $?gen35 ) )"))

([rule1-defeated-dot] of derived-attribute-rule
   (pos-name rule1-defeated-dot-gen924)
   (depends-on declare failure_to_provide_support_basic lc:case lc:case)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule1] ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( negative-defeated $?gen20 & : ( subseq-pos ( create$ rule1-defeated rule2 $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen17 ) failure_to_provide_support_basic ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ) ) => ( calc ( bind $?gen19 ( delete-member$ $?gen20 ( create$ rule1-defeated rule2 ) ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( negative-defeated $?gen19 ) )"))

([rule1-defeated] of derived-attribute-rule
   (pos-name rule1-defeated-gen926)
   (depends-on declare lc:case lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( negative-defeated $?gen20 & : ( not ( subseq-pos ( create$ rule1-defeated rule2 $$$ $?gen20 ) ) ) ) ) ( test ( eq ( class ?gen17 ) failure_to_provide_support_basic ) ) => ( calc ( bind $?gen19 ( create$ rule1-defeated rule2 $?gen20 ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( negative-defeated $?gen19 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen928)
   (depends-on declare failure_to_provide_support_basic lc:case lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen17 ) failure_to_provide_support_basic ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( failure_to_provide_support_basic ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen930)
   (depends-on declare lc:case lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) failure_to_provide_support_basic ) ) => ?gen17 <- ( failure_to_provide_support_basic ( positive 1 ) ( positive-derivator rule1 ?gen24 ?gen26 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen932)
   (depends-on declare failure_to_provide_support_basic lc:case lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) failure_to_provide_support_basic ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( positive-defeated $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule1-overruled $?gen20 ) ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( negative-overruled $?gen22 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen934)
   (depends-on declare lc:case lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) failure_to_provide_support_basic ) ) => ( calc ( bind $?gen22 ( create$ rule1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( negative-overruled $?gen22 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen936)
   (depends-on declare lc:case lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ) ?gen17 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) failure_to_provide_support_basic ) ) => ( calc ( bind $?gen22 ( create$ rule1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( failure_to_provide_support_basic ( positive-support $?gen22 ) )"))

([pen22-deductive] of ntm-deductive-rule
   (pos-name pen22-deductive-gen485)
   (depends-on domestic_violence_protection_violation max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen435 <- ( domestic_violence_protection_violation ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 365 ) ) ) => ( max_imprisonment ( value 365 ) )")
   (production-rule "( defrule pen22-deductive-gen485 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen435 ) ( is-a domestic_violence_protection_violation ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 365 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 365 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 365 ) ) ) ( make-instance ?oid of max_imprisonment ( value 365 ) ) )")
   (derived-class max_imprisonment))

([pen21-deductive] of ntm-deductive-rule
   (pos-name pen21-deductive-gen484)
   (depends-on domestic_violence_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen426 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5475 ) ) ) => ( max_imprisonment ( value 5475 ) )")
   (production-rule "( defrule pen21-deductive-gen484 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen426 ) ( is-a domestic_violence_aggravated_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5475 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5475 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5475 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5475 ) ) )")
   (derived-class max_imprisonment))

([pen20-deductive] of ntm-deductive-rule
   (pos-name pen20-deductive-gen483)
   (depends-on domestic_violence_aggravated_death min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen417 <- ( domestic_violence_aggravated_death ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1825 ) ) ) => ( min_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen20-deductive-gen483 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen417 ) ( is-a domestic_violence_aggravated_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1825 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1825 ) ) )")
   (derived-class min_imprisonment))

([pen19-deductive] of ntm-deductive-rule
   (pos-name pen19-deductive-gen482)
   (depends-on domestic_violence_aggravated_severe max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen408 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 2920 ) ) ) => ( max_imprisonment ( value 2920 ) )")
   (production-rule "( defrule pen19-deductive-gen482 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen408 ) ( is-a domestic_violence_aggravated_severe ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 2920 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 2920 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 2920 ) ) ) ( make-instance ?oid of max_imprisonment ( value 2920 ) ) )")
   (derived-class max_imprisonment))

([pen18_ps14-deductive] of ntm-deductive-rule
   (pos-name pen18_ps14-deductive-gen481)
   (depends-on domestic_violence_aggravated_severe min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen399 <- ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 365 ) ) ) => ( min_imprisonment ( value 365 ) )")
   (production-rule "( defrule pen18_ps14-deductive-gen481 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen399 ) ( is-a domestic_violence_aggravated_severe ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 365 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 365 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 365 ) ) ) ( make-instance ?oid of min_imprisonment ( value 365 ) ) )")
   (derived-class min_imprisonment))

([pen17_ps13-deductive] of ntm-deductive-rule
   (pos-name pen17_ps13-deductive-gen480)
   (depends-on domestic_violence_aggravated_weapon max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen390 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1825 ) ) ) => ( max_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen17_ps13-deductive-gen480 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen390 ) ( is-a domestic_violence_aggravated_weapon ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1825 ) ) )")
   (derived-class max_imprisonment))

([pen18-deductive] of ntm-deductive-rule
   (pos-name pen18-deductive-gen479)
   (depends-on domestic_violence_aggravated_weapon min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen381 <- ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 365 ) ) ) => ( min_imprisonment ( value 365 ) )")
   (production-rule "( defrule pen18-deductive-gen479 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen381 ) ( is-a domestic_violence_aggravated_weapon ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 365 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 365 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 365 ) ) ) ( make-instance ?oid of min_imprisonment ( value 365 ) ) )")
   (derived-class min_imprisonment))

([pen17-deductive] of ntm-deductive-rule
   (pos-name pen17-deductive-gen478)
   (depends-on domestic_violence_basic max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen372 <- ( domestic_violence_basic ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1825 ) ) ) => ( max_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen17-deductive-gen478 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen372 ) ( is-a domestic_violence_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1825 ) ) )")
   (derived-class max_imprisonment))

([pen16-deductive] of ntm-deductive-rule
   (pos-name pen16-deductive-gen477)
   (depends-on domestic_violence_basic min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen363 <- ( domestic_violence_basic ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 180 ) ) ) => ( min_imprisonment ( value 180 ) )")
   (production-rule "( defrule pen16-deductive-gen477 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen363 ) ( is-a domestic_violence_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 180 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 180 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 180 ) ) ) ( make-instance ?oid of min_imprisonment ( value 180 ) ) )")
   (derived-class min_imprisonment))

([pen15-deductive] of ntm-deductive-rule
   (pos-name pen15-deductive-gen476)
   (depends-on child_abduction_aggravated max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen354 <- ( child_abduction_aggravated ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1825 ) ) ) => ( max_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen15-deductive-gen476 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen354 ) ( is-a child_abduction_aggravated ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1825 ) ) )")
   (derived-class max_imprisonment))

([pen14-deductive] of ntm-deductive-rule
   (pos-name pen14-deductive-gen475)
   (depends-on child_abduction_aggravated min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen345 <- ( child_abduction_aggravated ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 90 ) ) ) => ( min_imprisonment ( value 90 ) )")
   (production-rule "( defrule pen14-deductive-gen475 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen345 ) ( is-a child_abduction_aggravated ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 90 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ( make-instance ?oid of min_imprisonment ( value 90 ) ) )")
   (derived-class min_imprisonment))

([pen13-deductive] of ntm-deductive-rule
   (pos-name pen13-deductive-gen474)
   (depends-on preventing_child_contact max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen336 <- ( preventing_child_contact ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 365 ) ) ) => ( max_imprisonment ( value 365 ) )")
   (production-rule "( defrule pen13-deductive-gen474 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen336 ) ( is-a preventing_child_contact ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 365 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 365 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 365 ) ) ) ( make-instance ?oid of max_imprisonment ( value 365 ) ) )")
   (derived-class max_imprisonment))

([pen12-deductive] of ntm-deductive-rule
   (pos-name pen12-deductive-gen473)
   (depends-on child_abduction_basic max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen327 <- ( child_abduction_basic ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 730 ) ) ) => ( max_imprisonment ( value 730 ) )")
   (production-rule "( defrule pen12-deductive-gen473 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen327 ) ( is-a child_abduction_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 730 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 730 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 730 ) ) ) ( make-instance ?oid of max_imprisonment ( value 730 ) ) )")
   (derived-class max_imprisonment))

([pen11-deductive] of ntm-deductive-rule
   (pos-name pen11-deductive-gen472)
   (depends-on enabling_minor_extramarital_union_aggravated max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen318 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1825 ) ) ) => ( max_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen11-deductive-gen472 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen318 ) ( is-a enabling_minor_extramarital_union_aggravated ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1825 ) ) )")
   (derived-class max_imprisonment))

([pen10-deductive] of ntm-deductive-rule
   (pos-name pen10-deductive-gen471)
   (depends-on enabling_minor_extramarital_union_aggravated min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen309 <- ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 180 ) ) ) => ( min_imprisonment ( value 180 ) )")
   (production-rule "( defrule pen10-deductive-gen471 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen309 ) ( is-a enabling_minor_extramarital_union_aggravated ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 180 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 180 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 180 ) ) ) ( make-instance ?oid of min_imprisonment ( value 180 ) ) )")
   (derived-class min_imprisonment))

([pen9_ps7-deductive] of ntm-deductive-rule
   (pos-name pen9_ps7-deductive-gen470)
   (depends-on enabling_minor_extramarital_union max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen300 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1095 ) ) ) => ( max_imprisonment ( value 1095 ) )")
   (production-rule "( defrule pen9_ps7-deductive-gen470 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen300 ) ( is-a enabling_minor_extramarital_union ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1095 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1095 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1095 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1095 ) ) )")
   (derived-class max_imprisonment))

([pen8_ps7-deductive] of ntm-deductive-rule
   (pos-name pen8_ps7-deductive-gen469)
   (depends-on enabling_minor_extramarital_union min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen291 <- ( enabling_minor_extramarital_union ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 90 ) ) ) => ( min_imprisonment ( value 90 ) )")
   (production-rule "( defrule pen8_ps7-deductive-gen469 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen291 ) ( is-a enabling_minor_extramarital_union ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 90 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ( make-instance ?oid of min_imprisonment ( value 90 ) ) )")
   (derived-class min_imprisonment))

([pen9_ps6-deductive] of ntm-deductive-rule
   (pos-name pen9_ps6-deductive-gen468)
   (depends-on extramarital_union_with_minor_basic max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen282 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1095 ) ) ) => ( max_imprisonment ( value 1095 ) )")
   (production-rule "( defrule pen9_ps6-deductive-gen468 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen282 ) ( is-a extramarital_union_with_minor_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1095 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1095 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1095 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1095 ) ) )")
   (derived-class max_imprisonment))

([pen8_ps6-deductive] of ntm-deductive-rule
   (pos-name pen8_ps6-deductive-gen467)
   (depends-on extramarital_union_with_minor_basic min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen273 <- ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 90 ) ) ) => ( min_imprisonment ( value 90 ) )")
   (production-rule "( defrule pen8_ps6-deductive-gen467 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen273 ) ( is-a extramarital_union_with_minor_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 90 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ( make-instance ?oid of min_imprisonment ( value 90 ) ) )")
   (derived-class min_imprisonment))

([pen7-deductive] of ntm-deductive-rule
   (pos-name pen7-deductive-gen466)
   (depends-on family_obligation_violation_aggravated_death max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen264 <- ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 2920 ) ) ) => ( max_imprisonment ( value 2920 ) )")
   (production-rule "( defrule pen7-deductive-gen466 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen264 ) ( is-a family_obligation_violation_aggravated_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 2920 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 2920 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 2920 ) ) ) ( make-instance ?oid of max_imprisonment ( value 2920 ) ) )")
   (derived-class max_imprisonment))

([pen6-deductive] of ntm-deductive-rule
   (pos-name pen6-deductive-gen465)
   (depends-on family_obligation_violation_aggravated_health min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen255 <- ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 365 ) ) ) => ( min_imprisonment ( value 365 ) )")
   (production-rule "( defrule pen6-deductive-gen465 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen255 ) ( is-a family_obligation_violation_aggravated_health ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 365 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 365 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 365 ) ) ) ( make-instance ?oid of min_imprisonment ( value 365 ) ) )")
   (derived-class min_imprisonment))

([pen5-deductive] of ntm-deductive-rule
   (pos-name pen5-deductive-gen464)
   (depends-on family_obligation_violation_basic max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen246 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1095 ) ) ) => ( max_imprisonment ( value 1095 ) )")
   (production-rule "( defrule pen5-deductive-gen464 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen246 ) ( is-a family_obligation_violation_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1095 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1095 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1095 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1095 ) ) )")
   (derived-class max_imprisonment))

([pen4-deductive] of ntm-deductive-rule
   (pos-name pen4-deductive-gen463)
   (depends-on family_obligation_violation_basic min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen237 <- ( family_obligation_violation_basic ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 90 ) ) ) => ( min_imprisonment ( value 90 ) )")
   (production-rule "( defrule pen4-deductive-gen463 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen237 ) ( is-a family_obligation_violation_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 90 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 90 ) ) ) ( make-instance ?oid of min_imprisonment ( value 90 ) ) )")
   (derived-class min_imprisonment))

([pen3-deductive] of ntm-deductive-rule
   (pos-name pen3-deductive-gen462)
   (depends-on failure_to_provide_support_aggravated max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen228 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1825 ) ) ) => ( max_imprisonment ( value 1825 ) )")
   (production-rule "( defrule pen3-deductive-gen462 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen228 ) ( is-a failure_to_provide_support_aggravated ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1825 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1825 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1825 ) ) )")
   (derived-class max_imprisonment))

([pen2-deductive] of ntm-deductive-rule
   (pos-name pen2-deductive-gen461)
   (depends-on failure_to_provide_support_aggravated min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen219 <- ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 180 ) ) ) => ( min_imprisonment ( value 180 ) )")
   (production-rule "( defrule pen2-deductive-gen461 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen219 ) ( is-a failure_to_provide_support_aggravated ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 180 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 180 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 180 ) ) ) ( make-instance ?oid of min_imprisonment ( value 180 ) ) )")
   (derived-class min_imprisonment))

([pen1-deductive] of ntm-deductive-rule
   (pos-name pen1-deductive-gen460)
   (depends-on failure_to_provide_support_basic max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen210 <- ( failure_to_provide_support_basic ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 730 ) ) ) => ( max_imprisonment ( value 730 ) )")
   (production-rule "( defrule pen1-deductive-gen460 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen210 ) ( is-a failure_to_provide_support_basic ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 730 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 730 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 730 ) ) ) ( make-instance ?oid of max_imprisonment ( value 730 ) ) )")
   (derived-class max_imprisonment))

([rule16-deductive] of ntm-deductive-rule
   (pos-name rule16-deductive-gen459)
   (depends-on lc:case domestic_violence_protection_violation)
   (implies domestic_violence_protection_violation)
   (deductive-rule "?gen201 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_domestic_violence_protection_order \"yes\" ) ) ( not ( domestic_violence_protection_violation ( defendant ?Defendant ) ) ) => ( domestic_violence_protection_violation ( defendant ?Defendant ) )")
   (production-rule "( defrule rule16-deductive-gen459 ( declare ( salience ( calc-salience domestic_violence_protection_violation ) ) ) ( run-deductive-rules ) ( object ( name ?gen201 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_domestic_violence_protection_order \"yes\" ) ) ( not ( object ( is-a domestic_violence_protection_violation ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat domestic_violence_protection_violation ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat domestic_violence_protection_violation ?Defendant ) ) ) ( make-instance ?oid of domestic_violence_protection_violation ( defendant ?Defendant ) ) )")
   (derived-class domestic_violence_protection_violation))

([rule15-deductive] of ntm-deductive-rule
   (pos-name rule15-deductive-gen458)
   (depends-on lc:case lc:case lc:case domestic_violence_aggravated_death)
   (implies domestic_violence_aggravated_death)
   (deductive-rule "?gen186 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen187 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ?gen188 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ) ( not ( domestic_violence_aggravated_death ( defendant ?Defendant ) ) ) => ( domestic_violence_aggravated_death ( defendant ?Defendant ) )")
   (production-rule "( defrule rule15-deductive-gen458 ( declare ( salience ( calc-salience domestic_violence_aggravated_death ) ) ) ( run-deductive-rules ) ( object ( name ?gen186 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ( object ( name ?gen187 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ( object ( name ?gen188 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ) ( not ( object ( is-a domestic_violence_aggravated_death ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_death ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_death ?Defendant ) ) ) ( make-instance ?oid of domestic_violence_aggravated_death ( defendant ?Defendant ) ) )")
   (derived-class domestic_violence_aggravated_death))

([rule14-deductive] of ntm-deductive-rule
   (pos-name rule14-deductive-gen457)
   (depends-on lc:case lc:case domestic_violence_aggravated_severe)
   (implies domestic_violence_aggravated_severe)
   (deductive-rule "?gen174 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen175 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ( not ( domestic_violence_aggravated_severe ( defendant ?Defendant ) ) ) => ( domestic_violence_aggravated_severe ( defendant ?Defendant ) )")
   (production-rule "( defrule rule14-deductive-gen457 ( declare ( salience ( calc-salience domestic_violence_aggravated_severe ) ) ) ( run-deductive-rules ) ( object ( name ?gen174 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ( object ( name ?gen175 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:caused_severe_injury_or_against_child \"yes\" ) ) ( not ( object ( is-a domestic_violence_aggravated_severe ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_severe ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_severe ?Defendant ) ) ) ( make-instance ?oid of domestic_violence_aggravated_severe ( defendant ?Defendant ) ) )")
   (derived-class domestic_violence_aggravated_severe))

([rule13-deductive] of ntm-deductive-rule
   (pos-name rule13-deductive-gen456)
   (depends-on lc:case lc:case domestic_violence_aggravated_weapon)
   (implies domestic_violence_aggravated_weapon)
   (deductive-rule "?gen162 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ?gen163 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ) ( not ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) ) => ( domestic_violence_aggravated_weapon ( defendant ?Defendant ) )")
   (production-rule "( defrule rule13-deductive-gen456 ( declare ( salience ( calc-salience domestic_violence_aggravated_weapon ) ) ) ( run-deductive-rules ) ( object ( name ?gen162 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ( object ( name ?gen163 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:used_weapon_or_child_present \"yes\" ) ) ( not ( object ( is-a domestic_violence_aggravated_weapon ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_weapon ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat domestic_violence_aggravated_weapon ?Defendant ) ) ) ( make-instance ?oid of domestic_violence_aggravated_weapon ( defendant ?Defendant ) ) )")
   (derived-class domestic_violence_aggravated_weapon))

([rule12-deductive] of ntm-deductive-rule
   (pos-name rule12-deductive-gen455)
   (depends-on lc:case domestic_violence_basic)
   (implies domestic_violence_basic)
   (deductive-rule "?gen153 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ( not ( domestic_violence_basic ( defendant ?Defendant ) ) ) => ( domestic_violence_basic ( defendant ?Defendant ) )")
   (production-rule "( defrule rule12-deductive-gen455 ( declare ( salience ( calc-salience domestic_violence_basic ) ) ) ( run-deductive-rules ) ( object ( name ?gen153 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:commits_domestic_violence \"yes\" ) ) ( not ( object ( is-a domestic_violence_basic ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat domestic_violence_basic ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat domestic_violence_basic ?Defendant ) ) ) ( make-instance ?oid of domestic_violence_basic ( defendant ?Defendant ) ) )")
   (derived-class domestic_violence_basic))

([rule11-deductive] of ntm-deductive-rule
   (pos-name rule11-deductive-gen454)
   (depends-on lc:case lc:case child_abduction_aggravated)
   (implies child_abduction_aggravated)
   (deductive-rule "?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ) ?gen142 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ) ( not ( child_abduction_aggravated ( defendant ?Defendant ) ) ) => ( child_abduction_aggravated ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11-deductive-gen454 ( declare ( salience ( calc-salience child_abduction_aggravated ) ) ) ( run-deductive-rules ) ( object ( name ?gen141 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ) ( object ( name ?gen142 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:endangered_child_wellbeing \"yes\" ) ) ( not ( object ( is-a child_abduction_aggravated ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat child_abduction_aggravated ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat child_abduction_aggravated ?Defendant ) ) ) ( make-instance ?oid of child_abduction_aggravated ( defendant ?Defendant ) ) )")
   (derived-class child_abduction_aggravated))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen453)
   (depends-on lc:case preventing_child_contact)
   (implies preventing_child_contact)
   (deductive-rule "?gen132 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:prevents_contact_execution \"yes\" ) ) ( not ( preventing_child_contact ( defendant ?Defendant ) ) ) => ( preventing_child_contact ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen453 ( declare ( salience ( calc-salience preventing_child_contact ) ) ) ( run-deductive-rules ) ( object ( name ?gen132 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:prevents_contact_execution \"yes\" ) ) ( not ( object ( is-a preventing_child_contact ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat preventing_child_contact ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat preventing_child_contact ?Defendant ) ) ) ( make-instance ?oid of preventing_child_contact ( defendant ?Defendant ) ) )")
   (derived-class preventing_child_contact))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen452)
   (depends-on lc:case child_abduction_basic)
   (implies child_abduction_basic)
   (deductive-rule "?gen123 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ) ( not ( child_abduction_basic ( defendant ?Defendant ) ) ) => ( child_abduction_basic ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen452 ( declare ( salience ( calc-salience child_abduction_basic ) ) ) ( run-deductive-rules ) ( object ( name ?gen123 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:unlawfully_handles_child_custody \"yes\" ) ) ( not ( object ( is-a child_abduction_basic ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat child_abduction_basic ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat child_abduction_basic ?Defendant ) ) ) ( make-instance ?oid of child_abduction_basic ( defendant ?Defendant ) ) )")
   (derived-class child_abduction_basic))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen451)
   (depends-on lc:case lc:case lc:case enabling_minor_extramarital_union_aggravated)
   (implies enabling_minor_extramarital_union_aggravated)
   (deductive-rule "?gen108 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ) ?gen109 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ) ( not ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ) ) => ( enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen451 ( declare ( salience ( calc-salience enabling_minor_extramarital_union_aggravated ) ) ) ( run-deductive-rules ) ( object ( name ?gen108 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ) ( object ( name ?gen109 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ) ( object ( name ?gen110 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:used_force_threat_or_greed \"yes\" ) ) ( not ( object ( is-a enabling_minor_extramarital_union_aggravated ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat enabling_minor_extramarital_union_aggravated ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat enabling_minor_extramarital_union_aggravated ?Defendant ) ) ) ( make-instance ?oid of enabling_minor_extramarital_union_aggravated ( defendant ?Defendant ) ) )")
   (derived-class enabling_minor_extramarital_union_aggravated))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen450)
   (depends-on lc:case lc:case enabling_minor_extramarital_union)
   (implies enabling_minor_extramarital_union)
   (deductive-rule "?gen96 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ) ( not ( enabling_minor_extramarital_union ( defendant ?Defendant ) ) ) => ( enabling_minor_extramarital_union ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen450 ( declare ( salience ( calc-salience enabling_minor_extramarital_union ) ) ) ( run-deductive-rules ) ( object ( name ?gen96 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_parent_or_guardian \"yes\" ) ) ( object ( name ?gen97 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:enables_minor_extramarital_union \"yes\" ) ) ( not ( object ( is-a enabling_minor_extramarital_union ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat enabling_minor_extramarital_union ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat enabling_minor_extramarital_union ?Defendant ) ) ) ( make-instance ?oid of enabling_minor_extramarital_union ( defendant ?Defendant ) ) )")
   (derived-class enabling_minor_extramarital_union))

([rule6-deductive] of ntm-deductive-rule
   (pos-name rule6-deductive-gen449)
   (depends-on lc:case lc:case extramarital_union_with_minor_basic)
   (implies extramarital_union_with_minor_basic)
   (deductive-rule "?gen84 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_adult \"yes\" ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:lives_in_extramarital_union_with_minor \"yes\" ) ) ( not ( extramarital_union_with_minor_basic ( defendant ?Defendant ) ) ) => ( extramarital_union_with_minor_basic ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6-deductive-gen449 ( declare ( salience ( calc-salience extramarital_union_with_minor_basic ) ) ) ( run-deductive-rules ) ( object ( name ?gen84 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_adult \"yes\" ) ) ( object ( name ?gen85 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:lives_in_extramarital_union_with_minor \"yes\" ) ) ( not ( object ( is-a extramarital_union_with_minor_basic ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat extramarital_union_with_minor_basic ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat extramarital_union_with_minor_basic ?Defendant ) ) ) ( make-instance ?oid of extramarital_union_with_minor_basic ( defendant ?Defendant ) ) )")
   (derived-class extramarital_union_with_minor_basic))

([rule5-deductive] of ntm-deductive-rule
   (pos-name rule5-deductive-gen448)
   (depends-on lc:case lc:case lc:case family_obligation_violation_aggravated_death)
   (implies family_obligation_violation_aggravated_death)
   (deductive-rule "?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ?gen70 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ) ( not ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) ) ) => ( family_obligation_violation_aggravated_death ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5-deductive-gen448 ( declare ( salience ( calc-salience family_obligation_violation_aggravated_death ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ( object ( name ?gen70 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ) ( object ( name ?gen71 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:family_member_died \"yes\" ) ) ( not ( object ( is-a family_obligation_violation_aggravated_death ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat family_obligation_violation_aggravated_death ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat family_obligation_violation_aggravated_death ?Defendant ) ) ) ( make-instance ?oid of family_obligation_violation_aggravated_death ( defendant ?Defendant ) ) )")
   (derived-class family_obligation_violation_aggravated_death))

([rule4-deductive] of ntm-deductive-rule
   (pos-name rule4-deductive-gen447)
   (depends-on lc:case lc:case lc:case family_obligation_violation_aggravated_health)
   (implies family_obligation_violation_aggravated_health)
   (deductive-rule "?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ) ?gen56 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_health_damage_occurred \"yes\" ) ) ( not ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) ) ) => ( family_obligation_violation_aggravated_health ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4-deductive-gen447 ( declare ( salience ( calc-salience family_obligation_violation_aggravated_health ) ) ) ( run-deductive-rules ) ( object ( name ?gen54 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ( object ( name ?gen55 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ) ( object ( name ?gen56 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:severe_health_damage_occurred \"yes\" ) ) ( not ( object ( is-a family_obligation_violation_aggravated_health ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat family_obligation_violation_aggravated_health ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat family_obligation_violation_aggravated_health ?Defendant ) ) ) ( make-instance ?oid of family_obligation_violation_aggravated_health ( defendant ?Defendant ) ) )")
   (derived-class family_obligation_violation_aggravated_health))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen446)
   (depends-on lc:case lc:case family_obligation_violation_basic)
   (implies family_obligation_violation_basic)
   (deductive-rule "?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ?gen43 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ) ( not ( family_obligation_violation_basic ( defendant ?Defendant ) ) ) => ( family_obligation_violation_basic ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen446 ( declare ( salience ( calc-salience family_obligation_violation_basic ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:violates_family_obligations \"yes\" ) ) ( object ( name ?gen43 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:family_member_left_in_hardship \"yes\" ) ) ( not ( object ( is-a family_obligation_violation_basic ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat family_obligation_violation_basic ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat family_obligation_violation_basic ?Defendant ) ) ) ( make-instance ?oid of family_obligation_violation_basic ( defendant ?Defendant ) ) )")
   (derived-class family_obligation_violation_basic))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen445)
   (depends-on lc:case lc:case lc:case failure_to_provide_support_aggravated)
   (implies failure_to_provide_support_aggravated)
   (deductive-rule "?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:severe_consequences_occurred \"yes\" ) ) ( not ( failure_to_provide_support_aggravated ( defendant ?Defendant ) ) ) => ( failure_to_provide_support_aggravated ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen445 ( declare ( salience ( calc-salience failure_to_provide_support_aggravated ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ) ( object ( name ?gen29 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:severe_consequences_occurred \"yes\" ) ) ( not ( object ( is-a failure_to_provide_support_aggravated ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat failure_to_provide_support_aggravated ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat failure_to_provide_support_aggravated ?Defendant ) ) ) ( make-instance ?oid of failure_to_provide_support_aggravated ( defendant ?Defendant ) ) )")
   (derived-class failure_to_provide_support_aggravated))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen444)
   (depends-on lc:case lc:case failure_to_provide_support_basic)
   (implies failure_to_provide_support_basic)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ) ( not ( failure_to_provide_support_basic ( defendant ?Defendant ) ) ) => ( failure_to_provide_support_basic ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen444 ( declare ( salience ( calc-salience failure_to_provide_support_basic ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:fails_to_provide_support \"yes\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:support_duty_legally_established \"yes\" ) ) ( not ( object ( is-a failure_to_provide_support_basic ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat failure_to_provide_support_basic ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat failure_to_provide_support_basic ?Defendant ) ) ) ( make-instance ?oid of failure_to_provide_support_basic ( defendant ?Defendant ) ) )")
   (derived-class failure_to_provide_support_basic))

