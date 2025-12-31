-- L3 SOC Reporting
-- High-level authentication security overview

SELECT
    event_type,
    COUNT(*) AS total_events,
    MIN(event_time) AS first_seen,
    MAX(event_time) AS last_seen
FROM auth_logs
GROUP BY event_type
ORDER BY total_events DESC;
