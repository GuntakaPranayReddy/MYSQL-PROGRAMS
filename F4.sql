CREATE DATABASE college;
USE college;
CREATE TABLE dept(            -- Parent table
 id INT PRIMARY KEY,
 nme VARCHAR(50)
);
INSERT INTO dept
VALUES
(101,"telugu"),
(102,"english");

SELECT * FROM dept;

UPDATE dept
SET id=111
WHERE id=101;

UPDATE dept
SET id=112
WHERE id=102;


CREATE TABLE teacher(  					-- child table
 id INT PRIMARY KEY,                  
 nme VARCHAR(50),
 dept_id INT,
 FOREIGN KEY(dept_id) references dept(id)  -- this is foriegn key
 ON UPDATE CASCADE
 ON DELETE CASCADE
 -- If we use cascading, then if we updation/deletion in parent table then automatically it reflect in child table.
 -- If we not use cascading,then updation/deletion in parent table won't reflect in child table.
);
INSERT INTO teacher
VALUES
(101,"bheem",101),
(102,"ram",102);

SELECT * FROM teacher;

-- first you should drop the child table then only we can drop parent table
DROP TABLE teacher;
DROP TABLE dept;
DROP DATABASE college;