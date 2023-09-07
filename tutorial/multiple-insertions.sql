-- inerting data into multiple tables
INSERT INTO orders (
	customer_id, 
    order_date, 
    status
)

VALUES 
(
	1,  
    '2019-01-01', 
    1
); 

INSERT INTO order_items
VALUES 
(
	last_insert_id(), 
    1,
    1,
    2.95
),
(
	last_insert_id(), 
    2,
    1,
    3.95
)