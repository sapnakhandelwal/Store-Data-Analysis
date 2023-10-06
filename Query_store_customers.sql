USE sql_store;

-- Query 6 and 7 are new. I never used these functions in MYSQL earlier

# Query 1
SELECT * FROM customers
WHERE city = 'Orlando' OR city = 'Visalia';

# Query 2
SELECT * FROM customers
#ORDER BY birth_date DESC;
#WHERE birth_date BETWEEN '1964-08-30' AND '1986-04-13';
WHERE points <> 3675;

# Query 3
SELECT * FROM customers
WHERE customer_id > 3 and customer_id <  8;

# Query 4
SELECT * FROM customers
WHERE last_name= 'Roseburgh';

# Query 5
SELECT * FROM customers ORDER BY city DESC LIMIT 5;

# Query 6
-- Here the LIMIT function starting after 3rd row and going upto 8th row
SELECT * FROM customers 
ORDER BY city DESC 
LIMIT 3,5;

# Query 7
-- Concat 2 columns
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM customers
WHERE first_name LIKE '%I%';

# Query 8
UPDATE  customers
SET points = points - 100
WHERE customer_id = 7;

# Query 9
-- Couldn't complete was giving error
#DELETE FROM customers WHERE state = 'MA';
