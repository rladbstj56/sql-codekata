-- Weather Observation Station 8
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-8/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 10. 09:29:30

select distinct city 
from station 
where city regexp '^a|^e|^i|^o|^u'
and city regexp 'a$|e$|i$|o$|u$'