/*
Gender with Generous Reviews
https://platform.stratascratch.com/coding/10149-gender-with-generous-reviews?python=

Difficulty: Easy

-- Write a query to find which gender gives a higher average review score when writing reviews as guests. Use the `from_type` column to identify guest reviews. 
-- Output the gender and their average review score.

Tables:
airbnb_reviews
    from_user       int
    to_user         int
    from_type       varchar
    to_type         varchar
    review_score    varchar

airbnb_guests
    guest_id        int
    nationality     varchar
    gender          varchar
    age             int
*/

SELECT gender, AVG(review_score) as avgReviewScore
FROM airbnb_reviews AS r
FULL JOIN airbnb_guests as g
ON r.from_user = g.guest_id
WHERE from_type = 'guest'
GROUP BY gender
LIMIT 1;