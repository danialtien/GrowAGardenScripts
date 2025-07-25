

getgenv().Config = {
    ["Time To Sell"] = 35, -- Seconds
    ["Craft Event"] = {
        ["Crafters Seed Pack"] = true,
        ["Anti Bee Egg"] = true
    },
    ["Dont Open Pack"] = false,
    ["Mode Plant"] = "Custom", -- "Custom Or Auto"

    ["Seed"] = { -- Seed Plant Custom
        ["Strawberry"] = 44,
        ["Blueberry"] = 44,
        ["Tomato"] = 44,
        ["Loquat"] = 44,
        ["Pineapple"] = 44,
        ["Carrot"] = 44,
        ["Bell Pepper"] = 44,
        ["Green Apple"] = 44,
        ["Feijoa"] = 44,
        ["Avocado"] = 44,
        ["Sugar Apple"] = 44,
        ["Banana"] = 44,
        ["Prickly Pear"] = 44,
        ["Watermelon"] = 44,
        ["Kiwi"] = 44
    },
    ["Keep Seed"] = {"Dragon Pepper", "Elephant Ears", "Sunflower", "Candy Blossom"},
    ["Egg"] = {
        ["Mythical Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 5
        },
        ["Oasis Egg"] = {
            ["Place"] = true,
            ["Priority"] = 6
        },
        ["Anti Bee Egg"] = {
            ["Place"] = true,
            ["Priority"] = 1
        },
        ["Night Egg"] = {
            ["Place"] = true,
            ["Priority"] = 4
        },
        ["Bug Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 2
        },
        ["Paradise Egg"] = {
            ["Buy"] = true,
            ["Place"] = true,
            ["Priority"] = 3
        },
        ["Bee Egg"] = {
            ["Buy"] = true,
            ["Place"] = false,
            ["Priority"] = 3
        },
        ["Dinosaur Egg"] = {
            ["Place"] = true,
            ["Priority"] = 1
        },
        ["Primal Egg"] = {
            ["Place"] = true,
            ["Priority"] = 1
        },
        ["Zen Egg"] = {
            ["Place"] = true,
            ["Priority"] = 1
        }
    },

    ["Limit Tree"] = 250,
    ["Sprinkler"] = {
        ["Place Sprinkler"] = true,
        ["Buy Sprinkler"] = true,
        ["Basic Sprinkler"] = true,
        ["Advanced Sprinkler"] = true,
        ["Master Sprinkler"] = true,
        ["Godly Sprinkler"] = true
    },
    ["PetNeedSend"] = {"Dragonfly", "Raccoon", "Disco Bee", "Butterfly", "Mimic Octopus", "Kitsune"},
    ["Destroy Mode"] = {
        ["Auto Destroy when have money"] = 1000000, -- its will destroy all trees select when money >= select
        ["Mode Destroy"] = "Auto", -- "Custom"
        ["Trees"] = {"Strawberry", "Blueberry", "Corn", "Orange Tulip", "Carrot"},
        ["Rarity Destroy Auto"] = {"Common", "Uncommon", "Rare", "Legendary"},
        ["Destroy Untill"] = 150
    },
    ["Zen Event"] = {
        ["Restock Max Cost"] = 16000000,
        ["Zen Seed Pack"] = true,
        ["Zen Egg"] = true,
        ["Koi"] = true,
        ["Spiked Mango"] = true
    },
    ["Url"] = "https://discordapp.com/api/webhooks/1397964656626241617/M0czRe1aeY8Teq-OB5kF5sQ3xG5FX17LmB6RIfRnymuNaG80aC2Qpp7KLPBX9luYmys0", -- Webhook 
    ["Boost FPS"] = true,
    ["Black Screen"] = true,
    ["Note"] = "Cyndral Hub",
    ["Pet Mode"] = {
        ["Sell Pet"] = true,
        ["Equip Pet"] = true,
        ["Name Pet Equip"] = {
            ["Kitsune"] = 5, -- Limit Pet Equip
            "Giant Ant" -- Unlimited Pet
        },
        ["Max Slot Pet To Sell"] = 5, -- If Total Pet In Inventory >= ["Max Slot Pet To Sell"] script will sell pet
        ["Upgrade Slot Egg"] = {
            ["Enable"] = true,
            ["Pet"] = {"Starfish"}

        },
        ["Pet Dont Delete"] = {"Queen Bee", "Red Fox", "Dragonfly", "Raccoon", "Disco Bee", "Butterfly",
                               "Mimic Octopus", "Meerkat", "Sand Snake", "Fennec Fox", "Axolotl", "Hyacinth Macaw",
                               "Hamster", "Golden Lab", "T-Rex", "Spinosaurus", "Ankylosaurus", "Kitsune"},
        ["Dont Sell Pet If Weight > x"] = 10 -- Script dont sell pet if this weight >= 10
    },
    ["Webhook Mode"] = {
        ["Enable Send Pet Weight"] = true,
        ["Weight"] = 10, -- if Weight >= 10 they will send wh
        ["Enable Coin Notify"] = true,
        ["Coin Threshold"] = 32000000,
    }

}
loadstring(game:HttpGet("https://cdn.shouko.dev/RokidManager/neyoshiiuem/main/gag.lua"))()



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

-- spawn(function()
--     while wait() do
--         for i, v in gethui():GetChildren() do
--             if (string.len(v.Name) >= 19 or string.len(v.Name) <= 15) and v.Name ~= "RoniXUI" and v.Name ~= "CyndralDev" then
--                 v:Destroy()
--             end
--         end

--     end
-- end)
if not LPH_OBFUSCATED then
    getfenv().LPH_NO_VIRTUALIZE = function(f)
        return f
    end
end
local spawnegg = false

getgenv().Loaded = true
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
MainFrame.Size = UDim2.new(0, 0, 0, 0) -- Size will be determined by children

UIListLayout.Parent = MainFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

-- Helper function to create labels with consistent styling
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

-- Create all UI elements
local NameHub = Instance.new("TextLabel")
local UIStroke = Instance.new("UIStroke")

NameHub.Name = "NameHub"
NameHub.Parent = MainFrame
NameHub.LayoutOrder = 0
NameHub.Size = UDim2.new(1, 0, 0, 80) -- Width will auto-adjust
NameHub.BackgroundTransparency = 1
NameHub.Font = Enum.Font.FredokaOne
NameHub.Text = "Cyndral.Dev [ " .. game.Players.LocalPlayer.Name .. " ]"
NameHub.TextColor3 = Color3.fromRGB(9, 255, 248)
NameHub.TextSize = 50

UIStroke.Parent = NameHub
UIStroke.Color = Color3.fromRGB(0, 0, 0)
UIStroke.Thickness = 1

local Time = createLabel("Time", "0:0:0", 1)
local StrokeTime = Time.UIStroke

local Bounty = createLabel("Coins", "Coins: 0", 2)
local StrokeBounty = Bounty.UIStroke

local Chi = createLabel("Egg", "Chi: 0", 3)
local StrokeChi = Chi.UIStroke

local Summer = createLabel("SummerCoins", "Plants: 0", 4)
local StrokeSummer = Summer.UIStroke

local Egg = createLabel("Egg", "Egg Status: ", 5)
local StrokeEgg = Egg.UIStroke
Egg.Size = UDim2.new(0, 200, 0, 60) -- Larger for multiple lines
Egg.TextWrapped = true
local v1 = game:GetService("ReplicatedStorage")
local Itemobf = {}
for v3, v4 in require(v1.Data.EnumRegistry.ItemTypeEnums) do
    Itemobf[v3] = v4
end
local invobf = {}
for v3, v4 in require(game:GetService("ReplicatedStorage").Data.EnumRegistry.InventoryServiceEnums) do
    invobf[v3] = v4
end
local function formatTime(seconds)
    seconds = math.max(0, tonumber(seconds) or 0)
    local hours = math.floor(seconds / 3600)
    local remaining = seconds % 3600
    local minutes = math.floor(remaining / 60)
    local secs = math.floor(remaining % 60)
    return string.format("%02d:%02d:%02d", hours, minutes, secs)
end

local Craft = createLabel("Craft", "Don't Crafting", 5) -- Placeholder if needed
function iscraftgear()

    local v1 = game:GetService("ReplicatedStorage")
    local v_u_2 = game:GetService("TweenService")
    game:GetService("ServerScriptService")
    local v_u_3 = game:GetService("Players").LocalPlayer
    local v4 = v_u_3.PlayerGui
    require(v1.Modules.DataService)
    local v_u_5 = require(v1.Modules.UpdateService)
    local v_u_6 = require(v1.Modules.WaitForDescendant)
    require(v1.Modules.MarketController)
    local v_u_7 = require(v1.Modules.Notification)
    local v_u_8 = require(v1.Modules.CountDictionary)
    local v_u_9 = require(v1.Modules.CraftingService.CraftingGlobalObjectService)
    local function v_u_38(p37)
        return p37:GetAttribute("CraftingObjectType")
    end
    local p105 = workspace.CraftingTables.EventCraftingWorkBench
    local v107 = v_u_9:GetIndividualCraftingMachineData(p105, v_u_38(p105))
    if v107 and v107.CraftingItems[1] then
        return formatTime(v107.CraftingItems[1].TimeRemaining)
        -- v107.CraftingItems[1].IsDone = true
        -- v107.CraftingItems[1].TimeRemaining = 0
    end
end
function iscraftseed()

    local v1 = game:GetService("ReplicatedStorage")
    local v_u_2 = game:GetService("TweenService")
    game:GetService("ServerScriptService")
    local v_u_3 = game:GetService("Players").LocalPlayer
    local v4 = v_u_3.PlayerGui
    require(v1.Modules.DataService)
    local v_u_5 = require(v1.Modules.UpdateService)
    local v_u_6 = require(v1.Modules.WaitForDescendant)
    require(v1.Modules.MarketController)
    local v_u_7 = require(v1.Modules.Notification)
    local v_u_8 = require(v1.Modules.CountDictionary)
    local v_u_9 = require(v1.Modules.CraftingService.CraftingGlobalObjectService)
    local function v_u_38(p37)
        return p37:GetAttribute("CraftingObjectType")
    end
    local p104 = workspace.CraftingTables.SeedEventCraftingWorkBench
    local v106 = v_u_9:GetIndividualCraftingMachineData(p104, v_u_38(p104))
    if v106 and v106.CraftingItems[1] then
        return formatTime(v106.CraftingItems[1].TimeRemaining)
    end
end
local StrokeCraft = Craft.UIStroke

spawn(function()
    while wait() do
        local mode = "Don't Crafting"
        if iscraftseed() or iscraftgear() then
            mode = ""
        end
        local cntt = 0
        if iscraftseed() then
            mode = mode .. "\nCrafters Seed Pack " .. " [ TimeRemaining: " .. iscraftseed() .. " ] "
            cntt = cntt + 0.01
        end
        if iscraftgear() then
            mode = mode .. "\nAnti Bee Egg " .. " [ TimeRemaining: " .. iscraftgear() .. " ] "
            cntt = cntt + 0.01
        end
        Craft.Text = "Craft Status: " .. mode
    end
end)

-- Formatting functions
local function format(number)
    local isNegative = number < 0
    local formatted = tostring(math.abs(number))
    local result = ""
    local count = 0

    for i = #formatted, 1, -1 do
        result = formatted:sub(i, i) .. result
        count = count + 1
        if count % 3 == 0 and i > 1 then
            result = "," .. result
        end
    end

    if isNegative then
        result = "-" .. result
    end

    return result
end

-- Auto-resize function
local function updateUISize()
    local maxWidth = 0

    -- Find the widest element
    for _, child in ipairs(MainFrame:GetChildren()) do
        if child:IsA("TextLabel") or child:IsA("TextButton") then
            child.Size = UDim2.new(0, child.TextBounds.X + 20, 0, child.AbsoluteSize.Y)
            if child.TextBounds.X > maxWidth then
                maxWidth = child.TextBounds.X
            end
        end
    end

    -- Set all elements to the same width
    for _, child in ipairs(MainFrame:GetChildren()) do
        if child:IsA("TextLabel") or child:IsA("TextButton") then
            child.Size = UDim2.new(0, maxWidth + 20, 0, child.AbsoluteSize.Y)
        end
    end

    -- Update main frame size
    local totalHeight = 0
    for _, child in ipairs(MainFrame:GetChildren()) do
        if child:IsA("TextLabel") or child:IsA("TextButton") then
            totalHeight = totalHeight + child.AbsoluteSize.Y + UIListLayout.Padding.Offset
        end
    end

    MainFrame.Size = UDim2.new(0, maxWidth + 40, 0, totalHeight)
