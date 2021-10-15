/*
Sales Dept Salaries
https://platform.stratascratch.com/coding/9920-sales-dept-salaries?python=

Difficulty: Easy

-- Find employees in the Sales department who achieved a target greater than 150.
-- Output first names of employees.
-- Sort records by the first name in descending order.

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

SELECT first_name
FROM employee
WHERE department = 'Sales'
AND target > 150
ORDER BY first_name DESC;
