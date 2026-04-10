-- 1045. Customers Who Bought All Products
-- LeetCode 중급 (⭐⭐⭐)
-- 문제 링크: https://leetcode.com/problems/customers-who-bought-all-products/
-- 작성자: 김윤서
-- 작성일: 2026. 04. 10. 17:56:58

# Write your MySQL query statement below
select customer_id
from customer
having count(distinct product_key) = ( 
    select count(distinct product_key)
    from product
group by customer_id
)
