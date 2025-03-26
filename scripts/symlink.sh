#!/bin/bash

echo 'Creating symlinks...'
ln -s $HOME/.dotfiles/.bashrc $HOME/.bashrc
ln -s $HOME/.dotfiles/.config/dunst/dunstrc $HOME/.config/dunst/dunstrc
ln -s $HOME/.dotfiles/.config/hypr/hyprland.conf $HOME/.config/hypr/hyprland.conf
ln -s $HOME/.dotfiles/.config/hypr/animation.conf $HOME/.config/hypr/animation.conf
ln -s $HOME/.dotfiles/.config/hypr/keybinds.conf $HOME/.config/hypr/keybinds.conf
ln -s $HOME/.dotfiles/.config/hypr/programs.conf $HOME/.config/hypr/programs.conf
ln -s $HOME/.dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
ln -s $HOME/.dotfiles/.config/starship/starship.toml $HOME/.config/starship/starship.toml
