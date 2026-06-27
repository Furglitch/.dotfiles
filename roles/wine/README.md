# 🍷 Wine Role

An Ansible role for installing [Wine](https://www.winehq.org/) — a compatibility layer for running Windows applications on Linux.

## 📦 What Gets Installed

### Packages
- `wine` - Windows compatibility layer

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install wine]
    B --> C[✓ Wine Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style C fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t wine
```
