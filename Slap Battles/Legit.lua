local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Revival IX | Legit Script",
   LoadingTitle = "SB legit script",
   LoadingSubtitle = "by lokz temper, lokz drastic & lucidReborn",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "admin.nebx.gg/file/91092183012001"
   },
   Discord = {
      Enabled = true,
      Invite = "CDtZAEp8E8", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Revival IX | Key System",
      Subtitle = "Key System",
      Note = "Same key as the main script",
      FileName = "admin.nebx.gg/file/91092183012001", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"hope4bashful"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local HomeTab = Window:CreateTab("Home", nil) -- Title, Image
