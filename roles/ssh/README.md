# 🔑 SSH Role

An Ansible role for installing SSH client tools.

## 📦 What Gets Installed

### Packages
- `openssh` - OpenSSH client and utilities
- `sshpass` - Non-interactive SSH password authentication
- `fuse-sshfs` - Mount remote filesystems over SSH via FUSE

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install openssh + sshpass + fuse-sshfs]
    B --> C[✓ SSH Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style C fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t ssh
```
