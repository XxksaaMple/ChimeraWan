-- Chimera Loader UI

local player = game.Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ChimeraLoader"
ScreenGui.Parent = CoreGui

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0,400,0,200)
Main.Position = UDim2.new(0.5,-200,0.5,-100)
Main.BackgroundColor3 = Color3.fromRGB(15,15,15)
Main.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0,10)
UICorner.Parent = Main

-- Title
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,0,0,60)
Title.BackgroundTransparency = 1
Title.Text = "CHIMERA SCRIPT"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 35
Title.TextColor3 = Color3.fromRGB(255,80,80)
Title.Parent = Main

-- Subtitle
local Sub = Instance.new("TextLabel")
Sub.Position = UDim2.new(0,0,0,60)
Sub.Size = UDim2.new(1,0,0,40)
Sub.BackgroundTransparency = 1
Sub.Text = "Loading Modules..."
Sub.Font = Enum.Font.Gotham
Sub.TextSize = 20
Sub.TextColor3 = Color3.fromRGB(200,200,200)
Sub.Parent = Main

-- Loading Bar
local BarBG = Instance.new("Frame")
BarBG.Position = UDim2.new(0.1,0,0.7,0)
BarBG.Size = UDim2.new(0.8,0,0,20)
BarBG.BackgroundColor3 = Color3.fromRGB(40,40,40)
BarBG.Parent = Main

local Corner2 = Instance.new("UICorner")
Corner2.Parent = BarBG

local Bar = Instance.new("Frame")
Bar.Size = UDim2.new(0,0,1,0)
Bar.BackgroundColor3 = Color3.fromRGB(255,60,60)
Bar.Parent = BarBG

local Corner3 = Instance.new("UICorner")
Corner3.Parent = Bar

-- Loading Animation
for i = 1,100 do
    Bar.Size = UDim2.new(i/100,0,1,0)
    task.wait(0.02)
end

Sub.Text = "Loaded!"

task.wait(1)

-- Fade out
local tween = TweenService:Create(Main,TweenInfo.new(1),{BackgroundTransparency = 1})
tween:Play()

task.wait(1)
ScreenGui:Destroy()

print("Chimera Script Loaded")
