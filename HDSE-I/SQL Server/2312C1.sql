CREATE DATABASE _2312C1;

USE _2312C1;

CREATE TABLE students (sid INT PRIMARY KEY IDENTITY(101, 1), sname VARCHAR(255), email VARCHAR(255));

INSERT INTO students (sname, email)
VALUES ('Asjad', 'asjad@gmail.com'),
('Fouzan', 'fouzan@gmail.com'),
('Okasha', 'okasha@gmail.com');

SELECT * FROM students;

DELETE FROM students;

DELETE FROM students WHERE sid = 111;

UPDATE students SET email = 'taha@gmail.com', sname = 'Taha'  WHERE sid = 110;

UPDATE students
SET email = 
    CASE 
        WHEN sid = 108 THEN 'noman@gmail.com'
        WHEN sid = 109 THEN 'subhan@gmail.com'
        WHEN sid = 110 THEN 'ahmed@gmail.com'
    END
WHERE sid IN (108, 109, 110);


SELECT * FROM students;

SELECT email FROM students;


--Add Column
ALTER TABLE students 
ADD gender INT;

SELECT * FROM students WHERE status = 'true';

--DELETE column 
ALTER TABLE students
DROP COLUMN gender;

--CHnage Column DataType
ALTER TABLE students
ALTER COLUMN gender BIT;

--Renmae Column
EXEC sp_rename 'students.status', 'result', 'COLUMN';

--Rename Table
EXEC sp_rename 'students', 'std';

SELECT * FROM std;
SELECT * FROM dbo.std;

SELECT * INTO std2 FROM std;

TRUNCATE TABLE std2;

DROP TABLE std2;

SELECT * FROM std;

INSERT INTO std (sname)
VALUES ('Ali');

CREATE TABLE const (id INT PRIMARY KEY, 
name VARCHAR(255) NOT NULL,
email VARCHAR(255) UNIQUE, 
city VARCHAR(255) DEFAULT 'Karachi',
age INT, CHECK (age > 18));

INSERT INTO const (id, name, email, age)
VALUES(11, 'adil','aliyan@gmail.com', 19);

SELECT * FROM const;

--DAY 5
CREATE TABLE stdRec(
id INT PRIMARY KEY IDENTITY(10, 1),
name VARCHAR(255) NOT NULL,
email VARCHAR(255) UNIQUE,
age INT CHECK (age >= 18),
city VARCHAR(255) DEFAULT 'Karachi'
);

INSERT INTO stdRec (name, age, email)
VALUES ('daniyal', 15, 'daniyal@gmail.com');

INSERT INTO stdRec (name, email, age, city)
VALUES 
('Ali Khan', 'ali.khan1@example.com', 22, 'Karachi'),
('Sara Ahmed', 'sara.ahmed2@example.com', 24, 'Lahore'),
('Ahmed Raza', 'ahmed.raza3@example.com', 21, 'Islamabad'),
('Fatima Noor', 'fatima.noor4@example.com', 23, 'Karachi'),
('Bilal Aslam', 'bilal.aslam5@example.com', 26, 'Rawalpindi'),
('Ayesha Tariq', 'ayesha.tariq6@example.com', 25, 'Lahore'),
('Hassan Malik', 'hassan.malik7@example.com', 28, 'Karachi'),
('Nida Parveen', 'nida.parveen8@example.com', 20, 'Islamabad'),
('Zain Abbas', 'zain.abbas9@example.com', 27, 'Peshawar'),
('Maha Javed', 'maha.javed10@example.com', 22, 'Quetta'),
('Usman Khan', 'usman.khan11@example.com', 30, 'Karachi'),
('Rabia Sheikh', 'rabia.sheikh12@example.com', 21, 'Lahore'),
('Danish Ali', 'danish.ali13@example.com', 23, 'Islamabad'),
('Saima Riaz', 'saima.riaz14@example.com', 29, 'Rawalpindi'),
('Fahad Anwar', 'fahad.anwar15@example.com', 24, 'Peshawar'),
('Shazia Khan', 'shazia.khan16@example.com', 25, 'Karachi'),
('Tariq Mehmood', 'tariq.mehmood17@example.com', 26, 'Lahore'),
('Lubna Akram', 'lubna.akram18@example.com', 22, 'Islamabad'),
('Kamran Arif', 'kamran.arif19@example.com', 28, 'Quetta'),
('Farhan Javed', 'farhan.javed20@example.com', 23, 'Karachi'),
('Rida Naeem', 'rida.naeem21@example.com', 24, 'Lahore'),
('Imran Saeed', 'imran.saeed22@example.com', 27, 'Islamabad'),
('Amna Pervez', 'amna.pervez23@example.com', 21, 'Rawalpindi'),
('Zubair Hassan', 'zubair.hassan24@example.com', 30, 'Peshawar'),
('Mehwish Khan', 'mehwish.khan25@example.com', 29, 'Karachi'),
('Asad Rehman', 'asad.rehman26@example.com', 22, 'Lahore'),
('Noreen Farooq', 'noreen.farooq27@example.com', 23, 'Islamabad'),
('Tahir Mahmood', 'tahir.mahmood28@example.com', 28, 'Rawalpindi'),
('Amina Malik', 'amina.malik29@example.com', 25, 'Peshawar'),
('Ali Raza', 'ali.raza30@example.com', 26, 'Karachi');



