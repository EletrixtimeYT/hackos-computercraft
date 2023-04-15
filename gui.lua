local w, h = term.getSize()

-- Couleurs
local bgColor = colors.blue
local fgColor = colors.white

-- Dessiner le fond
term.setBackgroundColor(bgColor)
term.clear()

-- Dessiner la barre en bas
term.setCursorPos(1, h)
term.setBackgroundColor(fgColor)
term.write(string.rep(" ", w))
