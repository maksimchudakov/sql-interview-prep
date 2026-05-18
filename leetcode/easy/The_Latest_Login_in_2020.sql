/*
Problem: The Latest Login in 2020
Platform: LeetCode
Problem ID: 1890
Difficulty: Easy
Link: https://leetcode.com/problems/the-latest-login-in-2020/
*/

-- Find the latest login for each user in 2020
-- Filter by year 2020 first, then get MAX timestamp per user
-- Users with no 2020 logins are automatically excluded by the WHERE clause


SELECT user_id, MAX(time_stamp) as last_stamp
FROM Logins 
WHERE EXTRACT(YEAR FROM time_stamp) = 2020
GROUP BY user_id;