SELECT * FROM dbo.stdRec;

SELECT TOP 10 * FROM dbo.stdRec;

SELECT TOP 5 * FROM dbo.stdRec WHERE city = 'lahore';

SELECT TOP 5 * FROM dbo.stdRec;

SELECT * FROM stdRec WHERE city = 'lahore';

SELECT * FROM stdRec WHERE city = 'lahore' AND age = 21 AND name = 'Bilal';

SELECT * FROM stdRec WHERE city = 'lahore' AND age = 21 OR name = 'Bilal';

--SELECT * FROM stdRec WHERE city = 'lahore' AND age = 21 NOT name = 'Bilal';

SELECT DISTINCT * FROM stdRec;

SELECT * FROM stdRec WHERE age < 21 ;

SELECT * FROM stdRec WHERE age BETWEEN 20 AND 25;

SELECT * FROM stdRec WHERE age NOT BETWEEN 22 AND 25;
SELECT * FROM stdRec WHERE age BETWEEN 19 AND 21 OR age BETWEEN 26 AND 30;

SELECT * FROM stdRec WHERE age IN (19, 23, 27, 30);
SELECT * FROM stdRec WHERE age NOT IN (19, 23, 27, 30);

SELECT * FROM stdRec WHERE name LIKE '%i_';

SELECT * FROM stdRec WHERE name LIKE '__i%';

SELECT * FROM stdRec WHERE name LIKE 'i%';

SELECT * FROM stdRec WHERE name LIKE '_i%';

SELECT * FROM stdRec WHERE name LIKE '%n';

SELECT name, age FROM stdRec;

SELECT name, age FROM stdRec WHERE age = 23;

SELECT name FROM stdRec WHERE age = 23;

SELECT TOP 50 PERCENT * FROM stdRec;

SELECT * FROM stdRec ORDER BY name ASC;

SELECT * FROM stdRec ORDER BY name DESC;

SELECT * FROM stdRec ORDER BY age ASC;

SELECT * FROM stdRec ORDER BY age DESC;

--_______________________DAY 5_________________

SELECT * FROM stdRec WHERE age >=25 AND city = 'karachi';

SELECT * FROM stdRec WHERE age >=25 AND city = 'karachi' AND name = 'Ali raza';

SELECT * FROM stdRec WHERE age >=25 OR city = 'karachi';

SELECT * FROM stdRec WHERE age >=25 OR city = 'karachi' OR name = 'Ali raza';


SELECT * FROM stdRec WHERE age >= 25 AND city = 'karachi' OR name = 'Ali raza';

SELECT * FROM stdRec WHERE age >= 25 AND (city = 'karachi' OR name = 'Ali raza');

SELECT * FROM stdRec WHERE NOT age > 25 OR NOT city = 'karachi';


