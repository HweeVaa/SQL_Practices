SELECT * FROM customers WHERE last_name = 'george';
SELECT * FROM orders WHERE customer_id = 1;

SELECT * FROM orders WHERE customer_id =
    (
        SELECT id FROM customers
        WHERE last_name = 'george'
    );
    
SELECT * FROM customers, orders;