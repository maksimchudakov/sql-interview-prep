/*
Problem: Rank Scores
Platform: LeetCode
Problem ID: 178
Difficulty: Medium
Link: https://leetcode.com/problems/rank-scores/
*/

-- Rank scores from highest to lowest
-- Using DENSE_RANK to avoid gaps in ranking when scores are tied

SELECT score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS "rank"
FROM Scores
ORDER BY score DESC;
