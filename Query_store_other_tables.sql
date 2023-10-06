USE sql_store;

-- All the queries applied in previous tables
# Query 1
SELECT * FROM shippers
WHERE name LIKE '%LLC%';

# Query 2
SELECT * FROM order_statuses
WHERE order_status_id = 2;

# Query 3
SELECT COUNT(item_id), order_id FROM order_items
GROUP BY order_id;

# Query 4
SELECT COUNT(item_id), product_id FROM order_items
GROUP BY product_id;

# Query 5
SELECT * FROM order_item_notes
WHERE note LIKE '%note%';
