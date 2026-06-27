# 🎮 Steam Role

An Ansible role for installing [Steam](https://store.steampowered.com/) and [Millennium](https://steambrew.app/) — the Steam mod loader.

## 📦 What Gets Installed

### Packages
- `fedora-workstation-repositories` - Enables Fedora workstation third-party repos
- `steam` - Steam gaming platform (via RPMFusion nonfree steam repo)

### Installers
- `millennium` - Steam mod loader (installed via official install script)

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install fedora-workstation-repositories]
    B --> C[Install RPMFusion repos]
    C --> D[Enable rpmfusion-nonfree-steam repo]
    D --> E[Install steam]
    E --> F[Install Millennium via curl installer]
    F --> G[✓ Steam Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style G fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

**Repositories required**:
- RPMFusion free + nonfree
- rpmfusion-nonfree-steam (enabled explicitly via `dnf config-manager`)

## 🚀 Usage

```bash
ansible-playbook main.yml -t steam
```
