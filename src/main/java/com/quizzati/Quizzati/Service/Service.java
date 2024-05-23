package com.quizzati.Quizzati.Service;

import com.quizzati.Quizzati.Dao.CoursesDao;
import com.quizzati.Quizzati.Dao.ProgramDao;
import com.quizzati.Quizzati.Dao.QuestionsDao;
import com.quizzati.Quizzati.Model.Courses;
import com.quizzati.Quizzati.Model.Program;
import com.quizzati.Quizzati.Model.Questions;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@org.springframework.stereotype.Service
public class Service {
    @Autowired
    ProgramDao programDao;
    @Autowired
    CoursesDao coursesDao;
    @Autowired
    QuestionsDao questionsDao;
    public List<Program> getAllPrograms(){
        return programDao.findAll();
    }

    public List<Courses> getAllCourses() {
        return coursesDao.findAll();
    }

    public List<Questions> getAllQuestions() {
        return questionsDao.findAll();
    }

    public List<Courses> getCourses(Integer program_id, Integer semester) {
        return coursesDao.findByProgramIdAndSemester(program_id, semester);
    }

    public List<Questions> getQuestions(Integer courseId) {
    return questionsDao.findByCourseId(courseId);

    }
}
