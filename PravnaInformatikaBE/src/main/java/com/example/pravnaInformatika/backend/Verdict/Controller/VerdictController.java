package com.example.pravnaInformatika.backend.Verdict.Controller;

import com.example.pravnaInformatika.backend.Verdict.DTO.VerdictDTO;
import com.example.pravnaInformatika.backend.Verdict.Model.Verdict;
import com.example.pravnaInformatika.backend.Verdict.Service.VerdictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/verdict")
public class VerdictController {

    @Autowired
    private VerdictService verdictService;

    @GetMapping("/all")
    public ResponseEntity<List<Verdict>> getAllVerdicts(){
        List<Verdict> verdicts = verdictService.getAll();
        return ResponseEntity.ok(verdicts);
    }

}
