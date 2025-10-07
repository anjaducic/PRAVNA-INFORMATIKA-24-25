package com.example.pravnaInformatika.backend.Verdict.DTO;

import java.util.List;

public class RdfOutputDTO {
    private List<String> provenViolations;
    private int minSentenceDays;
    private int maxSentenceDays;

    public List<String> getProvenViolations() {
        return provenViolations;
    }

    public void setProvenViolations(List<String> provenViolations) {
        this.provenViolations = provenViolations;
    }

    public int getMinSentenceDays() {
        return minSentenceDays;
    }

    public void setMinSentenceDays(int minSentenceDays) {
        this.minSentenceDays = minSentenceDays;
    }

    public int getMaxSentenceDays() {
        return maxSentenceDays;
    }

    public void setMaxSentenceDays(int maxSentenceDays) {
        this.maxSentenceDays = maxSentenceDays;
    }

    public RdfOutputDTO(List<String> provenViolations, int minSentenceDays, int maxSentenceDays) {
        this.provenViolations = provenViolations;
        this.minSentenceDays = minSentenceDays;
        this.maxSentenceDays = maxSentenceDays;
    }
}
