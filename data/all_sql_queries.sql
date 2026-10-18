-- 01 Basic selection
SELECT user_id, age, occupation, daily_screen_time_hours, sleep_quality_score
FROM participants
LIMIT 12;

-- 02 Filtering
SELECT user_id, daily_screen_time_hours, sleep_quality_score
FROM participants
WHERE daily_screen_time_hours >= 8
LIMIT 12;

-- 03 Multiple conditions
SELECT user_id, occupation, daily_screen_time_hours, sleep_quality_score
FROM participants
WHERE occupation = 'Student' AND daily_screen_time_hours >= 7
LIMIT 12;

-- 04 Sorting
SELECT user_id, daily_screen_time_hours, sleep_quality_score
FROM participants
ORDER BY daily_screen_time_hours DESC, sleep_quality_score ASC
LIMIT 12;

-- 05 Aggregation
SELECT COUNT(*) AS participants, ROUND(AVG(daily_screen_time_hours),2) AS mean_screen_hours,
ROUND(AVG(sleep_quality_score),2) AS mean_sleep_quality,
ROUND(AVG(sleep_duration_hours),2) AS mean_sleep_hours
FROM participants;

-- 06 Group comparison
SELECT screen_group, COUNT(*) AS n, ROUND(AVG(sleep_quality_score),2) AS avg_sleep_quality,
ROUND(AVG(sleep_duration_hours),2) AS avg_sleep_duration
FROM participants GROUP BY screen_group
ORDER BY avg_sleep_quality DESC;

-- 07 HAVING
SELECT occupation, COUNT(*) AS n, ROUND(AVG(stress_level),2) AS avg_stress
FROM participants GROUP BY occupation HAVING COUNT(*) > 1800
ORDER BY avg_stress DESC;

-- 08 JOIN
SELECT o.category, COUNT(*) AS n, ROUND(AVG(p.sleep_quality_score),2) AS avg_sleep_quality
FROM participants p JOIN occupation_categories o ON p.occupation=o.occupation
GROUP BY o.category ORDER BY avg_sleep_quality DESC;