end

-- Connect text changes to auto-resize
NameHub:GetPropertyChangedSignal("Text"):Connect(updateUISize)
Time:GetPropertyChangedSignal("Text"):Connect(updateUISize)
Bounty:GetPropertyChangedSignal("Text"):Connect(updateUISize)
Summer:GetPropertyChangedSignal("Text"):Connect(updateUISize)
Egg:GetPropertyChangedSignal("Text"):Connect(updateUISize)
Chi:GetPropertyChangedSignal("Text"):Connect(updateUISize)
-- Initial size update
updateUISize()

-- Button (positioned separately since it's not part of the centered layout)
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
TextButton.Text = "On"
TextButton.TextStrokeColor3 = Color3.new(1, 1, 1)
Uicorner.Parent = TextButton

TextButton.MouseButton1Click:Connect(function()
    TextButton.MouseButton1Click:Connect(function()
        if getgenv().Config then
            -- Only toggle if either Black Screen or White Screen is initially enabled
            if getgenv().Config["Black Screen"] or getgenv().Config["White Screen"] then
                getgenv().Config["Boost FPS"] = not getgenv().Config["Boost FPS"]
                getgenv().Config["Black Screen"] = not getgenv().Config["Black Screen"]
                getgenv().Config["White Screen"] = not getgenv().Config["White Screen"]
                TextButton.Text = TextButton.Text == "On" and "Off" or "On"

                -- Update the button text only if we toggled
            end
        end
    end)
end)

-- Blur effect
local Blur = Instance.new("BlurEffect")
Blur.Name = "Blur"
Blur.Parent = game.Lighting
Blur.Size = 20
Blur.Enabled = false
function equipweapon(aq)
    local c6 = tostring(aq)
    local c7 = game.Players.LocalPlayer.Backpack:FindFirstChild(c6)
    local c8 = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") or
                   game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    if c7 then
        c8:EquipTool(c7)
    end
end
local startsellpet = false
-- Time tracking
local old = tick()
local scripttime = tick() - old
local seconds = scripttime % 60
local minutes = math.floor(scripttime / 60 % 60)
local hours = math.floor(scripttime / 3600)

spawn(function()
    while wait() do
        scripttime = tick() - old
        seconds = scripttime % 60
        minutes = math.floor(scripttime / 60 % 60)
        hours = math.floor(scripttime / 3600)
        Time.Text = "Time : " .. hours .. "h" .. minutes .. "m" .. math.floor(seconds) .. "s"
    end
end)

-- Egg status tracking
local function getplace()
    return require(game.ReplicatedStorage.Modules.GetFarm)(game.Players.LocalPlayer)
end

spawn(function()
    while wait() do
        local hihi = ""
        local cnt = 0
        for i, v in pairs(getplace().Important.Objects_Physical:GetChildren()) do
            if string.find(v.Name, "Egg") then
                hihi = hihi .. v:GetAttribute("EggName") .. " [ " .. formatTime(v:GetAttribute("TimeToHatch")) .. " ]\n"
                cnt = cnt + 1
            end
        end
        Egg.Text = "Egg Status: " .. (hihi ~= "" and "\n" .. hihi or " None")
        Egg.Size = UDim2.new(0, 200, 0, 30 + (cnt * 20)) -- Dynamic height based on egg count
        updateUISize()
        task.wait(0.5)
    end
end)

-- Coin tracking
local oldmoney = math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value)

local function SetNewReason(textstatus)
    if not textstatus or textstatus == '' then
        HopGui.Enabled = false
        Blur.Enabled = false
        return
    end

    HopGui.Enabled = true
    Blur.Enabled = true
    Bounty.Text = textstatus
    updateUISize()
end

spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                local current = math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value)
                local diff = current - oldmoney

                if diff < 0 then
                    SetNewReason("Coins: " .. format(current) .. " ( " .. format(diff) .. " )")
                else
                    SetNewReason("Coins: " .. format(current) .. " ( + " .. format(diff) .. " )")
                end
            end)
        end
    end)
end)
function concac()
    local v2 = game:GetService("ReplicatedStorage")
    local v_u_6 = require(v2.Modules.DataService)

    local v30 = v_u_6:GetData()
    local v_u_11 = require(v2.Modules.CountDictionary)

    local v_u_9 = require(v2.Modules.UpdateService)
    local v_u_13 = require(v2.Data.UpdateEvents.DinoMachineData)

    return v30.DinoMachine.CurrentMachineLevel < v_u_11(v_u_13.LEVEL_PLANT_WEIGHT_REQUIREMENTS)
end
-- Anti-afk
local VirtualUser = game:service("VirtualUser")
game:service("Players").LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                local dataseed = require(game:GetService("ReplicatedStorage").Data.SeedData)
                local v_u_1 = game:GetService("ReplicatedStorage")
                game:GetService("TweenService")
                local v_u_3 = require(v_u_1.Modules.GuiController)
                local v_u_4 = require(v_u_1.Modules.DataService)
                local v22 = v_u_4:GetData()
                Chi.Text = "Chi Coins: " .. v22.SpecialCurrency.Chi
                Summer.Text = "Plants: " .. format(#getplace().Important.Plants_Physical:GetChildren())
            end)
        end
    end)
end)

local v0 = {
    k = "e3",
    m = "e6",
    b = "e9",
    t = "e12",
    q = "e15"
};
ParseNumberSmart = function(v1)
    if type(v1) == "string" then
        v1 = v1:gsub("[,%s%c%z]", "");
        if #v1 > 0 then
            local v2 = v0[v1:sub(#v1):lower()];
            if v2 then
                v1 = v1:sub(1, #v1 - 1) .. v2;
            end
        end
    end
    return (tonumber(v1));
end;
local plr = game.Players.LocalPlayer

local oldmoney = math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value)
spawn(function()
    while wait() do
        if getgenv().Config["Black Screen"] then
            game:GetService("Lighting").ExposureCompensation = -math.huge
        else
            game:GetService("Lighting").ExposureCompensation = 0
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                if math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) - oldmoney < 0 then
                    SetNewReason("Coins: " ..
                                     format(
                            math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value)) .. " ( " ..
                                     format(
                            math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) - oldmoney) ..
                                     " )")
                else
                    SetNewReason("Coins: " ..
                                     format(
                            math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value)) .. " ( + " ..
                                     format(
                            math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) - oldmoney) ..
                                     " )")
                end
            end)
        end
    end)
end)
local v_u_1 = game:GetService("ReplicatedStorage")

local v_u_6 = require(v_u_1.Modules.DataService)

local v39 = v_u_6:GetData()
local dataevent = require(game:GetService("ReplicatedStorage").Data.EventShopData)
local oldsummer = v39.SpecialCurrency.SummerCoins
spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                Summer.Text = "Plants: " .. format(#getplace().Important.Plants_Physical:GetChildren())
            end)
        end
    end)
end)
pcall(function()
    if game.CoreGui:FindFirstChild("Status") then
        game.CoreGui.Status:Destroy()
    end
    if game.CoreGui:FindFirstChild("CoinCard") then
        game.CoreGui.CoinCard:Destroy()
    end
    if game.Workspace.CurrentCamera:FindFirstChild("BananaScreenBlur") then
        game.Workspace.CurrentCamera.BananaScreenBlur:Destroy()
    end
end)
local ScreenGui2 = Instance.new("ScreenGui")
ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui2.Parent = game.CoreGui
ScreenGui2.Name = 'Status'
-- Create DropShadow2Holder2 frame
local DropShadow2Holder2 = Instance.new("Frame")
DropShadow2Holder2.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow2Holder2.BackgroundTransparency = 1
DropShadow2Holder2.BorderSizePixel = 0
DropShadow2Holder2.Position = UDim2.new(0.5, 0, 0.05, 0)
DropShadow2Holder2.Size = UDim2.new(0, 500, 0, 68)
DropShadow2Holder2.ZIndex = 0
DropShadow2Holder2.Name = "DropShadow2Holder2"
DropShadow2Holder2.Parent = ScreenGui2

-- Create DropShadow2 ImageLabel
local DropShadow2 = Instance.new("ImageLabel")
DropShadow2.Image = "rbxassetid://6015897843"
DropShadow2.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow2.ImageTransparency = 0.5
DropShadow2.ScaleType = Enum.ScaleType.Slice
DropShadow2.SliceCenter = Rect.new(49, 49, 450, 450)
DropShadow2.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow2.BackgroundTransparency = 1
DropShadow2.BorderSizePixel = 0
DropShadow2.Position = UDim2.new(0.5, 0, 0.35, 0)
DropShadow2.Size = UDim2.new(1, 47, 1, 47)
DropShadow2.ZIndex = 0
DropShadow2.Name = "DropShadow2"
DropShadow2.Parent = DropShadow2Holder2

-- Create Main2 frame inside DropShadow2
local Main2 = Instance.new("Frame")
Main2.AnchorPoint = Vector2.new(0.5, 0.5)
Main2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main2.BackgroundTransparency = 0.5
Main2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main2.BorderSizePixel = 0
Main2.Position = UDim2.new(0.5, 0, 0.5, 0)
Main2.Size = UDim2.new(1, -50, 1, -55)
Main2.Name = "Main"
Main2.Parent = DropShadow2

-- Create UIGradient for Main2's stroke
local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Color = Color3.fromRGB(9, 255, 248)
UIStroke2.Thickness = 2.5
UIStroke2.Parent = Main2

-- Create Top2 and Under TextLabels inside Main2
local Top2 = Instance.new("TextLabel")
Top2.AnchorPoint = Vector2.new(0.5, 0)
Top2.BackgroundTransparency = 1
Top2.Font = Enum.Font.GothamBold
Top2.Text = "Auto Farm: None"
Top2.TextColor3 = Color3.fromRGB(255, 255, 255)
Top2.TextSize = 16.5
Top2.TextYAlignment = Enum.TextYAlignment.Bottom
Top2.Size = UDim2.new(0, 500, 0, 18)
Top2.Position = UDim2.new(0.5, 0, 0, 10)
Top2.Name = "Top2"
Top2.Parent = Main2
local Colortext = Instance.new("UIGradient");

Colortext.Color = ColorSequence.new {ColorSequenceKeypoint.new(0, Color3.fromRGB(9, 255, 248)),
                                     ColorSequenceKeypoint.new(1, Color3.fromRGB(9, 255, 248))}
Colortext.Parent = Top2
local Under2 = Instance.new("TextLabel");

Under2.Font = Enum.Font.GothamBold
Under2.Text = "Script started!"
Under2.TextColor3 = Color3.fromRGB(255, 255, 255)
Under2.TextSize = 16.5
Under2.TextYAlignment = Enum.TextYAlignment.Bottom
Under2.AnchorPoint = Vector2.new(0.5, 0)
Under2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Under2.BackgroundTransparency = 0.9990000128746033
Under2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Under2.BorderSizePixel = 0
Under2.Position = UDim2.new(0.5, 0, 0, 30)
Under2.Size = UDim2.new(0, 500, 0, 18)
Under2.Name = "Under"
Under2.Parent = Main2
local Colortext2 = Instance.new("UIGradient");

Colortext2.Color = ColorSequence.new {ColorSequenceKeypoint.new(0, Color3.fromRGB(9, 255, 248)),
                                      ColorSequenceKeypoint.new(1, Color3.fromRGB(9, 255, 248))}
Colortext2.Parent = Under2
Top2.Size = UDim2.new(0, Top2.TextBounds.X, 0, 18)
Under2.Size = UDim2.new(0, Under2.TextBounds.X, 0, 18)
if Top2.Size.X.Offset > Under2.Size.X.Offset then
    DropShadow2Holder2.Size = UDim2.new(0, Top2.TextBounds.X + 50, 0, 68)
else
    DropShadow2Holder2.Size = UDim2.new(0, Under2.TextBounds.X + 50, 0, 68)
