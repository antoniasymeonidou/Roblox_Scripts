local npc = game.Workspace.NPC 
local part1 = game.Workspace.Part1
local part2 = game.Workspace.Part2
local part3 = game.Workspace.Part3
--make variables for the rest of the parts
local PartToTeleport

while true do
	wait(4) 
	PartToTeleport = math.random(1,3) 
	if PartToTeleport == 1 then
		npc.HumanoidRootPart.CFrame = part1.CFrame

	elseif PartToTeleport == 2 then
		npc.HumanoidRootPart.CFrame = part2.CFrame

	elseif PartToTeleport == 3 then
		npc.HumanoidRootPart.CFrame = part3.CFrame

	end
end
