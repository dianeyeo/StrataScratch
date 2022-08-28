/*
https://platform.stratascratch.com/coding/9757-find-the-genres-that-yielded-the-highest-sales?code_type=1

Difficulty: Easy

-- Find the genres that yielded the highest sales.
-- Output the genre alongside its total sales.
-- Order results based on the total sales in descending order.

Tables:
global_weekly_charts_2013_2014
    pos             int
    game            varchar
    platform        varchar
    publisher       varchar
    genre           varchar
    week            int
    weekly          int
    total           int
    week_ending     datetime
    id              int
*/

SELECT genre, SUM(total) AS total_sales
FROM global_weekly_charts_2013_2014
GROUP BY genre
ORDER BY total_sales DESC;
