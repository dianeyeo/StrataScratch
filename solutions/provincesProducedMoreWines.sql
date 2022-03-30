/*
Find all provinces which produced more wines in 'winemag_p1' than they did in 'winemag_p2'.

Difficulty: Medium

-- Find all provinces which produced more wines in 'winemag_p1' than they did in 'winemag_p2'.
-- Output the province and the corresponding wine count.
-- Order records by the wine count in descending order.

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

SELECT w1.province, w1.wine_count1
FROM 
    (SELECT province, COUNT(*) AS wine_count1
    FROM winemag_p1
    WHERE province IS NOT NULL
    GROUP BY province) AS w1
INNER JOIN 
    (SELECT province, COUNT(*) AS wine_count2
    FROM winemag_p2
    WHERE province IS NOT NULL
    GROUP BY province) AS w2
ON w1.province = w2.province
WHERE w1.wine_count1 > w2.wine_count2
ORDER BY w1.wine_count1 DESC;
