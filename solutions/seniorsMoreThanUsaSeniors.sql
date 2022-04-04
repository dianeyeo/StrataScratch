/*
Find whether the number of seniors works at Meta/Facebook is higher than its number of USA based employees
https://platform.stratascratch.com/coding/10065-find-whether-the-number-of-seniors-works-at-facebook-is-higher-than-its-number-of-usa-based-employees?python=

Difficulty: Medium

Tables:
facebook_employees
    id                  int
    location            varchar
    age                 int
    gender              varchar
    is_senior           bool
*/

SELECT CASE
    WHEN 
        -- count total num of seniors in fb
        (SELECT COUNT(is_senior)
        FROM facebook_employees
        WHERE is_senior = TRUE) 
        >
        -- count total num of seniors in USA
        (SELECT COUNT(is_senior)
        FROM facebook_employees
        WHERE location = 'USA'
        AND is_senior = TRUE)
    -- if seniors > usa_seniors then 'more seniors'
    THEN 'More seniors' 
    -- else 'more USA-based'
    ELSE 'More USA-based' END;
