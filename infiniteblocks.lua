-- Define the number of parts to create
local numberOfParts = 5

-- Loop to create each part
for i = 1, numberOfParts do
    -- Convert the loop index to a string for naming
    local str = tostring(i)
    -- Create the part
    local part = Instance.new("Part", workspace)
    -- Change the position of the part, offsetting each by the loop index
    part.CFrame = CFrame.new(3 * i, 11 + 2 * i, 3 * i) -- Each new part will be further away and higher
    -- Rename the part
    part.Name = "Part" .. str
    -- Change the color to random
    part.BrickColor = BrickColor.random()
    -- Function wait allows to continue the code after a certain amount of time
    wait(1)
end
