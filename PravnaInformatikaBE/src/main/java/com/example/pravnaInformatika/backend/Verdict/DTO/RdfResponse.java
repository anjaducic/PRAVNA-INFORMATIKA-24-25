package com.example.pravnaInformatika.backend.Verdict.DTO;

public class RdfResponse {
    private String message;
    private String filePath;
    private String fileName;
    private String caseName;


    public RdfResponse(String message, String filePath, String fileName, String caseName) {
        this.message = message;
        this.filePath = filePath;
        this.fileName = fileName;
        this.caseName = caseName;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getCaseName() {
        return caseName;
    }

    public void setCaseName(String caseName) {
        this.caseName = caseName;
    }
}
