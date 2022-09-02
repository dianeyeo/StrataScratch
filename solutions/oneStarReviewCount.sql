/*
https://platform.stratascratch.com/coding/10050-find-the-review-count-for-one-star-businesses-from-yelp?code_type=1

Difficulty: Easy

-- Find the review count for one-star businesses from Yelp.
-- Output the business name along with the corresponding review count.

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

SELECT name, SUM(review_count)
FROM yelp_business
WHERE stars = 1
GROUP BY name;
