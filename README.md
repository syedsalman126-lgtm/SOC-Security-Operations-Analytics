# SOC Security Operations Analytics

## Overview
This project simulates a real-world Security Operations Center (SOC) workflow
using PostgreSQL and SQL-based detections. It demonstrates how L1, L2, and L3 SOC
analysts monitor, detect, investigate, and report authentication-based security incidents.

## Dataset
Authentication logs stored in PostgreSQL with the following schema:
- log_id
- username
- source_ip
- event_type
- event_time

## SOC Workflow

### L1 – Monitoring & Triage
- Detects repeated failed login attempts
- Identifies brute-force attack indicators
- Flags suspicious users and IP addresses

### L2 – Detection & Investigation
- Correlates failed and successful logins
- Detects potential account compromise
- Confirms incidents using event patterns

### L3 – Reporting & Insights
- Aggregates security events by type
- Provides trend analysis and timelines
- Produces management-ready summaries

## Project Structure

sql/
l1_monitoring.sql
l2_detection.sql
l3_reporting.sql
incident_simulation.sql
schema/
table_relationships.md
insights/
executive_summary.md


## Tools & Technologies
- PostgreSQL
- SQL
- Git & GitHub
- VS Code

## Outcome
This project demonstrates end-to-end SOC analytics, from alert generation
to executive-level reporting, using realistic log data and structured detections.

