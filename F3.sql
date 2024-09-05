CREATE DATABASE college;
USE college;
CREATE TABLE student(
  rollno INT PRIMARY KEY,
  nme VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(25)
);
INSERT INTO student
(rollno,nme,marks,grade,city)
VALUES
(0122,"Pranay",72,"B","Hyderabad"),
(2326,"Abhishek",83,"A","Vizag"),
(0185,"Purna",79,"B","Hyderabad"),
(3721,"kamalesh",93,"S","Banglore"),
(2533,"KM",87,"A","Vijayawada"),
(2836,"Pavan",91,"S","Hyderabad"),
(3327,"Haranath",77,"B","chennai"),
(0279,"Ganesh",81,"A","Vijayawada"),
(001,"spr",12,"A","Vizag"),
(002,"dpr",38,"A","Vijayawada"),
(003,"kpr",44,"A","Hyderabad");

-- About clauses(Look into it carefully)
SELECT * 
FROM student 
WHERE marks>80;

SELECT * 
FROM student 
WHERE marks>81 AND city="Vijayawada";

SELECT * 
FROM student 
WHERE marks BETWEEN 72 AND 87  OR city IN ("Banglore","Vizag") 
LIMIT 4;    -- it is giving in ascending of marks(by default(itself))

SELECT * 
FROM student 
ORDER BY marks DESC;

SELECT city,AVG(marks)
FROM student 
GROUP BY city
ORDER BY AVG(marks);   -- this is the query to find the avg marks of each city in ascending order(by default).

SELECT grade,COUNT(rollno)  -- here we can use COUNT(rollno) as we need count for the grades.
FROM student 
GROUP BY grade
ORDER BY grade;       -- this is the query to find the count of no of students got the particular grade.

SELECT city,COUNT(nme)
FROM student 
GROUP BY city
HAVING max(marks)>90;   -- this is the query to count the no of students in each city and having max marks greater than 90.

SET SQL_SAFE_UPDATES=0;   -- Unlocking the safe mode for updation.(0 -> safe mode OFF),(1 -> safe mode ON).

UPDATE STUDENT
SET grade="F"
WHERE marks<50;

SELECT * FROM student;

UPDATE STUDENT
SET grade="E", marks=55
WHERE rollno=003;

SELECT * FROM student;

DELETE FROM STUDENT
WHERE marks<50;

SELECT * FROM student;

DROP TABLE student;
DROP DATABASE college;



