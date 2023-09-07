-- creating a copy of a table
CREATE TABLE orders_archived AS 
SELECT *
FROM orders;
/*
	in the desing mode of the orders_archived we don't have a primary key 
    when we create a table with techniques MYsql ingores this attirbutes
*/

-- after truncating the values inside this table

INSERT INTO orders_archived 
SELECT *
FROM orders 
WHERE order_date < '2019-01-01'