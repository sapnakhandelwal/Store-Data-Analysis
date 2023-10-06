USE sql_store;

-- All queries done in the prvious session
-- Only Query 2 I have tried first time
# Query 1
SELECT SUM(unit_price), MAX(unit_price), MIN(unit_price), AVG(unit_price) FROM products;

# Query 2
SELECT DISTINCT product_id FROM products;

# Query 3
SELECT COUNT(product_id) AS num_product FROM products;

# Query 4
SELECT * FROM products
WHERE unit_price BETWEEN 2 AND 5;

# Query 5
SELECT * FROM products
WHERE name = 'Sauce - Ranch Dressing' OR unit_price = '4.65';

# Query 6
SELECT name, unit_price, quantity_in_stock FROM products
ORDER BY quantity_in_stock DESC
LIMIT 5;

# Query 7
SELECT MIN(quantity_in_stock), MAX(quantity_in_stock), AVG (quantity_in_stock), COUNT(quantity_in_stock), SUM(quantity_in_stock) FROM products;

# Query 8
SELECT SUM(unit_price) AS local_unit_price FROM products;

# Query 9
SELECT name,quantity_in_stock AS "Stock Level", unit_price AS "Price per Unit", (quantity_in_stock *unit_price) AS "Total Price"
FROM products;

# Query 10
SELECT name,quantity_in_stock AS "Stock Level", unit_price AS "Price per Unit", (quantity_in_stock *unit_price) AS "Total Price"
FROM products
WHERE Name LIKE '%A%'
ORDER BY unit_price ASC;

# Query 11
SELECT name, quantity_in_stock FROM products
ORDER BY quantity_in_stock DESC;

# Query 12
SELECT MIN(unit_price) AS "Lowest price", MAX(unit_price) AS "Highest price", MAX(unit_price)-MIN(unit_price) AS Difference
FROM products;

# Query 13
UPDATE  products
SET quantity_in_stock = quantity_in_stock + 50
WHERE product_id = 5;
SELECT * FROM products;

# Query 14
UPDATE  products
SET quantity_in_stock = quantity_in_stock - 50
WHERE product_id = 5;
SELECT * FROM products;
