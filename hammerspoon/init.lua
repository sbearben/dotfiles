-- Reload Hammerspoon
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)

-- Load modules
local DateHelpers = require('DateHelpers')

-- Finish
hs.alert.show("Hammerspoon config loaded")