end
Top2:GetPropertyChangedSignal("Text"):Connect(function()
    Top2.Size = UDim2.new(0, Top2.TextBounds.X, 0, 18)
    if Top2.Size.X.Offset > Under2.Size.X.Offset then
        DropShadow2Holder2.Size = UDim2.new(0, Top2.TextBounds.X + 50, 0, 68)
    else
        DropShadow2Holder2.Size = UDim2.new(0, Under2.TextBounds.X + 50, 0, 68)
    end
end)
Under2:GetPropertyChangedSignal("Text"):Connect(function()
    Under2.Size = UDim2.new(0, Under2.TextBounds.X, 0, 18)
    if Top2.Size.X.Offset > Under2.Size.X.Offset then
        DropShadow2Holder2.Size = UDim2.new(0, Top2.TextBounds.X + 50, 0, 68)
    else
        DropShadow2Holder2.Size = UDim2.new(0, Under2.TextBounds.X + 50, 0, 68)
    end
end)
function checkcanplantPet()
    local petCounter = 0
    local v2 = game:GetService("ReplicatedStorage")
    local v_u_7 = require(v2.Data.PetRegistry)
    local v_u_12 = v_u_7.PetList
    local v_u_71 = require(v2.Data.DecimalNumberFormat)
    local v_u_3 = require(game:GetService("ReplicatedStorage").Modules.DataService)
    local playerdata = v_u_3:GetData()
    local equippedPets = playerdata.PetsData.EquippedPets or {}
    local inventoryData = playerdata.PetsData.PetInventory.Data or {}
    local backpackItems = game.Players.LocalPlayer.Backpack:GetChildren()
    pcall(function()
        for i, v in equippedPets do
            petCounter = petCounter + 1
        end
    end)
    return petCounter
end
local v_u_1 = game:GetService("ReplicatedStorage")
local v_u_3 = require(v_u_1.Modules.DataService)
local v33 = v_u_3:GetData()
Top2.Text = "Pet Equip: " .. checkcanplantPet() .. " / " .. v33.PetsData.PurchasedEquipSlots + 3
Under2.Text = "Status: Test "
getgenv().ContentSet = function(Content2)

    if not Content2 or Content2 == '' then
        Content2 = 'None'
    end
    Top2.Text = "Pet Equip: " .. checkcanplantPet() .. " / " .. v33.PetsData.PurchasedEquipSlots + 3
    Under2.Text = Content2
end

function getimage(id)
    local response = request({
        Url = "https://thumbnails.roblox.com/v1/assets?assetIds=" .. id ..
            "&returnPolicy=PlaceHolder&size=420x420&format=webp",
        Method = 'GET',
        Headers = {
            ["Content-Type"] = "application/json"
        }
    })

    if response.StatusCode == 200 then
        local responseData = game:GetService("HttpService"):JSONDecode(response.Body)

        if responseData and responseData.data and #responseData.data > 0 then
            local imageUrl = responseData.data[1].imageUrl
            return imageUrl
        else
            print("Error: Could not retrieve image data.")
        end
    else
        print("Request failed with status code: " .. response.StatusCode)
    end
end

function sendlog(petname, rarity, link, Weight)
    local Message = {
        ['username'] = "Pet Webhook",
        ["embeds"] = {{
            ["title"] = "Pet Detected",
            ["color"] = 0x09FFF8,
            ["fields"] = {{
                ["name"] = "Pet:",
                ["value"] = "```\n" .. petname .. "```"
            }, {
                ["name"] = "Rarity:",
                ["value"] = "```\n" .. rarity .. "```"
            }, {
                ["name"] = "Weight:",
                ["value"] = "```\n" .. Weight .. "```"
            }},
            ["footer"] = {
                ["text"] = getgenv().Config["Note"]
            },
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
            ["thumbnail"] = {
                ["url"] = link
            }
        }}
    }
    local DataCallBack = request({
        -- Url = "https://discord.com/api/webhooks/1374718112313901066/tLZtXvIGGi17qrUZ7zrrmLz6IWFxxNbB97YLj62n1-qg6FXg7sKlgqvSUwO-FUBMumgf",
        Url = "https://discordapp.com/api/webhooks/1397964656626241617/M0czRe1aeY8Teq-OB5kF5sQ3xG5FX17LmB6RIfRnymuNaG80aC2Qpp7KLPBX9luYmys0",
        Method = 'POST',
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(Message)
    })
end
function sendwh(petname, Rarity, link, Weight)
    local Message = {
        ['username'] = "Grow A Garden",
        ["content"] = "@everyone Found: " .. petname,
        ["embeds"] = {{
            ["title"] = "Grow Of Garden",

            ["color"] = 0x09FFF8,
            ["footer"] = {
                ["text"] = getgenv().Config["Note"]
            },
            ["fields"] = {{
                ["name"] = "Username: ",
                ["value"] = "Account: ||" .. game.Players.LocalPlayer.Name .. "||\nMoney: " ..
                    format(math.floor(game.Players.LocalPlayer.leaderstats.Sheckles.Value))
            }, {
                ["name"] = "Pet:",
                ["value"] = "```\n" .. petname .. "```"
            }, {
                ["name"] = "Rarity:",
                ["value"] = "```\n" .. Rarity .. "```"
            }, {
                ["name"] = "Weight:",
                ["value"] = "```\n" .. Weight .. "```"
            }},

            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
            ["thumbnail"] = {
                ["url"] = link
            }
        }}

    }
    local DataCallBack = request({
        Url = getgenv().Config["Url"],
        Method = 'POST',
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(Message)
    })
end
local savee = {}
local blacklisteggid = {}
function GetEggInfo(v)
    local v_u_1 = game:GetService("ReplicatedStorage")
    local v_u_3 = require(v_u_1.Modules.DataService)
    local Data = v_u_3:GetData()
    local Objects = Data.SavedObjects

    local PetData = require(game.ReplicatedStorage.Data.PetRegistry.PetList)
    local Uid = v:GetAttribute("OBJECT_UUID")
    local PetsData = Data.PetsData
    if Data.SaveSlots.AllSlots.DEFAULT.SavedObjects[Uid].Data.CanHatch then
        local Pet = Data.SaveSlots.AllSlots.DEFAULT.SavedObjects[Uid].Data.Type
        local Egg = Data.SaveSlots.AllSlots.DEFAULT.SavedObjects[Uid].Data.EggName
        local Weight = math.floor(Data.SaveSlots.AllSlots.DEFAULT.SavedObjects[Uid].Data.BaseWeight * 100) / 100
        local data = require(game:GetService("ReplicatedStorage").Data.PetRegistry.PetList)
        local c = data[Pet].Icon:gsub("rbxassetid://", "")

        -- print(Pet,Rarity,Egg,Weight)
        -- table.foreach(PetEgg.RandomPetData.GeneratedPetData,print)
        -- print(Pet,Egg)
        local MutableStats = PetsData.MutableStats
        local PetInventory = PetsData.PetInventory.Data
        local count = 0
        for i, v in PetInventory do
            count = count + 1
        end
        if not getgenv().Config["Dont Hatch Egg"] then
            game.ReplicatedStorage.GameEvents.PetEggService:FireServer("HatchPet", v)

        end
        if table.find(getgenv().Config["PetNeedSend"], Pet) or
            (getgenv().Config["Webhook Mode"]["Enable Send Pet Weight"] and Weight >=
                getgenv().Config["Webhook Mode"]["Weight"]) then

            if data[Pet] then
                local c = data[Pet].Icon:gsub("rbxassetid://", "")
                sendlog(Pet, data[Pet].Rarity, getimage(c), Weight)
                task.wait(2)
                sendwh(Pet, data[Pet].Rarity, getimage(c), Weight)
                task.wait(2)
                for i, v in game.Players.LocalPlayer.Character:GetChildren() do
                    if v:GetAttribute("PET_UUID") then
                        v.Parent = game.Players.LocalPlayer.Backpack
                    end
                end

            end

        end
    end
end
local getplace = (function()
    local GetFarm = require(game.ReplicatedStorage.Modules.GetFarm)(game.Players.LocalPlayer)
    return GetFarm
end)
local wlfruit = {}
local v_u_24 = require(game.ReplicatedStorage.Data.SeedData)
local v_u_8 = require(game:GetService("ReplicatedStorage").Modules.UpdateService)

for v_u_47, v_u_48 in v_u_24 do
    if v_u_48.DisplayInShop and
        not (v_u_8:IsHiddenFromUpdate(v_u_48.SeedName) or v_u_8:IsHiddenAfterUpdate(v_u_48.SeedName)) then
        table.insert(wlfruit, v_u_47)
    end
end
local dataevent = {
    ["Prehistoric"] = {"Stonebite", "Paradise Petal", "Horned Dinoshroom", "Boneboo", "Firefly Fern", "Fossilight",
                       "Bone Blossom", "Horsetail", "Lingonberry", "Amber Spine", "Grand Volcania"}
}
function haveseed()
    local dataseed = require(game:GetService("ReplicatedStorage").Data.SeedData)

    if #getplace().Important.Plants_Physical:GetChildren() < getgenv().Config["Limit Tree"] then
        if concac() then
            for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
                if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Seed"] and
                    table.find(dataevent["Prehistoric"], v:GetAttribute(invobf["ItemName"])) then
                    return v
                end
            end
            for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
                if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Seed"] and
                    table.find(dataevent["Prehistoric"], v:GetAttribute(invobf["ItemName"])) then
                    return v
                end
            end
        end
        if getgenv().Config["Mode Plant"] == "Auto" then

            if math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) <
                getgenv().Config["Destroy Mode"]["Auto Destroy when have money"] then
                for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
                    if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Seed"] and
                        not table.find(getgenv().Config["Keep Seed"], v:GetAttribute(invobf["ItemName"])) then
                        return v
                    end
                end
                for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
                    if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Seed"] and
                        not table.find(getgenv().Config["Keep Seed"], v:GetAttribute(invobf["ItemName"])) then
                        return v
                    end
                end
            else
                for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
                    if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Seed"] and
                        not table.find(getgenv().Config["Keep Seed"], v:GetAttribute(invobf["ItemName"])) and
                        not table.find(getgenv().Config["Destroy Mode"]["Rarity Destroy Auto"],
                            dataseed[v:GetAttribute(invobf["ItemName"])].SeedRarity) then
                        return v
                    end
                end
                for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
                    if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Seed"] and
                        not table.find(getgenv().Config["Keep Seed"], v:GetAttribute(invobf["ItemName"])) and
                        not table.find(getgenv().Config["Destroy Mode"]["Rarity Destroy Auto"],
                            dataseed[v:GetAttribute(invobf["ItemName"])].SeedRarity) then
                        return v
                    end
                end
            end
        else
            if math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) <
                getgenv().Config["Destroy Mode"]["Auto Destroy when have money"] then

                for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
                    if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Seed"] and
                        getgenv()["Config"]["Seed"][v:GetAttribute(invobf["ItemName"])] then
                        return v
                    end
                end
                for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
                    if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Seed"] and
                        getgenv()["Config"]["Seed"][v:GetAttribute(invobf["ItemName"])] then
                        return v
                    end
                end
            else
                for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
                    if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Seed"] and
                        getgenv()["Config"]["Seed"][v:GetAttribute(invobf["ItemName"])] and
                        not table.find(getgenv().Config["Destroy Mode"]["Trees"], v:GetAttribute(invobf["ItemName"])) then
                        return v
                    end
                end
                for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
                    if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Seed"] and
                        getgenv()["Config"]["Seed"][v:GetAttribute(invobf["ItemName"])] and
                        not table.find(getgenv().Config["Destroy Mode"]["Trees"], v:GetAttribute(invobf["ItemName"])) then
                        return v
                    end
                end
            end
        end
    end
end
function check()
    local cnt = 0
    local invensize = require(game:GetService("ReplicatedStorage").Modules.InventoryService)
    if invensize.IsMaxInventory() then
        return 200
    end
    if game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value > 100000 then
        for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
            if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Holdable"] and not string.find(v.Name, "Tranquil") then
                cnt = cnt + 1
            end
        end
        for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
            if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Holdable"] and not string.find(v.Name, "Tranquil") then
                cnt = cnt + 1
            end
        end
    else
        for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
            if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Holdable"] then
                cnt = cnt + 1
            end
        end
        for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
            if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Holdable"] then
                cnt = cnt + 1
            end
        end
    end
    return cnt
end
function havefruitevent()
    for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
        if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Holdable"] and string.find(v.Name, "Tranquil") then
            return true
        end
    end
    for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
        if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Holdable"] and string.find(v.Name, "Tranquil") then
            return true
        end
    end
