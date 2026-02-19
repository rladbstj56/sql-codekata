-- 저자 별 카테고리 별 매출액 집계하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144856
-- 작성자: 김윤서
-- 작성일: 2026. 02. 20. 00:29:32

select 
    a.author_id, 
    a.author_name,
    b.category,
    sum(bs.sales * b.price) as total_sales
from book b
join author a 
on b.author_id = a.author_id 
join book_sales bs 
on b.book_id = bs.book_id
where bs.sales_date like '2022-01%'
group by a.author_id, a.author_name, b.category
order by a.author_id asc, b.category desc