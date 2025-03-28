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
sudo rm -rf $HOME/.config/Kvantum/catppuccin-mocha-sky/catppuccin-mocha-sky.kvconfig
sudo rm -rf $HOME/.config/Kvantum/catppuccin-mocha-sky/catppuccin-mocha-sky.svg
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

echo -e "\033[0;34mEnsuring directories exist...\033[0m"
sudo mkdir -p $HOME/.config/dunst/
sudo mkdir -p $HOME/.config/fastfetch/
sudo mkdir -p $HOME/.config/hypr/
sudo mkdir -p $HOME/.config/kitty/
sudo mkdir -p $HOME/.config/Kvantum/themes/
sudo mkdir -p $HOME/.config/starship/
sudo mkdir -p $HOME/.config/vesktop/settings/
sudo mkdir -p $HOME/.config/vesktop/themes/
sudo mkdir -p $HOME/.config/waybar/scripts/
sudo mkdir -p $HOME/.config/wofi/
sudo mkdir -p $HOME/.local/share/PrismLauncher/themes/
sudo mkdir -p /usr/share/grub/themes/
sudo mkdir -p /usr/share/sddm/themes/
sudo mkdir -p /usr/share/plymouth/themes/

echo -e "\033[0;34mCreating symlinks...\033[0m"
sudo ln -sf $HOME/.dotfiles/.bashrc $HOME/
sudo ln -sf $HOME/.dotfiles/.config/dunst/dunstrc $HOME/.config/dunst/
sudo ln -sf $HOME/.dotfiles/.config/fastfetch/config.jsonc $HOME/.config/fastfetch/
sudo ln -sf $HOME/.dotfiles/.config/hypr/hypridle.conf $HOME/.config/hypr/
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprland.animations.conf $HOME/.config/hypr/
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprland.conf $HOME/.config/hypr/
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprland.display.conf $HOME/.config/hypr/
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprland.keybinds.conf $HOME/.config/hypr/
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprland.programs.conf $HOME/.config/hypr/
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprlock.conf $HOME/.config/hypr/
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprpaper.conf $HOME/.config/hypr/
sudo cp -r $HOME/.dotfiles/.config/hypr/hyprpapers/ $HOME/.config/hypr/
sudo ln -sf $HOME/.dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty/
sudo ln -sf $HOME/.dotfiles/.config/kitty/mocha.conf $HOME/.config/kitty/
sudo ln -sf $HOME/.dotfiles/.config/Kvantum/catppuccin-mocha-sky/ $HOME/.config/Kvantum/
sudo ln -sf $HOME/.dotfiles/.config/Kvantum/kvantum.kvconfig $HOME/.config/Kvantum/
sudo ln -sf $HOME/.dotfiles/.config/starship/starship.toml $HOME/.config/starship/
sudo ln -sf $HOME/.dotfiles/.config/vesktop/settings.json $HOME/.config/vesktop/
sudo ln -sf $HOME/.dotfiles/.config/vesktop/settings/settings.json $HOME/.config/vesktop/settings/
sudo ln -sf $HOME/.dotfiles/.config/vesktop/state.json $HOME/.config/vesktop/
sudo ln -sf $HOME/.dotfiles/.config/vesktop/themes/catppuccin-mocha.css $HOME/.config/vesktop/themes/
sudo ln -sf $HOME/.dotfiles/.config/waybar/config.jsonc $HOME/.config/waybar/
sudo ln -sf $HOME/.dotfiles/.config/waybar/mocha.css $HOME/.config/waybar/
sudo ln -sf $HOME/.dotfiles/.config/waybar/scripts/wofi-power.sh $HOME/.config/waybar/scripts/
sudo ln -sf $HOME/.dotfiles/.config/waybar/style.css $HOME/.config/waybar/
sudo ln -sf $HOME/.dotfiles/.config/wofi/config $HOME/.config/wofi/
sudo ln -sf $HOME/.dotfiles/.config/wofi/style.css $HOME/.config/wofi/
sudo ln -sf $HOME/.dotfiles/.local/share/PrismLauncher/prismlauncher.cfg $HOME/.local/share/PrismLauncher/
sudo ln -sf $HOME/.dotfiles/.local/share/PrismLauncher/themes/catppuccin-mocha/ $HOME/.local/share/PrismLauncher/themes/
sudo ln -sf $HOME/.dotfiles/usr/share/grub/themes/catppuccin-mocha-grub-theme/ /usr/share/grub/themes/
sudo cp -r $HOME/.dotfiles/usr/share/sddm/themes/catppuccin-mocha/ /usr/share/sddm/themes/
sudo cp -r $HOME/.dotfiles/usr/share/plymouth/themes/catppuccin-mocha/ /usr/share/plymouth/themes/

echo -e "\033[0;34mSetting permissions to ${USER}:${USER}...\033[0m"
sudo chown -R $USER:$USER $HOME/.config/dunst/
sudo chown -R $USER:$USER $HOME/.config/fastfetch/
sudo chown -R $USER:$USER $HOME/.config/hypr/
sudo chown -R $USER:$USER $HOME/.config/kitty/
sudo chown -R $USER:$USER $HOME/.config/Kvantum/
sudo chown -R $USER:$USER $HOME/.config/starship/
sudo chown -R $USER:$USER $HOME/.config/vesktop/
sudo chown -R $USER:$USER $HOME/.config/waybar/
sudo chown -R $USER:$USER $HOME/.config/wofi/
sudo chown -R $USER:$USER $HOME/.local/share/PrismLauncher/
sudo chown -R $USER:$USER /usr/share/grub/themes/catppuccin-mocha-grub-theme/
sudo chown -R $USER:$USER /usr/share/sddm/themes/catppuccin-mocha/
sudo chown -R $USER:$USER /usr/share/plymouth/themes/catppuccin-mocha/
