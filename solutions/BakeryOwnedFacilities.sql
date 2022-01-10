/*
'BAKERY' Owned Facilities
https://platform.stratascratch.com/coding/9697-bakery-owned-facilities?python=

Difficulty: Easy

-- Find the owner_name and the pe_description of facilities owned by 'BAKERY' where low-risk cases have been reported.

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

SELECT DISTINCT owner_name, pe_description
FROM los_angeles_restaurant_health_inspections
WHERE pe_description ILIKE '%LOW%'
AND owner_name ILIKE '%BAKERY%';
