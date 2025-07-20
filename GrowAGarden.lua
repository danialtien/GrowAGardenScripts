--[[ 
🌾 Grow A Garden AutoScript Pro with UI Popup Toggle
Tính năng: Auto Plant, Auto Harvest, Auto Sell, Auto Buy, Craft, Remote Plant, Hatch Pet, Discord Notify
--]]

--------------------------
-- PHẦN 1: UI & NÚT BẬT TẮT
--------------------------

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.Name = "GrowAGardenUI"
screenGui.ResetOnSpawn = false

-- Icon tròn (MAUS)
local icon = Instance.new("ImageButton")
icon.Size = UDim2.new(0, 50, 0, 50)
icon.Position = UDim2.new(0, 10, 0, 10)
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.Image = "rbxassetid://replace_with_maus_icon_id" -- Thay bằng ID ảnh thực tế của MAUS
icon.Parent = screenGui

-- Sidebar Frame
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, 100, 0, 90)
sidebar.Position = UDim2.new(0, 10, 0, 70)
sidebar.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
sidebar.BorderSizePixel = 0
sidebar.Parent = screenGui

-- Nút Logo tròn để mở Settings
local settingsLogo = Instance.new("ImageButton")
settingsLogo.Size = UDim2.new(0, 80, 0, 80) -- Kích thước lớn hơn để chứa logo
settingsLogo.Position = UDim2.new(0, 10, 0, 5)
settingsLogo.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
settingsLogo.Image = "https://cdn.freebiesupply.com/logos/large/2x/react-1-logo-png-transparent.png"
settingsLogo.BackgroundTransparency = 0
settingsLogo.BorderSizePixel = 0
settingsLogo.ImageTransparency = 0
settingsLogo.Parent = sidebar
settingsLogo.MouseButton1Click:Connect(function()
    settingsFrame.Visible = not settingsFrame.Visible
    scriptingFrame.Visible = false
end)

-- Nút "Scripting"
local scriptingButton = Instance.new("TextButton")
scriptingButton.Size = UDim2.new(1, -10, 0, 40)
scriptingButton.Position = UDim2.new(0, 5, 0, 90)
scriptingButton.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
scriptingButton.Text = "Scripting"
scriptingButton.TextColor3 = Color3.fromRGB(255, 255, 255)
scriptingButton.Parent = sidebar

-- Khung popup Settings
local settingsFrame = Instance.new("Frame")
settingsFrame.Size = UDim2.new(0, 250, 0, 350)
settingsFrame.Position = UDim2.new(0, 120, 0, 10)
settingsFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
settingsFrame.BorderSizePixel = 0
settingsFrame.Visible = false
settingsFrame.Parent = screenGui

-- Layout cho Settings
local layout = Instance.new("UIListLayout", settingsFrame)
layout.FillDirection = Enum.FillDirection.Vertical
layout.Padding = UDim.new(0, 5)

-- Tiêu đề Settings
local title = Instance.new("TextLabel", settingsFrame)
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "🌾 Auto Features"
title.BackgroundTransparency = 1
title.Font = Enum.Font.SourceSansBold
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 22

-- Khung popup Scripting
local scriptingFrame = settingsFrame:Clone()
scriptingFrame.Name = "ScriptingFrame"
scriptingFrame.Parent = screenGui
scriptingFrame.Visible = false

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
settingsLogo.MouseButton1Click:Connect(function()
    settingsFrame.Visible = not settingsFrame.Visible
    scriptingFrame.Visible = false
end)

scriptingButton.MouseButton1Click:Connect(function()
    scriptingFrame.Visible = not scriptingFrame.Visible
    settingsFrame.Visible = false
end)

--------------------------
-- PHẦN 2: CHỨC NĂNG AUTO
--------------------------

-- Hàm chức năng
local function AutoPlantFunc(state) print("Auto Plant:", state) end
local function AutoHarvestFunc(state) print("Auto Harvest:", state) end
local function AutoSellFunc(state) print("Auto Sell:", state) end
local function AutoBuyFunc(state) print("Auto Buy Seed:", state) end
local function RemotePlantFunc(state) print("Remote Plant:", state) end
local function AutoCraftFunc(state) print("Auto Craft:", state) end
local function AutoHatchFunc(state) print("Auto Hatch:", state) end
local function DiscordNotifyFunc(state) print("Discord Notify:", state) end

-- Tạo toggle trong Settings
createToggle("🪓 Auto Harvest", settingsFrame, AutoHarvestFunc)
local autoPlantBtn = createToggle("🌱 Auto Plant", settingsFrame, AutoPlantFunc)
local plantOptions = Instance.new("Frame", settingsFrame)
plantOptions.Size = UDim2.new(1, -10, 0, 120)
plantOptions.BackgroundTransparency = 1
plantOptions.Visible = false
createOptionToggle("Carrot", 10, 15, 1, plantOptions, autoPlantBtn)
createOptionToggle("Strawberry", 20, 30, 2, plantOptions, autoPlantBtn)
createOptionToggle("Blueberry", 25, 35, 3, plantOptions, autoPlantBtn)
createOptionToggle("Tomato", 15, 25, 1, plantOptions, autoPlantBtn)
autoPlantBtn.MouseButton1Click:Connect(function()
    plantOptions.Visible = not plantOptions.Visible
end)

