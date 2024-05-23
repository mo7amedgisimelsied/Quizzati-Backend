package com.quizzati.Quizzati.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Courses {
    @Id
    Integer courseId;
    Integer programId;
    Integer semester;
    String courseName;

}
