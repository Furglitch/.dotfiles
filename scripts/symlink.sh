#!/bin/bash

echo 'Removing existing dotfiles...'
sudo rm -rf $HOME/.bashrc
sudo rm -rf $HOME/.config/dunst/dunstrc
sudo rm -rf $HOME/.config/hypr/hyprland.conf
sudo rm -rf $HOME/.config/hypr/animation.conf
sudo rm -rf $HOME/.config/hypr/keybinds.conf
sudo rm -rf $HOME/.config/hypr/programs.conf
sudo rm -rf $HOME/.config/kitty/kitty.conf
sudo rm -rf $HOME/.config/starship/starship.toml
sudo rm -rf $HOME/.config/vesktop/settings.json
sudo rm -rf $HOME/.config/vesktop/state.json
sudo rm -rf $HOME/.config/vesktop/settings/settings.json
sudo rm -rf $HOME/.config/wofi/config
sudo rm -rf $HOME/.config/wofi/style.css
sudo rm -rf $HOME/.config/waybar/config.jsonc
sudo rm -rf $HOME/.config/waybar/style.css

echo 'Ensuring directories exist...'
mkdir -p $HOME/.config/dunst
mkdir -p $HOME/.config/hypr
mkdir -p $HOME/.config/kitty
mkdir -p $HOME/.config/starship
mkdir -p $HOME/.config/vesktop/settings
mkdir -p $HOME/.config/wofi
mkdir -p $HOME/.config/waybar

echo 'Creating symlinks...'
ln -sf $HOME/.dotfiles/.bashrc $HOME/.bashrc
ln -sf $HOME/.dotfiles/.config/dunst/dunstrc $HOME/.config/dunst/dunstrc
ln -sf $HOME/.dotfiles/.config/hypr/hyprland.conf $HOME/.config/hypr/hyprland.conf
ln -sf $HOME/.dotfiles/.config/hypr/animation.conf $HOME/.config/hypr/animation.conf
ln -sf $HOME/.dotfiles/.config/hypr/keybinds.conf $HOME/.config/hypr/keybinds.conf
ln -sf $HOME/.dotfiles/.config/hypr/programs.conf $HOME/.config/hypr/programs.conf
ln -sf $HOME/.dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
ln -sf $HOME/.dotfiles/.config/starship/starship.toml $HOME/.config/starship/starship.toml
ln -sf $HOME/.dotfiles/.config/vesktop/settings.json $HOME/.config/vesktop/settings.json
ln -sf $HOME/.dotfiles/.config/vesktop/state.json $HOME/.config/vesktop/state.json
ln -sf $HOME/.dotfiles/.config/vesktop/settings/settings.json $HOME/.config/vesktop/settings/settings.json
ln -sf $HOME/.dotfiles/.config/wofi/config $HOME/.config/wofi/config
ln -sf $HOME/.dotfiles/.config/wofi/style.css $HOME/.config/wofi/style.css
ln -sf $HOME/.dotfiles/.config/waybar/config.jsonc $HOME/.config/waybar/config.jsonc
ln -sf $HOME/.dotfiles/.config/waybar/style.css $HOME/.config/waybar/style.css
