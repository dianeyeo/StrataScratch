/*
Wine Variety Revenues
https://platform.stratascratch.com/coding/10033-wine-variety-revenues?python=

Difficulty: Medium

-- Find the total revenue made by each region from each variety of wine in that region. 
-- Output the region, variety, and total revenue.

-- Take into calculation both region_1 and region_2 but be careful for cases where region_1 == region_2. 
-- The revenue shouldn't be counted twice for cases like this.

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

SELECT region, variety, SUM(price) AS total_revenue
FROM ( -- combine both region_1 and _2 as one column
        SELECT region_1 AS region, variety, price
        FROM winemag_p1
        UNION
        SELECT region_2 AS region, variety, price
        FROM winemag_p1
    ) AS wine
-- remove rows that have empty prices
WHERE price is NOT NULL
-- remove rows with no regions
AND region is NOT NULL
GROUP BY region, variety
ORDER BY total_revenue DESC;
