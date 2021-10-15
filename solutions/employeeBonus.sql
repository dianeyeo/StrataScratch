/*
Employees with Bonuses
https://platform.stratascratch.com/coding/9903-employees-with-bonuses?python=

Difficulty: Easy

-- Find employees whose bonus is less than $150.
-- Output the first name along with the corresponding bonus.

Tables:
employee
    id                  int
    first_name          varchar
    last_name           varchar
    age                 int
    sex                 varchar
    employee_title      varchar
    department          varchar
    salary              int
    target              int
    bonus               int
    email               varchar
    city                varchar
    address             varchar
    manager_id          int
*/

SELECT first_name, bonus
FROM employee
WHERE bonus < 150;
