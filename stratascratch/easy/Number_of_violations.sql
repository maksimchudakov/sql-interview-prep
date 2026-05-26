/*
Problem: Number of Violations
Platform: StrataScratch
Problem ID: 9728
Company: City of San Francisco
Difficulty: Easy
Link: https://platform.stratascratch.com/coding/9728-number-of-violations
*/

-- Count total violations per year for Roxanne Cafe
-- Filter for non-null violation_id to count only actual violations
-- EXTRACT year from inspection date and group by year

SELECT
    EXTRACT(YEAR FROM inspection_date) AS year,
    COUNT(*) AS number_of_violations
FROM sf_restaurant_health_violations
WHERE business_name = 'Roxanne Cafe'
GROUP BY year
