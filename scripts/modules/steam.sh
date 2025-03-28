#!/bin/bash
silent=$1
spin=$2

# Run first-time setup
if [ "$silent" == false ]; then
    steam --reset
    while true; do
        if [ -f "$HOME/.steam/steam/logs/webhelper.txt" ]; then
            break
        else
            echo -e "\033[1;33mWaiting for Steam to finish setup...\033[0m"
            sleep 5s
        fi
    done
else
    steam --reset > /dev/null 2>&1 &
    pid=$! && i=0
    while ! kill -0 $pid 2>/dev/null || [ ! -f "$HOME/.steam/steam/logs/webhelper.txt" ]; do
        i=$(( (i+1) % 8 ))
        printf "\r\033[0;36m\033[KWaiting for Steam to finish setup... %s \033[0m" "${spin:$i:1}"
        sleep 0.1
    done
fi

sleep 2s
echo -e "\033[1;33mInstalling theme...\033[0m"
killall steam
sleep 3s
mkdir $HOME/.steam/adwaita
if [ "$silent" == false ]; then
    git clone https://github.com/tkashkin/Adwaita-for-Steam.git $HOME/.steam/adwaita
else
    git clone https://github.com/tkashkin/Adwaita-for-Steam.git $HOME/.steam/adwaita > /dev/null 2>&1 &
    pid=$! && i=0
    while kill -0 $pid 2>/dev/null; do
        i=$(( (i+1) % 8 ))
        printf "\r\033[0;36m\033[KDownloading theme... %s \033[0m" "${spin:$i:1}"
        sleep 0.1
    done
fi
cd $HOME/.steam/adwaita
if [ "$silent" == false ]; then
    ./install.py -c catppuccin-mocha -e library/hide_whats_new
else
    ./install.py -c catppuccin-mocha -e library/hide_whats_new > /dev/null 2>&1 &
    pid=$! && i=0
    while kill -0 $pid 2>/dev/null; do
        i=$(( (i+1) % 8 ))
        printf "\r\033[0;36m\033[KInstalling theme... %s \033[0m" "${spin:$i:1}"
        sleep 0.1
    done
fi
printf "\r\033[0;32m\033[KTheme installation complete!\033[0m\n"