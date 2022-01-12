/*
Customer Revenue in March
https://platform.stratascratch.com/coding/9782-customer-revenue-in-march?python=

Difficulty: Medium

-- Calculate the total revenue from each customer in March 2019. 
-- Output the revenue along with the customer id and sort the results based on the revenue in descending order.

Tables;
orders
    id                  int
    cust_id             int
    order_date          datetime
    order_details       varchar
    total_order_cost    int
*/

SELECT cust_id, SUM(total_order_cost) AS totalCost
FROM orders
WHERE EXTRACT(MONTH FROM order_date) = 03
GROUP BY cust_id
ORDER BY SUM(total_order_cost) DESC;
