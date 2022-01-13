/*
Highest Salary in Department
https://platform.stratascratch.com/coding/9897-highest-salary-in-department?python=

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

SELECT department, first_name AS employee_name, salary
FROM employee
WHERE (department, salary) IN 
    (SELECT department, MAX(salary)
    FROM employee
    GROUP BY department);
