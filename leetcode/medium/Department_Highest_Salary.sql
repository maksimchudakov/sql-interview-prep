/*
Problem: Department Highest Salary
Platform: LeetCode
Problem ID: 184
Difficulty: Medium
Link: https://leetcode.com/problems/department-highest-salary/
*/

-- Find employees with the highest salary in each department

SELECT Department, Employee, Salary
FROM (
    SELECT d.name as Department, e.name as Employee , e.salary as Salary,
    RANK() OVER(PARTITION BY e.departmentID ORDER BY e.salary DESC) as rnk
    FROM Employee e 
    JOIN Department d 
        ON e.departmentID=d.id
) ranked
where rnk = 1;
