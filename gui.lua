local w, h = term.getSize()

-- Couleurs
local bgColor = colors.blue
local fgColor = colors.white
local iconColor = colors.red

while true do
  -- Dessiner le fond
  term.setBackgroundColor(bgColor)
  term.clear()

  -- Dessiner l'icône de reboot
  term.setCursorPos(1, h)
  term.setBackgroundColor(iconColor)
  term.write(" ")

  -- Dessiner la barre en bas
  term.setCursorPos(2, h)
  term.setBackgroundColor(fgColor)
  term.write(string.rep(" ", w-1))

  -- Attendre un clic sur l'icône de reboot
  local _, y = os.pullEvent("mouse_click")
  if y == h then
    shell.run("reboot")
  end

  -- Attendre un peu avant de recommencer
  sleep(0.1)
end
