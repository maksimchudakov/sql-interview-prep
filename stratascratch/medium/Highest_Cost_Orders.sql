/*
Problem: Highest Cost Orders
Platform: StrataScratch
Problem ID: 9915
Company: Shopify + 1 more
Difficulty: Medium
Link: https://platform.stratascratch.com/coding/9915-highest-cost-orders
*/

-- Find customers with highest daily total order cost between 2019-02-01 and 2019-05-01
-- Sum order costs per customer per day first using CTE
-- Then use RANK() to find the highest daily total per date
-- Return all customers tied for the highest on the same date

WITH daily_costs AS (
SELECT c.first_name, o.order_date,
    SUM(o.total_order_cost) AS daily_total
FROM customers c 
    JOIN orders o 
        ON c.id = o.cust_id
WHERE order_date BETWEEN '2019-02-01' AND '2019-05-01'
GROUP BY c.first_name, o.order_date
ORDER BY o.order_date
)
SELECT first_name, order_date, daily_total
FROM (
    SELECT*,
    RANK() OVER(PARTITION BY order_date ORDER BY daily_total DESC)AS rnk
    FROM daily_costs
    ) ranked_table
WHERE rnk = 1;
