 CREATE DATABASE ProjectDB
 USE ProjectDB

 -- 1) Parent tables first

 CREATE TABLE Student (
 St_Id int PRIMARY KEY,
 St_Fname NVARCHAR(50),
 St_Lname NCHAR(10),
 St_Address NVARCHAR(50),
 St_Age INT,
 Dept_Id INT,
 St_Super INT)

 CREATE TABLE Department(
 Dept_Id INT PRIMARY KEY,
 Dept_Name NVARCHAR(50),
 Dept_Desc NVARCHAR(100),
 Dept_Location NVARCHAR(50),
 Dept_Manager INT,
 Manager_hiredate DATE)

 CREATE TABLE Instructor(
 Ins_Id INT PRIMARY KEY,
 Ins_Name NVARCHAR(50),
 Ins_Degree NVARCHAR(50),
 Salary MONEY,
 Dept_Id INT)
 
 CREATE TABLE InsCourse (
 Ins_Id INT NOT NULL,
 Crs_Id INT NOT NULL,
 Evaluation NVARCHAR(50),
 PRIMARY KEY (Ins_Id,Crs_Id))

 CREATE TABLE Course (
 Crs_Id INT PRIMARY KEY,
 Crs_Name NVARCHAR(50),
 Crs_Duration INT,
 Top_Id INT)

 CREATE TABLE StudCoures(
 Crs_Id INT NOT NULL,
 St_Id  INT NOT NULL,
 Gradr  INT         ,
 PRIMARY KEY (Crs_Id,St_Id))
 
 CREATE TABLE Topic (
 Top_Id INT PRIMARY KEY,
 Top_Name NVARCHAR(50))

 --2) Add FKs after all tables exist

 ALTER TABLE Course
 ADD CONSTRAINT FK_Course_Topic
 FOREIGN KEY(Top_Id)REFERENCES Topic(Top_Id)

 ALTER TABLE Student
 ADD CONSTRAINT FK_Student_Department
 FOREIGN KEY(Dept_Id)REFERENCES Department(Dept_Id)

 ALTER TABLE Student
 ADD CONSTRAINT FK_Student_Supervisor
 FOREIGN KEY(St_Super)REFERENCES Student(St_Id)

 ALTER TABLE Instructor
 ADD CONSTRAINT FK_Instructor_Department
 FOREIGN KEY(Dept_Id)REFERENCES Department(Dept_Id)

 ALTER TABLE Department
 ADD CONSTRAINT FK_Department_Instructor
 FOREIGN KEY(Dept_Manager)REFERENCES Instructor(Ins_Id)

 ALTER TABLE InsCourse
 ADD CONSTRAINT FK_InsCourse_Instructor
 FOREIGN KEY(Ins_Id)REFERENCES Instructor(Ins_Id)

 ALTER TABLE InsCourse
 ADD CONSTRAINT FK_InsCourse_Course
 FOREIGN KEY(Crs_Id)REFERENCES Course(Crs_Id)

 ALTER TABLE StudCoures
 ADD CONSTRAINT FK_StudCoures_Student
 FOREIGN KEY(St_Id)REFERENCES Student(St_Id)

 ALTER TABLE StudCoures
 ADD CONSTRAINT FK_StudCoures_Course
 FOREIGN KEY(Crs_Id)REFERENCES Course(Crs_Id)

 INSERT INTO Topic (Top_Id, Top_Name)
 VALUES
(1, 'Programming'),
(2, 'DB'),
(3, 'Web'),
(4, 'Operating System'),
(5, 'Design')

INSERT INTO Department
(Dept_id, Dept_Name, Dept_Desc, Dept_Location, Dept_Manager, Manager_Hiredate)
VALUES
(10, 'SD',   'System Development', 'Cairo',    NULL, '2000-01-01'),
(20, 'EL',   'E-Learning',         'Mansoura', NULL, '2002-10-02'),
(30, 'Java', 'Java',               'Cairo',    NULL, '2008-05-04'),
(40, 'MM',   'Multimedia',         'Alex',     NULL, '2009-01-01'),
(50, 'Unix', 'Unix',               'Alex',     NULL, NULL),
(60, 'NC',   'Network',            'Cairo',    NULL, NULL),
(70, 'EB',   'E-Business',         'Alex',     NULL, NULL);

INSERT INTO Instructor
(Ins_Id, Ins_Name, Ins_Degree, Salary, Dept_Id)
VALUES
(1,  'Ahmed',  'Master', NULL, 10),
(2,  'Hany',   'Master', NULL, 10),
(3,  'Reham',  'Master', NULL, 10),
(4,  'Yasmin', 'PHD',    NULL, 10),
(5,  'Amany',  'PHD',    NULL, 10),
(6,  'Eman',   'Master', NULL, 10),
(7,  'Saly',   NULL,     NULL, 10),
(8,  'Amr',    NULL,     NULL, 30),
(9,  'Hussien',NULL,     NULL, 50),
(10, 'Khalid', NULL,     NULL, 30),
(11, 'Salah',  NULL,     NULL, 70);

INSERT INTO Course
(Crs_Id, Crs_Name, Crs_Duration, Top_Id)
VALUES
(100, 'HTML',          20, 3),
(200, 'C Programming', 60, 1),
(300, 'OOP',           80, 1),
(400, 'Unix',          50, 4),
(500, 'SQL Server',    60, 2),
(600, 'Network',       40, 4),
(700, 'Data Design',   45, 5);


