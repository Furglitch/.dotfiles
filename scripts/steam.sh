#!/bin/bash

function themeSteam { # Applies the Adwaita catppuccin-mocha theme to Steam
    if [ -f $HOME/.steam/steam/steamui/css/library.original.css ]; then
        echo "Steam theme already installed."
    else
        if [ -f $HOME/.steam/steam/steamui/css/library.css ]; then
            echo "Steam files exist, skipping to theme installation..."
        else
            echo "Running Steam first-time setup..."
            
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
        fi

        sleep 2s && echo "Installing theme..."
        killall steam && sleep 3s
        mkdir $HOME/.steam/adwaita && git clone git@github.com:tkashkin/Adwaita-for-Steam.git $HOME/.steam/adwaita
        cd $HOME/.steam/adwaita && ./install.py -c catppuccin-mocha -e library/hide_whats_new

    fi
}

function fixDesktop { # Fixes an issue with the Steam desktop file
    if [ -f "/usr/share/applications/steam.desktop" ]; then
        echo "[Desktop Entry]
        Name=Steam
        Type=Application
        Exec=/usr/bin/steam
        Icon=steam
        Terminal=False
        Categories=Network;FileTransfer;Game;
        MimeType=x-scheme-handler/steam;x-scheme-handler/steamlink;" > "/usr/share/applications/steam.desktop"
    else
        echo "Error: /usr/share/applications/steam.desktop not found!"
    fi
}

if ! command -v steam 2>&1 /dev/null; then
    echo "Installing Steam..."
    yay -Sy steam --noconfirm
    echo "Steam installed!"
    fixDesktop
    themeSteam
else
    echo "Steam is already installed."
    themeSteam
fi