end
spawn(function()
    while wait() do
        if havefruitevent() then
            local v_u_1 = game:GetService("ReplicatedStorage")

            local v_u_6 = require(v_u_1.Modules.DataService)
            local data = {}
            local v39 = v_u_6:GetData()
            local dataevent = require(game:GetService("ReplicatedStorage").Data.EventShopData)
            if v39.SpecialCurrency.Chi >= 300 then
                if v39.ZenTree.CurrentTreeLevel < 7 then
                    local args = {"SubmitAllPlants"}
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("ZenQuestRemoteEvent")
                        :FireServer(unpack(args))
                end
            else
                local args = {"SubmitAllPlants"}
                game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("ZenAuraRemoteEvent")
                    :FireServer(unpack(args))

            end
        end
    end
end)
local startsell = false
spawn(function()
    pcall(function()
        while wait(getgenv().Config["Time To Sell"]) do
            pcall(function()
                startsell = true
                pcall(function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(86.5900116, 2.99999976, 0.426799476, -0.00339480047, 2.42123388e-08, -0.999994218,
                            -1.41987344e-12, 1, 2.42124845e-08, 0.999994218, 8.36164193e-11, -0.00339480047)
                    task.wait(1)
                    getgenv().ContentSet("Sell Item")

                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Sell_Inventory")
                        :FireServer()

                    startsell = false
                end)

            end)
        end
    end)
end)
spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                if (#game:GetService("Players").LocalPlayer.Backpack:GetChildren() >= 200 or
                    (game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value < 100 and check() > 1)) then
                    startsell = true

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(86.5900116, 2.99999976, 0.426799476, -0.00339480047, 2.42123388e-08, -0.999994218,
                            -1.41987344e-12, 1, 2.42124845e-08, 0.999994218, 8.36164193e-11, -0.00339480047)
                    task.wait(1)
                    getgenv().ContentSet("Sell Item")

                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Sell_Inventory")
                        :FireServer()

                    task.wait(1)
                    startsell = false
                end
            end)
        end
    end)
end)
function cnt(name)
    local cnt = 0
    if getplace() then
        for i, v in getplace().Important.Plants_Physical:GetChildren() do
            if v.Name == name then
                cnt = cnt + 1
            end
        end
        return cnt
    end
    return 0
end
spawn(function()
    while wait() do
        local dataseed = require(game:GetService("ReplicatedStorage").Data.SeedData)
        local v_u_1 = game:GetService("ReplicatedStorage")
        game:GetService("TweenService")
        local v_u_3 = require(v_u_1.Modules.GuiController)
        local v_u_4 = require(v_u_1.Modules.DataService)
        local v22 = v_u_4:GetData()
        local ahihi = {}
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local player = Players.LocalPlayer
        local sheckles = player.leaderstats.Sheckles
        local config = getgenv().Config
        local ahihi = {}

        for seedName, stockData in pairs(v22.SeedStock.Stocks) do
            local stockCount = stockData.Stock

            local destroyMode = config["Destroy Mode"]
            local autoDestroy = destroyMode["Auto Destroy when have money"]
            local modeDestroy = destroyMode["Mode Destroy"]
            local seedLimit = config["Seed"][seedName]
            local currentCount = cnt(seedName)
            local seedData = dataseed[seedName]
            local price = seedData.Price
            local rarity = seedData.Rarity
            local canAfford = sheckles.Value >= price

            local shouldBuy = seedLimit and currentCount < seedLimit and canAfford

            local skipBuy = false

            -- Apply logic based on Destroy Mode
            if modeDestroy == "Auto" and math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) >=
                getgenv().Config["Destroy Mode"]["Auto Destroy when have money"] then
                -- Skip if seed rarity is in destroy list
                if table.find(destroyMode["Rarity Destroy Auto"], rarity) then
                    skipBuy = true
                end
            elseif modeDestroy == "Custom" and
                math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) >=
                getgenv().Config["Destroy Mode"]["Auto Destroy when have money"] then
                -- Skip if seed name is in destroy tree list
                if table.find(destroyMode["Trees"], seedName) then
                    skipBuy = true
                end
            end

            local shouldAutoDestroy = not autoDestroy or (math.floor(sheckles.Value) < autoDestroy and autoDestroy)

            if shouldAutoDestroy then
                if shouldBuy and not skipBuy then
                    table.insert(ahihi, {
                        Price = price,
                        Seed = seedName,
                        Stock = stockCount
                    })
                end
            elseif not skipBuy and shouldBuy then
                table.insert(ahihi, {
                    Price = price,
                    Seed = seedName,
                    Stock = stockCount
                })
            end
        end

        table.sort(ahihi, function(a, b)
            return a.Price > b.Price
        end)

        for _, seedInfo in ipairs(ahihi) do

            while seedInfo.Stock > 0 and sheckles.Value >= dataseed[seedInfo.Seed].Price do

                local args = {seedInfo.Seed}
                ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuySeedStock"):FireServer(unpack(args))
                seedInfo.Stock = seedInfo.Stock - 1

                wait()

            end
        end

    end
end)
local foundAny = false

spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                if not haveseed() then

                else
                    for i, v in getplace().Important.Plant_Locations:GetChildren() do
                        if not foundAny then
                            if #getplace().Important.Plants_Physical:GetChildren() < getgenv().Config["Limit Tree"] then
                                local seed = haveseed()
                                seed.Parent = plr.Character
                                local arguments = {
                                    [1] = v.Position,
                                    [2] = seed:GetAttribute(invobf["ItemName"])
                                }
                                if plr:DistanceFromCharacter(v.Position) > 100 and not startsellpet then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getplace().Center_Point
                                                                                                     .CFrame
                                end
                                getgenv().ContentSet("Plant Fruits: " .. seed:GetAttribute(invobf["ItemName"]))
                                game.ReplicatedStorage.GameEvents.Plant_RE:FireServer(unpack(arguments))
                            end
                        end
                    end
                end
            end)
        end
    end)
end)
function GetMutationsAsString(Model, bool)

    local MutationHandler = require(game.ReplicatedStorage.Modules.MutationHandler)
    local GetMutationsAsString = MutationHandler.GetMutationsAsString(plr, Model, bool)
    if GetMutationsAsString then
        return GetMutationsAsString
    end
    return false

end
local plant = false
function isskip(name)
    for i, v in getgenv().Config["Mutation Skips"] do
        if string.find(name, i) and v then
            return true
        end
    end
end
local plantsFolder = getplace().Important.Plants_Physical
function needunequip(name)
    local test = false
    for i, v in game.Players.LocalPlayer.Character:GetChildren() do
        if v:IsA("Tool") and v.Name ~= name then
            return true
        end
    end
end
function checkcanplantegg()
    local cntt = 0
    for i, v in getplace().Important.Objects_Physical:GetChildren() do
        if string.find(v.Name, "Egg") then
            cntt = cntt + 1
        end
    end
    return cntt
end
function haveegg()
    local v_u_1 = game:GetService("ReplicatedStorage")
    local v_u_3 = require(v_u_1.Modules.DataService)
    local v33 = v_u_3:GetData()

    if checkcanplantegg() < v33.PetsData.PurchasedEggSlots + 3 then
        local candidateEggs = {}

        local function collectEggs(container)
            for _, egg in ipairs(container:GetChildren()) do
                local eggName = egg:GetAttribute(invobf["EggName"])
                local eggCfg = getgenv().Config["Egg"][eggName]
                if eggName and eggCfg and eggCfg["Place"] and type(eggCfg["Priority"]) == "number" then
                    table.insert(candidateEggs, {
                        obj = egg,
                        priority = eggCfg["Priority"]
                    })
                end
            end
        end

        collectEggs(plr.Backpack)
        collectEggs(plr.Character)

        table.sort(candidateEggs, function(a, b)
            return a.priority < b.priority
        end)
        if #candidateEggs > 0 then
            return candidateEggs[1].obj
        end
    end
end

local startfeed = false
spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                startfeed = false
                if not startsellpet then
                    local v2 = game:GetService("ReplicatedStorage")
                    local v_u_7 = require(v2.Data.PetRegistry)
                    local v_u_12 = v_u_7.PetList
                    local v_u_71 = require(v2.Data.DecimalNumberFormat)
                    local v_u_3 = require(game:GetService("ReplicatedStorage").Modules.DataService)
                    local playerdata = v_u_3:GetData()
                    local equippedPets = playerdata.PetsData.EquippedPets or {}
                    local inventoryData = playerdata.PetsData.PetInventory.Data or {}
                    local backpackItems = game.Players.LocalPlayer.Backpack:GetChildren()
                    for _, petId in pairs(equippedPets) do
                        local pet = inventoryData[petId]
                        local v76 = v_u_12[pet.PetType]
                        local v77 = v76.DefaultHunger
                        if tonumber(v_u_71(pet.PetData.Hunger)) < v77 * 50 / 100 then
                            for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
                                if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Holdable"] then
                                    v.Parent = game.Players.LocalPlayer.Character
                                    task.wait(1)
                                    repeat
                                        wait()
                                        getgenv().ContentSet("Feed Pet: " .. pet.PetType)
                                        local args = {"Feed", petId}
                                        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                                            "ActivePetService"):FireServer(unpack(args))
                                    until not v or not v.Parent or tonumber(v_u_71(pet.PetData.Hunger)) >= v77 or
                                        startsellpet
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

end)
spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                foundAny = false
                plantsFolder = getplace().Important.Plants_Physical
                if not startsellpet and #getplace().Important.Plants_Physical:GetChildren() >
                    getgenv().Config["Limit Tree"] then
                    if math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) >=
                        getgenv().Config["Destroy Mode"]["Auto Destroy when have money"] then
                        if getgenv().Config["Destroy Mode"]["Mode Destroy"] == "Custom" then
                            for _, plantName in ipairs(getgenv().Config["Destroy Mode"]["Trees"]) do
                                local plantModel = plantsFolder:FindFirstChild(plantName)
                                if plantModel and #getplace().Important.Plants_Physical:GetChildren() >
                                    getgenv().Config["Destroy Mode"]["Destroy Untill"] then

                                    repeat
                                        wait()
                                        getgenv().ContentSet(
                                            "Destroying " .. plantName .. " [ Trees x" ..
                                                #getplace().Important.Plants_Physical:GetChildren() .. " ]")
                                        equipweapon("Shovel [Destroy Plants]")
                                        if not concac() or
                                            (concac() and not table.find(dataevent["Prehistoric"], plantModel.Name)) then

                                            game:GetService("ReplicatedStorage").GameEvents.Remove_Item:FireServer(
                                                plantModel:FindFirstChildOfClass("Part"))
                                            task.wait(1)
                                        end
                                    until #getplace().Important.Plants_Physical:GetChildren() <=
                                        getgenv().Config["Destroy Mode"]["Destroy Untill"] or
                                        (concac() and table.find(dataevent["Prehistoric"], plantModel.Name))

                                end
                            end
                        else
                            local dataseed = require(game:GetService("ReplicatedStorage").Data.SeedData)

                            for i, v in getplace().Important.Plants_Physical:GetChildren() do
                                repeat
                                    wait()
                                    if table.find(getgenv().Config["Destroy Mode"]["Rarity Destroy Auto"],
                                        dataseed[v.Name].SeedRarity) and
                                        #getplace().Important.Plants_Physical:GetChildren() >
                                        getgenv().Config["Destroy Mode"]["Destroy Untill"] then
                                        foundAny = true
                                        local old = tick()
                                        equipweapon("Shovel [Destroy Plants]")
                                        task.wait()
                                        if not concac() or
                                            (concac() and not table.find(dataevent["Prehistoric"], v.Name)) then

                                            getgenv().ContentSet(
                                                "Destroying " .. v.Name .. " [ Trees x" ..
                                                    #getplace().Important.Plants_Physical:GetChildren() .. "]")

                                            game:GetService("ReplicatedStorage").GameEvents.Remove_Item:FireServer(
                                                v:FindFirstChildOfClass("Part"))
                                        end
                                    end
                                until #getplace().Important.Plants_Physical:GetChildren() <=
                                    getgenv().Config["Destroy Mode"]["Destroy Untill"] or tick() - old >= 10 or
                                    (concac() and table.find(dataevent["Prehistoric"], v.Name))
                            end

                        end
                    end
                end
            end)
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            pcall(function()

                local cnt = 0;
                if not foundAny and not startsellpet then
                    local a = require(game:GetService("ReplicatedStorage").Modules.Remotes)

                    for i, v in getplace().Important.Plants_Physical:GetChildren() do
                        if not v:FindFirstChild("Fruits") and not startsellpet then
                            getgenv().ContentSet("Collect Fruits: " .. v.Name)
                            a.Crops.Collect.send({v})
                            task.wait(0.2)
                        else
                            for i1, v1 in next, v:GetChildren() do

                                if v1.Name == "Fruits" and not startsellpet then
                                    for i2, v2 in v1:GetChildren() do
                                        task.wait(0.2)
                                        getgenv().ContentSet("Collect Fruits: " .. v2.Name)

                                        a.Crops.Collect.send({v2})
                                        cnt = cnt + 1

                                    end
                                end
                            end

                            task.wait(0.2)
                        end

                        -- cnt = cnt + 1

                    end
                end
            end)
        end
    end)