INSERT INTO Student
(St_id, St_Fname, St_Lname, St_Address, St_Age, Dept_id, St_Super)
VALUES
(1, 'Ahmed',   'Hassan',   'Cairo',     20, 10, NULL),
(2, 'Amr',     'Magdy',    'Cairo',     21, 10, 1),
(3, 'Mona',    'Saleh',    'Cairo',     22, 10, 1),
(4, 'Ahmed',   'Mohamed',  'Alex',      23, 10, 1),
(5, 'Khalid',  'Mohamed',  'Alex',      24, 10, 1),
(6, 'Heba',    'Farouk',   'Mansoura',  25, 20, NULL),
(7, 'Ali',     'Hussien',  'Cairo',     25, 20, 6),
(8, 'Mohamed', 'Fars',     'Alex',      28, 20, 6);

INSERT INTO InsCourse
(Ins_Id, Crs_Id, Evaluation)
VALUES
(1, 100, 'Good'),
(1, 200, 'Good'),
(1, 300, 'Good'),
(2, 400, 'VGood'),
(2, 500, 'Good'),
(3, 100, 'Distinct'),
(3, 600, 'VGood'),
(3, 700, 'Good'),
(4, 200, 'Good'),
(4, 300, 'Good');

INSERT INTO StudCoures
(Crs_Id, St_Id, Gradr)
VALUES
(100, 1, 100),
(100, 2, 90),
(100, 3, 80),
(100, 4, 70),
(100, 5, 100),
(100, 6, 90),
(200, 1, 90),
(200, 2, 90),
(200, 3, 80),
(200, 4, 80);


--retrieve number of students who have a value in their age. 
 
 SELECT COUNT(St_Age) as #students
 FROM Student

 --	Get all instructors Names without repetition

 SELECT DISTINCT Ins_Name
 FROM Instructor

 --	Display student with the following Format 

 SELECT *
 FROM Student
 SELECT *
 FROM Department

 SELECT S.St_Id,S.St_Fname+ ' ' +St_Lname AS "Student Full Name",D.Dept_Name
 FROM Student S LEFT JOIN Department D
 ON S.Dept_Id = D.Dept_Id

 --Display instructor Name and Department Name 
 --Note: display all the instructors if they are attached to a department or not
 SELECT *
 FROM Instructor
 SELECT *
 FROM Department

 SELECT I.Ins_Name,D.Dept_Name
 FROM Instructor I LEFT JOIN Department D
 ON I.Dept_Id= D.Dept_Id

 --Display student full name and the name of the course he is taking
--For only courses which have a grade  
 SELECT *
 FROM Student
 SELECT *
 FROM course
 SELECT *
 FROM StudCoures

 SELECT S.St_Fname+ ' ' +St_Lname AS "Student Full Name",C.Crs_Name,SC.Gradr
 FROM StudCoures SC LEFT JOIN Student S
 ON SC.St_Id = S.St_Id
 LEFT JOIN Course C
 ON SC.Crs_Id = C.Crs_Id

 --	Display number of courses for each topic name
  SELECT *
 FROM course

 SELECT T.Top_Name,COUNT(Crs_Name) AS #courses
 FROM Topic T INNER JOIN Course C
 on T.Top_Id = C.Top_Id
 GROUP BY T.Top_Name

 --Display max and min salary for instructors
 UPDATE Instructor
 SET Salary = NULL
 WHERE Ins_Id = 4
 SELECT *
 FROM Instructor

 SELECT MAX(Salary) as max_Salary,min(Salary) as min_Salary
 FROM Instructor

 --	Display instructors who have salaries less than the average salary of all instructors.
 
 select *
	from Instructor

SELECT Ins_Name, Salary
FROM Instructor
WHERE Salary < (
    SELECT AVG(Salary)
    FROM Instructor)

--Display the Department name that contains the instructor who receives the minimum salary.
select *
from Department

select D.Dept_Name,I.Salary
from Instructor I INNER JOIN Department D
ON I.Dept_Id = D.Dept_Id
where Salary = ( select MIN(Salary) from Instructor )

--Select max two salaries in instructor table.
 SELECT DISTINCT TOP 2 Salary
FROM Instructor
ORDER BY Salary DESC

--Select instructor name and his salary but if there is no salary display NA keyword instead. “use coalesce Function” 
ALTER TABLE Instructor
ALTER COLUMN Salary MONEY

SELECT Ins_Name,
COALESCE(Salary, 0) AS Salary
FROM Instructor

--Select Average Salary for instructors 
 SELECT AVG(Salary) as Avg_instructors 
 FROM Instructor

 --	Select Student first name and the data of his supervisor 
 SELECT S.St_Fname,ST.St_Fname AS supervisor
 FROM Student S LEFT JOIN Student ST
 ON S.St_Super = ST.St_Id

 --Create Stored Procedure to retrieve number of students for specific department name. 
CREATE PROCEDURE GetStudentCountByDepartment
    @DepartmentName NVARCHAR(100)
	AS BEGIN 
	select count(s.St_Id)
	from Student s inner join Department d
	on s.Dept_Id = d.Dept_Id 
	where d.Dept_Name = @DepartmentName 
	end

	EXEC GetStudentCountByDepartment 'el'


--	Create View that contains Student Name and his Courses that take
 
CREATE VIEW StudentCoursesView
AS
SELECT 
    s.St_Fname AS StudentName,
    c.Crs_Name AS CourseName
FROM Student s
INNER JOIN StudCoures sc 
    ON s.St_Id = sc.St_Id
INNER JOIN Course c 
    ON sc.Crs_Id = c.Crs_Id;




