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