end)
local oldversion = game:HttpGet("https://yummydata.click/Versiongag")
local oldversion2 = game:HttpGet("https://yummydata.click/VersionBeta")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Player = game:GetService("Players").LocalPlayer
local mathRandom = math.random
local NetworkClient = game:GetService("NetworkClient")
local function getServerPing(serverId)

    return mathRandom(50, 150)
end

local function teleportToMostPopulatedServer(placeId, retryLimit)
    retryLimit = retryLimit or 5
    local attempts = 0
    local minPlayers = 1

    local function getCurrentServerId()
        return game:GetService("Players").LocalPlayer.Team or "Unknown"
    end

    while attempts < retryLimit do
        attempts = attempts + 1
        local success, result = pcall(function()
            return HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeId ..
                                                           '/servers/Public?sortOrder=Asc&limit=100&excludeFullServers=true')).data
        end)

        if success and result and #result > 0 then
            local validServers = {}
            for _, server in ipairs(result) do
                if server.playing >= minPlayers and server.playing < server.maxPlayers then
                    local hasExcludedPlayer = false

                    if not hasExcludedPlayer then
                        table.insert(validServers, {
                            server = server,
                            ping = getServerPing(server.id) -- Thêm giá trị ping vào
                        })
                    end
                end
            end

            if #validServers > 0 then
                table.sort(validServers, function(a, b)
                    return a.ping < b.ping
                end)

                local serverToTeleport = validServers[1].server

                local teleportSuccess, teleportError = pcall(function()
                    TeleportService:TeleportToPlaceInstance(placeId, serverToTeleport.id, Player)
                end)

                if teleportSuccess then

                    local originalServerId = getCurrentServerId()

                    task.wait(3)

                    if getCurrentServerId() == originalServerId then
                        table.remove(validServers, 1)
                        if #validServers > 0 then
                            return teleportToMostPopulatedServer(placeId, retryLimit)
                        else
                            return false
                        end
                    else
                        return true
                    end
                else
                end
            else
            end
        else
        end

        task.wait(2)
    end

    return false
end

spawn(function()
    pcall(function()
        while wait() do
            pcall(function()

                local v_u_1 = game:GetService("ReplicatedStorage")

                local v_u_3 = require(v_u_1.Modules.DataService)
                local v33 = v_u_3:GetData()
                local stats = require(game:GetService("ReplicatedStorage").Data.PetEggData)
                for i, v in v33.PetEggStock.Stocks do

                    if getgenv().Config["Egg"] and getgenv().Config["Egg"][v.EggName] and
                        getgenv().Config["Egg"][v.EggName]["Buy"] and v.Stock > 0 then
                        local args = {i}
                        getgenv().ContentSet("Buy Egg: " .. v.EggName)

                        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("BuyPetEgg")
                            :FireServer(unpack(args))
                        task.wait(3)
                    end
                end

            end)
        end
    end)
end)
spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                for i, v in getplace().Important.Plant_Locations:GetChildren() do
                    local minValue = math.huge
                    local maxValue = -math.huge
                    local minIndex = -1
                    local maxIndex = -1

                    -- Example loop to evaluate multiple indices
                    for ahh = 0, 1000 do
                        local index = ahh + 1
                        local layer = math.ceil((math.sqrt(index) - 1) / 2)
                        local layerStartIndex = (2 * layer - 1) ^ 2 + 1
                        local offset = index - layerStartIndex
                        local layerSize = layer * 2

                        local x, z
                        if offset < layerSize then
                            x = layer
                            z = -layer + offset
                        elseif offset < layerSize * 2 then
                            x = layer - (offset - layerSize)
                            z = layer
                        elseif offset < layerSize * 3 then
                            x = -layer
                            z = layer - (offset - layerSize * 2)
                        else
                            x = -layer + (offset - layerSize * 3)
                            z = -layer
                        end

                        -- Distance from origin (as example metric)
                        local value = math.sqrt(x ^ 2 + z ^ 2)

                        -- Track min/max values and their indices
                        if value < minValue then
                            minValue = value
                            minIndex = index
                        end
                        if value > maxValue then
                            maxValue = value
                            maxIndex = index
                        end

                        -- Optional: calculate world position
                        local finalPos = v.Position + Vector3.new(x * 10, 0, z)
                        local cframe = CFrame.new(finalPos)
                        local egg = haveegg()
                        if egg then
                            local name = egg.Name
                            equipweapon(name)
                            print("Spawn Egg: " .. name)
                            local args = {"CreateEgg", finalPos}

                            if plr:DistanceFromCharacter(finalPos) > 100 then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getplace().Center_Point
                                                                                                 .CFrame
                            end
                            game:GetService("ReplicatedStorage"):WaitForChild("GameEvents")
                                :WaitForChild("PetEggService"):FireServer(unpack(args))
                            task.wait(3)
                        end
                    end

                end
            end)
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                for i, v in workspace:GetChildren() do
                    if v.Name == "Farm" then
                        for i1, v1 in v:GetChildren() do
                            if v1.Name == "Farm" then
                                if v1:FindFirstChild("Important") and v1.Important:FindFirstChild("Data") and
                                    v1.Important.Data:FindFirstChild("Owner") and
                                    v1.Important.Data:FindFirstChild("Owner").Value ~= game.Players.LocalPlayer.Name then
                                    v1:Destroy()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)

end)

local startsell = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
    CFrame.new(86.5900116, 2.99999976, 0.426799476, -0.00339480047, 2.42123388e-08, -0.999994218, -1.41987344e-12, 1,
        2.42124845e-08, 0.999994218, 8.36164193e-11, -0.00339480047)
task.wait(1)
getgenv().ContentSet("Sell Item")

game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Sell_Inventory"):FireServer()
task.wait(1)
repeat
    wait()
until getplace()
for i, v in getplace().Important.Plants_Physical:GetChildren() do
    for i1, v1 in next, v:GetChildren() do
        if v1.Name ~= "1" and v1:IsA("Part") then
            v1:Destroy()
        end
        if v1:IsA("Model") or v1:IsA("MeshPart") then
            v1:Destroy()
        end
        if v1.Name == "Fruits" then
            for i2, v2 in next, v1:GetChildren() do
                for i3, v3 in next, v2:GetChildren() do
                    if (v3.Name ~= "1" and not v3:FindFirstChild("ProximityPrompt")) or v3:IsA("MeshPart") then
                        v3:Destroy()
                    end
                    if v3:IsA("Model") or v3:IsA("MeshPart") then
                        v3:Destroy()
                    end
                end
            end
        end
    end
end
for i, v in workspace.Farm:GetChildren() do
    if v ~= getplace() then
        v:Destroy()
    end

end

for i, v in workspace.Terrain:GetChildren() do
    v:Destroy()
end

for i, v in game:GetService("Players").LocalPlayer.PlayerScripts:GetChildren() do
    if v.Name ~= "InputGateway" and v.Name ~= "PlayerModule" and v.Name ~= "Backpack_V3" and v.Name ~= "CustomPack_New" then
        v:Destroy()
    end
end
local aaa = {"Camera", "Terrain", "Farm", game.Players.LocalPlayer.Name, "Interaction", "NPCS", "PetsPhysical",
             "BasePlate", "CraftingTables", "Tutorial_Points", "DinoEvent", "WeatherVisuals"}

for i, v in workspace:GetChildren() do
    if not table.find(aaa, v.Name) then
        v:Destroy()
    end

end
for i, v in getplace().Important.Plants_Physical:GetDescendants() do
    pcall(function()
        if v:IsA("Model") or v:IsA("Part") then
            v.Transparency = 1
        end
    end)
end

for i, v in game.Players:GetChildren() do
    if v.Name ~= plr.Name then
        v:Destroy()
    end
end
for i, v in game:GetService("Lighting"):GetChildren() do
    if v.Name ~= "Blur" then
        v:Destroy()
    end
end
for i, v in workspace.PetsPhysical:GetChildren() do
    if v:GetAttribute("OWNER") ~= plr.Name then
        v:Destroy()
    end
end
for i, v in game:GetService("ReplicatedStorage").Assets:GetChildren() do
    if v.Name ~= "Animations" and v.Name ~= "Models" and v.Name ~= "TravelingMerchantModels" then
        v:Destroy()
    end
end
for i, v in game:GetService("ReplicatedStorage").Assets.Models:GetChildren() do
    if v.Name ~= "EggModels" and v.Name ~= "SeedPacks" then
        v:Destroy()
    end
end
local delete = {"CosmeticServices", "Cosmetics", "OptimisationControllers", "FriendshipPot", "Settings",
                "4thJulyfireworks"}
for i, v in game:GetService("ReplicatedStorage").Modules:GetChildren() do
    if table.find(delete, v.Name) then
        v:Destroy()
    end
end
for i, v in game:GetService("ReplicatedStorage"):GetChildren() do
    if string.find(v.ClassName, "Sound") or v:IsA("BoolValue") or v:IsA("ObjectValue") or v:IsA("Part") or
        v:IsA("Model") or v:IsA("MeshPart") or v:IsA("Frame") or v:IsA("BillboardGui") or v:IsA("ScreenGui") or
        v:IsA("ImageLabel") or v:IsA("TextLabel") or v:IsA("NumberValue") or v:IsA("IntValue") then
        v:Destroy()
    end
end

if game:GetService("ReplicatedStorage"):FindFirstChild("NPC_UIS") then
    game:GetService("ReplicatedStorage"):FindFirstChild("NPC_UIS"):Destroy()
end
for i, v in workspace.NPCS:GetChildren() do
    if v.Name ~= "Steven" and v.Name ~= "Sam" then
        v:Destroy()
    end
end
for i, v in workspace.WeatherVisuals:GetChildren() do
    v:Destroy()
end
task.wait(3)
print("Loaded")
for i, v in game:GetService("Players").LocalPlayer.PlayerScripts:GetChildren() do
    if v.Name ~= "InputGateway" and v.Name ~= "PlayerModule" and v.Name ~= "Backpack_V3" and v.Name ~= "CustomPack_New" then
        v:Destroy()
    end
end
local aaa = {"Camera", "Terrain", "Farm", game.Players.LocalPlayer.Name, "Interaction", "NPCS", "PetsPhysical",
             "BasePlate", "CraftingTables", "Tutorial_Points", "DinoEvent", "WeatherVisuals"}
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

for _, ui in ipairs(playerGui:GetDescendants()) do
    if ui:IsA("ScreenGui") then
        ui.Enabled = false
    elseif ui:IsA("GuiObject") then
        ui.Visible = false
    end
end
workspace.Farm.ChildAdded:Connect(function(v)
    if v ~= getplace() then
        v:Destroy()
    end
end)
getplace().Important.Plants_Physical.ChildAdded:Connect(function(v)
    for i1, v1 in next, v:GetChildren() do
        if v1.Name ~= "1" and v1:IsA("Part") then
            v1:Destroy()
        end
        if v1:IsA("Model") or v1:IsA("MeshPart") then
            v1:Destroy()
        end
        if v1.Name == "Fruits" then
            for i2, v2 in next, v1:GetChildren() do
                for i3, v3 in next, v2:GetChildren() do
                    if (v3.Name ~= "1" and not v3:FindFirstChild("ProximityPrompt")) or v3:IsA("MeshPart") then
                        v3:Destroy()
                    end
                    if v3:IsA("Model") or v3:IsA("MeshPart") then
                        v3:Destroy()
                    end
                end
            end
        end
    end
end)
workspace.ChildAdded:Connect(function(v)
    if not table.find(aaa, v.Name) then
        v:Destroy()
    end
end)
workspace.Terrain.ChildAdded:Connect(function(v)
    v:Destroy()

end)
getplace().Important.Plants_Physical.DescendantAdded:Connect(function(v)
    pcall(function()
        if v:IsA("Model") or v:IsA("Part") then
            v.Transparency = 1
        end
    end)
end)
playerGui.DescendantAdded:Connect(function(ui)
    if ui:IsA("ScreenGui") then
        ui.Enabled = false
    elseif ui:IsA("GuiObject") then
        ui.Visible = false
    end
end)