local autoSellBtn = createToggle("💰 Auto Sell", settingsFrame, AutoSellFunc)
local sellSlider = createSellSlider(settingsFrame)
sellSlider.Visible = false
autoSellBtn.MouseButton1Click:Connect(function()
    sellSlider.Visible = not sellSlider.Visible
end)

local autoBuySeedsBtn = createToggle("🛒 Auto Buy Seeds", settingsFrame, AutoBuyFunc)
local seedOptions = Instance.new("Frame", settingsFrame)
seedOptions.Size = UDim2.new(1, -10, 0, 120)
seedOptions.BackgroundTransparency = 1
seedOptions.Visible = false
createToggle("Auto Buy Carrot", seedOptions, function(state) print("Auto Buy Carrot:", state) end)
createToggle("Auto Buy Strawberry", seedOptions, function(state) print("Auto Buy Strawberry:", state) end)
createToggle("Auto Buy Blueberry", seedOptions, function(state) print("Auto Buy Blueberry:", state) end)
createToggle("Auto Buy Tomato", seedOptions, function(state) print("Auto Buy Tomato:", state) end)
autoBuySeedsBtn.MouseButton1Click:Connect(function()
    seedOptions.Visible = not seedOptions.Visible
end)

createToggle("🐣 Auto Buy Eggs", settingsFrame, AutoHatchFunc)
createToggle("🛠️ Auto Buy Gear", settingsFrame, AutoBuyFunc)
createToggle("💄 Auto Cosmetics", settingsFrame, AutoBuyFunc)
createToggle("🌐 Remote Plant", settingsFrame, RemotePlantFunc)
createToggle("🔨 Auto Craft", settingsFrame, AutoCraftFunc)
createToggle("🔔 Discord Notify", settingsFrame, DiscordNotifyFunc)

-- Tạo toggle trong Scripting (giống Settings)
createToggle("🪓 Auto Harvest", scriptingFrame, AutoHarvestFunc)
local autoPlantBtnScript = createToggle("🌱 Auto Plant", scriptingFrame, AutoPlantFunc)
local plantOptionsScript = Instance.new("Frame", scriptingFrame)
plantOptionsScript.Size = UDim2.new(1, -10, 0, 120)
plantOptionsScript.BackgroundTransparency = 1
plantOptionsScript.Visible = false
createOptionToggle("Carrot", 10, 15, 1, plantOptionsScript, autoPlantBtnScript)
createOptionToggle("Strawberry", 20, 30, 2, plantOptionsScript, autoPlantBtnScript)
createOptionToggle("Blueberry", 25, 35, 3, plantOptionsScript, autoPlantBtnScript)
createOptionToggle("Tomato", 15, 25, 1, plantOptionsScript, autoPlantBtnScript)
autoPlantBtnScript.MouseButton1Click:Connect(function()
    plantOptionsScript.Visible = not plantOptionsScript.Visible
end)

local autoSellBtnScript = createToggle("💰 Auto Sell", scriptingFrame, AutoSellFunc)
local sellSliderScript = createSellSlider(scriptingFrame)
sellSliderScript.Visible = false
autoSellBtnScript.MouseButton1Click:Connect(function()
    sellSliderScript.Visible = not sellSliderScript.Visible
end)

local autoBuySeedsBtnScript = createToggle("🛒 Auto Buy Seeds", scriptingFrame, AutoBuyFunc)
local seedOptionsScript = Instance.new("Frame", scriptingFrame)
seedOptionsScript.Size = UDim2.new(1, -10, 0, 120)
seedOptionsScript.BackgroundTransparency = 1
seedOptionsScript.Visible = false
createToggle("Auto Buy Carrot", seedOptionsScript, function(state) print("Auto Buy Carrot:", state) end)
createToggle("Auto Buy Strawberry", seedOptionsScript, function(state) print("Auto Buy Strawberry:", state) end)
createToggle("Auto Buy Blueberry", seedOptionsScript, function(state) print("Auto Buy Blueberry:", state) end)
createToggle("Auto Buy Tomato", seedOptionsScript, function(state) print("Auto Buy Tomato:", state) end)
autoBuySeedsBtnScript.MouseButton1Click:Connect(function()
    seedOptionsScript.Visible = not seedOptionsScript.Visible
end)

createToggle("🐣 Auto Buy Eggs", scriptingFrame, AutoHatchFunc)
createToggle("🛠️ Auto Buy Gear", scriptingFrame, AutoBuyFunc)
createToggle("💄 Auto Cosmetics", scriptingFrame, AutoBuyFunc)
createToggle("🌐 Remote Plant", scriptingFrame, RemotePlantFunc)
createToggle("🔨 Auto Craft", scriptingFrame, AutoCraftFunc)
createToggle("🔔 Discord Notify", scriptingFrame, DiscordNotifyFunc)

print("✅ Grow a Garden Auto Script with Popup UI loaded.")
