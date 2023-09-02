-- get the customers whose 

-- 1.addresses contain TRAIL or AVENUE
 
 SELECT * 
 FROM customers
 WHERE 
	address LIKE '%trail%' 
    OR 
	address LIKE '%avenue%';
    
-- 2. phone numbers end with 9
 SELECT * 
 FROM customers
 WHERE 
	phone LIKE '%9' 