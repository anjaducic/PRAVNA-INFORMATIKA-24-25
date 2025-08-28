package com.example.pravnaInformatika.backend.Verdict.CBR;

import com.example.pravnaInformatika.backend.Verdict.DTO.VerdictDTO;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseBaseFilter;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.exception.InitializingException;
import org.springframework.core.io.ClassPathResource;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Collection;
import java.util.LinkedList;

public class CsvConnector implements Connector {

    @Override
    public Collection<CBRCase> retrieveAllCases() {
        //baza slucajeva svih
        LinkedList<CBRCase> cases = new LinkedList<>();

        try {
            // fajl presude.csv mora biti u src/main/resources/
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(getClass().getResourceAsStream("/static/Verdicts/Atributes.csv"))
            );
            if (br == null)
                throw new Exception("Error opening file");

            String line;
            // Ako prva linija ima header, preskoci je
            line = br.readLine(); // header
            while ((line = br.readLine()) != null) {
                if (line.startsWith("#") || line.trim().isEmpty())
                    continue;

                String[] values = line.split(",", -1); // -1 da sacuva i prazna polja

                CBRCase cbrCase = new CBRCase();
                VerdictDTO v = new VerdictDTO();

                // mapiraj sva polja
                v.setCaseName(values[0]);
                v.setAcknowledged(parseBoolean(values[1]));
                v.setConvicted(parseBoolean(values[2]));
                v.setFinancialStatus(values[3]);
                v.setMaintenance(parseBoolean(values[4]));
                v.setRepentance(parseBoolean(values[5]));
                v.setPreviousFamilyIssues(parseBoolean(values[6]));
                v.setInjuryType(values[7]);
                v.setCorrectBehavior(parseBoolean(values[8]));
                v.setInjuredCriminalProsecution(parseBoolean(values[9]));
                v.setPropertyClaim(parseBoolean(values[10]));
                v.setAccountability(values[11]);
                v.setIntentional(parseBoolean(values[12]));

                cbrCase.setDescription(v);
                cases.add(cbrCase);
            }
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cases;
    }

    private Boolean parseBoolean(String s) {
        if (s == null) return null;
        s = s.trim().toLowerCase();
        if (s.equals("true") || s.equals("1") || s.equals("yes") || s.equals("da"))
            return true;
        /*if (s.equals("false") || s.equals("0") || s.equals("no") || s.equals("ne"))
            return false;*/
        return false; // ako je prazno ili false, podrazumijevamo da je false
    }

    @Override
    public Collection<CBRCase> retrieveSomeCases(CaseBaseFilter filter) {
        return null;
    }

    @Override
    public void storeCases(Collection<CBRCase> cases) { }

    @Override
    public void close() { }

    @Override
    public void deleteCases(Collection<CBRCase> cases) { }

    @Override
    public void initFromXMLfile(URL file) throws InitializingException { }
}
