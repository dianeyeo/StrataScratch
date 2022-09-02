/*
https://platform.stratascratch.com/coding/10057-find-the-number-of-5-star-reviews-earned-by-lo-los-chicken-waffles?code_type=1

Difficulty: Easy

-- Find the number of 5 star reviews earned by Lo-Lo's Chicken & Waffles.

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

SELECT COUNT(stars) AS five_star_count
FROM yelp_reviews
-- WHERE business_name LIKE 'Lo-Lo_s Chicken & Waffles'
WHERE business_name = 'Lo-Lo''s Chicken & Waffles'
AND stars = '5';