SELECT name as naam, age as umer FROM stdRec as sr;

SELECT * FROM stdRec as sr;

--COUNT
SELECT COUNT(*) FROM stdRec;
SELECT COUNT(name) FROM stdRec;
SELECT COUNT(gender) FROM stdRec;

--SUM
SELECT SUM(id) FROM stdRec;
SELECT SUM(id) FROM stdRec;

--MIN
SELECT MIN(id) FROM stdRec;
SELECT MIN(age) FROM stdRec;

--MAX
SELECT MAX(id) FROM stdRec;
SELECT MAX(age) FROM stdRec;

--AVERAGE
SELECT AVG(id) FROM stdRec;
SELECT AVG(age) FROM stdRec;

SELECT * FROM stdRec;

ALTER TABLE stdRec
ADD gender VARCHAR(25);

SELECT CONCAT(name, ' ', 'faraz') FROM stdRec;

--SELECT LENGTH(name) FROM stdRec;

UPDATE stdRec SET gender = 'male';
UPDATE stdRec SET gender = NULL WHERE age > 25;
UPDATE stdRec SET gender = 'female' WHERE age > 25;

SELECT city, COUNT(city) FROM stdRec GROUP BY city;
SELECT city, COUNT(city) FROM stdRec GROUP BY city;

SELECT COUNT(gender) FROM stdRec WHERE gender = 'male';
SELECT COUNT(gender) FROM stdRec WHERE NOT gender = 'male';
SELECT COUNT(gender) FROM stdRec WHERE gender = 'female';

SELECT gender, COUNT(gender) FROM stdRec GROUP BY gender;

SELECT city, COUNT(city) FROM stdRec GROUP BY city;

SELECT DISTINCT city FROM stdRec;


--_______________________DAY 6_________________

SELECT * FROM const;
SELECT * FROM stdREc;
SELECT * FROM students;

DROP TABLE std;

--JOIN
CREATE TABLE faculty (
fid INT PRIMARY KEY IDENTITY(101, 1),
fname VARCHAR(255),
);

INSERT INTO faculty VALUES ('Tahir'), ('Owais');

ALTER TABLE stdRec ADD fac_id INT, FOREIGN KEY (fac_id) REFERENCES faculty (fid);

UPDATE stdRec SET fac_id = 101 WHERE city = 'karachi';
UPDATE stdRec SET fac_id = 102 WHERE city = 'lahore';
UPDATE stdRec SET fac_id = 103 WHERE city = 'Islamabad';
UPDATE stdRec SET fac_id = 104 WHERE city = 'Quetta';

SELECT * FROM stdRec;
SELECT * FROM faculty;

--INNER JOIN
SELECT * FROM stdRec s
INNER JOIN faculty f
ON s.fac_id = f.fid;

SELECT s.name, f.fname FROM stdRec s
INNER JOIN faculty f
ON s.fac_id = f.fid;

---   OUTER JOIN  ---
--LEFT JOIN
SELECT s.name, f.fname FROM stdRec s
LEFT JOIN faculty f
ON s.fac_id = f.fid;

SELECT * FROM stdRec s
LEFT JOIN faculty f
ON s.fac_id = f.fid;

--RIGHT JOIN
SELECT s.name, f.fname FROM stdRec s
RIGHT JOIN faculty f
ON s.fac_id = f.fid;

SELECT * FROM stdRec s
RIGHT JOIN faculty f
ON s.fac_id = f.fid;

--FULL JOIN
SELECT s.name, f.fname FROM stdRec s
FULL JOIN faculty f
ON s.fac_id = f.fid;

SELECT * FROM stdRec s
FULL JOIN faculty f
ON s.fac_id = f.fid;

--_______________________DAY 7  -  ASSESSMENT _________________


--_______________________DAY 8_________________

--SUBQUERY
SELECT * FROM stdRec WHERE age = 23;

SELECT AVG(age) FROM stdRec;  -- 24
SELECT * FROM stdRec WHERE age = 24;

SELECT * FROM stdRec WHERE age = (SELECT AVG(age) FROM stdRec);

