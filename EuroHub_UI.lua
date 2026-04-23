-- EuroHub UI Script - Execute este para carregar a interface e o raw script

----------------------------------------------------------------
-- SERVIÇOS
----------------------------------------------------------------
local Players          = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService     = game:GetService("TweenService")
local RunService       = game:GetService("RunService")
local CoreGui          = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer
if not LocalPlayer then
    repeat task.wait()
    until Players.LocalPlayer
    LocalPlayer = Players.LocalPlayer
end
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

----------------------------------------------------------------
-- TEMA (cores vermelho/preto, igual ao Zythera-X)
----------------------------------------------------------------
local Theme = {
    Background     = Color3.fromRGB(15, 10, 12),    -- preto avermelhado
    BackgroundAlt  = Color3.fromRGB(22, 14, 16),
    Sidebar        = Color3.fromRGB(18, 12, 14),
    Card           = Color3.fromRGB(25, 15, 18),
    Border         = Color3.fromRGB(220, 38, 38),   -- vermelho neon
    BorderDim      = Color3.fromRGB(120, 20, 25),
    Accent         = Color3.fromRGB(239, 68, 68),
    AccentDim      = Color3.fromRGB(80, 18, 22),
    TextPrimary    = Color3.fromRGB(255, 90, 90),
    TextSecondary  = Color3.fromRGB(180, 60, 65),
    TextMuted      = Color3.fromRGB(120, 50, 55),
    Close          = Color3.fromRGB(200, 30, 30),
    Toggle_Off     = Color3.fromRGB(60, 15, 18),
    Toggle_On      = Color3.fromRGB(220, 38, 38),
    Font           = Enum.Font.Gotham,
    FontBold       = Enum.Font.GothamBold,
}

----------------------------------------------------------------
-- GLOBAL STATE / LOGIC
----------------------------------------------------------------
local function getEnvironment()
    if getgenv then return getgenv() end
    return _G
end
local G = getEnvironment()

G.WalkSpeedValue = G.WalkSpeedValue or 26
G.JumpValue = G.JumpValue or 50
if G.AntiAFK == nil then G.AntiAFK = true end
if G.AntiKickClient == nil then G.AntiKickClient = true end
G.AutoFarm = G.AutoFarm or false
G.AutoFarmNewIsland = G.AutoFarmNewIsland or false
G.MobAura = G.MobAura or false
G.AutoFarmSummerToken = G.AutoFarmSummerToken or false
G.FarmPirate = G.FarmPirate or false
G.AutoFarmTyrant = G.AutoFarmTyrant or false
G.SummonTyrant = G.SummonTyrant or false
G.FarmBone = G.FarmBone or false
G.SeparatorHallowScythe = G.SeparatorHallowScythe or false
G.TradeBone = G.TradeBone or false
G.AutoPray = G.AutoPray or false
G.AutoTryLuck = G.AutoTryLuck or false
G.FarmKatakuri = G.FarmKatakuri or false
G.FarmKatakuriV2 = G.FarmKatakuriV2 or false
G.AutoCollectBerry = G.AutoCollectBerry or false
G.AutoFarmChest = G.AutoFarmChest or false
G.NoclipChestFarm = G.NoclipChestFarm or false
G.FarmBoss = G.FarmBoss or false
G.SelectedBoss = G.SelectedBoss or "Saber Expert"
G.StartFarmMaterial = G.StartFarmMaterial or false
G.SelectedMaterial = G.SelectedMaterial or "Magma Ore"
G.AutoFish = G.AutoFish or false
G.AutoSellFish = G.AutoSellFish or false
G.AutoQuest = G.AutoQuest or false
G.SelectedQuest = G.SelectedQuest or "Quest 1"
G.AutoVolcanoDojo = G.AutoVolcanoDojo or false
G.AutoClaimReward = G.AutoClaimReward or false
G.AutoSeaBeast = G.AutoSeaBeast or false
G.AutoGhostShip = G.AutoGhostShip or false
G.AutoRaceV4Quest = G.AutoRaceV4Quest or false
G.AutoRaid = G.AutoRaid or false
G.AutoUseMicrochip = G.AutoUseMicrochip or false
G.AutoBuyFruit = G.AutoBuyFruit or false
G.SelectedFruit = G.SelectedFruit or "Dragon"
G.SelectedRace = G.SelectedRace or "Human"
G.SelectedTool = G.SelectedTool or "Melee"
G.AttackSpeed = G.AttackSpeed or "Normal"
G.TeleportPoint = G.TeleportPoint or "Spawn Island"

local function httpGet(url)
    if syn and syn.request then
        local res = syn.request({ Url = url, Method = "GET" })
        return res.Body
    elseif http_request then
        local res = http_request({ Url = url, Method = "GET" })
        return res.Body
    elseif request then
        local res = request({ Url = url, Method = "GET" })
        return res.Body
    elseif http and http.request then
        local res = http.request({ Url = url, Method = "GET" })
        return res.Body
    elseif game and game.HttpGet then
        return game:HttpGet(url)
    else
        error("httpGet não disponível")
    end
end

local function loadRemote(url)
    local ok, err = pcall(function()
        local code = httpGet(url)
        local fn = loadstring or load
        return fn(code)()
    end)
    if not ok then warn("[EuroHub] falha ao carregar:", url, err) end
    return ok
end

local RawIntegration = {
    tabs = {},
    loaded = false,
}

