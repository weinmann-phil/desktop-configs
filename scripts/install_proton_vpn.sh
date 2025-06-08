#!/bin/bash
#
# Install script for Proton VPN solution

# Create a temporary directory
# Download binaries to temporary directory
# Download Keys and similar requirements
# Install tool
# Update system
# Remove binaries and temp folder

mkdir ~/Downloads/tmp
cd ~/Downloads/tmp
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.6_all.deb
sudo dpkg -i ./protonvpn-stable-release_1.0.6_all.deb && sudo apt update
echo "e5e03976d0980bafdf07da2f71b14fbc883c091e72b16772199742c98473002f protonvpn-stable-release_1.0.6_all.deb" | sha256sum --check -
sudo apt update && sudo apt upgrade -y
sudo apt install -y proton-vpn-gnome-desktop 
sudo apt update sudo apt upgrade -y

