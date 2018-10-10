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
WHERE (LASTNAME = 'FLACHS' AND FIRSTNAME = 'JEFFREY') 
OR (LASTNAME = 'HUANG' AND FIRSTNAME = 'TAWANNA')
OR (LASTNAME = 'GRUNIN' AND FIRSTNAME = 'EMILE');

--