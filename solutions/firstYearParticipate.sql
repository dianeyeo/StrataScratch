/*
https://platform.stratascratch.com/coding/10184-order-all-countries-by-the-year-they-first-participated-in-the-olympics?code_type=1

Difficulty: Easy

-- Order all countries by the year they first participated in the Olympics.
Output the National Olympics Committee (NOC) name along with the desired year.
-- Sort records by the year and the NOC in ascending order.

Tables:
olympics_athletes_events
    id:         int
    name:       varchar
    sex:        varchar
    age:        float
    height:     float
    weight:     datetime
    team:       varchar
    noc:        varchar
    games:      varchar
    year:       int
    season:     varchar
    city:       varchar
    sport:      varchar
    event:      varchar
    medal:      varchar
    non_team:   datetime
*/

SELECT noc, MIN(year) AS first_year
FROM olympics_athletes_events
GROUP BY noc
ORDER BY first_year, noc;
