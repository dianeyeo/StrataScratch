/*
Highest Cost Orders
https://platform.stratascratch.com/coding/9915-highest-cost-orders?python=

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

SELECT c.first_name, SUM(o.total_order_cost) AS total_cost, o.order_date 
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.cust_id
GROUP BY c.first_name, o.order_date
HAVING o.order_date BETWEEN '2019-02-01' AND '2019-05-01'
ORDER BY total_cost DESC
LIMIT 1;
