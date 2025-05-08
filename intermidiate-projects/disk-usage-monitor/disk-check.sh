#!/bin/bash

# set a threshold value
THRESHOLD=50

echo "Checking disk usage..."
echo "Threshold is set to ${THRESHOLD}%"

# skip first row(Header) and take 5th and 6th column 
df -h | awk 'NR>1 {print $5, $6}' | while read output; do
    usep=$(echo $output | awk '{print $1}' | tr -d '%')
    partition=$(echo $output | awk '{print $2}')

# check if value is exceeding the threshold value or not
    if [ "$usep" -ge "$THRESHOLD" ]; then
	    echo "XXX Partition \"$partition\" is at ${usep}% usage XXX"
    else
	    echo "Partition \"$partition\" is safe at ${usep}% usage"
    fi
done


