-- the fact this isn obf yet is tragic
-- lucid was here :3

local runService = game:GetService("RunService")
local workspace = game:GetService("Workspace")
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")


local function onCharacterAdded(newCharacter)
    character = newCharacter
end

localPlayer.CharacterAdded:Connect(onCharacterAdded)

local function isPlayerOnMobile()
    return UserInputService.TouchEnabled and not (UserInputService.KeyboardEnabled or UserInputService.GamepadEnabled)
end

local Rayfield

if isPlayerOnMobile() then
    Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3AArrayfield%20Library'))()
else
    Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Revival IX | Slap Battles",
   LoadingTitle = "Best SB Script",
   LoadingSubtitle = "by lokz temper, lokz drastic & lucidReborn",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "NebX-File_8273827382638163.txt"
   },
   Discord = {
      Enabled = true,
      Invite = "X4vgYQRHBC", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Revival | Key System",
      Subtitle = "Key System",
      Note = "Join the discord for the key",
      FileName = "h o p e", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"hope4bashful"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
-- // Admin Detector \\-- 
wait(0.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Admin Detector"; 
Text = "The Admin Detector has loaded"; 
Icon = "rbxassetid://11767037139"; 
Duration = 5; 
})

AntiAdmins = Value
while AntiAdmins do
for i,v in pairs(game.Players:GetChildren()) do
                    if v:GetRankInGroup(9950771) >= 2 then
                        wait(0.1)
                        game.StarterGui:SetCore("SendNotification", {
                        Title = "Admin Detector"; 
                        Text = "Admin/Mod detected.".." ("..v.Name..")"; 
                        Icon = "rbxassetid://11767037139"; 
                        Duration = 5; 
                        })
                        break
                    end
                end
task.wait()
end

-- // Safe Spot \\--
if workspace:FindFirstChild("Spot") == nil then
    local SafeSpot = Instance.new("Part", workspace)
    SafeSpot.Position = Vector3.new(math.random(-25000,-2500),100,math.random(-25000,-2500))
    SafeSpot.Name = "Spot"
    SafeSpot.Size = Vector3.new(500,50,500)
    SafeSpot.Anchored = true
    SafeSpot.Transparency = .5
    end

-- // Anti afk \\--
game.StarterGui:SetCore("SendNotification", {
    Title = "Anti Afk"; 
    Text = "Anti Afk has loaded"; 
    Icon = "rbxassetid://11767037139"; 
    Duration = 5; 
    })

local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)

-- // Rob animation \\--
if not game.ReplicatedStorage:FindFirstChild("summonPortal") then
local robAnim = Instance.new("Animation")
robAnim.AnimationId = "rbxassetid://13675136513"
robAnim.Parent = game.ReplicatedStorage
robAnim.Name = "summonPortal"
end

-- // slap hits \\--
local Gloves = loadstring(game:HttpGet("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/More%20Gloves.lua"))()

-- // Disable Brazil protal \\--
for i,v in pairs(game.Workspace.Lobby.brazil:GetChildren()) do
    v.CanTouch = false
end

-- // Instant Badges \\-- 
fireclickdetector(game.Workspace.Lobby.Scene.knofe.ClickDetector)
fireclickdetector(game.Workspace.Arena["default island"]["Rubber Ducky"].ClickDetector)
fireclickdetector(game.Workspace.Arena.island5.Orange.ClickDetector)
fireclickdetector(workspace.RepressedMemories._ugcQuestObjectBobPlushie.ClickDetector)
fireclickdetector(workspace._ugcQuestObjectEludeHat.ClickDetector)
fireclickdetector(workspace._ugcQuestObjectBobPlushie.ClickDetector)

-- // Variables \\-- 
_G.bobFarmCheck = true
_G.kineticActive = false

-- // Functions \\-- 
function bobFarm()
    while _G.bobFarmCheck == true do
    local player = game.Players.LocalPlayer
    local leaderstats = player:FindFirstChild("leaderstats")
    local glovestat = leaderstats:FindFirstChild("Glove")
    local character = game.Players.LocalPlayer.Character
    if glovestat.Value == "Replica" then
    if character.isInArena.Value == false then
    if character.Humanoid.Health ~= 0 then
    character.HumanoidRootPart.CFrame = game.Workspace.Lobby.Teleport1.CFrame
    wait(0.5)
    game:GetService("ReplicatedStorage").Duplicate:FireServer()
    wait(1)
    character.Humanoid.Health = 0
    wait(4)
    else
    game:GetService("ReplicatedStorage").Duplicate:FireServer()
    wait(1)
    character.Humanoid.Health = 0
    wait(4)
    end
    end
    end
    wait(0.05)
    end
    end

function maxKinetic()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local leaderstats = player.leaderstats
    local gloveStat = leaderstats.Glove.Value
    if gloveStat == "Kinetic" then
    game:GetService("ReplicatedStorage"):WaitForChild("SelfKnockback"):FireServer({["Force"] = 0,["Direction"] = Vector3.new(0.5,0,0)})
    local kineticCount = character:WaitForChild("KineticCharge")
    while _G.kineticActive == true do
    game:GetService("ReplicatedStorage"):WaitForChild("SelfKnockback"):FireServer({["Force"] = 0,["Direction"] = Vector3.new(0.5,0,0)})
    wait(0.05)
    end
    else
        Rayfield:Notify({
            Title = "Stun Is not equipped",
            Content = "Stun is not equipped",
            Duration = 6.5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Okay!",
                  Callback = function()
                  print("action = failed")
               end
            },
         },
         })
end
end

local HomeTab = Window:CreateTab("Home", nil) -- Title, Image

local Section = HomeTab:CreateSection("Server")

local Button = HomeTab:CreateButton({
    Name = "Join Discord (puts the invite in your clipboard)",
    Callback = function()
    setclipboard("discord.gg/KyXsaSV8S4")
    end,
 })

local Button = HomeTab:CreateButton({
   Name = "Rejoin Server",
   Callback = function()
   game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
   end,
})

local Toggle = HomeTab:CreateToggle({
   Name = "Anti Kick",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AntiKick = Value
while AntiKick do
for i,v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetDescendants()) do
                    if v.Name == "ErrorPrompt" then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                    end
                end
task.wait()
end
   end,
})

local Button = HomeTab:CreateButton({
   Name = "ServerHop",
   Callback = function()
   --Server Hop Script cr.Magma Hub Src
          local PlaceID = game.PlaceId
          local AllIDs = {}
          local foundAnything = ""
          local actualHour = os.date("!*t").hour
          local Deleted = false
          --[[
          local File = pcall(function()
              AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
          end)
          if not File then
              table.insert(AllIDs, actualHour)
              writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
          end
          ]]
          function TPReturner()
              local Site;
              if foundAnything == "" then
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
              else
                  Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
              end
              local ID = ""
              if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                  foundAnything = Site.nextPageCursor
              end
              local num = 0;
              for i,v in pairs(Site.data) do
                  local Possible = true
                  ID = tostring(v.id)
                  if tonumber(v.maxPlayers) > tonumber(v.playing) then
                      for _,Existing in pairs(AllIDs) do
                          if num ~= 0 then
                              if ID == tostring(Existing) then
                                  Possible = false
                              end
                          else
                              if tonumber(actualHour) ~= tonumber(Existing) then
                                  local delFile = pcall(function()
                                      -- delfile("NotSameServers.json")
                                      AllIDs = {}
                                      table.insert(AllIDs, actualHour)
                                  end)
                              end
                          end
                          num = num + 1
                      end
                      if Possible == true then
                          table.insert(AllIDs, ID)
                          wait()
                          pcall(function()
                              -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                              wait()
                              game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                          end)
                          wait(4)
                      end
                  end
              end
          end
 
          function Teleport()
              while wait() do
                  pcall(function()
                      TPReturner()
                      if foundAnything ~= "" then
                          TPReturner()
                      end
                  end)
              end
          end
 
          Teleport()
   end,
})

local Button = HomeTab:CreateButton({
   Name = "Destroy Gui",
   Callback = function()
   Rayfield:Destroy()
   end,
})

local Section = HomeTab:CreateSection("Useful Scripts")

local Button = HomeTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Infinite%20Yield%20but%20with%20secure%20dex'))()
   end,
})

local Button = HomeTab:CreateButton({
    Name = "Chat Bypasser",
    Callback = function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/xexplorex/dbf738cfcd244fc72984a511d61b52cd/raw/8d6e23021f4788655225848dab60469c7435739c/gistfile1.txt"))()
    end,
 })

local Button = HomeTab:CreateButton({
    Name = "Faded Gui (Best Fly)",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/Faded/main/YesEpic", true))()
    end,
 })

local Button = HomeTab:CreateButton({
   Name = "My World Gui",
   Callback = function()
   loadstring(game:HttpGet(('https://pastefy.app/Oic24KzG/raw'),true))()
   end,
})

local MainTab = Window:CreateTab("Main", 13014537525) -- Title, Image
local Section = MainTab:CreateSection("Main")

local Toggle = MainTab:CreateToggle({
   Name = "Slap Arua",
   CurrentValue = false,
   Flag = "Toggle80", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  SlapAura = Value
                while SlapAura do
for i,v in pairs(game.Players:GetChildren()) do
                    if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and v.Character then
if v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("rock") == nil and v.Character.HumanoidRootPart.BrickColor ~= BrickColor.new("New Yeller") then
if v.Character.Head:FindFirstChild("UnoReverseCard") == nil or game.Players.LocalPlayer.leaderstats.Glove == "Error" then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if 25 >= Magnitude then
shared.gloveHits[game.Players.LocalPlayer.leaderstats.Glove.Value]:FireServer(v.Character:WaitForChild("Head"),true)
                    end
end
end
end
                end
task.wait()
end
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "Slap Farm (don't use in lobby)",
   CurrentValue = false,
   Flag = "Toggle96", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    local player = game.Players.LocalPlayer
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local remoteEvent = ReplicatedStorage:WaitForChild("b")
        local Workspace = game:GetService("Workspace")
        
        local detectionRange = 750 
        local heightUnderPlayer = 5
        local safeDistanceFromRock = 50 

        local function hasErrorTool(player)
            if player.Backpack:FindFirstChild("Error") or (player.Character and player.Character:FindFirstChild("Error")) then
                return true
            end
            return false
        end

        local function isTransparent(character)
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    if part.Transparency == 0.5 then
                        return true
                    end
                end
            end
            return false
        end

        local function isWithinLobbyArea(character)
            return game:GetService("Workspace").Lobby:IsAncestorOf(character)
        end

        local function distanceFromRock(position)
            local rock = Workspace:FindFirstChild("rock")
            if rock then
                return (position - rock.Position).Magnitude
            end
            return math.huge
        end

        local function getClosestPlayer(character)
            local shortestDistance = math.huge
            local closestPlayer = nil
        
            for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
                if otherPlayer ~= player and otherPlayer.Character and otherPlayer.Character:FindFirstChild("Head") 
                   and not isTransparent(otherPlayer.Character) and not isWithinLobbyArea(otherPlayer.Character) 
                   and distanceFromRock(otherPlayer.Character.Head.Position) > safeDistanceFromRock 
                   and not hasErrorTool(otherPlayer) then
                    local distance = (character.Head.Position - otherPlayer.Character.Head.Position).Magnitude
                    if distance < shortestDistance then
                        shortestDistance = distance
                        closestPlayer = otherPlayer
                    end
                end
            end
        
            return closestPlayer
        end

        local function createPlatform(position)
            local platform = Instance.new("Part")
            platform.Position = position
            platform.Size = Vector3.new(10, 1, 10)
            platform.Anchored = true
            platform.CanCollide = true
            platform.BrickColor = BrickColor.new("Really black") -- Set to black color
            platform.Transparency = 1 -- Set to invisible
            platform.Parent = Workspace
            return platform
        end

        local function continuousTeleportAndActivate(character)
            local platform = nil
        
            character.Humanoid.Died:Connect(function()
                character:SetPrimaryPartCFrame(Workspace.Lobby.Teleport1.CFrame)
                wait(1)
            end)
        
            while true do
                local closestPlayer = getClosestPlayer(character)
                if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local humanoid = closestPlayer.Character:FindFirstChild("Humanoid")
                    if humanoid and humanoid.Health <= 0 then
                        wait(0.1)
                        closestPlayer = getClosestPlayer(character)
                    end
                    character:SetPrimaryPartCFrame(closestPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -heightUnderPlayer, 0))
                    
                    if not platform then
                        platform = createPlatform(character.HumanoidRootPart.Position + Vector3.new(0, 3, 0))
                    else
                        platform.Position = character.HumanoidRootPart.Position + Vector3.new(0, 3, 0)
                    end
                    
                    local args = {[1] = closestPlayer.Character.Head}
                    remoteEvent:FireServer(unpack(args))
                end
                wait(0)
            end
        end
        
        player.CharacterAdded:Connect(continuousTeleportAndActivate)
        local currentCharacter = player.Character or player.CharacterAdded:Wait()
        continuousTeleportAndActivate(currentCharacter)
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "Rhythm Explosion Spam",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
  RhythmSpam = Value
while RhythmSpam do
game:GetService("ReplicatedStorage").rhythmevent:FireServer("AoeExplosion",0)
task.wait()
end
   end,
})

local Button = MainTab:CreateButton({
   Name = "godmode",
   Callback = function()
   if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)
wait(0.5)
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.LogService
                    end
                end
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
wait(4)
for i,v in pairs(game.LogService:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.Players.LocalPlayer.Character
                    end
                end
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    end
                end 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Origo.CFrame
elseif game.Players.LocalPlayer.Character:FindFirstChild("entered") then
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.LogService
                    end
                end
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
wait(4)
for i,v in pairs(game.LogService:GetChildren()) do
                    if v.ClassName == "Tool" then
                        v.Parent = game.Players.LocalPlayer.Character
                    end
                end
game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if v.ClassName == "Tool" then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    end
                end 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Origo.CFrame
end
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "Null spam",
   CurrentValue = false,
   Flag = "Toggle3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   NullSpam = Value
while NullSpam do
game:GetService("ReplicatedStorage").NullAbility:FireServer()
task.wait()
end
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "Rojo Spam",
   CurrentValue = false,
   Flag = "ROJO", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Person == nil then
Person = game.Players.LocalPlayer.Name
end
RojoSpam = Value
while RojoSpam do
game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players[Person].Character.HumanoidRootPart.CFrame})
task.wait()
end
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "SlapStick Spam",
   CurrentValue = false,
   Flag = "SlapStick", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   SlapstickSpam = Value
	if SlapstickSpam == true then
	game:GetService("ReplicatedStorage").slapstick:FireServer("addarm")
	end
	while SlapstickSpam do
	game:GetService("ReplicatedStorage").slapstick:FireServer(SlapstickAbility)
	task.wait()
	end
		end,
})

local Toggle = MainTab:CreateToggle({
    Name = "Retro Rocket Spam",
    CurrentValue = false,
    Flag = "Retro1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        RocketLauncherSpam = Value
        while RocketLauncherSpam do
        game:GetService("ReplicatedStorage").RetroAbility:FireServer("Rocket Launcher")
        task.wait()
    end
        end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Retro Ban Hammer Spam",
    CurrentValue = false,
    Flag = "Retro2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    BanHammerSpam = Value
    while BanHammerSpam do
    game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
    task.wait()
    end
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Retro Bomb Spam",
    CurrentValue = false,
    Flag = "Retro3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    BombSpam = Value
    while BombSpam do
    game:GetService("ReplicatedStorage").RetroAbility:FireServer("Bomb")   
    task.wait()
    end
end,
 })

