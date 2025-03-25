# .dotfiles
dotfiles w/ installer for ArchLinux and Hyprland

**OS:** ArchLinux<br>
**WM:** [hyprland](https://github.com/hyprwm/Hyprland)<br>
**Theme:** [Catppuccin Mocha](https://github.com/catppuccin/catppuccin)<br>
**Terminal:** [Kitty](https://github.com/kovidgoyal/kitty)<br>

### Installation
> This script assumes you installed Arch via [archinstall](https://wiki.archlinux.org/title/Archinstall) with the following parameters<br>
> **Profile:** Desktop - Hyprland<br>
> **Greeter:** SDDM<br>
> **Network Config:** NetworkManager<br>
> **Audio:** Pipewire<br>
> but will also re/install those dependencies as needed.<br>

Install via git clone:
```bash
git clone git@github.com:furglitch/.dotfiles.git $HOME\.dotfiles
```

Run the installer script
```bash
bash ~/scripts/install.sh
```

### Attributions

[catppuccin/kitty](https://github.com/catppuccin/kitty)            - kitty theme<br>
[catppuccin/dunst](https://github.com/catppuccin/dunst)            - dunst theme<br>
[starship/starship](https://github.com/starship/starship)           - starship theme*<br>
[PROxZIMA/.dotfiles](https://github.com/PROxZIMA/.dotfiles)          - wofi config*<br>
[linuxmobile/hyprland-dots](https://github.com/linuxmobile/hyprland-dots)   - hyprland animations<br>

<sup>* modifications made</sup>