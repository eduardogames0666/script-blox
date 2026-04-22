-- EURO Hub Blox Fruits - VERSÃO FIX
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local task = game:GetService("task") -- Biblioteca mais moderna e rápida

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local toggles = {
    AutoFarm = false,
    CollectFruits = false,
    NoClip = false
}

-- GUI PRINCIPAL
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "EUROHub"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 350, 0, 300)
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.Active = true -- Permite arrastar ou interagir
MainFrame.Draggable = true -- Bônus: Agora você pode mover a GUI
MainFrame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Text = "EURO Hub v2.0"
Title.TextColor3 = Color3.new(0, 1, 0)
Title.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.Parent = MainFrame

-- Função para criar botões rápido e evitar erro de clique
local function CreateButton(name, text, pos)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Size = UDim2.new(0.9, 0, 0, 40)
    btn.Position = pos
    btn.Text = text
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 16
    btn.AutoButtonColor = true -- Dá feedback visual ao clicar
    btn.Parent = MainFrame
    return btn
end

local AutoFarmBtn = CreateButton("AutoFarmBtn", "Auto Farm: OFF", UDim2.new(0.05, 0, 0.2, 0))
local CollectBtn = CreateButton("CollectBtn", "Auto Fruits: OFF", UDim2.new(0.05, 0, 0.35, 0))
local NoClipBtn = CreateButton("NoClipBtn", "No-Clip: OFF", UDim2.new(0.05, 0, 0.5, 0))

-- EVENTOS DE CLIQUE (Corrigidos)
AutoFarmBtn.MouseButton1Click:Connect(function()
    toggles.AutoFarm = not toggles.AutoFarm
    AutoFarmBtn.Text = "Auto Farm: " .. (toggles.AutoFarm and "ON" or "OFF")
    AutoFarmBtn.BackgroundColor3 = toggles.AutoFarm and Color3.new(0, 1, 0) or Color3.fromRGB(50, 50, 50)
end)

CollectBtn.MouseButton1Click:Connect(function()
    toggles.CollectFruits = not toggles.CollectFruits
    CollectBtn.Text = "Auto Fruits: " .. (toggles.CollectFruits and "ON" or "OFF")
    CollectBtn.BackgroundColor3 = toggles.CollectFruits and Color3.new(0, 1, 0) or Color3.fromRGB(50, 50, 50)
end)

NoClipBtn.MouseButton1Click:Connect(function()
    toggles.NoClip = not toggles.NoClip
    NoClipBtn.Text = "No-Clip: " .. (toggles.NoClip and "ON" or "OFF")
    NoClipBtn.BackgroundColor3 = toggles.NoClip and Color3.new(0, 1, 0) or Color3.fromRGB(50, 50, 50)
end)

-- LOOP DO NOCLIP (Roda todo frame físico)
RunService.Stepped:Connect(function()
    if toggles.NoClip then
        local char = LocalPlayer.Character
        if char then
            for _, part in pairs(char:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end
end)

-- LOOP PRINCIPAL (Farm e Coleta)
task.spawn(function()
    while true do
        task.wait(0.1) -- Loop mais eficiente
        local char = LocalPlayer.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        
        if not root then continue end
        
        -- Auto Farm (Lógica simples)
        if toggles.AutoFarm then
            for _, obj in pairs(workspace.Enemies:GetChildren()) do -- Em Blox Fruits, inimigos costumam ficar em pastas específicas
                if obj:FindFirstChild("Humanoid") and obj.Humanoid.Health > 0 then
                    root.CFrame = obj.HumanoidRootPart.CFrame * CFrame.new(0, 7, 0) -- Fica em cima do inimigo
                    break -- Foca em um por vez
                end
            end
        end

        -- Collect Fruits
        if toggles.CollectFruits then
            for _, fruit in pairs(workspace:GetChildren()) do
                if fruit:IsA("Tool") or string.find(fruit.Name, "Fruit") then
                    if fruit:FindFirstChild("Handle") then
                        root.CFrame = fruit.Handle.CFrame
                    end
                end
            end
        end
    end
end)

print("✅ EURO Hub Carregado com Sucesso!")
