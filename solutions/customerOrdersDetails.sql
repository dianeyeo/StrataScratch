/*
Customer Orders and Details
https://platform.stratascratch.com/coding/9908-customer-orders-and-details?python=

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

SELECT c.city, COUNT(DISTINCT(o.id)) AS total_orders, COUNT(DISTINCT(c.id)) AS num_cust, sum(total_order_cost) AS total_cost
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.cust_id
GROUP BY c.city
HAVING count(o.id) >= 5;
