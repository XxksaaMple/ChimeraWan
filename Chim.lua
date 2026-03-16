-- Chimera HUB - Blox Fruits
local player = game.Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Hapus GUI lama
pcall(function() CoreGui:FindFirstChild("ChimeraHUB"):Destroy() end)

-- ScreenGui Utama
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ChimeraHUB"
ScreenGui.Parent = CoreGui
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- ================= BUTTON LINGKARAN =================
local CircleButton = Instance.new("ImageButton")
CircleButton.Size = UDim2.new(0, 60, 0, 60)
CircleButton.Position = UDim2.new(0, 50, 0, 50) -- Posisi awal
CircleButton.BackgroundTransparency = 1
CircleButton.Image = "https://files.catbox.moe/0l0poo.jpg" -- GANTI DENGAN LINK GAMBAR ANDA
CircleButton.ImageRectSize = Vector2.new(60, 60)
CircleButton.Parent = ScreenGui

-- Efek bayangan
local ShadowCircle = Instance.new("ImageLabel")
ShadowCircle.Size = UDim2.new(1, 10, 1, 10)
ShadowCircle.Position = UDim2.new(0, -5, 0, -5)
ShadowCircle.BackgroundTransparency = 1
ShadowCircle.Image = "rbxassetid://1316045217"
ShadowCircle.ImageColor3 = Color3.fromRGB(0, 0, 0)
ShadowCircle.ImageTransparency = 0.7
ShadowCircle.ScaleType = Enum.ScaleType.Slice
ShadowCircle.SliceCenter = Rect.new(10, 10, 118, 118)
ShadowCircle.Parent = CircleButton

-- ================= MENU UTAMA =================
local MainMenu = Instance.new("Frame")
MainMenu.Size = UDim2.new(0, 500, 0, 600)
MainMenu.Position = UDim2.new(0.5, -250, 0.5, -300)
MainMenu.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
MainMenu.BorderSizePixel = 0
MainMenu.Visible = false
MainMenu.Parent = ScreenGui

-- Efek Glassmorphism
local MenuCorner = Instance.new("UICorner")
MenuCorner.CornerRadius = UDim.new(0, 20)
MenuCorner.Parent = MainMenu

local MenuStroke = Instance.new("UIStroke")
MenuStroke.Color = Color3.fromRGB(255, 70, 70)
MenuStroke.Thickness = 2
MenuStroke.Transparency = 0.5
MenuStroke.Parent = MainMenu

local MenuShadow = Instance.new("ImageLabel")
MenuShadow.Size = UDim2.new(1, 30, 1, 30)
MenuShadow.Position = UDim2.new(0, -15, 0, -15)
MenuShadow.BackgroundTransparency = 1
MenuShadow.Image = "rbxassetid://1316045217"
MenuShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
MenuShadow.ImageTransparency = 0.5
MenuShadow.ScaleType = Enum.ScaleType.Slice
MenuShadow.SliceCenter = Rect.new(10, 10, 118, 118)
MenuShadow.Parent = MainMenu

-- ================= HEADER DENGAN LOGO =================
local Header = Instance.new("Frame")
Header.Size = UDim2.new(1, 0, 0, 80)
Header.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Header.BorderSizePixel = 0
Header.Parent = MainMenu

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 20)
HeaderCorner.Parent = Header

local HeaderGradient = Instance.new("UIGradient")
HeaderGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 50, 50)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 50, 150)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 50, 200))
})
HeaderGradient.Rotation = 90
HeaderGradient.Parent = Header

-- Logo di header
local HeaderLogo = Instance.new("ImageLabel")
HeaderLogo.Size = UDim2.new(0, 50, 0, 50)
HeaderLogo.Position = UDim2.new(0, 15, 0, 15)
HeaderLogo.BackgroundTransparency = 1
HeaderLogo.Image = "https://files.catbox.moe/0l0poo.jpg" -- GANTI DENGAN LINK GAMBAR ANDA
HeaderLogo.Parent = Header

