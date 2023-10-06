USE sql_store;

-- This part of assignment done as a team. 

SELECT * FROM customers
-- The Primary Key for Customers Table is Customer_ID
-- Their is no Foregin Key in this Table

# QUERY 1
ORDER BY first_name;

# QUERY 2
SELECT last_name, first_name, points, points+10 FROM customers;

# TASK 1
SELECT last_name, first_name, points, (points+10)*100 AS discount_factor FROM customers;

# TASK 2
SELECT * FROM products;
-- The Primary Key for the Product Table is Product_ID
-- Their is no Foregin Key in this Table

SELECT name, unit_price, (unit_price*1.1) AS new_price FROM products;

# TASK 3
SELECT * FROM customers 
WHERE birth_date > "1990-01-01";

-- Information about all Primary and Foreign Keys across rest of the tables
-- Information about the changes in the Code

SELECT * FROM shippers;
-- The Primary Key for the Shipper Table is Shipper_ID
-- Their is no Foregin Key in this Table

SELECT * FROM order_statuses;
-- The Primary Key for the Order_Statuses Table is Order_Status_ID
-- Their is no Foregin Key in this Table

SELECT * FROM orders;
-- The Primary Key for the Order Table is Order_ID
-- The Foregin Keys for the Order Table are Customer_ID, Status and Shipper_ID

SELECT * FROM order_items;
-- As in the given code 2 Primary Keys were mentioned which is not possible 
-- We have created seperate column for Primary Key named as Item_ID
-- We have set two Foreign Keys - Order_ID, Product_ID

SELECT * FROM order_item_notes;
-- This table was not the part of initial coding. So we did rectify the code
-- The Primary Key for the Order_Item_Notes Table is Note_ID
-- We set the Foregin Keys - Order_ID and Product_ID

-- The initial create-db-store file was giving error while running. Although we were able to get the EER diagram with 6 tables
-- When we debug the code we found there was error in last table. The last table was not completed and syntax was incorrect at Create Table
-- So we have corrected the syntax (line- 130). Add 2 Foreign Keys as mentioned above (line-136-140)
-- So now new EER diagram has 7 tables
-- We have also added primary key Item_Id (line- 105) in one table named Order_Items. As 2 Primary Keys were mentioned which were already a Primary Keys in other tables
-- So we changed those Keys to Foreign keys (line- 108). Wrote the respective Syntax



