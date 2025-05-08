#!/bin/bash




LOG_FILE=${1:-/var/log/syslog}

if  [ ! -f "$LOG_FILE" ]; then
	echo "LOg file "$LOG_FILE" not found!"
	exit 1
fi

echo "Analyzing Log File: $LOG_FILE"
echo "-----------------------------"

# count errors
ERROR_COUNT=$(grep -i "error" "$LOG_FILE" | wc -l)
echo "Total errors: $ERROR_COUNT"

# count warnings
WARNING_COUNT=$(grep -i "warn" "$LOG_FILE" | wc -l)
echo "TOTAL WARININGS : $WARNING_COUNT"

# count failed logins
FAILED_LOGIN_COUNTS=$(grep -i "failed" "$LOG_FILE" | wc -l)
echo "TOTAL FAILED LOGINS: $FAILED_LOGIN_COUNTS"

# ask and search for user given keyword
read -p "Enter a keyword to search : " KEYWORD
KEYWORD_COUNT=$(grep -i "$KEYWORD" "$LOG_FILE" | wc -l)
echo "Keyword count is : $KEYWORD_COUNT"



echo -e "\n Top 5 Error messages"
grep -i "error" "$LOG_FILE" | cut -d':' -f4- | sort | uniq -c | sort -nr | head -5


echo -e "\n Last error timestamp:" 

grep -i "error" "$LOG_FILE" | tail -1 | cut -d' ' -f1-3












