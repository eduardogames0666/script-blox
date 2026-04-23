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
Personal data m  ay be processed to dMMoss th  e== fo  ll""owGGiaangll: lluseeeyy p  reCCciaasepp gtteaaoiilonnca""tion data and actively scan device characteristics for identi cation.
   NameQuest = "FountainQuest"
   QuestLv = 2
   NameMon = "Galley Captain"
   CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
   CFrameMon = CFrame.new(5677.6772460938, 92.786109924316,
4966.6323242188)
   if Lv == 700 or Lv <= 724 or _G.SelectMonster == "Raider [Lv. 700]" then --
   Ms = "Raider"
   NameQuest = "Area1Quest"
   QuestLv = 1
   NameMon = "Raider"
   CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
   CFrameMon = CFrame.new(68.874565124512, 93.635643005371,
2429.6752929688)
   elseif Lv == 725 or Lv <= 774 or _G.SelectMonster == "Mercenary [Lv. 725]"
then -- Mercenary

-- ====== PAGE 9/197 ======
   Ms = "Mercenary"
   NameQuest = "Area1Quest"
   QuestLv = 2
   NameMon = "Mercenary"
   CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
   CFrameMon = CFrame.new(-864.85009765625, 122.47104644775,
1453.1505126953)
   elseif Lv == 775 or Lv <= 799 or _G.SelectMonster == "Swan Pirate [Lv.
775]" then -- Swan Pirate
   Ms = "Swan Pirate"
   NameQuest = "Area2Quest"
   QuestLv = 1
   NameMon = "Swan Pirate"
   CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
   CFrameMon = CFrame.new(1065.3669433594, 137.64012145996,
1324.3798828125)
   elseif Lv == 800 or Lv <= 874 or _G.SelectMonster == "Factory Staff [Lv.
800]" then -- Factory Staff
   Ms = "Factory Staff"
   NameQuest = "Area2Quest"
   QuestLv = 2
   NameMon = "Factory Staff"
   CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
   CFrameMon = CFrame.new(533.22045898438, 128.46876525879,
355.62615966797)
   elseif Lv == 875 or Lv <= 899 or _G.SelectMonster == "Marine Lieutenant
[Lv. 875]" then -- Marine Lieutenant
   Ms = "Marine Lieutenant"
   NameQuest = "MarineQuest3"
   QuestLv = 1
   NameMon = "Marine Lieutenant"
   CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -
3217.7082519531)
   CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -
3151.8830566406)
   elseif Lv == 900 or Lv <= 949 or _G.SelectMonster == "Marine Captain [Lv.
900]" then -- Marine Captain
Personal data m  ay be processed to dNNoaa thmmeee foQQlluuoeewissngtt:    us==e    p""reMMciaaserr giiennoeeloQQcauutieeonss dtta33ta"" and actively scan device characteristics for identi cation.
   QuestLv = 2
   NameMon = "Marine Captain"
   CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -
3217.7082519531)
   CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -
3245.8674316406)
   elseif Lv == 950 or Lv <= 974 or _G.SelectMonster == "Zombie [Lv. 950]"
then -- Zombie
   Ms = "Zombie"
   NameQuest = "ZombieQuest"
   QuestLv = 1
   NameMon = "Zombie"
   CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -
794.59094238281)
   CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -
835.59075927734)
   elseif Lv == 975 or Lv <= 999 or _G.SelectMonster == "Vampire [Lv. 975]"
then -- Vampire
   Ms = "Vampire"
   NameQuest = "ZombieQuest"

-- ====== PAGE 10/197 ======
   QuestLv = 2
   NameMon = "Vampire"
   CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -
794.59094238281)
   CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -
1164.4384765625)
   elseif Lv == 1000 or Lv <= 1049 or _G.SelectMonster == "Snow Trooper [Lv.
1000]" then -- Snow Trooper
   Ms = "Snow Trooper"
   NameQuest = "SnowMountainQuest"
   QuestLv = 1
   NameMon = "Snow Trooper"
   CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
   CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -
5484.9165039063)
   elseif Lv == 1050 or Lv <= 1099 or _G.SelectMonster == "Winter Warrior [Lv.
1050]" then -- Winter Warrior
   Ms = "Winter Warrior"
   NameQuest = "SnowMountainQuest"
   QuestLv = 2
   NameMon = "Winter Warrior"
   CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
   CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -
5174.130859375)
   elseif Lv == 10 or Lv <= 1124 or _G.SelectMonster == "Lab Subordinate
[Lv. 1100]" then -- Lab Subordinate
   Ms = "Lab Subordinate"
   NameQuest = "IceSideQuest"
   QuestLv = 1
   NameMon = "Lab Subordinate"
   CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -
4902.0385742188)
   CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -
4784.6103515625)
   elseif Lv == 1125 or Lv <= 1174 or _G.SelectMonster == "Horned Warrior [Lv.
1125]" then -- Horned Warrior
   Ms = "Horned Warrior"
   NameMon = "Horned Warrior"
   CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -
4902.0385742188)
   CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -
5502.6499023438)
   elseif Lv == 1175 or Lv <= 19 or _G.SelectMonster == "Magma Ninja [Lv.
1175]" then -- Magma Ninja
   Ms = "Magma Ninja"
   NameQuest = "FireSideQuest"
   QuestLv = 1
   NameMon = "Magma Ninja"
   CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -
5297.9614257813)
   CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -
5836.4702148438)
   elseif Lv == 1200 or Lv <= 1249 or _G.SelectMonster == "Lava Pirate [Lv.
1200]" then -- Lava Pirate
   Ms = "Lava Pirate"
   NameQuest = "FireSideQuest"
   QuestLv = 2

-- ====== PAGE 11/197 ======
   NameMon = "Lava Pirate"
   CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -
5297.9614257813)
   CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -
4774.4096679688)
   elseif Lv == 1250 or Lv <= 1274 or _G.SelectMonster == "Ship Deckhand [Lv.
1250]" then -- Ship Deckhand
   Ms = "Ship Deckhand"
   NameQuest = "ShipQuest1"
   QuestLv = 1
   NameMon = "Ship Deckhand"
   CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
   CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
   if (LevelFarmQuest or LevelFarmNoQuest or SelectMonster_Quest_Farm or
SelectMonster_NoQuest_Farm or DevilMastery_Farm) and (CFrameMon.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
   elseif Lv == 1275 or Lv <= 1299 or _G.SelectMonster == "Ship Engineer [Lv.
1275]" then -- Ship Engineer
   Ms = "Ship Engineer"
   NameQuest = "ShipQuest1"
   QuestLv = 2
   NameMon = "Ship Engineer"
   CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
   CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
   if (LevelFarmQuest or LevelFarmNoQuest or SelectMonster_Quest_Farm or
SelectMonster_NoQuest_Farm or DevilMastery_Farm) and (CFrameMon.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
   elseif Lv == 1300 or Lv <= 1324 or _G.SelectMonster == "Ship Steward [Lv.
1300]" then -- Ship Steward
   NameQuest = "ShipQuest2"
   QuestLv = 1
   NameMon = "Ship Steward"
   CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
   CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
   if (LevelFarmQuest or LevelFarmNoQuest or SelectMonster_Quest_Farm or
SelectMonster_NoQuest_Farm or DevilMastery_Farm) and (CFrameMon.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
   elseif Lv == 1325 or Lv <= 1349 or _G.SelectMonster == "Ship Officer [Lv.
1325]" then -- Ship Officer
   Ms = "Ship Officer"
   NameQuest = "ShipQuest2"
   QuestLv = 2
   NameMon = "Ship Officer"

-- ====== PAGE 12/197 ======
   CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
   CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
   if (LevelFarmQuest or LevelFarmNoQuest or SelectMonster_Quest_Farm or
SelectMonster_NoQuest_Farm or DevilMastery_Farm) and (CFrameMon.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
   elseif Lv == 1350 or Lv <= 1374 or _G.SelectMonster == "Arctic Warrior [Lv.
1350]" then -- Arctic Warrior
   Ms = "Arctic Warrior"
   NameQuest = "FrostQuest"
   QuestLv = 1
   NameMon = "Arctic Warrior"
   CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -
6484.6005859375)
   CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -
6472.7568359375)
   if (LevelFarmQuest or LevelFarmNoQuest or SelectMonster_Quest_Farm or
SelectMonster_NoQuest_Farm or DevilMastery_Farm) and (CFrameMon.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
   elseif Lv == 1375 or Lv <= 1424 or _G.SelectMonster == "Snow Lurker [Lv.
1375]" then -- Snow Lurker
   Ms = "Snow Lurker"
   NameQuest = "FrostQuest"
   QuestLv = 2
   NameMon = "Snow Lurker"
   CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -
6484.6005859375)
   CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -
6618.3481445313)
   elseif Lv == 1425 or Lv <= 1449 or _G.SelectMonster == "Sea Soldier [Lv.
   Ms = "Sea Soldier"
   NameQuest = "ForgottenQuest"
   QuestLv = 1
   NameMon = "Sea Soldier"
   CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -
10147.790039063)
   CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -
9663.6064453125)
   elseif Lv >= 1450 or _G.SelectMonster == "Water Fighter [Lv. 1450]" then --
   Ms = "Water Fighter"
   NameQuest = "ForgottenQuest"
   QuestLv = 2
   NameMon = "Water Fighter"
   CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -
10147.790039063)
   CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -
10552.529296875)

-- ====== PAGE 13/197 ======
   if Lv == 1500 or Lv <= 1524 or _G.SelectMonster == "Pirate Millionaire [Lv.
1500]" then -- Pirate Millionaire
   Ms = "Pirate Millionaire"
   NameQuest = "PiratePortQuest"
   QuestLv = 1
   NameMon = "Pirate Millionaire"
   CFrameQ = CFrame.new(-289.61752319336, 43.819011688232,
5580.0903320313)
   CFrameMon = CFrame.new(-435.68109130859, 189.69866943359,
5551.0756835938)
   elseif Lv == 1525 or Lv <= 1574 or _G.SelectMonster == "Pistol Billionaire
[Lv. 1525]" then -- Pistol Billoonaire
   Ms = "Pistol Billionaire"
   NameQuest = "PiratePortQuest"
   QuestLv = 2
   NameMon = "Pistol Billionaire"
   CFrameQ = CFrame.new(-289.61752319336, 43.819011688232,
5580.0903320313)
   CFrameMon = CFrame.new(-236.53652954102, 217.46676635742,
6006.0883789063)
   elseif Lv == 1575 or Lv <= 1599 or _G.SelectMonster == "Dragon Crew Warrior
[Lv. 1575]" then -- Dragon Crew Warrior
   Ms = "Dragon Crew Warrior"
   NameQuest = "AmazonQuest"
   QuestLv = 1
   NameMon = "Dragon Crew Warrior"
   CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
   CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -
1082.6075439453)
   elseif Lv == 1600 or Lv <= 1624 or _G.SelectMonster == "Dragon Crew Archer
[Lv. 1600]" then -- Dragon Crew Archer
   Ms = "Dragon Crew Archer"
   NameQuest = "AmazonQuest"
   QuestLv = 2
   NameMon = "Dragon Crew Archer"
   CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
   CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
[Lv. 1625]" then -- Female Islander
   Ms = "Female Islander"
   NameQuest = "AmazonQuest2"
   QuestLv = 1
   NameMon = "Female Islander"
   CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
   CFrameMon = CFrame.new(5792.5166015625, 848.14392089844,
1084.1818847656)
   elseif Lv == 1650 or Lv <= 1699 or _G.SelectMonster == "Giant Islander [Lv.
1650]" then -- Giant Islander
   Ms = "Giant Islander"
   NameQuest = "AmazonQuest2"
   QuestLv = 2
   NameMon = "Giant Islander"
   CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
   CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -
40.960144042969)
   elseif Lv == 1700 or Lv <= 1724 or _G.SelectMonster == "Marine Commodore
[Lv. 1700]" then -- Marine Commodore

-- ====== PAGE 14/197 ======
   Ms = "Marine Commodore"
   NameQuest = "MarineTreeIsland"
   QuestLv = 1
   NameMon = "Marine Commodore"
   CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
   CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -
7109.5043945313)
   elseif Lv == 1725 or Lv <= 1774 or _G.SelectMonster == "Marine Rear Admiral
[Lv. 1725]" then -- Marine Rear Admiral
   Ms = "Marine Rear Admiral"
   NameQuest = "MarineTreeIsland"
   QuestLv = 2
   NameMon = "Marine Rear Admiral"
   CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
   CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -
7048.6342773438)
   elseif Lv == 1775 or Lv <= 1799 or _G.SelectMonster == "Fishman Raider [Lv.
1775]" then -- Fishman Raide
   Ms = "Fishman Raider"
   NameQuest = "DeepForestIsland3"
   QuestLv = 1
   NameMon = "Fishman Raider"
   CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -
8757.666015625)
   CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -
8176.9458007813)
   elseif Lv == 1800 or Lv <= 1824 or _G.SelectMonster == "Fishman Captain
[Lv. 1800]" then -- Fishman Captain
   Ms = "Fishman Captain"
   NameQuest = "DeepForestIsland3"
   QuestLv = 2
   NameMon = "Fishman Captain"
   CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -
8759.4638671875)
   CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -
9131.4423828125)
   elseif Lv == 1825 or Lv <= 1849 or _G.SelectMonster == "Forest Pirate [Lv.
1825]" then -- Forest Pirate
   Ms = "Forest Pirate"
   NameQuest = "DeepForestIsland"
   NameMon = "Forest Pirate"
   CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -
7626.4819335938)
   CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -
7770.251953125)
   elseif Lv == 1850 or Lv <= 1899 or _G.SelectMonster == "Mythological Pirate
[Lv. 1850]" then -- Mythological Pirate
   Ms = "Mythological Pirate"
   NameQuest = "DeepForestIsland"
   QuestLv = 2
   NameMon = "Mythological Pirate"
   CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -
7626.4819335938)
   CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -
6985.3037109375)
   elseif Lv == 1900 or Lv <= 1924 or _G.SelectMonster == "Jungle Pirate [Lv.
1900]" then -- Jungle Pirate
   Ms = "Jungle Pirate"

-- ====== PAGE 15/197 ======
   NameQuest = "DeepForestIsland2"
   QuestLv = 1
   NameMon = "Jungle Pirate"
   CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -
9902.1240234375)
   CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -
10277.200195313)
   elseif Lv == 1925 or Lv <= 1974 or _G.SelectMonster == "Musketeer Pirate
[Lv. 1925]" then -- Musketeer Pirate
   Ms = "Musketeer Pirate"
   NameQuest = "DeepForestIsland2"
   QuestLv = 2
   NameMon = "Musketeer Pirate"
   CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -
9902.1240234375)
   CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -
9904.638671875)
   elseif Lv == 1975 or Lv <= 1999 or _G.SelectMonster == "Reborn Skeleton
[Lv. 1975]" then
   Ms = "Reborn Skeleton"
   NameQuest = "HauntedQuest1"
   QuestLv = 1
   NameMon = "Reborn Skeleton"
   CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -
0.999978542, -2.01955679e-08, -0.00655503059)
   CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301,
0.208259016, 7.07080399e-05, 0.978073597)
   elseif Lv == 2000 or Lv <= 2024 or _G.SelectMonster == "Living Zombie [Lv.
2000]" then
   Ms = "Living Zombie"
   NameQuest = "HauntedQuest1"
   QuestLv = 2
   NameMon = "Living Zombie"
   CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -
0.999978542, -2.01955679e-08, -0.00655503059)
   CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977,
2025]" then
   Ms = "Demonic Soul"
   NameQuest = "HauntedQuest2"
   QuestLv = 1
   NameMon = "Demonic Soul"
   CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293,
6078.4653320313)
   CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
   elseif Lv == 2050 or Lv <= 2074 or _G.SelectMonster == "Posessed Mummy [Lv.
2050]" then
   Ms = "Posessed Mummy"
   NameQuest = "HauntedQuest2"
   QuestLv = 2
   NameMon = "Posessed Mummy"
   CFrameQ = CFrame.new(-9516.9931640625, 178.00651550293,
6078.4653320313)
   CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059,

-- ====== PAGE 16/197 ======
6339.5615234375)
   elseif Lv == 2075 or Lv <= 2099 or _G.SelectMonster == "Peanut Scout [Lv.
2075]" then
   Ms = "Peanut Scout"
   NameQuest = "NutsIslandQuest"
   QuestLv = 1
   NameMon = "Peanut Scout"
   CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -
0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
   CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -
10358.994140625)
   elseif Lv == 2100 or Lv <= 2124 or _G.SelectMonster == "Peanut President
[Lv. 2100]" then
   Ms = "Peanut President"
   NameQuest = "NutsIslandQuest"
   QuestLv = 2
   NameMon = "Peanut President"
   CFrameQ = CFrame.new(-2105.53198, 37.2495995, -10195.5088, -
0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.766061664)
   CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -
10358.994140625)
   elseif Lv == 2125 or Lv <= 2149 or _G.SelectMonster == "Ice Cream Chef [Lv.
2125]" then
   Ms = "Ice Cream Chef"
   NameQuest = "IceCreamIslandQuest"
   QuestLv = 1
   NameMon = "Ice Cream Chef"
   CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -
0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
   CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -
0.0703101531, -0, -0.997525156, -0, 1.00000012, -0, 0.997525275, 0, -0.0703101456)
   elseif Lv == 2150 or Lv <= 2199 or _G.SelectMonster == "Ice Cream Commander
[Lv. 2150]" then
   Ms = "Ice Cream Commander"
   NameQuest = "IceCreamIslandQuest"
   QuestLv = 2
   NameMon = "Ice Cream Commander"
   CFrameQ = CFrame.new(-819.376709, 64.9259796, -10967.2832, -
0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
   CFrameMon = CFrame.new(-789.941528, 209.382889, -11009.9805, -
2200]" then
   NameQuest = "CakeQuest1"
   QuestLv = 1
   CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -
0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)
   CFrameMon = CFrame.new(-2321.71216, 36.699482, -12216.7871, -
0.780074954, 0, 0.625686109, 0, 1, 0, -0.625686109, 0, -0.780074954)
   elseif Lv == 2225 or Lv <= 2249 or _G.SelectMonster == "Cake Guard [Lv.
2225]" then
   Ms = "Cake Guard"
   NameQuest = "CakeQuest1"
   QuestLv = 2
   NameMon = "Cake Guard"
   CFrameQ = CFrame.new(-2022.29858, 36.9275894, -12030.9766, -
0.961273909, 0, -0.275594592, 0, 1, 0, 0.275594592, 0, -0.961273909)

-- ====== PAGE 17/197 ======
   CFrameMon = CFrame.new(-1418.11011, 36.6718941, -12255.7324,
0.0677844882, 0, 0.997700036, 0, 1, 0, -0.997700036, 0, 0.0677844882)
   elseif Lv == 2250 or Lv <= 2274 or _G.SelectMonster == "Baking Staff [Lv.
2250]" then
   Ms = "Baking Staff"
   NameQuest = "CakeQuest2"
   QuestLv = 1
   NameMon = "Baking Staff"
   CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401,
-0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
   CFrameMon = CFrame.new(-1980.43848, 36.6716766, -12983.8418, -
0.254443765, 0, -0.967087567, 0, 1, 0, 0.967087567, 0, -0.254443765)
   elseif Lv == 2275 or Lv <= 29 or _G.SelectMonster == "Head Baker [Lv.
2275]" then
   Ms = "Head Baker"
   NameQuest = "CakeQuest2"
   QuestLv = 2
   NameMon = "Head Baker"
   CFrameQ = CFrame.new(-1928.31763, 37.7296638, -12840.626, 0.951068401,
-0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
   CFrameMon = CFrame.new(-2251.5791, 52.2714615, -13033.3965, -
0.991971016, 0, -0.126466095, 0, 1, 0, 0.126466095, 0, -0.991971016)
   elseif Lv == 2300 or Lv <= 2324 or _G.SelectMonster == "Cocoa Warrior [Lv.
2300]" then
   Ms = "Cocoa Warrior"
   NameQuest ="ChocQuest1"
   QuestLv = 1
   NameMon = "Cocoa Warrior"
   CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0,
0,  0,  -1)
   CFrameMon = CFrame.new(167.978516, 26.2254658, -12238.874, -
0.939700961, 0, 0.341998369, 0, 1, 0, -0.341998369, 0, -0.939700961)
   elseif Lv == 2325 or Lv <= 2349 or _G.SelectMonster == "Chocolate Bar
Battler [Lv. 2325]" then
   Ms = "Chocolate Bar Battler"
   NameQuest = "ChocQuest1"
   QuestLv = 2
   NameMon = "Chocolate Bar Battler"
   CFrameQ = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0,
0,  0,  -1)
   CFrameMon = CFrame.new(701.312073, 25.5824986, -12708.2148, -
   elseif Lv == 2350 or Lv <= 2374 or _G.SelectMonster == "Sweet Thief [Lv.
2350]" then
Third Parties       Ms  ==  "Sweet  Thief"
   NameQuest = "ChocQuest2"
   QuestLv = 1
   NameMon = "Sweet Thief"
   CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998,
0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
   CFrameMon = CFrame.new(-140.258301, 25.5824986, -12652.3115,
0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
   elseif Lv == 2375 or Lv <= 2400 or _G.SelectMonster == "Candy Rebel [Lv.
2375]" then
   Ms = "Candy Rebel"
   NameQuest = "ChocQuest2"
   QuestLv = 2
   NameMon = "Candy Rebel"
   CFrameQ = CFrame.new(151.198242, 23.8907146, -12774.6172, 0.422592998,

-- ====== PAGE 18/197 ======
0, 0.906319618, 0, 1, 0, -0.906319618, 0, 0.422592998)
   CFrameMon = CFrame.new(47.9231453, 25.5824986, -13029.2402, -
0.819156051, 0, -0.573571265, 0, 1, 0, 0.573571265, 0, -0.819156051)
   elseif Lv == 2400 or Lv <= 2424 or _G.SelectMonster == "Candy Pirate [Lv.
2400]" then
   Ms = "Candy Pirate"
   NameQuest = "CandyQuest1"
   QuestLv = 1
   NameMon = "Candy Pirate"
   CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099,
0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
   CFrameMon = CFrame.new(-1437.56348, 17.1481285, -14385.6934,
0.173624337, -0, -0.984811902, 0, 1, -0, 0.984811902, 0, 0.173624337)
   elseif Lv == 2425 or Lv <= 2449 or _G.SelectMonster == "Snow Demon [Lv.
2425]" then
   Ms = "Snow Demon"
   NameQuest = "CandyQuest1"
   QuestLv = 2
   NameMon = "Snow Demon"
   CFrameQ = CFrame.new(-1149.328, 13.5759039, -14445.6143, -0.156446099,
0, -0.987686574, 0, 1, 0, 0.987686574, 0, -0.156446099)
   CFrameMon = CFrame.new(-916.222656, 17.1481285, -14638.8125,
0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
   elseif Lv == 2450 or Lv <= 2474 or _G.SelectMonster == "Isle Outlaw [Lv.
2450]" then
   Ms = "Isle Outlaw"
   NameQuest = "TikiQuest1"
   QuestLv = 1
   NameMon = "Isle Outlaw"
   CFrameQ = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -
0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
   CFrameMon = CFrame.new(-16122.4062, 10.6328173, -257.351685, -
0.630029082, 0, 0.776571631, 0, 1, 0, -0.776571631, 0, -0.630029082)
   elseif Lv == 2475 or Lv <= 2499 or _G.SelectMonster == "Island Boy [2475]"
   Ms = "Island Boy"
   NameQuest = "TikiQuest1"
   QuestLv = 2
   NameMon = "Island Boy"
   CFrameQ = CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -
0, -0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566)
   CFrameMon = CFrame.new(-16736.2266, 20.533947, -131.718811,
0.546393692, 0, 0.837528467, 0, 1, 0, -0.837528467, 0, 0.546393692)
Third Parties    elseif Lv == 2500 or Lv <= 2524 or _G.SelectMonster == "Sun-kissed Warrior
[Lv. 2500]" then
   Ms = "Sun-kissed Warrior"
   NameQuest = "TikiQuest2"
   QuestLv = 1
   NameMon = "Sun-"
   CFrameQ = CFrame.new(-16541.0215, 54.770813, 1051.46118, 0.0410757065,
-0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065)
   CFrameMon = CFrame.new(-16413.5078, 54.6350479, 1054.43555, -
0.999391913, 0, -0.034868788, 0, 1, 0, 0.034868788, 0, -0.999391913)
   elseif Lv == 2525 or Lv <= 2549 or _G.SelectMonster == "Isle Champion [Lv.
2525]" then
   Ms = "Isle Champion"
   NameQuest = "TikiQuest2"
   QuestLv = 2

-- ====== PAGE 19/197 ======
   NameMon = "Isle Champion"
   CFrameQ = CFrame.new(-16541.0215, 54.770813, 1051.46118, 0.0410757065,
-0, -0.999156058, 0, 1, -0, 0.999156058, 0, 0.0410757065)
   CFrameMon = CFrame.new(-16787.3203, 20.6350517, 992.131836, -
0.775471091, 0, 0.631383121, 0, 1, 0, -0.631383121, 0, -0.775471091)
   elseif Lv == 2550 or Lv <= 2574 or _G.SelectMonster == "Serpent Hunter [Lv.
2550]" then
   Ms = "Serpent Hunter"
   NameQuest = "TikiQuest3"
   QuestLv = 1
   NameMon = "Serpent Hunter"
   CFrameQ = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401,
-0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
   CFrameMon = CFrame.new(-16654.7754, 105.286232, 1579.67444,
0.0424928814, 1.57886415e-08, 0.999096751)
   elseif Lv >= 2575 or _G.SelectMonster == "Skull Slayer [Lv. 2575]" then
   Ms = "Skull Slayer"
   NameQuest = "TikiQuest3"
   QuestLv = 2
   NameMon = "Skull Slayer"
   CFrameQ = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401,
-0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
   CFrameMon = CFrame.new(-16654.7754, 105.286232, 1579.67444,
0.0424928814, 1.57886415e-08, 0.999096751)
   tableMon = {"Bandit [Lv. 5]","Monkey [Lv. 14]","Gorilla [Lv. 20]","Pirate [Lv.
35]","Brute [Lv. 45]","Desert Bandit [Lv. 60]","Desert Officer [Lv. 70]","Snow
Bandit [Lv. 90]","Snowman [Lv. 100]","Chief Petty Officer [Lv. 120]","Sky Bandit
[Lv. 150]","Dark Master [Lv. 175]","Prisoner [Lv. 190]", "Dangerous Prisoner [Lv.
210]","Toga Warrior [Lv. 250]","Gladiator [Lv. 275]","Military Soldier [Lv.
300]","Military Spy [Lv. 325]","Fishman Warrior [Lv. 375]","Fishman Commando [Lv.
400]","God's Guard [Lv. 450]","Shanda [Lv. 475]","Royal Squad [Lv. 525]","Royal
Soldier [Lv. 550]","Galley Pirate [Lv. 625]","Galley Captain [Lv. 650]"}
   tableMon = {"Raider [Lv. 700]","Mercenary [Lv. 725]","Swan Pirate [Lv.
775]","Factory Staff [Lv. 800]","Marine Lieutenant [Lv. 875]","Marine Captain [Lv.
900]","Zombie [Lv. 950]","Vampire [Lv. 975]","Snow Trooper [Lv. 1000]","Winter
Third Parties Warrior [Lv. 1050]","Lab Subordinate [Lv. 1100]","Horned Warrior [Lv. 1125]","Magma
Ninja [Lv. 1175]","Lava Pirate [Lv. 1200]","Ship Deckhand [Lv. 1250]","Ship
Engineer [Lv. 1275]","Ship Steward [Lv. 1300]","Ship Officer [Lv. 1325]","Arctic
Warrior [Lv. 1350]","Snow Lurker [Lv. 1375]","Sea Soldier [Lv. 1425]","Water
Fighter [Lv. 1450]"}
   tableMon = {"Pirate Millionaire [Lv. 1500]","Dragon Crew Warrior [Lv.
1575]","Dragon Crew Archer [Lv. 1600]","Female Islander [Lv. 1625]","Giant Islander
[Lv. 1650]","Marine Commodore [Lv. 1700]","Marine Rear Admiral [Lv. 1725]","Fishman
Raider [Lv. 1775]","Fishman Captain [Lv. 1800]","Forest Pirate [Lv.
1825]","Mythological Pirate [Lv. 1850]","Jungle Pirate [Lv. 1900]","Musketeer
Pirate [Lv. 1925]","Reborn Skeleton [Lv. 1975]","Living Zombie [Lv. 2000]","Demonic
Soul [Lv. 2025]","Posessed Mummy [Lv. 2050]", "Peanut Scout [Lv. 2075]", "Peanut
President [Lv. 2100]", "Ice Cream Chef [Lv. 2125]", "Ice Cream Commander [Lv.
2150]",  "Cookie  Crafter  [Lv.  2200]",  ""ACCcaackkeeep  tGG Auullaarrdd  [Lv.  2225]",  "Baking  Staff  [Lv.

-- ====== PAGE 20/197 ======
2250]", "Head Baker [Lv. 2275]", "Cocoa Warrior [Lv. 2300]", "Chocolate Bar Battler
[Lv. 2325]", "Sweet Thief [Lv. 2350]", "Candy Rebel [Lv. 2375]", "Candy Pirate [Lv.
2400]", "Snow Demon [Lv. 2425]",
   "Isle Outlaw [Lv. 2450]", "Island Boy [2475]", "Sun-kissed Warrior [Lv.
2500]", "Isle Champion [Lv. 2525]", "Serpent Hunter [Lv. 2550]", "Skull Slayer [Lv.
2575]"
      }}
function CheckBossQuest()
   if SelectBoss == "The Gorilla King" then
   BossMon = "The Gorilla King [Lv. 25] [Boss]"
   NameBoss = 'The Gorrila King'
   NameQuestBoss = "JungleQuest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$2,000\n7,000 Exp."
   CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459,
153.38809204102)
   CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -
0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
   elseif SelectBoss == "Bobby" then
   BossMon = "Bobby [Lv. 55] [Boss]"
   NameBoss = 'Bobby'
   NameQuestBoss = "BuggyQuest1"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$8,000\n35,000 Exp."
   CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106,
3827.4057617188)
   CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863,
4040.1462402344)
   elseif SelectBoss == "The Saw" then
   BossMon = "The Saw [Lv. 100] [Boss]"
   NameBoss = 'The Saw'
   CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852,
1603.5822753906)
   elseif SelectBoss == "Yeti" then
   BossMon = "Yeti [Lv. 110] [Boss]"
   NameBoss = 'Yeti'
   NameQuestBoss = "SnowQuest"
   QuestLvBoss = 3
may close this   banner to continue witRRh eeonwwlyaa errsddseBBnootiassl csso  o==ki  es"". PRRreeivwwacaay rrPoddl::ic\\ynn$$1100,,000000\\nn118800,,000000  Exp."
Storage Prefer ences  CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -
1298.3576660156)
   CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -
