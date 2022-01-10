/*
Guest or Host Kindness
https://platform.stratascratch.com/coding/10072-guest-or-host-kindness?python=

Difficulty: Easy

-- Find whether hosts or guests give higher review scores based on their average review scores. 
-- Output the higher of the average review score rounded to the 2nd decimal spot (e.g., 5.11).

Tables:
airbnb_reviews
    from_user       int
    to_user         int
    from_type       varchar
    to_type         varchar
    review_score    varchar
*/

SELECT from_type, ROUND(AVG(review_score), 2)
FROM airbnb_reviews
GROUP BY from_type
ORDER BY AVG(review_score) DESC
LIMIT 1;
