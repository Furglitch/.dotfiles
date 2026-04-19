# paru

AUR helper for Arch Linux.

## Process

```mermaid
flowchart TD
    A[Start] --> B{Is paru installed?}
    B -->|No| G[Clone fresh repository]
    B -->|Yes| D{Is paru up to date?}
    D -->|Yes| F[Skip - already up to date]
    D -->|No| E[Try paru -S paru --noconfirm]
    E --> C{Did self-update succeed?}
    C -->|No| G[Clone fresh repository]
    G --> H[Build and install with makepkg]
    H --> I[Clean up /tmp/paru]
```