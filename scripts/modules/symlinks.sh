#!/bin/bash
silent=$1

echo -e "\033[0;34mClearing existing dotfiles...\033[0m"
sudo rm -rf $HOME/.bashrc
sudo rm -rf $HOME/.config/dunst/dunstrc
sudo rm -rf $HOME/.config/fastfetch/config.jsonc
sudo rm -rf $HOME/.config/hypr/hypridle.conf
sudo rm -rf $HOME/.config/hypr/hyprland.animations.conf
sudo rm -rf $HOME/.config/hypr/hyprland.conf
sudo rm -rf $HOME/.config/hypr/hyprland.display.conf
sudo rm -rf $HOME/.config/hypr/hyprland.keybinds.conf
sudo rm -rf $HOME/.config/hypr/hyprland.programs.conf
sudo rm -rf $HOME/.config/hypr/hyprlock.conf
sudo rm -rf $HOME/.config/hypr/hyprpaper.conf
sudo rm -rf $HOME/.config/hypr/hyprpapers/
sudo rm -rf $HOME/.config/kitty/kitty.conf
sudo rm -rf $HOME/.config/kitty/mocha.conf
sudo rm -rf $HOME/.config/Kvantum/themes/catppuccin-mocha-sky/catppuccin-mocha-sky.kvconfig
sudo rm -rf $HOME/.config/Kvantum/themes/catppuccin-mocha-sky/catppuccin-mocha-sky.svg
sudo rm -rf $HOME/.config/Kvantum/kvantum.kvconfig
sudo rm -rf $HOME/.config/starship/starship.toml
sudo rm -rf $HOME/.config/vesktop/settings.json
sudo rm -rf $HOME/.config/vesktop/settings/settings.json
sudo rm -rf $HOME/.config/vesktop/state.json
sudo rm -rf $HOME/.config/vesktop/themes/catppuccin-mocha.theme.css
sudo rm -rf $HOME/.config/waybar/config.jsonc
sudo rm -rf $HOME/.config/waybar/mocha.css
sudo rm -rf $HOME/.config/waybar/scripts/wofi-power.sh
sudo rm -rf $HOME/.config/waybar/style.css
sudo rm -rf $HOME/.config/wofi/config
sudo rm -rf $HOME/.config/wofi/style.css
sudo rm -rf $HOME/.local/share/PrismLauncher/prismlauncher.cfg
sudo rm -rf $HOME/.local/share/PrismLauncher/themes/catppuccin-mocha/
sudo rm -rf /usr/share/grub/themes/catppuccin-mocha-grub-theme/
sudo rm -rf /usr/share/sddm/themes/catppuccin-mocha/

echo -e "\033[0;34mEnsuring directories exist...\033[0m"
sudo mkdir -p $HOME/.config/dunst/
sudo mkdir -p $HOME/.config/fastfetch/
sudo mkdir -p $HOME/.config/hypr/hyprpapers/
sudo mkdir -p $HOME/.config/kitty/
sudo mkdir -p $HOME/.config/Kvantum/themes/catppuccin-mocha-sky/
sudo mkdir -p $HOME/.config/starship/
sudo mkdir -p $HOME/.config/vesktop/settings/
sudo mkdir -p $HOME/.config/vesktop/themes/
sudo mkdir -p $HOME/.config/waybar/scripts/
sudo mkdir -p $HOME/.config/wofi/
sudo mkdir -p $HOME/.local/share/PrismLauncher/themes/catppucin-mocha/
sudo mkdir -p /usr/share/grub/themes/catppuccin-mocha-grub-theme/
sudo mkdir -p /usr/share/sddm/themes/catppuccin-mocha/

echo -e "\033[0;34mCreating symlinks...\033[0m"
sudo ln -sf $HOME/.dotfiles/.bashrc $HOME/.bashrc
sudo ln -sf $HOME/.dotfiles/.config/dunst/dunstrc $HOME/.config/dunst/dunstrc
sudo ln -sf $HOME/.dotfiles/.config/fastfetch/config.jsonc $HOME/.config/fastfetch/config.jsonc
sudo ln -sf $HOME/.dotfiles/.config/hypr/hypridle.conf $HOME/.config/hypr/hypridle.conf
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprland.animations.conf $HOME/.config/hypr/hyprland.animations.conf
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprland.conf $HOME/.config/hypr/hyprland.conf
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprland.display.conf $HOME/.config/hypr/hyprland.display.conf
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprland.keybinds.conf $HOME/.config/hypr/hyprland.keybinds.conf
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprland.programs.conf $HOME/.config/hypr/hyprland.programs.conf
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprlock.conf $HOME/.config/hypr/hyprlock.conf
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprpaper.conf $HOME/.config/hypr/hyprpaper.conf
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprpapers/ $HOME/.config/hypr/hyprpapers/
sudo ln -sf $HOME/.dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
sudo ln -sf $HOME/.dotfiles/.config/Kvantum/themes/catppuccin-mocha-sky/ $HOME/.config/Kvantum/themes/catppuccin-mocha-sky/
sudo ln -sf $HOME/.dotfiles/.config/Kvantum/kvantum.kvconfig $HOME/.config/Kvantum/kvantum.kvconfig
sudo ln -sf $HOME/.dotfiles/.config/starship/starship.toml $HOME/.config/starship/starship.toml
sudo ln -sf $HOME/.dotfiles/.config/vesktop/settings.json $HOME/.config/vesktop/settings.json
sudo ln -sf $HOME/.dotfiles/.config/vesktop/settings/settings.json $HOME/.config/vesktop/settings/settings.json
sudo ln -sf $HOME/.dotfiles/.config/vesktop/state.json $HOME/.config/vesktop/state.json
sudo ln -sf $HOME/.dotfiles/.config/vesktop/themes/catppuccin-mocha.css $HOME/.config/vesktop/themes/catppuccin-mocha.css
sudo ln -sf $HOME/.dotfiles/.config/waybar/config.jsonc $HOME/.config/waybar/config.jsonc
sudo ln -sf $HOME/.dotfiles/.config/waybar/mocha.css $HOME/.config/waybar/mocha.css
sudo ln -sf $HOME/.dotfiles/.config/waybar/scripts/wofi-power.sh $HOME/.config/waybar/scripts/wofi-power.sh
sudo ln -sf $HOME/.dotfiles/.config/waybar/style.css $HOME/.config/waybar/style.css
sudo ln -sf $HOME/.dotfiles/.config/wofi/config $HOME/.config/wofi/config
sudo ln -sf $HOME/.dotfiles/.config/wofi/style.css $HOME/.config/wofi/style.css
sudo ln -sf $HOME/.dotfiles/.local/share/PrismLauncher/prismlauncher.cfg $HOME/.local/share/PrismLauncher/prismlauncher.cfg
sudo ln -sf $HOME/.dotfiles/.local/share/PrismLauncher/themes/catppuccin-mocha/ $HOME/.local/share/PrismLauncher/themes/catppuccin-mocha/
sudo ln -sf $HOME/.dotfiles/usr/share/grub/themes/catppuccin-mocha-grub-theme/ /usr/share/grub/themes/catppuccin-mocha-grub-theme/
sudo ln -sf $HOME/.dotfiles/usr/share/sddm/themes/catppuccin-mocha/ /usr/share/sddm/themes/catppuccin-mocha/