--[[
    EURO HUB — Versão Corrigida e Completa
    Compatibilidade: Xeno, Synapse, Fluxus, etc.
]]

-- ==================== EXECUTOR COMPAT ====================
if not game:IsLoaded() then game:IsLoaded():Wait() end

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")

local player = Players.LocalPlayer
local pgui = player:WaitForChild("PlayerGui")

-- Função para detectar onde injetar a UI (Melhora compatibilidade com Xeno)
local function getSafeParent()
    local success, target = pcall(function() return gethui() end)
    if success and target then return target end
    return CoreGui
end

local uiParent = getSafeParent()

-- Evitar duplicação
if uiParent:FindFirstChild("EuroHub") then
    uiParent:FindFirstChild("EuroHub"):Destroy()
end

-- ==================== VARS GLOBAIS ====================
local toggles = {}
local connections = {}
local combatTool = nil
local attackSpeed = 0.1
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local questTable = {
    [1] = {npcPos = CFrame.new(100, 20, 100), questId = "StarterQuest", mobArea = CFrame.new(120, 20, 120)},
    [50] = {npcPos = CFrame.new(500, 50, 500), questId = "DesertQuest", mobArea = CFrame.new(520, 50, 520)},
}

-- ==================== FUNÇÕES UTILITÁRIAS ====================
local function updateCharacter(newChar)
    character = newChar or player.Character
    if character then
        humanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
    end
end
player.CharacterAdded:Connect(updateCharacter)

local function equipTool(toolName)
    if not character then return end
    local tool = player.Backpack:FindFirstChild(toolName) or character:FindFirstChild(toolName)
    if tool and tool:IsA("Tool") then
        character.Humanoid:EquipTool(tool)
        combatTool = tool
    end
end

local function teleportTo(pos)
    if humanoidRootPart then
        humanoidRootPart.CFrame = pos + Vector3.new(0, 10, 0)
    end
end

local function fastAttack()
    if combatTool and character then
        pcall(function() combatTool:Activate() end)
    end
end

-- ==================== DESIGN TOKENS ====================
local C = {
    bg = Color3.fromRGB(10, 10, 12),
    card = Color3.fromRGB(18, 18, 22),
    surface = Color3.fromRGB(26, 26, 32),
    border = Color3.fromRGB(40, 40, 48),
    text = Color3.fromRGB(235, 235, 240),
    primary = Color3.fromRGB(255, 0, 0),
    muted = Color3.fromRGB(140, 140, 150),
}

local FONT_BOLD = Enum.Font.GothamBold
local FONT_REG = Enum.Font.Gotham

-- ==================== INTERFACE RAIZ ====================
local screen = Instance.new("ScreenGui")
screen.Name = "EuroHub"
screen.ResetOnSpawn = false
screen.Parent = uiParent

-- Helper: UI Corner
local function corner(p, r)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, r or 8)
    c.Parent = p
end

-- ==================== JANELA PRINCIPAL ====================
local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.fromOffset(600, 400)
main.Position = UDim2.fromScale(0.5, 0.5)
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = C.card
main.BorderSizePixel = 0
main.Parent = screen
corner(main, 10)

-- Header (Arrastável)
local header = Instance.new("Frame")
header.Size = UDim2.new(1, 0, 0, 40)
header.BackgroundColor3 = C.surface
header.Parent = main
corner(header, 10)

local title = Instance.new("TextLabel")
title.Text = "  EURO HUB - EXECUTOR MODE"
title.Size = UDim2.new(1, 0, 1, 0)
title.TextColor3 = C.text
title.Font = FONT_BOLD
title.TextSize = 14
title.TextXAlignment = Enum.TextXAlignment.Left
title.BackgroundTransparency = 1
title.Parent = header

-- Conteúdo
local container = Instance.new("Frame")
container.Position = UDim2.new(0, 140, 0, 45)
container.Size = UDim2.new(1, -150, 1, -55)
container.BackgroundTransparency = 1
container.Parent = main

local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 8)
layout.Parent = container

-- Sidebar Simples
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, 130, 1, -40)
sidebar.Position = UDim2.new(0, 0, 0, 40)
sidebar.BackgroundColor3 = C.bg
sidebar.Parent = main

-- ==================== COMPONENTES ====================
local function CreateToggle(name, desc)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 40)
    btn.BackgroundColor3 = C.surface
    btn.Text = "  " .. name .. ": OFF"
    btn.TextColor3 = C.muted
    btn.Font = FONT_REG
    btn.TextSize = 12
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.Parent = container
    corner(btn, 6)

    toggles[name] = false

    btn.MouseButton1Click:Connect(function()
        toggles[name] = not toggles[name]
        btn.Text = "  " .. name .. ": " .. (toggles[name] and "ON" or "OFF")
        btn.TextColor3 = toggles[name] and C.primary or C.muted
    end)
end

-- Adicionando Funções
CreateToggle("Auto Farm", "Inicia o farm por nível")
CreateToggle("Auto Attack", "Ataque rápido nos arredores")
CreateToggle("Katakuri Farm", "Foca no boss Katakuri")

-- ==================== LÓGICA DE EXECUÇÃO (LOOP) ====================
local lastAttack = 0

connections.mainLoop = RunService.Heartbeat:Connect(function()
    if not character or not character:FindFirstChild("Humanoid") or character.Humanoid.Health <= 0 then return end

    -- Lógica de Ataque
    if toggles["Auto Attack"] then
        if tick() - lastAttack >= attackSpeed then
            fastAttack()
            lastAttack = tick()
        end
    end

    -- Lógica de Farm (Exemplo simplificado)
    if toggles["Auto Farm"] then
        local targetPos = questTable[1].mobArea
        if humanoidRootPart then
            humanoidRootPart.CFrame = targetPos
        end
    end

    -- Lógica do Katakuri (A parte que estava cortada)
    if toggles["Katakuri Farm"] then
        local boss = Workspace:FindFirstChild("Katakuri") or Workspace:FindFirstChild("Cake Prince")
        if boss and boss:FindFirstChild("HumanoidRootPart") then
            humanoidRootPart.CFrame = boss.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
            fastAttack()
        end
    end
end)

-- Botão de Fechar
local close = Instance.new("TextButton")
close.Text = "X"
close.Size = UDim2.fromOffset(30, 30)
close.Position = UDim2.new(1, -35, 0, 5)
close.BackgroundColor3 = C.primary
close.TextColor3 = Color3.new(1,1,1)
close.Parent = header
corner(close, 5)

close.MouseButton1Click:Connect(function()
    connections.mainLoop:Disconnect()
    screen:Destroy()
end)

-- Arrastar UI (Simple Mobile/PC Friendly)
local dragging, dragStart, startPos
header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = main.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

print("[EURO HUB] Carregado com sucesso!")
