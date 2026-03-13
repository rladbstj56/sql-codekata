-- Average Population of Each Continent
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
-- 작성자: 김윤서
-- 작성일: 2026. 03. 13. 09:56:56

select cn.continent, floor(avg(c.population))
from country cn 
join city c 
on cn.code = c.countrycode 
group by cn.continent