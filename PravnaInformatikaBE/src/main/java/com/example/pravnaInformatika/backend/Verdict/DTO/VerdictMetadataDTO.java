package com.example.pravnaInformatika.backend.Verdict.DTO;

public class VerdictMetadataDTO {
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

    // Getters
    public String getCaseName() { return caseName; }
    public String getCourt() { return court; }
    public String getJudge() { return judge; }
    public String getClerk() { return clerk; }
    public String getDefendant() { return defendant; }
    public String getProsecutorAttorney() { return prosecutorAttorney; }
    public String getDefenseAttorney() { return defenseAttorney; }
    public String getInjuredParty() { return injuredParty; }
    public String getLegalRepresentative() { return legalRepresentative; }
    public String getExpert() { return expert; }
    public String getParticipants() { return participants; }
    public String getOrganizations() { return organizations; }
    public String getDate() { return date; }

    // Setters
    public void setCaseName(String caseName) { this.caseName = caseName; }
    public void setCourt(String court) { this.court = court; }
    public void setJudge(String judge) { this.judge = judge; }
    public void setClerk(String clerk) { this.clerk = clerk; }
    public void setDefendant(String defendant) { this.defendant = defendant; }
    public void setProsecutorAttorney(String prosecutorAttorney) { this.prosecutorAttorney = prosecutorAttorney; }
    public void setDefenseAttorney(String defenseAttorney) { this.defenseAttorney = defenseAttorney; }
    public void setInjuredParty(String injuredParty) { this.injuredParty = injuredParty; }
    public void setLegalRepresentative(String legalRepresentative) { this.legalRepresentative = legalRepresentative; }
    public void setExpert(String expert) { this.expert = expert; }
    public void setParticipants(String participants) { this.participants = participants; }
    public void setOrganizations(String organizations) { this.organizations = organizations; }
    public void setDate(String date) { this.date = date; }
}
