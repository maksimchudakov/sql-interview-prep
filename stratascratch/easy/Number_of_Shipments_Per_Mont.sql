/*
Problem: Number of Shipments Per Month
Platform: StrataScratch
Problem ID: 2056
Company: Amazon
Difficulty: Easy
Link: https://platform.stratascratch.com/coding/2056-number-of-shipments-per-month
*/

-- Calculate number of shipments per month
-- Unique shipment = combination of shipment_id and sub_id
-- TO_CHAR to format date as YYYY-MM
-- Concatenate shipment_id and sub_id as string to count unique combinations

SELECT
    TO_CHAR(shipment_date, 'YYYY-MM') AS year_month,
    COUNT(DISTINCT shipment_id::TEXT || sub_id::TEXT) AS shipment_count
FROM amazon_shipment
GROUP BY year_month
ORDER BY year_month;
