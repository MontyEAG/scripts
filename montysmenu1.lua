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

local FF2 = Window:NewTab("F.F.2")
local SFF2 = FF2:NewSection("MAIN")
SFF2:NewButton("LOAD FF2 SCRIPT", "Ball Catch Assist", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/SlimLegoHacks/Scripts/main/FootballFusion.lua')))()
end)
