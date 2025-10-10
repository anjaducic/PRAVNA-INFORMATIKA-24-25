package com.example.pravnaInformatika.backend.Verdict.DTO;

import java.util.List;

public class VerdictCreateDTO {
    private String caseName;
    private String court;
    private String judge;
    private String clerk;
    private String defendant;
    private String prosecutorAttorney;
    private String defenseAttorney;
    private String injuredParty;
    private String legalRepresentative;
    private String expert;
    private String participants;
    private String organizations;
    private String date;

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

    //  novi atributi
    private Boolean fails_to_provide_support;
    private Boolean support_duty_legally_established;
    private Boolean violates_family_obligations;
    private Boolean used_force_threat_or_greed;
    private Boolean endangered_child_wellbeing;
    private Boolean commits_domestic_violence;
    private Boolean used_weapon_or_child_present;
    private Boolean caused_severe_injury_or_against_child;
    private Boolean family_member_died;

    private List<ViolationDTO> violations;
    private Boolean foundGuilty;

    public Boolean getFoundGuilty() {
        return foundGuilty;
    }

    @Override
    public String toString() {
        return "VerdictCreateDTO{" +
                "caseName='" + caseName + '\'' +
                ", court='" + court + '\'' +
                ", judge='" + judge + '\'' +
                ", clerk='" + clerk + '\'' +
                ", defendant='" + defendant + '\'' +
                ", prosecutorAttorney='" + prosecutorAttorney + '\'' +
                ", defenseAttorney='" + defenseAttorney + '\'' +
                ", injuredParty='" + injuredParty + '\'' +
                ", legalRepresentative='" + legalRepresentative + '\'' +
                ", expert='" + expert + '\'' +
                ", participants='" + participants + '\'' +
                ", organizations='" + organizations + '\'' +
                ", date='" + date + '\'' +
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
                ", foundGuilty=" + foundGuilty +
                ", violations=" + violations +
                ", fails_to_provide_support=" + fails_to_provide_support +
                ", support_duty_legally_established=" + support_duty_legally_established +
                ", violates_family_obligations=" + violates_family_obligations +
                ", used_force_threat_or_greed=" + used_force_threat_or_greed +
                ", endangered_child_wellbeing=" + endangered_child_wellbeing +
                ", commits_domestic_violence=" + commits_domestic_violence +
                ", used_weapon_or_child_present=" + used_weapon_or_child_present +
                ", caused_severe_injury_or_against_child=" + caused_severe_injury_or_against_child +
                ", family_member_died=" + family_member_died +
                '}';
    }

    public void setFoundGuilty(Boolean foundGuilty) {
        this.foundGuilty = foundGuilty;
    }


    public List<ViolationDTO> getViolations() {
        return violations;
    }

    public void setViolations(List<ViolationDTO> violations) {
        this.violations = violations;
    }

    public String getCaseName() {
        return caseName;
    }

    public void setCaseName(String caseName) {
        this.caseName = caseName;
    }

    public String getCourt() {
        return court;
    }

    public void setCourt(String court) {
        this.court = court;
    }

    public String getJudge() {
        return judge;
    }

    public void setJudge(String judge) {
        this.judge = judge;
    }

    public String getClerk() {
        return clerk;
    }

    public void setClerk(String clerk) {
        this.clerk = clerk;
    }

    public String getDefendant() {
        return defendant;
    }

    public void setDefendant(String defendant) {
        this.defendant = defendant;
    }

    public String getProsecutorAttorney() {
        return prosecutorAttorney;
    }

    public void setProsecutorAttorney(String prosecutorAttorney) {
        this.prosecutorAttorney = prosecutorAttorney;
    }

    public String getDefenseAttorney() {
        return defenseAttorney;
    }

    public void setDefenseAttorney(String defenseAttorney) {
        this.defenseAttorney = defenseAttorney;
    }

    public String getInjuredParty() {
        return injuredParty;
    }

    public void setInjuredParty(String injuredParty) {
        this.injuredParty = injuredParty;
    }

    public String getLegalRepresentative() {
        return legalRepresentative;
    }

    public void setLegalRepresentative(String legalRepresentative) {
        this.legalRepresentative = legalRepresentative;
    }

    public String getExpert() {
        return expert;
    }

    public void setExpert(String expert) {
        this.expert = expert;
    }

    public String getParticipants() {
        return participants;
    }

