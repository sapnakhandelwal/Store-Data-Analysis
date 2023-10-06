USE sql_store;

-- Here first time I have tried NULL statements in Query 4, Query 5, Query 6 and Query 7

# Query 1
SELECT COUNT(order_id),customer_id from orders
GROUP BY customer_id;

# Query 2
SELECT DISTINCT customer_id FROM orders;

# Query 3
SELECT order_id, customer_id FROM orders
WHERE status = 1;

# Query 4
-- Creates 3 columns of total null values in respective columns
SELECT SUM(CASE WHEN shipped_date IS NULL THEN 1 ELSE 0 END) AS NullCount_shipped_date,
	   SUM(CASE WHEN shipper_id IS NULL THEN 1 ELSE 0 END) AS NullCount_shipper_id,
       SUM(CASE WHEN comments IS NULL THEN 1 ELSE 0 END) AS NullCount_comments
FROM orders;

# Query 5
-- Another way to count NULL values
SELECT COUNT(*) AS NullCount
FROM orders
WHERE comments IS NULL;

# Query 6
-- Select all the rows having no NULL values. This code works fine if I stick to 2 columns. By adding 3rd column its giving extra line
SELECT * FROM orders WHERE comments IS NOT NULL AND shipped_date IS NOT NULL AND shipper_id IS NOT NULL;

# Query 7
-- This will replace Null values in given column with some given value.
SELECT COALESCE(shipped_date, '2023-01-01') AS null_date FROM orders;

-- Rest of the queries I tried but didnt work
#UPDATE  orders
#SET shipped_date = 2023-01-01
#WHERE shipped_date = NULL ;

#SELECT COALESCE(shipper_id, '0') AS null_column FROM orders;

#UPDATE orders SET shipped_date = IFNULL(shipped_date, '2023-01-01');
#SELECT (CASE WHEN shipped_date IS NULL THEN '2023-01-01) FROM orders;
#SELECT * FROM orders;