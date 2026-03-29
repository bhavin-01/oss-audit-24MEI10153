#!/bin/bash

# Script 2: FOSS Package Inspector

PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "-------------------------"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

case $PACKAGE in
    python3)
        echo "Python: A community-driven programming language used worldwide"
        ;;
    apache2)
        echo "Apache: One of the most popular open source web servers"
        ;;
    mysql-server)
        echo "MySQL: Database powering millions of applications"
        ;;
    vlc)
        echo "VLC: Open source media player capable of playing any format"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
