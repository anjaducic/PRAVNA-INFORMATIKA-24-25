package com.example.pravnaInformatika.backend.Verdict.Controller;

import com.example.pravnaInformatika.backend.Verdict.DTO.RdfInputDTO;
import com.example.pravnaInformatika.backend.Verdict.Service.RdfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;


@RestController
@RequestMapping("/api/rdf")
public class RdfController {

    @Autowired
    private RdfService rdfGeneratorService;


    @PostMapping("/generate-rdf")
    public ResponseEntity<Map<String, String>> generateAndSaveRdf(@RequestBody RdfInputDTO request) {
        try {
            String rdfContent = rdfGeneratorService.generateRdfForCase(request);
            String filePath = rdfGeneratorService.saveRdfToFile(rdfContent, "facts.rdf");

            Map<String, String> response = new HashMap<>();
            response.put("message", "facts.rdf generated and saved successfully");
            response.put("filePath", filePath);
            response.put("fileName", "facts.rdf");
            response.put("caseName", request.getCaseName());

            return ResponseEntity.ok(response);

        } catch (Exception e) {
            Map<String, String> errorResponse = new HashMap<>();
            errorResponse.put("error", "Error generating RDF: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
        }
    }


}
