/*
Highest Priced Wine in the US
https://platform.stratascratch.com/coding/10044-highest-priced-wine-in-the-us?python=

Difficulty: Medium

-- Find the highest price of each variety produced in English speaking regions, but not in Spanish speaking regions, and considering varieties that have earned a minimum of 90 points for every country. 
-- Use the result to find the highest price of each variety in the US.
-- Output the variety and the corresponding highest price.

-- Let's assume the US is the only English speaking region in the dataset, and Spain, Argentina are the only Spanish speaking regions in the dataset. 
-- Let's also assume that the same variety might be listed under several countries so you'll need to remove varieties that show up in both the US and in Spanish speaking countries.

Tables:
winemag_p1
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

SELECT variety, MAX(price)
FROM winemag_p1
WHERE variety in 
    (SELECT variety
    FROM winemag_p1
    WHERE variety NOT IN
        (SELECT country
        FROM winemag_p1
        WHERE country NOT IN ('Spain', 'Argentina'))
    GROUP BY variety
    HAVING MIN(points) >= 90)
AND country = 'US'
GROUP BY variety;
