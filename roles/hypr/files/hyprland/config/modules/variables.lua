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
hl.env("HYPRCURSOR_THEME", "xcursor-simp1e-tokyo-night")
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
tokyonight = {
        rosewater = "rgb(c0caf5)",
        flamingo = "rgb(a9b1d6)",
        pink = "rgb(bb9af7)",
        mauve = "rgb(9d7cd8)",
        red = "rgb(f7768e)",
        maroon = "rgb(f7768e)",
        peach = "rgb(ff9e64)",
        yellow = "rgb(e0af68)",
        green = "rgb(9ece6a)",
        teal = "rgb(7dcfff)",
        sky = "rgb(7dcfff)",
        sapphire = "rgb(7aa2f7)",
        blue = "rgb(7aa2f7)",
        lavender = "rgb(bb9af7)",
        text = "rgb(c0caf5)",
        subtext1 = "rgb(a9b1d6)",
        subtext0 = "rgb(9aa5ce)",
        overlay2 = "rgb(565f89)",
        overlay1 = "rgb(414868)",
        overlay0 = "rgb(292e42)",
        surface2 = "rgb(24283b)",
        surface1 = "rgb(1f2335)",
        surface0 = "rgb(1a1b26)",
        base = "rgb(1a1b26)",
        mantle = "rgb(16161e)",
        crust = "rgb(0f1117)"
}