local function recordRawItem(menu, item)
    menu.items[#menu.items + 1] = item
end

local function makeMenu(name)
    local menu = { name = name or "Menu", items = {} }
    menu.addTextbox = function(_, title, default, callback)
        recordRawItem(menu, { type = "textbox", title = title, default = default, callback = callback })
    end
    menu.addToggle = function(_, title, default, callback)
        recordRawItem(menu, { type = "toggle", title = title, default = default, callback = callback })
    end
    menu.addButton = function(_, title, callback)
        recordRawItem(menu, { type = "button", title = title, callback = callback })
    end
    menu.addDropdown = function(_, title, default, options, callback)
        recordRawItem(menu, { type = "dropdown", title = title, default = default, options = options, callback = callback })
    end
    menu.addChangelog = function(_, ...) end
    menu.addLabel = function(_, ...) end
    menu.addSection = function(_, ...) return menu end
    return menu
end

local function makeSection(name)
    local section = { name = name or "Section", menus = {} }
    section.addMenu = function(_, menuName)
        local menu = makeMenu(menuName)
        section.menus[#section.menus + 1] = menu
        return menu
    end
    section.addSection = function(_, secName)
        local section2 = makeSection(secName)
        section.menus[#section.menus + 1] = section2
        return section2
    end
    return section
end

local function makeTab(name)
    local tab = { name = name or "Tab", sections = {} }
    tab.addSection = function(_, sectionName)
        local section = makeSection(sectionName)
        tab.sections[#tab.sections + 1] = section
        return section
    end
    return tab
end

local function makeWindow(title)
    local window = { title = title, tabs = {} }
    window.addTab = function(_, tabName)
        local tab = makeTab(tabName)
        window.tabs[#window.tabs + 1] = tab
        RawIntegration.tabs[#RawIntegration.tabs + 1] = tab
        return tab
    end
    return window
end

local function makeLibrary()
    local lib = {}
    lib.CreateWindow = function(_, title)
        return makeWindow(title)
    end
    return lib
end

local function isUiLibraryCode(code)
    return type(code) == "string"
       and code:find("CreateWindow")
       and code:find("addTab")
end

local function loadLocalFile(name)
    if type(readfile) ~= "function" then return nil end
    local candidates = { name }
    if not name:match("^%a:[/\\]") then
        table.insert(candidates, "C:\\Users\\legen\\Desktop\\eurohub - Copia\\" .. name)
        table.insert(candidates, "C:/Users/legen/Desktop/eurohub - Copia/" .. name)
    end
    for _, path in ipairs(candidates) do
        local ok, content = pcall(readfile, path)
        if ok and type(content) == "string" and #content > 0 then
            return content
        end
    end
    return nil
end

local function loadRawScriptIntegration()
    local candidates = {
        "EuroHub_RawScript.lua",
        "EuroHub_RawScript.txt",
        "eurohub_rawscript.lua",
        "eurohubrawscript.lua",
    }
    local rawSource
    for _, candidate in ipairs(candidates) do
        rawSource = loadLocalFile(candidate)
        if rawSource then break end
    end
    if not rawSource then
        return false
    end
    local originalLoadstring = loadstring or load
    loadstring = function(code)
        if isUiLibraryCode(code) then
            return function() return makeLibrary() end
        end
        return originalLoadstring(code)
    end
    local chunk, err = originalLoadstring(rawSource)
    if chunk then
        pcall(chunk)
        RawIntegration.loaded = true
    else
        warn("[EuroHub] falha ao compilar raw script:", err)
    end
    loadstring = originalLoadstring
    return RawIntegration.loaded
end

local function updateMovement()
    if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        local humanoid = LocalPlayer.Character.Humanoid
        humanoid.WalkSpeed = G.WalkSpeedValue
        humanoid.JumpPower = G.JumpValue
    end
end

loadRawScriptIntegration()

if game:GetService("Players").LocalPlayer then
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        if G.AntiAFK then
            local vu = game:GetService("VirtualUser")
            vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            task.wait(1)
            vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        end
    end)
end

task.spawn(function()
    local antiKickLoaded = false
    while task.wait(1) do
        if G.AntiKickClient and not antiKickLoaded then
            antiKickLoaded = true
            loadRemote('https://gitlab.com/Sky2836/BT/-/raw/main/antikickclient')
        end
        updateMovement()
    end
end)

----------------------------------------------------------------
-- LIMPA INSTÂNCIA ANTERIOR
----------------------------------------------------------------
if PlayerGui:FindFirstChild("EuroHub") then
    PlayerGui.EuroHub:Destroy()
end

----------------------------------------------------------------
-- HELPERS
----------------------------------------------------------------
local function create(class, props, children)
    local obj = Instance.new(class)
    for k, v in pairs(props or {}) do obj[k] = v end
    for _, c in ipairs(children or {}) do c.Parent = obj end
    return obj
end

local function addStroke(parent, color, thickness, transparency)
    return create("UIStroke", {
        Parent = parent,
        Color = color or Theme.Border,
        Thickness = thickness or 1,
        Transparency = transparency or 0,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
    })
end

local function addCorner(parent, radius)
    return create("UICorner", { Parent = parent, CornerRadius = UDim.new(0, radius or 6) })
end

local function addPadding(parent, p)
    return create("UIPadding", {
        Parent  = parent,
        PaddingTop    = UDim.new(0, p),
        PaddingBottom = UDim.new(0, p),
        PaddingLeft   = UDim.new(0, p),
        PaddingRight  = UDim.new(0, p),
    })
end

----------------------------------------------------------------
-- SCREEN GUI RAIZ
----------------------------------------------------------------
local ScreenGui = create("ScreenGui", {
    Name = "EuroHub",
    Parent = PlayerGui,
    ResetOnSpawn = false,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
    IgnoreGuiInset = true,
})

----------------------------------------------------------------
-- JANELA PRINCIPAL
----------------------------------------------------------------
local Main = create("Frame", {
    Parent = ScreenGui,
    Name = "Main",
    Size = UDim2.fromOffset(780, 480),
    Position = UDim2.new(0.5, -390, 0.5, -240),
    BackgroundColor3 = Theme.Background,
    BorderSizePixel = 0,
    Active = true,
})
addCorner(Main, 8)
addStroke(Main, Theme.Border, 2)

----------------------------------------------------------------
-- TOPBAR (arrastável)
----------------------------------------------------------------
local TopBar = create("Frame", {
    Parent = Main,
    Name = "TopBar",
    Size = UDim2.new(1, 0, 0, 42),
    BackgroundColor3 = Theme.BackgroundAlt,
    BorderSizePixel = 0,
})
addCorner(TopBar, 8)

create("Frame", { -- mascara cantos inferiores arredondados
    Parent = TopBar,
    Size = UDim2.new(1, 0, 0, 12),
    Position = UDim2.new(0, 0, 1, -12),
    BackgroundColor3 = Theme.BackgroundAlt,
    BorderSizePixel = 0,
})

local Title = create("TextLabel", {
    Parent = TopBar,
    Name = "Title",
    Size = UDim2.new(0, 200, 1, 0),
    Position = UDim2.fromOffset(15, 0),
    BackgroundTransparency = 1,
    Font = Theme.FontBold,
    TextSize = 16,
    TextColor3 = Theme.Accent,
    Text = "Euro Hub | V1.0",
    TextXAlignment = Enum.TextXAlignment.Left,
})

create("TextLabel", {
    Parent = TopBar,
    Size = UDim2.new(0, 250, 1, 0),
    Position = UDim2.fromOffset(180, 0),
    BackgroundTransparency = 1,
    Font = Theme.Font,
    TextSize = 11,
    TextColor3 = Theme.TextSecondary,
    Text = "v1.0  •  Powered by Euro Hub",
    TextXAlignment = Enum.TextXAlignment.Left,
})

-- Botão minimizar
local MinBtn = create("TextButton", {
    Parent = TopBar,
    Size = UDim2.fromOffset(32, 24),
    Position = UDim2.new(1, -76, 0.5, -12),
    BackgroundColor3 = Theme.Card,
    BorderSizePixel = 0,
    Font = Theme.FontBold,
    TextSize = 16,
    TextColor3 = Theme.TextPrimary,
    Text = "—",
    AutoButtonColor = false,
})
addCorner(MinBtn, 4)
addStroke(MinBtn, Theme.BorderDim, 1)

-- Botão fechar
local CloseBtn = create("TextButton", {
    Parent = TopBar,
    Size = UDim2.fromOffset(32, 24),
    Position = UDim2.new(1, -40, 0.5, -12),
    BackgroundColor3 = Theme.Close,
    BorderSizePixel = 0,
    Font = Theme.FontBold,
    TextSize = 14,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    Text = "✕",
    AutoButtonColor = false,
})
addCorner(CloseBtn, 4)

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- DRAG
do
    local dragging, dragStart, startPos
    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos  = Main.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local d = input.Position - dragStart
            Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y)
        end
    end)
end

-- Minimizar
local minimized = false
local originalSize = Main.Size
MinBtn.MouseButton1Click:Connect(function()
    minimized = not minimized
    local target = minimized and UDim2.new(originalSize.X.Scale, originalSize.X.Offset, 0, 42) or originalSize
    TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Quad), { Size = target }):Play()
end)

----------------------------------------------------------------
-- SIDEBAR (abas)
----------------------------------------------------------------
local Sidebar = create("Frame", {
    Parent = Main,
    Name = "Sidebar",
    Size = UDim2.new(0, 180, 1, -52),
    Position = UDim2.fromOffset(10, 47),
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
})

local SidebarList = create("ScrollingFrame", {
    Parent = Sidebar,
    Size = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    ScrollBarThickness = 2,
    ScrollBarImageColor3 = Theme.Border,
    CanvasSize = UDim2.new(0, 0, 0, 0),
    AutomaticCanvasSize = Enum.AutomaticSize.Y,
})
create("UIListLayout", {
    Parent = SidebarList,
    Padding = UDim.new(0, 8),
    SortOrder = Enum.SortOrder.LayoutOrder,
})

----------------------------------------------------------------
-- ÁREA DE CONTEÚDO
----------------------------------------------------------------
local Content = create("Frame", {
    Parent = Main,
    Name = "Content",
    Size = UDim2.new(1, -210, 1, -52),
    Position = UDim2.fromOffset(200, 47),
    BackgroundTransparency = 1,
})

local Tabs = {}     -- { [name] = ScrollingFrame }
local TabBtns = {}  -- { [name] = TextButton }
local currentTab = nil

local function selectTab(name)
    if currentTab == name then return end
    for n, frame in pairs(Tabs) do frame.Visible = (n == name) end
    for n, btn in pairs(TabBtns) do
        if n == name then
            btn.BackgroundColor3 = Theme.AccentDim
            btn.BackgroundTransparency = 0.4
            btn.TextColor3 = Theme.Accent
            btn:FindFirstChild("Indicator").Visible = true
        else
            btn.BackgroundColor3 = Theme.Card
            btn.BackgroundTransparency = 0.3
            btn.TextColor3 = Theme.TextSecondary
            btn:FindFirstChild("Indicator").Visible = false
        end
    end
    currentTab = name
end

local function newTab(name, icon)
    -- Botão na sidebar
    local btn = create("TextButton", {
        Parent = SidebarList,
        Size = UDim2.new(1, -4, 0, 44),
        BackgroundColor3 = Theme.Card,
        BackgroundTransparency = 0.3,
        BorderSizePixel = 0,
        Font = Theme.FontBold,
        TextSize = 13,
        TextColor3 = Theme.TextSecondary,
        Text = "    " .. (icon or "•") .. "  " .. name,
        TextXAlignment = Enum.TextXAlignment.Left,
        AutoButtonColor = false,
    })
    addCorner(btn, 6)
    addStroke(btn, Theme.BorderDim, 1)

    -- Indicador vermelho no canto esquerdo
    local indicator = create("Frame", {
        Parent = btn,
        Name = "Indicator",
        Size = UDim2.new(0, 3, 0.6, 0),
        Position = UDim2.new(0, 0, 0.2, 0),
        BackgroundColor3 = Theme.Accent,
        BorderSizePixel = 0,
    })
    addCorner(indicator, 3)

    -- Frame de conteúdo (rolável)
    local frame = create("ScrollingFrame", {
        Parent = Content,
        Name = name,
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        ScrollBarThickness = 3,
        ScrollBarImageColor3 = Theme.Border,
        CanvasSize = UDim2.new(0, 0, 0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        Visible = false,
    })
    create("UIListLayout", {
        Parent = frame,
        Padding = UDim.new(0, 10),
        SortOrder = Enum.SortOrder.LayoutOrder,
    })
    addPadding(frame, 6)

    Tabs[name] = frame
    TabBtns[name] = btn

    btn.MouseButton1Click:Connect(function() selectTab(name) end)

    return frame
end

----------------------------------------------------------------
-- COMPONENTES (Section / Toggle / Button / Dropdown / Label)
----------------------------------------------------------------
local function addSectionTitle(parent, text)
    local lbl = create("TextLabel", {
        Parent = parent,
        Size = UDim2.new(1, -10, 0, 28),
        BackgroundTransparency = 1,
        Font = Theme.FontBold,
        TextSize = 18,
        TextColor3 = Theme.Accent,
        Text = text,
        TextXAlignment = Enum.TextXAlignment.Left,
    })
    return lbl
end

local function addRow(parent, height)
    local row = create("Frame", {
        Parent = parent,
        Size = UDim2.new(1, -10, 0, height or 52),
        BackgroundColor3 = Theme.Card,
        BackgroundTransparency = 0.3,
        BorderSizePixel = 0,
    })
    addCorner(row, 6)
    addStroke(row, Theme.BorderDim, 1)
    return row
end

local function addToggle(parent, title, desc, default, callback)
    local row = addRow(parent, 56)
    create("TextLabel", {
        Parent = row,
        Position = UDim2.fromOffset(14, 8),
        Size = UDim2.new(1, -90, 0, 18),
        BackgroundTransparency = 1,
        Font = Theme.FontBold,
        TextSize = 14,
        TextColor3 = Theme.TextPrimary,
        Text = title,
        TextXAlignment = Enum.TextXAlignment.Left,
    })
    create("TextLabel", {
        Parent = row,
        Position = UDim2.fromOffset(14, 28),
        Size = UDim2.new(1, -90, 0, 16),
        BackgroundTransparency = 1,
        Font = Theme.Font,
        TextSize = 11,
        TextColor3 = Theme.TextMuted,
        Text = desc or "",
        TextXAlignment = Enum.TextXAlignment.Left,
    })

    local toggleBtn = create("TextButton", {
        Parent = row,
        Position = UDim2.new(1, -56, 0.5, -16),
        Size = UDim2.fromOffset(46, 32),
        BackgroundColor3 = default and Theme.Toggle_On or Theme.Toggle_Off,
        BorderSizePixel = 0,
        Text = "",
        AutoButtonColor = false,
    })
    addCorner(toggleBtn, 4)
    addStroke(toggleBtn, Theme.Border, 1)

    local indicator = create("Frame", {
        Parent = toggleBtn,
        Size = UDim2.fromOffset(20, 20),
        Position = UDim2.new(0.5, -10, 0.5, -10),
        BackgroundColor3 = default and Color3.fromRGB(255,255,255) or Theme.AccentDim,
        BorderSizePixel = 0,
    })
    addCorner(indicator, 3)

    local state = default or false
    toggleBtn.MouseButton1Click:Connect(function()
        state = not state
        toggleBtn.BackgroundColor3 = state and Theme.Toggle_On or Theme.Toggle_Off
        indicator.BackgroundColor3 = state and Color3.fromRGB(255,255,255) or Theme.AccentDim
        if callback then
            local ok, err = pcall(callback, state)
            if not ok then warn("[EuroHub] toggle '"..title.."' erro:", err) end
        end
    end)
end

local function addButton(parent, title, desc, callback)
    local row = addRow(parent, 56)
    create("TextLabel", {
        Parent = row,
        Position = UDim2.fromOffset(14, 8),
        Size = UDim2.new(1, -50, 0, 18),
        BackgroundTransparency = 1,
        Font = Theme.FontBold,
        TextSize = 14,
        TextColor3 = Theme.TextPrimary,
        Text = title,
        TextXAlignment = Enum.TextXAlignment.Left,
    })
    create("TextLabel", {
        Parent = row,
        Position = UDim2.fromOffset(14, 28),
        Size = UDim2.new(1, -50, 0, 16),
        BackgroundTransparency = 1,
        Font = Theme.Font,
        TextSize = 11,
        TextColor3 = Theme.TextMuted,
        Text = desc or "",
        TextXAlignment = Enum.TextXAlignment.Left,
    })
    create("TextLabel", {
        Parent = row,
        Position = UDim2.new(1, -30, 0.5, -10),
        Size = UDim2.fromOffset(20, 20),
        BackgroundTransparency = 1,
        Font = Theme.FontBold,
        TextSize = 18,
        TextColor3 = Theme.Accent,
        Text = "›",
    })
    local clickBtn = create("TextButton", {
        Parent = row,
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Text = "",
    })
    clickBtn.MouseButton1Click:Connect(function()
        if callback then
            local ok, err = pcall(callback)
            if not ok then warn("[EuroHub] button '"..title.."' erro:", err) end
        end
    end)
end

local function addTextbox(parent, title, default, callback)
    local row = addRow(parent, 80)
    create("TextLabel", {
        Parent = row,
        Position = UDim2.fromOffset(14, 8),
        Size = UDim2.new(1, -28, 0, 18),
        BackgroundTransparency = 1,
        Font = Theme.FontBold,
        TextSize = 14,
        TextColor3 = Theme.TextPrimary,
        Text = title,
        TextXAlignment = Enum.TextXAlignment.Left,
    })
    local box = create("TextBox", {
        Parent = row,
        Position = UDim2.fromOffset(14, 28),
        Size = UDim2.new(1, -28, 0, 36),
        BackgroundColor3 = Theme.BackgroundAlt,
        BorderSizePixel = 0,
        Font = Theme.Font,
        TextSize = 13,
        TextColor3 = Theme.TextPrimary,
        Text = tostring(default or ""),
        ClearTextOnFocus = false,
        TextXAlignment = Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center,
    })
    addCorner(box, 4)
    addStroke(box, Theme.Border, 1)
    box.FocusLost:Connect(function(enterPressed)
        if callback then
            local ok, err = pcall(callback, box.Text)
            if not ok then warn("[EuroHub] textbox '"..title.."' erro:", err) end
        end
    end)
end

local function addDropdown(parent, title, desc, options, callback)
    local row = addRow(parent, 56)
    create("TextLabel", {
        Parent = row,
        Position = UDim2.fromOffset(14, 8),
        Size = UDim2.new(0.5, -14, 0, 18),
        BackgroundTransparency = 1,
        Font = Theme.FontBold,
        TextSize = 14,
        TextColor3 = Theme.TextPrimary,
        Text = title,
        TextXAlignment = Enum.TextXAlignment.Left,
    })
    create("TextLabel", {
        Parent = row,
        Position = UDim2.fromOffset(14, 28),
        Size = UDim2.new(0.5, -14, 0, 16),
        BackgroundTransparency = 1,
        Font = Theme.Font,
        TextSize = 11,
        TextColor3 = Theme.TextMuted,
        Text = desc or "",
        TextXAlignment = Enum.TextXAlignment.Left,
    })

    local box = create("TextButton", {
        Parent = row,
        Position = UDim2.new(0.5, 5, 0.5, -16),
        Size = UDim2.new(0.5, -15, 0, 32),
        BackgroundColor3 = Theme.BackgroundAlt,
        BorderSizePixel = 0,
        Font = Theme.FontBold,
        TextSize = 13,
        TextColor3 = Theme.Accent,
        Text = options[1] or "...",
        AutoButtonColor = false,
    })
    addCorner(box, 4)
    addStroke(box, Theme.Border, 1)

    local list = create("Frame", {
        Parent = row,
        Position = UDim2.new(0.5, 5, 1, 4),
        Size = UDim2.new(0.5, -15, 0, 0),
        BackgroundColor3 = Theme.BackgroundAlt,
        BorderSizePixel = 0,
        Visible = false,
        ZIndex = 5,
        ClipsDescendants = true,
    })
    addCorner(list, 4)
    addStroke(list, Theme.Border, 1)
    create("UIListLayout", { Parent = list, SortOrder = Enum.SortOrder.LayoutOrder })

    for _, opt in ipairs(options) do
        local optBtn = create("TextButton", {
            Parent = list,
            Size = UDim2.new(1, 0, 0, 26),
            BackgroundTransparency = 1,
            Font = Theme.Font,
            TextSize = 12,
            TextColor3 = Theme.TextPrimary,
            Text = opt,
            ZIndex = 6,
        })
        optBtn.MouseButton1Click:Connect(function()
            box.Text = opt
            list.Visible = false
            list.Size = UDim2.new(0.5, -15, 0, 0)
            if callback then pcall(callback, opt) end
        end)
    end

    box.MouseButton1Click:Connect(function()
        list.Visible = not list.Visible
        list.Size = list.Visible and UDim2.new(0.5, -15, 0, math.min(#options, 6) * 26) or UDim2.new(0.5, -15, 0, 0)
    end)
end

local function addLabel(parent, text)
    local row = addRow(parent, 36)
    create("TextLabel", {
        Parent = row,
        Position = UDim2.fromOffset(14, 0),
        Size = UDim2.new(1, -28, 1, 0),
        BackgroundTransparency = 1,
        Font = Theme.FontBold,
        TextSize = 13,
        TextColor3 = Theme.TextPrimary,
        Text = text,
        TextXAlignment = Enum.TextXAlignment.Left,
    })
end

----------------------------------------------------------------
-- ABAS (igual às screenshots do Zythera-X)
----------------------------------------------------------------
local TabInfo      = newTab("INFO / STATE",      "📊")
local TabFarming    = newTab("Farming",            "⚔")
local TabFishing    = newTab("Auto Fishing",      "🐟")
local TabQuest      = newTab("Quest | Items",      "📜")
local TabVolcano    = newTab("Volcano Dojo",       "🔥")
local TabSeaEvent   = newTab("Sea Event",         "⚓")
local TabRace       = newTab("Race V4",            "🏆")
local TabRaid       = newTab("Raid Fruits",        "🛡")
local TabFruits     = newTab("Fruits | Stock",     "🟦")
local TabTeleport   = newTab("Teleport",           "✈")
local TabRaw        = newTab("Raw Script",         "🧩")

----------------------------------------------------------------
-- ABA: INFO / STATE
----------------------------------------------------------------
do
    local p = TabInfo
    addSectionTitle(p, "Discord")
    addButton(p, "Euro Hub Discord", "Servidor oficial Euro Hub", function()
        if setclipboard then setclipboard("https://discord.gg/EuroHub") end
        print("[EuroHub] Link copiado")
    end)

    addSectionTitle(p, "Server State")
    addLabel(p, "Players: " .. #Players:GetPlayers() .. " / " .. Players.MaxPlayers)
    addLabel(p, "Place ID: " .. tostring(game.PlaceId))
    addLabel(p, "Job ID: " .. string.sub(tostring(game.JobId), 1, 8) .. "...")

    addSectionTitle(p, "Player")
    addLabel(p, "Username: " .. LocalPlayer.Name)
    addLabel(p, "Display: " .. LocalPlayer.DisplayName)
    addLabel(p, "User ID: " .. LocalPlayer.UserId)

    addSectionTitle(p, "Player Movement")
    addTextbox(p, "Speed Hack", G.WalkSpeedValue, function(value)
        local newValue = tonumber(value)
        if newValue and newValue > 0 then
            G.WalkSpeedValue = newValue
            updateMovement()
        end
    end)
    addTextbox(p, "Jump Hack", G.JumpValue, function(value)
        local newValue = tonumber(value)
        if newValue and newValue > 0 then
            G.JumpValue = newValue
            updateMovement()
        end
    end)
    addToggle(p, "Anti AFK", "Não ser desconectado por inatividade", G.AntiAFK, function(s)
        G.AntiAFK = s
    end)
    addToggle(p, "Anti Kick Client", "Proteção contra kick local", G.AntiKickClient, function(s)
        G.AntiKickClient = s
    end)
    addButton(p, "Antilag - FPS", "Reduz efeitos para melhorar o desempenho", function()
        local decalsyeeted = false
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for _, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif (v:IsA("Decal") or v:IsA("Texture")) and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            end
        end
        for _, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
        print("[EuroHub] Antilag aplicado")
    end)
end

----------------------------------------------------------------
-- ABA: FARMING
----------------------------------------------------------------
do
    local p = TabFarming
    addSectionTitle(p, "Select Melee, Sword, Gun, Fruit")
    addDropdown(p, "Attack Speed", "Select attack speed for auto farm", { "Slow", "Normal", "Fast", "Very Fast" }, function(v)
        G.AttackSpeed = v
        print("[EuroHub] Attack Speed:", v)
    end)
    addDropdown(p, "Select Tool", "Select the tool you want to use", { "Melee", "Sword", "Gun", "Blox Fruit" }, function(v)
        G.SelectedTool = v
        print("[EuroHub] Tool:", v)
    end)

    addSectionTitle(p, "Main Farm")
    addToggle(p, "Auto Farm Level 1-2650", "Auto farm level", G.AutoFarm, function(s)
        G.AutoFarm = s
        print("[EuroHub] AutoFarm:", s)
    end)
    addToggle(p, "Auto Farm New Island", "Farm Level on New Island", G.AutoFarmNewIsland, function(s)
        G.AutoFarmNewIsland = s
    end)
    addToggle(p, "Auto Kill Near | Mob Aura", "Attack Nearby Monsters", G.MobAura, function(s)
        G.MobAura = s
    end)

    addSectionTitle(p, "Farm Summer Token New")
    addToggle(p, "Auto Farm Summer Token", "Auto Move to Summer Zone and Farm Electrified Monsters", G.AutoFarmSummerToken, function(s)
        G.AutoFarmSummerToken = s
    end)

    addSectionTitle(p, "Event Boss Pain New")
    addDropdown(p, "Auto Select Boss", "Select Boss to Farm", { "Boss 1", "Boss 2", "Boss 3" }, function(v)
        G.SelectedBoss = v
    end)
    addToggle(p, "Farm Boss Pain", "Farm Selected Boss", G.FarmBoss, function(s)
        G.FarmBoss = s
    end)

    addSectionTitle(p, "AutoRaidPirate")
    addToggle(p, "Farm Pirate", "Attack Pirates on Sea Fortress", G.FarmPirate, function(s)
        G.FarmPirate = s
    end)

    addSectionTitle(p, "Tyrant of the Skies")
    addLabel(p, "Check Eyes Status")
    addToggle(p, "Auto Farm Tyrant", "Farm Monsters and Attack Bird Boss", G.AutoFarmTyrant, function(s)
        G.AutoFarmTyrant = s
    end)
    addToggle(p, "Summon Tyrant Of The Skies", "Auto Break Vase to Summon Boss", G.SummonTyrant, function(s)
        G.SummonTyrant = s
    end)

    addSectionTitle(p, "Bones")
    addLabel(p, "Check Bone — You Have: 0 Bones")
    addToggle(p, "Farm Bone", "Farm Fog", G.FarmBone, function(s)
        G.FarmBone = s
    end)
    addToggle(p, "Seperator Hallow Scythe", "Summon and Destroy Soul Reaper", G.SeparatorHallowScythe, function(s)
        G.SeparatorHallowScythe = s
    end)
    addToggle(p, "Trade Bone", "Auto Exchange Bones for Rewards", G.TradeBone, function(s)
        G.TradeBone = s
    end)
    addToggle(p, "Auto Pray", "", G.AutoPray, function(s)
        G.AutoPray = s
    end)
    addToggle(p, "Auto Try Luck", "", G.AutoTryLuck, function(s)
        G.AutoTryLuck = s
    end)

    addSectionTitle(p, "Katakuri")
    addLabel(p, "Check Cake Prince")
    addToggle(p, "Farm Katakuri", "Farm Monsters and Attack Cake Prince V1", G.FarmKatakuri, function(s)
        G.FarmKatakuri = s
    end)
    addToggle(p, "Farm Katakuri V2", "Farm Monsters and Attack Cake Prince V2", G.FarmKatakuriV2, function(s)
        G.FarmKatakuriV2 = s
    end)

    addSectionTitle(p, "Auto Farm Chest And Berry")
    addToggle(p, "Auto Collect Berry", "Auto Collect Berry", G.AutoCollectBerry, function(s)
        G.AutoCollectBerry = s
    end)
    addToggle(p, "Auto Farm Chest [Tween]", "Auto Collect Chest with Tween", G.AutoFarmChest, function(s)
        G.AutoFarmChest = s
    end)
    addToggle(p, "Noclip [Chest Farm]", "Pass through walls while collecting chests", G.NoclipChestFarm, function(s)
        G.NoclipChestFarm = s
    end)

    addSectionTitle(p, "Boss Farm")
    addButton(p, "Refresh Boss List", "Refresh Boss List", function()
        G.RefreshBossList = true
        print("[EuroHub] Refreshing boss list...")
    end)
    addLabel(p, "Boss Spawn Status: Boss Not Spawn ✕")
    addDropdown(p, "Auto Select Boss", "Select Boss to Farm", { "Saber Expert", "Don Swan", "Smoke Admiral" }, function(v)
        G.SelectedBoss = v
    end)
    addToggle(p, "Farm Boss", "Farm Selected Boss", G.FarmBoss, function(s)
        G.FarmBoss = s
    end)

    addSectionTitle(p, "Material")
    addDropdown(p, "Select Material", "Select Item to Farm", { "Magma Ore", "Mystic Droplet", "Fish Tail", "Scrap Metal", "Leather", "Radioactive Material" }, function(v)
        G.SelectedMaterial = v
    end)
    addToggle(p, "Start Farm", "Auto Farm Selected Material", G.StartFarmMaterial, function(s)
        G.StartFarmMaterial = s
    end)
end

----------------------------------------------------------------
-- ABA: AUTO FISHING
----------------------------------------------------------------
do
    local p = TabFishing
    addSectionTitle(p, "Auto Fishing")
    addToggle(p, "Auto Fish", "Pesca automaticamente", G.AutoFish, function(s)
        G.AutoFish = s
    end)
    addToggle(p, "Auto Sell Fish", "Vende peixes coletados", G.AutoSellFish, function(s)
        G.AutoSellFish = s
    end)
end

----------------------------------------------------------------
-- ABA: QUEST | ITEMS
----------------------------------------------------------------
do
    local p = TabQuest
    addSectionTitle(p, "Quests")
    addToggle(p, "Auto Quest", "Conclui quests automaticamente", G.AutoQuest, function(s)
        G.AutoQuest = s
    end)
    addDropdown(p, "Select Quest", "Escolha a quest", { "Quest 1", "Quest 2", "Quest 3" }, function(v)
        G.SelectedQuest = v
    end)
    addSectionTitle(p, "Items")
    addButton(p, "Collect All Items", "Coleta todos os itens próximos", function()
        G.CollectAllItems = true
        print("[EuroHub] collecting nearby items...")
    end)
end

----------------------------------------------------------------
-- ABA: VOLCANO DOJO
----------------------------------------------------------------
do
    local p = TabVolcano
    addSectionTitle(p, "Volcano Dojo")
    addToggle(p, "Auto Volcano Dojo", "Faz o dojo do vulcão", G.AutoVolcanoDojo, function(s)
        G.AutoVolcanoDojo = s
    end)
    addToggle(p, "Auto Claim Reward", "Pega recompensa", G.AutoClaimReward, function(s)
        G.AutoClaimReward = s
    end)
end

----------------------------------------------------------------
-- ABA: SEA EVENT
----------------------------------------------------------------
do
    local p = TabSeaEvent
    addSectionTitle(p, "Sea Event")
    addToggle(p, "Auto Sea Beast", "Mata Sea Beast", G.AutoSeaBeast, function(s)
        G.AutoSeaBeast = s
    end)
    addToggle(p, "Auto Ghost Ship", "Faz Ghost Ship", G.AutoGhostShip, function(s)
        G.AutoGhostShip = s
    end)
end

----------------------------------------------------------------
-- ABA: RACE V4
----------------------------------------------------------------
do
    local p = TabRace
    addSectionTitle(p, "Race V4")
    addDropdown(p, "Select Race", "Escolha sua raça", { "Human", "Mink", "Fishman", "Cyborg", "Sky", "Ghoul" }, function(v)
        G.SelectedRace = v
    end)
    addToggle(p, "Auto Race V4 Quest", "Faz quest de race v4", G.AutoRaceV4Quest, function(s)
        G.AutoRaceV4Quest = s
    end)
end

----------------------------------------------------------------
-- ABA: RAID FRUITS
----------------------------------------------------------------
do
    local p = TabRaid
    addSectionTitle(p, "Raid Fruits")
    addToggle(p, "Auto Raid", "Faz raid automaticamente", G.AutoRaid, function(s)
        G.AutoRaid = s
    end)
    addToggle(p, "Auto Use Microchip", "Usa microchip ao iniciar", G.AutoUseMicrochip, function(s)
        G.AutoUseMicrochip = s
    end)
end

----------------------------------------------------------------
-- ABA: FRUITS | STOCK
----------------------------------------------------------------
do
    local p = TabFruits
    addSectionTitle(p, "Fruits Stock")
    addButton(p, "Check Stock", "Mostra estoque atual", function()
        G.CheckStock = true
        print("[EuroHub] checking stock")
    end)
    addToggle(p, "Auto Buy Fruit", "Compra fruta selecionada", G.AutoBuyFruit, function(s)
        G.AutoBuyFruit = s
    end)
    addDropdown(p, "Select Fruit", "Escolha a fruta", { "Dragon", "Leopard", "Dough", "Venom", "Shadow", "Control", "Spirit" }, function(v)
        G.SelectedFruit = v
    end)
end

----------------------------------------------------------------
-- ABA: TELEPORT
----------------------------------------------------------------
do
    local p = TabTeleport
    addSectionTitle(p, "Teleport — Sea 1")
    local function tp(name, pos)
        addButton(p, name, "Teleport para " .. name, function()
            local char = LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                char.HumanoidRootPart.CFrame = CFrame.new(pos)
            end
        end)
    end
    tp("Spawn Island", Vector3.new(1071, 16, 1426))
    tp("Marine Start", Vector3.new(-2566, 6, 2045))
    tp("Jungle", Vector3.new(-1611, 36, 153))
    tp("Pirate Village", Vector3.new(-1181, 4, 3818))
    tp("Desert", Vector3.new(944, 6, 4373))
    tp("Frozen Village", Vector3.new(1213, 27, -1183))
end

----------------------------------------------------------------
-- CARREGA LÓGICA REMOTA DO SCRIPT CRU
----------------------------------------------------------------
if not RawIntegration.loaded then
    loadRemote("https://raw.githubusercontent.com/AnhTuanDzai-Hub/FastAttackLoL/refs/heads/main/FastAttack.lua")
    loadRemote("https://raw.githubusercontent.com/S4nZz/bt_project/main/script")
end

----------------------------------------------------------------
-- INICIA NA PRIMEIRA ABA
----------------------------------------------------------------
selectTab("INFO / STATE")

----------------------------------------------------------------
-- Raw script integration
----------------------------------------------------------------
do
    local p = TabRaw
    if RawIntegration.loaded and #RawIntegration.tabs > 0 then
        addSectionTitle(p, "Raw Script Controls")
        for _, tab in ipairs(RawIntegration.tabs) do
            for _, section in ipairs(tab.sections) do
                for _, menu in ipairs(section.menus) do
                    addSectionTitle(p, tab.name .. " / " .. menu.name)
                    for _, item in ipairs(menu.items) do
                        if item.type == "toggle" then
                            addToggle(p, item.title, "", item.default, function(state)
                                if item.callback then pcall(item.callback, state) end
                                if type(item.default) == "boolean" then
                                    G[item.title:gsub("%s+", "_")] = state
                                end
                            end)
                        elseif item.type == "button" then
                            addButton(p, item.title, "", function()
                                if item.callback then pcall(item.callback) end
                            end)
                        elseif item.type == "textbox" then
                            addTextbox(p, item.title, item.default, function(value)
                                if item.callback then pcall(item.callback, value) end
                            end)
                        elseif item.type == "dropdown" then
                            addDropdown(p, item.title, "", item.options or {}, function(value)
                                if item.callback then pcall(item.callback, value) end
                            end)
                        end
                    end
                end
            end
        end
    else
        addSectionTitle(p, "Raw Script")
        addLabel(p, "Não foi possível carregar o raw script local. Coloque EuroHub_RawScript.lua no mesmo diretório do executor.")
    end
end

----------------------------------------------------------------
-- ATALHO: tecla [RightShift] mostra/esconde o painel
----------------------------------------------------------------
UserInputService.InputBegan:Connect(function(input, processed)
    if processed then return end
    if input.KeyCode == Enum.KeyCode.RightShift then
        Main.Visible = not Main.Visible
    end
end)

print("[Euro Hub v1.0] Carregado com sucesso! Pressione [RightShift] para ocultar/mostrar.")