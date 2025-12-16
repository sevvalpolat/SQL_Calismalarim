--Retrieve All Customer Data

SELECT*
FROM customers;

--To select all data, use an asterisk (*) after SELECT.

------------------------------------------------------------

--Retrieve each customer's name, country, and score.

SELECT
     first_name,
     country,
     score
FROM customers;

--Commas separate columns. Do not use a comma after the last column.

-----------------------------------------------------------1

--Retrieve customers with a score not equal to 0.

SELECT *
FROM customers
WHERE score != 0;

--------------------

-- Retrieve customers from Germany

SELECT *
FROM customers
WHERE country = 'Germany';

--The WHERE clause is used to filter records.Filters data based on a specified condition.

------------------------------------------------------------

/* Retrieve all customers and
   sort the results by the highest score first .*/

   SELECT *
   FROM customers
   ORDER BY score DESC;

   -----------------

   /* Retrieve all customers and
   sort the results by the lowest score first .*/

   SELECT *
   FROM customers
   ORDER BY score ASC;

-- ASC (Ascending) : Sorts in increasing order (A-Z, 0-9). (Default)
-- DESC (Descending): Sorts in decreasing order (Z-A, 9-0).

------------------------------------------------------------

/* Retrieve all customers and
sort the results by the country and then by the highest score .*/

SELECT *
FROM customers
ORDER BY country ASC , score DESC;

/* CRITICAL NOTE ON SORTING LOGIC:
   The order of columns in the ORDER BY clause is crucial because sorting is sequential (left-to-right priority).
   
   1. Primary Sort (1st Column): The entire dataset is first sorted by this column.
   2. Secondary Sort (2nd Column): This acts as a 'tie-breaker'. It is ONLY used to sort rows 
      where the values in the 1st column are identical.
*/

------------------------------------------------------------

--Find the total score for each country

 SELECT
     country,
     SUM(score) AS total_score
 FROM customers
 GROUP BY country;

 --AS ( ALIAS) shorthand name (label) assigned to a column or table in a query .

 -----------------------------------------------------------

 --Find the total score and total number of customers for each country

 SELECT
 country,
 SUM(score) AS total_score,
 COUNT(id) AS total_customers
 FROM customers
 GROUP BY country;

 -----------------------------------------------------------
 /*Find the avarege score for each country
 considering only customers with a score not equal to 0
 and return only those countries with an avarage score greater than 430
 */

 SELECT
    country,
    AVG(score) AS avarage_score
 FROM customers
 WHERE score != 0
 GROUP BY country
 HAVING AVG(score) > 430;

 -----------------------------------------------------------

 --Return Unique list of all countries

 SELECT DISTINCT country
 FROM customers;

 /*
 NOTE: Avoid using DISTINCT unless absolutely necessary.
 It forces the database to sort and compare rows to eliminate duplicates,
 which creates overhead and significantly slows down query execution.
 */

 -----------------------------------------------------------

 --Retrieve the Lowest 2 Customers based on the score

 SELECT TOP 2 *
 FROM customers
 ORDER BY score ASC;

 -------------------

 --Get the two most recent orders

 SELECT TOP 2*
 FROM orders;
 
 -----------------------------------------------------------


