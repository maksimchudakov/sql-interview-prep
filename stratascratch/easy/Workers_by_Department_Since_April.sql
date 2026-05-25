/*
Problem: Workers by Department Since April
Platform: StrataScratch
Problem ID: 9847
Company: Amazon
Difficulty: Easy
Link: https://platform.stratascratch.com/coding/9847-workers-by-department-since-april
*/

-- Count workers per department who joined on or after April 1, 2014
-- Filter with WHERE before aggregating for better performance
-- Sort by worker count descending


SELECT department,
    COUNT(*) AS workers
FROM worker
WHERE joining_date >= '2014-04-01'
GROUP BY department
ORDER BY workers DESC;
