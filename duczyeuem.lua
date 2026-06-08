local UIS = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DUCZ_BUTTON"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = player.PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local ImageButton = Instance.new("ImageButton")
ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.1,0,0.15,0)
ImageButton.Size = UDim2.new(0,40,0,40)
ImageButton.Image = "http://www.roblox.com/asset/?id=83190276951914"

local UICorner = Instance.new("UICorner")
UICorner.Parent = ImageButton
UICorner.CornerRadius = UDim.new(1,10)

local dragging = false
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    ImageButton.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

ImageButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = ImageButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

ImageButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)

local Opened = true

ImageButton.MouseButton1Click:Connect(function()
    Opened = not Opened

    pcall(function()
        if Window and Window.Root then
            Window.Root.Visible = Opened
        end
    end)
end)

------------------------------------------------------------
-- 📦 LOAD FLUENT
repeat task.wait() until game:IsLoaded()
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title="DUCZ HUB",
    SubTitle="by realducz",
    TabWidth=157,
    Size=UDim2.fromOffset(450,300),
    Acrylic=true,
    Theme="Dark",
    MinimizeKey=Enum.KeyCode.End
})

-- Tabs
local Tabs = {
    Main0=Window:AddTab({Title="Thông Tin"}),
    Main1=Window:AddTab({Title="Script Main"}),
    Main2=Window:AddTab({Title="Script Hop sever"}),
    Main3=Window:AddTab({Title="Script PVP"})
}

-- Tab 0: Thông Tin
Tabs.Main0:AddButton({
    Title="Youtuber",
    Description="DUCZ ROBLOX",
    Callback=function()
        setclipboard("https://youtube.com/@DUCZGAMERNE")
    end
})

-- Tab 1: Script main
Tabs.Main1:AddButton({
    Title="Vantablack Hub",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tranduykhanh08428-web/V.V/refs/heads/main/VantablackHud.lua.txt"))()
    end
})
Tabs.Main1:AddButton({
    Title="w-azure premium Hub",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaAnarchist/YeuEmNhieuLam/refs/heads/main/w-azure.luau"))()
    end
})
Tabs.Main1:AddButton({
    Title="NatAov HUB",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-AnhTuansitink/NatAov-Hub/refs/heads/main/ILoveYou.lua"))()
    end
})
Tabs.Main1:AddButton({
    Title="Apple Hub",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexHerrySeek/AppleHub/refs/heads/main/loader/main.lua"))()
    end
})
Tabs.Main1:AddButton({
    Title="Speed Hub X",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})
Tabs.Main1:AddButton({
    Title="XETER Hub v1",
    Callback=function()
         getgenv().Version = "V1"
         getgenv().Team = "Marines"
         loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end
})
Tabs.Main1:AddButton({
    Title="Xete HUb V2",
    Callback=function()
        getgenv().Version = "V2"
        getgenv().Team = "Marines"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end
})
Tabs.Main1:AddButton({
    Title="Xeter Hub V3",
    Callback=function()
        getgenv().Version = "V3"
        getgenv().Team = "Marines"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end
})
Tabs.Main1:AddButton({
    Title="Teddy HUB MAIN",
    Callback=function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/e86ed284a22672d29e906214e7bbf8b9.lua"))()
    end
})
Tabs.Main1:AddButton({
    Title="HOHO Hub",
    Callback=function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
    end
})

Tabs.Main1:AddButton({
    Title="Tày hub premium",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VTDROBLOX/Animehub/refs/heads/main/Tayhub-PREMIUM.lua"))()
    end
})
Tabs.Main1:AddButton({
    Title="Xeter Hub V4",
    Callback=function()
        getgenv().Version = "V4"
        getgenv().Team = "Marines"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TlDinhKhoi/Xeter/refs/heads/main/Main.lua"))()
    end
})
Tabs.Main2:AddButton({
    Title="Teddy Hub",
    Callback=function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
    end
})



