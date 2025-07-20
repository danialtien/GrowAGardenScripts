local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.Name = "GrowAGardenUI"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 10 -- Đặt thứ tự hiển thị cao hơn các UI khác
screenGui.IgnoreGuiInset = true -- Bỏ qua khoảng cách của GUI
screenGui.Enabled = true -- Bật GUI


-- -- Sidebar Frame
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, 100, 0, 90)
sidebar.Position = UDim2.new(0, 10, 0, 70)
sidebar.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
sidebar.BorderSizePixel = 0
sidebar.Parent = screenGui

-- Tạo nút bật tắt popup sử dụng ImageButton làm nút setting
local settingsButton = Instance.new("ImageButton")
settingsButton.Name = "SettingsButton"
settingsButton.AnchorPoint = Vector2.new(0, 0)
settingsButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
settingsButton.Size = UDim2.new(0, 50, 0, 50)
settingsButton.Position = UDim2.new(0, 10, 0, 10)
settingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
settingsButton.Image = "rbxassetid://376649791" -- Icon ID for settings
settingsButton.Parent = screenGui


-- -- Khung popup Settings
-- local settingsFrame = Instance.new("Frame")
-- settingsFrame.Size = UDim2.new(0, 250, 0, 350)
-- settingsFrame.Position = UDim2.new(0, 120, 0, 10)
-- settingsFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
-- settingsFrame.BorderSizePixel = 0
-- settingsFrame.Visible = false
-- settingsFrame.Parent = screenGui

-- Layout cho Settings
-- local layout = Instance.new("UIListLayout", settingsFrame)
-- layout.FillDirection = Enum.FillDirection.Vertical
-- layout.Padding = UDim.new(0, 5)

-- Tiêu đề Settings
-- local title = Instance.new("TextLabel", settingsFrame)
-- title.Size = UDim2.new(1, 0, 0, 30)
-- title.Text = "🌾 Auto Features"
-- title.BackgroundTransparency = 1
-- title.Font = Enum.Font.SourceSansBold
-- title.TextColor3 = Color3.new(1, 1, 1)
-- title.TextSize = 22



-- Hàm tạo toggle
local function createToggle(name, frame, callback)
    local btn = Instance.new("TextButton", frame)
    btn.Size = UDim2.new(1, -10, 0, 30)
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

-- Hàm tạo toggle với tùy chọn (plant/seed)
local function createOptionToggle(name, price, sell, unit, frame, parentToggle)
    local btn = Instance.new("TextButton", frame)
    btn.Size = UDim2.new(1, -20, 0, 30)
    btn.Position = UDim2.new(0, 10, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 16
    btn.Text = name .. " (Buy: " .. price .. "$, Sell: " .. sell .. "$, Unit: " .. unit .. "): OFF"

    local enabled = false
    btn.MouseButton1Click:Connect(function()
        enabled = not enabled
        btn.Text = name .. " (Buy: " .. price .. "$, Sell: " .. sell .. "$, Unit: " .. unit .. ") : " .. (enabled and "ON" or "OFF")
        if parentToggle and not enabled then parentToggle.Text = parentToggle.Text:gsub(": ON", ": OFF") end
    end)
end

-- Hàm tạo slider cho Auto Sell
local function createSellSlider(frame)
    local sliderFrame = Instance.new("Frame", frame)
    sliderFrame.Size = UDim2.new(1, -10, 0, 40)
    sliderFrame.BackgroundTransparency = 1

    local sliderLabel = Instance.new("TextLabel", sliderFrame)
    sliderLabel.Size = UDim2.new(1, 0, 0, 20)
    sliderLabel.Text = "Sell if count inventory is: 38"
    sliderLabel.TextColor3 = Color3.new(1, 1, 1)
    sliderLabel.BackgroundTransparency = 1

    local slider = Instance.new("TextBox", sliderFrame)
    slider.Size = UDim2.new(1, 0, 0, 20)
    slider.Position = UDim2.new(0, 0, 0, 20)
    slider.Text = "38"
    slider.TextColor3 = Color3.new(1, 1, 1)
    slider.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    slider.Changed:Connect(function()
        local num = tonumber(slider.Text) or 38
        if num < 0 then num = 0 elseif num > 200 then num = 200 end
        slider.Text = tostring(num)
        sliderLabel.Text = "Sell if count inventory is: " .. num
    end)
    return sliderFrame
end

-- Toggle hiển thị Settings/Scripting
settingsButton.MouseButton1Click:Connect(function()
    screenGui.Enabled = not screenGui.Enabled
end)
