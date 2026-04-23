local Library =
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhTuanDzai-Hub/UIMenu/refs/heads/main/thanhipia.lua"))()

local Window = Library:CreateWindow('Tuấn Anh IOS')

local Tab = {
    Tab_1 = Window:addTab('#Home'),
    Tab_Setting = Window:addTab('#Settings'),
    Tab_2 = Window:addTab('#Main Farm'),
    Tab_SubFarm = Window:addTab('#Subs Farm'),
    Tab_3 = Window:addTab('#Quest'),
    Tab_Sea = Window:addTab('#Sea Event'),
    Tab_RaceV4 = Window:addTab('#Race V4'),
    Tab_4 = Window:addTab('#Raids'),
    Tab_Combat = Window:addTab('#PVP'),
    Tab_5 = Window:addTab('#Teleport & Status'),
    Tab_6 = Window:addTab('#Shop'),
    Tab_7 = Window:addTab('#Misc')
}

-- HOME
local Home_Right = Tab.Tab_1:addSection()
local Main_Home = Home_Right:addMenu("#Home")

getgenv().WalkSpeedValue = 26
Main_Home:addTextbox("Speed Hack", getgenv().WalkSpeedValue, function(speedfunc)
    getgenv().WalkSpeedValue = speedfunc
    if getgenv().WalkSpeedValue then
        local Player = game:GetService("Players").LocalPlayer

        Player.Character.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
        end)

        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
    end
end)

getgenv().JumpValue = 50
Main_Home:addTextbox("Jump Hack", getgenv().JumpValue, function(jumpfunc)
    getgenv().JumpValue = jumpfunc
    if getgenv().JumpValue then
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = getgenv().JumpValue
    end
end)

-- ANTI AFK
getgenv().AntiAFK = true
Main_Home:addToggle("Anti AFK", getgenv().AntiAFK, function(Value)
    getgenv().AntiAFK = Value
end)

task.spawn(function()
    while wait(.1) do
        if getgenv().AntiAFK then
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:Connect(function()
                vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            end)
        end
    end
end)

-- ANTI KICK
getgenv().AntiKickClient = true
Main_Home:addToggle("Anti Kick Client", getgenv().AntiKickClient, function(Value)
    getgenv().AntiKickClient = Value
end)

task.spawn(function()
    while wait() do
        if getgenv().AntiKickClient then
            loadstring(game:HttpGet('https://gitlab.com/Sky2836/BT/-/raw/main/antikickclient'))()
        end
    end
end)

-- FPS BOOST
Main_Home:addButton("Antilag - FPS", function()
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

    for i,v in pairs(g:GetDescendants()) do
        if v:IsA("Part") or v:IsA("MeshPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        elseif v:IsA("Decal") or v:IsA("Texture") then
            v.Transparency = 1
        end
    end
end)

-- AUTO LOAD SCRIPTS
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhTuanDzai-Hub/FastAttackLoL/refs/heads/main/FastAttack.lua"))()

wait(1)

loadstring(game:HttpGet('https://raw.githubusercontent.com/S4nZz/bt_project/main/script'))()

-- WORLD CHECK
First_Sea = false
Second_Sea = false
Third_Sea = false

local placeId = game.PlaceId

if placeId == 2753915549 then
    First_Sea = true
elseif placeId == 4442272183 then
    Second_Sea = true
elseif placeId == 7449423635 then
    Third_Sea = true
end
