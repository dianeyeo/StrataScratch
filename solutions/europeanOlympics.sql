/*
https://platform.stratascratch.com/coding/10185-european-and-non-european-olympics?code_type=1

Difficulty: Easy

-- Add a column to each row which will classify Olympics that athlete is competing in as 'European' or  'NonEuropean' based on the city it was hosted. Output all details along with the corresponding city classification.

-- European cities are Athina, Berlin, London, Paris, Albertville and Lillehammer.

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

-- select all columns
SELECT * ,
    -- if..else statement on whether athlete is European or not dependent on their city
    (CASE
        -- European cities: Athina, Berlin, Paris, Albertville, Lillehammer
        WHEN city IN ('Athina', 'Berlin', 'Paris', 'Albertville', 'Lillehammer')
        THEN 'European'
        ELSE 'NonEuropean' END
    -- create a new column to classify if they are European or not
    ) AS city_classification
    FROM olympics_athletes_events;
