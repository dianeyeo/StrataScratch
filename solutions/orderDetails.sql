/*
Order Details
https://platform.stratascratch.com/coding/9913-order-details?python=

Difficulty: Medium

-- Find order details made by Jill and Eva.
-- Consider the Jill and Eva as first names of customers.
-- Output the order date, details and cost along with the first name.
-- Order records based on the customer id in ascending order.

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

SELECT order_date, order_details, total_order_cost, c.first_name
FROM orders AS o
FULL JOIN customers AS c
ON o.cust_id = c.id
WHERE c.first_name = 'Jill'
OR c.first_name = 'Eva'
ORDER BY c.id;
