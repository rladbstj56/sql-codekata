-- Weather Observation Station 10
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 11. 09:45:18

select distinct city 
from station 
where city not regexp 'a$|e$|i$|o$|u$'