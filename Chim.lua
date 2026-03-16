-- Chimeraa HUB UI FIX

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local img = "https://files.catbox.moe/0l0poo.jpg"

local gui = Instance.new("ScreenGui")
gui.Name = "ChimeraaHub"
gui.ResetOnSpawn = false
gui.Parent = PlayerGui

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

-- Menu Frame
local main = Instance.new("Frame")
main.Parent = gui
main.Size = UDim2.new(0,300,0,300)
main.Position = UDim2.new(0,100,0.5,-150)
main.BackgroundColor3 = Color3.fromRGB(20,20,20)
main.Visible = false

local corner2 = Instance.new("UICorner")
corner2.CornerRadius = UDim.new(0,12)
corner2.Parent = main

-- Title
local title = Instance.new("TextLabel")
title.Parent = main
title.Size = UDim2.new(1,0,0,50)
title.BackgroundTransparency = 1
title.Text = "Chimeraa HUB"
title.TextColor3 = Color3.new(1,1,1)
title.Font = Enum.Font.GothamBold
title.TextSize = 28

-- Toggle Button Function
local function createButton(text,y)

local btn = Instance.new("TextButton")
btn.Parent = main
btn.Size = UDim2.new(0.8,0,0,40)
btn.Position = UDim2.new(0.1,0,0,y)
btn.BackgroundColor3 = Color3.fromRGB(40,40,40)
btn.Text = text
btn.TextColor3 = Color3.new(1,1,1)
btn.Font = Enum.Font.Gotham
btn.TextSize = 18

local c = Instance.new("UICorner")
c.CornerRadius = UDim.new(0,8)
c.Parent = btn

end

createButton("Auto Haki",80)
createButton("Auto Instinct",130)
createButton("Auto V3",180)
createButton("Auto V4",230)

-- Toggle Menu
logo.MouseButton1Click:Connect(function()
main.Visible = not main.Visible
end)
