--[[
    EURO HUB — Painel visual + Lógicas (Executor/Xeno Compatible)
    --------------------------------------------------------------
    Instruções:
      1. Cole no executor (Xeno, Synapse, etc.) e execute.
      2. Ou cole em StarterPlayerScripts como LocalScript.
]]

-- ==================== EXECUTOR COMPAT ====================
if not game:IsLoaded() then game:IsLoaded():Wait() end

local Players       = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService  = game:GetService("TweenService")
local RunService    = game:GetService("RunService")
local Workspace     = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PathfindingService = game:GetService("PathfindingService")
local CoreGui       = game:GetService("CoreGui")

local player = Players.LocalPlayer
if not player then
    warn("[EURO HUB] LocalPlayer não encontrado.")
    return
end

-- Evitar duplicação
if CoreGui:FindFirstChild("EuroHub") or player.PlayerGui:FindFirstChild("EuroHub") then
    warn("[EURO HUB] Já está carregado.")
    return
end

-- PlayerGui ou CoreGui (executor usa CoreGui)
local pgui = player:FindFirstChild("PlayerGui") or CoreGui

-- ==================== VARS GLOBAIS ====================
local toggles = {}
local connections = {}
local combatTool = nil
local attackSpeed = 0.1
local character = nil
local humanoidRootPart = nil
local materialTarget = "Magma Ore"

local questTable = {
    [1] = {npcPos = CFrame.new(100, 20, 100), questId = "StarterQuest", mobArea = CFrame.new(120, 20, 120)},
    [50] = {npcPos = CFrame.new(500, 50, 500), questId = "DesertQuest", mobArea = CFrame.new(520, 50, 520)},
    [2650] = {npcPos = CFrame.new(0,0,0), questId = "Final", mobArea = CFrame.new(0,0,0)}
}

-- ==================== FUNÇÕES UTILITÁRIAS ====================
local function updateCharacter()
    character = player.Character or player.CharacterAdded:Wait()
    if character then
        humanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
    end
end

local function equipTool(toolName)
    if not character then return end
    local tool = player.Backpack:FindFirstChild(toolName) or character:FindFirstChild(toolName)
    if tool and tool:IsA("Tool") then
        local hum = character:FindFirstChildOfClass("Humanoid")
        if hum then hum:EquipTool(tool) end
        combatTool = tool
    end
end

local function teleportTo(pos)
    if humanoidRootPart then
        humanoidRootPart.CFrame = pos + Vector3.new(0, 10, 0)
    end
end

local function toggleNoclip(enabled)
    if character then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = not enabled
            end
        end
    end
end

local function fastAttack()
    if combatTool and character then
        pcall(function() combatTool:Activate() end)
        task.wait(attackSpeed)
    end
end

local function getPlayerLevel()
    local stats = player:FindFirstChild("leaderstats")
    return stats and stats:FindFirstChild("Level") and stats.Level.Value or 1
end

local function fireRemote(remoteName, ...)
    local remote = ReplicatedStorage:FindFirstChild(remoteName, true)
    if remote and (remote:IsA("RemoteEvent") or remote:IsA("RemoteFunction")) then
        pcall(function() remote:FireServer(...) end)
    end
end

-- Setup character
player.CharacterAdded:Connect(updateCharacter)
if player.Character then updateCharacter() end

-- ==================== PALETA / TOKENS ====================
local C = {
    bg          = Color3.fromRGB(10, 10, 12),
    card        = Color3.fromRGB(18, 18, 22),
    surface     = Color3.fromRGB(26, 26, 32),
    border      = Color3.fromRGB(40, 40, 48),
    text        = Color3.fromRGB(235, 235, 240),
    muted       = Color3.fromRGB(140, 140, 150),
    primary     = Color3.fromRGB(255, 0, 0),
    primaryDim  = Color3.fromRGB(180, 0, 0),
    success     = Color3.fromRGB(0, 200, 80),
    warn        = Color3.fromRGB(230, 180, 0),
}

local FONT_UI   = Enum.Font.Gotham or Enum.Font.SourceSans
local FONT_BOLD = Enum.Font.GothamBold or Enum.Font.SourceSansBold
local FONT_MONO = Enum.Font.Code or Enum.Font.SourceSans

-- ==================== HELPERS DE UI ====================
local function corner(parent, r)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, r or 8)
    c.Parent = parent
    return c
end

local function stroke(parent, color, thick)
    local s = Instance.new("UIStroke")
    s.Color = color or C.border
    s.Thickness = thick or 1
    s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    s.Parent = parent
    return s
end

local function pad(parent, p)
    local u = Instance.new("UIPadding")
    u.PaddingTop    = UDim.new(0, p)
    u.PaddingBottom = UDim.new(0, p)
    u.PaddingLeft   = UDim.new(0, p)
    u.PaddingRight  = UDim.new(0, p)
    u.Parent = parent
    return u
