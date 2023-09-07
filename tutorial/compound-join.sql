-- compound join conditions 
-- so far we use single column to uniquely identify the rows in a given table

-- in the data of order_items, 
-- the primary keys exits on the both columns(order_id,product_id) which is known as composite primary key 
-- a compasite primary key contains more than one column

-- joining order_items table and order_item_notes -- joining based on two columns 
use sql_store;
SELECT *
FROM order_items oi 
JOIN order_item_notes oin 
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id
-- this is called compound join conditions 