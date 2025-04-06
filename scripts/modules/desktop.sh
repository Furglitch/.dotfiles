#!/bin/bash
silent=$1

# Edit desktop entries

# Steam
sudo chown $USER:$USER /usr/share/applications/steam.desktop
if [ -f "/usr/share/applications/steam.desktop" ]; then
    echo -e "\033[0;34mUpdating Steam desktop entry...\033[0m"
    echo "[Desktop Entry]
Name=Steam
Type=Application
Exec=/usr/bin/steam
Icon=steam
Terminal=False
Categories=Network;FileTransfer;Game;
MimeType=x-scheme-handler/steam;x-scheme-handler/steamlink;" > "/usr/share/applications/steam.desktop"
else
    echo -e "\033[0;31mSteam .desktop file not found!"
fi

# Vesktop (Discord)
echo -e "\033[0;34mUpdating Vesktop (Discord) desktop entry...\033[0m"
echo -e "\033[0;34mUpdating Vesktop desktop entry (name change to Discord)...\033[0m"
sudo sed -i 's/^Name=Vesktop$/Name=Discord/' /usr/share/applications/vesktop.desktop
sudo wget -O '/usr/share/applications/discord.png' "https://static.wikia.nocookie.net/logopedia/images/d/dd/Discord_2021_Alt1.svg/revision/latest?cb=20220528092716"
sudo sed -i 's|^Icon=vesktop$|Icon=/usr/share/applications/discord.png|' /usr/share/applications/vesktop.desktop
gtk-update-icon-cache /usr/share/icons/*


# Hide desktop entries from menu
disable=(
    assistant
    avahi-discover
    breezestyleconfig
    bssh
    bvnc
    code-url-handler
    designer
    electron34
    gkbd-keyboard-display
    google-maps-geo-handler
    htop
    java-java-openjdk
    jconsole-java-openjdk
    jshell-java-openjdk
    kaccess
    kcm_about-distro
    kcm_access
    kcm_activities
    kcm_autostart
    kcm_baloofile
    kcm_bluetooth
    kcm_bolt
    kcm_breezedecoration
    kcm_clock
    kcm_colors
    kcm_componentchooser
    kcm_cursortheme
    kcm_desktoppaths
    kcm_desktoptheme
    kcm_disks
    kcm_energyinfo
    kcm_feedback
    kcm_filetypes
    kcm_firewall
    kcm_fontinst
    kcm_fonts
    kcm_gamecontroller
    kcm_icons
    kcm_kaccounts
    kcm_kded
    kcm_keyboard
    kcm_keys
    kcm_kgamma
    kcm_krdpserver
    kcm_krunnersettings
    kcm_kscreen
    kcm_kwin_effects
    kcm_kwin_scripts
    kcm_kwin_virtualdesktops
    kcm_kwindecoration
    kcm_kwinoptions
    kcm_kwinrules
    kcm_kwintabbox
    kcm_kwinxwayland
    kcm_landingpage
    kcm_lookandfeel
    kcm_mouse
    kcm_netpref
    kcm_networkmanagement
    kcm_nightlight
    kcm_notifications
    kcm_oxygendecoration
    kcm_plasmasearch
    kcm_powerdevilprofilesconfig
    kcm_printer_manager
    kcm_proxy
    kcm_pulseaudio
    kcm_qtquicksettings
    kcm_recentFiles
    kcm_regionandlang
    kcm_screenlocker
    kcm_sddm
    kcm_smserver
    kcm_solid_actions
    kcm_soundtheme
    kcm_splashscreen
    kcm_style
    kcm_tablet
    kcm_touchpad
    kcm_touchscreen
    kcm_trash
    kcm_updates
    kcm_users
    kcm_virtualkeyboard
    kcm_wacomtablet
    kcm_wallpaper
    kcm_webshortcuts
    kcm_workspace
    kcmspellchecking
    kde_wacom_tabletfinder
    kdesystemsettings
    kitty-open
    ktelnetservice6
    kvantummanager
    kwincompositing
    libreoffice-base
    libreoffice-calc
    libreoffice-draw
    libreoffice-impress
    libreoffice-math
    libreoffice-writer
    libreoffice-xsltfilter
    linguist
    lstopo
    nm-applet
    nm-connection-editor
    openstreetmap-geo-handler
    org.freedesktop.impl.portal.desktop.kde
    org.freedesktop.Xwayland
    org.gnome.Zenity
    org.gnupg.pinentry-qt
    org.gnupg.pinentry-qt5
    org.kde.bluedevilsendfile
    org.kde.bluedevilwizard
    org.kde.ConfigurePrinter
    org.kde.discover-flatpak
    org.kde.discover
    org.kde.discover.notifier
    org.kde.discover.snap
    org.kde.discover.urlhandler
    org.kde.dolphin
    org.kde.drkonqi.coredump.gui
    org.kde.drkonqi
    org.kde.kcolorschemeeditor
    org.kde.kde-add-printer
    org.kde.kded6
    org.kde.keditfiletype
    org.kde.kfontinst
    org.kde.kfontview
    org.kde.kinfocenter
    org.kde.kiod6
    org.kde.klipper
    org.kde.kmenuedit
    org.kde.knetattach
    org.kde.knewstuff-dialog6
    org.kde.krdp
    org.kde.ksshaskpass
    org.kde.kuserfeedback-console
    org.kde.kwalletd6
    org.kde.kwin.killer
    org.kde.plasma-fallback-session-save
    org.kde.plasma-systemmonitor
    org.kde.plasma-welcome
    org.kde.plasma.browser_integration.host
    org.kde.plasma.emojier
    org.kde.plasmashell
    org.kde.plasmawindowed
    org.kde.polkit-kde-authentication-agent-1
    org.kde.PrintQueue
    org.kde.spectacle
    org.kde.vpnimport
    qdbusviewer
    qv4l2
    qvidcap
    rustdesk-link
    signon-ui
    systemsettings
    vim
    wheelmap-geo-handler
    wine
)

enable=(
    7zFM
    code
    com.github.hluk.copyq
    gparted
    kitty
    OrcaSlicer
    org.kde.plasma.settings.open
    org.prismlauncher.PrismLauncher
    org.telegram.desktop
    pinta
    qdirstat
    rustdesk
    steam
    steam-rom-manager
    timeshift-gtk
    vesktop
    vlc
    waterfox
)

for entry in "${disable[@]}"; do
    if [ -f "/usr/share/applications/${entry}.desktop" ]; then
        if grep -E '^NoDisplay=.*$' "/usr/share/applications/${entry}.desktop" > /dev/null 2>&1; then
            if grep -E '^NoDisplay=true$' "/usr/share/applications/${entry}.desktop" > /dev/null 2>&1; then
                echo -e "\033[0;32m${entry} already hidden.\033[0m"
            else
                echo -e "\033[0;34mHiding ${entry} desktop entry...\033[0m"
                sudo sed -i 's/^NoDisplay=.*$/NoDisplay=true/' "/usr/share/applications/${entry}.desktop"
            fi
        else
            sudo sed -i 's/^\[Desktop Entry\]$/[Desktop Entry]\nNoDisplay=true/' "/usr/share/applications/${entry}.desktop"
        fi
    else
        echo -e "\033[0;31m${entry} .desktop file not found!"
    fi
done

for entry in "${enable[@]}"; do
    if [ -f "/usr/share/applications/${entry}.desktop" ]; then
        if grep -E '^NoDisplay=.*$' "/usr/share/applications/${entry}.desktop" > /dev/null 2>&1; then
            if grep -E '^NoDisplay=false$' "/usr/share/applications/${entry}.desktop" > /dev/null 2>&1; then
                echo -e "\033[0;32m${entry} already visible.\033[0m"
            else
                echo -e "\033[0;34mMaking ${entry} desktop entry visible...\033[0m"
                sudo sed -i 's/^NoDisplay=.*$/NoDisplay=false/' "/usr/share/applications/${entry}.desktop"
            fi
        else
            sudo sed -i 's/^\[Desktop Entry\]$/[Desktop Entry]\nNoDisplay=false/' "/usr/share/applications/${entry}.desktop"
        fi
    else
        echo -e "\033[0;31m${entry} .desktop file not found!"
    fi
done
