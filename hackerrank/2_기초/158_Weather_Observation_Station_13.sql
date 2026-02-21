-- Weather Observation Station 13
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-13/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 21. 21:09:13

select round(sum(lat_n),4) 
from station
where lat_n > 38.7880 and lat_n < 137.2345