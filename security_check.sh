#!/bin/bash

# Gabriel Rivera
# CYB 125

# Step 3 - Create the Report Header
echo "=================================="
echo "     Linux Security Check"
echo "=================================="
date

# Step 4 - Identify the Current User
current_user=$(whoami)
echo
echo "Current User: $current_user"

# Step 5 -  Identifyt the Computer
echo
echo "Hostname:"
hostname

echo
echo "Operating System and Kernel:"
uname -a

# Step 6 - Display Network Information
echo
echo "Network Information:"
ip -br addr

# Step 7 - Display Disk Usage
echo
echo "Disk Usage:"
df -h /

# Step 8 - Display Memory Information
echo
echo "Memory:"
free -h

# Step 9 - Count User Account
user_count=$(wc -l < /etc/passwd)
echo
echo "Number of User Accounts: $user_count"

# Step 10 - Determine Whether you are a Root
echo
if [ "$current_user" =  "root" ]; then
    echo "WARNING: You are currently running as root."
else
    echo "You are running as a standard user."
fi

# Step 11 - Display Logged-In Users
echo
echo "Currently Logged-In Users:"
who

# Step 12 - Finish the Script
echo "=================================="
echo "Security Check Complete"
echo "=================================="




