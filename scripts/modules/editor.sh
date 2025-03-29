#!/bin/bash
silent=$1

# Run Vesktop to allow for theme installation
echo -e "\033[0;34mRunning Discord to apply theme...\033[0m"
echo -e "\033[0;34mThis may or may not work.\n\nIf it doesn't automatically apply, you can apply it manually by going to the settings and selecting the theme.\033[0m"
vesktop > /dev/null 2>&1 &
sleep 2s && pkill -f 'vesktop'

# Kvantum theme for KDE Plasma applications
echo -e "\033[0;34mApplying theme to KDE Plasma applications...\033[0m"
if ! cat ~/.config/kdeglobals | grep '\[KDE\]' > /dev/null 2>&1; then
    echo -e "[KDE]\nwidgetStyle=kvantum-dark" >> $HOME/.config/kdeglobals
else
    if ! cat ~/.config/kdeglobals | grep 'widgetStyle=.*' > /dev/null 2>&1; then
        sudo sed -i 's/^\[KDE\].*$/\[KDE\]\nwidgetStyle=kvantum-dark/' $HOME/.config/kdeglobals
    else
        sudo sed -i 's/^widgetStyle=.*$/widgetStyle=kvantum-dark/' $HOME/.config/kdeglobals
    fi
fi

# Kvantum theme for Dolphin
echo -e "\033[0;34mApplying theme to Dolphin...\033[0m"
if ! cat ~/.config/dolphinrc | grep '\[UiSettings\]' > /dev/null 2>&1; then
    echo -e "[UiSettings]\nColorScheme=kvantum-dark" >> $HOME/.config/dolphinrc
else
    if ! cat ~/.config/dolphinrc | grep 'ColorScheme=.*' > /dev/null 2>&1; then
        sudo sed -i 's/^\[UiSettings\].*$/\[UiSettings\]\nColorScheme=kvantum-dark/' $HOME/.config/dolphinrc
    else
        sudo sed -i 's/^ColorScheme=.*$/ColorScheme=kvantum-dark/' $HOME/.config/dolphinrc
    fi
fi

# Set default terminal in Dolphin to kitty
echo -e "\033[0;34mChanging Dolphin default terminal to kitty...\033[0m"
if ! cat ~/.config/dolphinrc | grep -E '\[General\]' > /dev/null 2>&1; then
    echo -e "[General]\nTerminalApplication=kitty" >> $HOME/.config/dolphinrc
else
    if ! cat ~/.config/dolphinrc | grep -E 'TerminalApplication=.*' > /dev/null 2>&1; then
        sudo sed -i 's/^\[General\].*$/\[General\]\nTerminalApplication=kitty/' $HOME/.config/dolphinrc
    else
        sudo sed -i 's/^nTerminalApplication=.*$/nTerminalApplication=kitty/' $HOME/.config/dolphinrc
    fi
fi

# Enable Mozilla sync on LibreWolf
echo -e "\033[0;34mEnabling Mozilla sync for LibreWolf...\033[0m"
sudo sed -i 's/^defaultPref("identity\.fxaccounts\.enabled".*/defaultPref("identity.fxaccounts.enabled", true);/' /usr/lib/librewolf/librewolf.cfg


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
if cat /etc/mkinitcpio.conf | grep '^HOOKS=.*' ; then
    sudo sed -i '/^HOOKS=/ s/\(systemd\|base\)\([^)]*\)\(encrypt\|sd-encrypt\)\?/& plymouth/' /etc/mkinitcpio.conf
    sudo sed -i 's/\(plymouth plymouth\)/plymouth/' /etc/mkinitcpio.conf
else
    echo 'HOOKS=(base plymouth)' | sudo tee -a /etc/mkinitcpio.conf
fi

if grep -q '^GRUB_CMDLINE_LINUX_DEFAULT=' /etc/default/grub; then
    if ! cat /etc/default/grub | grep 'quiet' > /dev/null 2>&1; then
        sudo sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT=/ s/"\([^"]*\)"/"\1 quiet"/' /etc/default/grub
    fi
    if ! cat /etc/default/grub | grep 'splash' > /dev/null 2>&1; then
        sudo sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT=/ s/"\([^"]*\)"/"\1 splash"/' /etc/default/grub
    fi
else
    echo 'GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"' | sudo tee -a /etc/default/grub
fi

sudo plymouth-set-default-theme -R catppuccin-mocha

if [ "$silent" == false ]; then
    sudo mkinitcpio -P
else
    sudo mkinitcpio -P > /dev/null 2>&1
fi

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

# Fix open-with dialog
echo -e "\033[0;34mFixing open-with dialog...\033[0m"
sudo ln -sf /etc/xdg/menus/plasma-applications.menu /etc/xdg/menus/applications.menu

# Set default applications
xdg-mime default org.kde.dolphin.desktop inode/directory # file manager - Dolphin