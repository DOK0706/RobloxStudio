function Down()
	local screen = script.Parent.Parent.Screen
	local channel = screen.Channel
	channel.Value = channel.Value - 1
	
	if channel.Value < 0 then
		channel.Value = 7
	end
end

script.Parent.ClickDetector.MouseClick:Connect(Down)

