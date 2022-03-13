/*
Find the number of wines with and without designations per country
https://platform.stratascratch.com/coding/10035-find-the-number-of-wines-with-and-without-designations-per-country?python=

Difficulty: Medium

-- Find the number of wines with and without designations per country.
-- Output the country along with the total without designations, total with designations, and the final total of both.

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
    COUNT(id) FILTER(WHERE designation IS NULL) AS no_designation,
    COUNT(id) FILTER(WHERE designation IS NOT NULL) AS w_designation,
    COUNT(id) AS total_count
FROM winemag_p2
GROUP BY country;
