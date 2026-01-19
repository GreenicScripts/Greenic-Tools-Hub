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
   Name = "Utility Panel",
   LoadingTitle = "Rayfield UI",
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

-- Tab
local Tab = Window:CreateTab("Main", 4483362458)

-- Manual Copy Backup Button
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
      else
         Rayfield:Notify({
            Title = "Clipboard Unsupported",
            Content = "Your executor does not support clipboard.",
            Duration = 5
         })
      end
   end
})

-- Kick (Self)
Tab:CreateButton({
   Name = "Kick (Self)",
   Callback = function()
      LocalPlayer:Kick("You kicked yourself using a friendly script.")
   end
})

-- Rejoin
Tab:CreateButton({
   Name = "Rejoin Game",
   Callback = function()
      TeleportService:Teleport(game.PlaceId, LocalPlayer)
   end
})

-- Leave
Tab:CreateButton({
   Name = "Leave Game",
   Callback = function()
      game:Shutdown()
   end
})
