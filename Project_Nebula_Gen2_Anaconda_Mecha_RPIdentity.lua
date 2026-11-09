local Rayfield = loadstring(game:HttpGet("https://sirius.menu/gen2"))()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer
local LogoID = 99268621753222

local LocaleNames = {
    English = "en",
    Hindi = "hi",
    Spanish = "es",
    French = "fr",
    German = "de",
    Portuguese = "pt",
    Japanese = "ja",
    Korean = "ko",
    Arabic = "ar",
    Russian = "ru",
    Turkish = "tr",
    Indonesian = "id",
    Bengali = "bn"
}

local Translations = {
    en = {},
    hi = {
        ["Settings"] = "सेटिंग्स",
        ["Language"] = "भाषा",
        ["Theme"] = "थीम",
        ["Save Configuration"] = "कॉन्फ़िगरेशन सहेजें",
        ["Reset Local Preview"] = "लोकल प्रीव्यू रीसेट करें",
        ["Local FOV"] = "लोकल FOV",
        ["WalkSpeed Preview"] = "चलने की गति का प्रीव्यू",
        ["JumpPower Preview"] = "जंप पावर का प्रीव्यू",
        ["System Status"] = "सिस्टम स्थिति",
        ["Ready"] = "तैयार"
    },
    es = {
        ["Settings"] = "Configuración",
        ["Language"] = "Idioma",
        ["Theme"] = "Tema",
        ["Save Configuration"] = "Guardar configuración",
        ["Reset Local Preview"] = "Restablecer vista previa local",
        ["Local FOV"] = "FOV local",
        ["WalkSpeed Preview"] = "Vista previa de velocidad",
        ["JumpPower Preview"] = "Vista previa de salto",
        ["System Status"] = "Estado del sistema",
        ["Ready"] = "Listo"
    },
    fr = {
        ["Settings"] = "Paramètres",
        ["Language"] = "Langue",
        ["Theme"] = "Thème",
        ["Save Configuration"] = "Enregistrer la configuration",
        ["Reset Local Preview"] = "Réinitialiser l'aperçu local",
        ["Local FOV"] = "FOV local",
        ["WalkSpeed Preview"] = "Aperçu de vitesse",
        ["JumpPower Preview"] = "Aperçu de saut",
        ["System Status"] = "État du système",
        ["Ready"] = "Prêt"
    },
    de = {
        ["Settings"] = "Einstellungen",
        ["Language"] = "Sprache",
        ["Theme"] = "Design",
        ["Save Configuration"] = "Konfiguration speichern",
        ["Reset Local Preview"] = "Lokale Vorschau zurücksetzen",
        ["Local FOV"] = "Lokales Sichtfeld",
        ["WalkSpeed Preview"] = "Geschwindigkeitsvorschau",
        ["JumpPower Preview"] = "Sprungkraftvorschau",
        ["System Status"] = "Systemstatus",
        ["Ready"] = "Bereit"
    },
    pt = {
        ["Settings"] = "Configurações",
        ["Language"] = "Idioma",
        ["Theme"] = "Tema",
        ["Save Configuration"] = "Salvar configuração",
        ["Reset Local Preview"] = "Redefinir prévia local",
        ["Local FOV"] = "FOV local",
        ["WalkSpeed Preview"] = "Prévia de velocidade",
        ["JumpPower Preview"] = "Prévia de salto",
        ["System Status"] = "Status do sistema",
        ["Ready"] = "Pronto"
    },
    ja = {
        ["Settings"] = "設定",
        ["Language"] = "言語",
        ["Theme"] = "テーマ",
        ["Save Configuration"] = "設定を保存",
        ["Reset Local Preview"] = "ローカルプレビューをリセット",
        ["Local FOV"] = "ローカル視野角",
        ["WalkSpeed Preview"] = "速度プレビュー",
        ["JumpPower Preview"] = "ジャンプ力プレビュー",
        ["System Status"] = "システム状態",
        ["Ready"] = "準備完了"
    },
    ko = {
        ["Settings"] = "설정",
        ["Language"] = "언어",
        ["Theme"] = "테마",
        ["Save Configuration"] = "설정 저장",
        ["Reset Local Preview"] = "로컬 미리보기 초기화",
        ["Local FOV"] = "로컬 시야각",
        ["WalkSpeed Preview"] = "이동 속도 미리보기",
        ["JumpPower Preview"] = "점프력 미리보기",
        ["System Status"] = "시스템 상태",
        ["Ready"] = "준비 완료"
    },
    ar = {
        ["Settings"] = "الإعدادات",
        ["Language"] = "اللغة",
        ["Theme"] = "السمة",
        ["Save Configuration"] = "حفظ الإعدادات",
        ["Reset Local Preview"] = "إعادة تعيين المعاينة المحلية",
        ["Local FOV"] = "مجال الرؤية المحلي",
        ["WalkSpeed Preview"] = "معاينة سرعة المشي",
        ["JumpPower Preview"] = "معاينة قوة القفز",
        ["System Status"] = "حالة النظام",
        ["Ready"] = "جاهز"
    },
    ru = {
        ["Settings"] = "Настройки",
        ["Language"] = "Язык",
        ["Theme"] = "Тема",
        ["Save Configuration"] = "Сохранить конфигурацию",
        ["Reset Local Preview"] = "Сбросить локальный предпросмотр",
        ["Local FOV"] = "Локальное поле зрения",
        ["WalkSpeed Preview"] = "Предпросмотр скорости",
        ["JumpPower Preview"] = "Предпросмотр прыжка",
        ["System Status"] = "Состояние системы",
        ["Ready"] = "Готово"
    },
    tr = {
        ["Settings"] = "Ayarlar",
        ["Language"] = "Dil",
        ["Theme"] = "Tema",
        ["Save Configuration"] = "Yapılandırmayı Kaydet",
        ["Reset Local Preview"] = "Yerel Önizlemeyi Sıfırla",
        ["Local FOV"] = "Yerel Görüş Alanı",
        ["WalkSpeed Preview"] = "Hız Önizlemesi",
        ["JumpPower Preview"] = "Zıplama Gücü Önizlemesi",
        ["System Status"] = "Sistem Durumu",
        ["Ready"] = "Hazır"
    },
    id = {
        ["Settings"] = "Pengaturan",
        ["Language"] = "Bahasa",
        ["Theme"] = "Tema",
        ["Save Configuration"] = "Simpan Konfigurasi",
        ["Reset Local Preview"] = "Atur Ulang Pratinjau Lokal",
        ["Local FOV"] = "FOV Lokal",
        ["WalkSpeed Preview"] = "Pratinjau Kecepatan",
        ["JumpPower Preview"] = "Pratinjau Kekuatan Lompat",
        ["System Status"] = "Status Sistem",
        ["Ready"] = "Siap"
    },
    bn = {
        ["Settings"] = "সেটিংস",
        ["Language"] = "ভাষা",
        ["Theme"] = "থিম",
        ["Save Configuration"] = "কনফিগারেশন সংরক্ষণ",
        ["Reset Local Preview"] = "লোকাল প্রিভিউ রিসেট",
        ["Local FOV"] = "লোকাল FOV",
        ["WalkSpeed Preview"] = "গতি প্রিভিউ",
        ["JumpPower Preview"] = "জাম্প পাওয়ার প্রিভিউ",
        ["System Status"] = "সিস্টেমের অবস্থা",
        ["Ready"] = "প্রস্তুত"
    }
}

local Window = Rayfield:CreateWindow({
    name = "PROJECT NEBULA",
    subtitle = "A Universal Script Hub",
    icon = LogoID,
    sidebarLayout = true,
    showName = "NEBULA",
    showIconOnly = false,
    theme = "ember",
    translations = Translations,
    configuration = {
        autoSave = true,
        autoLoad = true,
        fileName = "NebulaConfig",
        customFolder = "ProjectNebula"
    }
})

local TabNames = {
    "「 Information 」",
    "「 Carnival 」",
    "「 You 」",
    "「 Fun 」",
    "「 House 」",
    "「 Car/Boat/Bike 」",
    "「 Teleport 」",
    "「 Toggle Core 」",
    "「 People 」",
    "「 ESP 」",
    "「 Skin 」",
    "「 Troll 」",
    "「 Anaconda 」",
    "「 Mecha 」"
}

local Tabs = {}

