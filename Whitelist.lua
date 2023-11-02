local HWIDTable = loadstring(game:HttpGet("https://pastebin.com/raw/m2e6NXsG"))()
local HWID = game:GetService("RbxAnalyticsService")GetClientId()
for i,v in pairs(HWIDTable) do
    if v == HWID then
loadstring(game:HttpGet("https://raw.githubusercontent.com/KirbyPercs/ShootasWrld/main/premium.lua"))()
  else
  game:GetService("Players").LocalPlayer:Kick("Player not whitelisted")
    end
end
