-- Gui to Lua
-- Version: 3

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ESPon = Instance.new("TextButton")
local ESPOff = Instance.new("TextButton")
local Bringgun = Instance.new("TextButton")
local ToMurderer = Instance.new("TextButton")
local ToLOBBY = Instance.new("TextButton")
local HIDE = Instance.new("TextButton")
local OPEN = Instance.new("TextButton")
local ToSherrif = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Position = UDim2.new(0.166156977, 0, 0, 0)
Frame.Size = UDim2.new(0, 163, 0, 454)

ESPon.Name = "ESPon"
ESPon.Parent = ScreenGui
ESPon.BackgroundColor3 = Color3.new(0, 1, 0)
ESPon.Position = UDim2.new(0.166156977, 0, -4.41335142e-05, 0)
ESPon.Size = UDim2.new(0, 163, 0, 50)
ESPon.Font = Enum.Font.SourceSans
ESPon.Text = "ESP ON"
ESPon.TextColor3 = Color3.new(0, 0, 0)
ESPon.TextScaled = true
ESPon.TextSize = 14
ESPon.TextWrapped = true

ESPOff.Name = "ESPOff"
ESPOff.Parent = ScreenGui
ESPOff.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
ESPOff.Position = UDim2.new(0.166156977, 0, 0.105935514, 0)
ESPOff.Size = UDim2.new(0, 163, 0, 50)
ESPOff.Font = Enum.Font.SourceSans
ESPOff.Text = "ESP OFF"
ESPOff.TextColor3 = Color3.new(0, 0, 0)
ESPOff.TextScaled = true
ESPOff.TextSize = 14
ESPOff.TextWrapped = true

Bringgun.Name = "Bringgun"
Bringgun.Parent = ScreenGui
Bringgun.BackgroundColor3 = Color3.new(0, 0, 1)
Bringgun.Position = UDim2.new(0.166156977, 0, 0.211999387, 0)
Bringgun.Size = UDim2.new(0, 163, 0, 50)
Bringgun.Font = Enum.Font.SourceSans
Bringgun.Text = "Bring Gun"
Bringgun.TextColor3 = Color3.new(0, 0, 0)
Bringgun.TextScaled = true
Bringgun.TextSize = 14
Bringgun.TextWrapped = true

ToMurderer.Name = "ToMurderer"
ToMurderer.Parent = ScreenGui
ToMurderer.BackgroundColor3 = Color3.new(1, 0.741176, 0.0784314)
ToMurderer.Position = UDim2.new(0.166156977, 0, 0.319503635, 0)
ToMurderer.Size = UDim2.new(0, 163, 0, 50)
ToMurderer.Font = Enum.Font.SourceSans
ToMurderer.Text = "To Murderer"
ToMurderer.TextColor3 = Color3.new(0, 0, 0)
ToMurderer.TextScaled = true
ToMurderer.TextSize = 14
ToMurderer.TextWrapped = true

ToLOBBY.Name = "ToLOBBY"
ToLOBBY.Parent = ScreenGui
ToLOBBY.BackgroundColor3 = Color3.new(1, 1, 1)
ToLOBBY.Position = UDim2.new(0.166156977, 0, 0.425186396, 0)
ToLOBBY.Size = UDim2.new(0, 163, 0, 50)
ToLOBBY.Font = Enum.Font.SourceSans
ToLOBBY.Text = "To Lobby"
ToLOBBY.TextColor3 = Color3.new(0, 0, 0)
ToLOBBY.TextScaled = true
ToLOBBY.TextSize = 14
ToLOBBY.TextWrapped = true

HIDE.Name = "HIDE"
HIDE.Parent = ScreenGui
HIDE.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
HIDE.Position = UDim2.new(0.166156977, 0, 0.724320531, 0)
HIDE.Size = UDim2.new(0, 163, 0, 56)
HIDE.Font = Enum.Font.SourceSans
HIDE.Text = "HIDE"
HIDE.TextColor3 = Color3.new(0, 0, 0)
HIDE.TextScaled = true
HIDE.TextSize = 14
HIDE.TextWrapped = true

