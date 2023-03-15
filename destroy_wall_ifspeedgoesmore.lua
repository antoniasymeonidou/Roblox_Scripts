function onTouched(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		if hit.Parent.Humanoid.WalkSpeed > 75 then
			script.Parent:Destroy()
		end
	end
end

script.Parent.Touched:Connect(onTouched)
