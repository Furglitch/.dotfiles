# hypr

Hyprland Wayland compositor with full ecosystem.

## Process

```mermaid
flowchart TD
    A[Start] --> B[hyprland: Install & configure Hyprland]
    B --> C[hyprcursor: Install cursor theme]
    C --> D[hyprpanel: Install & configure AGS panel]
    D --> E[hyprpaper: Install wallpaper manager]
    E --> F[hyprpolkit: Install polkit agent]
    F --> G[hyprshot: Install screenshot tools]
```

## Components

- **hyprland**: Core compositor with templated configs
- **hyprcursor**: Catppuccin cursor theme
- **hyprpanel**: AGS-based status bar
- **hyprpaper**: Wallpaper daemon
- **hyprpolkit**: Authentication agent
- **hyprshot**: Screenshot utilities (grim + slurp)
