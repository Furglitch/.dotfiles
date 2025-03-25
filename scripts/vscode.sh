#!/bin/bash

echo "Installing VSCode extensions..."
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
for extension in "${extensions[@]}"; do
    code --install-extension "$extension"
done

echo "Configuring VSCode..."
mkdir -p $HOME/.config/Code/User
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
}" > $HOME/.config/Code/User/settings.json