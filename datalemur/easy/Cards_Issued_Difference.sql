/*
Problem: Cards Issued Difference
Platform: DataLemur
Company: JPMorgan Chase
Difficulty: Easy
Link: https://datalemur.com/questions/cards-issued-difference
*/

-- Find difference between highest and lowest card issuance per card type
-- Simple MAX - MIN aggregation grouped by card name
-- Order by largest disparity first

SELECT card_name, 
  MAX(issued_amount) - MIN(issued_amount) as difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC;
