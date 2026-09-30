USE CollegeDB;

-- Department Table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Faculty Table
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    FacultyID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);

-- Enrollment Table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Insert Department Records (3)
INSERT INTO Department VALUES
(10, 'Computer Science'),
(20, 'Electronics'),
(30, 'Mechanical');

-- Insert Student Records (4)
INSERT INTO Student VALUES
(1001, 'Arun', 10),
(1002, 'Bala', 20),
(1003, 'Charan', 10),
(1004, 'Divya', 30);

-- Insert Faculty Records (3)
INSERT INTO Faculty VALUES
(201, 'Ramesh', 10),
(202, 'Suresh', 20),
(203, 'Mahesh', 30);

-- Insert Course Records (4)
INSERT INTO Course VALUES
(301, 'DBMS', 10, 201),
(302, 'Data Structures', 10, 201),
(303, 'Digital Electronics', 20, 202),
(304, 'Thermodynamics', 30, 203);

-- Insert Enrollment Records (5)
INSERT INTO Enrollment VALUES
(1, 1001, 301),
(2, 1001, 302),
(3, 1002, 303),
(4, 1003, 301),
(5, 1004, 304);
