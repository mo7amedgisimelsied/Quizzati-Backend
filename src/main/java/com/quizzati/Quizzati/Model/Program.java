package com.quizzati.Quizzati.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Program {

    @Id
    Integer programId;
    String programName;
    String programImage;
    Integer available;
    String major;
}
