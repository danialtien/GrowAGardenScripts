-- Wait for game to load (From RobloxSource.lua)
repeat
    wait()
until game:IsLoaded()
repeat
    wait()
until game.Players.LocalPlayer.Character
repeat
    wait()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 0))
until game.Players.LocalPlayer:GetAttribute("DataFullyLoaded") and
    game.Players.LocalPlayer:GetAttribute("Finished_Loading")
repeat
    wait()
until game.CoreGui

setfpscap(3)

-- Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer

-- Config from RobloxConfig.lua (Only 2 features: autoPlant, autoHarvest)
getgenv().Config = {
    ["Mode Plant"] = "Custom", -- "Auto" or "Custom"
    ["Seed"] = {             -- Seed Plant Custom
        -- ["Strawberry"] = 44,
        -- ["Blueberry"] = 44,
        -- ["Tomato"] = 44,
        -- ["Loquat"] = 44,
        -- ["Pineapple"] = 44,
        ["Carrot"] = 44,
        -- ["Bell Pepper"] = 44,
        -- ["Green Apple"] = 44,
        -- ["Feijoa"] = 44,
        -- ["Avocado"] = 44,
        -- ["Sugar Apple"] = 44,
        -- ["Banana"] = 44,
        -- ["Prickly Pear"] = 44,
        -- ["Watermelon"] = 44,
        ["Kiwi"] = 44
    },
    ["Limit Tree"] = 250,
    ["Keep Seed"] = { "Dragon Pepper", "Elephant Ears", "Sunflower", "Candy Blossom" }
}

-- UI variables from RobloxSource.lua
getgenv().Loaded = true

-- Create GUI from RobloxSource.lua
local HopGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
HopGui.DisplayOrder = 999

if get_hidden_gui or gethui then
    local hiddenUI = get_hidden_gui or gethui
    HopGui.Name = "CyndralDev"
    HopGui.Parent = hiddenUI()
    HopGui.Enabled = true
    HopGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
else
    HopGui.Name = "CyndralDev"
    HopGui.Parent = game.CoreGui
    HopGui.Enabled = true
    HopGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
end

MainFrame.Name = "MainFrame"
MainFrame.Parent = HopGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 0, 0, 0)

UIListLayout.Parent = MainFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

-- Helper function to create labels
local function createLabel(name, text, layoutOrder)
    local label = Instance.new("TextLabel")
    local stroke = Instance.new("UIStroke")

    label.Name = name
    label.Parent = MainFrame
    label.LayoutOrder = layoutOrder
    label.Size = UDim2.new(0, 200, 0, 30)
    label.BackgroundTransparency = 1
    label.Font = Enum.Font.FredokaOne
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextSize = 20

    stroke.Parent = label
    stroke.Color = Color3.fromRGB(0, 0, 0)
    stroke.Thickness = 1

    return label
end

-- Create UI elements
local NameHub = Instance.new("TextLabel")
local UIStroke = Instance.new("UIStroke")

NameHub.Name = "NameHub"
NameHub.Parent = MainFrame
NameHub.LayoutOrder = 0
NameHub.Size = UDim2.new(1, 0, 0, 80)
NameHub.BackgroundTransparency = 1
NameHub.Font = Enum.Font.FredokaOne
NameHub.Text = "Plant & Harvest Bot [ " .. game.Players.LocalPlayer.Name .. " ]"
NameHub.TextColor3 = Color3.fromRGB(9, 255, 248)
NameHub.TextSize = 50

UIStroke.Parent = NameHub
UIStroke.Color = Color3.fromRGB(0, 0, 0)
UIStroke.Thickness = 1

local Time = createLabel("Time", "0:0:0", 1)
local Plants = createLabel("Plants", "Plants: 0", 2)
local Status = createLabel("Status", "Status: Starting...", 3)

-- Auto-resize function
local function updateUISize()
    local maxWidth = 0
    local totalHeight = 0
    
    for _, child in ipairs(MainFrame:GetChildren()) do
        if child:IsA("TextLabel") then
            if child.TextBounds.X > maxWidth then
                maxWidth = child.TextBounds.X
            end
            totalHeight = totalHeight + child.Size.Y.Offset + 10
        end
    end
    
    MainFrame.Size = UDim2.new(0, maxWidth + 40, 0, totalHeight)
end

