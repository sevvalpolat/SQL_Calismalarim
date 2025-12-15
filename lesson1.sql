--Retrieve All Customer Data

SELECT*
FROM customers

--To select all data, use an asterisk (*) after SELECT.

-----------------------------------------------------------

--Retrieve each customer's name, country, and score.

SELECT
     first_name,
     country,
     score
FROM customers

--Commas separate columns. Do not use a comma after the last column.

-----------------------------------------------------------

--Retrieve customers with a score not equal to 0.

SELECT *
FROM customers
WHERE score != 0

--------------------

-- Retrieve customers from Germany

SELECT *
FROM customers
WHERE country = 'Germany'

--The WHERE clause is used to filter records.Filters data based on a specified condition.
