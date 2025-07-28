-- Create new database
CREATE DATABASE StudentDB_New;
GO

-- Use the new database
USE StudentDB_New;
GO

-- Create Students table
CREATE TABLE NewStudents (
    StudentID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT
);
GO

-- Create Courses table
CREATE TABLE NewCourses (
    CourseID INT PRIMARY KEY,
    CourseName NVARCHAR(100)
);
GO

-- Create Enrollments table with foreign keys
CREATE TABLE NewEnrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(1),
    FOREIGN KEY (StudentID) REFERENCES NewStudents(StudentID),
    FOREIGN KEY (CourseID) REFERENCES NewCourses(CourseID)
);
GO

-- Insert sample data into Students
INSERT INTO NewStudents (StudentID, Name, Age) VALUES 
(1, 'Alice', 20),
(2, 'Bob', 22),
(3, 'Charlie', 21);
GO

-- Insert sample data into Courses
INSERT INTO NewCourses (CourseID, CourseName) VALUES 
(101, 'Math'),
(102, 'Science'),
(103, 'History');
GO

-- Insert sample data into Enrollments
INSERT INTO NewEnrollments (EnrollmentID, StudentID, CourseID, Grade) VALUES 
(1, 1, 101, 'A'),
(2, 1, 102, 'B'),
(3, 2, 103, 'A'),
(4, 3, 101, 'C');
GO

