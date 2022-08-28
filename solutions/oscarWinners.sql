/*
https://platform.stratascratch.com/coding/9687-find-details-of-oscar-winners-between-2001-and-2009?code_type=1

Difficulty: Easy

-- Find the details of Oscar winners between 2001 and 2009.

Tables:
oscar_nominees
    year        int
    category    varchar
    nominee     varchar
    movie       varchar
    winner      bool
    id          int
*/

SELECT * 
FROM oscar_nominees
WHERE year BETWEEN 2001 AND 2009
AND winner = TRUE;
