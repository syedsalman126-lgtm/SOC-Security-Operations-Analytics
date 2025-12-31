-- Incident Simulation: Brute-force attack followed by account compromise

-- Simulate failed login attempts
INSERT INTO auth_logs (username, source_ip, event_type, event_time)
SELECT
    'test_user',
    '192.168.1.100',
    'FAILED_LOGIN',
    NOW() - (interval '1 minute' * generate_series(1,6));

-- Simulate successful login
INSERT INTO auth_logs (username, source_ip, event_type, event_time)
VALUES
('test_user', '192.168.1.100', 'SUCCESS_LOGIN', NOW());
