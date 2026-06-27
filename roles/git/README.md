# 🔧 Git Role

An Ansible role for installing Git and the [GitHub CLI](https://cli.github.com/).

## 📦 What Gets Installed

### Packages
- `git` - Distributed version control system
- `gh` - GitHub CLI

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install git + gh]
    B --> C[✓ Git Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style C fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t git
```
