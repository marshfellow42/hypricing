#!/bin/bash

if ! command -v yay &> /dev/null; then
   echo "Error: yay is not installed. Please install yay first."
   exit 1
fi

if ! command -v flatpak &> /dev/null; then
   echo "Error: flatpak is not installed. Please install flatpak first."
   exit 1
fi

# Install Pacman Packages
echo "Installing Pacman Packages..."
sudo pacman -S --noconfirm handbrake mpv syncplay whipper qbittorrent picard

# Install Yay Packages
echo "Installing Yay Packages..."
yay -S --noconfirm ani-cli makemkv

# Install Flatpak Applications from Flathub
echo "Installing Flatpak Apps from Flathub..."
flatpak install -y flathub com.github.iwalton3.jellyfin-media-player

echo "Installation complete!"
