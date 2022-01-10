/*
Guest or Host Kindness
https://platform.stratascratch.com/coding/10072-guest-or-host-kindness?python=

Difficulty: Easy

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
