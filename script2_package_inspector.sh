#!/bin/bash

# -----------------------------------------------------
# Script 2: FOSS Package Inspector
# Author: Bhavin
# Purpose:
#   Checks if a specific package is installed on the system.
#   Displays version and license information when available.
#   Uses if-then-else and case statements.
# -----------------------------------------------------

PACKAGE_NAME="python3"

echo "Checking installation status for: $PACKAGE_NAME"
echo "-----------------------------------------------"

# Check using dpkg (Debian/Ubuntu systems)
if dpkg -l | grep -qw $PACKAGE_NAME; then
    echo "$PACKAGE_NAME is installed on this system."
    echo ""

    echo "Package Information:"
    dpkg -s $PACKAGE_NAME | grep -E 'Version|Maintainer|Description'

else
    echo "$PACKAGE_NAME is NOT installed."
fi

echo ""

# Provide a philosophical note about well-known FOSS tools
case $PACKAGE_NAME in
    python3)
        echo "Python: A powerful community-driven programming language."
        ;;
    apache2)
        echo "Apache: The web server that helped build the open internet."
        ;;
    mysql-server)
        echo "MySQL: Open-source database powering many modern applications."
        ;;
    vlc)
        echo "VLC: A universal media player built by an open community."
        ;;
    *)
        echo "This package is not in the predefined philosophy list."
        ;;
esac

echo ""
echo "Inspection complete."
