if not writefile then
    game.Players.LocalPlayer:Kick("This executor does not support 'writefile' function.")
end

local j = value
local f = "P3bt/rivals/settings/" .. jsonname .. ".json"
writefile(f, j)
print("Imported Config '" .. jsonname .. "'")

local p = game.Players.LocalPlayer
local sG = Instance.new("ScreenGui")
sG.Parent = p.PlayerGui

local tL = Instance.new("TextLabel")
tL.Parent = sG
tL.Text = "Config By : " .. jsonname
tL.Size = UDim2.new(0, 400, 0, 50)
tL.Position = UDim2.new(0.5, -200, 0.5, -25)
tL.TextColor3 = Color3.fromRGB(255, 255, 255)
tL.TextScaled = true
tL.BackgroundTransparency = 1
tL.Font = Enum.Font.Gotham
tL.TextTransparency = 1

local TS = game:GetService("TweenService")
local i1 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
local i2 = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
local i3 = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)

local t1 = TS:Create(tL, i1, {TextTransparency = 0})
local t2 = TS:Create(tL, i2, {TextTransparency = 1})
local t3 = TS:Create(tL, i3, {TextTransparency = 0.5})

t1:Play()
t3:Play()
wait(8)
t2:Play()
wait(1)
tL:Destroy()
