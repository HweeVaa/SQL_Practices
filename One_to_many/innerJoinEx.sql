-- 암시적인 이너 조인
SELECT * FROM customers, orders WHERE customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers, orders WHERE customers.id = orders.customer_id;

-- 명시적인 이너 조인
SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders
    on customers.id = orders.customer_id;
    
SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders
    on customers.id = orders.customer_id;