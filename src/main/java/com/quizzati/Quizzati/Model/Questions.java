package com.quizzati.Quizzati.Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Questions {
    @Id
    Integer questionId;
    Integer courseId;
    String question;
    String correctAnswer;

    @Column(name = "option_a")
    String optionA;
    @Column(name = "option_b")
    String optionB;
    @Column(name = "option_c")
    String optionC;
    @Column(name = "option_d")
    String optionD;
}
