/*
Favourite Customer
https://platform.stratascratch.com/coding/9910-favorite-customer?python=

Difficulty: Medium

-- Find "favorite" customers based on the order count and the total cost of orders.
-- A customer is considered as a favorite if he or she has placed more than 3 orders and with the total cost of orders more than $100.

-- Output the customer's first name, city, number of orders, and total cost of orders.

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

SELECT c.first_name, c.city, COUNT(o.id) AS order_count, SUM(o.total_order_cost) AS total_cost
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.cust_id
GROUP BY c.id, c.first_name, c.city
HAVING COUNT(o.id) > 3
AND SUM(o.total_order_cost) > 100;
