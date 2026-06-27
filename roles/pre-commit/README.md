# 🔒 Pre-commit Role

An Ansible role for installing [pre-commit](https://pre-commit.com/) — a framework for managing and maintaining multi-language pre-commit hooks.

## 📦 What Gets Installed

### Packages
- `pre-commit` - Git hook management framework

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install pre-commit]
    B --> C[✓ pre-commit Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style C fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t pre-commit
```

## 📝 Notes

This repo enforces [Conventional Commits](https://www.conventionalcommits.org/) via `.pre-commit-config.yaml`. After installation, run `pre-commit install --hook-type commit-msg` in any repo to activate the hooks.
