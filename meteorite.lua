while true do
	local random_num1 = math.random(-255,255)
	local random_num2 = math.random(-255,255)
	repeat
		script.Parent.Position = script.Parent.Position- Vector3.new(0,10,0)
		wait(0.01)
	until script.Parent.Position.Y <1
	wait(0.1)
	local explosion = Instance.new("Explosion",script.Parent)
	explosion.BlastRadius = 10
	explosion.DestroyJointRadiusPercent = 50
	explosion.Parent.Position = script.Parent.Position
	script.Parent.Position = Vector3.new(random_num1,251,random_num2)
end
