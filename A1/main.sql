--create the STUDENT table if it does not exist
--NOT NULL is used for NAME to ensure evey student record has a name
CREATE TABLE IF NOT EXISTS STUDENT (
ROLL_NO TEXT PRIMARY KEY,
NAME TEXT NOT NULL,
ADDRESS TEXT,
PHONE TEXT,
AGE INTEGER
);
--insert sample data into the STUDENT table
INSERT INTO STUDENT (ROLL_NO, NAME, ADDRESS, PHONE, AGE) VALUES
('1', 'RAM', 'DELHI', '**', 18),
('2', 'RAMESH', 'GURGAON', '**', 18),
('3', 'RAM', 'NAROK', '**', 20),
('4', 'KEN', 'NAIROBI', '**', 18),
('5', 'TROY', 'DELHI', '**', 18),
('6', 'STACY', 'KAJIADO', '**', 18);
--Select all records from STUDENT table to verify insertion
SELECT * FROM STUDENT;
--Query students who are 18 years old and live in Delhi
SELECT * FROM STUDENT WHERE AGE = 18 AND ADDRESS = 'DELHI';
--Query students who are 18 years old and named RAM
SELECT * FROM STUDENT WHERE NAME = 'RAM' OR NAME = 'KEN';
--query students name Ram or aged 20
SELECT * FROM STUDENT WHERE NAME = 'RAM' OR AGE = 20;
--Query students named Ram or Ken
SELECT * FROM STUDENT WHERE NAME = 'RAM' OR NAME = 'KEN';
--Query students aged 18 and named Ram or Ramesh
SELECT * FROM STUDENT WHERE AGE = 18 AND (NAME = 'RAM' OR NAME = 'RAMESH');
