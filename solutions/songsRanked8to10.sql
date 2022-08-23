/*
https://platform.stratascratch.com/coding/9999-find-songs-that-are-ranked-between-8-10?code_type=1

Difficulty: Easy

-- Find songs that are ranked between 8-10.
-- Output the track name along with the corresponding position, ordered ascendingly. 

Tables:
spotify_worldwide_daily_song_ranking
    id              int
    position        int
    trackname       varchar
    artist          varchar
    streams         int
    url             varchar
    date            datetime
    region          varchar
*/
*/

SELECT trackname, position
FROM spotify_worldwide_daily_song_ranking
WHERE position >= 8
AND position <= 10
ORDER BY position;
