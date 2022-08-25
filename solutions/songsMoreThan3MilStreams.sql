/*
https://platform.stratascratch.com/coding/9990-find-songs-that-have-more-than-3-million-streams?code_type=1

Difficulty: Easy

-- Find songs that have more than 3 million streams.
-- Output the track name, artist, and the corresponding streams.
-- Sort records based on streams in descending order.

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

SELECT trackname, artist, streams
FROM spotify_worldwide_daily_song_ranking
WHERE streams >= 3000000
ORDER BY streams DESC;
