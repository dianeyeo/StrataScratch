/*
https://platform.stratascratch.com/coding/9994-find-songs-with-less-than-2000-streams?code_type=1

Difficulty: Easy

-- Find songs with less than 2000 streams.
-- Output the track name along with the corresponding streams.
-- Sort records by streams in descending order.
-- There is no need to group rows with same track name

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

SELECT trackname, streams
FROM spotify_worldwide_daily_song_ranking
WHERE streams <= 2000
ORDER BY streams DESC;
