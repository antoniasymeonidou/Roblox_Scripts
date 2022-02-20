script.Parent.Touched:connect(function(part)
	local boom = Instance.new("Explosion")
	boom.Parent = game.Workspace
	boom.Position = part.Position
end)