    public void setParticipants(String participants) {
        this.participants = participants;
    }

    public String getOrganizations() {
        return organizations;
    }

    public void setOrganizations(String organizations) {
        this.organizations = organizations;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Boolean getAcknowledged() {
        return acknowledged;
    }

    public void setAcknowledged(Boolean acknowledged) {
        this.acknowledged = acknowledged;
    }

    public Boolean getConvicted() {
        return convicted;
    }

    public void setConvicted(Boolean convicted) {
        this.convicted = convicted;
    }

    public String getFinancialStatus() {
        return financialStatus;
    }

    public void setFinancialStatus(String financialStatus) {
        this.financialStatus = financialStatus;
    }

    public Boolean getMaintenance() {
        return maintenance;
    }

    public void setMaintenance(Boolean maintenance) {
        this.maintenance = maintenance;
    }

    public Boolean getRepentance() {
        return repentance;
    }

    public void setRepentance(Boolean repentance) {
        this.repentance = repentance;
    }

    public Boolean getPreviousFamilyIssues() {
        return previousFamilyIssues;
    }

    public void setPreviousFamilyIssues(Boolean previousFamilyIssues) {
        this.previousFamilyIssues = previousFamilyIssues;
    }

    public String getInjuryType() {
        return injuryType;
    }

    public void setInjuryType(String injuryType) {
        this.injuryType = injuryType;
    }

    public Boolean getCorrectBehavior() {
        return correctBehavior;
    }

    public void setCorrectBehavior(Boolean correctBehavior) {
        this.correctBehavior = correctBehavior;
    }

    public Boolean getInjuredCriminalProsecution() {
        return injuredCriminalProsecution;
    }

    public void setInjuredCriminalProsecution(Boolean injuredCriminalProsecution) {
        this.injuredCriminalProsecution = injuredCriminalProsecution;
    }

    public Boolean getPropertyClaim() {
        return propertyClaim;
    }

    public void setPropertyClaim(Boolean propertyClaim) {
        this.propertyClaim = propertyClaim;
    }

    public String getAccountability() {
        return accountability;
    }

    public void setAccountability(String accountability) {
        this.accountability = accountability;
    }

    public Boolean getIntentional() {
        return intentional;
    }

    public void setIntentional(Boolean intentional) {
        this.intentional = intentional;
    }

    //Novi atributi
    public Boolean getFails_to_provide_support() {return fails_to_provide_support;}
    public Boolean getSupport_duty_legally_established() {return support_duty_legally_established;}
    public Boolean getViolates_family_obligations() {return violates_family_obligations;}
    public Boolean getUsed_force_threat_or_greed() {return used_force_threat_or_greed;}
    public Boolean getEndangered_child_wellbeing() {return endangered_child_wellbeing;}
    public Boolean getCommits_domestic_violence() {return commits_domestic_violence;}
    public Boolean getUsed_weapon_or_child_present() {return used_weapon_or_child_present;}
    public Boolean getCaused_severe_injury_or_against_child() {return caused_severe_injury_or_against_child;}
    public Boolean getFamily_member_died() {return family_member_died;}

    public void setFails_to_provide_support(Boolean fails_to_provide_support) {this.fails_to_provide_support = fails_to_provide_support;}
    public void setSupport_duty_legally_established(Boolean support_duty_legally_established) {this.support_duty_legally_established = support_duty_legally_established;}
    public void setViolates_family_obligations(Boolean violates_family_obligations) {this.violates_family_obligations = violates_family_obligations;}
    public void setUsed_force_threat_or_greed(Boolean used_force_threat_or_greed) {this.used_force_threat_or_greed = used_force_threat_or_greed;}
    public void setEndangered_child_wellbeing(Boolean endangered_child_wellbeing) {this.endangered_child_wellbeing = endangered_child_wellbeing;}
    public void setCommits_domestic_violence(Boolean commits_domestic_violence) {this.commits_domestic_violence = commits_domestic_violence;}
    public void setUsed_weapon_or_child_present(Boolean used_weapon_or_child_present) {this.used_weapon_or_child_present = used_weapon_or_child_present;}
    public void setCaused_severe_injury_or_against_child(Boolean caused_severe_injury_or_against_child) {this.caused_severe_injury_or_against_child = caused_severe_injury_or_against_child;}
    public void setFamily_member_died(Boolean family_member_died) {this.family_member_died = family_member_died;}

}
