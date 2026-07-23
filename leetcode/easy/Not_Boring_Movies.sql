/*
Problem: Not Boring Movies
Platform: LeetCode
Problem ID: 620
Difficulty: Easy
Link: https://leetcode.com/problems/not-boring-movies/
*/

SELECT *
FROM Cinema
WHERE id%2 = 1 AND description != 'boring'
ORDER BY rating DESC;
