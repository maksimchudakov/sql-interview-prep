/*
Problem: Average Salaries
Platform: StrataScratch
Problem ID: 9917
Company: Glassdoor + 1 more
Difficulty: Easy
Link: https://platform.stratascratch.com/coding/9917-average-salaries
*/

-- Compare each employee's salary with their department average
-- Using AVG() as a window function partitioned by department
-- This allows showing individual salary alongside department average in same row

SELECT 
    department,
    first_name,
    salary,
    AVG(salary) OVER (PARTITION BY department) AS avg_salary
FROM employee;
