-- 1070. Product Sales Analysis III
-- LeetCode 중급 (⭐⭐⭐)
-- 문제 링크: https://leetcode.com/problems/product-sales-analysis-iii/
-- 작성자: 김윤서
-- 작성일: 2026. 04. 10. 17:49:03

    select 
        product_id, 
        rank() over (partition by product_id order by year asc) as year_order,
        quantity,
    from sales
)
select product_id, year as first_year, sum(quantity) as quantity, price
        price
from first_year
where year_order=1
        year,
group by 1,2,4
