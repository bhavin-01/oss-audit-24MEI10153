#!/bin/bash

# -----------------------------------------------------
# Script 3: Disk and Permission Auditor
# Author: Bhavin
# Purpose:
#   Audits important Linux directories and reports
#   their disk usage and ownership permissions.
#   Demonstrates use of a for loop and command parsing.
# -----------------------------------------------------

DIRECTORIES=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================"
echo " Linux Directory Security Audit "
echo "================================"

for DIR in "${DIRECTORIES[@]}"
do
    # Check if directory exists
    if [ -d "$DIR" ]; then

        # Extract permissions, owner and group
        PERMISSION_INFO=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Calculate directory size
        SIZE_INFO=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR -> Permissions: $PERMISSION_INFO | Size: $SIZE_INFO"

    else
        echo "$DIR directory not found on this system."
    fi
done

echo ""
echo "Additional Check: Python executable location"

PYTHON_PATH="/usr/bin/python3"

if [ -f "$PYTHON_PATH" ]; then
    echo "Python installation detected:"
    ls -ld $PYTHON_PATH
else
    echo "Python executable not found."
fi
