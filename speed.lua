local function onTouch(hit)
    local character = hit.Parent
    local humanoid = character:FindFirstChild("Humanoid")
    
    if humanoid then
        -- Change the speed here
        humanoid.WalkSpeed = 32 -- Change this value to the desired speed
    end
end

script.Parent.Touched:Connect(onTouch)
