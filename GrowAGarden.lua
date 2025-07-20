local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
screenGui.Name = "SettingsUI"

-- Create Logo Icon
local logo = Instance.new("ImageButton")
logo.Size = UDim2.new(0, 50, 0, 50) -- Default size, adjustable radius
logo.Position = UDim2.new(0.5, -25, 0.75, -25) -- Below garden, above seeds
logo.Image = "https://cdn.freebiesupply.com/logos/large/2x/react-1-logo-png-transparent.png"
logo.BackgroundTransparency = 1
logo.Parent = screenGui

-- Create Popup UI
local popup = Instance.new("Frame")
popup.Size = UDim2.new(0, 200, 0, 300)
popup.Position = UDim2.new(0.5, -100, 0.5, -150)
popup.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
popup.BorderSizePixel = 0
popup.Visible = false
popup.Parent = screenGui

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 40, 0, 40)
closeButton.Position = UDim2.new(1, -45, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeButton.Text = "X"
closeButton.Parent = popup

-- Toggle Popup Function
local isPopupVisible = false
logo.MouseButton1Click:Connect(function()
    isPopupVisible = not isPopupVisible
    popup.Visible = isPopupVisible
end)

closeButton.MouseButton1Click:Connect(function()
    isPopupVisible = false
    popup.Visible = false
end)

-- Adjustable Radius Function (via script command)
local function setLogoRadius(radius)
    logo.Size = UDim2.new(0, radius * 2, 0, radius * 2)
    logo.Position = UDim2.new(0.5, -radius, 0.75, -radius) -- Adjusted position
end

-- Example: Set initial radius to 25
setLogoRadius(25)
