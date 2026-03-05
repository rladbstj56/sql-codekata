-- Weather Observation Station 16
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
-- 작성자: 김윤서
-- 작성일: 2026. 03. 05. 09:21:27

/*
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 
*/
select round(lat_n,4) 
from station 
where lat_n > 38.7780 
order by lat_n 
limit 1;