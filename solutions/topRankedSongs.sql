/*
https://platform.stratascratch.com/coding/10283-find-the-top-ranked-songs-for-the-past-30-years?code_type=1

Difficulty: Medium

-- Find all the songs that were top-ranked (at first position) at least once in the past 20 years

Tables:
billboard_top_100_year_end:
    id              int
    year            int
    year_rank       int
    group_name      varchar
    artist          varchar
    song_name       varchar

*/

SELECT DISTINCT(song_name)
FROM billboard_top_100_year_end
WHERE year_rank = 1
-- condition where song is within last 20 years
AND DATE_PART('year', CURRENT_DATE) - year <= 20;
