local hypr_config_dir = os.getenv("HOME") .. "/.config/hypr"

package.path = table.concat({
    hypr_config_dir .. "/?.lua",
    hypr_config_dir .. "/?/init.lua",
    hypr_config_dir .. "/lua/?.lua",
    hypr_config_dir .. "/lua/?/init.lua",
    package.path,
}, ";")

require("animations")
require("binds")
require("monitors")
require("options")
require("rules")
require("workspaces")

-- Auto start
hl.on("hyprland.start", function()
    hl.exec_cmd("eww open statusbar")
    hl.exec_cmd("swaync")
    hl.exec_cmd("systemctl --user start hyprpaper")
end)

-- Env
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
