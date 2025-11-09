CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE IF NOT EXISTS customer (
    customer_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    customer_first_name TEXT NOT NULL,
    customer_last_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS customer_order (
    customer_order_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    customer_id UUID NOT NULL REFERENCES customer(customer_id) ON DELETE CASCADE,
    customer_order_name TEXT NOT NULL
);

--- Example Insert Data

-- Insert 5 customers
INSERT INTO customer (customer_first_name, customer_last_name) VALUES
('Khian', 'Victory'),
('Alice', 'Wonderland'),
('Bob', 'Builder'),
('Carol', 'Danvers'),
('Dave', 'Johnson');

-- Insert 8 orders
INSERT INTO customer_order (customer_id, customer_order_name) VALUES
((SELECT customer_id FROM customer WHERE customer_first_name='Khian' AND customer_last_name='Victory'), 'Order A'),
((SELECT customer_id FROM customer WHERE customer_first_name='Khian' AND customer_last_name='Victory'), 'Order B'),
((SELECT customer_id FROM customer WHERE customer_first_name='Alice' AND customer_last_name='Wonderland'), 'Order C'),
((SELECT customer_id FROM customer WHERE customer_first_name='Bob' AND customer_last_name='Builder'), 'Order D'),
((SELECT customer_id FROM customer WHERE customer_first_name='Carol' AND customer_last_name='Danvers'), 'Order E'),
((SELECT customer_id FROM customer WHERE customer_first_name='Carol' AND customer_last_name='Danvers'), 'Order F'),
((SELECT customer_id FROM customer WHERE customer_first_name='Dave' AND customer_last_name='Johnson'), 'Order G'),
((SELECT customer_id FROM customer WHERE customer_first_name='Dave' AND customer_last_name='Johnson'), 'Order H');