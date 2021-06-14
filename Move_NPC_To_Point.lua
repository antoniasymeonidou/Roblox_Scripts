-- create an npc and disable anchor root part
-- create a point and set the primary part to the specific part and anchor it

local npc = game.Workspace.NPC1
local humanoid = npc.Humanoid
local pointA = game.Workspace.GreenFlag
local pointB = game.Workspace.RedFlag
humanoid:MoveTo(pointA.PrimaryPart.Position)
humanoid.MoveToFinished:Wait()
humanoid:MoveTo(pointB.PrimaryPart.Position)
