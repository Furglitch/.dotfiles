# 💻 Code Role

An Ansible role for installing and configuring [Visual Studio Code](https://code.visualstudio.com/) with extensions and a custom settings configuration.

## 📦 What Gets Installed

### Packages
- `code` - Visual Studio Code (via Microsoft yum repository)

### Extensions
- `Catppuccin.catppuccin-vsc-pack` - Catppuccin color theme pack
- `edwinhuish.better-comments-next` - Improved comment highlighting
- `oderwat.indent-rainbow` - Indentation colorization
- `tyriar.sort-lines` - Line sorting utilities
- `arthurlobo.easy-codesnap` - Code screenshot tool
- `bierner.color-info` - CSS color information
- `donjayamanne.git-extension-pack` - Git tooling pack
- `vscodevim.vim` - Vim keybindings
- `donjayamanne.python-extension-pack` - Python development tools
- `vscjava.vscode-java-pack` - Java development tools

### Configuration Files
- `~/.config/Code/User/settings.json` - Editor settings

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Configure Microsoft yum repo]
    B --> C[Install code]
    C --> D[Install extensions]
    D --> E[Ensure config directory]
    E --> F[Symlink settings.json]
    F --> G[✓ VS Code Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style G fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

**Variables** (override via `group_vars` or extra vars):
- `vscode_extensions` - list of extension IDs to install (defaults defined in `defaults/main.yml`)

## 🚀 Usage

```bash
ansible-playbook main.yml -t code
```
