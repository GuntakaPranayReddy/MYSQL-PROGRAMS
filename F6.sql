CREATE DATABASE college;
USE college;

CREATE TABLE student(
   stud_id INT PRIMARY KEY,
   name VARCHAR(50)
);

INSERT INTO student(stud_id,name)
VALUES
(101,"pranay"),
(102,"purna"),
(103,"kamalesh"),
(105,"KM"),
(107,"Abhishek");

CREATE TABLE course(
   cour_id INT PRIMARY KEY,
   cour VARCHAR(50)
);

INSERT INTO course(cour_id,cour)
VALUES
(102,"Science"),
(101,"telugu"),
(103,"english"),
("104","maths"),
(107,"hindi"),
(108,"cs");

SELECT * FROM student;
SELECT * FROM course;

-- this is about joins in SQL(joins are use to combine rows of 2 or more tables, based on related coloumn btw them).

SELECT *                           -- this is inner join(means the common of the both table)
FROM Student as a
INNER JOIN course as b
ON a.stud_id=b.cour_id;

SELECT *                           -- this is left join(means total left side of the table)
FROM Student as a
LEFT JOIN course as b
ON a.stud_id=b.cour_id;

SELECT *                           -- this is right join(means total right side of the table)
FROM Student as a
RIGHT JOIN course as b
ON a.stud_id=b.cour_id;


SELECT *                       -- this is full join(means total left & right side of the table)
FROM Student as a
LEFT JOIN course as b
ON a.stud_id=b.cour_id
UNION              -- this means taking unique from common of the tables.
SELECT *                           
FROM Student as a
RIGHT JOIN course as b
ON a.stud_id=b.cour_id;

SELECT *                       -- means total left & right side of the table
FROM Student as a
LEFT JOIN course as b
ON a.stud_id=b.cour_id
UNION ALL             -- this means it allows and give duplicates(giving commmon thing multiple times) of the tables.
SELECT *                           
FROM Student as a
RIGHT JOIN course as b
ON a.stud_id=b.cour_id;

SELECT *                       -- this is left exclusive join
FROM Student as a
LEFT JOIN course as b
ON a.stud_id=b.cour_id
WHERE b.cour_id IS NULL;

SELECT *                       -- this is right exclusive join
FROM Student as a
RIGHT JOIN course as b
ON a.stud_id=b.cour_id
WHERE a.stud_id IS NULL;

SELECT *    			                       -- this is self join(the table is joined to itself)            
FROM Student as a
JOIN Student as b
ON a.stud_id=b.stud_id;

SELECT b.stud_id as roll_no,a.name as stud_name     			-- this is self join(the table is joined to itself)            
FROM Student as a
JOIN Student as b
ON a.stud_id=b.stud_id;

DROP TABLE student;
DROP TABLE course;
DROP DATABASE college;


