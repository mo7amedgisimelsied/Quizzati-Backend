-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: quizzatidb
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `question_id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `correct_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `course_id_idx` (`course_id`),
  CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'An object is an instance of a class','An object is a superclass of a class','An object is a subclass of a class','An object is unrelated to a class','What is the relationship between an object and a class in object-oriented programming?','a'),(2,1,'Through inheritance','Through interfaces','Through attributes','Through relationships','Which of the following describes how associations between classes are represented in object-oriented modeling?','d'),(3,1,'The ability of a method to have multiple forms','The ability of a class to have multiple instances','The ability of an object to have multiple attributes','The ability of a class to have multiple methods','What does polymorphism refer to in object-oriented systems?','a'),(4,1,'They are defined with the keyword \"static\"','They are defined with the keyword \"final\"','They are defined with the keyword \"abstract\"','They are defined with the keyword \"private\"','How are static attributes defined in a class in Java?','a'),(5,1,'To initialize the class variables','To define static methods','To create new classes','To implement polymorphism','What is the purpose of a constructor in Java?','a'),(6,1,'By overloading them with different parameters','By overriding them in subclasses','By extending them from a superclass','By implementing them as abstract methods','How can different constructors be used in Java?','a'),(7,1,'Inheritance','Encapsulation','Abstraction','Polymorphism','What is the fundamental concept of object orientation in software development?','b'),(8,1,'Analysis','Design','Implementation','Testing','Which phase in the object-oriented development process involves defining the behavior of objects?','b'),(9,1,'It leads to inefficient code execution','It hinders code reusability','It lacks proper encapsulation','It confuses class hierarchies','Why is pseudo object-oriented programming considered harmful according to Xing and Belkhouche?','b');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-23  8:19:21
