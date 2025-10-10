package com.example.pravnaInformatika.backend.Verdict.DTO;

public class ViolationDTO {
    private String articleId;
    private String paragraphId;
    private String penalty;

    @Override
    public String toString() {
        return "ViolationDTO{" +
                "articleId='" + articleId + '\'' +
                ", paragraphId='" + paragraphId + '\'' +
                ", penalty='" + penalty + '\'' +
                '}';
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
}
