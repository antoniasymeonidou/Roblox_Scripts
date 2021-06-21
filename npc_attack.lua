local npc = script.Parent
local hrpOfNPC = npc:WaitForChild("HumanoidRootPart")

local plrsHit = {}

local maxDistance = math.huge


npc.Humanoid.Touched:Connect(function(touch)

	if game.Players:GetPlayerFromCharacter(touch.Parent) and not plrsHit[game.Players:GetPlayerFromCharacter(touch.Parent)] then

		plrsHit[game.Players:GetPlayerFromCharacter(touch.Parent)] = true
		
		touch.Parent.Humanoid:TakeDamage(50)
		
		wait(1)

		plrsHit[game.Players:GetPlayerFromCharacter(touch.Parent)] = false	
	end
end)


while wait() do
	
	local plrs = game.Players:GetPlayers()
	
	local closestHRP
	
	for i, plr in pairs(plrs) do
		
		if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.Humanoid.Health > 0 then
			
			local hrp = plr.Character.HumanoidRootPart
			
			local distanceBetween = (hrpOfNPC.Position - hrp.Position).Magnitude
			
			
			if not closestHRP then closestHRP = hrp end
			
			if (hrpOfNPC.Position - closestHRP.Position).Magnitude > distanceBetween then
				
				closestHRP = hrp
				
			end
		end
	end
	
	if closestHRP and (hrpOfNPC.Position - closestHRP.Position).Magnitude <= maxDistance then npc.Humanoid:MoveTo(closestHRP.Position) end
end
