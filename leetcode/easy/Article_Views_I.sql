/*
Problem: Article Views I
Platform: LeetCode
Problem ID: 1148
Difficulty: Easy
Link: https://leetcode.com/problems/article-views-i/
*/

-- Find authors who viewed at least one of their own articles
-- author_id = viewer_id means the author viewed their own article
-- DISTINCT to avoid duplicate author entries

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;
