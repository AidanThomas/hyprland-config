-- Beziers and Springs
hl.curve("ease", { type = "bezier", points = { { 0.25, 0.1 }, { 0.25, 1 } } })
hl.curve("easeInCubic", { type = "bezier", points = { { 0.32, 0 }, { 0.67, 0 } } })
hl.curve("easeOutCubic", { type = "bezier", points = { { 0.33, 1 }, { 0.68, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0 }, { 0.35, 1 } } })
hl.curve("snap", { type = "bezier", points = { { 0.09, 0.57 }, { 0.49, 0.9 } } })
hl.curve("swift", { type = "bezier", points = { { 0.55, 0 }, { 0.1, 1 } } })

-- Animation config
hl.animation({ leaf = "windows", enabled = true, bezier = "swift", speed = 6, style = "slide" })

hl.animation({ leaf = "fadeIn", enabled = true, bezier = "swift", speed = 6 })
hl.animation({ leaf = "fadeOut", enabled = true, bezier = "swift", speed = 6 })

hl.animation({ leaf = "workspaces", enabled = true, bezier = "swift", speed = 6, style = "slide" })
