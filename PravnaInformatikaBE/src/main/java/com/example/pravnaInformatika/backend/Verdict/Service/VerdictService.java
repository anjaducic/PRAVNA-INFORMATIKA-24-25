package com.example.pravnaInformatika.backend.Verdict.Service;

import com.example.pravnaInformatika.backend.Verdict.DTO.VerdictDTO;
import com.example.pravnaInformatika.backend.Verdict.DTO.VerdictMetadataDTO;
import com.example.pravnaInformatika.backend.Verdict.Model.Verdict;
import com.example.pravnaInformatika.backend.Verdict.Repository.VerdictRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class VerdictService {

    @Autowired
    private VerdictRepository verdictRepository;

    public List<Verdict> getAll() {

        return verdictRepository.findAll();

    }

    // Nova metoda za ucitavanje metapodataka iz CSV
    public List<VerdictMetadataDTO> getAllMetadata() throws IOException {
        ClassPathResource csvFile = new ClassPathResource("static/Verdicts/metadata/verdicts_metadata.csv");

        List<VerdictMetadataDTO> metadataList = new ArrayList<>();

        try (BufferedReader br = new BufferedReader(new InputStreamReader(csvFile.getInputStream()))) {
            String headerLine = br.readLine(); // header
            if (headerLine == null) return metadataList;

            String[] headers = headerLine.split(",", -1);

            String line;
            while ((line = br.readLine()) != null) {
                String[] values = line.split(",", -1);
                VerdictMetadataDTO dto = new VerdictMetadataDTO();
                dto.setFileName(values[0]);
                dto.setCaseName(values[0]);
                dto.setCourt(values.length > 1 ? values[1] : "");
                dto.setJudge(values.length > 2 ? values[2] : "");
                dto.setClerk(values.length > 3 ? values[3] : "");
                dto.setDefendant(values.length > 4 ? values[4] : "");
                dto.setProsecutorAttorney(values.length > 5 ? values[5] : "");
                dto.setDefenseAttorney(values.length > 6 ? values[6] : "");
                dto.setInjuredParty(values.length > 7 ? values[7] : "");
                dto.setLegalRepresentative(values.length > 8 ? values[8] : "");
                dto.setExpert(values.length > 9 ? values[9] : "");
                dto.setParticipants(values.length > 10 ? values[10] : "");
                dto.setOrganizations(values.length > 11 ? values[11] : "");
                dto.setDate(values.length > 12 ? values[12] : "");

                metadataList.add(dto);
            }
        }
        return metadataList;
    }


    public VerdictDTO getAttributesByCaseName(String caseName) throws IOException {
        ClassPathResource csvFile = new ClassPathResource("static/Verdicts/Atributes.csv");

        try (BufferedReader br = new BufferedReader(new InputStreamReader(csvFile.getInputStream()))) {
            String headerLine = br.readLine(); // прва линија са именима колона
            if (headerLine == null) return null;

            String line;
            while ((line = br.readLine()) != null) {
                String[] values = line.split(",", -1);
                if (values.length > 0 && values[0].equalsIgnoreCase(caseName)) {
                    VerdictDTO dto = new VerdictDTO();
                    dto.setFileName(values[0]);
                    dto.setAcknowledged(parseBoolean(values[1]));
                    dto.setConvicted(parseBoolean(values[2]));
                    dto.setFinancialStatus(values[3]);
                    dto.setMaintenance(parseBoolean(values[4]));
                    dto.setRepentance(parseBoolean(values[5]));
                    dto.setPreviousFamilyIssues(parseBoolean(values[6]));
                    dto.setInjuryType(values[7]);
                    dto.setCorrectBehavior(parseBoolean(values[8]));
                    dto.setInjuredCriminalProsecution(parseBoolean(values[9]));
                    dto.setPropertyClaim(parseBoolean(values[10]));
                    dto.setAccountability(values[11]);
                    dto.setIntentional(parseBoolean(values[12]));
                    return dto;
                }
            }
        }
        return null;
    }

    private Boolean parseBoolean(String value) {
        if (value == null || value.isEmpty()) return null;
        return value.equalsIgnoreCase("TRUE");
    }

}