local HeaderLogoCorner = Instance.new("UICorner")
HeaderLogoCorner.CornerRadius = UDim.new(1, 0)
HeaderLogoCorner.Parent = HeaderLogo

-- Judul
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -80, 1, 0)
Title.Position = UDim2.new(0, 80, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "CHIMERA HUB"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 30
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextStrokeTransparency = 0.3
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Header

local SubTitle = Instance.new("TextLabel")
SubTitle.Size = UDim2.new(1, -80, 0, 20)
SubTitle.Position = UDim2.new(0, 80, 0, 45)
SubTitle.BackgroundTransparency = 1
SubTitle.Text = "v1.0 | Blox Fruits"
SubTitle.Font = Enum.Font.Gotham
SubTitle.TextSize = 14
SubTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
SubTitle.TextXAlignment = Enum.TextXAlignment.Left
SubTitle.Parent = Header

-- Tombol Close
local CloseBtn = Instance.new("ImageButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -45, 0, 25)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Image = "rbxassetid://10709847952"
CloseBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Parent = Header

-- ================= TAB SYSTEM =================
local TabFrame = Instance.new("Frame")
TabFrame.Size = UDim2.new(1, -20, 0, 50)
TabFrame.Position = UDim2.new(0, 10, 0, 90)
TabFrame.BackgroundTransparency = 1
TabFrame.Parent = MainMenu

local Tabs = {"AUTO", "HAKI", "INSTING", "V3", "V4"}
local TabButtons = {}
local CurrentTab = "AUTO"

local function createTab(name, pos)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 90, 0, 40)
    btn.Position = UDim2.new(0, pos, 0, 5)
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    btn.Text = name
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 14
    btn.TextColor3 = Color3.fromRGB(200, 200, 200)
    btn.Parent = TabFrame
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = btn
    
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 70, 70)
    stroke.Thickness = 2
    stroke.Transparency = 1
    stroke.Parent = btn
    
    return btn
end

-- Buat tab buttons
for i, name in ipairs(Tabs) do
    TabButtons[name] = createTab(name, (i-1) * 100)
end

-- Container untuk konten
local ContentFrame = Instance.new("ScrollingFrame")
ContentFrame.Size = UDim2.new(1, -20, 1, -170)
ContentFrame.Position = UDim2.new(0, 10, 0, 150)
ContentFrame.BackgroundTransparency = 1
ContentFrame.ScrollBarThickness = 5
ContentFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 70, 70)
ContentFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
ContentFrame.Parent = MainMenu

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 10)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.Parent = ContentFrame

-- ================= FUNGSI MEMBUAT TOGGLE =================
local function createToggle(name, desc, default)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.95, 0, 0, 70)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
    frame.Parent = ContentFrame
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = frame
    
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -70, 0, 25)
    title.Position = UDim2.new(0, 15, 0, 10)
    title.BackgroundTransparency = 1
    title.Text = name
    title.Font = Enum.Font.GothamBold
    title.TextSize = 16
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = frame
    
    local description = Instance.new("TextLabel")
    description.Size = UDim2.new(1, -70, 0, 20)
    description.Position = UDim2.new(0, 15, 0, 35)
    description.BackgroundTransparency = 1
    description.Text = desc
    description.Font = Enum.Font.Gotham
    description.TextSize = 12
    description.TextColor3 = Color3.fromRGB(150, 150, 150)
    description.TextXAlignment = Enum.TextXAlignment.Left
    description.Parent = frame
    
    local toggleBg = Instance.new("Frame")
    toggleBg.Size = UDim2.new(0, 50, 0, 25)
    toggleBg.Position = UDim2.new(1, -65, 0, 22)
    toggleBg.BackgroundColor3 = default and Color3.fromRGB(255, 70, 70) or Color3.fromRGB(50, 50, 60)
    toggleBg.Parent = frame
    
    local toggleCorner = Instance.new("UICorner")
    toggleCorner.CornerRadius = UDim.new(1, 0)
    toggleCorner.Parent = toggleBg
    
    local toggleCircle = Instance.new("Frame")
    toggleCircle.Size = UDim2.new(0, 21, 0, 21)
    toggleCircle.Position = UDim2.new(default and 1 or 0, default and -26 or 4, 0, 2)
    toggleCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    toggleCircle.Parent = toggleBg
    
    local circleCorner = Instance.new("UICorner")
    circleCorner.CornerRadius = UDim.new(1, 0)
    circleCorner.Parent = toggleCircle
    
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 1, 0)
    button.BackgroundTransparency = 1
    button.Text = ""
    button.Parent = toggleBg
    
    local status = default
    
    button.MouseButton1Click:Connect(function()
        status = not status
        if status then
            toggleBg.BackgroundColor3 = Color3.fromRGB(255, 70, 70)
            toggleCircle:TweenPosition(UDim2.new(1, -26, 0, 2), "Out", "Linear", 0.1, true)
        else
            toggleBg.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
            toggleCircle:TweenPosition(UDim2.new(0, 4, 0, 2), "Out", "Linear", 0.1, true)
        end
    end)
    
    return frame, function() return status end
