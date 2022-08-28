/*
https://platform.stratascratch.com/coding/9758-find-the-best-publishers-based-on-total-sales?code_type=1

Difficulty: Easy

-- Find the best publishers based on total sales made by each publisher.
-- Output publishers alongside their total sales.
-- Order records based on the sales in descending order.

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

SELECT publisher, SUM(total) AS total_sales
FROM global_weekly_charts_2013_2014
GROUP BY publisher
ORDER BY total_sales DESC;
