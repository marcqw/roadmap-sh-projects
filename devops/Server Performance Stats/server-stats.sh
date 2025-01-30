#!/bin/bash

# Total CPU usage
# Total memory usage (Free vs Used including percentage)
# Total disk usage (Free vs Used including percentage)
# Top 5 processes by CPU usage
# Top 5 processes by memory usage
# Stretch goal: Feel free to optionally add more stats such as os version, uptime, load average, logged in users, failed login attempts etc.

echo "=== Total CPU usage ==="

echo [100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%"

echo "=== Total memory usage ==="

echo "$(free | awk '/Mem:/ {printf("%.2f", ($3/$2)*100)}')%"

echo "=== Total disk usage ==="

echo "=== Top 5 processes by CPU usage ==="

echo "=== Top 5 processes by memory usage ==="