local telePart = script.Parent



local TeleportService = game:GetService('TeleportService')



local placeID = 5020048423



local canTeleport = true



local function otherGame(otherPart)

	local player = game.Players:FindFirstChild(otherPart.Parent.Name)

	if player and canTeleport then

		canTeleport = false

		TeleportService:Teleport(placeID, player)

	end

end



telePart.Touched:Connect(otherGame)
