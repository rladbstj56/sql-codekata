-- 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151139
-- 작성자: 김윤서
-- 작성일: 2026. 02. 20. 01:33:58

select month(rh.start_date) as month, rh.car_id, count(*) as records 
from car_rental_company_rental_history rh
where exists ( 
    select 1
    from car_rental_company_rental_history h
    where 
        h.start_date >= '2022-08-01' and h.start_date < '2022-11-01'
    and rh.car_id = h.car_id
    group by h.car_id
    having count(*) >= 5
) 
and rh.start_date >= '2022-08-01' and rh.start_date < '2022-11-01'
group by month(rh.start_date), rh.car_id
having count(*) > 0
order by month(rh.start_date) asc, rh.car_id desc
