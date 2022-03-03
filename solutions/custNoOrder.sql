/*
Customers without Orders
https://platform.stratascratch.com/coding/9896-customers-without-orders?python=

Difficulty: Medium

-- Find customers who have never made an order.
-- Output the first name of the customer.

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

SELECT first_name AS customer_name
FROM customers
WHERE id NOT IN
    (SELECT cust_id
    FROM orders);
