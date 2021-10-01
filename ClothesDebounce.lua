debounce = true
button = script.Parent

function onTouched(hit)
	if (hit.Parent:findFirstChild("Humanoid") ~= nil and debounce == true) then
		debounce = false
		button.BrickColor = BrickColor.Red()
		wait(1)
		button.BrickColor = BrickColor.Green()
		debounce = true
	end
end


button.Touched:connect(onTouched)

--makes the button colors when touch like a button--
