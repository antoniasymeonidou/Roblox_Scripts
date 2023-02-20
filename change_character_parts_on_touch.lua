local part = script.Parent

part.Touched:Connect(function(hit)
	local Humanoid = hit.Parent:FindFirstChildWhichIsA("Humanoid")
	if Humanoid then
		Humanoid.HeadScale.Value = 2
		Humanoid.BodyWidthScale.Value = 2
		
	end
end)
