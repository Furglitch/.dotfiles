#!/bin/bash

sudo bash $HOME/.dotfiles/scripts/install.title.sh

# ArchInstall package verification
echo 'Validating base packages...'
archinstall_desktop='htop iwd nano openssh smartmontools wpa_supplicant vim wget wireless_tools xdg-utils'
archinstall_hyprland='dolphin dunst grim hyprland kitty polkit-kde-agent qt5-wayland qt6-wayland slurp wofi xdg-desktop-portal-hyprland'
archinstall_extra='sddm networkmanager pipewire base-devel'
sudo pacman -Sy --needed --noconfirm $archinstall_desktop
sudo pacman -Sy --needed --noconfirm $archinstall_hyprland

# yay AUR helper installation
echo 'Installing yay AUR helper...'
cd $HOME && git clone https://aur.archlinux.org/yay.git $HOME/.yay
cd .yay && makepkg -si --noconfirm

# Update packages
echo "Updating packages..."
sudo pacman -Syu --noconfirm && yay -Syu --sudoloop --noconfirm

# Install additional packages
echo "Installing additional packages..."
fonts='nerd-fonts ttf-google-fonts-git'
game='steam'
interface='hyprpaper kvantum starship waybar hyprcursor catppuccin-cursors-mocha'
social='vesktop-bin telegram-desktop-bin'
utilities='gparted git librewolf-bin neofetch p7zip-gui systemsettings timeshift visual-studio-code-bin yadm zenity'
yay -Sy --needed --sudoloop --noconfirm $fonts
yay -Sy --needed --sudoloop --noconfirm $utilities
yay -Sy --needed --sudoloop --noconfirm $interface
yay -Sy --needed --sudoloop --noconfirm $social
yay -Sy --needed --sudoloop --noconfirm $game

# Themeing & Setup
bash $HOME/.dotfiles/scripts/discord.sh
bash $HOME/.dotfiles/scripts/kvantum.sh
bash $HOME/.dotfiles/scripts/librewolf.sh
bash $HOME/.dotfiles/scripts/vscode.sh
bash $HOME/.dotfiles/scripts/steam.sh
bash $HOME/.dotfiles/scripts/symlink.sh

echo "Installation complete!"
read -n 1 -p "Would you like to reboot now to apply themes? [y/n]: " reboot
if [ $reboot == 'y' ]; then
    reboot
fi

# TODO
# Install and configure the following:
# - hyprlock
# - hypridle
# - hyprpicker
# - cliphist

# TODO
# configure the following:
# - dolphin
# - kdesystemsettings
# - telegram

# TODO
# reconfigure the following:
# - LibreWolf (open in tabs, not windows)