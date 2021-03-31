local function onPlayerJoin(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = 'leaderstats'
	leaderstats.Parent = player
	
	local gold = Instance.new("IntValue") --integer value
	gold.Name = "Gold"
	gold.Value = 200
	gold.Parent = leaderstats
	
	local items = Instance.new("IntValue")
	items.Name = 'Items'
	items.Value = 0
	items.Parent = leaderstats
	
	local spaces = Instance.new("IntValue")
	spaces.Name = 'Spaces'
	spaces.Value = 10
	spaces.Parent = leaderstats
end

game.Players.PlayerAdded:Connect(onPlayerJoin) --event fires when the player joins