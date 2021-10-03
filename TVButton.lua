local screen = script.Parent.Parent.Screen
local music = screen.Sound
local light = screen.SurfaceLight
local channel = screen.Channel
local img = screen.Decal
local On = false

script.Parent.ClickDetector.MouseClick:Connect(function()
	if On then
		On = false
		light.Enabled = false
		music:Pause()
		music.Volume = 0
		img.Transparency = 1
		screen.BrickColor = BrickColor.Black()
		screen.Material = Enum.Material.Glass
	elseif not On then
		On = true
		light.Enabled = true
		music:Play()
		music.Volume = 1
		img.Transparency = 0
		screen.BrickColor = BrickColor.White()
		screen.Material = Enum.Material.Neon
	end
end)
