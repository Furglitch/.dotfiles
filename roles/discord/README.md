# 💬 Discord Role

An Ansible role for installing [Discord](https://discord.com/) with [BetterDiscord](https://betterdiscord.app/) support and a custom configuration.

## 📦 What Gets Installed

### Packages
- `discord` - Discord client (via RPMFusion nonfree)
- `betterdiscordctl` - BetterDiscord installer/manager (via COPR `observeroftime/betterdiscordctl`)

### Configuration Files
- `~/.config/BetterDiscord/` - BetterDiscord configuration directory (symlinked)
- `~/.local/bin/betterdiscord-upgrade` - Script to upgrade BetterDiscord

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install RPMFusion repos]
    B --> C[Enable COPR repos]
    C --> D[Install discord + betterdiscordctl]
    D --> E[Symlink betterdiscord-upgrade]
    E --> F[Symlink BetterDiscord config]
    F --> G[✓ Discord Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style G fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

**Repositories required**:
- RPMFusion free + nonfree
- COPR: `observeroftime/betterdiscordctl`

## 🚀 Usage

```bash
ansible-playbook main.yml -t discord
```