local Section = MainTab:CreateSection("Anti's")

 local Toggle = MainTab:CreateToggle({
    Name = "Anti Ragdoll (resets you)",
    CurrentValue = false,
    Flag = "Ragdoll", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        AntiRagdoll = Value
        if AntiRagdoll then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        game.Players.LocalPlayer.CharacterAdded:Connect(function()
        game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
        if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and AntiRagdoll then
        repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
        until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
        game.Players.LocalPlayer.Character.Torso.Anchored = false
        end
        end)
        end)
        end
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Anti Death Barriers",
    CurrentValue = false,
    Flag = "ANTI DEATH", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        if Value == true then
            for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                                if v.ClassName == "Part" and v.Name == "BLOCK" then
                                    v.CanTouch = false
                                end
                            end
            workspace.DEATHBARRIER.CanTouch = false
            workspace.DEATHBARRIER2.CanTouch = false
            workspace.dedBarrier.CanTouch = false
            workspace.ArenaBarrier.CanTouch = false
            workspace.AntiDefaultArena.CanTouch = false
            else
            for i,v in pairs(game.Workspace.DEATHBARRIER:GetChildren()) do
                                if v.ClassName == "Part" and v.Name == "BLOCK" then
                                    v.CanTouch = true
                                end
                            end
            workspace.DEATHBARRIER.CanTouch = true
            workspace.DEATHBARRIER2.CanTouch = true
            workspace.dedBarrier.CanTouch = true
            workspace.ArenaBarrier.CanTouch = true
            workspace.AntiDefaultArena.CanTouch = true
            end
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Anti Cube Of Death",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        if Value == true then
            workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false
            else
            workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true
            end
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Anti Portals",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        AntiPortal = Value
        if AntiPortal == true then
        workspace.Lobby.Teleport2.CanTouch = false
        workspace.Lobby.Teleport3.CanTouch = false
        workspace.Lobby.Teleport4.CanTouch = false
        workspace.Lobby.Teleport6.CanTouch = false
        else
        workspace.Lobby.Teleport2.CanTouch = true
        workspace.Lobby.Teleport3.CanTouch = true
        workspace.Lobby.Teleport4.CanTouch = true
        workspace.Lobby.Teleport6.CanTouch = true
        end
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Anti Void",
    CurrentValue = false,
    Flag = "Anti Void", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    game.Workspace.dedBarrier.CanCollide = Value
    game.Workspace.TAntiVoid.CanCollide = Value
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Anti Fling",
    Callback = function()
return(function(llllIlIIlIlllIlIIIlllIIl,lllIllIIIll,lllIllIIIll)local llIIlIlIIlllIlIllllIll=string.char;local IlIIllIIIIIII=string.sub;local lllIIIlII=table.concat;local llllllIl=math.ldexp;local lllIlllIll=getfenv or function()return _ENV end;local llIlIIlllIllIIl=select;local llIIlIIlIllIIIIll=unpack or table.unpack;local lIllllIIlI=tonumber;local function IIIIIlIlIIlIlllIlIIlIlIll(llllIlIIlIlllIlIIIlllIIl)local IlllIIIIlIIl,llIlIIIlllIIIIlIIllIl,lIIIIIlIllIIlIIlIIIlll="","",{}local llllIIIlIlIlllll=256;local lIlllIllllIIlII={}for lllIllIIIll=0,llllIIIlIlIlllll-1 do lIlllIllllIIlII[lllIllIIIll]=llIIlIlIIlllIlIllllIll(lllIllIIIll)end;local lllIllIIIll=1;local function lIllIIIl()local IlllIIIIlIIl=lIllllIIlI(IlIIllIIIIIII(llllIlIIlIlllIlIIIlllIIl,lllIllIIIll,lllIllIIIll),36)lllIllIIIll=lllIllIIIll+1;local llIlIIIlllIIIIlIIllIl=lIllllIIlI(IlIIllIIIIIII(llllIlIIlIlllIlIIIlllIIl,lllIllIIIll,lllIllIIIll+IlllIIIIlIIl-1),36)lllIllIIIll=lllIllIIIll+IlllIIIIlIIl;return llIlIIIlllIIIIlIIllIl end;IlllIIIIlIIl=llIIlIlIIlllIlIllllIll(lIllIIIl())lIIIIIlIllIIlIIlIIIlll[1]=IlllIIIIlIIl;while lllIllIIIll<#llllIlIIlIlllIlIIIlllIIl do local lllIllIIIll=lIllIIIl()if lIlllIllllIIlII[lllIllIIIll]then llIlIIIlllIIIIlIIllIl=lIlllIllllIIlII[lllIllIIIll]else llIlIIIlllIIIIlIIllIl=IlllIIIIlIIl..IlIIllIIIIIII(IlllIIIIlIIl,1,1)end;lIlllIllllIIlII[llllIIIlIlIlllll]=IlllIIIIlIIl..IlIIllIIIIIII(llIlIIIlllIIIIlIIllIl,1,1)lIIIIIlIllIIlIIlIIIlll[#lIIIIIlIllIIlIIlIIIlll+1],IlllIIIIlIIl,llllIIIlIlIlllll=llIlIIIlllIIIIlIIllIl,llIlIIIlllIIIIlIIllIl,llllIIIlIlIlllll+1 end;return table.concat(lIIIIIlIllIIlIIlIIIlll)end;local lIllIIIl=IIIIIlIlIIlIlllIlIIlIlIll('23322O27522R23N21S1P24V2492361821322Q22S27522O17111D1522Q22V27I21C1C111P151I1J22Q22Z27I2181F13111C27R27T27V22Q22X27I1Z18111I11131K28823227I213151K210151J13151E14111E1K1J22R27I27I24022N22Q2902752151J1X22Q22W27I1Y111J1521C28E1K22Q23C28B1L1J1K1F1D21C181P1J192832851I1F1G27V1K1928Q22Q23627Q29U29W29Y21C2A02A21I2A42A629622O1E151N2AJ27I21L1W22R22B2AT2AU24Z22N2AO27523K22N22O23I27I2362B327522P2B42B722O22Q27I21S2BA2B82902BE22O2B82B827H2BI2BC2B822T22O22U2752BC23H2BJ27I22S22Y27I2BV2B821S2382BB2BW2BQ21S2392C52BC2BS27I2BC2CE22O2A822O29027P29122O27H2BC2752CH2BQ2CK2CM27622O2C127523D22O27P2CB22O21S23F22O29C27P29C2362B82BZ28A27I2372D522O2BZ2CB2352DF2C92BK2CM2BZ2752DL2DN27I23G2BW23623E2DF27Z27521S2BC29C29C2302CG27528A2312B92DG22O28K2CP27527Z2742CL29C27Z2BC23427527P2BZ29C22S23J2CI2EB2BW2ET2BA2CL22O');local lllIllIIIll=(bit or bit32);local lIIIIIlIllIIlIIlIIIlll=lllIllIIIll and lllIllIIIll.bxor or function(lllIllIIIll,llIlIIIlllIIIIlIIllIl)local IlllIIIIlIIl,lIIIIIlIllIIlIIlIIIlll,IlIIllIIIIIII=1,0,10 while lllIllIIIll>0 and llIlIIIlllIIIIlIIllIl>0 do local lIlllIllllIIlII,IlIIllIIIIIII=lllIllIIIll%2,llIlIIIlllIIIIlIIllIl%2 if lIlllIllllIIlII~=IlIIllIIIIIII then lIIIIIlIllIIlIIlIIIlll=lIIIIIlIllIIlIIlIIIlll+IlllIIIIlIIl end lllIllIIIll,llIlIIIlllIIIIlIIllIl,IlllIIIIlIIl=(lllIllIIIll-lIlllIllllIIlII)/2,(llIlIIIlllIIIIlIIllIl-IlIIllIIIIIII)/2,IlllIIIIlIIl*2 end if lllIllIIIll<llIlIIIlllIIIIlIIllIl then lllIllIIIll=llIlIIIlllIIIIlIIllIl end while lllIllIIIll>0 do local llIlIIIlllIIIIlIIllIl=lllIllIIIll%2 if llIlIIIlllIIIIlIIllIl>0 then lIIIIIlIllIIlIIlIIIlll=lIIIIIlIllIIlIIlIIIlll+IlllIIIIlIIl end lllIllIIIll,IlllIIIIlIIl=(lllIllIIIll-llIlIIIlllIIIIlIIllIl)/2,IlllIIIIlIIl*2 end return lIIIIIlIllIIlIIlIIIlll end local function llIlIIIlllIIIIlIIllIl(IlllIIIIlIIl,lllIllIIIll,llIlIIIlllIIIIlIIllIl)if llIlIIIlllIIIIlIIllIl then local lllIllIIIll=(IlllIIIIlIIl/2^(lllIllIIIll-1))%2^((llIlIIIlllIIIIlIIllIl-1)-(lllIllIIIll-1)+1);return lllIllIIIll-lllIllIIIll%1;else local lllIllIIIll=2^(lllIllIIIll-1);return(IlllIIIIlIIl%(lllIllIIIll+lllIllIIIll)>=lllIllIIIll)and 1 or 0;end;end;local lllIllIIIll=1;local function IlllIIIIlIIl()local IlIIllIIIIIII,IlllIIIIlIIl,llIlIIIlllIIIIlIIllIl,lIlllIllllIIlII=llllIlIIlIlllIlIIIlllIIl(lIllIIIl,lllIllIIIll,lllIllIIIll+3);IlIIllIIIIIII=lIIIIIlIllIIlIIlIIIlll(IlIIllIIIIIII,96)IlllIIIIlIIl=lIIIIIlIllIIlIIlIIIlll(IlllIIIIlIIl,96)llIlIIIlllIIIIlIIllIl=lIIIIIlIllIIlIIlIIIlll(llIlIIIlllIIIIlIIllIl,96)lIlllIllllIIlII=lIIIIIlIllIIlIIlIIIlll(lIlllIllllIIlII,96)lllIllIIIll=lllIllIIIll+4;return(lIlllIllllIIlII*16777216)+(llIlIIIlllIIIIlIIllIl*65536)+(IlllIIIIlIIl*256)+IlIIllIIIIIII;end;local function llllIIIlIlIlllll()local IlllIIIIlIIl=lIIIIIlIllIIlIIlIIIlll(llllIlIIlIlllIlIIIlllIIl(lIllIIIl,lllIllIIIll,lllIllIIIll),96);lllIllIIIll=lllIllIIIll+1;return IlllIIIIlIIl;end;local function lIlllIllllIIlII()local llIlIIIlllIIIIlIIllIl,IlllIIIIlIIl=llllIlIIlIlllIlIIIlllIIl(lIllIIIl,lllIllIIIll,lllIllIIIll+2);llIlIIIlllIIIIlIIllIl=lIIIIIlIllIIlIIlIIIlll(llIlIIIlllIIIIlIIllIl,96)IlllIIIIlIIl=lIIIIIlIllIIlIIlIIIlll(IlllIIIIlIIl,96)lllIllIIIll=lllIllIIIll+2;return(IlllIIIIlIIl*256)+llIlIIIlllIIIIlIIllIl;end;local function lIllllIIlI()local lllIllIIIll=IlllIIIIlIIl();local IlllIIIIlIIl=IlllIIIIlIIl();local IlIIllIIIIIII=1;local lIIIIIlIllIIlIIlIIIlll=(llIlIIIlllIIIIlIIllIl(IlllIIIIlIIl,1,20)*(2^32))+lllIllIIIll;local lllIllIIIll=llIlIIIlllIIIIlIIllIl(IlllIIIIlIIl,21,31);local IlllIIIIlIIl=((-1)^llIlIIIlllIIIIlIIllIl(IlllIIIIlIIl,32));if(lllIllIIIll==0)then if(lIIIIIlIllIIlIIlIIIlll==0)then return IlllIIIIlIIl*0;else lllIllIIIll=1;IlIIllIIIIIII=0;end;elseif(lllIllIIIll==2047)then return(lIIIIIlIllIIlIIlIIIlll==0)and(IlllIIIIlIIl*(1/0))or(IlllIIIIlIIl*(0/0));end;return llllllIl(IlllIIIIlIIl,lllIllIIIll-1023)*(IlIIllIIIIIII+(lIIIIIlIllIIlIIlIIIlll/(2^52)));end;local llllllIl=IlllIIIIlIIl;local function IIIIIlIlIIlIlllIlIIlIlIll(IlllIIIIlIIl)local llIlIIIlllIIIIlIIllIl;if(not IlllIIIIlIIl)then IlllIIIIlIIl=llllllIl();if(IlllIIIIlIIl==0)then return'';end;end;llIlIIIlllIIIIlIIllIl=IlIIllIIIIIII(lIllIIIl,lllIllIIIll,lllIllIIIll+IlllIIIIlIIl-1);lllIllIIIll=lllIllIIIll+IlllIIIIlIIl;local IlllIIIIlIIl={}for lllIllIIIll=1,#llIlIIIlllIIIIlIIllIl do IlllIIIIlIIl[lllIllIIIll]=llIIlIlIIlllIlIllllIll(lIIIIIlIllIIlIIlIIIlll(llllIlIIlIlllIlIIIlllIIl(IlIIllIIIIIII(llIlIIIlllIIIIlIIllIl,lllIllIIIll,lllIllIIIll)),96))end return lllIIIlII(IlllIIIIlIIl);end;local lllIllIIIll=IlllIIIIlIIl;local function lllIIIlII(...)return{...},llIlIIlllIllIIl('#',...)end local function llIIlIlIIlllIlIllllIll()local lIllIIIl={};local llllIlIIlIlllIlIIIlllIIl={};local lllIllIIIll={};local llIIlIIlIllIIIIll={[#{{374;257;951;31};{103;620;760;76};}]=llllIlIIlIlllIlIIIlllIIl,[#{"1 + 1 = 111";"1 + 1 = 111";{89;766;896;887};}]=nil,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=lllIllIIIll,[#{{243;465;376;481};}]=lIllIIIl,};local lllIllIIIll=IlllIIIIlIIl()local IlIIllIIIIIII={}for llIlIIIlllIIIIlIIllIl=1,lllIllIIIll do local IlllIIIIlIIl=llllIIIlIlIlllll();local lllIllIIIll;if(IlllIIIIlIIl==1)then lllIllIIIll=(llllIIIlIlIlllll()~=0);elseif(IlllIIIIlIIl==3)then lllIllIIIll=lIllllIIlI();elseif(IlllIIIIlIIl==2)then lllIllIIIll=IIIIIlIlIIlIlllIlIIlIlIll();end;IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl]=lllIllIIIll;end;llIIlIIlIllIIIIll[3]=llllIIIlIlIlllll();for llllIlIIlIlllIlIIIlllIIl=1,IlllIIIIlIIl()do local lllIllIIIll=llllIIIlIlIlllll();if(llIlIIIlllIIIIlIIllIl(lllIllIIIll,1,1)==0)then local lIIIIIlIllIIlIIlIIIlll=llIlIIIlllIIIIlIIllIl(lllIllIIIll,2,3);local llllIIIlIlIlllll=llIlIIIlllIIIIlIIllIl(lllIllIIIll,4,6);local lllIllIIIll={lIlllIllllIIlII(),lIlllIllllIIlII(),nil,nil};if(lIIIIIlIllIIlIIlIIIlll==0)then lllIllIIIll[#("e08")]=lIlllIllllIIlII();lllIllIIIll[#("r56G")]=lIlllIllllIIlII();elseif(lIIIIIlIllIIlIIlIIIlll==1)then lllIllIIIll[#("qqA")]=IlllIIIIlIIl();elseif(lIIIIIlIllIIlIIlIIIlll==2)then lllIllIIIll[#{"1 + 1 = 111";{462;192;996;429};{811;970;887;719};}]=IlllIIIIlIIl()-(2^16)elseif(lIIIIIlIllIIlIIlIIIlll==3)then lllIllIIIll[#{{340;541;709;396};"1 + 1 = 111";"1 + 1 = 111";}]=IlllIIIIlIIl()-(2^16)lllIllIIIll[#("e2bT")]=lIlllIllllIIlII();end;if(llIlIIIlllIIIIlIIllIl(llllIIIlIlIlllll,1,1)==1)then lllIllIIIll[#("Cl")]=IlIIllIIIIIII[lllIllIIIll[#("hM")]]end if(llIlIIIlllIIIIlIIllIl(llllIIIlIlIlllll,2,2)==1)then lllIllIIIll[#("gd4")]=IlIIllIIIIIII[lllIllIIIll[#("3Y9")]]end if(llIlIIIlllIIIIlIIllIl(llllIIIlIlIlllll,3,3)==1)then lllIllIIIll[#("90KL")]=IlIIllIIIIIII[lllIllIIIll[#("nU3u")]]end lIllIIIl[llllIlIIlIlllIlIIIlllIIl]=lllIllIIIll;end end;for lllIllIIIll=1,IlllIIIIlIIl()do llllIlIIlIlllIlIIIlllIIl[lllIllIIIll-1]=llIIlIlIIlllIlIllllIll();end;return llIIlIIlIllIIIIll;end;local function lIllllIIlI(lllIllIIIll,IlllIIIIlIIl,llllIIIlIlIlllll)lllIllIIIll=(lllIllIIIll==true and llIIlIlIIlllIlIllllIll())or lllIllIIIll;return(function(...)local IlIIllIIIIIII=lllIllIIIll[1];local lIIIIIlIllIIlIIlIIIlll=lllIllIIIll[3];local lllIllIIIll=lllIllIIIll[2];local lllIllIIIll=lllIIIlII local llIlIIIlllIIIIlIIllIl=1;local lllIllIIIll=-1;local lIllIIIl={};local lIlllIllllIIlII={...};local llllIlIIlIlllIlIIIlllIIl=llIlIIlllIllIIl('#',...)-1;local lllIllIIIll={};local IlllIIIIlIIl={};for lllIllIIIll=0,llllIlIIlIlllIlIIIlllIIl do if(lllIllIIIll>=lIIIIIlIllIIlIIlIIIlll)then lIllIIIl[lllIllIIIll-lIIIIIlIllIIlIIlIIIlll]=lIlllIllllIIlII[lllIllIIIll+1];else IlllIIIIlIIl[lllIllIIIll]=lIlllIllllIIlII[lllIllIIIll+#{"1 + 1 = 111";}];end;end;local lllIllIIIll=llllIlIIlIlllIlIIIlllIIl-lIIIIIlIllIIlIIlIIIlll+1 local lllIllIIIll;local lIIIIIlIllIIlIIlIIIlll;while true do lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];lIIIIIlIllIIlIIlIIIlll=lllIllIIIll[#("o")];if lIIIIIlIllIIlIIlIIIlll<=#("39VPR7JLL1b417Q")then if lIIIIIlIllIIlIIlIIIlll<=#("C4sIEGQ")then if lIIIIIlIllIIlIIlIIIlll<=#("R49")then if lIIIIIlIllIIlIIlIIIlll<=#("m")then if lIIIIIlIllIIlIIlIIIlll==#{}then local lIIIIIlIllIIlIIlIIIlll=lllIllIIIll[#{"1 + 1 = 111";"1 + 1 = 111";}];local lIlllIllllIIlII=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+2];local IlIIllIIIIIII=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll]+lIlllIllllIIlII;IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll]=IlIIllIIIIIII;if(lIlllIllllIIlII>0)then if(IlIIllIIIIIII<=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("HRQ")];IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+3]=IlIIllIIIIIII;end elseif(IlIIllIIIIIII>=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("b6k")];IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+3]=IlIIllIIIIIII;end else IlllIIIIlIIl[lllIllIIIll[#("Yu")]]=lllIllIIIll[#("in8")];end;elseif lIIIIIlIllIIlIIlIIIlll==#{{620;147;160;279};"1 + 1 = 111";}then local lIIIIIlIllIIlIIlIIIlll;IlllIIIIlIIl[lllIllIIIll[#("6R")]]=IlllIIIIlIIl[lllIllIIIll[#("nnC")]][lllIllIIIll[#("RO1i")]];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("Ek")]]=lllIllIIIll[#("dkF")];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("J2")]]=lllIllIIIll[#("26S")];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("mm")]]=lllIllIIIll[#("I8X")];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];lIIIIIlIllIIlIIlIIIlll=lllIllIIIll[#("aX")]IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll]=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll](llIIlIIlIllIIIIll(IlllIIIIlIIl,lIIIIIlIllIIlIIlIIIlll+1,lllIllIIIll[#{{8;645;340;266};"1 + 1 = 111";"1 + 1 = 111";}]))llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("5R")]][lllIllIIIll[#("19C")]]=IlllIIIIlIIl[lllIllIIIll[#("2JbV")]];else IlllIIIIlIIl[lllIllIIIll[#("WO")]]=IlllIIIIlIIl[lllIllIIIll[#("KNb")]][IlllIIIIlIIl[lllIllIIIll[#("DmB5")]]];end;elseif lIIIIIlIllIIlIIlIIIlll<=#("LJsuC")then if lIIIIIlIllIIlIIlIIIlll>#("dXSk")then local llIlIIIlllIIIIlIIllIl=lllIllIIIll[#{"1 + 1 = 111";"1 + 1 = 111";}];local lIIIIIlIllIIlIIlIIIlll=IlllIIIIlIIl[lllIllIIIll[#("I32")]];IlllIIIIlIIl[llIlIIIlllIIIIlIIllIl+1]=lIIIIIlIllIIlIIlIIIlll;IlllIIIIlIIl[llIlIIIlllIIIIlIIllIl]=lIIIIIlIllIIlIIlIIIlll[lllIllIIIll[#("iDb4")]];else IlllIIIIlIIl[lllIllIIIll[#("sf")]]=llllIIIlIlIlllll[lllIllIIIll[#("yyd")]];end;elseif lIIIIIlIllIIlIIlIIIlll>#("ct99aY")then IlllIIIIlIIl[lllIllIIIll[#("33")]][lllIllIIIll[#("Lux")]]=IlllIIIIlIIl[lllIllIIIll[#("PGbZ")]];else do return end;end;elseif lIIIIIlIllIIlIIlIIIlll<=#("kM5ytX8X8Uz")then if lIIIIIlIllIIlIIlIIIlll<=#("ZrIcxhLhD")then if lIIIIIlIllIIlIIlIIIlll==#("ERXFHOL9")then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("sMg")];else local lIIIIIlIllIIlIIlIIIlll=lllIllIIIll[#("HF")];local IlIIllIIIIIII=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll]local lIlllIllllIIlII=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+2];if(lIlllIllllIIlII>0)then if(IlIIllIIIIIII>IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("9Gp")];else IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+3]=IlIIllIIIIIII;end elseif(IlIIllIIIIIII<IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}];else IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+3]=IlIIllIIIIIII;end end;elseif lIIIIIlIllIIlIIlIIIlll>#("lpuJU2moGx")then IlllIIIIlIIl[lllIllIIIll[#{"1 + 1 = 111";{194;509;736;683};}]][lllIllIIIll[#{{548;749;623;687};{30;869;764;675};{85;953;19;610};}]]=IlllIIIIlIIl[lllIllIIIll[#("BflL")]];else llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("V39")];end;elseif lIIIIIlIllIIlIIlIIIlll<=#("mtykujFqN1zRo")then if lIIIIIlIllIIlIIlIIIlll==#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{113;68;979;835};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{739;206;628;594};{535;100;661;728};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then local lllIllIIIll=lllIllIIIll[#("P3")]IlllIIIIlIIl[lllIllIIIll]=IlllIIIIlIIl[lllIllIIIll](IlllIIIIlIIl[lllIllIIIll+1])else local llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("5k")]IlllIIIIlIIl[llIlIIIlllIIIIlIIllIl]=IlllIIIIlIIl[llIlIIIlllIIIIlIIllIl](llIIlIIlIllIIIIll(IlllIIIIlIIl,llIlIIIlllIIIIlIIllIl+1,lllIllIIIll[#("jcZ")]))end;elseif lIIIIIlIllIIlIIlIIIlll>#("Xjj2fUX5ksNkxj")then if IlllIIIIlIIl[lllIllIIIll[#("io")]]then llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;else llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("e7W")];end;else do return end;end;elseif lIIIIIlIllIIlIIlIIIlll<=#("v8XJgHNONBpcDnAl30CRgE8")then if lIIIIIlIllIIlIIlIIIlll<=#("6Bg767O3k2N5ATylkGH")then if lIIIIIlIllIIlIIlIIIlll<=#("0SuSUhTt5Cm29EMPB")then if lIIIIIlIllIIlIIlIIIlll==#("SPXv1KLFVkCqGL6G")then IlllIIIIlIIl[lllIllIIIll[#("dh")]]=lllIllIIIll[#("54A")];else if not IlllIIIIlIIl[lllIllIIIll[#("kL")]]then llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;else llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("VF7")];end;end;elseif lIIIIIlIllIIlIIlIIIlll>#("ogymYnt8TPU56gSUFY")then local llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("Nc")]IlllIIIIlIIl[llIlIIIlllIIIIlIIllIl]=IlllIIIIlIIl[llIlIIIlllIIIIlIIllIl](llIIlIIlIllIIIIll(IlllIIIIlIIl,llIlIIIlllIIIIlIIllIl+1,lllIllIIIll[#("32K")]))else local lIIIIIlIllIIlIIlIIIlll=lllIllIIIll[#("xt")];local IlIIllIIIIIII=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll]local lIlllIllllIIlII=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+2];if(lIlllIllllIIlII>0)then if(IlIIllIIIIIII>IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#{"1 + 1 = 111";{27;882;317;573};"1 + 1 = 111";}];else IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+3]=IlIIllIIIIIII;end elseif(IlIIllIIIIIII<IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("V2V")];else IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+3]=IlIIllIIIIIII;end end;elseif lIIIIIlIllIIlIIlIIIlll<=#("PF0UhpvJ1P5M5DayJcE3C")then if lIIIIIlIllIIlIIlIIIlll==#("xi50JZdUGbXf18zvq6DO")then IlllIIIIlIIl[lllIllIIIll[#("Ik")]]=IlllIIIIlIIl[lllIllIIIll[#("zZh")]][lllIllIIIll[#("kpWN")]];else local llllIlIIlIlllIlIIIlllIIl;local lIlllIllllIIlII;local llllIIIlIlIlllll;local lIIIIIlIllIIlIIlIIIlll;lIIIIIlIllIIlIIlIIIlll=lllIllIIIll[#{{936;335;961;301};{910;302;458;775};}];llllIIIlIlIlllll=IlllIIIIlIIl[lllIllIIIll[#("u6K")]];IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1]=llllIIIlIlIlllll;IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll]=llllIIIlIlIlllll[lllIllIIIll[#("OdXz")]];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];lIIIIIlIllIIlIIlIIIlll=lllIllIIIll[#("5Q")]IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll]=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll](IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("m1")]]=lllIllIIIll[#("XgG")];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("Dp")]]=#IlllIIIIlIIl[lllIllIIIll[#{{606;207;499;102};{525;231;866;306};"1 + 1 = 111";}]];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("60")]]=lllIllIIIll[#("UAo")];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];lIIIIIlIllIIlIIlIIIlll=lllIllIIIll[#("OE")];lIlllIllllIIlII=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll]llllIlIIlIlllIlIIIlllIIl=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+2];if(llllIlIIlIlllIlIIIlllIIl>0)then if(lIlllIllllIIlII>IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("UUt")];else IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+3]=lIlllIllllIIlII;end elseif(lIlllIllllIIlII<IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("s4c")];else IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+3]=lIlllIllllIIlII;end end;elseif lIIIIIlIllIIlIIlIIIlll>#("tXdZC5TiSb4zlhRYqRHGhi")then IlllIIIIlIIl[lllIllIIIll[#("tp")]]=#IlllIIIIlIIl[lllIllIIIll[#("TBn")]];else if IlllIIIIlIIl[lllIllIIIll[#("iS")]]then llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;else llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("mgV")];end;end;elseif lIIIIIlIllIIlIIlIIIlll<=#("Z0Mb9mVHBXbcv2bh3uLXa2QP0RI")then if lIIIIIlIllIIlIIlIIIlll<=#{"1 + 1 = 111";{811;572;994;353};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{554;734;523;70};"1 + 1 = 111";{570;565;472;365};{777;484;469;474};{813;282;433;844};{584;838;991;580};{75;183;506;222};{390;418;293;770};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{399;711;893;669};"1 + 1 = 111";{163;491;284;121};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then if lIIIIIlIllIIlIIlIIIlll==#("37j7krPVrFPQ1DOcr9LP0Gye")then local lllIllIIIll=lllIllIIIll[#("z4")]IlllIIIIlIIl[lllIllIIIll]=IlllIIIIlIIl[lllIllIIIll](IlllIIIIlIIl[lllIllIIIll+1])else IlllIIIIlIIl[lllIllIIIll[#("tW")]]=IlllIIIIlIIl[lllIllIIIll[#{{316;322;79;991};{923;146;13;421};"1 + 1 = 111";}]][IlllIIIIlIIl[lllIllIIIll[#("F1pY")]]];end;elseif lIIIIIlIllIIlIIlIIIlll==#("VxLUQs8YZ9qZ2TCqkm86En2rmr")then IlllIIIIlIIl[lllIllIIIll[#("4h")]]=llllIIIlIlIlllll[lllIllIIIll[#("5RB")]];else local llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("f2")];local lIIIIIlIllIIlIIlIIIlll=IlllIIIIlIIl[lllIllIIIll[#("vIv")]];IlllIIIIlIIl[llIlIIIlllIIIIlIIllIl+1]=lIIIIIlIllIIlIIlIIIlll;IlllIIIIlIIl[llIlIIIlllIIIIlIIllIl]=lIIIIIlIllIIlIIlIIIlll[lllIllIIIll[#("WAP1")]];end;elseif lIIIIIlIllIIlIIlIIIlll<=#("J1FxJeDA5daLmR2bDymzqjzQtzi9H")then if lIIIIIlIllIIlIIlIIIlll==#("tIyPz6uNRVAtGmjLWpMlA493xADZ")then IlllIIIIlIIl[lllIllIIIll[#("ym")]]=#IlllIIIIlIIl[lllIllIIIll[#("2dO")]];else if not IlllIIIIlIIl[lllIllIIIll[#("q0")]]then llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;else llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("Nr6")];end;end;elseif lIIIIIlIllIIlIIlIIIlll<=#{"1 + 1 = 111";{829;880;957;263};"1 + 1 = 111";{707;536;499;274};"1 + 1 = 111";{301;64;523;156};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{166;819;845;234};{836;811;973;255};{34;854;453;153};{308;256;83;455};"1 + 1 = 111";{761;921;825;400};{214;102;97;164};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{485;105;117;104};"1 + 1 = 111";{457;722;579;515};"1 + 1 = 111";"1 + 1 = 111";{750;711;462;593};"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}then IlllIIIIlIIl[lllIllIIIll[#("gR")]]=lllIllIIIll[#("Fnz")];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("cQ")]]=llllIIIlIlIlllll[lllIllIIIll[#("3zI")]];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("mT")]]=IlllIIIIlIIl[lllIllIIIll[#("3tZ")]][lllIllIIIll[#("VT9g")]];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("En")]]=IlllIIIIlIIl[lllIllIIIll[#("tbD")]][lllIllIIIll[#("kMcy")]];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];IlllIIIIlIIl[lllIllIIIll[#("f4")]]=IlllIIIIlIIl[lllIllIIIll[#{{213;630;668;646};"1 + 1 = 111";"1 + 1 = 111";}]][lllIllIIIll[#("XyAB")]];llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;lllIllIIIll=IlIIllIIIIIII[llIlIIIlllIIIIlIIllIl];if IlllIIIIlIIl[lllIllIIIll[#("QH")]]then llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;else llIlIIIlllIIIIlIIllIl=lllIllIIIll[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}];end;elseif lIIIIIlIllIIlIIlIIIlll==#("EGJIZ6BeCRyp6QFKnI5AXqsuHcfGyv5")then local lIIIIIlIllIIlIIlIIIlll=lllIllIIIll[#("p3")];local lIlllIllllIIlII=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+2];local IlIIllIIIIIII=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll]+lIlllIllllIIlII;IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll]=IlIIllIIIIIII;if(lIlllIllllIIlII>0)then if(IlIIllIIIIIII<=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("JUr")];IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+3]=IlIIllIIIIIII;end elseif(IlIIllIIIIIII>=IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+1])then llIlIIIlllIIIIlIIllIl=lllIllIIIll[#("X2J")];IlllIIIIlIIl[lIIIIIlIllIIlIIlIIIlll+3]=IlIIllIIIIIII;end else IlllIIIIlIIl[lllIllIIIll[#{{579;49;895;9};"1 + 1 = 111";}]]=IlllIIIIlIIl[lllIllIIIll[#("jgK")]][lllIllIIIll[#("nAXd")]];end;llIlIIIlllIIIIlIIllIl=llIlIIIlllIIIIlIIllIl+1;end;end);end;return lIllllIIlI(true,{},lllIlllIll())();end)(string.byte,table.insert,setmetatable);
    end,
 })

