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

local button1 = Instance.new("TextButton")
local uiCorner = Instance.new("UICorner")
local button2 = Instance.new("TextButton")
local uiCorner2 = Instance.new("UICorner")

local toogle1 = Instance.new("TextButton")
local uiCorner3 = Instance.new("UICorner")
local tooglename = Instance.new("TextLabel")

local slider = Instance.new("UISlider")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ResetOnSpawn = false
main.IgnoreGuiInset = true -- Ekran kenarlarını dikkate alma
main.DisplayOrder = 999 -- Ekran düzenleme sırası


Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frame.BorderColor3 = Color3.fromRGB(1, 1, 1)
Frame.BorderSizePixel = 2
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
button1.BorderColor3 = Color3.fromRGB(1, 1, 1)
button1.BorderSizePixel = 2
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
button2.BorderColor3 = Color3.fromRGB(1, 1, 1)
button2.BorderSizePixel = 2

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

slider.Name = "slider"
slider.Parent = Frame
slider.Position = UDim2.new(0, 0, 0, 100)
slider.Size = UDim2.new(1, 0, 0, 20)
slider.MinValue = 0
slider.MaxValue = 100
slider.Value = sliderValue

-- Yan Yana
-- Button Yan Yana
button1.Position = UDim2.new(0, 0, 0, 60)
 button2.Position = UDim2.new(0, 180, 0, 60)

--Toggle Yan Yana
 toogle1.Position = UDim2.new(0, 85, 0, 94)

-- Bildirim
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "GUİ",
    Text = "By Wreston",
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150",
    Duration = 5,
    Style = {
        BackgroundColor = Color3.fromRGB(54, 54, 54),  
        TextColor = Color3.fromRGB(0, 0, 0),    
        BorderColor = Color3.fromRGB(1, 1, 1),       
    }
})



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
-- Slider
local sliderValue = 0

local function updateSlider(value)
    sliderValue = value
end


slider.Changed:Connect(function(property)
    if property == "Value" then
        updateSlider(slider.Value)
    end
end)
