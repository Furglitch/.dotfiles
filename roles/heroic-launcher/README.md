# 🎮 Heroic Launcher Role

An Ansible role for installing the [Heroic Games Launcher](https://heroicgameslauncher.com/) — an open-source launcher for Epic Games, GOG, and Amazon Games.

## 📦 What Gets Installed

### Packages
- `heroic-games-launcher-bin` - Heroic Games Launcher (via COPR `atim/heroic-games-launcher`)

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Enable COPR atim/heroic-games-launcher]
    B --> C[Install heroic-games-launcher-bin]
    C --> D[✓ Heroic Launcher Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style D fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t heroic-games-launcher-bin
```
