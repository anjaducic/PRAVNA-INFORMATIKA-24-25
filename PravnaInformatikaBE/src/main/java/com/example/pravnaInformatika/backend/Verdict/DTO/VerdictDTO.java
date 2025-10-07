package com.example.pravnaInformatika.backend.Verdict.DTO;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;

public class VerdictDTO implements CaseComponent{
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

    //Dodatni atributi za rasudjivanje po slucajevima
    private String familyObligationsViolation;
    private String extramaritalRelationshipMinor;
    private String unlawfulDetention;
    private String familyMemberMaintenance;
    private String domesticViolence;


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

    //Novi getteri za nove atribute
    public String getFamilyObligationsViolation() { return familyObligationsViolation; }
    public String getExtramaritalRelationshipMinor() { return extramaritalRelationshipMinor; }
    public String getUnlawfulDetention() { return unlawfulDetention; }
    public String getFamilyMemberMaintenance() { return familyMemberMaintenance; }
    public String getDomesticViolence() { return domesticViolence; }


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

    //Novi setteri za nove atribute
    public void setFamilyObligationsViolation(String familyObligationsViolation) {this.familyObligationsViolation = familyObligationsViolation;}
    public void setExtramaritalRelationshipMinor(String extramaritalRelationshipMinor) {this.extramaritalRelationshipMinor = extramaritalRelationshipMinor;}
    public void setUnlawfulDetention(String unlawfulDetention) {this.unlawfulDetention = unlawfulDetention;}
    public void setFamilyMemberMaintenance(String familyMemberMaintenance) {this.familyMemberMaintenance = familyMemberMaintenance;}
    public void setDomesticViolence(String domesticViolence) {this.domesticViolence = domesticViolence;}

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
                ", familyObligationsViolation='" + familyObligationsViolation + '\'' +
                ", extramaritalRelationshipMinor='" + extramaritalRelationshipMinor + '\'' +
                ", unlawfulDetention='" + unlawfulDetention + '\'' +
                ", familyMemberMaintenance='" + familyMemberMaintenance + '\'' +
                ", domesticViolence='" + domesticViolence + '\'' +
                '}';
    }

    @Override
    public Attribute getIdAttribute() {
        return null;
    }

}
