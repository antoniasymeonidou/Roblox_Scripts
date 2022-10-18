local door = script.Parent

while true do
	door.Transparency = 1
	door.CanCollide = false
	wait(3)
	door.Transparency = 0
	door.CanCollide = true
	wait(3)
end
