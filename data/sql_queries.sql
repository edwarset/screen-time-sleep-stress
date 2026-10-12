-- SQLite-compatible research queries
-- Dataset: cleaned 15,000-row screen/sleep/stress data

CREATE TABLE IF NOT EXISTS occupation_lookup (occupation TEXT PRIMARY KEY, occupation_label TEXT NOT NULL);
INSERT OR IGNORE INTO occupation_lookup SELECT DISTINCT occupation, occupation FROM sleep_data WHERE occupation IS NOT NULL;

-- 01_basic_selection: Basic selection
SELECT user_id, daily_screen_time_hours, sleep_duration_hours, stress_level FROM sleep_data LIMIT 10;

-- 02_filtering: Filtering
SELECT user_id, daily_screen_time_hours, stress_level FROM sleep_data WHERE daily_screen_time_hours > 6 LIMIT 10;

-- 03_multiple_conditions: Multiple conditions
SELECT user_id, daily_screen_time_hours, sleep_duration_hours, stress_level FROM sleep_data WHERE daily_screen_time_hours > 6 AND sleep_duration_hours < 7 LIMIT 10;

-- 04_sorting: Sorting
SELECT user_id, daily_screen_time_hours, stress_level FROM sleep_data ORDER BY daily_screen_time_hours DESC LIMIT 10;

-- 05_aggregation: Aggregation
SELECT COUNT(*) AS participants, ROUND(AVG(daily_screen_time_hours),2) AS avg_screen_time, ROUND(AVG(sleep_duration_hours),2) AS avg_sleep, ROUND(AVG(stress_level),2) AS avg_stress FROM sleep_data;

-- 06_group_comparison: GROUP BY comparison
SELECT screen_time_group, COUNT(*) AS participants, ROUND(AVG(sleep_quality_score),2) AS avg_sleep_quality, ROUND(AVG(stress_level),2) AS avg_stress FROM sleep_data GROUP BY screen_time_group ORDER BY AVG(daily_screen_time_hours);

-- 07_having: HAVING group filter
SELECT occupation, COUNT(*) AS participants, ROUND(AVG(daily_screen_time_hours),2) AS avg_screen_time FROM sleep_data GROUP BY occupation HAVING COUNT(*) >= 30 ORDER BY avg_screen_time DESC;

-- 08_join: JOIN occupation lookup
SELECT o.occupation_label AS occupation, COUNT(*) AS participants, ROUND(AVG(s.stress_level),2) AS avg_stress FROM sleep_data s JOIN occupation_lookup o ON s.occupation = o.occupation GROUP BY o.occupation_label ORDER BY avg_stress DESC;

