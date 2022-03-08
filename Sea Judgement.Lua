-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local MainFarm = Instance.new("Frame")
local Chest = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local ChestPickerTitle = Instance.new("TextLabel")
local Bar = Instance.new("Frame")
local Bar_2 = Instance.new("Frame")
local MiscTitle = Instance.new("TextLabel")
local Bar_3 = Instance.new("Frame")
local Speedtext = Instance.new("TextBox")
local SpeedTitle = Instance.new("TextLabel")
local AutoClickTitle = Instance.new("TextLabel")
local AutoClickBtn = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local BtnIcon = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local Bar_4 = Instance.new("Frame")
local Bar_5 = Instance.new("Frame")
--Service:
local UserInputService = game:GetService("UserInputService")
--Value:
local gui1 = Main
local dragging
local dragInput
local dragStart
local startPos
local Autoclicking = false
local clickedtime  = 1
local chesttp      = false
--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BackgroundTransparency = 0.500
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.0628024936, 0, 0.234592438, 0)
Main.Size = UDim2.new(0.509157538, 0, 0.578528821, 0)

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0311750583, 0, 0.0206185561, 0)
TextLabel.Size = UDim2.new(0.453237385, 0, 0.0343642607, 0)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "Sea Judgement Script (By NMDGTV)"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

UICorner_2.Parent = Main

MainFarm.Name = "MainFarm"
MainFarm.Parent = Main
MainFarm.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFarm.BackgroundTransparency = 0.500
MainFarm.BorderSizePixel = 0
MainFarm.Position = UDim2.new(0.216827258, 0, 0.0793520957, 0)
MainFarm.Size = UDim2.new(0.782228291, 0, 0.917525768, 0)

Chest.Name = "Chest"
Chest.Parent = MainFarm
Chest.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Chest.BorderSizePixel = 0
Chest.Position = UDim2.new(0.0202088524, 0, 0.104526483, 0)
Chest.Size = UDim2.new(0.465987206, 0, 0.146067411, 0)
Chest.Font = Enum.Font.SourceSansLight
Chest.Text = "All Chest"
Chest.TextColor3 = Color3.fromRGB(0, 0, 0)
Chest.TextScaled = true
Chest.TextSize = 14.000
Chest.TextWrapped = true
Chest.MouseButton1Click:Connect(function()
if chesttp == false then
    chesttp = true
    for i,v in pairs(game.Workspace:FindFirstChild("Chest"):GetChildren()) do
        if v:FindFirstChild("HitBox") then
            wait(.5)
            print("OK")
            game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart.CFrame = v:FindFirstChild("HitBox").CFrame
        end
    end
    wait(2)
    chesttp = false
end
end)

UICorner_3.Parent = Chest

ChestPickerTitle.Name = "ChestPickerTitle"
ChestPickerTitle.Parent = MainFarm
ChestPickerTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChestPickerTitle.BackgroundTransparency = 1.000
ChestPickerTitle.Position = UDim2.new(0.0221402217, 0, 0.0224719103, 0)
ChestPickerTitle.Size = UDim2.new(0.334161878, 0, 0.0411985032, 0)
ChestPickerTitle.Font = Enum.Font.Ubuntu
ChestPickerTitle.Text = "Chest Picker"
ChestPickerTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ChestPickerTitle.TextScaled = true
ChestPickerTitle.TextSize = 14.000
ChestPickerTitle.TextWrapped = true

Bar.Name = "Bar"
Bar.Parent = MainFarm
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0, 0, 0.0774719119, 0)
Bar.Size = UDim2.new(1, 0, 0.00300000003, 0)

Bar_2.Name = "Bar"
Bar_2.Parent = MainFarm
Bar_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar_2.BorderSizePixel = 0
Bar_2.Position = UDim2.new(0, 0, 0.350880146, 0)
Bar_2.Size = UDim2.new(1, 0, 0.00300000003, 0)

MiscTitle.Name = "MiscTitle"
MiscTitle.Parent = MainFarm
MiscTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MiscTitle.BackgroundTransparency = 1.000
MiscTitle.Position = UDim2.new(0.0221402217, 0, 0.295880139, 0)
MiscTitle.Size = UDim2.new(0.334161878, 0, 0.0411985032, 0)
MiscTitle.Font = Enum.Font.Ubuntu
MiscTitle.Text = "Misc"
MiscTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
MiscTitle.TextScaled = true
MiscTitle.TextSize = 14.000
MiscTitle.TextWrapped = true

Bar_3.Name = "Bar"
Bar_3.Parent = MainFarm
Bar_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar_3.BorderSizePixel = 0
Bar_3.Position = UDim2.new(0, 0, 0.279719114, 0)
Bar_3.Size = UDim2.new(1, 0, 0.00300000003, 0)

