local zombie = workspace.Zombie
local part = workspace.Part
local part1 = workspace.Part1
local part2 = workspace.Part2

while true do
	zombie.Humanoid:MoveTo(.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(3)
	zombie.Humanoid:MoveTo(part1.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(3)
	zombie.Humanoid:MoveTo(part2.Position)
	zombie.Humanoid.MoveToFinished:Wait()
	wait(3)	
end
