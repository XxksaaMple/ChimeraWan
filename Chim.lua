local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "ChimeraaHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local img = "https://files.catbox.moe/0l0poo.jpg"

-- logo kecil
local logo = Instance.new("ImageButton")
logo.Parent = gui
logo.Size = UDim2.new(0,60,0,60)
logo.Position = UDim2.new(0,20,0.5,-30)
logo.Image = img
logo.BackgroundTransparency = 1
Instance.new("UICorner",logo).CornerRadius = UDim.new(1,0)

-- main window
local main = Instance.new("Frame")
main.Parent = gui
main.Size = UDim2.new(0,520,0,320)
main.Position = UDim2.new(0.5,-260,0.5,-160)
main.BackgroundColor3 = Color3.fromRGB(20,20,20)
main.Visible = false
Instance.new("UICorner",main).CornerRadius = UDim.new(0,10)

-- title
local title = Instance.new("TextLabel")
title.Parent = main
title.Size = UDim2.new(1,0,0,50)
title.Text = "Chimeraa HUB"
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Font = Enum.Font.GothamBold
title.TextSize = 26

-- sidebar
local side = Instance.new("Frame")
side.Parent = main
side.Size = UDim2.new(0,160,1,-50)
side.Position = UDim2.new(0,0,0,50)
side.BackgroundColor3 = Color3.fromRGB(30,30,30)

local configBtn = Instance.new("TextLabel")
configBtn.Parent = side
configBtn.Size = UDim2.new(1,0,0,40)
configBtn.Text = "Config"
configBtn.TextColor3 = Color3.new(1,1,1)
configBtn.BackgroundTransparency = 1
configBtn.Font = Enum.Font.Gotham
configBtn.TextSize = 18

-- content area
local content = Instance.new("Frame")
content.Parent = main
content.Size = UDim2.new(1,-170,1,-60)
content.Position = UDim2.new(0,170,0,55)
content.BackgroundTransparency = 1

local function createToggle(name,pos)
    local btn = Instance.new("TextButton")
    btn.Parent = content
    btn.Size = UDim2.new(1,0,0,40)
    btn.Position = UDim2.new(0,0,0,pos)
    btn.BackgroundColor3 = Color3.fromRGB(35,35,35)
    btn.Text = name.." : OFF"
    btn.TextColor3 = Color3.new(1,1,1)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 16
    Instance.new("UICorner",btn).CornerRadius = UDim.new(0,6)

    local state=false
    btn.MouseButton1Click:Connect(function()
        state = not state
        btn.Text = name.." : "..(state and "ON" or "OFF")
    end)
end

createToggle("Auto Haki",10)
createToggle("Auto Instinct",60)
createToggle("Auto V3",110)
createToggle("Auto V4",160)

-- open close menu
logo.MouseButton1Click:Connect(function()
    main.Visible = not main.Visible
end)
