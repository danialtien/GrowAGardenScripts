local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local imageLabel = Instance.new("ImageLabel")
imageLabel.Parent = screenGui
imageLabel.Size = UDim2.new(0, 200, 0, 200) -- Kích thước 200x200 pixels
imageLabel.Position = UDim2.new(0.5, -100, 0.5, -100) -- Trung tâm màn hình
imageLabel.Image = "rbxassetid://376649791"
imageLabel.BackgroundTransparency = 1 -- Làm nền trong suốt
