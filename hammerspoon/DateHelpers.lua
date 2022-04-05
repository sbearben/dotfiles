-- Date keybindings
hyper.bindKey("t", function()
  local time = os.date("%A, %d %B %Y, %H:%M")
  hs.alert.show(time)
  hs.pasteboard.setContents(time)
end)

hyper.bindShiftKey("t", function()
  local time = os.date("%Y%m%d")
  hs.alert.show(time)
  hs.pasteboard.setContents(time)
end)

hyper.bindCommandShiftKey("t", function()
  local time = os.date("%Y-%m-%d")
  hs.alert.show(time)
  hs.pasteboard.setContents(time)
end)
