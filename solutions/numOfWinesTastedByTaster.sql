/*
Find the number of wines each taster tasted within the variation. 
https://platform.stratascratch.com/coding/10028-find-the-number-of-wines-of-each-variety-that-has-been-tasted-by-each-taster?python=

Difficulty: Medium

Tables:
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

SELECT taster_name, variety, COUNT(taster_name) AS taste_count
FROM winemag_p2
WHERE taster_name IS NOT NULL
GROUP BY taster_name, variety
ORDER BY taster_name ASC, taste_count DESC;
