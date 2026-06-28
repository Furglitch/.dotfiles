local home = os.getenv("HOME")

-- Environment Variables
hl.config({
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
        enforce_permissions = true
    },
    debug = {
        disable_logs = false
    },
    misc = {
        disable_autoreload = false,
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        font_family = "Ubuntu",
        animate_manual_resizes = false,
        animate_mouse_windowdragging = false
    }
})
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("HYPRCURSOR_THEME", "catppuccin-mocha-dark-cursors")
hl.env("HYPRCURSOR_SIZE", "18")

-- Bind Variables
terminal = "ghostty"
files = "dolphin"
editor = "code"
browser = "firefox"
menu = "vicinae open"
menuClipboard = "vicinae vicinae://launch/clipboard/history"
menuEmoji = "vicinae vicinae://launch/core/search-emojis"
local screenshotPath = home .. "/Pictures/Screenshots"
local screenshotFile = "hyprshot_" .. os.date("%Y-%m-%d_%H-%M-%S") .. ".png"
screenshot = "hyprshot --freeze -f " .. screenshotFile .. " -o " .. screenshotPath .. " -m "

-- Color Palette
catppuccin = ({
    mocha = {
        rosewater = "rgb(f5e0dc)",
        flamingo = "rgb(f2cdcd)",
        pink = "rgb(f5c2e7)",
        mauve = "rgb(cba6f7)",
        red = "rgb(f38ba8)",
        maroon = "rgb(eba0ac)",
        peach = "rgb(fab387)",
        yellow = "rgb(f9e2af)",
        green = "rgb(a6e3a1)",
        teal = "rgb(94e2d5)",
        sky = "rgb(89b4fa)",
        sapphire = "rgb(74c7ec)",
        blue = "rgb(89b4fa)",
        lavender = "rgb(b4befe)",
        text = "rgb(cdd6f4)",
        subtext1 = "rgb(bac2de)",
        subtext0 = "rgb(a6adc8)",
        overlay2 = "rgb(9399b2)",
        overlay1 = "rgb(7f849c)",
        overlay0 = "rgb(6c7086)",
        surface2 = "rgb(585b70)",
        surface1 = "rgb(45475a)",
        surface0 = "rgb(313244)",
        base = "rgb(1e1e2e)",
        mantle = "rgb(181825)",
        crust = "rgb(11111b)"
    }
})