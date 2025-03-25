#!/bin/bash

# Download theme
echo "Downloading Vesktop theme..."
mkdir -p "$HOME/.config/vesktop/themes"
wget -O "$HOME/.config/vesktop/themes/catppuccin-mocha.css" "https://raw.githubusercontent.com/catppuccin/discord/refs/heads/main/themes/mocha.theme.css"

# Update desktop entry
echo "Updating Vesktop desktop entry (name change to Discord)..."
sudo sed -i 's/^Name=Vesktop$/Name=Discord/' /usr/share/applications/vesktop.desktop