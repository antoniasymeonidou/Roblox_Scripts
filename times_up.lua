local countdownGui = script.Parent
local countdownText = countdownGui:WaitForChild("CountdownText")

local startTime = tick()
local countdownDuration = 60 -- Initial countdown duration in seconds

while wait(1) do
local elapsedTime = tick() - startTime
local remainingTime = countdownDuration - elapsedTime

if remainingTime > 0 then
    local seconds = remainingTime % 60
    local minutes = math.floor(remainingTime % (60 * 60) / 60)
    local hours = math.floor(remainingTime % (60 * 60 * 24) / (60 * 60))
    local days = math.floor(remainingTime % (60 * 60 * 24 * 30) / (60 * 60 * 24))

    local textString = days .. "d:" .. hours .. "h:" .. minutes .. "m:" .. seconds .. "s"
    countdownText.Text = textString
else
    -- Perform actions after the countdown (all players die)
    for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("Humanoid") then
            player.Character:BreakJoints()
        end
    end
    break
end
end
