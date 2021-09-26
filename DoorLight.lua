Model = script.Parent.Parent.Parent -- Variables used
LightOpen = Model.Configuration.LightColorOpen
LightClosed = Model.Configuration.LightColorClosed

script.Parent.BrickColor = BrickColor.new(LightClosed.Value) -- Initialize
script.Parent.SpotLight.Color = LightClosed.Value

script.Parent.Parent.Doorhandler.Open.Changed:connect(function(NewValue) -- Changes light when door opens or closes
    if NewValue == true then
		script.Parent.DoorSound:Play()
		script.Parent.BrickColor = BrickColor.new(LightOpen.Value)
		script.Parent.SpotLight.Color = LightOpen.Value
	else
		script.Parent.DoorSound:Play()
		script.Parent.BrickColor = BrickColor.new(LightClosed.Value)
		script.Parent.SpotLight.Color = LightClosed.Value
	end
end)
