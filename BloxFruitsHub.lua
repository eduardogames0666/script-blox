-- EURO Hub Blox Fruits - FIX DE VISIBILIDADE
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local task = game:GetService("task")

local LocalPlayer = Players.LocalPlayer
-- Espera o PlayerGui carregar completamente
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui", 10)

-- Remove versão antiga se existir para não sobrepor
if PlayerGui:FindFirstChild("EUROHub") then
    PlayerGui.EUROHub:Destroy()
end

local toggles = {
    AutoFarm = false,
    CollectFruits = false,
    NoClip = false
}

-- CONFIGURAÇÃO DA GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "EUROHub"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 999 -- Força a ficar na frente de tudo
ScreenGui.IgnoreGuiInset = true 

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 350, 0, 300)
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 2
MainFrame.BorderColor3 = Color3.fromRGB(0, 255, 0)
MainFrame.Active = true
MainFrame.Draggable = true -- Permite mover a janela
MainFrame.Visible = true
MainFrame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Text = "EURO Hub v2.0"
Title.TextColor3 = Color3.new(0, 1, 0)
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.Parent = MainFrame

-- Função para criar botões funcionais
local function CreateButton(name, text, pos)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Size = UDim2.new(0.9, 0, 0, 45)
    btn.Position = pos
    btn.Text = text
    btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.GothamMedium
    btn.TextSize = 16
    btn.BorderSizePixel = 0
    btn.AutoButtonColor = true
    btn.Parent = MainFrame
    return btn
end

local AutoFarmBtn = CreateButton("AutoFarmBtn", "Auto Farm: OFF", UDim2.new(0.05, 0, 0.25, 0))
local CollectBtn = CreateButton("CollectBtn", "Auto Fruits: OFF", UDim2.new(0.05, 0, 0.45, 0))
local NoClipBtn = CreateButton("NoClipBtn", "No-Clip: OFF", UDim2.new(0.05, 0, 0.65, 0))

-- LOGICA DOS BOTÕES
AutoFarmBtn.MouseButton1Click:Connect(function()
    toggles.AutoFarm = not toggles.AutoFarm
    AutoFarmBtn.Text = "Auto Farm: " .. (toggles.AutoFarm and "ON" or "OFF")
    AutoFarmBtn.BackgroundColor3 = toggles.AutoFarm and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(45, 45, 45)
end)

CollectBtn.MouseButton1Click:Connect(function()
    toggles.CollectFruits = not toggles.CollectFruits
    CollectBtn.Text = "Auto Fruits: " .. (toggles.CollectFruits and "ON" or "OFF")
    CollectBtn.BackgroundColor3 = toggles.CollectFruits and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(45, 45, 45)
end)

NoClipBtn.MouseButton1Click:Connect(function()
    toggles.NoClip = not toggles.NoClip
    NoClipBtn.Text = "No-Clip: " .. (toggles.NoClip and "ON" or "OFF")
    NoClipBtn.BackgroundColor3 = toggles.NoClip and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(45, 45, 45)
end)

-- LOOP DO NOCLIP (Executa toda vez que o boneco se mexe)
RunService.Stepped:Connect(function()
    if toggles.NoClip then
        local char = LocalPlayer.Character
        if char then
            for _, v in pairs(char:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    end
end)

-- LOOP DAS FUNÇÕES
task.spawn(function()
    while task.wait(0.2) do
        pcall(function() -- pcall evita que o script pare se der erro no jogo
            local char = LocalPlayer.Character
            local root = char and char:FindFirstChild("HumanoidRootPart")
            if not root then return end

            if toggles.AutoFarm then
                -- Lógica simples de busca por proximidade
                for _, npc in pairs(workspace:GetChildren()) do
                    if npc:FindFirstChild("Humanoid") and npc.Humanoid.Health > 0 and npc.Name ~= LocalPlayer.Name then
                        root.CFrame = npc.HumanoidRootPart.CFrame * CFrame.new(0, 8, 0)
                        break
                    end
                end
            end

            if toggles.CollectFruits then
                for _, v in pairs(workspace:GetChildren()) do
                    if v:IsA("Tool") and string.find(v.Name, "Fruit") then
                        root.CFrame = v.Handle.CFrame
                    end
                end
            end
        end)
    end
end)

print("✅ SCRIPT ATIVADO!")
