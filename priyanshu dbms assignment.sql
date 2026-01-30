

-- Q3: Create Student table (with constraints)
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

-- Q4: Create Course table (alternate style)
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    Credits INT CHECK (Credits > 0)
);

-- Q5: Add City column
ALTER TABLE Student 
ADD COLUMN City VARCHAR(25);

-- Q6: Add Semester column
ALTER TABLE Student 
ADD COLUMN Semester TINYINT;

-- Q7: Rename Phone to MobileNo
ALTER TABLE Student 
RENAME COLUMN Phone TO MobileNo;

-- Q8: Drop Course table
DROP TABLE IF EXISTS Course;


-- Q9: Insert records (different data)
INSERT INTO Student VALUES
(201,'Ankit','IT',19,'9876501234','Patna',2),
(202,'Suman','CSE',21,'9123409876','Ranchi',4),
(203,'Pooja','ECE',22,'9988001122','Bhopal',5),
(204,'Karan','ME',20,'9090112233','Indore',3),
(205,'Nisha','CSE',23,'9011223344','Jaipur',6);

-- Q10: Display all records
SELECT * FROM Student;

-- Q11: Display RollNo and Name only
SELECT RollNo AS ID, Name AS Student_Name FROM Student;

-- Q12: Display students of CSE department
SELECT * FROM Student 
WHERE Dept LIKE 'CSE';

-- Q13: Display students with age above 20
SELECT Name, Age FROM Student 
WHERE Age >= 21;

-- Q14: Update department of RollNo 201
UPDATE Student 
SET Dept = 'ECE'
WHERE RollNo = 201;

-- Q15: Update city of student Pooja
UPDATE Student 
SET City = 'Delhi'
WHERE Name = 'Pooja';

-- Q16: Increase age of all students
UPDATE Student 
SET Age = Age + 1;

-- Q17: Delete student with RollNo 205
DELETE FROM Student 
WHERE RollNo = 205;

-- Q18: Remove all records but keep table
TRUNCATE TABLE Student;