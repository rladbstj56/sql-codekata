-- Weather Observation Station 9
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-9/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 11. 09:43:11

select distinct city 
from station 
where city not regexp '^a|^e|^i|^o|^u'