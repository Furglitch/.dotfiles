hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",
        follow_mouse = 1,
        force_no_accel = true,
        sensitivity = 0.0,
        numlock_by_default = true
    }
})

-- Keybinds
local modMain  = "SUPER + "
local modAudio = "XF86Audio"

-- Active Window
hl.bind(modMain .. "mouse:272", hl.dsp.window.drag())                       -- Drag Window
hl.bind(modMain .. "mouse:273", hl.dsp.window.resize())                     -- Resize Window
hl.bind(modMain .. "Left", hl.dsp.window.swap({ direction = "l" }))         -- Move Window Left
hl.bind(modMain .. "Right", hl.dsp.window.swap({ direction = "r" }))        -- Move Window Right
hl.bind(modMain .. "Up", hl.dsp.window.swap({ direction = "u" }))           -- Move Window Up
hl.bind(modMain .. "Down", hl.dsp.window.swap({ direction = "d" }))         -- Move Window Down
hl.bind(modMain .. "C", hl.dsp.window.close())                              -- Close Window
hl.bind(modMain .. "F", hl.dsp.window.fullscreen("fullscreen", "toggle"))   -- Toggle Window Fullscreen
hl.bind(modMain .. "I", hl.dsp.window.pin("toggle"))                        -- Toggle Window Pin
hl.bind(modMain .. "V", hl.dsp.window.float("toggle"))                      -- Toggle Window Floating
hl.bind(modMain .. "M", hl.dsp.exec_cmd("hyprshutdown"))                    -- Logout Hyprland

-- Open Application
hl.bind(modMain .. "q", hl.dsp.exec_cmd(terminal))                          -- Open Terminal
hl.bind(modMain .. "e", hl.dsp.exec_cmd(files))                             -- Open File Manager
hl.bind(modMain .. "b", hl.dsp.exec_cmd(browser))                           -- Open Web Browser
hl.bind(modMain .. "z", hl.dsp.exec_cmd(editor))                            -- Open Code Editor
hl.bind(modMain .. "r", hl.dsp.exec_cmd(menu))                              -- Open Application Launcher
hl.bind(modMain .. "0x002e", hl.dsp.exec_cmd(menuClipboard))                -- Open Clipboard Manager
hl.bind(modMain .. "0x002c", hl.dsp.exec_cmd(menuEmoji))                    -- Open Emoji Picker

-- Window Workspace Move
hl.bind(modMain .. "SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))     -- Move Window to Workspace 1
hl.bind(modMain .. "SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))     -- Move Window to Workspace 2
hl.bind(modMain .. "SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))     -- Move Window to Workspace 3
hl.bind(modMain .. "SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))     -- Move Window to Workspace 4
hl.bind(modMain .. "SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))     -- Move Window to Workspace 5
hl.bind(modMain .. "SHIFT + 6", hl.dsp.window.move({ workspace = "6" }))     -- Move Window to Workspace 6
hl.bind(modMain .. "SHIFT + 7", hl.dsp.window.move({ workspace = "7" }))     -- Move Window to Workspace 7
hl.bind(modMain .. "SHIFT + 8", hl.dsp.window.move({ workspace = "8" }))     -- Move Window to Workspace 8
hl.bind(modMain .. "SHIFT + 9", hl.dsp.window.move({ workspace = "9" }))     -- Move Window to Workspace 9
hl.bind(modMain .. "SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))    -- Move Window to Workspace 10
hl.bind(modMain .. "SHIFT + S", hl.dsp.window.move({ workspace = "special:scratch" }))    -- Move Window to Scratchpad

-- Workspace Focus
hl.bind(modMain .. "1", hl.dsp.focus({ workspace = "1" }))                  -- Focus Workspace 1
hl.bind(modMain .. "2", hl.dsp.focus({ workspace = "2" }))                  -- Focus Workspace 2
hl.bind(modMain .. "3", hl.dsp.focus({ workspace = "3" }))                  -- Focus Workspace 3
hl.bind(modMain .. "4", hl.dsp.focus({ workspace = "4" }))                  -- Focus Workspace 4
hl.bind(modMain .. "5", hl.dsp.focus({ workspace = "5" }))                  -- Focus Workspace 5
hl.bind(modMain .. "6", hl.dsp.focus({ workspace = "6" }))                  -- Focus Workspace 6
hl.bind(modMain .. "7", hl.dsp.focus({ workspace = "7" }))                  -- Focus Workspace 7
hl.bind(modMain .. "8", hl.dsp.focus({ workspace = "8" }))                  -- Focus Workspace 8
hl.bind(modMain .. "9", hl.dsp.focus({ workspace = "9" }))                  -- Focus Workspace 9
hl.bind(modMain .. "0", hl.dsp.focus({ workspace = "10" }))                 -- Focus Workspace 10
hl.bind(modMain .. "S", hl.dsp.workspace.toggle_special("scratch"))         -- Toggle Scratchpad

hl.bind(modMain .. "Tab", hl.dsp.focus({ workspace = "previous" }))         -- Focus Last Workspace
hl.bind(modMain .. "mouse_down", hl.dsp.focus({ workspace = "+1" }))        -- Focus Next Workspace
hl.bind(modMain .. "mouse_up", hl.dsp.focus({ workspace = "-1" }))          -- Focus Previous Workspace

-- Audio
hl.bind(modAudio .. "RaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"))    -- Volume Up
hl.bind(modAudio .. "LowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))    -- Volume Down
hl.bind(modAudio .. "Mute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))          -- Toggle Mute
hl.bind(modAudio .. "Play", hl.dsp.exec_cmd("playerctl play-pause"))                                -- Play/Pause Media
hl.bind(modAudio .. "Pause", hl.dsp.exec_cmd("playerctl play-pause"))                                -- Play/Pause Media
hl.bind(modAudio .. "Stop", hl.dsp.exec_cmd("playerctl stop"))                                      -- Stop Media
hl.bind(modAudio .. "Prev", hl.dsp.exec_cmd("playerctl previous"))                                  -- Previous Track
hl.bind(modAudio .. "Next", hl.dsp.exec_cmd("playerctl next"))                                      -- Next Track
hl.bind(modAudio .. "Rewind", hl.dsp.exec_cmd("playerctl position 5-"))                             -- Rewind Media
hl.bind(modAudio .. "Forward", hl.dsp.exec_cmd("playerctl position 5+"))                            -- Forward Media

-- Screenshots
hl.bind("PRINT", hl.dsp.exec_cmd(screenshot .. "region"))                   -- Take Screenshot - Region
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd(screenshot .. "window"))           -- Take Screenshot - Window
hl.bind("CTRL + PRINT", hl.dsp.exec_cmd(screenshot .. "output"))            -- Take Screenshot - Fullscreen