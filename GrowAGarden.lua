local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.Name = "GrowAGardenUI"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true -- Bỏ qua khoảng cách của GUI

-- Sidebar Frame
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, 100, 0, 90)
sidebar.Position = UDim2.new(0, 10, 0, 70)
sidebar.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
sidebar.BorderSizePixel = 0
sidebar.Parent = screenGui

-- Tạo nút bật tắt popup sử dụng ImageButton
local settingsButton = Instance.new("ImageButton")
settingsButton.Name = "SettingsButton"
settingsButton.AnchorPoint = Vector2.new(0, 0)
settingsButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
settingsButton.Size = UDim2.new(0, 50, 0, 50)
settingsButton.Position = UDim2.new(0, 10, 0, 10)
settingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
settingsButton.Image = "rbxassetid://376649791" -- Icon ID for settings
settingsButton.Parent = screenGui

-- Toggle hiển thị ScreenGui
settingsButton.MouseButton1Click:Connect(function()
    screenGui.Enabled = not screenGui.Enabled
end)
