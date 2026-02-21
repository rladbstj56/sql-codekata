-- Weather Observation Station 14
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-14/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 21. 21:12:44

select round(max(lat_n),4)
from station 
where lat_n < 137.2345