local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Breaking Point", "Ocean")
local FullBright = loadstring(game:HttpGet("https://pastebin.com/raw/jgXFsMgR", true))()
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Visual")
Section:NewButton("Fullbright", "Fullbright you know what do, it cant be untoggled", function()
    doFullBright()
end)
