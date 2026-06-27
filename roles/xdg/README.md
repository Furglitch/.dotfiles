# 🌐 XDG Role

An Ansible role for installing XDG utilities and configuring the [xdg-desktop-portal-hyprland](https://github.com/hyprwm/xdg-desktop-portal-hyprland) for Wayland app integration.

## 📦 What Gets Installed

### Packages
- `xdg-utils` - XDG command-line tools
- `xdg-desktop-portal-hyprland` - XDG desktop portal backend for Hyprland (via COPR `lionheartp/Hyprland`)

### Configuration Files
- `~/.config/xdg-desktop-portal/` - Portal configuration (symlinked)
  - `portals.conf` - Portal backend selection

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install xdg-utils]
    B --> C[Enable COPR lionheartp/Hyprland]
    C --> D[Install xdg-desktop-portal-hyprland]
    D --> E[Ensure config directory]
    E --> F[Symlink portal config]
    F --> G[✓ XDG Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style G fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

**Repositories required**:
- COPR: `lionheartp/Hyprland`

## 🚀 Usage

```bash
ansible-playbook main.yml -t xdg
```