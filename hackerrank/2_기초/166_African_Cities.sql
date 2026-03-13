-- African Cities
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/african-cities/problem
-- 작성자: 김윤서
-- 작성일: 2026. 03. 13. 09:22:18

select c.name 
from city c 
join country cn 
on c.countrycode = cn.code 
where cn.continent = 'Africa'