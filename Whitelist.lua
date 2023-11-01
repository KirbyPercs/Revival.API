local HWIDTable = loadstring(game:HttpGet("https://pastebin.com/raw/m2e6NXsG"))()
local HWID = game:GetService("RbxAnalyticsService")GetClientId()
for i,v in pairs(HWIDTable) do
    if v == HWID then

  else
  game:GetService("Players").LocalPlayer:Kick("Player not whitelisted")
    end
end
