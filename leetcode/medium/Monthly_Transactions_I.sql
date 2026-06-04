/*
Problem: Monthly Transactions I
Platform: LeetCode
Problem ID: 1193
Difficulty: Medium
Link: https://leetcode.com/problems/monthly-transactions-i/
*/

-- Find monthly transaction stats per country
-- Total transactions and amount for all states
-- Approved transactions and amount using CASE WHEN filter
-- TO_CHAR formats date as YYYY-MM for monthly grouping

SELECT TO_CHAR(trans_date, 'YYYY-MM') AS month,
    country,
    COUNT(*) AS trans_count,
    COUNT(CASE WHEN state = 'approved' THEN 1 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions 
GROUP BY 
    TO_CHAR(trans_date, 'YYYY-MM'),
    country;
