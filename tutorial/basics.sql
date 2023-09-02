USE sql_store; 

SELECT 
	first_name, 
    last_name, 
    points,
    points * 10 + 100 AS discount_factor
FROM customers;

SELECT DISTINCT state 
-- distinct used to remove the duplicates 
FROM customers
-- WHERE customer_id = 1
-- ORDER BY first_name 
