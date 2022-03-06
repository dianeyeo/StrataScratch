/*
Total Wine Revenue
https://platform.stratascratch.com/coding/10030-total-wine-revenue?python=

Difficulty: Medium

-- You have a dataset of wines. 
-- Find the total revenue made by each winery and variety that has at least 90 points. 
-- Each wine in the winery, variety pair should be at least 90 points in order for the wine to be considered in the calculation.

-- Output the winery and variety along with the corresponding total revenue. -- Order records by the winery in ascending order and total revenue in descending order.

Tables:
winemag_p1
    id              int
    country         varchar
    description     varchar
    designation     varchar
    points          int
    price           float
    province        varchar
    region_1        varchar
    region_2        varchar
    variety         varchar
    winery          varchar
*/

SELECT winery, variety, SUM(price) AS total_revenue
FROM winemag_p1
GROUP BY winery, variety
HAVING MIN(points) >= 90
ORDER BY winery, total_revenue DESC;