SELECT * FROM stdRec WHERE age > (SELECT AVG(age) FROM stdRec);


--STORED PROCEDURE
CREATE PROCEDURE spfetchRec1
AS
BEGIN
SELECT * FROM stdrec;
END

spfetchRec1;
EXEC spfetchRec1;
EXECUTE spfetchRec1;

CREATE PROCEDURE spfetchRec2
AS
BEGIN
SELECT * FROM stdrec WHERE city = 'Karachi';
END

EXEC spfetchRec2;

CREATE PROCEDURE spfetchRec3
AS
BEGIN
SELECT * FROM stdrec WHERE city = 'Karachi' AND age = 22;
END

ALTER PROCEDURE spfetchRec3
AS
BEGIN
SELECT * FROM stdrec WHERE city = 'Lahore' AND age = 24;
END

EXEC spfetchRec3;

--PARAMETARIZED PROCEDURES
CREATE PROCEDURE spfetchRecPara
@city VARCHAR(255)
AS
BEGIN
SELECT * FROM stdrec WHERE city = @city;
END

EXEC spfetchRecPara 'Lahore';

CREATE PROCEDURE spfetchRecMulPara
@city VARCHAR(255),
@age INT
AS
BEGIN
SELECT * FROM stdrec WHERE city = @city AND age = @age;
END

EXEC spfetchRecMulPara 'Karachi', 23;

sp_helptext spfetchRecMulPara;
sp_helptext spfetchRec1;

--DROP PROCEDURE
DROP PROC spfetchRec1;

--SP RENAME
EXEC sp_rename 'spfetchRecMulPara', 'xyz'

--SP RENAME
EXEC sp_rename 'stdRec', 'records'

--COLUMN RENAME
EXEC sp_rename 'records.age', 'umer'

--DATABASE RENAME
ALTER DATABASE _2312C1 MODIFY NAME = lab13;


--_______________________DAY 9_________________

--VIEWS
CREATE VIEW vwRec
AS
SELECT * FROM stdRec;

SELECT * FROM vwRec;

CREATE VIEW vwRecRes
AS
SELECT id, name, email, city, gender FROM stdRec;

SELECT * FROM vwRecRes;

CREATE VIEW vwRecRes2
AS
SELECT id, name, email, city, gender FROM stdRec WHERE city = 'Karachi';

SELECT * FROM vwRecRes2;

SELECT * FROM stdRec;

INSERT INTO vwRecRes2
VALUES('Mohammad Imran', 'imran@gmail.com', 'male', 'karachi');

DELETE FROM vwRecRes2 WHERE id = 40;

--_______________________DAY 10_________________



SELECT * FROM stdRec;
SELECT * FROM faculty;
SELECT * FROM const;

UPDATE const SET fac_id = 103 WHERE city = 'Lahore'

CREATE VIEW vwJoin
AS
SELECT s.name, s.city, s.gender, f.fname FROM stdRec s
INNER JOIN faculty f
ON s.fac_id = f.fid;

SELECT * FROM vwJoin;

DELETE FROM vwJoin WHERE name = 'fatima noor';

CREATE TRIGGER delete_vw_stdFac
ON vwJoin
INSTEAD OF DELETE
AS
BEGIN
    --SET NOCOUNT ON;

    -- Delete students from base table
    DELETE FROM stdRec
    WHERE name IN (SELECT name FROM deleted);

END;


--INDEX

--Clustered
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,  -- Automatically creates a clustered index
    Name VARCHAR(100),
    Salary DECIMAL(10,2)
);

-- OR

CREATE CLUSTERED INDEX IX_Employees_Salary  
ON Employees (Salary);  -- Manually creating a clustered index



--Non-Clustered
CREATE NONCLUSTERED INDEX IX_Employees_Name  
ON Employees (Name);  

--OR

CREATE INDEX IX_Employees_Name    -- NONCLUSTERED keyword is optional in nonclustered type
ON Employees (Name);  



--_______________________DAY 11_________________

--TRANSACTION

