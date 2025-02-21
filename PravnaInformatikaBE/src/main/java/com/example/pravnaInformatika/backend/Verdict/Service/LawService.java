package com.example.pravnaInformatika.backend.Verdict.Service;

import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.stream.Collectors;

@Service
public class LawService {

    public String getLaw() throws IOException {
        String filePath = "src/main/resources/krivicni.html";

        // Read file content and return it as a string
        return Files.lines(Paths.get(filePath)).collect(Collectors.joining("\n"));
    }
}
