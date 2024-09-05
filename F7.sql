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

SELECT * FROM student;

-- this is about sub queries

SELECT rollno,nme,marks                 -- this is a sub query of getting students data where student's marks are greater than their avg class mark.
FROM student
WHERE marks > (
	SELECT  AVG(marks)
    FROM student);
    
SELECT rollno,nme,marks                 -- this is a sub query of getting students data having even rollno.
FROM student
WHERE rollno IN (
	SELECT  rollno
    FROM student
	WHERE rollno%2=0);  

select MAX(marks)                              -- this is a sub-query of another way by using FROM 
FROM (   
	SELECT *
	FROM student
	WHERE city="Hyderabad") AS temp;

-- this about Views(A virtual table based on the result-set of an SQL statement)
CREATE VIEW veiw1 AS 
SELECT nme ,rollno,marks
FROM student;

SELECT * FROM veiw1;

DROP VIEW veiw1;

DROP TABLE student;
DROP DATABASE college;

