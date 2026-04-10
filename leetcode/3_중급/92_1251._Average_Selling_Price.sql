-- 1251. Average Selling Price
-- LeetCode 중급 (⭐⭐⭐)
-- 문제 링크: https://leetcode.com/problems/average-selling-price/
-- 작성자: 김윤서
-- 작성일: 2026. 04. 10. 17:33:12

# Write your MySQL query statement below
with filtered as ( 
    select 
        p.product_id, 
        p.price, 
        u.units 
    from prices p
    join unitssold u 
    on (p.product_id = u.product_id)
    where (u.purchase_date between p.start_date and p.end_date)
)
select product_id, round(sum(price*units)/sum(units),2) as average_price
from filtered  
group by product_id
