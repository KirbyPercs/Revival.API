
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
local Button = Section.NewButton("Button Text",function()
-- code here
end)
