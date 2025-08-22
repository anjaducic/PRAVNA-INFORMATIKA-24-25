package com.example.pravnaInformatika.backend.Verdict.Service;

import com.example.pravnaInformatika.backend.Verdict.Model.Verdict;
import com.example.pravnaInformatika.backend.Verdict.Repository.VerdictRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class VerdictService {

    @Autowired
    private VerdictRepository verdictRepository;

    public List<Verdict> getAll() {

        return verdictRepository.findAll();

    }


}
