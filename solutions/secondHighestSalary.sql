/*
Second Highest Salary
https://platform.stratascratch.com/coding/9892-second-highest-salary?python=

Difficulty: Medium

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

-- returns 2nd highest salary
SELECT MAX(salary)
FROM employee
-- returns highest salary that is lower than highest salary
WHERE salary < (
    -- returns highest salary
    SELECT MAX(salary)
    FROM employee);