end

local function vlist(parent, gap)
    local l = Instance.new("UIListLayout")
    l.FillDirection = Enum.FillDirection.Vertical
    l.SortOrder = Enum.SortOrder.LayoutOrder
    l.Padding = UDim.new(0, gap or 6)
    l.Parent = parent
    return l
end

-- ==================== SCREEN GUI RAIZ ====================
local screen = Instance.new("ScreenGui")
screen.Name = "EuroHub"
screen.ResetOnSpawn = false
screen.IgnoreGuiInset = true
screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Parent: CoreGui para executores, PlayerGui para Studio
local success, err = pcall(function()
    screen.Parent = CoreGui
end)
if not success then
    screen.Parent = pgui
end

-- ==================== BOLHA FLUTUANTE ====================
local bubble = Instance.new("TextButton")
bubble.Name = "Bubble"
bubble.Size = UDim2.fromOffset(56, 56)
bubble.Position = UDim2.new(0, 24, 1, -88)
bubble.BackgroundColor3 = C.primary
bubble.AutoButtonColor = false
bubble.Text = "E"
bubble.Font = FONT_BOLD
bubble.TextSize = 22
bubble.TextColor3 = Color3.new(1, 1, 1)
bubble.Visible = false
bubble.Parent = screen
corner(bubble, 28)
stroke(bubble, Color3.fromRGB(255, 80, 80), 2)

do
    local dragging, moved, startPos, startInput
    bubble.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            moved = false
            startPos = bubble.Position
            startInput = input.Position
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - startInput
            if delta.Magnitude > 4 then moved = true end
            bubble.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            if dragging and not moved then
                bubble.Visible = false
                local mainFrame = screen:FindFirstChild("Main")
                if mainFrame then mainFrame.Visible = true end
            end
            dragging = false
        end
    end)
end

-- ==================== JANELA PRINCIPAL ====================
local main = Instance.new("Frame")
main.Name = "Main"
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.Position = UDim2.fromScale(0.5, 0.5)
main.Size = UDim2.fromOffset(900, 560)
main.BackgroundColor3 = C.card
main.BorderSizePixel = 0
main.Parent = screen
corner(main, 14)
stroke(main, C.border, 1)

local function makeDraggable(handle, target)
    local dragging, startPos, startInput
    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            startPos = target.Position
            startInput = input.Position
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch) then
            local d = input.Position - startInput
            target.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + d.X,
                startPos.Y.Scale, startPos.Y.Offset + d.Y
            )
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
end

-- ---------- HEADER ----------
local header = Instance.new("Frame")
header.Name = "Header"
header.Size = UDim2.new(1, 0, 0, 44)
header.BackgroundColor3 = C.surface
header.BorderSizePixel = 0
header.Parent = main
corner(header, 14)

local headerFix = Instance.new("Frame")
local title = Instance.new("TextLabel")
title.BackgroundTransparency = 1
title.Position = UDim2.new(0, 16, 0, 0)
title.Size = UDim2.new(1, -160, 1, 0)
title.Font = FONT_BOLD
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left
title.TextColor3 = C.text
title.Text = "EURO HUB"
title.Parent = header

local dot = Instance.new("Frame")
dot.Size = UDim2.fromOffset(8, 8)
dot.Position = UDim2.new(0, 92, 0.5, -4)
dot.BackgroundColor3 = C.primary
dot.BorderSizePixel = 0
dot.Parent = header
corner(dot, 4)

local function headerBtn(text, x, color)
    local b = Instance.new("TextButton")
    b.Size = UDim2.fromOffset(28, 24)
    b.Position = UDim2.new(1, x, 0.5, -12)
    b.BackgroundColor3 = color
    b.Text = text
    b.TextColor3 = Color3.new(1, 1, 1)
    b.Font = FONT_BOLD
    b.TextSize = 14
    b.AutoButtonColor = true
    b.Parent = header
    corner(b, 6)
    return b
end

local btnMin   = headerBtn("–", -76, Color3.fromRGB(60, 60, 70))
local btnClose = headerBtn("✕", -40, C.primaryDim)

makeDraggable(header, main)

btnMin.MouseButton1Click:Connect(function()
    main.Visible = false
    bubble.Visible = true
end)

btnClose.MouseButton1Click:Connect(function()
    main.Visible = false
    bubble.Visible = true -- mantém acesso (assim você não perde o painel)
end)

-- ---------- BODY (sidebar + conteúdo) ----------
local body = Instance.new("Frame")
body.Name = "Body"
body.Position = UDim2.new(0, 0, 0, 44)
body.Size = UDim2.new(1, 0, 1, -44)
body.BackgroundTransparency = 1
body.Parent = main

