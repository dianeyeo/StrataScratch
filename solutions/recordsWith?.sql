/*
https://platform.stratascratch.com/coding/10055-records-with?code_type=1

Difficulty: Easy

-- Find records with the value '?' in the stars column

Tables:
yelp_reviews
    business_name     varchar
    review_id         varchar
    user_id           varchar
    stars             varchar
    review_date       datetime
    review_text       varchar
    funny             int
    useful            int
    cool              int
*/

SELECT * 
FROM yelp_reviews
WHERE stars = '?';
