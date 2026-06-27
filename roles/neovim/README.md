# ✏️ Neovim Role

An Ansible role for installing [Neovim](https://neovim.io/).

## 📦 What Gets Installed

### Packages
- `neovim` - Hyperextensible Vim-based text editor

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install neovim]
    B --> C[✓ Neovim Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style C fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t neovim
```
