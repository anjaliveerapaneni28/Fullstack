-- Active: 1767517213029@@127.0.0.1@3306@fullstack

USE fullstack;


-- Student (VTU Number, Name, Email, Phone, Department) 
	CREATE TABLE Student (
    VTU_Number VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Department VARCHAR(50)
);

--Course (Course Code, Course Name, Faculty Id, Student ID, Faculty Email) 
    CREATE TABLE Course (
    Course_Code VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(100),
    Faculty_Id INT,
    Student_ID VARCHAR(20),
    Faculty_Email VARCHAR(100),
    FOREIGN KEY (Student_ID) REFERENCES Student(VTU_Number)
);