game:GetService("Lighting").ChildAdded:Connect(function(v)
    if v.Name ~= "Blur" then
        v:Destroy()
    end
end)
game.Players.ChildAdded:Connect(function(v)
    if v.Name ~= plr.Name then
        v:Destroy()
    end
end)

local blacklistoj = {}

local blacklisteggid = {}
spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                for i, v in pairs(getplace().Important.Objects_Physical:GetChildren()) do
                    if v:GetAttribute("OBJECT_TYPE") == "PetEgg" and v:GetAttribute("TimeToHatch") == 0 then

                        GetEggInfo(v)
                    end
                end
            end)
        end
    end)
end)
function havesprinkler()
    for i, v in plr.Backpack:GetChildren() do
        if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Sprinkler"] and
            getgenv().Config["Sprinkler"][v:GetAttribute(invobf["ItemName"])] then
            return v
        end
    end
    for i, v in plr.Character:GetChildren() do
        if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Sprinkler"] and
            getgenv().Config["Sprinkler"][v:GetAttribute(invobf["ItemName"])] then
            return v
        end
    end
end
spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                local dataseed = require(game:GetService("ReplicatedStorage").Data.SeedData)
                local v_u_1 = game:GetService("ReplicatedStorage")
                game:GetService("TweenService")
                local v_u_3 = require(v_u_1.Modules.GuiController)
                local v_u_4 = require(v_u_1.Modules.DataService)
                local price = require(game:GetService("ReplicatedStorage").Data.GearData)
                local v22 = v_u_4:GetData()
                for i, v in v22.GearStock.Stocks do
                    if v.Stock > 0 then

                        if getgenv().Config["Sprinkler"][i] and getgenv().Config["Sprinkler"]["Buy Sprinkler"] and
                            game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value >= price[i].Price and
                            getgenv().Config["Sprinkler"][i] then
                            local args = {i}
                            game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("BuyGearStock")
                                :FireServer(unpack(args))

                        end

                    end

                end
            end)
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                local sprinkler = havesprinkler()
                if sprinkler and getgenv().Config["Sprinkler"]["Place Sprinkler"] then
                    equipweapon(sprinkler.Name)
                    for i, v in getplace().Important.Plant_Locations:GetChildren() do

                        if plr:DistanceFromCharacter(v.Position) > 100 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = getplace().Center_Point.CFrame
                        end
                        local Offset = v.Position + Vector3.new(0, 0.5, 0)
                        local args = {"Create", CFrame.new(Offset)}
                        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("SprinklerService")
                            :FireServer(unpack(args))
                        task.wait(3)
                    end
                end
            end)
        end
    end)
end)

local collect = false
function isrunning()
    local v1 = game:GetService("ReplicatedStorage")
    local v_u_6 = require(v1.Modules.DataService)
    local Data = v_u_6:GetData()
    local HoneyMachine = Data.HoneyMachine
    return HoneyMachine.IsRunning or false
end

function havePollinated()
    if not isrunning() then
        for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
            if string.find(v.Name, "Pollinated") and
                math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) >= 100000 then
                return true
            end
        end
        for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
            if string.find(v.Name, "Pollinated") and
                math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) >= 100000 then
                return true
            end
        end
    end
end

function havenightstaff()
    for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
        if v.Name == "Night Staff" then
            return v
        end
    end
end

function gethoney()

    local v1 = game:GetService("ReplicatedStorage")
    local v_u_6 = require(v1.Modules.DataService)
    local Data = v_u_6:GetData()
    return Data.SpecialCurrency.Honey
end

function havebeeegg()
    for i, v in game.Players.LocalPlayer.Backpack:GetChildren() do
        if string.find(v.Name, "Bee Egg") and not string.find(v.Name, "Anti") then
            return v:GetAttribute("c")
        end
    end
    for i, v in game.Players.LocalPlayer.Character:GetChildren() do
        if string.find(v.Name, "Bee Egg") and not string.find(v.Name, "Anti") then
            return v:GetAttribute("c")
        end
    end
end
function havedinosauregg()
    for i, v in game.Players.LocalPlayer.Backpack:GetChildren() do
        if string.find(v.Name, "Dinosaur") and not string.find(v.Name, "Anti") then
            return v:GetAttribute("c")
        end
    end
    for i, v in game.Players.LocalPlayer.Character:GetChildren() do
        if string.find(v.Name, "Dinosaur") and not string.find(v.Name, "Anti") then
            return v:GetAttribute("c")
        end
    end
end
function haveflowerpack()
    for i, v in game.Players.LocalPlayer.Backpack:GetChildren() do
        if string.find(v.Name, "Flower Seed Pack") then
            return v:GetAttribute("c")
        end
    end
    for i, v in game.Players.LocalPlayer.Character:GetChildren() do
        if string.find(v.Name, "Flower Seed Pack") then
            return v:GetAttribute("c")
        end
    end
end

spawn(function()
    while wait() do
        local args = {"Claim", workspace.CraftingTables:WaitForChild("EventCraftingWorkBench"), "GearEventWorkbench", 1}
        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("CraftingGlobalObjectService")
            :FireServer(unpack(args))
        task.wait(3)

        local args = {"Claim", workspace.CraftingTables:WaitForChild("SeedEventCraftingWorkBench"),
                      "SeedEventWorkbench", 1}
        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("CraftingGlobalObjectService")
            :FireServer(unpack(args))
        task.wait(3)
        local args = {"Claim", workspace:WaitForChild("DinoEvent"):WaitForChild("DinoCraftingTable"),
                      "DinoEventWorkbench", 1}
        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("CraftingGlobalObjectService")
            :FireServer(unpack(args))

        task.wait(5 * 60)
    end

end)

spawn(function()
    pcall(function()

        while wait() do
            pcall(function()

                local v1 = game:GetService("ReplicatedStorage")
                local v_u_2 = game:GetService("TweenService")
                game:GetService("ServerScriptService")
                local v_u_3 = game:GetService("Players").LocalPlayer
                local v4 = v_u_3.PlayerGui
                require(v1.Modules.DataService)
                local v_u_5 = require(v1.Modules.UpdateService)
                local v_u_6 = require(v1.Modules.WaitForDescendant)
                require(v1.Modules.MarketController)
                local v_u_7 = require(v1.Modules.Notification)
                local v_u_8 = require(v1.Modules.CountDictionary)
                local v_u_9 = require(v1.Modules.CraftingService.CraftingGlobalObjectService)
                local function v_u_38(p37)
                    return p37:GetAttribute("CraftingObjectType")
                end

                if getgenv().Config["Craft Event"]["Crafters Seed Pack"] then
                    local args = {"SetRecipe", workspace.CraftingTables.SeedEventCraftingWorkBench,
                                  "SeedEventWorkbench", "Crafters Seed Pack"}
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                        "CraftingGlobalObjectService"):FireServer(unpack(args))

                    local args = {"InputItem", workspace.CraftingTables.SeedEventCraftingWorkBench,
                                  "SeedEventWorkbench", 1, {
                        ItemType = "Seed Pack",
                        ItemData = {
                            UUID = haveflowerpack()
                        }
                    }}
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                        "CraftingGlobalObjectService"):FireServer(unpack(args))
                    local args = {"Craft", workspace.CraftingTables.SeedEventCraftingWorkBench, "SeedEventWorkbench"}
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                        "CraftingGlobalObjectService"):FireServer(unpack(args))
                    task.wait(1)
                    local p104 = workspace.CraftingTables.SeedEventCraftingWorkBench
                    local v106 = v_u_9:GetIndividualCraftingMachineData(p104, v_u_38(p104))

                end

                if getgenv().Config["Craft Event"]["Anti Bee Egg"] then

                    local args = {"SetRecipe", workspace.CraftingTables.EventCraftingWorkBench, "GearEventWorkbench",
                                  "Anti Bee Egg"}

                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                        "CraftingGlobalObjectService"):FireServer(unpack(args))
                    task.wait(1)
                    local args = {"InputItem", workspace.CraftingTables.EventCraftingWorkBench, "GearEventWorkbench", 1,
                                  {
                        ItemType = "PetEgg",
                        ItemData = {
                            UUID = havebeeegg()
                        }
                    }}
                    task.wait(1)
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                        "CraftingGlobalObjectService"):FireServer(unpack(args))
                    local args = {"Craft", workspace.CraftingTables.EventCraftingWorkBench, "GearEventWorkbench"}
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                        "CraftingGlobalObjectService"):FireServer(unpack(args))
                    task.wait(1)
                    local p105 = workspace.CraftingTables.EventCraftingWorkBench
                    local v107 = v_u_9:GetIndividualCraftingMachineData(p105, v_u_38(p105))

                end
                if getgenv().Config["Craft Event"]["Ancient Seed Pack"] then

                    local args = {"SetRecipe", workspace.DinoEvent.DinoCraftingTable, "DinoEventWorkbench",
                                  "Ancient Seed Pack"}
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                        "CraftingGlobalObjectService"):FireServer(unpack(args))
                    task.wait(1)
                    local args = {"InputItem", workspace.DinoEvent.DinoCraftingTable, "DinoEventWorkbench", 1, {
                        ItemType = "PetEgg",
                        ItemData = {
                            UUID = havedinosauregg()
                        }
                    }}
                    task.wait(1)
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                        "CraftingGlobalObjectService"):FireServer(unpack(args))
                    local args = {"Craft", workspace.DinoEvent.DinoCraftingTable, "DinoEventWorkbench"}
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                        "CraftingGlobalObjectService"):FireServer(unpack(args))
                    task.wait(1)

                end
            end)
        end
    end)
end)

spawn(function()
    while wait() do

        local v1 = game:GetService("ReplicatedStorage")
        local v_u_6 = require(v1.Modules.DataService)
        local Data = v_u_6:GetData()
        if Data.HoneyMachine.HoneyStored > 0 then
            local args = {"MachineInteract"}
            game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("HoneyMachineService_RE")
                :FireServer(unpack(args))

        end
    end
end)
spawn(function()

    while wait() do
        if not startsellpet then
            local v1 = game:GetService("ReplicatedStorage")
            local v_u_6 = require(v1.Modules.DataService)
            local Data = v_u_6:GetData()
            local HoneyMachine = Data.HoneyMachine
            if math.floor(game:GetService("Players").LocalPlayer.leaderstats.Sheckles.Value) >= 100000 then
                if HoneyMachine.HoneyStored > 0 then
                    local args = {"MachineInteract"}
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                        "HoneyMachineService_RE"):FireServer(unpack(args))
                    task.wait(2)
                end
                if havePollinated() then
                    for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
                        if string.find(v.Name, "Pollinated") then
                            v.Parent = plr.Character
                            task.wait(1)
                            local args = {"MachineInteract"}
                            game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                                "HoneyMachineService_RE"):FireServer(unpack(args))
                        end
                    end
                    for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
                        if string.find(v.Name, "Pollinated") then
                            v.Parent = plr.Character
                            task.wait(1)
                            local args = {"MachineInteract"}
                            game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild(
                                "HoneyMachineService_RE"):FireServer(unpack(args))
                        end
                    end

                    task.wait(2)
                end
            end
        end
    end
end)
function getnumpet()
    local cnt = 0
    for i, v in game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
        if v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Pet"] then
            cnt = cnt + 1

        end
    end
    for i, v in game:GetService("Players").LocalPlayer.Character:GetChildren() do
        if v:IsA("Tool") and v:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Pet"] then
            cnt = cnt + 1
        end
    end
    return cnt
end
-- local Webhook =
--    "https://discord.com/api/webhooks/1372172655347630142/3QcALa0PLzgM3Tjh_9mDrC7K3Lw0BR2J6214UdDuuGNDRIFRzvXgJ7TIAR_yVpHTUXIa"

