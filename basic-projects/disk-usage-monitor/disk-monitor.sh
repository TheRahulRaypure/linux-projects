#!/bin/bash

# Set threshold limit
THRESHOLD=80

# Get disk usage

df -h --output=pcent,target | tail -n +2 | while read output; do
  usage=$(echo $output | awk '{print $1}' | tr -d '%')
  mount_point=$(echo $output | awk '{print $2}')

  if [ "$usage" -ge "$THRESHOLD" ]; then
	  echo "Warning: Disk usage is at ${usage}% on ${mount_point}"
  else
	  echo "Disk usage is at ${usage}% on ${mount_point}"
  fi
done
