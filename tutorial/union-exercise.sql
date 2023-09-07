SELECT 
	customer_id, 
    first_name, 
    points, 
    'bronze' AS TYPE
FROM customers
WHERE points < 2000
UNION
SELECT 
	customer_id, 
    first_name,  
    points, 
    'silver'
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT 
	customer_id, 
    first_name, 
    points, 
    'gold'
FROM customers
WHERE points > 3000
ORDER BY first_name