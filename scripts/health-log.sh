#!/bin/bash

LOG_FILE="monitoring.log"

echo "==========================="
echo "Simple Monitoring Script Started"
echo "Time: $(date)"
echo "==========================="

echo "Monitoring Started - $(date)" > "$LOG_FILE"

echo "" | tee -a "$LOG_FILE"
echo "System Health Check" | tee -a "$LOG_FILE"

echo "---------------------------" | tee -a "$LOG_FILE"

#CPU USAGE REPORT

CPU=$(vmstat 1 2 | tail -1 | awk '{print 100 - $15}')
echo "CPU Usage : $CPU%" | tee -a "$LOG_FILE"

#MEMORY USAGE REPORT

MEM=$(free | grep Mem | awk '{printf "%.0f", "$3/$2 * 100"}')
echo "Memory Usage : $MEM%" | tee -a "$LOG_FILE"

#DISK USAGE REPORT

DISK=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
echo "Disk Usage : $DISK%" | tee -a "$LOG_FILE"

echo "" | tee -a "$LOG_FILE"
echo "Monitoring Completed at $(date)" | tee -a "$LOG_FILE"
echo "=======================================" | tee -a "$LOG_FILE"
echo "Script finished successfully!"
echo "Report save in: $LOG_FILE"

