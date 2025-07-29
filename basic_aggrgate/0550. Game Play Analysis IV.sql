#https://leetcode.com/problems/game-play-analysis-iv/?envType=study-plan-v2&envId=top-sql-50

SELECT ROUND(COUNT(DISTINCT a2.player_id) / COUNT(DISTINCT a1.player_id),2) as fraction
FROM (SELECT player_id, MIN(event_date) as event_date
FROM Activity
GROUP BY player_id) a1 LEFT JOIN Activity a2
ON a1.player_id = a2.player_id AND a1.event_date + 1 = a2.event_date;
