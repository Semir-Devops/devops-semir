#!/bin/bash

# Check disk space
echo "Disk Space:"
df -h

# Check memory usage
echo "Memory Usage:"
free -h

# Check running services
echo "Running Services:"
systemctl list-units --type=service --state=running
