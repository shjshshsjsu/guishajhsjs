-- Değişkenler
local dragging
local dragInput
local dragStart
local startPos

-- UI Elemanları
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local closebutton = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false
main.IgnoreGuiInset = true -- Ekran kenarlarını dikkate alma
main.DisplayOrder = 999 -- Ekran düzenleme sırası


Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)
Frame.Style = Enum.FrameStyle.RobloxRound



closebutton.Name = "Close"
closebutton.Parent = Frame
closebutton.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
closebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 30)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebutton.Position = UDim2.new(0, 25, 0, -50)
closebutton.background-trancparency = "1"

-- Yan Yana
-- AutoParry.Position = UDim2.new(0, 0, 0, 0)
 -- AutoClick.Position = UDim2.new(0, 110, 0, 0)

-- Bildirim
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "GUİ",
    Text = "By Wreston",
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"
})
Duration = 5;



-- Close Button
closebutton.MouseButton1Click:Connect(function()
    main:Destroy()
end)


local function updateInput(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

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

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateInput(input)
    end
end)
