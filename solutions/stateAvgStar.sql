/*
https://platform.stratascratch.com/coding/10052-find-the-average-number-of-stars-for-each-state?code_type=1

Difficulty: Easy

-- Find the average number of stars for each state.
-- Output each state along with the corresponding average number of stars.

Tables:
yelp_business
    business_id         varchar
    name                varchar
    neighbourhood       varchar
    address             varchar
    city                varchar
    state               varchar
    postal_code         varchar
    latitude            float
    longitude           float
    stars               float
    review_count        int
    is_open             int
    categories          varchar
*/

SELECT state, AVG(stars) AS star_avg
FROM yelp_business
GROUP BY state;
