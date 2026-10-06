#!/bin/bash

# Service Health Check Script

SERVICE="nginx"

echo "========================================"
echo "       SERVICE HEALTH CHECK"
echo "========================================"

if systemctl is-active --quiet "$SERVICE"; then
    echo "OK: $SERVICE service is running."
else
    echo "WARNING: $SERVICE service is not running."
    echo "Attempting to start $SERVICE..."

    sudo systemctl start "$SERVICE"

    if systemctl is-active --quiet "$SERVICE"; then
        echo "SUCCESS: $SERVICE service started successfully."
    else
        echo "ERROR: Unable to start $SERVICE."
        exit 1
    fi
fi

echo "========================================"
echo "Service check completed."
echo "========================================"
