/*
Find the Average Score for Grades A, B, and C
https://platform.stratascratch.com/coding/9693-find-the-average-score-for-grades-a-b-and-c?python=

Difficulty: Easy

-- Find the average score for grades A, B, and C.
-- Output the results along with the corresponding grade (ex: 'A', avg(score)).

Tables:
los_angeles_restaurant_health_inspections
    serial_number           varchar
    activity_date           datetime
    facility_name           varchar
    score                   int
    grade                   varchar
    service_code            int
    service_description     varchar
    employee_id             varchar
    facility_address        varchar
    facility_city           varchar
    facility_id             varchar
    facility_state          varchar
    facility_zip            varchar
    owner_id                varchar
    owner_name              varchar
    pe_description          varchar
    program_element_pe      int
    program_name            varchar
    program_status          varchar
    record_id               varchar
*/

SELECT grade, AVG(score)
FROM los_angeles_restaurant_health_inspections
GROUP BY grade;
