/*
Class Performance
https://platform.stratascratch.com/coding/10310-class-performance?python=

Difficulty: Medium

-- You are given a table containing assignment scores of students in a class. -- Write a query that identifies the largest difference in total score of all assignments.
-- Output just the difference in total score between the two students.

Tables:
box_scores
    id                 int
    student            varchar
    assignment1        int
    assignment2        int
    assignment3        int
*/

SELECT MAX(score) - MIN(score) AS score_difference
FROM (
    SELECT student,
        SUM(assignment1+assignment2+assignment3) AS score
    FROM box_scores
    GROUP BY student) AS box_scores;
