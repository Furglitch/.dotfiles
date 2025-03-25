#!/bin/bash

steam --reset 2>%1 /dev/null &
while true; do
    if [ -f $HOME/.steam/steam/logs/console-linux.txt ]; then
        if tail -n 100 "$HOME/.steam/steam/logs/console-linux.txt" | grep -q "Download Complete." && tail -n 100 "$HOME/.steam/steam/logs/console-linux.txt" | grep -q "Verification complete"; then
            break
        else
            echo "Waiting for Steam to finish setup..."
            sleep 5s
        fi
    else
        echo "Waiting for Steam to finish setup..."
        sleep 10s
    fi
done

sleep 2s && echo "Installing theme..."
killall steam && sleep 3s
mkdir $HOME/.steam/adwaita && git clone git@github.com:tkashkin/Adwaita-for-Steam.git $HOME/.steam/adwaita
cd $HOME/.steam/adwaita && ./install.py -c catppuccin-mocha -e library/hide_whats_new

# Fix an issue with the Steam desktop file
echo "[Desktop Entry]
Name=Steam
Type=Application
Exec=/usr/bin/steam
Icon=steam
Terminal=False
Categories=Network;FileTransfer;Game;
MimeType=x-scheme-handler/steam;x-scheme-handler/steamlink;" > "/usr/share/applications/steam.desktop"