end

-- ================= FITUR AUTO HAKI =================
local HakiToggle, getHakiStatus = createToggle("Auto Haki", "Otomatis mengaktifkan Haki", true)
local HakiCooldown = 5 -- detik

-- ================= FITUR AUTO INSTING =================
local InstingToggle, getInstingStatus = createToggle("Auto Insting (Ken)", "Nyalakan otomatis jika mati", true)

-- ================= FITUR AUTO V3 =================
local V3Toggle, getV3Status = createToggle("Auto V3", "Jeda 30 detik (Race V3)", false)
local V3Cooldown = 30 -- detik

-- ================= FITUR AUTO V4 =================
local V4Toggle, getV4Status = createToggle("Auto V4", "Aktif jika energi full", false)
local V4EnergyCheck = 5 -- detik

-- ================= FUNGSI UTAMA =================
local function activateHaki()
    -- Implementasi auto haki
    print("[Haki] Mengaktifkan Haki")
    -- Tambahkan script haki di sini
end

local function checkInsting()
    -- Cek apakah insting mati, nyalakan
    print("[Insting] Memeriksa status Insting")
    -- Tambahkan script insting di sini
end

local function activateV3()
    -- Aktivasi V3
    print("[V3] Mengaktifkan Race V3")
    -- Tambahkan script V3 di sini
end

local function checkV4Energy()
    -- Cek energy V4
    print("[V4] Memeriksa energi V4")
    -- Tambahkan script V4 di sini
end

-- Loop utama untuk fitur
spawn(function()
    while true do
        task.wait(1)
        
        if MainMenu.Visible then -- Hanya jalan jika menu terbuka
            if getHakiStatus() then
                activateHaki()
            end
            
            if getInstingStatus() then
                checkInsting()
            end
        end
    end
end)

-- Loop untuk V3 (30 detik)
spawn(function()
    while true do
        task.wait(V3Cooldown)
        if MainMenu.Visible and getV3Status() then
            activateV3()
        end
    end
end)

-- Loop untuk V4 (cek setiap 5 detik)
spawn(function()
    while true do
        task.wait(V4EnergyCheck)
        if MainMenu.Visible and getV4Status() then
            checkV4Energy()
        end
    end
end)

-- ================= FUNGSI TOGGLE MENU =================
local menuVisible = false

local function toggleMenu()
    menuVisible = not menuVisible
    
    if menuVisible then
        -- Animasi muncul
        MainMenu.Visible = true
        MainMenu.BackgroundTransparency = 1
        MainMenu.Size = UDim2.new(0, 500, 0, 600)
        
        TweenService:Create(MainMenu, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            BackgroundTransparency = 0
        }):Play()
        
        -- Animasi button membesar
        TweenService:Create(CircleButton, TweenInfo.new(0.2), {
            Size = UDim2.new(0, 70, 0, 70)
        }):Play()
    else
        -- Animasi hilang
        TweenService:Create(MainMenu, TweenInfo.new(0.2), {
            BackgroundTransparency = 1
        }):Play()
        
        TweenService:Create(CircleButton, TweenInfo.new(0.2), {
            Size = UDim2.new(0, 60, 0, 60)
        }):Play()
        
        task.wait(0.2)
        MainMenu.Visible = false
    end
