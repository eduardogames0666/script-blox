-- ====== PAGE 1/197 ======
local Library =
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhTuanDzai-Hub/UIMenu/
refs/heads/main/thanhipia.lua"))() -- LIBRARY
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
}}
local Home_Right = Tab.Tab_1:addSection() -- HOME RIGHT SECTION
local Main_Home = Home_Right:addMenu("#Home")
getgenv().WalkSpeedValue = 26
Main_Home:addTextbox("Speed Hack", getgenv().WalkSpeedValue, function(speedfunc)
   getgenv().WalkSpeedValue = speedfunc
   if getgenv().WalkSpeedValue then
   local Player = game:service'Players'.LocalPlayer
Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
   Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
      end)
   Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
end)
getgenv().JumpValue = 50
Main_Home:addTextbox("Jump Hack", getgenv().JumpValue, function(jumpfunc)
   getgenv().JumpValue = jumpfunc
   if getgenv().JumpValue then
   game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower =
end)
getgenv().AntiAFK = true
Main_Home:addToggle("Anti AFK", getgenv().AntiAFK, function(Value)
   getgenv().AntiAFK = Value
end)
task.spawn(function ()
   while wait(.1) do
   if getgenv().AntiAFK then
   local vu = game:GetService("VirtualUser")
   game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)

-- ====== PAGE 2/197 ======
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
      end)
end)
getgenv().AntiKickClient = true
Main_Home:addToggle("Anti Kick Client", getgenv().AntiKickClient, function(Value)
   getgenv().AntiKickClient = Value
end)
task.spawn(function()
   while wait() do
   if getgenv().AntiKickClient then
   loadstring(game:HttpGet('https://gitlab.com/Sky2836/BT/-/raw/main/
antikickclient'))()
end)
Main_Home:addButton("Antilag - FPS", function()
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
   for i, v in pairs(g:GetDescendants()) do
   if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or
v:IsA("TrussPart") then
v.Material = "Plastic"
   v.Reflectance = 0
   elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
   v.Transparency = 1
   elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
   v.Lifetime = NumberRange.new(0)
   elseif v:IsA("Explosion") then
may close this   banner to continue witvvh ..onBBlyll eaassssettnPPtiarrl ceeossosskiuuesrr. Peer  iva==c  y 11Policy
Storage Prefer  ences    v.BlastRadius  ==  11
   elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or
v:IsA("Sparkles") then
Storag  e    v.Enabled  ==  false
   elseif v:IsA("MeshPart") then
   v.Material = "Plastic"
   v.Reflectance = 0
   v.TextureID = 10385902758728957
   for i, e in pairs(l:GetChildren()) do
   if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or
e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or
e:IsA("DepthOfFieldEffect") then
   e.Enabled = false

-- ====== PAGE 3/197 ======
end)
local Home_Left = Tab.Tab_1:addSection()
local Changelog = Home_Left:addMenu("Thông Tin")
Changelog:addChangelog('Hê Con Mẹ Nó Lô Chúng Mày')
Changelog:addChangelog('Hello Everyone  ')
Changelog:addChangelog('Thông Tin Liên Hệ')
Changelog:addChangelog('YTB: Tuấn Anh IOS')
Changelog:addChangelog('Tik Tok: Tuấn Anh IOS')
Changelog:addChangelog('FB : Tuấn Anh(TúnnAngg) ')
Changelog:addChangelog('Tạm Biệt Tất Cả Chúng Mày')
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhTuanDzai-Hub/
FastAttackLoL/refs/heads/main/FastAttack.lua"))()
wait(1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/S4nZz/bt_project/main/
script'))()
game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")
   repeat wait()
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Vi
sible == true then
   if _G.Team == "Pirate" then
pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTe
am.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
v.Function()
   elseif _G.Team == "Marine" then
pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTe
am.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do
v.Function()
pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTe
am.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
Storage    v.Function()
   until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId

-- ====== PAGE 4/197 ======
if placeId == 2753915549 then
   First_Sea = true
elseif placeId == 4442272183 then
   Second_Sea = true
elseif placeId == 7449423635 then
   Third_Sea = true
function CheckLevel()
   local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
   if Lv == 1 or Lv <= 9 or _G.SelectMonster == "Bandit [Lv. 5]" then --
   Ms = "Bandit"
   NameQuest = "BanditQuest1"
   QuestLv = 1
   NameMon = "Bandit"
   CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
   CFrameMon = CFrame.new(1038.5533447266, 41.296249389648,
1576.5098876953)
   elseif Lv == 10 or Lv <= 14 or _G.SelectMonster == "Monkey [Lv. 14]" then
-- Monkey
   Ms = "Monkey"
   NameQuest = "JungleQuest"
   QuestLv = 1
   NameMon = "Monkey"
   CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
   CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791,
63.60718536377)
   elseif Lv == 15 or Lv <= 29 or _G.SelectMonster == "Gorilla [Lv. 20]" then
-- Gorilla
   Ms = "Gorilla"
   NameQuest = "JungleQuest"
   QuestLv = 2
   NameMon = "Gorilla"
   CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
   CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -
515.39227294922)
   elseif Lv == 30 or Lv <= 39 or _G.SelectMonster == "Pirate [Lv. 35]" then
-- Pirate
   Ms = "Pirate"
   NameQuest = "BuggyQuest1"
   QuestLv = 1
   NameMon = "Pirate"
   CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
   CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275,
3857.5966796875)
   elseif Lv == 40 or Lv <= 59 or _G.SelectMonster == "Brute [Lv. 45]" then --
   Ms = "Brute"
   NameQuest = "BuggyQuest1"
   QuestLv = 2
   NameMon = "Brute"
   CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
   CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579,
