/*
https://platform.stratascratch.com/coding/9997-top-100-ranked-songs?code_type=1

Difficulty: Easy

-- Find the total number of streams for the top 100 ranked songs.

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

SELECT SUM(streams) AS total_100_streams
FROM spotify_worldwide_daily_song_ranking
WHERE position <= 100;
