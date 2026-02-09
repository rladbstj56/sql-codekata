-- Weather Observation Station 4
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/weather-observation-station-4/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 09. 14:40:26

select count(city)-count(distinct city)
from station 