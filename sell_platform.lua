-- When a player touches the parent object, their items will be sold for gold
local sellPart = script.Parent

-- Gives the player gold for each item they have
local function sellItems(playerItems, playerGold)
	-- Gives players 100 pieces of gold for each item
	local totalSell = (playerItems.Value * 100)
	playerGold.Value = playerGold.Value + totalSell
	playerItems.Value = 0
end

local function onTouch(partTouched)
	-- Looks for a Humanoid
	local character = partTouched.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")

	-- If a humanoid is found, gets leaderstats and calls sellItems function
	if humanoid then
		-- Get the player, so changes can be made to  the player's leaderstats
		local player = game.Players:GetPlayerFromCharacter(humanoid.Parent)
		local playerStats = player:FindFirstChild("leaderstats")
		local playerItems = playerStats:FindFirstChild("Items")
		local playerGold = playerStats:FindFirstChild("Gold")
		-- Sells Items and then changes the player's spaces and money
		sellItems(playerItems, playerGold)
	end
end

sellPart.Touched:Connect(onTouch)