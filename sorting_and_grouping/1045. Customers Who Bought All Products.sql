# Write your MySQL query statement below
# total product count

Select customer_id
From (
    SELECT customer_id, count(DISTINCT product_key) as totalProduct
    FROM Customer
    Group by customer_id) a1
Where a1.totalProduct in (
    Select Count(*) as totalProduct
    FROM Product
);


