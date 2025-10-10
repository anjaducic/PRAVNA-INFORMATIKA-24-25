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

    //Dodatni atributi za rasudjivanje po slucajevima
    private Boolean fails_to_provide_support;
    private Boolean support_duty_legally_established;
    private Boolean violates_family_obligations;
    private Boolean used_force_threat_or_greed;
    private Boolean endangered_child_wellbeing;
    private Boolean used_weapon_or_child_present;
    private Boolean caused_severe_injury_or_against_child;
    private Boolean family_member_died;

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

    //Novi atributi
    public Boolean getFails_to_provide_support() {return fails_to_provide_support;}
    public Boolean getSupport_duty_legally_established() {return support_duty_legally_established;}
    public Boolean getViolates_family_obligations() {return violates_family_obligations;}
    public Boolean getUsed_force_threat_or_greed() {return used_force_threat_or_greed;}
    public Boolean getEndangered_child_wellbeing() {return endangered_child_wellbeing;}
    public Boolean getUsed_weapon_or_child_present() {return used_weapon_or_child_present;}
    public Boolean getCaused_severe_injury_or_against_child() {return caused_severe_injury_or_against_child;}
    public Boolean getFamily_member_died() {return family_member_died;}

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
    //Novi atributi
    public void setFails_to_provide_support(Boolean fails_to_provide_support) {this.fails_to_provide_support = fails_to_provide_support;}
    public void setSupport_duty_legally_established(Boolean support_duty_legally_established) {this.support_duty_legally_established = support_duty_legally_established;}
    public void setViolates_family_obligations(Boolean violates_family_obligations) {this.violates_family_obligations = violates_family_obligations;}
    public void setUsed_force_threat_or_greed(Boolean used_force_threat_or_greed) {this.used_force_threat_or_greed = used_force_threat_or_greed;}
    public void setEndangered_child_wellbeing(Boolean endangered_child_wellbeing) {this.endangered_child_wellbeing = endangered_child_wellbeing;}
    public void setUsed_weapon_or_child_present(Boolean used_weapon_or_child_present) {this.used_weapon_or_child_present = used_weapon_or_child_present;}
    public void setCaused_severe_injury_or_against_child(Boolean caused_severe_injury_or_against_child) {this.caused_severe_injury_or_against_child = caused_severe_injury_or_against_child;}
    public void setFamily_member_died(Boolean family_member_died) {this.family_member_died = family_member_died;}

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
                ", fails_to_provide_support=" + fails_to_provide_support +  //  novi atributi
                ", support_duty_legally_established=" + support_duty_legally_established +
                ", violates_family_obligations=" + violates_family_obligations +
                ", used_force_threat_or_greed=" + used_force_threat_or_greed +
                ", endangered_child_wellbeing=" + endangered_child_wellbeing +
                ", used_weapon_or_child_present=" + used_weapon_or_child_present +
                ", caused_severe_injury_or_against_child=" + caused_severe_injury_or_against_child +
                ", family_member_died=" + family_member_died +
                '}';
    }

    @Override
    public Attribute getIdAttribute() {
        return null;
    }

}
