-- Weather Observation Station 12
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-12/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 12. 10:02:24

select distinct city 
from station 
where city not regexp '^a|^e|^i|^o|^u'
and city not regexp 'a$|e$|i$|o$|u$'