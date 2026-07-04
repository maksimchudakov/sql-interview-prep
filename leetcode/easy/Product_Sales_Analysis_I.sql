/*
Problem: Product Sales Analysis I
Platform: LeetCode
Problem ID: 1068
Difficulty: Easy
Link: https://leetcode.com/problems/product-sales-analysis-i/
*/

-- Report product name, year and price for each sale
-- INNER JOIN to match each sale with its product name

SELECT p.product_name, s.year, s.price
FROM Sales s 
JOIN Product p 
    ON s.product_id = p.product_id;
