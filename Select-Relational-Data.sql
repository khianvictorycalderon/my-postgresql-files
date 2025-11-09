--- Instead of User ID Showing, replaced with actual first name and last name of that user
SELECT 
    customer_order.customer_order_id,
    customer_order.customer_order_name,
    customer.customer_first_name,
    customer.customer_last_name

    FROM customer_order
    JOIN customer ON customer_order.customer_id = customer.customer_id;