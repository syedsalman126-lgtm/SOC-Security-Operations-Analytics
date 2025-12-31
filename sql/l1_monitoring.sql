-- L1 SOC Monitoring
-- Purpose: Identify brute-force authentication attempts
-- MITRE ATT&CK: T1110 (Brute Force)
-- Alert Logic: Trigger when failed attempts exceed threshold

SELECT
    username,
    source_ip,
    COUNT(*) AS failed_attempts,
    MAX(event_time) AS last_failed_attempt
FROM auth_logs
WHERE event_type = 'FAILED_LOGIN'
GROUP BY username, source_ip
HAVING COUNT(*) >= 5
ORDER BY failed_attempts DESC;
