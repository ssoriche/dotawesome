local awful = require("awful")

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

local function run_once(cmd)
  local findme = cmd
  local firstspace = cmd:find(' ')
  if firstspace then findme = cmd:sub(0, firstspace - 1) end
  awful.spawn.with_shell(string.format(
    '/bin/sh -c "pgrep -u $USER -x %s > /dev/null || (%s)"',
    findme, cmd), false)
end

run_once("lxpolkit") -- PolKit
run_once("nm-applet") -- NetworkManager
run_once("pasystray") -- PulseAudio
run_once("xfce4-power-manager") -- Power Management
run_once("1password --silent") -- Power Management
run_once("copyq") -- Power Management
