/*
Day 1 Common Reactions
https://platform.stratascratch.com/coding/9773-day-1-common-reactions?python=

Difficulty: Medium

-- Find the most common reaction for day 1 by counting the number of occurrences for each reaction. 
--Output the reaction alongside its number of occurrences.

Tables:
facebook_reactions:
    poster          int
    friend          int
    reaction        varchar
    date_day        int
    post_id         int
*/

SELECT reaction, COUNT(*) AS n_occurences
FROM facebook_reactions
WHERE date_day = 1
GROUP BY reaction
HAVING COUNT(*) = 
    -- select the reaction with the most occurences
    (SELECT MAX(n_occurences)
    FROM 
        -- create a temp table that counts the number of occurences for each reaction on day 1
        (SELECT COUNT(*) AS n_occurences
        FROM facebook_reactions
        WHERE date_day = 1
        GROUP BY reaction) sub_reaction
    );