local Webhook =
    "https://discordapp.com/api/webhooks/1397964656626241617/M0czRe1aeY8Teq-OB5kF5sQ3xG5FX17LmB6RIfRnymuNaG80aC2Qpp7KLPBX9luYmys0"

local HttpService = game:GetService("HttpService")
local requestt = http_request or request or syn.request
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local FormatPrice = (function(price)
    price = tonumber(price) or 0
    return tostring(price):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "") .. "$"
end)

local GetEggData = (function()
    local eggData = {}
    local eggModule = ReplicatedStorage.Data:FindFirstChild("PetEggData")
    if not eggModule or not eggModule:IsA("ModuleScript") then
        return eggData
    end

    local v_u_1 = game:GetService("ReplicatedStorage")

    local v_u_3 = require(v_u_1.Modules.DataService)
    local v33 = v_u_3:GetData()
    local stats = require(game:GetService("ReplicatedStorage").Data.PetEggData)
    for i, v in v33.PetEggStock.Stocks do
        table.insert(eggData, {
            name = v.EggName,
            rarity = stats[v.EggName].EggRarity or "Unknown",
            price = FormatPrice(stats[v.EggName].Price)
        })
    end
    return eggData
end)
local collectevent = function()
    local v_u_1 = game:GetService("ReplicatedStorage")

    local v_u_6 = require(v_u_1.Modules.DataService)
    local data = {}
    local v39 = v_u_6:GetData()
    local dataevent = require(game:GetService("ReplicatedStorage").Data.EventShopData)
    for i, v in v39.EventShopStock.Stocks do
        table.insert(data, {
            Item = i,
            Stock = "x" .. v.Stock .. " Stocks",
            Price = dataevent[i].Price .. " Chi Coins"
        })
    end
    return data
end

spawn(function()
    while wait() do
        local v_u_1 = game:GetService("ReplicatedStorage")

        local v_u_6 = require(v_u_1.Modules.DataService)
        local data = {}
        local v39 = v_u_6:GetData()
        local dataevent = require(game:GetService("ReplicatedStorage").Data.EventShopData)

        for i, v in v39.EventShopStock.Stocks do
            if getgenv().Config["Zen Event"] and getgenv().Config["Zen Event"][i] and dataevent[i].Price <=
                v39.SpecialCurrency.Chi then
                local args = {i}
                game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("BuyEventShopStock")
                    :FireServer(unpack(args))
                task.wait(1)

            end
        end
        if getgenv().Config["Zen Event"] and v39.EventShopStock.RestockCost <=
            getgenv().Config["Zen Event"]["Restock Max Cost"] and
            math.floor(game.Players.LocalPlayer.leaderstats.Sheckles.Value) >= v39.EventShopStock.RestockCost then
            game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("BuyEventShopRestock")
                :FireServer()
        end
    end
end)
local CollectShopData = (function(shopGui)
    local items = {}
    local list = shopGui:WaitForChild("Frame"):WaitForChild("ScrollingFrame")
    for _, child in ipairs(list:GetChildren()) do
        if child:IsA("Frame") and not child.Name:match("UIListLayout") and child.Name ~= "Item_Size" then
            local main = child:FindFirstChild("Main_Frame")
            if main then
                local cost, rarity, stock = main:FindFirstChild("Cost_Text"), main:FindFirstChild("Rarity_Text"),
                    main:FindFirstChild("Stock_Text")
                if cost and cost.Text ~= "NO STOCK" and rarity and stock then
                    table.insert(items, {
                        name = child.Name,
                        stock = stock.Text,
                        rarity = rarity.Text,
                        cost = cost.Text
                    })
                end
            end
        end
    end
    return items
end)

local BuildField = (function(title, data, formatFn, emptyText)
    if #data == 0 then
        return {
            name = title,
            value = emptyText,
            inline = false
        }
    end

    local content = {}
    for _, item in ipairs(data) do
        table.insert(content, formatFn(item))
    end
    return {
        name = title,
        value = table.concat(content, "\n"),
        inline = false
    }
end)

local SendBanner = (function()
    local seedData = CollectShopData(playerGui.Seed_Shop)
    local gearData = CollectShopData(playerGui.Gear_Shop)
    local eggData = GetEggData()
    local event = collectevent()
    local currentTime = os.date("%Y-%m-%d %H:%M:%S")
    local embed = {
        title = "Cyndral - Grow a Garden",
        type = "rich",
        color = tonumber(0x000080),
        footer = {
            text = "Cyndral - " .. currentTime
        },
        fields = {BuildField("Seed Shop", seedData, function(s)
            return string.format("- %s | %s | %s | %s", s.name, s.stock, s.rarity, s.cost)
        end, "No seeds available"), BuildField("Gear Shop", gearData, function(g)
            return string.format("- %s | %s | %s | %s", g.name, g.stock, g.rarity, g.cost)
        end, "No gears available"), BuildField("Egg Shop", eggData, function(e)
            return string.format("- %s | %s | %s", e.name, e.rarity, e.price)
        end, "No eggs available"), BuildField("Event Shop", event, function(e)
            return string.format("- %s | %s | %s", e.Item, e.Stock, e.Price)
        end, "No Event available"), {
            name = "Time",
            value = string.format("<t:%d:R>", os.time()),
            inline = false
        }}
    }

    local success, response = pcall(function()
        return request({
            Url = Webhook,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = HttpService:JSONEncode({
                embeds = {embed}
            })
        })
    end)

    if not success then
        warn("Failed to send webhook:", response)
    end
end)
local dataseed = require(game:GetService("ReplicatedStorage").Data.SeedData)
local v_u_1 = game:GetService("ReplicatedStorage")
game:GetService("TweenService")
local v_u_3 = require(v_u_1.Modules.GuiController)
local v_u_4 = require(v_u_1.Modules.DataService)
local v22 = v_u_4:GetData()

local hasSentAt455 = false
local oldseed = v22.SeedStock.Seed
spawn(function()
    while true do

        SendBanner()
        task.wait(3)
        repeat
            wait()
        until v22.SeedStock.Seed ~= oldseed
    end
end)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local PetRegistry = require(ReplicatedStorage.Data.PetRegistry)
local DataService = require(ReplicatedStorage.Modules.DataService)
local DecimalNumberFormat = require(ReplicatedStorage.Data.DecimalNumberFormat)

local function GetPlayerData()
    return DataService:GetData() or {}
end

local function GetEquippedPets()
    local data = GetPlayerData()
    return data.PetsData and data.PetsData.EquippedPets or {}
end

local function GetPetInventory()
    local data = GetPlayerData()
    return data.PetsData and data.PetsData.PetInventory.Data or {}
end

local function GetPetsInBackpack()
    local pets = {}
    for _, item in ipairs(LocalPlayer.Backpack:GetChildren()) do

        if item:GetAttribute(invobf["ITEM_TYPE"]) == Itemobf["Pet"] then
            table.insert(pets, item)
        end
    end
    return pets
end

local function UnequipAllPets()
    for _, item in ipairs(LocalPlayer.Character:GetChildren()) do
        if item:IsA("Tool") then
            item.Parent = LocalPlayer.Backpack
        end
    end
end

local function ShouldSellPet(petName)
    -- Check if pet is in blacklist
    for _, blacklistedPet in ipairs(getgenv().Config["Pet Mode"]["Pet Dont Delete"]) do
        if string.find(petName, blacklistedPet) then
            return false
        end
    end

    -- Check if pet is in "don't delete" list
    for _, protectedPet in ipairs(getgenv().Config["Pet Mode"]["Pet Dont Delete"]) do
        if string.find(petName, protectedPet) then
            return false
        end
    end

    return true
end

local function SellPet(petTool)
    -- Move to selling location if needed
    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.5900116, 2.99999976, 0.426799476, -0.00339480047,
        2.42123388e-08, -0.999994218, -1.41987344e-12, 1, 2.42124845e-08, 0.999994218, 8.36164193e-11, -0.00339480047)

    -- Equip the pet
    LocalPlayer.Character.Humanoid:EquipTool(petTool)
    task.wait(0.15)

    -- Sell the pet
    ReplicatedStorage.GameEvents.SellPet_RE:FireServer(petTool)
end

spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                if getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Enable"] then
                    local v_u_1 = game:GetService("Players").LocalPlayer
                    local v_u_7 = require(game:GetService("ReplicatedStorage").Modules.PetServices.PetUtilities)
                    local v53 = v_u_7:GetPetsSortedByAge(v_u_1, 1, false)
                    local petdata = require(game:GetService("ReplicatedStorage").Data.PetRegistry.PetList)
                    local v_u_1 = game:GetService("ReplicatedStorage")
                    local v_u_3 = require(v_u_1.Modules.DataService)
                    local v33 = v_u_3:GetData()
                    local v41 = 0
                    v41 = v33.PetsData.PurchasedEquipSlots or 0
                    local v_u_6 = game:GetService("ReplicatedStorage"):WaitForChild("GameEvents")

                    local v42 = ({20, 30, 45, 60, 75})[v41 + 1] or 999
                    for i, v in v53 do
                        if v.PetData.Level >= v42 and
                            table.find(getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Pet"], v.PetType) then
                            v_u_6.UnlockSlotFromPet:FireServer(v.UUID, "Egg")
                            task.wait(1)
                        end
                    end
                end
            end)
        end
    end)
end)
spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                if not getgenv().Config["Dont Open Pack"] then
                    for i, v in game.Players.LocalPlayer.Backpack:GetChildren() do
                        if not getgenv().Config["Dont Use Flower Seed Pack"] then
                            if string.find(v.Name, "Pack") then
                                local remoteModule = require(game:GetService("ReplicatedStorage").Modules.Remotes)
                                remoteModule.SeedPack.Open.send(v:GetAttribute(Itemobf["Seed"]))

                            end
                        else
                            if not string.find(v.Name, "Flower Seed Pack") then
                                if string.find(v.Name, "Pack") then
                                    local remoteModule = require(game:GetService("ReplicatedStorage").Modules.Remotes)
                                    remoteModule.SeedPack.Open.send(v:GetAttribute(Itemobf["Seed"]))

                                    print("Open Pack: " .. v:GetAttribute(Itemobf["Seed"]))
                                end
                            end
                        end
                    end
                end

            end)
        end
    end)
end)

local petdata = require(game:GetService("ReplicatedStorage").Data.PetRegistry.PetList)
local v_u_1 = game:GetService("ReplicatedStorage")

local v_u_3 = require(v_u_1.Modules.DataService)
local v33 = v_u_3:GetData()
local v_u_1 = game:GetService("ReplicatedStorage")

local v_u_3 = require(v_u_1.Modules.DataService)
local playerdata = v_u_3:GetData()
local equippedPets = playerdata.PetsData.EquippedPets or {}
local inventoryData = playerdata.PetsData.PetInventory.Data or {}
local backpackItems = game.Players.LocalPlayer.Backpack:GetChildren()
if getgenv().Config["Pet Mode"]["Equip Pet"] then
    for _, petId in pairs(equippedPets) do
        local args = {"UnequipPet", petId}
        game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("PetsService"):FireServer(unpack(
            args))
        task.wait(1)
    end
