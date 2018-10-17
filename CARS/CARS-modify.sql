-- Jack Goyette, Spencer Schurk
-- jgoyette@calpoly.edu, sschurk@calpoly.edu


-- Keep in the table only vehicles made in 1979 or 1980 with MPG of 20 or above,
-- Vehicles that have MPG of 26MPG or better and have an engine with more than 110 horsepower,
-- and vehicles that have 8 cylinders and accelerate to 60mph in less than 10 seconds.
-- DELETE FROM CARSDATA
-- WHERE NOT ((YEAR=(1979 OR 1980) AND MPG >= 20) 
-- OR ((MPG >=26) AND HORSEPOWER > 110 )
-- OR ((CYLINDERS = 8) AND ACCELERATE < 10));

DELETE FROM CARSDATA
WHERE NOT (((YEAR = 1979 OR YEAR = 1980) AND MPG >= 20)
OR ((MPG IS NOT NULL AND MPG >= 26) AND (HORSEPOWER IS NOT NULL AND HORSEPOWER > 110))
OR (CYLINDERS = 8 AND ACCELERATE < 10));

-- Run the SQL query
SELECT * FROM CARSDATA ORDER BY YEAR, ID;

-- Remove from the car data table all attributes except car id, car year, acceleration, MPG, and number of cylinders
ALTER TABLE CARSDATA DROP COLUMN EDISPL;
ALTER TABLE CARSDATA DROP COLUMN HORSEPOWER;
ALTER TABLE CARSDATA DROP COLUMN WEIGHT;

-- Remove from the car data table information about all cars with 5 cylinders or fewer
DELETE FROM CARSDATA
WHERE (CYLINDERS < 6);

-- Run the SQL query again
SELECT * FROM CARSDATA ORDER BY YEAR, ID;
