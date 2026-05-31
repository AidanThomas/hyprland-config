local config = require("config")

---@class WorkspaceConfig
---@field id integer workspace id, e.g. 1
---@field name string | nil workspace name, e.g. "terminal"
---@field monitor string | nil monitor to display on, e.g. "DP-1"
---@field opts table<string, any> | nil additional options
---@type WorkspaceConfig[]
local workspaces = {
    { id = 1,  name = "terminal",                 opts = { persistent = true } },
    { id = 2,  name = "browser",                  opts = { persistent = true } },
    { id = 3,  name = "steam",                    opts = { persistent = true } },
    { id = 4,  name = "files",                    opts = { persistent = true } },
    { id = 5,  name = "music",                    opts = { persistent = true } },
    { id = 6 },
    { id = 7 },
    { id = 8 },
    { id = 9 },
    { id = 10 },
    { id = 11, monitor = config.monitors.vertical }
}

for _, v in ipairs(workspaces) do
    ---@type table<string, any>
    local w = { workspace = tostring(v.id), default_name = v.name, monitor = v.monitor or config.monitors.main }
    for key, val in pairs(v.opts or {}) do
        w[key] = val
    end
    hl.workspace_rule(w)
end
