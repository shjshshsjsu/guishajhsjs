-- Değişkenler
local dragging
local dragInput
local dragStart
local startPos

-- UI Elemanları
--Frame 1
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local line = Instance.new("Frame")
 
local closebutton = Instance.new("TextButton")
local guiname = Instance.new("TextLabel")
local notification = Instance.new("ScreenGui")
notification.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local title = Instance.new("TextLabel")
local noficationframe = Instance.new("Frame")

local button1 = Instance.new("TextButton")
local uiCorner = Instance.new("UICorner")
local button2 = Instance.new("TextButton")
local uiCorner2 = Instance.new("UICorner")

local toogle1 = Instance.new("TextButton")
local uiCorner3 = Instance.new("UICorner")
local tooglename = Instance.new("TextLabel")


main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ResetOnSpawn = false
main.IgnoreGuiInset = true -- Ekran kenarlarını dikkate alma
main.DisplayOrder = 999 -- Ekran düzenleme sırası


Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)
Frame.Style = Enum.FrameStyle.RobloxRound
Frame.Visible = true


closebutton.Name = "Close"
closebutton.Parent = Frame
closebutton.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
closebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 30)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebutton.Position = UDim2.new(1, -closebutton.Size.X.Offset, 0, 0)
closebutton.BackgroundTransparency = 1

guiname.Name = "guiname"
guiname.Parent = Frame
guiname.Position = UDim2.new(0, 45, 0, -12)
guiname.BackgroundColor3 = Color3.new(1, 1, 1)  
guiname.Size = UDim2.new(0, 50, 0, 50)  
guiname.Text = "Script Name"
guiname.TextSize = 30  
guiname.Font = Enum.Font.SourceSans
guiname.TextColor3 = Color3.new(255, 255, 255)  
guiname.BackgroundTransparency = 1

-- LİNE (CİZGİ)

line.BorderSizePixel = 0
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.Size = UDim2.new(1, 0, 0, -2)
line.BorderColor3 = Color3.fromRGB(0, 0, 0)
line.Position = UDim2.new(0, 0, 0, 40)
line.Name = "Line"
line.Parent = Frame

-- Butonlar

-- Button 1
button1.Name = "Button1"
button1.Parent = Frame
button1.BackgroundColor3 = Color3.new(0, 0, 0)  
button1.Font = Enum.Font.SourceSans
button1.Size = UDim2.new(0, 160, 0, 30)
button1.Text = "Button 1"
button1.TextSize = 20
button1.TextColor3 = Color3.new(1, 1, 1)  
uiCorner.Parent = button1 -- Kenarları Yumuşatma
button1.BorderColor3 = Color3.new(255, 255, 255)
-- Button 2

button2.Name = "Button2"
button2.Parent = Frame
button2.BackgroundColor3 = Color3.new(0, 0, 0)  
button2.Font = Enum.Font.SourceSans
button2.Size = UDim2.new(0, 160, 0, 30)
button2.Text = "Button 2"
button2.TextSize = 20
button2.TextColor3 = Color3.new(1, 1, 1)  
uiCorner2.Parent = button2 -- Kenarları Yumuşatma
button2.BorderColor3 = Color3.new(255, 255, 255)

toogle1.Name = "toogle1"
toogle1.Parent = Frame
toogle1.BackgroundColor3 = Color3.new(0, 0, 0)  
toogle1.Font = Enum.Font.SourceSans
toogle1.Size = UDim2.new(0, 30, 0, 30)
toogle1.Text = ""
toogle1.TextSize = 20
toogle1.TextColor3 = Color3.new(1, 1, 1)  
uiCorner3.Parent = toogle1 -- Kenarları Yumuşatma
toogle1.BorderColor3 = Color3.new(255, 255, 255)

tooglename.Name = "tooglename"
tooglename.Parent = Frame
tooglename.Position = UDim2.new(0, 0, 0, 80)
tooglename.BackgroundColor3 = Color3.new(1, 1, 1)  
tooglename.Size = UDim2.new(0, 50, 0, 50)  
tooglename.Text = "Toogle 1"
tooglename.TextSize = 15
tooglename.Font = Enum.Font.SourceSans
tooglename.TextColor3 = Color3.new(255, 255, 255)  
tooglename.BackgroundTransparency = 1


noficationframe.Size = UDim2.new(0, 200, 0, 0)
noficationframe.Position = UDim2.new(0.5, -100, 0.8, 0)
noficationframe.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Arkaplan rengi
noficationframe.BorderSizePixel = 2
noficationframe.BorderColor3 = Color3.fromRGB(0, 0, 0)

-- Yan Yana
-- Button Yan Yana
button1.Position = UDim2.new(0, 0, 0, 60)
 button2.Position = UDim2.new(0, 180, 0, 60)

--Toggle Yan Ynoficationana
 toogle1.Position = UDim2.new(0, 85, 0, 94)

-- Bildirim

-- Close Button
closebutton.MouseButton1Click:Connect(function()
    main:Destroy()
end)

local toogle = false


toogle1.MouseButton1Click:Connect(function()
    toogle = not toogle
    toogle1.BackgroundColor3 = Color3.new(0, 0, 0)  
    toogle1.Text = ""
    if toogle then
        toogle1.BackgroundColor3 = Color3.new(0, 255, 0)  
        toogle1.Text = "✓"
    end
end)


Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

local function updateInput(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
Frame.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        dragInput = input
        updateInput(dragInput)
    end
end)

-- Bildirim
local title = Instance.new("TextLabel")
title.Parent = noficationframe
title.Size = UDim2.new(1, 0, 0.5, 0)
title.Text = "Script Name"
title.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Metin rengi
title.Font = Enum.Font.SourceSansBold
title.TextSize = 24

text.Parent = noficationframe
text.Size = UDim2.new(1, 0, 0.5, 0)
text.Position = UDim2.new(0, 0, 0.5, 0)
text.Text = "By Wreston"
text.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Metin rengi
text.Font = Enum.Font.SourceSans
text.TextSize = 18

notification.Enabled = true



wait(0.5)
notification:Destroy()