local Section = MainTab:CreateSection("Player")

local Toggle = MainTab:CreateToggle({
    Name = "ESP",
    CurrentValue = false,
    Flag = "ESP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    --https://github.com/Kiriot22/ESP-Lib
 --Settings--
 local ESP = {
     Enabled = Value,
     Boxes = false,
     BoxShift = CFrame.new(0,-1.5,0),
     BoxSize = Vector3.new(4,6,0),
     Color = Color3.fromRGB(255, 0, 0),
     FaceCamera = false,
     Names = Value,
     TeamColor = Value,
     Thickness = 5,
     AttachShift = 2,
     TeamMates = Value,
     Players = Value,
     
     Objects = setmetatable({}, {__mode="kv"}),
     Overrides = {}
 }
 
 --Declarations--
 local cam = workspace.CurrentCamera
 local plrs = game:GetService("Players")
 local plr = plrs.LocalPlayer
 local mouse = plr:GetMouse()
 
 local V3new = Vector3.new
 local WorldToViewportPoint = cam.WorldToViewportPoint
 
 --Functions--
 local function Draw(obj, props)
     local new = Drawing.new(obj)
     
     props = props or {}
     for i,v in pairs(props) do
         new[i] = v
     end
     return new
 end
 
 function ESP:GetTeam(p)
     local ov = self.Overrides.GetTeam
     if ov then
         return ov(p)
     end
     
     return p and p.Team
 end
 
 function ESP:IsTeamMate(p)
     local ov = self.Overrides.IsTeamMate
     if ov then
         return ov(p)
     end
     
     return self:GetTeam(p) == self:GetTeam(plr)
 end
 
 function ESP:GetColor(obj)
     local ov = self.Overrides.GetColor
     if ov then
         return ov(obj)
     end
     local p = self:GetPlrFromChar(obj)
     return p and self.TeamColor and p.Team and p.Team.TeamColor.Color or self.Color
 end
 
 function ESP:GetPlrFromChar(char)
     local ov = self.Overrides.GetPlrFromChar
     if ov then
         return ov(char)
     end
     
     return plrs:GetPlayerFromCharacter(char)
 end
 
 function ESP:Toggle(bool)
     self.Enabled = bool
     if not bool then
         for i,v in pairs(self.Objects) do
             if v.Type == "Box" then --fov circle etc
                 if v.Temporary then
                     v:Remove()
                 else
                     for i,v in pairs(v.Components) do
                         v.Visible = false
                     end
                 end
             end
         end
     end
 end
 
 function ESP:GetBox(obj)
     return self.Objects[obj]
 end
 
 function ESP:AddObjectListener(parent, options)
     local function NewListener(c)
         if type(options.Type) == "string" and c:IsA(options.Type) or options.Type == nil then
             if type(options.Name) == "string" and c.Name == options.Name or options.Name == nil then
                 if not options.Validator or options.Validator(c) then
                     local box = ESP:Add(c, {
                         PrimaryPart = type(options.PrimaryPart) == "string" and c:WaitForChild(options.PrimaryPart) or type(options.PrimaryPart) == "function" and options.PrimaryPart(c),
                         Color = type(options.Color) == "function" and options.Color(c) or options.Color,
                         ColorDynamic = options.ColorDynamic,
                         Name = type(options.CustomName) == "function" and options.CustomName(c) or options.CustomName,
                         IsEnabled = options.IsEnabled,
                         RenderInNil = options.RenderInNil
                     })
                     --TODO: add a better way of passing options
                     if options.OnAdded then
                         coroutine.wrap(options.OnAdded)(box)
                     end
                 end
             end
         end
     end
 
     if options.Recursive then
         parent.DescendantAdded:Connect(NewListener)
         for i,v in pairs(parent:GetDescendants()) do
             coroutine.wrap(NewListener)(v)
         end
     else
         parent.ChildAdded:Connect(NewListener)
         for i,v in pairs(parent:GetChildren()) do
             coroutine.wrap(NewListener)(v)
         end
     end
 end
 
 local boxBase = {}
 boxBase.__index = boxBase
 
 function boxBase:Remove()
     ESP.Objects[self.Object] = nil
     for i,v in pairs(self.Components) do
         v.Visible = false
         v:Remove()
         self.Components[i] = nil
     end
 end
 
 function boxBase:Update()
     if not self.PrimaryPart then
         --warn("not supposed to print", self.Object)
         return self:Remove()
     end
 
     local color
     if ESP.Highlighted == self.Object then
        color = ESP.HighlightColor
     else
         color = self.Color or self.ColorDynamic and self:ColorDynamic() or ESP:GetColor(self.Object) or ESP.Color
     end
 
     local allow = true
     if ESP.Overrides.UpdateAllow and not ESP.Overrides.UpdateAllow(self) then
         allow = false
     end
     if self.Player and not ESP.TeamMates and ESP:IsTeamMate(self.Player) then
         allow = false
     end
     if self.Player and not ESP.Players then
         allow = false
     end
     if self.IsEnabled and (type(self.IsEnabled) == "string" and not ESP[self.IsEnabled] or type(self.IsEnabled) == "function" and not self:IsEnabled()) then
         allow = false
     end
     if not workspace:IsAncestorOf(self.PrimaryPart) and not self.RenderInNil then
         allow = false
     end
 
     if not allow then
         for i,v in pairs(self.Components) do
             v.Visible = false
         end
         return
     end
 
     if ESP.Highlighted == self.Object then
         color = ESP.HighlightColor
     end
 
     --calculations--
     local cf = self.PrimaryPart.CFrame
     if ESP.FaceCamera then
         cf = CFrame.new(cf.p, cam.CFrame.p)
     end
     local size = self.Size
     local locs = {
         TopLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,size.Y/2,0),
         TopRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,size.Y/2,0),
         BottomLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,-size.Y/2,0),
         BottomRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,-size.Y/2,0),
         TagPos = cf * ESP.BoxShift * CFrame.new(0,size.Y/2,0),
         Torso = cf * ESP.BoxShift
     }
 
     if ESP.Boxes then
         local TopLeft, Vis1 = WorldToViewportPoint(cam, locs.TopLeft.p)
         local TopRight, Vis2 = WorldToViewportPoint(cam, locs.TopRight.p)
         local BottomLeft, Vis3 = WorldToViewportPoint(cam, locs.BottomLeft.p)
         local BottomRight, Vis4 = WorldToViewportPoint(cam, locs.BottomRight.p)
 
         if self.Components.Quad then
             if Vis1 or Vis2 or Vis3 or Vis4 then
                 self.Components.Quad.Visible = true
                 self.Components.Quad.PointA = Vector2.new(TopRight.X, TopRight.Y)
                 self.Components.Quad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
                 self.Components.Quad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
                 self.Components.Quad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
                 self.Components.Quad.Color = color
             else
                 self.Components.Quad.Visible = false
             end
         end
     else
         self.Components.Quad.Visible = false
     end
 
     if ESP.Names then
         local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)
         
         if Vis5 then
             self.Components.Name.Visible = true
             self.Components.Name.Position = Vector2.new(TagPos.X, TagPos.Y)
             self.Components.Name.Text = self.Name
             self.Components.Name.Color = color
             
             self.Components.Distance.Visible = true
             self.Components.Distance.Position = Vector2.new(TagPos.X, TagPos.Y + 14)
             self.Components.Distance.Text = math.floor((cam.CFrame.p - cf.p).magnitude) .."m away"
             self.Components.Distance.Color = color
         else
             self.Components.Name.Visible = false
             self.Components.Distance.Visible = false
         end
     else
         self.Components.Name.Visible = false
         self.Components.Distance.Visible = false
     end
     
     if ESP.Tracers then
         local TorsoPos, Vis6 = WorldToViewportPoint(cam, locs.Torso.p)
 
         if Vis6 then
             self.Components.Tracer.Visible = true
             self.Components.Tracer.From = Vector2.new(TorsoPos.X, TorsoPos.Y)
             self.Components.Tracer.To = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/ESP.AttachShift)
             self.Components.Tracer.Color = color
         else
             self.Components.Tracer.Visible = false
         end
     else
         self.Components.Tracer.Visible = false
     end
 end
 
 function ESP:Add(obj, options)
     if not obj.Parent and not options.RenderInNil then
         return warn(obj, "has no parent")
     end
 
     local box = setmetatable({
         Name = options.Name or obj.Name,
         Type = "Box",
         Color = options.Color --[[or self:GetColor(obj)]],
         Size = options.Size or self.BoxSize,
         Object = obj,
         Player = options.Player or plrs:GetPlayerFromCharacter(obj),
         PrimaryPart = options.PrimaryPart or obj.ClassName == "Model" and (obj.PrimaryPart or obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")) or obj:IsA("BasePart") and obj,
         Components = {},
         IsEnabled = options.IsEnabled,
         Temporary = options.Temporary,
         ColorDynamic = options.ColorDynamic,
         RenderInNil = options.RenderInNil
     }, boxBase)
 
     if self:GetBox(obj) then
         self:GetBox(obj):Remove()
     end
 
     box.Components["Quad"] = Draw("Quad", {
         Thickness = self.Thickness,
         Color = color,
         Transparency = 1,
         Filled = false,
         Visible = self.Enabled and self.Boxes
     })
     box.Components["Name"] = Draw("Text", {
         Text = box.Name,
         Color = box.Color,
         Center = true,
         Outline = true,
         Size = 19,
         Visible = self.Enabled and self.Names
     })
     box.Components["Distance"] = Draw("Text", {
         Color = box.Color,
         Center = true,
         Outline = true,
         Size = 19,
         Visible = self.Enabled and self.Names
     })
     
     box.Components["Tracer"] = Draw("Line", {
         Thickness = ESP.Thickness,
         Color = box.Color,
         Transparency = 1,
         Visible = self.Enabled and self.Tracers
     })
     self.Objects[obj] = box
     
     obj.AncestryChanged:Connect(function(_, parent)
         if parent == nil and ESP.AutoRemove ~= false then
             box:Remove()
         end
     end)
     obj:GetPropertyChangedSignal("Parent"):Connect(function()
         if obj.Parent == nil and ESP.AutoRemove ~= false then
             box:Remove()
         end
     end)
 
     local hum = obj:FindFirstChildOfClass("Humanoid")
     if hum then
         hum.Died:Connect(function()
             if ESP.AutoRemove ~= false then
                 box:Remove()
             end
         end)
     end
 
     return box
 end
 
 local function CharAdded(char)
     local p = plrs:GetPlayerFromCharacter(char)
     if not char:FindFirstChild("HumanoidRootPart") then
         local ev
         ev = char.ChildAdded:Connect(function(c)
             if c.Name == "HumanoidRootPart" then
                 ev:Disconnect()
                 ESP:Add(char, {
                     Name = p.Name,
                     Player = p,
                     PrimaryPart = c
                 })
             end
         end)
     else
         ESP:Add(char, {
             Name = p.Name,
             Player = p,
             PrimaryPart = char.HumanoidRootPart
         })
     end
 end
 local function PlayerAdded(p)
     p.CharacterAdded:Connect(CharAdded)
     if p.Character then
         coroutine.wrap(CharAdded)(p.Character)
     end
 end
 plrs.PlayerAdded:Connect(PlayerAdded)
 for i,v in pairs(plrs:GetPlayers()) do
     if v ~= plr then
         PlayerAdded(v)
     end
 end
 
 game:GetService("RunService").RenderStepped:Connect(function()
     cam = workspace.CurrentCamera
     for i,v in (ESP.Enabled and pairs or ipairs)(ESP.Objects) do
         if v.Update then
             local s,e = pcall(v.Update, v)
             if not s then warn("[EU]", e, v.Object:GetFullName()) end
         end
     end
 end)
 
 return ESP
    end,
 })

 local Toggle = MainTab:CreateToggle({
    Name = "Glove ESP",
    CurrentValue = false,
    Flag = "Glove ESP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        GloveESP = Value
        if GloveESP == false then
        for i, v in ipairs(game.Players:GetChildren()) do
                        if v.Character and v.Character:FindFirstChild("Head") and v.Character.Head:FindFirstChild("GloveEsp") then
         v.Character.Head.GloveEsp:Destroy()
                        end
                    end
        end
        while GloveESP do
        for i, v in ipairs(game.Players:GetChildren()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("entered") and v.Character.IsInDefaultArena.Value == false and v.Character.Head:FindFirstChild("GloveEsp") == nil then
        GloveEsp = Instance.new("BillboardGui", v.Character.Head)
        GloveEsp.Adornee = v.Character.Head
        GloveEsp.Name = "GloveEsp"
        GloveEsp.Size = UDim2.new(0, 100, 0, 150)
        GloveEsp.StudsOffset = Vector3.new(0, 1, 0)
        GloveEsp.AlwaysOnTop = true
        GloveEsp.StudsOffset = Vector3.new(0, 3, 0)
        GloveEspText = Instance.new("TextLabel", GloveEsp)
        GloveEspText.BackgroundTransparency = 1
        GloveEspText.Size = UDim2.new(0, 100, 0, 100)
        GloveEspText.TextSize = 25
        GloveEspText.Font = Enum.Font.SourceSansSemibold
        GloveEspText.TextColor3 = Color3.new(255, 0, 0)
        GloveEspText.TextStrokeTransparency = 0
        GloveEspText.Text = v.leaderstats.Glove.Value
                        end
                    end
        task.wait()
        end
    end,
 })

local Button = MainTab:CreateButton({
    Name = "Noclip",
    Callback = function()
        local Workspace = game:GetService("Workspace")
        local CoreGui = game:GetService("CoreGui")
        local Players = game:GetService("Players")
        local Noclip = Instance.new("ScreenGui")
        local BG = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local Toggle = Instance.new("TextButton")
        local StatusPF = Instance.new("TextLabel")
        local Status = Instance.new("TextLabel")
        local Credit = Instance.new("TextLabel")
        local Plr = Players.LocalPlayer
        local Clipon = false
        
        Noclip.Name = "Noclip"
        Noclip.Parent = game.CoreGui
        
        BG.Name = "BG"
        BG.Parent = Noclip
        BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
        BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
        BG.BorderSizePixel = 2
        BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
        BG.Size = UDim2.new(0, 210, 0, 127)
        BG.Active = true
        BG.Draggable = true
        
        Title.Name = "Title"
        Title.Parent = BG
        Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
        Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
        Title.BorderSizePixel = 2
        Title.Size = UDim2.new(0, 210, 0, 33)
        Title.Font = Enum.Font.Highway
        Title.Text = "Noclip"
        Title.TextColor3 = Color3.new(1, 1, 1)
        Title.FontSize = Enum.FontSize.Size32
        Title.TextSize = 30
        Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
        Title.TextStrokeTransparency = 0
        
        Toggle.Parent = BG
        Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
        Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
        Toggle.BorderSizePixel = 2
        Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
        Toggle.Size = UDim2.new(0, 146, 0, 36)
        Toggle.Font = Enum.Font.Highway
        Toggle.FontSize = Enum.FontSize.Size28
        Toggle.Text = "Toggle"
        Toggle.TextColor3 = Color3.new(1, 1, 1)
        Toggle.TextSize = 25
        Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
        Toggle.TextStrokeTransparency = 0
        
        StatusPF.Name = "StatusPF"
        StatusPF.Parent = BG
        StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
        StatusPF.BackgroundTransparency = 1
        StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
        StatusPF.Size = UDim2.new(0, 56, 0, 20)
        StatusPF.Font = Enum.Font.Highway
        StatusPF.FontSize = Enum.FontSize.Size24
        StatusPF.Text = "Status:"
        StatusPF.TextColor3 = Color3.new(1, 1, 1)
        StatusPF.TextSize = 20
        StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
        StatusPF.TextStrokeTransparency = 0
        StatusPF.TextWrapped = true
        
        Status.Name = "Status"
        Status.Parent = BG
        Status.BackgroundColor3 = Color3.new(1, 1, 1)
        Status.BackgroundTransparency = 1
        Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
        Status.Size = UDim2.new(0, 56, 0, 20)
        Status.Font = Enum.Font.Highway
        Status.FontSize = Enum.FontSize.Size14
        Status.Text = "off"
        Status.TextColor3 = Color3.new(0.666667, 0, 0)
        Status.TextScaled = true
        Status.TextSize = 14
        Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
        Status.TextWrapped = true
        Status.TextXAlignment = Enum.TextXAlignment.Left
        
        Credit.Name = "Credit"
        Credit.Parent = BG
        Credit.BackgroundColor3 = Color3.new(1, 1, 1)
        Credit.BackgroundTransparency = 1
        Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
        Credit.Size = UDim2.new(0, 128, 0, 17)
        Credit.Font = Enum.Font.SourceSans
        Credit.FontSize = Enum.FontSize.Size18
        Credit.Text = "Created by Shoota"
        Credit.TextColor3 = Color3.new(1, 1, 1)
        Credit.TextSize = 16
        Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
        Credit.TextStrokeTransparency = 0
        Credit.TextWrapped = true
        
        Toggle.MouseButton1Click:connect(function()
            if Status.Text == "off" then
                Clipon = true
                Status.Text = "on"
                Status.TextColor3 = Color3.new(0,185,0)
                Stepped = game:GetService("RunService").Stepped:Connect(function()
                    if not Clipon == false then
                        for a, b in pairs(Workspace:GetChildren()) do
                        if b.Name == Plr.Name then
                        for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                        if v:IsA("BasePart") then
                        v.CanCollide = false
                        end end end end
                    else
                        Stepped:Disconnect()
                    end
                end)
            elseif Status.Text == "on" then
                Clipon = false
                Status.Text = "off"
                Status.TextColor3 = Color3.new(170,0,0)
            end
        end)
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Player Freecam",
    Callback = function()
        ToggleKey = Enum.KeyCode.C
        SprintKey = Enum.KeyCode.LeftShift
        localPlayer = game.Players.LocalPlayer
        Camera = game.Workspace.CurrentCamera
        Mouse = localPlayer:GetMouse()
        UserInputService = game:GetService("UserInputService")
        movePosition = Vector2.new(0,0)
        moveDirection = Vector3.new(0,0,0)
        targetMovePosition = movePosition
        Y_Sensitivity = 300;
        X_Sensitivity = 300;
        lastRightButtonDown = Vector2.new(0,0)
        rightMouseButtonDown = false
        targetFOV = 70
        sprinting = false;
        sprintingSpeed = 3;
        keysDown = {}
        moveKeys = {
        [Enum.KeyCode.D] = Vector3.new(1,0,0),
        [Enum.KeyCode.A] = Vector3.new(-1,0,0),
        [Enum.KeyCode.S] = Vector3.new(0,0,1),
        [Enum.KeyCode.W] = Vector3.new(0,0,-1),
        [Enum.KeyCode.E] = Vector3.new(0,1,0),
        [Enum.KeyCode.Q] = Vector3.new(0,-1,0)
        }
        Tween = function(a,b,t)
        if t == 1 then
        return b
        else 
        if tonumber(a) then
            return a * (1-t) + (b*t)
        else
        return a:Lerp(b,t);
        end
        end
        end
        ClampVector3 = function(x,min,max)
        return 
        Vector3.new(
        math.clamp(x.X,min.X,max.X),
        math.clamp(x.Y,min.Y,max.Y),
        math.clamp(x.Z,min.Z,max.Z)
        )
        end
        UserInputService.InputChanged:connect(function(inputObject)
        if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
        movePosition = movePosition + Vector2.new(inputObject.Delta.x,inputObject.Delta.y)
        end
        end)
        CalculateMovement = function()
        local newMovement = Vector3.new(0,0,0)
        for i,v in pairs(keysDown) do
        newMovement = newMovement + (moveKeys[i] or Vector3.new(0,0,0))
        end
        return newMovement
        end
        Round = function(num, numDecimalPlaces)
          return math.floor((num/numDecimalPlaces) + .5)*numDecimalPlaces
        end
        Input = function(input,gameProcessed)
        if moveKeys[input.KeyCode] then
        if input.UserInputState == Enum.UserInputState.Begin then
        keysDown[input.KeyCode] = true
        elseif input.UserInputState == Enum.UserInputState.End then
        keysDown[input.KeyCode] = nil
        end
        else
        if input.UserInputState == Enum.UserInputState.Begin then
        print(input.KeyCode)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
        rightMouseButtonDown = true
        lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
        UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
        elseif input.KeyCode == Enum.KeyCode.Z then
        targetFOV = 20
        elseif input.KeyCode == SprintKey then
        sprinting = true
        end
        else
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
        rightMouseButtonDown = false
        UserInputService.MouseBehavior = Enum.MouseBehavior.Default
        elseif input.KeyCode == Enum.KeyCode.Z then
        targetFOV = 70
        elseif input.KeyCode == SprintKey then
        sprinting = false
        end
        end
        end
        end
        Mouse.WheelForward:connect(function()
           Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(0,0,-5)
        end)
        Mouse.WheelBackward:connect(function()
           Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.new(-0,0,5)
        end)
        UserInputService.InputBegan:connect(Input)
        UserInputService.InputEnded:connect(Input)
        local Toggled = false
        game:GetService("UserInputService").InputBegan:connect(function(inputObject)
        if inputObject.KeyCode == ToggleKey then
        Toggled = not Toggled
        if Toggled then
        Camera.CameraType = Enum.CameraType.Scriptable
        else
        game.Workspace.CurrentCamera.CameraSubject = game.Workspace.Lobby.Conveyors.Part
        game.Workspace.CurrentCamera.CameraType = "Custom"
        end
        end
        end)
        game:GetService("RunService").RenderStepped:Connect(function()
        if Toggled then
        local mouseTarget = Mouse.Hit
        
        targetMovePosition = movePosition
        Camera.CoordinateFrame = CFrame.new(Camera.CoordinateFrame.p) * CFrame.fromEulerAnglesYXZ(-targetMovePosition.Y/Y_Sensitivity ,-targetMovePosition.X/X_Sensitivity, 0) * CFrame.new(CalculateMovement() * ((({[true]=sprintingSpeed})[sprinting]) or .5) )
        Camera.FieldOfView = Tween(Camera.FieldOfView,targetFOV,.5)
        if rightMouseButtonDown then
        UserInputService.MouseBehavior = Enum.MouseBehavior.LockCurrentPosition
        movePosition = movePosition - (lastRightButtonDown - Vector2.new(Mouse.X,Mouse.Y))
        lastRightButtonDown = Vector2.new(Mouse.X,Mouse.Y)
        end
        end
        end)
        game:GetService('VirtualInputManager'):SendKeyEvent(true,'C',false,x)
        Rayfield:Notify({
            Title = "Character Freeze & Force Reset",
            Content = "Make sure to also use character Freeze and Force Reset with the freecam (click C then force reset to disable freecam)",
            Duration = 6.5,
            Image = nil,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "OK",
                  Callback = function()
                  print("???")
               end
            },
         },
         })
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Freeze Character",
    Callback = function()
    local plr = game:service("Players").LocalPlayer
    plr.Character.Torso.Anchored = true
    plr.Character.HumanoidRootPart:Destroy()
    plr.Character.Torso.Anchored = false
    end,
 })

 local Slider = MainTab:CreateSlider({
    Name = "HP setter",
    Range = {0, 100},
    Increment = 1,
    Suffix = "health",
    CurrentValue = 100,
    Flag = "HP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.Health = Value
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Force Reset",
    Callback = function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end,
 })

   local Toggle = MainTab:CreateToggle({
   Name = "Inf Jump",
   CurrentValue = false,
   Flag = "Toggle6", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 125;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
   end,
})
            
