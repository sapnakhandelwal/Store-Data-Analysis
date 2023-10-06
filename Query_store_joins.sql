USE sql_store;

-- All the queries I have tried first time. Its all about Joins

# Query 1    
-- Do left join and returns all the rows of first table and common values of both the tables
SELECT order_id, first_name, last_name, order_date, status FROM orders
LEFT JOIN customers 
    ON orders.customer_id = customers.customer_id;
    
# Query 2
-- Do right join and returns all the rows in second table and common values in both the tables
SELECT * FROM orders
JOIN customers 
    ON orders.customer_id = customers.customer_id;
    
# Query 3
-- Do the same right join and result is order by order id
SELECT order_id, first_name, last_name, order_date, status FROM orders
RIGHT JOIN customers 
    ON orders.customer_id = customers.customer_id
	ORDER BY orders.order_id;

# Query 4
-- Returned only mentioned column in select statement
#SELECT orders.order_id, customers.first_name, orders.order_date, customers.state FROM orders
-- The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns. 
-- If there are records in the "Orders" table that do not have matches in "Customers", these orders will not be shown!
SELECT * FROM orders
INNER JOIN customers 
	ON orders.customer_id=customers.customer_id;

# Query 5
-- Joining 3 tables
SELECT orders.order_id, customers.first_name, shippers.name
FROM ((orders
INNER JOIN customers ON orders.customer_id = customers.customer_id)
INNER JOIN shippers ON orders.shipper_id = shippers.shipper_id);
    
# Query 6
-- The CROSS JOIN keyword returns all matching records from both tables whether the other table matches or not 
-- So, if there are rows in "Customers" that do not have matches in "Orders", or if there are rows in "Orders" that do not have matches in "Customers", those rows will be listed as well.  
SELECT first_name,order_id
FROM customers
CROSS JOIN orders
ORDER By order_id;

-- Didn't get how its working
SELECT * FROM orders
JOIN customers 
    ON orders.customer_id = customers.customer_id;
    
