/*
Problem: Customer Details
Platform: StrataScratch
Problem ID: 9891
Company: Apple
Difficulty: Easy
Link: https://platform.stratascratch.com/coding/9891-customer-details
*/

-- Find details of each customer regardless of whether they made an order
-- LEFT JOIN to include customers with no orders (order_details will be NULL)
-- Sort by first name then order details in ascending order

SELECT first_name, last_name, city, order_details
FROM customers AS c
LEFT JOIN orders AS o
    ON c.id = o.cust_id
ORDER BY first_name ASC, order_details ASC;
