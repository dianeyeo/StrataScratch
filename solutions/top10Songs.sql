/*
https://platform.stratascratch.com/coding/9995-top-10-ranked-songs?code_type=1

Difficulty: Easy

-- Find the top 10 ranked songs by position. 
-- Output the track name along with the corresponding position and sort records by the position in descending order and track name alphabetically, as there are many tracks that are tied for the same position.

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

SELECT DISTINCT(trackname), position
FROM spotify_worldwide_daily_song_ranking
WHERE position <= 10
ORDER BY position DESC, trackname;