-- Connect auto-resize
NameHub:GetPropertyChangedSignal("Text"):Connect(updateUISize)
Time:GetPropertyChangedSignal("Text"):Connect(updateUISize)
Plants:GetPropertyChangedSignal("Text"):Connect(updateUISize)
Status:GetPropertyChangedSignal("Text"):Connect(updateUISize)
updateUISize()

-- Time tracking
local old = tick()
spawn(function()
    while wait(1) do
        local scripttime = tick() - old
        local seconds = scripttime % 60
        local minutes = math.floor(scripttime / 60 % 60)
        local hours = math.floor(scripttime / 3600)
        Time.Text = "Time: " .. string.format("%02d:%02d:%02d", hours, minutes, math.floor(seconds))
    end
end)

-- Global status update function
getgenv().ContentSet = function(content)
    if Status then
        Status.Text = "Status: " .. (content or "None")
    end
end

-- Button (positioned separately like in RobloxSource.lua)
local TextButton = Instance.new("TextButton")
local Uicorner = Instance.new("UICorner")

TextButton.Parent = HopGui
TextButton.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529)
TextButton.BorderColor3 = Color3.new(0.101961, 0.101961, 0.101961)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.05, 0, 0.05, 0) -- Positioned in top-left
TextButton.Size = UDim2.new(0, 60, 0, 60)
TextButton.Font = Enum.Font.FredokaOne
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 14
TextButton.Text = "ON"
TextButton.TextStrokeColor3 = Color3.new(1, 1, 1)
Uicorner.Parent = TextButton

-- Script on/off state
getgenv().ScriptEnabled = true

TextButton.MouseButton1Click:Connect(function()
    getgenv().ScriptEnabled = not getgenv().ScriptEnabled
    
    if getgenv().ScriptEnabled then
        TextButton.Text = "ON"
        TextButton.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529)
        getgenv().ContentSet("Script enabled")
        print("🟢 Script ON")
    else
        TextButton.Text = "OFF"
        TextButton.BackgroundColor3 = Color3.new(0.5, 0.2, 0.2) -- Red when off
        getgenv().ContentSet("Script disabled")
        print("🔴 Script OFF")
    end
end)

-- GUI Toggle Button
local GuiButton = Instance.new("TextButton")
local GuiCorner = Instance.new("UICorner")

GuiButton.Parent = HopGui
GuiButton.BackgroundColor3 = Color3.new(0.2, 0.4, 0.8) -- Blue color
GuiButton.BorderColor3 = Color3.new(0.101961, 0.101961, 0.101961)
GuiButton.BorderSizePixel = 0
GuiButton.Position = UDim2.new(0.05, 0, 0.15, 0) -- Below the ON/OFF button
GuiButton.Size = UDim2.new(0, 60, 0, 60)
GuiButton.Font = Enum.Font.FredokaOne
GuiButton.TextColor3 = Color3.new(1, 1, 1)
GuiButton.TextSize = 12
GuiButton.Text = "SHOW"
GuiButton.TextStrokeColor3 = Color3.new(0, 0, 0)
GuiCorner.Parent = GuiButton

-- GUI visibility state
getgenv().GuiVisible = true

GuiButton.MouseButton1Click:Connect(function()
    getgenv().GuiVisible = not getgenv().GuiVisible
    
    if getgenv().GuiVisible then
        MainFrame.Visible = true
        GuiButton.Text = "SHOW"
        GuiButton.BackgroundColor3 = Color3.new(0.2, 0.4, 0.8) -- Blue when showing
        print("👁️ GUI Visible")
    else
        MainFrame.Visible = false
        GuiButton.Text = "HIDE"
        GuiButton.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6) -- Gray when hidden
        print("🙈 GUI Hidden")
    end
end)

-- Keyboard shortcut for GUI toggle (RightShift key)
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.RightShift then
        -- Toggle GUI visibility
        getgenv().GuiVisible = not getgenv().GuiVisible
        
        if getgenv().GuiVisible then
            MainFrame.Visible = true
            GuiButton.Text = "SHOW"
            GuiButton.BackgroundColor3 = Color3.new(0.2, 0.4, 0.8)
            print("👁️ GUI Visible (Hotkey)")
        else
            MainFrame.Visible = false
            GuiButton.Text = "HIDE"
            GuiButton.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
            print("🙈 GUI Hidden (Hotkey)")
        end
    end
end)

local Config = getgenv().Config

-- Helper functions from RobloxSource.lua
local function getplace()
    return require(game.ReplicatedStorage.Modules.GetFarm)(game.Players.LocalPlayer)
end

local dataseed = require(game:GetService("ReplicatedStorage").Data.SeedData)

