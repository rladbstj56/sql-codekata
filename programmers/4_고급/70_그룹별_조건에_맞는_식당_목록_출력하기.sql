-- 그룹별 조건에 맞는 식당 목록 출력하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131124
-- 작성자: 김윤서
-- 작성일: 2026. 04. 10. 18:31:14

-- 코드를 입력하세요
with top_reviewer as ( 
    select member_id, count(*) as cnt 
    from rest_review 
    group by member_id
    order by cnt desc 
    limit 1
)
select
    m.member_name, 
    r.review_text, 
    date_format(r.review_date, '%Y-%m-%d') as review_date 
from member_profile m
join rest_review r
on m.member_id = r.member_id
where exists ( 
    select 1 
    from top_reviewer t
    where t.member_id = m.member_id
)
order by 3 asc, 2 asc