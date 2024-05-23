package com.quizzati.Quizzati.Dao;

import com.quizzati.Quizzati.Model.Courses;
import com.quizzati.Quizzati.Model.Questions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionsDao extends JpaRepository<Questions, Integer> {
    List<Questions> findByCourseId(Integer id);
}
