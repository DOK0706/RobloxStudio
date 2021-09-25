function onClicked()
	for i,v in pairs (game.Workspace:GetChildren()) do
	if v.Name == (script.Parent.Parent.Parent.name1.Value) then
v.Body.Hinge.Motor6D.DesiredAngle = 0
v.Holder.Connect.Motor6D.DesiredAngle = 0
	end
	end
	end
 
script.Parent.MouseButton1Down:connect(onClicked)

function onClicked()
	for i,v in pairs (game.Workspace:GetChildren()) do
	if v.Name == (script.Parent.Parent.Parent.name2.Value) then
v.Body.Hinge.Motor6D.DesiredAngle = 0
v.Holder.Connect.Motor6D.DesiredAngle = 0
	end
	end
	end
 
script.Parent.MouseButton1Down:connect(onClicked)

