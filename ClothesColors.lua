debounce = true

function onTouched(hit)
	local h = hit.Parent:findFirstChild("Humanoid")
	local p = game.Players:GetPlayerFromCharacter(h.Parent) 
	if (h ~= nil and debounce == true) then
		local g = script.Parent.Parent:findFirstChild("GermanSoldier") --change this to the template name
		local b = g:findFirstChild("Body Colors")
		local c = hit.Parent:findFirstChild("Body Colors")
		debounce = false
		c:remove()
		t = b:clone() -- insert this "t.TorsoColor = p.TeamColor" if you want to be a team uniform
		t.Parent = hit.Parent
		wait(1)
		debounce = true
	end
end

script.Parent.Touched:connect(onTouched)
