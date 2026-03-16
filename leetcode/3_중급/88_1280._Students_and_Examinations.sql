-- 1280. Students and Examinations
-- LeetCode 중급 (⭐⭐⭐)
-- 문제 링크: https://leetcode.com/problems/students-and-examinations/
-- 작성자: 김윤서
-- 작성일: 2026. 03. 16. 10:43:43

# Write your MySQL query statement below
select·‌st.student_id,·‌st.student_name,·‌sb.
subject_name,·‌count(e.subject_name)·‌as·‌
from·‌students·‌st
cross·‌join·‌subjects·‌sb·‌
left·‌join·‌examinations·‌e·‌
on·‌st.student_id·‌=·‌e.student_id
and·‌sb.subject_name·‌=·‌e.subject_name
group·‌by·‌1,·‌2,·‌3
attended_exams
order·‌by·‌1,·‌3
