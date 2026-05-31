local config = require("config")
local mod = config.mod

local binds = {
    { "XF86AudioRaiseVolume", hl.dsp.exec_cmd("~/.config/eww/scripts/audio --change-volume speakers up"),    { locked = true, repeating = true } },
    { "XF86AudioLowerVolume", hl.dsp.exec_cmd("~/.config/eww/scripts/audio --change-volume speakers down "), { locked = true, repeating = true } },
    { "XF86AudioMute",        hl.dsp.exec_cmd("~/.config/eww/scripts/audio --mute-speakers"),                { locked = true, repeating = true } },

    { "XF86AudioPlay",        hl.dsp.exec_cmd("playerctl -p spotify play-pause"),                            { locked = true } },
    { "XF86AudioNext",        hl.dsp.exec_cmd("playerctl -p spotify next"),                                  { locked = true } },
    { "XF86AudioPrev",        hl.dsp.exec_cmd("playerctl -p spotify previous"),                              { locked = true } }
}

-- "$mod + .."
local mod_binds = {
    { "RETURN",    hl.dsp.exec_cmd(config.terminal) },
    { "R",         hl.dsp.exec_cmd("rofi -show drun") },

    { "C",         hl.dsp.window.close() },
    { "F",         hl.dsp.window.fullscreen({ mode = 0 }) },
    { "M",         hl.dsp.window.fullscreen({ mode = 1 }) },
    { "S",         hl.dsp.window.float({ action = "toggle" }) },

    { "h",         hl.dsp.focus({ direction = "l" }) },
    { "j",         hl.dsp.focus({ direction = "d" }) },
    { "k",         hl.dsp.focus({ direction = "u" }) },
    { "l",         hl.dsp.focus({ direction = "r" }) },

    -- Mouse binds
    { "mouse:272", hl.dsp.window.drag(),                      { mouse = true } },
    { "mouse:273", hl.dsp.window.resize(),                    { mouse = true } },
}

-- "$mod + SHIFT + .."
local mod_shift_binds = {
    { "H", hl.dsp.window.move({ direction = "l" }) },
    { "J", hl.dsp.window.move({ direction = "d" }) },
    { "K", hl.dsp.window.move({ direction = "u" }) },
    { "L", hl.dsp.window.move({ direction = "r" }) },

    { "S", hl.dsp.exec_cmd("hyprshot -m region") }
}

---@param bind string
---@param dsp HL.Dispatcher | function
---@param opts? table
local function create_bind(bind, dsp, opts)
    hl.bind(bind, dsp, opts)
end

for _, v in ipairs(binds) do
    create_bind(v[1], v[2], v[3])
end

for _, v in ipairs(mod_binds) do
    create_bind(mod .. " + " .. v[1], v[2], v[3])
end

for _, v in ipairs(mod_shift_binds) do
    create_bind(mod .. " + SHIFT + " .. v[1], v[2], v[3])
end

for i = 1, 10 do
    local key = tostring(i % 10)
    hl.bind(mod .. " + " .. key, hl.dsp.focus({ workspace = tostring(i) }))
    hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({
        workspace = tostring(i)
    }))
end
