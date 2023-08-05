
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/slf0Dev/Ocerium_Project/main/Library.lua"))()

Window = Library.Main("LightSouls ✟","V") -- change "LeftAlt" to key that you want will hide gui


--//tab
local Tab = Window.NewTab("Locks")


--// Button
local Button = Section.NewButton("Lock",function()
local Settings = {
    AimLock = {
        Enabled = true,
        Aimlockkey = "q",
        Prediction = 0.130340,
        Aimpart = 'HumanoidRootPart',
        Notifications = true
    },
    Settings = {
        Thickness = 3.5,
        Transparency = 1,
        Color = Color3.fromRGB(106, 13, 173),
        FOV = false
    }
 
}
 
local CurrentCamera = game:GetService("Workspace").CurrentCamera
local Inset = game:GetService("GuiService"):GetGuiInset().Y
local RunService = game:GetService("RunService")
 
local Mouse = game.Players.LocalPlayer:GetMouse()
local LocalPlayer = game.Players.LocalPlayer
 
local Line = Drawing.new("Line")
local Circle = Drawing.new("Circle")
 
local Plr = game.Players.LocalPlayer
 
Mouse.KeyDown:Connect(function(KeyPressed)
    if KeyPressed == (Settings.AimLock.Aimlockkey) then
        if Settings.AimLock.Enabled == true then
            Settings.AimLock.Enabled = false
            if Settings.AimLock.Notifications == true then
                Plr = FindClosestPlayer()
                game.StarterGui:SetCore("SendNotification", {
                    Title = "p",
                    Text = "Unlocked"
                })
            end
        else
            Plr = FindClosestPlayer()
            Settings.AimLock.Enabled = true
            if Settings.AimLock.Notifications == true then
                game.StarterGui:SetCore("SendNotification", {
                    Title = "p",
                    Text = "Locked On :  " .. tostring(Plr.Character.Humanoid.DisplayName)
                })
            end
        end
    end
end)
 
function FindClosestPlayer()
    local ClosestDistance, ClosestPlayer = math.huge, nil;
    for _, Player in next, game:GetService("Players"):GetPlayers() do
        if Player ~= LocalPlayer then
            local Character = Player.Character
            if Character and Character.Humanoid.Health > 1 then 
                local Position, IsVisibleOnViewPort = CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart
                                                                                             .Position)
                if IsVisibleOnViewPort then
                    local Distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude
                    if Distance < ClosestDistance then
                        ClosestPlayer = Player
                        ClosestDistance = Distance
                    end
                end
            end
        end
    end
    return ClosestPlayer, ClosestDistance
end
 
RunService.Heartbeat:connect(function()
    if Settings.AimLock.Enabled == true then
        local Vector = CurrentCamera:WorldToViewportPoint(Plr.Character[Settings.AimLock.Aimpart].Position +
                                                              (Plr.Character[Settings.AimLock.Aimpart].Velocity *
                                                              Settings.AimLock.Prediction))
        Line.Color = Settings.Settings.Color
        Line.Transparency = Settings.Settings .Transparency
        Line.Thickness = Settings.Settings .Thickness
        Line.From = Vector2.new(Mouse.X, Mouse.Y + Inset)
        Line.To = Vector2.new(Vector.X, Vector.Y)
        Line.Visible = true
        Circle.Position = Vector2.new(Mouse.X, Mouse.Y + Inset)
        Circle.Visible = Settings.Settings.FOV
        Circle.Thickness = 1.5
        Circle.Thickness = 2
        Circle.Radius = 60
        Circle.Color = Settings.Settings.Color
    elseif Settings.AimLock.FOV == true then
        Circle.Visible = true
    else
        Circle.Visible = false
        Line.Visible = false
    end
end)
 
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if Settings.AimLock.Enabled and getnamecallmethod() == "FireServer" and args[2] == "MousePos" then
        args[3] = Plr.Character[Settings.AimLock.Aimpart].Position +
                      (Plr.Character[Settings.AimLock.Aimpart].Velocity * Settings.AimLock.Prediction)
 
        return old(unpack(args))
    end
    return old(...)
end)
end)


--// Button
local Button = Section.NewButton("Anti Lock",function()
loadstring(game:HttpGet('https://github.com/reallykaren/linkup/raw/main/linkv2'))()
end)


