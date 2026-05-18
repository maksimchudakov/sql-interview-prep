/*
Problem: Replace Employee ID With The Unique Identifier
Platform: LeetCode
Problem ID: 1378
Difficulty: Easy
Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
*/

-- Show unique_id for each employee, NULL if no unique ID exists
-- LEFT JOIN to keep all employees even if they have no unique ID

SELECT u.unique_id, e.name
FROM Employees e 
LEFT JOIN EmployeeUNI u
ON u.id = e.id;
