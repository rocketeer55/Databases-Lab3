-- Spencer Schurk, Jackson Goyette
-- sschurk@calpoly.edu, jgoyette@calpoly.edu

-- Add attribute GPA to table LIST

ALTER TABLE LIST ADD GPA FLOAT;

-- Remove from database all students that are not grade 5 or 6

DELETE FROM LIST WHERE NOT (GRADE = 5 OR GRADE = 6);