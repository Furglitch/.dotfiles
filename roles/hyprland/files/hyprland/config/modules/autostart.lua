hl.on("hyprland.start", function()
    hl.exec_cmd("systemctl --user start hyprpolkitagent.service")
    hl.exec_cmd("wl-paste --watch cliphist store")
end)

-- Desktop
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpanel")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("waypaper --random")
    hl.exec_cmd("vicinae server")
end)

-- Applications

hl.on("hyprland.start", function()
    hl.exec_cmd("Telegram")
    hl.exec_cmd("discord")
end)

hl.window_rule({
    match = { initial_class = ".*telegram.desktop" },
    workspace = "5 silent",
    no_initial_focus = true
})

hl.window_rule({
    match = { initial_class = "discord" },
    workspace = "5 silent",
    no_initial_focus = true
})