#!/bin/bash

# Log Monitoring Script
# Searches a log file for errors and warnings

LOG_FILE="/var/log/syslog"

echo "========================================"
echo "          LOG MONITORING"
echo "========================================"

if [ ! -f "$LOG_FILE" ]; then
    echo "ERROR: Log file does not exist: $LOG_FILE"
    exit 1
fi

echo "Log file: $LOG_FILE"
echo

echo "Total ERROR entries:"
sudo grep -ic "error" "$LOG_FILE"

echo
echo "Total WARNING entries:"
sudo grep -ic "warning" "$LOG_FILE"

echo
echo "Recent ERROR entries:"
sudo grep -i "error" "$LOG_FILE" | tail -10

echo
echo "Recent WARNING entries:"
sudo grep -i "warning" "$LOG_FILE" | tail -10

echo "========================================"
echo "Log monitoring completed."
echo "========================================"
