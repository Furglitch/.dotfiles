# Apply theme to KDE Plasma applications
sudo sed -i 's/^widgetStyle=.*$/widgetStyle=kvantum-dark/' ~/.config/kdeglobals

# Apply theme to Dolphin
echo -e "\n[UiSettings]\nColorScheme=kvantum-dark" >> ~/.config/dolphinrc

# Set Dolphin to use kitty on 'Open With...'
if ! sudo sed -i 's/^TerminalProgram=.*$/TerminalProgram=kitty/' ~/.config/kdeglobals; then
    sudo sed -i 's/^\[General\].*$/\[General\]\nTerminalProgram=kitty/' ~/.config/kdeglobals
fi

kvantummanager &

echo ''
echo "Kvantum requires manual themeing."
echo "Under Install/Update Theme - Set the theme folder to $HOME/.dotfiles/themes/kvantum/catppuccin-mocha-sky"
echo "Under Change/Delete Theme  - Select 'catppuccin-mocha-sky' and click 'Use this theme'"