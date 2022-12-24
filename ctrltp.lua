--
--███╗░░░███╗░█████╗░███╗░░██╗████████╗██╗░░░██╗
--████╗░████║██╔══██╗████╗░██║╚══██╔══╝╚██╗░██╔╝
--██╔████╔██║██║░░██║██╔██╗██║░░░██║░░░░╚████╔╝░
--██║╚██╔╝██║██║░░██║██║╚████║░░░██║░░░░░╚██╔╝░░
--██║░╚═╝░██║╚█████╔╝██║░╚███║░░░██║░░░░░░██║░░░
--╚═╝░░░░░╚═╝░╚════╝░╚═╝░░╚══╝░░░╚═╝░░░░░░╚═╝░░░
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "Monty's Ctrl Script", Description = "Hold CTRL and click anywhere to tp faggot"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "option"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State) print(tostring(State)) end}
)
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
 
Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