INSERT INTO stdRec VALUES('abc', 'abc@gmail.com', 22, 'Lahore', 'male', 104)  -- Implicit Tr

BEGIN TRANSACTION
INSERT INTO stdRec VALUES('xyz', 'xyz@gmail.com', 25, 'Lahore', 'male', 101);

BEGIN TRANSACTION
UPDATE stdRec SET age = 29 WHERE name= 'abc';

BEGIN TRANSACTION
DELETE FROM stdRec WHERE city = 'lahore';

SELECT COUNT(city) FROM stdRec WHERE city = 'lahore';

--either
COMMIT

--or
ROLLBACK

SELECT * FROM stdRec;


--TRIGGERS
--1. DML TRIGGER
--	-> AFTER

CREATE TRIGGER trg_dml
ON stdrec
AFTER INSERT  -- AFTER INSERT
AS 
BEGIN
--PRINT 'Mubarak Ho Record Insert Hogya!!'
SELECT * FROM stdRec;
END

CREATE TRIGGER trg_dml_del
ON stdrec
AFTER DELETE  -- AFTER DELETE
AS 
BEGIN
--PRINT 'Mubarak Ho Record Insert Hogya!!'
SELECT * FROM stdRec;
END


CREATE TRIGGER trg_dml_upd
ON stdrec
AFTER UPDATE  -- AFTER UPDATE
AS 
BEGIN
--PRINT 'Mubarak Ho Record Insert Hogya!!'
SELECT * FROM stdRec;
END

UPDATE stdRec SET name= 'daniyal' WHERE id = 53;



DELETE FROM stdRec WHERE contact = 'fdhggfd';

DROP TRIGGER trg_dml;

INSERT INTO stdRec VALUES('d', 'd@gmail.com', 22, 'Lahore', 'male', 103);

INSERT INTO faculty VALUES('Farzan');
SELECT * FROM faculty;

--	-> INSTEAD OF

ALTER TRIGGER trg_dml_after_del
ON faculty
INSTEAD OF DELETE  -- INSTEAD OF DELETE
AS 
BEGIN
PRINT 'Deletion NOT Allowed!!'
END

DELETE FROM faculty WHERE fid = 101;

--INSTEAD OF UPDATE
--INSTEAD OF INSERT

--_______________________DAY 12 Class OFF - Day 12_________________

--DDL TRIGGERS

--Create
CREATE TRIGGER ddl_trgTabCr
ON DATABASE
FOR CREATE_TABLE
AS
BEGIN
PRINT 'New Table Creation is NOT Allowed'
ROLLBACK;
END

CREATE TABLE xyz (sid INT PRIMARY KEY IDENTITY(101, 1), sname VARCHAR(255), email VARCHAR(255));

--Delete
CREATE TRIGGER ddl_trgTabDl
ON DATABASE
FOR DROP_TABLE
AS
BEGIN
PRINT 'Table Deletion is NOT Allowed'
ROLLBACK;
END

DROP TABLE const;

--Alter
CREATE TRIGGER ddl_trgTabAl
ON DATABASE
FOR ALTER_TABLE
AS
BEGIN
PRINT 'Table Alteration is NOT Allowed'
ROLLBACK;
END

ALTER TABLE const ADD xyz VARCHAR(255);

ALTER TABLE const DROP COLUMN gender;

--VARIABLES
DECLARE @name VARCHAR(255)
SET @name = 'Bilal Aslam'

SELECT * FROM stdrec WHERE name = @name;

--USER DEFINED FUNCTIONS
ALTER FUNCTION abc
(
@fname VARCHAR(50),
@lname VARCHAR(50)
)
RETURNS VARCHAR(100)
BEGIN
DECLARE @fullname VARCHAR(100);
SET @fullname = @fname + ' ' + @lname
RETURN @fullname
END

SELECT dbo.abc('Taha', 'Adil')

ALTER FUNCTION xyz
()
RETURNS VARCHAR(100)
BEGIN
DECLARE @fullname VARCHAR(100);
SET @fullname = 'Asjad Hussain'
RETURN @fullname
END

SELECT dbo.xyz();






 





