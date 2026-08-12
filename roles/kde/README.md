# 🐬 KDE Role

An Ansible role for installing KDE Plasma applications and utilities, including Dolphin file manager, Kvantum theme engine, and various Plasma components.

## 📦 What Gets Installed

### Packages
- `dolphin` - KDE file manager
- `ffmpegthumbs` - Video thumbnail support for Dolphin
- `kdegraphics-thumbnailers` - Image thumbnail support
- `kio-admin` - Admin file operations in Dolphin
- `kf6-baloo-file` - File indexing service
- `kvantum` - SVG-based Qt theme engine
- `qt6-qtwayland` - Wayland platform plugin
- `plasma-systemsettings` - KDE System Settings
- `redhat-menus` - System menu definitions used by KDE's application database
- `kwalletmanager5` - KWallet manager
- `kinfocenter` - System information viewer
- `plasma-pa` - PulseAudio/PipeWire volume control
- `kde-partitionmanager` - Disk partition manager
- `ark` - Archive manager
- `plasma-nm` - Network Manager applet
- `plasma-systemmonitor` - System resource monitor

### Configuration Files
- `~/.config/kdeglobals` - KDE global theme settings
- `~/.config/dolphinrc` - Dolphin configuration
- `~/.config/mimeapps.list` - File type associations
- `~/.config/Kvantum/kvantum.kvconfig` - Kvantum theme config
- `~/.config/Kvantum/catppuccin-mocha-sky/` - Catppuccin Mocha theme (cloned)

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[plasma-systemsettings.yml]
    A --> C[kwalletmanager5.yml]
    A --> D[dolphin.yml]
    A --> E[kvantum.yml]
    A --> F[kinfocenter.yml]
    A --> G[plasma-pa.yml]
    A --> H[kde-partitionmanager.yml]
    A --> I[ark.yml]
    A --> J[plasma-nm.yml]
    A --> K[plasma-systemmonitor.yml]
    A --> L[Symlink KDE config files]
    D --> M[Install + configure Dolphin]
    E --> N[Install Kvantum\nClone Catppuccin theme]
    L --> O[✓ KDE Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style O fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t kde
```
