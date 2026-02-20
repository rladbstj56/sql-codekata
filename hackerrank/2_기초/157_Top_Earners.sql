-- Top Earners
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/earnings-of-employees/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 20. 19:39:12

select e.salary * e.months as earnings, count(*) 
from employee e 
where e.salary * e.months = ( 
    select em.salary * em.months as earnings
    from employee em 
    order by em.salary * em.months desc 
    limit 1
)
group by earnings
