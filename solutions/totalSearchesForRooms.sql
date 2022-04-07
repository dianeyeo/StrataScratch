/*
Total Searches for Rooms
https://platform.stratascratch.com/coding/9638-total-searches-for-rooms?python=

Difficulty: Medium

-- Find the total number of searches for each room type (apartments, private, shared) by city.

Tables:
id                          int
price                       float
property_type               varchar
room_type                   varchar
amenities                   varchar
accommodates                int
bathrooms                   int
bed_type                    varchar
cancellation_policy         varchar
cleaning_fee                bool
city                        varchar
host_identity_verified      varchar
host_response_rate          varchar
host_since                  datetime
neighbourhood               varchar
number_of_reviews           int
review_scores_rating        float
zipcode                     int
bedrooms                    int
beds                        int
*/

SELECT city, 
    -- count searches for private room
    COUNT(CASE WHEN room_type = 'Private room' THEN id ELSE NULL END) AS private_room,
    -- count searches for entire home/apt
    COUNT(CASE WHEN room_type = 'Entire home/apt' THEN id ELSE NULL END) AS entire_home,
    -- count searches for shared room
    COUNT(CASE WHEN room_type = 'Shared room' THEN id ELSE NULL END) AS shared_room
FROM airbnb_search_details
GROUP BY city;