--// Button
local Button = Section.NewButton("Aim viewer",function()
 game.StarterGui:SetCore("SendNotification", {
     Title = 'KirbyX Scripts';
     Text = 'Join Discord';
     Icon = 'nil';
     Duration = "2";
 })
_G.enable = false
_G.color = Color3.fromRGB(0,0,205)
_G.toggle_keybind = "p"
_G.swith_nigga = 't' 
_G.method = "MousePos"
 
 
 
 
 
local rs = game:GetService("RunService")
local localPlayer = game.Players.LocalPlayer
local mouse = localPlayer:GetMouse()
local target;
 
 
 
function getgun()
 for i,v in pairs(target.Character:GetChildren()) do
     if v and (v:FindFirstChild('Default') or v:FindFirstChild('Handle') )then
         return v
     end
 end
end
 
function sendnotifi(message)
 
 
 game.StarterGui:SetCore("SendNotification", {
     Title =  'KirbyXScripts';
     Text = message;
     Icon = 'nil';
     Duration = "2";
 })
 
 end
 
 
function get_closet()
 local a = math.huge
 local b;
 
 
 
 for i, v in pairs(game.Players:GetPlayers()) do
     if v ~= localPlayer and v.Character and v.Character:FindFirstChild("Head") and  v.Character:FindFirstChild("HumanoidRootPart")  then
         local c = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
         local d = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(c.X, c.Y)).Magnitude
 
         if a > d then
             b = v
             a = d
         end
     end
 end
 
 return b
end
 
 
mouse.KeyDown:Connect(function(z)
 if z == _G.toggle_keybind then
     if _G.enable == false then
         _G.enable = true
         sendnotifi("Aim-Viewer Enabled")
     elseif _G.enable == true then
         _G.enable = false 
         sendnotifi("Aim-Viewer Disabled")
     end
 end
end)
 
mouse.KeyDown:Connect(function(z)
 if z == _G.swith_nigga then
     target = get_closet()
     sendnotifi("targeting: "..tostring(target.DisplayName))
 end
end)
 
local a=Instance.new("Beam")a.Segments=1;a.Width0=0.2;a.Width1=0.2;a.Color=ColorSequence.new(_G.color)a.FaceCamera=true;local b=Instance.new("Attachment")local c=Instance.new("Attachment")a.Attachment0=b;a.Attachment1=c;a.Parent=workspace.Terrain;b.Parent=workspace.Terrain;c.Parent=workspace.Terrain
 
task.spawn(function()
 rs.RenderStepped:Connect(function()
 
 local character = localPlayer.Character
     if not character then
     a.Enabled = false
     return
 end
 
 
 
 
 
 
 if _G.enable  and getgun() and target.Character:FindFirstChild("BodyEffects") and target.Character:FindFirstChild("Head")  then
     a.Enabled = true
     b.Position =  target.Character:FindFirstChild("Head").Position
     c.Position = target.Character.BodyEffects[_G.method].Value ---edit this if some random ass game got some weird ass other name :palingface
 else
     a.Enabled = false
 end
 
 end)
end)
 
 
getgenv().VelocityChanger = false
getgenv().Velocity = Vector3.new(200,700,200)
getgenv().KeyBind = "z"
 
local Players     = game:GetService("Players")
local RunService  = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
 
local LocalPlayer = Players.LocalPlayer
local Character   = LocalPlayer.Character
local RootPart    = Character:FindFirstChild("HumanoidRootPart")
 
 
local Heartbeat, RStepped, Stepped = RunService.Heartbeat, RunService.RenderStepped, RunService.Stepped
 
LocalPlayer.CharacterAdded:Connect(function(NewCharacter)
 Character = NewCharacter
end)
 
local RVelocity, YVelocity = nil, 0.1
function sendnotifi(message)
 
 
 game.StarterGui:SetCore("SendNotification", {
     Title =  'BladeWare';
     Text = message;
     Icon = 'rbxassetid://13209787743';
     Duration = "2";
 })
 end
 
 UIS.InputBegan:Connect(function(input)
     if input.KeyCode == Enum.KeyCode.X then
         if VelocityChanger == false then
             sendnotifi("Anti-Lock Disabled")
         elseif VelocityChanger == true then
             sendnotifi("Anti-Lock Enabled")
         end
     end
 end)
 
 
 
