#!/bin/bash

# Vesktop desktop entry
echo -e "\033[0;34mUpdating Vesktop desktop entry (name change to Discord)..."
sudo sed -i 's/^Name=Vesktop$/Name=Discord/' /usr/share/applications/vesktop.desktop
sudo wget -O '/usr/share/applications/discord.png' "https://static.wikia.nocookie.net/logopedia/images/d/dd/Discord_2021_Alt1.svg/revision/latest?cb=20220528092716"
sudo sed -i 's|^Icon=vesktop$|Icon=/usr/share/applications/discord.png|' /usr/share/applications/vesktop.desktop
gtk-update-icon-cache /usr/share/icons/*

# Run Vesktop to allow for theme installation
echo -e "\033[0;34mRunning Discord to apply theme..."
echo -e "\033[0;34mThis may or may not work.\n\nIf it doesn't automatically apply, you can apply it manually by going to the settings and selecting the theme."
vesktop 2>%1 > /dev/null & disown && sleep 2s && pkill -f 'vesktop'

# Kvantum theme for KDE Plasma applications
echo -e "\033[0;34mApplying theme to KDE Plasma applications..."
touch $HOME/.config/kdeglobals
sudo sed -i 's/^widgetStyle=.*$/widgetStyle=kvantum-dark/' $HOME/.config/kdeglobals

# Kvantum theme for Dolphin
echo -e "\033[0;34mApplying theme to Dolphin..."
if ! sudo sed -i 's/^ColorScheme=.*$/ColorScheme=kvantum-dark/' $HOME/.config/kdeglobals; then
    if ! sudo sed -i 's/^\[UiSettings\].*$/\[UiSettings\]\nColorScheme=kvantum-dark/' $HOME/.config/kdeglobals; then
        echo -e "[UiSettings]\nColorScheme=kvantum-dark" >> $HOME/.config/kdeglobals
fi

# Enable Mozilla sync on LibreWolf
echo -e "\033[0;34mEnabling Mozilla sync for LibreWolf..."
sudo sed -i 's/^defaultPref("identity\.fxaccounts\.enabled".*/defaultPref("identity.fxaccounts.enabled", true);/' /usr/lib/librewolf/librewolf.cfg

# Change GRUB theme
echo -e "\033[0;34mChanging GRUB theme..."
if ! sudo sed -i 's/^GRUB_THEME=.*$/GRUB_THEME=\/boot\/grub\/themes\/catppuccin-mocha-grub-theme\/theme.txt/' /etc/default/grub; then
    echo -e "GRUB_THEME=/boot/grub/themes/catppuccin-mocha-grub-theme/theme.txt" >> /etc/default/grub
fi
sudo grub-mkconfig -o /boot/grub/grub.cfg