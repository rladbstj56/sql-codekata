-- 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164671
-- 작성자: 김윤서
-- 작성일: 2026. 02. 20. 00:00:27

with highest as ( 
    select board_id, rank() over (order by views desc) as rnk
    from used_goods_board 
)
SELECT concat('/home/grep/src/',usf.board_id,'/',usf.file_id,usf.file_name,usf.file_ext) as file_path
from highest h
join used_goods_file usf 
on h.board_id = usf.board_id 
where h.rnk = 1
order by usf.file_id desc