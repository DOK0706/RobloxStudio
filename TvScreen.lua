print("Script by Really312")

local screen = script.Parent.Parent.Screen
local music = screen.Sound
local light = screen.SurfaceLight
local channel = screen.Channel
local img = screen.Decal

channel.Changed:Connect(function()
	if channel.Value == 0 then
		img.Texture = "rbxassetid://25067669"
		music.SoundId = "rbxassetid://702875426"
		music:Play()
	elseif channel.Value == 1 then
		img.Texture = "rbxassetid://1365494765"
		music.SoundId = "rbxassetid://1837889876"
		music:Play()
	elseif channel.Value == 2 then
		img.Texture = "rbxassetid://1047349259"
		music.SoundId = "rbxassetid://1846537079"
		music:Play()
	elseif channel.Value == 3 then
		img.Texture = "rbxassetid://1408842771"
		music.SoundId = "rbxassetid://588711502"
		music:Play()
	elseif channel.Value == 4 then
		img.Texture = "rbxassetid://4432302999"
		music.SoundId = "rbxassetid://516766251"
		music:Play()
	elseif channel.Value == 5 then
		img.Texture = "http://www.roblox.com/asset/?id=6919659360"
		music.SoundId = "rbxassetid://1696854181"
		music:Play()
	elseif channel.Value == 6 then
		img.Texture = "http://www.roblox.com/asset/?id=223017962"
		music.SoundId = "rbxassetid://6729259949"
		music:Play()
	elseif channel.Value == 7 then
		img.Texture = "rbxassetid://1206367650"
		music.SoundId = "rbxassetid://1876308078"
		music:Play()
	end
end)
