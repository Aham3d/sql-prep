-- unions 
-- using union operator we can combine data from different queries
SELECT 
	order_id, 
    order_date, 
    'ACTIVE' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
	order_id, 
    order_date, 
    'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01'
