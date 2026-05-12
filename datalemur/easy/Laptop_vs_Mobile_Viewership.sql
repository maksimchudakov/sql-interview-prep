/*
Problem: Laptop vs Mobile Viewership
Platform: DataLemur
Company: NY Times
Difficulty: Easy
Link: https://datalemur.com/questions/laptop-mobile-viewership
*/

-- Calculate total viewership by device type
-- Mobile viewership includes tablet + phone

SELECT 
    COUNT(CASE WHEN device_type = 'laptop' THEN 1 END) AS laptop_views,
    COUNT(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 END) AS mobile_views
FROM viewership;
