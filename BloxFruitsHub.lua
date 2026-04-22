-- EURO Hub para Blox Fruits - Script apelão
-- Compatível com Xeno Executor
-- Funcionalidades: Auto Farm Level Melhorado, Auto Collect Fruits, Auto Raid, ESP Players/Fruits, No-Clip, GUI Minimizable

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

-- Variáveis de toggles
local toggles = {
    AutoFarmLevel = false,
    AutoCollectFruits = false,
    AutoRaid = false,
    ESPPlayers = false,
    ESPFruits = false,
    NoClip = false,
    Minimized = false
}

-- Função para criar GUI
local function createGUI()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local AutoFarmBtn = Instance.new("TextButton")
    local CollectFruitsBtn = Instance.new("TextButton")
    local AutoRaidBtn = Instance.new("TextButton")
    local ESPPlayersBtn = Instance.new("TextButton")
    local ESPFruitsBtn = Instance.new("TextButton")
    local CloseBtn = Instance.new("TextButton")

    ScreenGui.Name = "BloxFruitsHub"
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ResetOnSpawn = false

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.1, 0, 0.1, 0)
    Frame.Size = UDim2.new(0, 400, 0, 500)

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Frame

    Title.Name = "Title"
    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(1, 0, 0, 50)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "EURO Hub"
    Title.TextColor3 = Color3.fromRGB(0, 255, 0)
    Title.TextSize = 24

    local TitleCorner = Instance.new("UICorner")
    TitleCorner.CornerRadius = UDim.new(0, 10)
    TitleCorner.Parent = Title

    AutoFarmBtn.Name = "AutoFarmLevel"
    AutoFarmBtn.Parent = Frame
    AutoFarmBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    AutoFarmBtn.BorderSizePixel = 0
    AutoFarmBtn.Position = UDim2.new(0.05, 0, 0.15, 0)
    AutoFarmBtn.Size = UDim2.new(0.9, 0, 0, 40)
    AutoFarmBtn.Font = Enum.Font.Gotham
    AutoFarmBtn.Text = "Auto Farm Level: OFF"
    AutoFarmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    AutoFarmBtn.TextSize = 14

    local BtnCorner1 = Instance.new("UICorner")
    BtnCorner1.CornerRadius = UDim.new(0, 5)
    BtnCorner1.Parent = AutoFarmBtn

    CollectFruitsBtn.Name = "AutoCollectFruits"
    CollectFruitsBtn.Parent = Frame
    CollectFruitsBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    CollectFruitsBtn.BorderSizePixel = 0
    CollectFruitsBtn.Position = UDim2.new(0.05, 0, 0.28, 0)
    CollectFruitsBtn.Size = UDim2.new(0.9, 0, 0, 40)
    CollectFruitsBtn.Font = Enum.Font.Gotham
    CollectFruitsBtn.Text = "Auto Collect Fruits: OFF"
    CollectFruitsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    CollectFruitsBtn.TextSize = 14

    local BtnCorner2 = Instance.new("UICorner")
    BtnCorner2.CornerRadius = UDim.new(0, 5)
    BtnCorner2.Parent = CollectFruitsBtn

    AutoRaidBtn.Name = "AutoRaid"
    AutoRaidBtn.Parent = Frame
    AutoRaidBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    AutoRaidBtn.BorderSizePixel = 0
    AutoRaidBtn.Position = UDim2.new(0.05, 0, 0.41, 0)
    AutoRaidBtn.Size = UDim2.new(0.9, 0, 0, 40)
    AutoRaidBtn.Font = Enum.Font.Gotham
    AutoRaidBtn.Text = "Auto Raid: OFF"
    AutoRaidBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    AutoRaidBtn.TextSize = 14

    local BtnCorner3 = Instance.new("UICorner")
    BtnCorner3.CornerRadius = UDim.new(0, 5)
    BtnCorner3.Parent = AutoRaidBtn

    ESPPlayersBtn.Name = "ESPPlayers"
    ESPPlayersBtn.Parent = Frame
    ESPPlayersBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    ESPPlayersBtn.BorderSizePixel = 0
    ESPPlayersBtn.Position = UDim2.new(0.05, 0, 0.54, 0)
    ESPPlayersBtn.Size = UDim2.new(0.9, 0, 0, 40)
    ESPPlayersBtn.Font = Enum.Font.Gotham
    ESPPlayersBtn.Text = "ESP Players: OFF"
    ESPPlayersBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    ESPPlayersBtn.TextSize = 14

    local BtnCorner4 = Instance.new("UICorner")
    BtnCorner4.CornerRadius = UDim.new(0, 5)
    BtnCorner4.Parent = ESPPlayersBtn

    ESPFruitsBtn.Name = "ESPFruits"
    ESPFruitsBtn.Parent = Frame
    ESPFruitsBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    ESPFruitsBtn.BorderSizePixel = 0
    ESPFruitsBtn.Position = UDim2.new(0.05, 0, 0.6, 0)
    ESPFruitsBtn.Size = UDim2.new(0.44, 0, 0, 35)

    local NoClipBtn = Instance.new("TextButton")
    NoClipBtn.Name = "NoClip"
    NoClipBtn.Parent = Frame
    NoClipBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    NoClipBtn.BorderSizePixel = 0
    NoClipBtn.Position = UDim2.new(0.52, 0, 0.6, 0)
    NoClipBtn.Size = UDim2.new(0.43, 0, 0, 35)
    NoClipBtn.Font = Enum.Font.Gotham
    NoClipBtn.Text = "No-Clip: OFF"
    NoClipBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    NoClipBtn.TextSize = 12

    NoClipBtn.MouseButton1Click:Connect(function()
        toggles.NoClip = not toggles.NoClip
        NoClipBtn.Text = "No-Clip: " .. (toggles.NoClip and "ON" or "OFF")
        NoClipBtn.BackgroundColor3 = toggles.NoClip and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(50, 50, 50)
    end)


    local BtnCornerNoClip = Instance.new("UICorner")
    BtnCornerNoClip.CornerRadius = UDim.new(0, 5)
    BtnCornerNoClip.Parent = NoClipBtn

    local MinimizeBtn = Instance.new("TextButton")
    MinimizeBtn.Name = "Minimize"
    MinimizeBtn.Parent = Frame
    MinimizeBtn.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
    MinimizeBtn.BorderSizePixel = 0
    MinimizeBtn.Position = UDim2.new(0.85, 0, 0, 0)
    MinimizeBtn.Size = UDim2.new(0, 30, 0, 30)
    MinimizeBtn.Font = Enum.Font.GothamBold
    MinimizeBtn.Text = "-"
    MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    MinimizeBtn.TextSize = 20

    local BtnCornerMin = Instance.new("UICorner")
    BtnCornerMin.CornerRadius = UDim.new(0, 15)
    BtnCornerMin.Parent = MinimizeBtn
    ESPFruitsBtn.Font = Enum.Font.Gotham
    ESPFruitsBtn.Text = "ESP Fruits: OFF"
    ESPFruitsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    ESPFruitsBtn.TextSize = 14

    local BtnCorner5 = Instance.new("UICorner")
    BtnCorner5.CornerRadius = UDim.new(0, 5)
    BtnCorner5.Parent = ESPFruitsBtn

    CloseBtn.Name = "Close"
    CloseBtn.Parent = Frame
    CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    CloseBtn.BorderSizePixel = 0
    CloseBtn.Position = UDim2.new(0.05, 0, 0.82, 0)
    CloseBtn.Size = UDim2.new(0.9, 0, 0, 40)
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.Text = "Fechar"
    CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseBtn.TextSize = 14

    local BtnCorner6 = Instance.new("UICorner")
    BtnCorner6.CornerRadius = UDim.new(0, 5)
    BtnCorner6.Parent = CloseBtn

    -- Eventos dos botões
    AutoFarmBtn.MouseButton1Click:Connect(function()
        toggles.AutoFarmLevel = not toggles.AutoFarmLevel
        AutoFarmBtn.Text = "Auto Farm Level: " .. (toggles.AutoFarmLevel and "ON" or "OFF")
        AutoFarmBtn.BackgroundColor3 = toggles.AutoFarmLevel and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(50, 50, 50)
    end)

    CollectFruitsBtn.MouseButton1Click:Connect(function()
        toggles.AutoCollectFruits = not toggles.AutoCollectFruits
        CollectFruitsBtn.Text = "Auto Collect Fruits: " .. (toggles.AutoCollectFruits and "ON" or "OFF")
        CollectFruitsBtn.BackgroundColor3 = toggles.AutoCollectFruits and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(50, 50, 50)
    end)

    AutoRaidBtn.MouseButton1Click:Connect(function()
        toggles.AutoRaid = not toggles.AutoRaid
        AutoRaidBtn.Text = "Auto Raid: " .. (toggles.AutoRaid and "ON" or "OFF")
        AutoRaidBtn.BackgroundColor3 = toggles.AutoRaid and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(50, 50, 50)
    end)

    ESPPlayersBtn.MouseButton1Click:Connect(function()
        toggles.ESPPlayers = not toggles.ESPPlayers
        ESPPlayersBtn.Text = "ESP Players: " .. (toggles.ESPPlayers and "ON" or "OFF")
        ESPPlayersBtn.BackgroundColor3 = toggles.ESPPlayers and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(50, 50, 50)
        if toggles.ESPPlayers then
            for _, player in pairs(Players:GetPlayers()) do
                if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
                    local esp = Instance.new("BillboardGui")
                    esp.Parent = player.Character.Head
                    esp.Size = UDim2.new(0, 100, 0, 50)
                    esp.StudsOffset = Vector3.new(0, 3, 0)
                    local nameLabel = Instance.new("TextLabel")
                    nameLabel.Parent = esp
                    nameLabel.Size = UDim2.new(1, 0, 1, 0)
                    nameLabel.BackgroundTransparency = 1
                    nameLabel.Text = player.Name
                    nameLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                    nameLabel.TextStrokeTransparency = 0
                    nameLabel.Font = Enum.Font.GothamBold
                    nameLabel.TextSize = 14
                end
            end
        end
    end)

    ESPFruitsBtn.MouseButton1Click:Connect(function()
        toggles.ESPFruits = not toggles.ESPFruits
        ESPFruitsBtn.Text = "ESP Fruits: " .. (toggles.ESPFruits and "ON" or "OFF")
        ESPFruitsBtn.BackgroundColor3 = toggles.ESPFruits and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(50, 50, 50)
    end)

    CloseBtn.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)

    -- Drag da GUI
    local dragging = false
    local dragStart = nil
    local startPos = nil

    Title.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = Frame.Position
        end
    end)

    Title.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    RunService.Heartbeat:Connect(function()
        if dragging then
            local delta = UserInputService:GetMouseDelta()
            Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

-- Função Auto Farm Level Melhorada
local function autoFarmLevel()
    if not toggles.AutoFarmLevel then return end
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    local rootPart = character.HumanoidRootPart
    local humanoid = character:FindFirstChild("Humanoid")
    
    -- Auto equip melhor ferramenta (espada)
    if character:FindFirstChild("Backpack") then
        for _, tool in pairs(character.Backpack:GetChildren()) do
            if tool:IsA("Tool") and string.find(tool.Name, "Sword") or string.find(tool.Name, "Blade") then
                humanoid:EquipTool(tool)
                break
            end
        end
    end
    
    local closestMob = nil
    local closestDist = math.huge
    
    -- Buscar mobs em todo Workspace
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj:IsA("Model") and obj:FindFirstChild("Humanoid") and obj:FindFirstChild("HumanoidRootPart") and obj:FindFirstChild("Head") then
            local hum = obj.Humanoid
            if hum.Health > 0 and obj ~= character and not Players:GetPlayerFromCharacter(obj) then -- NPCs apenas
                local dist = (rootPart.Position - obj.HumanoidRootPart.Position).Magnitude
                if dist < closestDist and dist < 500 then
                    closestDist = dist
                    closestMob = obj
                end
            end
        end
    end
    
    if closestMob then
        print("Farmando: " .. closestMob.Name .. " (dist: " .. math.floor(closestDist) .. ")")
        -- Tween suave para mob
        local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
        local targetCFrame = closestMob.HumanoidRootPart.CFrame * CFrame.new(math.random(-5,5)/10, 10, math.random(-5,5)/10)
        local tween = TweenService:Create(rootPart, tweenInfo, {CFrame = targetCFrame})
        tween:Play()
        -- Ataque
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):ClickButton1(Vector2.new(math.random(0,100), math.random(0,100)))
    else
        print("Nenhum mob próximo encontrado")
    end
