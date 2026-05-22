SELECT first_name, last_name, city, order_details
FROM customers AS c
LEFT JOIN orders AS o
    ON c.id = o.cust_id
ORDER BY first_name ASC, order_details ASC;
