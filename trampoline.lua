-- Trampoline part Script (put as a child to the trampoline part)
function onTouch(hit)
    local p = game.Players:GetPlayerFromCharacter(hit.Parent)
    if p then
        game.ReplicatedStorage.Jump:FireClient(p)
    end
end
script.Parent.Touched:connect(onTouch)

-- Put a RemoteEvent named "Jump" in game.ReplicatedStorage

-- Put the following LocalScript in game.StarterPlayer.StarterCharacterScripts
local p = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
game.ReplicatedStorage.Jump.OnClientEvent:Connect(function()
    p.Velocity = Vector3.new(0, 100, 0)
end)
