#!/bin/bash

# -----------------------------------------------------
# Script 1: System Identity Report
# Author: Bhavin
# Course: Open Source Software
# Description:
#   Displays key information about the current Linux system
#   including kernel, distribution, uptime, and license note.
#   This demonstrates variables and command substitution.
# -----------------------------------------------------

STUDENT_NAME="Bhavin"
SOFTWARE_CHOICE="Python Programming Language"

# --- Collect system information ---
KERNEL_VERSION=$(uname -r)
CURRENT_USER=$(whoami)
HOME_DIR=$HOME
UPTIME_INFO=$(uptime -p)
CURRENT_DATE=$(date)

# Extract Linux distribution name from OS release file
DISTRO_NAME=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Linux Distro    : $DISTRO_NAME"
echo "Kernel Version  : $KERNEL_VERSION"
echo "Logged-in User  : $CURRENT_USER"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME_INFO"
echo "Current Time    : $CURRENT_DATE"
echo ""

# Reminder about open-source licensing
echo "License Note:"
echo "Most Linux distributions are based on the GNU General Public License (GPL)."
echo "This license guarantees freedom to run, study, modify, and share the software."

echo "========================================"
