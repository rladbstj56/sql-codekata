-- Weather Observation Station 7
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-7/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 09. 14:58:18

select distinct city 
from station 
where city regexp 'a$|e$|i$|o$|u$'