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
sudo ln -sf $HOME/.dotfiles/.config/hypr/hyprpapers/ $HOME/.config/hypr/
sudo ln -sf $HOME/.dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty/
sudo ln -sf $HOME/.dotfiles/.config/Kvantum/themes/catppuccin-mocha-sky/ $HOME/.config/Kvantum/themes/
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