OPEN.Name = "OPEN"
OPEN.Parent = ScreenGui
OPEN.Active = false
OPEN.BackgroundColor3 = Color3.new(0.0117647, 1, 0.0117647)
OPEN.Position = UDim2.new(0, 0, 0.0418502204, 0)
OPEN.Size = UDim2.new(0, 116, 0, 19)
OPEN.Visible = false
OPEN.Font = Enum.Font.SourceSans
OPEN.Text = "OPEN"
OPEN.TextColor3 = Color3.new(0, 0, 0)
OPEN.TextScaled = true
OPEN.TextSize = 14
OPEN.TextWrapped = true

ToSherrif.Name = "ToSherrif"
ToSherrif.Parent = ScreenGui
ToSherrif.BackgroundColor3 = Color3.new(1, 0.741176, 0.0784314)
ToSherrif.Position = UDim2.new(0.166156977, 0, 0.533537149, 0)
ToSherrif.Size = UDim2.new(0, 163, 0, 50)
ToSherrif.Font = Enum.Font.SourceSans
ToSherrif.Text = "To Sherrif"
ToSherrif.TextColor3 = Color3.new(0, 0, 0)
ToSherrif.TextScaled = true
ToSherrif.TextSize = 14
ToSherrif.TextWrapped = true

-- Scripts:

local function XVGFY_fake_script() -- ScreenGui.LocalScript
local script = Instance.new('LocalScript', ScreenGui)

-- FUNCTIONS
function murderer()
for i, v in pairs(game.Players:children()) do
if  v.Backpack:findFirstChild("Knife") or v.Character:findFirstChild("Knife") then
return v
end
end
end

function sherrif()
for i, v in pairs(game.Players:children()) do
if  v.Backpack:findFirstChild("Gun") or v.Character:findFirstChild("Gun") then
return v
end
end
end


-- ESP ON BUTTON

script.Parent.ESPon.MouseButton1Down:connect(function()
for i, v in pairs(game.Players:children()) do
if v.Backpack:findFirstChild("Knife") or v.Character:findFirstChild("Knife") then
local esp = Instance.new("BoxHandleAdornment")
esp.Parent = v.Character.Head
esp.Size = Vector3.new(1,1,1)
esp.Color3 = Color3.new(255, 0, 0)
esp.AlwaysOnTop = true
esp.Adornee = v.Character.Head
esp.Visible = true
esp.ZIndex = 2

elseif v.Backpack:findFirstChild("Gun") or v.Character:findFirstChild("Gun") then
local esp = Instance.new("BoxHandleAdornment")
esp.Parent = v.Character.Head
esp.Size = Vector3.new(1,1,1)
esp.Color3 = Color3.new(0, 0, 255)
esp.AlwaysOnTop = true
esp.Adornee = v.Character.Head
esp.Visible = true
esp.ZIndex = 2
else
local esp = Instance.new("BoxHandleAdornment")
esp.Parent = v.Character.Head
esp.Size = Vector3.new(1,1,1)
esp.Color3 = Color3.new(0, 255, 0)
esp.AlwaysOnTop = true
esp.Adornee = v.Character.Head
esp.Visible = true
esp.ZIndex = 2
end

end

end)

-- ESP OFF BUTTON

script.Parent.ESPOff.MouseButton1Down:connect(function()
for i, v in pairs(game.Players:children()) do
for i, a in pairs(v.Character.Head:children()) do
if a.ClassName == "BoxHandleAdornment" then
a:remove()
end
end
end
end)

-- BRING GUN BUTTON

script.Parent.Bringgun.MouseButton1Down:connect(function()
if game.Workspace:FindFirstChild("GunDrop") then
game.Workspace.GunDrop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end)

-- TO LOBBY BUTTON

script.Parent.ToLOBBY.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Lobby.Spawns.SpawnLocation.CFrame
end)

-- TO Murderer Button

script.parent.ToMurderer.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = murderer().Character.HumanoidRootPart.CFrame
end)


-- TO Sherriff button

script.Parent.ToSherrif.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = sherrif().Character.HumanoidRootPart.CFrame
end)

-- Hide Button

script.Parent.HIDE.MouseButton1Down:connect(function()
for i, v in pairs(script.Parent:children()) do
if v.Name ~= "OPEN" then
v.Visible = false
v.Active = false

else
v.Active = true
v.Visible = true
end
end
end)

-- Open Button

script.Parent.OPEN.MouseButton1Down:connect(function()
for i, v in pairs(script.Parent:children()) do
if v.Name ~= "OPEN" then
v.Visible = true
v.Active = true

else
v.Active = false
v.Visible = false
end
end
end)





end
coroutine.wrap(XVGFY_fake_script)()
