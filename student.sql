use student
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    Course VARCHAR(50)
);
INSERT INTO Student (StudentID, StudentName, Age, Course)
VALUES
(101, 'Roopa', 22, 'MCA'),
(102, 'Ravi', 21, 'B.Tech'),
(103, 'Priya', 23, 'MCA');
INSERT INTO Student (StudentID, StudentName, Age, Course)
VALUES
(104, 'Rekha', 24, 'MCA'),
(105, 'Ram', 26, 'B.Tech'),
(106, 'vivek', 28, 'MCA');
select * from student;
CREATE VIEW Student_view AS
SELECT StudentID, course
FROM Student;
select * from Student_view;
CREATE VIEW BTech_course AS
SELECT *
FROM Student
WHERE Course = 'B.Tech';
ALTER TABLE Student
ADD Marks INT;
select * from student;
UPDATE Student
SET Marks = 95
WHERE StudentID = 101;
UPDATE Student
SET Marks =90
WHERE StudentID = 102;
UPDATE Student
SET MARKS = 85
WHERE StudentID =103;
UPDATE Student
SET MARKS = 85
WHERE StudentID =104;
UPDATE Student
SET MARKS = 95
WHERE StudentID =105;
UPDATE Student
SET MARKS = 82
WHERE StudentID =106;
select * from student;
SELECT *
FROM Student
WHERE Marks >= 90;