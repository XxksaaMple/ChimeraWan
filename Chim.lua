-- Chimeraa HUB UI
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local img = "https://files.catbox.moe/0l0poo.jpg"

-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "ChimeraaHub"
gui.Parent = CoreGui

-- Logo Button
local logo = Instance.new("ImageButton")
logo.Parent = gui
logo.Size = UDim2.new(0,60,0,60)
logo.Position = UDim2.new(0,20,0.5,-30)
logo.BackgroundTransparency = 1
logo.Image = img

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(1,0)
corner.Parent = logo

-- Main Menu
local main = Instance.new("Frame")
main.Parent = gui
main.Size = UDim2.new(0,300,0,350)
main.Position = UDim2.new(0,100,0.5,-175)
main.BackgroundColor3 = Color3.fromRGB(20,20,20)
main.Visible = false

local corner2 = Instance.new("UICorner")
corner2.CornerRadius = UDim.new(0,12)
corner2.Parent = main

-- Title
local title = Instance.new("TextLabel")
title.Parent = main
title.Size = UDim2.new(1,0,0,60)
title.BackgroundTransparency = 1
title.Text = "Chimeraa HUB"
title.Font = Enum.Font.GothamBold
title.TextSize = 30
title.TextColor3 = Color3.fromRGB(255,255,255)

-- Logo besar
local bigLogo = Instance.new("ImageLabel")
bigLogo.Parent = main
bigLogo.Size = UDim2.new(0,80,0,80)
bigLogo.Position = UDim2.new(0.5,-40,0,60)
bigLogo.BackgroundTransparency = 1
bigLogo.Image = img

local corner3 = Instance.new("UICorner")
corner3.CornerRadius = UDim.new(1,0)
corner3.Parent = bigLogo

-- Toggle Template
local function createToggle(text,posY)

local btn = Instance.new("TextButton")
btn.Parent = main
btn.Size = UDim2.new(0.8,0,0,40)
btn.Position = UDim2.new(0.1,0,0,posY)
btn.BackgroundColor3 = Color3.fromRGB(35,35,35)
btn.Text = text.." : OFF"
btn.TextColor3 = Color3.new(1,1,1)
btn.Font = Enum.Font.Gotham
btn.TextSize = 18

local c = Instance.new("UICorner")
c.CornerRadius = UDim.new(0,8)
c.Parent = btn

local state = false
btn.MouseButton1Click:Connect(function()
state = not state
btn.Text = text.." : "..(state and "ON" or "OFF")
end)

end

createToggle("Auto Haki",160)
createToggle("Auto Instinct",210)
createToggle("Auto V3",260)
createToggle("Auto V4",310)

-- Toggle menu
logo.MouseButton1Click:Connect(function()
main.Visible = not main.Visible
end)
