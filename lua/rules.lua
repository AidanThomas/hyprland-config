local config = require("config")

hl.window_rule({
    match = { class = ".*" .. config.terminal .. ".*" },
    workspace = "name:terminal",
})

hl.window_rule({
    match = { class = "firefox" },
    workspace = "name:browser",
    opacity = "1.0 override",
    no_blur = true,
})

hl.window_rule({
    match = { class = "steam.*" },
    workspace = "name:steam",
})

hl.window_rule({
    match = { class = "nemo" },
    workspace = "name:files",
})

hl.window_rule({
    match = { class = "spotify" },
    workspace = "name:music",
})

hl.window_rule({
    match = { class = "discord" },
    monitor = config.monitors.vertical,
})

hl.layer_rule({
    match = { namespace = "hyprpicker" },
    no_anim = true,
})

hl.layer_rule({
    match = { namespace = "selection" },
    no_anim = true,
})
