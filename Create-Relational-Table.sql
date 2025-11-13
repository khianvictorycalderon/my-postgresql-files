CREATE TABLE IF NOT EXISTS customer (
    customer_id SERIAL PRIMARY KEY, 
    customer_first_name TEXT NOT NULL,
    customer_last_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS customer_order (
    customer_order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customer(customer_id) ON DELETE CASCADE,
    customer_order_name TEXT NOT NULL
);

-- Insert customers
INSERT INTO customer (customer_first_name, customer_last_name) VALUES
('Khian', 'Victory'),
('Alice', 'Wonderland'),
('Bob', 'Builder'),
('Carol', 'Danvers'),
('Dave', 'Johnson');

-- Insert orders
INSERT INTO customer_order (customer_id, customer_order_name) VALUES
(1, 'Order A'),
(1, 'Order B'),
(2, 'Order C'),
(3, 'Order D'),
(4, 'Order E'),
(4, 'Order F'),
(5, 'Order G'),
(5, 'Order H');
