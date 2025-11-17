-- Sample Table only
CREATE TABLE customers (
    id SMALLSERIAL PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    balance INT NOT NULL DEFAULT 0
);

-- Actual Transaction
BEGIN TRANSACTION; -- or just BEGIN
    -- Basically what this means is, all happens or none, not one or the other
    UPDATE customers SET balance = balance + 100 WHERE id = 1;
    UPDATE customers SET balance = balance - 100 WHERE id = 2;
COMMIT TRANSACTION; -- or simply just COMMIT