package com.example.pravnaInformatika.backend.Verdict.Repository;

import com.example.pravnaInformatika.backend.Verdict.Model.Verdict;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VerdictRepository extends JpaRepository<Verdict, Long> {
}
