/*
Problem: Find Customer Referee
Platform: LeetCode
Problem ID: 584
Difficulty: Easy
Link: https://leetcode.com/problems/find-customer-referee/
*/

-- Find customers not referred by customer with id = 2
-- Include customers with no referee (NULL)
-- OR condition handles both cases: referred by someone else OR not referred at all

SELECT name
FROM Customer
WHERE referee_id != 2 
  OR referee_id IS NULL;
