--더욱 바람직한 이너 조인 형태
SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders
    on customers.id = orders.customer_id
ORDER BY amount;

SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders
    on customers.id = orders.customer_id
GROUP BY customer_id;


SELECT first_name, last_name, order_date, sum(amount) as total_spent FROM customers
JOIN orders
    on customers.id = orders.customer_id
GROUP BY customer_id
ORDER BY total_spent DESC;


--레프트 조인
SELECT * FROM customers
LEFT JOIN orders
    on customers.id = orders.customer_id;


SELECT
    first_name,
    last_name,
    SUM(amount)
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id;


--ifnull()
SELECT
    first_name,
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;