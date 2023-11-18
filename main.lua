-- Değişkenler
local dragging
local dragInput
local dragStart
local startPos

-- UI Elemanları
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AutoParry = Instance.new("TextButton")
local StatusParryLabel = Instance.new("TextLabel")
local AutoClick = Instance.new("TextButton")
local StatusClickLabel = Instance.new("TextLabel")
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


AutoParry.Name = "AutoParry"
AutoParry.Parent = Frame
AutoParry.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
AutoParry.Size = UDim2.new(0, 55, 0, 55)
AutoParry.Font = Enum.Font.SourceSans
AutoParry.Text = "Auto Parry"
AutoParry.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoParry.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoParry.TextScaled = true
AutoParry.TextWrapped = true

StatusParryLabel.Name = "StatusParryLabel"
StatusParryLabel.Parent = Frame
StatusParryLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatusParryLabel.BackgroundTransparency = 1.000
StatusParryLabel.Position = UDim2.new(0, 110, 0, -80)
StatusParryLabel.Size = UDim2.new(0, 85, 0, 55)
StatusParryLabel.Font = Enum.Font.SourceSans
StatusParryLabel.Text = "Status Parry: Off"
StatusParryLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
StatusParryLabel.TextSize = 14.000

AutoClick.Name = "AutoClick"
AutoClick.Parent = Frame
AutoClick.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
AutoClick.Size = UDim2.new(0, 55, 0, 55)
AutoClick.Font = Enum.Font.SourceSans
AutoClick.Text = "Auto Click"
AutoClick.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoClick.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoClick.TextScaled = true
AutoClick.TextWrapped = true 

StatusClickLabel.Name = "StatusClickLabel"
StatusClickLabel.Parent = Frame
StatusClickLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatusClickLabel.BackgroundTransparency = 1.000
StatusClickLabel.Position = UDim2.new(0, 110, 0, 2)
StatusClickLabel.Size = UDim2.new(0, 85, 0, -60)
StatusClickLabel.Font = Enum.Font.SourceSans
StatusClickLabel.Text = "Status Click: Off"
StatusClickLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
StatusClickLabel.TextSize = 14.000

closebutton.Name = "Close"
closebutton.Parent = Frame
closebutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 30)
closebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
closebutton.Position = UDim2.new(0, 0, 0, -30)

-- Yan Yana
AutoParry.Position = UDim2.new(0, 0, 0, 0)
AutoClick.Position = UDim2.new(0, 110, 0, 0)

-- Bildirim
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Blade Ball V1",
    Text = "By Wreston",
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"
})
Duration = 5;

local autoParryEnabled = false
local autoClickEnabled = false

-- Auto Parry
AutoParry.MouseButton1Click:Connect(function()
    autoParryEnabled = not autoParryEnabled
    StatusParryLabel.Text = "Status Parry: " .. (autoParryEnabled and "On" or "Off")
        
        StatusParryLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    if autoParryEnabled then
        print("Auto Parry is enabled.")
            getgenv().god = true

while getgenv().god and task.wait() do
    local localPlayer = game:GetService("Players").LocalPlayer
    local character = localPlayer.Character

    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart

        for _, ball in ipairs(workspace.Balls:GetChildren()) do
            if ball and humanoidRootPart then
                humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position, ball.Position)

                if character:FindFirstChild("Highlight") then
                    humanoidRootPart.CFrame = ball.CFrame * CFrame.new(0, 0, (ball.Velocity).Magnitude * -0.5)
                    game:GetService("ReplicatedStorage").Remotes.ParryButtonPress:Fire()
                end
            end
        end
    end
            end
            
        while autoParryEnabled do
            -- Auto Parry işlemleri buraya gelecek
            wait(1)
        end
    else
        print("Auto Parry is disabled.")
            StatusParryLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

-- Auto Click
local function repeatFunction()
    local args = {
        [1] = 1.5,
        [2] = CFrame.new(-183.08358764648438, 125.93684387207031, 29.001541137695312, 0.9923487305641174, -0.07399874925613403, 0.09883421659469604, -3.500516765342354e-09, 0.8004931211471558, 0.5993419885635376, -0.12346666306257248, -0.5947562456130981, 0.794368326663971),
        -- Diğer Vector3 değerleri buraya gelecek
        [3] = {
            ["4739402996"] = Vector3.new(381.4285583496094, 166.36497497558594, 13.439170837402344),
        },
        [4] = {
            [1] = 576,
            [2] = 20
        }
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ParryAttempt"):FireServer(unpack(args))
end

AutoClick.MouseButton1Click:Connect(function()
    autoClickEnabled = not autoClickEnabled
    StatusClickLabel.Text = "Status Click: " .. (autoClickEnabled and "On" or "Off")
        StatusClickLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
    if autoClickEnabled then
        print("Auto Click is enabled.")
        while autoClickEnabled do
            repeatFunction()
            wait(1)
        end
    else
        print("Auto Click is disabled.")
            StatusClickLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

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
