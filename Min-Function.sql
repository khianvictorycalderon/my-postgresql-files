-- Returns the lowest value among a record set
SELECT customer_name, balance
    FROM customers
    WHERE balance = (SELECT MIN(balance) FROM customers);