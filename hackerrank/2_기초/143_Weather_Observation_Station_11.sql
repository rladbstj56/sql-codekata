-- Weather Observation Station 11
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 11. 09:48:14

select distinct city 
from station 
where city not regexp '^a|^e|^i|^o|^u'
or city not regexp 'a$|e$|i$|o$|u$'