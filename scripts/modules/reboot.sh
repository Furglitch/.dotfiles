#!/bin/bash

echo -e "\033[1;32m.dotfiles script complete!\033[0m"
read -n 1 -p "Would you like to reboot now to apply themes? [y/n]: " reboot
if [ "$reboot" == "y" ]; then
    reboot
fi