-- ========================================
-- 🌱 AUTO PLANT FUNCTION (Based on RobloxSource.lua)
-- ========================================

function autoPlant()
    -- Check if script is enabled
    if not getgenv().ScriptEnabled then
        return
    end
    
    pcall(function()
        local plantsFolder = getplace().Important.Plants_Physical
        local currentPlants = #plantsFolder:GetChildren()
        
        if currentPlants >= Config["Limit Tree"] then 
            getgenv().ContentSet("Plant limit reached: " .. currentPlants .. "/" .. Config["Limit Tree"])
            return 
        end
        
        if Config["Mode Plant"] == "Auto" then
            -- Auto mode: plant priority seeds
            local prioritySeeds = {"Strawberry", "Blueberry", "Tomato", "Carrot", "Watermelon", "Apple"}
            for _, seedName in pairs(prioritySeeds) do
                for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
                    if v.Name:find(seedName) and v:IsA("Tool") then
                        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                        if humanoid then
                            humanoid:EquipTool(v)
                            getgenv().ContentSet("Planting: " .. seedName)
                            task.wait(0.1)
                            return
                        end
                    end
                end
            end
        else
            -- Custom mode: plant seeds from Seed config
            for seedName, targetAmount in pairs(Config["Seed"]) do
                -- Count current planted seeds of this type
                local plantedCount = 0
                for _, plant in pairs(plantsFolder:GetChildren()) do
                    if plant.Name:find(seedName) then
                        plantedCount = plantedCount + 1
                    end
                end
                
                if plantedCount < targetAmount then
                    -- Find seed in backpack
                    for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
                        if v.Name:find(seedName) and v:IsA("Tool") then
                            local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                            if humanoid then
                                humanoid:EquipTool(v)
                                getgenv().ContentSet("Custom planting: " .. seedName .. " (" .. plantedCount .. "/" .. targetAmount .. ")")
                                task.wait(0.1)
                                return
                            end
                        end
                    end
                end
            end
        end
        
        -- Update plants count in GUI
        if Plants then
            Plants.Text = "Plants: " .. currentPlants .. "/" .. Config["Limit Tree"]
        end
    end)
end

-- ========================================
-- 🌾 AUTO HARVEST FUNCTION (Based on RobloxSource.lua)
-- ========================================

function autoHarvest()
    -- Check if script is enabled
    if not getgenv().ScriptEnabled then
        return
    end
    
    pcall(function()
        local plantsFolder = getplace().Important.Plants_Physical
        local harvestedCount = 0
        
        for i, v in plantsFolder:GetChildren() do
            if v:FindFirstChild("ClickDetector") and v:FindFirstChild("Growing") then
                if not v.Growing.Value then -- Plant is ready to harvest
                    fireclickdetector(v.ClickDetector)
                    harvestedCount = harvestedCount + 1
                    task.wait(0.05)
                end
            end
        end
        
        if harvestedCount > 0 then
            getgenv().ContentSet("Harvested " .. harvestedCount .. " plants")
        else
            getgenv().ContentSet("Waiting for plants to grow...")
        end
        
        -- Update plants count in GUI
        if Plants then
            Plants.Text = "Plants: " .. #plantsFolder:GetChildren() .. "/" .. Config["Limit Tree"]
        end
    end)
end

-- ========================================
-- 🔧 ANTI-AFK (From RobloxSource.lua)
-- ========================================

local VirtualUser = game:service("VirtualUser")
game:service("Players").LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

-- ========================================
-- 🚀 MAIN EXECUTION LOOPS (Only 2 features)
-- ========================================

-- Main loop for autoHarvest and autoPlant
task.spawn(function()
    while task.wait(1) do
        if getgenv().ScriptEnabled then
            pcall(autoHarvest)
            task.wait(0.5)
            pcall(autoPlant)
        else
            -- Script is disabled, update status
            getgenv().ContentSet("Script is OFF - Click button to enable")
        end
    end
end)

print("🌾 Plant & Harvest Bot Loaded Successfully!")
print("✅ Only 2 functions: autoPlant, autoHarvest")
print("🚀 Bot is now running...")
print("📊 GUI Status: Active")
print("🎮 Controls:")
print("   • ON/OFF Button: Toggle script")
print("   • SHOW/HIDE Button: Toggle GUI")
print("   • Right Shift Key: Toggle GUI (Hotkey)")

-- Initial status
getgenv().ContentSet("Bot started - Ready to plant and harvest!")