local AnimationsTab = Window:CreateTab("Animations", nil) -- Title, Image
local Section = AnimationsTab:CreateSection("FE")

local Button = AnimationsTab:CreateButton({
   Name = "Emotes",
   Callback = function()
   Floss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Floss, game.Players.LocalPlayer.Character.Humanoid)
Groove = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Groove, game.Players.LocalPlayer.Character.Humanoid)
Headless = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Headless, game.Players.LocalPlayer.Character.Humanoid)
Helicopter = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Helicopter, game.Players.LocalPlayer.Character.Humanoid)
Kick = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Kick, game.Players.LocalPlayer.Character.Humanoid)
L = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.L, game.Players.LocalPlayer.Character.Humanoid)
Laugh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Laugh, game.Players.LocalPlayer.Character.Humanoid)
Parker = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Parker, game.Players.LocalPlayer.Character.Humanoid)
Spasm = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Spasm, game.Players.LocalPlayer.Character.Humanoid)
Thriller = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Thriller, game.Players.LocalPlayer.Character.Humanoid)
game.Players.LocalPlayer.Chatted:connect(function(msg)
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
Floss = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Floss, game.Players.LocalPlayer.Character.Humanoid)
Groove = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Groove, game.Players.LocalPlayer.Character.Humanoid)
Headless = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Headless, game.Players.LocalPlayer.Character.Humanoid)
Helicopter = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Helicopter, game.Players.LocalPlayer.Character.Humanoid)
Kick = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Kick, game.Players.LocalPlayer.Character.Humanoid)
L = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.L, game.Players.LocalPlayer.Character.Humanoid)
Laugh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Laugh, game.Players.LocalPlayer.Character.Humanoid)
Parker = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Parker, game.Players.LocalPlayer.Character.Humanoid)
Spasm = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Spasm, game.Players.LocalPlayer.Character.Humanoid)
Thriller = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.AnimationPack.Thriller, game.Players.LocalPlayer.Character.Humanoid)
if string.lower(msg) == "/e Floss" or string.lower(msg) == "/e floss" then
Floss:Play()
elseif string.lower(msg) == "/e Groove" or string.lower(msg) == "/e groove" then
Groove:Play()
elseif string.lower(msg) == "/e Headless" or string.lower(msg) == "/e headless" then
Headless:Play()
elseif string.lower(msg) == "/e Helicopter" or string.lower(msg) == "/e helicopter" then
Helicopter:Play()
elseif string.lower(msg) == "/e Kick" or string.lower(msg) == "/e kick" then
Kick:Play()
elseif string.lower(msg) == "/e L" or string.lower(msg) == "/e l" then
L:Play()
elseif string.lower(msg) == "/e Laugh" or string.lower(msg) == "/e laugh" then
Laugh:Play()
elseif string.lower(msg) == "/e Parker" or string.lower(msg) == "/e parker" then
Parker:Play()
elseif string.lower(msg) == "/e Spasm" or string.lower(msg) == "/e spasm" then
Spasm:Play()
elseif string.lower(msg) == "/e Thriller" or string.lower(msg) == "/e thriller" then
Thriller:Play()
end
EP = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end
end)
game:GetService("RunService").Heartbeat:Connect(function()
if EP ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Floss.IsPlaying or Groove.IsPlaying or Headless.IsPlaying or Helicopter.IsPlaying or Kick.IsPlaying or L.IsPlaying or Laugh.IsPlaying or Parker.IsPlaying or Spasm.IsPlaying or Thriller.IsPlaying then
Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - EP).Magnitude
if Magnitude > 1 then
Floss:Stop(); Groove:Stop(); Headless:Stop(); Helicopter:Stop(); Kick:Stop(); L:Stop(); Laugh:Stop(); Parker:Stop(); Spasm:Stop(); Thriller:Stop()
end
end
end)
   end,
})

