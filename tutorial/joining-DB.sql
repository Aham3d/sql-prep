-- joining databases

-- SELECT *
-- FROM order_items oi
-- JOIN sql_inventory.products p 
-- 	ON oi.product_id = p.product_id
    
-- you have to prefix the tables which are not part of current DB

USE sql_inventory; 
SELECT * 
FROM sql_store.order_items oi
JOIN products p
	ON oi.product_id = p.product_id