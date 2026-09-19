/*
Problem: Fix Names in a Table
Platform: LeetCode
Problem ID: 1667
Difficulty: Easy
Link: https://leetcode.com/problems/fix-names-in-a-table/
*/

-- Fix names so first character is uppercase and rest are lowercase
-- UPPER() on first character using SUBSTRING(name, 1, 1)
-- LOWER() on remaining characters using SUBSTRING(name, 2)
-- Concatenate with || operator

SELECT 
    user_id, 
    UPPER(SUBSTRING(name, 1, 1)) ||
    LOWER(SUBSTRING(name, 2)) AS name
FROM Users
ORDER BY user_id;
