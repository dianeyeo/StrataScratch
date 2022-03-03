/*
Employee and Manager Salaries
https://platform.stratascratch.com/coding/9894-employee-and-manager-salaries?python=

Difficulty: Medium

-- Find employees who are earning more than their managers. 
-- Output the employee's first name along with the corresponding salary.

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

SELECT n.first_name AS employeeName, n.salary AS employeeSalary
FROM employee AS n
JOIN employee AS m
ON n.manager_id = m.id
-- if manager is also the staff
WHERE n.salary > m.salary;
