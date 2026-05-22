/*
Problem: Finding Updated Records
Platform: StrataScratch
Problem ID: 10299
Company: Microsoft
Difficulty: Easy
Link: https://platform.stratascratch.com/coding/10299-finding-updated-records
*/

-- Find current salary for each employee (highest salary = most recent)
-- Use ROW_NUMBER() partitioned by employee id ordered by salary DESC
-- Return only the first row per employee (highest salary)

SELECT 
    id, 
    first_name, 
    last_name, 
    department_id, 
    salary
FROM (
    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY id ORDER BY salary DESC) AS rn
    FROM ms_employee_salary
) AS t
WHERE rn = 1
ORDER BY id;
