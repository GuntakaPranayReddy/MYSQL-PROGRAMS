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

-- alter is used to change the schema(coloumn things)

ALTER TABLE student                         -- used to add the coloumn to the table
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student         -- used to modify the datatype/constraint of the column
MODIFY age VARCHAR(2);

ALTER TABLE student          -- used to change the name of the required column
CHANGE age Stud_age INT;

ALTER TABLE student      -- used to drop the coloumn of the table
DROP COLUMN stud_age;

ALTER TABLE student     -- used to change the name of the table
RENAME stu;                    

SELECT * FROM stu;

ALTER TABLE stu
RENAME student;

TRUNCATE student;    -- used to delete the table data.(so here table will exists & we can add new data into it)
SELECT * FROM student;

DROP TABLE student;  -- used to delete the table from database.
DROP DATABASE college; -- used to delete the database.

