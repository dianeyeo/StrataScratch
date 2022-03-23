/*
Distances Traveled
https://platform.stratascratch.com/coding/10324-distances-traveled?python=

Difficulty: Medium

-- Find the top 10 users that have traveled the greatest distance. 
-- Output their id, name and a total distance traveled.

Tables:
lyft_rides_log
    id          int
    user_id     int
    distance    int
lyft_users
    id          int
    name        varchar
*/

SELECT u.id, u.name, SUM(l.distance) AS total_distance
FROM lyft_rides_log AS l
FULL JOIN lyft_users AS u
ON l.user_id = u.id
GROUP BY u.id, u.name
HAVING SUM(l.distance) IS NOT NULL
ORDER BY total_distance DESC
LIMIT 10;
