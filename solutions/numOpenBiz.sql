/*
https://platform.stratascratch.com/coding/10051-find-the-number-of-open-businesses?code_type=1

Difficulty: Easy

-- Find the number of open businesses.

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
*/

SELECT COUNT(*)
FROM yelp_business
WHERE is_open = 1;
