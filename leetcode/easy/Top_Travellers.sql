/*
Problem: Top Travellers
Platform: LeetCode
Problem ID: 1407
Difficulty: Easy
Link: https://leetcode.com/problems/top-travellers/
*/

-- Calculate total distance travelled by each user
-- LEFT JOIN to include users with no rides (distance = 0)
-- COALESCE to handle NULL values when user has no rides

SELECT u.name, coalesce (SUM(r.distance),0) AS travelled_distance 
FROM Users u
LEFT JOIN Rides r
ON u.id = r.user_id
GROUP BY u.id, u.name
ORDER BY travelled_distance DESC , u.name ASC;
