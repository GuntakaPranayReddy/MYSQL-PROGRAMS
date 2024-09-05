CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;
USE college;
CREATE TABLE student(
  id INT PRIMARY KEY,
  nme VARCHAR(50) NOT NULL,                   -- this is NOT NULL constraint
  age INT CHECK(age>=18),                     -- this is check constraint
  city VARCHAR(25),
  nationality VARCHAR(25) DEFAULT "INDIAN"    -- this is Default constraint
);
INSERT INTO student VALUES(1,"GVR",48,"CHENNAI","INDIAN"); -- while writing like this,you should mention all things even if you have default values.
INSERT INTO student VALUES(2,"BUJJI",42,"ONGOLE","INDIAN");
INSERT INTO student VALUES(3,"GPR",21,"BANGLORE","INDIAN");
INSERT INTO student VALUES(4,"GJR",20,"HYDERABAD","INDIAN");
INSERT INTO student(id,nme,age,city)
VALUES
(5,"VENKATESWARA REDDY",48,"ONGOLE"),
(6,"SUBBALAKSHMI",42,"CHENNAI"),
(7,"PRANAY REDDY",21,"LUCKNOW"),
(8,"JAIDEEP REDDY",20,"MUMBAI");
SELECT nme,age FROM student;
SELECT  city FROM student;
SELECT DISTINCT city FROM student;
SELECT * FROM student;
SHOW TABLES;
DROP TABLE student;
DROP TABLE IF EXISTS student;
SHOW DATABASES;
DROP DATABASE college;
SHOW DATABASES;



