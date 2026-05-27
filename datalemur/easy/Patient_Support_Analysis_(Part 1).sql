/*
Problem: Patient Support Analysis (Part 1)
Platform: DataLemur
Company: UnitedHealth
Difficulty: Easy
Link: https://datalemur.com/questions/patient-support-analysis
*/

-- Find number of policy holders who made 3 or more calls
-- Inner query groups by policy_holder_id and filters those with 3+ calls
-- Outer query counts how many such policy holders exist

SELECT  COUNT(*) as policy_holder_count
FROM (
    SELECT policy_holder_id
    FROM callers
    GROUP BY policy_holder_id
    HAVING COUNT(case_id) >= 3
) as subq;