local Button = AnimationsTab:CreateButton({
   Name = "FE Animations",
   Callback = function()
   local Energize = Instance.new("ScreenGui")
local SideFrame = Instance.new("Frame")
local OpenGUI = Instance.new("TextButton")
local SideFrameTitle = Instance.new("TextLabel")
local MainFrame = Instance.new("Frame")
local GuiBottomFrame = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local CheckR = Instance.new("TextLabel")
local ScrollingFrameR15 = Instance.new("ScrollingFrame")
 
local CrazySlash = Instance.new("TextButton")--COMPLETE
local Open = Instance.new("TextButton")--COMPLETE
local R15Spinner = Instance.new("TextButton")--COMPLETE
local ArmsOut = Instance.new("TextButton")--COMPLETE
local FloatSlash = Instance.new("TextButton")--COMPLETE
local WeirdZombie = Instance.new("TextButton")--COMPLETE
local DownSlash = Instance.new("TextButton")--COMPLETE
local Pull = Instance.new("TextButton")--COMPLETE
local CircleArm = Instance.new("TextButton")--COMPLETE
local Bend = Instance.new("TextButton")--COMPLETE
local RotateSlash = Instance.new("TextButton")--COMPLETE
local FlingArms = Instance.new("TextButton")--COMPLETE
 
local FullSwing = Instance.new("TextButton")--COMPLETE
local GlitchLevitate = Instance.new("TextButton")--COMPLETE
local MoonDance = Instance.new("TextButton")--COMPLETE
local FullPunch = Instance.new("TextButton")--COMPLETE
local Crouch = Instance.new("TextButton")--COMPLETE
local SpinDance = Instance.new("TextButton")--COMPLETE
local FloorFaint = Instance.new("TextButton")--COMPLETE
local JumpingJacks = Instance.new("TextButton")--COMPLETE
local Spinner = Instance.new("TextButton")--COMPLETE
local MegaInsane = Instance.new("TextButton")--COMPLETE
local ArmDetach = Instance.new("TextButton")--COMPLETE
local WeirdMove = Instance.new("TextButton")--COMPLETE
local Faint = Instance.new("TextButton")--COMPLETE
local CloneIllusion = Instance.new("TextButton")--COMPLETE
local Levitate = Instance.new("TextButton")--COMPLETE
local DinoWalk = Instance.new("TextButton")--COMPLETE
local FloorCrawl = Instance.new("TextButton")--COMPLETE
local SwordSlam = Instance.new("TextButton")--COMPLETE
local LoopHead = Instance.new("TextButton")--COMPLETE
local HeroJump = Instance.new("TextButton")--COMPLETE
local Insane = Instance.new("TextButton")--COMPLETE
local FloatingHead = Instance.new("TextButton")--COMPLETE
local HeadThrow = Instance.new("TextButton")--COMPLETE
local MovingDance = Instance.new("TextButton")--COMPLETE
local SuperPunch = Instance.new("TextButton")--COMPLETE
local ArmTurbine = Instance.new("TextButton")--COMPLETE
local Dab = Instance.new("TextButton")--COMPLETE
local FloatSit = Instance.new("TextButton")--COMPLETE
local SuperFaint = Instance.new("TextButton")--COMPLETE
local BarrelRoll = Instance.new("TextButton")--COMPLETE
local Scared = Instance.new("TextButton")--COMPLETE
local InsaneArms = Instance.new("TextButton")--COMPLETE
local SwordSlice = Instance.new("TextButton")--COMPLETE
local SpinDance2 = Instance.new("TextButton")--COMPLETE
local BowDown = Instance.new("TextButton")--COMPLETE
local LoopSlam = Instance.new("TextButton")--COMPLETE
 
local GuiTopFrame = Instance.new("Frame") -- Top of the main frame
local CloseGUI = Instance.new("TextButton") -- To close the GUI
local Title = Instance.new("TextLabel") -- Actual title of GUI, Energize
 
-- Properties
 
Energize.Name = "Project Alpha animations"
Energize.Parent = game.Players.LocalPlayer.PlayerGui
 
SideFrame.Name = "SideFrame"
SideFrame.Parent = Energize
SideFrame.Active = true
SideFrame.BackgroundColor3 = Color3.new(1, 0.329412, 0.329412)
SideFrame.Draggable = true
SideFrame.Position = UDim2.new(0, 376, 0, 125)
SideFrame.Size = UDim2.new(0, 460, 0, 32)
SideFrame.Visible = false
 
OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = SideFrame
OpenGUI.BackgroundColor3 = Color3.new(1, 1, 1)
OpenGUI.BackgroundTransparency = 1
OpenGUI.Position = UDim2.new(0, 426, 0, 0)
OpenGUI.Size = UDim2.new(0, 34, 0, 32)
OpenGUI.Font = Enum.Font.SourceSans
OpenGUI.FontSize = Enum.FontSize.Size48
OpenGUI.Text = "X"
OpenGUI.TextColor3 = Color3.new(0.333333, 0, 0)
OpenGUI.TextSize = 40
OpenGUI.TextWrapped = true
 
SideFrameTitle.Name = "SideFrameTitle"
SideFrameTitle.Parent = SideFrame
SideFrameTitle.BackgroundColor3 = Color3.new(1, 1, 1)
SideFrameTitle.BackgroundTransparency = 1
SideFrameTitle.Position = UDim2.new(0, 170, 0, 0)
SideFrameTitle.Size = UDim2.new(0, 119, 0, 31)
SideFrameTitle.Font = Enum.Font.Arial
SideFrameTitle.FontSize = Enum.FontSize.Size24
SideFrameTitle.Text = "Project alpha Aminations"
SideFrameTitle.TextSize = 21
SideFrameTitle.TextStrokeColor3 = Color3.new(0.27451, 0.92549, 0.905882)
SideFrameTitle.TextStrokeTransparency = 0.69999998807907
 
MainFrame.Name = "MainFrame"
MainFrame.Parent = Energize
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0, 376, 0, 125)
MainFrame.Size = UDim2.new(0, 444, 0, 280)
 
GuiBottomFrame.Name = "Gui BottomFrame"
GuiBottomFrame.Parent = MainFrame
GuiBottomFrame.BackgroundColor3 = Color3.new(1, 0.329412, 0.329412)
GuiBottomFrame.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
GuiBottomFrame.Position = UDim2.new(0, 0, 0, 247)
GuiBottomFrame.Size = UDim2.new(0, 460, 0, 32)
 
Credits.Name = "Credits"
Credits.Parent = GuiBottomFrame
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.BackgroundTransparency = 1
Credits.Size = UDim2.new(0, 460, 0, 32)
Credits.FontSize = Enum.FontSize.Size14
Credits.Text = "By Shoota | FE animations"
Credits.TextColor3 = Color3.new(0.219608, 0.219608, 0.219608)
Credits.TextSize = 14
Credits.TextStrokeColor3 = Color3.new(0.141176, 0.870588, 0.713726)
Credits.TextStrokeTransparency = 0.69999998807907
Credits.TextWrapped = true
 
ScrollingFrame.Parent = MainFrame
ScrollingFrame.BackgroundColor3 = Color3.new(1, 0.564706, 0.564706)
ScrollingFrame.Position = UDim2.new(0, 0, 0, 32)
ScrollingFrame.Size = UDim2.new(0, 460, 0, 215)
ScrollingFrame.ScrollBarThickness = 13
 
FullSwing.Name = "FullSwing"
FullSwing.Parent = ScrollingFrame
FullSwing.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FullSwing.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FullSwing.Position = UDim2.new(0, 17, 0, 322)
FullSwing.Size = UDim2.new(0, 119, 0, 34)
FullSwing.Font = Enum.Font.Highway
FullSwing.FontSize = Enum.FontSize.Size24
FullSwing.Text = "Full Swing"
FullSwing.TextSize = 20
FullSwing.TextWrapped = true
 
GlitchLevitate.Name = "GlitchLevitate"
GlitchLevitate.Parent = ScrollingFrame
GlitchLevitate.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
GlitchLevitate.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
GlitchLevitate.Position = UDim2.new(0, 319, 0, 322)
GlitchLevitate.Size = UDim2.new(0, 119, 0, 34)
GlitchLevitate.Font = Enum.Font.Highway
GlitchLevitate.FontSize = Enum.FontSize.Size24
GlitchLevitate.Text = "Glitch Levitate"
GlitchLevitate.TextSize = 20
GlitchLevitate.TextWrapped = true
 
MoonDance.Name = "MoonDance"
MoonDance.Parent = ScrollingFrame
MoonDance.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
MoonDance.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
MoonDance.Position = UDim2.new(0, 319, 0, 280)
MoonDance.Size = UDim2.new(0, 119, 0, 34)
MoonDance.Font = Enum.Font.Highway
MoonDance.FontSize = Enum.FontSize.Size24
MoonDance.Text = "Moon Dance"
MoonDance.TextSize = 20
MoonDance.TextWrapped = true
 
FullPunch.Name = "FullPunch"
FullPunch.Parent = ScrollingFrame
FullPunch.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FullPunch.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FullPunch.Position = UDim2.new(0, 17, 0, 280)
FullPunch.Size = UDim2.new(0, 119, 0, 34)
FullPunch.Font = Enum.Font.Highway
FullPunch.FontSize = Enum.FontSize.Size24
FullPunch.Text = "Full Punch"
FullPunch.TextSize = 20
FullPunch.TextWrapped = true
 
Crouch.Name = "Crouch"
Crouch.Parent = ScrollingFrame
Crouch.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Crouch.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Crouch.Position = UDim2.new(0, 168, 0, 280)
Crouch.Size = UDim2.new(0, 119, 0, 34)
Crouch.Font = Enum.Font.Highway
Crouch.FontSize = Enum.FontSize.Size24
Crouch.Text = "Crouch"
Crouch.TextSize = 20
Crouch.TextWrapped = true
 
SpinDance.Name = "SpinDance"
SpinDance.Parent = ScrollingFrame
SpinDance.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SpinDance.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SpinDance.Position = UDim2.new(0, 168, 0, 236)
SpinDance.Size = UDim2.new(0, 119, 0, 34)
SpinDance.Font = Enum.Font.Highway
SpinDance.FontSize = Enum.FontSize.Size24
SpinDance.Text = "Spin Dance"
SpinDance.TextSize = 20
SpinDance.TextWrapped = true
 
FloorFaint.Name = "FloorFaint"
FloorFaint.Parent = ScrollingFrame
FloorFaint.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FloorFaint.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FloorFaint.Position = UDim2.new(0, 17, 0, 236)
FloorFaint.Size = UDim2.new(0, 119, 0, 34)
FloorFaint.Font = Enum.Font.Highway
FloorFaint.FontSize = Enum.FontSize.Size24
FloorFaint.Text = "Floor Faint"
FloorFaint.TextSize = 20
FloorFaint.TextWrapped = true
 
JumpingJacks.Name = "JumpingJacks"
JumpingJacks.Parent = ScrollingFrame
JumpingJacks.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
JumpingJacks.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
JumpingJacks.Position = UDim2.new(0, 319, 0, 236)
JumpingJacks.Size = UDim2.new(0, 119, 0, 34)
JumpingJacks.Font = Enum.Font.Highway
JumpingJacks.FontSize = Enum.FontSize.Size24
JumpingJacks.Text = "Jumping Jacks"
JumpingJacks.TextSize = 20
JumpingJacks.TextWrapped = true
 
Spinner.Name = "Spinner"
Spinner.Parent = ScrollingFrame
Spinner.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Spinner.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Spinner.Position = UDim2.new(0, 17, 0, 192)
Spinner.Size = UDim2.new(0, 119, 0, 34)
Spinner.Font = Enum.Font.Highway
Spinner.FontSize = Enum.FontSize.Size24
Spinner.Text = "Spinner"
Spinner.TextSize = 20
Spinner.TextWrapped = true
 
MegaInsane.Name = "MegaInsane"
MegaInsane.Parent = ScrollingFrame
MegaInsane.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
MegaInsane.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
MegaInsane.Position = UDim2.new(0, 168, 0, 192)
MegaInsane.Size = UDim2.new(0, 119, 0, 34)
MegaInsane.Font = Enum.Font.Highway
MegaInsane.FontSize = Enum.FontSize.Size24
MegaInsane.Text = "Mega Insane"
MegaInsane.TextSize = 20
MegaInsane.TextWrapped = true
 
ArmDetach.Name = "ArmDetach"
ArmDetach.Parent = ScrollingFrame
ArmDetach.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
ArmDetach.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
ArmDetach.Position = UDim2.new(0, 319, 0, 192)
ArmDetach.Size = UDim2.new(0, 119, 0, 34)
ArmDetach.Font = Enum.Font.Highway
ArmDetach.FontSize = Enum.FontSize.Size24
ArmDetach.Text = "Arm Detach"
ArmDetach.TextSize = 20
ArmDetach.TextWrapped = true
 
WeirdMove.Name = "WeirdMove"
WeirdMove.Parent = ScrollingFrame
WeirdMove.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
WeirdMove.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
WeirdMove.Position = UDim2.new(0, 168, 0, 148)
WeirdMove.Size = UDim2.new(0, 119, 0, 34)
WeirdMove.Font = Enum.Font.Highway
WeirdMove.FontSize = Enum.FontSize.Size24
WeirdMove.Text = "Weird Move"
WeirdMove.TextSize = 20
WeirdMove.TextWrapped = true
 
Faint.Name = "Faint"
Faint.Parent = ScrollingFrame
Faint.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Faint.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Faint.Position = UDim2.new(0, 17, 0, 148)
Faint.Size = UDim2.new(0, 119, 0, 34)
Faint.Font = Enum.Font.Highway
Faint.FontSize = Enum.FontSize.Size24
Faint.Text = "Faint"
Faint.TextSize = 20
Faint.TextWrapped = true
 
CloneIllusion.Name = "CloneIllusion"
CloneIllusion.Parent = ScrollingFrame
CloneIllusion.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
CloneIllusion.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
CloneIllusion.Position = UDim2.new(0, 319, 0, 148)
CloneIllusion.Size = UDim2.new(0, 119, 0, 34)
CloneIllusion.Font = Enum.Font.Highway
CloneIllusion.FontSize = Enum.FontSize.Size24
CloneIllusion.Text = "Clone Illusion"
CloneIllusion.TextSize = 20
CloneIllusion.TextWrapped = true
 
Levitate.Name = "Levitate"
Levitate.Parent = ScrollingFrame
Levitate.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Levitate.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Levitate.Position = UDim2.new(0, 17, 0, 104)
Levitate.Size = UDim2.new(0, 119, 0, 34)
Levitate.Font = Enum.Font.Highway
Levitate.FontSize = Enum.FontSize.Size24
Levitate.Text = "Levitate"
Levitate.TextSize = 20
Levitate.TextWrapped = true
 
DinoWalk.Name = "DinoWalk"
DinoWalk.Parent = ScrollingFrame
DinoWalk.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
DinoWalk.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
DinoWalk.Position = UDim2.new(0, 168, 0, 104)
DinoWalk.Size = UDim2.new(0, 119, 0, 34)
DinoWalk.Font = Enum.Font.Highway
DinoWalk.FontSize = Enum.FontSize.Size24
DinoWalk.Text = "Dino Walk"
DinoWalk.TextSize = 20
DinoWalk.TextWrapped = true
 
FloorCrawl.Name = "FloorCrawl"
FloorCrawl.Parent = ScrollingFrame
FloorCrawl.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FloorCrawl.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FloorCrawl.Position = UDim2.new(0, 319, 0, 104)
FloorCrawl.Size = UDim2.new(0, 119, 0, 34)
FloorCrawl.Font = Enum.Font.Highway
FloorCrawl.FontSize = Enum.FontSize.Size24
FloorCrawl.Text = "Floor Crawl"
FloorCrawl.TextSize = 20
FloorCrawl.TextWrapped = true
 
SwordSlam.Name = "SwordSlam"
SwordSlam.Parent = ScrollingFrame
SwordSlam.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SwordSlam.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SwordSlam.Position = UDim2.new(0, 319, 0, 60)
SwordSlam.Size = UDim2.new(0, 119, 0, 34)
SwordSlam.Font = Enum.Font.Highway
SwordSlam.FontSize = Enum.FontSize.Size24
SwordSlam.Text = "Sword Slam"
SwordSlam.TextSize = 20
SwordSlam.TextWrapped = true
 
LoopHead.Name = "LoopHead"
LoopHead.Parent = ScrollingFrame
LoopHead.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
LoopHead.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
LoopHead.Position = UDim2.new(0, 168, 0, 60)
LoopHead.Size = UDim2.new(0, 119, 0, 34)
LoopHead.Font = Enum.Font.Highway
LoopHead.FontSize = Enum.FontSize.Size24
LoopHead.Text = "Loop Head"
LoopHead.TextSize = 20
LoopHead.TextWrapped = true
 
HeroJump.Name = "HeroJump"
HeroJump.Parent = ScrollingFrame
HeroJump.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
HeroJump.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
HeroJump.Position = UDim2.new(0, 17, 0, 60)
HeroJump.Size = UDim2.new(0, 119, 0, 34)
HeroJump.Font = Enum.Font.Highway
HeroJump.FontSize = Enum.FontSize.Size24
HeroJump.Text = "Hero Jump"
HeroJump.TextSize = 20
HeroJump.TextWrapped = true
 
Insane.Name = "Insane"
Insane.Parent = ScrollingFrame
Insane.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Insane.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Insane.Position = UDim2.new(0, 319, 0, 16)
Insane.Size = UDim2.new(0, 119, 0, 34)
Insane.Font = Enum.Font.Highway
Insane.FontSize = Enum.FontSize.Size24
Insane.Text = "Insane"
Insane.TextSize = 20
Insane.TextWrapped = true
 
FloatingHead.Name = "FloatingHead"
FloatingHead.Parent = ScrollingFrame
FloatingHead.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FloatingHead.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FloatingHead.Position = UDim2.new(0, 168, 0, 16)
FloatingHead.Size = UDim2.new(0, 119, 0, 34)
FloatingHead.Font = Enum.Font.Highway
FloatingHead.FontSize = Enum.FontSize.Size24
FloatingHead.Text = "Floating Head"
FloatingHead.TextSize = 20
FloatingHead.TextWrapped = true
 
HeadThrow.Name = "HeadThrow"
HeadThrow.Parent = ScrollingFrame
HeadThrow.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
HeadThrow.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
HeadThrow.Position = UDim2.new(0, 17, 0, 16)
HeadThrow.Size = UDim2.new(0, 119, 0, 34)
HeadThrow.Font = Enum.Font.Highway
HeadThrow.FontSize = Enum.FontSize.Size24
HeadThrow.Text = "Head Throw"
HeadThrow.TextSize = 20
HeadThrow.TextWrapped = true
 
MovingDance.Name = "MovingDance"
MovingDance.Parent = ScrollingFrame
MovingDance.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
MovingDance.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
MovingDance.Position = UDim2.new(0, 168, 0, 324)
MovingDance.Size = UDim2.new(0, 119, 0, 34)
MovingDance.Font = Enum.Font.Highway
MovingDance.FontSize = Enum.FontSize.Size24
MovingDance.Text = "Moving Dance"
MovingDance.TextSize = 20
MovingDance.TextWrapped = true
 
SuperPunch.Name = "SuperPunch"
SuperPunch.Parent = ScrollingFrame
SuperPunch.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SuperPunch.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SuperPunch.Position = UDim2.new(0, 168, 0, 366)
SuperPunch.Size = UDim2.new(0, 119, 0, 34)
SuperPunch.Font = Enum.Font.Highway
SuperPunch.FontSize = Enum.FontSize.Size24
SuperPunch.Text = "Super Punch"
SuperPunch.TextSize = 20
SuperPunch.TextWrapped = true
 
ArmTurbine.Name = "ArmTurbine"
ArmTurbine.Parent = ScrollingFrame
ArmTurbine.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
ArmTurbine.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
ArmTurbine.Position = UDim2.new(0, 319, 0, 366)
ArmTurbine.Size = UDim2.new(0, 119, 0, 34)
ArmTurbine.Font = Enum.Font.Highway
ArmTurbine.FontSize = Enum.FontSize.Size24
ArmTurbine.Text = "Arm Turbine"
ArmTurbine.TextSize = 20
ArmTurbine.TextWrapped = true
 
Dab.Name = "Dab"
Dab.Parent = ScrollingFrame
Dab.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Dab.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Dab.Position = UDim2.new(0, 17, 0, 366)
Dab.Size = UDim2.new(0, 119, 0, 34)
Dab.Font = Enum.Font.Highway
Dab.FontSize = Enum.FontSize.Size24
Dab.Text = "Dab"
Dab.TextSize = 20
Dab.TextWrapped = true
 
FloatSit.Name = "FloatSit"
FloatSit.Parent = ScrollingFrame
FloatSit.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
FloatSit.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FloatSit.Position = UDim2.new(0, 168, 0, 410)
FloatSit.Size = UDim2.new(0, 119, 0, 34)
FloatSit.Font = Enum.Font.Highway
FloatSit.FontSize = Enum.FontSize.Size24
FloatSit.Text = "Float Sit"
FloatSit.TextSize = 20
FloatSit.TextWrapped = true
 
SuperFaint.Name = "SuperFaint"
SuperFaint.Parent = ScrollingFrame
SuperFaint.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SuperFaint.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SuperFaint.Position = UDim2.new(0, 17, 0, 498)
SuperFaint.Size = UDim2.new(0, 119, 0, 34)
SuperFaint.Font = Enum.Font.Highway
SuperFaint.FontSize = Enum.FontSize.Size24
SuperFaint.Text = "Super Faint"
SuperFaint.TextSize = 20
SuperFaint.TextWrapped = true
 
BarrelRoll.Name = "BarrelRoll"
BarrelRoll.Parent = ScrollingFrame
BarrelRoll.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
BarrelRoll.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
BarrelRoll.Position = UDim2.new(0, 319, 0, 410)
BarrelRoll.Size = UDim2.new(0, 119, 0, 34)
BarrelRoll.Font = Enum.Font.Highway
BarrelRoll.FontSize = Enum.FontSize.Size24
BarrelRoll.Text = "Barrel Roll"
BarrelRoll.TextSize = 20
BarrelRoll.TextWrapped = true
 
Scared.Name = "Scared"
Scared.Parent = ScrollingFrame
Scared.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
Scared.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Scared.Position = UDim2.new(0, 319, 0, 454)
Scared.Size = UDim2.new(0, 119, 0, 34)
Scared.Font = Enum.Font.Highway
Scared.FontSize = Enum.FontSize.Size24
Scared.Text = "Scared"
Scared.TextSize = 20
Scared.TextWrapped = true
 
InsaneArms.Name = "InsaneArms"
InsaneArms.Parent = ScrollingFrame
InsaneArms.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
InsaneArms.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
InsaneArms.Position = UDim2.new(0, 17, 0, 454)
InsaneArms.Size = UDim2.new(0, 119, 0, 34)
InsaneArms.Font = Enum.Font.Highway
InsaneArms.FontSize = Enum.FontSize.Size24
InsaneArms.Text = "Insane Arms"
InsaneArms.TextSize = 20
InsaneArms.TextWrapped = true
 
SwordSlice.Name = "SwordSlice"
SwordSlice.Parent = ScrollingFrame
SwordSlice.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SwordSlice.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SwordSlice.Position = UDim2.new(0, 168, 0, 454)
SwordSlice.Size = UDim2.new(0, 119, 0, 34)
SwordSlice.Font = Enum.Font.Highway
SwordSlice.FontSize = Enum.FontSize.Size24
SwordSlice.Text = "Sword Slice"
SwordSlice.TextSize = 20
SwordSlice.TextWrapped = true
 
SpinDance2.Name = "SpinDance2"
SpinDance2.Parent = ScrollingFrame
SpinDance2.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
SpinDance2.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
SpinDance2.Position = UDim2.new(0, 168, 0, 498)
SpinDance2.Size = UDim2.new(0, 119, 0, 34)
SpinDance2.Font = Enum.Font.Highway
SpinDance2.FontSize = Enum.FontSize.Size24
SpinDance2.Text = "Spin Dance 2"
SpinDance2.TextSize = 20
SpinDance2.TextWrapped = true
 
BowDown.Name = "BowDown"
BowDown.Parent = ScrollingFrame
BowDown.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
BowDown.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
BowDown.Position = UDim2.new(0, 319, 0, 498)
BowDown.Size = UDim2.new(0, 119, 0, 34)
BowDown.Font = Enum.Font.Highway
BowDown.FontSize = Enum.FontSize.Size24
BowDown.Text = "Bow Down"
BowDown.TextSize = 20
BowDown.TextWrapped = true
 
LoopSlam.Name = "LoopSlam"
LoopSlam.Parent = ScrollingFrame
LoopSlam.BackgroundColor3 = Color3.new(0.886275, 0.776471, 0.368627)
LoopSlam.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
LoopSlam.Position = UDim2.new(0, 17, 0, 410)
LoopSlam.Size = UDim2.new(0, 119, 0, 34)
LoopSlam.Font = Enum.Font.Highway
LoopSlam.FontSize = Enum.FontSize.Size24
LoopSlam.Text = "Loop Slam"
LoopSlam.TextSize = 20
LoopSlam.TextWrapped = true
 
GuiTopFrame.Name = "Gui TopFrame"
GuiTopFrame.Parent = MainFrame
GuiTopFrame.BackgroundColor3 = Color3.new(1, 0.329412, 0.329412)
GuiTopFrame.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
GuiTopFrame.Size = UDim2.new(0, 460, 0, 32)
 
CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = GuiTopFrame
CloseGUI.BackgroundColor3 = Color3.new(1, 1, 1)
CloseGUI.BackgroundTransparency = 1
CloseGUI.Position = UDim2.new(0, 426, 0, 0)
CloseGUI.Size = UDim2.new(0, 34, 0, 32)
CloseGUI.Font = Enum.Font.SourceSans
CloseGUI.FontSize = Enum.FontSize.Size48
CloseGUI.Text = "X"
CloseGUI.TextColor3 = Color3.new(0.333333, 0, 0)
CloseGUI.TextSize = 40
CloseGUI.TextWrapped = true
 
Title.Name = "Title"
Title.Parent = GuiTopFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 460, 0, 32)
Title.FontSize = Enum.FontSize.Size14
Title.Text = "    Project Alpha"
Title.TextColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Title.TextSize = 14
Title.TextStrokeColor3 = Color3.new(0.384314, 0.917647, 1)
Title.TextStrokeTransparency = 0.69999998807907
Title.TextWrapped = true
 
