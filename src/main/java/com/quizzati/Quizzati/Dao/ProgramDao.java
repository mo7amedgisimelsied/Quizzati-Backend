package com.quizzati.Quizzati.Dao;

import com.quizzati.Quizzati.Model.Program;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProgramDao extends JpaRepository<Program, Integer> {
}
