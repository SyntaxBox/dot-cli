#!/bin/zsh

# Update package list and install necessary dependencies
echo "Updating package list and installing dependencies..."
sudo apt update
sudo apt install -y git wget

# Clone the fzf repository
echo "Cloning the fzf repository..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

# Run the install script provided by the repository
echo "Running the fzf install script..."
~/.fzf/install --all

