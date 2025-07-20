-- Grow A Garden Auto Script v1.4 with Drag Toggle and Feature UI

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Main GUI
local screenGui = Instance.new("ScreenGui", PlayerGui)
screenGui.Name = "GrowAutoToolGUI"
screenGui.ResetOnSpawn = false

-- Toggle Button with Drag Support
local toggleButton = Instance.new("ImageButton")
toggleButton.Name = "SettingsButton"
toggleButton.AnchorPoint = Vector2.new(0, 0)
toggleButton.Size = UDim2.new(0, 50, 0, 50)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Image = "rbxassetid://376649791"
toggleButton.Parent = screenGui

-- Dragging functionality
local dragging, dragInput, dragStart, startPos

local function update(input)
	local delta = input.Position - dragStart
	toggleButton.Position = UDim2.new(
		toggleButton.Position.X.Scale,
		toggleButton.Position.X.Offset + delta.X,
		toggleButton.Position.Y.Scale,
		toggleButton.Position.Y.Offset + delta.Y
	)
end

toggleButton.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = toggleButton.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then dragging = false end
		end)
	end
end)

toggleButton.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)\n
game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

-- Popup Frame
local popupFrame = Instance.new("Frame", screenGui)
popupFrame.Name = "FeaturePopup"
popupFrame.Size = UDim2.new(0, 600, 0, 400)
popupFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
popupFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
popupFrame.Visible = false
popupFrame.BorderSizePixel = 0

local uiPadding = Instance.new("UIPadding", popupFrame)
uiPadding.PaddingTop = UDim.new(0, 10)
uiPadding.PaddingBottom = UDim.new(0, 10)
uiPadding.PaddingLeft = UDim.new(0, 10)
uiPadding.PaddingRight = UDim.new(0, 10)

local layout = Instance.new("UIListLayout", popupFrame)
layout.FillDirection = Enum.FillDirection.Vertical
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 8)

-- Toggle Feature Section
local function createSectionLabel(text)
	local label = Instance.new("TextLabel")
	label.Size = UDim2.new(1, 0, 0, 28)
	label.BackgroundTransparency = 1
	label.Text = text
	label.Font = Enum.Font.SourceSansBold
	label.TextColor3 = Color3.new(1,1,1)
	label.TextSize = 22
	label.TextXAlignment = Enum.TextXAlignment.Left
	return label
end

local function createToggle(name, callback)
	local toggle = Instance.new("TextButton")
	toggle.Size = UDim2.new(1, 0, 0, 26)
	toggle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
	toggle.Font = Enum.Font.SourceSans
	toggle.TextColor3 = Color3.new(1, 1, 1)
	toggle.TextSize = 18
	toggle.TextXAlignment = Enum.TextXAlignment.Left
	toggle.Text = name .. ": OFF"

	local enabled = false
	toggle.MouseButton1Click:Connect(function()
		enabled = not enabled
		toggle.Text = name .. (enabled and ": ON" or ": OFF")
		if callback then callback(enabled) end
	end)
	return toggle
end

-- Section: Info
popupFrame:AddChild(createSectionLabel("Info"))
local infoBtn = createToggle("Show Update Info", function(on)
	if on then
		local infoPopup = Instance.new("TextLabel")
		infoPopup.Size = UDim2.new(0, 400, 0, 200)
		infoPopup.Position = UDim2.new(0.5, -200, 0.5, -100)
		infoPopup.Text = [[Grow A Garden Script\nVersion: 1.4\n- Auto buy bug egg\n- Auto buy new cosmetics\n- Delete key system\n- Added auto buy EmberLyli\n- Fix Auto harvest]]
		infoPopup.TextWrapped = true
		infoPopup.TextColor3 = Color3.new(1, 1, 1)
		infoPopup.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		infoPopup.Font = Enum.Font.SourceSans
		infoPopup.TextSize = 16
		infoPopup.Parent = screenGui
		wait(5)
		infoPopup:Destroy()
	end
end)
popupFrame:AddChild(infoBtn)

-- More sections (Auto Harvest, Auto Plant, etc.) can be added here in a similar fashion.
-- Due to message limit, I’ll continue building them next if you confirm.

-- Toggle popup
toggleButton.MouseButton1Click:Connect(function()
	popupFrame.Visible = not popupFrame.Visible
end)
