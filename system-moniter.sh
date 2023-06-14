#!/bin/bash

while true; do
    clear  # Clear the screen before displaying updated information

    # Get CPU usage
    cpu_usage=$(top -bn1 | grep "%Cpu(s)" | awk '{print $2 + $4}')

    # Get memory usage
    memory_usage=$(free -m | awk 'NR==2{printf "%.2f", $3*100/$2}')

    # Get disk usage
    disk_usage=$(df -h --total | awk '/total/{printf "%.2f", $(NF-1)}')

    # Get network statistics
    network_rx=$(ip -s link show dev eth0 | awk '/RX:/{print $2}')
    network_tx=$(ip -s link show dev eth0 | awk '/TX:/{print $2}')

    # Display system information
    echo "System Information"
    echo "------------------"
    echo "CPU Usage: ${cpu_usage}%"
    echo "Memory Usage: ${memory_usage}%"
    echo "Disk Usage: ${disk_usage}%"
    echo "Network - RX: ${network_rx}, TX: ${network_tx}"

    sleep 2  # Update the information every 2 seconds
done
