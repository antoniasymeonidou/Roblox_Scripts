-- Folder: SpawnSystem -- Folder: Checkpoints


-- leaderstats script with the title Leaderstats

game.Players.PlayerAdded:connect(function(player)
    local leaderstats = Instance.new("Model")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

	local Checkpoint = Instance.new("IntValue")
    Checkpoint.Name = "Checkpoint"
    Checkpoint.Parent = leaderstats
end)

-- Create one part with the name 1 and this is your firstchepoint

script.Parent.Touched:Connect(function(hit)
	local hum = hit.Parent:FindFirstChild("Humanoid")
	
	if hum then
		local player = game.Players:FindFirstChild(hum.Parent.Name)
		
		if player then
			local stats = player:FindFirstChild("leaderstats")
			
			if stats then
				local checkp = stats:FindFirstChild("Checkpoint")
				
				if checkp then
					if checkp.Value == (script.Parent.Name - 1) then
						checkp.Value = checkp.Value + 1
					end
				end
			end
		end
	end
end)


-- Player - starter playerscript 
local char = script.Parent

local player = game.Players:FindFirstChild(char.Name)

repeat wait() until player.leaderstats
repeat wait() until player.leaderstats.Checkpoint

local findspawn = game.Workspace.SpawnSystem.Checkpoints:FindFirstChild(player.leaderstats.Checkpoint.Value)

if findspawn ~= nil then
	char.Torso.CFrame = findspawn.CFrame * CFrame.new(0,5,0)
end
