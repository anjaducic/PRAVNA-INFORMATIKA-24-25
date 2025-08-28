package com.example.pravnaInformatika.backend.Verdict.CBR;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;

public class VerdictSimilarity implements CaseComponent{
    private String caseName; // Presuda
    private Boolean acknowledged; // Priznao
    private Boolean convicted; // Osudjivan
    private String financialStatus; // Materijalno_stanje
    private Boolean maintenance; // Izdrzavanje
    private Boolean repentance; // Kajanje
    private Boolean previousFamilyIssues; // Prethodni_porodicni_problemi
    private String injuryType; // Tip_povrede
    private Boolean correctBehavior; // Korektno_drzanje
    private Boolean injuredCriminalProsecution; // Osteceni_goni_krivicno
    private Boolean propertyClaim; // Imovinsko_pravni_zahtjev
    private String accountability; // Uracunljivost
    private Boolean intentional; // Sa_umisljajem
    private double similarity;

    public double getSimilarity() {
        return similarity;
    }

    public void setSimilarity(double similarity) {
        this.similarity = similarity;
    }

    // Getters
    public String getCaseName() { return caseName; }
    public Boolean getAcknowledged() { return acknowledged; }
    public Boolean getConvicted() { return convicted; }
    public String getFinancialStatus() { return financialStatus; }
    public Boolean getMaintenance() { return maintenance; }
    public Boolean getRepentance() { return repentance; }
    public Boolean getPreviousFamilyIssues() { return previousFamilyIssues; }
    public String getInjuryType() { return injuryType; }
    public Boolean getCorrectBehavior() { return correctBehavior; }
    public Boolean getInjuredCriminalProsecution() { return injuredCriminalProsecution; }
    public Boolean getPropertyClaim() { return propertyClaim; }
    public String getAccountability() { return accountability; }
    public Boolean getIntentional() { return intentional; }

    // Setters
    public void setCaseName(String fileName) { this.caseName = fileName; }
    public void setAcknowledged(Boolean acknowledged) { this.acknowledged = acknowledged; }
    public void setConvicted(Boolean convicted) { this.convicted = convicted; }
    public void setFinancialStatus(String financialStatus) { this.financialStatus = financialStatus; }
    public void setMaintenance(Boolean maintenance) { this.maintenance = maintenance; }
    public void setRepentance(Boolean repentance) { this.repentance = repentance; }
    public void setPreviousFamilyIssues(Boolean previousFamilyIssues) { this.previousFamilyIssues = previousFamilyIssues; }
    public void setInjuryType(String injuryType) { this.injuryType = injuryType; }
    public void setCorrectBehavior(Boolean correctBehavior) { this.correctBehavior = correctBehavior; }
    public void setInjuredCriminalProsecution(Boolean injuredCriminalProsecution) { this.injuredCriminalProsecution = injuredCriminalProsecution; }
    public void setPropertyClaim(Boolean propertyClaim) { this.propertyClaim = propertyClaim; }
    public void setAccountability(String accountability) { this.accountability = accountability; }
    public void setIntentional(Boolean intentional) { this.intentional = intentional; }

    @Override
    public String toString() {
        return "VerdictDTO{" +
                "caseName='" + caseName + '\'' +
                ", acknowledged=" + acknowledged +
                ", convicted=" + convicted +
                ", financialStatus='" + financialStatus + '\'' +
                ", maintenance=" + maintenance +
                ", repentance=" + repentance +
                ", previousFamilyIssues=" + previousFamilyIssues +
                ", injuryType='" + injuryType + '\'' +
                ", correctBehavior=" + correctBehavior +
                ", injuredCriminalProsecution=" + injuredCriminalProsecution +
                ", propertyClaim=" + propertyClaim +
                ", accountability='" + accountability + '\'' +
                ", intentional=" + intentional +
                '}';
    }

    @Override
    public Attribute getIdAttribute() {
        return null;
    }

}
