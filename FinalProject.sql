CREATE DATABASE teachers_portal;
USE teachers_portal;
CREATE TABLE Students (
studentId INT NOT NULL UNIQUE AUTO_INCREMENT,
studentName VARCHAR(45) NOT NULL, 
enrolledInCourseID INT DEFAULT 1,
grade FLOAT NULL, 
PRIMARY KEY (studentId)
);
CREATE TABLE Courses (
courseId INT NOT NULL UNIQUE AUTO_INCREMENT,
courseName VARCHAR(45) NOT NULL,
PRIMARY KEY (courseId)
);
INSERT INTO Students (studentName, enrolledInCourseID, grade)
VALUES ("Maria Jozef", 1,90.0),
       ("Linda Jones", 2, 89.0), 
       ("John McGrail", 1, 98.0), 
       ("Patty Luna", 2, 78.0);
SELECT * FROM Students;
INSERT INTO Courses (courseName)
VALUES ("Database Design"), 
	   ("Calculus"),
       ("Physics I");
SELECT * FROM Courses;
delimiter $$       
CREATE PROCEDURE studentsWithGrade()
Begin
SELECT *
FROM Studentss
	LEFT JOIN Courses ON Students.enrolledInCourseID = Courses.courseID; 
END $$
delimiter ;



