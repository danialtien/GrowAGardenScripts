local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui
screenGui.Name = "ToggleScreenGui"

local imageLabel = Instance.new("ImageLabel")
imageLabel.Parent = screenGui
imageLabel.Size = UDim2.new(0, 200, 0, 200)
imageLabel.Position = UDim2.new(0.5, -100, 0.5, -100)
imageLabel.Image = "rbxassetid://376649791"
imageLabel.BackgroundTransparency = 1
imageLabel.Visible = true 

-- Hàm bật/tắt ScreenGui
local function toggleGui()
    imageLabel.Visible = not imageLabel.Visible
end

-- Gán phím "E" để bật/tắt
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.E then
        toggleGui()
    end
end)
