# Hospital Monitoring System - Group $

## Project Overview
This project, developed by our team, aims to optimize heart rate monitoring in a hospital setting using Linux-based shell scripting. The system records heart rate data, archives logs with timestamps, and securely backs up the data to a remote server. This ensures smooth monitoring and data handling for better patient care.

##PROJECT MEMBERS
Thierry Gusenga
Veronicah Wanjuu
Kevin Mbonimpaye
Hikma Hamza
Samuel Rurangamirwa
Christian Rwema Gashumba

## Scripts Overview

### 1. Heart Rate Monitoring Script (`heart_rate_monitor.sh`)
- Records heart rate data every second.
- Takes user input for the device name (e.g., Monitor_A).
- Logs data into `heart_rate_log.txt` with timestamps.
- Runs in the background, providing the Process ID (PID) for easy management.


### 2. Log Archival Script (archive_log.sh file)
- Archives heart_rate_log.txt by renaming it with a timestamp
- Generates a new log file name in the format heart_rate_log.txt_YYYYMMDD_HHMMSS
- Keeps the log data organized and ready for backup

