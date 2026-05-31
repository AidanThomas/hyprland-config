hl.config({
    general = {
        layout = "dwindle",
        gaps_out = 10,
        resize_on_border = true,
        resize_corner = 3,
    },

    decoration = {
        rounding = 5,
        inactive_opacity = 0.9,
        dim_inactive = false,
    },

    input = {
        repeat_delay = 250,
        repeat_rate = 40,
    },

    misc = {
        disable_hyprland_logo = false,
        disable_splash_rendering = false,
    },

    xwayland = {
        force_zero_scaling = true,
    },

    opengl = {
        nvidia_anti_flicker = true
    },
})
