#https://leetcode.com/problems/immediate-food-delivery-ii/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below

# Temporary table
with first_order as (
    SELECT customer_id, MIN(order_date) as order_date
    FROM Delivery
    Group By customer_id
)

SELECT ROUND(AVG(d.customer_pref_delivery_date = f.order_date) * 100,2) as immediate_percentage
FROM Delivery d JOIN first_order f
ON d.customer_id = f.customer_id and d.order_date = f.order_date



