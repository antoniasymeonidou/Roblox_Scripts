function onTouched()
	wait(.1)
	script.Parent.Transparency = 1
	script.Parent.CanCollide = false
	wait(3)
	script.Parent.Transparency = 0
	script.Parent.CanCollide = true
end

script.Parent.Touched:Connect(onTouched)
