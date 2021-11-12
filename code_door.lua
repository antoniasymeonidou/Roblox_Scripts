local Door = script.Parent.Parent.Parent.Door
local input_label = script.Parent.Parent.Screen.SurfaceGui.TextLabel
local EnterButton = script.Parent.Parent.EnterButton
local ClearButton = script.Parent.Parent.ClearButton

local correct_code = "321"
local input = ""

function give_code()
	if input == correct_code then
		print("Entered Correct Code")
		input_label.Text = "Correct Code"
		Door.Transparency = 1
		Door.CanCollide = false
		wait(4)
		Door.Transparency = 0
		Door.CanCollide = true
		return end
	print("Incorrect Code")
	input = ""
	input_label.Text = "Incorrect Code"
end
EnterButton.ClickDetector.MouseClick:Connect(give_code)

function clear_code()
	print("Code Cleared")
	input = ""
	input_label.Text = ""
end
ClearButton.ClickDetector.MouseClick:Connect(clear_code)

function Key1()
	print("1")
	input = input..1
	input_label.Text = input
end
script.Parent.Key1.ClickDetector.MouseClick:Connect(Key1)

function Key2()
	print("2")
	input = input..2
	input_label.Text = input
end
script.Parent.Key2.ClickDetector.MouseClick:Connect(Key2)

function Key3()
	print("3")
	input = input..3
	input_label.Text = input
end
script.Parent.Key3.ClickDetector.MouseClick:Connect(Key3)
