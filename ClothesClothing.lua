debounce = true

function onTouched(hit)
	local h = hit.Parent:findFirstChild("Humanoid")
	if (h ~= nil and debounce == true) then
		local g = script.Parent.Parent:findFirstChild("Girl1") -- the name of your template
		debounce = false
		p = g.Pants:clone()
		s = g.Shirt:clone()
		p.Parent = hit.Parent --delete if you dont want pants on the costume
		s.Parent = hit.Parent --delete if you dont want pants on the costume
		wait(1)
		debounce = true
	end
end

script.Parent.Touched:connect(onTouched)
