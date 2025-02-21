package com.example.pravnaInformatika.backend.Verdict.Controller;

import com.example.pravnaInformatika.backend.Verdict.Service.LawService;
import com.example.pravnaInformatika.backend.Verdict.Service.VerdictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
@RestController
@RequestMapping("/api/law")
public class LawController {

    @Autowired
    private LawService lawService;

    @GetMapping()
    public ResponseEntity<String> getLaw() throws IOException {
        String law = lawService.getLaw();
        return ResponseEntity.ok(law);
    }
}
