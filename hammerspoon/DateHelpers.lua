-- Date keybindings
bindings = {
  {key="8", format="%A, %d %B %Y, %H:%M"},
  {key="9", format="%Y%m%d"},
  {key="0", format="%Y-%m-%d"},
}

function bindKey(key, fn)
  hs.hotkey.bind({"cmd", "alt"}, key, fn)
end

hs.fnutils.each(bindings, function(i)
  bindKey(i.key, function()
    local time = os.date(i.format)
    hs.alert.show(time)
    hs.pasteboard.setContents(time)
  end)
end)
