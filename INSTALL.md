# Installation

**Note:** These scripts are meant to be installed on a fresh ArchLinux installation.

## `archinstall`

Starting with a fresh ArchLinux installation, instead of typing `archinstall`, running the included 'archinstall' script will process the command with the preset configuration json.

```bash
/bin/bash -c "$(curl -L https://raw.githubusercontent.com/Furglitch/.dotfiles/refactor/bin/archinstall)"
```

## Playbook

After a complete installation, running the included 'install' script will proceed through every role and perform the dotfiles installation.

```bash
/bin/bash -c "$(curl -LH 'Cache-Control: no-cache' https://raw.githubusercontent.com/Furglitch/.dotfiles/refactor/bin/install)"
```
