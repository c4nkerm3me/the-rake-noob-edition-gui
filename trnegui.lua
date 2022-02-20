if game.PlaceId == 6053107323 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("TRNE Hub", "BloodTheme")
    local Main = Window:NewTab("Basic stuff")
    local cd = Window:NewTab("Clickdetector stuff")
    local GUI = Window:NewTab("Gui manipulations")

    local Main1 = Main:NewSection("Remove anti-cheat")
    local Main2 = Main:NewSection("Player stuff")

    local cd1 = cd:NewSection("Duck clickdetectors")
    local cd2 = cd:NewSection("Megafish clickdetectors")

    local GUI1 = GUI:NewSection("Inf stuff")

    Main1:NewButton("Remove RemoteEvents", "Removes half of anti-cheat, the RemoteEvents.", function()
        game:GetService("ReplicatedStorage").RemoteEvents.CheemsSecurityClient:Remove()
    end

    Main1:NewButton("Remove more anti-cheat stuff", "Removes last half of anti-cheat.", function()
        game:GetService("ReplicatedStorage").KickPlayer:Remove()
        game:GetService("ReplicatedStorage").GetCheemsSecurityInfo:Remove()
        game:GetService("ReplicatedStorage").CheemsSecurityEvents:Remove()
    end

    Main2:NewSlider("Walkspeed (REMOVE ANTI-CHEAT FIRST)", "This gives you speed.", 500, 0, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end

    Main2:NewSlider("Jumppower (REMOVE ANTI-CHEAT FIRST)", "This gives you jump power.", 500, 0, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end

    Main2:NewButton("Noclip (REMOVE ANTI-CHEAT FIRST)", "You can noclip. (PRESS E TO NOCLIP)", function()
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        local runservice = game:GetService("RunService")
        local noclip = false
         
        local msg = Instance.new("Message", player.PlayerGui)
        msg.Text = "Noclip Script by PresidentIvan! Press on 'e' to noclip & 't' to destroy this message!"
         
        runservice.Stepped:Connect(function()
            if noclip then
                player.Character.Humanoid:ChangeState(11)
            end
        end)
         
        mouse.KeyDown:Connect(function(key)
            if key == "t" then
                msg:Destroy()
            end
        end)
         
        mouse.KeyDown:Connect(function(key)
            if key == "e" then
                noclip = true
                player.Character.Humanoid:ChangeState(11)
            end
        end)
    end

    GUI1:NewButton("Inf Stamina (ONE-TIME)", "Gives you Inf Stamina.", function()
        while true do
            wait(0.25)
            game.Players.LocalPlayer.Character.CharValues.StaminaPercentValue.Value = 100
            end
        end

    GUI1:NewButton("Inf Listen-Mode", "Listen-Mode is same as a tracker, gives you Inf Listen-Mode.", function()
        while true do
            wait(0.25)
            game.Players.LocalPlayer.PlayerGui.ListenModeGui.Values.ListenModeLeft.Value = 100
            end
        end

    cd1:NewButton("Get all Ducks", "You will get 1500 points!", function()
        fireclickdetector(game.Workspace.StuffGiversFolder.DuckParts.DuckPart1.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.DuckParts.DuckPart2.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.DuckParts.DuckPart3.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.DuckParts.DuckPart4.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.DuckParts.DuckPart5.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.DuckParts.DuckPart6.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.DuckParts.DuckPart7.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.DuckParts.DuckPart8.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.DuckParts.DuckPart9.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.DuckParts.DuckPart10.ClickDetector)
    end

    cd2:NewButton("Get Megafish (REJOIN AFTER DEATH)", "You will get Megafish! (PRESS AGAIN AFTER REJOIN)", function()
        fireclickdetector(game.Workspace.StuffGiversFolder.MegaFishCoalParts.CoalPart1.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.MegaFishCoalParts.CoalPart2.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.MegaFishCoalParts.CoalPart3.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.MegaFishCoalParts.CoalPart4.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.MegaFishCoalParts.CoalPart5.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.MegaFishCoalParts.CoalPart6.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.MegaFishCoalParts.CoalPart7.ClickDetector)
        wait(0.5)
        fireclickdetector(game.Workspace.StuffGiversFolder.MegaFishCoalParts.CoalPart8.ClickDetector)
    end

    local Credits = Window:NewTab("Credits and additional info")

    Credits:NewLabel("Credits to Kavo UI Library!")
    Credits:NewLabel("Report any bugs or glitches to me! c4nk#8382")
    Credits:NewLabel("I do not encourage anyone to exploit/cheat/hack.")
    Credits:NewLabel("I made this GUI for fun, if you want me to make a script private, contact me!")
end
