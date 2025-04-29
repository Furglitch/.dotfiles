# .dotfiles
> **⚠️ Note:** Currently under development. Files are subject to change and may not work as intended.

**Theme:** [Catppuccin Mocha](https://github.com/catppuccin/catppuccin)<br>
**OS:** ArchLinux<br>
**WM:** [hyprland](https://github.com/hyprwm/Hyprland)<br>
**Terminal:** [Kitty](https://github.com/kovidgoyal/kitty)<br>
**Greeter:** [SDDM](https://github.com/sddm/sddm)<br>
**Package Manager:** [pacman](https://gitlab.archlinux.org/pacman/pacman) + [yay](https://aur.archlinux.org/packages/yay)

## Installation
> This script assumes you installed Arch via [archinstall](https://wiki.archlinux.org/title/Archinstall) with the following parameters, or a manual install with similar setup<br>
>
> * **Bootloader:** GRUB
> * **Profile:** Desktop - Hyprland<br>
> * **Greeter:** SDDM<br>
> * **Audio:** Pipewire<br>
> * **Additional Packages:** git<br>
> * **Network Config:** NetworkManager<br>
> * **Optional Repositories:** multilib<br>
>
> but will also re/install those dependencies as needed.<br>

Install via git clone:
```bash
git clone https://github.com/furglitch/.dotfiles.git $HOME/.dotfiles
```

Run the installer script
```bash
chmod u+x -R $HOME/.dotfiles/scripts/
$HOME/.dotfiles/scripts/install.sh [--silent]
```

## Attributions
[catppuccin/kitty](https://github.com/catppuccin/kitty)            - kitty theme<br>
[catppuccin/dunst](https://github.com/catppuccin/dunst)            - dunst theme<br>
[starship/starship](https://github.com/starship/starship)           - starship theme\*<br>
[PROxZIMA/.dotfiles](https://github.com/PROxZIMA/.dotfiles)          - wofi config\*<br>
[linuxmobile/hyprland-dots](https://github.com/linuxmobile/hyprland-dots)   - hyprland animations<br>
[sejjy/mechabar](https://github.com/sejjy/mechabar/tree/animated) - waybar (base - animated branch)\*<br>
<sup>\* - modifications made</sup>

## License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).