Storag11e448888..00226622445511117722))
   elseif SelectBoss == "Mob Leader" then
   BossMon = "Mob Leader [Lv. 120] [Boss]"
   NameBoss = 'Mob Leader'
   CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541,
5356.6723632813)
   elseif SelectBoss == "Vice Admiral" then
   BossMon = "Vice Admiral [Lv. 130] [Boss]"
   NameBoss = 'Vice Admiral'
   NameQuestBoss = "MarineQuest2"
   QuestLvBoss = 2
   RewardBoss = "Reward:\n$10,000\n180,000 Exp."
      CFrameQBoss  ==  CCFFrraammee..nneeww((--A55c00c33e66p..t22 A44ll6655882200331133,,  28.677835464478,

-- ====== PAGE 21/197 ======
4324.56640625)
   CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004,
4353.162109375)
   elseif SelectBoss == "Saber Expert" then
   NameBoss = 'Saber Expert'
   BossMon = "Saber Expert [Lv. 200] [Boss]"
   CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
   elseif SelectBoss == "Warden" then
   BossMon = "Warden [Lv. 220] [Boss]"
   NameBoss = 'Warden'
   NameQuestBoss = "ImpelQuest"
   QuestLvBoss = 1
   RewardBoss = "Reward:\n$6,000\n850,000 Exp."
   CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929,
0.975376427, -2.10519756e-05, 0.220546961)
   CFrameQBoss= CFrame.new(5191.86133, 2.84020686, 686.438721, -
0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
   elseif SelectBoss == "Chief Warden" then
   BossMon = "Chief Warden [Lv. 230] [Boss]"
   NameBoss = 'Chief Warden'
   NameQuestBoss = "ImpelQuest"
   QuestLvBoss = 2
   RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
   CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746,
05, -0.939682961, 0.00181045406, 0.342041939)
   CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -
0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
   elseif SelectBoss == "Swan" then
   BossMon = "Swan [Lv. 240] [Boss]"
   NameBoss = 'Swan'
   NameQuestBoss = "ImpelQuest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
   CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -
0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
   CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -
0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
   elseif SelectBoss == "Magma Admiral" then
   BossMon = "Magma Admiral [Lv. 350] [Boss]"
   NameBoss = 'Magma Admiral'
may close this   banner to continue witNNh aaonmmlyee eQQsuuseeensstiattl cBBoooosskisses  . P==r  iva""cMMy aaPogglimmcaayQQuueesstt""
Storage Prefer  ences    QuestLvBoss  ==  33
   RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
   CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297,
Storag88e551177..227799229966887755))
   CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
   elseif SelectBoss == "Fishman Lord" then
   BossMon = "Fishman Lord [Lv. 425] [Boss]"
   NameBoss = 'Fishman Lord'
   NameQuestBoss = "FishmanQuest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
   CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483,
1569.3997802734)
   CFrameBoss = CFrame.new(61260.15234375, 30.950881958008,
1193.4329833984)
   elseif SelectBoss == "Wysper" Atchceenpt Al

-- ====== PAGE 22/197 ======
   BossMon = "Wysper [Lv. 500] [Boss]"
   NameBoss = 'Wysper'
   NameQuestBoss = "SkyExp1Quest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
   CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -
379.85974121094)
   CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -
546.74816894531)
   elseif SelectBoss == "Thunder God" then
   BossMon = "Thunder God [Lv. 575] [Boss]"
   NameBoss = 'Thunder God'
   NameQuestBoss = "SkyExp2Quest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
   CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -
1410.923828125)
   CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
   elseif SelectBoss == "Cyborg" then
   BossMon = "Cyborg [Lv. 675] [Boss]"
   NameBoss = 'Cyborg'
   NameQuestBoss = "FountainQuest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
   CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695,
4050.044921875)
   CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828,
3825.7348632813)
   elseif SelectBoss == "Ice Admiral" then
   BossMon = "Ice Admiral [Lv. 700] [Boss]"
   NameBoss = 'Ice Admiral'
   CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -
0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
   elseif SelectBoss == "Greybeard" then
   BossMon = "Greybeard [Lv. 750] [Raid Boss]"
   NameBoss = 'Greybeard'
   CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527,
4257.3588867188)
   if SelectBoss == "Diamond" then
   BossMon = "Diamond [Lv. 750] [Boss]"
   NameBoss = 'Diamond'
   NameQuestBoss = "Area1Quest"
   QuestLvBoss = 3
Storag  e    RewardBoss  ==  "Reward:\n$25,000\n9,000,000  Exp."
   CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281,
1835.4208984375)
   CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719,
13.724286079407)
   elseif SelectBoss == "Jeremy" then
   BossMon = "Jeremy [Lv. 850] [Boss]"
   NameBoss = 'Jeremy'
   NameQuestBoss = "Area2Quest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
   CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797,
918.00415039063)

-- ====== PAGE 23/197 ======
   CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906,
853.98284912109)
   elseif SelectBoss == "Fajita" then
   BossMon = "Fajita [Lv. 925] [Boss]"
   NameBoss = 'Fajita'
   NameQuestBoss = "MarineQuest3"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
   CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -
3217.5324707031)
   CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -
4015.025390625)
   elseif SelectBoss == "Don Swan" then
   BossMon = "Don Swan [Lv. 1000] [Boss]"
   NameBoss = 'Don Swan'
   CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175,
863.8388671875)
   elseif SelectBoss == "Smoke Admiral" then
   BossMon = "Smoke Admiral [Lv. 1150] [Boss]"
   NameBoss = 'Smoke Admiral'
   NameQuestBoss = "IceSideQuest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
   CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -
5297.9614257813)
   CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -
5260.6669921875)
   elseif SelectBoss == "Awakened Ice Admiral" then
   BossMon = "Awakened Ice Admiral [Lv. 1400] [Boss]"
   NameBoss = 'Awakened Ice Admiral'
   NameQuestBoss = "FrostQuest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
   CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -
6483.3520507813)
   CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -
6894.5595703125)
   elseif SelectBoss == "Tide Keeper" then
   BossMon = "Tide Keeper [Lv. 1475] [Boss]"
   NameBoss = 'Tide Keeper'
   NameQuestBoss = "ForgottenQuest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
   CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -
10145.0390625)
   CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -
11421.307617188)
   elseif SelectBoss == "Darkbeard" then
   NameBoss = 'Darkbeard'
Perso  nalization    CFrameMon  ==  CFrame.new(3677.08203125,  62.751937866211,  --
3144.8332519531)
Analyt  ics    elseif  SelectBoss  ==  "Cursed  Captain"  then
   BossMon = "Cursed Captain [Lv. 1325] [Raid Boss]"
   NameBoss = 'Cursed Captain'
   CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
   elseif SelectBoss == "Order" then
   BossMon = "Order [Lv. 1250] [Raid Boss]"
   NameBoss = 'Order'

-- ====== PAGE 24/197 ======
   CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -
5053.1357421875)
   if SelectBoss == "Stone" then
   BossMon = "Stone [Lv. 1550] [Boss]"
   NameBoss = 'Stone'
   NameQuestBoss = "PiratePortQuest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
   CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232,
5579.9384765625)
   CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688,
6578.8530273438)
   elseif SelectBoss == "Island Empress" then
   BossMon = "Island Empress [Lv. 1675] [Boss]"
   NameBoss = 'Island Empress'
   NameQuestBoss = "AmazonQuest2"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
   CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641,
751.43792724609)
   CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
   elseif SelectBoss == "Kilo Admiral" then
   BossMon = "Kilo Admiral [Lv. 1750] [Boss]"
   NameBoss = 'Kilo Admiral'
   NameQuestBoss = "MarineTreeIsland"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
   CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -
6739.9741210938)
   CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -
7144.4580078125)
   elseif SelectBoss == "Captain Elephant" then
   NameBoss = 'Captain Elephant'
   NameQuestBoss = "DeepForestIsland"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
   CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -
7626.01171875)
   CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -
8071.392578125)
   elseif SelectBoss == "Beautiful Pirate" then
   BossMon = "Beautiful Pirate [Lv. 1950] [Boss]"
   NameBoss = 'Beautiful Pirate'
   NameQuestBoss = "DeepForestIsland2"
   RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
Perso  nalization    CFrameQBoss  ==  CFrame.new(-12682.096679688,  390.88653564453,  --
9902.1240234375)
Analyt  ics    CFrameBoss  ==  CFrame.new(5283.609375,  22.56223487854,  -110.78285217285)
   elseif SelectBoss == "Cake Queen" then
   BossMon = "Cake Queen [Lv. 2175] [Boss]"
   NameBoss = 'Cake Queen'
   NameQuestBoss = "IceCreamIslandQuest"
   QuestLvBoss = 3
   RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."

-- ====== PAGE 25/197 ======
   CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -
0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
   CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -
0.417492568, 0.0167988986, -0.90852499)
   elseif SelectBoss == "Longma" then
   BossMon = "Longma [Lv. 2000] [Boss]"
   NameBoss = 'Longma'
   CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -
9549.7939453125)
   elseif SelectBoss == "Soul Reaper" then
   BossMon = "Soul Reaper [Lv. 2100] [Raid Boss]"
   NameBoss = 'Soul Reaper'
   CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148,
6655.7192382813)
   elseif SelectBoss == "rip_indra True Form" then
   BossMon = "rip_indra True Form [Lv. 5000] [Raid Boss]"
   NameBoss = 'rip_indra True Form'
   CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -
2814.0166015625)
function MaterialMon()
   if SelectMaterial == "Radioactive Material" then
   MMon = "Factory Staff"
   MPos = CFrame.new(295,73,-56)
   SP = "Default"
   elseif SelectMaterial == "Mystic Droplet" then
   MMon = "Water Fighter"
   MPos = CFrame.new(-3385,239,-10542)
   SP = "Default"
   elseif SelectMaterial == "Magma Ore" then
   MMon = "Military Spy"
   MPos = CFrame.new(-5815,84,8820)
   SP = "Default"
   MMon = "Magma Ninja"
   MPos = CFrame.new(-5428,78,-5959)
   SP = "Default"
   elseif SelectMaterial == "Angel Wings" then
   MMon = "God's Guard"
   MPos = CFrame.new(-4698,845,-1912)
   SP = "Default"
Target  ed Advertisingiiff  (game.Players.LocalPlayer.Character.HumanoidRootPart.Position  --
Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
AnalytVViceesccttoorr33..nneeww((--77885599..0099881144,,  5544.19043,  -381.476196))
   elseif SelectMaterial == "Leather" then
   MMon = "Brute"
   MPos = CFrame.new(-1145,15,4350)
   SP = "Default"

-- ====== PAGE 26/197 ======
   MMon = "Marine Captain"
   MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -
3326.620849609375)
   SP = "Default"
   MMon = "Jungle Pirate"
   MPos = CFrame.new(-11975.78515625, 331.7734069824219, -
10620.0302734375)
   SP = "Default"
   elseif SelectMaterial == "Scrap Metal" then
   MMon = "Brute"
   MPos = CFrame.new(-1145,15,4350)
   SP = "Default"
   MMon = "Swan Pirate"
   MPos = CFrame.new(878,122,1235)
   SP = "Default"
   MMon = "Jungle Pirate"
   MPos = CFrame.new(-12107,332,-10549)
   SP = "Default"
   elseif SelectMaterial == "Fish Tail" then
   MMon = "Fishman Raider"
   MPos = CFrame.new(-10993,332,-8940)
   SP = "Default"
   MMon = "Fishman Warrior"
   MPos = CFrame.new(61123,19,1569)
   SP = "Default"
   if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
   elseif SelectMaterial == "Demonic Wisp" then
   MMon = "Demonic Soul"
   MPos = CFrame.new(-9507,172,6158)
   SP = "Default"
   elseif SelectMaterial == "Vampire Fang" then
   MMon = "Vampire"
   MPos = CFrame.new(-6033,7,-1317)
   SP = "Default"
   elseif SelectMaterial == "Conjured Cocoa" then
   MMon = "Chocolate Bar Battler"
   MPos = CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
   SP = "Default"
   elseif SelectMaterial == "Dragon Scale" then
   MPos = CFrame.new(6594,383,139)
   SP = "Default"
   elseif SelectMaterial == "Gunpowder" then

-- ====== PAGE 27/197 ======
   MMon = "Pistol Billionaire"
   MPos = CFrame.new(-469,74,5904)
   SP = "Default"
   elseif SelectMaterial == "Mini Tusk" then
   MMon = "Mythological Pirate"
   MPos = CFrame.new(-13545,470,-6917)
   SP = "Default"
 _G.SafeFarm = true
spawn(function()
   while wait() do
pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
   if v:IsA("LocalScript") then
   v.Name == "General" or v.Name == "Shiftlock" or v.Name ==
"FallDamage" or v.Name == "4444" or
   v.Name == "CamBob" or
   v.Name == "JumpCD" or
   v.Name == "Looking" or
   v.Name == "Run"
   v:Destroy()
pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
   if v:IsA("LocalScript") then
   v.Name == "CustomForceField" or
   v.Name == "MenuBloodSp" or
   v.Name == "PlayerList"
   v:Destroy()
   game.Players.LocalPlayer:Kick("Please don't turn off safe farm if you
don't want to get banned")
end)
function EquipTool(Tool)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Back
pack[Tool])

-- ====== PAGE 28/197 ======
      end)
function Tween(P1)
   local Distance = (P1.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
   Speed = 350
game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidR
ootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame =
P1}):Play()
function TP2(P1)
   local Distance = (P1.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
   Speed = 350
game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidR
ootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame =
P1}):Play()
game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidR
ootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame =
P1}):Cancel()
   _G.Clip2 = true
   wait(Distance/Speed)
   _G.Clip2 = false
function CancelTween(target)
   _G.StopTween = true
   wait(.1)
Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
   wait(.1)
   _G.StopTween = false
function BTP(Tarpos)
   if (Tarpos.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
   game.Players.LocalPlayer.Character.Head:Destroy()
      ggaammee..PPllaayyeerrss..LLooccaallPPllaayyeerr..CChhSaaarrvaaecc pttreeerrf..erHHeuunmmcaaennsooiiddRRoooottPPaarrtt..CCFFrraammee  ==  Tarpos
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
   wait(1)

-- ====== PAGE 29/197 ======
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Tarpos
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
   wait(7)
   elseif (Tarpos.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
   Tween(Tarpos)
function AutoClick()
   -- game:GetService('VirtualUser'):CaptureController()
  -- game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
function AutoClick2()
   game:GetService('VirtualUser'):CaptureController()
   game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 672))
task.spawn(function()
   while wait() do
   local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
   CameraShakerR:Stop()
end)
local range = 1000
local player = game:GetService("Players").LocalPlayer
game:GetService("RunService").RenderStepped:Connect(function()
   local p = game.Players:GetPlayers()
   for i = 2, #p do local v = p[i].Character
Personal data mvva::y FFbiie nnprddocFFeiissrressd tttoCC dhhoii thlledd f((ol""loHHwiuungmm: aausnneoo piireddcRRiseoo oogettoPPloaacarrtitton"" d))a  taaa annnddd actively scan device characteristics for identi cation.
player:DistanceFromCharacter(v.HumanoidRootPart.Position) <= range then
   local tool = player.Character and
player.Character:FindFirstChildOfClass("Tool")
   if tool and tool:FindFirstChild("Handle") then
   tool:Activate()
   for i,v in next, v:GetChildren() do
   if v:IsA("BasePart") then
   firetouchinterest(tool.Handle,v,0)
   firetouchinterest(tool.Handle,v,1)
end)
spawn(function()
   while wait() do
   pcall(function()

-- ====== PAGE 30/197 ======
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("B
odyClip") then
   local Noclip = Instance.new("BodyVelocity")
   Noclip.Name = "BodyClip"
   Noclip.Parent =
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
   Noclip.MaxForce = Vector3.new(100000,100000,100000)
   Noclip.Velocity = Vector3.new(0,0,0)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("B
odyClip") then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("B
odyClip"):Destroy()
end)
spawn(function()
   pcall(function()
   game:GetService("RunService").Stepped:Connect(function()

-- ====== PAGE 31/197 ======
pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
   if v:IsA("BasePart") then
   v.CanCollide = false
      end)
      end)
end)
local Setting_Left = Tab.Tab_Setting:addSection()
local Main_Setting = Setting_Left:addMenu('#Main Setting')
local WeaponList = {"Melee","Blox Fruit","Sword","Gun"}
SelectWeaponFarm = "Melee"
Main_Setting:addDropdown("Select Weapon", SelectWeaponFarm,
WeaponList,function(weaponfunc)
   SelectWeaponFarm = weaponfunc
end)
task.spawn(function()
   while wait() do
   pcall(function()
   if SelectWeaponFarm == "Melee" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Melee" then
   SelectWeapon = v.Name
   elseif SelectWeaponFarm == "Sword" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Sword" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
   SelectWeapon = v.Name
   elseif SelectWeaponFarm == "Blox Fruit" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Blox Fruit" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then

-- ====== PAGE 32/197 ======
   SelectWeapon = v.Name
   elseif SelectWeaponFarm == "Gun" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Gun" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
   SelectWeapon = v.Name
      end)
end)
local FarmTable = {
   "Above",
   "Beside"
}}
AutoFarmType = "Above"
Main_Setting:addDropdown("Select Farm Type", AutoFarmType, FarmTable,
function(Value)
   AutoFarmType = Value
end)
spawn(function()
   while wait() do
   if AutoFarmType == "Above" then
   Farm_Mode = CFrame.new(0,DisFarm,0) * CFrame.Angles(math.rad(-90),0,0)
   elseif AutoFarmType == "Beside" then
   Farm_Mode = CFrame.new(0,2,DisFarm) * CFrame.Angles(math.rad(0),0,0)
end)
DisFarm = 30
Main_Setting:addTextbox("Distance Farm", DisFarm, function(Value)
   DisFarm = Value
end)
spawn(function()
   local gg = getrawmetatable(game)
   local old = gg.__namecall
   setreadonly(gg,false)
   gg.__namecall = newcclosure(function(...)
   local method = getnamecallmethod()
   local args = {...}
   if tostring(method) == "FireServer" then
   if tostring(args[1]) == "RemoteEvent" then
   if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false"
   if type(args[2]) == "vector" then
   args[2] = DragonHitPosition

-- ====== PAGE 33/197 ======
   args[2] = CFrame.new(DragonHitPosition)
   return old(unpack(args))
   return old(...)
      end)
end)
function getHead()
   local returntable = {}
   local plr = game:GetService("Players").LocalPlayer
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0
   if (v.Head.Position -
plr.Character.HumanoidRootPart.Position).Magnitude < 70 then
   table.insert(returntable, v.HumanoidRootPart)
function FastShooted()
   local plr = game:GetService("Players").LocalPlayer
   local ShootGunEvent =
game:GetService("ReplicatedStorage").Modules.Net["RE/ShootGunEvent"]
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and v:FindFirstChild("Humanoid").Health > 0
   local toolEquiped = plr.Character:FindFirstChildOfClass("Tool")
   if (v.HumanoidRootPart.Position -
plr.Character.HumanoidRootPart.Position).Magnitude < 50 then
   local toolEquiped = plr.Character:FindFirstChildOfClass("Tool")
   if toolEquiped.ToolTip == "Gun" and RaidAura == false then
plr.Character[SelectWeaponFarm].RemoteFunctionShoot:InvokeServer(v.HumanoidRootPart
   ShootGunEvent:FireServer(v.HumanoidRootPart.Position, {[1] =
v.HumanoidRootPart})
function FastM1()
   local plr = game:GetService("Players").LocalPlayer
   local getHeadPositionAttack = getHeadPosition()
   for i = 1, #getHeadPositionAttack do
   call(function()
   if plr.Character:FindFirstChild("Dragon-Dragon") then
   plr.Character["Dragon-
Dragon"].LeftClickRemote:FireServer(getHeadPositionAttack[i], 1)
   plr.Character["Dragon-Dragon"].RemoteEvent:FireServer(false)
   sethiddenproperty(plr, "SimulationRadius", math.huge)

-- ====== PAGE 34/197 ======
      end)
function FastAttacked()
   local plr = game:GetService("Players").LocalPlayer
   local getHeadAttack = getHead()
   local RegisterAttack =
game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterAttack"]
   local RegisterHit =
game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterHit"]
   for i = 1, #getHeadAttack do
   pcall(function()
   local toolEquiped = plr.Character:FindFirstChildOfClass("Tool")
   if toolEquiped.ToolTip == "Melee" or toolEquiped.ToolTip == "Sword"
and RaidAura == false then
   RegisterAttack:FireServer(0.0000001)
   RegisterHit:FireServer(getHeadAttack[i], {})
   sethiddenproperty(plr, "SimulationRadius", math.huge)
      end)
local CombatController =
require(game:GetService("ReplicatedStorage").Controllers.CombatController)
FastAttack = true
Main_Setting:addToggle('Fast Attack (Melee and Sword)', FastAttack, function(Value)
   FastAttack = Value
end)
spawn(function()
   pcall(function()
   local plr = game:GetService("Players").LocalPlayer
   local CameraShakerR =
require(game.ReplicatedStorage.Util.CameraShaker)
   repeat task.wait()
   FastAttacked()
   CameraShakerR:Stop()
      end)
end)
Main_Setting:addToggle('Fast Attack (Gun)', FastShot, function(Value)
   FastShot = Value
end)
spawn(function()
   while task.wait() do

-- ====== PAGE 35/197 ======
   pcall(function()
   local plr = game:GetService("Players").LocalPlayer
   local CameraShakerR =
require(game.ReplicatedStorage.Util.CameraShaker)
   repeat task.wait()
   FastShooted()
   CameraShakerR:Stop()
      end)
end)
function AttackToPlayers()
   local plr = game:GetService("Players").LocalPlayer
   local RegisterAttack =
game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterAttack"]
   local RegisterHit =
game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterHit"]
   for i,v in pairs(game.Players:GetChildren()) do
   if v.Character:FindFirstChild("Humanoid") and
v.Character:FindFirstChild("Humanoid").Health > 0 then
   if (v.Character.HumanoidRootPart.Position -
plr.Character.HumanoidRootPart.Position).Magnitude < 50 then
   local toolEquiped = plr.Character:FindFirstChildOfClass("Tool")
   if toolEquiped.ToolTip == "Melee" or toolEquiped.ToolTip == "Sword"
   RegisterAttack:FireServer(0.1)
   RegisterHit:FireServer(v.Character.Head, {})
Main_Setting:addToggle('Attack Melee Player', AttackToPlayersNow, function(Value)
   AttackToPlayersNow = Value
end)
spawn(function()
   while task.wait() do
   local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
   CameraShakerR:Stop()
   pcall(function()
   repeat task.wait()
   AttackToPlayers()
      end)
end)
local AttackList = {"0.100 (Risk)", "0.165", "0.175 (Default)", "0.185", "0.200",
"0.300", "0.500", "0.700 (Slow)"}
FastAttackSelected = "0.175 (Default)"
Main_Setting:addDropdown("Fast Attack Delay", FastAttackSelected, AttackList,
function(Value)

-- ====== PAGE 36/197 ======
   FastAttackSelected = Value
end)
spawn(function()
   while task.wait() do
   if FastAttackSelected == "0.100 (Risk)" then
   FastAttackDelay = 0.1
   elseif FastAttackSelected == "0.165" then
   FastAttackDelay = 0.165
   elseif FastAttackSelected == "0.175 (Default)" then
   FastAttackDelay = 0.175
   elseif FastAttackSelected == "0.185" then
   FastAttackDelay = 0.185
   elseif FastAttackSelected == "0.200" then
   FastAttackDelay = 0.2
   elseif FastAttackSelected == "0.300" then
   FastAttackDelay = 0.3
   elseif FastAttackSelected == "0.500" then
   FastAttackDelay = 0.5
   elseif FastAttackSelected == "0.700 (Slow)" then
   FastAttackDelay = 0.7
end)
-[/ Fast Attack
local CombatFramework =
require(game:GetService('Players').LocalPlayer.PlayerScripts.CombatFramework)
function GetCurrentBlade()
   local GetFastAttack = debug.getupvalues(CombatFramework)[2]
   local activeController = GetFastAttack.activeController
   local blades = activeController.blades[1]
   while blades.Parent ~= game.Players.LocalPlayer.Character do blades =
function AttackNoCD()
   local plr = game:GetService("Players").LocalPlayer
   local GetFastAttack = debug.getupvalues(CombatFramework)[2]
Third Parties    local activeController = GetFastAttack.activeController
   local getBladeHits =
require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(plr.Character,
{plr.Character.HumanoidRootPart},60)
   local cac = {}
   local hash = {}
   for k, v in pairs(getBladeHits) do
   if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent]
   table.insert(cac, v.Parent.HumanoidRootPart)
   hash[v.Parent] = true
   getBladeHits = cac

-- ====== PAGE 37/197 ======
   local u8 = debug.getupvalue(activeController.attack, 5)
   local u9 = debug.getupvalue(activeController.attack, 6)
   local u7 = debug.getupvalue(activeController.attack, 4)
   local u10 = debug.getupvalue(activeController.attack, 7)
   local u13 = u7 * 798405
   (function()
   u8 = math.floor(u12 / u9)
      end)()
   u10 = u10 + 1
   debug.setupvalue(activeController.attack, 5, u8)
   debug.setupvalue(activeController.attack, 6, u9)
   debug.setupvalue(activeController.attack, 4, u7)
   debug.setupvalue(activeController.attack, 7, u10)
   pcall(function()
   if plr.Character:FindFirstChildOfClass("Tool") and
activeController.blades and activeController.blades[1] then
   activeController.animator.anims.basic[1]:Play(0.01,0.01,0.01)
game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",t
ostring(GetCurrentBlade()))
game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776
* 16777215), u10)
game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit",
getBladeHits, i, "")
      end)
end]]
--[[local FastAttack = true
Main_Setting:addToggle('Fast Attack 1 (Selected Delay)', FastAttack,
function(Value)
   FastAttack = Value
end)]]
Third Parties --[[spawn(function()
   while task.wait() do
   local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
   CameraShakerR:Stop()
   pcall(function()
   repeat task.wait(FastAttackDelay)
   AttackNoCD()
      end)
end)]]

