DoorValue = 0 -- Variables used
Door = script.Parent
Door1 = Door.DoorPart1
Door2 = Door.DoorPart2

Door.PlayerCheck.Size = Door.Parent.Configuration.PlayerCollisionRange.Value

function open() -- Run when a player approaches the door
	DoorValue = DoorValue + 1 -- Add count how many players are near the door
	script.Open.Value = true
	
	Door1.PrismaticConstraint.TargetPosition = -10
	Door2.PrismaticConstraint.TargetPosition = -10
end

function close() -- Run when a player goes away from the door
	DoorValue = DoorValue - 1 -- Lower count how many players are near the door. If no more players are nearby, close the door
	if DoorValue < 0 then
		DoorValue = 0
	end
	if DoorValue == 0 then
		script.Open.Value = false
		Door1.PrismaticConstraint.TargetPosition = 0
		Door2.PrismaticConstraint.TargetPosition = 0
	end
end


function onTouched(hit) -- When a player is near the door
	local humanoid = hit.Parent:FindFirstChildWhichIsA("Humanoid")
	if (humanoid and humanoid.RootPart == hit) then
		open()
    end
end

function onEnded(hit) -- When a player is going away from the door
	local humanoid = hit.Parent:FindFirstChildWhichIsA("Humanoid")
	if (humanoid and humanoid.RootPart == hit) then
		close()
    end
end

Door.PlayerCheck.Touched:connect(onTouched)
Door.PlayerCheck.TouchEnded:connect(onEnded)
