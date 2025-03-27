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

bash ~/scripts/modules/title.sh
bash ~/scripts/modules/packages.sh $silent $spin
bash ~/scripts/modules/symlinks.sh $silent
bash ~/scripts/modules/editor.sh
bash ~/scripts/modules/steam.sh $silent $spin
bash ~/scripts/modules/librewolf.sh $silent $spin
bash ~/scripts/modules/vscode.sh $silent $spin
bash ~/scripts/modules/reboot.sh

# TODO - Replace ~/ with ~/.dotfiles/