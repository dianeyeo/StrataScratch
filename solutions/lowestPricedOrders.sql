/*
Lowest Priced Orders
https://platform.stratascratch.com/coding/9912-lowest-priced-orders?python=

Difficulty: Medium

Tables:
customers
    id                  int
    first_name          varchar
    last_name           varchar
    city                varchar
    address             varchar
    phone_number        int

orders
    id                  int
    cust_id             int
    order_date          datetime
    order_details       varchar
    total_order_cost    int
*/

SELECT o.cust_id, c.first_name, MIN(o.total_order_cost) AS lowest_order_price
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.cust_id
GROUP BY c.first_name, o.cust_id;
