local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Base Battles", "Ocean")
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
Section:NewButton("Aimbot", "Enables a Aimlock in head", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vcEpp3p3"))()
end)
