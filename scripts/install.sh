#!/bin/bash
OPTIND=1
silent=false
spin='⣾⣽⣻⢿⡿⣟⣯⣷' # spinner from rickd-uk

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -h|--help)
            echo "Usage: $0 [-h|--help] [-s|--silent]"
            exit 0
            ;;
        -s|--silent)
            silent=true
            echo -e "\033 Silent mode enabled."
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
    shift
done

$HOME/.dotfiles/scripts/modules/title.sh
$HOME/.dotfiles/scripts/modules/packages.sh $silent $spin
$HOME/.dotfiles/scripts/modules/steam.sh $silent $spin
$HOME/.dotfiles/scripts/modules/librewolf.sh $silent $spin
$HOME/.dotfiles/scripts/modules/vscode.sh $silent $spin
$HOME/.dotfiles/scripts/modules/symlinks.sh $silent
$HOME/.dotfiles/scripts/modules/editor.sh $silent
$HOME/.dotfiles/scripts/modules/reboot.sh