-- Spencer Schurk, Jackson Goyette
-- sschurk@calpoly.edu, jgoyette@calpoly.edu

-- Add attribute GPA to table LIST

ALTER TABLE LIST ADD GPA FLOAT;

-- Remove from database all students that are not grade 5 or 6

DELETE FROM LIST WHERE NOT (GRADE = 5 OR GRADE = 6);

-- Add new classroom 120 to table TEACHERS. Set LASTNAME to GAWAIN and FIRSTNAME to AP_MAWR

INSERT INTO TEACHERS VALUES('GAWAIN', 'AP-MAWR', 120);

-- Move JEFFREY FLACHS, TAWANNA HUANG, AND EMILE GRUNIN to classroom 120
-- list.csv has a "JEFFRY FLACHS", not "JEFFREY".

UPDATE LIST SET CLASSROOM = 120 
WHERE (LASTNAME = 'FLACHS' AND FIRSTNAME = 'JEFFRY') 
OR (LASTNAME = 'HUANG' AND FIRSTNAME = 'TAWANNA')
OR (LASTNAME = 'GRUNIN' AND FIRSTNAME = 'EMILE');

-- Set the GPA of sixth graders to 3.25

UPDATE LIST SET GPA = 3.25 WHERE GRADE = 6;

-- Set the GPA of fifth graders from room 109 to 2.9

UPDATE LIST SET GPA = 2.9 WHERE GRADE = 5 AND CLASSROOM = 109;

-- Set the GPA of fifth graders from room 120 to 3.5

UPDATE LIST SET GPA = 3.5 WHERE GRADE = 5 AND CLASSROOM = 120;

-- Set the GPA of CHET MACIAG to 4.0

UPDATE LIST SET GPA = 4.0 WHERE LASTNAME = 'MACIAG' AND FIRSTNAME = 'CHET';

-- Set the GPA of AL GERSTEIN to be 0.3 higher than whatever it currently is

UPDATE LIST SET GPA = GPA + 0.3 WHERE LASTNAME = 'GERSTEIN' AND FIRSTNAME = 'AL';

-- Set the GPAs of TAWANNA HUANG and ELVIRA JAGNEUX to be 10% higher than their current GPAs.

UPDATE LIST SET GPA = GPA * 1.1
WHERE (LASTNAME = 'HUANG' AND FIRSTNAME = 'TAWANNA')
OR (LASTNAME = 'JAGNEAUX' AND FIRSTNAME = 'ELVIRA');

-- Complete the script with these two queries

SELECT * FROM LIST ORDER BY GPA, GRADE, LASTNAME;

SELECT * FROM TEACHERS;