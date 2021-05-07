-- The npc will have 6 scripts
-- First you create an NPC and disable the anchor from HumanoidRootPart
-- Rename the Dummy to Zombie 
-- Rename the child humanoid to Zombie
-- Add a sword to the game from toolbox

-- Script one - Health
--Responsible for regening a player's humanoid's health

-- declarations
local Figure = script.Parent
local Head = Figure:WaitForChild("Head")
local Humanoid = Figure:WaitForChild("Humanoid")
local regening = false

-- regeneration
function regenHealth()
	if regening then return end
	regening = true

	while Humanoid.Health < Humanoid.MaxHealth do
		local s = wait(1)
		local health = Humanoid.Health
		if health > 0 and health < Humanoid.MaxHealth then
			local newHealthDelta = 0.01 * s * Humanoid.MaxHealth
			health = health + newHealthDelta
			Humanoid.Health = math.min(health,Humanoid.MaxHealth)
		end
	end

	if Humanoid.Health > Humanoid.MaxHealth then
		Humanoid.Health = Humanoid.MaxHealth
	end

	regening = false
end

Humanoid.HealthChanged:connect(regenHealth)



-- Script two - Respawn

z = script.Parent

backup = z:clone()

while true do
	wait(5)
	if z.Zombie.Health == 0 then
		z:Remove()
		wait(4)
		backup.Parent = game.Workspace
		backup.Head:MakeJoints()
		backup.Torso:MakeJoints()
	end
	if z == nil then
		wait(4)
		backup.Parent = game.Workspace
		backup.Head:MakeJoints()
		backup.Torso:MakeJoints()
	end
end 


-- Script 3 
local larm = script.Parent:FindFirstChild("HumanoidRootPart")
local rarm = script.Parent:FindFirstChild("HumanoidRootPart")

function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 10000
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= script.Parent) then
			temp = temp2:findFirstChild("HumanoidRootPart")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end




while true do
	wait(1)
	local target = findNearestTorso(script.Parent.HumanoidRootPart.Position)
	if target ~= nil then
		script.Parent.Zombie:MoveTo(target.Position, target)
	end

end


-- Script 4
local PathfindingService = game:GetService("PathfindingService")
local Debris = game:GetService("Debris")

local Demon = script.Parent.Zombie

while true do
	local destination = game.Workspace.Data.Player.Value
	local distance = (Demon.RootPart.Position - destination.Character.HumanoidRootPart.Position).magnitude
	--print(distance)
	if distance < 50 then
		Demon.WalkSpeed = script.Parent.Parent.WalkSpeed.Value
		local path = PathfindingService:CreatePath({
			AgentRadius = 2; --// How big your character is.
			AgentHeight = 5; --// How tall is your character?
			AgentCanJump = false; --// Does your character jump? (Will include paramters inside the waypoints.
		})
		path:ComputeAsync(Demon.RootPart.Position, destination.Character.HumanoidRootPart.Position)
		waypoints = {}
		if path.Status == Enum.PathStatus.Success then
			waypoints = path:GetWaypoints()
			currentWaypointIndex = 1
			for _, waypoint in pairs(waypoints) do
				Demon:MoveTo(waypoints[currentWaypointIndex].Position)
				Demon.MoveToFinished:Wait()
				currentWaypointIndex += 1
				if waypoints[currentWaypointIndex] == nil then
					break
				end

			end


		else
			Demon:MoveTo(game.Workspace.Spawners.Spawner.SpawnPoint.Position+Vector3.new(math.random(10), 0, math.random(10)))
			Demon.MoveToFinished:Wait()
		end


	else
		Demon:MoveTo(game.Workspace.Spawners.Spawner.SpawnPoint.Position)
	end
	wait(0.1)
end -- конец цикла поиска игрока

-- Script 5 - Animate - you can find it on toolbox

-- Kill Script inside the Lower Torso for killing the humanoid in the game

function onTouched(hit)
	local human = hit.Parent:findFirstChild("Humanoid")
	if (human ~= nil) then
		human.Health = human.Health - 5 -- Change the amount to change the damage.
	end
end
script.Parent.Touched:connect(onTouched)
