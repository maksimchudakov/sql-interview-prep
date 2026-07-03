/*
Problem: Recyclable and Low Fat Products
Platform: LeetCode
Problem ID: 1757
Difficulty: Easy
Link: https://leetcode.com/problems/recyclable-and-low-fat-products/
*/

-- Find products that are both low fat AND recyclable
-- Simple WHERE filter on two ENUM columns

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
    AND recyclable = 'Y';
