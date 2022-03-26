/*
Highest Target
https://platform.stratascratch.com/coding/9904-highest-target?python=

Difficulty: Medium

-- Find the employee who has achieved the highest target.
-- Output the employee's first name along with the achieved target and the bonus.

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

SELECT first_name, target, bonus
FROM employee
WHERE target = 
    (SELECT MAX(target)
    FROM employee);
