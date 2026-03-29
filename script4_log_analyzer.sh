#!/bin/bash

# -----------------------------------------------------
# Script 4: Log File Analyzer
# Author: Bhavin
# Purpose:
#   Reads a log file line by line and counts how many
#   times a specific keyword appears.
#   Demonstrates while-read loops and conditional logic.
# -----------------------------------------------------

LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword if none given

MATCH_COUNT=0

# Validate that the file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: Log file not found."
    echo "Usage: ./script4_log_analyzer.sh <logfile> <keyword>"
    exit 1
fi

echo "Analyzing file: $LOGFILE"
echo "Searching for keyword: $KEYWORD"
echo "--------------------------------"

# Read file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        MATCH_COUNT=$((MATCH_COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Keyword '$KEYWORD' appears $MATCH_COUNT times."

echo ""
echo "Last 5 matching log entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
