/*
Workers with the Highest Salaries
https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?python=

Difficulty: Medium

Tables:
worker
    worker_id       int
    first_name      varchar
    last_name       varchar
    salary          int
    joining_date    datetime
    department      varchar
title
    worker_ref_id   int
    worker_title    varchar
    affected_from   datetime
*/

SELECT t.worker_title as best_paid_title
FROM title AS t
FULL JOIN worker AS w
ON t.worker_ref_id = w.worker_id
WHERE w.salary = (
    SELECT MAX(salary)
    FROM worker);
