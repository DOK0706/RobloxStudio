
local Epic=script.Parent

function onClick()
	script.Parent.Parent.strobe.Script.Disabled = true
	wait(0.5)
	script.Parent.Parent.strobe.Script.Disabled = false
end
Epic.MouseButton1Click:connect(onClick)


script.Parent.MouseButton1Click:connect(function()
	for i,v in pairs (game.Workspace:GetChildren()) do
	if v.Name == (script.Parent.Parent.Parent.name1.Value) then
	v.Main.LED.SurfaceLight.Brightness = 1
	v.Main.LED.Transparency = 0
	v.Main.LED.Beam.Transparency = NumberSequence.new(0.5,1)
	end
	end
	end)
script.Parent.MouseButton1Click:connect(function()
	for i,v in pairs (game.Workspace:GetChildren()) do
	if v.Name == (script.Parent.Parent.Parent.name2.Value) then
	v.Main.LED.SurfaceLight.Brightness = 1
	v.Main.LED.Transparency = 0
	v.Main.LED.Beam.Transparency = NumberSequence.new(0.5,1)
	end
	end
	end)



