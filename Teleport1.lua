local Teleport = "Lentilkac58-Easy-Teleport-1" 
function Touch(hit) 
	if script.Parent.Locked == false and script.Parent.Parent:findFirstChild(Teleport).Locked == false then script.Parent.Locked = true script.Parent.Parent:findFirstChild(Teleport).Locked = true 
	local Pos = script.Parent.Parent:findFirstChild(Teleport) 
		hit.Parent:moveTo(Pos.Position) wait(1) script.Parent.Locked = false script.Parent.Parent:findFirstChild(Teleport).Locked = false end end 
script.Parent.Touched:connect(Touch) 
