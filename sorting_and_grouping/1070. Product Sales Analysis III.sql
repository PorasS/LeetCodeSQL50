https://leetcode.com/problems/product-sales-analysis-iii/?envType=study-plan-v2&envId=top-sql-50

select product_id, year as first_year, quantity, price
FROM sales 
Where (product_id, year) IN
(Select product_id, MIN(year)
FROM sales
GROUP BY product_id)
