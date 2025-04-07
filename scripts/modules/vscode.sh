#!/bin/bash
silent=$1
spin=$2

# Install Visual Studio Code extensions
echo -e "\033[0;34mInstalling VSCodium extensions...\033[0m"
extensions=(
    "GitHub.copilot"
    "Catppuccin.catppuccin-vsc-pack"
    "circlecodesolution.ccs-flutter-color"
    "Tyriar.sort-lines"
    "solomonkinard.reverse"
    "aaron-bond.better-comments"
    "adpyke.codesnap"
    "usernamehw.errorlens"
    "donjayamanne.githistory"
    "eamodio.gitlens"
    "oderwat.indent-rainbow"
    "alefragnani.project-manager"
)

if [ "$silent" == false ]; then
    for extension in "${extensions[@]}"; do
        vscodium --install-extension "$extension"
    done
else
    for extension in "${extensions[@]}"; do
        vscodium --install-extension "$extension" > /dev/null 2>&1 &
        pid=$! && i=0
        while kill -0 $pid 2>/dev/null; do
            i=$(( (i+1) % 8 ))
            printf "\r\033[0;36m\033[KInstalling $extension... %s \033[0m" "${spin:$i:1}"
            sleep 0.1
        done
    done
    wait $pid
fi
printf "\r\033[0;32m\033[KVSCodium extensions installation complete!\033[0m\n"

# Configure Visual Studio Code
echo -e "\033[0;34mConfiguring VSCodium...\033[0m"
mkdir -p $HOME/.config/VSCodium/User
echo "{
    \"workbench.colorTheme\": \"Catppuccin Mocha\",
    \"workbench.iconTheme\": \"catppuccin-mocha\",
    \"catppuccin.accentColor\": \"sky\",
    \"editor.fontFamily\": \"'UbuntuMono Nerd Font', 'monospace', monospace\",
    \"indentRainbow.indicatorStyle\": \"light\",
    \"indentRainbow.colors\": [
        \"rgba(243, 139, 168, 0.2)\",
        \"rgba(250, 179, 135, 0.2)\",
        \"rgba(249, 226, 175, 0.2)\",
        \"rgba(166, 227, 161, 0.2)\",
        \"rgba(137, 220, 235, 0.2)\",
        \"rgba(180, 190, 254, 0.2\"
    ],
    \"better-comments.tags\": [
        {
            \"tag\": \"!\",
            \"color\": \"#f38ba8\",
        },
        {
            \"tag\": \"?\",
            \"color\": \"#89dceb\",
        },
        {
            \"tag\": \"//\",
            \"color\": \"#b4befe\",
        },
        {
            \"tag\": \"todo\",
            \"color\": \"#fab387\",
        },
        {
            \"tag\": \"*\",
            \"color\": \"#a6e3a1\",
        }
    ]
}" > $HOME/.config/VSCodium/User/settings.json