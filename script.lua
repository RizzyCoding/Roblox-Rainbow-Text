if Testing == false then
	main = Instance.new("ScreenGui")
	Frame = Instance.new("Frame")
	TextLabel = Instance.new("TextLabel")
	TextLabel_2 = Instance.new("TextLabel")
	TextLabel_3 = Instance.new("TextLabel")

	main.Name = "RenderScreen"
	main.Parent = game.CoreGui
	main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	main.IgnoreGuiInset = true

	Frame.Parent = main
	Frame.Active = true
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(1, 0, 1, 0)

	TextLabel.Parent = Frame
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.5, 0, 0.419999987, 0)
	TextLabel.Size = UDim2.new(0, 279, 0, 34)
	TextLabel.Font = Enum.Font.Gotham
	TextLabel.Text = getgenv().welcomescreen
	TextLabel.TextScaled = false
	TextLabel.TextSize = 50.000
	TextLabel.TextWrapped = false
	text = TextLabel
	local add = 20
	wait(1)
	local k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(k/255,0/255,0/255)
	k = k + add
	wait()
	end
	while true do
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255,k/255,0/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255 - k/255,255/255,0/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(0/255,255/255,k/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(0/255,255/255 - k/255,255/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(k/255,0/255,255/255)
	k = k + add
	wait()
	end
	k = 1
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255,0/255,255/255 - k/255)
	k = k + add
	wait()
	end
	while k <= 255 do
	text.TextColor3 = Color3.new(255/255 - k/255,0/255,0/255)
	k = k + add
	wait()
	end
	end
	if not game:IsLoaded() then
		repeat wait(.1) until game:IsLoaded() 
	end
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	game:GetService("RunService"):Set3dRenderingEnabled(false)
	setfpscap(getgenv().fps)
end
