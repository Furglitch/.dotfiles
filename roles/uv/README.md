# ⚡ uv Role

An Ansible role for installing [uv](https://github.com/astral-sh/uv) — an extremely fast Python package and project manager.

## 📦 What Gets Installed

### Packages
- `uv` - Fast Python package manager and installer

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install uv]
    B --> C[✓ uv Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style C fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t uv
```
