/*
Problem: Customer Who Visited but Did Not Make Any Transactions
Platform: LeetCode
Problem ID: 1581
Difficulty: Easy
Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
*/

-- Find customers who visited but made no transactions
-- LEFT JOIN to keep all visits including those with no transactions
-- Filter WHERE transaction_id IS NULL to isolate visits with no transactions

SELECT v.customer_id,
      COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
