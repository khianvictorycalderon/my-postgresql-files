-- Sample Table only
CREATE TABLE customers (
    id SMALLSERIAL PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    balance INT NOT NULL DEFAULT 0
);
-- Mock data
INSERT INTO customers (customer_name, balance) VALUES
('Alice', 500),
('Bob', 300),
('Charlie', 1000),
('Diana', 750),
('Ethan', 200),
('Fiona', 400),
('George', 150),
('Hannah', 600);

-- Actual Transaction
BEGIN TRANSACTION; -- or just BEGIN
    -- Basically what this means is, all happens or none, not one or the other
    UPDATE customers SET balance = balance + 100 WHERE id = 1;
    UPDATE customers SET balance = balance - 100 WHERE id = 2;
COMMIT TRANSACTION; -- or simply just COMMIT