/*
Not Referred Employees
https://platform.stratascratch.com/coding/9907-not-referred-employees?python=

Difficulty: Easy

-- Find employees that are not referred by the manager id 1.
-- Output the first name of the employee.

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
WHERE manager_id != 1;
