/*
 https://platform.stratascratch.com/coding/9996-find-the-average-number-of-streams-across-all-songs?code_type=1
 
 Difficulty: Easy
 
 -- Find the average number of streams across all songs.
 
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

* /
SELECT AVG(streams) AS avg_streams
FROM spotify_worldwide_daily_song_ranking;
