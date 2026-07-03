/*
Problem: Big Countries
Platform: LeetCode
Problem ID: 595
Difficulty: Easy
Link: https://leetcode.com/problems/big-countries/
*/

-- Find countries with area >= 3,000,000 km2 OR population >= 25,000,000
-- OR condition returns country if either condition is met

SELECT name, population, area
FROM World
WHERE area >= 3000000
    OR population >= 25000000;
