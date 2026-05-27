/*
Problem: Number Of Bathrooms And Bedrooms
Platform: StrataScratch
Problem ID: 9622
Company: Airbnb
Difficulty: Easy
Link: https://platform.stratascratch.com/coding/9622-number-of-bathrooms-and-bedrooms
*/

SELECT city, property_type,
    AVG(bathrooms) AS avg_bathrooms,
    AVG(bedrooms) AS avg_bedrooms
FROM airbnb_search_details
GROUP BY city, property_type;
