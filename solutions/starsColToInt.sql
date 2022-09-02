/*
https://platform.stratascratch.com/coding/10056-cast-stars-column-values-to-integer-and-return-with-all-other-column-values?code_type=1

Difficulty: Easy

-- Cast stars column values to integer and return with all other column values.

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
*/

SELECT * 
FROM yelp_reviews
WHERE stars != '?';
