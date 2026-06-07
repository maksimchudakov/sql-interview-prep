/*
Problem: Find Users with High Token Usage
Platform: LeetCode
Problem ID: 3793
Difficulty: Easy
Link: https://leetcode.com/problems/find-users-with-high-token-usage/
*/

-- Find users with at least 3 prompts submitted
-- AND at least one prompt with tokens greater than their own average
-- Using MAX(tokens) > AVG(tokens) to check if any prompt exceeds the average

SELECT user_id, COUNT(prompt) AS prompt_count, ROUND(AVG(tokens),2) AS avg_tokens
FROM prompts
GROUP BY user_id
HAVING COUNT(prompt) >= 3 and MAX(tokens) > AVG(tokens)
ORDER BY avg_tokens DESC ,user_id ASC;
