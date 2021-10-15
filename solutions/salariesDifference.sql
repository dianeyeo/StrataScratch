/* 
Salaries Difference
https://platform.stratascratch.com/coding/10308-salaries-differences?python=

Difficulty: Easy

-- Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. 
-- Output just the difference in salaries

Tables: 
db_employee
    id              int
    first_name      varchar
    last_name       varchar
    salary          int
    department_id   int

db_dept
    id              int
    department      varchar
*/


SELECT
    -- select highest salary from marketing dept
    (SELECT max(salary) as mkt_highest
    FROM db_employee
    INNER JOIN db_dept
    ON db_employee.department_id = db_dept.id
    WHERE department = 'marketing') - 
    -- select highest salary from engineering dept
    (SELECT max(salary) as engineer_highest
    FROM db_employee
    INNER JOIN db_dept
    ON db_employee.department_id = db_dept.id
    WHERE department = 'engineering')
AS salary_difference;
