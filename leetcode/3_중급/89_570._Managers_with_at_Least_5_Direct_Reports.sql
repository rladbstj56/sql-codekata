-- 570. Managers with at Least 5 Direct Reports
-- LeetCode 중급 (⭐⭐⭐)
-- 문제 링크: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/
-- 작성자: 김윤서
-- 작성일: 2026. 04. 10. 16:23:38

# Write your MySQL query statement below
    select managerId
    from employee 
    group by managerId
select name 
from employee 
where id in (
    having count(*)>=5
)
