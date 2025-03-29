#!/bin/bash
silent=$1
spin=$2

validate() {
    if sudo -n true 2>/dev/null; then
        return
    else
        echo -e "\033[0;31mVerify sudo access for ${1} package installation:\033[0m"
        sudo -S -v || { echo -e "\033[0;31mPassword not received. Exiting installation.\033[0m"; pkill -f $HOME/scripts/install.sh; exit 1; }
    fi
}

installPacmanPkg() {
    validate pacman

    variable=$(echo "$1" | sed -E 's/archinstall_([a-z]+)/\1/')
    if [[ "$1" == archinstall_* ]]; then
        echo -e "\033[0;34mVerifying archinstall $variable package installation...\033[0m"
    else
        echo -e "\033[0;34mInstalling $variable packages...\033[0m"
    fi
    declare -n packages=$1

    if [ "$silent" == false ]; then
        for package in "${packages[@]}"; do 
            sudo pacman -Sy --needed --noconfirm $package
        done
    else
        for package in "${packages[@]}"; do 
            sudo pacman -Sy --needed --noconfirm $package > /dev/null 2>&1 &
            pid=$! && i=0
            while kill -0 $pid 2>/dev/null; do
                i=$(( (i+1) % 8 ))
                if [[ "$1" == archinstall_* ]]; then
                    printf "\r\033[0;36m\033[KVerifying ${package} installation... %s \033[0m" "${spin:$i:1}"
                else
                    printf "\r\033[0;36m\033[KInstalling ${package}... %s \033[0m" "${spin:$i:1}"
                fi
                sleep 0.1
            done
        done
        wait $pid
    fi
    printf "\r\033[0;32m\033[KInstallion complete!\033[0m\n"
}

installYay() {
    echo -e '\033[0;34mInstalling yay AUR helper...\033[0;31m'
    cd $HOME
    touch $HOME/.yay.git-clone.log
    if [ -d "$HOME/.yay" ]; then
        echo -e "\033[0;33m$HOME/.yay already exists. Skipping download.\033[0m"
    else
        if [ "$silent" == false ]; then
            git clone https://aur.archlinux.org/yay.git $HOME/.yay
        else
            git clone https://aur.archlinux.org/yay.git $HOME/.yay > $HOME/.yay.git-clone.log 2>&1 &
            pid=$! && i=0
            while kill -0 $pid 2>/dev/null; do
                i=$(( (i+1) % 8 ))
                printf "\r\033[0;36m\033[KDownloading repository to $HOME/.yay... %s \033[0m" "${spin:$i:1}"
                sleep 0.1
            done
            wait $pid
        fi
        printf "\r\033[0;32m\033[KDownload complete!\033[0m\n"
    fi
    touch $HOME/.yay.makepkg.log
    if [ "$silent" == false ]; then
        cd .yay
        makepkg -si --noconfirm
    else
        cd .yay
        makepkg -si --noconfirm > $HOME/.yay.makepkg.log 2>&1 &
        pid=$! && i=0 && password_prompt_count=0
        while kill -0 $pid 2>/dev/null; do
            if [ $password_prompt_count -lt 1 ]; then
                if cat $HOME/.yay.makepkg.log | grep -E "Installing package|Installing existing package"; then
                    printf "\r\033[0;31m\033[Ksudo prompt detected. Please enter your password.\033[0m\n"
                    password_prompt_count=$((password_prompt_count + 1))
                fi
            fi
            i=$(( (i+1) % 8 ))
            printf "\r\033[0m\033[KBuilding and installing yay package... %s \033[0m" "${spin:$i:1}"
            sleep 0.1
        done
        wait $pid
    fi
    printf "\r\033[0;32m\033[KInstallation complete!\n"
}

installYayPkg() {
    validate yay

    echo -e "\033[0;34mInstalling $1 packages...\033[0m"
    declare -n packages=$1

    if [ "$silent" == false ]; then
        for package in "${packages[@]}"; do 
            yay -Sy --needed --noconfirm $package
        done
    else
        for package in "${packages[@]}"; do 
            yay -Sy --needed --noconfirm $package > /dev/null 2>&1 &
            pid=$! && i=0
            while kill -0 $pid 2>/dev/null; do
                i=$(( (i+1) % 8 ))
                printf "\r\033[0;36m\033[KInstalling ${package}... %s \033[0m" "${spin:$i:1}"
                sleep 0.1
            done
        done
        wait $pid
    fi
    printf "\r\033[0;32m\033[KInstallion complete!\033[0m\n"
}

archinstall_desktop=(
    htop
    iwd
    nano
    openssh
    smartmontools
    wpa_supplicant
    vim
    wget
    wireless_tools
    xdg-utils
)
archinstall_hyprland=(
    dolphin
    dunst
    grim
    hyprland
    kitty
    polkit-kde-agent
    qt5-wayland
    qt6-wayland
    slurp
    wofi
    xdg-desktop-portal-hyprland
)
archinstall_extra=(
    base-devel
    git
    networkmanager
    pipewire
    sddm
)

fonts=(
    nerd-fonts
    ttf-google-fonts-git
)
interface=(
    catppuccin-cursors-mocha
    hyprcursor
    hyprpaper
    kvantum
    plymouth
    starship
    waybar
)
social=(
    telegram-desktop
    vesktop-bin
)
utilities=(
    copyq
    fastfetch
    gparted
    hypridle
    hyprlock
    hyprpicker
    librewolf-bin
    libreoffice-still
    orca-slicer-bin
    p7zip-gui
    pinta
    plasma-meta
    qdirstat
    rustdesk-bin
    systemsettings
    timeshift
    visual-studio-code-bin
    vlc
    yadm
    zenity
)
game=(
    prismlauncher
    steam
)

installPacmanPkg archinstall_desktop
installPacmanPkg archinstall_hyprland
installPacmanPkg archinstall_extra
installYay

installYayPkg fonts
installYayPkg utilities
installYayPkg interface
installYayPkg game
installYayPkg social
echo -e '\n\n\n'