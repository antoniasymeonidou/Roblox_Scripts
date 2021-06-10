-- You need two parts. One that is going to be the button (and the script inside) and one part that you will teleport at.
-- You need also to attach to the button a  ClickDetector

function onClicked()
	local p = game.Players:GetChildren()
	for i = 1, #p do
		p[i].Character:MoveTo(Vector3.new(-34.827, 532.194, -691.988)) -- here is your coordinates
	end
end

script.Parent.ClickDetector.MouseClick:connect(onClicked)
