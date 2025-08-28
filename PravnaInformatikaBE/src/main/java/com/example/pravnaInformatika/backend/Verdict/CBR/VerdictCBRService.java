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
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class VerdictCBRService {

    private final CsvConnector connector;
    private final NNConfig simConfig;
    private final CBRCaseBase caseBase;

    public VerdictCBRService() throws ExecutionException {
        this.connector = new CsvConnector();
        caseBase = new LinealCaseBase();


        simConfig = new NNConfig();
        simConfig.setDescriptionSimFunction(new Average());

        // Boolean atributi
        List<String> booleanAttrs = Arrays.asList(
                "acknowledged", "convicted", "maintenance", "repentance",
                "previousFamilyIssues", "correctBehavior", "injuredCriminalProsecution",
                "propertyClaim", "intentional"
        );
        for (String attr : booleanAttrs)
            simConfig.addMapping(new Attribute(attr, VerdictDTO.class), new EqualsStringIgnoreCase());  //true/false poredimo samo


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

        injuryTypeSim.setSimilarity("Srednje", "Dusevne", 1.0);
        injuryTypeSim.setSimilarity("Srednje", "Teske", 0.25);
        injuryTypeSim.setSimilarity("Dusevne", "Teske", 0.25);

        simConfig.addMapping(new Attribute("injuryType", VerdictDTO.class), injuryTypeSim);


        //uracunljivost
        TabularSimilarity accountabilitySim = new TabularSimilarity(
                Arrays.asList("Uracunljiv", "Smanjena uracunljivost", "Neuracunljiv")
        );

        accountabilitySim.setSimilarity("Uracunljiv", "Smanjena uracunljivost", 0.5);
        accountabilitySim.setSimilarity("Uracunljiv", "Neuracunljiv", 0.0);
        accountabilitySim.setSimilarity("Smanjena uracunljivost", "Neuracunljiv", 0.5);

        simConfig.addMapping(new Attribute("accountability", VerdictDTO.class), accountabilitySim);

        //Materijalno stanje
        TabularSimilarity financialStatusSim = new TabularSimilarity(
                Arrays.asList("Lose", "Srednje", "Dobro")
        );

        financialStatusSim.setSimilarity("Lose", "Srednje", 0.5);
        financialStatusSim.setSimilarity("Srednje", "Dobro", 0.5);
        financialStatusSim.setSimilarity("Lose", "Dobro", 0.0);

        simConfig.addMapping(new Attribute("financialStatus", VerdictDTO.class), financialStatusSim);


    }

    public List<String> findTop5Similar(VerdictDTO input) throws ExecutionException {
        CBRQuery query = new CBRQuery();
        query.setDescription(input);

        Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(caseBase.getCases(), query, simConfig);
        eval = SelectCases.selectTopKRR(eval, 5);

        System.out.println("Retrieved cases:");
        for (RetrievalResult nse : eval)
            System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());

        return eval.stream()
                .map(r -> ((VerdictDTO) r.get_case().getDescription()).getCaseName())
                .collect(Collectors.toList());
    }
}