-- ====== PAGE 38/197 ======
--[[Main_Setting:addToggle('Fast Attack 2 (Without Selected Delay)',
MobileFastAttack, function(Value)
   MobileFastAttack = Value
end)
spawn(function()
   while task.wait() do
   local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
   CameraShakerR:Stop()
   pcall(function()
   local CombatFrameworkLib =
getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.PlayerModu
le.ControlModule))
   local CmrFwLib = CombatFrameworkLib[2]
   local activeController = CmrFwLib.activeController
activeController.timeToNextAttack = 0
   activeController.attacking = false
   activeController.blocking = false
   activeController.timeToNextBlock = 0
   activeController.increment = 0
   activeController.hitboxMagnitude = 100
   activeController.focusStart = 0
   activeController.humanoid.AutoRotate = 0
   activeController.animator.anims.basic[1]:Play(0.01,0.01,0.01)
      end)
end)]]
function BringMonster(TargetName, TargetCFrame)
   local sethiddenproperty = sethiddenproperty or (function(...) return ... end)
   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v.Name == TargetName then
   if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
   if (v.HumanoidRootPart.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
tonumber(bringfrec) then
   v.HumanoidRootPart.CFrame = TargetCFrame
   v.HumanoidRootPart.CanCollide = false
may close this   banner to continue with only essentiavvl c..oHHouukimmesaa. Pnnrooiviiacddy RRPooolooicttyPPaarrtt..SSiizzee  ==  Vector3.new(60,  60,  60)
Storage Prefer ences  v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   if v.Humanoid:FindFirstChild("Animator") then
   v.Humanoid.Animator:Destroy()
   --sethiddenproperty(game.Players.LocalPlayer,
"SimulationRadius", math.huge)
   pcall(sethiddenproperty, game.Players.LocalPlayer, "SimulationRadius",
math.huge)
bringfrec = 250

-- ====== PAGE 39/197 ======
Main_Setting:addTextbox("Bring Mobs Distance (Default 250)", bringfrec,
function(Value)
   bringfrec = Value
end)
local BringMobs = true
Main_Setting:addToggle("Bring Mob", BringMobs, function(Value)
   BringMobs = Value
end)
spawn(function()
   while task.wait() do
   if BringMobs and (LevelFarmQuest or LevelFarmNoQuest) then
   pcall(function()
   BringMonster(Level_Farm_Name, Level_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(Bone_Farm_Name, Bone_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(Ecto_Farm_Name, Ecto_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(Nearest_Farm_Name, Nearest_Farm_CFrame)
      end)
   elseif BringMobs and (SelectMonster_Quest_Farm or
SelectMonster_NoQuest_Farm) then
   pcall(function()
   BringMonster(SelectMonster_Farm_Name, SelectMonster_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(Material_Farm_Name, Material_Farm_CFrame)
      end)
Storage Prefer ences  elseif BringMobs and (GunMastery_Farm or DevilMastery_Farm) then
   pcall(function()
   BringMonster(Mastery_Farm_Name, Mastery_Farm_CFrame)
Storag  e    end)
   pcall(function()
   BringMonster(Rengoku_Farm_Name, Rengoku_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(CakePrince_Farm_Name, CakePrince_Farm_CFrame)
      end)
   pcall(function()

-- ====== PAGE 40/197 ======
   BringMonster(DoughKing_Farm_Name, DoughKing_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(Citizen_Farm_Name, Citizen_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(EvoV2_Farm_Name, EvoV2_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(Bartilo_Farm_Name, Bartilo_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(SoulGuitar_Farm_Name, SoulGuitar_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(Musketere_Farm_Name, Musketere_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(Ancient_Farm_Name, Ancient_Farm_CFrame)
      end)
   pcall(function()
   BringMonster(PirateCastle_Name, PirateCastle_CFrame)
      end)
end)
may close this MMbaaaniinennr __toSS ceeottntttiniiuenn wggit::h aaonddlydd eTTsooseggnggtialll eeco((o""kiBBesyy. ppPraaivssacssy    PoTTleeicllyeeppoorrtt"",,  ByPassTP,  function(Value)
Storage Prefer  ences ByPassTP  ==  Value
end)
Storaglleooccaall  AutoSetSpawn  ==  true
Main_Setting:addToggle('Set Spawn Point', AutoSetSpawn, function(Value)
   AutoSetSpawn = Value
end)
spawn(function()
   while wait() do
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end)

-- ====== PAGE 41/197 ======
Main_Setting:addButton('Reset Character', function()
   local playerc = game.Players.LocalPlayer.Character
   for i,v in pairs(playerc:GetDescendants()) do
   if v:IsA('BasePart') then
   v:Destroy()
end)
local Setting_Right = Tab.Tab_Setting:addSection()
local Skill_Setting = Setting_Right:addMenu('#Skill Mastery')
Skill_Setting:addToggle('Use Skill Z', _G.SkillZ, function(Value)
   _G.SkillZ = Value
end)
Skill_Setting:addToggle('Use Skill X', _G.SkillX, function(Value)
   _G.SkillX = Value
end)
Skill_Setting:addToggle('Use Skill C', _G.SkillC, function(Value)
   _G.SkillC = Value
end)
Skill_Setting:addToggle('Use Skill V', _G.SkillV, function(Value)
   _G.SkillV = Value
end)
Skill_Setting:addToggle('Use Skill F', _G.SkillF, function(Value)
   _G.SkillF = Value
end)
local Ability_Settings = Setting_Right:addMenu('#Ability Settings')
local BusoHaki = true
Ability_Settings:addToggle("Buso Haki", BusoHaki, function(Value)
   BusoHaki = Value
end)
spawn(function()
   while wait() do
   if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end)
Ability_Settings:addToggle("Ken Haki", KenHaki, function(Value)
   KenHaki = Value

-- ====== PAGE 42/197 ======
end)
spawn(function()
   while wait() do
   if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight")
   game:service('VirtualInputManager'):SendKeyEvent(true, "K", false,
game)
   wait(.1)
   game:service('VirtualInputManager'):SendKeyEvent(false, "K", false,
game)
end)
local Misc_Settings = Setting_Right:addMenu('#Misc Setting')
Misc_Settings:addToggle("Disable Audio Effect", DeleteAudioEffect, function(Value)
   DeleteAudioEffect = Value
end)
spawn(function()
   while wait() do
   for i,v in pairs(game:GetService("Workspace")
["_WorldOrigin"]:GetChildren()) do
   if v.Name == "Sounds" then
   for i2,v2 in pairs(v:GetChildren()) do
   if v2:IsA("Part") then
   v2:Destroy()
   if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name ==
("SwordSlash") or v.Name == ("SlashTail") then
   v:Destroy()
end)
Misc_Settings:addToggle('Hide Notification', HideNotification, function(Value)
   HideNotification = Value
end)
Targetsseppd aaAdwwvnne((rtiffsiuungnnccttiioonn(())
   while task.wait() do
Analytppicaasiirrss((ggaammee..PPllaayyeerrss..LLooccaallPPllaayyeerr..PPllaayyeerrGGuuii..NNoottiiffiiccaattiioonnss::GGeettCChhiillddrreenn(())))  do
   v:Destroy()
end)
Misc_Settings:addButton("Destroy Effect Animation", function()

-- ====== PAGE 43/197 ======
   game:GetService("ReplicatedStorage").Assets.Models:Destroy()
   game:GetService("ReplicatedStorage").Assets.GUI:Destroy()
   game:GetService("ReplicatedStorage").Assets.SlashHit:Destroy()
pairs(game:GetService("ReplicatedStorage").Effect.Container.Death:GetChildren()) do
   v:Destroy()
pairs(game:GetService("ReplicatedStorage").Effect.Container.Respawn:GetChildren())
   v:Destroy()
end)
local Sea_Left = Tab.Tab_Sea:addSection()
local Sea_Farm = Sea_Left:addMenu('#Sea Event')
function TPB(BoatsPos)
   local Distance = (BoatsPos.Position -
game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.Position).Magnitude
   Speed = SpeedBoatTween
game:GetService("TweenService"):Create(game:GetService("Workspace").Boats.PirateBri
gade.VehicleSeat,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame =
game:GetService("TweenService"):Create(game:GetService("Workspace").Boats.PirateBri
gade.VehicleSeat,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame =
BoatsPos}):Cancel()
function StopBoats(target)
   _G.StopTween = true
Target  ed Advertisingwwaaiitt((..11))
   TPB(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame)
Perso  nalization  wait(.1)
   _G.StopTween = false
spawn(function()
   pcall(function()
   game:GetService("RunService").Stepped:Connect(function()

-- ====== PAGE 44/197 ======
pairs(game:GetService("Workspace").Boats.PirateBrigade:GetDescendants()) do
   if v:IsA("BasePart") then
   v.CanCollide = false
      end)
      end)
end)
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.BodyVelocity.MaxForce
= Vector3.new(100000,100000,100000)
game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.BodyVelocity.Velocity
= Vector3.new(0,0,0)
game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.BodyVelocity.MaxForce
= Vector3.new(100000, 0, 100000)
game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.BodyVelocity.Velocity
= Vector3.new(0,0,0)
      end)
end)
   AutoSail = Value
   StopBoats(AutoSail)
   CancelTween(AutoSail)
end)
spawn(function()
   local TikiPost = CFrame.new(-16206.459, 9.05658627, 474.140656,
0.999718606, -4.92249299e-08, 0.0237221234)
   local RoughSeaPos = CFrame.new(-47041.6641, 10.8365746, -6858.74072,
09, -0.709950268, 0.0289605707, 0.703656077)
   pcall(function()
game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
   BTP(TikiPost)
   Tween(TikiPost)
   if (TikiPost.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
   local args = {

-- ====== PAGE 45/197 ======
   [1] = "BuyBoat",
   [2] = "PirateBrigade"
      }}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
Tween(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame *
CFrame.new(0,1,0))
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
   if game.Workspace.Enemies:FindFirstChild("Terrorshark") or
game.Workspace.Enemies:FindFirstChild("Shark") or
game.Workspace.Enemies:FindFirstChild("Piranha") or
game.Workspace.Enemies:FindFirstChild("Fish Crew Member") or
game.Workspace.Enemies:FindFirstChild('PirateGrandBrigade') or
game.Workspace.Enemies:FindFirstChild('PirateBrigade') or
game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
StopBoats(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame)
   for i,v in pairs(game.Workspace.Enemies:GetChildren())
   if v.Name == "Terrorshark" or v.Name == "Shark" or
v.Name == "Piranha" or v.Name == "Fish Crew Member" then
game:GetService("RunService").Heartbeat:wait()
TPB(v.HumanoidRootPart.CFrame *
CFrame.new(50, 5, 0))
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   for i,v in pairs(game.Workspace.Enemies:GetChildren())
   if v.Name == "PirateGrandBrigade" or v.Name ==
"PirateBrigade" then
game:GetService("RunService").Heartbeat:wait()
TPB(v.VehicleSeat.CFrame * CFrame.new(50,
5,  0))
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
pairs(game.Workspace.SeaBeasts:GetChildren()) do
   if v.Name == "SeaBeast1" then

-- ====== PAGE 46/197 ======
game:GetService("RunService").Heartbeat:wait()
TPB(v.RootPart.CFrame * CFrame.new(50, 5,
0))
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
game:GetService("Workspace").SeaBeast:FindFirstChild(v.Name)
   TPB(RoughSeaPos)
   local CameraShakerR =
require(game.ReplicatedStorage.Util.CameraShaker)
   CameraShakerR:Stop()
   if (RoughSeaPos.Position -
game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.Position).magnitude <=
StopBoats(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame)
   game.Workspace.Boats.PirateBrigade:Destroy()
      end)
end)
Sea_Farm:addToggle('Auto W', AutoTouchW, function(Value)
   AutoTouchW = Value
end)
spawn(function()
   game:service('VirtualInputManager'):SendKeyEvent(true, "W", false,
game)
   wait(.1)
   game:service('VirtualInputManager'):SendKeyEvent(false, "W", false,
game)
end)
Sea_Farm:addToggle('Attack TerrorShark [Boss]', AutoFarmTerrorShark,
function(Value)
   AutoFarmTerrorShark = Value
   CancelTween(AutoFarmTerrorShark)
end)
spawn(function()
   while task.wait() do
   if game.Workspace.Enemies:FindFirstChild("Terrorshark") then
   for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
   if v.Name == "Terrorshark" then
   if v:FindFirstChild("Humanoid") and

-- ====== PAGE 47/197 ======
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
game:GetService("RunService").Heartbeat:wait()
   SeaUseSkill = true
   EquipTool(SelectWeaponSeaFarm)
   Tween(v.HumanoidRootPart.CFrame *
CFrame.new(0,50,0))
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   SeaMonName = v.Name
   SeaMonCFrame = v.HumanoidRootPart.CFrame
   SeaMonPosition = v.HumanoidRootPart.Position
   AutoClick()
= false
v.Humanoid.Health <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   SeaUseSkill = false
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
Tween(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame *
CFrame.new(0,1,0))
      end)
end)
Personal data mSSaeey aab__e FFpraaocrremmss::eaad ddtodd dTTooo thggegg flloleelo((wi''ngAA: ttustteaa pccrekkc  iseFF giiessohhlo((caCCtirronee dwwa//taSS ahhndaa arrctkkiv//ePPly iiscrraaan nndehhvaaic))e ''ch,,a  raAActuuerttisooticFFsaa frrormm idFFeiintssi hhc,,at  ionff. unction(Value)
   AutoFarmFish = Value
   CancelTween(AutoFarmFish)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game.Workspace.Enemies:FindFirstChild("Shark") or
game.Workspace.Enemies:FindFirstChild("Piranha") or
game.Workspace.Enemies:FindFirstChild("Fish Crew Member") then
   for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
   if v.Name == "Shark" or v.Name == "Piranha" or v.Name ==
"Fish Crew Member" then
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
game:GetService("RunService").Heartbeat:wait()
      SaEEvqqeuu piirppeTTfeoorooelln((cSSeeeslleeccttWWeeaappoonnSSeeaaFFaarrmm))
   Tween(v.HumanoidRootPart.CFrame *
CFrame.new(0,DisSeaFarm,0))
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)

-- ====== PAGE 48/197 ======
   v.HumanoidRootPart.Transparency = 1
   AutoClick()
= false
v.Humanoid.Health <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
Tween(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame *
CFrame.new(0,1,0))
      end)
end)
Sea_Farm:addToggle('Attack Sea Beast)', AutoFarmSeaBeast, function(Value)
   AutoFarmSeaBeast = Value
   CancelTween(AutoFarmSeaBeast)
end)
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
   for i,v in pairs (game.Workspace.SeaBeasts:GetChildren()) do
   if v.Name == "SeaBeast1" then
   if v:FindFirstChild("RootPart") and v.Health.Value > 0
game:GetService("RunService").Heartbeat:wait()
   SeaUseSkill = true
   EquipTool(SelectWeaponSeaFarm)
   Tween(v.RootPart.CFrame * CFrame.new(0,300,0))
   v.RootPart.CanCollide = false
   v.RootPart.Size = Vector3.new(60,60,60)
   v.RootPart.Transparency = 1
   SeaMonName = v.Name
   SeaMonCFrame = v.RootPart.CFrame
   SeaMonPosition = v.RootPart.Position
   AutoClick()
= false
v.Health.Value <= 0 or not
game:GetService("Workspace").SeaBeasts:FindFirstChild(v.Name)
   SeaUseSkill = false

-- ====== PAGE 49/197 ======
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
Tween(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame *
CFrame.new(0,1,0))
      end)
end)
Sea_Farm:addToggle('Attack Ghost Boats)', AutoFarmGhostBoats, function(Value)
   AutoFarmGhostBoats = Value
   CancelTween(AutoFarmGhostBoats)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game.Workspace.Enemies:FindFirstChild("PirateBrigade") or
game.Workspace.Enemies:FindFirstChild("PirateGrandBrigade") then
   for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
   if v.Name == "PirateBrigade" or v.Name ==
"PirateGrandBrigade" then
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("VehicleSeat") and v.Humanoid.Value > 0 then
game:GetService("RunService").Heartbeat:wait()
   SeaUseSkill = true
   EquipTool(SelectWeaponSeaFarm)
   Tween(v.VehicleSeat.CFrame *
CFrame.new(0,70,0))
   v.VehicleSeat.CanCollide = false
   v.VehicleSeat.Size = Vector3.new(60,60,60)
   v.VehicleSeat.Transparency = 1
   SeaMonName = v.Name
   SeaMonPosition = v.VehicleSeat.Position
   AutoClick()
= false
v.Humanoid.Value <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   SeaUseSkill = false
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
Tween(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame *
CFrame.new(0,1,0))
      end)

-- ====== PAGE 50/197 ======
end)
local Sea_Right = Tab.Tab_Sea:addSection()
local Config_Sea = Sea_Right:addMenu('#Config')
local WeaponList = {"Melee","Blox Fruit","Sword","Gun"}
Config_Sea:addDropdown("Select Weapon", SelectWeaponSeaFarm,
WeaponList,function(weaponfunc)
   SelectWeaponSeaFarm = weaponfunc
end)
spawn(function()
   while wait() do
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v.ToolTip == SelectWeaponSeaFarm then
   SelectWeaponSeaFarm = v.Name
end)
DisSeaFarm = 30
Config_Sea:addTextbox("Distance Sea Farm", DisSeaFarm, function(Value)
   DisSeaFarm = Value
end)
SpeedBoatTween = 200
Config_Sea:addTextbox("Tween Boat Speed", SpeedBoatTween, function(Value)
   SpeedBoatTween = Value
end)
SpeedAllBoat = 100
Config_Sea:addTextbox("Speed Boat Hack", SpeedAllBoat, function(Value)
   game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.MaxSpeed =
end)
Config_Sea:addToggle('Skill Z', _G.SeaSkillZ, function(Value)
   _G.SeaSkillZ = Value
end)
Config_Sea:addToggle('Skill X', _G.SeaSkillX, function(Value)
   _G.SeaSkillX = Value
end)
Config_Sea:addToggle('Skill C', _G.SeaSkillC, function(Value)
   _G.SeaSkillC = Value
end)
Config_Sea:addToggle('Skill V', _G.SeaSkillV, function(Value)
   _G.SeaSkillV = Value
end)

-- ====== PAGE 51/197 ======
Config_Sea:addToggle('Skill F', _G.SeaSkillF, function(Value)
   _G.SeaSkillF = Value
end)
spawn(function()
   local gg = getrawmetatable(game)
   local old = gg.__namecall
   setreadonly(gg,false)
   gg.__namecall = newcclosure(function(...)
   local method = getnamecallmethod()
   local args = {...}
   if tostring(method) == "FireServer" then
   if tostring(args[1]) == "RemoteEvent" then
   if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false"
   if type(args[2]) == "vector" then
   args[2] = SeaMonPosition
   args[2] = CFrame.new(SeaMonPosition)
   return old(unpack(args))
   return old(...)
      end)
end)
spawn(function()
   while task.wait() do
   pcall(function()
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v.Name == SeaMonName then
   repeat game:GetService("RunService").Heartbeat:wait()
game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponSeaFarm
) then
game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponSeaFarm
).MousePos.Value = SeaMonPosition
game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)

-- ====== PAGE 52/197 ======
game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
   wait(.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
AutoFarmTerrorShark or not SeaUseSkill or v.Humanoid.Health == 0 or
      end)
end)
local Race_V4_Left = Tab.Tab_RaceV4:addSection()
local MirageCheck = IslandInfo:addLabel("")
spawn(function()
while task.wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage
Island") then
   MirageCheck:Refresh("Mirage Island : Spawn")
   MirageCheck:Refresh("Mirage Island : Not Spawn")
end)
local KitsuneCheck = IslandInfo:addLabel("")
spawn(function()
while task.wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune
Island") then
   KitsuneCheck:Refresh("Kitsune Island : Spawn")

-- ====== PAGE 53/197 ======
   KitsuneCheck:Refresh("Kitsune Island : Not Spawn")
end)
local MoonCheck = IslandInfo:addLabel("")
spawn(function()
   while wait() do
   if game:GetService("Lighting").Sky.MoonTextureId ==
"http://www.roblox.com/asset/?id=9709149431" then
   MoonCheck:Refresh("Moon Status :  100%")
   elseif game:GetService("Lighting").Sky.MoonTextureId ==
"http://www.roblox.com/asset/?id=9709149052" then
   MoonCheck:Refresh("Moon Status :  75%")
   elseif game:GetService("Lighting").Sky.MoonTextureId ==
"http://www.roblox.com/asset/?id=9709143733" then
   MoonCheck:Refresh("Moon Status :  50%")
   elseif game:GetService("Lighting").Sky.MoonTextureId ==
"http://www.roblox.com/asset/?id=9709150401" then
   MoonCheck:Refresh("Moon Status :  25%")
   elseif game:GetService("Lighting").Sky.MoonTextureId ==
"http://www.roblox.com/asset/?id=9709149680" then
   MoonCheck:Refresh("Moon Status :  15%")
   MoonCheck:Refresh("Moon Status :  0%")
end)
local Mirage_Island = Race_V4_Left:addMenu('#Mirage Island')
Mirage_Island:addToggle("Mirage ESP", MirageIslandEsp, function(Value)
   MirageIslandEsp = Value
end)
spawn(function()
   pcall(function()
   for i,v in pairs(game:GetService("Workspace")
["_WorldOrigin"].Locations:GetChildren()) do
   if v.Name == "Mirage Island" then
   if not v:FindFirstChild("MirageESPIsland") then
   local BillboardGui = Instance.new("BillboardGui")
   local TextLabel = Instance.new("TextLabel")
BillboardGui.Parent = v
   BillboardGui.ZIndexBehavior =
   BillboardGui.Active = true
   BillboardGui.Name = "MirageESPIsland"
   BillboardGui.AlwaysOnTop = true
   BillboardGui.LightInfluence = 1.000
   BillboardGui.Size = UDim2.new(0, 200, 0, 50)
      BBiillllbbooaarrddGGAuuciic..eSSptttuu AddllssOOffffsseett  ==  Vector3.new(0,  2.5,  0)
TextLabel.Parent = BillboardGui

-- ====== PAGE 54/197 ======
   TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255,
255)
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Size = UDim2.new(0, 200, 0, 50)
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
   TextLabel.FontSize = "Size14"
   TextLabel.TextStrokeTransparency = 0.5
   local Dis =
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.Position).Magnitude / 10)
   v.MirageESPIsland.TextLabel.Text = v.Name.."\
n".."["..Dis.."]"
      end)
   for i,v in pairs (game:GetService("Workspace")
["_WorldOrigin"].Locations:GetChildren()) do
   if v.Name == "Mirage Island" then
   if v:FindFirstChild("MirageESPIsland") then
   v.MirageESPIsland:Destroy()
end)
Mirage_Island:addToggle("Gear ESP", GearESP, function(Value)
   GearESP = Value
end)
spawn(function()
   while wait() do
   pcall(function()
pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
if v.Material ==  Enum.Material.Neon then
if not v:FindFirstChild("GearESPMirage") then
Third Parties    local BillboardGui = Instance.new("BillboardGui")
   local TextLabel = Instance.new("TextLabel")
   BillboardGui.Parent = v
   BillboardGui.ZIndexBehavior =
   BillboardGui.Active = true
   BillboardGui.Name = "GearESPMirage"
   BillboardGui.AlwaysOnTop = true
   BillboardGui.LightInfluence = 1.000
   BillboardGui.Size = UDim2.new(0, 200, 0, 50)
   BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
   TextLabel.Parent = BillboardGui
      TTeexxttLLaaAbbceeclle..pBBtaa AccllkkggrroouunnddCCoolloorr33  ==  Color3.fromRGB(255,
255, 255)
   TextLabel.BackgroundTransparency = 1.000

-- ====== PAGE 55/197 ======
   TextLabel.Size = UDim2.new(0, 200, 0, 50)
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
   TextLabel.FontSize = "Size14"
   TextLabel.TextStrokeTransparency = 0.5
   local Dis =
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.Position).Magnitude)
   v.GearESPMirage.TextLabel.Text = v.Name.." - ["..Dis.."
M]"
      end)
pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
if v:IsA("MeshPart")then
if v.Material ==  Enum.Material.Neon then
if v:FindFirstChild("GearESPMirage") then
   v:FindFirstChild("GearESPMirage"):Destroy()
end)
Mirage_Island:addToggle("Fruit Dealer ESP", AfdESP, function(Value)
   AfdESP = Value
end)
spawn(function()
   while wait() do
   pcall(function()
   for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren())
   if not v:FindFirstChild("FruitDealerESP") then
   local BillboardGui = Instance.new("BillboardGui")
Third Parties    local TextLabel = Instance.new("TextLabel")
   BillboardGui.Parent = v
   BillboardGui.ZIndexBehavior =
   BillboardGui.Active = true
   BillboardGui.Name = "FruitDealerESP"
   BillboardGui.AlwaysOnTop = true
   BillboardGui.LightInfluence = 1.000
   BillboardGui.Size = UDim2.new(0, 200, 0, 50)
   BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
   TextLabel.Parent = BillboardGui
   TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255,
255)    Accept All
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Size = UDim2.new(0, 200, 0, 50)

-- ====== PAGE 56/197 ======
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
   TextLabel.FontSize = "Size14"
   TextLabel.TextStrokeTransparency = 0.5
   local Dis =
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.HumanoidRootPart.Position).Magnitude)
   v.FruitDealerESP.TextLabel.Text = v.Name.." - ["..Dis.."
M]"
      end)
   for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
   if v.Name == "Advanced Fruit Dealer" then
   if v:FindFirstChild("FruitDealerESP") then
   v.FruitDealerESP:Destroy()
end)
Mirage_Island:addToggle("Teleport to Mirage", TeleporttoMirage, function(Value)
   TeleporttoMirage = Value
   CancelTween(TeleporttoMirage)
end)
spawn(function()
   while task.wait() do
   if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
   _G.CenterMI =
game:GetService("Workspace").Map.MysticIsland.Center.Position
   Tween(CFrame.new(_G.CenterMI))
Mirage_Island:addToggle("Teleport to Gear", TeleporttoGear, function(Value)
Third Parties    TeleporttoGear = Value
   CancelTween(TeleporttoGear)
end)
spawn(function()
   while task.wait() do
   if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
if v:IsA("MeshPart")then
if v.Material ==  Enum.Material.Neon then
Tween(v.CFrame)

-- ====== PAGE 57/197 ======
end)
Mirage_Island:addToggle("Teleport to Advance Fruit Dealer", TeleporttoFruitDealer,
function(Value)
   TeleporttoFruitDealer = Value
   CancelTween(TeleporttoFruitDealer)
end)
spawn(function()
   while wait() do
   if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit
Dealer") then
   Tween(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit
Dealer"].HumanoidRootPart.Position))
end)
local Kitsune_Island = Race_V4_Left:addMenu('#Kitsune Island')
Kitsune_Island:addToggle("Kitsune ESP", KitsuneIslandEsp, function(Value)
   KitsuneIslandEsp = Value
end)
spawn(function()
   while wait() do
   pcall(function()
   for i,v in pairs(game:GetService("Workspace")
["_WorldOrigin"].Locations:GetChildren()) do
   if v.Name == "Kitsune Island" then
   if not v:FindFirstChild("KitsuneESPIsland") then
   local BillboardGui = Instance.new("BillboardGui")
   local TextLabel = Instance.new("TextLabel")
BillboardGui.Parent = v
   BillboardGui.ZIndexBehavior =
   BillboardGui.Active = true
   BillboardGui.Name = "KitsuneESPIsland"
Storag  e    BillboardGui.AlwaysOnTop  ==  true
   BillboardGui.LightInfluence = 1.000
   BillboardGui.Size = UDim2.new(0, 200, 0, 50)
   BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
TextLabel.Parent = BillboardGui
   TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255,
255)
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Size = UDim2.new(0, 200, 0, 50)
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
   TextLabel.FontSize = "Size14"
   TextLabel.TextStrokeTransparency = 0.5

-- ====== PAGE 58/197 ======
   local Dis =
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.Position).Magnitude / 10)
   v.KitsuneESPIsland.TextLabel.Text = v.Name.."\
n".."["..Dis.."]"
      end)
   for i,v in pairs (game:GetService("Workspace")
["_WorldOrigin"].Locations:GetChildren()) do
   if v.Name == "Kitsune Island" then
   if v:FindFirstChild("KitsuneESPIsland") then
   v.KitsuneESPIsland:Destroy()
end)
Kitsune_Island:addToggle("Teleport to Kitsune", TeleporttoKitsune, function(Value)
   TeleporttoKitsune = Value
   CancelTween(TeleporttoKitsune)
end)
spawn(function()
   while task.wait() do
   if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
   local kitsuneislands =
game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
   if kitsuneislands:FindFirstChild("ShrineActive") then
pairs(kitsuneislands:FindFirstChild("ShrineActive"):GetDescendants()) do
   if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
   Tween(v.CFrame)
end)
Kitsune_Island:addToggle("Collect Azure", CollectAzureAmber, function(Value)
   CollectAzureAmber = Value
   CancelTween(CollectAzureAmber)
end)
spawn(function()
   while wait() do
   pcall(function()
game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
Tween(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Pa
rt").CFrame)

-- ====== PAGE 59/197 ======
      end)
end)
local Race_V4_Right = Tab.Tab_RaceV4:addSection()
local RaceV4 = Race_V4_Right:addMenu('#Upgrade Race')
RaceV4:addToggle("Race Door", RaceDoors, function(Value)
   RaceDoors = Value
   CancelTween(RaceDoors)
end)
spawn(function()
   while task.wait(.1) do
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
   wait(.5)
   if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human"
   TP2(CFrame.new(29221.822265625, 14890.9755859375, -
205.99114990234375))
   elseif game:GetService("Players").LocalPlayer.Data.Race.Value ==
"Skypiea" then
   TP2(CFrame.new(28960.158203125, 14919.6240234375,
235.03948974609375))
   elseif game:GetService("Players").LocalPlayer.Data.Race.Value ==
"Fishman" then
   TP2(CFrame.new(28231.17578125, 14890.9755859375, -
211.64173889160156))
   elseif game:GetService("Players").LocalPlayer.Data.Race.Value ==
"Cyborg" then
   TP2(CFrame.new(28502.681640625, 14895.9755859375, -
423.7279357910156))
   elseif game:GetService("Players").LocalPlayer.Data.Race.Value ==
"Ghoul" then
   TP2(CFrame.new(28674.244140625, 14890.6767578125,
445.4310607910156))
   elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink"
   TP2(CFrame.new(29012.341796875, 14890.9755859375, -
380.1492614746094))
end)
RaceV4:addToggle("Auto Trial", AutoCompleteRace, function(Value)
   AutoCompleteRace = Value
end)
spawn(function()
   while task.wait() do
   if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human"

-- ====== PAGE 60/197 ======
   pcall(function()
   for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
game:GetService("RunService").Heartbeat:wait()
   v.Humanoid.Health = 0
   v.HumanoidRootPart.CanCollide = false
sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.hu
ge)
game.Workspace.Enemies:FindFirstChild(v.Name)
      end)
   elseif game:GetService("Players").LocalPlayer.Data.Race.Value ==
"Skypiea" then
pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
   if v.Name ==  "snowisland_Cylinder.081" then
   TP2(v.CFrame * CFrame.new(0,0,0))
   elseif game:GetService("Players").LocalPlayer.Data.Race.Value ==
"Fishman" then
pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
   if v.Name ==  "HumanoidRootPart" then
   TP2(v.CFrame * CFrame.new(20,450,0))
pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v:IsA("Tool") then
   if v.ToolTip == "Melee" then -- "Blox Fruit" ,
"Sword" , "Wear" , "Agility"
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.Loc
alPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.Lo
PersoccnaaalillzaPPtiollnaayyeerr..CChhaarraacctteerr..HHuummaannooiiddRRoooottPPaarrtt))
   wait(.2)
game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.Loc
alPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.Lo
calPlayer.Character.HumanoidRootPart)
   wait(.2)
game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.Loca

-- ====== PAGE 61/197 ======
lPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.Loc
alPlayer.Character.HumanoidRootPart)
pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v:IsA("Tool") then
   if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" ,
"Sword" , "Wear" , "Agility"
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.Loc
alPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.Lo
calPlayer.Character.HumanoidRootPart)
   wait(.2)
game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.Loc
alPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.Lo
calPlayer.Character.HumanoidRootPart)
   wait(.2)
game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.Loca
lPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.Loc
wait(0.5)
pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v:IsA("Tool") then
   if v.ToolTip == "Sword" then -- "Blox Fruit" ,
"Sword" , "Wear" , "Agility"
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.Loc
PersoaanallliPPzalltioaanyyeerr..CChhaarraacctteerr..HHuummaannooiiddRRoooottPPaarrtt))
Analytggicaasmmee::GGeettSSeerrvviiccee((""VViirrttuuaallIInnppuuttMMaannaaggeerr""))::SSeennddKKeeyyEEvveenntt((ffaallssee,,112222,,ffaallssee,,ggaammee..PPllaayyeerrss..LLoo
calPlayer.Character.HumanoidRootPart)
   wait(.2)
game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.Loc
alPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.Lo
calPlayer.Character.HumanoidRootPart)

-- ====== PAGE 62/197 ======
   wait(.2)
game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.Loca
lPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.Loc
alPlayer.Character.HumanoidRootPart)
   wait(0.5)
pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v:IsA("Tool") then
   if v.ToolTip == "Gun" then -- "Blox Fruit" ,
"Sword" , "Wear" , "Agility"
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.Loc
alPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.Lo
calPlayer.Character.HumanoidRootPart)
   wait(.2)
game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.Loc
alPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.Lo
calPlayer.Character.HumanoidRootPart)
   wait(.2)
lPlayer.Character.HumanoidRootPart)
game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.Loc
alPlayer.Character.HumanoidRootPart)
   elseif game:GetService("Players").LocalPlayer.Data.Race.Value ==
"Cyborg" then
   TP2(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
   elseif game:GetService("Players").LocalPlayer.Data.Race.Value ==
"Ghoul" then
   pcall(function()
   if v:FindFirstChild("Humanoid") and
Persovvna::liFFzaiitionnnddFFiirrssttCChhiilldd((""HHuummaannooiiddRRoooottPPaarrtt""))  and  v.Humanoid.Health  >>  00  then
game:GetService("RunService").Heartbeat:wait()
   v.Humanoid.Health = 0
   v.HumanoidRootPart.CanCollide = false
sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.hu
ge)
game.Workspace.Enemies:FindFirstChild(v.Name)

-- ====== PAGE 63/197 ======
      end)
   elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink"
   for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
   if v.Name == "StartPoint" then
   TP2(v.CFrame* CFrame.new(0,10,0))
end)
RaceV4:addToggle("Auto Train", AutoTrain, function(Value)
   AutoTrain = Value
end)
spawn(function()
   while task.wait() do
   local AncientCFrame = CFrame.new(216.211181640625, 126.9352035522461, -
12599.0732421875)
game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
   wait(0.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
   pcall(function()
   if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa
Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar
Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Cocoa Warrior" or v.Name == "Chocolate
Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Ancient_Farm_Name = v.Name
   Ancient_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
v.Humanoid.Health <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)

-- ====== PAGE 64/197 ======
   Tween(AncientCFrame)
      end)
end)
local RaceV4_Area = Race_V4_Right:addMenu('#Area')
RaceV4_Area:addButton("Timple of Time", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
   wait(1)
   TP2(CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875))
end)
RaceV4_Area:addButton("Lever Pull", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(28575.181640625, 14936.6279296875, 72.31636810302734))
   wait(1)
   TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
