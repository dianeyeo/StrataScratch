/*
Find the Number of Inspections Per Day
https://platform.stratascratch.com/coding/9704-find-the-number-of-inspections-per-day?python=

Difficulty: Easy

-- Find the number of inspections per day.
-- Output the result along with the date of the activity.
-- Order results based on the activity date in the ascending order.

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

SELECT activity_date, COUNT(serial_number)
FROM los_angeles_restaurant_health_inspections
GROUP BY activity_date
ORDER BY activity_date;
