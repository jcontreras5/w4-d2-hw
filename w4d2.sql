--  SELECT ALL records from a table
SElECT *
FROM actor;

-- Query for first_name and last_name in actor table 
SELECT first_name,last_name
FROM actor; 

--Query for a first_name that equals "Nick" using WHERE clause (UPPER case - Clause)
SELECT first_name , last_name 
FROM actor 
WHERE first_name = 'Nick';

--Query for first_name that is equal to 'Nick' using LIKE and WHERE clauses
SELECT first_name , last_name 
FROM actor 
WHERE first_name LIKE 'Nick';

--Query for all first_name data that starts with J using the LIKE/WHERE clauses - and the % wildcard operator(Anything here... I don't care_)
SELECT first_name , actor_id 
FROM actor 
WHERE first_name LIKE 'J%';

--Query for all first_name that starts with K and has two characters following using LIKE/WHERE and the underscore 
SELECT first_name , actor_id 
FROM actor 
WHERE first_name LIKE 'K__';

--Query for all first_name data that starts with K and ends with th
--using the LIKE/WHERE clauses and BOTH wildcard/underscore
SELECT first_name,last_name,actor_id 
FROM actor 
WHERE first_name LIKE 'K_%th';

--Comapring operators are :
--Greater (>)-- Less (<)
--Greater than or Equal (>=) -- Less than or equal(<=)
--Not Equal (<>)

--Explore Data with the SELECT ALL Query ( Specific to looking in a new table)
SELECT *
FROM payment; 

--Query for data that show customers who paid an amount greater than $2 
SELECT customer_id,amount
FROM payment
WHERE amount > 2.00;

--Query for data that show customers who paid an amount less than $7.99
SELECT customer_id,amount
FROM payment
WHERE amount > 7.99;

--Query for data that show customers who paid an amount less than/equal $7.99
SELECT customer_id,amount
FROM payment
WHERE amount >= 7.99;

--Query for data that show customers who paid an amount greater than/equal $7.99
SELECT customer_id,amount
FROM payment 
WHERE amount >= 7.99;

--data that shows customers who paid an amount greater than/equal 2.00
--in Ascending order
SELECT customer_id,amount
FROM payment 
WHERE amount >= 2.00
ORDER BY amount ASC;

--Query data customers who paid BETWEEN 2.00 and 7.00 using BETWEEN and AND clauses
SELECT customer_id,amount
FROM payment 
WHERE amount BETWEEN 2.00 AND 7.99;

--Query data that shows customers paying an amount NOT EQUAL to 0.00
--ordered descending
SELECT customer_id,amount
FROM payment 
WHERE amount <>0.00
ORDER BY amount DESC;

--SQL Aggregations => SUM(),AVG(),COUNT(),MIN(),MAX()

--Query to display sum of amounts paid that are greater than $5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

--Query to display average of amounts paid that are greater than $5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

--Query to display total records paid that are greater than $5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

--Query to count the amount of distinct payments greater than $5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

--Query to display min amount greater than 7.99
SELECT MIN (amount) AS Min_Num_Payments
FROM payment
WHERE amount > 5.99;

--Query to display max amount greater than 7.99
SELECT MAX (amount) AS Min_Num_Payments
FROM payment
WHERE amount > 5.99;

--Query to display all amounts greater than 7.99
SELECT amount
FROM payment
WHERE amount > 7.99; 

--Query to display different amounts grouped greater than 7.99
-- and count of those amounts 
SELECT amount , COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

--Query to display customer id with sum amount per customer id
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id 
ORDER BY sum(amount) DESC;

--Query customer table to excplore
SELECT * 
FROM customer; 

--Query to display customer ids that show up more than 5 times
--Grouping by person's email adress

SELECT COUNT(customer_id),email
FROM customer
GROUP BY email
HAVING COUNT (customer_id) > 0;

