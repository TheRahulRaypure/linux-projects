# Disk Usage Monitor Script

## Description

This script checks disk usage across mounted filesystems and alerts if usage exceeds a threshold (default is 80%).

## Script Logic

- Uses `df -h` to get human-readable disk usage.
- Uses `awk` and `tr` to parse percentage and mount points.
- Compares each partition's usage to the set threshold.
- Alerts with ⚠️ if usage is high.

## Script

```bash
#!/bin/bash

THRESHOLD=80

df -h --output=pcent,target | tail -n +2 | while read output; do
  usage=$(echo $output | awk '{print $1}' | tr -d '%')
  mount_point=$(echo $output | awk '{print $2}')
  
  if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "⚠️  Warning: Disk usage is at ${usage}% on ${mount_point}"
  else
    echo "✅ Disk usage is at ${usage}% on ${mount_point}"
  fi
done

