/*
Cheapest Properties
https://platform.stratascratch.com/coding/9625-cheapest-properties?python=

Difficulty: Easy

-- Find the price of the cheapest property for every city


Tables:
airbnb_search_details
    id                      int
    price                   float
    property_type           varchar
    room_type               varchar
    amenities               varchar
    accommodates            int
    bathrooms               int
    bed_type                varchar
    cancellation_policy     varchar
    cleaning_fee            bool
    city                    varchar
    host_identity_verified  varchar
    host_response_rate      varchar
    host_since              datetime
    neighbourhood           varchar
    number_of_reviews       int
    review_scores_rating    float
    zipcode                 int
    bedrooms                int
    beds                    int
*/

SELECT MIN(price) as cheapestCity, city
FROM airbnb_search_details
GROUP BY city;