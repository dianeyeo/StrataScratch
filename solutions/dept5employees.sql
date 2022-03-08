/*
Department with 5 Employees
https://platform.stratascratch.com/coding/9911-departments-with-5-employees?python=

Difficulty: Medium

-- Find departments with at more than or equal 5 employees. 

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

SELECT department
FROM employee
GROUP BY department
HAVING COUNT(id) >= 5;