end)
RaceV4_Area:addButton("Ancient One", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(28981.552734375, 14888.4267578125, -120.245849609375))
   wait(1)
   TP2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
RaceV4_Area:addButton("Safe Zone", function()
   TP2(CFrame.new(28273.0859375, 14896.5078125, 157.42063903808594))
end)
RaceV4_Area:addButton("PVP Zone", function()
   TP2(CFrame.new(28766.681640625, 14967.1455078125, -164.13290405273438))
end)
local Farm_Left = Tab.Tab_2:addSection()
local Level_Farm = Farm_Left:addMenu('#Level Farm')
Level_Farm:addToggle('Level Farm Quest', LevelFarmQuest, function(Value)
   _G.SelectMonster  = nil
   CancelTween(LevelFarmQuest)
end)
Level_Farm:addToggle('Level Farm No Quest', LevelFarmNoQuest, function(Value)

-- ====== PAGE 65/197 ======
   LevelFarmNoQuest = Value
   _G.SelectMonster  = nil
   CancelTween(LevelFarmNoQuest)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   CheckLevel()
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, NameMon) or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
   BTP(CFrameQ)
   Tween(CFrameQ)
   if (CFrameQ.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
   wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",
NameQuest, QuestLv)
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, NameMon) or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
   if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
Personal data mppaaay iibrre sspr((ocggeaassmmeeed ::toGG deeott thSSeee frrolvvloiiwiccngee: ((us""eWW poorerrckkisess ppgeaaoccloeeca""ti))on.. dEEanntaee ammndii aeecsstiv::eGGlyee sttcaCCn hhdiievllicdderr ceehannra((c))te))ris  ticddsoo for identi cation.
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == Ms then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   Level_Farm_Name = v.Name
   Level_Farm_CFrame =
   AutoClick()
game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or
game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false

-- ====== PAGE 66/197 ======
   Tween(CFrameMon)
      end)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   CheckLevel()
   if game.Workspace.Enemies:FindFirstChild(Ms) then
   for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
   if v.Name == Ms then
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   Level_Farm_Name = v.Name
   Level_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
v.Humanoid.Health <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
Personal data m  ay be processed to do the followingii: ffus  eBB pyyrePPciaasess gsseTToPPlo  catttihhonee dnnata and actively scan device characteristics for identi cation.
   BTP(CFrameMon)
   Tween(CFrameMon)
      end)
end)
local Other_Farm = Farm_Left:addMenu('#Other Farm')
Other_Farm:addToggle("Buy Random Bone", Auto_Trade_Bone, function(Value)
   Auto_Trade_Bone = Value
   while Auto_Trade_Bone do wait()
   local args = {
[1] = "Bones",
[2] = "Buy",
      [3]  ==  1,
      [4]  ==  11

-- ====== PAGE 67/197 ======
      }}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Other_Farm:addToggle('Bones Farm (Third Sea)', Farm_Bone, function(Value)
   Farm_Bone = Value
   CancelTween(Farm_Bone)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578,
5737.3603515625)
   BTP(boneframe)
   Tween(boneframe)
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie"
or v.Name =="Demonic Soul" or v.Name == "Posessed Mummy" then
   repeat game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   Bone_Farm_Name = v.Name
   Bone_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
   if v.Name == "Reborn Skeleton" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Living Zombie" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Demonic Soul" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Posessed Mummy" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
      end)
end)
Other_Farm:addToggle('Ectoplasm Farm (Second Sea)', Farm_Ectoplasm, function(Value)

-- ====== PAGE 68/197 ======
   CancelTween(Farm_Ectoplasm)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   local EctoMob = CFrame.new(904.4072265625, 181.05767822266,
33341.38671875)
   BTP(EctoMob)
   Tween(EctoMob)
   local Distance = (Vector3.new(904.4072265625, 181.05767822266,
33341.38671875) -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or
v.Name == "Ship Deckhand" or v.Name == "Ship Officer" then
   repeat game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   Ecto_Farm_Name = v.Name
   Ecto_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
v.Humanoid.Health <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
   if v.Name == "Ship Steward" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Ship Engineer" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Ship Deckhand" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Ship Officer" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
      end)
end)

-- ====== PAGE 69/197 ======
Other_Farm:addToggle('Nearest Farm', Nearest_Farm, function(Value)
   Nearest_Farm = Value
   CancelTween(Nearest_Farm)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
(game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.HumanoidRootPart.Position).Magnitude <= 1000 then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   Nearest_Farm_Name = v.Name
   Nearest_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
      end)
end)
local SelectMonster_Farm = Farm_Left:addMenu('#Select Monster Farm')
SelectMonster_Farm:addDropdown("Select Monster", _G.SelectMonster, tableMon,
function(Value)
   _G.SelectMonster = Value
end)
SelectMonster_Farm:addToggle('Auto Farm Select Monster (Quest)',
SelectMonster_Quest_Farm, function(Value)
   SelectMonster_Quest_Farm = Value
   CancelTween(SelectMonster_Quest_Farm)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   CheckLevel(_G.SelectMonster)
string.find(game:GetService("PlayerRse"je)c.t LNoocna-ElsPsleanytiealr.PlayerGui.Main.Quest.Container.Q

-- ====== PAGE 70/197 ======
uestTitle.Title.Text, NameMon) or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
   BTP(CFrameQ)
   Tween(CFrameQ)
   if (CFrameQ.Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 5 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQ
uest,QuestLv)
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, NameMon) or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
   if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == Ms then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   SelectMonster_Farm_Name = v.Name
   SelectMonster_Farm_CFrame =
   AutoClick()
v.Parent or v.Humanoid.Health <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or
game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
   Tween(CFrameMon)
      end)
end)
SelectMonster_Farm:addToggle('Auto Farm Select Monster (No Quest)',
SelectMonster_NoQuest_Farm, function(Value)
   SelectMonster_NoQuest_Farm = Value
   CancelTween(SelectMonster_NoQuest_Farm)

-- ====== PAGE 71/197 ======
end)
spawn(function()
   while task.wait() do
   pcall(function()
   CheckLevel(_G.SelectMonster)
   BTP(CFrameQ)
   Tween(CFrameQ)
   if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == Ms then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   SelectMonster_Farm_Name = v.Name
   SelectMonster_Farm_CFrame =
   AutoClick()
v.Parent or v.Humanoid.Health <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   Tween(CFrameMon)
end)
local Farm_Right = Tab.Tab_2:addSection()
local Mastery_Farm = Farm_Right:addMenu('#Mastery Farm')
KillPercent = 25
Mastery_Farm:addTextbox('Skill Percentace %', KillPercent, function(Value)
   KillPercent = Value
end)
local MasteryType = {'Quest', 'No Quest', 'Nearest', 'Bone', 'Ecto', 'Cake Prince'}
SelectedMethodMastery = "Quest"
Mastery_Farm:addDropdown('Select Method', SelectedMethodMastery, MasteryType,
function(Value)
   SelectedMethodMastery = Value
end)

-- ====== PAGE 72/197 ======
Mastery_Farm:addToggle('Auto Farm Devil Mastery', DevilMastery_Farm,
function(Value)
   DevilMastery_Farm = Value
   CancelTween(DevilMastery_Farm)
end)
spawn(function()
   pcall(function()
   while task.wait() do
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v.ToolTip == "Blox Fruit" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
   CurrentEquipDevilFruit = v.Name
      end)
end)
spawn(function()
   local gg = getrawmetatable(game)
   local old = gg.__namecall
   setreadonly(gg,false)
   gg.__namecall = newcclosure(function(...)
   local method = getnamecallmethod()
   local args = {...}
   if tostring(method) == "FireServer" then
   if tostring(args[1]) == "RemoteEvent" then
   if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false"
   if type(args[2]) == "vector" then
   args[2] = PositionSkillMasteryDevilFruit
   args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
   return old(unpack(args))
   if type(args[2]) == "vector" then
   args[2] = PositionSkillMasteryGun
   args[2] = CFrame.new(PositionSkillMasteryGun)
   return old(unpack(args))
   return old(...)
      end)
end)
spawn(function()
   while task.wait() do
   if UseSkill == true then

-- ====== PAGE 73/197 ======
   pcall(function()
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v.Name == Mastery_Farm_Name and v:FindFirstChild("Humanoid")
and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <=
   repeat game:GetService("RunService").Heartbeat:wait()
   EquipTool(CurrentEquipDevilFruit)
   PositionSkillMasteryDevilFruit =
game:GetService("Players").LocalPlayer.Character:FindFirstChild(CurrentEquipDevilFr
uit) then
game:GetService("Players").LocalPlayer.Character:FindFirstChild(CurrentEquipDevilFr
uit).MousePos.Value = PositionSkillMasteryDevilFruit
   local DevilFruitMastery =
game:GetService("Players").LocalPlayer.Character:FindFirstChild(CurrentEquipDevilFr
uit).Level.Value
   local plr = game:GetService("Players").LocalPlayer
   if _G.SkillZ and DevilFruitMastery >= 1 and
(v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <
game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
   if _G.SkillX and DevilFruitMastery >= 1 and
(v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <
game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
(v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <
game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
   if _G.SkillV and DevilFruitMastery >= 1 and
(v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <
game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
   if _G.SkillF and DevilFruitMastery >= 1 and
(v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <

-- ====== PAGE 74/197 ======
game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
   wait(.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
   until not UseSkill or not v.Parent or v.Humanoid.Health ==
0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
      end)
end)
spawn(function()
   while task.wait() do
   if DevilMastery_Farm and SelectedMethodMastery == "Quest" then
   pcall(function()
   CheckLevel()
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, NameMon) or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
   BTP(CFrameQ)
   Tween(CFrameQ)
   if (CFrameQ.Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 5 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQ
uest,QuestLv)
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
Third Parties uestTitle.Title.Text, NameMon) or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
   if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
   if v.Name == Ms then
game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <=
   UseSkill = true
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)    Accept All
   UseSkill = false
   EquipTool(SelectWeapon)

-- ====== PAGE 75/197 ======
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame =
   AutoClick()
SelectedMethodMastery == "Quest" or not v.Parent or v.Humanoid.Health == 0 or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   Tween(CFrameMon)
      end)
   elseif DevilMastery_Farm and SelectedMethodMastery == "No Quest" then
   pcall(function()
   CheckLevel()
   BTP(CFrameQ)
   Tween(CFrameQ)
   for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
   if v.Name == Ms then
   repeat game:GetService("RunService").Heartbeat:wait()
   UseSkill = true
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   UseSkill = false
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
SelectedMethodMastery == "Quest" or not v.Parent or v.Humanoid.Health == 0 or not

-- ====== PAGE 76/197 ======
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
      end)
   elseif DevilMastery_Farm and SelectedMethodMastery == "Nearest" then
   pcall(function()
   for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
   if v.Name and v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
(game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 2000 then
   repeat game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <= v.Humanoid.MaxHealth *
   UseSkill = true
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   UseSkill = false
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
SelectedMethodMastery == 'Nearest' or not v.Parent or v.Humanoid.Health == 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
      end)
   elseif DevilMastery_Farm and SelectedMethodMastery == "Bone" then
may close this   banner to continue witpph cconaalyll ells((seffntuuiannl cccottoiikieoosnn. P((r))ivacy Policy
   local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578,
5737.3603515625)
Storag  e    BTP(boneframe)
   Tween(boneframe)
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
   if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie"
or v.Name =="Demonic Soul" or v.Name == "Posessed Mummy" then
   repeat game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <= v.Humanoid.MaxHealth *
   UseSkill = true
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   UseSkill = false

-- ====== PAGE 77/197 ======
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
SelectedMethodMastery == 'Bone' or not v.Parent or v.Humanoid.Health == 0 or not
game.Workspace.Enemies:FindFirstChild(v.Name)
pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
   if v.Name == "Reborn Skeleton" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Living Zombie" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Demonic Soul" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Posessed Mummy" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
      end)
   elseif DevilMastery_Farm and SelectedMethodMastery == "Ecto" then
   pcall(function()
   local EctoMob = CFrame.new(904.4072265625, 181.05767822266,
33341.38671875)
   BTP(EctoMob)
   Tween(EctoMob)
   local Distance = (Vector3.new(904.4072265625, 181.05767822266,
33341.38671875) -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
   if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or
v.Name == "Ship Deckhand" or v.Name == "Ship Officer" then
   repeat game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <= v.Humanoid.MaxHealth *
   UseSkill = true
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)

-- ====== PAGE 78/197 ======
   UseSkill = false
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
SelectedMethodMastery == 'Ecto' or not v.Parent or v.Humanoid.Health == 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
   if v.Name == "Ship Steward" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Ship Engineer" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Ship Deckhand" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Ship Officer" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
      end)
   elseif DevilMastery_Farm and SelectedMethodMastery == "Cake Prince" then
   pcall(function()
game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
   if game.ReplicatedStorage:FindFirstChild("Cake Prince") or
game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
   if game:GetService("Workspace").Enemies:FindFirstChild("Cake
Prince") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v.Name == "Cake Prince" and
v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <= v.Humanoid.MaxHealth *
   UseSkill = true
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   UseSkill = false
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)

-- ====== PAGE 79/197 ======
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame =
   AutoClick()
SelectedMethodMastery == 'Cake Prince' or not v.Parent or v.Humanoid.Health == 0 or
not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and
(CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000
   Tween(CFrame.new(-2151.82153, 149.315704, -12404.9053))
Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or
game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or
game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and
v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <=
   UseSkill = true
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   UseSkill = false
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
TargetFFeaad rrAdmmv__eMMrtioosiddngee))
   v.HumanoidRootPart.CanCollide = false
Perso  nalization    v.HumanoidRootPart.Size  ==
Vector3.new(60,60,60)
Analyt  ics    v.HumanoidRootPart.Transparency  ==  11
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame =
   AutoClick()
SelectedMethodMastery == 'Cake Prince' or not v.Parent or v.Humanoid.Health == 0 or

-- ====== PAGE 80/197 ======
not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   local cakepos = CFrame.new(-2077, 252, -12373)
   BTP(cakepos)
   Tween(cakepos)
      end)
   UseSkill = false
end)
Mastery_Farm:addToggle('Auto Farm Gun Mastery', GunMastery_Farm, function(Value)
   GunMastery_Farm = Value
   CancelTween(GunMastery_Farm)
end)
spawn(function()
   pcall(function()
   while task.wait() do
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
   if v.ToolTip == "Gun" then
   CurrentEquipGun = v.Name
      end)
end)
spawn(function()
   while task.wait() do
   pcall(function()
Targetppeaad iiAdrrvsse((rtiggsiaangmmee::GGeettSSeerrvviiccee((""WWoorrkkssppaaccee""))..EEnneemmiieess::GGeettCChhiillddrreenn(())))  do
   if v.Name == Mastery_Farm_Name and v:FindFirstChild("Humanoid")
Persoaanannliddza  tiovvn::FFiinnddFFiirrssttCChhiilldd((""HHuummaannooiiddRRoooottPPaarrtt""))  and  v.Humanoid.Health  <=
Analyt  ics    repeat  game:GetService("RunService").Heartbeat:wait()
   EquipTool(CurrentEquipGun)
   PositionSkillMasteryGun = v.HumanoidRootPart.Position
   HumanoidRootPartMon = v.HumanoidRootPart
game:GetService("Players").LocalPlayer.Character:FindFirstChild(CurrentEquipGun)
game:GetService("Players").LocalPlayer.Character:FindFirstChild(CurrentEquipGun).Mo
usePos.Value = PositionSkillMasteryGun

-- ====== PAGE 81/197 ======
game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].Cooldown.Value =
game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].RemoteFunctionSho
ot:InvokeServer(PositionSkillMasteryGun,HumanoidRootPartMon)
   local GunMastery =
game:GetService("Players").LocalPlayer.Character:FindFirstChild(CurrentEquipGun).Le
   local plr = game:GetService("Players").LocalPlayer
   if _G.SkillZ and GunMastery >= 1 and
(v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <
game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
   if _G.SkillX and GunMastery >= 1 and
(v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <
game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
   if _G.SkillC and GunMastery >= 1 and
(v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
   if _G.SkillV and GunMastery >= 1 and
(v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude <
game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
   if _G.SkillF and GunMastery >= 1 and
Perso((navvli..zaHHtiouunmmaannooiiddRRoooottPPaarrtt..PPoossiittiioonn  --  plr.Character.HumanoidRootPart.Position).Magnitude  <<
game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
   wait(.1)
game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
v.Humanoid.Health == 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)

-- ====== PAGE 82/197 ======
      end)
end)
spawn(function()
   while task.wait() do
   if GunMastery_Farm and SelectedMethodMastery == "Quest" then
   pcall(function()
   CheckLevel()
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, NameMon) or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
   UseGunMastery = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
   BTP(CFrameQ)
   Tween(CFrameQ)
   if (CFrameQ.Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 5 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQ
uest,QuestLv)
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, NameMon) or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
   if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
   if v.Name == Ms then
game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <=
   UseGunMastery = true
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   AutoClick()
   UseGunMastery = false
   EquipTool(SelectWeapon)
      Save prefereTTnwwceeeeesnn((vv..HHuummaannooiiddRRoooottPPaarrtt..CCFFrraammee  **
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)

-- ====== PAGE 83/197 ======
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame =
   AutoClick()
SelectedMethodMastery == "Quest" or not v.Parent or v.Humanoid.Health == 0 or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   Tween(CFrameMon)
      end)
   elseif GunMastery_Farm and SelectedMethodMastery == "No Quest" then
   UseGunMastery = false
   pcall(function()
   CheckLevel()
   BTP(CFrameQ)
   Tween(CFrameQ)
   for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
   if v.Name == Ms then
   repeat game:GetService("RunService").Heartbeat:wait()
   UseGunMastery = true
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   AutoClick()
   UseGunMastery = false
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
==  "Quest"  or  not  v.Parent  or  vv..HHuummaaSnnavooeii ddpr..eHHfeeeraaellnttchhe  s====  00  or  not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
      end)

-- ====== PAGE 84/197 ======
   elseif GunMastery_Farm and SelectedMethodMastery == "Nearest" then
   UseGunMastery = false
   pcall(function()
   for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
   if v.Name and v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
(game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 2000 then
   repeat game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <= v.Humanoid.MaxHealth *
   UseGunMastery = true
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   AutoClick()
   UseGunMastery = false
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
== 'Nearest' or not v.Parent or v.Humanoid.Health == 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   elseif GunMastery_Farm and SelectedMethodMastery == "Bone" then
   pcall(function()
   local boneframe = CFrame.new(-9508.5673828125, 142.1398468017578,
5737.3603515625)
   BTP(boneframe)
   Tween(boneframe)
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
   if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie"
or v.Name =="Demonic Soul" or v.Name == "Posessed Mummy" then
   repeat game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <= v.Humanoid.MaxHealth *
   UseGunMastery = true
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   AutoClick()
   UseGunMastery = false
   EquipTool(SelectWeapon)

-- ====== PAGE 85/197 ======
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
== 'Bone' or not v.Parent or v.Humanoid.Health == 0 or not
game.Workspace.Enemies:FindFirstChild(v.Name)
pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
   if v.Name == "Reborn Skeleton" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Living Zombie" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Demonic Soul" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Posessed Mummy" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
      end)
elseif GunMastery_Farm and SelectedMethodMastery == "Ecto" then
   pcall(function()
   local EctoMob = CFrame.new(904.4072265625, 181.05767822266,
33341.38671875)
   Tween(EctoMob)
   local Distance = (Vector3.new(904.4072265625, 181.05767822266,
33341.38671875) -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
   if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or
v.Name == "Ship Deckhand" or v.Name == "Ship Officer" then
   repeat game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <= v.Humanoid.MaxHealth *
   UseGunMastery = true
      RejTTewwceet eeNnno((n-vvE..sHHsuuenmmtaaiannlooiiddRRoooottPPaarrtt..CCFFrraammee  **  Farm_Mode)
   AutoClick()

-- ====== PAGE 86/197 ======
   UseGunMastery = false
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
== 'Ecto' or not v.Parent or v.Humanoid.Health == 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
   if v.Name == "Ship Steward" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Ship Engineer" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Ship Deckhand" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   elseif v.Name == "Ship Officer" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
      end)
elseif GunMastery_Farm and SelectedMethodMastery == "Cake Prince" then
   pcall(function()
game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
   if game.ReplicatedStorage:FindFirstChild("Cake Prince") or
game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
   if game:GetService("Workspace").Enemies:FindFirstChild("Cake
Prince") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v.Name == "Cake Prince" and
v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <= v.Humanoid.MaxHealth *
   UseGunMastery = true
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   AutoClick()
   UseGunMastery = false
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
      Reject Nvvo..n-HHEuusmmsaaennntooiaiilddRRoooottPPaarrtt..CCaannCCoolllliiddee  ==  false
   v.HumanoidRootPart.Size =

-- ====== PAGE 87/197 ======
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame =
   AutoClick()
SelectedMethodMastery == 'Cake Prince' or not v.Parent or v.Humanoid.Health == 0 or
not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and
(CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000
   Tween(CFrame.new(-2151.82153, 149.315704, -12404.9053))
Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or
game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or
game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") then
Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and
v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
game:GetService("RunService").Heartbeat:wait()
   if v.Humanoid.Health <=
   UseGunMastery = true
Third Parties    Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   AutoClick()
   UseGunMastery = false
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Mastery_Farm_Name = v.Name
   Mastery_Farm_CFrame =
      Reject Non-EsAAseuuntttooiaCCllliicckk(())

-- ====== PAGE 88/197 ======
SelectedMethodMastery == 'Cake Prince' or not v.Parent or v.Humanoid.Health == 0 or
not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   local cakepos = CFrame.new(-2077, 252, -12373)
   BTP(cakepos)
   Tween(cakepos)
      end)
   UseGunMastery = false
end)
local Boss_Farm = Farm_Right:addMenu('#Boss Farm')
local BossNameStorage = {
}}
local BossList = {}
   if table.find(BossNameStorage, v.Name) then
   table.insert(BossList, v.Name)
local Refresh_Boss = Boss_Farm:addDropdown('Select Boss', SelectBoss, BossList,
function(Value)
   SelectBoss = Value
end)
Boss_Farm:addButton('Refresh Boss', function()
   local NewBossList = {}
   for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
   if table.find(BossNameStorage, v.Name) then
   table.insert(NewBossList, v.Name)
   Refresh_Boss:Clear()
   Refresh_Boss:Refresh(NewBossList)
end)
Boss_Farm:addToggle('Auto Farm Boss (Quest)', AutoFarmBossQuest, function(Value)

-- ====== PAGE 89/197 ======
   AutoFarmBossQuest = Value
   CancelTween(AutoFarmBossQuest)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   CheckBossQuest(SelectBoss)
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, NameBoss) or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
   BTP(CFrameQBoss)
   Tween(CFrameQBoss)
   if (CFrameQBoss.Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 5 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQ
uestBoss,QuestLvBoss)
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, NameBoss) or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
Third Parties    Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
v.Humanoid.Health <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or
game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
   Tween(CFrameBoss)

-- ====== PAGE 90/197 ======
      end)
end)
Boss_Farm:addToggle('Auto Farm Boss (No Quest)', AutoFarmBossNoQuest,
function(Value)
   AutoFarmBossNoQuest = Value
   CancelTween(AutoFarmBossNoQuest)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   CheckBossQuest(SelectBoss)
   BTP(CFrameBoss)
   Tween(CFrameBoss)
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == SelectBoss then
   repeat game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
      end)
end)
local Subs_Farm_Left = Tab.Tab_SubFarm:addSection()
local Elite_Hunter_Quest = Subs_Farm_Left:addMenu('#Elite Hunter')
local EliteProgress = Elite_Hunter_Quest:addLabel("")
local EliteStatus = Elite_Hunter_Quest:addLabel("")
spawn(function()
   while wait() do
   local progelit =
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Pro

-- ====== PAGE 91/197 ======
gress")
   EliteProgress:Refresh("Elite Boss Killed : " .. progelit)
   if game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') or
game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') or
game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
   EliteStatus:Refresh("Boss Status : Boss is Spawned.")
   elseif not game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') or
not game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') or not
game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
   EliteStatus:Refresh("Boss Status : Boss is not Spawned.")
end)
Elite_Hunter_Quest:addToggle('Auto Elite Hunter', AutoEliteHunter, function(Value)
   AutoEliteHunter = Value
   CancelTween(AutoEliteHunter)
end)
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Diablo") or
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Deandre") or
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Urban") then
game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or
game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or
game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Diablo" or v.Name == "Deandre" or
v.Name == "Urban" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until AutoEliteHunter == false or
v.Humanoid.Health <= 0 or not v.Parent

-- ====== PAGE 92/197 ======
game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.
CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPar
t.CFrame)
game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart
.CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPa
rt.CFrame)
game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.C
Frame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart
.CFrame)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
      end)
end)
local Cake_Prince_Quest = Subs_Farm_Left:addMenu('#Cake Prince & Dough King')
local CakePrinceStatus = Cake_Prince_Quest:addLabel("")
spawn(function()
   while wait() do
string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePr
inceSpawner")) == 88 then
   CakePrinceStatus:Refresh("Killed Left :
"..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cak
ePrinceSpawner"),39,41)..' / 500')

-- ====== PAGE 93/197 ======
string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePr
inceSpawner")) == 87 then
   CakePrinceStatus:Refresh("Killed Left :
"..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cak
ePrinceSpawner"),39,40)..' / 500')
string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePr
inceSpawner")) == 86 then
   CakePrinceStatus:Refresh("Killed Left :
"..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cak
ePrinceSpawner"),39,39)..' / 500')
   CakePrinceStatus:Refresh("Cake Prince Spawned...!!!")
end)
Cake_Prince_Quest:addToggle('Auto Cake Prince', AutoCakePrince, function(Value)
   AutoCakePrince = Value
   CancelTween(AutoCakePrince)
end)
spawn(function()
   while task.wait() do
   pcall(function()
game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
   if game.ReplicatedStorage:FindFirstChild("Cake Prince") or
game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
   if game:GetService("Workspace").Enemies:FindFirstChild("Cake
Prince") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if AutoCakePrince and v.Name == "Cake Prince" and
v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
game:GetService("RunService").Heartbeat:wait()
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
v.Humanoid.Health <= 0
game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and
(CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000
   Tween(CFrame.new(-2151.82153, 149.315704, -12404.9053))

-- ====== PAGE 94/197 ======
Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or
game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or
game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and
v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   CakePrince_Farm_Name = v.Name
   CakePrince_Farm_CFrame =
   AutoClick()
v.Humanoid.Health <= 0
   local cakepos = CFrame.new(-2077, 252, -12373)
   BTP(cakepos)
   Tween(cakepos)
      end)
end)
Cake_Prince_Quest:addToggle('Auto Dough King (Need to Get Sweet Chalice)',
 _G.AutoDoughKing, function(Value)
   _G.AutoDoughKing = Value
   CancelTween(_G.AutoDoughKing)
end)
spawn(function()
   while task.wait(.1) do
      local  Place_1  ==  CCFFrraammee..nneewwA((c--c22e66p88t11 A..ll9977999988,,  64.3921585,  -12853.7363,
0.98883605, 3.36376011e-08, 0.149007782)
   pcall(function()

-- ====== PAGE 95/197 ======
game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
   if game.Players.LocalPlayer.Character:FindFirstChild("Red Key")
or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakeScientist",
"Check")
   wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc",
"Check")
   Tween(Place_1)
   if (Place_1.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-
3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)
   wait(0.5)
   EquipTool("Red Key")
   wait(0.5)
game.Workspace:FindFirstChild("Enemies"):FindFirstChild("Dough King") or
game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren())
   if v.Name == "Dough King" then
   if v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Storage Prefer ences  v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
Storag  e    AutoClick()
or v.Humanoid.Health <= 0 or
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
   local BigMirrorPlace = CFrame.new(-2151.82153,
149.315704, -12404.9053)
      TTwweeeenn((ABBciicggeMMpiitrr ArrlloorrPPllaaccee))
   if (BigMirrorPlace.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-

-- ====== PAGE 96/197 ======
2151.82153, 149.315704, -12404.9053)
   wait(1)
   elseif game.Players.LocalPlayer.Character:FindFirstChild("Sweet
Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") then
game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or
game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or
game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren())
Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
   if v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   DoughKing_Farm_Name = v.Name
   DoughKing_Farm_CFrame =
   AutoClick()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner
", true)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner
")
or v.Humanoid.Health <= 0 or
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   Tween(CFrame.new(-2077, 252, -12373))
   if (CFrame.new(-2077, 252, -12373).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252,
-12373)
   elseif (game.Players.LocalPlayer.Backpack:FindFirstChild("God's
Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice"))
and GetMaterial("Conjured Cocoa") >= 10 then

-- ====== PAGE 97/197 ======
game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
   wait(0.2)
game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not
game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") and
(game.Workspace.Enemies:FindFirstChild("Deandre") or
game.Workspace.Enemies:FindFirstChild("Urban") or
game.Workspace.Enemies:FindFirstChild("Diablo") or
game.ReplicatedStorage:FindFirstChild("Deandre") or
game.ReplicatedStorage:FindFirstChild("Urban") or
game.ReplicatedStorage:FindFirstChild("Diablo")) then
   if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ==
string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Titl
e.Text, "Diablo") or
string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Titl
e.Text, "Urban") or
string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Titl
e.Text, "Deandre") then
game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or
game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or
game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
pairs(game.Workspace.Enemies:GetChildren()) do
   if v.Name == "Diablo" or v.Name == "Urban"
or v.Name == "Deandre" then
   if v:FindFirstChild("HumanoidRootPart")
and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame
* Farm_Mode)
   v.HumanoidRootPart.CanCollide =
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
==  11
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
v.Parent or v.Humanoid.Health <= 0 or
Persoggnaaalimmzaeetio::nGGeettSSeerrvviiccee((""WWoorrkkssppaaccee""))..EEnneemmiieess::FFiinnddFFiirrssttCChhiilldd((vv..NNaammee))
game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.
CFrame)

-- ====== PAGE 98/197 ======
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPar
t.CFrame)
game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart
.CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPa
rt.CFrame)
game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.C
Frame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart
.CFrame)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") or
game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or
game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or
game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren())
   if (v.Name == "Candy Rebel" or v.Name == "Sweet
Thief" or v.Name == "Chocolate Bar Battler" or v.Name == "Cocoa Warrior") and
v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
game:GetService("RunService").Heartbeat:wait()
Perso  nalization    EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
AnalytFFicaasrrmm__MMooddee))
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   DoughKing_Farm_Name = v.Name
   DoughKing_Farm_CFrame =
   AutoClick()

-- ====== PAGE 99/197 ======
v.Humanoid.Health <= 0
   Tween(CFrame.new(620.6344604492188, 78.93644714355469,
-12581.369140625))
   if (CFrame.new(620.6344604492188, 78.93644714355469, -
12581.369140625).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
      end)
