SELECT *
FROM new_schema.`parking-citations`;

/* Find the average amound of Fine Amount which is 72.33 dollars */
SELECT AVG(`Fine amount` )
FROM new_schema.`parking-citations`;

SELECT AVG(`Fine amount` ) AS average
FROM new_schema.`parking-citations`;

SELECT `Violation Description` 
FROM new_schema.`parking-citations`
WHERE `Fine amount` <50;


/* Finding violation description for Citation more than 100 dollars */
SELECT `Violation Description` 
FROM new_schema.`parking-citations`
WHERE `Fine amount` >100
/* Notice in row 2 there is an integer number should'nt be there */

/*going to delete rows where it is an integer value not string in the Violation Description column*/
SELECT ISNUMERIC(`Violation Description`)
FROM `parking-citations`;