debounce = true

function onTouched(hit)
	if (hit.Parent:findFirstChild("Humanoid") ~= nil and debounce == true) then
		debounce = false
		if not (hit.Parent.Shirt == nil) then
			hit.Parent.Shirt:remove()	-- deletes shirt on toucher
		end
		wait(1)
		debounce = true
	end
end

script.Parent.Touched:connect(onTouched)
