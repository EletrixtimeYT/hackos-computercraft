-- Effacer l'écran
term.setBackgroundColor(colors.white)
term.clear()
term.setCursorPos(1,1)

-- Afficher le message de démarrage
print("HackOS starting...")

-- Attendre 5 secondes
os.sleep(5)

-- Lancer l'interface graphique
shell.run("/hackos/kernel/ui.lua")
