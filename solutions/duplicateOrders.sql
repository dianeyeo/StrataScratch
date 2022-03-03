/*
Duplicate Orders
https://platform.stratascratch.com/coding/9893-duplicate-orders?python=

Difficulty: Medium

-- Find customers who appear in the orders table more than three times.

Tables:
orders
    id                  int
    cust_id             int
    order_date          datetime
    order_details       varchar
    total_order_cost    int
*/

SELECT cust_id
FROM orders
GROUP BY cust_id
HAVING COUNT(cust_id) > 3;
