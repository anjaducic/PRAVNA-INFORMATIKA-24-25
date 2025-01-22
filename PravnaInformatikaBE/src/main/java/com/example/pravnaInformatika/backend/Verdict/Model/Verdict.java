package com.example.pravnaInformatika.backend.Verdict.Model;

import jakarta.persistence.*;

@Entity
public class Verdict {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String description;

    public Verdict() {
    }
}
