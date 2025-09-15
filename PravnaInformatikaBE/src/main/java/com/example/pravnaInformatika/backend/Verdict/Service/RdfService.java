package com.example.pravnaInformatika.backend.Verdict.Service;

import com.example.pravnaInformatika.backend.Verdict.DTO.RdfInputDTO;
import org.springframework.stereotype.Service;

import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;

@Service
public class RdfService {

    private static final String RDF_OUTPUT_DIRECTORY = "./dr-device/";  //  Ovde cemo snimiti facts.rdf file kako bi ga dalje dr-device koristio

    private static final String RDF_HEADER = """
            <?xml version="1.0" encoding="UTF-8" standalone="no"?>
            <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
                xmlns:lc="http://informatika.ftn.uns.ac.rs/legal-case.rdf#">
            """;

    private static final String RDF_FOOTER = "</rdf:RDF>";

    public String generateRdfForCase(RdfInputDTO caseData) {
        StringBuilder rdf = new StringBuilder();
        rdf.append(RDF_HEADER);

        // Case opening tag
        rdf.append(String.format("""
            
                <lc:case rdf:about="http://informatika.ftn.uns.ac.rs/legal-case.rdf#%s">
                    <lc:name>%s</lc:name>
                    <lc:defendant>%s</lc:defendant>
                    <lc:dependent>%s</lc:dependent>
            """,
                caseData.getCaseName(),
                caseData.getCaseName(),
                caseData.getDefendant(),
                caseData.getDependent()));

        // Add violations based on case data
        addViolations(rdf, caseData);

        rdf.append("\n    </lc:case>\n");
        rdf.append(RDF_FOOTER);

        return rdf.toString();
    }

    public String saveRdfToFile(String rdfContent, String fileName) throws IOException {
        // Create directory if it doesn't exist
        Path directory = Paths.get(RDF_OUTPUT_DIRECTORY);
        if (!Files.exists(directory)) {
            Files.createDirectories(directory);
        }

        // Full file path
        String fullPath = RDF_OUTPUT_DIRECTORY + fileName;

        // Write content to file
        try (FileWriter writer = new FileWriter(fullPath)) {
            writer.write(rdfContent);
        }

        return fullPath;
    }

    private void addViolations(StringBuilder rdf, RdfInputDTO caseData) {
        Map<String, Boolean> violations = caseData.getViolations();

        // Article 221 violations
        addBooleanPropertyIfTrue(rdf, violations, "fails_to_provide_support");
        addBooleanPropertyIfTrue(rdf, violations, "support_duty_legally_established");
        addBooleanPropertyIfTrue(rdf, violations, "severe_consequences_occurred");

        // Article 222 violations
        addBooleanPropertyIfTrue(rdf, violations, "violates_family_obligations");
        addBooleanPropertyIfTrue(rdf, violations, "family_member_left_in_hardship");
        addBooleanPropertyIfTrue(rdf, violations, "severe_health_damage_occurred");
        addBooleanPropertyIfTrue(rdf, violations, "family_member_died");

        // Article 216 violations
        addBooleanPropertyIfTrue(rdf, violations, "is_adult");
        addBooleanPropertyIfTrue(rdf, violations, "lives_in_extramarital_union_with_minor");
        addBooleanPropertyIfTrue(rdf, violations, "is_parent_or_guardian");
        addBooleanPropertyIfTrue(rdf, violations, "enables_minor_extramarital_union");
        addBooleanPropertyIfTrue(rdf, violations, "used_force_threat_or_greed");

        // Article 217 violations
        addBooleanPropertyIfTrue(rdf, violations, "unlawfully_handles_child_custody");
        addBooleanPropertyIfTrue(rdf, violations, "prevents_contact_execution");
        addBooleanPropertyIfTrue(rdf, violations, "endangered_child_wellbeing");

        // Article 220 violations
        addBooleanPropertyIfTrue(rdf, violations, "commits_domestic_violence");
        addBooleanPropertyIfTrue(rdf, violations, "used_weapon_or_child_present");
        addBooleanPropertyIfTrue(rdf, violations, "caused_severe_injury_or_against_child");
        addBooleanPropertyIfTrue(rdf, violations, "violates_domestic_violence_protection_order");
    }

    private void addBooleanPropertyIfTrue(StringBuilder rdf, Map<String, Boolean> violations, String property) {
        if (violations.getOrDefault(property, false)) {
            addBooleanProperty(rdf, property);
        }
    }

    private void addBooleanProperty(StringBuilder rdf, String property) {
        rdf.append(String.format("\n        <lc:%s>%s</lc:%s>",
                property, "yes", property));
    }
}

