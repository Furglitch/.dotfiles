# 🐍 Python Role

An Ansible role for installing Python 3.

## 📦 What Gets Installed

### Packages
- `python3.13` - Python 3.13 interpreter

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install python3.13]
    B --> C[✓ Python Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style C fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t python3-13
```
