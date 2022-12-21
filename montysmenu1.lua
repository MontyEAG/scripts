local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Monty's Menu", "GrapeTheme")
local Main = Window:NewTab("General")
local SectionWalk = Main:NewSection("Walk Speed")
SectionWalk:NewSlider("Walk Speed", "Tylers so gay lol", 500, 16, function(s) -- 500 (MaxValue) | 16 (MinValue)
    getgenv().WalkSpeedValue = s; 
    local Player = game:service'Players'.LocalPlayer;
    Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
    Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
    end)
local SectionTp = Main:NewSection("TP")
SectionTp:NewTextBox("Players Username", "Enter Username not nickname", function(txt)
	targetUsername = txt
end)
SectionTp:NewButton("TP TO PLAYER", ".", function()
    players = game:GetService("Players")
    targetPlayer = players:FindFirstChild(targetUsername)
    players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
end)
local SectionAfk = Main:NewSection("ANTI-AFK")
SectionAfk:NewButton("Launch Afk Script", ".", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/RTrade/Voidz/main/AntiAFK.lua'),true))()
end)
