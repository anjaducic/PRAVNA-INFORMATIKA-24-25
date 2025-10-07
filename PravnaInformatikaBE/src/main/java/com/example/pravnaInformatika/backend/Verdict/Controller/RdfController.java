package com.example.pravnaInformatika.backend.Verdict.Controller;

import com.example.pravnaInformatika.backend.Verdict.DTO.RdfInputDTO;
import com.example.pravnaInformatika.backend.Verdict.DTO.RdfOutputDTO;
import com.example.pravnaInformatika.backend.Verdict.Service.RdfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;


@RestController
@RequestMapping("/api/rdf")
public class RdfController {

    @Autowired
    private RdfService rdfGeneratorService;


    @PostMapping("/analyze-case")
    public ResponseEntity<RdfOutputDTO> analyzeCase(@RequestBody RdfInputDTO request) {
        try {
            RdfOutputDTO results = rdfGeneratorService.processLegalCase(request);

            return ResponseEntity.ok(results);

        } catch (IOException | InterruptedException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body(null);
        }
    }


}
