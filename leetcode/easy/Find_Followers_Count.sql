/*
Problem: Find Followers Count
Platform: LeetCode
Problem ID: 1729
Difficulty: Easy
Link: https://leetcode.com/problems/find-followers-count/
*/

-- Count the number of followers for each user
-- Simple GROUP BY with COUNT on follower_id

SELECT user_id, COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;
