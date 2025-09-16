package com.example.pravnaInformatika.backend.Verdict.Controller;

import com.example.pravnaInformatika.backend.Verdict.DTO.RdfInputDTO;
import com.example.pravnaInformatika.backend.Verdict.DTO.RdfResponse;
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
    public ResponseEntity<RdfResponse> generateAndSaveRdf(@RequestBody RdfInputDTO request) {
        try {
            String rdfContent = rdfGeneratorService.generateRdfForCase(request);
            String filePath = rdfGeneratorService.saveRdfToFile(rdfContent, "facts.rdf");

            RdfResponse response = new RdfResponse(
                    "facts.rdf generated, saved successfully, and dr-device executed",
                    filePath,
                    "facts.rdf",
                    request.getCaseName()
            );
            return ResponseEntity.ok(response);

        } catch (Exception e) {
            RdfResponse errorResponse = new RdfResponse(
                    "Error generating RDF: " + e.getMessage(),
                    null,
                    null,
                    request.getCaseName()
            );
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(errorResponse);
        }
    }


}
