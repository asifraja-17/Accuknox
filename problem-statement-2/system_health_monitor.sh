#!/bin/bash

CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80
LOGFILE="system_health.log"

check_cpu_usage() {
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    echo "CPU Usage: $cpu_usage%"
    if (( $(echo "$cpu_usage > $CPU_THRESHOLD" | bc -l) )); then
        echo "[ALERT] CPU usage is above $CPU_THRESHOLD% at $cpu_usage%" >> $LOGFILE
    fi
}

check_memory_usage() {
    memory_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    echo "Memory Usage: $memory_usage%"
    if (( $(echo "$memory_usage > $MEMORY_THRESHOLD" | bc -l) )); then
        echo "[ALERT] Memory usage is above $MEMORY_THRESHOLD% at $memory_usage%" >> $LOGFILE
    fi
}

check_disk_usage() {
    disk_usage=$(df / | grep / | awk '{print $5}' | sed 's/%//g')
    echo "Disk Usage: $disk_usage%"
    if [ "$disk_usage" -gt "$DISK_THRESHOLD" ]; then
        echo "[ALERT] Disk usage is above $DISK_THRESHOLD% at $disk_usage%" >> $LOGFILE
    fi
}

check_running_processes() {
    process_count=$(ps aux | wc -l)
    echo "Running Processes: $process_count"
    # You can add a process threshold if needed
}

monitor_system_health() {
    echo "=== System Health Report - $(date) ===" >> $LOGFILE
    check_cpu_usage
    check_memory_usage
    check_disk_usage
    check_running_processes
    echo "" >> $LOGFILE
}

monitor_system_health
