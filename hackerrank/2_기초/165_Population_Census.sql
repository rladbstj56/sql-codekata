-- Population Census
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/asian-population/problem
-- 작성자: 김윤서
-- 작성일: 2026. 03. 13. 09:20:10

select sum(c.population)
from city c 
join country as cn 
on c.countrycode = cn.code 
where cn.continent = 'Asia'