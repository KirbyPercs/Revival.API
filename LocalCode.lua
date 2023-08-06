
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



--// Button
local Button = Section.NewButton("Speed Gui",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TeamSkid/RobloxScripts/main/neverlose"))()
end)



--//Toggles
local EnabledToggle = Section.NewToggle("Esp",function(bool)
--[[ INFORMATION
    Combination of BitchBot and BeanBot's ESPs.
    I honestly have no idea what I did anymore i think it was that i decluttered code and shizzle

    BTW THIS IS SUPPOSED TO BE UNOBFUSCATED I ADMIT MOST OF THIS AINT MY CODE ( i am uninterested in actually making an ESP cus nobody uses them in "hood" games, this was just to have something a bit more customizale than kiriot's esp )
]]

--[[ Default Config 

_G.ESPSettings = {
    enabled = false,
	box = false,
	boxcolor1 = Color3.fromRGB(255,255,255),
	name = false,
	displayname = false,
	headdot = false,
	health = false,
    healthcolor = Color3.fromRGB(255,255,255),
    healthtransparency = 1,
	healthbar = false,
	healthbarcolor1 = Color3.fromRGB(0,255,0),
	healthbarcolor2 = Color3.fromRGB(255,0,0),
	distance = false,
	outoffovarrows = false,
	arrowsoffset = 10,
	arrowscolor = Color3.fromRGB(255,255,255),
    arrowsfilled = false,
    arrowsthickness = 2.5,
	textcase = 1,
	maxtextlength = 2^16,
	hpvisibilitycap = 100,
	checks = {
        false, -- alive check ( not down check just alive check ? )
        false, -- distance check 
	},
    maxdistance = 2^16,
}

]]
if not _G.ESPSettings then
    game.Players.LocalPlayer:Kick("Missing _G.ESPSettings config")
    return
end
if _G.ESPLoaded then return end -- makes it so u cant execute the ACTUAL esp twice, itll just change config on 2nd and so on executions
_G.ESPLoaded = true
LPH_JIT_MAX = function(...) return ... end -- if u wanna obfuscate this then this makes stuff faster if ur using luraph (is just a normal function when not obfuscated with luraph)
local CreateESP={}
local RGB = Color3.fromRGB
function CreateESP:FilledRect(visible, pos_x, pos_y, width, height, clr, tablename)
    local temptable = Drawing.new("Square")
    temptable.Visible = visible
    temptable.Position = Vector2.new(pos_x, pos_y)
    temptable.Size = Vector2.new(width, height)
    temptable.Color = RGB(clr[1], clr[2], clr[3])
    temptable.Filled = true
    temptable.Thickness = 0
    temptable.Transparency = clr[4] / 255
    table.insert(tablename, temptable)
end
function CreateESP:Circle(visible, pos_x, pos_y, size, thickness, sides, clr, tablename)
    local temptable = Drawing.new("Circle")
    temptable.Position = Vector2.new(pos_x, pos_y)
    temptable.Visible = visible
    temptable.Radius = size
    temptable.Thickness = thickness
    temptable.NumSides = sides
    temptable.Transparency = clr[4]
    temptable.Filled = false
    temptable.Color = RGB(clr[1], clr[2], clr[3])
    table.insert(tablename, temptable)
end
function CreateESP:OutlinedRect(visible, pos_x, pos_y, width, height, clr, tablename)
    local temptable = Drawing.new("Square")
    temptable.Visible = visible
    temptable.Position = Vector2.new(pos_x, pos_y)
    temptable.Size = Vector2.new(width, height)
    temptable.Color = RGB(clr[1], clr[2], clr[3])
    temptable.Filled = false
    temptable.Thickness = 0
    temptable.Transparency = clr[4] / 255
    table.insert(tablename, temptable)
end
function CreateESP:FilledRect(visible, pos_x, pos_y, width, height, clr, tablename)
    local temptable = Drawing.new("Square")
    temptable.Visible = visible
    temptable.Position = Vector2.new(pos_x, pos_y)
    temptable.Size = Vector2.new(width, height)
    temptable.Color = RGB(clr[1], clr[2], clr[3])
    temptable.Filled = true
    temptable.Thickness = 0
    temptable.Transparency = clr[4] / 255
    table.insert(tablename, temptable)
end
function CreateESP:OutlinedText(text, font, visible, pos_x, pos_y, size, centered, clr, clr2, tablename)
    local temptable = Drawing.new("Text")
    temptable.Text = text
    temptable.Visible = visible
    temptable.Position = Vector2.new(pos_x, pos_y)
    temptable.Size = size
    temptable.Center = centered
    temptable.Color = RGB(clr[1], clr[2], clr[3])
    temptable.Transparency = clr[4] / 255
    temptable.Outline = true
    temptable.OutlineColor = RGB(clr2[1], clr2[2], clr2[3])
    temptable.Font = font
    if tablename then
        table.insert(tablename, temptable)
    end
    return temptable
end
function CreateESP:Triangle(visible,placeholder,placeholder2,thickness,placeholder3,clr,tablename)
    local temptable = Drawing.new("Triangle")
    temptable.Visible = visible
    temptable.Thickness = thickness
    temptable.Color = RGB(clr[1], clr[2], clr[3])
    if tablename then
        table.insert(tablename, temptable)
    end
    return temptable
end

local loadedESPStuff = {headdotoutline = {},headdot = {},name = {},displayname = {},box = {},filledbox = {},innerbox = {},healthouter = {},healthinner = {},hptext = {},distance = {},arrows = {},}
for i=1,game.Players.MaxPlayers do -- smart as hell ngl like shii already make the amount of items for the shit u need
    CreateESP:FilledRect(false, 20, 20, 20, 20, { 0, 0, 0, 220 }, loadedESPStuff.filledbox)
	CreateESP:Circle(false, 20, 20, 10, 3, 10, { 10, 10, 10, 215 }, loadedESPStuff.headdotoutline)
	CreateESP:Circle(false, 20, 20, 10, 1, 10, { 255, 255, 255, 255 }, loadedESPStuff.headdot)
	CreateESP:OutlinedRect(false, 20, 20, 20, 20, { 0, 0, 0, 220 }, loadedESPStuff.innerbox)
	CreateESP:OutlinedRect(false, 20, 20, 20, 20, { 255, 255, 255, 255 }, loadedESPStuff.box)
	CreateESP:FilledRect(false, 20, 20, 4, 20, { 10, 10, 10, 215 }, loadedESPStuff.healthouter)
	CreateESP:FilledRect(false, 20, 20, 20, 20, { 255, 255, 255, 255 }, loadedESPStuff.healthinner)
	CreateESP:OutlinedText("", 1, false, 20, 20, 13, false, { 255, 255, 255, 255 }, { 0, 0, 0 }, loadedESPStuff.hptext)
	CreateESP:OutlinedText("", 2, false, 20, 20, 13, true, { 255, 255, 255, 255 }, { 0, 0, 0 }, loadedESPStuff.distance)
	CreateESP:OutlinedText("", 2, false, 20, 20, 13, true, { 255, 255, 255, 255 }, { 0, 0, 0 }, loadedESPStuff.name)
	CreateESP:OutlinedText("", 2, false, 20, 20, 13, true, { 255, 255, 255, 255 }, { 0, 0, 0 }, loadedESPStuff.displayname)
	CreateESP:OutlinedText("", 2, false, 20, 20, 13, true, { 255, 255, 255, 255 }, { 0, 0, 0 }, loadedESPStuff.team)
    CreateESP:Triangle(false, 20, 20, 2.4, false, { 255, 255, 255, 255 }, loadedESPStuff.arrows)
end
local Players = game.Players
local LOCAL_PLAYER = game.Players.LocalPlayer
-- next 2 functions are actually mad annoying 

function string_cut(s1, num)
	return num == 0 and s1 or string.sub(s1, 1, num)
end
function formattext(text)
    if _G.ESPSettings.textcase == 1 then
        return string_cut(string.lower(text), _G.ESPSettings.maxtextlength)
    elseif _G.ESPSettings.textcase == 3 then
        return string_cut(string.upper(text), _G.ESPSettings.maxtextlength)
    end
    return string_cut(text, _G.ESPSettings.maxtextlength)
end
game:GetService("RunService").RenderStepped:Connect(LPH_JIT_MAX(function()
    for k, v in pairs(loadedESPStuff) do
        for k1, v1 in ipairs(v) do
            if v1.Visible then
                v1.Visible = false
            end
        end
    end
    local organizedPlayers = {}
    for i, v in ipairs(Players:GetPlayers()) do
        local checks = _G.ESPSettings.checks
        if v and v.Character and v.Character:FindFirstChild("Humanoid") then
            local humanoid = v.Character:FindFirstChild("Humanoid")
            if _G.ESPSettings.enabled and v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") and not (v==LOCAL_PLAYER) and not (checks[1] and humanoid.Health <= 0) and not (checks[2] and LOCAL_PLAYER:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) / 5 > _G.ESPSettings.maxdistance) then
                table.insert(organizedPlayers, v)
            end 
        end
    end
    local textcase = _G.ESPSettings.textcase
    local textlength = _G.ESPSettings.maxtextlength
    for i, v in ipairs(organizedPlayers) do
        pcall(function() -- pcall ignores errors (makes them not print into synx console)
            local humanoid = v.Character:FindFirstChild("Humanoid")
            local rootpart = v.Character.HumanoidRootPart.Position
            local cam = workspace.CurrentCamera.CFrame
            local torso = v.Character.PrimaryPart.CFrame
            local head = v.Character.Head.CFrame
            local top, top_isrendered = workspace.CurrentCamera:WorldToViewportPoint(head.Position + (torso.UpVector * 1) + cam.UpVector)
            local bottom, bottom_isrendered = workspace.CurrentCamera:WorldToViewportPoint(torso.Position - (torso.UpVector * 2.5) - cam.UpVector)
            local minY = math.abs(bottom.y - top.y)
            local sizeX = math.ceil(math.max(math.clamp(math.abs(bottom.x - top.x) * 2.5, 0, minY), minY / 2, 3))
            local sizeY = math.ceil(math.max(minY, sizeX * 0.5, 3))
            if top_isrendered or bottom_isrendered then
                local boxtop = Vector2.new(
                    math.floor(top.x * 0.5 + bottom.x * 0.5 - sizeX * 0.5),
                    math.floor(math.min(top.y, bottom.y))
                )
                local boxsize = { w = sizeX, h = sizeY }

                if _G.ESPSettings.headdot then
                    local head = v.Character:FindFirstChild("Head")
                    if head then
                        local headpos = head.Position
                        local headdotpos = workspace.CurrentCamera:WorldToViewportPoint(Vector3.new(headpos.x, headpos.y + 0.1, headpos.z))
                        local headdotpos_b = workspace.CurrentCamera:WorldToViewportPoint(Vector3.new(headpos.x, headpos.y - 0.2, headpos.z))
                        local difference = headdotpos_b.y - headdotpos.y
                        loadedESPStuff.headdot[i].Visible = true
                        loadedESPStuff.headdot[i].Position = Vector2.new(headdotpos.x, headdotpos_b.y - difference)
                        loadedESPStuff.headdot[i].Radius = difference * 2

                        loadedESPStuff.headdotoutline[i].Visible = true
                        loadedESPStuff.headdotoutline[i].Position = Vector2.new(headdotpos.x, headdotpos_b.y - difference)
                        loadedESPStuff.headdotoutline[i].Radius = difference * 2
                    end
                end
                if _G.ESPSettings.box then
                    loadedESPStuff.innerbox[i].Position = Vector2.new(boxtop.x + 1, boxtop.y + 1)
                    loadedESPStuff.innerbox[i].Size = Vector2.new(boxsize.w - 2, boxsize.h - 2)
                    loadedESPStuff.innerbox[i].Visible = true
                    loadedESPStuff.innerbox[i].Color = _G.ESPSettings.boxcolor1

                    loadedESPStuff.box[i].Position = Vector2.new(boxtop.x, boxtop.y)
                    loadedESPStuff.box[i].Size = Vector2.new(boxsize.w, boxsize.h)
                    loadedESPStuff.box[i].Visible = true
                    loadedESPStuff.box[i].Color = _G.ESPSettings.boxcolor1
                end
                if humanoid then
                    local health = math.ceil(humanoid.Health)
                    local maxhealth = humanoid.MaxHealth
                    local Lerp = function(delta, from, to)
                        if (delta > 1) then
                            return to
                        end
                        if (delta < 0) then
                            return from
                        end
                        return from + (to - from) * delta
                    end
                    local ColorRange = function(value, ranges) -- "tony" made this idk who that is but its in whichever esp it came from
                        if value <= ranges[1].start then
                            return ranges[1].color
                        end
                        if value >= ranges[#ranges].start then
                            return ranges[#ranges].color
                        end
                    
                        local selected = #ranges
                        for i = 1, #ranges - 1 do
                            if value < ranges[i + 1].start then
                                selected = i
                                break
                            end
                        end
                        local minColor = ranges[selected]
                        local maxColor = ranges[selected + 1]
                        local lerpValue = (value - minColor.start) / (maxColor.start - minColor.start)
                        return Color3.new(
                            Lerp(lerpValue, minColor.color.r, maxColor.color.r),
                            Lerp(lerpValue, minColor.color.g, maxColor.color.g),
                            Lerp(lerpValue, minColor.color.b, maxColor.color.b)
                        )
                    end
                    if _G.ESPSettings.healthbar then
                        loadedESPStuff.healthouter[i].Position = Vector2.new(boxtop.x - 6, boxtop.y - 1)
                        loadedESPStuff.healthouter[i].Size = Vector2.new(4, boxsize.h + 2)
                        loadedESPStuff.healthouter[i].Visible = true

                        local ySizeBar = -math.floor(boxsize.h * health / maxhealth)

                        loadedESPStuff.healthinner[i].Position = Vector2.new(boxtop.x - 5, boxtop.y + boxsize.h)
                        loadedESPStuff.healthinner[i].Size = Vector2.new(2, ySizeBar)
                        loadedESPStuff.healthinner[i].Visible = true
                        loadedESPStuff.healthinner[i].Color = ColorRange(health, {
                            [1] = {
                                start = 0,
                                color = _G.ESPSettings.healthbarcolor2,
                            },
                            [2] = {
                                start = 100,
                                color = _G.ESPSettings.healthbarcolor1,
                            },
                        })

                        if _G.ESPSettings.health and _G.ESPSettings.hpvisibilitycap >= math.ceil((health / maxhealth) * 100) then
                            loadedESPStuff.hptext[i].Text = tostring(health)
                            local textsize = loadedESPStuff.hptext[i].TextBounds
                            loadedESPStuff.hptext[i].Position = Vector2.new(
                                boxtop.x - 7 - textsize.x,
                                boxtop.y + math.clamp(boxsize.h + ySizeBar - 8, -4, boxsize.h - 10)
                            )
                            loadedESPStuff.hptext[i].Visible = true
                            loadedESPStuff.hptext[i].Color = _G.ESPSettings.healthcolor
                            loadedESPStuff.hptext[i].Transparency = _G.ESPSettings.healthtransparency
                        end
                    elseif _G.ESPSettings.health and _G.ESPSettings.hpvisibilitycap >= math.ceil((health / maxhealth) * 100) then
                        loadedESPStuff.hptext[i].Text = tostring(health)
                        local textsize = loadedESPStuff.hptext[i].TextBounds
                        loadedESPStuff.hptext[i].Position = Vector2.new(boxtop.x - 3 - textsize.x, boxtop.y - 4)
                        loadedESPStuff.hptext[i].Visible = true
                        loadedESPStuff.hptext[i].Color = _G.ESPSettings.healthcolor
                        loadedESPStuff.hptext[i].Transparency = _G.ESPSettings.healthtransparency
                    end
                end
                if _G.ESPSettings.name then
                    loadedESPStuff.name[i].Text = formattext(v.Name)
                    loadedESPStuff.name[i].Position = (_G.ESPSettings.displayname and v.Name ~= v.DisplayName) and Vector2.new(math.floor(boxtop.x + boxsize.w * 0.5), math.floor(boxtop.y - 27)) or Vector2.new(math.floor(boxtop.x + boxsize.w * 0.5), math.floor(boxtop.y - 15))
                    loadedESPStuff.name[i].Visible = true
                end
                if _G.ESPSettings.displayname then
                    if _G.ESPSettings.name and v.Name ~= v.DisplayName then
                        loadedESPStuff.displayname[i].Text = formattext(v.DisplayName)
                        loadedESPStuff.displayname[i].Position = Vector2.new(math.floor(boxtop.x + boxsize.w * 0.5), math.floor(boxtop.y - 15))
                        loadedESPStuff.displayname[i].Visible = true
                    else 
                        loadedESPStuff.displayname[i].Text = formattext(v.DisplayName)
                        loadedESPStuff.displayname[i].Position = Vector2.new(math.floor(boxtop.x + boxsize.w * 0.5), math.floor(boxtop.y - 15))
                        loadedESPStuff.displayname[i].Visible = true
                    end
                end
                local y_spot = 0
                if _G.ESPSettings.distance then
                    local dist_pos = Vector2.new(math.floor(boxtop.x + boxsize.w * 0.5), boxtop.y + boxsize.h + y_spot)
                    loadedESPStuff.distance[i].Text = tostring(math.ceil(LOCAL_PLAYER:DistanceFromCharacter(rootpart) / 5)).. "m"
                    loadedESPStuff.distance[i].Position = dist_pos
                    loadedESPStuff.distance[i].Visible = true
                end
            else
                if _G.ESPSettings.outoffovarrows then
                    loadedESPStuff.arrows[i].Visible = true

                    local rel = workspace.CurrentCamera.CFrame:PointToObjectSpace(v.Character.HumanoidRootPart.Position)
                    local angle = math.atan2(-rel.Y, rel.X)

                    local dir = Vector2.new(math.cos(angle), math.sin(angle))

                    function ScreenSize()
                        return workspace.CurrentCamera.ViewportSize
                    end
                    function getRotate(v, rads)
                        local u = v.Unit
                        local a, b = math.sin(rads), math.cos(rads)
                        local c, d = (b * u.X) - (a * u.Y), (a * u.X) + (b * u.Y)
                        return Vector2.new(c, d).Unit * v.Magnitude
                    end
                    local pos = (dir * ScreenSize() * (_G.ESPSettings.arrowsoffset / 100)) + (ScreenSize() / 2)

                    local size = math.floor(ScreenSize().X / 64)

                    loadedESPStuff.arrows[i].PointA = pos
                    loadedESPStuff.arrows[i].PointB = pos - getRotate(dir, .5) * size
                    loadedESPStuff.arrows[i].PointC = pos - getRotate(dir, -.5) * size

                    loadedESPStuff.arrows[i].Color = _G.ESPSettings.arrowscolor
                    loadedESPStuff.arrows[i].Filled = _G.ESPSettings.arrowsfilled
                    loadedESPStuff.arrows[i].Thickness = _G.ESPSettings.arrowsthickness
                end
            end	
        end)
    end
end))
end,true) -- "true" is the default value of toggle



--// Button
local Button = Section.NewButton("Fly F",function()
lua
-- Fly Script

-- Constants
local FLY_SPEED = 150

-- Variables
local flyEnabled = false

-- Function to enable or disable fly mode
local function toggleFly()
    flyEnabled = not flyEnabled
    if flyEnabled then
        -- Activate fly mode
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(3)
    else
        -- Deactivate fly mode
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(0)
    end
end

-- Function to handle character movement
local function handleMovement()
    if flyEnabled then
        -- Detect input for flying
        local flyInput = Vector3.new(0, 0, 0)
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
            flyInput = flyInput + Vector3.new(0, 0, -1)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
            flyInput = flyInput + Vector3.new(-1, 0, 0)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
            flyInput = flyInput + Vector3.new(0, 0, 1)
        end
        if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
            flyInput = flyInput + Vector3.new(1, 0, 0)
        end
        -- Apply the movement
        game:GetService("Players").LocalPlayer.Character.Humanoid:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + (flyInput * FLY_SPEED))
    end
end

-- Function to handle enabling/disabling fly mode when a specific key is pressed
local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.F then
        toggleFly()
    end
end

-- Connect the key press event
game:GetService("UserInputService").InputBegan:Connect(onKeyPress)

-- Main loop
while true do
    handleMovement()
    game:GetService("RunService").Heartbeat:Wait()
end
end)



--//Toggles
local EnabledToggle = Section.NewToggle("Reach",function(bool)
lua
-- Reach Script

-- Constants
local REACH_DISTANCE = 10

-- Function to activate reach mode
local function activateReach()
    -- Modify the player's character Humanoid properties
    local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
    humanoid.MaxHealth = math.huge
    humanoid.WalkSpeed = math.huge
    humanoid.JumpPower = math.huge
    humanoid.HipHeight = math.huge
end

-- Function to handle reaching out to objects
local function handleReach()
    if game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
        -- Get the mouse position and direction
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local mousePos = mouse.X, mouse.Y, mouse.Z
        local mouseDir = mouse.Target and (mouse.Target.Position - mousePos).unit or Vector3.new(0, 0, 1)

        -- Calculate the reach position
        local reachPos = mousePos + mouseDir * REACH_DISTANCE

        -- Perform a Raycast to detect objects in the reach path
        local result = workspace:Raycast(mousePos, mouseDir * REACH_DISTANCE, {game:GetService("Players").LocalPlayer.Character})

        if result then
            -- An object was hit by the Raycast
            local hitPart = result.Instance
            print("Reached object:", hitPart.Name)
            -- Do something with the hit object, like interacting with it or triggering an action
            -- For example, you can use hitPart:Click() to simulate a click on the object
        end
    end
end

-- Main loop
while true do
    handleReach()
    game:GetService("RunService").Heartbeat:Wait()
end

end,true) -- "true" is the default value of toggle
