# Write your MySQL query statement below

SELECT res.class
FROM (SELECT c.class, count(c.student) as totalStudent
FROM Courses c
GROUP BY c.class) as res
WHERE res.totalStudent >= 5