end)
local Other_Subs_Farm = Subs_Farm_Left:addMenu('#Raid Farm')
Other_Subs_Farm:addToggle('Auto Raid Factory', AutoFactory, function(Value)
   AutoFactory = Value
   CancelTween(AutoFactory)
end)
   while task.wait() do
   if game.Workspace.Enemies:FindFirstChild("Core") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v.Name == "Core" and v.Humanoid.Health > 0 then
   repeat game:GetService("RunService").Heartbeat:wait()
   Tween(CFrame.new(448.46756, 199.356781, -441.389252))
   EquipTool(SelectWeapon)
   AutoClick()
   until not v.Parent or v.Humanoid.Health <= 0  or
AutoFactory == false
   elseif game.ReplicatedStorage:FindFirstChild("Core") then
Perso  nalization    repeat  Tween(CFrame.new(448.46756,  199.356781,  -441.389252))
   wait()
(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-
Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
end)
Other_Subs_Farm:addToggle('Auto Raid Pirate', AutoPirateCastle, function(Value)
   AutoPirateCastle = Value
   CancelTween(AutoPirateCastle)

-- ====== PAGE 100/197 ======
end)
spawn(function()
   while task.wait() do
   pcall(function()
   local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921, -
1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
   if (CFrame.new(-5539.3115234375, 313.800537109375, -
2972.372314453125).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("HumanoidRootPart") and
v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
   if (v.HumanoidRootPart.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   PirateCastle_Name = v.Name
   PirateCastle_CFrame =
   AutoClick()
v.Humanoid.Health <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   Tween(CFrameCastleRaid)
      end)
end)
local Subs_Farm_Right = Tab.Tab_SubFarm:addSection()
local Material_Farm = Subs_Farm_Right:addMenu('#Material Farm')
   MaterialList = {"Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"}
   MaterialList = {"Scrap Metal","Leather","Radioactive Material","Mystic
Droplet","Magma Ore","Vampire Fang"}

-- ====== PAGE 101/197 ======
   MaterialList = {"Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon
Scale","Gunpowder","Fish Tail","Mini Tusk"}
Material_Farm:addDropdown('Select Material', SelectMaterial, MaterialList,
function(Value)
   SelectMaterial = Value
end)
Material_Farm:addToggle('Auto Farm Material', Auto_Farm_Material, function(Value)
   Auto_Farm_Material = Value
   CancelTween(Auto_Farm_Material)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   MaterialMon(SelectMaterial)
   BTP(MPos)
   Tween(MPos)
   for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == MMon then
   repeat game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
Personal data m  ay be processed to do the following: use precise geolocavvtio..nHH duuatmma aaannndoo aiictddiv::elCCy hhscaaannn ggdeeevSSictte aachttaeera((ct11er11is))tics for identi cation.
   v.Humanoid:ChangeState(14)
   Material_Farm_Name = v.Name
   Material_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
v.Humanoid.Health <= 0 or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
      end)
end)
local Chest_Farm = Subs_Farm_Right:addMenu('#Chest Farm')
function AutoGrabChest()
   local player = game.Players.LocalPlayer.Character
   for i,v in pairs(game:GetService("Workspace").ChestModels:GetChildren()) do
if v.Name == "SilverChest" or v.Name == "GoldChest" or v.Name ==
"DiamondChest" then

-- ====== PAGE 102/197 ======
   player.HumanoidRootPart.CFrame = v.PushBox.CFrame
   wait(.15)
   for i,v in pairs(game.Workspace.ChestModels:GetDescendants()) do
   if v:IsA("TouchTransmitter") then
   wait(.15)
   firetouchinterest(player.HumanoidRootPart, v.Parent, 0) -- 0 is touch
   wait(.15)
   firetouchinterest(player.HumanoidRootPart, v.Parent, 1) -- 1 is not
function CooldownDeath(times)
   wait(times)
   game.Players.LocalPlayer.Character.Head:Destroy()
   wait(times)
Chest_Farm:addToggle('Auto Grab Chest (Stop if have items)', _G.GrabChested,
function(Value)
   _G.GrabChested = Value
end)
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of
Personal data m  ay be processed to do the followingpp: ccusaaell pllre((ciffseuu gnneccolttoiicaootinnon(( d))ata and actively scan device characteristics for identi cation.
   AutoGrabChest()
      end)
      end)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   CooldownDeath(10)
      end)
end)
Chest_Farm:addToggle('Auto  Grab  CChheessSttav  e++    prHHeoofppe  re((nSSctteoospp  if  have  items)',
 _G.GrabChestedHop, function(Value)
   _G.GrabChestedHop = Value
end)
spawn(function()
   while wait() do
   pcall(function()

-- ====== PAGE 103/197 ======
pp    ((    ()
   if game.Workspace:FindFirstChild("Chest1") or
game.Workspace:FindFirstChild("Chest2") or game.Workspace:FindFirstChild("Chest3")
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fist of
Darkness") then
   pcall(function()
   AutoGrabChest()
      end)
   pcall(function()
      Hop()
      end)
      end)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   CooldownDeath(10)
      end)
end)
Personal data mllaooy ccbaae llpr  ocOOebbsssseeed rrtovv daaott thiieoo fonnll__oFFwiaangrr: mmus  e== p  reSSciuusebb gsse__olFFocaaarrtimmon__ dRRaiitagg anhhdtt a::ctaaivddelddy MMsceeannn uude((v''ic##e OOchbbassraeectrrervvisaatittcsii fooornn id  eFFntaai rrcmmat''io))n.
local ObservationRange = Observation_Farm:addLabel("")
spawn(function()
   while task.wait() do
   ObservationRange:Refresh("Observation Level : " ..
tostring(game:GetService("Players").LocalPlayer.VisionRadius.Value))
end)
Observation_Farm:addToggle("Auto Farm Observation", AutoFarmKen, function(Value)
   AutoFarmKen = Value
   CancelTween(AutoFarmKen)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game:GetService("Workspace").Enemies:FindFirstChild("Lava
Pirate [Lv. 1200]") then
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el") then
   repeat game:GetService("RunService").Heartbeat:wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =

-- ====== PAGE 104/197 ======
gg    ((    yy    ))    yy
game:GetService("Workspace").Enemies:FindFirstChild("Lava
Pirate").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
   until AutoFarmKen == false or not
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el")
   repeat game:GetService("RunService").Heartbeat:wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Enemies:FindFirstChild("Lava
Pirate").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
   wait(1)
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el") then
game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players")
.LocalPlayer)
   until AutoFarmKen == false or
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el")
   Tween(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
   if game:GetService("Workspace").Enemies:FindFirstChild("Galley
Captain [Lv. 650]") then
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el") then
   repeat game:GetService("RunService").Heartbeat:wait()
game:GetService("Workspace").Enemies:FindFirstChild("Galley
Captain").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
   until AutoFarmKen == false or not
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el")
   repeat game:GetService("RunService").Heartbeat:wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Enemies:FindFirstChild("Galley
Captain").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
   wait(1)
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el") then
game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players")
.LocalPlayer)
   until AutoFarmKen == false or
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab

-- ====== PAGE 105/197 ======
   Tween(CFrame.new(5533.29785, 88.1079102, 4852.3916))
   if game:GetService("Workspace").Enemies:FindFirstChild("Giant
Islander [Lv. 1650]") then
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el") then
   repeat game:GetService("RunService").Heartbeat:wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Enemies:FindFirstChild("Giant
Islander").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
   until AutoFarmKen == false or not
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el")
   repeat game:GetService("RunService").Heartbeat:wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Enemies:FindFirstChild("Giant
Islander").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
   wait(1)
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el") then
game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players")
.LocalPlayer)
   until AutoFarmKen == false or
game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLab
el")
   Tween(CFrame.new(4530.3540039063, 656.75695800781, -
131.60952758789))
      end)
end)
Observation_Farm:addToggle("Auto Observation V2", AutoKenV2, function(Value)
   AutoKenV2 = Value
   CancelTween(AutoKenV2)
end)
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgr
ess","Citizen") == 3 then
game:GetService("Players").LocalPlaRyeejerc.t BNaocnk-Epsascekn:tiFalindFirstChild("Banana") and
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then

-- ====== PAGE 106/197 ======
   repeat game:GetService("RunService").Heartbeat:wait()
   Tween(CFrame.new(-12444.78515625, 332.40396118164, -
7673.1806640625))
(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-
Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
   wait(.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgr
ess","Citizen")
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
   repeat game:GetService("RunService").Heartbeat:wait()
   Tween(CFrame.new(-10920.125, 624.20275878906, -
10266.995117188))
(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-
Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
   wait(.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start"
))
   wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
pairs(game:GetService("Workspace"):GetDescendants()) do
   if v.Name == "Apple" or v.Name == "Banana" or v.Name ==
"Pineapple" then
   v.Handle.CFrame =
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame *
CFrame.new(0,1,10)
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
,v.Handle,0)
   wait()
      end)
end)
local Quest_Left = Tab.Tab_3:addSection()
local World_Quest = Quest_Left:addMenu('#World')
World_Quest:addToggle('Auto Second World [Lv. 700]', AutoSecondWorld,
function(Value)
   AutoSecondWorld = Value
end)
spawn(function()

-- ====== PAGE 107/197 ======
spawn(function()
   while task.wait() do
   pcall(function()
   if game.Players.LocalPlayer.Data.Level.Value >= 700 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestPro
gress").UsedKey == false then
game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or not
game.Players.LocalPlayer.Character:FindFirstChild("Key") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestPro
gress","Detective")
game.Players.LocalPlayer.Backpack:FindFirstChild("Key") or
game.Players.LocalPlayer.Character:FindFirstChild("Key") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Back
pack["Key"])
   --[[if ByPassTP then
   BTP(CFrame.new(1349.697265625, 37.34928512573242, -
1328.8309326171875))
   game:GetService("Workspace").Map.Ice.Door.Size =
Vector3.new(30,30,30)
   Tween(CFrame.new(1349.697265625, 37.34928512573242,
-1328.8309326171875))
   game:GetService("Workspace").Map.Ice.Door.Size =
Vector3.new(30,30,30)
      end]]
   Tween(CFrame.new(1347.65271, 37.3906517, -1325.07715,
0.874608099, -1.17769057e-08, 0.484830558))
gress").UsedKey == true then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestPro
gress").KilledIceBoss == false then
   for i,v in pairs(game.Workspace.Enemies:GetChildren())
   if v.Name == "Ice Admiral" then
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   AutoClick()
   for i,v in pairs(game.ReplicatedStorage:GetChildren())
   if v.Name == "Ice Admiral" then
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestPro
gress").KilledIceBoss == true then
game:GetService("ReplicatedStorage").Remotes.CommF :InvokeServer("TravelDressrosa")

-- ====== PAGE 108/197 ======
game:GetService( ReplicatedStorage ).Remotes.CommF_:InvokeServer( TravelDressrosa )
      end)
end)
World_Quest:addToggle('Auto Third World [Lv. 1500]', AutoThirdWorld,
function(Value)
   AutoThirdWorld = Value
   CancelTween(AutoThirdWorld)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgr
ess","Bartilo") == 3 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").
FlamingoAccess == nil then
game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress
", "Check") == nil then
   if game.Workspace.Enemies:FindFirstChild("Don
Swan") then
pairs(game.Workspace.Enemies:GetChildren()) do
   if v.Name == "Don Swan" and
v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   AutoClick()
<= 0 or not AutoThirdWorld
   Tween(CFrame.new(2288.802, 15.1870775,
863.034607))
game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress
", "Check") == 1 then
game.Workspace.Enemies:FindFirstChild("rip_indra") then
pairs(game.Workspace.Enemies:GetChildren()) do
   if v.Name == "rip_indra" and
v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and

-- ====== PAGE 109/197 ======
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   AutoClick()
<= 0 or not AutoThirdWorld
   Tween(CFrame.new(-26952.2891, 21.5294781,
329.351562, -0.453972578, 0, -0.891015649, 0, 1, 0, 0.891015649, 0, -0.453972578))
TabelDevilFruitStore = {}
   TabelDevilFruitOpen = {}
pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInven
toryFruits")) do
   for i1,v1 in pairs(v) do
   if i1 == "Name" then
   table.insert(TabelDevilFruitStore,v1)
next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits"
))  do
   if v.Price >= 1000000 then
   table.insert(TabelDevilFruitOpen,v.Name)
   for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen)
pairs(TabelDevilFruitStore) do
   if DevilFruitOpenDoor == DevilFruitStore and
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").
FlamingoAccess == nil then
game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",DevilF
ruitStore)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
game:GetService("ReplicatedStorage") Remotes CommF :InvokeServer("TalkTrevor" "1")

-- ====== PAGE 110/197 ======
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").
FlamingoAccess == true then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgr
ess","Bartilo") == 0 then
string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Titl
e.Text, "Swan Pirates") and
string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Titl
e.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true
game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v.Name == "Swan Pirate" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false or not
   BTP(CFrame.new(1057.92761, 137.614319,
1242.08069))
   Tween(CFrame.new(1057.92761, 137.614319,
1242.08069))
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","Bart
iloQuest",1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgr
ess","Bartilo") == 1 then

-- ====== PAGE 111/197 ======
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgr
ess","Bartilo")
   if game.Workspace.Enemies:FindFirstChild("Jeremy") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren())
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Jeremy" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   AutoClick()
   until not v.Parent or v.Humanoid.Health <=
   BTP(CFrame.new(2099.88159, 448.931, 648.997375))
   Tween(CFrame.new(2099.88159, 448.931, 648.997375))
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgr
ess","Bartilo") == 2 then
(game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
CFrameThird.Position).Magnitude > 1500 then
   BTP(CFrame.new(-1836.1412353515625,
10.458294868469238, 1692.491943359375))
10.458294868469238, 1692.491943359375))
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-
1850.49329, 13.1789551, 1750.89685)
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-
1858.87305, 19.3777466, 1712.01807)
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-
1803.94324, 16.5789185, 1750.89685)
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-
1858.55835, 16.8604317, 1724.79541)
   wait(1)
game Players LocalPlayer Character HumanoidRootPart CFrame = CFrame new(

-- ====== PAGE 112/197 ======
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-
1869.54224, 15.987854, 1681.00659)
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979,
16.4978027, 1684.52368)
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-
1819.26343, 14.795166, 1717.90625)
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-
1813.51843, 14.8604736, 1724.79541)
      end)
end)
local Fighting_Quest = Quest_Left:addMenu("#Fighting")
Fighting_Quest:addToggle('Auto DeathStep', AutoDeathStep, function(Value)
   AutoDeathStep = Value
   CancelTween(AutoDeathStep)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)
spawn(function()
   while task.wait() do
   pcall(function()
may close this   banner to continue with only eiisffse  nggtiaaal cmmoeeo..kiPPesll. Paaryyiveeacrry ssPo..lLLicooyccaallPPllaayyeerr..CChhaarraacctteerr::FFiinnddFFiirrssttCChhiilldd((""BBllaacckk  Leg")
Storage Preferaenncdes game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >=
Third Parties 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400
game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency
== 0 then
   Tween(CFrame.new(6372.57275, 302.194611, -6838.97461,
0.544837654, 2.45265783e-05, 0.838541508))
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
      EEqquuiippTTooooll((A""cLLciiebbprrtaa Arrllyy  Key")
   repeat task.wait()
   BTP(CFrame.new(6371.2001953125,
296.63433837890625, -6841.18115234375))

-- ====== PAGE 113/197 ======
   Tween(CFrame.new(6371.2001953125,
296.63433837890625, -6841.18115234375))
   until (CFrame.new(6371.2001953125, 296.63433837890625,
-6841.18115234375).Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 3 or not AutoDeathStep
   if (CFrame.new(6371.2001953125, 296.63433837890625, -
6841.18115234375).Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 3 then
   wait(1.2)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
   wait(0.5)
game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral") or
game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") then
game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Awakened Ice Admiral"
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame
* Farm_Mode)
   v.HumanoidRootPart.CanCollide =
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
Storage Prefer==en  c11es
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
Storag  e    AutoClick()
v.Humanoid.Health <= 0 or AutoDeathStep == false or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
BBTTPP((ggaammee::GGeettSSeerrvviiccee((""RReepplliiccaatteeddSSttoorraaggeeA""c))c::eFFpiitnn AddlFFliirrssttCChhiilldd((""AAwwaakkeenneedd  Ice  Admiral  [Lv.
1400] [Boss]").HumanoidRootPart.CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral
[Lv 1400] [Boss]") HumanoidRootPart CFrame)

-- ====== PAGE 114/197 ======
[Lv. 1400] [Boss]").HumanoidRootPart.CFrame)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
      end)
end)
Fighting_Quest:addToggle('Auto SuperHuman', AutoSuperhuman, function(Value)
   AutoSuperhuman = Value
   CancelTween(AutoSuperhuman)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")
or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and
game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or
game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
   EquipTool("Superhuman")
Storage Prefer ences  if game.Players.LocalPlayer.Backpack:FindFirstChild("Black
Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or
game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or
Storagggeaammee..PPllaayyeerrss..LLooccaallPPllaayyeerr..CChhaarraacctteerr::FFiinnddFFiirrssttCChhiilldd((""EElleeccttrroo""))  or
game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or
game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Black
Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value
<= 299 then
   EquipTool("Black Leg")
game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
   EquipTool("Electro")
game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and

-- ====== PAGE 115/197 ======
game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <=
   EquipTool("Fishman Karate")
game.Players.LocalPlayer.BackpacUnEquipWeaponk:FindFirstChild("Dragon Claw") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299
   EquipTool("Dragon Claw")
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Black
Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value
>= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
   if game.Players.LocalPlayer.Character:FindFirstChild("Black
Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black
Leg").Level.Value >= 300 and game:GetService("Players")
["LocalPlayer"].Data.Beli.Value >= 300000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and
game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate"
))
game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and
game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate"
))
game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >=
300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward"
,"DragonClaw","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward"
,"DragonClaw","2")
game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and
game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >=
300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward"
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward"
"D  Cl " "2")

-- ====== PAGE 116/197 ======
,"DragonClaw","2")
   local Fragment = game:GetService("Players")
["Localplayer"].Data.Fragments.Value
   if Fragment <= 1499 then
   AutoSuperhuman = true
   AutoSuperhuman = false
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon
Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon
Claw").Level.Value >= 300 and game:GetService("Players")
["LocalPlayer"].Data.Beli.Value >= 3000000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300
and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
      end)
end)
Fighting_Quest:addToggle('Auto Sharkman Karate', AutoSharkman, function(Value)
   AutoSharkman = Value
   CancelTween(AutoSharkman)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate
")
end)
spawn(function()
   while task.wait() do
   pcall(function()
Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman
PersoKKnaaalirrzaaatiottnee""))..LLeevveell..VVaalluuee  >=  400  or
game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
Analytggicaasmmee..PPllaayyeerrss..LLooccaallPPllaayyeerr..BBaacckkppaacckk::FFiinnddFFiirrssttCChhiilldd((""FFiisshhmmaann  Karate").Level.Value  >=
   Tween(CFrame.new(-2604.6958, 239.432526, -10315.1982,
0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate
")
game:GetService("Players").LocalPlaRyeejerc.t CNhoanr-Eascsteenrti:alFindFirstChild("Water Key") or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
   repeat task.wait()
(C  ( 260 69 8 239 32 26  03  982

-- ====== PAGE 117/197 ======
   Tween(CFrame.new(-2604.6958, 239.432526, -10315.1982,
0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365)) until
(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0,
1, 0, 0.999093413, 0, 0.0425701365).Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 3 or not AutoSharkman
   if (CFrame.new(-2604.6958, 239.432526, -10315.1982,
0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 3 then
   wait(1.2)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate
")
   wait(0.5)
game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Tide Keeper" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until not v.Parent or v.Humanoid.Health <=
0 or AutoSharkman == false or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
PersoBBnaTTliPPza((tioggnaammee::GGeettSSeerrvviiccee((""RReepplliiccaatteeddSSttoorraaggee""))::FFiinnddFFiirrssttCChhiilldd((""TTiiddee
Keeper").HumanoidRootPart.CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Tide
Keeper").HumanoidRootPart.CFrame)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate"
))

-- ====== PAGE 118/197 ======
end)
end)
Fighting_Quest:addToggle('Auto Electric Claw', AutoElectricClaw, function(Value)
   AutoElectricClaw = Value
   CancelTween(AutoElectricClaw)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)
spawn(function()
   while task.wait(.1) do
   pcall(function()
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or
game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro")
or game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or
game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400
   Tween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
   if (CFrame.new(-10371.4717, 330.764496, -
10131.4199).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
"Start")
   wait(2)
   wait(1)
   Tween(CFrame.new(-12550.532226563, 336.22631835938, -
7510.4233398438))
   if (CFrame.new(-12550.532226563, 336.22631835938, -
7510.4233398438).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
   wait(1)
   wait(1)
   Tween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
   if (CFrame.new(-10371.4717, 330.764496, -
Perso11na00li11za33tio11n..44119999))..PPoossiittiioonn  --
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
Analyt  ics    wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
   wait(1)
   Tween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
   if (CFrame.new(-10371.4717, 330.764496, -
10131.4199).Position -
game.Players.LocalPlayer.Character.RHeujemcat nNooind-ERsosoetnPtiaalrt.Position).Magnitude <= 10 then
   wait(1)

-- ====== PAGE 119/197 ======
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",
"Start")
   wait(1)
   Tween(CFrame.new(-12550.532226563, 336.22631835938, -
7510.4233398438))
   if (CFrame.new(-12550.532226563, 336.22631835938, -
7510.4233398438).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
   wait(1)
   wait(1)
   Tween(CFrame.new(-10371.4717, 330.764496, -10131.4199))
   if (CFrame.new(-10371.4717, 330.764496, -
10131.4199).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
   wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
   EquipTool("Electric Claw")
   wait(.1)
      end)
end)
Fighting_Quest:addToggle('Auto Dragon Talon', AutoDragonTalon, function(Value)
   AutoDragonTalon = Value
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward"
,"DragonClaw","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward"
,"DragonClaw","2")
end)
spawn(function()
   while task.wait(.1) do
   pcall(function()
   if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon
Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon
Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health >
   EquipTool("Dragon Claw")
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon
Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon
Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health >
   EquipTool("Dragon Claw")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",t

-- ====== PAGE 120/197 ======
rue) == 3 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",t
rue)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",t
rue) == 1 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",t
rue)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
      end)
end)
Fighting_Quest:addToggle('Auto God Human', AutoGodhuman, function(Value)
   AutoGodhuman = Value
   CancelTween(AutoGodhuman)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventor
y"))  do
   if type(v) == "table" then
   if v.Type == "Material" then
   if v.Name == item then
spawn(function()
   while task.wait(.1) do
   pcall(function()
   if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman")
or  ggaammee..PPllaayyeerrss..LLooccaallPPllaayyeerr..BBaacckkppaaccSkk::avFFeii pnnrddeFFfiierrressnttcCCehhsiilldd((""SSuuppeerrhhuummaann""))  or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate")
or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman

-- ====== PAGE 121/197 ======
Karate") or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate")
or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or
game.Players.LocalPlayer.Character:FindFirstChild("Electro") or
game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or
game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") or
game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or
game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",tr
ue) == 1 then
game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Level.Value >= 400
or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and
game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
game.StarterGui:SetCore("SendNotification", {
Title = "Notification",
Text = "Not Have Superhuman" ,
Icon = "http://www.roblox.com/asset/?
id=",
Duration = 2.5
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",tru
e) == 1 then
game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400
or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and
game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate
")
game.StarterGui:SetCore("SendNotification", {
Title = "Notification",
Save preTTfeeerxxettn  ce==s  "Not  Have  Death  Step"  ,,
Icon = "http://www.roblox.com/asset/?
id=",
Duration = 2.5
})
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate

-- ====== PAGE 122/197 ======
",true) == 1 then
game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >=
400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and
game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >=
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
game.StarterGui:SetCore("SendNotification", {
Title = "Notification",
Text = "Not Have SharkMan Karate" ,
Icon = "http://www.roblox.com/asset/?
id=",
Duration = 2.5
})
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",
true) == 1 then
game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >=
400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and
game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >=
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
game.StarterGui:SetCore("SendNotification", {
Title = "Notification",
Text = "Not Have Electric Claw" ,
Icon = "http://www.roblox.com/asset/?
id=",
Duration = 2.5
})
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",t
rue) == 1 then
game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and
game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400
or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and
game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >=
string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGo
dhuman",true), "Bring") then
game.StarterGui:SetCore("SendNotification", {
Title = "Notification",
Text = "Not Have Enough
Material" ,

-- ====== PAGE 123/197 ======
Icon =
"http://www.roblox.com/asset/?id=",
Duration = 2.5
})
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
game.StarterGui:SetCore("SendNotification", {
Title = "Notification",
Text = "Not Have Dragon Talon" ,
Icon = "http://www.roblox.com/asset/?
id=",
Duration = 2.5
})
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
      end)
end)
local Sword_Wuest = Quest_Left:addMenu('#Sword')
   AutoSaber = Value
   CancelTween(AutoSaber)
end)
spawn(function()
   while task.wait() do
   if AutoSaber and game.Players.LocalPlayer.Data.Level.Value >= 200 and not
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not
game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
   pcall(function()
   if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency
== 0 then
game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
   if (CFrame.new(-1612.55884, 36.9774132, 148.719543,
0.928667724, -4.39869794e-08, 0.37091279).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
   wait(1)

-- ====== PAGE 124/197 ======
(( ))
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
   wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
   wait(1)
   Tween(CFrame.new(-1612.55884, 36.9774132, 148.719543,
0.928667724, -4.39869794e-08, 0.37091279))
game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or
game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
   EquipTool("Torch")
   Tween(CFrame.new(1114.61475, 5.04679728,
1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
   Tween(CFrame.new(-1610.00757, 11.5049858,
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress"
,"SickMan") ~= 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress"
,"GetCup")
   wait(0.5)
   EquipTool("Cup")
   wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress"
,"FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
   wait(0)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress"
,"SickMan")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress"
,"RichSon") == nil then
game:GetService("ReplicatedStorage").Remotes.CommF :InvokeServer("ProQuestProgress"

-- ====== PAGE 125/197 ======
game:GetService( ReplicatedStorage ).Remotes.CommF_:InvokeServer( ProQuestProgress
,"RichSon")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress"
,"RichSon") == 0 then
game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
pairs(game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Mob Leader" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until v.Humanoid.Health <= 0 or
AutoSaber == false or not v.Parent
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Mob
Leader").HumanoidRootPart.CFrame)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress"
,"RichSon") == 1 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress"
,"RichSon")
   wait(0.5)
   EquipTool("Relic")
   wait(0.5)
   Tween(CFrame.new(-1404.91504, 29.9773273,
5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
   if game:GetService("Workspace").Enemies:FindFirstChild("Saber
Expert") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
if v.Name == "Saber Expert" then

-- ====== PAGE 126/197 ======
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until v.Humanoid.Health <= 0 or AutoSaber ==
   if v.Humanoid.Health <= 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress"
,"PlaceRelic")
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Saber
Expert").HumanoidRootPart.CFrame)
      end)
end)
Sword_Wuest:addToggle('Auto Legendary Sword', AutoLegendarySword, function(Value)
   AutoLegendarySword = Value
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySworldDe
aler","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySworldDe
aler","2")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySworldDe
aler","2")
      end)
end)
Sword_Wuest:addToggle('Auto Rengoku', AutoRengoku, function(Value)
   AutoRengoku = Value
   CancelTween(AutoRengoku)
end)
spawn(function()

-- ====== PAGE 127/197 ======
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
   EquipTool("Hidden Key")
   loc1 = CFrame.new(6571.1201171875, 299.23028564453, -
6967.841796875)
   BTP(loc1)
   Tween(loc1)
   elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow
Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Snow Lurker" or v.Name == "Arctic
Warrior" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Rengoku_Farm_Name = v.Name
   Rengoku_Farm_CFrame = v.HumanoidRootPart.CFrame
   AutoClick()
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or
AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
   Tween(CFrame.new(5439.716796875, 84.420944213867, -
6715.1635742188))
      end)
end)
Sword_Wuest:addToggle('Auto Buddy Sword', AutoBuddySword, function(Value)
   AutoBuddySword = Value
   CancelTween(AutoBuddySword)
end)
spawn(function()
   while task.wait() do
   pcall(function()
if game:GetService("Workspace") Enemies:FindFirstChild("Cake Queen

-- ====== PAGE 128/197 ======
   if game:GetService( Workspace ).Enemies:FindFirstChild( Cake Queen
[Lv. 2175] [Boss]") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
v.Humanoid.Health <= 0
   Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake
Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame)
      end)
end)
Sword_Wuest:addToggle('Auto Pole', AutoPole, function(Value)
   AutoPole = Value
   CancelTween(AutoPole)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game:GetService("Workspace").Enemies:FindFirstChild("Thunder
Third Parties God")  then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Thunder God" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
v.Humanoid.Health <= 0

-- ====== PAGE 129/197 ======
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder
God").HumanoidRootPart.CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder
God").HumanoidRootPart.CFrame)
      end)
end)
Sword_Wuest:addToggle('Auto Cavander', AutoCavander, function(Value)
   AutoCavander = Value
   CancelTween(AutoCavander)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful
Pirate") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Beautiful Pirate" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
Third Parties    v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
v.Humanoid.Health <= 0
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful
Pirate").HumanoidRootPart.CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful
Pirate").HumanoidRootPart.CFrame)
end)

-- ====== PAGE 130/197 ======
      end)
end)
Sword_Wuest:addToggle('Auto Yama', AutoYama, function(Value)
   AutoYama = Value
   CancelTween(AutoYama)
end)
spawn(function()
   while task.wait() do
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Pro
gress") >= 30 then
   repeat task.wait()
fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.Cl
ickDetector)
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not
end)
Sword_Wuest:addToggle('Auto Tushita', AutoTushita, function(Value)
   AutoTushita = Value
   CancelTween(AutoTushita)
end)
function autoTushita()
   if not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and
not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
   if game.Workspace.Enemies:FindFirstChild("Deandre") or
game.Workspace.Enemies:FindFirstChild("Urban") or
game.Workspace.Enemies:FindFirstChild("Diablo") or
game.ReplicatedStorage:FindFirstChild("Urban") or
game.ReplicatedStorage:FindFirstChild("Diablo") then
Third Parties    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
== false then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Diablo") or
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Deandre") or
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Urban") then
ggaammee::GGeettSSeerrvviiccee((""WWoorrkkssppaaccee""))..EEnneemmiieess::FFAiicnncddeFFpiitrr AsslttlCChhiilldd((""DDiiaabblloo""))  or
game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or
game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v:FindFirstChild("Humanoid") and

-- ====== PAGE 131/197 ======
   if v:FindFirstChild( Humanoid ) and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Diablo" or v.Name == "Deandre" or
v.Name == "Urban" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until AutoTushita == false or v.Humanoid.Health
<= 0 or not v.Parent
game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.
CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPar
t.CFrame)
game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPa
Storagrrett..CCFFrraammee))
game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.C
Frame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart
.CFrame)

