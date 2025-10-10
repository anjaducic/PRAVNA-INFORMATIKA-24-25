package com.example.pravnaInformatika.backend.Verdict.CBR;

import com.example.pravnaInformatika.backend.Verdict.DTO.VerdictDTO;
import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Equal;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.EqualsStringIgnoreCase;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;
import gate.util.Pair;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class VerdictCBRService {

    private final NNConfig simConfig;
    private final CBRCaseBase caseBase;
    private final CsvConnector connector;

    public VerdictCBRService() throws ExecutionException {
        this.connector = new CsvConnector();
        this.caseBase = new LinealCaseBase();
        this.caseBase.init(connector);
        simConfig = new NNConfig();
        simConfig.setDescriptionSimFunction(new Average());
        configureSimilarities();

    }

    private void configureSimilarities() {
        // Boolean atributi
        List<String> booleanAttrs = Arrays.asList(
                "acknowledged", "convicted", "maintenance", "repentance",
                "previousFamilyIssues", "correctBehavior", "injuredCriminalProsecution",
                "propertyClaim", "intentional"
        );
        for (String attr : booleanAttrs)
            simConfig.addMapping(new Attribute(attr, VerdictDTO.class), new Equal());

        // Tip povrede
        TabularSimilarity injuryTypeSim = new TabularSimilarity(
                Arrays.asList("Nema", "Lake", "Srednje", "Dusevne", "Teske")
        );

        // Nema
        injuryTypeSim.setSimilarity("Nema", "Lake", 0.25);
        injuryTypeSim.setSimilarity("Nema", "Srednje", 0.1);
        injuryTypeSim.setSimilarity("Nema", "Dusevne", 0.15);
        injuryTypeSim.setSimilarity("Nema", "Teske", 0.0);

        // Lake
        injuryTypeSim.setSimilarity("Lake", "Srednje", 0.6);
        injuryTypeSim.setSimilarity("Lake", "Dusevne", 0.3);
        injuryTypeSim.setSimilarity("Lake", "Teske", 0.1);

        // Srednje
        injuryTypeSim.setSimilarity("Srednje", "Dusevne", 0.5);
        injuryTypeSim.setSimilarity("Srednje", "Teske", 0.7);

        // Dusevne
        injuryTypeSim.setSimilarity("Dusevne", "Teske", 0.6);

        simConfig.addMapping(new Attribute("injuryType", VerdictDTO.class), injuryTypeSim);

        // uracunljivost
        TabularSimilarity accountabilitySim = new TabularSimilarity(
                Arrays.asList("Uracunljiv", "Smanjena uracunljivost", "Neuracunljiv")
        );

        accountabilitySim.setSimilarity("Uracunljiv", "Smanjena uracunljivost", 0.5);
        accountabilitySim.setSimilarity("Uracunljiv", "Neuracunljiv", 0.0);
        accountabilitySim.setSimilarity("Smanjena uracunljivost", "Neuracunljiv", 0.75);

        simConfig.addMapping(new Attribute("accountability", VerdictDTO.class), accountabilitySim);

        // materijalno stanje
        TabularSimilarity financialStatusSim = new TabularSimilarity(
                Arrays.asList("Lose", "Srednje", "Dobro")
        );

        financialStatusSim.setSimilarity("Lose", "Srednje", 0.5);
        financialStatusSim.setSimilarity("Srednje", "Dobro", 0.5);
        financialStatusSim.setSimilarity("Lose", "Dobro", 0.0);

        simConfig.addMapping(new Attribute("financialStatus", VerdictDTO.class), financialStatusSim);


        // familyObligationsViolation
        TabularSimilarity familyObligationsSim = new TabularSimilarity(
                Arrays.asList("Nema", "Osnovno krsenje", "Otezano zdravstvena steta", "Otezano smrt")
        );
        familyObligationsSim.setSimilarity("Nema", "Osnovno krsenje", 0.7);
        familyObligationsSim.setSimilarity("Nema", "Otezano zdravstvena steta", 0.4);
        familyObligationsSim.setSimilarity("Nema", "Otezano smrt", 0.2);
        familyObligationsSim.setSimilarity("Osnovno krsenje", "Otezano zdravstvena steta", 0.75);
        familyObligationsSim.setSimilarity("Osnovno krsenje", "Otezano smrt", 0.35);
        familyObligationsSim.setSimilarity("Otezano zdravstvena steta", "Otezano smrt", 0.6);
        simConfig.addMapping(new Attribute("familyObligationsViolation", VerdictDTO.class), familyObligationsSim);


        // extramaritalRelationshipMinor
        TabularSimilarity extramaritalSim = new TabularSimilarity(
                Arrays.asList("Nema", "Osnovni prekrsaj", "Omogucavanje", "Otezano omogucavanje")
        );
        extramaritalSim.setSimilarity("Nema", "Osnovni prekrsaj", 0.6);
        extramaritalSim.setSimilarity("Nema", "Omogucavanje", 0.25);
        extramaritalSim.setSimilarity("Nema", "Otezano omogucavanje", 0.1);
        extramaritalSim.setSimilarity("Osnovni prekrsaj", "Omogucavanje", 0.7);
        extramaritalSim.setSimilarity("Osnovni prekrsaj", "Otezano omogucavanje", 0.3);
        extramaritalSim.setSimilarity("Omogucavanje", "Otezano omogucavanje", 0.65);
        simConfig.addMapping(new Attribute("extramaritalRelationshipMinor", VerdictDTO.class), extramaritalSim);

        // unlawfulDetention
        TabularSimilarity detentionSim = new TabularSimilarity(
                Arrays.asList("Nema", "Osnovno zadrzavanje", "Sprecavanje kontakta", "Otezano")
        );
        detentionSim.setSimilarity("Nema", "Osnovno zadrzavanje", 0.65);
        detentionSim.setSimilarity("Nema", "Sprecavanje kontakta", 0.35);
        detentionSim.setSimilarity("Nema", "Otezano", 0.15);
        detentionSim.setSimilarity("Osnovno zadrzavanje", "Sprecavanje kontakta", 0.8);
        detentionSim.setSimilarity("Osnovno zadrzavanje", "Otezano", 0.4);
        detentionSim.setSimilarity("Sprecavanje kontakta", "Otezano", 0.7);
        simConfig.addMapping(new Attribute("unlawfulDetention", VerdictDTO.class), detentionSim);

        // familyMemberMaintenance
        TabularSimilarity maintenanceSim = new TabularSimilarity(
                Arrays.asList("Nema", "Osnovno", "Otezano")
        );
        maintenanceSim.setSimilarity("Nema", "Osnovno", 0.75);
        maintenanceSim.setSimilarity("Nema", "Otezano", 0.25);
        maintenanceSim.setSimilarity("Osnovno", "Otezano", 0.6);
        simConfig.addMapping(new Attribute("familyMemberMaintenance", VerdictDTO.class), maintenanceSim);


        // domesticViolence
        TabularSimilarity domesticViolenceSim = new TabularSimilarity(
                Arrays.asList("Nema", "Osnovno krsenje", "Oruzje ili dete prisutno", "Teska povreda/Laka povreda protiv deteta", "Smrt", "Krsenje mere zastite")
        );
        // Nema to others
        domesticViolenceSim.setSimilarity("Nema", "Osnovno krsenje", 0.6);
        domesticViolenceSim.setSimilarity("Nema", "Oruzje ili dete prisutno", 0.3);
        domesticViolenceSim.setSimilarity("Nema", "Teska povreda/Laka povreda protiv deteta", 0.2);
        domesticViolenceSim.setSimilarity("Nema", "Smrt", 0.1);
        domesticViolenceSim.setSimilarity("Nema", "Krsenje mere zastite", 0.4);
        domesticViolenceSim.setSimilarity("Osnovno krsenje", "Oruzje ili dete prisutno", 0.65);
        domesticViolenceSim.setSimilarity("Osnovno krsenje", "Teska povreda/Laka povreda protiv deteta", 0.4);
        domesticViolenceSim.setSimilarity("Osnovno krsenje", "Smrt", 0.2);
        domesticViolenceSim.setSimilarity("Osnovno krsenje", "Krsenje mere zastite", 0.7);

        domesticViolenceSim.setSimilarity("Oruzje ili dete prisutno", "Teska povreda/Laka povreda protiv deteta", 0.75);
        domesticViolenceSim.setSimilarity("Oruzje ili dete prisutno", "Smrt", 0.35);
        domesticViolenceSim.setSimilarity("Oruzje ili dete prisutno", "Krsenje mere zastite", 0.5);

        domesticViolenceSim.setSimilarity("Teska povreda/Laka povreda protiv deteta", "Smrt", 0.6);
        domesticViolenceSim.setSimilarity("Teska povreda/Laka povreda protiv deteta", "Krsenje mere zastite", 0.45);

        domesticViolenceSim.setSimilarity("Smrt", "Krsenje mere zastite", 0.3);

        simConfig.addMapping(new Attribute("domesticViolence", VerdictDTO.class), domesticViolenceSim);
    }


    public List<VerdictSimilarity> findTop5Similar(VerdictDTO input) throws ExecutionException {
        // novi slucaj
        CBRQuery query = new CBRQuery();
        query.setDescription(input);

        // eval. slicnosti
        Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(caseBase.getCases(), query, simConfig);

        // ispis svih presuda u bazi
        System.out.println("\nSve presude u bazi:");
        for (RetrievalResult nse : eval)
            System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());

        // top 5 presuda
        eval = SelectCases.selectTopKRR(eval, 5);
        System.out.println("Top 5 presuda:");
        for (RetrievalResult nse : eval)
            System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());

        // vracamo listu VerdictSimilarity objekata
        return eval.stream().map(r -> {
            VerdictDTO dto = (VerdictDTO) r.get_case().getDescription();
            VerdictSimilarity vs = new VerdictSimilarity();
            vs.setCaseName(dto.getCaseName());
            vs.setAcknowledged(dto.getAcknowledged());
            vs.setConvicted(dto.getConvicted());
            vs.setFinancialStatus(dto.getFinancialStatus());
            vs.setMaintenance(dto.getMaintenance());
            vs.setRepentance(dto.getRepentance());
            vs.setPreviousFamilyIssues(dto.getPreviousFamilyIssues());
            vs.setInjuryType(dto.getInjuryType());
            vs.setCorrectBehavior(dto.getCorrectBehavior());
            vs.setInjuredCriminalProsecution(dto.getInjuredCriminalProsecution());
            vs.setPropertyClaim(dto.getPropertyClaim());
            vs.setAccountability(dto.getAccountability());
            vs.setIntentional(dto.getIntentional());

            //Novi enum atributi
            vs.setFamilyObligationsViolation(dto.getFamilyObligationsViolation());
            vs.setExtramaritalRelationshipMinor(dto.getExtramaritalRelationshipMinor());
            vs.setUnlawfulDetention(dto.getUnlawfulDetention());
            vs.setFamilyMemberMaintenance(dto.getFamilyMemberMaintenance());
            vs.setDomesticViolence(dto.getDomesticViolence());

            vs.setSimilarity(r.getEval());
            return vs;
        }).collect(Collectors.toList());
    }


    //pozvati kod generisanja presude
    //paziti da learnCases vjerovatno cuva i atribute u fajl, pa ne treba duplirati, ali provjeriti. Sacuvati metapodatke rucno kod generisanja presude
    public void addCaseToBase(VerdictDTO dto) throws ExecutionException {
        // napravimo novi CBRCase
        CBRCase newCase = new CBRCase();
        newCase.setDescription(dto);

        // dodavanje ga u memorijsku bazu
        caseBase.learnCases(Collections.singletonList(newCase));

        System.out.println("Novi slucaj dodat u bazu: " + dto);
    }


}
