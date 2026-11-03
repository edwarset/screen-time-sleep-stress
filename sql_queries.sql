-- 01_basic_selection
SELECT user_id, daily_screen_time_hours, sleep_duration_hours, sleep_quality_score FROM sleep_data LIMIT 20;

-- 02_filtering
SELECT user_id, daily_screen_time_hours, sleep_quality_score FROM sleep_data WHERE daily_screen_time_hours > 6 LIMIT 100;

-- 03_multiple_conditions
SELECT user_id, daily_screen_time_hours, sleep_duration_hours FROM sleep_data WHERE daily_screen_time_hours > 6 AND sleep_duration_hours < 7 LIMIT 100;

-- 04_sorting
SELECT user_id, daily_screen_time_hours FROM sleep_data ORDER BY daily_screen_time_hours DESC LIMIT 20;

-- 05_aggregation
SELECT COUNT(*) AS participants, ROUND(AVG(daily_screen_time_hours),2) AS avg_screen_time, ROUND(AVG(sleep_duration_hours),2) AS avg_sleep FROM sleep_data;

-- 06_group_comparison
SELECT screen_time_group, COUNT(*) AS participants, ROUND(AVG(sleep_quality_score),2) AS avg_sleep_quality, ROUND(AVG(sleep_duration_hours),2) AS avg_sleep_duration FROM sleep_data GROUP BY screen_time_group ORDER BY avg_sleep_quality;

-- 07_having
SELECT occupation, COUNT(*) AS participants, ROUND(AVG(daily_screen_time_hours),2) AS avg_screen_time FROM sleep_data GROUP BY occupation HAVING COUNT(*) >= 30 ORDER BY avg_screen_time DESC;

-- 08_join
SELECT d.occupation, COUNT(*) AS participants, ROUND(AVG(d.sleep_quality_score),2) AS avg_sleep_quality FROM sleep_data d JOIN (SELECT DISTINCT occupation FROM sleep_data WHERE occupation IS NOT NULL) o ON d.occupation=o.occupation GROUP BY d.occupation ORDER BY participants DESC;

