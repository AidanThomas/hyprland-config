require("modules.binds")
require("modules.monitors")
require("modules.options")
require("modules.rules")
require("modules.workspaces")

-- Auto start
hl.on("hyprland.start", function()
    hl.exec_cmd("eww open statusbar")
    hl.exec_cmd("swaync")
end)

-- Env
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