-- ====== PAGE 132/197 ======
   Tween(CFrame.new(-12554.9443, 337.194092, -7501.44727))
   elseif game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","W
inter Sky")
   wait(0.5)
   Tween(CFrame.new(-5420.16602, 1084.9657, -2666.8208))
   wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","P
ure Red")
   wait(0.5)
   Tween(CFrame.new(-5414.41357, 309.865753, -2212.45776))
   wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","S
now White")
   wait(0.5)
   Tween(CFrame.new(-4971.47559, 331.565765, -3720.02954))
   wait(0.5)
   EquipTool("God's Chalice")
   wait(0.5)
   Tween(CFrame.new(-5560.27295, 313.915466, -2663.89795))
   wait(0.5)
   Tween(CFrame.new(-5561.37451, 313.342529, -2663.4948))
   wait(1)
   Tween(CFrame.new(5154.17676, 141.786423, 911.046326))
   wait(0.2)
   Tween(CFrame.new(5148.03613, 162.352493, 910.548218))
   wait(1)
   EquipTool("Holy Torch")
   wait(1)
   wait(0.4)
   Tween(CFrame.new(-10752.7695, 412.229523, -9366.36328))
   wait(0.4)
may close this   banner to contTTinwwueee weeitnnh ((onCClyFF errsaasemmneetia..l cnnoeeowwki((es--. 11Pr11iv66ac77y33 P..ol44ic11y1111,,  331.749023,  -9474.34668))
Storage Prefer  ences    wait(0.4)
   Tween(CFrame.new(-12133.3389, 519.47522, -10653.1904))
   wait(0.4)
Storag  e    Tween(CFrame.new(-13336.5,  485.280396,  -6983.35254))
   wait(0.4)
   Tween(CFrame.new(-13487.4131, 334.84845, -7926.34863))
   wait(1)
   if game.Workspace.Enemies:FindFirstChild("Longma") or
game.ReplicatedStorage:FindFirstChild("Longma") then
   Tween(CFrame.new(-10171.7051, 406.981995, -9552.31738))
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v.Name == "Longma" and v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
      AutoClick()    Accept All
   elseif game.Workspace.Enemies:FindFirstChild("rip_indra True Form")  or
game.ReplicatedStorage:FindFirstChild("rip_indra True Form") then
Tween(CFrame new( 5332 30371 423 985413  2673 48218))

-- ====== PAGE 133/197 ======
   Tween(CFrame.new(-5332.30371, 423.985413, -2673.48218))
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v.Name == "rip_indra True Form" and v:FindFirstChild("Humanoid")
and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   AutoClick()
spawn(function()
   while task.wait() do
   pcall(function()
   autoTushita()
      end)
end)
local Quest_Right = Tab.Tab_3:addSection()
local CDK_Quest_Puzzle = Quest_Right:addMenu('#CDK Puzzle')
local TushitaSword = CDK_Quest_Puzzle:addLabel("")
local YamaSword = CDK_Quest_Puzzle:addLabel("")
function GetWeaponInventory(Sword)
pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventor
y"))  do
   if type(v) == "table" then
   if v.Type == "Sword" then
may close this   banner to continue with only eiisffse  nvvtia..l cNNoaaommkieees  . P==r==iva  cSSy wwPooolirrcddy  then
spawn(function()
   while task.wait() do
   if GetWeaponInventory("Tushita") == true then
   TushitaSword:Refresh("Tushita Sword : Have")
   elseif GetWeaponInventory("Tushita") == false then
   TushitaSword:Refresh("Tushita Sword : Not Have")
   if GetWeaponInventory("Yama") == true then
   YamaSword:Refresh("Yama Sword : Have")
   elseif GetWeaponInventory("Yama") == false then
   YamaSword:Refresh("Yama Sword : Not Have")

-- ====== PAGE 134/197 ======
end)
CDK_Quest_Puzzle:addLabel("Will Released Soon")
local Other_Quest = Quest_Right:addMenu('#Other')
Other_Quest:addToggle('Auto Dark Dagger', AutoDarkDagger, function(Value)
   AutoDarkDagger = Value
   CancelTween(AutoDarkDagger)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra
True Form") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "rip_indra True Form" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   AutoClick()
v.Humanoid.Health <= 0
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True
Form").HumanoidRootPart.CFrame)
      end)
end)
Other_Quest:addToggle('Auto Hallow Sycthe', AutoHallowSycthe, function(Value)
   AutoHallowSycthe = Value
   CancelTween(AutoHallowSycthe)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game:GetService("Workspace").Enemies:FindFirstChild("Soul
Reaper") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then

-- ====== PAGE 135/197 ======
   if v.Name == "Soul Reaper" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until v.Humanoid.Health <= 0 or not
   loc3 = CFrame.new(-8932.322265625, 146.83154296875,
6062.55078125)
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")
   repeat task.wait()
   Tween(loc3)
   wait()
   until (loc3.Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
   EquipTool("Hallow Essence")
Reaper").HumanoidRootPart.CFrame)
      end)
end)
Other_Quest:addToggle('Auto Citizen', AutoCitizen, function(Value)
   AutoCitizen = Value
   CancelTween(AutoCitizen)
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Musketeer Hat") then
Target  ed AdvertisingCCTTCCHH  ==  true
   elseif game.Players.LocalPlayer.Character:FindFirstChild("Musketeer Hat") then
Perso  nalization  CTCH  ==  true
   game:GetService("StarterGui"):SetCore("SendNotification",{
   Title = "Auto Quest Citizen",
   Text = "Musketeer Hat Successfully",
   Duration = 3
      })
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgr
ess","Citizen") == 3 and CheckCitizen then
   game:GetService("StarterGui"):SetCore("SendNotification",{
   Title = "Auto Quest Citizen",
" i i  l d"

-- ====== PAGE 136/197 ======
   Text = "Citizen Quest Completed",
   Duration = 3
      })
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game.Players.LocalPlayer.Data.Level.Value >= 1800 and
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgr
ess").KilledBandits == false then
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, "Forest Pirate") and
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, "50") and
game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v.Name == "Forest Pirate" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Citizen_Farm_Name = v.Name
   Citizen_Farm_CFrame =
   AutoClick()
   until AutoCitizen == false or not v.Parent or
v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ==
false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   BTP(CFrame.new(-13459.065429688, 412.68927001953, -
Perso77na77li88za33tio..n11886600335511556633))))
Analyt  ics    Tween(CFrame.new(-13459.065429688,  412.68927001953,
-7783.1860351563))
   Tween(CFrame.new(-12443.8671875, 332.40396118164, -
7675.4892578125))
   if (Vector3.new(-12443.8671875, 332.40396118164, -
7675.4892578125) -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
   wait(1.5)

-- ====== PAGE 137/197 ======
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",
"CitizenQuest", 1)
   elseif game.Players.LocalPlayer.Data.Level.Value >= 1800 and
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgr
ess").KilledBoss == false then
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text, "Captain Elephant") and
game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v.Name == "Captain Elephant" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until AutoCitizen == false or v.Humanoid.Health
<= 0 or not v.Parent or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ==
   BTP(CFrame.new(-13459.065429688, 412.68927001953, -
7783.1860351563))
   Tween(CFrame.new(-13459.065429688, 412.68927001953,
-7783.1860351563))
   Tween(CFrame.new(-12443.8671875, 332.40396118164, -
7675.4892578125))
   if (CFrame.new(-12443.8671875, 332.40396118164, -
7675.4892578125).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
   wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgr
ess","Citizen")
   elseif game.Players.LocalPlayer.Data.Level.Value >= 1800 and
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgr
ess","Citizen") == 2 then
   Tween(CFrame.new(-12512.138671875, 340.39279174805, -

-- ====== PAGE 138/197 ======
9872.8203125))
      end)
