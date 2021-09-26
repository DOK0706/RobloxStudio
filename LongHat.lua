script.Parent.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		local clone = script.Parent.Parent:Clone()
		clone.Parent = hit.Parent
	end
end)
