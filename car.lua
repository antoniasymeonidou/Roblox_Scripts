game.ReplicatedStorage:WaitForChild("CheckPrice").OnServerInvoke = function(player,NameOfCar)

	return game.ServerStorage.Cars:FindFirstChild(NameOfCar).Price.Value	

end

game.ReplicatedStorage:WaitForChild("SpawnCar").OnServerEvent:Connect(function(player,NameOfCar)
	local car = game.ServerStorage.Cars:FindFirstChild(NameOfCar):Clone()
	car:SetPrimaryPartCFrame(player.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,15))
	car.Parent = workspace
	car:MakeJoints()
	car.Name = player.Name.."'s "..NameOfCar
end)
