function ontouch(hit)
	local HammerKey = hit:findFirstChild("HammerKey")
	if HammerKey then
		script.Parent:remove()
	end
end
script.Parent.Touched:Connect(ontouch)
