/*
Customer Details
https://platform.stratascratch.com/coding/9891-customer-details?python=


Difficulty: Easy

-- Find the details of each customer regardless of whether the customer made an order. Output the customer's first name, last name, and the city along with the order details.
-- Your output should be listing the customer's orders not necessarily listing the customers. 
-- This means that you may have duplicate rows in your results due to a customer ordering several of the same items. 
-- Sort records based on the customer's first name and the order details in ascending order.

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

SELECT c.first_name, last_name, city, o.order_details
FROM orders AS o
FULL JOIN customers AS c
ON o.cust_id = c.id
ORDER BY c.first_name, o.order_details;
