/*
https://platform.stratascratch.com/coding/10054-find-the-number-of-entries-per-star?code_type=1

Difficulty: Easy

-- Find the number of entries per star.
-- Output each number of stars along with the corresponding number of entries.
-- Order records by stars in ascending order. 

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

SELECT DISTINCT(stars), COUNT(review_id) AS entry_count
FROM yelp_reviews
GROUP BY stars
ORDER BY stars;
