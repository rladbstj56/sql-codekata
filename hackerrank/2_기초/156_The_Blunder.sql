-- The Blunder
-- HackerRank 기초 (⭐⭐)
-- 문제 링크: https://www.hackerrank.com/challenges/the-blunder/problem
-- 작성자: 김윤서
-- 작성일: 2026. 02. 19. 21:37:16

select ceil(avg(salary - replace(salary,'0','')))
from employees