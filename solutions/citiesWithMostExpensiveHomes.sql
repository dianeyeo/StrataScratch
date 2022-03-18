/*
Cities with the Most Expensive Homes
https://platform.stratascratch.com/coding/10315-cities-with-the-most-expensive-homes?python=

Difficulty: Medium

Tables:
zillow_transctions
    id                 int
    state              varchar
    city               varchar
    street_address     varchar
    mkt_price          int
*/

SELECT city
FROM zillow_transactions
GROUP BY city
HAVING AVG(mkt_price) > (
    SELECT AVG(mkt_price)
    FROM zillow_transactions);

-- (SELECT AVG(mkt_price) AS nat_avg
-- FROM zillow_transactions);
