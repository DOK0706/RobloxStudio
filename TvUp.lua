function Up()
	local screen = script.Parent.Parent.Screen
	local channel = screen.Channel
	channel.Value = channel.Value + 1

	if channel.Value > 7 then
		channel.Value = 0
	end
end

script.Parent.ClickDetector.MouseClick:Connect(Up)