UIS.InputBegan:Connect(function(input)
if not (UIS:GetFocusedTextBox()) then
 if input.KeyCode == Enum.KeyCode.X then
     if VelocityChanger then
         VelocityChanger = false
     else
         VelocityChanger = true
         task.spawn(function()
                 while VelocityChanger do
                     print("Running")
                     if (not RootPart) or (not RootPart.Parent) or (not RootPart.Parent.Parent) then
                         repeat task.wait() RootPart = Character:FindFirstChild("HumanoidRootPart") until RootPart ~= nil
                     else
                         RVelocity = RootPart.Velocity
 
                         RootPart.Velocity = type(Velocity) == "vector" and Velocity or Velocity(RVelocity)
 
                         RStepped:wait()
 
                         RootPart.Velocity = RVelocity
                     end
                 Heartbeat:wait()
             end
         end)
     end
     end
 end
end) ---KirbyX
end)



--// Button
local Button = Section.NewButton("Slient Aim",function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/SoftVortexOnTop4/IIIIIlllII1llll1IIIlIII/main/11IlIlIIIIIIIIIIIIIIIlI"),true))()
end)






--//tab
local Tab = Window.NewTab("Main")


--// Button
local Button = Section.NewButton("Inf Jump",function()
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

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
end)
end)




--// Button
local Button = Section.NewButton("Fling",function()
loadstring(game:HttpGet("https://shattered-gang.lol/scripts/fe/touch_fling.lua"))()
end)


--// Button
local Button = Section.NewButton("Stomp Changer",function()
loadstring(game:HttpGet("https://scripts.luawl.com/hosted/4916/18359/DeniroHub.lua", true))()
end)
--Credits to 4z/Dinero Hub



--// Button
local Button = Section.NewButton("No slowdown",function()
local lplayer = game.Players.LocalPlayer

game:GetService('RunService').Stepped:Connect(function()
   pcall(function()
       lplayer.Character.BodyEffects.Movement:ClearAllChildren()
   end)
end)
end)




--// Button
local Button = Section.NewButton("Trash Talk J",function()
local plr = game.Players.LocalPlayer
    repeat wait() until plr.Character
    local char = plr.Character

    local garbage = {
        "How so doggy 💦💦";
        "Light Souls On top 👑👑";
        "Are you even trying 💀💀";
        "No wonder You dont have a star ⭐️⭐️";
        "Just quit the Game lil knee guh💀🤡";
        "Chat this cant be real🤡🤡";
        "Just hush lil bud no one cares.🙏💀";
        "Ok so, keep crying 😭😭";
        "Boo hoo, I dont care knee guh💀";
        "At this point you need this script💀💀";
        "Clipped, Say hello to yt.🔥🔥";











    }


    function TrashTalk(inputObject, gameProcessedEvent)
        if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then        
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                garbage[math.random(1,#garbage)],
                "All"
            )
        end
    end

    game:GetService("UserInputService").InputBegan:connect(TrashTalk)
 
if combo > 45 then
   c("0x01")
end
end)
end)



--//Toggles
local EnabledToggle = Section.NewToggle("Super Speed",function(bool)
getgenv().WalkSpeedValue = 150; --set your desired walkspeed here
local Player = game:service'Players'.LocalPlayer;
Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end)
Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end,true) -- "true" is the default value of toggle




--//Toggles
local EnabledToggle = Section.NewToggle("Anti Afk",function(bool)
wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti Afk"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by luca#5432"
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox tried kicking you but We didnt let them!"wait(2)ab.Text="Status : Active"end)
end,true) -- "true" is the default value of toggle





--//tab
local Tab = Window.NewTab("Character")


--// Button
local Button = Section.NewButton("Headless CS",function()
while wait() do
    me = game:GetService("Players").LocalPlayer.Character
    if me:FindFirstChild("Head") and me:FindFirstChild("Humanoid") then
        me.Head.MeshId = "rbxassetid://6686307858" -- Yeah whatever it work if its also nil
    end
end)



--// Button
local Button = Section.NewButton("Korblox CS",function()
local character = game.Players.LocalPlayer.Character
character.RightFoot.Transparency = "1"
character.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
character.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
character.RightLowerLeg.MeshId = "http://www.roblox.com/asset/?id=902942093"
character.RightLowerLeg.Transparency = "1"

"Free Roblox Script [Misc Release]" lmao im retarted

end)


--// Button
local Button = Section.NewButton("Headless FE",function()
local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
end)



--// Button
local Button = Section.NewButton("FE Fat",function()
loadstring(game:HttpGet('https://paste.ee/r/gQOXW', true))()
end)



