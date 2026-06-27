hl.monitor({
    output = "desc:AOC Q27G4ZDR RK2RCUA004294",
    mode = "2560x1440@240",
    position = "auto-right",
    scale = 1
})
hl.monitor({
    output = "desc:AOC Q27G4ZDR RK2RBJA004944",
    mode = "2560x1440@240",
    position = "auto-left",
    scale = 1
})

hl.window_rule({
    name = "supress-maximize",
    match = {
        class = ".*"
    },
    suppress_event = "maximize"
})

hl.window_rule({
    name = "no-empty-focus",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false
    },
    no_focus = true
})

hl.workspace_rule({ workspace = "1", monitor = "desc:AOC Q27G4ZDR RK2RCUA004294", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "desc:AOC Q27G4ZDR RK2RCUA004294", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "desc:AOC Q27G4ZDR RK2RCUA004294", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "desc:AOC Q27G4ZDR RK2RCUA004294", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "desc:AOC Q27G4ZDR RK2RCUA004294", persistent = true })
hl.workspace_rule({ workspace = "6", monitor = "desc:AOC Q27G4ZDR RK2RBJA004944", persistent = true })
hl.workspace_rule({ workspace = "7", monitor = "desc:AOC Q27G4ZDR RK2RBJA004944", persistent = true })
hl.workspace_rule({ workspace = "8", monitor = "desc:AOC Q27G4ZDR RK2RBJA004944", persistent = true })
hl.workspace_rule({ workspace = "9", monitor = "desc:AOC Q27G4ZDR RK2RBJA004944", persistent = true })
hl.workspace_rule({ workspace = "10", monitor = "desc:AOC Q27G4ZDR RK2RBJA004944", persistent = true })

hl.config({
    decoration = {
        rounding = 6,
        shadow = { enabled = false }
    },
    dwindle = {
        force_split = 0,
        preserve_split = true,
        smart_split = false
    }
})

hl.workspace_rule({
    workspace = "r[1-10]",
    no_border = true,
    gaps_in = 3,
    gaps_out = 6,
    layout = "dwindle",
})

hl.workspace_rule({
    workspace = "s[true]",
    no_border = true,
    gaps_in = 3,
    gaps_out = 6,
    layout = "dwindle",
})

hl.window_rule({
    name = "borders",
    match = {
        class = ".*"
    },
    border_size = 2,
    border_color = catppuccin.mocha.base .. " " .. catppuccin.mocha.crust,
})