https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/?envType=study-plan-v2&envId=top-sql-50
# Write your MySQL query statement below
SELECT t.teacher_id, COUNT(DISTINCT t.subject_id) as cnt
FROM   Teacher t
GROUP BY t.teacher_id
