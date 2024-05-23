package com.quizzati.Quizzati.Controller;

import com.quizzati.Quizzati.Model.Courses;
import com.quizzati.Quizzati.Model.Program;
import com.quizzati.Quizzati.Model.Questions;
import com.quizzati.Quizzati.Service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("Test")
@CrossOrigin
public class Controller {


    @Autowired
    Service service;
    @RequestMapping("programs")
    public List<Program> getAllPrograms(){
        return service.getAllPrograms();
    }

    @RequestMapping("courses")
    public List<Courses> getAllCourses(){
        return service.getAllCourses();
    }

    @RequestMapping("questions")
    public List<Questions> getAllQuestions(){
        return service.getAllQuestions();
    }

    @RequestMapping("courses/{program_id}/{semester}")
    public List<Courses> getCourses(@PathVariable Integer program_id,
                                    @PathVariable Integer semester){
        return service.getCourses(program_id, semester);
    }

    @RequestMapping("questions/{course_id}")
    public List<Questions> getQuestions(@PathVariable Integer course_id){
        return service.getQuestions(course_id);
    }


}
