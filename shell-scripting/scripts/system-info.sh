#!/bin/bash

echo "=============================="
echo "       SYSTEM INFORMATION"
echo "=============================="

echo "Hostname:"
hostname

echo
echo "Current User:"
whoami

echo
echo "Operating System:"
grep PRETTY_NAME /etc/os-release

echo
echo "Kernel:"
uname -r

echo
echo "Uptime:"
uptime

echo
echo "CPU Cores:"
nproc

echo
echo "Memory:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "=============================="
echo "System information collected."
echo "=============================="