CheckR.Name = "CheckR"
CheckR.Parent = GuiTopFrame
CheckR.BackgroundColor3 = Color3.new(1, 1, 1)
CheckR.BackgroundTransparency = 1
CheckR.Size = UDim2.new(0, 171, 0, 32)
CheckR.Font = Enum.Font.SourceSansBold
CheckR.FontSize = Enum.FontSize.Size14
CheckR.Text = "Text"
CheckR.TextScaled = true
CheckR.TextSize = 14
CheckR.TextWrapped = true
 
ScrollingFrameR15.Name = "ScrollingFrameR15"
ScrollingFrameR15.Parent = MainFrame
ScrollingFrameR15.BackgroundColor3 = Color3.new(1, 0.564706, 0.564706)
ScrollingFrameR15.Position = UDim2.new(0, 0, 0, 32)
ScrollingFrameR15.Size = UDim2.new(0, 460, 0, 215)
ScrollingFrameR15.Visible = false
ScrollingFrameR15.ScrollBarThickness = 13
 
CrazySlash.Name = "CrazySlash"
CrazySlash.Parent = ScrollingFrameR15
CrazySlash.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
CrazySlash.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
CrazySlash.Position = UDim2.new(0, 17, 0, 16)
CrazySlash.Size = UDim2.new(0, 119, 0, 34)
CrazySlash.Font = Enum.Font.Highway
CrazySlash.FontSize = Enum.FontSize.Size24
CrazySlash.Text = "CrazySlash"
CrazySlash.TextSize = 20
CrazySlash.TextWrapped = true
 
Open.Name = "Open"
Open.Parent = ScrollingFrameR15
Open.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
Open.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Open.Position = UDim2.new(0, 168, 0, 16)
Open.Size = UDim2.new(0, 119, 0, 34)
Open.Font = Enum.Font.Highway
Open.FontSize = Enum.FontSize.Size24
Open.Text = "Open"
Open.TextSize = 20
Open.TextWrapped = true
 
R15Spinner.Name = "R15Spinner"
R15Spinner.Parent = ScrollingFrameR15
R15Spinner.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
R15Spinner.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
R15Spinner.Position = UDim2.new(0, 17, 0, 60)
R15Spinner.Size = UDim2.new(0, 119, 0, 34)
R15Spinner.Font = Enum.Font.Highway
R15Spinner.FontSize = Enum.FontSize.Size24
R15Spinner.Text = "Spinner"
R15Spinner.TextSize = 20
R15Spinner.TextWrapped = true
 
ArmsOut.Name = "ArmsOut"
ArmsOut.Parent = ScrollingFrameR15
ArmsOut.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
ArmsOut.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
ArmsOut.Position = UDim2.new(0, 319, 0, 16)
ArmsOut.Size = UDim2.new(0, 119, 0, 34)
ArmsOut.Font = Enum.Font.Highway
ArmsOut.FontSize = Enum.FontSize.Size24
ArmsOut.Text = "ArmsOut"
ArmsOut.TextSize = 20
ArmsOut.TextWrapped = true
 
FloatSlash.Name = "FloatSlash"
FloatSlash.Parent = ScrollingFrameR15
FloatSlash.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
FloatSlash.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FloatSlash.Position = UDim2.new(0, 168, 0, 148)
FloatSlash.Size = UDim2.new(0, 119, 0, 34)
FloatSlash.Font = Enum.Font.Highway
FloatSlash.FontSize = Enum.FontSize.Size24
FloatSlash.Text = "FloatSlash"
FloatSlash.TextSize = 20
FloatSlash.TextWrapped = true
 
WeirdZombie.Name = "WeirdZombie"
WeirdZombie.Parent = ScrollingFrameR15
WeirdZombie.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
WeirdZombie.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
WeirdZombie.Position = UDim2.new(0, 17, 0, 148)
WeirdZombie.Size = UDim2.new(0, 119, 0, 34)
WeirdZombie.Font = Enum.Font.Highway
WeirdZombie.FontSize = Enum.FontSize.Size24
WeirdZombie.Text = "WeirdZombie"
WeirdZombie.TextSize = 20
WeirdZombie.TextWrapped = true
 
DownSlash.Name = "DownSlash"
DownSlash.Parent = ScrollingFrameR15
DownSlash.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
DownSlash.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
DownSlash.Position = UDim2.new(0, 319, 0, 148)
DownSlash.Size = UDim2.new(0, 119, 0, 34)
DownSlash.Font = Enum.Font.Highway
DownSlash.FontSize = Enum.FontSize.Size24
DownSlash.Text = "DownSlash"
DownSlash.TextSize = 20
DownSlash.TextWrapped = true
 
Pull.Name = "Pull"
Pull.Parent = ScrollingFrameR15
Pull.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
Pull.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Pull.Position = UDim2.new(0, 17, 0, 104)
Pull.Size = UDim2.new(0, 119, 0, 34)
Pull.Font = Enum.Font.Highway
Pull.FontSize = Enum.FontSize.Size24
Pull.Text = "Pull"
Pull.TextSize = 20
Pull.TextWrapped = true
 
CircleArm.Name = "CircleArm"
CircleArm.Parent = ScrollingFrameR15
CircleArm.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
CircleArm.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
CircleArm.Position = UDim2.new(0, 168, 0, 104)
CircleArm.Size = UDim2.new(0, 119, 0, 34)
CircleArm.Font = Enum.Font.Highway
CircleArm.FontSize = Enum.FontSize.Size24
CircleArm.Text = "CircleArm"
CircleArm.TextSize = 20
CircleArm.TextWrapped = true
 
Bend.Name = "Bend"
Bend.Parent = ScrollingFrameR15
Bend.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
Bend.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
Bend.Position = UDim2.new(0, 319, 0, 104)
Bend.Size = UDim2.new(0, 119, 0, 34)
Bend.Font = Enum.Font.Highway
Bend.FontSize = Enum.FontSize.Size24
Bend.Text = "Bend"
Bend.TextSize = 20
Bend.TextWrapped = true
 
RotateSlash.Name = "RotateSlash"
RotateSlash.Parent = ScrollingFrameR15
RotateSlash.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
RotateSlash.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
RotateSlash.Position = UDim2.new(0, 319, 0, 60)
RotateSlash.Size = UDim2.new(0, 119, 0, 34)
RotateSlash.Font = Enum.Font.Highway
RotateSlash.FontSize = Enum.FontSize.Size24
RotateSlash.Text = "RotateSlash"
RotateSlash.TextSize = 20
RotateSlash.TextWrapped = true
 
FlingArms.Name = "FlingArms"
FlingArms.Parent = ScrollingFrameR15
FlingArms.BackgroundColor3 = Color3.new(0.682353, 0.701961, 0.792157)
FlingArms.BorderColor3 = Color3.new(0.313726, 0.313726, 0.313726)
FlingArms.Position = UDim2.new(0, 168, 0, 60)
FlingArms.Size = UDim2.new(0, 119, 0, 34)
FlingArms.Font = Enum.Font.Highway
FlingArms.FontSize = Enum.FontSize.Size24
FlingArms.Text = "FlingArms"
FlingArms.TextSize = 20
FlingArms.TextWrapped = true
 
-- Buttons
col = Color3.new(0.886275, 0.776471, 0.368627)
loc = Color3.new(1, 0.906471, 0.568627)
rcol = Color3.new(0.682353, 0.701961, 0.792157)
rloc = Color3.new(0.882353, 0.901961, 0.992157)
 
CloseGUI.MouseButton1Click:connect(function()
MainFrame.Visible = false
SideFrame.Visible = true
SideFrame.Position = MainFrame.Position
end)
 
OpenGUI.MouseButton1Click:connect(function()
MainFrame.Visible = true
SideFrame.Visible = false
MainFrame.Position = SideFrame.Position
end)
 
if (game:GetService"Players".LocalPlayer.Character:WaitForChild("Humanoid").RigType == Enum.HumanoidRigType.R15) then
	ScrollingFrame.Visible = false
	ScrollingFrameR15.Visible = true
	CheckR.Text = "Showing R15 Animations"
else
	ScrollingFrame.Visible = true
	ScrollingFrameR15.Visible = false
	CheckR.Text = "Showing R6 Animations"
