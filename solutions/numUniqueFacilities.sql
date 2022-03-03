/*
Number of Unique Facilities and Insepctions per Municipality
https://platform.stratascratch.com/coding/9702-number-of-unique-facilities-and-inspections-per-municipality?python=

Difficulty: Easy

-- Count the number of unique facilities per municipality zip code along with the number of inspections. 
-- Output the result along with the number of inspections per each municipality zip code. 
-- Sort the result based on the number of inspections in descending order.

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

SELECT COUNT(DISTINCT facility_id) AS numFacilities, facility_zip, COUNT(service_code) AS inspectionCount
FROM los_angeles_restaurant_health_inspections
GROUP BY facility_zip
ORDER BY COUNT(service_code) DESC;
