
local Epic=script.Parent

function onClick()
	
	for i,v in pairs (game.Workspace:GetChildren()) do
		spawn(function()
	if v.Name == (script.Parent.Parent.Parent.name1.Value) then
		while true do
	v.Main.LED.Transparency = 0
	v.Main.LED.SurfaceLight.Brightness = 1
	v.Main.LED.Beam.Transparency = NumberSequence.new(0.5,1)

	wait(0.05)
	v.Main.LED.Transparency = 1
	v.Main.LED.SurfaceLight.Brightness = 0
	v.Main.LED.Beam.Transparency = NumberSequence.new(1,1)
	wait(0.05)

	end
	end
	end)
	end
	end
Epic.MouseButton1Click:connect(onClick)



local Epic=script.Parent

function onClick()
	
	for i,v in pairs (game.Workspace:GetChildren()) do
		spawn(function()
	if v.Name == (script.Parent.Parent.Parent.name2.Value) then
		while true do
	v.Main.LED.Transparency = 0
	v.Main.LED.SurfaceLight.Brightness = 1
	v.Main.LED.Beam.Transparency = NumberSequence.new(0.5,1)

	wait(0.05)
	v.Main.LED.Transparency = 1
	v.Main.LED.SurfaceLight.Brightness = 0
	v.Main.LED.Beam.Transparency = NumberSequence.new(1,1)
	wait(0.05)

	end
	end
	end)
	end
	end
Epic.MouseButton1Click:connect(onClick)
