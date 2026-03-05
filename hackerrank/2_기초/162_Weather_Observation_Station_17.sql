-- Weather Observation Station 17
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-17/problem
-- 작성자: 김윤서
-- 작성일: 2026. 03. 05. 09:23:46

/*
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to  decimal places.
*/
select round(long_w,4)
from station 
where lat_n > 38.7780 
order by lat_n 
limit 1