local sidebar = Instance.new("Frame")
sidebar.Name = "Sidebar"
sidebar.Size = UDim2.new(0, 200, 1, 0)
sidebar.BackgroundColor3 = C.surface
sidebar.BorderSizePixel = 0
sidebar.Parent = body

local sidebarStroke = Instance.new("Frame")
sidebarStroke.Size = UDim2.new(0, 1, 1, 0)
sidebarStroke.Position = UDim2.new(1, 0, 0, 0)
sidebarStroke.BackgroundColor3 = C.border
sidebarStroke.BorderSizePixel = 0
sidebarStroke.Parent = sidebar

local sideScroll = Instance.new("ScrollingFrame")
sideScroll.BackgroundTransparency = 1
sideScroll.BorderSizePixel = 0
sideScroll.Size = UDim2.new(1, 0, 1, 0)
sideScroll.CanvasSize = UDim2.new()
sideScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
sideScroll.ScrollBarThickness = 4
sideScroll.ScrollBarImageColor3 = C.primary
sideScroll.Parent = sidebar
pad(sideScroll, 10)
vlist(sideScroll, 4)

local content = Instance.new("Frame")
content.Name = "Content"
content.Position = UDim2.new(0, 200, 0, 0)
content.Size = UDim2.new(1, -200, 1, 0)
content.BackgroundColor3 = C.bg
content.BorderSizePixel = 0
content.Parent = body

local contentTitle = Instance.new("TextLabel")
contentTitle.BackgroundTransparency = 1
contentTitle.Position = UDim2.new(0, 18, 0, 12)
contentTitle.Size = UDim2.new(1, -36, 0, 22)
contentTitle.Font = FONT_BOLD
contentTitle.TextSize = 16
contentTitle.TextXAlignment = Enum.TextXAlignment.Left
contentTitle.TextColor3 = C.text
contentTitle.Text = "INFO / ESTADO"
contentTitle.Parent = content

local contentTag = Instance.new("TextLabel")
contentTag.BackgroundTransparency = 1
contentTag.Position = UDim2.new(1, -180, 0, 14)
contentTag.Size = UDim2.new(0, 170, 0, 18)
contentTag.Font = FONT_MONO
contentTag.TextSize = 11
contentTag.TextXAlignment = Enum.TextXAlignment.Right
contentTag.TextColor3 = C.muted
contentTag.Text = "EURO HUB / info"
contentTag.Parent = content

local divider = Instance.new("Frame")
divider.Position = UDim2.new(0, 18, 0, 42)
divider.Size = UDim2.new(1, -36, 0, 1)
divider.BackgroundColor3 = C.border
divider.BorderSizePixel = 0
divider.Parent = content

local pages = Instance.new("Frame")
pages.Position = UDim2.new(0, 0, 0, 52)
pages.Size = UDim2.new(1, 0, 1, -52)
pages.BackgroundTransparency = 1
pages.Parent = content

-- =========================================================
-- COMPONENTES REUTILIZÁVEIS
-- =========================================================

-- Section (card que agrupa controles)
local function Section(parent, titleText, hint)
    local card = Instance.new("Frame")
    card.BackgroundColor3 = C.surface
    card.BorderSizePixel = 0
    card.AutomaticSize = Enum.AutomaticSize.Y
    card.Size = UDim2.new(1, 0, 0, 0)
    card.Parent = parent
    corner(card, 10)
    stroke(card, C.border, 1)
    pad(card, 12)

    local layout = vlist(card, 8)
    layout.Parent = card

    local head = Instance.new("Frame")
    head.BackgroundTransparency = 1
    head.Size = UDim2.new(1, 0, 0, 18)
    head.LayoutOrder = -1
    head.Parent = card

    local t = Instance.new("TextLabel")
    t.BackgroundTransparency = 1
    t.Size = UDim2.new(1, hint and -120 or 0, 1, 0)
    t.Font = FONT_BOLD
    t.TextSize = 13
    t.TextXAlignment = Enum.TextXAlignment.Left
    t.TextColor3 = C.text
    t.Text = titleText
    t.Parent = head

    if hint then
        local h = Instance.new("TextLabel")
        h.BackgroundTransparency = 1
        h.AnchorPoint = Vector2.new(1, 0)
        h.Position = UDim2.new(1, 0, 0, 0)
        h.Size = UDim2.new(0, 120, 1, 0)
        h.Font = FONT_MONO
        h.TextSize = 10
        h.TextXAlignment = Enum.TextXAlignment.Right
        h.TextColor3 = C.muted
        h.Text = hint
        h.Parent = head
    end

    return card
end

