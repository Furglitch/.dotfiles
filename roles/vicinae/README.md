# 🏘️ Vicinae Role

An Ansible role for installing and configuring [Vicinae](https://codeberg.org/quadratech/vicinae) — a neighborhood/network utility.

## 📦 What Gets Installed

### Packages
- `vicinae` - Network neighborhood utility (via COPR `quadratech188/vicinae`)

### Configuration Files
- `~/.config/vicinae/` - Vicinae configuration directory (symlinked)

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Enable COPR quadratech188/vicinae]
    B --> C[Install vicinae]
    C --> D[Ensure .config/vicinae directory]
    D --> E[Symlink config directory]
    E --> F[✓ Vicinae Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style F fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t vicinae
```