end)
Other_Quest:addToggle('Auto Evo Race V2', AutoEvoRace, function(Value)
   AutoEvoRace = Value
   CancelTween(AutoEvoRace)
end)
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
== 0 then
   Tween(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -
0.68292886, 1.56424669e-08, -0.730484903))
   if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
   wait(1.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
== 1 then
Personal data mggaaay mmbeee ::prGGoceeettssSSeeed rrtovv diiocc theee(( f""olPPlollwiaangyy: eeusrress p""re))c..iseLL oogeccoaalollcaPPtillonaa dyyaeetarr a..ndBB aaaccctivkkepplyaa scccakkn ::dFFeviiicnnedd cFFhaiirarrcsstettrisCCtihhcsii flloddr i((de""nFFti llcooatwwioeenrr.    1")  and  not
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
   Tween(game.Workspace.Flower1.CFrame)
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
   Tween(game.Workspace.Flower2.CFrame)
Storagggeaammee::GGeettSSeerrvviiccee((""PPllaayyeerrss""))..LLooccaallPPllaayyeerr..BBaacckkppaacckk::FFiinnddFFiirrssttCChhiilldd((""FFlloowweerr  3")  and  not
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v.Name == "Zombie" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
      Save prefereTTnwwceeeeesnn((vv..HHuummaannooiiddRRoooottPPaarrtt..CCFFrraammee  **
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)

-- ====== PAGE 139/197 ======
   EvoV2_Farm_Name = v.Name
   EvoV2_Farm_CFrame =
   AutoClick()
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not
v.Parent or v.Humanoid.Health <= 0 or AutoEvoRace == false or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   BTP(CFrame.new(-5854.39014, 145.093857, -
1.5498367e-08, 0.925301135, 6.2265797e-09, 0.379233211))
   Tween(CFrame.new(-5854.39014, 145.093857, -
1.5498367e-08, 0.925301135, 6.2265797e-09, 0.379233211))
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
== 2 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
      end)
Other_Quest:addToggle('Auto Bartilo', AutoBartilo, function(Value)
   AutoBartilo = Value
   CancelTween(AutoBartilo)
   if game.Players.LocalPlayer.Backpack:FindFirstChild("Warrior Helmet") then
   Success = true
   elseif game.Players.LocalPlayer.Character:FindFirstChild("Warrior Helmet") then
   Success = true
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if game.Players.LocalPlayer.Data.Level.Value >= 850 and
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgr
ess","Bartilo") == 0 then
ssttrriinngg..ffiinndd((ggaammee..PPllaayyeerrss..LLooccaallPPllaayyeerrS..avPPell aapyyreeefrreGGreuuniic..eMMsaaiinn..QQuueesstt..CCoonnttaaiinneerr..QQuueessttTTiittllee..TTiittll
e.Text, "Swan Pirates") and
string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Titl
e.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true
game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then

-- ====== PAGE 140/197 ======
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v.Name == "Swan Pirate" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Bartilo_Farm_Name = v.Name
   Bartilo_Farm_CFrame =
   AutoClick()
   until not v.Parent or v.Humanoid.Health <= 0 or
AutoBartilo == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible ==
false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   BTP(CFrame.new(1057.92761, 137.614319, 1242.08069))
   Tween(CFrame.new(1057.92761, 137.614319,
1242.08069))
   Tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
Personal data mggaaay mmbeee ..prPPoclleaassyyeeed rrtoss d..oLL thooecc faaolllloPPwillngaa: yyuseeerr p..reCCchhiseaa rrgeaaocclottcaeetirron.. dHHauutamm aaandnn aoociitivddeRRlyoo soocattn PPdaaevrrictte.. cPPhaoorassciitettrisiitioocsnn f))o..r iMMdeaanggti nnciiatttiouundd. ee  <=  30  then
   wait(1.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","Bart
iloQuest",1)
   elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and
Storagggeaammee::GGeettSSeerrvviiccee((""RReepplliiccaatteeddSSttoorraaggee""))..RReemmootteess..CCoommmmFF__::IInnvvookkeeSSeerrvveerr((""BBaarrttiillooQQuueessttPPrrooggrr
ess","Bartilo") == 1 then
   if QuestBartilo == nil then
   Tween(CFrame.new(-456.28952, 73.0200958, 299.895966))
   if (Vector3.new(-456.28952, 73.0200958, 299.895966) -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
   wait(1.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgr
ess","Bartilo")
   QuestBartilo = 1
   if game.Workspace.Enemies:FindFirstChild("Jeremy") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v.Name == "Jeremy" then
game:GetService("RunService").Heartbeat:wait()

-- ====== PAGE 141/197 ======
gg    ((    ))    ()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until not v.Parent or v.Humanoid.Health <= 0 or
AutoBartilo == false or not
game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
   Tween(CFrame.new(1931.5931396484, 402.67391967773,
956.52215576172))
   if QuestBartilo == 1 then
   Tween(CFrame.new(1931.5931396484, 402.67391967773,
956.52215576172))
   elseif game.Players.LocalPlayer.Data.Level.Value >= 850 and
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgr
ess","Bartilo") == 2 then
Tween(game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate1.CFrame)
   wait(1)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate2.CFrame
   wait(1)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate3.CFrame
   wait(1)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
   wait(1)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate5.CFrame
   wait(1)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate6.CFrame
Storag  e    wait(1)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate7.CFrame
   wait(1)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game:GetService("Workspace").Map.Dressrosa.BartiloPlates.Plate8.CFrame
   wait(1)
      end)
end)
Other_Quest:addToggle('Auto Don Swan', _G.SwanGlasses, function(Value)
   _G.SwanGlasses = Value
end)
spawn(function()

-- ====== PAGE 142/197 ======
pp  ((    ()
   while task.wait() do
   if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Don Swan" then
   repeat game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   AutoClick()
   until _G.SwanGlasses == false or v.Humanoid.Health <= 0
   BTP(CFrame.new(2191.1674804688, 15.177842140198,
694.69873046875))
   Tween(CFrame.new(2191.1674804688, 15.177842140198,
694.69873046875))
end)
Other_Quest:addToggle('Auto RIP Indra', RipIndra, function(Value)
   RipIndra = Value
   CancelTween(RipIndra)
end)
   while task.wait() do
   pcall(function()
   if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra
True Form") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "rip_indra True Form" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   AutoClick()
   until v.Humanoid.Health <= 0 or not RipIndra or not
   loc11 = CFrameR.enjeewc(t -N5o5n2-E4s.s5e3nt2ia7l1, 313.800537, -2918.07422,
0.964194059, 0, 0.265197694, 0, 1, 0, -0.265197694, 0, 0.964194059)
   Tween(loc11)

-- ====== PAGE 143/197 ======
((    ))
      end)
end)
Other_Quest:addToggle('Auto Rainbow', AutoRainbowHaki, function(Value)
   AutoRainbowHaki = Value
   CancelTween(AutoRainbowHaki)
end)
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
   loc12 = CFrame.new(-11892.0703125, 930.57672119141, -
8760.1591796875)
   BTP(loc12)
   Tween(loc12)
   if (Vector3.new(-11892.0703125, 930.57672119141, -
8760.1591796875) -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 30 then
   wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
   if game:GetService("Workspace").Enemies:FindFirstChild("Stone")
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Stone" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until AutoRainbowHaki == false or
v.Humanoid.Health <= 0 or not v.Parent or
game:GetService("Players").LocalPlaRyeejerc.t PNloany-EesrsGeuniti.alMain.Quest.Visible == false

-- ====== PAGE 144/197 ======
game:GetService("ReplicatedStorage"):FindFirstChild("Stone") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Stone").HumanoidRootPart.C
Frame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Stone").HumanoidRootPart
.CFrame)
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Island Empress") then
   if game:GetService("Workspace").Enemies:FindFirstChild("Island
Empress") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Island Empress" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(14)
   AutoClick()
   until AutoRainbowHaki == false or
v.Humanoid.Health <= 0 or not v.Parent or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
game:GetService("ReplicatedStorage"):FindFirstChild("Island Empress") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Island
Empress").HumanoidRootPart.CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Island
Empress").HumanoidRootPart.CFrame)

-- ====== PAGE 145/197 ======
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Kilo Admiral") then
   if game:GetService("Workspace").Enemies:FindFirstChild("Kilo
Admiral") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Kilo Admiral" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until AutoRainbowHaki == false or
v.Humanoid.Health <= 0 or not v.Parent or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
game:GetService("ReplicatedStorage"):FindFirstChild("Kilo Admiral") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Kilo
Admiral").HumanoidRootPart.CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Kilo
Admiral").HumanoidRootPart.CFrame)
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Captain Elephant") then
   if game:GetService("Workspace").Enemies:FindFirstChild("Captain
Elephant") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Captain Elephant" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
v HumanoidRootPart Size =

-- ====== PAGE 146/197 ======
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until AutoRainbowHaki == false or
v.Humanoid.Health <= 0 or not v.Parent or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant") then
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Captain
Elephant").HumanoidRootPart.CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Captain
Elephant").HumanoidRootPart.CFrame)
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Beautiful Pirate") then
game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame *
Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until AutoRainbowHaki == false or
v.Humanoid.Health <= 0 or not v.Parent or
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then

-- ====== PAGE 147/197 ======
BTP(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful
Pirate").HumanoidRootPart.CFrame)
Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful
Pirate").HumanoidRootPart.CFrame)
   loc17 = CFrame.new(-11892.0703125, 930.57672119141, -
8760.1591796875)
   BTP(loc17)
   Tween(loc17)
   if (Vector3.new(-11892.0703125, 930.57672119141, -
8760.1591796875) -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 30 then
   wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
      end)
end)
Other_Quest:addToggle('Auto Holytorch', AutoTorch, function(Value)
   AutoTorch = Value
   CancelTween(AutoTorch)
end)
   while wait() do
Third Parties       pcall(function()
   wait(1)
   repeat Tween(CFrame.new(-10752, 417, -9366)) wait() until not
AutoTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-
Vector3.new(-10752, 417, -9366)).Magnitude <= 10
   wait(1)
   repeat Tween(CFrame.new(-11672, 334, -9474)) wait() until not
AutoTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-
Vector3.new(-11672, 334, -9474)).Magnitude <= 10
   wait(1)
   repeat Tween(CFrame.new(-12132, 521, -10655)) wait() until not
AutoTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-
Vector3.new(-12132, 521, -10655)).Magnitude <= 10
   wait(1)
   repeat Tween(CFrame.new(-13336, 486, -6985)) wait() until not
AutoTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-
Vector3.new(-13336, 486, -6985)).Magnitude <= 10
   wait(1)
   repeat Tween(CFrame.new(-13489, 332, -7925)) wait() until not
AutoTorch or (game Players LocalPlayer Character HumanoidRootPart Position-

-- ====== PAGE 148/197 ======
AutoTorch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-
Vector3.new(-13489, 332, -7925)).Magnitude <= 10
      end)
end)
Other_Quest:addToggle('Auto Soul Guitar', AutoSoulGuitar, function(Value)
   AutoSoulGuitar = Value
   CancelTween(AutoSoulGuitar)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   if GetWeaponInventory("Soul Guitar") == false then
   if (CFrame.new(-9681.458984375, 6.139880657196045,
6341.3720703125).Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 5000 then
game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",tr
ue)
   if game:GetService("Workspace").Map["Haunted
Castle"].Candle1.Transparency == 0 then
   if game:GetService("Workspace").Map["Haunted
Castle"].Placard1.Left.Part.Transparency == 0 then
   Quest2 = true
   repeat task.wait()
Tween(CFrame.new(-8762.69140625,
176.84783935546875, 6171.3076171875))
until (CFrame.new(-8762.69140625,
176.84783935546875, 6171.3076171875).Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
   wait(1)
Third Parties fireclickdetector(game:GetService("Workspace").Map["Haunted
Castle"].Placard7.Left.ClickDetector)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted
Castle"].Placard6.Left.ClickDetector)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted
Castle"].Placard5.Left.ClickDetector)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted
Castle"].Placard4.Right.ClickDetector)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted
Castle"].Placard3.Left.ClickDetector)
   wait(1)

-- ====== PAGE 149/197 ======
fireclickdetector(game:GetService("Workspace").Map["Haunted
Castle"].Placard2.Right.ClickDetector)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted
Castle"].Placard1.Right.ClickDetector)
   wait(1)
   elseif game:GetService("Workspace").Map["Haunted
Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
   if game:GetService("Workspace").Map["Haunted
Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
   Quest4 = true
   repeat task.wait()
Tween(CFrame.new(-9553.5986328125,
65.62338256835938, 6041.58837890625))
until (CFrame.new(-9553.5986328125,
65.62338256835938, 6041.58837890625).Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
de <= 3 or not AutoSoulGuitar
   wait(1)
Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part3.CFrame)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part3.ClickDetector)
   wait(1)
Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part4.CFrame)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part4.ClickDetector)
   wait(1)
may close this ffbaiinrrneeer cctoll ciioccntkkinddueee wttiteeh cconttlyoo errs((seggnaatiamml eeco::oGGkieeestt. SSPreeivrracvvyii Pccoleeic((y""WWoorrkkssppaaccee""))..MMaapp[[""HHaauunntteedd  Castle"]["Lab
Puzzle"].ColorFloor.Model.Part4.ClickDetector)
Third Parties       wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part4.ClickDetector)
   wait(1)
Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part6.CFrame)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part6.ClickDetector)
   wait(1)
ffiirreecclliicckkddeetteeccttoorr((ggaammee::GGeettSSeerrvviiccee((""WWoorrAkkcsscppeaapcctee A""l))l..MMaapp[[""HHaauunntteedd  Castle"]["Lab
Puzzle"].ColorFloor.Model.Part6.ClickDetector)
   wait(1)
Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"] ColorFloor Model Part8 CFrame)

-- ====== PAGE 150/197 ======
Puzzle"].ColorFloor.Model.Part8.CFrame)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part8.ClickDetector)
   wait(1)
Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part10.CFrame)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part10.ClickDetector)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part10.ClickDetector)
   wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab
Puzzle"].ColorFloor.Model.Part10.ClickDetector)
   Quest3 = true
   --Not Work Yet
game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
   local args = {
   [1] = "GuitarPuzzleProgress",
   [2] = "Ghost"
      }}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
game.Workspace.Enemies:FindFirstChild("Living Zombie") then
Storage Preferpenaciesrs(game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("HumanoidRootPart")
and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
   if v.Name == "Living Zombie" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size =
Vector3.new(60,60,60)
v.HumanoidRootPart.Transparency = 1
      Accept All    v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   SoulGuitar_Farm_Name =
   SoulGuitar_Farm_CFrame =

-- ====== PAGE 151/197 ======
   AutoClick()
   until v.Humanoid.Health <= 0 or
   Tween(CFrame.new(-10160.787109375,
138.6616973876953, 5955.03076171875))
string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("grave
stoneEvent",2), "Error") then
   print("Go to Grave")
   Tween(CFrame.new(-8653.2060546875,
140.98487854003906, 6160.033203125))
string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("grave
stoneEvent",2), "Nothing") then
   print("Wait Next Night")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",
2,true)
   Tween(CFrame.new(-9681.458984375, 6.139880657196045,
6341.3720703125))
      end)
Other_Quest:addToggle('Auto Tryluck Gravestone', AutoTryLuck, function(Value)
   AutoTryLuck = Value
   CancelTween(AutoTryLuck)
end)
spawn(function()
   while wait(.1) do
   BTP(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -
8.43218029e-09, -0.983064115))
   Tween(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115,
8.43218029e-09, -0.983064115))
   wait(2)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",
1)

-- ====== PAGE 152/197 ======
1)
end)
Other_Quest:addToggle('Auto Pray Gravestone', AutoPray, function(Value)
   AutoPray = Value
   CancelTween(AutoPray)
end)
spawn(function()
   while wait(.1) do
   BTP(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -
8.43218029e-09, -0.983064115))
   Tween(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115,
8.43218029e-09, -0.983064115))
   wait(2)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",
2)
end)
Other_Quest:addToggle('Auto Advanced Dungeon', AutoAdvanceDungeon, function(Value)
   AutoAdvanceDungeon = Value
   CancelTween(AutoAdvanceDungeon)
end)
spawn(function()
   while wait() do
   pcall(function()
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird:
Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-
Bird: Phoenix") then
game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.Devi
lFruit.Value) then
game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.Devi
lFruit.Value).Level.Value >= 400 then
   Tween(CFrame.new(-2812.76708984375, 254.803466796875, -
12595.560546875))
   if (CFrame.new(-2812.76708984375, 254.803466796875, -
12595.560546875).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
   wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","C
heck")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","H
eal")

-- ====== PAGE 153/197 ======
game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.Dev
ilFruit.Value) then
game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.Dev
ilFruit.Value).Level.Value >= 400 then
   Tween(CFrame.new(-2812.76708984375, 254.803466796875, -
12595.560546875))
   if (CFrame.new(-2812.76708984375, 254.803466796875, -
12595.560546875).Position -
game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
   wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","C
heck")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","H
eal")
      end)
end)
Other_Quest:addToggle('Auto Enchancement Haki', AutoColorHaki, function(Value)
   AutoColorHaki = Value
end)
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ColorsDealer","2"
))
      end)
end)
TargetOOettd hhAdeevrre__rtiQQsiuungeesstt::aaddddTTooggggllee((''AAuuttoo  Musketer',  AutoMusketeer,  function(Value)
   AutoMusketeer = Value
Perso  nalizatioCCnaanncceellTTwweeeenn((AAuuttooMMuusskkeetteeeerr))
end)
Analytssicppsaawwnn((ffuunnccttiioonn(())
   while task.wait() do
   pcall(function()
game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
Tween(CFrame.new(-12444.78515625, 332.40396118164, -
7673.1806640625))
wait(2)

-- ====== PAGE 154/197 ======
(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-
12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
   wait(.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgr
ess","Citizen")
   wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","Citi
zenQuest",1)
string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.Q
uestTitle.Title.Text,"Defeat 50 Forest Pirates") then
   if game:GetService("Workspace").Enemies:FindFirstChild("Forest
Pirate") then
pairs(game:GetService("Workspace").Enemies:GetChildren()) do
   if v.Name == "Forest Pirate" then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   Musketere_Farm_Name = v.Name
   Musketere_Farm_CFrame =
   AutoClick()
   Tween(game.ReplicatedStorage:FindFirstChild('Forest
Pirate').HumanoidRootPart.CFrame)
      end)
end)
Other_Quest:addToggle('Auto Serpent Bow', Auto_Serpent_Bow, function(Value)
Perso  nalizatioAAnuuttoo__SSeerrppeenntt__BBooww  ==  Value
   CancelTween(Auto_Serpent_Bow)
Analyteeicnnsdd))
spawn(function()
   while task.wait() do
   pcall(function()
   if game.Workspace.Enemies:FindFirstChild("Island Empress") then
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
   if v.Name == "Island Empress" then

-- ====== PAGE 155/197 ======
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeapon)
   Tween(v.HumanoidRootPart.CFrame * Farm_Mode)
   v.HumanoidRootPart.CanCollide = false
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.Humanoid:ChangeState(11)
   v.Humanoid:ChangeState(14)
   AutoClick()
   until v.Humanoid.Health <= 0 or not v.Parent or not
   Tween(game.ReplicatedStorage:FindFirstChild("Island
Empress").HumanoidRootPart.CFrame)
      end)
end)
local Raid_Left = Tab.Tab_4:addSection()
local Law_Raids = Raid_Left:addMenu('#Law Raids')
RaidSelectedWeapon = "Melee"
Law_Raids:addDropdown("Select Weapon", RaidSelectedWeapon, RaidWeaponList,
function(Value)
   RaidSelectedWeapon = Value
end)
task.spawn(function()
   while wait() do
   pcall(function()
   if RaidSelectedWeapon == "Melee" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Melee" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
Perso  nalization    SelectWeaponRaid  ==  v.Name
   elseif RaidSelectedWeapon == "Sword" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Sword" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
   SelectWeaponRaid = v.Name

-- ====== PAGE 156/197 ======
   elseif RaidSelectedWeapon == "Blox Fruit" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Blox Fruit" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
   SelectWeaponRaid = v.Name
   elseif RaidSelectedWeapon == "Gun" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Gun" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
   SelectWeaponRaid = v.Name
      end)
end)
DisRaid = 70
Law_Raids:addTextbox("Distance Farm", DisRaid, function(Value)
   DisRaid = Value
end)
   Auto_Buy_Law_Chip = Value
end)
spawn(function()
   while wait() do
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
game:GetService("Workspace").Enemies:FindFirstChild("Order") or
game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
   local args = {
   [1] = "BlackbeardReward",
   [2] = "Microchip",
      [3]  ==  "2"
      }}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
Law_Raids:addToggle("Start Law Raid", Auto_Start_Law_Dungeon, function(Value)
   Auto_Start_Law_Dungeon = Value
end)

-- ====== PAGE 157/197 ======
spawn(function()
   while wait() do
   pcall(function()
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.M
ain.ClickDetector)
      end)
end)
Law_Raids:addToggle('Auto Kill Law Raid', BossRaid, function(Value)
   BossRaid = Value
   CancelTween(BossRaid)
end)
spawn(function()
   while task.wait() do
   pcall(function()
   for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
   if v.Name == "Order" and v:FindFirstChild("HumanoidRootPart")
and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
   repeat game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeaponRaid)
   v.HumanoidRootPart.CanCollide = false
   Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
   until not BossRaid or v.Humanoid.Health <= 0 or not
   for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
   if v.Name == "Order" then
   Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
      end)
end)
local Raid_Right = Tab.Tab_4:addSection()
local Raids = Raid_Right:addMenu('#Raids')
local Chips =
{"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Ph
oenix","Dough"}
Raids:addDropdown("Select Chips", SelectChip, Chips, function(Value)
   SelectChip = Value
end)

-- ====== PAGE 158/197 ======
Raids:addToggle("Auto Buy Microchips", AutoBuySpecialChip, function(Value)
   AutoBuySpecialChip = Value
end)
spawn(function()
   while task.wait() do
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or not
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or not
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special
Microchip") or not
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select
",SelectChip)
end)
Raids:addToggle("Auto Start Raids", AutoSTartRaids, function(Value)
   AutoSTartRaids = Value
end)
spawn(function()
   while task.wait() do
game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or
Personal data mggaaay mmbeee ::prGGoceeettssSSeeed rrtovv diiocc theee(( f""olPPlollwiaangyy: eeusrress p""re))c..iseLL oogeccoaalollcaPPtillonaa dyyaeetarr a..ndCC ahhcaativrreaalycc sttcaeen rrd::evFFiciienn cddhaFFraiicrrtessristttiCCcshh fiiollr iddde((n""ti SScppateeioccnii. al
Microchip") or
game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip")
fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDete
ctor)
   local plr = game:GetService("Players").LocalPlayer
   local RaidLab = CFrame.new(-5057.146484375, 314.54132080078, -
2934.7995605469)
   if (RaidLab.Position -
plr.Character.HumanoidRootPart.Position).Magnitude > 10 then
   Tween(RaidLab)
   elseif (RaidLab.Position -
plr.Character.HumanoidRootPart.Position).Magnitude < 10 then
   wait(1)
      ffiirreecclliicckkddeeSttaeevccett poorrre((feggraaemmneec..eWWsoorrkkssppaaccee..MMaapp[[""BBooaatt
Castle"].RaidSummon2.Button.Main.ClickDetector)
end)

-- ====== PAGE 159/197 ======
))
Raids:addToggle('Kill Raid Aura', RaidAura, function(Value)
   RaidAura = Value
end)
spawn(function()
   game:GetService("RunService").Heartbeat:Connect(function()
   local RegisterAttack =
game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterAttack"]
   local RegisterHit =
game:GetService("ReplicatedStorage").Modules.Net["RE/RegisterHit"]
game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible
== true then
   pcall(function()
   for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
   if v:FindFirstChild("Humanoid") and
v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeaponRaid)
   v.Humanoid.Health = 0
   v.HumanoidRootPart.CanCollide = false
sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.hu
ge)
game.Workspace.Enemies:FindFirstChild(v.Name)
      end)
      end)
end)
Raids:addToggle('Auto Next Island', AutoNextIsland, function(Value)
   AutoNextIsland = Value
   CancelTween(AutoNextIsland)
end)
spawn(function()
   while wait() do
game:GetService("Players").LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible
== true then
   if game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
   if (game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
   Tween(game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island
5").CFrame*CFrame.new(0,DisRaid,0))
   elseif game:GetService("Workspace")

-- ====== PAGE 160/197 ======
gg    ((    pp    ))
["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
   if (game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
   Tween(game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island
4").CFrame*CFrame.new(0,DisRaid,0))
   elseif game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
   if (game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
   Tween(game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island
3").CFrame*CFrame.new(0,DisRaid,0))
   elseif game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
   if (game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
   Tween(game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island
2").CFrame*CFrame.new(0,DisRaid,0))
   elseif game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
   if (game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.Position -
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitu
   Tween(game:GetService("Workspace")
["_WorldOrigin"].Locations:FindFirstChild("Island
1").CFrame*CFrame.new(0,DisRaid,0))
end)
Raids:addToggle('Auto Awaken', AutoAwakenAbilities, function(Value)
   AutoAwakenAbilities = Value
end)
spawn(function()
   while wait() do
   local args1 = {
   [1] = "Awakener",
   [2] = "Check"
      }}
game:GetService("ReplicatedStorage"R)e.jeRcet mNootne-Ess.sCeonmtimalF_:InvokeServer(unpack(args1))
   local args2 = {
   [1] = "Awakener",

-- ====== PAGE 161/197 ======
[[ ]]    ,,
   [2] = "Awaken"
      }}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args2))
end)
Raids:addButton("Teleport to Raid Lab", function()
   Tween(CFrame.new(-6449.68896, 249.56958, -4497.59326, 0.69785428,
2.40766074e-09, 0.69785428))
   Tween(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
end)
local Pvp_Left = Tab.Tab_Combat:addSection()
local Setting_Pvp = Pvp_Left:addMenu('#Setting Pvp')
local Current = Setting_Pvp:addLabel("Current Bounties : ")
local Earn = Setting_Pvp:addLabel("Earned : ")
local OldBounty =
game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
local Bounty =
tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
local Earned =
tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value -
local sub = string.sub
local len = string.len
spawn(function()
   while wait() do
   pcall(function()
   if len(Bounty) == 4 then
   Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."K"
   elseif len(Bounty) == 5 then
   Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."K"
   elseif len(Bounty) == 6 then
   Bounty1 = sub(Bounty,1,3).."."..sub(Bounty,4,5).."K"
   elseif len(Bounty) == 7 then
   Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."M"
   elseif len(Bounty) == 8 then
   Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."M"
   elseif len(Bounty) <= 3 then
   Bounty1 = Bounty
   if len(Earned) == 4 then
   Earned1 = sub(EarnReedj,e1c,t 1N)o.n.-E"s.s"e.nt.iaslub(Earned,2,3).."K"
   elseif len(Earned) == 5 then
Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."K"

-- ====== PAGE 162/197 ======
((    ))
   Earned1  sub(Earned,1,2).. . ..sub(Earned,3,4).. K
   elseif len(Earned) == 6 then
   Earned1 = sub(Earned,1,3).."."..sub(Earned,4,5).."K"
   elseif len(Earned) == 7 then
   Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."M"
   elseif len(Earned) == 8 then
   Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."M"
   elseif len(Earned) <= 3 then
   Earned1 = Earned
   if tonumber(Bounty) == 25000000 then
   Current:Refresh("Current Bounties : "..Bounty1.." [ Max ]")
   elseif tonumber(Bounty) < 25000000 then
   Current:Refresh("Current Bounties : "..Bounty1)
   Earn:Refresh("Earned : "..tonumber(Earned1))
      end)
end)
local PvpWeaponList = {"Melee", "Sword", "Blox Fruit", "Gun"}
Setting_Pvp:addDropdown("Select Weapon", PvpSelectedWeapon, PvpWeaponList,
function(Value)
   PvpSelectedWeapon = Value
end)
task.spawn(function()
   while wait() do
   pcall(function()
   if PvpSelectedWeapon == "Melee" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Melee" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
   SelectWeaponPvp = v.Name
   elseif PvpSelectedWeapon == "Sword" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Sword" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
   SelectWeaponPvp = v.Name
   elseif PvpSelectedWeapon == "Blox Fruit" then
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Blox Fruit" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
   SelectWeaponPvp = v.Name
   elseif PvpSelectedWeapon == "Gun" then
for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())

-- ====== PAGE 163/197 ======
   for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())
   if v.ToolTip == "Gun" then
game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
   SelectWeaponPvp = v.Name
      end)
end)
local PvpTable = {
   "Above",
   "Bellow",
   "Behind"
}}
AutoPvpType = "Behind"
Setting_Pvp:addDropdown("Select Pvp Type", AutoPvpType, PvpTable, function(Value)
   AutoPvpType = Value
end)
spawn(function()
   while wait() do
   if AutoPvpType == "Above" then
   Pvp_Mode = CFrame.new(0,DisPvp,0) * CFrame.Angles(math.rad(-90),0,0)
   elseif AutoPvpType == "Bellow" then
   Pvp_Mode = CFrame.new(0,DisPvp,0) * CFrame.Angles(math.rad(90),0,0)
   elseif AutoPvpType == "Behind" then
   Pvp_Mode = CFrame.new(0,0,DisPvp) * CFrame.Angles(math.rad(0),0,0)
end)
DisPvp = 10
   DisPvp = Value
end)
Setting_Pvp:addToggle("Player ESP", _G.ESPPlayer, function(Value)
   _G.ESPPlayer = Value
end)
spawn(function()
   while wait() do
   pcall(function()
   for i,v in pairs(game.Players:GetChildren()) do
   if v.Name ~= game.Players.LocalPlayer.Name then
v.Character.HumanoidRootPart:FindFirstChild("PlayerESP") then
   local BillboardGui = Instance.new("BillboardGui")
   local TextLabel = Instance.new("TextLabel")
   BillboardGui.Parent = v.Character.HumanoidRootPart
   BillboardGui.ZIndexBehavior =
   BillboardGui.Active = true
   BillboardGui.Name = "PlayerESP"
BillboardGui.AlwaysOnTop = true

-- ====== PAGE 164/197 ======
   BillboardGui.LightInfluence = 1.000
   BillboardGui.Size = UDim2.new(0, 200, 0, 50)
   BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
   TextLabel.Parent = BillboardGui
   TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255,
255)
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Size = UDim2.new(0, 200, 0, 50)
   TextLabel.Font = Enum.Font.GothamBold
  TextLabel.FontSize = "Size14"
   TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
   TextLabel.Text.Size = 35
   TextLabel.TextStrokeTransparency = 0.5
   local Dis =
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.Character.HumanoidRootPart.Position).Magnitude)
v.Character.HumanoidRootPart:FindFirstChild("PlayerESP").TextLabel.Text =
v.DisplayName.."\n\n"..Dis.." M."
   if v.Team == game.Players.LocalPlayer.Team then
v.Character.HumanoidRootPart:FindFirstChild("PlayerESP").TextLabel.TextColor3 =
Color3.new(255,0,0)
v.Character.HumanoidRootPart:FindFirstChild("PlayerESP").TextLabel.TextColor3 =
Color3.new(0,255,0)
   for i,v in pairs(game.Players:GetChildren()) do
   if v.Name ~= game.Players.LocalPlayer.Name then
   v.Character.HumanoidRootPart.PlayerESP:Destroy()
      end)
end)
Setting_Pvp:addToggle("Enable Pvp", EnablePVP, function(Value)
   EnablePVP = Value
end)
spawn(function()
   pcall(function()
   while wait(.1) do
game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true
game:GetService("ReplicatedStorage").Remotes.CommF :InvokeServer("EnablePvp")

-- ====== PAGE 165/197 ======
      end)
end)
local Pvp_Right = Tab.Tab_Combat:addSection()
local Main_Pvp = Pvp_Right:addMenu("#Combat Player")
local PlayerList = {}
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
table.insert(PlayerList, v.DisplayName)
local DropdownPlayer = Main_Pvp:addDropdown("Select Player", SelectedPlayer,
PlayerList, function(Value)
   SelectedPlayer = Value
end)
Main_Pvp:addButton("Refresh Player",function()
NewPlayerList = {}
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
   table.insert(NewPlayerList, v.DisplayName)
DropdownPlayer:Clear()
DropdownPlayer:Refresh(NewPlayerList)
end)
task.spawn(function()
   while wait() do
   pcall(function()
   for i,v in pairs(game.Players:GetChildren()) do
if v.DisplayName == SelectedPlayer then
      end)
end)
Main_Pvp:addToggle("Spectate Player", Spectate, function(value)
Spectate = value
local plr1 = game.Players.LocalPlayer.Character.Humanoid
local plr2 = game.Players:FindFirstChild(SelectedPlayer)
repeat task.wait()
game.Workspace.Camera.CameraSubject = plr2.Character.Humanoid
until Spectate == false
game.Workspace.Camera.CameraSubject = plr1
end)
Main_Pvp:addToggle("Combat Player", TweenToPlayer, function(Value)
   TweenToPlayer = Value
   CancelTween(TweenToPlayer)
end)
spawn(function()
while task wait() do

-- ====== PAGE 166/197 ======
spawn(function()
   while task.wait() do
   pcall(function()
   for i,v in pairs(game.Players:GetChildren()) do
   if v.Character:FindFirstChild("Humanoid") and
v.Character:FindFirstChild("HumanoidRootPart") and v.Character.Humanoid.Health > 0
   if v.Name == SelectedPlayer then
   repeat game:GetService("RunService").Heartbeat:wait()
   EquipTool(SelectWeaponPvp)
   Tween(v.Character.HumanoidRootPart.CFrame *
Pvp_Mode)
   Player_Name = v.Name
   Player_Position =
   AutoClick()
== 0 or not game.Players:FindFirstChild(v.Name)
      end)
end)
Main_Pvp:addToggle("Aimbot Skill", AimbotSkillPlayer, function(Value)
   AimbotSkillPlayer = Value
end)
spawn(function()
   local gg = getrawmetatable(game)
   local old = gg.__namecall
   setreadonly(gg,false)
   gg.__namecall = newcclosure(function(...)
   local method = getnamecallmethod()
   local args = {...}
   if tostring(args[1]) == "RemoteEvent" then
   if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false"
   if type(args[2]) == "vector" then
   args[2] = Player_Position
   args[2] = CFrame.new(Player_Position)
   return old(unpack(args))
   return old(...)
      end)
end)
spawn(function()
   while task.wait() do
pcall(function()

-- ====== PAGE 167/197 ======
pcall(function()
   for i,v in pairs(game.Players:GetChildren()) do
   if v.Name == Player_Name and
v.Character:FindFirstChild("Humanoid") and
v.Character:FindFirstChild("HumanoidRootPart") and v.Character.Humanoid.Health > 0
   Player_Position = v.Character.HumanoidRootPart.Position
   repeat game:GetService("RunService").Heartbeat:wait()
game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponPvp)
game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponPvp).Mo
usePos.Value = Player_Position
game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
   wait(.1)
game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
   wait(.1)
Third Parties game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
== 0 or not game.Players:FindFirstChild(v.Name)
      end)
end)
local Skill_Pvp = Pvp_Right:addMenu("#Skill Setting")
Skill Pvp:addToggle('Skill Z', PvpSkillZ, function(Value)
PvpSkillZ = Value

-- ====== PAGE 168/197 ======
Skill_Pvp:addToggle( Skill Z , PvpSkillZ, function(Value)
   PvpSkillZ = Value
end)
Skill_Pvp:addToggle('Skill X', PvpSkillX, function(Value)
   PvpSkillX = Value
end)
Skill_Pvp:addToggle('Skill C', PvpSkillC, function(Value)
   PvpSkillC = Value
end)
Skill_Pvp:addToggle('Skill V', PvpSkillV, function(Value)
   PvpSkillV = Value
end)
local TeleportStatus_Left = Tab.Tab_5:addSection()
local Teleport_World = TeleportStatus_Left:addMenu('#World Teleport')
Teleport_World:addButton("Travel to First Sea", function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)
Teleport_World:addButton("Travel to Second Sea", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)
Teleport_World:addButton("Travel to Third Sea", function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)
local Island_Teleport = TeleportStatus_Left:addMenu('#Island Teleport')
Storage Prefer  ences    "Start  Island";
   "Marine Start";
   "Middle Town";
Storag  e    "Jungle";
   "Pirate Village";
   "Desert";
   "Frozen Village";
   "Marine Ford";
   "Colosseum 1";
   "Sky island 1";
   "Sky island 2";
   "Sky island 3";
   "Sky island 4";
   "Prison";
   "Magma Village";
   "UndeyWater City";  Acept Al
   "Fountain City";
   "House Cyborgs";
   "Shanks Room";
"Mob Island";
"Sea Beast";

-- ====== PAGE 169/197 ======
   Mob Island ;
   "Sea Beast";
      }}
   IslandCheck = {
   "Dock";
   "Kingdom of Rose";
   "Mansion 1";
   "Flamingo Room";
   "Green Zone";
   "Cafe";
   "Factory";
   "Colosseum 2";
   "Grave Island";
   "Snow Mountain";
   "Cold Island";
   "Hot Island";
   "Cursed Ship";
   "Ice Castle";
   "Forgotten Island";
   "Usoapp Island";
   "Minisky Island";
   "Sea Beast";
      }}
   IslandCheck = {
   "Port Town";
   "Hydra Island";
   "Great Tree";
   "Castle on the Sea";
   "Floating Turtle";
   "Mansion 2";
   "Secret Temple";
   "Friendly Arena";
   "Beautiful Pirate Domain";
   "Teler Park";
   "Peanut Island";
   "Chocolate Island";
   "Ice Cream Island";
Storage Prefer  ences    "Cake  Loaf";
   "Candy Cane";
   "Tiki Outpost";
Storag  e    "Raid  Lab";
   "Mini Sky";
   "Sea Beast";
      }}
Island_Teleport:addDropdown("Select Island", SelectedIsland, IslandCheck,
function(Value)
   SelectedIsland = Value
end)
Island_Teleport:addButton("Teleport to Island", function()
   if SelectedIsland == "Start Island" then
   BTP(CFrame.new(1071.2832, 16.3085976, 1426.86792))
   Tween(CFrame.new(1071.2832, 16.3085976, 1426.86792))
elseif SelectedIsland  "Marine Start" then

-- ====== PAGE 170/197 ======
   elseif SelectedIsland == "Marine Start" then
   BTP(CFrame.new(-2573.3374, 6.88881969, 2046.99817))
   Tween(CFrame.new(-2573.3374, 6.88881969, 2046.99817))
   elseif SelectedIsland == "Middle Town" then
   BTP(CFrame.new(-655.824158, 7.88708115, 1436.67908))
   Tween(CFrame.new(-655.824158, 7.88708115, 1436.67908))
   elseif SelectedIsland == "Jungle" then
   BTP(CFrame.new(-1249.77222, 11.8870859, 341.356476))
   Tween(CFrame.new(-1249.77222, 11.8870859, 341.356476))
   elseif SelectedIsland == "Pirate Village" then
   BTP(CFrame.new(-1122.34998, 4.78708982, 3855.91992))
   Tween(CFrame.new(-1122.34998, 4.78708982, 3855.91992))
   elseif SelectedIsland == "Desert" then
   BTP(CFrame.new(1094.14587, 6.47350502, 4192.88721))
   Tween(CFrame.new(1094.14587, 6.47350502, 4192.88721))
   elseif SelectedIsland == "Frozen Village" then
   BTP(CFrame.new(1198.00928, 27.0074959, -1211.73376))
   Tween(CFrame.new(1198.00928, 27.0074959, -1211.73376))
   elseif SelectedIsland == "Marine Ford" then
may close this   banner to continue witBBh TTonPPly(( eCCsFFserrnaatiamml ceeo..onnkieeesww. P((r--iv44ac55y 00P55ol..ic33y7755,,  20.687294,  4260.55908))
   Tween(CFrame.new(-4505.375, 20.687294, 4260.55908))
Storag  e  elseif  SelectedIsland  ==  "Colosseum  1"  then
   BTP(CFrame.new(-1428.35474, 7.38933945, -3014.37305))
   Tween(CFrame.new(-1428.35474, 7.38933945, -3014.37305))
   elseif SelectedIsland == "Sky island 1" then
   BTP(CFrame.new(-4970.21875, 717.707275, -2622.35449))
   Tween(CFrame.new(-4970.21875, 717.707275, -2622.35449))
   elseif SelectedIsland == "Sky island 2" then
   BTP(CFrame.new(-4813.0249, 903.708557, -1912.69055))
Tween(CFrame new(-4813 0249 903 708557 -1912 69055))

-- ====== PAGE 171/197 ======
   Tween(CFrame.new(-4813.0249, 903.708557, -1912.69055))
   elseif SelectedIsland == "Sky island 3" then
   BTP(CFrame.new(-7952.31006, 5545.52832, -320.704956))
   Tween(CFrame.new(-7952.31006, 5545.52832, -320.704956))
   elseif SelectedIsland == "Sky island 4" then
   BTP(CFrame.new(-7793.43896, 5607.22168, -2016.58362))
   Tween(CFrame.new(-7793.43896, 5607.22168, -2016.58362))
   elseif SelectedIsland == "Prison" then
   BTP(CFrame.new(4854.16455, 5.68742752, 740.194641))
   Tween(CFrame.new(4854.16455, 5.68742752, 740.194641))
   elseif SelectedIsland == "Magma Village" then
   BTP(CFrame.new(-5231.75879, 8.61593437, 8467.87695))
   Tween(CFrame.new(-5231.75879, 8.61593437, 8467.87695))
   elseif SelectedIsland == "UndeyWater City" then
   BTP(CFrame.new(61163.8516, 11.7796879, 1819.78418))
   Tween(CFrame.new(61163.8516, 11.7796879, 1819.78418))
   elseif SelectedIsland == "Fountain City" then
   TP2(CFrame.new(5132.7124, 4.53632832, 4037.8562))
   Tween(CFrame.new(5132.7124, 4.53632832, 4037.8562))
   elseif SelectedIsland == "House Cyborgs" then
   BTP(CFrame.new(6262.72559, 71.3003616, 3998.23047))
   Tween(CFrame.new(6262.72559, 71.3003616, 3998.23047))
   elseif SelectedIsland == "Shanks Room" then
   BTP(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
   Tween(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
   elseif SelectedIsland == "Mob Island" then
   BTP(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
   Tween(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
   elseif SelectedIsland == "Dock" then
   BTP(CFrame.new(82.9490662, 18.0710983, 2834.98779))
T  (CF  (82 9490662 18 0710983 2834 98779))

-- ====== PAGE 172/197 ======
   Tween(CFrame.new(82.9490662, 18.0710983, 2834.98779))
   elseif SelectedIsland == "Kingdom of Rose" then
   BTP(CFrame.new(-394.983521, 118.503128, 1245.8446))
   Tween(CFrame.new(-394.983521, 118.503128, 1245.8446))
   elseif SelectedIsland == "Mansion 1" then
   BTP(CFrame.new(-390.096313, 331.886475, 673.464966))
   Tween(CFrame.new(-390.096313, 331.886475, 673.464966))
   elseif SelectedIsland == "Flamingo Room" then
   BTP(CFrame.new(2302.19019, 15.1778421, 663.811035))
   Tween(CFrame.new(2302.19019, 15.1778421, 663.811035))
   elseif SelectedIsland == "Green Zone" then
   BTP(CFrame.new(-2372.14697, 72.9919434, -3166.51416))
   Tween(CFrame.new(-2372.14697, 72.9919434, -3166.51416))
   elseif SelectedIsland == "Cafe" then
   BTP(CFrame.new(-385.250916, 73.0458984, 297.388397))
   Tween(CFrame.new(-385.250916, 73.0458984, 297.388397))
   elseif SelectedIsland == "Factory" then
   BTP(CFrame.new(430.42569, 210.019623, -432.504791))
   Tween(CFrame.new(430.42569, 210.019623, -432.504791))
   elseif SelectedIsland == "Colosseum 2" then
   BTP(CFrame.new(-1836.58191, 44.5890656, 1360.30652))
   Tween(CFrame.new(-1836.58191, 44.5890656, 1360.30652))
Target  ed Adveeerlltisssieengiiff  SelectedIsland  ==  "Grave  Island"  then
Perso  nalization    BTP(CFrame.new(-5411.47607,  48.8234024,  -721.272522))
Analyt  ics    Tween(CFrame.new(-5411.47607,  48.8234024,  -721.272522))
   elseif SelectedIsland == "Snow Mountain" then
   BTP(CFrame.new(511.825226, 401.765198, -5380.396))
   Tween(CFrame.new(511.825226, 401.765198, -5380.396))
   elseif SelectedIsland == "Cold Island" then
BTP(CFrame new( 6026 96484 14 7461271  5071 96338))

-- ====== PAGE 173/197 ======
   BTP(CFrame.new(-6026.96484, 14.7461271, -5071.96338))
   Tween(CFrame.new(-6026.96484, 14.7461271, -5071.96338))
   elseif SelectedIsland == "Hot Island" then
   BTP(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
   Tween(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
   elseif SelectedIsland == "Cursed Ship" then
   BTP(CFrame.new(902.059143, 124.752518, 33071.8125))
   Tween(CFrame.new(902.059143, 124.752518, 33071.8125))
   elseif SelectedIsland == "Ice Castle" then
   BTP(CFrame.new(5400.40381, 28.21698, -6236.99219))
   Tween(CFrame.new(5400.40381, 28.21698, -6236.99219))
   elseif SelectedIsland == "Forgotten Island" then
   BTP(CFrame.new(-3043.31543, 238.881271, -10191.5791))
   Tween(CFrame.new(-3043.31543, 238.881271, -10191.5791))
   elseif SelectedIsland == "Usoapp Island" then
   BTP(CFrame.new(4748.78857, 8.35370827, 2849.57959))
   elseif SelectedIsland == "Minisky Island" then
   BTP(CFrame.new(-260.358917, 49325.7031, -35259.3008))
   Tween(CFrame.new(-260.358917, 49325.7031, -35259.3008))
   elseif SelectedIsland == "Port Town" then
   BTP(CFrame.new(-610.309692, 57.8323097, 6436.33594))
   Tween(CFrame.new(-610.309692, 57.8323097, 6436.33594))
   elseif SelectedIsland == "Hydra Island" then
   BTP(CFrame.new(5229.99561, 603.916565, 345.154022))
   Tween(CFrame.new(5229.99561, 603.916565, 345.154022))
   elseif SelectedIsland == "Great Tree" then
   BTP(CFrame.new(2174.94873, 28.7312393, -6728.83154))
   Tween(CFrame.new(2174.94873, 28.7312393, -6728.83154))
   elseif SelectedIsland == "Castle on the Sea" then

-- ====== PAGE 174/197 ======
   BTP(CFrame.new(-5477.62842, 313.794739, -2808.4585))
   Tween(CFrame.new(-5477.62842, 313.794739, -2808.4585))
   elseif SelectedIsland == "Floating Turtle" then
   BTP(CFrame.new(-10919.2998, 331.788452, -8637.57227))
   Tween(CFrame.new(-10919.2998, 331.788452, -8637.57227))
   elseif SelectedIsland == "Mansion 2" then
   BTP(CFrame.new(-12553.8125, 332.403961, -7621.91748))
   Tween(CFrame.new(-12553.8125, 332.403961, -7621.91748))
   elseif SelectedIsland == "Secret Temple" then
   BTP(CFrame.new(5217.35693, 6.56511116, 1100.88159))
   Tween(CFrame.new(5217.35693, 6.56511116, 1100.88159))
   elseif SelectedIsland == "Friendly Arena" then
   BTP(CFrame.new(5220.28955, 72.8193436, -1450.86304))
   Tween(CFrame.new(5220.28955, 72.8193436, -1450.86304))
   elseif SelectedIsland == "Beautiful Pirate Domain" then
   BTP(CFrame.new(5310.8095703125, 21.594484329224, 129.39053344727))
   Tween(CFrame.new(5310.8095703125, 21.594484329224, 129.39053344727))
   elseif SelectedIsland == "Teler Park" then
   BTP(CFrame.new(-9512.3623046875, 142.13258361816, 5548.845703125))
   Tween(CFrame.new(-9512.3623046875, 142.13258361816, 5548.845703125))
   elseif SelectedIsland == "Peanut Island" then
   BTP(CFrame.new(-2142, 48, -10031))
   Tween(CFrame.new(-2142, 48, -10031))
   elseif SelectedIsland == "Chocolate Island" then
Analyt  ics    BTP(CFrame.new(156.896484,  30.5935211,  -12662.7031,  -0.573599219,  0,
0.81913656, 0, 1, 0, -0.81913656, 0, -0.573599219))
   Tween(CFrame.new(156.896484, 30.5935211, -12662.7031, -0.573599219, 0,
0.81913656, 0, 1, 0, -0.81913656, 0, -0.573599219))
   elseif SelectedIsland == "Ice Cream Island" then
   BTP(CFrame.new(-949, 59, -10907))
Tween(CFrame new( 949 59 10907))

-- ====== PAGE 175/197 ======
   Tween(CFrame.new(-949, 59, -10907))
   elseif SelectedIsland == "Haunted Castle" then
   BTP(CFrame.new(-9530.61035, -132.860657, 5763.13477))
   Tween(CFrame.new(-9530.61035, -132.860657, 5763.13477))
   elseif SelectedIsland == "Cake Loaf" then
   BTP(CFrame.new(-2099.33154, 66.9970703, -12128.585, 0.997561574, 0,
0.0697919354, 0, 1, 0, -0.0697919354, 0, 0.997561574))
   Tween(CFrame.new(-2099.33154, 66.9970703, -12128.585, 0.997561574, 0,
0.0697919354, 0, 1, 0, -0.0697919354, 0, 0.997561574))
   elseif SelectedIsland == "Candy Cane" then
   BTP(CFrame.new(-1530.97144, 13.728817, -14770.0889, 0.898790359, -0, -
0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359))
   Tween(CFrame.new(-1530.97144, 13.728817, -14770.0889, 0.898790359, -0,
-0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359))
   elseif SelectedIsland == "Tiki Outpost" then
   BTP(CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -0, -
0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566))
   Tween(CFrame.new(-16548.8164, 55.6059914, -172.8125, 0.213092566, -0, -
0.977032006, 0, 1, -0, 0.977032006, 0, 0.213092566))
   elseif SelectedIsland == "Raid Lab" then
Personal data m  ay be processed to dBBoTT thPPe(( foCCllFForrwiaangmm: eeus..enn peerewwci((se-- g55e00o55lo77ca..ti11on44 d66a44ta88 a44nd33 a77ct55iv,,el  y 33sc11a44n ..de55v44ic11e 33ch22a00ra88ct00er00is77ti88cs,, f  or-- id22e99nt33i 44c..at77io99n.99  5605469))
   Tween(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
   elseif SelectedIsland == "Mini Sky" then
   BTP(CFrame.new(-263.66668701172, 49325.49609375, -35260))
   Tween(CFrame.new(-263.66668701172, 49325.49609375, -35260))
   elseif SelectedIsland == "Sea Beast" then
   Tween(game:GetService("Workspace")["_WorldOrigin"].Locations["Sea of
Treats"].CFrame)
end)
Island_Teleport:addToggle("Bypass Teleport", BypassTeleport, function(Value)
   BypassTeleport = Value
local TeleportStatus_Right = Tab.Tab_5:addSection()
local Status_Player = TeleportStatus_Right:addMenu('#Status Player')
local RaceStatus  Status Player:addLabel("")

-- ====== PAGE 176/197 ======
local RaceStatus = Status_Player:addLabel("")
local PointStatus = Status_Player:addLabel("")
local StatusFunc1 = Status_Player:addLabel("")
local StatusFunc2 = Status_Player:addLabel("")
local StatusFunc3 = Status_Player:addLabel("")
local StatusFunc4 = Status_Player:addLabel("")
local StatusFunc5 = Status_Player:addLabel("")
spawn(function()
   while wait() do
   RaceStatus:Refresh("Race :
"..tostring(game:GetService("Players").LocalPlayer.Data.Race.Value))
   PointStatus:Refresh("Points Avaible :
"..tostring(game:GetService("Players").LocalPlayer.Data.Points.Value)..' Point')
   StatusFunc1:Refresh("Melee :
"..tostring(game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("L
evel").Value)..' Point Left')
   StatusFunc2:Refresh("Defense :
"..tostring(game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild(
"Level").Value)..' Point')
   StatusFunc3:Refresh("Sword :
"..tostring(game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("L
evel").Value)..' Point')
   StatusFunc4:Refresh("Gun :
"..tostring(game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Lev
el").Value)..' Point')
   StatusFunc5:Refresh("Devil Fruit :
"..tostring(game:GetService("Players").LocalPlayer.Data.Stats["Demon
Fruit"]:WaitForChild("Level").Value)..' Point')
end)
Set_Status:addTextbox("Set Point", SelectPoint, function(Value)
   SelectPoint = Value
end)
Set_Status:addToggle("Melee", Meleef, function(Value)
   Meleef = Value
   while wait() and Meleef do
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint",
"Melee", SelectPoint)
end)
Set_Status:addToggle("Defense", Defensef, function(Value)
   Defensef = Value
   while wait() and Defensef do
ggaammee::GGeettSSeerrvviiccee((""RReepplliiccaatteeddSSttoorraaggee""))S..avRReee mmpoorettfeeessre..nCCcooemmsmmFF__::IInnvvookkeeSSeerrvveerr((""AAddddPPooiinntt"",,
"Defense", SelectPoint)
end)
Set_Status:addToggle("Sword", Swordf, function(Value)
   Swordf = Value

-- ====== PAGE 177/197 ======
   while wait() and Swordf do
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint",
"Sword", SelectPoint)
end)
Set_Status:addToggle("Gun", Gunf, function(Value)
   Gunf = Value
   while wait() and Gunf do
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun",
SelectPoint)
end)
Set_Status:addToggle("Devil Fruit", DevilFruitf, function(Value)
   DevilFruitf = Value
   while wait() and DevilFruitf do
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon
Fruit", SelectPoint)
end)
local Shop_Left = Tab.Tab_6:addSection()
local RaceFragShop = Shop_Left:addMenu('#Bone - Ecto - Fragment')
RaceFragShop:addButton("Race Ghoul [ $100 Ectoplasm ]", function()
   local args1 = {
   [1] = "Ectoplasm",
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1))
   local args2 = {
   [1] = "Ectoplasm",
   [2] = "Change",
      [3]  ==  44
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args2))
end)
RaceFragShop:addButton("Cyborg [ $??? ]", function()
   local args = {
   [1] = "CyborgTrainer",
   [2] = "Buy"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
RaceFragShop:addButton("Suprise Bone [ 50 Bone ]", function()
   local args = {
   [1] = "Bones",
   [2] = "Buy",
      [3]  ==  1,
      [4]  ==  11
}}

-- ====== PAGE 178/197 ======
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
RaceFragShop:addButton("Stat Refund [ 50 Bone ]", function()
   local args = {
   [1] = "Bones",
   [2] = "Buy",
      [3]  ==  1,
      [4]  ==  22
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
RaceFragShop:addButton("Race Reroll [ 50 Bone ]", function()
   local args = {
   [1] = "Bones",
   [2] = "Buy",
      [3]  ==  1,
      [4]  ==  33
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
RaceFragShop:addButton("Random Race [ f3000 Fragments ]", function()
   local args = {
   [1] = "BlackbeardReward",
   [2] = "Reroll",
      [3]  ==  "2"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
RaceFragShop:addButton("Reset Stats [ f2500 Fragments ]", function()
   local args = {
   [2] = "Refund",
      [3]  ==  "2"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local AbilityShop = Shop_Left:addMenu('#Abilities')
AbilityShop:addButton("Skyjump [ $10,000 Beli ]", function()
   local args = {
   [1] = "BuyHaki",
   [2] = "Geppo"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
AbilityShop:addButton("Buso Haki [ $25,000 Beli ]", function()
   local args = {
   [1] = "BuyHaki",
      }}

-- ====== PAGE 179/197 ======
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
AbilityShop:addButton("Soru [ $100,000 Beli ]", function()
   local args = {
   [1] = "BuyHaki",
   [2] = "Soru"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
AbilityShop:addButton("Observation haki [ $750,000 Beli ]", function()
   local args = {
   [1] = "KenTalk",
   [2] = "Buy"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local FightingShop = Shop_Left:addMenu('#Fighting')
FightingShop:addButton("Black Leg [ $150,000 Beli ]", function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)
FightingShop:addButton("Electro [ $550,000 Beli ]", function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)
FightingShop:addButton("Fishman Karate [ $750,000 Beli ]", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate"
))
end)
FightingShop:addButton("Dragon Claw [ $1,500 Fragments ]", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward"
,"DragonClaw","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward"
,"DragonClaw","2")
end)
FightingShop:addButton("Superhuman [ $3,000,000 Beli ]", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)
FightingShop:addButton("Death Step [ $5,000 Fragments / $5,000,000 Beli ]",
function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)
FightingShop:addButton("Sharkman Karate [ $5,000 Fragments / $2,500,000 Beli ]",

-- ====== PAGE 180/197 ======
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate
",true)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate
")
end)
FightingShop:addButton("Electric Claw [ $5,000 Fragments / $3,000,000 Beli ]",
function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)
FightingShop:addButton("Dragon Talon [ $5,000 Fragments / $3,000,000 Beli ]",
function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)
FightingShop:addButton("God Human [ $5,000 Fragments / $5,000,000 Beli ]",
function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)
local SwordShop = Shop_Left:addMenu('#Sword')
SwordShop:addButton("Cutlass [ $1,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Cutlass"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
SwordShop:addButton("Katana [ $1,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Katana"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
SwordShop:addButton("Dual Katana [ $12,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Dual Katana"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
SwordShop:addButton("Iron Mace [ $25,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Iron Mace"
      }}
   game:GetService("ReplicatedStoRreajgecet" N)o.nR-eEmsosetnetsia.lCommF_:InvokeServer(unpack(args))
end)

-- ====== PAGE 181/197 ======
SwordShop:addButton("Triple Katana [ $60,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Triple Katana"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
SwordShop:addButton("Pipe [ $100,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Pipe"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
SwordShop:addButton("Dual-Headed Blade [ $400,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Dual-Headed Blade"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
SwordShop:addButton("Soul Cane [ $750,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Soul Cane"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
SwordShop:addButton("Bisento [ $1,200,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
SwordShop:addButton("Pole v2 [ f5,000 Fragments ]", function()
   game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
end)
local Shop_Right = Tab.Tab_6:addSection()
local DevilShop = Shop_Right:addMenu('#Devil Fruits')
local Remote_GetFruits =
game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits")
local ShopDevilSell = {}
table.insert(ShopDevilSell,v.Name)

-- ====== PAGE 182/197 ======
local PriceDevFruit = DevilShop:addLabel('Fruit Price : -')
spawn(function()
   while task.wait() do
   if v.Name == Select_Devil_Fruit then
   PriceDevFruit:Refresh('Fruit Price : $' .. v.Price)
end)
local DevilShopsRefresh = DevilShop:addDropdown('Select Devil Fruit on Sale',
Select_Devil_Fruit, ShopDevilSell, function(Value)
   Select_Devil_Fruit = Value
end)
DevilShop:addButton("Refresh Fruit on Sale", function()
   DevilShopsRefresh:Clear()
   DevilShopsRefresh:Refresh(ShopDevilSell)
end)
DevilShop:addButton("Buy Devil Fruit on Sale", function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit"
,Select_Devil_Fruit)
end)
DevilShop:addToggle('Buy Random Fruit', AutoBuyFruitZioles, function(Value)
   AutoBuyFruitZioles = Value
end)
spawn(function()
   while task.wait() do
   pcall(function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
      end)
end)
function getNil(name,class)
   for _,v in next, getnilinstances() do
   if v.ClassName == class and v.Name == name then
function StoredFruited(name_1, name_2)
   local Character = game:GetService("Players").LocalPlayer.Character
   local Backpack = game:GetService("Players").LocalPlayer.Backpack
   local CommF_ = game:GetService("ReplicatedStorage").Remotes.CommF_
   if Character:FindFirstChild(name_2) or Backpack:FindFirstChild(name_2) then
   local args = {
   [1] = "StoreFruit",
   [2] = name_1,

-- ====== PAGE 183/197 ======
   [3] = Character:FindFirstChild(name_2) or
Backpack:FindFirstChild(name_2)
}}
   CommF_:InvokeServer(unpack(args))
DevilShop:addToggle('Auto Stored Fruit (Working)', AutoStoreFruit, function(Value)
   AutoStoreFruit = Value
end)
spawn(function()
   while task.wait() do
   pcall(function()
   StoredFruited("Rocket-Rocket", "Rocket Fruit")
   StoredFruited("Spin-Spin", "Spin Fruit")
   StoredFruited("Chop-Chop", "Chop Fruit")
   StoredFruited("Spring-Spring", "Spring Fruit")
   StoredFruited("Bomb-Bomb", "Bomb Fruit")
   StoredFruited("Smoke-Smoke", "Smoke Fruit")
   StoredFruited("Spike-Spike", "Spike Fruit")
   StoredFruited("Flame-Flame", "Flame Fruit")
   StoredFruited("Falcon-Falcon", "Falcon Fruit")
   StoredFruited("Ice-Ice", "Ice Fruit")
   StoredFruited("Sand-Sand", "Sand Fruit")
   StoredFruited("Dark-Dark", "Dark Fruit")
   StoredFruited("Diamond-Diamond", "Diamond Fruit")
   StoredFruited("Light-Light", "Light Fruit")
   StoredFruited("Rubber-Rubber", "Rubber Fruit")
   StoredFruited("Barrier-Barrier", "Barrier Fruit")
   StoredFruited("Ghost-Ghost", "Ghost Fruit")
   StoredFruited("Magma-Magma", "Magma Fruit")
   StoredFruited("Quake-Quake", "Quake Fruit")
   StoredFruited("Buddha-Buddha", "Buddha Fruit")
   StoredFruited("Love-Love", "Love Fruit")
   StoredFruited("Spider-Spider", "Spider Fruit")
   StoredFruited("Phoenix-Phoenix", "Phoenix Fruit")
   StoredFruited("Portal-Portal", "Portal Fruit")
   StoredFruited("Rumble-Rumble", "Rumble Fruit")
   StoredFruited("Pain-Pain", "Pain Fruit")
   StoredFruited("Blizzard-Blizzard", "Blizzard Fruit")
   StoredFruited("Gravity-Gravity", "Gravity Fruit")
   StoredFruited("Mammoth-Mammoth", "Mammoth Fruit")
   StoredFruited("Dough-Dough", "Dough Fruit")
   StoredFruited("Shadow-Shadow", "Shadow Fruit")
   StoredFruited("Venom-Venom", "Venom Fruit")
   StoredFruited("Control-Control", "Control Fruit")
   StoredFruited("Spirit-Spirit", "Spirit Fruit")
   StoredFruited("Dragon-Dragon", "Dragon Fruit")
   StoredFruited("Leopard-Leopard", "Leopard Fruit")
   StoredFruited("Kitsune-Kitsune", "Kitsune Fruit")
      end)
end)
DevilShop:addToggle("Fruit Notification", _G.FruitCheck, function(Value)
   _G.FruitCheck = Value

-- ====== PAGE 184/197 ======
end)
spawn(function()
   while wait(.1) do
   for i,v in pairs(game.Workspace:GetChildren()) do
   if v:IsA("Tool") then
require(game:GetService("ReplicatedStorage").Notification).new(v.Name.."
Spawned"):Display();
   wait()
   setthreadcontext(5)
end)
DevilShop:addToggle("Teleport to Fruit", _G.TeleportFruit, function(Value)
   _G.TeleportFruit = Value
   CancelTween(_G.TeleportFruit)
end)
spawn(function()
   while wait() do
   for i,v in pairs(game.Workspace:GetChildren()) do
   if v:IsA("Tool") then
   Tween(v.Handle.CFrame)
end)
DevilShop:addToggle("Bring Fruit (Instant)", _G.BringFruitBF, function(Value)
   _G.BringFruitBF = Value
end)
spawn(function()
   pcall(function()
Third Parties    for i,v in pairs(game.Workspace:GetChildren()) do
   if v:IsA("Tool") then
   v.Handle.CFrame =
      end)
end)
local GunShop = Shop_Right:addMenu('#Gun')
GunShop:addButton("Slingshot [ $5,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Slingshot"

-- ====== PAGE 185/197 ======
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
GunShop:addButton("Musket [ $8,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Musket"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
GunShop:addButton("Flintlock [ $10,500 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Flintlock"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
GunShop:addButton("Refined Slingshot [ $30,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Refined Slingshot"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
GunShop:addButton("Refined Flintlock [ $65,000 Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Refined Flintlock"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
GunShop:addButton("Kabucha [ f1,500 Fragments)", function()
"Slingshot", "2")
end)
local AccessoriesShop = Shop_Right:addMenu('#Accessories')
AccessoriesShop:addButton("Black Cape [ $50,000 Beli ]",function()
   local args = {
   [1] = "BuyItem",
   [2] = "Black Cape"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
AccessoriesShop:addButton("Swordsman Hat [ 150k Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Swordsman Hat"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

-- ====== PAGE 186/197 ======
end)
AccessoriesShop:addButton("Tomoe Ring [ $500k Beli ]", function()
   local args = {
   [1] = "BuyItem",
   [2] = "Tomoe Ring"
      }}
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local Misc_Left = Tab.Tab_7:addSection()
local Misc_2 = Misc_Left:addMenu('#Misc')
Misc_2:addToggle('Dodge No CD', DodgewithoutCool, function(Value)
   DodgewithoutCool = Value
end)
function NoCooldown()
   for i,v in next, getgc() do
   if typeof(v) == "function" then
   if getfenv(v).script ==
game.Players.LocalPlayer.Character:WaitForChild("Dodge") then
   for i2,v2 in next, getupvalues(v) do
   if tostring(v2) == "0.4" then
   setupvalue(v,i2,0)
spawn(function()
   while wait() do
Third Parties       pcall(function()
   NoCooldown()
      end)
end)
Misc_2:addToggle('Infinite Energy', InfiniteAbility, function(Value)
   InfiniteAbility = Value
end)
function InfinityEnergy()
game:GetService('Players').LocalPlayer.Character.Energy.Changed:connect(function()
      ggaammee::GGeettSSeerrvviiccee((''PPllaayyeerrss''))A..cLLcooeccpaatll APPllllaayyeerr..CChhaarraacctteerr..EEnneerrggyy..VVaalluuee  ==
game:GetService('Players').LocalPlayer.Character.Energy.MaxValue
end)

-- ====== PAGE 187/197 ======
spawn(function()
   while wait() do
   pcall(function()
   InfinityEnergy()
      end)
end)
Misc_2:addToggle('Infinite Geppo', InfiniteGeppo, function(Value)
   InfiniteGeppo = Value
end)
spawn(function()
   while task.wait(1) do
   pcall(function()
   for i,v in next, getgc() do
   if getfenv(v).script ==
game.Players.LocalPlayer.Character:WaitForChild("Geppo") then
   for i2,v2 in next, getupvalues(v) do
   if tostring(v2) == "0" then
   repeat wait(.1)
   setupvalue(v,i2,0)
game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
      end)
end)
Misc_2:addToggle('Infinite Soru', InfiniteSoru, function(Value)
   InfiniteSoru = Value
end)
Storage Prefer  ences while  task.wait(1)  do
game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
Storag~~e==  nil    then
   pcall(function()
   for i,v in next, getgc() do
   if getfenv(v).script ==
game.Players.LocalPlayer.Character:WaitForChild("Soru") then
   for i2,v2 in pairs(debug.getupvalues(v)) do
   if type(v2) == 'table' then
   repeat task.wait(.1)
   setupvalue(v, i2, {LastAfter = 0,LastUse =
0})
ggaammee::GGeettSSeerrvviiccee((""PPllaayyeerrss""))..LLooccaallPPllaayyeerrA..cCCchheaaprrtaa Acclttleerr..HHuummaannooiidd..HHeeaalltthh  <=  00

-- ====== PAGE 188/197 ======
      end)
end)
WalkOnWater = true
Misc_2:addToggle('Walk on Water', WalkOnWater, function(Value)
   WalkOnWater = Value
end)
spawn(function()
   while task.wait(1) do
   pcall(function()
   game:GetService("Workspace").Map["WaterBase-Plane"].Size =
Vector3.new(1000,112,1000)
   game:GetService("Workspace").Map["WaterBase-Plane"].Size =
Vector3.new(1000,80,1000)
      end)
end)
Misc_2:addToggle('Remove Fog', _G.Remove_Fog, function(Value)
   _G.Remove_Fog = Value
   while _G.Remove_Fog do wait()
   game.Lighting.FogEnd = 9e9
   game.Lighting.FogEnd = 2500
end)
may close this MMbaiinssneccr __to22 c::oaantddinddueTT wooitggh ggonlllyee e((s''seWWnhhtiaiil ttcoeeo  kiSSescc. Prrreeiveeacnny ''Po,,l  icy__GG..WWhhiittee__SSccrreeeenn,,  function(Value)
Storage Prefer  ences _G.White_Screen  ==  Value
   game:GetService("RunService"):Set3dRenderingEnabled(false)
   game:GetService("RunService"):Set3dRenderingEnabled(true)
end)
local Misc_1 = Misc_Left:addMenu('#Misc')
local CodeList = {
   "EXP_5B",
   "CONTROL",
   "UPDATE11",
   "XMASEXP",
   "1BILLION",
   "ShutDownFix2",
   "UPD14",

-- ====== PAGE 189/197 ======
   "STRAWHATMAINE",
   "TantaiGaming",
   "Colosseum",
   "Axiore",
   "Sub2Daigrock",
   "Sky Island 3",
   "Sub2OfficialNoobie",
   "SUB2NOOBMASTER123",
   "THEGREATACE",
   "Fountain City",
   "BIGNEWS",
   "FUDD10",
   "SUB2GAMERROBOT_EXP1",
   "UPD15",
   "2BILLION",
   "UPD16",
   "3BVISITS",
   "fudd10_v2",
   "Starcodeheo",
   "Magicbus",
   "JCWK",
   "Bluxxy",
   "Sub2Fer999",
   "Enyu_is_Pro",
   "SECRET_ADMIN",
   "KITT_RESET",
   "DRAGONABUSE",
   "Sub2CaptainMaui",
   "DEVSCOOKING",
   "kittgaming",
   "Sub2Fer999",
   "Enyu_is_Pro",
   "Magicbus",
   "JCWK",
   "Starcodeheo",
   "Bluxxy",
   "fudd10_v2",
   "SUB2GAMERROBOT_EXP1",
   "Sub2NoobMaster123",
   "Sub2UncleKizaru",
   "Sub2Daigrock",
Storag  e  "Axiore",
   "TantaiGaming",
Target  ed Adv""erSStittsinrrgaawwHHaattMMaaiinnee"",,
   "Sub2OfficialNoobie",
   "Fudd10",
   "Bignews",
   "TheGreatAce"
}}
Misc_1:addButton('Redeem X2 Code', function()
   function RedeemCode(value)
   game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
   for i,v in pairs(CodeList) do
   RedeemCode(v)
end)

-- ====== PAGE 190/197 ======
Misc_1:addButton("Join Pirates Team", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates
")
end)
Misc_1:addButton("Join Marines Team", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines
")
end)
Misc_1:addButton("Always Day", function()
   while game:GetService("RunService").Heartbeat:wait() do
   game:GetService("Lighting").ClockTime = 12
end)
Misc_1:addButton("Remove Lave", function()
   for i,v in pairs(game.Workspace:GetDescendants()) do
   if v.Name == "Lava" then
v:Destroy()
   for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
   if v.Name == "Lava" then
v:Destroy()
end)
Misc_1:addButton("Title Name", function()
   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getTitles")
game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)
Misc_1:addButton("Color Haki", function()
   game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)
local Misc_Right = Tab.Tab_7:addSection()
Targetlleood ccAdaavlle  rtiEEsinSSgPP__SSeeccttiioonn  ==  Misc_Right:addMenu('#ESP')
ESP_Section:addToggle('Chest ESP', ChestESP, function(Value)
Perso  nalizatioCCnhheessttEESSPP  ==  Value
end)
Analytssicppsaawwnn((ffuunnccttiioonn(())
   while wait() do
   pcall(function()
   for i,v in pairs(game.Workspace:GetChildren()) do
   if v.Name == "Chest1" or v.Name == "Chest2" or v.Name ==
"Chest3" then
   if not v:FindFirstChild("ChestESP") then
   local BillboardGui = Instance.new("BillboardGui")
   local TextLabel = Instance.new("TextLabel")

-- ====== PAGE 191/197 ======
   BillboardGui.Parent = v
   BillboardGui.ZIndexBehavior =
   BillboardGui.Active = true
   BillboardGui.Name = "ChestESP"
   BillboardGui.AlwaysOnTop = true
   BillboardGui.LightInfluence = 1.000
   BillboardGui.Size = UDim2.new(0, 200, 0, 50)
   BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
TextLabel.Parent = BillboardGui
   TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255,
255)
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Size = UDim2.new(0, 200, 0, 50)
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
   TextLabel.FontSize = "Size14"
   TextLabel.TextStrokeTransparency = 0.5
   local Dis =
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.Position).Magnitude)
   v.ChestESP.TextLabel.Text = v.Name.."\n"..Dis.." M."
   if v.Name == "Chest1" then
   v:FindFirstChild("ChestESP").TextLabel.TextColor3 =
Color3.fromRGB(109, 109, 109)
   elseif v.Name == "Chest2" then
   v:FindFirstChild("ChestESP").TextLabel.TextColor3 =
Color3.fromRGB(173, 158, 21)
   elseif v.Name == "Chest3" then
Color3.fromRGB(85, 255, 255)
   for i,v in pairs(game.Workspace:GetChildren()) do
   if v.Name == "Chest1" or v.Name == "Chest2" or v.Name ==
"Chest3" then
   if v:FindFirstChild("ChestESP") then
   v.ChestESP:Destroy()
Perso  nalization  end)
Analyteeicnnsdd))
ESP_Section:addToggle('Devil Fruit ESP (Red Color)', _G.ESPDF, function(Value)
   _G.ESPDF = Value
end)
spawn(function()
   while wait() do
   pcall(function()
   for i,v in pairs(game.Workspace:GetChildren()) do
   if v:IsA("Tool") then

-- ====== PAGE 192/197 ======
   if v:FindFirstChild("Handle") then
   repeat task.wait(.1)
   if not v.Handle:FindFirstChild("DevilFruitESP")
   local BillboardGui =
Instance.new("BillboardGui")
   local TextLabel = Instance.new("TextLabel")
   BillboardGui.Parent = v.Handle
   BillboardGui.ZIndexBehavior =
   BillboardGui.Active = true
   BillboardGui.Name = "DevilFruitESP"
   BillboardGui.AlwaysOnTop = true
   BillboardGui.LightInfluence = 1.000
   BillboardGui.Size = UDim2.new(0, 200, 0, 50)
   BillboardGui.StudsOffset = Vector3.new(0, 2.5,
0)
   TextLabel.Parent = BillboardGui
   TextLabel.BackgroundColor3 =
Color3.fromRGB(255, 255, 255)
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Size = UDim2.new(0, 200, 0, 50)
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextColor3 = Color3.fromRGB(255, 0,
0)
   TextLabel.FontSize = "Size14"
   TextLabel.TextStrokeTransparency = 0.5
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.Handle.Position).Magnitude)
   v.Handle.DevilFruitESP.TextLabel.Text = v.Name.."\
n"..Dis.." M."
      end)
   for i,v in pairs(game.Workspace:GetChildren()) do
   if string.find(v.Name, "Fruit") then
   if v.Handle:FindFirstChild("DevilFruitESP") then
Perso  nalization    v.Handle.DevilFruitESP:Destroy()
end)
ESP_Section:addToggle('Fruit ESP (Yellow Color)', FruitESPe, function(Value)
   FruitESPe = Value
end)
spawn(function()

-- ====== PAGE 193/197 ======
   while wait() do
   pcall(function()
   for a,b in pairs(game.Workspace:GetChildren()) do
   if b.Name == 'PineappleSpawner' or b.Name == 'BananaSpawner' or
b.Name == 'AppleSpawner' then
   for i,v in pairs(b:GetChildren()) do
   if v:IsA('Tool') then
   if v:FindFirstChild("Handle") then
   repeat task.wait(.1)
   if not v.Handle:FindFirstChild("FruitESP")
   local BillboardGui =
Instance.new("BillboardGui")
   local TextLabel =
Instance.new("TextLabel")
   BillboardGui.Parent = v.Handle
   BillboardGui.ZIndexBehavior =
   BillboardGui.Active = true
   BillboardGui.Name = "FruitESP"
   BillboardGui.AlwaysOnTop = true
   BillboardGui.LightInfluence = 1.000
   BillboardGui.Size = UDim2.new(0, 200,
0,  50)
   BillboardGui.StudsOffset =
Vector3.new(0, 2.5, 0)
   TextLabel.Parent = BillboardGui
Color3.fromRGB(255, 255, 255)
   TextLabel.BackgroundTransparency =
   TextLabel.Size = UDim2.new(0, 200, 0,
50)
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextColor3 =
Color3.fromRGB(255, 255, 0)
   TextLabel.FontSize = "Size14"
   TextLabel.TextStrokeTransparency = 0.5
   local Dis =
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.Handle.Position).Magnitude)
   v.Handle.FruitESP.TextLabel.Text =
v.Name.."\n"..Dis.." M."
      end)
   for a,b in pairs(game.Workspace:GetChildren()) do
   if b.Name == 'PineappleSpawner' or b.Name == 'BananaSpawner' or
b.Name == 'AppleSpawner' then

-- ====== PAGE 194/197 ======
   for i,v in pairs(b:GetChildren()) do
   if v:IsA('Tool') then
   if v:FindFirstChild("Handle") then
   if v.Handle:FindFirstChild("FruitESP") then
   v.Handle.FruitESP:Destroy()
end)
ESP_Section:addToggle('Flower ESP', FlowerESP, function(Value)
   FlowerESP = Value
end)
spawn(function()
   while wait() do
   pcall(function()
   for i,v in pairs(game.Workspace:GetChildren()) do
   if v.Name == "Flower2" or v.Name == "Flower1" then
   if not v:FindFirstChild("FindFlower") then
   local BillboardGui = Instance.new("BillboardGui")
   local TextLabel = Instance.new("TextLabel")
   BillboardGui.Parent = v
   BillboardGui.ZIndexBehavior =
   BillboardGui.Active = true
Personal data m  ay be processed to do the following: use precise gBBeiiolllollcabbtiooonaa drraddtaGG auundii a..ctAAivllewwly aascyyassn OOdennvTTicooe ppch  a==ra  cttterrrisuuticees for identi cation.
   BillboardGui.LightInfluence = 1.000
   BillboardGui.Size = UDim2.new(0, 200, 0, 50)
   BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
   TextLabel.Parent = BillboardGui
   TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255,
255)
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Size = UDim2.new(0, 200, 0, 50)
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextColor3 = Color3.fromRGB(250, 250, 30)
   TextLabel.FontSize = "Size14"
   TextLabel.TextStrokeTransparency = 0.5
   local Dis =
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.Position).Magnitude)
      vv..FFiinnddFFlloowweerrS..avTTeee xxprtteLLfaaebbreeenllc..eTTseexxtt  ==  v.Name.."  --  ["..Dis.."  M]"
   if v.Name == "Flower1" then
   v.FindFlower.TextLabel.TextColor3 =
Color3.new(255,120,120)
   elseif v.Name == "Flower2" then
   v.FindFlower.TextLabel.TextColor3 =
Color3.new(120,120,255)

-- ====== PAGE 195/197 ======
      end)
   for i,v in pairs (game:GetService("Workspace"):GetChildren()) do
   if v:FindFirstChild("FindFlower") then
   v.FindFlower:Destroy()
end)
ESP_Section:addToggle('Island ESP', IslandESP, function(Value)
   IslandESP = Value
end)
spawn(function()
   while wait() do
   pcall(function()
   for i,v in pairs(game:GetService("Workspace")
["_WorldOrigin"].Locations:GetChildren()) do
   if not v:FindFirstChild("IslandEsp") then
   local BillboardGui = Instance.new("BillboardGui")
   local TextLabel = Instance.new("TextLabel")
   BillboardGui.Parent = v
   BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   BillboardGui.Active = true
   BillboardGui.Name = "IslandEsp"
   BillboardGui.AlwaysOnTop = true
   BillboardGui.LightInfluence = 1.000
Personal data m  ay be processed to do the following: use pBBreiicillsell gbbeoooaalorrcaddtiGGonuu diia..taSS attnduu addcsstivOOeffly ffscssaeen ttde  v==ic  e VVcheeaccrattctooerrris33ti..csnn feeorww id((e00nt,,i   c22at..io55n.,,    0)
   TextLabel.Parent = BillboardGui
   TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Size = UDim2.new(0, 200, 0, 50)
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextColor3 = Color3.fromRGB(255, 0, 255)
   TextLabel.FontSize = "Size14"
   TextLabel.TextStrokeTransparency = 0.5
   local Dis =
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.Position).Magnitude / 10)
   v.IslandEsp.TextLabel.Text = v.Name.."\n".."["..Dis.."]"
      end)
      for  i,v  in  pairs  ((ggaammee::GGSeeavtteSS peerrrevvfiiercceeen((c""eWWsoorrkkssppaaccee""))
["_WorldOrigin"].Locations:GetChildren()) do
   if v:FindFirstChild("IslandEsp") then
   v.IslandEsp:Destroy()

-- ====== PAGE 196/197 ======
end)
ESP_Section:addToggle('Npc ESP', NpcESP, function(Value)
   NpcESP = Value
end)
spawn(function()
   while wait() do
   pcall(function()
   for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren())
   if v:FindFirstChild('HumanoidRootPart') then
   if not v:FindFirstChild("NpcEspes") then
   local BillboardGui = Instance.new("BillboardGui")
   local TextLabel = Instance.new("TextLabel")
   BillboardGui.Parent = v
   BillboardGui.ZIndexBehavior =
   BillboardGui.Active = true
   BillboardGui.Name = "NpcEspes"
   BillboardGui.AlwaysOnTop = true
   BillboardGui.LightInfluence = 1.000
   BillboardGui.Size = UDim2.new(0, 200, 0, 50)
   BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
   TextLabel.Parent = BillboardGui
   TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255,
255)
   TextLabel.BackgroundTransparency = 1.000
   TextLabel.Size = UDim2.new(0, 200, 0, 50)
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
Personal data m  ay be processed to do the following: use precise gTTeeeoxxlottcaLLtiaaonbb deeallta.. aFFndoo annctttivSSeiily zzsceea  n ==de  v""icSSe iichzzaeera11ct44er""istics for identi cation.
   TextLabel.TextStrokeTransparency = 0.5
   local Dis =
math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position -
v.HumanoidRootPart.Position).Magnitude)
   v.NpcEspes.TextLabel.Text = v.Name.." - ["..Dis.." M]"
      end)
   for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
   if v:FindFirstChild("NpcEspes") then
   v.NpcEspes:Destroy()
end)
ESP_Section:addToggle('Legend Sword Dealer ESP', LADESP, function(Value)
   LADESP = Value
end)
function UpdateLSDESP()
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
   pcall(function()

-- ====== PAGE 197/197 ======
pp    ((    ()
if v.Name == "Legendary Sword Dealer" then
   if not v:FindFirstChild('NameEsp') then
   local bill = Instance.new('BillboardGui',v)
   bill.Name = 'NameEsp'
   bill.ExtentsOffset = Vector3.new(0, 1, 0)
   bill.Size = UDim2.new(1,200,1,30)
   bill.Adornee = v
   bill.AlwaysOnTop = true
   local name = Instance.new('TextLabel',bill)
   name.Font = "Code"
   name.FontSize = "Size14"
   name.TextWrapped = true
   name.Size = UDim2.new(1,0,1,0)
   name.TextYAlignment = 'Top'
   name.BackgroundTransparency = 1
   name.TextStrokeTransparency = 0.5
   name.TextColor3 = Color3.fromRGB(80, 245, 245)
   v['NameEsp'].TextLabel.Text = (v.Name ..'  \n'..
round((game:GetService('Players').LocalPlayer.Character.Head.Position -
v.Position).Magnitude/3) ..' M')
   if v:FindFirstChild('NameEsp') then
   v:FindFirstChild('NameEsp'):Destroy()
      end)
spawn(function()
   while wait() do
   pcall(function()
   UpdateLSDESP()
      end)
end)
