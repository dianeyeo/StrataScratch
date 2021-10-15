/*
Number of Employees per Department
https://platform.stratascratch.com/coding/9906-number-of-employees-per-department?python=

Difficulty: Easy

-- Find the number of employees in each department.
-- Output the department name along with the corresponding number of employees.
-- Sort records based on the number of employees in descending order.

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

SELECT department, COUNT(id) as numOfEmployee 
FROM employee
GROUP BY department
ORDER BY numOfEmployee DESC;