end

-- Função Auto Collect Fruits Melhorada
local function autoCollectFruits()
    if not toggles.AutoCollectFruits then return end
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    local rootPart = character.HumanoidRootPart
    
    local closestFruit = nil
    local closestDist = math.huge
    
    -- Fruits comuns no Blox Fruits
    local fruitNames = {"Leopard", "Dough", "Dragon", "Kitsune", "Mammoth", "T-Rex", "Blizzard"}
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj:IsA("Model") or obj:IsA("Part") then
            local name = obj.Name
            local isFruit = false
            for _, fruitType in pairs(fruitNames) do
                if string.find(name, fruitType) and string.find(name, "Fruit") then
                    isFruit = true
                    break
                end
            end
            if isFruit and obj:FindFirstChild("Handle") or obj:IsA("Part") then
                local pos = obj:IsA("Part") and obj.Position or obj.Handle.Position
                local dist = (rootPart.Position - pos).Magnitude
                if dist < closestDist and dist < 300 then
                    closestDist = dist
                    closestFruit = obj
                end
            end
        end
    end
    
    if closestFruit then
        print("Coletando fruta: " .. closestFruit.Name)
        local pos = closestFruit:IsA("Part") and closestFruit.Position or closestFruit.Handle.Position
        local targetCFrame = CFrame.new(pos + Vector3.new(0, 5, 0))
        rootPart.CFrame = targetCFrame
    end
end

-- Função Auto Raid Básica
local function autoRaid()
    if not toggles.AutoRaid then return end
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    -- Teleports para raids comuns (exemplo - ajuste posições)
    local raidPositions = {
        CFrame.new(-5237, 100, 126),
        CFrame.new(2874, 4432, 5500)
    }
    local randomRaid = raidPositions[math.random(1, #raidPositions)]
    character.HumanoidRootPart.CFrame = randomRaid
    print("Teleportado para raid!")
end

-- Loop principal com No-Clip
local function noClipLoop()
    if toggles.NoClip and LocalPlayer.Character then
        for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
    end
end

RunService.Heartbeat:Connect(function()
    autoFarmLevel()
    autoCollectFruits()
    autoRaid()
    noClipLoop()
end)

-- Criar GUI
createGUI()

print("Blox Fruits Hub carregado! Abra o GUI e ative as funções.")

