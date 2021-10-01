debounce = true

function onTouched(hit)
	if (hit.Parent:findFirstChild("Humanoid") ~= nil and debounce == true) then
		debounce = false
		if not (hit.Parent.Pants == nil) then
			hit.Parent.Pants:remove() --deletes pants of the toucher
		end
		wait(1)
		debounce = true
	end
end

script.Parent.Touched:connect(onTouched)
