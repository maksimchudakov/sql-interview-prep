/*
Problem: Average Selling Price
Platform: LeetCode
Problem ID: 1251
Difficulty: Easy
Link: https://leetcode.com/problems/average-selling-price/
*/

-- Calculate weighted average selling price per product
-- JOIN condition ensures purchase_date falls within the correct price period
-- COALESCE handles products with no sales (returns 0 instead of NULL)
-- NULLIF prevents division by zero when total units = 0

SELECT p.product_id, 
       COALESCE(ROUND(
         SUM(p.price * u.units)::NUMERIC / 
         NULLIF(SUM(u.units), 0)::NUMERIC
       , 2), 0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id
