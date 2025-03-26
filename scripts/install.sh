#!/bin/bash

sudo bash $HOME/.dotfiles/scripts/install.title.sh

# ArchInstall package verification
echo 'Validating base packages...'
archinstall_desktop='htop iwd nano openssh smartmontools wpa_supplicant vim wget wireless_tools xdg-utils'
archinstall_hyprland='dolphin dunst grim hyprland kitty polkit-kde-agent qt5-wayland qt6-wayland slurp wofi xdg-desktop-portal-hyprland'
archinstall_extra='sddm networkmanager pipewire'
sudo pacman -Sy --needed --noconfirm $archinstall_desktop $archinstall_hyprland

# yay AUR helper installation
echo 'Installing yay AUR helper...'
cd $HOME && git clone https://aur.archlinux.org/yay.git $HOME/.yay
cd .yay && makepkg -si

# Update packages
echo "Updating packages..."
sudo pacman -Syu --noconfirm && yay -Syu --sudoloop --noconfirm

# Install additional packages
echo "Installing additional packages..."
utilities='gparted git librewolf-bin neofetch p7zip-gui systemsettings timeshift visual-studio-code-bin yadm zenity'
themed='starship'
fonts='nerd-fonts ttf-google-fonts-git'
social='vesktop-bin telegram-desktop-bin'
game='steam'
yay -Sy --needed --noconfirm $utilities $themed $fonts $social $game

# Themeing & Setup
bash $HOME/.dotfiles/scripts/discord.sh
bash $HOME/.dotfiles/scripts/librewolf.sh
bash $HOME/.dotfiles/scripts/vscode.sh
bash $HOME/.dotfiles/scripts/steam.sh