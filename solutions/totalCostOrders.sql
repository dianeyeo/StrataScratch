/*
Total Cost of Orders
https://platform.stratascratch.com/coding/10183-total-cost-of-orders?python=

Difficulty: Easy

-- Find the total cost of each customer's orders. Output customer's id, first name, and the total order cost. Order records by customer's first name alphabetically.

Tables:
customers
    id                  int
    first_name          varchar
    last_name           varchar
    city                varchar
    address             varchar
    phone_number        varchar

orders
    id                  int
    cust_id             int
    order_date          datetime
    order_details       varchar
    total_order_cost    int
*/

SELECT c.id, first_name, SUM(o.total_order_cost)
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.cust_id
WHERE o.total_order_cost IS NOT null
GROUP BY c.id, c.first_name
ORDER BY c.first_name;
