/*
Total AdWords Earnings
https://platform.stratascratch.com/coding/10164-total-adwords-earnings?python=

Difficulty: Easy

-- Find the total AdWords earnings for each business type. 
-- Output the business types along with the total earnings.

Tables:
google_adwords_earnings
    business_type       varchar
    n_employees         int
    year                int
    adwords_earnings    int
    Unnamed: 4          datetime
    Unnamed: 5          datetime
    Unnamed: 6          datetime
*/

SELECT business_type, SUM(adwords_earnings) AS totalEarnings
FROM google_adwords_earnings
GROUP BY business_type;
