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

        injuryTypeSim.setSimilarity("Nema", "Lake", 0.25);
        injuryTypeSim.setSimilarity("Nema", "Srednje", 0.50);
        injuryTypeSim.setSimilarity("Nema", "Dusevne", 0.50);
        injuryTypeSim.setSimilarity("Nema", "Teske", 0.75);

        injuryTypeSim.setSimilarity("Lake", "Srednje", 0.25);
        injuryTypeSim.setSimilarity("Lake", "Dusevne", 0.25);
        injuryTypeSim.setSimilarity("Lake", "Teske", 0.50);

        injuryTypeSim.setSimilarity("Srednje", "Dusevne", 1.0); //prema kaznama
        injuryTypeSim.setSimilarity("Srednje", "Teske", 0.25);
        injuryTypeSim.setSimilarity("Dusevne", "Teske", 0.25);

        simConfig.addMapping(new Attribute("injuryType", VerdictDTO.class), injuryTypeSim);

        // uracunljivost
        TabularSimilarity accountabilitySim = new TabularSimilarity(
                Arrays.asList("Uracunljiv", "Smanjena uracunljivost", "Neuracunljiv")
        );

        accountabilitySim.setSimilarity("Uracunljiv", "Smanjena uracunljivost", 0.5);
        accountabilitySim.setSimilarity("Uracunljiv", "Neuracunljiv", 0.0);
        accountabilitySim.setSimilarity("Smanjena uracunljivost", "Neuracunljiv", 0.5);

        simConfig.addMapping(new Attribute("accountability", VerdictDTO.class), accountabilitySim);

        // materijalno stanje
        TabularSimilarity financialStatusSim = new TabularSimilarity(
                Arrays.asList("Lose", "Srednje", "Dobro")
        );

        financialStatusSim.setSimilarity("Lose", "Srednje", 0.5);
        financialStatusSim.setSimilarity("Srednje", "Dobro", 0.5);
        financialStatusSim.setSimilarity("Lose", "Dobro", 0.0);

        simConfig.addMapping(new Attribute("financialStatus", VerdictDTO.class), financialStatusSim);
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