4100.9575195313)
   elseif Lv == 60 or Lv <= 74 or _G.SelectMonster == "Desert Bandit [Lv. 60]"
then -- Desert Bandit

-- ====== PAGE 5/197 ======
   Ms = "Desert Bandit"
   NameQuest = "DesertQuest"
   QuestLv = 1
   NameMon = "Desert Bandit"
   CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
   CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
   elseif Lv == 75 or Lv <= 89 or _G.SelectMonster == "Desert Officer [Lv.
70]" then -- Desert Officer
   Ms = "Desert Officer"
   NameQuest = "DesertQuest"
   QuestLv = 2
   NameMon = "Desert Officer"
   CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
   CFrameMon = CFrame.new(1547.1510009766, 14.452038764954,
4381.8002929688)
   elseif Lv == 90 or Lv <= 99 or _G.SelectMonster == "Snow Bandit [Lv. 90]"
then -- Snow Bandit
   Ms = "Snow Bandit"
   NameQuest = "SnowQuest"
   QuestLv = 1
   NameMon = "Snow Bandit"
   CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -
1298.3576660156)
   CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -
1328.2418212891)
   elseif Lv == 100 or Lv <= 119 or _G.SelectMonster == "Snowman [Lv. 100]"
then -- Snowman
   Ms = "Snowman"
   NameQuest = "SnowQuest"
   QuestLv = 2
   NameMon = "Snowman"
   CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -
1298.3576660156)
   CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -
1488.0262451172)
   elseif Lv == 120 or Lv <= 149 or _G.SelectMonster == "Chief Petty Officer
[Lv. 120]" then -- Chief Petty Officer
   Ms = "Chief Petty Officer"
   NameQuest = "MarineQuest2"
   QuestLv = 1
   NameMon = "Chief Petty Officer"
   CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
   CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496,
4121.8393554688)
   elseif Lv == 150 or Lv <= 174 or _G.SelectMonster == "Sky Bandit [Lv. 150]"
then -- Sky Bandit
   Ms = "Sky Bandit"
   NameQuest = "SkyQuest"
   QuestLv = 1
   CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -
Perso22na66li22za33tio..n00448833339988443388))
   CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -
Analyt22ic99s0088..11886655223344337755))
   elseif Lv == 175 or Lv <= 189 or _G.SelectMonster == "Dark Master [Lv.
175]" then -- Dark Master
   Ms = "Dark Master"
   NameQuest = "SkyQuest"
   QuestLv = 2

-- ====== PAGE 6/197 ======
   NameMon = "Dark Master"
   CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -
2623.0483398438)
   CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -
2332.9611816406)
   elseif Lv == 190 or Lv <= 209 or _G.SelectMonster == "Prisoner [Lv. 190]"
then -- Prisoner
   Ms = "Prisoner"
   NameQuest = "PrisonerQuest"
   QuestLv = 1
   NameMon = "Prisoner"
   CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118,
0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
   CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524,
0.694649816, 0, -0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816)
   elseif Lv == 210 or Lv <= 249 or _G.SelectMonster == "Dangerous Prisoner
[Lv. 210]" then -- Dangerous Prisoner
   Ms = "Dangerous Prisoner"
   NameQuest = "PrisonerQuest"
   QuestLv = 2
   NameMon = "Dangerous Prisoner"
   CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118,
0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
   CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827,
0, -0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827)
   elseif Lv == 250 or Lv <= 274 or _G.SelectMonster == "Toga Warrior [Lv.
250]" then -- Toga Warrior
   Ms = "Toga Warrior"
   NameQuest = "ColosseumQuest"
   QuestLv = 1
   NameMon = "Toga Warrior"
   CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
   CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -
2913.810546875)
   elseif Lv == 275 or Lv <= 299 or _G.SelectMonster == "Gladiator [Lv. 275]"
