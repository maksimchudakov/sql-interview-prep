/*
Problem: The Number of Employees Which Report to Each Employee
Platform: LeetCode
Problem ID: 1731
Difficulty: Easy
Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/
*/

-- Find all managers with at least 1 direct report
-- Self JOIN to match employees with their managers
-- COUNT direct reports and ROUND average age to nearest integer

SELECT e.employee_id, e.name, COUNT(e.employee_id) AS reports_count, ROUND(AVG(m.age)) AS average_age
FROM Employees e
JOIN Employees m
  ON m.reports_to = e.employee_id
GROUP BY e.employee_id
ORDER BY e.employee_id ASC;
