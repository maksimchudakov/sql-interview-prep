/*
Problem: April Admin Employees
Platform: StrataScratch
Problem ID: 9845
Company: Microsoft
Difficulty: Easy
Link: https://platform.stratascratch.com/coding/9845-april-admin-employees
*/

SELECT COUNT(*) AS employee_count
FROM worker
WHERE department = 'Admin' AND EXTRACT(MONTH FROM joining_date) >= 4
