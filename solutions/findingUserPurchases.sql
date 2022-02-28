/*
Finding User Purchases
https://platform.stratascratch.com/coding/10322-finding-user-purchases?python=

Difficulty: Medium

Tables:
amazon_transactions
    id              int
    user_id         int
    item            varchar
    created_at      datetime
    revenue         int
*/

SELECT DISTINCT(a1.user_id)
FROM amazon_transactions AS a1
LEFT JOIN amazon_transactions AS a2
ON a1.user_id = a2.user_id
WHERE (a2.created_at - a1.created_at)
BETWEEN 0 AND 7
AND a1.id != a2.id;
