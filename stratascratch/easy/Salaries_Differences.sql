/*
Problem: Salaries Differences
Platform: StrataScratch
Problem ID: 10308
Company: LinkedIn
Difficulty: Easy
Link: https://platform.stratascratch.com/coding/10308-salaries-differences
*/

-- Calculate absolute difference between highest salaries
-- in Marketing and Engineering departments
-- Using two subqueries to get MAX salary per department
-- ABS() to ensure positive difference regardless of which is higher

SELECT ABS(
    (
        SELECT MAX(dem.salary)
        FROM db_employee AS dem
        INNER JOIN db_dept
            ON dem.department_id = db_dept.id
        WHERE db_dept.department = 'marketing'
    )
    -
    (
        SELECT MAX(dem.salary)
        FROM db_employee AS dem
        INNER JOIN db_dept
            ON dem.department_id = db_dept.id
        WHERE db_dept.department = 'engineering'
    )

) AS salary_difference;
