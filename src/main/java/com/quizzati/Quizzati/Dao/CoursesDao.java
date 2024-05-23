package com.quizzati.Quizzati.Dao;

import com.quizzati.Quizzati.Model.Courses;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CoursesDao extends JpaRepository<Courses, Integer> {
    List<Courses> findByProgramIdAndSemester(Integer id, Integer semester);
}
