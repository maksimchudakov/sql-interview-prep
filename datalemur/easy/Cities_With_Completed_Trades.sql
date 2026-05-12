/*
Problem: Top 3 Cities by Completed Trades
Platform: (e.g. LeetCode / DataLemur style)
Difficulty: Easy
Tables: trades, users
*/

-- Write a query to retrieve the top three cities that have the highest number
-- of completed trade orders, ordered in descending order.

SELECT u.city, COUNT(t.order_id) as total_orders
FROM trades t
JOIN users u 
  ON t.user_id = u.user_id
WHERE t.status = 'Completed'
GROUP by u.city
ORDER BY total_orders DESC
LIMIT 3;
