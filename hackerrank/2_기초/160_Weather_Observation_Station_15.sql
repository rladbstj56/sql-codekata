-- Weather Observation Station 15
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-15/problem
-- 작성자: 김윤서
-- 작성일: 2026. 03. 05. 09:18:56

/*
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.
*/
select round(long_w,4) 
from station 
where lat_n < 137.2345
order by lat_n desc 
limit 1