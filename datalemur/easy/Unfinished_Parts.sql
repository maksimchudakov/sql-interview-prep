/*
Problem: Unfinished Parts
Platform: DataLemur
Company: Tesla
Difficulty: Easy
Link: https://datalemur.com/questions/tesla-unfinished-parts
*/

-- Find parts that have begun assembly but are not yet finished
-- Unfinished parts have no finish_date (NULL)
-- Simple WHERE filter on NULL finish_date

SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;
