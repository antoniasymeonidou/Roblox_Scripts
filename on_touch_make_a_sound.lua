function TouchedStart()
	script.Parent.t.Value = true
	script.Parent.Sound.Looped=true
	script.Parent.Sound:Play()
end

function TouchEnd()
	script.Parent.t.Value = false
	script.Parent.Sound.Looped=false
	script.Parent.Sound:Pause()
end

script.Parent.TouchedStart:connect(Touched)
script.Parent.TouchEnded:connect(TouchEnd)
