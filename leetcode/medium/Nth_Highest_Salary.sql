/*
Problem: Nth Highest Salary
Platform: LeetCode
Problem ID: 177
Difficulty: Medium
Link: https://leetcode.com/problems/nth-highest-salary/
*/

-- Find the Nth highest distinct salary using a PostgreSQL function
-- Edge case: if N <= 0 return NULL immediately
-- DISTINCT ensures duplicate salaries are treated as one
-- OFFSET N-1 skips the top N-1 salaries to land on the Nth highest
-- Returns NULL automatically if fewer than N distinct salaries exist

CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
    IF N <= 0 THEN
    RETURN QUERY SELECT NULL::INT;
    RETURN ;
END IF;

RETURN QUERY (
    SELECT DISTINCT e.salary
    FROM Employee e 
    ORDER BY e.salary DESC
    LIMIT 1 OFFSET N - 1 
  );
END;
$$ LANGUAGE plpgsql;
