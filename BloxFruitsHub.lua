-- Blox Fruits Hub - Script apelão como Hohohub
-- Compatível com Xeno Executor
-- Funcionalidades: Auto Collect Fruits, Auto Farm Level, Auto Raid, ESP Players/Fruits, GUI

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
    ESPFruits = false
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
    Frame.Size = UDim2.new(0, 300, 0, 400)

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = Frame

    Title.Name = "Title"
    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(1, 0, 0, 50)
    Title.Font = Enum.Font.GothamBold
    Title.Text = "Blox Fruits Hub"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 18

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
    ESPFruitsBtn.Position = UDim2.new(0.05, 0, 0.67, 0)
    ESPFruitsBtn.Size = UDim2.new(0.9, 0, 0, 40)
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

-- Função Auto Farm Level (básica - mate mobs próximos)
local function autoFarmLevel()
    if not toggles.AutoFarmLevel then return end
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end

    for _, mob in pairs(Workspace.Enemies:GetChildren()) do
        if mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
            local distance = (character.HumanoidRootPart.Position - mob.HumanoidRootPart.Position).Magnitude
            if distance < 50 then
                character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):ClickButton1(Vector2.new())
            end
        end
    end
end

-- Função Auto Collect Fruits
local function autoCollectFruits()
    if not toggles.AutoCollectFruits then return end
    local character = LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end

    for _, fruit in pairs(Workspace:GetChildren()) do
        if string.find(fruit.Name, "Fruit") or string.find(fruit.Name, "fruta") then
            local distance = (character.HumanoidRootPart.Position - fruit.Position).Magnitude
            if distance < 100 then
                character.HumanoidRootPart.CFrame = fruit.CFrame
            end
        end
    end
end

-- Função Auto Raid (básica)
local function autoRaid()
    if not toggles.AutoRaid then return end
    -- Implementação básica para raids - ajuste conforme necessário
    -- Exemplo: Teleport para raid areas
    print("Auto Raid ativo - Implemente lógica específica para raids")
end

-- Loop principal
RunService.Heartbeat:Connect(function()
    autoFarmLevel()
    autoCollectFruits()
    autoRaid()
end)

-- Criar GUI
createGUI()

print("Blox Fruits Hub carregado! Abra o GUI e ative as funções.")