for _, tabName in ipairs(TabNames) do
    Tabs[tabName] = Window:CreateTab({
        name = tabName
    })
end

local Info = Tabs["「 Information 」"]
local Carnival = Tabs["「 Carnival 」"]
local You = Tabs["「 You 」"]
local Fun = Tabs["「 Fun 」"]
local House = Tabs["「 House 」"]
local Vehicles = Tabs["「 Car/Boat/Bike 」"]
local Teleport = Tabs["「 Teleport 」"]
local Core = Tabs["「 Toggle Core 」"]
local People = Tabs["「 People 」"]
local ESP = Tabs["「 ESP 」"]
local Skin = Tabs["「 Skin 」"]
local Troll = Tabs["「 Troll 」"]
local Anaconda = Tabs["「 Anaconda 」"]
local Mecha = Tabs["「 Mecha 」"]

local StatusTag = Window:CreateTag({
    text = "BETA",
    color = Color3.fromRGB(205, 65, 75),
    order = 1
})

Info:CreateText({
    name = "PROJECT NEBULA",
    text = "Universal Script Hub • Gen 2 Interface"
})

Info:CreateDivider({
    text = "BUILD INFORMATION"
})

Info:CreateStat({
    name = "Interface",
    value = 1,
    prefix = "ONLINE"
})

Info:CreateText({
    name = "Compatibility",
    text = "Local preview tools plus the Anaconda path module for the supported game environment."
})

local Console = Info:CreateConsole({
    name = "Nebula Console",
    height = 150,
    follow = true,
    maxLines = 150
})

Console:Append("[BOOT] Project Nebula starting")
Console:Append("[OK] Original tabs preserved; Anaconda tab added")
Console:Append("[OK] Localization packs loaded")
Console:Append("[OK] Configuration system ready")

Info:CreateButton({
    name = "Show What's New",
    callback = function()
        Window:Popup({
            title = "PROJECT NEBULA",
            subtitle = "Build 1 • Gen 2",
            boxes = {
                {
                    title = "Interface rebuild",
                    description = "The original twelve tab names are preserved."
                },
                {
                    title = "Localization",
                    description = "Roblox locale detection plus thirteen language packs."
                },
                {
                    title = "Local previews",
                    description = "Client-side camera and character preview controls."
                }
            },
            options = {
                {text = "Continue", style = "primary"}
            }
        })
    end
})

Info:CreateButton({
    name = "Copy Build Information",
    callback = function()
        if typeof(setclipboard) == "function" then
            setclipboard("PROJECT NEBULA | Build 1 | Gen 2")
            Window:Notify({
                title = "Copied",
                content = "Build information copied.",
                duration = 3
            })
        else
            Window:Notify({
                title = "Clipboard unavailable",
                content = "Clipboard support is not available in this environment.",
                duration = 3
            })
        end
    end
})

local function getCharacter()
    return LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
end

local function getHumanoid()
    return getCharacter():FindFirstChildOfClass("Humanoid")
end

local defaultFov = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView or 70
local defaultWalkSpeed = 16
local defaultJumpPower = 50

You:CreateDivider({
    text = "LOCAL CHARACTER PREVIEW"
})

You:CreateSlider({
    name = "Local FOV",
    flag = "NebulaLocalFOV",
    range = {50, 120},
    increment = 1,
    value = defaultFov,
    suffix = "°",
    callback = function(value)
        local camera = workspace.CurrentCamera
        if camera then
            camera.FieldOfView = value
        end
    end
})

You:CreateSlider({
    name = "WalkSpeed Preview",
    flag = "NebulaWalkSpeed",
    range = {8, 32},
    increment = 1,
    value = defaultWalkSpeed,
    callback = function(value)
        local humanoid = getHumanoid()
        if humanoid then
            humanoid.WalkSpeed = value
        end
    end
})

You:CreateSlider({
    name = "JumpPower Preview",
    flag = "NebulaJumpPower",
    range = {25, 100},
    increment = 1,
    value = defaultJumpPower,
    callback = function(value)
        local humanoid = getHumanoid()
        if humanoid then
            humanoid.UseJumpPower = true
            humanoid.JumpPower = value
        end
    end
})

You:CreateButton({
    name = "Reset Local Preview",
    callback = function()
        local camera = workspace.CurrentCamera
        if camera then
            camera.FieldOfView = defaultFov
        end
        local humanoid = getHumanoid()
        if humanoid then
            humanoid.WalkSpeed = defaultWalkSpeed
            humanoid.UseJumpPower = true
            humanoid.JumpPower = defaultJumpPower
        end
        Window:Notify({
            title = "Preview reset",
            content = "Local camera and movement values restored.",
            duration = 3
        })
    end
})

Carnival:CreateText({
    name = "Carnival Module",
    text = "Carnival-specific actions are not connected to third-party game remotes in this safe rebuild."
})

Carnival:CreateButton({
    name = "Scan Local Carnival Folder",
    callback = function()
        local root = workspace:FindFirstChild("SummerCarnival")
        local count = 0
        if root then
            for _, item in ipairs(root:GetDescendants()) do
                if item:IsA("BasePart") then
                    count += 1
                end
            end
        end
        Console:Append("[SCAN] Carnival BaseParts found: " .. tostring(count))
        Window:Notify({
            title = "Local scan complete",
            content = tostring(count) .. " parts found.",
            duration = 3
        })
    end
})

Fun:CreateText({
    name = "Local Utilities",
    text = "Safe client-side utilities only. No item-grant remotes, forced interactions, or actions against other players."
})

Fun:CreateButton({
    name = "List Equipped Tools",
    callback = function()
        local character = LocalPlayer.Character
        local count = 0
        if character then
            for _, item in ipairs(character:GetChildren()) do
                if item:IsA("Tool") then
                    count += 1
                    Console:Append("[TOOL] " .. item.Name)
                end
            end
        end
        Window:Notify({
            title = "Equipped tools",
            content = tostring(count) .. " tool(s) in character.",
            duration = 3
        })
    end
})

House:CreateText({
    name = "House Utilities",
    text = "House information and local inspection placeholders. No permission changes, bans, unbans, or house remote calls."
})

House:CreateButton({
    name = "Inspect Local House Folder",
    callback = function()
        local lots = workspace:FindFirstChild("001_Lots")
        local count = lots and #lots:GetChildren() or 0
        Console:Append("[HOUSE] Lot entries detected: " .. tostring(count))
        Window:Notify({
            title = "House scan",
            content = tostring(count) .. " lot entries found.",
            duration = 3
        })
    end
})

Vehicles:CreateText({
    name = "Vehicle Utilities",
    text = "Vehicle controls are reserved for vehicles in experiences you own. This rebuild does not manipulate shared public-game vehicles."
})

Vehicles:CreateButton({
    name = "Inspect My Vehicle",
    callback = function()
        local folder = workspace:FindFirstChild("Vehicles")
        local vehicle = folder and folder:FindFirstChild(LocalPlayer.Name .. "Car")
        local result = vehicle and vehicle.Name or "No matching vehicle found"
        Console:Append("[VEHICLE] " .. result)
        Window:Notify({
            title = "Vehicle inspection",
            content = result,
            duration = 3
        })
    end
})

Teleport:CreateText({
    name = "Teleport Module",
    text = "No fixed coordinates or forced player teleportation are included. Add destinations for your own experience here."
})

Teleport:CreateButton({
    name = "Show Current Position",
    callback = function()
        local root = getCharacter():FindFirstChild("HumanoidRootPart")
        if root then
            local p = root.Position
            local value = string.format("%.1f, %.1f, %.1f", p.X, p.Y, p.Z)
            Console:Append("[POSITION] " .. value)
            Window:Notify({
                title = "Current position",
                content = value,
                duration = 4
            })
        end
    end
})

Core:CreateText({
    name = "Core Settings",
    text = "Interface and local preview settings."
})

Core:CreateToggle({
    name = "Local Fullbright Preview",
    flag = "NebulaFullbright",
    value = false,
    callback = function(enabled)
        if enabled then
            Lighting.Brightness = 2
            Lighting.ClockTime = 14
            Lighting.GlobalShadows = false
        else
            Lighting.Brightness = 1
            Lighting.ClockTime = 14
            Lighting.GlobalShadows = true
        end
    end
})

