local gfs = require("gears.filesystem")

local themes_path = gfs.get_themes_dir()

local _M = {
  -- This is used later as the default terminal and editor to run.
  -- terminal = "xterm",
  terminal = "wezterm",

  -- Editors
  editor = os.getenv("EDITOR") or "nano",
  editor_gui = "codium" or "nano",

  -- Default file manager
  file_manager = "nemo",

  -- Default modkey.
  -- Usually, Mod4 is the key with a logo between Control and Alt.
  -- If you do not like this or do not have such a key,
  -- I suggest you to remap Mod4 to another key using xmodmap or other tools.
  -- However, you can use another modifier like Mod1, but it may interact with others.
  modkey = "Mod4",

  -- Default wallpaper
  -- wallpaper = themes_path .. "default/background.png",  -- Default AwesomeWM
  wallpaper = "~/.config/awesome/theme/assets/wallpaper.png",

  -- Default username
  username = os.getenv("USER"):gsub("^%l", string.upper),

  -- Default font
  font = "Roboto, Regular ",
}

return _M