-- Toggle
local function Toggle(parent, label, desc, defaultOn)
    local row = Instance.new("Frame")
    row.BackgroundColor3 = C.bg
    row.BorderSizePixel = 0
    row.Size = UDim2.new(1, 0, 0, 44)
    row.Parent = parent
    corner(row, 8)
    stroke(row, C.border, 1)
    pad(row, 8)

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Position = UDim2.new(0, 4, 0, 0)
    lbl.Size = UDim2.new(1, -68, 0, 16)
    lbl.Font = FONT_BOLD
    lbl.TextSize = 12
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextColor3 = C.text
    lbl.Text = label
    lbl.Parent = row

    if desc then
        local d = Instance.new("TextLabel")
        d.BackgroundTransparency = 1
        d.Position = UDim2.new(0, 4, 0, 16)
        d.Size = UDim2.new(1, -68, 0, 14)
        d.Font = FONT_UI
        d.TextSize = 11
        d.TextXAlignment = Enum.TextXAlignment.Left
        d.TextColor3 = C.muted
        d.Text = desc
        d.Parent = row
    end

    local sw = Instance.new("TextButton")
    sw.AutoButtonColor = false
    sw.AnchorPoint = Vector2.new(1, 0.5)
    sw.Position = UDim2.new(1, -4, 0.5, 0)
    sw.Size = UDim2.fromOffset(44, 22)
    sw.Text = ""
    sw.BackgroundColor3 = defaultOn and C.primary or Color3.fromRGB(60, 60, 70)
    sw.Parent = row
    corner(sw, 11)

    local knob = Instance.new("Frame")
    knob.Size = UDim2.fromOffset(18, 18)
    knob.Position = defaultOn and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
    knob.BackgroundColor3 = Color3.new(1, 1, 1)
    knob.BorderSizePixel = 0
    knob.Parent = sw
    corner(knob, 9)

    local on = defaultOn and true or false
    sw.MouseButton1Click:Connect(function()
        on = not on
        TweenService:Create(sw, TweenInfo.new(0.15), {
            BackgroundColor3 = on and C.primary or Color3.fromRGB(60, 60, 70)
        }):Play()
        TweenService:Create(knob, TweenInfo.new(0.15), {
            Position = on and UDim2.new(1, -20, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
        }):Play()
        toggles[label] = on
        print("[EuroHub] Toggle '" .. label .. "' = " .. tostring(on))
    end)

    return row
end

-- Dropdown (simples: clica e cicla a opção)
local function Dropdown(parent, label, options, default)
    local row = Instance.new("Frame")
    row.BackgroundColor3 = C.bg
    row.BorderSizePixel = 0
    row.Size = UDim2.new(1, 0, 0, 44)
    row.Parent = parent
    corner(row, 8)
    stroke(row, C.border, 1)
    pad(row, 8)

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Position = UDim2.new(0, 4, 0, 0)
    lbl.Size = UDim2.new(0.55, -8, 1, 0)
    lbl.Font = FONT_BOLD
    lbl.TextSize = 12
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextColor3 = C.text
    lbl.Text = label
    lbl.Parent = row

    local btn = Instance.new("TextButton")
    btn.AnchorPoint = Vector2.new(1, 0.5)
    btn.Position = UDim2.new(1, -4, 0.5, 0)
    btn.Size = UDim2.new(0.45, -8, 0, 28)
    btn.BackgroundColor3 = C.surface
    btn.Font = FONT_MONO
    btn.TextSize = 12
    btn.TextColor3 = C.text
    btn.AutoButtonColor = true
    btn.Parent = row
    corner(btn, 6)
    stroke(btn, C.border, 1)

    local idx = 1
    if default then
        for i, v in ipairs(options) do if v == default then idx = i break end end
    end
    btn.Text = (options[idx] or "—") .. "  ▾"

    btn.MouseButton1Click:Connect(function()
        idx = (idx % #options) + 1
        btn.Text = options[idx] .. "  ▾"
        if label == "Arma Selecionada" then
            combatTool = options[idx]
            if toggles["Auto Equipar"] then
                equipTool(combatTool)
            end
        elseif label == "Velocidade de Ataque" then
            local speeds = {Lenta = 0.5, ["Normal"] = 0.3, Rápida = 0.1, Turbo = 0.05}
            attackSpeed = speeds[options[idx]] or 0.1
        end
        print("[EuroHub] Dropdown '" .. label .. "' = " .. options[idx])
    end)

    return row
end

-- ActionButton
local function ActionButton(parent, text)
    local b = Instance.new("TextButton")
    b.BackgroundColor3 = C.primary
    b.Size = UDim2.new(1, 0, 0, 32)
    b.Font = FONT_BOLD
    b.TextSize = 12
    b.TextColor3 = Color3.new(1, 1, 1)
    b.Text = text
    b.AutoButtonColor = true
    b.Parent = parent
    corner(b, 6)
    return b
end

-- CodeSlot (placeholder de "aqui entra a lógica")
local function CodeSlot(parent, name, description)
    local box = Instance.new("Frame")
    box.BackgroundColor3 = C.bg
    box.BorderSizePixel = 0
    box.AutomaticSize = Enum.AutomaticSize.Y
    box.Size = UDim2.new(1, 0, 0, 0)
    box.Parent = parent
    corner(box, 6)
    local s = stroke(box, C.primary, 1)
    s.Transparency = 0.5
    pad(box, 8)

    local v = vlist(box, 4)
    v.Parent = box

    local n = Instance.new("TextLabel")
    n.BackgroundTransparency = 1
    n.Size = UDim2.new(1, 0, 0, 14)
    n.Font = FONT_MONO
    n.TextSize = 11
    n.TextXAlignment = Enum.TextXAlignment.Left
    n.TextColor3 = C.primary
    n.Text = "[SLOT] " .. name
    n.Parent = box

    local d = Instance.new("TextLabel")
    d.BackgroundTransparency = 1
    d.AutomaticSize = Enum.AutomaticSize.Y
    d.Size = UDim2.new(1, 0, 0, 0)
    d.Font = FONT_UI
    d.TextSize = 11
    d.TextXAlignment = Enum.TextXAlignment.Left
    d.TextYAlignment = Enum.TextYAlignment.Top
    d.TextWrapped = true
    d.TextColor3 = C.muted
    d.Text = description
    d.Parent = box

    local code = Instance.new("TextLabel")
    code.BackgroundColor3 = Color3.fromRGB(8, 8, 10)
    code.BorderSizePixel = 0
    code.AutomaticSize = Enum.AutomaticSize.Y
    code.Size = UDim2.new(1, 0, 0, 0)
    code.Font = FONT_MONO
    code.TextSize = 11
    code.TextXAlignment = Enum.TextXAlignment.Left
    code.TextYAlignment = Enum.TextYAlignment.Top
    code.TextColor3 = C.muted
    code.TextWrapped = true
    code.Text = ("-- %s\n-- %s\n-- (cole aqui a lógica)"):format(name, description)
    code.Parent = box
    corner(code, 4)
    pad(code, 6)

    return box
end

-- =========================================================
-- ABAS (cada uma é uma página/ScrollingFrame)
-- =========================================================
local TABS = {
    { id = "info",     label = "INFO / ESTADO" },
    { id = "farming",  label = "Farming" },
    { id = "fishing",  label = "Pesca Auto" },
    { id = "quest",    label = "Missões | Itens" },
    { id = "volcano",  label = "Dojo do Vulcão" },
    { id = "sea",      label = "Evento do Mar" },
    { id = "race",     label = "Corrida V4" },
    { id = "raid",     label = "Raid de Frutas" },
    { id = "stock",    label = "Frutas | Estoque" },
    { id = "teleport", label = "Teleporte" },
}

local pageFrames = {}

local function makePage(id)
    local page = Instance.new("ScrollingFrame")
    page.Name = "Page_" .. id
    page.Size = UDim2.new(1, 0, 1, 0)
    page.BackgroundTransparency = 1
    page.BorderSizePixel = 0
    page.Visible = false
    page.ScrollBarThickness = 4
    page.ScrollBarImageColor3 = C.primary
    page.CanvasSize = UDim2.new()
    page.AutomaticCanvasSize = Enum.AutomaticSize.Y
    page.Parent = pages
    pad(page, 16)
    local l = vlist(page, 10)
    l.Parent = page
    pageFrames[id] = page
    return page
end

-- ----- INFO -----
do
    local p = makePage("info")
    local s = Section(p, "Status do Personagem", "atualiza em tempo real")
    Toggle(s, "Mostrar HUD", "Exibe overlay com status", true)
    Toggle(s, "Modo Compacto", "Reduz tamanho do painel", false)
    CodeSlot(s, "playerStatsLoop",
        "Lê HP/level/posição do LocalPlayer e atualiza labels da seção.")

    local s2 = Section(p, "Servidor", "info do place")
    Dropdown(s2, "Região Preferida", {"Auto", "BR", "US-East", "EU"}, "Auto")
    ActionButton(s2, "Atualizar Info")
    CodeSlot(s2, "serverInfo",
        "Lê JobId, ping e quantidade de jogadores do servidor atual.")
end

-- ----- FARMING -----
do
    local p = makePage("farming")
    local s = Section(p, "Configurações de Combate")
    Dropdown(s, "Arma Selecionada", {"Corpo a Corpo", "Espada", "Arma de Fogo", "Fruta"})
    Dropdown(s, "Velocidade de Ataque", {"Lenta", "Normal", "Rápida", "Turbo"}, "Rápida")
    Toggle(s, "Auto Equipar", "Equipa a arma escolhida automaticamente", true)
    CodeSlot(s, "onWeaponChange",
        "Disparado quando o usuário troca de arma. Aplicar arma equipada no personagem.")

    local s2 = Section(p, "Farm Principal", "Progressão de Nível")
    Toggle(s2, "Auto Farm por Nível (1 – 2650)", "Identifica nível e missão atual", true)
    Toggle(s2, "Auto Farm Nova Ilha", "Foca em novas áreas desbloqueadas", false)
    Toggle(s2, "Auto Atacar Próximos · Aura de Mob", "Ataca inimigos no raio definido", false)
    Dropdown(s2, "Raio da Aura", {"20", "40", "60", "80", "100"}, "60")
    CodeSlot(s2, "autoFarmByLevel",
        "Lê o nível e move o personagem para a área de farm correspondente.")
    CodeSlot(s2, "auraAttackLoop",
        "A cada tick, busca mobs dentro do raio e dispara ataques.")

    local s3 = Section(p, "Eventos & Chefes")
    Toggle(s3, "Evento Boss Pain", nil, false)
    Dropdown(s3, "Selecionar Boss", {"Diamond", "Mihawk", "Magma Admiral", "Smoke Admiral"})
    Toggle(s3, "Tirano dos Céus · Checar Olhos", nil, false)
    Toggle(s3, "Katakuri · Príncipe do Bolo", nil, false)
    ActionButton(s3, "Farm V1")
    ActionButton(s3, "Farm V2")
    CodeSlot(s3, "bossSelector",
        "Resolve o boss escolhido para coordenadas/ID e prepara a rotina.")
end

-- ----- FISHING -----
do
    local p = makePage("fishing")
    local s = Section(p, "Pesca Automática")
    Toggle(s, "Auto Pescar", "Lança e recolhe sozinho", true)
    Dropdown(s, "Local Preferido", {"Praia", "Rio", "Mar Aberto", "Lago Profundo"})
    Dropdown(s, "Isca", {"Comum", "Premium", "Lendária"}, "Premium")
    Toggle(s, "Soltar Peixes Comuns", nil, true)
    CodeSlot(s, "fishingLoop",
        "Equipa vara, lança, espera mordida e recolhe. Filtra por raridade.")
end

-- ----- QUEST -----
do
    local p = makePage("quest")
    local s = Section(p, "Missões")
    Toggle(s, "Auto Aceitar Missões", nil, true)
    Toggle(s, "Auto Entregar Recompensas", nil, true)
    Dropdown(s, "Prioridade", {"Diárias", "Principais", "Eventos"})
    CodeSlot(s, "questHandler",
        "Detecta NPC de missão próximo, aceita e marca objetivos.")

    local s2 = Section(p, "Itens")
    Toggle(s2, "Auto Coletar Itens do Chão", nil, true)
    Dropdown(s2, "Filtro", {"Tudo", "Só Raros", "Só Lendários"}, "Tudo")
end

-- ----- VOLCANO -----
do
    local p = makePage("volcano")
    local s = Section(p, "Dojo do Vulcão")
    Dropdown(s, "Dificuldade", {"Fácil", "Normal", "Difícil", "Insano"}, "Normal")
    Toggle(s, "Auto Treinar", nil, false)
    Dropdown(s, "Recompensa Alvo", {"Habilidade A", "Habilidade B", "Habilidade C"})
    CodeSlot(s, "volcanoTrainer",
        "Repete o treino até obter a habilidade alvo.")
end

-- ----- SEA -----
do
    local p = makePage("sea")
    local s = Section(p, "Evento do Mar")
    Toggle(s, "Auto Navegar", nil, true)
    Dropdown(s, "Modo do Navio", {"Patrulha", "Combate", "Exploração"}, "Combate")
    Toggle(s, "Atacar Navios Inimigos", nil, true)
    CodeSlot(s, "shipController",
        "Pilota o navio até o objetivo e engaja inimigos.")
end

-- ----- RACE -----
do
    local p = makePage("race")
    local s = Section(p, "Corrida V4")
    Dropdown(s, "Raça Alvo", {"Humano", "Skypian", "Fishman", "Mink"})
    Toggle(s, "Pular Obstáculos", nil, true)
    Toggle(s, "Otimizar Rota", nil, true)
    CodeSlot(s, "raceRunner",
        "Calcula rota mínima, detecta obstáculos e executa pulos.")
end

-- ----- RAID -----
do
    local p = makePage("raid")
    local s = Section(p, "Raid de Frutas")
    Dropdown(s, "Fruta para Raid", {"Magma", "Light", "Dragon", "Buddha"})
    Toggle(s, "Auto Entrar na Raid", nil, true)
    Dropdown(s, "Estratégia", {"DPS", "Tank", "Suporte"}, "DPS")
    CodeSlot(s, "raidLoop",
        "Entra na raid, posiciona e segue a rotação de habilidades escolhida.")
end

-- ----- STOCK -----
do
    local p = makePage("stock")
    local s = Section(p, "Monitor de Estoque")
    Toggle(s, "Auto Verificar Estoque", "Atualiza a cada minuto", true)
    Toggle(s, "Notificar Frutas Raras", nil, true)
    Dropdown(s, "Fruta Alvo", {"Dragon", "Phoenix", "Buddha", "Light", "Dark"}, "Dragon")
    CodeSlot(s, "stockChecker",
        "Consulta o estoque da loja a cada intervalo e atualiza a lista.")

    local s2 = Section(p, "Estoque Atual", "última verificação: agora")
    local list = {
        {"Magma", "850.000", true},
        {"Light", "1.200.000", true},
        {"Dragon", "—", false},
        {"Buddha", "1.500.000", true},
    }
    for _, item in ipairs(list) do
        local row = Instance.new("Frame")
        row.BackgroundColor3 = C.bg
        row.BorderSizePixel = 0
        row.Size = UDim2.new(1, 0, 0, 26)
        row.Parent = s2
        corner(row, 6)
        stroke(row, C.border, 1)
        pad(row, 6)

        local n = Instance.new("TextLabel")
        n.BackgroundTransparency = 1
        n.Size = UDim2.new(0.4, 0, 1, 0)
        n.Font = FONT_MONO
        n.TextSize = 11
        n.TextXAlignment = Enum.TextXAlignment.Left
        n.TextColor3 = C.text
        n.Text = item[1]
        n.Parent = row

        local pr = Instance.new("TextLabel")
        pr.BackgroundTransparency = 1
        pr.Position = UDim2.new(0.4, 0, 0, 0)
        pr.Size = UDim2.new(0.35, 0, 1, 0)
        pr.Font = FONT_MONO
        pr.TextSize = 11
        pr.TextXAlignment = Enum.TextXAlignment.Left
        pr.TextColor3 = C.muted
        pr.Text = item[2]
        pr.Parent = row

        local st = Instance.new("TextLabel")
        st.BackgroundTransparency = 1
        st.AnchorPoint = Vector2.new(1, 0)
        st.Position = UDim2.new(1, 0, 0, 0)
        st.Size = UDim2.new(0.25, 0, 1, 0)
        st.Font = FONT_MONO
        st.TextSize = 11
        st.TextXAlignment = Enum.TextXAlignment.Right
        st.TextColor3 = item[3] and C.primary or C.muted
        st.Text = item[3] and "Disponível" or "Esgotado"
        st.Parent = row
    end
    ActionButton(s2, "Atualizar Agora")
end

-- ----- TELEPORT -----
do
    local p = makePage("teleport")
    local s = Section(p, "Teleporte Rápido")
    Dropdown(s, "Ilha de Destino", {
        "Ilha Inicial", "Ilha do Espadachim", "Ilha do Deserto",
        "Ilha do Gelo", "Ilha do Céu", "Mary Geoise"
    })
    ActionButton(s, "Teletransportar")
    CodeSlot(s, "teleportTo",
        "Move o HumanoidRootPart para o CFrame da ilha escolhida.")

    local s2 = Section(p, "Locais Salvos")
    Toggle(s2, "Salvar Posição Atual ao Sair", nil, true)
    ActionButton(s2, "Salvar Local Atual")
    ActionButton(s2, "Voltar para Último Local")
end

-- =========================================================
-- BOTÕES DA SIDEBAR + TROCA DE PÁGINA
-- =========================================================
local activeBtn

local function selectTab(tab, btn)
    contentTitle.Text = tab.label
    contentTag.Text = "EURO HUB / " .. tab.id
    for id, frame in pairs(pageFrames) do
        frame.Visible = (id == tab.id)
    end
    if activeBtn then
        activeBtn.BackgroundColor3 = C.bg
        activeBtn.TextColor3 = C.text
    end
    btn.BackgroundColor3 = C.primary
    btn.TextColor3 = Color3.new(1, 1, 1)
    activeBtn = btn
end

for i, tab in ipairs(TABS) do
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, 0, 0, 32)
    b.BackgroundColor3 = C.bg
    b.AutoButtonColor = false
    b.Font = FONT_BOLD
    b.TextSize = 12
    b.TextColor3 = C.text
    b.TextXAlignment = Enum.TextXAlignment.Left
    b.Text = "  " .. tab.label
    b.LayoutOrder = i
    b.Parent = sideScroll
    corner(b, 6)
    stroke(b, C.border, 1)

    b.MouseEnter:Connect(function()
        if activeBtn ~= b then
            b.BackgroundColor3 = C.surface
        end
    end)
    b.MouseLeave:Connect(function()
        if activeBtn ~= b then
            b.BackgroundColor3 = C.bg
        end
    end)
    b.MouseButton1Click:Connect(function()
        selectTab(tab, b)
    end)

    if i == 1 then
        selectTab(tab, b)
    end
end

print("[EURO HUB] painel carregado.")

-- Main game loop central
connections.mainLoop = RunService.Heartbeat:Connect(function()
    if not character or character.Humanoid.Health <= 0 then return end
    
    -- Combat setup check
    if toggles["Auto Equipar"] and combatTool then
        equipTool(combatTool)
    end
    
    -- Main Farm
    if toggles["Auto Farm por Nível (1 – 2650)"] then
        local level = getPlayerLevel()
        local quest = questTable[level] or questTable[1]
        if quest then
            teleportTo(quest.npcPos)
            fireRemote(quest.questId)
            task.wait(1)
            teleportTo(quest.mobArea)
            -- attack mobs (will loop in fastAttack if active)
        end
    end
    
    -- Aura attack example
    if toggles["Auto Atacar Próximos · Aura de Mob"] then
        -- find nearest mob in Workspace.NPCs
        local raio = tonumber((toggles["Raio da Aura"] or "60"):match("%d+")) or 60
        -- logic to find and attack closest
        fastAttack()
    end
    
-- Boss Farm & Events
    local npcsFolder = Workspace:FindFirstChild("NPCs") or Workspace
    if npcsFolder:FindFirstChild("Katakuri") and toggles["Katakuri · Príncipe do Bolo"] then
        local katakuri = npcsFolder.Katakuri
        local deaths = katakuri:FindFirstChild("Deaths") -- assume value
        if deaths and deaths.Value >= 500 then
            teleportTo(katakuri.HumanoidRootPart.CFrame)
            fastAttack()
        end
    end
    if npcsFolder:FindFirstChild("Tyrant") and toggles["Tirano dos Céus · Checar Olhos"] then
        -- Break vasos first
        local vasos = Workspace:FindFirstChild("Vasos")
        if vasos then
            for _, vaso in vasos:GetChildren() do
                fireRemote("BreakVase", vaso)
            end
        end
        fastAttack()
    end
    
    -- Auto Quest
    if toggles["Auto Aceitar Missões"] then
        local npcsFolder = Workspace:FindFirstChild("NPCs") or Workspace
        local nearestQuest = nil
        local minDist = math.huge
        for _, npc in npcsFolder:GetChildren() do
            if npc.Name:match("Quest") and npc:FindFirstChild("HumanoidRootPart") then
                local dist = (humanoidRootPart.Position - npc.HumanoidRootPart.Position).Magnitude
                if dist < minDist then
                    minDist = dist
                    nearestQuest = npc
                end
            end
        end
        if nearestQuest and minDist < 100 then
            teleportTo(nearestQuest.HumanoidRootPart.CFrame)
            fireRemote("AcceptQuest")
        end
    end
    
-- Material Farm
    local dropTable = {
        ["Magma Ore"] = "MagmaMonster",
        ["Bone"] = "Skeleton",
        -- add more
    }
    if materialTarget and dropTable[materialTarget] then
        local targetMobName = dropTable[materialTarget]
        local npcsFolder = Workspace:FindFirstChild("NPCs") or Workspace
        local targetMob = nil
        local minDist = math.huge
        for _, npc in npcsFolder:GetChildren() do
            if npc.Name == targetMobName and npc:FindFirstChild("HumanoidRootPart") then
                local dist = (humanoidRootPart.Position - npc.HumanoidRootPart.Position).Magnitude
                if dist < minDist then
                    minDist = dist
                    targetMob = npc
                end
            end
        end
        if targetMob then
            teleportTo(targetMob.HumanoidRootPart.CFrame)
            fastAttack()
        end
    end
    
    -- Coleta Chests & Bones
    if toggles["Auto Farm Chest"] then
        toggleNoclip(true)
        local chestsFolder = Workspace:FindFirstChild("Chests")
        if chestsFolder then
            -- simple tp to nearest chest
            local nearestChest = nil
            local minDistC = math.huge
            for _, chest in chestsFolder:GetChildren() do
                if chest:FindFirstChild("HumanoidRootPart") then
                    local dist = (humanoidRootPart.Position - chest.HumanoidRootPart.Position).Magnitude
                    if dist < minDistC then
                        minDistC = dist
                        nearestChest = chest
                    end
                end
            end
            if nearestChest then
                teleportTo(nearestChest.HumanoidRootPart.CFrame)
                fireRemote("OpenChest", nearestChest)
            end
        end
    else
        toggleNoclip(false)
    end
    
    if toggles["Trade Bones"] then
        local bonesNPC = Workspace.NPCs:FindFirstChild("BonesTrader") -- assume
        if bonesNPC then
            teleportTo(bonesNPC.HumanoidRootPart.CFrame)
            fireRemote("TradeBones")
        end
    end
end)
