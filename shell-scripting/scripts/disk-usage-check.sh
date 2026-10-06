#!/bin/bash

# Disk Usage Monitoring Script
# Checks filesystem usage and warns when usage exceeds threshold

THRESHOLD=80

echo "========================================"
echo "       DISK USAGE MONITORING"
echo "========================================"

df -h --output=source,pcent,target | tail -n +2 | while read filesystem usage mountpoint
do
    usage=${usage%\%}

    if [ "$usage" -ge "$THRESHOLD" ]; then
        echo "WARNING: $mountpoint is ${usage}% full"
    else
        echo "OK: $mountpoint is ${usage}% full"
    fi
done

echo "========================================"
echo "Disk check completed."
echo "========================================"
