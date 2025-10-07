package com.example.pravnaInformatika.backend.Verdict.DTO;

import java.util.Map;

public class RdfInputDTO
{

    private String caseName;
    private String defendant;
    private String dependent;
    private Map<String, Boolean> violations;

    // Constructors
    public RdfInputDTO() {}

    public RdfInputDTO(String caseName, String defendant, String dependent, Map<String, Boolean> violations) {
        this.caseName = caseName;
        this.defendant = defendant;
        this.dependent = dependent;
        this.violations = violations;
    }


    public String getCaseName() {
        return caseName;
    }

    public void setCaseName(String caseName) {
        this.caseName = caseName;
    }

    public String getDefendant() {
        return defendant;
    }

    public void setDefendant(String defendant) {
        this.defendant = defendant;
    }

    public String getDependent() {
        return dependent;
    }

    public void setDependent(String dependent) {
        this.dependent = dependent;
    }

    public Map<String, Boolean> getViolations() {
        return violations;
    }

    public void setViolations(Map<String, Boolean> violations) {
        this.violations = violations;
    }
}


