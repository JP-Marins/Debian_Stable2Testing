#!/bin/bash

# Check if it's root
if [ $(id -u) -ne 0 ]; then
    echo "Please, run as root."
    exit 1
fi

# Backup of the sources.list
echo "Backing up the sources.list..."
cp /etc/apt/sources.list /etc/apt/sources.list.bak

# Check and change to Testing
if grep -q 'testing' /etc/apt/sources.list; then
    echo "The branch is already configured as Testing."
    exit 1
else
    echo "Changing branch to Testing..."
    sed -i 's/trixie/testing/g' /etc/apt/sources.list
fi

# System update
echo "Updating the system..."
echo " "
apt-get update
apt-get upgrade -y
apt-get full-upgrade -y
apt-get autoremove --purge -y
apt-get clean

# Completion
echo " "
echo "Update completed."
echo " "
sleep 3

# Question about restarting
read -p "Do you want to restart the system now? [y/N]: " response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "Restarting in 5 seconds..."
    sleep 5
    systemctl reboot
else
    echo "Restart cancelled."
fi