end
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://35154961"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local HeadThrowACTIVE = false
HeadThrow.MouseButton1Click:connect(function()
	HeadThrowACTIVE = not HeadThrowACTIVE
	if HeadThrowACTIVE then
		HeadThrow.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if HeadThrowACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		HeadThrow.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://121572214"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloatingHeadACTIVE = false
FloatingHead.MouseButton1Click:connect(function()
	FloatingHeadACTIVE = not FloatingHeadACTIVE
	if FloatingHeadACTIVE then
		track:Play(.1, 1, 1)
		FloatingHead.BackgroundColor3 = loc
	else
		track:Stop()
		FloatingHead.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://182724289"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local CrouchACTIVE = false
Crouch.MouseButton1Click:connect(function()
	CrouchACTIVE = not CrouchACTIVE
	if CrouchACTIVE then
		track:Play(.1, 1, 1)
		Crouch.BackgroundColor3 = loc
	else
		track:Stop()
		Crouch.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://282574440"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloorCrawlACTIVE = false
FloorCrawl.MouseButton1Click:connect(function()
	FloorCrawlACTIVE = not FloorCrawlACTIVE
	if FloorCrawlACTIVE then
		track:Play(.1, 1, 1)
		FloorCrawl.BackgroundColor3 = loc
	else
		track:Stop()
		FloorCrawl.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204328711"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local DinoWalkACTIVE = false
DinoWalk.MouseButton1Click:connect(function()
	DinoWalkACTIVE = not DinoWalkACTIVE
	if DinoWalkACTIVE then
		track:Play(.1, 1, 1)
		DinoWalk.BackgroundColor3 = loc
	else
		track:Stop()
		DinoWalk.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://429681631"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local JumpingJacksACTIVE = false
JumpingJacks.MouseButton1Click:connect(function()
	JumpingJacksACTIVE = not JumpingJacksACTIVE
	if JumpingJacksACTIVE then
		track:Play(.1, 1, 1)
		JumpingJacks.BackgroundColor3 = loc
	else
		track:Stop()
		JumpingJacks.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://35154961"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local LoopHeadACTIVE = false
LoopHead.MouseButton1Click:connect(function()
	LoopHeadACTIVE = not LoopHeadACTIVE
	if LoopHeadACTIVE then
		LoopHead.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if LoopHeadACTIVE then
				track:Play(.5, 1, 1e6)
			end
		 end
		end
	else
		track:Stop()
		LoopHead.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://184574340"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local HeroJumpACTIVE = false
HeroJump.MouseButton1Click:connect(function()
	HeroJumpACTIVE = not HeroJumpACTIVE
	if HeroJumpACTIVE then
		HeroJump.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if HeroJumpACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		HeroJump.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://181526230"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FaintACTIVE = false
Faint.MouseButton1Click:connect(function()
	FaintACTIVE = not FaintACTIVE
	if FaintACTIVE then
		track:Play(.1, 1, 1)
		Faint.BackgroundColor3 = loc
	else
		track:Stop()
		Faint.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://181525546"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloorFaintACTIVE = false
FloorFaint.MouseButton1Click:connect(function()
	FloorFaintACTIVE = not FloorFaintACTIVE
	if FloorFaintACTIVE then
		FloorFaint.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if FloorFaintACTIVE then
				track:Play(.1, 1, 2)
			end
		 end
		end
	else
		track:Stop()
		FloorFaint.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://181525546"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SuperFaintACTIVE = false
SuperFaint.MouseButton1Click:connect(function()
	SuperFaintACTIVE = not SuperFaintACTIVE
	if SuperFaintACTIVE then
		SuperFaint.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SuperFaintACTIVE then
				track:Play(.1, 0.5, 40)
			end
		 end
		end
	else
		track:Stop()
		SuperFaint.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://313762630"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local LevitateACTIVE = false
Levitate.MouseButton1Click:connect(function()
	LevitateACTIVE = not LevitateACTIVE
	if LevitateACTIVE then
		track:Play(.1, 1, 1)
		Levitate.BackgroundColor3 = loc
	else
		track:Stop()
		Levitate.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://183412246"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local DabACTIVE = false
Dab.MouseButton1Click:connect(function()
	DabACTIVE = not DabACTIVE
	if DabACTIVE then
		Dab.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if DabACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Dab.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://188632011"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SpinACTIVE = false
Spinner.MouseButton1Click:connect(function()
	SpinACTIVE = not SpinACTIVE
	if SpinACTIVE then
		Spinner.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SpinACTIVE then
				track:Play(.1, 1, 2)
			end
		 end
		end
	else
		track:Stop()
		Spinner.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://179224234"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloatSitACTIVE = false
FloatSit.MouseButton1Click:connect(function()
	FloatSitACTIVE = not FloatSitACTIVE
	if FloatSitACTIVE then
		track:Play(.1, 1, 1)
		FloatSit.BackgroundColor3 = loc
	else
		track:Stop()
		FloatSit.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://429703734"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local MovingDanceACTIVE = false
MovingDance.MouseButton1Click:connect(function()
	MovingDanceACTIVE = not MovingDanceACTIVE
	if MovingDanceACTIVE then
		MovingDance.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if MovingDanceACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		MovingDance.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://215384594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local WeirdMoveACTIVE = false
WeirdMove.MouseButton1Click:connect(function()
	WeirdMoveACTIVE = not WeirdMoveACTIVE
	if WeirdMoveACTIVE then
		track:Play(.1, 1, 1)
		WeirdMove.BackgroundColor3 = loc
	else
		track:Stop()
		WeirdMove.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://215384594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local CloneIllusionACTIVE = false
CloneIllusion.MouseButton1Click:connect(function()
	CloneIllusionACTIVE = not CloneIllusionACTIVE
	if CloneIllusionACTIVE then
		track:Play(.5, 1, 1e7)
		CloneIllusion.BackgroundColor3 = loc
	else
		track:Stop()
		CloneIllusion.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://313762630"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local GlitchLevitateACTIVE = false
GlitchLevitate.MouseButton1Click:connect(function()
	GlitchLevitateACTIVE = not GlitchLevitateACTIVE
	if GlitchLevitateACTIVE then
		track:Play(.5, 1, 1e7)
		GlitchLevitate.BackgroundColor3 = loc
	else
		track:Stop()
		GlitchLevitate.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://429730430"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SpinDanceACTIVE = false
SpinDance.MouseButton1Click:connect(function()
	SpinDanceACTIVE = not SpinDanceACTIVE
	if SpinDanceACTIVE then
		SpinDance.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SpinDanceACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		SpinDance.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://45834924"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local MoonDanceACTIVE = false
MoonDance.MouseButton1Click:connect(function()
	MoonDanceACTIVE = not MoonDanceACTIVE
	if MoonDanceACTIVE then
		MoonDance.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if MoonDanceACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		MoonDance.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204062532"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FullPunchACTIVE = false
FullPunch.MouseButton1Click:connect(function()
	FullPunchACTIVE = not FullPunchACTIVE
	if FullPunchACTIVE then
		FullPunch.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if FullPunchACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		FullPunch.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://186934910"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SpinDance2ACTIVE = false
SpinDance2.MouseButton1Click:connect(function()
	SpinDance2ACTIVE = not SpinDance2ACTIVE
	if SpinDance2ACTIVE then
		SpinDance2.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SpinDance2ACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		SpinDance2.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204292303"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local BowDownACTIVE = false
BowDown.MouseButton1Click:connect(function()
	BowDownACTIVE = not BowDownACTIVE
	if BowDownACTIVE then
		BowDown.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if BowDownACTIVE then
				track:Play(.1, 1, 3)
			end
		 end
		end
	else
		track:Stop()
		BowDown.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204295235"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SwordSlamACTIVE = false
SwordSlam.MouseButton1Click:connect(function()
	SwordSlamACTIVE = not SwordSlamACTIVE
	if SwordSlamACTIVE then
		SwordSlam.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SwordSlamACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		SwordSlam.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://204295235"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local LoopSlamACTIVE = false
LoopSlam.MouseButton1Click:connect(function()
	LoopSlamACTIVE = not LoopSlamACTIVE
	if LoopSlamACTIVE then
		LoopSlam.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if LoopSlamACTIVE then
				track:Play(.1, 1, 1e4)
			end
		 end
		end
	else
		track:Stop()
		LoopSlam.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://184574340"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local MegaInsaneACTIVE = false
MegaInsane.MouseButton1Click:connect(function()
	MegaInsaneACTIVE = not MegaInsaneACTIVE
	if MegaInsaneACTIVE then
		MegaInsane.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if MegaInsaneACTIVE then
				track:Play(.1, 0.5, 40)
			end
		 end
		end
	else
		track:Stop()
		MegaInsane.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://126753849"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SuperPunchACTIVE = false
SuperPunch.MouseButton1Click:connect(function()
	SuperPunchACTIVE = not SuperPunchACTIVE
	if SuperPunchACTIVE then
		SuperPunch.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if SuperPunchACTIVE then
				track:Play(.1, 1, 3)
			end
		 end
		end
	else
		track:Stop()
		SuperPunch.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://218504594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FullSwingACTIVE = false
FullSwing.MouseButton1Click:connect(function()
	FullSwingACTIVE = not FullSwingACTIVE
	if FullSwingACTIVE then
		FullSwing.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if FullSwingACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		FullSwing.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://259438880"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ArmTurbineACTIVE = false
ArmTurbine.MouseButton1Click:connect(function()
	ArmTurbineACTIVE = not ArmTurbineACTIVE
	if ArmTurbineACTIVE then
		track:Play(.1, 1, 1e3)
		ArmTurbine.BackgroundColor3 = loc
	else
		track:Stop()
		ArmTurbine.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://136801964"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local BarrelRollACTIVE = false
BarrelRoll.MouseButton1Click:connect(function()
	BarrelRollACTIVE = not BarrelRollACTIVE
	if BarrelRollACTIVE then
		BarrelRoll.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if BarrelRollACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		BarrelRoll.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://180612465"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ScaredACTIVE = false
Scared.MouseButton1Click:connect(function()
	ScaredACTIVE = not ScaredACTIVE
	if ScaredACTIVE then
		Scared.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if ScaredACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Scared.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://33796059"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local InsaneACTIVE = false
Insane.MouseButton1Click:connect(function()
	InsaneACTIVE = not InsaneACTIVE
	if InsaneACTIVE then
		track:Play(.1, 1, 1e8)
		Insane.BackgroundColor3 = loc
	else
		track:Stop()
		Insane.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://33169583"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ArmDetachACTIVE = false
ArmDetach.MouseButton1Click:connect(function()
	ArmDetachACTIVE = not ArmDetachACTIVE
	if ArmDetachACTIVE then
		ArmDetach.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if ArmDetachACTIVE then
				track:Play(.1, 1, 1e6)
			end
		 end
		end
	else
		track:Stop()
		ArmDetach.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://35978879"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SwordSliceACTIVE = false
SwordSlice.MouseButton1Click:connect(function()
	SwordSliceACTIVE = not SwordSliceACTIVE
	if SwordSliceACTIVE then
		track:Play(.1, 1, 1)
		SwordSlice.BackgroundColor3 = loc
	else
		track:Stop()
		SwordSlice.BackgroundColor3 = col
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://27432691"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local InsaneArmsACTIVE = false
InsaneArms.MouseButton1Click:connect(function()
	InsaneArmsACTIVE = not InsaneArmsACTIVE
	if InsaneArmsACTIVE then
		InsaneArms.BackgroundColor3 = loc
		while wait() do
		 if track.IsPlaying == false then
			if InsaneArmsACTIVE then
				track:Play(.1, 1, 1e4)
			end
		 end
		end
	else
		track:Stop()
		InsaneArms.BackgroundColor3 = col
	end
end)
-- R15
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://674871189"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local CrazySlashACTIVE = false
CrazySlash.MouseButton1Click:connect(function()
	CrazySlashACTIVE = not CrazySlashACTIVE
	if CrazySlashACTIVE then
		CrazySlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if CrazySlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		CrazySlash.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://582855105"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local OpenACTIVE = false
Open.MouseButton1Click:connect(function()
	OpenACTIVE = not OpenACTIVE
	if OpenACTIVE then
		Open.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if OpenACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Open.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://754658275"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local R15SpinnerACTIVE = false
R15Spinner.MouseButton1Click:connect(function()
	R15SpinnerACTIVE = not R15SpinnerACTIVE
	if R15SpinnerACTIVE then
		R15Spinner.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if R15SpinnerACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		R15Spinner.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://582384156"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local ArmsOutACTIVE = false
ArmsOut.MouseButton1Click:connect(function()
	ArmsOutACTIVE = not ArmsOutACTIVE
	if ArmsOutACTIVE then
		ArmsOut.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if ArmsOutACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		ArmsOut.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://717879555"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local FloatSlashACTIVE = false
FloatSlash.MouseButton1Click:connect(function()
	FloatSlashACTIVE = not FloatSlashACTIVE
	if FloatSlashACTIVE then
		FloatSlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if FloatSlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		FloatSlash.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://708553116"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
WeirdZombieACTIVE = false
WeirdZombie.MouseButton1Click:connect(function()
	WeirdZombieACTIVE = not WeirdZombieACTIVE
	if WeirdZombieACTIVE then
		WeirdZombie.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if WeirdZombieACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		WeirdZombie.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://746398327"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
DownSlashACTIVE = false
DownSlash.MouseButton1Click:connect(function()
	DownSlashACTIVE = not DownSlashACTIVE
	if DownSlashACTIVE then
		DownSlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if DownSlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		DownSlash.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://675025795"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
PullACTIVE = false
Pull.MouseButton1Click:connect(function()
	PullACTIVE = not PullACTIVE
	if PullACTIVE then
		Pull.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if PullACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Pull.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://698251653"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
CircleArmACTIVE = false
CircleArm.MouseButton1Click:connect(function()
	CircleArmACTIVE = not CircleArmACTIVE
	if CircleArmACTIVE then
		CircleArm.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if CircleArmACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		CircleArm.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://696096087"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
BendACTIVE = false
Bend.MouseButton1Click:connect(function()
	BendACTIVE = not BendACTIVE
	if BendACTIVE then
		Bend.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if BendACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		Bend.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://675025570"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
RotateSlashACTIVE = false
RotateSlash.MouseButton1Click:connect(function()
	RotateSlashACTIVE = not RotateSlashACTIVE
	if RotateSlashACTIVE then
		RotateSlash.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if RotateSlashACTIVE then
				track:Play(.1, 1, 1)
			end
		 end
		end
	else
		track:Stop()
		RotateSlash.BackgroundColor3 = rcol
	end
end)
 
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://754656200"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
FlingArmsACTIVE = false
FlingArms.MouseButton1Click:connect(function()
	FlingArmsACTIVE = not FlingArmsACTIVE
	if FlingArmsACTIVE then
		FlingArms.BackgroundColor3 = rloc
		while wait() do
		 if track.IsPlaying == false then
			if FlingArmsACTIVE then
				track:Play(.1, 1, 10)
			end
		 end
		end
	else
		track:Stop()
		FlingArms.BackgroundColor3 = rcol
	end
end)
 
-- Finished update!
end,
})

local Button = AnimationsTab:CreateButton({
    Name = "Rojo VFX + animations",
    Callback = function()
        local canRojo = true
        if canRojo == true then
        canRojo = false
        game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Charge")
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Rojo.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
        wait(6)
        game:GetService("ReplicatedStorage"):WaitForChild("RojoAbility"):FireServer("Release", {game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame})
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Rojo.AnimationRecoil, game.Players.LocalPlayer.Character.Humanoid):Play()
        wait(1)
        canRojo = true
              end
    end,
 })

 local Button = AnimationsTab:CreateButton({
    Name = "Retro Ban Hammer (with animations)",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Retro.Animations["Ban Hammer"], game.Players.LocalPlayer.Character.Humanoid):Play()
        wait(0.9)
        game:GetService("ReplicatedStorage").RetroAbility:FireServer("Ban Hammer")
    end,
 })

 local Button = AnimationsTab:CreateButton({
    Name = "Retro Rocket Launcher (with animations)",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Retro.Animations["Rocket Launcher"], game.Players.LocalPlayer.Character.Humanoid):Play()
        wait(0.7)
        game:GetService("ReplicatedStorage").RetroAbility:FireServer("Rocket Launcher")
    end,
 })

 local Button = AnimationsTab:CreateButton({
    Name = "Retro Bomb (with animations)",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Retro.Animations.Bomb, game.Players.LocalPlayer.Character.Humanoid):Play()
        wait(0.4)
        game:GetService("ReplicatedStorage").RetroAbility:FireServer("Bomb")
    end,
 })

 local Button = AnimationsTab:CreateButton({
    Name = "EdgeLord Animation",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.TheForceAnim, game.Players.LocalPlayer.Character.Humanoid):Play()
    end,
 })

 local Button = AnimationsTab:CreateButton({
    Name = "Thor Animation",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Thor.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
    end,
 })

 local Button = AnimationsTab:CreateButton({
    Name = "Rob Animation",
    Callback = function()
    game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.summonPortal, game.Players.LocalPlayer.Character.Humanoid):Play()
    end,
 })

 local Button = AnimationsTab:CreateButton({
    Name = "Rojo Animation",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Rojo.Animation, game.Players.LocalPlayer.Character.Humanoid):Play()
    end,
 })

 local Button = AnimationsTab:CreateButton({
    Name = "Revolver Animation",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(game.ReplicatedStorage.Assets.Hitman.RevolverAnim, game.Players.LocalPlayer.Character.Humanoid):Play()
    end,
 })

local Section = AnimationsTab:CreateSection("Client Sided")

local Button = AnimationsTab:CreateButton({
   Name = "Bypasser gui (creds: G00lxplioter)",
   Callback = function()
   loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
   end,
})

local Button = AnimationsTab:CreateButton({
   Name = "Spiderman",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/KirbyPercs/LightsoulsV2/main/Spiderman%20gui"))()
   end,
})

local MiscTab = Window:CreateTab("Misc", nil) -- Title, Image
local Section = MiscTab:CreateSection("misc")

local Toggle = MiscTab:CreateToggle({
   Name = "Spam abilitys",
   CurrentValue = false,
   Flag = "Toggle74", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   On = Value
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" do
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Fort" do
game:GetService("ReplicatedStorage").Fortlol:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Home Run" do
game:GetService("ReplicatedStorage").HomeRun:FireServer({["start"] = true})
game:GetService("ReplicatedStorage").HomeRun:FireServer({["finished"] = true})
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "🗿" do
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(CFrame.new(math.random(-70, 63), -5.72293854, math.random(-90, 93), 0.151493087, -8.89114702e-08, 0.988458335, 1.45089563e-09, 1, 8.97272727e-08, -0.988458335, -1.21589121e-08, 0.151493087))
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shukuchi" do
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil
Target = RandomPlayer
game:GetService("ReplicatedStorage").SM:FireServer(Target)
wait(0.01)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Slicer" do
game:GetService("ReplicatedStorage").Slicer:FireServer("sword")
game:GetService("ReplicatedStorage").Slicer:FireServer("slash", game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, Vector3.new())
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Rob" do
game:GetService("ReplicatedStorage"):WaitForChild("rob"):FireServer()
wait(15)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Kraken" do
game:GetService("ReplicatedStorage").KrakenArm:FireServer()
wait(5)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Psycho" do
game:GetService("ReplicatedStorage").Psychokinesis:InvokeServer({["grabEnabled"] = true})
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Killstreak" and game.Players.LocalPlayer.PlayerGui:FindFirstChild("Kills") and game.Players.LocalPlayer.PlayerGui.Kills.Frame.TextLabel.Text >= "75" do
game:GetService("ReplicatedStorage").KSABILI:FireServer()
wait(6.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Bus" do
game:GetService("ReplicatedStorage").busmoment:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Mitten" do
game:GetService("ReplicatedStorage").MittenA:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Fort" do
game:GetService("ReplicatedStorage").Fortlol:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Defense" do
game:GetService("ReplicatedStorage").Barrier:FireServer()
wait(0.25)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Bomb" do
game:GetService("ReplicatedStorage").BombThrow:FireServer()
wait(2.5)
game:GetService("ReplicatedStorage").BombThrow:FireServer()
wait(4.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" do
game:GetService("ReplicatedStorage").Duplicate:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Pusher" do
game:GetService("ReplicatedStorage").PusherWall:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Jet" do
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil
Target = RandomPlayer
game:GetService("ReplicatedStorage").AirStrike:FireServer(Target.Character)
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Tableflip" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shield" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Rocky" do
game:GetService("ReplicatedStorage").RockyShoot:FireServer()
wait(6.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "God's Hand" do
game:GetService("ReplicatedStorage").TimestopJump:FireServer()
game:GetService("ReplicatedStorage").Timestopchoir:FireServer()
game:GetService("ReplicatedStorage").Timestop:FireServer()
wait(50.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Za Hando" do
game:GetService("ReplicatedStorage").Erase:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Baller" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(4.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Glitch" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
wait(4.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Stun" do
game.ReplicatedStorage.StunR:FireServer(game.Players.LocalPlayer.Character.Stun)
wait(10.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "STOP" do
game:GetService("ReplicatedStorage").STOP:FireServer(true)
wait(4.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Track" do
local players = game.Players:GetChildren()
local RandomPlayer = players[math.random(1, #players)]
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer
repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil
Target = RandomPlayer
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(Target.Character)
wait(10.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Mail" do
game:GetService("ReplicatedStorage").MailSend:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Shard" do
game:GetService("ReplicatedStorage").Shards:FireServer()
wait(4.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Swapper" do
game:GetService("ReplicatedStorage").SLOC:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Bubble" do
game:GetService("ReplicatedStorage").BubbleThrow:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Slapple" do
game:GetService("ReplicatedStorage").funnyTree:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Kinetic" do
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
for i = 1,100 do
game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
wait(0.05)
end
wait(1.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
game:GetService("ReplicatedStorage").KineticExpl:FireServer(game.Players.LocalPlayer.Character.Kinetic, game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(2.65)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Dominance" do
game:GetService("ReplicatedStorage").DominanceAc:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "[REDACTED]" do
game:GetService("ReplicatedStorage").Well:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Duelist" do
game:GetService("ReplicatedStorage").DuelistAbility:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Engineer" do
game:GetService("ReplicatedStorage").Sentry:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" do
game:GetService("ReplicatedStorage").lbrick:FireServer()
wait(1.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Trap" do
game:GetService("ReplicatedStorage").funnyhilariousbeartrap:FireServer()
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "woah" do
game:GetService("ReplicatedStorage").VineThud:FireServer()
wait(5.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Ping Pong" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Recall" do
game:GetService("ReplicatedStorage").Recall:InvokeServer(game.Players.LocalPlayer.Character.Recall)
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" do
game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Charge" do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(game.Players.LocalPlayer.Character.Charge)
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Coil" do
game:GetService("ReplicatedStorage"):WaitForChild("GeneralAbility"):FireServer(game.Players.LocalPlayer.Character.Coil)
wait(3.1)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Diamond" do
game:GetService("ReplicatedStorage"):WaitForChild("Rockmode"):FireServer()
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Excavator" do
game:GetService("ReplicatedStorage"):WaitForChild("Excavator"):InvokeServer()
game:GetService("ReplicatedStorage"):WaitForChild("ExcavatorCancel"):FireServer()
wait(7.3)
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Thor" do
game:GetService("ReplicatedStorage").ThorAbility:FireServer(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
task.wait()
end
while On and game.Players.LocalPlayer.leaderstats.Glove.Value == "Quake" do
game:GetService("ReplicatedStorage"):WaitForChild("QuakeQuake"):FireServer({["start"] = true})
task.wait()
end
   end,
})

local Button = MiscTab:CreateButton({
   Name = "Give Reaper 20 kills",
   Callback = function()
   for i = 1, 20 do
        game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(x,false)
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v.Name == "DeathMark" then
                    game.ReplicatedStorage.ReaperGone:FireServer(v)
                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 
                    end 
                end
   end,
})

local Toggle = MiscTab:CreateToggle({
    Name = "Max kinetic (5 seconds)",
    CurrentValue = false,
    Flag = "Kinetic", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.kineticActive = Value
        maxKinetic()
    end,
 })

local Toggle = MiscTab:CreateToggle({
   Name = "Auto spam Tycoon",
   CurrentValue = false,
   Flag = "Toggle75", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoTycoon = Value
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "End" and v.ClassName == "Part" then
            v.Size = Vector3.new(28, 0.3, 4)
        end
    end
while AutoTycoon do
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Click" and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
    task.wait()
end
   end,
})

local Toggle = MiscTab:CreateToggle({
   Name = "Fling (can kill spectators)",
   CurrentValue = false,
   Flag = "Toggle76", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   getgenv().demisethebest = Value

game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().demisethebest == true then 
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (2^16)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end 
end)
   end,
})

 local Toggle = MiscTab:CreateToggle({
    Name = "Auto Collect Slapples",
    CurrentValue = false,
    Flag = "Toggle100", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    SlappleFarm = Value
 while SlappleFarm do
 for i, v in ipairs(workspace.Arena.island5.Slapples:GetDescendants()) do
                 if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("entered") and v.Name == "Glove" and v:FindFirstChildWhichIsA("TouchTransmitter") then
                     firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
         firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
                 end
             end
 task.wait()
 end
    end,
 })

local Button = MiscTab:CreateButton({
    Name = "Tp Safe Spot",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,40,0)
    end,
 })

local Button = MiscTab:CreateButton({
    Name = "Elude Anti tp (1 life)",
    Callback = function()
local players = game:GetService('Players')
local lplr = players.LocalPlayer
local lastCF, stop, heartbeatConnection
local function start()
    heartbeatConnection = game:GetService('RunService').Heartbeat:Connect(function()
        if stop then
            return 
        end 
        lastCF = lplr.Character:FindFirstChildOfClass('Humanoid').RootPart.CFrame
    end)
    lplr.Character:FindFirstChildOfClass('Humanoid').RootPart:GetPropertyChangedSignal('CFrame'):Connect(function()
        stop = true
        lplr.Character:FindFirstChildOfClass('Humanoid').RootPart.CFrame = lastCF
        game:GetService('RunService').Heartbeat:Wait()
        stop = false
    end)    
    lplr.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
        heartbeatConnection:Disconnect()
    end)
end
 
lplr.CharacterAdded:Connect(function(character)
    repeat 
        game:GetService('RunService').Heartbeat:Wait() 
    until character:FindFirstChildOfClass('Humanoid')
    repeat 
        game:GetService('RunService').Heartbeat:Wait() 
    until character:FindFirstChildOfClass('Humanoid').RootPart
    start()
end)
 
lplr.CharacterRemoving:Connect(function()
    heartbeatConnection:Disconnect()
end)
 
start()
    end,
 })

 local Button = MiscTab:CreateButton({
    Name = "load retro obby ",
    Callback = function()
    game.ReplicatedStorage.Assets.Retro.Parent = game.Workspace
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Info",
        Text = "This does not help you get retro, this is only good for helping people get retro.",
        Duration = 5
    })
end,
 })

local Input = MiscTab:CreateInput({
    Name = "Make Player Use Rojo Spam",
    PlaceholderText = "Username",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        if Text == "Me" or Text == "me" or Text == "Username" or Text == "" then
            Person = game.Players.LocalPlayer.Name
            else
            Person = Text
         end
    end,
})
        Person = game.Players.LocalPlayer.Name

local Button = MiscTab:CreateButton({
    Name = "Cheeky Skin (Use with godmode & noclip + 3k slaps)",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character
        if character.isInArena.Value == false then
        local lobby = game.Workspace.Lobby
        local cheekyG = lobby.Cheeky
        fireclickdetector(cheekyG.ClickDetector)
        game:GetService("ReplicatedStorage").Spherify:FireServer()
        end
    end,
 })

 local Input = MiscTab:CreateInput({
	Name = "Change Slap Count (client Sided)",
	PlaceholderText = "Input Slaps",
	RemoveTextAfterFocusLost = true,
	Callback = function(Text)
	game:GetService("Players").LocalPlayer.PlayerGui.gui.slapcount.Slaps.Text = Text
    end,
})

local Toggle = MiscTab:CreateToggle({
   Name = "Auto Enter Arena",
   CurrentValue = false,
   Flag = "Toggle77", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   AutoEnterArena = Value
while AutoEnterArena do
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
    end
task.wait()
end
   end,
})

local Button = MiscTab:CreateButton({
   Name = "Slapple Farm (copies the script, put on autoexe)",
   Callback = function()
   setclipboard("loadstring(game:HttpGet('https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Farm'))()")
   end,
})

local Button = MiscTab:CreateButton({
   Name = "Destroy Tycoon",
   Callback = function()
   for i = 1, 110 do
 for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Destruct" and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
task.wait()
end
   end,
})

local Toggle = MiscTab:CreateToggle({
    Name = "Spam Zombie Sound",
    CurrentValue = false,
    Flag = "Zombie", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    ZombieSoundSpam = Value
    while ZombieSoundSpam do
    game:GetService("ReplicatedStorage").b:FireServer("ReplicateSound_Zombie")
    task.wait()
    end
    end,
 })

local Toggle = MiscTab:CreateToggle({
   Name = "Spam error Sound",
   CurrentValue = false,
   Flag = "ERROR", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   ErrorSoundSpam = Value
while ErrorSoundSpam do
game.ReplicatedStorage.ErrorDeath:FireServer()
task.wait()
end
   end,
})



local Button = MiscTab:CreateButton({
   Name = "Infinite Invisibility (ghost needed)",
   Callback = function()
   if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil and game.Players.LocalPlayer.leaderstats.Slaps.Value >= 666 then
OGlove = game.Players.LocalPlayer.leaderstats.Glove.Value
fireclickdetector(workspace.Lobby.Ghost.ClickDetector)
game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
fireclickdetector(workspace.Lobby[OGlove].ClickDetector)
else
game.StarterGui:SetCore("SendNotification", {Title = "Error",Duration = 5,Text = "You need to be in lobby and have 666+ slaps"})
end
   end,
})

local Toggle = MiscTab:CreateToggle({
   Name = "Infinite Reverse",
   CurrentValue = false,
   Flag = "Toggle91", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   InfReverse = Value
while InfReverse do
game:GetService("ReplicatedStorage").ReverseAbility:FireServer()
wait(6)
end
   end,
})

local Button = MiscTab:CreateButton({
   Name = "Infinite Golden",
   Callback = function()
   game:GetService("ReplicatedStorage").Goldify:FireServer(true)
   end,
})

local Toggle = MiscTab:CreateToggle({
   Name = "Rainbow Character (needs golden)",
   CurrentValue = false,
   Flag = "Toggle92", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   Rainbow = Value
while Rainbow do
for i = 0,1,0.001*25 do
game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(Color3.fromHSV(i,1,1)))
task.wait()
end
end
   end,
})

local BadgesTab = Window:CreateTab("Badges", nil) -- Title, Image
local Section = BadgesTab:CreateSection("badges")

local Button = BadgesTab:CreateButton({
   Name = "Get Elude",
   Callback = function()
   local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
        game:GetService("RunService").RenderStepped:Connect(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-502.336, 14.228, -179.597)
        end)
game:GetService("TeleportService"):Teleport(6403373529)
    ]])
end
game:GetService("TeleportService"):Teleport(11828384869)
   end,
})

local Button = BadgesTab:CreateButton({
   Name = "Get Chain (1k slaps needed)",
   Callback = function()
   if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 1000 then
local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport
if teleportFunc then
    teleportFunc([[
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end
        repeat wait() until game.Players.LocalPlayer
 repeat wait() until game.Workspace:FindFirstChild("Map"):FindFirstChild("CodeBrick")
if game.Workspace.Map.CodeBrick.SurfaceGui:FindFirstChild("IMGTemplate") then
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "1st"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "2nd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "3rd"
game.Workspace.Map.CodeBrick.SurfaceGui.IMGTemplate.Name = "4th"
end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "1st" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    first = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    first = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    first = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    first = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    first = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    first = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    first = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    first = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "2nd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    second = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    second = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    second = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    second = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    second = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    second = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    second = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    second = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "3rd" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    third = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    third = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    third = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    third = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    third = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    third = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    third = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    third = "2"
                end
                    end
                end
for i,v in pairs(game.Workspace.Map.CodeBrick.SurfaceGui:GetChildren()) do
                    if v.Name == "4th" then
                        if v.Image == "http://www.roblox.com/asset/?id=9648769161" then
                    fourth = "4"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648765536" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648762863" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648759883" then
                    fourth = "9"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648755440" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648752438" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648749145" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648745618" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648742013" then
                    fourth = "7"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648738553" then
                    fourth = "8"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648734698" then
                    fourth = "2"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648730082" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648723237" then
                    fourth = "3"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648718450" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648715920" then
                    fourth = "6"
                elseif v.Image == "http://www.roblox.com/asset/?id=9648712563" then
                    fourth = "2"
                end
                    end
                end
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Reset.ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[first].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[second].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[third].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons[fourth].ClickDetector)
wait(0.25)
fireclickdetector(game.Workspace.Map.OriginOffice.Door.Keypad.Buttons.Enter.ClickDetector)
game:GetService("TeleportService"):Teleport(6403373529)
    ]])
end
game:GetService("TeleportService"):Teleport(9431156611)
end
   end,
})

local Button = BadgesTab:CreateButton({
    Name = "Get Trap (~15 mins)",
    Callback = function()
        if game.Players.LocalPlayer.leaderstats.Glove.Value == "Brick" then
            for i = 1, 200 do
            game:GetService("ReplicatedStorage").lbrick:FireServer()
            game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
            wait(Random.new():NextNumber(1.1,1.4))
            game:GetService("ReplicatedStorage").lbrick:FireServer()
            game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
            wait(Random.new():NextNumber(1.1,1.4))
            game:GetService("ReplicatedStorage").lbrick:FireServer()
            game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
            wait(Random.new():NextNumber(1.1,1.4))
            game:GetService("ReplicatedStorage").lbrick:FireServer()
            game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text = game.Players.LocalPlayer.PlayerGui.BRICKCOUNT.ImageLabel.TextLabel.Text + 1;
            wait(Random.new():NextNumber(1.1,1.4))
            game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,x)
            wait(Random.new():NextNumber(1.1,1.4))
            end
            else
            game.StarterGui:SetCore("SendNotification", {Title = "Error",Duration = 5,Text = "You need brick glove equipped"})
            end
    end,
 })

 local Toggle = BadgesTab:CreateToggle({
    Name = "Get Trap (~30 mins)",
    CurrentValue = false,
    Flag = "TRAP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    _G.loopPlaceBrick = Value
	quickBrick()
    end,
 })

 local Toggle = BadgesTab:CreateToggle({
    Name = "Bob Farm",
    CurrentValue = false,
    Flag = "BOB", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        BobFarm = Value
        if game.Players.LocalPlayer.leaderstats.Glove.Value == "Replica" then
        while BobFarm do
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 0)
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1, 1)
        repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
        game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,x)
        game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
        wait(3.5)
        end
        elseif Value == true then
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Bob Farm Error",
                Text = "Replica is not equipped",
                Duration = 5
            })
            wait(0.05)
        end
    end,
 })

 local Toggle = BadgesTab:CreateToggle({
    Name = "Bob FarmV2",
    CurrentValue = false,
    Flag = "BOB2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    _G.bobFarmCheck = Value
    bobFarm()
    end,
 })

 local Button = BadgesTab:CreateButton({
    Name = "Get Kinetic",
    Callback = function()
        if game.Players.LocalPlayer.leaderstats.Glove.Value == "Stun" then
            OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            for i = 1,100 do
            game.ReplicatedStorage.SelfKnockback:FireServer({["Force"] = 0,["Direction"] = Vector3.new(0,0.01,0)})
            wait(0.05)
            end
            wait(1.5)
            repeat
            local players = game.Players:GetChildren()
            local RandomPlayer = players[math.random(1, #players)]
            repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer ~= game.Players.LocalPlayer
            repeat RandomPlayer = players[math.random(1, #players)] until RandomPlayer.Character:FindFirstChild("entered") and RandomPlayer.Character:FindFirstChild("rock") == nil and RandomPlayer.Character.Head:FindFirstChild("UnoReverseCard") == nil
            Target = RandomPlayer
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0,-20,0)
            wait(0.25)
            game.ReplicatedStorage.StunR:FireServer(game.Players.LocalPlayer.Character.Stun)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
            wait(9.9)
            until game.Players.LocalPlayer.Character:FindFirstChild("EMPStunBadgeCounter") and game.Players.LocalPlayer.Character.EMPStunBadgeCounter.Value >= 50
            else
            game.StarterGui:SetCore("SendNotification", {Title = "Error",Duration = 5,Text = "You don't have Stun equipped"})
            end
    end,
 })

 local Button = BadgesTab:CreateButton({
    Name = "Get retro (only in obby)",
    Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.FinishDoor_Retro.Part.CFrame    
end,
 })

 local Button = BadgesTab:CreateButton({
    Name = "Voodoo farm (1 hour)",
    Callback = function()
        if game.Players.LocalPlayer.leaderstats.Glove.Value == "Ghost" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,40,0)
            game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()
            else
        game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Glove Required",
                Text = "You dont have Ghost equipped",
                Duration = 5
            })
            end
    end,
 })

 local Button = BadgesTab:CreateButton({
    Name = "Fish Farm (1 hour)",
    Callback = function()
    if game.Players.LocalPlayer.leaderstats.Glove.Value == "ZZZZZZZ" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0,40,0)
    game.ReplicatedStorage.ZZZZZZZSleep:FireServer()
    else
    game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Glove Required",
            Text = "You dont have ZZZZZZZ equipped",
            Duration = 5
        })
        end
    end,
 })

local Button = BadgesTab:CreateButton({
    Name = "Get Tycoon",
    Callback = function()
    game.Players.LocalPlayer.Character.Torso.Anchored = true
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character["Left Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Left Leg"]:Destroy()
    game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
    game.Players.LocalPlayer.Character["Right Leg"]:Destroy()
    game.Players.LocalPlayer.Character.Torso.Anchored = false
    wait(0.5)
        while wait() do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Arena.Plate.CFrame* CFrame.new(0,-1.0,0) *CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
        end
    wait(625)
    end,
 })

 local Button = BadgesTab:CreateButton({
    Name = "Get [REDACTED]",
    Callback = function()
        if game.Players.LocalPlayer.leaderstats.Slaps.Value >= 5000 then
            Door = 0
            for i = 1, 10 do
            Door = Door + 1
                    if game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850) then
                    else
                    firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door], 0)
            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.PocketDimension.Doors[Door], 1)
            wait(3.75)
            end
            end
            else
            game.StarterGui:SetCore("SendNotification", {Title = "Error",Duration = 5,Text = "5k slaps needed"})
                        end
    end,
 })

 local Toggle = BadgesTab:CreateToggle({
    Name = "Jet orb Collect",
    CurrentValue = false,
    Flag = "Jet", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Jetfarm = Value
        while Jetfarm do
        for i,v in pairs(game.Workspace:GetChildren()) do
                            if v.Name == "JetOrb" and v:FindFirstChild("TouchInterest") then
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                            end
                        end
        task.wait()
        end
    end,
 })

 local Toggle = BadgesTab:CreateToggle({
    Name = "Phase Orb Collect",
    CurrentValue = false,
    Flag = "PhaseV2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Phasefarm = Value
        while Phasefarm do
        for i,v in pairs(game.Workspace:GetChildren()) do
                            if v.Name == "PhaseOrb" and v:FindFirstChild("TouchInterest") then
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 0)
        firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), v, 1)
                            end
                        end
        task.wait()
        end
    end,
 })

 local Button = BadgesTab:CreateButton({
    Name = "Get Slapple Glove (creds spOx)",
    Callback = function()
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/sp0zx/SlapBattles/main/SlappleGloveFarm.lua"))()
    end,
 })

local Button = Tab:CreateButton({
   Name = "Get Null (NULL ZONE ONLY)",
   Callback = function()
   fireclickdetector(workspace.Model.Handle.ClickDetector)
   end,
})

local Button = Tab:CreateButton({
   Name = "Get Tinkerer (NULL ZONE ONLY)",
   Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4833.31, -214, 800.529)
    wait(2)
    fireclickdetector(workspace:GetChildren()[13].Handle.ClickDetector)
   end,
})

local Paragraph = BadgesTab:CreateParagraph({Title = "Get Pan", Content = "Whenever This script is executed it automatically collects any plushies so if you are in null zone, elude zone or in normal slap battles execute the script and it should automatically collects the plushies"})

local PremiumTab = Window:CreateTab("Premium", 4483362458) -- Title, Image


local Button = PremiumTab:CreateButton({
   Name = "Load premuim",
   Callback = function()
   do
    game:GetService("Players").LocalPlayer:Kick("Player not whitelisted")
    return
end

--// Exploit Check \\--
if #{hookmetamethod, getnamecallmethod, checkcaller} ~= 3 then
    game:Shutdown()
    return
end

--// Exploit Fix \\--
if not pcall(function() return syn.protect_gui end) then
    syn = {}
    syn.protect_gui = function(A_1)
        A_1.Parent = CoreGui
    end
end

--// Services \\--
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

--// Variables \\--
local Player = Players.LocalPlayer
local Inventory = Player:WaitForChild("Inventory")
local BlockFolder = ReplicatedStorage:WaitForChild("Blocks")
local Blocks = {}

--// Get Blocks \\--
for _, A_1 in next, BlockFolder:GetChildren() do
    table.insert(Blocks, (function()
        local Fake = Instance.new("NumberValue")
        Fake.Name = A_1.Name
        Fake.Value = 1
        return Fake
    end)())
end

--// UI Library \\--
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Just-Egg-Salad/roblox-scripts/main/uwuware'))()
local Window = Library:CreateWindow("Creative by Ezpi#0474")
Window:AddLabel({
    text = "discord.gg/nxHQEk2kEt"
})
Window:AddToggle({
    text = "Inf. Blocks",
    flag = "Inf"
})
Window:AddToggle({
    text = "All Blocks",
    callback = function(A_1)
        if A_1 == true then
            table.foreach(Blocks, function(A_1, A_2)
                A_2.Parent = Inventory
            end)
        else
            table.foreach(Blocks, function(A_1, A_2)
                A_2.Parent = nil
            end)
        end
    end
})
Window:AddToggle({
    text = "Faster Break",
    flag = "Break"
})
Library:Init()

--// Block Spoof \\--
local OldNameCall = nil
OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
    -- Variables
    local Args = {...}
    local Info = Args[2]
    local NamecallMethod = getnamecallmethod()

    -- Fake
    if not checkcaller() and NamecallMethod == "FireServer" and Self.Name == "PlaceBlockE" and typeof(Info) == "table" and (Info[3].ClassName == "NumberValue" or Library.flags.Inf) then
        Info[3] = {Name=Info[1];Value=2;Parent=Inventory}
    elseif not checkcaller() and NamecallMethod == "FireServer" and Self.Name == "BreakBlockE" and Library.flags.Break == true then
        for _ = 1, 5 do
            OldNameCall(Self, unpack(Args))
        end
    end
    return OldNameCall(Self, unpack(Args))
end)
	end,
})