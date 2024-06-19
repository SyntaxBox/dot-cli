#!/bin/bash

# Update package list and install necessary dependencies
echo "Updating package list and installing alsa-utils..."
sudo apt update
sudo apt install -y alsa-utils

# Verify the installation
echo "Verifying the installation..."
amixer --version

echo "amixer (alsa-utils) installation complete!"

