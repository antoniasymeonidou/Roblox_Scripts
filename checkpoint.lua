local spawn = script.Parent
spawn.Touched:connect(function(hit)
   if hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid") then
      local player = game.Players:GetPlayerFromCharacter(hit.Parent)
      local checkpointData = game.ServerStorage:FindFirstChild("CheckpointData")
      if not checkpointData then
      	checkpointData = Instance.new("Model", game.ServerStorage)
      	checkpointData.Name = "CheckpointData"
      end

      local checkpoint = checkpointData:FindFirstChild(tostring(player.userId))
      if not checkpoint then
        checkpoint = Instance.new("ObjectValue", checkpointData)
      	checkpoint.Name = tostring(player.userId)
      	player.CharacterAdded:connect(function(character)
      	  wait()
      	  character:WaitForChild("HumanoidRootPart").CFrame = Vector3.new(0, 4, 0) + game.ServerStorage.CheckpointData[tostring(player.userId)].Value.CFrame
      	end)
      end

      checkpoint.Value = spawn
   end
end)