Speedtext.Name = "Speedtext"
Speedtext.Parent = MainFarm
Speedtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Speedtext.Position = UDim2.new(0.30657053, 0, 0.400749058, 0)
Speedtext.Size = UDim2.new(0.465987206, 0, 0.112359554, 0)
Speedtext.Font = Enum.Font.SourceSans
Speedtext.PlaceholderText = "Speed"
Speedtext.Text = ""
Speedtext.TextColor3 = Color3.fromRGB(0, 0, 0)
Speedtext.TextScaled = true
Speedtext.TextSize = 14.000
Speedtext.TextWrapped = true
Speedtext.FocusLost:Connect(function(Entered)
    if Entered then
        game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").WalkSpeed = tonumber(Speedtext.Text)
    end
end)

SpeedTitle.Name = "Speed Title"
SpeedTitle.Parent = MainFarm
SpeedTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpeedTitle.BackgroundTransparency = 1.000
SpeedTitle.Position = UDim2.new(0.0558629632, 0, 0.419475645, 0)
SpeedTitle.Size = UDim2.new(0.214599371, 0, 0.0749063641, 0)
SpeedTitle.Font = Enum.Font.Ubuntu
SpeedTitle.Text = "Set Speed:"
SpeedTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedTitle.TextScaled = true
SpeedTitle.TextSize = 14.000
SpeedTitle.TextWrapped = true

AutoClickTitle.Name = "Auto Click Title"
AutoClickTitle.Parent = MainFarm
AutoClickTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoClickTitle.BackgroundTransparency = 1.000
AutoClickTitle.Position = UDim2.new(0.0558629632, 0, 0.561797738, 0)
AutoClickTitle.Size = UDim2.new(0.214599371, 0, 0.0749063641, 0)
AutoClickTitle.Font = Enum.Font.Ubuntu
AutoClickTitle.Text = "Auto Clicker:"
AutoClickTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoClickTitle.TextScaled = true
AutoClickTitle.TextSize = 14.000
AutoClickTitle.TextWrapped = true

AutoClickBtn.Name = "AutoClickBtn"
AutoClickBtn.Parent = MainFarm
AutoClickBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
AutoClickBtn.Position = UDim2.new(0.30657053, 0, 0.561797738, 0)
AutoClickBtn.Size = UDim2.new(0.153285265, 0, 0.0749063641, 0)

UICorner_4.Parent = AutoClickBtn

BtnIcon.Name = "BtnIcon"
BtnIcon.Parent = AutoClickBtn
BtnIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BtnIcon.Size = UDim2.new(0.400000006, 0, 1, 0)

UICorner_5.Parent = BtnIcon

TextButton.Parent = AutoClickBtn
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Click:Connect(function()
    if Autoclicking == false then
        local tween = game:GetService("TweenService"):Create(BtnIcon,TweenInfo.new(1),{Position = UDim2.new(0.62,0,0,0)})
        tween:Play()
        tween.Completed:Connect(function()
            Autoclicking = true
        end)
    elseif Autoclicking == true then
        local tween = game:GetService("TweenService"):Create(BtnIcon,TweenInfo.new(1),{Position = UDim2.new(0,0,0,0)})
        tween:Play()
        tween.Completed:Connect(function()
            Autoclicking = false
        end)
    end
end)

Bar_4.Name = "Bar"
Bar_4.Parent = Main
Bar_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar_4.BorderSizePixel = 0
Bar_4.Position = UDim2.new(0, 0, 0.0756185576, 0)
Bar_4.Size = UDim2.new(1, 0, 0.00300000003, 0)

Bar_5.Name = "Bar"
Bar_5.Parent = Main
Bar_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar_5.BorderSizePixel = 0
Bar_5.Position = UDim2.new(0.215827316, 0, 0.0790378004, 0)
Bar_5.Size = UDim2.new(0.00100000005, 0, 0.921999991, 0)

local function update(input)
    local delta = input.Position - dragStart
    gui1.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui1.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = gui1.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

gui1.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
game:GetService("RunService").Heartbeat:Connect(function()
    if Autoclicking == true then
        if clickedtime == 1 then
            clickedtime = 2
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").COMBAT.RemoteEvent:FireServer(1)
        elseif clickedtime == 2 then
            clickedtime = 3
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").COMBAT.RemoteEvent:FireServer(2)
        elseif clickedtime == 3 then    
            clickedtime = 4
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").COMBAT.RemoteEvent:FireServer(3)
        elseif clickedtime == 4 then    
            clickedtime = 1
            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Tool").COMBAT.RemoteEvent:FireServer(4)
        end
    end
end)
