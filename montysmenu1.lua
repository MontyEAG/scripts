local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Monty's Menu", "GrapeTheme")
local Main = Window:NewTab("General")
local SectionWalk = Main:NewSection("Walk Speed")
SectionWalk:NewSlider("Walk Speed", "Tylers so gay lol", 500, 16, function(s) -- 500 (MaxValue) | 16 (MinValue)
    getgenv().WalkSpeedValue = s; --set your desired walkspeed here
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end)
SectionWalk:NewButton("FAST", "Sets Walk Speed to 120", function()
        s = 120
end)
local SectionAfk = Main:NewSection("ANTI AFK")
SectionAfk:NewButton("LAUNCH AFK SCRIPT", ".", function()
    print("Clicked")
end)
