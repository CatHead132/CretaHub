local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "CretaHub", HidePremium = false, SaveConfig = true, ConfigFolder = "CretaHub"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "home",
	PremiumOnly = false
})

Tab:AddSlider({
    Name = "Walk Speed",
    Min = 16,
    Max = 496,
    Default = 16,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 16,
    ValueName = "",
    Callback = function(s)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end    
})

Tab:AddSlider({
    Name = "Jump Power",
    Min = 50,
    Max = 500,
    Default = 50,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 50,
    ValueName = "",
    Callback = function(j)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
    end    
})

Tab:AddButton({
    Name = "Kill Local Player",
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end    
})

local Section = Tab:AddSection({
    Name = "Join with JobId"
})

Tab:AddTextbox({
    Name = "JobId",
    Default = "Enter JobId",
    TextDisappear = false,
    Callback = function(Value)
        print(Value)
        jobId = (Value)
    end	  
})

Tab:AddButton({
    Name = "Teleport",
    Callback = function()
        local Players = game:GetService("Players")
        local TeleService = game:GetService("TeleportService")
        local player = Players.LocalPlayer
        
        if player and jobId then
            local placeId = game.PlaceId
            TeleService:TeleportToPlaceInstance(placeId, jobId, player)
        else
            print("LocalPlayer is not found or JobId is not entered.")
        end
    end
})

local Section = Tab:AddSection({
    Name = ""
})

Tab:AddButton({
    Name = "Destroy Ui",
    Callback = function()
        OrionLib:Destroy()
    end    
})



local Tab = Window:MakeTab({
    Name = "Creator",
    Icon = "info",
    PremiumOnly = false
})

Tab:AddParagraph("Creator", "Discord")
Tab:AddParagraph("cathead132", "")
Tab:AddParagraph("31klwlex", "")
