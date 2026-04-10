-- 1934. Confirmation Rate
-- LeetCode 중급 (⭐⭐⭐)
-- 문제 링크: https://leetcode.com/problems/confirmation-rate/
-- 작성자: 김윤서
-- 작성일: 2026. 04. 10. 17:04:34

        sum(case action when 'confirmed' then 1 else 0 end) as confirm_cnt, 
        count(*) as total_cnt 
    from confirmations 
    group by user_id
) 
select
    s.user_id, 
    ifnull(round(r.confirm_cnt/r.total_cnt,2),0) as confirmation_rate 
from signups as s
left join rate as r
on s.user_id = r.user_id

