-- 1731. The Number of Employees Which Report to Each Employee
-- LeetCode 중급 (⭐⭐⭐)
-- 문제 링크: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/
-- 작성자: 김윤서
-- 작성일: 2026. 04. 10. 18:57:09

# Write your MySQL query statement below
with reported as ( 
    select reports_to, count(*) as reports_count, avg(age) as average_age
    from employees 
    group by reports_to
)
select e.employee_id, e.name, r.reports_count, round(r.average_age,0) as average_age
from employees e 
join reported r 
on e.employee_id = r.reports_to 
order by e.employee_id
