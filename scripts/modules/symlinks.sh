#!/bin/bash
silent=$1

echo -e "\033[0;34mClearing existing dotfiles...\033[0m"
sudo rm -rf $HOME/.bashrc \
    $HOME/.config/dunst/dunstrc \
    $HOME/.config/fastfetch/config.jsonc \
    $HOME/.config/hypr/hypridle.conf \
    $HOME/.config/hypr/hyprland.animations.conf \
    $HOME/.config/hypr/hyprland.conf \
    $HOME/.config/hypr/hyprland.display.conf \
    $HOME/.config/hypr/hyprland.keybinds.conf \
    $HOME/.config/hypr/hyprland.programs.conf \
    $HOME/.config/hypr/hyprlock.conf \
    $HOME/.config/hypr/hyprpaper.conf \
    $HOME/.config/hypr/hyprpapers/ \
    $HOME/.config/kitty/kitty.conf \
    $HOME/.config/kitty/mocha.conf \
    $HOME/.config/Kvantum/themes/catppuccin-mocha-sky/catppuccin-mocha-sky.kvconfig \
    $HOME/.config/Kvantum/themes/catppuccin-mocha-sky/catppuccin-mocha-sky.svg \
    $HOME/.config/Kvantum/kvantum.kvconfig \
    $HOME/.config/starship/starship.toml \
    $HOME/.config/vesktop/settings.json \
    $HOME/.config/vesktop/settings/settings.json \
    $HOME/.config/vesktop/state.json \
    $HOME/.config/vesktop/themes/catppuccin-mocha.theme.css \
    $HOME/.config/waybar/config.jsonc \
    $HOME/.config/waybar/mocha.css \
    $HOME/.config/waybar/scripts/wofi-power.sh \
    $HOME/.config/waybar/style.css \
    $HOME/.config/wofi/config \
    $HOME/.config/wofi/style.css \
    $HOME/.local/share/PrismLauncher/prismlauncher.cfg \
    $HOME/.local/share/PrismLauncher/themes/catppuccin-mocha/ \
    /usr/share/grub/themes/catppuccin-mocha-grub-theme/ \
    /usr/share/sddm/themes/catppuccin-mocha/ \
    /usr/share/plymouth/themes/catppuccin-mocha/

echo -e "\033[0;34mEnsuring directories exist...\033[0m"
sudo mkdir -p   $HOME/.config/dunst/ \
    $HOME/.config/fastfetch/ \
    $HOME/.config/hypr/hyprpapers/ \
    $HOME/.config/kitty/ \
    $HOME/.config/Kvantum/themes/catppuccin-mocha-sky/ \
    $HOME/.config/starship/ \
    $HOME/.config/vesktop/settings/ \
    $HOME/.config/vesktop/themes/ \
    $HOME/.config/waybar/scripts/ \
    $HOME/.config/wofi/ \
    $HOME/.local/share/PrismLauncher/themes/catppuccin-mocha/ \
    /usr/share/grub/themes/catppuccin-mocha-grub-theme/ \
    /usr/share/sddm/themes/catppuccin-mocha/ \
    /usr/share/plymouth/themes/catppuccin-mocha/

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
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprpapers/ $HOME/.config/hypr/
sudo ln -sf $HOME/.dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
sudo ln -sf $HOME/.dotfiles/.config/Kvantum/themes/catppuccin-mocha-sky/ $HOME/.config/Kvantum/
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
sudo ln -sf $HOME/.dotfiles/.local/share/PrismLauncher/themes/catppuccin-mocha/ $HOME/.local/share/PrismLauncher/themes/
sudo ln -sf $HOME/.dotfiles/usr/share/grub/themes/catppuccin-mocha-grub-theme/ /usr/share/grub/themes/
sudo ln -sf $HOME/.dotfiles/usr/share/sddm/themes/catppuccin-mocha/ /usr/share/sddm/themes/
sudo ln -sf $HOME/.dotfiles/usr/share/plymouth/themes/catppuccin-mocha/ /usr/share/plymouth/themes/

echo -e "\033[0;34mSetting permissions to ${USER}:${USER}...\033[0m"
sudo chown -R $USER:$USER $HOME/.config/dunst/ \
    $HOME/.config/fastfetch/ \
    $HOME/.config/hypr/ \
    $HOME/.config/kitty/ \
    $HOME/.config/Kvantum/ \
    $HOME/.config/starship/ \
    $HOME/.config/vesktop/ \
    $HOME/.config/waybar/ \
    $HOME/.config/wofi/ \
    $HOME/.local/share/PrismLauncher/ \
    /usr/share/grub/themes/catppuccin-mocha-grub-theme/ \
    /usr/share/sddm/themes/catppuccin-mocha/ \
    /usr/share/plymouth/themes/catppuccin-mocha/