then -- Gladiator
   NameQuest = "ColosseumQuest"
   QuestLv = 2
   NameMon = "Gladiator"
   CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
   CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -
3066.3139648438)
   elseif Lv == 300 or Lv <= 324 or _G.SelectMonster == "Military Soldier [Lv.
300]" then -- Military Soldier
   Ms = "Military Soldier"
   NameQuest = "MagmaQuest"
   QuestLv = 1
   NameMon = "Military Soldier"
   CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
Perso  nalization  elseif  Lv  ==  325  or  Lv  <=  374  or  _G.SelectMonster  ==  "Military  Spy  [Lv.
325]" then -- Military Spy
Analyt  ics    Ms  ==  "Military  Spy"
   NameQuest = "MagmaQuest"
   QuestLv = 2
   NameMon = "Military Spy"
   CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)

-- ====== PAGE 7/197 ======
   CFrameMon = CFrame.new(-5787.00293, 75.8262634, 8651.69922,
0.838590562, 0, -0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562)
   elseif Lv == 375 or Lv <= 399 or _G.SelectMonster == "Fishman Warrior [Lv.
375]" then -- Fishman Warrior
Ms = "Fishman Warrior"
   NameQuest = "FishmanQuest"
   QuestLv = 1
   NameMon = "Fishman Warrior"
   CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
   CFrameMon = CFrame.new(60844.10546875, 98.462875366211,
1298.3985595703)
   if (LevelFarmQuest or LevelFarmNoQuest or SelectMonster_Quest_Farm or
SelectMonster_NoQuest_Farm or DevilMastery_Farm) and (CFrameMon.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
   elseif Lv == 400 or Lv <= 449 or _G.SelectMonster == "Fishman Commando [Lv.
400]" then -- Fishman Commando
   Ms = "Fishman Commando"
   NameQuest = "FishmanQuest"
   QuestLv = 2
   NameMon = "Fishman Commando"
   CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
   CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
   if (LevelFarmQuest or LevelFarmNoQuest or SelectMonster_Quest_Farm or
SelectMonster_NoQuest_Farm or DevilMastery_Farm) and (CFrameMon.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
   elseif Lv == 450 or Lv <= 474 or _G.SelectMonster == "God's Guard [Lv.
450]" then -- God's Guard
   Ms = "God's Guard"
   QuestLv = 1
   NameMon = "God's Guard"
   CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -
1953.8489990234)
   CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -
1931.2352294922)
   if (LevelFarmQuest or LevelFarmNoQuest or SelectMonster_Quest_Farm or
SelectMonster_NoQuest_Farm or DevilMastery_Farm) and (CFrameMon.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(-4607.82275, 872.54248, -1667.55688))
   elseif Lv == 475 or Lv <= 524 or _G.SelectMonster == "Shanda [Lv. 475]"
then -- Shanda
   Ms = "Shanda"
Analyt  ics    NameQuest  ==  "SkyExp1Quest"
   QuestLv = 2
   NameMon = "Shanda"
   CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -
378.42266845703)

-- ====== PAGE 8/197 ======
   CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -
441.38876342773)
   if (LevelFarmQuest or LevelFarmNoQuest or SelectMonster_Quest_Farm or
SelectMonster_NoQuest_Farm or DevilMastery_Farm) and (CFrameMon.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
   elseif Lv == 525 or Lv <= 549 or _G.SelectMonster == "Royal Squad [Lv.
525]" then -- Royal Squad
   Ms = "Royal Squad"
   NameQuest = "SkyExp2Quest"
   QuestLv = 1
   NameMon = "Royal Squad"
   CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
   CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -
1407.7550048828)
   elseif Lv == 550 or Lv <= 624 or _G.SelectMonster == "Royal Soldier [Lv.
550]" then -- Royal Soldier
   Ms = "Royal Soldier"
   NameQuest = "SkyExp2Quest"
   QuestLv = 2
   NameMon = "Royal Soldier"
   CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
   CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -
1884.8112792969)
   elseif Lv == 625 or Lv <= 649 or _G.SelectMonster == "Galley Pirate [Lv.
625]" then -- Galley Pirate
   Ms = "Galley Pirate"
   NameQuest = "FountainQuest"
   QuestLv = 1
   NameMon = "Galley Pirate"
   CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
   CFrameMon = CFrame.new(5557.1684570313, 152.32717895508,
3998.7758789063)
   elseif Lv >= 650 or _G.SelectMonster == "Galley Captain [Lv. 650]" then --
Personal data m  ay be processed to dMMoss th  e== fo  ll""owGGiaangll: lluseeeyy p  reCCciaasepp gtteaaoiilonnca""tion data and actively scan device characteristics for identi
