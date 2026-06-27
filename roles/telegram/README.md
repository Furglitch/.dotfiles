# ✈️ Telegram Role

An Ansible role for installing [Telegram Desktop](https://desktop.telegram.org/).

## 📦 What Gets Installed

### Packages
- `telegram-desktop` - Telegram messaging client (via RPMFusion nonfree)

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install RPMFusion repos]
    B --> C[Install telegram-desktop]
    C --> D[✓ Telegram Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style D fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

**Repositories required**:
- RPMFusion free + nonfree

## 🚀 Usage

```bash
ansible-playbook main.yml -t telegram-desktop
```
