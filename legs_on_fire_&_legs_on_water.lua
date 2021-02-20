-- create two parts One with the name FirePart and one WaterPart and use this script in serverscriptservice
function lightOnFire(part)
	print("Going to light this part on fire:")
	print(part.Name)

	fire = Instance.new("Fire")
	fire.Parent = part
end

firePart = game.Workspace.FirePart

firePart.Touched:Connect(lightOnFire)

function putOutFire(part)
	print("Got to put out the fire on:")
	print(part.Name)

	fire = part:FindFirstChild("Fire")
	if fire then
		fire:Destroy()
	end
end

waterPart = game.Workspace.WaterPart
waterPart.Touched:Connect(putOutFire)