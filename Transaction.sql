BEGIN;
    --- Basically what this means is, all happens or none, not one or the other
    UPDATE customers SET balance = balance + 100 WHERE id = 1;
    UPDATE Customers SET balance = balance - 100 WHERE id = 2;
COMMIT;