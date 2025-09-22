package com.example.pravnaInformatika.backend.Verdict.DTO;

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

    private String articleId;
    private String paragraphId;
    private String penalty;

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

    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId;
    }

    public String getParagraphId() {
        return paragraphId;
    }

    public void setParagraphId(String paragraphId) {
        this.paragraphId = paragraphId;
    }

    public String getPenalty() {
        return penalty;
    }

    public void setPenalty(String penalty) {
        this.penalty = penalty;
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
                ", articleId='" + articleId + '\'' +
                ", paragraphId='" + paragraphId + '\'' +
                ", penalty='" + penalty + '\'' +
                '}';
    }
}
