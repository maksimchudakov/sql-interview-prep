/*
Problem: Find Products with Valid Serial Numbers
Platform: LeetCode
Problem ID: 3465
Difficulty: Easy
Link: https://leetcode.com/problems/find-products-with-valid-serial-numbers/
*/

-- Find products containing a valid serial number in description
-- Valid format: SN followed by exactly 4 digits, hyphen, exactly 4 digits
-- Using regex to ensure serial number is not part of a longer alphanumeric string

SELECT product_id, product_name, description
FROM products
WHERE description ~ '(^|[^A-Za-z0-9])SN[0-9]{4}-[0-9]{4}([^A-Za-z0-9]|$)'
ORDER BY product_id ASC
