#!/bin/bash

# Script 1: System Identity Report
# Author: Bhavin
# Course: Open Source Software

STUDENT_NAME="Bhavin"
SOFTWARE_CHOICE="Python Programming Language"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)

echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Kernel Version  : $KERNEL"
echo "Linux Distro    : $DISTRO"
echo "User Logged In  : $USER_NAME"
echo "Home Directory  : $HOME"
echo "System Uptime   : $UPTIME"
echo "Current Time    : $DATE"
echo ""
echo "License Info:"
echo "Linux kernel is licensed under GNU GPL v2"
