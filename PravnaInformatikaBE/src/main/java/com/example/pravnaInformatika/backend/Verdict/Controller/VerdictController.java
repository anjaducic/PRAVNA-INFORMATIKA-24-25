package com.example.pravnaInformatika.backend.Verdict.Controller;

import com.example.pravnaInformatika.backend.Verdict.DTO.VerdictDTO;
import com.example.pravnaInformatika.backend.Verdict.DTO.VerdictMetadataDTO;
import com.example.pravnaInformatika.backend.Verdict.Model.Verdict;
import com.example.pravnaInformatika.backend.Verdict.Service.VerdictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

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

    //vraca listu naziva presuda iz foldera resources/Verdicts/html na bekendu
    @GetMapping("/verdicts-names")
    public List<String> getVerdictFiles() throws IOException {
        ClassPathResource folder = new ClassPathResource("static/Verdicts/html");
        return Arrays.stream(folder.getFile().listFiles())
                .filter(File::isFile)
                .map(File::getName)
                .collect(Collectors.toList());
    }

    //vraca html presudu prema nazivu presude
    @GetMapping("/{fileName:.+}")
    public ResponseEntity<InputStreamResource> getVerdictFile(@PathVariable String fileName) throws IOException {
        ClassPathResource htmlFile = new ClassPathResource("static/Verdicts/html/" + fileName + ".html");
        if (!htmlFile.exists()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "inline;filename=" + fileName)
                .contentType(MediaType.TEXT_HTML)
                .body(new InputStreamResource(htmlFile.getInputStream()));
    }

    @GetMapping("/metadata")
    public ResponseEntity<List<VerdictMetadataDTO>> getVerdictMetadata() throws IOException {
        List<VerdictMetadataDTO> metadataList = verdictService.getAllMetadata();
        return ResponseEntity.ok(metadataList);
    }

    @GetMapping("/attributes/{caseName}")
    public ResponseEntity<VerdictDTO> getVerdictAttributes(@PathVariable String caseName) throws IOException {
        VerdictDTO dto = verdictService.getAttributesByCaseName(caseName);
        if (dto == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(dto);
    }




}
