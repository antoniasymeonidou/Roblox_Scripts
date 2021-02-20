-- Inside the conveyor part  you need to add a configuration file and inside the configuration search Intvalue and set value to 10
local conveyor = script.Parent
conveyor.Velocity = conveyor.CFrame:vectorToWorldSpace(Vector3.new(0, 0, -conveyor.Configuration.Speed.Value))
conveyor.SurfaceGui.Enabled = false