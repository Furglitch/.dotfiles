# 🐾 Furglitch Dotfiles

An Ansible-based dotfiles and system configuration project for Fedora with Hyprland and KDE Plasma.

## 📋 Prerequisites

- Fedora (tested on Fedora 44)
- `git`, `ansible`, `python3-dnf` (installed automatically by the bootstrap script)
- An Ansible Vault password (for encrypted secrets such as fstab device paths and API keys)

## 🚀 Quick Start

```bash
/bin/bash -c "$(curl -LH 'Cache-Control: no-cache' https://raw.githubusercontent.com/Furglitch/.dotfiles/refs/heads/main/install)"
```

The install script will:
1. Install `git`, `ansible`, and `python3-dnf` via DNF
2. Clone this repo to `~/.dotfiles` (or pull latest if it exists)
3. Prompt for Ansible Vault password and sudo password
4. Install Ansible collections (`community.general`)
5. Run `main.yml` against localhost

## ⚙️ Manual Usage

```bash
# Clone the repo
git clone https://github.com/Furglitch/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Install collections
ansible-galaxy collection install -r requirements.yml

# Run all roles
ansible-playbook main.yml --vault-password-file ~/.ansible/vault_pass -K

# Run a specific role by tag
ansible-playbook main.yml -t ghostty --vault-password-file ~/.ansible/vault_pass -K

# Exclude roles
ansible-playbook main.yml -e 'exclude_roles=["fstab","steam"]' --vault-password-file ~/.ansible/vault_pass -K
```

## 📦 Roles

| Role | Description | Tag |
|------|-------------|-----|
| [code](roles/code/README.md) | Visual Studio Code + extensions | `code` |
| [discord](roles/discord/README.md) | Discord + BetterDiscord | `discord` |
| [docker](roles/docker/README.md) | Docker (moby-engine) | `docker` |
| [firefox](roles/firefox/README.md) | Firefox + extensions, search, bookmarks | `firefox` |
| [fstab](roles/fstab/README.md) | `/etc/fstab` entry management | `fstab` |
| [ghostty](roles/ghostty/README.md) | Ghostty terminal + zsh + starship + fastfetch | `ghostty` |
| [gimp](roles/gimp/README.md) | GIMP + ImageMagick + upscayl | `gimp` |
| [git](roles/git/README.md) | Git + GitHub CLI | `git` |
| [grub](roles/grub/README.md) | GRUB2 with custom theme | `grub` |
| [heroic-launcher](roles/heroic-launcher/README.md) | Heroic Games Launcher | `heroic-games-launcher-bin` |
| [hyprland](roles/hyprland/README.md) | Hyprland WM + waypaper + wayle + hyprcursor | `hyprland` |
| [java](roles/java/README.md) | Temurin JDK 17 + 21 | `java` |
| [kde](roles/kde/README.md) | KDE Plasma apps + Kvantum + Dolphin | `kde` |
| [neovim](roles/neovim/README.md) | Neovim | `neovim` |
| [pre-commit](roles/pre-commit/README.md) | pre-commit framework | `pre-commit` |
| [prismlauncher](roles/prismlauncher/README.md) | Prism Launcher + Catppuccin themes | `prismlauncher` |
| [python](roles/python/README.md) | Python 3.13 | `python3-13` |
| [ruby](roles/ruby/README.md) | Ruby development headers | `ruby-devel` |
| [sddm](roles/sddm/README.md) | SDDM display manager + SilentSDDM theme | `sddm` |
| [ssh](roles/ssh/README.md) | OpenSSH + sshpass + sshfs | `ssh` |
| [steam](roles/steam/README.md) | Steam + Millennium mod loader | `steam` |
| [telegram](roles/telegram/README.md) | Telegram Desktop | `telegram-desktop` |
| [uv](roles/uv/README.md) | uv Python package manager | `uv` |
| [vicinae](roles/vicinae/README.md) | Vicinae network utility | `vicinae` |
| [vlc](roles/vlc/README.md) | VLC media player | `vlc` |
| [wine](roles/wine/README.md) | Wine compatibility layer | `wine` |
| [xdg](roles/xdg/README.md) | XDG utils + desktop portal for Hyprland | `xdg` |

## 🔒 Secrets

Sensitive values (fstab device identifiers, API tokens) are encrypted with [Ansible Vault](https://docs.ansible.com/ansible/latest/vault_guide/index.html). The vault password file is expected at `~/.ansible/vault_pass`.

To edit a secret:
```bash
ansible-vault edit group_vars/all.yml
```

## 🗂️ Project Structure

```
.
├── install               # Bootstrap script
├── main.yml              # Main playbook
├── ansible.cfg           # Ansible configuration
├── requirements.yml      # Ansible collection dependencies
├── group_vars/
│   └── all.yml           # Global variables and role list
├── pre_tasks/            # Tasks run before roles (user detection, PATH)
└── roles/                # All roles (one directory per role)
```
