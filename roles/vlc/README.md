# 📺 VLC Role

An Ansible role for installing [VLC media player](https://www.videolan.org/vlc/).

## 📦 What Gets Installed

### Packages
- `vlc` - Cross-platform multimedia player

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install vlc]
    B --> C[✓ VLC Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style C fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t vlc
```
