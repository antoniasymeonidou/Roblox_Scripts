local pointPart = script.Parent
local blue = Color3.fromRGB(0, 0, 255)
local losePoints = 100
local Players = game:GetService("Players")

local function givePoints(player)
	local currentColor = pointPart.Color
	local playerStats = player:WaitForChild("leaderstats")
	local playerPoints = playerStats:WaitForChild("Gold")

	if currentColor == blue then
		playerPoints.Value = playerPoints.Value - losePoints	
	end
	pointPart:Destroy()

	-- Creates a sparkles effect and destroys it
	local playerCharacter = player.Character
	local particle = Instance.new("ParticleEmitter")
	particle.Color = ColorSequence.new(currentColor)
	particle.Parent = playerCharacter:WaitForChild("Head")
	wait(1)
	particle:Destroy()

end

local function partTouched(otherPart)
	--local player = Players:GetPlayerFromCharacter(otherPart.Parent)
	local player = game.Players:GetPlayerFromCharacter(otherPart.Parent)

	if player then
		givePoints(player)
	end
end

pointPart.Touched:Connect(partTouched)
