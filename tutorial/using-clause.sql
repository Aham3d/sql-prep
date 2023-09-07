-- JOIN clause makes quesries hard to read
-- so we can use using clause, which will simplify the queries 
SELECT 
	o.order_id,
    c.first_name,
    sh.name AS shipper
FROM orders o
JOIN customers c 
	-- ON o.customer_id = c.customer_id 
    -- as the columns are the similiar across the tables
	USING (customer_id) 
JOIN shippers sh
	USING (shipper_id)