end
if getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Enable"] then
    local v_u_1 = game:GetService("Players").LocalPlayer
    local v_u_7 = require(game:GetService("ReplicatedStorage").Modules.PetServices.PetUtilities)
    local v53 = v_u_7:GetPetsSortedByAge(v_u_1, 1, false)
    local petdata = require(game:GetService("ReplicatedStorage").Data.PetRegistry.PetList)
    local v_u_1 = game:GetService("ReplicatedStorage")
    local v_u_3 = require(v_u_1.Modules.DataService)
    local v33 = v_u_3:GetData()
    local v41 = 0
    v41 = v33.PetsData.PurchasedEquipSlots or 0
    local v_u_6 = game:GetService("ReplicatedStorage"):WaitForChild("GameEvents")

    local v42 = ({20, 30, 45, 60, 75})[v41 + 1] or 999
    for i, v in v53 do
        if v.PetData.Level >= v42 and table.find(getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Pet"], v.PetType) then
            v_u_6.UnlockSlotFromPet:FireServer(v.UUID, "Egg")
            task.wait(1)
        end
    end
end
local petdata = require(game:GetService("ReplicatedStorage").Data.PetRegistry.PetList)
local v_u_1 = game:GetService("ReplicatedStorage")

local v_u_3 = require(v_u_1.Modules.DataService)
local v33 = v_u_3:GetData()
local v_u_1 = game:GetService("ReplicatedStorage")

local v_u_3 = require(v_u_1.Modules.DataService)
local playerdata = v_u_3:GetData()
local equippedPets = playerdata.PetsData.EquippedPets or {}
local inventoryData = playerdata.PetsData.PetInventory.Data or {}
local backpackItems = game.Players.LocalPlayer.Backpack:GetChildren()
function getpos()
    for i2, v2 in workspace.Farm:GetChildren() do
        if v2.Name == "Farm" then
            if v2:FindFirstChild("Important") and v2.Important:FindFirstChild("Data") and
                v2.Important.Data:FindFirstChild("Owner") and v2.Important.Data:FindFirstChild("Owner").Value ==
                game.Players.LocalPlayer.Name then
                for i3, v3 in v2.Important.Plant_Locations:GetChildren() do
                    if v3.Name == "Can_Plant" then
                        local plantLocations = v3
                        return plantLocations.CFrame * CFrame.new(0, 5, 0)
                    end
                end
            end
        end
    end
end

---
-- -- 📡 Gửi webhook khi coin đạt ngưỡng
-- spawn(function()
--     if not getgenv().Config["Webhook Mode"] or not getgenv().Config["Webhook Mode"]["Enable Coin Notify"] then return end

--     local threshold = getgenv().Config["Webhook Mode"]["Coin Threshold"] or 32000000
--     local url = getgenv().Config["Url"]
--     local player = game:GetService("Players").LocalPlayer
--     local leaderstats = player:WaitForChild("leaderstats")
--     local money = leaderstats:WaitForChild("Money")

--     local hasSent = false -- Đảm bảo chỉ gửi 1 lần

--     while true do
--         if money.Value >= threshold and not hasSent and url ~= "" then
--             hasSent = true -- chỉ gửi 1 lần
--             syn.request({
--                 Url = url,
--                 Method = "POST",
--                 Headers = { ["Content-Type"] = "application/json" },
--                 Body = game:GetService("HttpService"):JSONEncode({
--                     username = "Grow A Garden Alert",
--                     embeds = {{
--                         title = "💰 Đã đạt ngưỡng coin!",
--                         description = "**Bạn đã có hơn " .. threshold .. " coin!**",
--                         color = 16776960
--                     }}
--                 })
--             })
--         end
--         wait(5)
--     end
-- end)


---

spawn(function()
    pcall(function()
        while wait() do
            pcall(function()
                if getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Enable"] and v33.PetsData.PurchasedEggSlots + 3 < 8 then
                    if checkcanplantPet() < v33.PetsData.PurchasedEquipSlots + 3 then
                        local v2 = game:GetService("ReplicatedStorage")
                        local v_u_7 = require(v2.Data.PetRegistry)
                        local v_u_12 = v_u_7.PetList
                        local v_u_71 = require(v2.Data.DecimalNumberFormat)
                        local v_u_3 = require(game:GetService("ReplicatedStorage").Modules.DataService)
                        local playerdata = v_u_3:GetData()
                        local equippedPets = playerdata.PetsData.EquippedPets or {}
                        local inventoryData = playerdata.PetsData.PetInventory.Data or {}
                        local backpackItems = game.Players.LocalPlayer.Backpack:GetChildren()
                        local PetUtilities = require(game.ReplicatedStorage.Modules:WaitForChild("PetServices")
                            :WaitForChild("PetUtilities"))

                        local eligiblePets = {}
                        local petEquipConfig = getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Pet"]
                        local equippedCounts = {} -- Track how many of each pet we've equipped

                        -- First, normalize the petEquipConfig to handle both array and dictionary formats
                        local normalizedPetConfig = {}
                        for k, v in pairs(petEquipConfig) do
                            if type(k) == "number" then -- This is an array-style entry (unlimited)
                                normalizedPetConfig[v] = 8 - (v33.PetsData.PurchasedEggSlots + 3) -- math.huge represents unlimited
                            else -- This is a dictionary-style entry (limited)
                                normalizedPetConfig[k] = v
                            end
                        end
                        if normalizedPetConfig["Starfish"] < v33.PetsData.PurchasedEquipSlots + 3 then
                            local petEquipConfig2 = getgenv().Config["Pet Mode"]["Name Pet Equip"]

                            for k, v in pairs(petEquipConfig2) do
                                if type(k) == "number" then -- This is an array-style entry (unlimited)
                                    normalizedPetConfig[v] = math.huge -- math.huge represents unlimited
                                else -- This is a dictionary-style entry (limited)
                                    normalizedPetConfig[k] = v
                                end
                            end
                        end
                        -- Collect all eligible pets with their data
                        for petId, petData in pairs(inventoryData) do
                            local petType = petData.PetType
                            local maxAllowed = normalizedPetConfig[petType]
                            if maxAllowed then -- Pet is in our config
                                local currentCount = equippedCounts[petType] or 0
                                if maxAllowed == math.huge or currentCount < maxAllowed then
                                    table.insert(eligiblePets, {
                                        id = petId,
                                        type = petType,
                                        level = petData.PetData.Level or 0,
                                        data = petData
                                    })

                                    if maxAllowed ~= math.huge then
                                        equippedCounts[petType] = currentCount + 1
                                    end
                                end
                            end
                        end

                        -- Sort by level descending
                        table.sort(eligiblePets, function(a, b)
                            return a.level > b.level
                        end)

                        -- -- Equip the pets
                        for _, pet in ipairs(eligiblePets) do
                            for _, item in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if item:GetAttribute("PET_UUID") == pet.id then
                                    print("Equipping pet:", pet.id, pet.type, "Level:", pet.level)
                                    local args = {"EquipPet", pet.id, getpos()}
                                    game:GetService("ReplicatedStorage").GameEvents.PetsService:FireServer(unpack(args))

                                end
                            end
                        end
                    end
                end
                if getgenv().Config["Pet Mode"]["Equip Pet"] then
                    if (getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Enable"] and v33.PetsData.PurchasedEggSlots +
                        3 >= 8) or not getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Enable"] then
                        if checkcanplantPet() < v33.PetsData.PurchasedEquipSlots + 3 then
                            local v2 = game:GetService("ReplicatedStorage")
                            local v_u_7 = require(v2.Data.PetRegistry)
                            local v_u_12 = v_u_7.PetList
                            local v_u_71 = require(v2.Data.DecimalNumberFormat)
                            local v_u_3 = require(game:GetService("ReplicatedStorage").Modules.DataService)
                            local playerdata = v_u_3:GetData()
                            local equippedPets = playerdata.PetsData.EquippedPets or {}
                            local inventoryData = playerdata.PetsData.PetInventory.Data or {}
                            local backpackItems = game.Players.LocalPlayer.Backpack:GetChildren()
                            local PetUtilities = require(game.ReplicatedStorage.Modules:WaitForChild("PetServices")
                                :WaitForChild("PetUtilities"))

                            local eligiblePets = {}
                            local petEquipConfig = getgenv().Config["Pet Mode"]["Name Pet Equip"]
                            local equippedCounts = {} -- Track how many of each pet we've equipped

                            -- First, normalize the petEquipConfig to handle both array and dictionary formats
                            local normalizedPetConfig = {}
                            for k, v in pairs(petEquipConfig) do
                                if type(k) == "number" then -- This is an array-style entry (unlimited)
                                    normalizedPetConfig[v] = math.huge -- math.huge represents unlimited
                                else -- This is a dictionary-style entry (limited)
                                    normalizedPetConfig[k] = v
                                end
                            end
                            -- Collect all eligible pets with their data
                            for petId, petData in pairs(inventoryData) do
                                local petType = petData.PetType
                                local maxAllowed = normalizedPetConfig[petType]
                                if maxAllowed then -- Pet is in our config
                                    local currentCount = equippedCounts[petType] or 0
                                    if maxAllowed == math.huge or currentCount < maxAllowed then
                                        table.insert(eligiblePets, {
                                            id = petId,
                                            type = petType,
                                            level = petData.PetData.Level or 0,
                                            data = petData
                                        })

                                        if maxAllowed ~= math.huge then
                                            equippedCounts[petType] = currentCount + 1
                                        end
                                    end
                                end
                            end

                            -- Sort by level descending
                            table.sort(eligiblePets, function(a, b)
                                return a.level > b.level
                            end)
                            print(eligiblePets)
                            -- -- Equip the pets
                            for _, pet in ipairs(eligiblePets) do
                                for _, item in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if item:GetAttribute("PET_UUID") == pet.id then
                                        print("Equipping pet:", pet.id, pet.type, "Level:", pet.level)
                                        local args = {"EquipPet", pet.id, getpos()}
                                        game:GetService("ReplicatedStorage").GameEvents.PetsService:FireServer(unpack(
                                            args))

                                    end
                                end
                            end
                        end
                    end
                end
                pcall(function()
                    if getgenv().Config["Pet Mode"]["Sell Pet"] then
                        startsellpet = false

                        local numPets = #GetPetsInBackpack() + #GetEquippedPets()
                        local maxSlotToSell = getgenv().Config["Pet Mode"]["Max Slot Pet To Sell"] or 1

                        if numPets >= maxSlotToSell then

                            -- Unequip all pets before selling
                            UnequipAllPets()
                            task.wait(0.5)

                            local dontDeleteList = getgenv().Config["Pet Mode"]["Dont Delete Pet"] or {}

                            -- Build a quick lookup for eligible pets by PET_UUID
                            local aa = {}
                            local v2 = game:GetService("ReplicatedStorage")
                            local v_u_7 = require(v2.Data.PetRegistry)
                            local v_u_12 = v_u_7.PetList
                            local v_u_71 = require(v2.Data.DecimalNumberFormat)
                            local v_u_3 = require(game:GetService("ReplicatedStorage").Modules.DataService)
                            local playerdata = v_u_3:GetData()
                            local equippedPets = playerdata.PetsData.EquippedPets or {}
                            local inventoryData = playerdata.PetsData.PetInventory.Data or {}
                            local backpackItems = game.Players.LocalPlayer.Backpack:GetChildren()
                            local PetUtilities = require(game.ReplicatedStorage.Modules:WaitForChild("PetServices")
                                :WaitForChild("PetUtilities"))

                            -- First collect all eligible pets with their data
                            for petId, petData in pairs(inventoryData) do
                                if (not table.find(getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Pet"],
                                    petData.PetType) and getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Enable"] and
                                    v33.PetsData.PurchasedEggSlots + 3 < 8) or
                                    not getgenv().Config["Pet Mode"]["Upgrade Slot Egg"]["Enable"] then
                                    table.insert(aa, {
                                        id = petId,
                                        name = petData.PetType,
                                        level = petData.PetData.Level or 0,
                                        data = petData,

                                        Weight = PetUtilities:CalculateWeight(petData.PetData.BaseWeight or 1,
                                            petData.PetData.Level)

                                    })
                                end
                            end
                            print(aa)
                            -- Sort the pets by level from max to min
                            table.sort(aa, function(a, b)
                                return a.level > b.level
                            end)

                            -- Print the sorted results

                            -- Process pets in backpack
                            local petsToSell = GetPetsInBackpack()
                            for _, pet in ipairs(petsToSell) do
                                for i1, v1 in ipairs(aa) do
                                    if pet:GetAttribute("PET_UUID") == v1.id then
                                        local isLevel1 = v1.level == 1
                                        local isDontDelete = dontDeleteList[v1.name] -- type is pet name
                                        local isacceptweightsell = v1.Weight <
                                                                       getgenv().Config["Pet Mode"]["Dont Sell Pet If Weight > x"]
                                        -- print(isLevel1 , not isDontDelete ,pet.Name, ShouldSellPet(pet.Name) , isacceptweightsell)
                                        if isLevel1 and not isDontDelete and ShouldSellPet(pet.Name) and
                                            isacceptweightsell then
                                            startsellpet = true
                                            for i, v in game.Players.LocalPlayer.Character:GetChildren() do
                                                if v:GetAttribute("PET_UUID") then
                                                    v.Parent = game.Players.LocalPlayer.Backpack
                                                end
                                            end
                                            print("Selling: " .. pet.Name)
                                            SellPet(pet)

                                            task.wait(5)

                                        end
                                    end
                                end
                            end
                        end
                    end

                end)

            end)
        end
    end)
end)
