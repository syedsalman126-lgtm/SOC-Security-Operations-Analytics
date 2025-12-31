-- L2 SOC Detection
-- Detect possible account compromise after brute-force attempts

WITH failed_logins AS (
    SELECT
        username,
        source_ip,
        COUNT(*) AS failure_count
    FROM auth_logs
    WHERE event_type = 'FAILED_LOGIN'
    GROUP BY username, source_ip
),
successful_logins AS (
    SELECT
        username,
        source_ip,
        event_time
    FROM auth_logs
    WHERE event_type = 'SUCCESS_LOGIN'
)
SELECT
    s.username,
    s.source_ip,
    f.failure_count,
    s.event_time AS compromise_time
FROM successful_logins s
JOIN failed_logins f
  ON s.username = f.username
 AND s.source_ip = f.source_ip
WHERE f.failure_count >= 5
ORDER BY s.event_time DESC;
