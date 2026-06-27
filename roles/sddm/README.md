# 🔐 SDDM Role

An Ansible role for installing and configuring [SDDM](https://github.com/sddm/sddm) display manager with the [SilentSDDM](https://github.com/nicehash/SilentSDDM) theme.

## 📦 What Gets Installed

### Packages
- `sddm` - Simple Desktop Display Manager
- `sddm-conf` - SDDM configuration tool
- `sddm-wayland-miriway` - Wayland compositor backend for SDDM
- `plymouth` - Graphical boot splash
- `qt6-qtsvg` - SVG support for Qt6
- `qt6-qtvirtualkeyboard` - On-screen keyboard
- `qt6-qtmultimedia` - Multimedia support (video backgrounds)
- `qt6-qtimageformats` - Extended image format support

### Theme Files
- `/usr/share/sddm/themes/SilentSDDM/` - SilentSDDM theme (full theme directory)
- `/etc/sddm.conf.d/10-theme.conf` - SDDM theme configuration

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install SDDM + Qt6 packages]
    B --> C[Remove existing SilentSDDM theme]
    C --> D[Copy SilentSDDM theme files]
    D --> E[Write /etc/sddm.conf.d/10-theme.conf]
    E --> F[Symlink default.target to graphical.target]
    F --> G[Enable sddm.service]
    G --> H[Apply user avatar]
    H --> I[✓ SDDM Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style I fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

**Variables** (`defaults/main.yml`):
- `sddm_theme_name` - Theme name (`SilentSDDM`)
- `sddm_theme_dir` - Theme installation path
- `sddm_packages` - List of packages to install

## 🚀 Usage

```bash
ansible-playbook main.yml -t sddm
```

## 📝 Notes

- The theme directory is fully replaced on each run to ensure clean state.
- Multiple background presets are bundled (`furglitch`, `rei`, `silvia`, `ken`, `mountain`, etc.).
- The active background is configured in `configs/furglitch.conf`.