end

-- Event klik button lingkaran
CircleButton.MouseButton1Click:Connect(toggleMenu)

-- Tombol close di menu
CloseBtn.MouseButton1Click:Connect(function()
    if menuVisible then
        toggleMenu()
    end
end)

-- ================= TAB SWITCHING =================
local function switchTab(tabName)
    CurrentTab = tabName
    
    -- Reset semua tab
    for name, btn in pairs(TabButtons) do
        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
        btn.TextColor3 = Color3.fromRGB(200, 200, 200)
        btn.UIStroke.Transparency = 1
    end
    
    -- Highlight tab aktif
    TabButtons[tabName].BackgroundColor3 = Color3.fromRGB(255, 70, 70)
    TabButtons[tabName].TextColor3 = Color3.fromRGB(255, 255, 255)
    TabButtons[tabName].UIStroke.Transparency = 0.3
    
    -- Hapus semua konten
    for _, child in pairs(ContentFrame:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end
    
    -- Buat konten sesuai tab
    if tabName == "AUTO" then
        createToggle("Auto Farm", "Farm musuh otomatis", true)
        createToggle("Auto Quest", "Ambil quest otomatis", false)
        createToggle("Auto Chest", "Ambil chest otomatis", true)
        createToggle("Auto Raid", "Auto join raid", false)
        
    elseif tabName == "HAKI" then
        createToggle("Busoshoku Haki", "Auto nyalakan Haki", true)
        createToggle("Kenbunshoku Haki", "Auto nyalakan Insting", true)
        createToggle("Haoshoku Haki", "Auto nyalakan (jika punya)", false)
        createToggle("Haki Color", "Ganti warna Haki", false)
        
    elseif tabName == "INSTING" then
        createToggle("Auto Insting", "Nyalakan jika mati", true)
        createToggle("Flash Step", "Auto flash step", false)
        createToggle("Dodge", "Auto dodge serangan", true)
        createToggle("Prediction", "Prediksi musuh", false)
        
    elseif tabName == "V3" then
        createToggle("Auto V3", "Aktifkan V3 setiap 30 detik", false)
        createToggle("V3 Indicator", "Tampilkan status V3", true)
        createToggle("Auto Skill V3", "Gunakan skill V3", false)
        
    elseif tabName == "V4" then
        createToggle("Auto V4", "Aktifkan jika energi full", true)
        createToggle("V4 Timer", "Tampilkan timer V4", true)
        createToggle("Auto Skill V4", "Gunakan skill combo", false)
        createToggle("V4 Mode", "Pilih mode V4", false)
    end
end

-- Connect tab buttons
for name, btn in pairs(TabButtons) do
    btn.MouseButton1Click:Connect(function()
        switchTab(name)
    end)
end

-- Set default tab
switchTab("AUTO")

-- ================= DRAG BUTTON =================
local dragging
local dragInput
local dragStart
local startPos

CircleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = CircleButton.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

CircleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        CircleButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

-- ================= DRAG MENU =================
local menuDragging
local menuDragInput
local menuDragStart
local menuStartPos

Header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        menuDragging = true
        menuDragStart = input.Position
        menuStartPos = MainMenu.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                menuDragging = false
            end
        end)
    end
end)

Header.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        menuDragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == menuDragInput and menuDragging then
        local delta = input.Position - menuDragStart
        MainMenu.Position = UDim2.new(menuStartPos.X.Scale, menuStartPos.X.Offset + delta.X, menuStartPos.Y.Scale, menuStartPos.Y.Offset + delta.Y)
    end
end)

-- Animasi awal button
CircleButton.Rotation = 0
TweenService:Create(CircleButton, TweenInfo.new(0.5, Enum.EasingStyle.Elastic), {
    Rotation = 360
}):Play()

print("Chimera HUB v1.0 Loaded Successfully!")
