-- Higher Than 75 Marks
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/more-than-75-marks/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 13. 09:45:23

select name
from students 
where marks > 75
order by substr(name,-3,3) asc, id asc