/*
Price of Wines in Each Country
https://platform.stratascratch.com/coding/10029-price-of-wines-in-each-country?python=

Difficulty: Medium

-- Find the minimum, average, and maximum price of all wines per country. 
-- Assume all wines listed across both datasets are unique. 
-- Output the country name along with the corresponding minimum, maximum, and average prices.

Tables:
winemag_p1
    id                          int
    country                     varchar
    description                 varchar
    designation                 varchar
    points                      int
    price                       float
    province                    varchar
    region_1                    varchar
    region_2                    varchar
    variety                     varchar
    winery                      varchar
winemag_p2
    id                          int
    country                     varchar
    description                 varchar
    designation                 varchar
    points                      int
    price                       float
    province                    varchar
    region_1                    varchar
    region_2                    varchar
    taster_name                 varchar
    taster_twitter_handle       varchar
    title                       varchar
    variety                     varchar
    winery                      varchar
*/

SELECT country, 
        MIN(price) AS min_price,
        AVG(price) AS avg_price,
        MAX(price) AS max_price
FROM
    (SELECT country, price
    FROM winemag_p1
    UNION ALL
    SELECT country, price
    FROM winemag_p2) wine_combine
WHERE country IS NOT NULL
GROUP BY country;
