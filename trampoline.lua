-- Inside the trampoline you need to add a configuration file and inside the configuration search Intvalue and set value to 100
local trampoline = script.Parent
trampoline.Velocity = Vector3.new(0, trampoline.Configuration.BounceSpeed.Value, 0)
trampoline.SurfaceGui.Enabled = false