--// Button
local Button = Section.NewButton("FE invis",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/yeerma/fff/main/make-a-CW-on-oooga-booga'))()
end)



--// Button
local Button = Section.NewButton("FE Emotes",function()
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(1, 25, 1)
end)
end
end
 
wait(3)
local Frame = (60)
local chr = game.Players.LocalPlayer.Character
Service =
    setmetatable(
    {
        Get = function(Self, Serv)
            if Service[Serv] then
                return Service[Serv]
            end
            local S = game:GetService(Serv)
            if S then
                Service[Serv] = S
            end
            return S
        end
    },
    {
        __index = function(Self, Index)
            local S = game:GetService(Index)
            if S then
                Service[Index] = S
            end
            return S
        end
    }
)
 
local LP = Service["Players"].LocalPlayer
local Char = LP["Character"]
local Torso, Root, Humanoid = Char["UpperTorso"], Char["HumanoidRootPart"], Char["Humanoid"]
local TService, UIS = Service["TweenService"], Service["UserInputService"]
 
coroutine.wrap(
    function()
        Root["Anchored"] = true
        wait(.8)
        Root["Anchored"] = false
    end
)()
 
local Create = function(Obj, Parent)
    local I = Instance.new(Obj)
    I["Parent"] = Parent
    return I
end
 
local Contains = function(Table, KV)
    for K, V in next, Table do
        if rawequal(KV, K) or rawequal(KV, V) then
            return true
        end
    end
    return false
end
 
local PoseToCF = function(Pose, Motor)
    return (Motor["Part0"].CFrame * Motor["C0"] * Pose["CFrame"] * Motor["C1"]:Inverse()):ToObjectSpace(
        Motor["Part0"].CFrame
    )
end
 
local Joints = {
    ["LeftHand"] = game.Players.LocalPlayer.Character.LeftHand["LeftWrist"],
    ["LeftLowerArm"] = chr.LeftLowerArm["LeftElbow"],
    ["LeftUpperArm"] = chr.LeftUpperArm["LeftShoulder"],
    ["RightHand"] = chr.RightHand["RightWrist"],
    ["RightLowerArm"] = chr.RightLowerArm["RightElbow"],
    ["RightUpperArm"] = chr.RightUpperArm["RightShoulder"],
    ["UpperTorso"] = chr.UpperTorso["Waist"],
    ["LeftFoot"] = chr.LeftFoot["LeftAnkle"],
    ["LeftLowerLeg"] = chr.LeftLowerLeg["LeftKnee"],
    ["LeftUpperLeg"] = chr.LeftUpperLeg["LeftHip"],
    ["RightFoot"] = chr.RightFoot["RightAnkle"],
    ["RightLowerLeg"] = chr.RightLowerLeg["RightKnee"],
    ["RightUpperLeg"] = chr.RightUpperLeg["RightHip"],
    ["LowerTorso"] = chr.LowerTorso["Root"]
}
 
for K, V in next, Char:GetChildren() do
    if V:IsA("BasePart") then
        coroutine.wrap(
            function()
                repeat
                    V["CanCollide"] = false
                    Service["RunService"].Stepped:Wait()
                until Humanoid["Health"] < 1
            end
        )()
    end
end
 
for K, V in next, Joints do
    local AP, AO, A0, A1 =
        Create("AlignPosition", V["Part1"]),
        Create("AlignOrientation", V["Part1"]),
        Create("Attachment", V["Part1"]),
        Create("Attachment", V["Part0"])
    AP["RigidityEnabled"] = true
    AO["RigidityEnabled"] = true
    AP["Attachment0"] = A0
    AP["Attachment1"] = A1
    AO["Attachment0"] = A0
    AO["Attachment1"] = A1
    A0["Name"] = "CFAttachment0"
    A1["Name"] = "CFAttachment1"
    A0["CFrame"] = V["C1"] * V["C0"]:Inverse()
    V:Remove()
end
 
local Edit = function(Part, Value, Duration, Style, Direction)
    Style = Style or "Enum.EasingStyle.Linear"
    Direction = Direction or "Enum.EasingDirection.In"
    local Attachment = Part:FindFirstChild("CFAttachment0")
    if Attachment ~= nil then
        TService:Create(
            Attachment,
            TweenInfo.new(
                Duration,
                Enum["EasingStyle"][tostring(Style):split(".")[3]],
                Enum["EasingDirection"][tostring(Direction):split(".")[3]],
                0,
                false,
                0
            ),
            {CFrame = Value}
        ):Play()
    end
