/*
Problem: Market Analysis I
Platform: LeetCode
Problem ID: 1158
Difficulty: Medium
Link: https://leetcode.com/problems/market-analysis-i/
*/

-- Find each user's join date and number of orders as buyer in 2019
-- LEFT JOIN to include all users even those with no 2019 orders
-- Year filter in JOIN condition (not WHERE) to preserve users with 0 orders
-- COUNT(order_id) returns 0 for users with no matching orders

SELECT u.user_id AS buyer_id, u.join_date, 
    COUNT(o.order_id) AS orders_in_2019
FROM Users u
LEFT JOIN Orders o
    ON u.user_id = o.buyer_id
    AND EXTRACT(YEAR FROM o.order_date) = 2019
GROUP BY u.user_id, u.join_date
ORDER BY buyer_id;
