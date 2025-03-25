#!/bin/bash

# Download theme
echo "Downloading Vesktop theme..."
mkdir -p "$HOME/.config/vesktop/themes"
wget -O "$HOME/.config/vesktop/themes/catppuccin-mocha.css" "https://raw.githubusercontent.com/catppuccin/discord/refs/heads/main/themes/mocha.theme.css"

# Update desktop entry
echo "Updating Vesktop desktop entry (name change to Discord)..."
sudo sed -i 's/^Name=Vesktop$/Name=Discord/' /usr/share/applications/vesktop.desktop
sudo wget -O '/usr/share/applications/discord.png' "https://static.wikia.nocookie.net/logopedia/images/d/dd/Discord_2021_Alt1.svg/revision/latest?cb=20220528092716"
sudo sed -i 's|^Icon=vesktop$|Icon=/usr/share/applications/discord.png|' /usr/share/applications/vesktop.desktop
gtk-update-icon-cache /usr/share/icons/*