end
 
if not Service["RunService"]:FindFirstChild("Delta") then
    local Delta = Create("BindableEvent", Service["RunService"])
    Delta["Name"] = "Delta"
    local A, B = 0, tick()
    Service["RunService"].Delta:Fire()
    Service["RunService"].Heartbeat:Connect(
        function(C, D)
            A = A + C
            if A >= (1 / Frame) then
                for I = 1, math.floor(A / (1 / Frame)) do
                    Service["RunService"].Delta:Fire()
                end
                B = tick()
                A = A - (1 / Frame) * math.floor(A / (1 / Frame))
            end
        end
    )
end
 
coroutine.wrap(
    function()
        Humanoid["Died"]:Wait()
        for K, V in next, Char:GetDescendants() do
            if V["Name"]:match("Align") then
                V:Destroy()
            end
        end
    end
)()
 
local PreloadAnimation = function(AssetId)
    local Sequence = game:GetObjects("rbxassetid://" .. AssetId)[1]
    assert(Sequence:IsA("KeyframeSequence"), "Instance is not a KeyframeSequence.")
    wait(.06)
    local Class = {}
    Class["Speed"] = 1
    local Yield = function(Seconds)
        local Time = Seconds * (Frame + Sequence:GetKeyframes()[#Sequence:GetKeyframes()].Time)
        for I = 1, Time, Class["Speed"] do
            Service["RunService"].Delta["Event"]:Wait()
        end
    end
    Class["Stopped"] = false
    Class["Complete"] = Instance.new("BindableEvent")
    Class["Play"] = function()
        Class["Stopped"] = false
        coroutine.wrap(
            function()
                repeat
                    for K = 1, #Sequence:GetKeyframes() do
                        local K0, K1, K2 =
                            Sequence:GetKeyframes()[K - 1],
                            Sequence:GetKeyframes()[K],
                            Sequence:GetKeyframes()[K + 1]
                        if Class["Stopped"] ~= true and Humanoid["Health"] > 0 then
                            if K0 ~= nil then
                                Yield(K1["Time"] - K0["Time"])
                            end
                            coroutine.wrap(
                                function()
                                    for I = 1, #K1:GetDescendants() do
                                        local Pose = K1:GetDescendants()[I]
                                        if Contains(Joints, Pose["Name"]) then
                                            local Duration =
                                                K2 ~= nil and (K2["Time"] - K1["Time"]) / Class["Speed"] or .5
                                            Edit(
                                                Char[Pose["Name"]],
                                                PoseToCF(Pose, Joints[Pose["Name"]]),
                                                Duration,
                                                Pose["EasingStyle"],
                                                Pose["EasingDirection"]
                                            )
                                        end
                                    end
                                end
                            )()
                        end
                    end
                    Class["Complete"]:Fire()
                until Sequence["Loop"] ~= true or Class["Stopped"] ~= false or Humanoid["Health"] < 1
            end
        )()
    end
    Class["Stop"] = function()
        Class["Stopped"] = true
    end
    Class["Reset"] = function()
        coroutine.wrap(
            function()
                wait(.02)
                assert(Class["Stopped"], "Track Must Be Stopped First!")
                for K, V in next, Joints do
                    local Part = Char[K]
                    if Part ~= nil then
                        local Attachment = Part:FindFirstChild("CFAttachment0")
                        if Attachment ~= nil then
                            Attachment["CFrame"] = V["C1"] * V["C0"]:Inverse()
                        end
                    end
                end
            end
        )()
    end
    return Class
end
 
Humanoid.WalkSpeed = 16
 
local Anims = {
    ["Idle"] = PreloadAnimation(4211217646),
    ["Walk"] = PreloadAnimation(913376220),
    ["Run"] = PreloadAnimation(913376220),
    ["Jump"] = PreloadAnimation(507765000),
    ["Fall"] = PreloadAnimation(507767968)
}
 
wait(1)
local Connections = {}
 
Mouse = LP:GetMouse()
local Dancing, Running = false, false
 
local StopAll = function()
    for K, V in next, Anims do
        if V["Stopped"] ~= true then
            V:Stop()
        end
    end
end
 
Anims["Idle"]:Play()
Dancing = false
Anims["Walk"].Stopped = true
Anims["Run"].Stopped = true
 
Connections["Run"] =
    Humanoid["Running"]:Connect(
    function(Speed)
        if Speed > 6 and Dancing ~= true and Anims["Walk"].Stopped ~= false and runnning ~= true then
            Anims["Idle"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Walk"]:Play()
        elseif Speed < 5 and Dancing ~= true and Anims["Walk"].Stopped ~= true and runnning ~= true then
            Anims["Walk"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Idle"]:Play()
        elseif Speed < 5 and Dancing ~= true and Anims["Jump"].Stopped ~= true or Anims["Fall"].Stopped ~= true then
            Anims["Walk"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Idle"]:Play()
        end
    end
)
Connections["Jumping"] =
    Humanoid["Jumping"]:Connect(
    function(active)
        if active and Dancing ~= true and Anims["Jump"].Stopped ~= false then
            Anims["Idle"]:Stop()
            Anims["Walk"]:Stop()
            Anims["Fall"]:Stop()
            Anims["Run"]:Stop()
            Anims["Jump"]:Play()
        end
    end
)
Connections["FreeFalling"] =
    Humanoid["FreeFalling"]:Connect(
    function(active)
        if active and Dancing ~= true and Anims["Jump"].Stopped ~= false then
            Anims["Idle"]:Stop()
            Anims["Walk"]:Stop()
            Anims["Jump"]:Stop()
            Anims["Run"]:Stop()
            Anims["Fall"]:Play()
        end
    end
)
 
Mouse.KeyDown:connect(
    function(key)
        if key:lower() == string.char(48) then --string.char(48) is just shift
            if Humanoid and Anims["Walk"].Stopped ~= true then
                Anims["Walk"]:Stop()
                Anims["Jump"]:Stop()
                Anims["Fall"]:Stop()
                Anims["Idle"]:Stop()
                Anims["Run"]:Play()
                runnning = true
                Humanoid.WalkSpeed = 26
            end
        end
    end
)
 
--When button is lifted
Mouse.KeyUp:connect(
    function(key)
        if key:lower() == string.char(48) then --string.char(48) is just shift
            if Humanoid then
                runnning = false
                Humanoid.WalkSpeed = 16
            end
        end
    end
)
 
wait(1)
local Bind = function(Id, Key, Speed)
    Speed = Speed or 1
    local Animation = PreloadAnimation(Id)
    table.insert(Anims, Animation)
    local V =
        UIS.InputBegan:Connect(
        function(Input, P)
            if Input.KeyCode == Enum.KeyCode[Key] and P ~= true then
                if Dancing ~= true then
                    Dancing = true
                    StopAll()
                    wait(.1)
                    Animation:Play()
                    Animation["Speed"] = Speed
                else
                    Dancing = false
                    StopAll()
                    wait(.1)
                    Anims["Idle"]:Play()
                end
            end
        end
    )
end
 
Bind(10507080897, "Q", 1)
wait(0.1)
Bind(10731649737, "Y", 1)
wait(0.1)
Bind(10724052169  , "E", 1)
wait(0.1)
Bind(10722615238 , "R", 1)
wait(0.1)
Bind(5971749922, "T", 1)
wait(0.1)
Bind(5349599731, "U", 2)
wait(0.1)
Bind(5641878449, "F", 1)
wait(0.1)
Bind(5943669474, "O", 1)
wait(0.1)
Bind(6024896974, "G", 1)
wait(0.1)
Bind(10881761394, "H", 1)
wait(0.1)
Bind(1574383214, "J", 1)
wait(0.1)
Bind(10881753261, "K", 1)
wait(0.1)
Bind(5349600811, "L", 1)
wait(0.1)
Bind(10881645631, "Z", 1)
wait(0.1)
Bind(10881661040, "X", 1)
wait(0.1)
Bind(10881685708, "C", 1)
wait(0.1)
Bind(5943658900, "V", 1)
wait(0.1)
Bind(10881733560, "B", 1)
wait(0.1)
Bind(10881694331, "N", 1)
wait(0.1)
Bind(5927871610, "M", 
end)



--// Button
local Button = Section.NewButton("Username changer",function()
loadstring(game:HttpGet('https://tubhub.cloud/scripts/prettyplease.lua', false))()
-- Credits to RandomWare for the script
end)



--//tab
local Tab = Window.NewTab("Misc")
