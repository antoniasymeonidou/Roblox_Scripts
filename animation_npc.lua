-- Create the animation using Animation Editor
-- Copy Animation ID
-- Put script inside NPC
-- Put animation property inside script
-- Inside animation property put the ID that you copied from before


local animation = script:WaitForChild('Animation')
local humanoid = script.Parent:WaitForChild('Humanoid')
local dance = humanoid:LoadAnimation(animation)
dance:Play()
