-- Returns the highest value among a record set
SELECT customer_name, balance
    FROM customers
    WHERE balance = (SELECT MAX(balance) FROM customers)