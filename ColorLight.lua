script.Parent.MouseButton1Click:connect(function()
	for i,v in pairs (game.Workspace:GetChildren()) do
	if v.Name == (script.Parent.Parent.Parent.name1.Value) then
	v.Main.LED.SurfaceLight.Color = Color3.new(255, 0, 0)
	v.Main.LED.BrickColor = BrickColor.new("Really red")
	v.Main.LED.Beam.Color = ColorSequence.new(Color3.new(255, 0, 0))
	
	end
	end
end)
script.Parent.MouseButton1Click:connect(function()
	for i,v in pairs (game.Workspace:GetChildren()) do
	if v.Name == (script.Parent.Parent.Parent.name2.Value) then
	v.Main.LED.SurfaceLight.Color = Color3.new(255, 0, 0)
	v.Main.LED.BrickColor = BrickColor.new("Really red")
	v.Main.LED.Beam.Color = ColorSequence.new(Color3.new(255, 0, 0))
	
	end
	end
end)
