-- Weather Observation Station 6
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 09. 14:55:50

select distinct city
from station 
WHERE city regexp '^a|^e|^i|^o|^u'