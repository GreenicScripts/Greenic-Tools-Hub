-- Auto-copy key link on execution
local KEY_LINK = "https://rekonise.com/easy-key-system-1-checkpoint-cn1z2"
local VALID_KEY = "GrinnicKey2026"

pcall(function()
    if setclipboard then
        setclipboard(KEY_LINK)
    end
end)

-- Rayfield UI Loader
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Notify user
Rayfield:Notify({
    Title = "Key System",
    Content = "Key link has been copied to your clipboard.\nPaste it in your browser.",
    Duration = 6
})

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local LocalPlayer = Players.LocalPlayer

-- Window
local Window = Rayfield:CreateWindow({
   Name = "Greenic Tools Hub",
   LoadingTitle = "Greenic Tools Hub",
   LoadingSubtitle = "Universal Friendly Script",

   ConfigurationSaving = {
      Enabled = false
   },

   KeySystem = true,
   KeySettings = {
      Title = "Grinnic Key System",
      Subtitle = "Key Required",
      Note = "The key link was copied automatically.\nPaste it in your browser.",
      FileName = "GrinnicKey2026",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {VALID_KEY}
   }
})

Rayfield:ChangeTheme("Green")

local Tab = Window:CreateTab("Main")

Tab:CreateButton({
   Name = "Copy Key Link Again",
   Callback = function()
      if setclipboard then
         setclipboard(KEY_LINK)
         Rayfield:Notify({
            Title = "Copied",
            Content = "Key link copied again.",
            Duration = 4
         })
      end
   end
})

Tab:CreateButton({
   Name = "Kick (Self)",
   Callback = function()
      LocalPlayer:Kick("You kicked yourself using Greenic Tools Hub.")
   end
})

Tab:CreateButton({
   Name = "Rejoin Game",
   Callback = function()
      TeleportService:Teleport(game.PlaceId, LocalPlayer)
   end
})

Tab:CreateButton({
   Name = "Leave Game",
   Callback = function()
      game:Shutdown()
   end
})

task.delay(1.5, function()
    Rayfield:Notify({
        Title = "Access Granted",
        Content = "Made By Greenic on YT",
        Duration = 5
    })
end)
