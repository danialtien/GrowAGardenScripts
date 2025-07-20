--[[
    Grow a Garden Auto Script with Toggle Icon and Popup UI
    Features: Auto Plant, Auto Harvest, Auto Sell, Auto Buy Seeds, Remote Planting, Crafting, Hatching, Discord Notify
]]

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Tạo ScreenGui chính
local screenGui = Instance.new("ScreenGui", PlayerGui)
screenGui.Name = "GrowAutoToolGUI"
screenGui.ResetOnSpawn = false

-- Tạo nút H
local toggleButton = Instance.new("ImageButton")
toggleButton.Name = "SettingsButton"
toggleButton.AnchorPoint = Vector2.new(0, 0)
toggleButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
toggleButton.Size = UDim2.new(30, 30, 30, 30)
toggleButton.Position = UDim2.new(0, 20, 0, 20)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Image = "rbxassetid://376649791" -- Icon ID for settings
toggleButton.Parent = screenGui

-- Tạo Frame popup
local popupFrame = Instance.new("Frame", screenGui)
popupFrame.Name = "FeaturePopup"
popupFrame.Size = UDim2.new(0, 220, 0, 350)
popupFrame.Position = UDim2.new(1, -230, 0, 150)
popupFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
popupFrame.Visible = false
popupFrame.BorderSizePixel = 0

-- Layout dọc
local layout = Instance.new("UIListLayout", popupFrame)
layout.FillDirection = Enum.FillDirection.Vertical
layout.Padding = UDim.new(0, 6)
layout.SortOrder = Enum.SortOrder.LayoutOrder

-- Tiêu đề
local title = Instance.new("TextLabel", popupFrame)
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "🔧 Auto Features"
title.Font = Enum.Font.SourceSansBold
title.TextColor3 = Color3.new(1,1,1)
title.TextSize = 22

-- Hàm tạo Toggle nút
local function createToggle(name, callback)
    local btn = Instance.new("TextButton", popupFrame)
    btn.Size = UDim2.new(1, -10, 0, 30)
    btn.Position = UDim2.new(0, 5, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 18
    btn.Text = name .. ": OFF"

    local enabled = false
    btn.MouseButton1Click:Connect(function()
        enabled = not enabled
        btn.Text = name .. (enabled and ": ON" or ": OFF")
        if callback then callback(enabled) end
    end)
end

-- Tạo các toggle tính năng
-- createToggle("🌱 Auto Plant", function(on) print("Auto Plant:", on) end)
-- createToggle("🪓 Auto Harvest", function(on) print("Auto Harvest:", on) end)
-- createToggle("💰 Auto Sell", function(on) print("Auto Sell:", on) end)
-- createToggle("🛒 Auto Buy Seed", function(on) print("Auto Buy:", on) end)
-- createToggle("🌐 Remote Plant", function(on) print("Remote Plant:", on) end)
-- createToggle("🔨 Auto Craft", function(on) print("Auto Craft:", on) end)
-- createToggle("🐣 Auto Hatch", function(on) print("Auto Hatch:", on) end)
-- createToggle("🔔 Discord Notify", function(on) print("Discord Notify:", on) end)

-- Click H để hiện/ẩn popup
toggleButton.MouseButton1Click:Connect(function()
    popupFrame.Visible = not popupFrame.Visible
end)
