#!/bin/bash
# This script installs PowerShell 7 and is broken out a separate
# script in case it fails

# This script lifted from:

# https://learn.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7.3

echo "_______________ installing Powershell via $0 script _______________"
# Update the list of packages
sudo apt-get update
# Install pre-requisite packages.
sudo apt-get install -y wget apt-transport-https software-properties-common
# Download the Microsoft repository GPG keys
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb
# Delete the the Microsoft repository GPG keys file
rm packages-microsoft-prod.deb
# Update the list of packages after we added packages.microsoft.com
sudo apt-get update
# Install PowerShell
sudo apt-get install -y powershell
echo "_______________ finished installing Powershell via $0 script _______________"
