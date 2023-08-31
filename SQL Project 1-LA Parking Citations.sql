SELECT *
FROM new_schema.`parking-citations`;

/* Find the average amound of Fine Amount. Which is 72.33 dollars */
SELECT AVG(`Fine amount` )
FROM new_schema.`parking-citations`;



ALTER TABLE  `parking-citations` 
ADD average INT;

SELECT *
FROM new_schema.`parking-citations`;

/* Create an Alias for a  new column name average */
SELECT AVG(`Fine amount` ) AS average
FROM new_schema.`parking-citations`;

INSERT INTO `parking-citations` (average)
VALUES(71.25714285714285);

SELECT *
FROM new_schema.`parking-citations`;

SELECT `Violation Description` 
FROM new_schema.`parking-citations`
WHERE `Fine amount` <50;


/* Finding violation description for Citation more than 100 dollars */
SELECT `Violation Description` 
FROM new_schema.`parking-citations`
WHERE `Fine amount` >100

/* Notice in row 2 there is an integer number should'nt be there */
/*going to delete row 2 which has a value of 22522  */
DELETE FROM `parking-citations` 
WHERE `Violation Description`=22522;

SELECT (`Violation Description`)
FROM `parking-citations`;

/*There are  Integer values under the column Violation Description istead of String. Deleting rows where an Integer value is present */
DELETE FROM `parking-citations` 
WHERE `Violation Description`>0;

SELECT (`Violation Description`)
FROM `parking-citations`;

SELECT *
FROM new_schema.`parking-citations`;

/* Which RP State Plate has the highest Fine amount */
SELECT `RP State Plate` 
FROM  `parking-citations` 
WHERE `Fine amount` >100;
/*California Plate has had the highest Fine amount */

/*Sorting Issue Date */
SELECT `Issue Date` 
FROM `parking-citations` 
ORDER BY `Issue Date`;

/*The Maximum Fine Amount was 363 dollars */

SELECT MAX(`Fine amount`)
FROM `parking-citations`
WHERE `Fine amount` >100;

/* The Minimum Fine Amount was 25 dollars */
SELECT MIN(`Fine amount`)
FROM `parking-citations`
WHERE `Fine amount` <100;

/* The `Violation Description` of the Fine Amount of 363 dollars was due to HANDICAP/NO DP ID  */
SELECT (`Violation Description`)
FROM `parking-citations`
WHERE `Fine amount`=363;

/*The `Violation Description` of the Fine Amount of 25 dollars was due to DSPLYPLATE A and EXPIRED TAGS */
SELECT (`Violation Description`)
FROM `parking-citations`
WHERE `Fine amount`=25;
