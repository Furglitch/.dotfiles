# 💎 Ruby Role

An Ansible role for installing Ruby development headers.

## 📦 What Gets Installed

### Packages
- `ruby-devel` - Ruby development libraries and headers

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install ruby-devel]
    B --> C[✓ Ruby Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style C fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t ruby-devel
```
