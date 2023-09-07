-- inserting a single row into a table
INSERT INTO customers (
	first_name, 
    last_name, 
    birth_date, 
    address, 
    city, 
    state
)	
VALUES (
    'john',
    'smith', 
    '1990-01-01',
    'address',
    'city',
    'LA' 
)

-- inserting multiple rows
INSERT INTO shippers (
	name
)
VALUES 
('shipper1'), 
('shipper2'), 
('shipper3')