/*
Problem: Unique Users Per Client Per Month
Platform: StrataScratch
Problem ID: 2024
Company: Apple + 2 more
Difficulty: Easy
Link: https://platform.stratascratch.com/coding/2024-unique-users-per-client-per-month
*/

-- Count unique users per client for each month
-- EXTRACT month from date to get month number (1-12)
-- COUNT DISTINCT to avoid counting same user twice in same month

SELECT client_id, 
    EXTRACT(MONTH FROM time_id), 
    COUNT(DISTINCT user_id) AS user_num
FROM fact_events
GROUP BY client_id, EXTRACT(MONTH FROM time_id);
