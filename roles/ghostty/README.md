# 👻 Ghostty Role

An Ansible role for installing and configuring the [Ghostty](https://ghostty.org/) terminal emulator along with a full shell environment: zsh, [Starship](https://starship.rs/) prompt, and [fastfetch](https://github.com/fastfetch-cli/fastfetch).

## 📦 What Gets Installed

### Packages
- `ghostty` - GPU-accelerated terminal emulator (via COPR `scottames/ghostty`)
- `zsh` - Z shell
- `fzf` - Fuzzy finder
- `eza` - Modern `ls` replacement
- `thefuck` - Command correction tool
- `bat` - `cat` with syntax highlighting
- `fastfetch` - System information display
- `wget2` - Wget modernized

### Installers
- `starship` - Cross-shell prompt (installed via official install script)

### Configuration Files
- `~/.config/ghostty/` - Ghostty configuration and themes
- `~/.zshrc` - Zsh configuration (symlinked)
- `~/.config/starship/starship.toml` - Starship prompt config (symlinked)
- `~/.config/fastfetch/` - Fastfetch configuration (symlinked)

## 🏗️ Role Architecture

```mermaid
flowchart TD
    A[main.yml] --> B[Enable COPR scottames/ghostty]
    B --> C[Install packages]
    C --> D[Symlink ghostty config]
    D --> E[Install starship via curl]
    E --> F[fastfetch.yml]
    E --> G[zsh.yml]
    E --> H[starship.yml]
    F --> I[Symlink fastfetch config]
    G --> J[Symlink .zshrc\nSet default shell to zsh]
    H --> K[Symlink starship.toml]
    I & J & K --> L[✓ Ghostty Ready]

    style A fill:#89b4fa,stroke:#1e1e2e,color:#1e1e2e
    style L fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
```

## 📚 Dependencies

No role dependencies.

## 🚀 Usage

```bash
# Full role
ansible-playbook main.yml -t ghostty

# Individual sub-components
ansible-playbook main.yml -t fastfetch
ansible-playbook main.yml -t zsh
ansible-playbook main.yml -t starship
```
