#!/bin/bash
silent=$1

# Vesktop desktop entry
echo -e "\033[0;34mUpdating Vesktop desktop entry (name change to Discord)...\033[0m"
sudo sed -i 's/^Name=Vesktop$/Name=Discord/' /usr/share/applications/vesktop.desktop
sudo wget -O '/usr/share/applications/discord.png' "https://static.wikia.nocookie.net/logopedia/images/d/dd/Discord_2021_Alt1.svg/revision/latest?cb=20220528092716"
sudo sed -i 's|^Icon=vesktop$|Icon=/usr/share/applications/discord.png|' /usr/share/applications/vesktop.desktop
gtk-update-icon-cache /usr/share/icons/*

# Run Vesktop to allow for theme installation
echo -e "\033[0;34mRunning Discord to apply theme...\033[0m"
echo -e "\033[0;34mThis may or may not work.\n\nIf it doesn't automatically apply, you can apply it manually by going to the settings and selecting the theme.\033[0m"
vesktop > /dev/null 2>&1 &
sleep 2s && pkill -f 'vesktop'

# Kvantum theme for KDE Plasma applications
echo -e "\033[0;34mApplying theme to KDE Plasma applications...\033[0m"
touch $HOME/.config/kdeglobals
    
if ! sudo sed -i 's/^widgetStyle=.*$/widgetStyle=kvantum-dark/' $HOME/.config/kdeglobals; then
    if ! sudo sed -i 's/^\[KDE\].*$/\[KDE\]\nwidgetStyle=kvantum-dark/' $HOME/.config/kdeglobals; then
        echo -e "[KDE]\nwidgetStyle=kvantum-dark" >> $HOME/.config/kdeglobals
    fi
fi

# Kvantum theme for Dolphin
echo -e "\033[0;34mApplying theme to Dolphin...\033[0m"
if ! sudo sed -i 's/^ColorScheme=.*$/ColorScheme=kvantum-dark/' $HOME/.config/kdeglobals; then
    if ! sudo sed -i 's/^\[UiSettings\].*$/\[UiSettings\]\nColorScheme=kvantum-dark/' $HOME/.config/kdeglobals; then
        echo -e "[UiSettings]\nColorScheme=kvantum-dark" >> $HOME/.config/kdeglobals
    fi
fi

# Enable Mozilla sync on LibreWolf
echo -e "\033[0;34mEnabling Mozilla sync for LibreWolf...\033[0m"
sudo sed -i 's/^defaultPref("identity\.fxaccounts\.enabled".*/defaultPref("identity.fxaccounts.enabled", true);/' /usr/lib/librewolf/librewolf.cfg

# Change GRUB theme
echo -e "\033[0;34mChanging GRUB theme...\033[0m"
if ! sudo sed -i 's/^#\?GRUB_THEME=.*$/GRUB_THEME=\/usr\/share\/grub\/themes\/catppuccin-mocha-grub-theme\/theme.txt/' /etc/default/grub; then
    if ! sudo sed -i 's/^GRUB_THEME=.*$/GRUB_THEME=\/usr\/share\/grub\/themes\/catppuccin-mocha-grub-theme\/theme.txt/' /etc/default/grub; then
        echo -e "GRUB_THEME=/usr/share/grub/themes/catppuccin-mocha-grub-theme/theme.txt" >> /etc/default/grub
    fi
fi
if [ "$silent" == false ]; then
    sudo grub-mkconfig -o /boot/grub/grub.cfg
else
    sudo grub-mkconfig -o /boot/grub/grub.cfg > /dev/null 2>&1 &
fi

# Change SDDM theme
sudo touch /etc/sddm.conf
echo -e "\033[0;34mChanging SDDM theme...\033[0m"
sudo chown $USER:$USER /etc/sddm.conf
if ! cat /etc/sddm.conf | grep "\[Theme\]" > /dev/null 2>&1; then
    sudo echo -e "[Theme]\nCurrent=catppuccin-mocha" >> /etc/sddm.conf
else
    sudo sed -i '/^\[Theme\]/,/^\[/ s/^Current=.*/Current=catppuccin-mocha/' /etc/sddm.conf
fi
sudo chown root:root /etc/sddm.conf

# Change Plymouth theme

echo -e "\033[0;34mChanging Plymouth theme...\033[0m"
sudo chown $USER:$USER /etc/plymouth/plymouthd.conf
echo -e "[Daemon]\nTheme=catppuccin-mocha\nShowDelay=0" > /etc/plymouth/plymouthd.conf
sudo chown root:root /etc/plymouth/plymouthd.conf

echo -e "\033[0;34mEnabling Plymouth...\033[0m"
if grep -q '^HOOKS=.*' /etc/mkinitcpio.conf; then
    sudo sed -i '/^HOOKS=/ s/\(systemd\|base\)\([^)]*\)\(encrypt\|sd-encrypt\)\?/& plymouth/' /etc/mkinitcpio.conf
    sudo sed -i 's/\(plymouth plymouth\)/plymouth/' /etc/mkinitcpio.conf
else
    echo 'HOOKS=(base plymouth)' | sudo tee -a /etc/mkinitcpio.conf
fi
if [ "$silent" == false ]; then
    sudo mkinitcpio -P
else
    sudo mkinitcpio -P > /dev/null 2>&1 &
fi