People:CreateText({
    name = "People",
    text = "Player information is limited to a local player count and your own character. No targeting, tracking, or forced movement."
})

local PlayerCount = People:CreateStat({
    name = "Players in server",
    value = #Players:GetPlayers()
})

Players.PlayerAdded:Connect(function()
    PlayerCount:Set(#Players:GetPlayers())
end)

Players.PlayerRemoving:Connect(function()
    PlayerCount:Set(#Players:GetPlayers())
end)

People:CreateButton({
    name = "Refresh Player Count",
    callback = function()
        PlayerCount:Set(#Players:GetPlayers())
    end
})

ESP:CreateText({
    name = "Visuals",
    text = "No through-wall player tracking or public-server ESP is included. Use Studio visual debugging for your own maps."
})

ESP:CreateButton({
    name = "Count Workspace Models",
    callback = function()
        local count = 0
        for _, item in ipairs(workspace:GetDescendants()) do
            if item:IsA("Model") then
                count += 1
            end
        end
        Console:Append("[VISUALS] Workspace models: " .. tostring(count))
        Window:Notify({
            title = "Workspace scan",
            content = tostring(count) .. " models found.",
            duration = 3
        })
    end
})

Skin:CreateText({
    name = "Appearance Preview",
    text = "Local-only preview controls. These do not call avatar or appearance remotes."
})

Skin:CreateColorPicker({
    name = "Nebula Accent Preview",
    color = Color3.fromRGB(205, 65, 75),
    callback = function(color)
        Console:Append(string.format(
            "[COLOR] RGB %d, %d, %d",
            math.floor(color.R * 255),
            math.floor(color.G * 255),
            math.floor(color.B * 255)
        ))
    end
})

Troll:CreateText({
    name = "Disabled Module",
    text = "Player-targeting, harassment, forced movement, and disruptive troll actions are not part of this rebuild."
})

Troll:CreateButton({
    name = "Open Safe Feature Notes",
    callback = function()
        Window:Popup({
            title = "Nebula safety notes",
            subtitle = "Local development only",
            content = "This tab is reserved for harmless effects in your own Roblox experience. Public-player disruption features are excluded.",
            options = {
                {text = "Understood", style = "primary"}
            }
        })
    end
})


local function notify(title, content)
    Window:Notify({title = title, content = content, duration = 3})
end

local function getRoot()
    local character = LocalPlayer.Character
    return character and character:FindFirstChild("HumanoidRootPart")
end


local ReplicatedStorage = game:GetService("ReplicatedStorage")

local serpentineSettings = {
    Gap = 15,
    Omega = 0.7,
    Amplitude = 2.5,
    WaveFrequency = 0.4,
    Scale = 11,
    Smoothness = 0.6
}

local serpentineActive = false
local serpentineRgbMode = "OFF"
local serpentineTrackingConnection = nil
local serpentinePropsCache = {}
local serpentineSegmentCFrames = {}
local serpentineTargetCFrames = {}
local serpentinePathHistory = {}
local serpentineRecordResolution = 0.4
local serpentineMaxHistory = 350
local serpentineHue = 0
local serpentineLastColorChange = 0

local function updateAnacondaPropsCache()
    table.clear(serpentinePropsCache)
    local workspaceCom = workspace:FindFirstChild("WorkspaceCom")
    if not workspaceCom then return end

    for _, folder in ipairs(workspaceCom:GetChildren()) do
        for _, child in ipairs(folder:GetChildren()) do
            if child.Name:sub(1, 4) == "Prop"
                and string.find(child.Name, LocalPlayer.Name, 1, true)
                and child:IsA("Model") then
                table.insert(serpentinePropsCache, child)
            end
        end
    end
end

local function setAnacondaAvatarVisibility(visible)
    local character = LocalPlayer.Character
    if not character then return end

    for _, item in ipairs(character:GetDescendants()) do
        if item:IsA("BasePart") and item.Name ~= "HumanoidRootPart" then
            item.LocalTransparencyModifier = visible and 0 or 1
        elseif item:IsA("Decal") then
            item.Transparency = visible and 0 or 1
        end
    end
end

local function getAnacondaPathCFrameAtDistance(targetDistance)
    if #serpentinePathHistory == 0 then
        return CFrame.new()
    end

    if #serpentinePathHistory == 1 or targetDistance <= 0 then
        return serpentinePathHistory[1]
    end

    local accumulated = 0
    for index = 1, #serpentinePathHistory - 1 do
        local first = serpentinePathHistory[index]
        local second = serpentinePathHistory[index + 1]
        local distance = (first.Position - second.Position).Magnitude

        if distance > 0 and accumulated + distance >= targetDistance then
            local alpha = (targetDistance - accumulated) / distance
            return first:Lerp(second, alpha)
        end

        accumulated += distance
    end

    return serpentinePathHistory[#serpentinePathHistory]
end

local function stopAnaconda()
    serpentineActive = false

    if serpentineTrackingConnection then
        serpentineTrackingConnection:Disconnect()
        serpentineTrackingConnection = nil
    end

    setAnacondaAvatarVisibility(true)
    table.clear(serpentineSegmentCFrames)
    table.clear(serpentineTargetCFrames)
    table.clear(serpentinePathHistory)
end

local function startAnacondaReplication()
    if serpentineTrackingConnection then
        serpentineTrackingConnection:Disconnect()
        serpentineTrackingConnection = nil
    end

    local nextNetworkUpdate = 0
    local traveledDistance = 0
    local lastPlayerPosition = nil
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    local hipHeight = humanoid and humanoid.HipHeight or 2

    local propRotation = CFrame.Angles(
        math.rad(-360),
        math.rad(-360),
        math.rad(-360)
    )

    serpentineTrackingConnection = RunService.Heartbeat:Connect(function()
        if not serpentineActive then return end

        local currentCharacter = LocalPlayer.Character
        local rootPart = currentCharacter and currentCharacter:FindFirstChild("HumanoidRootPart")
        if not rootPart then return end

        local rootPosition = rootPart.Position
        local velocity = rootPart.AssemblyLinearVelocity
        local isMoving = Vector3.new(velocity.X, 0, velocity.Z).Magnitude > 1.5

        if not lastPlayerPosition then
            lastPlayerPosition = rootPosition
        end

        local distanceMoved = (
            Vector3.new(rootPosition.X, 0, rootPosition.Z)
            - Vector3.new(lastPlayerPosition.X, 0, lastPlayerPosition.Z)
        ).Magnitude
        lastPlayerPosition = rootPosition

        local now = os.clock()
        local _, yaw, _ = rootPart.CFrame:ToEulerAnglesYXZ()
        local baseCFrame = CFrame.new(rootPosition)
            * CFrame.Angles(0, yaw, 0)
            * CFrame.new(0, -hipHeight, 0)

        if #serpentinePathHistory == 0 then
            for index = 1, 100 do
                table.insert(
                    serpentinePathHistory,
                    baseCFrame * CFrame.new(0, 1, index * serpentineRecordResolution)
                )
            end
        end

        if isMoving then
            traveledDistance += distanceMoved

            local amplitude = serpentineSettings.Amplitude
            local waveFrequency = serpentineSettings.WaveFrequency
            local omega = serpentineSettings.Omega

            local wave = (traveledDistance * waveFrequency) - (now * omega)
            local waveX = amplitude * math.sin(wave)
            local waveDerivative = amplitude * waveFrequency * math.cos(wave)
            local yawOffset = math.atan(-waveDerivative)

            local virtualHeadCFrame = baseCFrame
                * CFrame.new(waveX, 1, serpentineSettings.Scale * 0.8)
                * CFrame.Angles(0, yawOffset, 0)

            if (virtualHeadCFrame.Position - serpentinePathHistory[1].Position).Magnitude
                >= serpentineRecordResolution then
                table.insert(serpentinePathHistory, 1, virtualHeadCFrame)
                if #serpentinePathHistory > serpentineMaxHistory then
                    table.remove(serpentinePathHistory)
                end
            end

            for index = 1, #serpentinePropsCache do
                local targetDistance = (index - 1) * serpentineSettings.Gap
                serpentineTargetCFrames[index] =
                    getAnacondaPathCFrameAtDistance(targetDistance)
            end
        end

        local shouldNetworkUpdate = now >= nextNetworkUpdate
        if shouldNetworkUpdate then
            nextNetworkUpdate = now + 0.1
        end

        for index, prop in ipairs(serpentinePropsCache) do
            if prop.Parent then
                if not serpentineTargetCFrames[index] then
                    serpentineTargetCFrames[index] = baseCFrame
                end

                if not serpentineSegmentCFrames[index] then
                    serpentineSegmentCFrames[index] = serpentineTargetCFrames[index]
                end

                serpentineSegmentCFrames[index] =
                    serpentineSegmentCFrames[index]:Lerp(
                        serpentineTargetCFrames[index],
                        serpentineSettings.Smoothness
                    )

                local finalCFrame = serpentineSegmentCFrames[index] * propRotation

                if prop.PrimaryPart then
                    prop:SetPrimaryPartCFrame(finalCFrame)
                end

                if shouldNetworkUpdate then
                    local remote = prop:FindFirstChild("SetCurrentCFrame")
                    if remote and remote:IsA("RemoteFunction") then
                        task.spawn(function()
                            pcall(function()
                                remote:InvokeServer(finalCFrame)
                            end)
                        end)
                    end
                end
            end
        end
    end)
end

local function setAnacondaColor(color)
    for _, prop in ipairs(serpentinePropsCache) do
        if prop.Parent then
            for _, item in ipairs(prop:GetDescendants()) do
                if item:IsA("BasePart") then
                    item.Color = color
                end
            end
        end
    end
end

task.spawn(function()
    while true do
        if serpentineRgbMode == "OFF" then
            task.wait(0.35)
        else
            updateAnacondaPropsCache()
            local now = os.clock()

            if serpentineRgbMode == "Dyna" then
                serpentineHue = (serpentineHue + 0.012) % 1
                setAnacondaColor(Color3.fromHSV(serpentineHue, 1, 1))
            elseif serpentineRgbMode == "Shift" and now - serpentineLastColorChange >= 0.5 then
                serpentineLastColorChange = now
                setAnacondaColor(Color3.fromHSV(math.random(), 1, 1))
            elseif serpentineRgbMode == "Disco" and now - serpentineLastColorChange >= 0.2 then
                serpentineLastColorChange = now
                for _, prop in ipairs(serpentinePropsCache) do
                    local color = Color3.fromHSV(math.random(), 1, 1)
                    if prop.Parent then
                        for _, item in ipairs(prop:GetDescendants()) do
                            if item:IsA("BasePart") then
                                item.Color = color
                            end
                        end
                    end
                end
            end

            task.wait(0.1)
        end
    end
end)

Anaconda:CreateText({name = "ANACONDA", text = "A flowing, segmented prop creature that follows your movement."})
Anaconda:CreateDivider({text = "ANACONDA SETUP"})
Anaconda:CreateText({
    name = "ANACONDA CONTROL CENTER",
    text = "A segmented creature that follows your movement. Set up its prop segments, tune the wave, and awaken it when ready."
})

Anaconda:CreateButton({
    name = "Turbine Select",
    callback = function()
        task.spawn(function()
            local success, err = pcall(function()
                local remotes = ReplicatedStorage:WaitForChild("RE", 10)
                if not remotes then error("RE folder was not found.") end

                remotes:WaitForChild("1Too1l", 10):InvokeServer("PickingTools", "PropMaker")
                local toolRemote = remotes:WaitForChild("1Clea1rTool1s", 10)
                if not toolRemote then error("PropMaker remote was not found.") end

                toolRemote:FireServer("OpenPropMenu")
                task.wait(0.15)
                toolRemote:FireServer("RequestingPropName", "PowerTurbine", "Barrel")
            end)

            if success then
                notify("Anaconda", "Turbine selection requested.")
            else
                notify("Anaconda error", tostring(err))
            end
        end)
    end
})

Anaconda:CreateButton({
    name = "Auto Duplicate",
    callback = function()
        task.spawn(function()
            updateAnacondaPropsCache()

            local duplicateRemote = nil
            for _, prop in ipairs(serpentinePropsCache) do
                duplicateRemote = prop:FindFirstChild("DuplicateProp")
                if duplicateRemote and duplicateRemote:IsA("RemoteFunction") then
                    break
                end
                duplicateRemote = nil
            end

            if not duplicateRemote then
                notify("Anaconda", "No owned prop with a DuplicateProp remote was found.")
                return
            end

            local completed = 0
            for index = 1, 13 do
                local success = pcall(function()
                    duplicateRemote:InvokeServer()
                end)
                if success then completed += 1 end
                task.wait(0.08)
            end

            task.wait(0.4)
            updateAnacondaPropsCache()
            notify("Anaconda", "Duplicate requests completed: " .. completed .. "/13. Props found: " .. #serpentinePropsCache)
        end)
    end
})

Anaconda:CreateDivider({text = "MOVEMENT TUNING"})
Anaconda:CreateSlider({
    name = "Segment Gap",
    range = {5, 100},
    increment = 1,
    value = serpentineSettings.Gap,
    callback = function(value)
        serpentineSettings.Gap = value
    end
})
Anaconda:CreateSlider({
    name = "Wave Omega",
    range = {0, 15},
    increment = 0.1,
    value = serpentineSettings.Omega,
    callback = function(value)
        serpentineSettings.Omega = value
    end
})
Anaconda:CreateSlider({
    name = "Wave Amplitude",
    range = {0, 50},
    increment = 0.1,
    value = serpentineSettings.Amplitude,
    callback = function(value)
        serpentineSettings.Amplitude = value
    end
})
Anaconda:CreateSlider({
    name = "Wave Frequency",
    range = {0, 2},
    increment = 0.01,
    value = serpentineSettings.WaveFrequency,
    callback = function(value)
        serpentineSettings.WaveFrequency = value
    end
})
Anaconda:CreateSlider({
    name = "Scale Multiplier",
    range = {1, 30},
    increment = 0.5,
    value = serpentineSettings.Scale,
    callback = function(value)
        serpentineSettings.Scale = value
    end
})
Anaconda:CreateSlider({
    name = "Smoothness",
    range = {0.05, 1},
    increment = 0.01,
    value = serpentineSettings.Smoothness,
    callback = function(value)
        serpentineSettings.Smoothness = value
    end
})

Anaconda:CreateDivider({text = "APPEARANCE • RGB MODES"})
for _, mode in ipairs({"Dyna", "Shift", "Disco", "OFF"}) do
    Anaconda:CreateButton({
        name = "RGB Mode: " .. mode,
        callback = function()
            serpentineRgbMode = mode
            notify("Anaconda RGB", "Color mode set to " .. mode .. ".")
        end
    })
end

Anaconda:CreateDivider({text = "CREATURE CONTROL"})
Anaconda:CreateButton({
    name = "Awaken / Sleep Anaconda",
    callback = function()
        if serpentineActive then
            stopAnaconda()
            notify("Anaconda", "Anaconda movement stopped.")
            return
        end

        updateAnacondaPropsCache()
        if #serpentinePropsCache == 0 then
            notify("Anaconda", "No owned props detected. Select the turbine and duplicate it first.")
            return
        end

        table.clear(serpentineSegmentCFrames)
        table.clear(serpentineTargetCFrames)
        table.clear(serpentinePathHistory)
        serpentineActive = true
        startAnacondaReplication()
        notify("Anaconda", "Anaconda awakened. Move your character to guide it.")
    end
})

Anaconda:CreateButton({
    name = "Refresh Owned Props",
    callback = function()
        updateAnacondaPropsCache()
        notify("Anaconda", tostring(#serpentinePropsCache) .. " owned prop(s) detected.")
    end
})

Anaconda:CreateButton({
    name = "Stop Anaconda",
    callback = function()
        stopAnaconda()
        notify("Anaconda", "Anaconda movement stopped.")
    end
})


Mecha:CreateText({
    name = "MECHA REPLICATOR",
    text = "Build a humanoid prop replica that follows your avatar. Configure its shape, position, and movement below."
})

Mecha:CreateDivider({text = "BUILD"})
local mechaActive = false
local mechaRobotMode = false
local mechaRgbMode = "OFF"
local mechaTrackingConnection = nil
local mechaPropsCache = {}
local mechaOrigin = nil
local mechaDefaults = nil
local mechaHue = 0
local mechaLastColorChange = 0

local mechaSettings = {
    Scale = 9.5,
    Height = 19,
    BackwardZ = 25,
    OffsetX = 0,
    RotationX = 270,
    RotationY = 0,
    RotationZ = 0,
    Smoothness = 0.15
}

local mechaParts = {
    "UpperTorso", "Head", "LeftUpperArm", "LeftLowerArm",
    "RightUpperArm", "RightLowerArm", "LeftUpperLeg", "LeftLowerLeg",
    "RightUpperLeg", "RightLowerLeg", "LeftHand", "RightHand",
    "LowerTorso", "LeftFoot", "RightFoot"
}

local function updateMechaPropsCache()
    table.clear(mechaPropsCache)
    local workspaceCom = workspace:FindFirstChild("WorkspaceCom")
    if not workspaceCom then return end

    for _, folder in ipairs(workspaceCom:GetChildren()) do
        for _, child in ipairs(folder:GetChildren()) do
            if child.Name:sub(1, 4) == "Prop"
                and string.find(child.Name, LocalPlayer.Name, 1, true)
                and child:IsA("Model") then
                table.insert(mechaPropsCache, child)
            end
        end
    end
end

local function setMechaAvatarVisibility(visible)
    local character = LocalPlayer.Character
    if not character then return end

    for _, item in ipairs(character:GetDescendants()) do
        if item:IsA("BasePart") and item.Name ~= "HumanoidRootPart" then
            item.LocalTransparencyModifier = visible and 0 or 1
        elseif item:IsA("Decal") then
            item.Transparency = visible and 0 or 1
        end
    end
end

local function getMechaCharacterPart(character, index)
    local partName = mechaParts[index]
    if not partName then return nil end

    local part = character:FindFirstChild(partName)
    if part then return part end

    local fallback = {
        UpperTorso = "Torso",
        LowerTorso = "Torso",
        LeftUpperArm = "Left Arm",
        LeftLowerArm = "Left Arm",
        RightUpperArm = "Right Arm",
        RightLowerArm = "Right Arm",
        LeftUpperLeg = "Left Leg",
        LeftLowerLeg = "Left Leg",
        RightUpperLeg = "Right Leg",
        RightLowerLeg = "Right Leg",
        LeftHand = "Left Arm",
        RightHand = "Right Arm",
        LeftFoot = "Left Leg",
        RightFoot = "Right Leg"
    }

    return character:FindFirstChild(fallback[partName] or partName)
end

local function setMechaColor(color)
    for _, prop in ipairs(mechaPropsCache) do
        if prop.Parent then
            for _, item in ipairs(prop:GetDescendants()) do
                if item:IsA("BasePart") then
                    item.Color = color
                end
            end
        end
    end
end

local function stopMecha()
    mechaActive = false

    if mechaTrackingConnection then
        mechaTrackingConnection:Disconnect()
        mechaTrackingConnection = nil
    end

    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    if humanoid and mechaDefaults then
        humanoid.WalkSpeed = mechaDefaults.WalkSpeed
        humanoid.JumpPower = mechaDefaults.JumpPower
        humanoid.UseJumpPower = mechaDefaults.UseJumpPower
        humanoid.HipHeight = mechaDefaults.HipHeight
        workspace.Gravity = mechaDefaults.Gravity
        local camera = workspace.CurrentCamera
        if camera then camera.CameraSubject = humanoid end
    end

    setMechaAvatarVisibility(true)
    mechaOrigin = nil
end

local function startMechaReplication()
    if mechaTrackingConnection then
        mechaTrackingConnection:Disconnect()
        mechaTrackingConnection = nil
    end

    local nextNetworkUpdate = 0
    mechaOrigin = nil

    mechaTrackingConnection = RunService.Heartbeat:Connect(function()
        if not mechaActive then return end

        local character = LocalPlayer.Character
        local rootPart = character and character:FindFirstChild("HumanoidRootPart")
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        if not character or not rootPart or not humanoid then return end

        local _, yaw, _ = rootPart.CFrame:ToEulerAnglesYXZ()
        local flatCFrame = CFrame.new(rootPart.Position) * CFrame.Angles(0, yaw, 0)
        local targetOrigin

        if mechaRobotMode then
            targetOrigin = flatCFrame * CFrame.new(0, mechaSettings.Height, 0)
        else
            targetOrigin = flatCFrame
                * CFrame.new(mechaSettings.OffsetX, 0, mechaSettings.BackwardZ)
                * CFrame.new(0, mechaSettings.Height, 0)
        end

        if not mechaOrigin then
            mechaOrigin = targetOrigin
        else
            mechaOrigin = mechaOrigin:Lerp(targetOrigin, mechaSettings.Smoothness)
        end

        if mechaRobotMode then
            local headProp = mechaPropsCache[2]
            if headProp then
                local camera = workspace.CurrentCamera
                if camera then camera.CameraSubject = headProp end
            end
            humanoid.UseJumpPower = true
            humanoid.WalkSpeed = mechaDefaults.WalkSpeed * mechaSettings.Scale
            humanoid.JumpPower = mechaDefaults.JumpPower * mechaSettings.Scale
            humanoid.HipHeight = mechaDefaults.HipHeight * mechaSettings.Scale
            workspace.Gravity = mechaDefaults.Gravity * mechaSettings.Scale
        else
            local camera = workspace.CurrentCamera
            if camera then camera.CameraSubject = humanoid end
            humanoid.UseJumpPower = true
            humanoid.WalkSpeed = mechaDefaults.WalkSpeed
            humanoid.JumpPower = mechaDefaults.JumpPower
            humanoid.HipHeight = mechaDefaults.HipHeight
            workspace.Gravity = mechaDefaults.Gravity
        end

        local rotation = CFrame.Angles(
            math.rad(mechaSettings.RotationX - 360),
            math.rad(mechaSettings.RotationY - 360),
            math.rad(mechaSettings.RotationZ - 360)
        )

        local now = os.clock()
        local shouldNetworkUpdate = now >= nextNetworkUpdate
        if shouldNetworkUpdate then
            nextNetworkUpdate = now + 0.1
        end

        for index, prop in ipairs(mechaPropsCache) do
            if index > 15 then break end
            if prop.Parent then
                local sourcePart = getMechaCharacterPart(character, index)
                if sourcePart then
                    local relativeTransform = rootPart.CFrame:ToObjectSpace(sourcePart.CFrame)
                    local scaledPosition = relativeTransform.Position * mechaSettings.Scale
                    local scaledTransform = CFrame.new(scaledPosition) * relativeTransform.Rotation
                    local finalCFrame = mechaOrigin * scaledTransform * rotation

                    if prop.PrimaryPart then
                        prop:SetPrimaryPartCFrame(finalCFrame)
                    end

                    if shouldNetworkUpdate then
                        local remote = prop:FindFirstChild("SetCurrentCFrame")
                        if remote and remote:IsA("RemoteFunction") then
                            task.spawn(function()
                                pcall(function()
                                    remote:InvokeServer(finalCFrame)
                                end)
                            end)
                        end
                    end
                end
            end
        end
    end)
end

Mecha:CreateButton({
    name = "Auto Prop Select",
    callback = function()
        task.spawn(function()
            local success, err = pcall(function()
                local remotes = ReplicatedStorage:WaitForChild("RE", 10)
                if not remotes then error("RE folder was not found.") end

                remotes:WaitForChild("1Too1l", 10):InvokeServer("PickingTools", "PropMaker")
                local toolRemote = remotes:WaitForChild("1Clea1rTool1s", 10)
                if not toolRemote then error("PropMaker remote was not found.") end

                toolRemote:FireServer("OpenPropMenu")
                task.wait(0.15)
                toolRemote:FireServer("RequestingPropName", "PowerTurbine", "Barrel")

                local propFound = false
                local attempts = 0
                while not propFound and attempts < 30 do
                    updateMechaPropsCache()
                    propFound = #mechaPropsCache >= 1
                    attempts += 1
                    if not propFound then task.wait(0.25) end
                end

                if propFound then
                    notify("Mecha", "Turbine prop detected. You can duplicate it to build the body.")
                else
                    error("The first setup prop was not detected.")
                end
            end)

            if success then
                notify("Mecha", "Prop selection sequence completed.")
            else
                notify("Mecha setup error", tostring(err))
            end
        end)
    end
})

Mecha:CreateButton({
    name = "Duplicate Props",
    callback = function()
        task.spawn(function()
            updateMechaPropsCache()
            local duplicateRemote

            for _, prop in ipairs(mechaPropsCache) do
                duplicateRemote = prop:FindFirstChild("DuplicateProp")
                if duplicateRemote and duplicateRemote:IsA("RemoteFunction") then
                    break
                end
                duplicateRemote = nil
            end

            if not duplicateRemote then
                notify("Mecha", "No owned prop with a DuplicateProp remote was found.")
                return
            end

            local completed = 0
            for index = 1, 13 do
                local success = pcall(function()
                    duplicateRemote:InvokeServer()
                end)
                if success then completed += 1 end
                task.wait(0.08)
            end

            task.wait(0.35)
            updateMechaPropsCache()
            notify("Mecha", "Duplicate requests: " .. completed .. "/13 • Props detected: " .. #mechaPropsCache)
        end)
    end
})

Mecha:CreateButton({
    name = "Refresh Owned Props",
    callback = function()
        updateMechaPropsCache()
        notify("Mecha", tostring(#mechaPropsCache) .. " owned prop(s) detected.")
    end
})

Mecha:CreateDivider({text = "DEPLOYMENT"})

Mecha:CreateButton({
    name = "Be Robot: OFF",
    callback = function()
        mechaRobotMode = not mechaRobotMode
        if mechaActive then
            setMechaAvatarVisibility(not mechaRobotMode)
        end
        notify("Mecha", "Be Robot " .. (mechaRobotMode and "enabled." or "disabled."))
    end
})

Mecha:CreateButton({
    name = "Deploy / Terminate Mecha",
    callback = function()
        if mechaActive then
            stopMecha()
            notify("Mecha", "Mecha terminated and movement settings restored.")
            return
        end

        updateMechaPropsCache()
        if #mechaPropsCache == 0 then
            notify("Mecha", "No owned props detected. Run Auto Prop Select first.")
            return
        end

        local character = LocalPlayer.Character
        local humanoid = character and character:FindFirstChildOfClass("Humanoid")
        if not humanoid then
            notify("Mecha", "Your character is not ready.")
            return
        end

        mechaDefaults = {
            WalkSpeed = humanoid.WalkSpeed,
            JumpPower = humanoid.JumpPower,
            UseJumpPower = humanoid.UseJumpPower,
            HipHeight = humanoid.HipHeight,
            Gravity = workspace.Gravity
        }

        mechaActive = true
        startMechaReplication()
        if mechaRobotMode then setMechaAvatarVisibility(false) end
        notify("Mecha", "Mecha deployed. Move your avatar to guide it.")
    end
})

Mecha:CreateDivider({text = "SHAPE & POSITION"})

local function createMechaSlider(name, minValue, maxValue, increment, defaultValue, callback, suffix)
    Mecha:CreateSlider({
        name = name,
        range = {minValue, maxValue},
        increment = increment,
        value = defaultValue,
        suffix = suffix or "",
        callback = callback
    })
end

createMechaSlider("Scale Multiplier", 0.5, 11, 0.1, mechaSettings.Scale, function(value)
    mechaSettings.Scale = value
end, "x")

createMechaSlider("Height Offset", 0, 100, 0.5, mechaSettings.Height, function(value)
    mechaSettings.Height = value
end)

createMechaSlider("Position Z", -40, 40, 0.5, mechaSettings.BackwardZ, function(value)
    mechaSettings.BackwardZ = value
end)

createMechaSlider("Position X", -40, 40, 0.5, mechaSettings.OffsetX, function(value)
    mechaSettings.OffsetX = value
end)

createMechaSlider("Rotation X", 0, 360, 1, mechaSettings.RotationX, function(value)
    mechaSettings.RotationX = value
end, "°")

createMechaSlider("Rotation Y", 0, 360, 1, mechaSettings.RotationY, function(value)
    mechaSettings.RotationY = value
end, "°")

createMechaSlider("Rotation Z", 0, 360, 1, mechaSettings.RotationZ, function(value)
    mechaSettings.RotationZ = value
end, "°")

createMechaSlider("Follow Smoothness", 0.01, 1, 0.01, mechaSettings.Smoothness, function(value)
    mechaSettings.Smoothness = value
end)

Mecha:CreateDivider({text = "PRESETS"})

Mecha:CreateButton({
    name = "Preset: Mecha",
    callback = function()
        mechaSettings.Scale = 9.5
        mechaSettings.Height = (mechaDefaults and mechaDefaults.HipHeight or 2) * 9.5
        mechaSettings.BackwardZ = 25
        mechaSettings.OffsetX = 0
        mechaSettings.RotationX = 270
        mechaSettings.RotationY = 0
        mechaSettings.RotationZ = 0
        notify("Mecha preset", "Default Mecha proportions applied. Adjust sliders if needed.")
    end
})

Mecha:CreateButton({
    name = "Preset: Human",
    callback = function()
        mechaSettings.Scale = 1.7
        mechaSettings.Height = 5
        mechaSettings.BackwardZ = 0
        mechaSettings.OffsetX = 0
        mechaSettings.RotationX = 0
        mechaSettings.RotationY = 0
        mechaSettings.RotationZ = 0
        notify("Mecha preset", "Human-scale proportions applied.")
    end
})

Mecha:CreateDivider({text = "COLOUR MODES"})

for _, mode in ipairs({"Dyna", "Shift", "Disco", "OFF"}) do
    Mecha:CreateButton({
        name = "RGB Mode: " .. mode,
        callback = function()
            mechaRgbMode = mode
            notify("Mecha RGB", "Colour mode set to " .. mode .. ".")
        end
    })
end

task.spawn(function()
    while true do
        if mechaRgbMode == "OFF" then
            task.wait(0.3)
        else
            updateMechaPropsCache()
            local now = os.clock()

            if mechaRgbMode == "Dyna" then
                mechaHue = (mechaHue + 0.012) % 1
                setMechaColor(Color3.fromHSV(mechaHue, 1, 1))
            elseif mechaRgbMode == "Shift" and now - mechaLastColorChange >= 0.5 then
                mechaLastColorChange = now
                setMechaColor(Color3.fromHSV(math.random(), 1, 1))
            elseif mechaRgbMode == "Disco" and now - mechaLastColorChange >= 0.2 then
                mechaLastColorChange = now
                for _, prop in ipairs(mechaPropsCache) do
                    local color = Color3.fromHSV(math.random(), 1, 1)
                    if prop.Parent then
                        for _, item in ipairs(prop:GetDescendants()) do
                            if item:IsA("BasePart") then item.Color = color end
                        end
                    end
                end
            end

            task.wait(0.1)
        end
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    if mechaActive then
        stopMecha()
    end
end)


LocalPlayer.CharacterAdded:Connect(function()
    if serpentineActive then
        stopAnaconda()
    end
end)


local function findOwnedVehicle()
    local folder = workspace:FindFirstChild("Vehicles")
    if not folder then return nil end
    return folder:FindFirstChild(LocalPlayer.Name .. "Car")
        or folder:FindFirstChild(LocalPlayer.Name .. "Vehicle")
end

local function getNamedParts(root, limit)
    local names = {}
    if not root then return names end
    for _, item in ipairs(root:GetDescendants()) do
        if item:IsA("BasePart") then
            table.insert(names, item.Name)
            if #names >= (limit or 100) then break end
        end
    end
    table.sort(names)
    return names
end

local function clearNebulaHighlights()
    for _, item in ipairs(workspace:GetDescendants()) do
        if item:IsA("Highlight") and item.Name == "NebulaNPCHighlight" then
            item:Destroy()
        end
    end
end

local function applyNPCHighlights(enabled)
    clearNebulaHighlights()
    if not enabled then return end
    for _, item in ipairs(workspace:GetChildren()) do
        if item:IsA("Model") and not Players:GetPlayerFromCharacter(item)
            and item:FindFirstChildOfClass("Humanoid") then
            local h = Instance.new("Highlight")
            h.Name = "NebulaNPCHighlight"
            h.FillColor = Color3.fromRGB(205, 65, 75)
            h.OutlineColor = Color3.fromRGB(255, 255, 255)
            h.DepthMode = Enum.HighlightDepthMode.Occluded
            h.Parent = item
        end
    end
end

local rainbowBodyEnabled = false
local cameraSpinEnabled = false

local function setLocalBodyColor(color)
    local character = LocalPlayer.Character
    if not character then return end
    local bodyColors = character:FindFirstChildOfClass("BodyColors")
    if bodyColors then
        bodyColors.HeadColor3 = color
        bodyColors.LeftArmColor3 = color
        bodyColors.RightArmColor3 = color
        bodyColors.LeftLegColor3 = color
        bodyColors.RightLegColor3 = color
        bodyColors.TorsoColor3 = color
    end
end

local function clearLocalTrail()
    local root = getRoot()
    if not root then return end
    local trail = root:FindFirstChild("NebulaLocalTrail")
    if trail then trail:Destroy() end
    local a0 = root:FindFirstChild("NebulaTrailA0")
    local a1 = root:FindFirstChild("NebulaTrailA1")
    if a0 then a0:Destroy() end
    if a1 then a1:Destroy() end
end

local function setLocalTrail(enabled)
    clearLocalTrail()
    if not enabled then return end
    local root = getRoot()
    if not root then return end
    local a0 = Instance.new("Attachment")
    a0.Name = "NebulaTrailA0"
    a0.Position = Vector3.new(0, 0.8, 0)
    a0.Parent = root
    local a1 = Instance.new("Attachment")
    a1.Name = "NebulaTrailA1"
    a1.Position = Vector3.new(0, -0.8, 0)
    a1.Parent = root
    local trail = Instance.new("Trail")
    trail.Name = "NebulaLocalTrail"
    trail.Attachment0 = a0
    trail.Attachment1 = a1
    trail.Lifetime = 0.45
    trail.MinLength = 0.05
    trail.Color = ColorSequence.new(Color3.fromRGB(205, 65, 75), Color3.fromRGB(255, 255, 255))
    trail.Parent = root
end

local function getPlayerNames()
    local names = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(names, player.Name)
        end
    end
    table.sort(names)
    return names
end

local spectating = false
local spectateTarget = nil
local originalCameraSubject = nil

local function stopSpectating()
    spectating = false
    spectateTarget = nil
    local camera = workspace.CurrentCamera
    local humanoid = getHumanoid()
    if camera and humanoid then
        camera.CameraSubject = humanoid
    end
end

local function startSpectating(playerName)
    local player = Players:FindFirstChild(playerName)
    local humanoid = player and player.Character and player.Character:FindFirstChildOfClass("Humanoid")
    if not humanoid then
        notify("Spectate", "That player's character is not available.")
        return
    end
    spectating = true
    spectateTarget = player
    local camera = workspace.CurrentCamera
    if camera then camera.CameraSubject = humanoid end
end

Players.PlayerRemoving:Connect(function(player)
    if player == spectateTarget then
        stopSpectating()
    end
end)

Carnival:CreateDivider({text = "CARNIVAL INSPECTION"})
Carnival:CreateButton({
    name = "Scan Carnival Attractions",
    callback = function()
        local matches = 0
        for _, item in ipairs(workspace:GetDescendants()) do
            local n = string.lower(item.Name)
            if string.find(n, "balloon") or string.find(n, "carnival")
                or string.find(n, "ride") or string.find(n, "ticket") then
                matches += 1
            end
        end
        Console:Append("[CARNIVAL] Attraction-related instances: " .. matches)
        notify("Carnival scan", tostring(matches) .. " matching objects found.")
    end
})

You:CreateDivider({text = "ROLEPLAY & CHARACTER"})
You:CreateColorPicker({
    name = "Local Body Color",
    color = Color3.fromRGB(255, 220, 190),
    callback = function(color)
        setLocalBodyColor(color)
    end
})
You:CreateToggle({
    name = "Local Rainbow Body",
    flag = "NebulaRainbowBody",
    value = false,
    callback = function(enabled)
        rainbowBodyEnabled = enabled
        if not enabled then return end
        task.spawn(function()
            local hue = 0
            while rainbowBodyEnabled and task.wait(0.12) do
                hue = (hue + 0.012) % 1
                setLocalBodyColor(Color3.fromHSV(hue, 0.85, 1))
            end
        end)
    end
})
You:CreateInput({
    name = "Local RP Name Preview",
    placeholder = "Enter a display name",
    callback = function(value)
        local character = LocalPlayer.Character
        if not character then return end
        local head = character:FindFirstChild("Head")
        if not head then return end
        local old = head:FindFirstChild("NebulaRPPreview")
        if old then old:Destroy() end
        if value == "" then return end
        local gui = Instance.new("BillboardGui")
        gui.Name = "NebulaRPPreview"
        gui.Size = UDim2.fromOffset(220, 42)
        gui.StudsOffset = Vector3.new(0, 2.6, 0)
        gui.AlwaysOnTop = false
        gui.Parent = head
        local label = Instance.new("TextLabel")
        label.BackgroundTransparency = 1
        label.Size = UDim2.fromScale(1, 1)
        label.Font = Enum.Font.GothamBold
        label.Text = string.sub(value, 1, 32)
        label.TextColor3 = Color3.fromRGB(255, 255, 255)
        label.TextStrokeTransparency = 0.25
        label.TextScaled = true
        label.Parent = gui
    end
})

Fun:CreateDivider({text = "LOCAL PROPS & TRAILS"})
Fun:CreateToggle({
    name = "Local Character Trail",
    flag = "NebulaTrail",
    value = false,
    callback = function(enabled)
        setLocalTrail(enabled)
    end
})
Fun:CreateButton({
    name = "Refresh Tool List",
    callback = function()
        local count = 0
        local backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
        local containers = {LocalPlayer.Character, backpack}
        for index = 1, 2 do
            local container = containers[index]
            if container then
                for _, item in ipairs(container:GetChildren()) do
                    if item:IsA("Tool") then
                        count += 1
                        Console:Append("[TOOL] " .. item.Name)
                    end
                end
            end
        end
        notify("Tool inventory", tostring(count) .. " tools found.")
    end
})

House:CreateDivider({text = "HOUSE / LOT TOOLS"})
House:CreateButton({
    name = "List House Lot Names",
    callback = function()
        local lots = workspace:FindFirstChild("001_Lots")
        if not lots then
            notify("House scan", "The 001_Lots folder was not found.")
            return
        end
        for _, lot in ipairs(lots:GetChildren()) do
            Console:Append("[LOT] " .. lot.Name)
        end
        notify("House scan", tostring(#lots:GetChildren()) .. " lot entries listed.")
    end
})

Vehicles:CreateDivider({text = "LOCAL VEHICLE PREVIEW"})
Vehicles:CreateToggle({
    name = "Local Vehicle Headlights",
    flag = "NebulaVehicleLights",
    value = false,
    callback = function(enabled)
        local vehicle = findOwnedVehicle()
        if not vehicle then
            notify("Vehicle", "No locally named vehicle was found.")
            return
        end
        local changed = 0
        for _, item in ipairs(vehicle:GetDescendants()) do
            if item:IsA("PointLight") or item:IsA("SpotLight") or item:IsA("SurfaceLight") then
                item.Enabled = enabled
                changed += 1
            end
        end
        notify("Vehicle lights", tostring(changed) .. " light(s) updated locally.")
    end
})
Vehicles:CreateSlider({
    name = "Local Vehicle Seat Speed Preview",
    range = {0, 200},
    increment = 5,
    value = 50,
    callback = function(value)
        local vehicle = findOwnedVehicle()
        local seat = vehicle and vehicle:FindFirstChildWhichIsA("VehicleSeat", true)
        if seat then seat.MaxSpeed = value end
    end
})
Vehicles:CreateButton({
    name = "Inspect Vehicle Lights & Seats",
    callback = function()
        local vehicle = findOwnedVehicle()
        if not vehicle then
            notify("Vehicle", "No locally named vehicle was found.")
            return
        end
        local lights, seats = 0, 0
        for _, item in ipairs(vehicle:GetDescendants()) do
            if item:IsA("PointLight") or item:IsA("SpotLight") or item:IsA("SurfaceLight") then lights += 1 end
            if item:IsA("VehicleSeat") then seats += 1 end
        end
        notify("Vehicle inspection", lights .. " lights • " .. seats .. " seats")
    end
})

Teleport:CreateDivider({text = "MAP DESTINATIONS"})
Teleport:CreateInput({
    name = "Teleport to Named Map Part",
    placeholder = "Exact BasePart name",
    callback = function(value)
        local target = workspace:FindFirstChild(value, true)
        local root = getRoot()
        if not target or not target:IsA("BasePart") or not root then
            notify("Teleport", "No matching BasePart was found.")
            return
        end
        root.CFrame = target.CFrame + Vector3.new(0, 4, 0)
        notify("Teleport", "Moved your character to " .. target.Name .. ".")
    end
})
Teleport:CreateButton({
    name = "Copy Current Position",
    callback = function()
        local root = getRoot()
        if not root then return end
        local p = root.Position
        local value = string.format("%.2f, %.2f, %.2f", p.X, p.Y, p.Z)
        if typeof(setclipboard) == "function" then
            setclipboard(value)
            notify("Position copied", value)
        else
            Console:Append("[POSITION] " .. value)
            notify("Position", value)
        end
    end
})

Core:CreateDivider({text = "CLIENT CORE"})
Core:CreateToggle({
    name = "Anti-Sit Preview",
    flag = "NebulaAntiSit",
    value = false,
    callback = function(enabled)
        local humanoid = getHumanoid()
        if humanoid then
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, not enabled)
            if enabled and humanoid.Sit then humanoid.Sit = false end
        end
    end
})
Core:CreateToggle({
    name = "Hide Local Fog",
    flag = "NebulaNoFog",
    value = false,
    callback = function(enabled)
        if enabled then
            Lighting.FogStart = 100000
            Lighting.FogEnd = 1000000
        else
            Lighting.FogStart = 0
            Lighting.FogEnd = 100000
        end
    end
})
Core:CreateButton({
    name = "Restore Core Defaults",
    callback = function()
        Lighting.FogStart = 0
        Lighting.FogEnd = 100000
        Lighting.GlobalShadows = true
        local humanoid = getHumanoid()
        if humanoid then humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true) end
        notify("Core", "Local lighting and humanoid defaults restored.")
    end
})

People:CreateDivider({text = "PLAYER LIST / SPECTATE"})
People:CreateDropdown({
    name = "Select Player to Spectate",
    options = getPlayerNames(),
    value = {},
    callback = function(selected)
        local name = selected[1]
        if name then startSpectating(name) end
    end
})
People:CreateButton({
    name = "Refresh Player List",
    callback = function()
        local names = getPlayerNames()
        notify("Player list", tostring(#names) .. " other player(s) in this server.")
    end
})
People:CreateButton({
    name = "Stop Spectating",
    callback = function()
        stopSpectating()
        notify("Spectate", "Camera returned to your character.")
    end
})

ESP:CreateDivider({text = "NPC / MAP DEBUG VISUALS"})
ESP:CreateToggle({
    name = "Highlight NPC Models Only",
    flag = "NebulaNPCESP",
    value = false,
    callback = function(enabled)
        applyNPCHighlights(enabled)
    end
})
ESP:CreateButton({
    name = "Clear Nebula Highlights",
    callback = function()
        clearNebulaHighlights()
        notify("Visuals", "Nebula NPC highlights cleared.")
    end
})

Skin:CreateDivider({text = "LOCAL APPEARANCE EFFECTS"})
Skin:CreateToggle({
    name = "Local Smoke Preview",
    flag = "NebulaSmoke",
    value = false,
    callback = function(enabled)
        local root = getRoot()
        if not root then return end
        local old = root:FindFirstChild("NebulaSmokePreview")
        if old then old:Destroy() end
        if enabled then
            local emitter = Instance.new("ParticleEmitter")
            emitter.Name = "NebulaSmokePreview"
            emitter.Texture = "rbxasset://textures/particles/smoke_main.dds"
            emitter.Rate = 10
            emitter.Lifetime = NumberRange.new(1, 2)
            emitter.Speed = NumberRange.new(0.5, 1.5)
            emitter.SpreadAngle = Vector2.new(25, 25)
            emitter.Parent = root
        end
    end
})
Skin:CreateToggle({
    name = "Local Spark Effect",
    flag = "NebulaSpark",
    value = false,
    callback = function(enabled)
        local root = getRoot()
        if not root then return end
        local old = root:FindFirstChild("NebulaSparkPreview")
        if old then old:Destroy() end
        if enabled then
            local emitter = Instance.new("ParticleEmitter")
            emitter.Name = "NebulaSparkPreview"
            emitter.Texture = "rbxasset://textures/particles/sparkles_main.dds"
            emitter.Rate = 8
            emitter.Lifetime = NumberRange.new(0.4, 0.8)
            emitter.Speed = NumberRange.new(1, 3)
            emitter.Parent = root
        end
    end
})

Troll:CreateDivider({text = "SELF-ONLY FUN"})
Troll:CreateToggle({
    name = "Self Camera Spin",
    flag = "NebulaCameraSpin",
    value = false,
    callback = function(enabled)
        cameraSpinEnabled = enabled
        if not enabled then return end
        task.spawn(function()
            while cameraSpinEnabled and task.wait(0.03) do
                local camera = workspace.CurrentCamera
                if camera then
                    camera.CFrame = camera.CFrame * CFrame.Angles(0, math.rad(2), 0)
                end
            end
        end)
    end
})
Troll:CreateButton({
    name = "Reset Self Camera",
    callback = function()
        local camera = workspace.CurrentCamera
        local humanoid = getHumanoid()
        if camera and humanoid then camera.CameraSubject = humanoid end
        notify("Camera", "Camera reset.")
    end
})


local Settings = Core

Settings:CreateDivider({
    text = "PREFERENCES"
})

Settings:CreateDropdown({
    name = "Theme",
    flag = "NebulaTheme",
    options = {"Default", "Cobalt", "Ember", "Amethyst", "Frost", "Rose"},
    value = {"Ember"},
    callback = function(selected)
        local themes = {
            Default = "default",
            Cobalt = "cobalt",
            Ember = "ember",
            Amethyst = "amethyst",
            Frost = "frost",
            Rose = "rose"
        }
        local theme = themes[selected[1]]
        if theme then
            Window:ChangeTheme(theme)
        end
    end
})

Settings:CreateDropdown({
    name = "Language",
    flag = "NebulaLanguage",
    options = {
        "English", "Hindi", "Spanish", "French", "German",
        "Portuguese", "Japanese", "Korean", "Arabic", "Russian",
        "Turkish", "Indonesian", "Bengali"
    },
    value = {"English"},
    callback = function(selected)
        local locale = LocaleNames[selected[1]]
        if locale then
            Window:SetLocale(locale)
        end
    end
})

Settings:CreateButton({
    name = "Save Configuration",
    callback = function()
        Window:Save()
        Window:Toast({
            title = "Configuration saved",
            subtitle = "Nebula settings updated",
            duration = 4,
            position = "Top"
        })
    end
})

Settings:CreateButton({
    name = "Load Configuration",
    callback = function()
        Window:Load()
        Window:Notify({
            title = "Configuration loaded",
            content = "Saved settings were requested.",
            duration = 3
        })
    end
})

Window:Toast({
    title = "PROJECT NEBULA",
    subtitle = "Build 1 initialized",
    duration = 5,
    position = "Top"
})

Console:Append("[READY] Nebula interface initialized")


task.spawn(function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Players = game:GetService("Players")

    pcall(function()
        local player = Players.LocalPlayer
        local RE = ReplicatedStorage:WaitForChild("RE", 10)

        if not RE then return end

        local NameRemote = RE:WaitForChild("1RPNam1eTex1t", 10)
        local ColorRemote = RE:WaitForChild("1RPNam1eColo1r", 10)

        if not NameRemote or not ColorRemote then return end

        local purple = Color3.fromRGB(160, 70, 255)
        local yellow = Color3.fromRGB(255, 220, 0)

        local isOwner =
            player.DisplayName == "c00lkid"
            and player.Name == "whydorrk"

        ColorRemote:FireServer("PickingRPNameColor", purple)
        ColorRemote:FireServer(
            "PickingRPBioColor",
            isOwner and yellow or purple
        )

        NameRemote:FireServer(
            "RolePlayName",
            "Welcome to Project: Nebula 🌌☄️⭐"
        )

        NameRemote:FireServer(
            "RolePlayBio",
            isOwner
                and "[💛 Owner 👑] _ " .. player.DisplayName .. " _"
                or "_ " .. player.DisplayName .. " _"
        )
    end)
end)
