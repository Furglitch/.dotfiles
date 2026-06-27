# ☕ Java Role

An Ansible role for installing [Eclipse Temurin](https://adoptium.net/) JDKs via the Adoptium repository.

## 📦 What Gets Installed

### Packages
- `temurin-17-jdk` - Eclipse Temurin JDK 17 (LTS)
- `temurin-21-jdk` - Eclipse Temurin JDK 21 (LTS)

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Install adoptium-temurin-java-repository]
    B --> C[Enable Fedora third-party repos]
    C --> D[Install temurin-17-jdk + temurin-21-jdk]
    D --> E[✓ Java Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style E fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
ansible-playbook main.yml -t java
```
