-- WakaTime: today's coding time (from the WakaTime app's CLI). Click opens the dashboard.
-- Hidden until the CLI returns a time (no CLI / no API key / no activity yet).
local cli = "$HOME/.wakatime/wakatime-cli"
local cmd = cli .. " --today --today-hide-categories true 2>/dev/null"

local wakatime = SBAR.add("item", "wakatime", {
  position = "right",
  drawing = false,
  updates = true,
  update_freq = 300,
  icon = {
    string = ICONS.wakatime,
    color = COLORS.mauve,
  },
  label = { color = COLORS.text },
  -- takes the slot Docker used: netspeed to the right has padding_left = -5
  padding_left = RIGHT_GAP - PADDINGS,
  padding_right = RIGHT_GAP + 5,
  click_script = "open https://wakatime.com/dashboard",
})

local function shorten(text)
  text = text:gsub("%s+$", "")
  text = text:gsub(" hrs?", "h"):gsub(" mins?", "m"):gsub(" secs?", "s")
  return text
end

wakatime:subscribe({ "forced", "routine", "system_woke" }, function()
  SBAR.exec(cmd, function(result)
    local text = type(result) == "string" and shorten(result) or ""
    local has_time = text:match("%d") ~= nil
    wakatime:set({
      drawing = has_time,
      label = { string = has_time and text or "" },
    })
  end)
end)
