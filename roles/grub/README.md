# 🥾 GRUB Role

An Ansible role for installing GRUB utilities and deploying a custom boot theme.

## 📦 What Gets Installed

### Packages
- `grub2-tools` - GRUB2 management utilities
- `os-prober` - Detects other operating systems for multi-boot

### Theme Files
- `/boot/grub2/themes/elegant-modified/` - Custom GRUB theme (deployed to boot partition)

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install grub2-tools + os-prober]
    B --> C[Create /boot/grub2/themes directory]
    C --> D[Copy elegant-modified theme]
    D --> E[Set GRUB_THEME in /etc/default/grub]
    E --> F[Handler: rebuild GRUB config]
    F --> G[✓ GRUB Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style G fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

**Handlers** (`handlers/main.yml`):
- `grub | rebuild config` - Triggered on package install, theme copy, or config change

## 🚀 Usage

```bash
ansible-playbook main.yml -t grub
```
