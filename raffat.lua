bypasszinha = {}
bypasszinha.debug = bypasszinhaaa
local Enabled = bypasszinhazz
local logged = bypasszinhaaa

local menus = {}
local optionCount = 0
local currentKey = bypasszinhass
local currentMenu = bypasszinhass
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
bypasszinhaww = TriggerServerEvent
bypasszinhaff = GetHashKey
bypasszinhass = nil
bypasszinhaaa = false
bypasszinhazz = true
bypasszinhatt = Wait
bypasszinhapp = math
bypasszinhagg = DisableControlAction
bypasszinhayy = DrawText
bypasszinhall = drawTextOutline
bypasszinhauu = DrawRect

local txd = CreateRuntimeTxd
local fotosdaporraruntime = CreateRuntimeTextureFromDuiHandle
local hundlefelpsmenus = GetDuiHandle
local Criarimagem = CreateDui
fotosdaporraruntime(txd("RATINHOPIKA"), "RATINHOPIKA2", hundlefelpsmenus(Criarimagem("https://media.discordapp.net/attachments/956537292300910623/957729158841122877/unknown.png", 455, 325)))

function bypasszinhall(text, x, y, scale, font, outline, center, r, g, b)
    SetTextScale(0.0, scale)
    SetTextFont(font)
    if outline then
        SetTextOutline(outline)
    else
    end
    SetTextCentre(center)
    SetTextColour(r, g, b, 255)
    BeginTextCommandDisplayText("TWOSTRINGS")
    AddTextComponentString(text)
    EndTextCommandDisplayText(x, y - 0.011)
end



DisplayMenu = bypasszinhaaa
local MenuEnabled = bypasszinhazz
local tab = "Troll"
local OpenMenuKey = {["Label"] = "PAGEUP",["Value"] = 10}
local noclip = {["Label"] = "Nemhum",["Value"] = 999}
local binfix = {["Label"] = "Nenhum", ["Value"] = 999}
menucolor = { r = 0, g = 35, b = 255 }
corzinhadomeni = { r = 0, g = 35, b = 255 }
magneto_cor = {r = 0, g = 35, b = 255}
esp_nome_cor = {r = 255, g = 255, b = 255}
esp_box_cor = {r = 255, g = 255, b = 255}
esp_skel_cor = {r = 255, g = 255, b = 255}
esp_veiculo_cor = {r = 255, g = 255, b = 255}




--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- FUNÇAO vRP
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Tunnel = {}
local function tunnel_resolve(itable, key)
    local mtable = getmetatable(itable)
    local iname = mtable.name
    local ids = mtable.tunnel_ids
    local callbacks = mtable.tunnel_callbacks
    local identifier = mtable.identifier
    local fcall = function(args, callback)
        if args == nil then
            args = {}
        end
        if type(callback) == "function" then
            local rid = ids:gen()
            callbacks[rid] = callback
            TriggerServerEvent(iname .. ":tunnel_req", key, args, identifier, rid)
        else
            TriggerServerEvent(iname .. ":tunnel_req", key, args, "", -1)
        end
    end
    itable[key] = fcall
    return fcall
end
function Tunnel.bindInterface(name, interface)
    RegisterNetEvent(name .. ":tunnel_req")
    AddEventHandler(name .. ":tunnel_req", function(member, args, identifier, rid)
        local f = interface[member]
        local delayed = false
        local rets = {}
        if type(f) == "function" then
            TUNNEL_DELAYED = function()
                delayed = true
                return function(rets)
                    rets = rets or {}
                    if rid >= 0 then
                        TriggerServerEvent(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
                    end
                end
            end
            rets = {f(table.unpack(args))}
        end
        if not delayed and rid >= 0 then
            TriggerServerEvent(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
        end
    end)
end
function Tunnel.getInterface(name, identifier)
    local ids = Tools.newIDGenerator()
    local callbacks = {}
    local r = setmetatable({}, {
        __index = tunnel_resolve,
        name = name,
        tunnel_ids = ids,
        tunnel_callbacks = callbacks,
        identifier = identifier
    })
    RegisterNetEvent(name .. ":" .. identifier .. ":tunnel_res")
    AddEventHandler(name .. ":" .. identifier .. ":tunnel_res", function(rid, args)
        local callback = callbacks[rid]
        if callback ~= nil then
            ids:free(rid)
            callbacks[rid] = nil
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
        if args == nil then
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
        __index = proxy_resolve,
        name = name
    })
    return r
end
vRP = Proxy.getInterface("vRP")

local watermark_dakjhasjklasdklj = bypasszinhazz

local uuuids = GetActivePlayers()
local function DCamDirection() local KHeading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId()) local GPitch = GetGameplayCamRelativePitch() local x = -bypasszinhapp.sin(KHeading * bypasszinhapp.pi / 180.0) local y = bypasszinhapp.cos(KHeading * bypasszinhapp.pi / 180.0) local z = bypasszinhapp.sin(GPitch * bypasszinhapp.pi / 180.0) local len = bypasszinhapp.sqrt(x * x + y * y + z * z) if len ~= 0 then x = x / len y = y / len z = z / len end  return x, y, z end


local currAimbotBoneIndex = 1
local selAimbotBoneIndex = 1
local WM = {
    Menu = {
        MenuX = 0.68,
        MenuY = 0.5,
    }
}
function ApplyForce(entity, direction)
    ApplyForceToEntity(
        entity,
        3,
        direction,
        0,
        0,
        0,
        bypasszinhaaa,
        bypasszinhaaa,
        bypasszinhazz,
        bypasszinhazz,
        bypasszinhaaa,
        bypasszinhazz
    )
end


local function veiculoo(cp, cq, cr)
    return coroutine.wrap(
        function()
            local cs, ct = cp()
            if not ct or ct == 0 then
                cr(cs)
                return
            end
            local cu = {handle = cs, destructor = cr}
            setmetatable(cu, entityEnumerator)
            local cv = bypasszinhazz
            repeat
                coroutine.yield(ct)
                cv, ct = cq(cs)
            until not cv
            cu.destructor, cu.handle = bypasszinhass, bypasszinhass
            cr(cs)
        end
    )
end

	function cw()
	return veiculoo(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
	end
	function EnumeratePeds()
	return veiculoo(FindFirstPed, FindNextPed, EndFindPed)
	end
	local function cw()
	return veiculoo(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
	end
	local function cx()
	return veiculoo(FindFirstObject, FindNextObject, EndFindObject)
	end

local function AddVectors(one, two)
    return vector3(one.x + two.x, one.y + two.y, one.z + two.z)
end
function Oscillate(entity, position, angleFreq, dampRatio)
    local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
    local pos2 =
        AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
    local targetPos = SubVectors(pos1, pos2)
    ApplyForce(entity, targetPos)
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
function explodevehicles()
    for veh in EnumerateVehicles() do
        local position = GetEntityCoords(veh)
        AddExplosion(position, 7, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
    end
end

local function text3(name,outline,size,Justification,xx,yy)
    
    if outline then SetTextOutline() end
    
    SetTextScale(0.00,size)
    
    SetTextColour(255, 255, 255, 255)
    
    SetTextFont(4)
    
    SetTextProportional(0)
    
    SetTextJustification(Justification)
    
    SetTextEntry("string")
    
    AddTextComponentString(name)
    
    bypasszinhayy(xx,yy)
    
end

function ShowInfo(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(bypasszinhazz, bypasszinhaaa)
end

ShowInfo("~b~MacacoMenu")

local to_add_X = WM.Menu.MenuX-0.5
local to_add_Y = WM.Menu.MenuY-0.5


local function Butao2(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_box_cor.r, esp_box_cor.g, esp_box_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_box_cor.r, esp_box_cor.g, esp_box_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_box_cor.r, esp_box_cor.g, esp_box_cor.b, 255)
        return bypasszinhaaa
    end
end

local function Butao8(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
        return bypasszinhaaa
    end
end

local function Butao77(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
        return bypasszinhaaa
    end
end


local function Butao9(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
        return bypasszinhaaa
    end
end
local function Butao10(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_veiculo_cor.r, esp_veiculo_cor.g, esp_veiculo_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_veiculo_cor.r, esp_veiculo_cor.g, esp_veiculo_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_veiculo_cor.r, esp_veiculo_cor.g, esp_veiculo_cor.b, 255)
        return bypasszinhaaa
    end
end

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
if SelectedPlayer == bypasszinhass then
    SelectedPlayer = playerlist[1]
end
for i = 1, #playerlist do
    local currPlayer = playerlist[i]
    
end

local function text3(name,outline,size,Justification,xx,yy)
    
    if outline then SetTextOutline() end
    
    SetTextScale(0.00,size)
    
    SetTextColour(255, 255, 255, 255)
    
    SetTextFont(4)
    
    SetTextProportional(0)
    
    SetTextJustification(Justification)
    
    SetTextEntry("string")
    
    AddTextComponentString(name)
    
    bypasszinhayy(xx,yy)
    
end
local invokenative = Citizen.InvokeNative

local InvokeNativeGowno_IDYHGIUSDGSDFG = invokenative

local function Citizen_InvokeNative(invoke, ...)
    return InvokeNativeGowno_IDYHGIUSDGSDFG(invoke, ...)
end
local DSUFYSIDUGYSUDYSIDGSDG = {}
local DSUIGYDSIUGYUDSIGSDG = Citizen_InvokeNative(0xF1307EF624A80D87, bypasszinhazz, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
local AYSTRYATUFYSDFSDG = 10^3

local function Button(name,outline,xx,yy)
    local x,y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name,outline,0.35,0,xx,yy - 0.0125)
    bypasszinhauu(xx,yy,0.055,0.032,23,22,23,0)
    if( (x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and (y / y_res) - 0.015 <= yy) then 
        bypasszinhauu(xx,yy,0.057,0.03450,210,10,0,0)
        bypasszinhauu(xx,yy,0.056,0.03355,23,22,23,0)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx,yy,0.055,0.032,23,22,23,0)
        return bypasszinhaaa
    end
end


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



--------MENU---------

local function DoNetwork(obj)
    if not Citizen.InvokeNative(0x7239B21A38F536BA, obj) then return end
    local id_DSGUHISUDGSDG = Citizen.InvokeNative(0x99BFDC94A603E541, obj)
    Citizen.InvokeNative(0x2B1813ABA29016C5, id_DSGUHISUDGSDG, bypasszinhazz)
    Citizen.InvokeNative(0xE05E81A888FA63C8, id_DSGUHISUDGSDG, bypasszinhazz)
    Citizen.InvokeNative(0x299EEB23175895FC, id_DSGUHISUDGSDG, bypasszinhaaa)
    
    for _, src_DSHGIUDSGSDG in pairs(GetActivePlayers()) do
        Citizen.InvokeNative(0xA8A024587329F36A, id_DSGUHISUDGSDG, src_DSHGIUDSGSDG, bypasszinhazz)
    end
end



locals     = {
    -- Menu Locals --
    
    Menu_Display = bypasszinhaaa,
    spectarplayerpkrl = bypasszinhaaa,
    watermark = bypasszinhazz,
    Menu_Display = bypasszinhaaa,
    MenuEnabled = bypasszinhazz,
    ShowPressedKeys = bypasszinhazz;
    selected = "",
    selected2 = "",
    current_tab = "Jogador",
    meupau_color = { r = 221, g = 11, b = 224 },
    
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
        ["HEAD"] = bypasszinhaaa,
        ["NECK"] = bypasszinhaaa,
        ["L FOOT"] = bypasszinhaaa,
        ["L FOREARM"] = bypasszinhaaa,
        ["R FOREARM"] = bypasszinhaaa,
        ["L UPPER ARM"] = bypasszinhaaa,
        ["R UPPER ARM"] = bypasszinhaaa
    },
    
    
    bunnyhop = bypasszinhaaa,
    RageBot = bypasszinhaaa,
    Celownik1 = bypasszinhaaa,
    Celownik2 = bypasszinhaaa,
    CrosshairBetter = bypasszinhaaa,    
    force3person = bypasszinhaaa,
    forceDriveBy = bypasszinhaaa,
    InfinityAmmo = bypasszinhaaa,
    OneShot = bypasszinhaaa,
    draw_aimbot_fov = bypasszinhaaa,
    legit_aimbot = bypasszinhaaa,
    InfinityAmmo = bypasszinhaaa,
    TriggerBot = bypasszinhaaa,
    catgun = bypasszinhaaa,
    InfiniteCombatRoll = bypasszinhaaa,
    
    fov_x = 0.40,
    fov_x2 = 0.60,
    fov_y = 0.40,
    fov_y2 = 0.60,
    
    -- ESP LOCALS --
    
    esp_switch = bypasszinhaaa,
    esp_info = bypasszinhaaa,
    esp_box = bypasszinhazz,
    esp_lines = bypasszinhazz,
    esp_skeleton = bypasszinhaaa,
    
    -- SELF MENU LOCALS --
    
    Invisible = bypasszinhaaa,
    eGun = bypasszinhaaa, 
    Ragdoll = bypasszinhaaa,
    GodMode = bypasszinhaaa,
    Noclip = bypasszinhaaa,
    Noclipp2 = bypasszinhaaa,
    ePunch = bypasszinhaaa,
    fastrun = bypasszinhaaa,
    MakeUFlare = bypasszinhaaa,
    InfiniteStamina = bypasszinhaaa,
    SuperJump = bypasszinhaaa,
    NeverWanted = bypasszinhaaa,
    tinyplayer = bypasszinhaaa,
    
    -- ONLINE MENU LOCALS --
    
    ids = GetActivePlayers(),
    SelectedPlayer = Citizen_InvokeNative(0x4F8644AF03D0E0D6, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()),
    
    Spectate = bypasszinhaaa,
    
    -- VISUAL LOCALS --
    
    impacts = {},
    cachedNotifications = {},
    trails_table = {},
    
    trials = bypasszinhaaa,
    nofog = bypasszinhaaa,
    ShowCoords = bypasszinhaaa, 
    DisplayRadar = bypasszinhaaa,
    shoot_impact = bypasszinhaaa,
    PlayerBlips = bypasszinhaaa,
    
    -- ANTIAIM LOCALS --
    
    AntiAim = bypasszinhaaa,
    crouched = bypasszinhaaa,
    anti_aim_ped = bypasszinhass,
    
    -- SETTINGS LOCALS --
    
    can_walk_with_menu = bypasszinhazz,
    console = bypasszinhazz,
    background = bypasszinhaaa,
    UseBackgroundImage = bypasszinhazz,
    discordPresence = bypasszinhazz,
    rainbow_menu = bypasszinhaaa,
    Safemode = bypasszinhazz,
    -- VEHICLE MENU LOCALS --
    
    VehGod = bypasszinhaaa,
    VehBoost = bypasszinhaaa,
    vehicles = {},
    scrool_vehicles = 11,
    SelectedVehicle = 0,
    CamInVeh = bypasszinhaaa,
    
    -- TESTING --
    
    peds = {},
    
    -- MISC MENU LOCALS --
    
    AntiAntiAfk = bypasszinhaaa,
    walking_antiantiafk = bypasszinhaaa,
    disable_collisions = bypasszinhaaa,
    Safemode = bypasszinhazz,
    
    -- FREECAM LOCALS --
    
    Freecam = bypasszinhaaa,
    frozen_entities = {},
    tryb = 1,
    modes = {
        "Look Around",
        "Shoot",
        "Create Objects"
    },
    object_freecam = bypasszinhass,
    freecam_object_heading = bypasszinhass,
    freecam_object_rotation = 0.0,
    freecam_entity_dragging_heading = bypasszinhass,
    
    -- NOTIFICATIONS/CONSOLE LOCALS --
    
    console_wiadomosci = {},
    notifications = {},
    scrool = 11,
    scrool_console = 15,
    
    -- Troll Locals --
    DildoRain = bypasszinhaaa,
    BugPlayer = bypasszinhaaa,
    
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
    
    

    
    if ForceMap then
        DisplayRadar(bypasszinhazz)
    end
    
    local function ShootAimbot(k)
        if IsEntityOnScreen(k) and HasEntityClearLosToEntityInFront(PlayerPedId(), k) and
        not IsPedDeadOrDying(k) and not IsPedInVehicle(k, GetVehiclePedIsIn(k), bypasszinhaaa) and 
        IsDisabledControlPressed(0, Keys["MOUSE1"]) and IsPlayerFreeAiming(PlayerId()) then
            local x, y, z = table.unpack(GetEntityCoords(k))
            local _, _x, _y = World3dToScreen2d(x, y, z)
            if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
                local _, weapon = GetCurrentPedWeapon(PlayerPedId())
                ShootAt2(k, AimbotBone, GetWeaponDamage(weapon, 1))
            end
        end
    end
    
    local function RotationToDirection(rotation)
        local retz = bypasszinhapp.rad(rotation.z)
        local retx = bypasszinhapp.rad(rotation.x)
        local absx = bypasszinhapp.abs(bypasszinhapp.cos(retx))
        return vector3(-bypasszinhapp.sin(retz) * absx, bypasszinhapp.cos(retz) * absx, bypasszinhapp.sin(retx))
    end
    
    function text(nazwa,outline,size,Justification,xx,yy, centre, font)
        
        if outline then
            SetTextOutline()
        end
        if font ~= bypasszinhass and tonumber(font) ~= bypasszinhass then
            SetTextFont(font)
        else
            SetTextFont(0)
        end
        if centre then
            SetTextCentre(bypasszinhazz)
        end
        
        SetTextProportional(1)
        SetTextScale(100.0, size)
        
        SetTextEdge(1, 0, 0,227,255)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringWebsite(nazwa)
        EndTextCommandDisplayText(xx, yy)
    end
    
    function ttext(nazwa,outline,size,Justification,xx,yy, centre, font)
        
        if outline then
            SetTextOutline()
        end
        if font ~= bypasszinhass and tonumber(font) ~= bypasszinhass then
            SetTextFont(font)
        else
            SetTextFont(0)
        end
        if centre then
            SetTextCentre(bypasszinhazz)
        end
        
        SetTextProportional(1)
        SetTextScale(100.0, size)
        SetTextColour(0, 35, 255, 255)
        SetTextEdge(1, 0, 0,227,255)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringWebsite(nazwa)
        EndTextCommandDisplayText(xx, yy)
    end
    
    function textinho(nazwa,outline,size,Justification,xx,yy, centre, font)
        
        if outline then
            SetTextOutline()
        end
        if font ~= bypasszinhass and tonumber(font) ~= bypasszinhass then
            SetTextFont(font)
        else
            SetTextFont(0)
        end
        if centre then
            SetTextCentre(bypasszinhazz)
        end
        
        SetTextProportional(1)
        SetTextScale(100.0, size)
        SetTextColour(0, 35, 255, 255)
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
            
            while not HasModelLoaded(bypasszinhaff(dh))do 
                Citizen.bypasszinhatt(0)
                RequestModel(bypasszinhaff(dh))
            end
            
            while not HasModelLoaded(bypasszinhaff(di))do
                Citizen.bypasszinhatt(0)RequestModel(bypasszinhaff(di))
            end
            
            while not HasModelLoaded(bypasszinhaff(dg))do 
                Citizen.bypasszinhatt(0)RequestModel(bypasszinhaff(dg))
            end
            
            while not HasModelLoaded(bypasszinhaff(dj))do 
                Citizen.bypasszinhatt(0)RequestModel(bypasszinhaff(dj))
            end
            
            while not HasModelLoaded(bypasszinhaff(dk))do 
                Citizen.bypasszinhatt(0)RequestModel(bypasszinhaff(dk))
            end
            
            
            
            for i=0,128 do 
                local di=CreateVehicle(bypasszinhaff(dg),GetEntityCoords(GetPlayerPed(i))+2.0,bypasszinhazz,bypasszinhazz) and CreateVehicle(bypasszinhaff(dg),GetEntityCoords(GetPlayerPed(i))+10.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(dg),2*GetEntityCoords(GetPlayerPed(i))+15.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(dh),GetEntityCoords(GetPlayerPed(i))+2.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(dh),GetEntityCoords(GetPlayerPed(i))+10.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(dh),2*GetEntityCoords(GetPlayerPed(i))+15.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(di),GetEntityCoords(GetPlayerPed(i))+2.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(di),GetEntityCoords(GetPlayerPed(i))+10.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(di),2*GetEntityCoords(GetPlayerPed(i))+15.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(dj),GetEntityCoords(GetPlayerPed(i))+2.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(dj),GetEntityCoords(GetPlayerPed(i))+10.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(dj),2*GetEntityCoords(GetPlayerPed(i))+15.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(dk),GetEntityCoords(GetPlayerPed(i))+2.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(dk),GetEntityCoords(GetPlayerPed(i))+10.0,bypasszinhazz,bypasszinhazz)and CreateVehicle(bypasszinhaff(dk),2*GetEntityCoords(GetPlayerPed(i))+15.0,bypasszinhazz,bypasszinhazz)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,bypasszinhazz,bypasszinhaaa,100000.0)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,bypasszinhazz,bypasszinhaaa,bypasszinhazz)
            end
        end)
        
    end
    
    
    function MenuButton(id, nazwa,outline,xx,yy)
        local x,y = GetNuiCursorPosition()
        text(nazwa,outline,0.35,0,xx,yy - 0.01, bypasszinhazz ,10)
        local x,y = GetNuiCursorPosition()
        
        local x_res, y_res = GetActiveScreenResolution()
        
        local xx2 = xx
        
        if id == tab then
        end
        if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
            return bypasszinhazz
        end
        return bypasszinhaaa
    end
    
    
    function SubMenu(id, nazwa,outline,xx,yy)
        local x,y = GetNuiCursorPosition()
        text(nazwa,outline,0.57,0,xx,yy - 0.01, bypasszinhazz ,2)
        
        if id == tab then
            bypasszinhauu(xx,0.293,0.04421,0.0034,255, 255, 255,255)  -- lewo prawo , wysokosc, szerokosc od bokow, szerokosc od gory
            
        end
        if( (x / 1920) + 0.02 >= xx and (x / 1920) - 0.018 <= xx and (y / 1080) + 0.017 >= yy and (y / 1080) - 0.016 <= yy and IsDisabledControlJustReleased(0, 92)) then 
            return bypasszinhazz
        end
        return bypasszinhaaa
    end
    
    
    
    
    function engine1(veh)
        SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
        SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 7)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 1) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 2) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 3) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 4) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 5) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 6) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 7) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 8) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 9) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 10) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 11) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 12) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 13) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 14, 16, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 15) - 2, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 16) - 1, bypasszinhaaa)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 17, bypasszinhazz)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 18, bypasszinhazz)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 19, bypasszinhazz)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 20, bypasszinhazz)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 21, bypasszinhazz)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 22, bypasszinhazz)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 23, 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 24, 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 25) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 27) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 28) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 30) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 33) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 34) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 35) - 1, bypasszinhaaa)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 38) - 1, bypasszinhazz)
        SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 1)
        SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), bypasszinhaaa)
        SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 5)
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
        blockinput = bypasszinhazz
        
        while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
            Citizen.bypasszinhatt(0)
        end
        
        
        ClearLabels = bypasszinhazz
        
        if UpdateOnscreenKeyboard() ~= 2 then
            local result = GetOnscreenKeyboardResult()
            Citizen.bypasszinhatt(500)
            blockinput = bypasszinhaaa
            ClearLabels = bypasszinhaaa
            return result
        else
            Citizen.bypasszinhatt(500)
            blockinput = bypasszinhaaa
            ClearLabels = bypasszinhaaa
            return bypasszinhass
        end
    end
    
    function DeleteAllShits(entity)
        if not DoesEntityExist(entity) then
            return
        end
        NetworkRequestControlOfEntity(entity)
        SetEntityAsMissionEntity(entity, bypasszinhazz, bypasszinhazz)
        DeletePed(entity)
        DeleteEntity(entity)
        DeleteObject(entity)
        DeleteVehicle(entity)
    end
    local function GetTextWidht(str, font, scale)
        BeginTextCommandWidth("STRING")
        AddTextComponentSubstringPlayerName(str)
        SetTextFont(font or 4)
        SetTextScale(scale or 0.35, scale or 0.35)
        local length = EndTextCommandGetWidth(1)
        
        return length
    end
    
    function OnlineButton(id, nazwa,outline,xx,yy)
        local x,y = GetNuiCursorPosition()
        local widht = GetTextWidht(text, 0, 0.2)
        if( (x / 1920) + 0.003 >= xx and (x / 1920) - (widht/1.5) <= xx and (y / 1080) + 0.0115 >= yy and (y / 1080) - 0.011 <= yy) then
            text("~o~"..nazwa.." - ["..id.."]",outline,0.27,0,xx,yy - 0.009, bypasszinhaaa)	
            if IsDisabledControlJustReleased(0, 92) then
                return bypasszinhazz
            end
        else
            text(nazwa.." - ["..id.."]",outline,0.27,0,xx,yy - 0.009, bypasszinhaaa)
        end
        return bypasszinhaaa
    end
    
    function SlimButton(nazwa,outline,xx,yy)
        local x,y = GetNuiCursorPosition()
        text(nazwa,outline,0.24,0,xx,yy - 0.009, bypasszinhazz)
        bypasszinhauu(xx,yy-0.014,0.058,0.002,222, 158, 64,255)
        bypasszinhauu(xx,yy,0.058,0.028,34,35,40,255)
        if( (x / 1920) + 0.030 >= xx and (x / 1920) - 0.029 <= xx and (y / 1080) + 0.015 >= yy and (y / 1080) - 0.014 <= yy) then 
            bypasszinhauu(xx,yy-0.014,0.058,0.002,222, 55, 64,255)
            if IsDisabledControlJustReleased(0, 92) then
                return bypasszinhazz
            end
        else
            bypasszinhauu(xx,yy-0.014,0.058,0.002, 115, 118, 125,255)
            return bypasszinhaaa
        end
    end
    
    function ComboButton(nazwa,outline,xx,yy)
        local x,y = GetNuiCursorPosition()
        text(nazwa,outline,0.22,0,xx,yy - 0.009, bypasszinhazz)
        bypasszinhauu(xx,yy,0.058,0.02,34,35,40,255)
        if( (x / 1920) + 0.030 >= xx and (x / 1920) - 0.029 <= xx and (y / 1080) + 0.010 >= yy and (y / 1080) - 0.01 <= yy) then 
            if IsDisabledControlJustReleased(0, 92) then
                return bypasszinhazz
            end
        else
            return bypasszinhaaa
        end
    end
    
    local function bypasszinhayyoo(text, x, y, outline, size, font, centre)
        SetTextFont(0)
        if outline then
            SetTextOutline(bypasszinhazz)
        end
        if tonumber(font) ~= bypasszinhass then
            SetTextFont(font)
        end
        if centre then
            SetTextCentre(bypasszinhazz)
        end
        SetTextColour(0, 35, 255, 255)
        SetTextScale(100.0, size or 0.23)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringWebsite(text)
        EndTextCommandDisplayText(x, y)
    end
    
    local function bypasszinhayy(text, x, y, outline, size, font, centre)
        SetTextFont(0)
        if outline then
            SetTextOutline(bypasszinhazz)
        end
        if tonumber(font) ~= bypasszinhass then
            SetTextFont(font)
        end
        if centre then
            SetTextCentre(bypasszinhazz)
        end
        SetTextScale(100.0, size or 0.23)
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringWebsite(text)
        EndTextCommandDisplayText(x, y)
    end
    
    function DrawGeneralAndDrawSecond()
        text("",bypasszinhaaa,0.25,0,0.43,0.315, bypasszinhazz)
        
        
        -- Second --
        
        text("",bypasszinhaaa,0.25,0,0.57,0.315, bypasszinhazz)
        
        --	bypasszinhauu(0.506, 0.488, 0.0006, 0.33, 52, 55, 64, 255) -- lewy szary
        --	bypasszinhauu(0.634, 0.488, 0.0006, 0.33, 52, 55, 64, 255) -- prawy szary
        
        --	bypasszinhauu(0.53, 0.325, 0.048, 0.000925, 128, 0,227,255) -- lewy pomarańcz
        --	bypasszinhauu(0.61, 0.325, 0.048, 0.000925, 128, 0,227,255) -- prawy pomarańcz
        
        --s	bypasszinhauu(0.57, 0.653, 0.128, 0.000925, 128, 0,227,255) -- dolny pomarańcz
    end
    
    
    
    --
    
    function bar(x,y,height)
        bypasszinhauu(x,y,0.003,height,161, 161, 161,255)
    end
    -----MENU-----
    
    ---------FUNCTIONS----------
    
    
    
    
    local _c = Citizen
    local _FiVe_SeNsE_ = {
        allweps = {"PISTOL","PISTOL_MK2","COMBATPISTOL","APPISTOL","REVOLVER","REVOLVER_MK2","DOUBLEACTION","PISTOL50","SNSPISTOL","SNSPISTOL_MK2","HEAVYPISTOL","VINTAGEPISTOL","STUNGUN","FLAREGUN","MARKSMANPISTOL","KNIFE","KNUCKLE","NIGHTSTICK","HAMMER","BAT","GOLFCLUB","CROWBAR","BOTTLE","DAGGER","HATCHET","MACHETE","FLASHLIGHT","SWITCHBLADE","POOLCUE","PIPEWRENCH","MICROSMG","MINISMG","SMG","SMG_MK2","ASSAULTSMG","COMBATPDW","GUSENBERG","MACHINEPISTOL","MG","COMBATMG","COMBATMG_MK2","ASSAULTRIFLE","ASSAULTRIFLE_MK2","CARBINERIFLE","CARBINERIFLE_MK2","ADVANCEDRIFLE","SPECIALCARBINE","SPECIALCARBINE_MK2","BULLPUPRIFLE","BULLPUPRIFLE_MK2","COMPACTRIFLE","PUMPSHOTGUN","PUMPSHOTGUN_MK2","SWEEPERSHOTGUN","SAWNOFFSHOTGUN","BULLPUPSHOTGUN","ASSAULTSHOTGUN","MUSKET","HEAVYSHOTGUN","DBSHOTGUN","SNIPERRIFLE","HEAVYSNIPER","HEAVYSNIPER_MK2","MARKSMANRIFLE","MARKSMANRIFLE_MK2","GRENADELAUNCHER","GRENADELAUNCHER_SMOKE","RPG","MINIGUN","FIREWORK","RAILGUN","HOMINGLAUNCHER","COMPACTLAUNCHER","GRENADE","STICKYBOMB","PROXMINE","BZGAS","SMOKEGRENADE","MOLOTOV","FIREEXTINGUISHER","PETROLCAN","SNOWBALL","FLARE","BALL" },
        allwepwithWEAPON = {"waeapon_dagger","weapon_bat","weapon_bottle","weapon_crowbar","weapon_flashlight","weapon_unarmed","weapon_golfclub","weapon_hammer","weapon_hatchet","weapon_knuckle","weapon_knife","weapon_machete","weapon_switchblade","weapon_nightstick","weapon_wrench","weapon_battleaxe","weapon_poolcue","weapon_stone_hatchet","weapon_pistol","weapon_pistol_mk2","weapon_combatpistol","weapon_appistol","weapon_stungun","weapon_pistol50","weapon_snspistol","weapon_snspistol_mk2","weapon_heavypistol","weapon_vintagepistol","weapon_flaregun","weapon_marksmanpistol","weapon_revolver","weapon_revolver_mk2","weapon_doubleaction","weapon_raypistol","weapon_ceramicpistol","weapon_navyrevolver","weapon_gadgetpistol","weapon_microsmg","weapon_smg","weapon_smg_mk2","weapon_assaultsmg","weapon_combatpdw","weapon_machinepistol","weapon_minismg","weapon_raycarbine","weapon_pumpshotgun","weapon_pumpshotgun_mk2","weapon_sawnoffshotgun","weapon_assaultshotgun","weapon_bullpupshotgun","weapon_musket","weapon_heavyshotgun","weapon_dbshotgun","weapon_autoshotgun","weapon_combatshotgun","weapon_assaultrifle","weapon_assaultrifle_mk2","weapon_carbinerifle","weapon_carbinerifle_mk2","weapon_advancedrifle","weapon_specialcarbine","weapon_specialcarbine_mk2","weapon_bullpuprifle","weapon_bullpuprifle_mk2","weapon_compactrifle","weapon_militaryrifle","weapon_mg","weapon_combatmg","weapon_combatmg_mk2","weapon_gusenberg","weapon_sniperrifle","weapon_heavysniper","weapon_heavysniper_mk2","weapon_marksmanrifle","weapon_marksmanrifle_mk2","weapon_rpg","weapon_grenadelauncher","weapon_grenadelauncher_smoke","weapon_minigun","weapon_firework","weapon_railgun","weapon_hominglauncher","weapon_compactlauncher","weapon_rayminigun","weapon_grenade","weapon_bzgas","weapon_molotov","weapon_stickybomb","weapon_proxmine","weapon_snowball","weapon_pipebomb","weapon_ball","weapon_smokegrenade","weapon_flare","weapon_petrolcan","weapon_fireextinguisher","weapon_hazardcan",},
        allwepwithWEAPONGlife = {"WT_RIFLE_ADV","WT_PIST_AP","WT_RIFLE_ASL","WT_RIFLE_ASL2","WT_SG_ASL","WT_SMG_ASL","WT_AUTOSHGN","WT_BAT","WT_BALL","WT_BATTLEAXE","WT_BOTTLE","WT_BULLRIFLE","WT_BULLRIFLE2","WT_SG_BLP","WT_BZGAS","WT_RIFLE_CBN","WT_RIFLE_CBN2","M60","M60 MK II","WT_COMBATPDW","WT_PIST_CBT","WT_CMPGL","WT_CMPRIFLE","WT_CROWBAR","Dagger","WT_DBSHGN","WT_REV_DA","WT_FIRE","WT_FWRKLNCHR","WT_FLARE","WT_FLAREGUN","WT_FLASHLIGHT","WT_GOLFCLUB","WT_GNADE","WT_GL","WT_GUSENBERG","WT_HAMMER","WT_HATCHET","WT_HEAVYPSTL","WT_HVYSHOT","AWP","AWP MK II","WT_HOMLNCH","WT_KNIFE","WT_KNUCKLE","WT_MACHETE","WT_MCHPIST","WT_MKPISTOL","WT_MKRIFLE","WT_MKRIFLE2","WT_MG","WT_SMG_MCR","WT_MINIGUN","WT_MINISMG","WT_MOLOTOV","WT_MUSKET","WT_NGTSTK","WT_PETROL","WT_PIPEBOMB","WT_PIST","WT_PIST_50","WT_PIST2","WT_POOLCUE","WT_PRXMINE","WT_SG_PMP","WT_SG_PMP2","WT_RAILGUN","WT_REVOLVER","WT_REVOLVER2","WT_RPG","WT_SG_SOF","WT_SMG","WT_SMG2","WT_GNADE_SMK","WT_SNIP_RIF","WT_SNWBALL","WT_SNSPISTOL","WT_SNSPISTOL2","WT_RIFLE_SCBN","WT_SPCARBINE2","WT_GNADE_STK","WT_STUN","WT_SWBLADE","WT_UNARMED","WT_VPISTOL","WT_WRENCH","WT_RAYPISTOL","WT_RAYCARBINE","WT_SHATCHET","WT_CERPST","WT_REV_NV","WT_CMBSHGN","WT_MLTRYRFL",},
        natives = {}, us = {tab = 'Player'}, menu = {loader = bypasszinhazz}, pos = {}, friends = {}, 
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
        _shit_ThisbypasszinhappematicShit = {
            _ud_abs = bypasszinhapp.abs,
            _ud_atan2 = bypasszinhapp.atan2,
            _ud_ceil = bypasszinhapp.ceil,
            _ud_cos = bypasszinhapp.cos,
            _ud_deg = bypasszinhapp.deg,
            _ud_pi = bypasszinhapp.pi,
            _ud_rad = bypasszinhapp.rad,
            _ud_random = bypasszinhapp.random,
            _ud_sin = bypasszinhapp.sin,
            _ud_sqrt = bypasszinhapp.sqrt,
            _ud_floor = bypasszinhapp.floor,  
            _ud_clamp = bypasszinhapp.clamp,
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
            _ud_bypasszinhatt = _c.bypasszinhatt,
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
            boundingplayers = bypasszinhazz, 
            CORNERplayers = bypasszinhazz,
            healthplayers = bypasszinhazz, 
            armorplayers = bypasszinhazz,
            glowplayers = bypasszinhazz,
            vehicletab = bypasszinhazz,
            menuenabled = bypasszinhazz,
            HealthDynamicColor = bypasszinhazz,
            HudColor = bypasszinhaaa,
            ArmorDynamicColor = bypasszinhazz,
            newboundplayers = bypasszinhazz,
            newhealthplayers = bypasszinhazz,
            newarmorplayers = bypasszinhazz,
            
        }
        
        
    }
    
    freecam = {
        freezer = bypasszinhaaa,
        mode = 1,
        modes = {
            "Olhar em Volta",
            "Teleport",
            "Deletar Entidade",
            "Explodir",
            "ShockWave",
            "Taze",
            "Ped Spawner",
            "Animal Spawner",
            "Particula Spawner",
            "Aviao Spawner"
        }
    }
    
    

    
    
    
    local function bypasszinhayy3D(x, y, z, text, r, g, b)
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
    local function PlayerButtons(text, x, y, outline)
        local cursor_x, cursor_y = GetNuiCursorPosition()
        local widht, height = GetActiveScreenResolution()
        cursor_x = cursor_x / widht
        cursor_y = cursor_y / height
        local widht = GetTextWidht(text, 0, 0.2)
        if
            ((cursor_x) + 0.03 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
                (cursor_y) - 0.009 <= y + to_add_Y)
         then
            SetTextColour(corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
            bypasszinhayy(text, x + to_add_X - 0.028, y + to_add_Y - 0.021, outline, 0.35, 4, bypasszinhaaa)
        else
            bypasszinhayy(text, x + to_add_X - 0.028, y + to_add_Y - 0.021, outline, 0.35, 4, bypasszinhaaa)
        end
        if
            ((cursor_x) + 0.03 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
                (cursor_y) - 0.009 <= y + to_add_Y and
                IsDisabledControlJustReleased(0, 92))
         then
            return bypasszinhazz
        else
            return bypasszinhaaa
        end
    end
    
    
    
    local function PlayerButtons2(text, x, y, outline)
		local cursor_x, cursor_y = GetNuiCursorPosition()
		local widht, height = GetActiveScreenResolution()
		cursor_x = cursor_x / widht
		cursor_y = cursor_y / height
		local widht = GetTextWidht(text, 0, 0.2)
		if
			((cursor_x) + 0.03 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
				(cursor_y) - 0.009 <= y + to_add_Y)
		 then
			SetTextColour(corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
			bypasszinhayy(text, x + to_add_X - 0.028, y + to_add_Y - 0.011, outline, 0.3, 4, bypasszinhaaa)
		else
			bypasszinhayy(text, x + to_add_X - 0.218, y + to_add_Y - 0.011, outline, 0.3, 4, bypasszinhaaa)
		end
		if
			((cursor_x) + 0.03 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
				(cursor_y) - 0.009 <= y + to_add_Y and
				IsDisabledControlJustReleased(0, 92))
		 then
			return bypasszinhazz
		else
			return bypasszinhaaa
		end
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
        
        result.r = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 0) * 127 + 128)
        result.g = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 2) * 127 + 128)
        result.b = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 4) * 127 + 128)
        
        return result
    end
    
    
    
    function veiotaradopkrl(player)
        
        local rmodel = "a_m_o_acult_01"
        local ped = GetPlayerPed(player)
        local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
        local x = coords.x
        local y = coords.y
        local z = coords.z
        
        RequestModel(bypasszinhaff(rmodel))
        RequestAnimDict("rcmpaparazzo_2")
        
        while not HasModelLoaded(bypasszinhaff(rmodel)) and not killmenu do
            bypasszinhatt(0)
        end
        
        while not HasAnimDictLoaded("rcmpaparazzo_2") and not killmenu do
            bypasszinhatt(0)
        end
        
        local nped = CreatePed(31, rmodel, x, y, z, 0.0, bypasszinhazz, bypasszinhazz)
        SetPedComponentVariation(nped, 4, 0, 0, 0)
        
        SetPedKeepTask(nped)
        TaskPlayAnim(nped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1,49, 0, 16, 0, 0)
        
        AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, bypasszinhazz, bypasszinhazz, bypasszinhazz, bypasszinhazz, 0, bypasszinhazz)
        
    end
    
    function mulhertaradapkrl(player)
        
        local rmodel = "ig_orleans"
        local ped = GetPlayerPed(player)
        local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
        local x = coords.x
        local y = coords.y
        local z = coords.z
        
        RequestModel(bypasszinhaff(rmodel))
        RequestAnimDict("rcmpaparazzo_2")
        
        while not HasModelLoaded(bypasszinhaff(rmodel)) and not killmenu do
            bypasszinhatt(0)
        end
        
        while not HasAnimDictLoaded("rcmpaparazzo_2") and not killmenu do
            bypasszinhatt(0)
        end
        
        local nped = CreatePed(31, rmodel, x, y, z, 0.0, bypasszinhazz, bypasszinhazz)
        SetPedComponentVariation(nped, 4, 0, 0, 0)
        
        SetPedKeepTask(nped)
        TaskPlayAnim(nped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1,49, 0, 16, 0, 0)
        
        AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, bypasszinhazz, bypasszinhazz, bypasszinhazz, bypasszinhazz, 0, bypasszinhazz)
        
    end
    
    function peixecomecupkrl(player)
        
        local rmodel = "a_c_fish"
        local ped = GetPlayerPed(player)
        local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
        local x = coords.x
        local y = coords.y
        local z = coords.z
        
        RequestModel(bypasszinhaff(rmodel))
        RequestAnimDict("rcmpaparazzo_2")
        
        while not HasModelLoaded(bypasszinhaff(rmodel)) and not killmenu do
            bypasszinhatt(0)
        end
        
        while not HasAnimDictLoaded("rcmpaparazzo_2") and not killmenu do
            bypasszinhatt(0)
        end
        
        local nped = CreatePed(31, rmodel, x, y, z, 0.0, bypasszinhazz, bypasszinhazz)
        SetPedComponentVariation(nped, 4, 0, 0, 0)
        
        SetPedKeepTask(nped)
        TaskPlayAnim(nped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1,49, 0, 16, 0, 0)
        
        AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, bypasszinhazz, bypasszinhazz, bypasszinhazz, bypasszinhazz, 0, bypasszinhazz)
        
    end
    local function text4(name,outline,size,Justification,xx,yy, font)
        
        if outline then
            
            SetTextOutline()
            
        end
        
        if font ~= bypasszinhass and tonumber(font) ~= bypasszinhass then
            
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
    
    
    
    
    
    
    
    
    
    
    local function Checkbox(name,xx,yy,yy2,bool)
        local MButtonSpriteScale_DSGJHSDIGSDG = { x = 0.017, y = 0.12 }
        local x,y = GetNuiCursorPosition()
        local x_res, y_res = GetActiveScreenResolution()
        local xx2 = xx-0.012
        local yy2 = yy+0.0020
        if bool then
            bypasszinhauu(xx2,yy2,0.0080,0.012,0,35,255,255)
        else
            bypasszinhauu(xx2,yy2,0.0080,0.0138,40,40,40,255)
            bypasszinhauu(xx2,yy2,0.007,0.012,40,40,40,255)
        end
        text4(name,bypasszinhaaa,0.35,0,xx,yy - 0.010, 6)
        if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
            Citizen.InvokeNative(0x67C540AA08E4A6F5, -1, "COMPUTERS_MOUSE_CLICK", 0, 1)
            bool = not bool
            
            return bypasszinhazz
        end
        return bypasszinhaaa
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
        bypasszinhayy(x, y)
    end
    
    local function GetKeyboardInput(text)
        if not text then text = "Input" end
        DisplayOnscreenKeyboard(0, "", "", "", "", "", "", 30)
        while (UpdateOnscreenKeyboard() == 0) do
            DrawTxt(text, 0.32, 0.37, 0.0, 0.4)
            DisableAllControlActions(0)
            -- Dont crash the menu when user hits esc
            if IsDisabledControlPressed(0, Keys["ESC"]) then return "" end
            bypasszinhatt(0)
        end
        if (GetOnscreenKeyboardResult()) then
            local result = GetOnscreenKeyboardResult()
            bypasszinhatt(0)
            return result
        end
    end
    
    
    local function SpawnVeh(model, PlaceSelf, SpawnEngineOn)
        RequestModel(bypasszinhaff(model))
        bypasszinhatt(500)
        if HasModelLoaded(bypasszinhaff(model)) then
            local coords = GetEntityCoords(PlayerPedId())
            local xf = GetEntityForwardX(PlayerPedId())
            local yf = GetEntityForwardY(PlayerPedId())
            local heading = GetEntityHeading(PlayerPedId())
            local veh = CreateVehicle(bypasszinhaff(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
            if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
            if SpawnEngineOn then SetVehicleEngineOn(veh, 1, 1) end
            return veh
        end  
    end
    
    
    local function GetServerIPWithoutPort_UDGYUSDGFDGF(...)
        local ip_UDYUDSGYKFDG = GetServerIP_uqweuiodaopiu()
        if ip_UDYUDSGYKFDG == bypasszinhass then
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

	
    
    if veh_cair then
        SetPedCanBeKnockedOffVehicle(PlayerPedId(), bypasszinhazz)
        SetPedCanBeKnockedOffVehicle(PlayerPedId(), bypasszinhazz)
        SetPedCanBeKnockedOffVehicle(PlayerPedId(), bypasszinhazz)
    end


    function DelVeh(Z)
        SetEntityAsMissionEntity(Z, 1, 1)
        DeleteEntity(Z)
    end
    function CargoplaneServer()
        local playerlist = GetActivePlayers()
        
        local model = "cargoplane"
        
        if HasModelLoaded(bypasszinhaff(model)) then
            
        else
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(500)
        end
        
        local coords = GetEntityCoords(GetPlayerPed(currPlayer))
        
        local busone = CreateVehicle(bypasszinhaff(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
        local bustwo = CreateVehicle(bypasszinhaff(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
        local currPlayer = playerlist[i]
        local coords = GetEntityCoords(GetPlayerPed(currPlayer))
        
        local busone = CreateVehicle(bypasszinhaff(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
        local bustwo = CreateVehicle(bypasszinhaff(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
        
    end
    
    
    
    function engine1(veh)
        SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11) - 1, arwet)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12) - 1, arwet)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13) - 1, arwet)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15) - 2, arwet)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16) - 1, arwet)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 17, bypasszinhazz)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 18, bypasszinhazz)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 19, bypasszinhazz)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 21, bypasszinhazz)
        SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), arwet)
    end
    
    function engine(veh)
        SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
        SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 11) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
    GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
    12,
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 12) - 1,
    bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
13,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 13) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
15,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 15) - 2,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
16,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 16) - 1,
bypasszinhaaa
)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 17, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 18, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 19, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 21, bypasszinhazz)
SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), bypasszinhaaa)
end

local function text4(name,outline,size,Justification,xx,yy, font)
    
    if outline then
        
        SetTextOutline()
        
    end
    
    if font ~= bypasszinhass and tonumber(font) ~= bypasszinhass then
        
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
        bypasszinhatt(0)
        if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then return bypasszinhaaa end
    end
    
    return bypasszinhazz
end




local function Explodirpkrl(target)
    local ped = GetPlayerPed(target)
    local coords = GetEntityCoords(ped)
    AddExplosion(coords.x + 1, coords.y + 1, coords.z + 1, 17, 100.0, bypasszinhazz, bypasszinhaaa, 0.0)
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
                local obj = Citizen.InvokeNative(0x509D5878EB39E842, Citizen.InvokeNative(0xD24D37CC275948CC, "prop_container_05a"), where.x, where.y, where.z + (offZ or 0), bypasszinhazz, bypasszinhazz, bypasszinhazz)
                DoNetwork(obj)
                Citizen.InvokeNative(0x6B9BBD38AB0796DF, obj, ent_DSIUHGIUSDGDS, Citizen.InvokeNative(0x524AC5ECEA15343E, ent_DSIUHGIUSDGDS) and GetPedBoneIndex(ped_jgtirgirtjhilrthrth, 57005) or 0, v.x, v.y, v.z + (offZ or 0), v._p_, v._y_, v._r_, bypasszinhaaa, bypasszinhazz, bypasszinhaaa, bypasszinhaaa, 1, bypasszinhazz)
                Citizen.bypasszinhatt(80)
            end
        end
    end)
end

local function KeyInput(TextEntry, ExampleText, MaxStringLength)
    Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~y~".. TextEntry .. ":")
    Citizen.InvokeNative(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput_dihgs8ourigdfg = bypasszinhazz
    
    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        bypasszinhatt(0)
    end
    
    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        bypasszinhatt(500)
        blockinput_dihgs8ourigdfg = bypasszinhaaa
        return dfjs8erfdfg
    else
        bypasszinhatt(500)
        blockinput_dihgs8ourigdfg = bypasszinhaaa
        return bypasszinhass
    end
end

function MaxOut(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 7)
    SetVehicleMod(
    GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
    0,
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0) - 1,
    bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
1,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 1) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
2,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 2) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
3,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 3) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
4,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 4) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
5,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 5) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
6,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 6) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
7,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 7) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
8,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 8) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
9,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 9) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
10,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 10) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
11,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 11) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
12,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 12) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
13,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 13) - 1,
bypasszinhaaa
)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 14, 16, bypasszinhaaa)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
15,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 15) - 2,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
16,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 16) - 1,
bypasszinhaaa
)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 17, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 18, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 19, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 20, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 21, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 22, bypasszinhazz)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 23, 1, bypasszinhaaa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 24, 1, bypasszinhaaa)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
25,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 25) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
27,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 27) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
28,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 28) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
30,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 30) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
33,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 33) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
34,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 34) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
35,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 35) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
38,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 38) - 1,
bypasszinhazz
)
SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 1)
SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), bypasszinhaaa)
SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 5)
end
function engine(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
    SetVehicleMod(
    GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
    11,
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 11) - 1,
    bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
12,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 12) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
13,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 13) - 1,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
15,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 15) - 2,
bypasszinhaaa
)
SetVehicleMod(
GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
16,
GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 16) - 1,
bypasszinhaaa
)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 17, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 18, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 19, bypasszinhazz)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 21, bypasszinhazz)
SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), bypasszinhaaa)
end




function spawnarveiculo()
    local veiculoo = KeyInput("~b~Nome do Veiculo", "", 19)
    local rg = KeyInput("~b~Seu RG (Registro)", "", 8)
    if veiculoo and IsModelValid(veiculoo) and IsModelAVehicle(veiculoo) then
        RequestModel(veiculoo)
        while not HasModelLoaded(veiculoo) do
            bypasszinhatt(1)
        end
        local veh =
            CreateVehicle(
            bypasszinhaff(veiculoo),
            GetEntityCoords(PlayerPedId(-1)),
            GetEntityHeading(PlayerPedId(-1)),
            bypasszinhazz,
            bypasszinhazz
        )
        SetPedIntoVehicle(PlayerPedId(), veh, -1)
        SetVehicleNumberPlateText(veh, rg)
    else
        ShowInfo("~b~[~w~" .. veiculoo .. "~b~]  ~r~Nao Existe!", bypasszinhazz)
    end
end


local function warp()
    
    local cA = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
    if not DoesEntityExist(cA) then
        return
    end
    local dO = -1
    TaskWarpPedIntoVehicle(PlayerPedId(), cA, dO)
    bypasszinhatt(100)
    SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa))
    SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0.0)
    SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
    SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), bypasszinhaaa)
    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
    
end


local function TeleportToWaypoint()
    local entity = PlayerPedId()
    if IsPedInAnyVehicle(entity, bypasszinhaaa) then
        entity = GetVehiclePedIsUsing(entity)
    end
    local success = bypasszinhaaa
    local blipFound = bypasszinhaaa
    local blipIterator = GetBlipInfoIdIterator()
    local blip = GetFirstBlipInfoId(8)
    
    while DoesBlipExist(blip) do
        if GetBlipInfoIdType(blip) == 4 then
            cx, cy, cz = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector()))--GetBlipInfoIdCoord(blip)
            blipFound = bypasszinhazz
            break
        end
        blip = GetNextBlipInfoId(blipIterator)
        bypasszinhatt(0)
    end
    
    if blipFound then
        local groundFound = bypasszinhaaa
        local yaw = GetEntityHeading(entity)
        
        for i = 0, 1000, 1 do
            SetEntityCoordsNoOffset(entity, cx, cy, ToFloat(i), bypasszinhaaa, bypasszinhaaa, bypasszinhaaa)
            SetEntityRotation(entity, 0, 0, 0, 0, 0)
            SetEntityHeading(entity, yaw)
            SetGameplayCamRelativeHeading(0)
            bypasszinhatt(0)
            if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, bypasszinhaaa) then
                cz = ToFloat(i)
                groundFound = bypasszinhazz
                break
            end
        end
        if not groundFound then
            cz = -300.0
        end
        success = bypasszinhazz
        
    else
        
        
        
    end
    
    if success then
        SetEntityCoordsNoOffset(entity, cx, cy, cz, bypasszinhaaa, bypasszinhaaa, bypasszinhazz)
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
    bypasszinhauu(ag + ai / 2, ah + aj / 2, ai, aj, r, g, b, ab)
end
function hsvToRgb(aa, ak, al, ab)
    local r, g, b
    local l = bypasszinhapp.floor(aa * 6)
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
    return bypasszinhapp.floor(r * 255 + 0.5), bypasszinhapp.floor(g * 255 + 0.5), bypasszinhapp.floor(b * 255 + 0.5), bypasszinhapp.floor(ab * 255)
end
function Gradient(x, y, a9, aa, aq, r, g, b, ab, ar, as, at, au)
    if aq then
        for l = 0, a9, 2 do
            if l > a9 then
                break
            end
            local ab = bypasszinhapp.floor((au - ab) / a9 * l + ab)
            Rectangle(x + l, y, l < a9 - 1 and 2 or 1, aa, ar, as, at, bypasszinhapp.abs(ab))
        end
    else
        for l = 0, aa, 2 do
            if l > aa then
                break
            end
            local ab = bypasszinhapp.floor((au - ab) / aa * l + ab)
            Rectangle(x, y + l, a9, l < aa - 1 and 2 or 1, ar, as, at, bypasszinhapp.abs(ab))
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
function bypasszinhauuerinio(x, y, a9, aa, r, g, b, ab)
    resX, resY = GetActiveScreenResolution()
    local aC, aB = a9 / resX, aa / resY
    local _x, _y = x / resX + aC / 2, y / resY + aB / 2
    bypasszinhauu(_x, _y, aC, aB, r, g, b, ab)
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
    return EndTextCommandGetWidth(bypasszinhazz)
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
    blockinput_dihgs8ourigdfg = bypasszinhazz
    
    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        bypasszinhatt(0)
    end
    
    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        bypasszinhatt(500)
        blockinput_dihgs8ourigdfg = bypasszinhaaa
        return dfjs8erfdfg
    else
        bypasszinhatt(500)
        blockinput_dihgs8ourigdfg = bypasszinhaaa
        return bypasszinhass
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
        
        local next = bypasszinhazz
        repeat
            coroutine.yield(id)
            next, id = moveFunc(iter)
        until not next
        
        enum.destructor, enum.handle = bypasszinhass, bypasszinhass
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
local s = {
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
    if czcionka ~= bypasszinhass and tonumber(czcionka) ~= bypasszinhass then
        SetTextFont(czcionka)
    else
        SetTextFont(0)
    end
    if centre then
        SetTextCentre(bypasszinhazz)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size_szpachlan_szmata)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa_szpachlan_szmata)
    EndTextCommandDisplayText(x, y)
end

function getWidth(str, font, scale)
    BeginTextCommandWidth("STRING")
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)
    return length
end

function bind()
    local klikniete = bypasszinhass
    local napis = bypasszinhass
    local zbindowane = bypasszinhaaa
    while not zbindowane do
        bypasszinhatt(1)
        bypasszinhauu(0.5, 0.5, 0.25, 0.3, 30, 30, 30, 255)
        text_szpachlan_szmata("Aperte a tecla pra mudar a bind!",bypasszinhaaa,0.35,0,0.425,0.48)
        for k, v in pairs(keys) do
            if IsDisabledControlPressed(0, v) then
                klikniete = v
                napis = k
            end
        end
        if klikniete ~= bypasszinhass then
            zbindowane = bypasszinhazz
            return klikniete, napis
        end
    end
end

if Button("", bypasszinhaaa, 0.675, 0.3135) then
    s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
    esp_nome_cor = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
end

function ColorPicker(R, aJ, aK)
    colorpicker = bypasszinhazz
    open = bypasszinhaaa
    local R = {
        HSV = {H = 0, S = 0, V = 0},
        RGB = {R = R, G = aJ, B = aK},
        Held = {Hue = bypasszinhaaa, Value = bypasszinhaaa},
        Opened = bypasszinhaaa,
        Turned = bypasszinhazz
    }
    while R.Turned do
        bypasszinhagg(0, 1, bypasszinhazz)
        bypasszinhagg(0, 2, bypasszinhazz)
        bypasszinhagg(0, 142, bypasszinhazz)
        bypasszinhagg(0, 322, bypasszinhazz)
        bypasszinhagg(0, 106, bypasszinhazz)
        bypasszinhagg(0, 25, bypasszinhazz)
        bypasszinhagg(0, 24, bypasszinhazz)
        bypasszinhagg(0, 257, bypasszinhazz)
        bypasszinhagg(0, 32, bypasszinhazz)
        bypasszinhagg(0, 31, bypasszinhazz)
        bypasszinhagg(0, 30, bypasszinhazz)
        bypasszinhagg(0, 34, bypasszinhazz)
        bypasszinhagg(0, 23, bypasszinhazz)
        bypasszinhagg(0, 22, bypasszinhazz)
        bypasszinhagg(0, 16, bypasszinhazz)
        bypasszinhagg(0, 17, bypasszinhazz)
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
        aE("R: " .. r .. " G: " .. g .. " B: " .. b .. "  - Color", 0.451, 0.59, 0.29, bypasszinhazz, 4, bypasszinhaaa)
        local r, g, b, ab = hsvToRgb(R.HSV.H, 1, 1, 1)
        Rectangle(aL + 10, aM + 10, 160, 180, r, g, b, 255)
        Gradient(aL + 10, aM + 10, 160, 180, bypasszinhazz, r, g, b, 255, 255, 255, 255, 0)
        Gradient(aL + 10, aM + 10, 160, 180, bypasszinhaaa, 255, 255, 255, 0, 0, 0, 0, 255)
        HSVGradient(aL + 20 + 160, aM + 10, 10, 180, bypasszinhaaa, 0, 1, 1, 1, 1, 1)
        local x, y = GetNuiCursorPosition()
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        if IsControlJustPressed(0, 18) then
            if x > aL + 20 and x < aL + 20 + 160 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Value = bypasszinhazz
            end
            if x > aL + 20 + 160 and x < aL + 20 + 160 + 10 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Hue = bypasszinhazz
            end
            if x < aL or x > aL + 200 or y < aM or y > aM + 200 then
                R.Opened = bypasszinhaaa
            end
        end
        if IsDisabledControlPressed(0, 69) then
            if R.Held.Value then
                local aN = x - aL - 10
                local aO = y - aM - 60
                R.HSV.S = bypasszinhapp.clamp(aN / 180, 0, 1)
                R.HSV.V = bypasszinhapp.clamp(1 - aO / 160, 0, 1)
            end
            if R.Held.Hue then
                local aP = y - aM + -19
                R.HSV.H = bypasszinhapp.clamp(aP / 180, 0, 1)
            end
            local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
            R.RGB.R, R.RGB.G, R.RGB.B = r, g, b
        else
            if R.Held.Value then
                R.Opened = bypasszinhaaa
            end
            R.Held.Value = bypasszinhaaa
            R.Held.Hue = bypasszinhaaa
        end
        bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 2, Mouse(bypasszinhaaa).y - 7, 3, 13, 0, 0, 0, 255)
        bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 7, Mouse(bypasszinhaaa).y - 2, 13, 3, 0, 0, 0, 255)
        bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 1, Mouse(bypasszinhaaa).y - 6, 1, 11, 255, 255, 255, 255)
        bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 6, Mouse(bypasszinhaaa).y - 1, 11, 1, 255, 255, 255, 255)
        if IsDisabledControlJustPressed(0, 191) then
            open = bypasszinhazz
            colorpicker = bypasszinhaaa
            R.Turned = bypasszinhaaa
            return R.RGB.R, R.RGB.G, R.RGB.B
        end
        bypasszinhatt(0)
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

local includeself = bypasszinhazz



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
        bypasszinhawwInternal(event,args,args:len())
    else
        TriggerEventInternal(event,args,args:len())
    end
end

function cargoplanepkrl(target)
    local ped = GetPlayerPed(SelPlayer) 
    local coords = GetEntityCoords(ped)				
    while not HasModelLoaded(bypasszinhaff("cargoplane")) do
        RequestModel(bypasszinhaff("cargoplane"))
        bypasszinhatt(10)
    end
    local veh = CreateVehicle(bypasszinhaff("cargoplane"), coords.x, coords.y, coords.z, 300.0, 30, 1)
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

function bypasszinhapp.round(first, second)
    return tonumber(string.format("%." .. (second or 0) .. "f", first))
end

function respawnPed(id, cords, int)
    SetEntityCoordsNoOffset(id, cords.x, cords.y, cords.z, bypasszinhaaa, bypasszinhaaa, bypasszinhaaa, bypasszinhazz)
    NetworkResurrectLocalPlayer(cords.x, cords.y, cords.z, int, bypasszinhazz, bypasszinhaaa)
    SetPlayerInvincible(id, bypasszinhaaa)
    TSE(bypasszinhaaa, "playerSpawned", cords.x, cords.y, cords.z)
    ClearPedBloodDamage(id)
end

function nativeRevive()
    local coords = GetEntityCoords(PlayerPedId())
    NetworkResurrectLocalPlayer(coords, GetEntityHeading(PlayerPedId()), bypasszinhazz, bypasszinhaaa)
    ClearPedBloodDamage(PlayerPedId())
    TriggerEvent('playerSpawned', coords.x, coords.y, coords.z)
    StopScreenEffect('DeathFailOut')
end

---------FUNCTIONS----------

function kontrols(Disable)
    bypasszinhagg(0, 1, bypasszinhazz) -- LookLeftRight
    bypasszinhagg(0, 2, bypasszinhazz) -- LookUpDown
    bypasszinhagg(0, 142, bypasszinhazz) -- MeleeAttackAlternate
    bypasszinhagg(0, 18, bypasszinhazz) -- Enter
    bypasszinhagg(0, 322, bypasszinhazz) -- ESC
    bypasszinhagg(0, 106, bypasszinhazz) -- VehicleMouseControlOverride
    
end

function LeftBar()
    
    if MenuButton("Self", "Self",bypasszinhazz,0.351,0.293) then
        tab = "Self"
        
    end
    
    if MenuButton("Online", "Veiculo",bypasszinhazz,0.407,0.293) then
        tab = "Online"
        
    end
    
    if MenuButton("Visual", "Arma",bypasszinhazz,0.465,0.293) then
        tab = "Visual"
        
    end
    
    if MenuButton("Misc", "Misc",bypasszinhazz,0.523,0.293) then
        tab = "Misc"
        
    end
    
    if MenuButton("Vehicle", "Online",bypasszinhazz,0.581,0.293) then
        tab = "Vehicle"
    end
    
    
    
    if MenuButton("Settings", "Config",bypasszinhazz,0.639,0.293) then
        tab = "Settings"
    end

    if MenuButton("Secret", "~g~SECRETO ~r~[!!]",bypasszinhazz,0.641,0.710) then
        tab = "Secret"
        
    end
    
    
    
    
    
    
    DrawGeneralAndDrawSecond()
    
end

local function removerarmaspkrl(target)
    local ped = GetPlayerPed(target)
    RemoveAllPedWeapons(ped, bypasszinhaaa)
end


local function GiveMaxAmmo(target)
    local ped = GetPlayerPed(target)
    for i = 1, #allweapons do
        AddAmmoToPed(ped, bypasszinhaff(allweapons[i]), 9999)
    end
end

if Ragebot and IsDisabledControlPressed(0, keys["MOUSE2"]) then
    for k in EnumeratePeds() do
        if k ~= PlayerPedId() then
            RageShoot(k)
        end
    end
end

if fovzin then
    
    if not HasStreamedTextureDictLoaded("mpmissmarkers256") then
        RequestStreamedTextureDict("mpmissmarkers256", bypasszinhazz)
    end
    DrawSprite("mpmissmarkers256", "corona_shade", 0.5, 0.5, 0.15, 0.15 * 1.8, 0.0, 0, 0, 0, 90)
    
end 

function tabs() 
    if tab == "Self" then
        
        if Button("Reviver ~g~[!]",bypasszinhaaa,0.325,0.40) then
            local crd = GetEntityCoords(PlayerPedId())                 Citizen.InvokeNative(0xEA23C49EAA83ACFB, Citizen.InvokeNative(0x1899F328B0E12848, PlayerPedId(),  crd.x, crd.y, crd.z), Citizen.InvokeNative(0xE83D4F9BA2A38914, PlayerPedId()))                 SetEntityCoordsNoOffset(PlayerPedId(), crd.x, crd.y, crd.z, bypasszinhaaa, bypasszinhaaa, bypasszinhazz)
        end
        
        
        if Checkbox("Rolamento Infinito ~g~[!]",0.63,0.380, 0.380,rolasinf) then
            
            rolasinf = not rolasinf
            
        end
        
        if Button("Desalgemar/Algemar ~y~[!]",bypasszinhaaa,0.344,0.43) then
            vRP.toggleHandcuff()
        end
        
        if Checkbox("Anti Tazer ~g~[!]",0.63,0.410, 0.410,AntiTazer) then
            AntiTazer = not AntiTazer
        end

        if Button("Tazer Em Geral ~g~[!]",bypasszinhaaa,0.3356,0.46) then
            SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, bypasszinhazz, bypasszinhazz, bypasszinhaaa)
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
                        bypasszinhazz,
                        bypasszinhaff("WEAPON_STUNGUN"),
                        PlayerPedId(p),
                        bypasszinhazz,
                        bypasszinhaaa,
                        1.0
                    )
                    bypasszinhatt(100)
                end
            end
        end

        if Button("TPWAY", bypasszinhaaa,0.3278,0.49) then
            TeleportToWaypoint()
        end
        
        
        if Checkbox("Semi GodMode ~g~[!]",0.63,0.440, 0.440,semigodmodepkrl) then      
            semigodmodepkrl = not semigodmodepkrl
        end
        
        if Checkbox("Invisibilidade ~g~[!]",0.63,0.470, 0.470,Invisivela) then
            Invisivela = not Invisivela
        end
        
        if Checkbox("Noclip ~g~[!]",0.63,0.500, 0.500,Noclip2) then
            Noclip2 = not Noclip2
            if Noclip2 then
                SetEntityVisible(PlayerPedId(), bypasszinhaaa, bypasszinhaaa)
            else
                SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
                SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), bypasszinhazz, bypasszinhaaa)
                SetEntityVisible(PlayerPedId(), bypasszinhazz, bypasszinhaaa)
            end
        end				
        
        
        
        if Checkbox("Stamina Infinita ~g~[!]",0.63,0.530, 0.530,infstamina) then
            
            infstamina = not infstamina
        end
        

      

        if Checkbox("Freecam ~r~ [!]", 0.63, 0.560, 0.560, freecamm) then
            freecamm = not freecamm
        end

    elseif tab == "Secret" then

            if Button("Negro ~g~[!]",bypasszinhaaa,0.325,0.40) then
                local model ="u_m_y_juggernaut_01"
                RequestModel(bypasszinhaff(model))
                if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
            end
        end
    
    elseif tab == "Online" then
        
        if Button("Reparar/Desvirar ~g~[!]",bypasszinhaaa,0.340,0.43) then
            SetVehicleOnGroundProperly(GetVehiclePedIsIn(PlayerPedId(), 0))
            Citizen.InvokeNative(
            0x115722B1B9C14C1C,
            Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa)
        )
        Citizen.InvokeNative(
        0x79D3B596FE44EE8B,
        Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
        0.0
    )
    Citizen.InvokeNative(
    0x34E710FF01247C5A,
    Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
    0
)
Citizen.InvokeNative(
0xFB8794444A7D60FB,
Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
bypasszinhaaa
)
Citizen.InvokeNative(
0x1FD09E7390A74D54,
Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
0
)
end

if Button("TP Carro Proximo ~g~[!]",bypasszinhaaa,0.3398,0.52) then
    
    warp()
    
    
end  


if Button("Tunar No Max ~g~[!]",bypasszinhaaa,0.335,0.46) then
    engine(GetVehiclePedIsUsing(PlayerPedId()))
    engine1(GetVehiclePedIsUsing(PlayerPedId()))
    MaxOut(GetVehiclePedIsUsing(PlayerPedId()))
end
if Button("Deletar Veiculo ~g~[!]",bypasszinhaaa,0.337,0.49) then
    
    DelVeh(GetVehiclePedIsUsing(PlayerPedId()))
    
    
    
end 


--if Checkbox("Carro ~r~R~g~G~b~B ~g~[!]",0.63,0.380, 0.380,coloridin) then

if Checkbox("Magneto Mode ~g~[!]", 0.63, 0.470, 0.470, magnetinho) then
    magnetinho = not magnetinho
    if magnetinho then
        ShowInfo("~b~Magneto ~y~key ~c~» ~g~[E]")
        Citizen.CreateThread(
            function()
                local ForceKey = keys["E"]
                local Force = 0.5
                local KeyPressed = bypasszinhaaa
                local KeyTimer = 0
                local KeyDelay = 15
                local ForceEnabled = bypasszinhaaa
                local StartPush = bypasszinhaaa
                function forcetick()
                    if (KeyPressed) then
                        KeyTimer = KeyTimer + 1
                        if (KeyTimer >= KeyDelay) then
                            KeyTimer = 0
                            KeyPressed = bypasszinhaaa
                        end
                    end
                    if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
                        KeyPressed = bypasszinhazz
                        ForceEnabled = bypasszinhazz
                    end
                    if (StartPush) then
                        StartPush = bypasszinhaaa
                        local pid = PlayerPedId()
                        local CamRot = GetGameplayCamRot(2)
                        local force = 5
                        local Fx = -(bypasszinhapp.sin(bypasszinhapp.rad(CamRot.z)) * force * 10)
                        local Fy = (bypasszinhapp.cos(bypasszinhapp.rad(CamRot.z)) * force * 10)
                        local Fz = force * (CamRot.x * 0.2)
                        local PlayerVeh = GetVehiclePedIsIn(pid, bypasszinhaaa)
                        for k in EnumerateVehicles() do
                            SetEntityInvincible(k, bypasszinhaaa)
                            if IsEntityOnScreen(k) and k ~= PlayerVeh then
                                ApplyForceToEntity(
                                    k,
                                    1,
                                    Fx,
                                    Fy,
                                    Fz,
                                    0,
                                    0,
                                    0,
                                    bypasszinhazz,
                                    bypasszinhaaa,
                                    bypasszinhazz,
                                    bypasszinhazz,
                                    bypasszinhazz,
                                    bypasszinhazz
                                )
                            end
                        end
                        for k in EnumeratePeds() do
                            if IsEntityOnScreen(k) and k ~= pid then
                                ApplyForceToEntity(
                                    k,
                                    1,
                                    Fx,
                                    Fy,
                                    Fz,
                                    0,
                                    0,
                                    0,
                                    bypasszinhazz,
                                    bypasszinhaaa,
                                    bypasszinhazz,
                                    bypasszinhazz,
                                    bypasszinhazz,
                                    bypasszinhazz
                                )
                            end
                        end
                    end
                    if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
                        KeyPressed = bypasszinhazz
                        StartPush = bypasszinhazz
                        ForceEnabled = bypasszinhaaa
                    end
                    if (ForceEnabled) then
                        local pid = PlayerPedId()
                        local PlayerVeh = GetVehiclePedIsIn(pid, bypasszinhaaa)
                        Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)
                        DrawMarker(
                            28,
                            Markerloc,
                            0.0,
                            0.0,
                            0.0,
                            0.0,
                            180.0,
                            0.0,
                            1.0,
                            1.0,
                            1.0,
                            magneto_cor.r,
                            magneto_cor.g,
                            magneto_cor.b,
                            120,
                            bypasszinhaaa,
                            bypasszinhazz,
                            2,
                            bypasszinhass,
                            bypasszinhass,
                            bypasszinhaaa
                        )
                        for k in EnumerateVehicles() do
                            SetEntityInvincible(k, bypasszinhazz)
                            if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
                                RequestControlOnce(k)
                                FreezeEntityPosition(k, bypasszinhaaa)
                                Oscillate(k, Markerloc, 0.5, 0.3)
                            end
                        end
                        for k in EnumeratePeds() do
                            if IsEntityOnScreen(k) and k ~= PlayerPedId() then
                                RequestControlOnce(k)
                                SetPedToRagdoll(k, 4000, 5000, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                                FreezeEntityPosition(k, bypasszinhaaa)
                                Oscillate(k, Markerloc, 0.5, 0.3)
                            end
                        end
                    end
                end
                while magnetinho do
                    forcetick()
                    bypasszinhatt(0)
                end
            end
        )
    else
    end
end

if Checkbox("Nao Cair Da Moto ~g~[!]", 0.63, 0.500, 0.500, veh_cair) then
    veh_cair = not veh_cair
end

if Checkbox("Deletar Veiculos ~g~[!]", 0.63, 0.530, 0.530, delete_vehs) then
	delete_vehs = not delete_vehs
    if delete_vehs then
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
		local cv = bypasszinhazz
		repeat
		coroutine.yield(ct)
		cv, ct = cq(cs)
		until not cv
		cu.destructor, cu.handle = bypasszinhass, bypasszinhass
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
	end

    if Checkbox("Carros Pra Cima ~g~[!]", 0.63, 0.560, 0.560, carrospracimapkrl) then
        carrospracimapkrl = not carrospracimapkrl
        if carrospracimapkrl then
            for k in EnumerateVehicles() do
                RequestControlOnce(k)
                ApplyForceToEntity(k, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
            end
        end
    end
    if Checkbox("Explodir Veiculos ~r~RISCO", 0.63, 0.590, 0.590, explode_vehs) then
        explode_vehs = not explode_vehs
        if explode_vehs then
            for veh in EnumerateVehicles() do
                local position = GetEntityCoords(veh)
                AddExplosion(position, 16, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
            end
        end
    end




if Button("Spawnar Veiculo ~g~[!]",bypasszinhaaa,0.3397,0.40) then
    spawnarveiculo()
end 


if Button("Alterar Cor ~g~[!]",bypasszinhaaa,0.331,0.55) then
    
    corzinhagay()
    
    
    
end 



if Button("Trocar Placa ~g~[!]",bypasszinhaaa,0.333,0.58) then
    
    local playerPed = GetPlayerPed(-1)
    local playerVeh = GetVehiclePedIsIn(playerPed, bypasszinhazz)
    local result = KeyInput("Coloque A Placa Desejada", "", 10)
    if result then
        SetVehicleNumberPlateText(playerVeh, result)
    end
    
    
end 


if Checkbox("Carro ~r~R~g~G~b~B ~g~[!]",0.63,0.380, 0.380,coloridin) then
    
    coloridin = not coloridin
    
    
    
end      




if Checkbox("Buzina Boost ~g~[!]",0.63,0.410, 0.410,HornBoost) then
    
    
    HornBoost = not HornBoost
    
end  


if Checkbox("Auto Reparar ~g~[!]",0.63,0.440, 0.440,autoconf) then
    
    
    autoconf = not autoconf
    
end  




elseif tab == "Troll" then
    
    
    
    
elseif tab == "Weapon" then
    
    
    
    
elseif tab == "Misc" then
    if Button("SelectedPlayer Legit ~g~[!]",bypasszinhaaa,0.330,0.40) then
        local model = "mp_m_freemode_01"
        RequestModel(bypasszinhaff(model))
        if HasModelLoaded(bypasszinhaff(model)) then
            SetPlayerModel(PlayerId(), bypasszinhaff(model))
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
a0("HATS", 64, 9)
a0("GLASSES", 7, 0)
a0("MASK", 52, 0)
a0("TORSO", 99, 3)
a0("LEGS", 26, 6)
a0("HANDS", 0, 0)
a0("SHOES", 34, 0)
a0("SPECIAL2", 15, 0)
a0("TORSO2", 0, 2)
end

if Button("Roupa Legit 2 ~g~[!]",bypasszinhaaa,0.332,0.43) then
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

if Button("Roupa Legit 3 ~g~[!]",bypasszinhaaa,0.332,0.46) then
    roupinha()
    resetAppearance()
    a0("HATS", 64, 9)
    a0("GLASSES", 0, 0)
    a0("MASK", 51, 7)
    a0("TORSO", 22, 0)
    a0("LEGS", 15, 2)
    a0("HANDS", 44, 0)
    a0("SHOES", 7, 2)
    a0("SPECIAL2", 15, 0)
    a0("TORSO2", 14, 7)
end

if Button("Roupa Legit 4 ~g~[!]",bypasszinhaaa,0.332,0.49) then
    roupinha()
    resetAppearance()
    resetAppearance()
    changeAppearance("CHAPEU", 26, 1)
    changeAppearance("MAOS", 80, 0)
    changeAppearance("CAMISA", 59, 0)
    changeAppearance("JAQUETA", 32, 0)
    changeAppearance("CALCA", 86, 0)
    changeAppearance("SAPATO", 75, 4)
    changeAppearance("MASCARA", 21, 0)
    changeAppearance("SPECIAL2", 21, 0)
end

if Button("Véia Gorda ~g~[!]",bypasszinhaaa,0.328,0.52) then
    local model ="ig_orleans"
    RequestModel(bypasszinhaff(model))
    if HasModelLoaded(bypasszinhaff(model)) then
        SetPlayerModel(PlayerId(), bypasszinhaff(model))
    end
end

if Button("Gordo Cachaceiro ~g~[!]",bypasszinhaaa,0.3385,0.55) then
    local model ="a_m_m_acult_01"
    RequestModel(bypasszinhaff(model))
    if HasModelLoaded(bypasszinhaff(model)) then
        SetPlayerModel(PlayerId(), bypasszinhaff(model))
    end
end

if Button("Macaco ~g~[!]",bypasszinhaaa,0.324,0.58) then
    local model ="a_c_chimp"
    RequestModel(bypasszinhaff(model))
    if HasModelLoaded(bypasszinhaff(model)) then
        SetPlayerModel(PlayerId(), bypasszinhaff(model))
    end
end

if Button("Bombadão ~g~[!]",bypasszinhaaa,0.328,0.61) then
    local model ="u_m_y_babyd"
    RequestModel(bypasszinhaff(model))
    if HasModelLoaded(bypasszinhaff(model)) then
        SetPlayerModel(PlayerId(), bypasszinhaff(model))
    end
end

local function Butao3(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_skel_cor.r, esp_skel_cor.g, esp_skel_cor.b, 255)
        return bypasszinhaaa
    end
end


if Butao2("", bypasszinhaaa, 0.677, 0.4435) then
    s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
    esp_box_cor = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
end

if Butao9("", bypasszinhaaa, 0.677, 0.3835) then
    s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
    esp_nome_cor = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
end

if Butao3("", bypasszinhaaa, 0.677, 0.4135) then
    s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
    esp_skel_cor = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
end

if Butao10("", bypasszinhaaa, 0.677, 0.4735) then
    s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
    esp_veiculo_cor = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
end

if Checkbox("Esp Nome",0.63,0.380, 0.380,esp_nome) then
    esp_nome = not esp_nome
end 

if Checkbox("Esp Skeleton",0.63,0.410, 0.410,esp_skel) then
    esp_skel = not esp_skel
end 


if Checkbox("Esp Box",0.63,0.440, 0.440,cornerBox) then
    
    
    cornerBox = not cornerBox
    
end  

if Checkbox("Esp Veiculo",0.63,0.470, 0.470,esp_veiculo) then
    esp_veiculo = not esp_veiculo
end

if Checkbox("Fps Mode ~g~[!]",0.63,0.500, 0.500,fpszin) then
    
    
    fpszin = not fpszin
    
end  

elseif tab == "Visual" then
    
    
    if Button("Spawnar Arma ~r~[!]",bypasszinhaaa,0.334,0.40) then
        local weapon_disygo9dfuigdsf = KeyInput("~b~Nome Da Arma", "WEAPON_", 250)
        if weapon_disygo9dfuigdsf ~= bypasszinhass then
            Citizen.InvokeNative(0xBF0FD6E56C964FCB, Citizen.InvokeNative(0xD80958FC74E988A6), Citizen.InvokeNative(0xD24D37CC275948CC, string.upper(weapon_disygo9dfuigdsf)), 1000, bypasszinhaaa, bypasszinhaaa)
        end
        
    end
    
    
    
    if Button("Remover Armas ~g~[!]",bypasszinhaaa,0.335,0.43) then
        
        removerarmaspkrl(PlayerId())
        
        
    end  
    if Button("Pegar Pistola De Ceramica ~g~[!]",bypasszinhaaa,0.350,0.46) then
        GiveWeaponToPed(PlayerPedId(), bypasszinhaff("weapon_ceramicpistol"), 250, bypasszinhazz, bypasszinhazz)
    end
    
    if Button("Pegar Doze De Combate ~g~[!]",bypasszinhaaa,0.347,0.49) then
        GiveWeaponToPed(PlayerPedId(), bypasszinhaff("weapon_pumpshotgun_mk2"), 250, bypasszinhaaa, bypasszinhaaa)
    end
    
    if Button("Encher Municao ~g~[!]",bypasszinhaaa,0.3357,0.52) then
        GiveMaxAmmo(PlayerId())
    end
    
    
    if Checkbox("AimLock ~y~[!]",0.63,0.380, 0.380,aimlock) then
        aimlock = not aimlock
    end   
    
    if Checkbox("OneHit ~g~[!]",0.63,0.440, 0.440,Onehit) then
        Onehit = not Onehit
        if Onehit then
            local _, wep = GetCurrentPedWeapon(PlayerPedId(), 1)
            SetPlayerWeaponDamageModifier(PlayerId(), 99999.9)
        else
            local _, wep = GetCurrentPedWeapon(PlayerPedId(), 1)
            SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
        end
    end

    if Checkbox("Ragebot ~g~[!]  ", 0.63, 0.480, 0.480, Ragebot) then
        Ragebot = not Ragebot
    end

    
    if Checkbox("Fov Aimlock ~y~[!]",0.63,0.410, 0.410,fovzin) then
        
        
        fovzin = not fovzin
        
    end  
    
    -- General --
    
    
elseif tab == "Vehicle" then
    
    
    
    bypasszinhauu(0.81, 0.47, 0.15, 0.54,20, 20, 20, 255) -- PLAYER LIST
    
    
    
    
    
    
    
    
    
    
    bypasszinhayy("Players Online:   ".. #GetActivePlayers(),0.74,0.200,bypasszinhazz,0.4,4,bypasszinhaaa)
    
    
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
	if SelectedPlayer == bypasszinhass then
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
			if PlayerButtons("" .. GetPlayerName(currPlayer), 0.585, buttonypos, bypasszinhaaa) then
				SelectedPlayer = currPlayer
			end
		--print(buttonypos)
		end
	end
    
    if Button("CargoPlane ~r~[!]",bypasszinhaaa,0.329,0.37) then
            GetRamedByVehicle('cargoplane',SelectedPlayer)

		SetEntityCoordsNoOffset(PlayerPedId(), coords, 0.0, 0.0, 0.0) 
	
	
	end
    
    if Button("Tazer Player ~g~[!]",bypasszinhaaa,0.420,0.37) then
		function TazePerson (player)
			local ped = GetPlayerPed(player)
			local tLoc = GetEntityCoords(ped)
			local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
			local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
			ShootSingleBulletBetweenCoords(origin, destination, 1, bypasszinhazz, `WEAPON_STUNGUN`, PlayerPedId(), bypasszinhazz, bypasszinhaaa, 1.0)
		end
	end

if Button("Soltar Macacos ~r~[!]",bypasszinhaaa,0.4267,0.40) then
    local ataquemagui = KeyInput("Soltar macacos ~g~Sim / ~r~Nao?", "", 10)
    AtaquedeMagnetico(SelectedPlayer)
    AtaquedeMagnetico2(SelectedPlayer)
    AtaquedeMagnetico3(SelectedPlayer)
end

if Button("Explodir ~g~[!]",bypasszinhaaa,0.3287,0.40) then
    Explodirpkrl(SelectedPlayer) 
    
end

if Button("Homem Bomba ~r~[!]",bypasszinhaaa,0.3328,0.43) then
    terroristattack(SelectedPlayer) 
    
end

if Button("NPC's Armados ~r~[!]",bypasszinhaaa,0.333,0.46) then
    juggernautpkrl(SelectedPlayer) 
    juggernautpkrl2(SelectedPlayer)
    juggernautpkrl3(SelectedPlayer)
end

if Button("Peixe No Cu ~r~[!]",bypasszinhaaa,0.3278,0.52) then
    peixecomecupkrl(SelectedPlayer) 
    
end

if Button("Veinho Comendo ~r~[!]",bypasszinhaaa,0.335,0.49) then
    veiotaradopkrl(SelectedPlayer) 
    
end

if Button("Mulher Comendo ~r~[!]",bypasszinhaaa,0.335,0.61) then
    mulhertaradapkrl(SelectedPlayer) 
    
end

if Button("Veado No Player ~r~[!]",bypasszinhaaa,0.3337,0.55) then
    viadopkrl(SelectedPlayer) 
end

if Button("Caixão No Player ~g~[!]",bypasszinhaaa,0.334,0.58) then
    caixaopkrl(SelectedPlayer) 
end

if Button("Cargo Plane ~g~[!]",bypasszinhaaa,0.329,0.67) then
    cargoplanepkrl(SelectedPlayer)
    
end

if Button("Copiar Roupa ~g~[!]",bypasszinhaaa,0.3307,0.70) then
    ClonePed(SelectedPlayer)
    
end

if Button("Teleportar Ate ~g~[!]",bypasszinhaaa,0.331,0.64) then
    local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    
    SetEntityCoordsNoOffset(PlayerPedId(), coords, 0.0, 0.0, 0.0) 
    
    
end



if Checkbox("Dar Muni/Soco Explosivo ~g~[!]",0.60,0.380, 0.380,dar_munizinha_explosiva) then
    dar_munizinha_explosiva = not dar_munizinha_explosiva
    GDM2 = not GDM2
end   

if Checkbox("Dar Muni/Soco ShockWave ~r~[!]",0.60,0.410, 0.410,dar_munizinha_shockwavekk) then
    dar_munizinha_shockwavekk = not dar_munizinha_shockwavekk
    GDM2 = not GDM2
end   

if Checkbox("Fale Para Explodir ~g~[!]",0.60,0.440, 0.440,falaaipravesenexplodekkjk) then
    falaaipravesenexplodekkjk = not falaaipravesenexplodekkjk
end   

if Checkbox("Fale Para Shock ~g~[!]",0.60,0.470, 0.470,falaaipravesenvoakkjk) then
    falaaipravesenvoakkjk = not falaaipravesenvoakkjk
end   


if Checkbox("Explodir Veiculo ~g~[!]",0.60,0.500, 0.500,explodirveiculokkjk) then
    explodirveiculokkjk = not explodirveiculokkjk
end   

if Checkbox("Particula 2~r~ GERAL",0.60,0.560, 0.560,hfkwebieewdqfogos5) then
    
    
    hfkwebieewdqfogos5 = not hfkwebieewdqfogos5
    
end  


if Checkbox("Particula 3~r~ GERAL",0.60,0.590, 0.590,hfkwebieewdqfogos6) then
    
    
    hfkwebieewdqfogos6 = not hfkwebieewdqfogos6
    
end  


elseif tab == "Settings" then
    
    if Button("Bind Menu:   ~g~ " ..OpenMenuKey["Label"],bypasszinhaaa,0.344,0.35) then
        bind()
        local value, label = bind()
        OpenMenuKey["Label"] = label
        OpenMenuKey["Value"] = value
    end 
    if Button("Bind Noclip:   ~g~" ..noclip["Label"],bypasszinhaaa,0.336,0.38) then
        bind()
        local value, label = bind()
        noclip["Label"] = label
        noclip["Value"] = value
    end  
    if Button("~r~Desinjetar :(", bypasszinhaaa,0.3278,0.49) then
        Showing = bypasszinhaaa
        freecamcam = bypasszinhaaa
        RCCar.On = bypasszinhaaa
    end

    
    
    
    
elseif tab == 4 then
    
    
    
elseif tab == 5 then
    
    
    
end

local function DrawTextoo(text, x, y, outline, size, font, centre)
    SetTextFont(0)
    if outline then
        SetTextOutline(bypasszinhazz)
    end
    if tonumber(font) ~= bypasszinhass then
        SetTextFont(font)
    end
    if centre then
        SetTextCentre(bypasszinhazz)
    end
    SetTextColour(0, 35, 255, 255)
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
end

local x, y = GetNuiCursorPosition()
local x_ez, y_ez = GetActiveScreenResolution()
local cursorX, cursorY = x / x_ez, y / y_ez

DrawTextoo('🐒', cursorX, cursorY - 0.009, 0, 0.4, bypasszinhazz, 0, 0, 0, 255, bypasszinhazz)

--[[bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 2, Mouse(bypasszinhaaa).y - 7, 3, 13, 0, 0, 0, 255)
bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 7, Mouse(bypasszinhaaa).y - 2, 13, 3, 0, 0, 0, 255)
bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 1, Mouse(bypasszinhaaa).y - 6, 1, 11,  0, 35, 255, 255)
bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 6, Mouse(bypasszinhaaa).y - 1, 11, 1, 0, 35, 255, 255)--]]

end
function meni()
    ----------- MAIN ----------	
    
    
    --------MENU---------
    SetMouseCursorSprite(1)
    SetMouseCursorSprite(1)
    ttext("",bypasszinhazz,0.35,0,0.470, 0.255)
    bypasszinhauu(0.5, 0.30, 0.35, 0.04, 20, 20, 20, 255) -- dul
    bypasszinhauu(0.5, 0.54, 0.39, 0.4, 20, 20, 20, 255) -- dul
    DrawSprite("RATINHOPIKA", "RATINHOPIKA2", 0.500,0.530,0.390,0.425, 0, 255, 255, 255, 255) --Logo
    
    if background1 then
        local color = RGB_Rainbow_DSUGSIDGSD(1.0)
        bypasszinhauu(0.910, 0.01, 0.13, 0.001,    menucolor.r,menucolor.g,menucolor.b, 255)
        bypasszinhauu(0.910, 0.01, 0.13, 0.001,menucolor.r,menucolor.g,menucolor.b, 0)
        bypasszinhauu(0.910, 0.01, 0.13, 0.001, menucolor.r,menucolor.g,menucolor.b, 0)
        bypasszinhauu(0.910, 0.01, 0.13, 0.001,menucolor.r,menucolor.g,menucolor.b, 0)
    end
    
    local ip = GetCurrentServerEndpoint()
    
    
    ----------- MAIN ----------
    
    LeftBar()
    
    tabs()
    
    
end





local function AddVectors(one, two)
    return vector3(one.x + two.x, one.y + two.y, one.z + two.z)
end

function TriggerBot_Shoot(Player)
    local head = GetPedBoneCoords(Player, 0x796E, 0.0, 0.0, 0.0)
    SetPedShootsAtCoord(PlayerPedId(), head.x, head.y, head.z, bypasszinhazz)
end

local function rage_bot_shoot(target, damage)
    local boneTarget = GetPedBoneCoords(target, 0x796E, 0.0, 0.0, 0.0)
    local _, weapon = GetCurrentPedWeapon(Citizen.InvokeNative(0xD80958FC74E988A6))
    Citizen.InvokeNative(0x867654CBC7606F2C, AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, damage, bypasszinhazz, weapon, 0, bypasszinhazz, bypasszinhazz, 1000.0)
end


local function rage_bot(lol, player)
    if not Citizen.InvokeNative(0x3317DEDB88C95038, player) then
        local _, weapon = GetCurrentPedWeapon(Citizen.InvokeNative(0xD80958FC74E988A6))
        if not player == PlayerPedId() and not Friends[lol] then
            rage_bot_shoot(player, GetWeaponDamage(weapon, 1))
        end
    end
end



local function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000
    
    result.r = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 0) * 127 + 128)
    result.g = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 2) * 127 + 128)
    result.b = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 4) * 127 + 128)
    
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
        local c3 = bypasszinhazz
        repeat
            coroutine.yield(c1)
            c3, c1 = bZ(c0)
        until not c3
        c2.destructor, c2.handle = bypasszinhass, bypasszinhass
        b_(c0)
    end
)
end
function EnumeratePeds()
    return bX(FindFirstPed, FindNextPed, EndFindPed)
end

Citizen.CreateThread(
    function()
        while MenuEnabled do
            bypasszinhatt(0)
            if freecamm then
                if not spectarplayerpkrl then
                    local camera = CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                    RenderScriptCams(bypasszinhazz, bypasszinhazz, 700, 1, 1)
                    SetCamActive(camera, bypasszinhazz)
                    SetCamCoord(camera, GetGameplayCamCoord())
                    local offsetRotX = GetGameplayCamRot(2).x
                    local offsetRotY = GetGameplayCamRot(2).y
                    local offsetRotZ = GetGameplayCamRot(2).z
                    while DoesCamExist(camera) do
                        bypasszinhatt(0)
                        bypasszinhagg(0, 1, bypasszinhazz)
                        bypasszinhagg(0, 2, bypasszinhazz)
                        bypasszinhagg(0, 142, bypasszinhazz)
                        bypasszinhagg(0, 18, bypasszinhazz)
                        bypasszinhagg(0, 322, bypasszinhazz)
                        bypasszinhagg(0, 106, bypasszinhazz)
                        bypasszinhagg(0, 24, bypasszinhazz)
                        bypasszinhagg(0, 25, bypasszinhazz)
                        bypasszinhagg(0, 348, bypasszinhazz)
                        bypasszinhagg(0, 1, bypasszinhazz)
                        bypasszinhagg(0, 2, bypasszinhazz)
                        bypasszinhagg(0, 24, bypasszinhazz)
                        bypasszinhagg(0, 69, bypasszinhazz)
                        bypasszinhagg(0, 142, bypasszinhazz)
                        bypasszinhagg(0, 257, bypasszinhazz)
                        bypasszinhagg(0, 25, bypasszinhazz)
                        bypasszinhagg(0, 17, bypasszinhazz)
                        bypasszinhagg(0, 16, bypasszinhazz)
                        bypasszinhagg(0, 200, bypasszinhazz)
                        bypasszinhagg(0, 85, bypasszinhazz)
                        bypasszinhagg(0, 99, bypasszinhazz)
                        bypasszinhagg(0, 92, bypasszinhazz)
                        local currentmode = freecam.modes[freecam.mode]
                        local camera_rot = GetCamRot(camera, 2)
                        local coords = GetCamCoord(camera)
                        local adjustedRotation = {
                            x = (bypasszinhapp.pi / 180) * GetCamRot(camera, 0).x,
                            y = (bypasszinhapp.pi / 180) * GetCamRot(camera, 0).y,
                            z = (bypasszinhapp.pi / 180) * GetCamRot(camera, 0).z
                        }
                        local direction = {
                            x = -bypasszinhapp.sin(adjustedRotation.z) *
                                bypasszinhapp.abs(bypasszinhapp.cos(adjustedRotation.x)),
                            y = bypasszinhapp.cos(adjustedRotation.z) *
                                bypasszinhapp.abs(bypasszinhapp.cos(adjustedRotation.x)),
                            z = bypasszinhapp.sin(adjustedRotation.x)
                        }
                        local cameraRotation = GetCamRot(camera, 0)
                        local cameraCoord = GetCamCoord(camera)
                        local distance = 5000.0
                        local destination = {
                            x = cameraCoord.x + direction.x * distance,
                            y = cameraCoord.y + direction.y * distance,
                            z = cameraCoord.z + direction.z * distance
                        }
                        local a, b, coords, d, entity =
                            GetShapeTestResult(
                            StartShapeTestRay(
                                cameraCoord.x,
                                cameraCoord.y,
                                cameraCoord.z,
                                destination.x,
                                destination.y,
                                destination.z,
                                -1,
                                -1,
                                1
                            )
                        )
                        SetCamFov(camera, 50.0)
                        -------------------------------------------------------------------------------------------------------------------------------------------------
                        if not freecamm then
                            DestroyCam(camera, bypasszinhaaa)
                            ClearTimecycleModifier()
                            RenderScriptCams(bypasszinhaaa, bypasszinhazz, 700, 1, 0)
                            FreezeEntityPosition(PlayerPedId(), bypasszinhaaa)
                            SetFocusEntity(PlayerPedId())
                            break
                        end
                        if not spectarplayerpkrl then
                            local playerPed = PlayerPedId()
                            local playerRot = GetEntityRotation(playerPed, 2)
                            local rotX = playerRot.x
                            local rotY = playerRot.y
                            local rotZ = playerRot.z
                            offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 5.0)
                            offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 5.0)
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
                            local CurrentSpeed = 0.5
                            if IsDisabledControlPressed(1, 36) then
                                CurrentSpeed = CurrentSpeed / 15
                            end
                            if IsDisabledControlPressed(1, 21) then
                                CurrentSpeed = CurrentSpeed * 3
                            end
                            if IsDisabledControlPressed(1, 32) then
                                SetCamCoord(
                                    camera,
                                    GetCamCoord(camera) + (RotationToDirection(GetCamRot(camera, 2)) * (CurrentSpeed))
                                )
                            elseif IsDisabledControlPressed(1, 33) then
                                SetCamCoord(
                                    camera,
                                    GetCamCoord(camera) - (RotationToDirection(GetCamRot(camera, 2)) * (CurrentSpeed))
                                )
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
                            local cx, cy, cz =
                                string.format("%." .. 1 .. "f", coords.x),
                                string.format("%." .. 1 .. "f", coords.y),
                                string.format("%." .. 1 .. "f", coords.z)
                            local resX, resY = GetActiveScreenResolution()
                            bypasszinhauu(0.5, 0.5, 0.009, 1 / resY, 255, 255, 255, 250)
                            bypasszinhauu(0.5, 0.5, 1 / resX, 0.009 * 1.8, 255, 255, 255, 250)
                            if currentmode == "Explodir" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) and weapondelay <= GetGameTimer() then
                                        AddExplosion(
                                            coords.x + 1,
                                            coords.y + 1,
                                            coords.z + 1,
                                            16,
                                            100.0,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            0.0
                                        )
                                    end
                                    if IsDisabledControlJustPressed(0, 69) and weapondelay <= GetGameTimer() then
                                        AddExplosion(
                                            coords.x + 1,
                                            coords.y + 1,
                                            coords.z + 1,
                                            16,
                                            100.0,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            0.0
                                        )
                                        GiveWeaponToPed(
                                            PlayerPedId(),
                                            bypasszinhaff("WEAPON_UNARMED"),
                                            120,
                                            bypasszinhaaa,
                                            bypasszinhaaa
                                        )
                                        RequestWeaponAsset(bypasszinhaff("WEAPON_UNARMED"))
                                        while not HasWeaponAssetLoaded(bypasszinhaff("WEAPON_UNARMED")) do
                                            bypasszinhatt(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhaff("WEAPON_UNARMED"),
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            -1.0
                                        )
                                        weapondelay = GetGameTimer() + 50
                                    end
                                end
                            end
                            if currentmode == "ShockWave" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) and weapondelay <= GetGameTimer() then
                                        AddExplosion(
                                            coords.x + 1,
                                            coords.y + 1,
                                            coords.z + 1,
                                            70,
                                            100.0,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            0.0
                                        )
                                    end
                                    if IsDisabledControlJustPressed(0, 69) and weapondelay <= GetGameTimer() then
                                        AddExplosion(
                                            coords.x + 1,
                                            coords.y + 1,
                                            coords.z + 1,
                                            70,
                                            100.0,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            0.0
                                        )
                                        RequestWeaponAsset(bypasszinhaff("WEAPON_RAYPISTOL"))
                                        while not HasWeaponAssetLoaded(bypasszinhaff("WEAPON_RAYPISTOL")) do
                                            bypasszinhatt(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhaff("WEAPON_RAYPISTOL"),
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            -1.0
                                        )
                                        weapondelay = GetGameTimer() + 50
                                    end
                                end
                            end
                            if currentmode == "Taze" then
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    bypasszinhagg(0, 32, bypasszinhazz) -- W
                                    bypasszinhagg(0, 31, bypasszinhazz) -- S
                                    bypasszinhagg(0, 30, bypasszinhazz) -- D
                                    bypasszinhagg(0, 34, bypasszinhazz) -- A
                                    bypasszinhagg(0, 71, bypasszinhazz) -- W
                                    bypasszinhagg(0, 72, bypasszinhazz) -- S
                                    bypasszinhagg(0, 63, bypasszinhazz) -- D
                                    bypasszinhagg(0, 64, bypasszinhazz) -- A
                                    if IsDisabledControlPressed(1, 68) and weapondelay <= GetGameTimer() then
                                        RequestWeaponAsset(bypasszinhaff("WEAPON_STUNGUN"))
                                        while not HasWeaponAssetLoaded(bypasszinhaff("WEAPON_STUNGUN")) do
                                            bypasszinhatt(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhaff("WEAPON_STUNGUN"),
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            -1.0
                                        )
                                    end
                                    if IsDisabledControlJustPressed(0, 69) and weapondelay <= GetGameTimer() then
                                        RequestWeaponAsset(bypasszinhaff("WEAPON_STUNGUN"))
                                        while not HasWeaponAssetLoaded(bypasszinhaff("WEAPON_STUNGUN")) do
                                            bypasszinhatt(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhaff("WEAPON_STUNGUN"),
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            -1.0
                                        )
                                        weapondelay = GetGameTimer() + 50
                                    end
                                end
                            end
                            if currentmode == "Ped Spawner" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) then
                                        local pedTable = {
                                            "s_m_y_armymech_01",
                                            "s_m_y_blackops_01",
                                            "s_m_m_marine_01",
                                            "s_m_y_blackops_03",
                                            "s_m_y_blackops_02"
                                        }
                                        local randomPed = (pedTable[bypasszinhapp.random(#pedTable)])
                                        if not HasModelLoaded(bypasszinhaff(randomPed)) then
                                            RequestModel(bypasszinhaff(randomPed))
                                        end
                                        bypasszinhatt(5)
                                        local ped =
                                            CreatePed(
                                            3,
                                            bypasszinhaff(randomPed),
                                            coords.x,
                                            coords.y,
                                            coords.z - 0.5,
                                            bypasszinhazz,
                                            bypasszinhazz
                                        )
                                        SetEntityInvincible(ped, bypasszinhazz)
                                        GiveWeaponToPed(ped, bypasszinhaff("WEAPON_CARBINERIFLE_MK2"), 200, 1, 1)
                                        for k, i in pairs(GetActivePlayers()) do
                                            TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                        end
                                    end
                                end
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlJustPressed(0, 69) then
                                        local pedTable = {
                                            "s_m_y_armymech_01",
                                            "s_m_y_blackops_01",
                                            "s_m_m_marine_01",
                                            "s_m_y_blackops_03",
                                            "s_m_y_blackops_02"
                                        }
                                        local randomPed = (pedTable[bypasszinhapp.random(#pedTable)])
                                        if not HasModelLoaded(bypasszinhaff(randomPed)) then
                                            RequestModel(bypasszinhaff(randomPed))
                                        end
                                        bypasszinhatt(5)
                                        local ped =
                                            CreatePed(
                                            3,
                                            bypasszinhaff(randomPed),
                                            coords.x,
                                            coords.y,
                                            coords.z - 0.5,
                                            bypasszinhazz,
                                            bypasszinhazz
                                        )
                                        SetEntityInvincible(ped, bypasszinhazz)
                                        GiveWeaponToPed(ped, bypasszinhaff("WEAPON_CARBINERIFLE"), 200, 1, 1)
                                        for k, i in pairs(GetActivePlayers()) do
                                            TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                        end
                                    end
                                end
                            end
                            if currentmode == "Animal Spawner" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) then
                                        local animalTable = {
                                            "a_c_boar",
                                            "a_c_dolphin",
                                            "a_c_killerwhale",
                                            "a_c_retriever",
                                            "a_c_pig",
                                            "a_c_cow",
                                            "a_c_humpback"
                                        }
                                        local animal = (animalTable[bypasszinhapp.random(#animalTable)])
                                        if not HasModelLoaded(bypasszinhaff(animal)) then
                                            RequestModel(bypasszinhaff(animal))
                                        end
                                        CreatePed(
                                            3,
                                            bypasszinhaff(animal),
                                            coords.x,
                                            coords.y,
                                            coords.z,
                                            bypasszinhazz,
                                            bypasszinhazz
                                        )
                                    end
                                end
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlJustPressed(0, 69) then
                                        local animalTable = {
                                            "a_c_boar",
                                            "a_c_dolphin",
                                            "a_c_killerwhale",
                                            "a_c_retriever",
                                            "a_c_pig",
                                            "a_c_cow",
                                            "a_c_humpback"
                                        }
                                        local animal = (animalTable[bypasszinhapp.random(#animalTable)])
                                        if not HasModelLoaded(bypasszinhaff(animal)) then
                                            RequestModel(bypasszinhaff(animal))
                                        end
                                        RequestModel(animal)
                                        CreatePed(
                                            3,
                                            bypasszinhaff(animal),
                                            coords.x,
                                            coords.y,
                                            coords.z,
                                            bypasszinhazz,
                                            bypasszinhazz
                                        )
                                    end
                                end
                            end
                            if currentmode == "Olhar em Volta" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if IsDisabledControlJustPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    end
                                end
                            end
                            if currentmode == "Teleport" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if IsDisabledControlJustPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        SetEntityCoords(PlayerPedId(), coords)
                                    end
                                end
                            end
                            if currentmode == "Aviao Spawner" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if IsDisabledControlJustPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        local vehicles = {"Jet", "Cargoplane", "Titan", "Cuban800"}
                                        local hash = bypasszinhaff(vehicles[bypasszinhapp.random(#vehicles)])
                                        if not HasModelLoaded(hash) then
                                            RequestModel(hash)
                                        end
                                        local veh = CreateVehicle(hash, coords, 1, 1, 1)
                                    end
                                end
                                if IsDisabledControlPressed(1, 68) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        local vehicles = {"Jet", "Cargoplane"}
                                        local hash = bypasszinhaff(vehicles[bypasszinhapp.random(#vehicles)])
                                        if not HasModelLoaded(hash) then
                                            RequestModel(hash)
                                        end
                                        local veh = CreateVehicle(hash, coords, 1, 1, 1)
                                    end
                                end
                            end
                            if currentmode == "Particula Spawner" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlJustPressed(0, 69) then
                                        RequestNamedPtfxAsset("scr_rcbarry2")
                                        UseParticleFxAssetNextCall("scr_rcbarry2")
                                        StartNetworkedParticleFxNonLoopedAtCoord(
                                            "scr_clown_appears",
                                            coords,
                                            0.0,
                                            0.0,
                                            0.0,
                                            21.0,
                                            bypasszinhaaa,
                                            bypasszinhaaa,
                                            bypasszinhaaa
                                        )
                                        RequestNamedPtfxAsset("scr_rcbarry2")
                                        UseParticleFxAssetNextCall("core")
                                        StartNetworkedParticleFxNonLoopedAtCoord(
                                            "veh_respray_smoke",
                                            coords,
                                            0.0,
                                            0.0,
                                            0.0,
                                            21.0,
                                            bypasszinhaaa,
                                            bypasszinhaaa,
                                            bypasszinhaaa
                                        )
                                        RequestNamedPtfxAsset("core")
                                        UseParticleFxAssetNextCall("core")
                                        StartNetworkedParticleFxNonLoopedAtCoord(
                                            "ent_sht_petrol_fire",
                                            coords,
                                            0.0,
                                            0.0,
                                            0.0,
                                            21.0,
                                            bypasszinhaaa,
                                            bypasszinhaaa,
                                            bypasszinhaaa
                                        )
                                        RequestNamedPtfxAsset("scr_rcbarry2")
                                        UseParticleFxAssetNextCall("scr_rcbarry2")
                                        StartNetworkedParticleFxNonLoopedAtCoord(
                                            "scr_clown_bul",
                                            coords,
                                            0.0,
                                            0.0,
                                            0.0,
                                            21.0,
                                            bypasszinhaaa,
                                            bypasszinhaaa,
                                            bypasszinhaaa
                                        )
                                    end
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        if IsDisabledControlPressed(1, 68) then
                                            RequestNamedPtfxAsset("scr_rcbarry2")
                                            UseParticleFxAssetNextCall("scr_rcbarry2")
                                            StartNetworkedParticleFxNonLoopedAtCoord(
                                                "scr_clown_appears",
                                                coords,
                                                0.0,
                                                0.0,
                                                0.0,
                                                21.0,
                                                bypasszinhaaa,
                                                bypasszinhaaa,
                                                bypasszinhaaa
                                            )
                                            RequestNamedPtfxAsset("scr_rcbarry2")
                                            UseParticleFxAssetNextCall("core")
                                            StartNetworkedParticleFxNonLoopedAtCoord(
                                                "veh_respray_smoke",
                                                coords,
                                                0.0,
                                                0.0,
                                                0.0,
                                                21.0,
                                                bypasszinhaaa,
                                                bypasszinhaaa,
                                                bypasszinhaaa
                                            )
                                            RequestNamedPtfxAsset("core")
                                            UseParticleFxAssetNextCall("core")
                                            StartNetworkedParticleFxNonLoopedAtCoord(
                                                "ent_sht_petrol_fire",
                                                coords,
                                                0.0,
                                                0.0,
                                                0.0,
                                                21.0,
                                                bypasszinhaaa,
                                                bypasszinhaaa,
                                                bypasszinhaaa
                                            )
                                            RequestNamedPtfxAsset("scr_rcbarry2")
                                            UseParticleFxAssetNextCall("scr_rcbarry2")
                                            StartNetworkedParticleFxNonLoopedAtCoord(
                                                "scr_clown_bul",
                                                coords,
                                                0.0,
                                                0.0,
                                                0.0,
                                                21.0,
                                                bypasszinhaaa,
                                                bypasszinhaaa,
                                                bypasszinhaaa
                                            )
                                        end
                                    end
                                end
                            end
                            if currentmode == "Deletar Entidade" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlJustPressed(0, 69) then
                                        if DoesEntityExist(entity) and not IsPedAPlayer(entity) then
                                            DeleteAllShits(entity)
                                        end
                                    end
                                    if IsDisabledControlPressed(1, 68) then
                                        if DoesEntityExist(entity) and not IsPedAPlayer(entity) then
                                            DeleteAllShits(entity)
                                        end
                                    end
                                end
                            end
                            if coords ~= vector3(0, 0, 0) then
                                bypasszinhauu(0.5, 0.932, 0.21, 0.0254, 10, 10, 10, 250)
                                local abc =
                                    getWidth(
                                    "[~Ryzen Menu ~w~| ~b~Freecam~w~]  ~w~" ..
                                        currentmode .. "  ~w~X:~g~" .. cx .. " ~w~Y:~g~" .. cy .. " ~w~Z:~g~" .. cz,
                                    4,
                                    0.5
                                )
                                local rX, rY = GetActiveScreenResolution()
                                bypasszinhall(
                                    "[~Ryzen Menu ~w~| ~b~Freecam~w~]  ~w~" ..
                                        currentmode .. "  ~w~X:~g~" .. cx .. " ~w~Y:~g~" .. cy .. " ~w~Z:~g~" .. cz,
                                    0.5,
                                    0.931,
                                    0.3,
                                    4,
                                    bypasszinhazz,
                                    bypasszinhazz,
                                    255,
                                    255,
                                    255
                                )
                            else
                                bypasszinhauu(0.5, 0.932, 0.21, 0.0254, 10, 10, 10, 250)
                                local abc =
                                    getWidth(
                                    "[~Ryzen Menu ~w~| ~y~Freecam~w~]  ~p~" .. currentmode .. "  ~r~Fora do Alcance!",
                                    4,
                                    0.5
                                )
                                local rX, rY = GetActiveScreenResolution()
                                bypasszinhall(
                                    "[~Ryzen Menu ~w~| ~y~Freecam~w~]  ~p~" .. currentmode .. "  ~r~Fora do Alcance!",
                                    0.5,
                                    0.931,
                                    0.3,
                                    4,
                                    bypasszinhazz,
                                    bypasszinhazz,
                                    255,
                                    255,
                                    255
                                )
                            end
                            if IsDisabledControlJustPressed(1, 14) then
                                freecam.mode = freecam.mode + 1
                                if freecam.mode > #freecam.modes then
                                    freecam.mode = 1
                                end
                            end
                            if IsDisabledControlJustPressed(1, 15) then
                                freecam.mode = freecam.mode - 1
                                if freecam.mode < 1 then
                                    freecam.mode = #freecam.modes
                                end
                            end
                            SetFocusPosAndVel(
                                GetCamCoord(camera).x,
                                GetCamCoord(camera).y,
                                GetCamCoord(camera).z,
                                0.0,
                                0.0,
                                0.0
                            )
                            SetCamRot(camera, offsetRotX, offsetRotY, offsetRotZ, 2)
                        end
                    end
                end
            end
        end
    end
)
    function bY(x, y, z, b7, r, g, b)
        SetDrawOrigin(x, y, z, 0)
        SetTextFont(0)
        SetTextProportional(0)
        SetTextScale(0.0, 0.22)
        SetTextColour(255, 0,255,255)
        SetTextOutline()
        BeginTextCommandDisplayText("STRING")
        SetTextCentre(1)
        AddTextComponentSubstringPlayerName(b7)
        EndTextCommandDisplayText(0.0, 0.0)
        ClearDrawOrigin()
        end   



Citizen.CreateThread(
function()
    while MenuEnabled do
        bypasszinhatt(0)
        if infstamina then
            RestorePlayerStamina(PlayerId(), 1.0)
        end
        
        if coloridin then 
            ra = RGBRainbow(1.0)
            SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
            SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
        end
        
        
        
        if ExplosiveAmmo then
            local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
            if ret then
                AddExplosion(pos.x, pos.y, pos.z, 1, 1.0, 1, 0, 0.1)
            end
        end

        
        function AtaquedeMagnetico()
            local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
            local pullp = {
                "ig_orleans",
                "ig_orleans",
                "ig_orleans",
            }
            local gangn = (pullp[bypasszinhapp.random(#pullp)])
            if not HasModelLoaded(bypasszinhaff(gangn)) then 
                RequestModel(bypasszinhaff(gangn))
            end 
            local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1) 
            GiveWeaponToPed(spawngang, bypasszinhaff("weapon_ceramicpistol"), 200, 1, 1)
            TaskCombatPed(spawngang, GetPlayerPed(SelectedPlayer), 0, 16)
        end
        
        function AtaquedeMagnetico2()
            local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
            local pullp = {
                "ig_orleans",
                "ig_orleans",
                "ig_orleans",
            }
            local gangn = (pullp[bypasszinhapp.random(#pullp)])
            if not HasModelLoaded(bypasszinhaff(gangn)) then 
                RequestModel(bypasszinhaff(gangn))
            end 
            local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1) 
            GiveWeaponToPed(spawngang, bypasszinhaff("weapon_ceramicpistol"), 200, 1, 1)
            TaskCombatPed(spawngang, GetPlayerPed(SelectedPlayer), 0, 16)
        end
        
        function AtaquedeMagnetico3()
            local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
            local pullp = {
                "ig_orleans",
                "ig_orleans",
                "ig_orleans",
            }
            local gangn = (pullp[bypasszinhapp.random(#pullp)])
            if not HasModelLoaded(bypasszinhaff(gangn)) then 
                RequestModel(bypasszinhaff(gangn))
            end 
            local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1) 
            GiveWeaponToPed(spawngang, bypasszinhaff("weapon_ceramicpistol"), 200, 1, 1)
            TaskCombatPed(spawngang, GetPlayerPed(SelectedPlayer), 0, 16)
        end



        

        if AntiTazer then
            SetPedCanRagdollFromPlayerImpact(PlayerPedId(), bypasszinhazz)
        end

        if semigodmodepkrl then
		SetPedSuffersCriticalHits(PlayerPedId(), bypasszinhaaa)
		if GetEntityHealth(PlayerPedId()) < 400 then
			SetEntityHealth(PlayerPedId(), 400)
		end
		if GetEntityHealth(PlayerPedId()) ~= 0 then
		end
	else
		SetPedSuffersCriticalHits(PlayerPedId(), bypasszinhazz)
	end

if GDM2 then
    SetEntityProofs(
    PlayerPedId(),
    bypasszinhaaa,
    bypasszinhaaa,
    bypasszinhazz,
    bypasszinhaaa,
    bypasszinhaaa
)
else
    SetEntityProofs(
    PlayerPedId(),
    bypasszinhaaa,
    bypasszinhaaa,
    bypasszinhaaa,
    bypasszinhaaa,
    bypasszinhaaa
)
end


local function GetCamDirection()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local pitch = GetGameplayCamRelativePitch()
    local x = -bypasszinhapp.sin(heading * bypasszinhapp.pi / 180.0)
    local y = bypasszinhapp.cos(heading * bypasszinhapp.pi / 180.0)
    local z = bypasszinhapp.sin(pitch * bypasszinhapp.pi / 180.0)
    local len = bypasszinhapp.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    return x, y, z
end

function GetCamDirFromScreenCenter()
    local pos = GetGameplayCamCoord()
    local world = ScreenToWorld(0, 0)
    local ret = SubVectors(world, pos)
    return ret
end

local function GetCameraDirection()
    local Heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local Pitch = GetGameplayCamRelativePitch()
    local x = -bypasszinhapp.sin(Heading * bypasszinhapp.pi / 180.0)
    local y = bypasszinhapp.cos(Heading * bypasszinhapp.pi / 180.0)
    local z = bypasszinhapp.sin(Pitch * bypasszinhapp.pi / 180.0)
    local len = _ud_sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    return x, y, z
end

if cornerBox then
    for an in EnumeratePeds() do
        local d4, d5 = GetActiveScreenResolution()
        local cC = GetEntityCoords(an)
        me = an ~= PlayerPedId()
        mr = IsPedAPlayer(an)
        local cD = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), cC.x, cC.y, cC.z, bypasszinhazz) * (1.1 - 0.05)
        local dB = GetPedArmour(an) * 10.76200
        local aK = GetEntityHealth(an) * 5.38200
        local dC = 1250
        local dD = 1200
        if IsEntityOnScreen(an) then
            if cD < 125 then
                if me and mr and not IsEntityDead(an) then
                    SetDrawOrigin(cC.x, cC.y, cC.z, 0)
                    bypasszinhauu(0.0, 0.0, 1075.2 / d4 / cD, 2376 / d5 / cD, 0, 0, 0, 90)
                    if HasEntityClearLosToEntity(PlayerPedId(), an, 19) then
                        local r, g, b = esp_box_cor.r, esp_box_cor.g, esp_box_cor.b
                        bypasszinhauu(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        bypasszinhauu(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        bypasszinhauu(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        bypasszinhauu(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        bypasszinhauu(
                        (290 + 150 / 2) / d4 / cD,
                        1190.6 / d5 / cD,
                        350 / d4 / cD,
                        1 / d5,
                        r,
                        g,
                        b,
                        255
                    )
                    bypasszinhauu(
                    (-290 - 150 / 2) / d4 / cD,
                    1190.6 / d5 / cD,
                    350 / d4 / cD,
                    1 / d5,
                    r,
                    g,
                    b,
                    255
                )
                bypasszinhauu(
                (290 + 150 / 2) / d4 / cD,
                -1190.6 / d5 / cD,
                350 / d4 / cD,
                1 / d5,
                r,
                g,
                b,
                255
            )
            bypasszinhauu(
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
        bypasszinhauu(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        bypasszinhauu(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        bypasszinhauu(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        bypasszinhauu(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        bypasszinhauu(
        (290 + 150 / 2) / d4 / cD,
        1190.6 / d5 / cD,
        350 / d4 / cD,
        1 / d5,
        r,
        g,
        b,
        255
    )
    bypasszinhauu(
    (-290 - 150 / 2) / d4 / cD,
    1190.6 / d5 / cD,
    350 / d4 / cD,
    1 / d5,
    r,
    g,
    b,
    255
)
bypasszinhauu(
(290 + 150 / 2) / d4 / cD,
-1190.6 / d5 / cD,
350 / d4 / cD,
1 / d5,
r,
g,
b,
255
)
bypasszinhauu(
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
bypasszinhauu(
-1078.2 / 2 / d4 / cD + dB / 2 / d4 / cD,
dC / d5 / cD + cD / 400 / cD,
dB / d4 / cD,
3 / d5,
r,
g,
b,
255
)
bypasszinhauu(
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

if esp_veiculo then
    for vehicle in EnumerateVehicles() do
        local x, y, z = table.unpack(GetEntityCoords(vehicle))
        local _, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
        local x1, y1, z1 = table.unpack(GetEntityCoords(PlayerPedId()))
        local dist =
            tonumber(string.format("%.1f", GetDistanceBetweenCoords(x1, y1, z1, x, y, z, bypasszinhazz)))
        local string = "" .. GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)) .. " (" .. dist .. "m)"
        if dist < 150 then
            bypasszinhall(
                string,
                _x,
                _y,
                0.23,
                4,
                bypasszinhazz,
                bypasszinhazz,
                esp_veiculo_cor.r,
                esp_veiculo_cor.g,
                esp_veiculo_cor.b
            )
        end
    end
end


if fpszin then
    SetTimecycleModifier("cinema")
    RopeDrawShadowEnabled(bypasszinhaaa)
    CascadeShadowsClearShadowSampleType()
    CascadeShadowsSetAircraftMode(bypasszinhaaa)
    CascadeShadowsEnableEntityTracker(bypasszinhazz)
    CascadeShadowsSetDynamicDepthMode(bypasszinhaaa)
    CascadeShadowsSetEntityTrackerScale(0.0)
    CascadeShadowsSetDynamicDepthValue(0.0)
    CascadeShadowsSetCascadeBoundsScale(0.0)
    SetFlashLightFadeDistance(0.0)
    SetLightsCutoffDistanceTweak(0.0)
    DistantCopCarSirens(bypasszinhaaa)
else
    SetTimecycleModifier("default")
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

function roupinha()
    resetAppearance()
    local model = "mp_m_freemode_01"
    RequestModel(bypasszinhaff(model))
    bypasszinhatt(1)
    if HasModelLoaded(bypasszinhaff(model)) then
        SetPlayerModel(PlayerId(), bypasszinhaff(model))
    end
end

function DrawText3DD(x, y, z, text, r, g, b)
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
if esp_skel then
    for k, v in pairs(GetActivePlayers()) do
        local ped = GetPlayerPed(v)
        local Pped = PlayerPedId()
        er = PlayerPedId()
        if GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(PlayerPedId()), bypasszinhazz) < 300 + 0.0 and ped ~= er then
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

function bY(x, y, z, b7, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(0.0, 0.22)
    SetTextColour(esp_nome_cor.r, esp_nome_cor.g,esp_nome_cor.b,255)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    SetTextCentre(1)
    AddTextComponentSubstringPlayerName(b7)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
    end

if esp_nome then
        local ds = GetActivePlayers()
        for T = 1, #ds do
        local ct = ds[T]
        if ct ~= PlayerId() and GetPlayerServerId(ct) ~= 0 then
        local dH = GetEntityCoords(GetPlayerPed(ds[T]))
        local dI = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), dH)
        local dJ = 250.0
        if dI <= dJ then
        local dK = GetPlayerPed(ct)
        local dL, dM, dN = table.unpack(GetEntityCoords(PlayerPedId()))
        local x, y, z = table.unpack(GetEntityCoords(dK))
        local dd = " " .. GetPlayerName(ds[T]) .. ""
        local dO = IsPlayerDead(dK)
        if GetEntityHealth(dK) <= 0 then
        dO = bypasszinhazz
        end
        if dO then
        dd = " "
        end
        SetTextColour(esp_nome_cor.r, esp_nome_cor.g,esp_nome_cor.b,255)
        bY(x, y, z - 0.15, dd, esp_nome_cor.r,esp_nome_cor.g,esp_nome_cor.b)
        end
        end
        end
        end
        


if dar_munizinha_shockwavekk then
    local ret, pos = GetPedLastWeaponImpactCoord(GetPlayerPed(SelectedPlayer))
    if NetworkIsPlayerActive(SelectedPlayer) then
        if ret then
            AddExplosion(pos.x, pos.y, pos.z, 70, 1.0, 1, 0, 0.1)
        end
    end
end

if dar_munizinha_explosiva then
    local ret, pos = GetPedLastWeaponImpactCoord(GetPlayerPed(SelectedPlayer))
    if NetworkIsPlayerActive(SelectedPlayer) then
        if ret then
            AddExplosion(pos.x, pos.y, pos.z, 16, 1.0, 1, 0, 0.1)
        end
    end
end

if falaaipravesenexplodekkjk then
if NetworkIsPlayerTalking(SelectedPlayer) then
    local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
AddExplosion(coord, 37, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
end
end


if falaaipravesenvoakkjk then
    if NetworkIsPlayerTalking(SelectedPlayer) then
        local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    AddExplosion(coord, 70, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
    end
    end




if explodirveiculokkjk then
    if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer, 0)) then 
            local veh = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), bypasszinhazz)
            local position = GetEntityCoords(veh)
            Citizen.CreateThread(function()
            bypasszinhatt(150)
            AddExplosion(position, 7, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
        end)
    end
end


if GDM2 then
    SetEntityProofs(
        PlayerPedId(),
        bypasszinhaaa,
        bypasszinhaaa,
        bypasszinhazz,
        bypasszinhaaa,
        bypasszinhaaa
    )
else
    SetEntityProofs(
        PlayerPedId(),
        bypasszinhaaa,
        bypasszinhaaa,
        bypasszinhaaa,
        bypasszinhaaa,
        bypasszinhaaa
    )
end

if hfkwebieewdqfogos5 then
    RemoveParticleFx("td_blood_shotgun", 1)
    OnlinePlayers = GetActivePlayers()
    for i = 1, #OnlinePlayers do 
        
        local ped = GetPlayerPed(OnlinePlayers[i])
        local pedcoords = GetEntityCoords(ped)
        
        RequestNamedPtfxAsset("core")
        
        UseParticleFxAssetNextCall("core")
        StartNetworkedParticleFxNonLoopedAtCoord("td_blood_shotgun", pedcoords, 0.0, 0.0, 0.0, 20.0, bypasszinhaaa, bypasszinhaaa, bypasszinhaaa, bypasszinhaaa)
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
        StartNetworkedParticleFxNonLoopedAtCoord("veh_backfire", pedcoords, 0.0, 0.0, 0.0, 20.0, bypasszinhaaa, bypasszinhaaa, bypasszinhaaa, bypasszinhaaa)
    end
end


if box then
    for an in EnumeratePeds() do
        local d4, d5 = GetActiveScreenResolution()
        local cC = GetEntityCoords(an)
        me = an ~= PlayerPedId()
        mr = IsPedAPlayer(an)
        local cD = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), cC.x, cC.y, cC.z, bypasszinhazz) * (1.1 - 0.05)
        local dB = GetPedArmour(an) * 10.76200
        local aK = GetEntityHealth(an) * 5.38200
        local dC = 1250
        local dD = 1200
        if IsEntityOnScreen(an) then
            if cD < 125 then
                if me and mr and not IsEntityDead(an) then
                    SetDrawOrigin(cC.x, cC.y, cC.z, 0)
                    bypasszinhauu(0.0, 0.0, 1075.2 / d4 / cD, 2376 / d5 / cD, 0, 0, 0, 90)
                    if HasEntityClearLosToEntity(PlayerPedId(), an, 19) then
                        local r, g, b = 255, 255, 255
                        bypasszinhauu(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        bypasszinhauu(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        bypasszinhauu(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        bypasszinhauu(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        bypasszinhauu(
                        (290 + 150 / 2) / d4 / cD,
                        1190.6 / d5 / cD,
                        350 / d4 / cD,
                        1 / d5,
                        r,
                        g,
                        b,
                        255
                    )
                    bypasszinhauu(
                    (-290 - 150 / 2) / d4 / cD,
                    1190.6 / d5 / cD,
                    350 / d4 / cD,
                    1 / d5,
                    r,
                    g,
                    b,
                    255
                )
                bypasszinhauu(
                (290 + 150 / 2) / d4 / cD,
                -1190.6 / d5 / cD,
                350 / d4 / cD,
                1 / d5,
                r,
                g,
                b,
                255
            )
            bypasszinhauu(
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
        bypasszinhauu(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        bypasszinhauu(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        bypasszinhauu(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        bypasszinhauu(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        bypasszinhauu(
        (290 + 150 / 2) / d4 / cD,
        1190.6 / d5 / cD,
        350 / d4 / cD,
        1 / d5,
        r,
        g,
        b,
        255
    )
    bypasszinhauu(
    (-290 - 150 / 2) / d4 / cD,
    1190.6 / d5 / cD,
    350 / d4 / cD,
    1 / d5,
    r,
    g,
    b,
    255
)
bypasszinhauu(
(290 + 150 / 2) / d4 / cD,
-1190.6 / d5 / cD,
350 / d4 / cD,
1 / d5,
r,
g,
b,
255
)
bypasszinhauu(
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
bypasszinhauu(
-1078.2 / 2 / d4 / cD + dB / 2 / d4 / cD,
dC / d5 / cD + cD / 400 / cD,
dB / d4 / cD,
3 / d5,
r,
g,
b,
255
)
bypasszinhauu(
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






if staminaepsa then
    for i = 0, 128 do
        if i ~= PlayerId() and GetPlayerServerId(i) ~= 0 then
            local luffy = GetPlayerPed(i)
            local cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId()))
            local x, y, z = table.unpack(GetEntityCoords(luffy))
            local _, wephash = GetCurrentPedWeapon(GetPlayerPed(i), 1)
            if wepname == bypasszinhass then wepname = "Desarmado" end
            local meucumprido =
            "" ..
            GetPlayerName(i) ..
            "\n[~p~Arma]:~y~ " .. wepname
            if IsPedInAnyVehicle(luffy, bypasszinhazz) then
                local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(luffy))))
                meucumprido = meucumprido .. "\n~p~[Veiculo]:~y~ " .. VehName 
            end
            
            
            bypasszinhayy3D(x, y, z + 1.0, meucumprido,  030, 140, 255 )
            
            enzo1 = GetOffsetFromEntityInWorldCoords(luffy, -0.3, -0.3, -0.9)
            enzo2 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, -0.3, -0.9)
            enzo3 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, -0.3, -0.9)
            enzo4 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, 0.3, -0.9)
            enzo5 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, 0.3, -0.9)
            enzo6 = GetOffsetFromEntityInWorldCoords(luffy, -0.3, 0.3, -0.9)
            enzo7 = GetOffsetFromEntityInWorldCoords(luffy, -0.3, -0.3, -0.9)
            
            Tenzo1 = GetOffsetFromEntityInWorldCoords(luffy, -0.3, -0.3, 0.8)
            Tenzo2 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, -0.3, 0.8)
            Tenzo3 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, -0.3, 0.8)
            Tenzo4 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, 0.3, 0.8)
            Tenzo5 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, 0.3, 0.8)
            Tenzo6 = GetOffsetFromEntityInWorldCoords(luffy, -0.3, 0.3, 0.8)
            Tenzo7 = GetOffsetFromEntityInWorldCoords(luffy, -0.3, -0.3, 0.8)
            
            eenzo1 = GetOffsetFromEntityInWorldCoords(luffy, -0.3, 0.3, 0.8)
            eenzo2 = GetOffsetFromEntityInWorldCoords(luffy, -0.3, 0.3, -0.9)
            eenzo3 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, 0.3, 0.8)
            eenzo4 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, 0.3, -0.9)
            eenzo5 = GetOffsetFromEntityInWorldCoords(luffy, -0.3, -0.3, 0.8)
            eenzo6 = GetOffsetFromEntityInWorldCoords(luffy, -0.3, -0.3, -0.9)
            eenzo7 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, -0.3, 0.8)
            eenzo8 = GetOffsetFromEntityInWorldCoords(luffy, 0.3, -0.3, -0.9)
        end
    end
end



if autoconf then
    
    SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa))
    SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0.0)
    SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
    SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), bypasszinhaaa)
    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
    
end



if SuperJump then
    
    
    SetSuperJumpThisFrame(PlayerId())
    
    
    
    
    
end

if HornBoost and IsPedInAnyVehicle(PlayerPedId(-1), bypasszinhazz) then
    if IsControlPressed(1, 38) then
        Citizen.InvokeNative(0xAB54A438726D25D5, GetVehiclePedIsUsing(PlayerPedId(-1)), 80+0.0)
    end
end
if InfiniteCombatRoll then
    for i = 0, 3 do
        StatSetInt(bypasszinhaff("mp" .. i .. "_shooting_ability"), 9999, bypasszinhazz)
        StatSetInt(bypasszinhaff("sp" .. i .. "_shooting_ability"), 9999, bypasszinhazz)
    end
else
    for i = 0, 3 do
        StatSetInt(bypasszinhaff("mp" .. i .. "_shooting_ability"), 0, bypasszinhazz)
        StatSetInt(bypasszinhaff("sp" .. i .. "_shooting_ability"), 0, bypasszinhazz)
    end
end

local function L(M, N)
    return vector3(M.x + N.x, M.y + N.y, M.z + N.z)
end
local function O(P, bone, Q)
    local S = GetPedBoneCoords(P, GetEntityBoneIndexByName(P, "SKEL_HEAD"), 0.0, 0.0, 0.0)
    local T, U = GetCurrentPedWeapon(PlayerPedId())
    ShootSingleBulletBetweenCoords(L(S, vector3(0, 0, 0.1)), S, Q, bypasszinhazz, U, PlayerPedId(), bypasszinhazz, bypasszinhazz, 1000.0)
end



local function bD(H)
    if
    IsEntityOnScreen(H) and HasEntityClearLosToEntityInFront(PlayerPedId(), H) and not IsPedDeadOrDying(H) and
    not IsPedInVehicle(H, GetVehiclePedIsIn(H), bypasszinhaaa) and
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

if rolasinf then
    for i = 0, 3 do
        StatSetInt(bypasszinhaff("mp" .. i .. "_shooting_ability"), 9999, bypasszinhazz)
        StatSetInt(bypasszinhaff("sp" .. i .. "_shooting_ability"), 9999, bypasszinhazz)
    end
else
    for i = 0, 3 do
        StatSetInt(bypasszinhaff("mp" .. i .. "_shooting_ability"), 0, bypasszinhazz)
        StatSetInt(bypasszinhaff("sp" .. i .. "_shooting_ability"), 0, bypasszinhazz)
    end
end

if Invisivela then
    SetEntityVisible(PlayerPedId(), 0, 0)
    local cG = PlayerPedId()
    DrawLine(GetPedBoneCoords(cG, 31086), GetPedBoneCoords(cG, 0x9995), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0x9995), GetEntityCoords(cG), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0x5C57), GetEntityCoords(cG), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0x192A), GetEntityCoords(cG), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0x3FCF), GetPedBoneCoords(cG, 0x192A), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0xCC4D), GetPedBoneCoords(cG, 0x3FCF), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0xB3FE), GetPedBoneCoords(cG, 0x5C57), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0xB3FE), GetPedBoneCoords(cG, 0x3779), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0x9995), GetPedBoneCoords(cG, 0xB1C5), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0xB1C5), GetPedBoneCoords(cG, 0xEEEB), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0xEEEB), GetPedBoneCoords(cG, 0x49D9), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0x9995), GetPedBoneCoords(cG, 0x9D4D), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0x9D4D), GetPedBoneCoords(cG, 0x6E5C), 255, 255, 255, 255)
    DrawLine(GetPedBoneCoords(cG, 0x6E5C), GetPedBoneCoords(cG, 0xDEAD), 255, 255, 255, 255)
    local cH = GetPedBoneCoords(cG, 31086)
    DrawMarker(
    28,
    cH.x,
    cH.y,
    cH.z + 0.06,
    0.0,
    0.0,
    0.0,
    0.0,
    180.0,
    0.0,
    0.1,
    0.1,
    0.1,
    255,
    255,
    255,
    255,
    bypasszinhaaa,
    bypasszinhazz,
    2,
    bypasszinhass,
    bypasszinhass,
    bypasszinhaaa
)
else
    SetEntityVisible(PlayerPedId(), bypasszinhazz)
    
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







function terroristattack()
    if not HasModelLoaded(bypasszinhaff('a_m_m_afriamer_01')) then
        RequestModel(bypasszinhaff('a_m_m_afriamer_01'))
    end
    
    local ped = CreatePed(5, bypasszinhaff('a_m_m_afriamer_01'), GetOffsetFromEntityInWorldCoords(GetPlayerPed(SelectedPlayer), 0.0, -1.0, -1.0), GetEntityHeading(GetPlayerPed(SelectedPlayer)), bypasszinhazz, bypasszinhazz)
    
    
    Citizen.CreateThread(function()
        bypasszinhatt(2500)
        AddExplosion(GetEntityCoords(ped), 37, 500.0, bypasszinhazz, bypasszinhaaa, bypasszinhaaa, bypasszinhaaa)
    end)
end

function juggernautpkrl2()
    local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    local pullp = {
        "s_m_y_blackops_01",
        "s_m_m_marine_01",
        "s_m_y_blackops_02",
    }
    local gangn = (pullp[bypasszinhapp.random(#pullp)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then 
        RequestModel(bypasszinhaff(gangn))
    end 
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1) 
    GiveWeaponToPed(spawngang, bypasszinhaff("WEAPON_CARBINERIFLE_MK2"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(SelectedPlayer), 0, 16)
end

function juggernautpkrl()
    local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    local pullp = {
        "s_m_y_blackops_01",
        "s_m_y_blackops_02",
        "s_m_m_marine_01",
    }
    local gangn = (pullp[bypasszinhapp.random(#pullp)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then 
        RequestModel(bypasszinhaff(gangn))
    end 
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1) 
    GiveWeaponToPed(spawngang, bypasszinhaff("WEAPON_CARBINERIFLE_MK2"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(SelectedPlayer), 0, 16)
end

function juggernautpkrl3()
    local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    local pullp = {
        "s_m_m_marine_01",
        "s_m_y_blackops_02",
        "s_m_y_blackops_01",
    }
    local gangn = (pullp[bypasszinhapp.random(#pullp)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then 
        RequestModel(bypasszinhaff(gangn))
    end 
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1) 
    GiveWeaponToPed(spawngang, bypasszinhaff("WEAPON_CARBINERIFLE_MK2"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(SelectedPlayer), 0, 16)
end

function viadopkrl(player)
    
    local rmodel = "a_c_deer"
    local ped = GetPlayerPed(player)
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
    local x = coords.x
    local y = coords.y
    local z = coords.z
    
    RequestModel(bypasszinhaff(rmodel))
    
    while not HasModelLoaded(bypasszinhaff(rmodel)) and not killmenu do
        bypasszinhatt(0)
    end
    
    
    local nped = CreatePed(31, rmodel, x, y, z, 0.0, bypasszinhazz, bypasszinhazz)
    SetPedComponentVariation(nped, 4, 0, 0, 0)
    
    AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, bypasszinhazz, bypasszinhazz, bypasszinhazz, bypasszinhazz, 0, bypasszinhazz)
    
end

function caixaopkrl()
    local ped = GetPlayerPed(SelectedPlayer)
    local prop = CreateObject(bypasszinhaff("prop_coffin_01"), 9, 9, 9, 1, 1, 1)
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
    bypasszinhaaa,
    bypasszinhaaa,
    bypasszinhazz,
    bypasszinhaaa,
    0,
    bypasszinhazz
)
end			









local function GetSeatPedIsIn(ped)
    if not IsPedInAnyVehicle(ped, bypasszinhaaa) then return
    else
        veh = GetVehiclePedIsIn(ped)
        for i = 0, GetVehicleMaxNumberOfPassengers(veh) do
            if GetPedInVehicleSeat(veh) then return i end
        end
    end
end

if IsControlJustPressed(1, noclip["Value"]) then
    
    Noclip2 = not Noclip2
    if Noclip2 then
        SetEntityVisible(PlayerPedId(), bypasszinhaaa, bypasszinhaaa)
    else
        SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
        SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), bypasszinhazz, bypasszinhaaa)
        SetEntityVisible(PlayerPedId(), bypasszinhazz, bypasszinhaaa)
    end
end		
if Noclip2 then
    local NoclipSpeed = 0.5
    local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
    local k = bypasszinhass
    local x, y, z = bypasszinhass
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
        NoclipSpeed = NoclipSpeed * 1.3
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
    SetEntityCoordsNoOffset(k, x, y, z, bypasszinhazz, bypasszinhazz, bypasszinhazz)
end

if IsControlJustPressed(1, OpenMenuKey["Value"]) then
    DisplayMenu = not DisplayMenu
end
if DisplayMenu	then
    meni()
    kontrols()
    
end

end
end)













function RequestControlOnce(entity)
    if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
        return bypasszinhazz
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), bypasszinhazz)
    return NetworkRequestControlOfEntity(entity)
end


local platano = 
{
    closed = bypasszinhazz,
    key = 166,
    entityEnumerator = 
    {
        __gc = function(enum)
            if enum.destructor and enum.handle then
                enum.destructor(enum.handle)
            end
            enum.destructor = bypasszinhass
            enum.handle = bypasszinhass
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
        
        local next = bypasszinhazz
        repeat
            coroutine.yield(id)
            next, id = FindNextVehicle(iter)
        until not next
        
        enum.destructor, enum.handle = bypasszinhass, bypasszinhass
        EndFindVehicle(iter)
    end)
end

function platano:rectangle(x, y, w, h, r, g, b, a)
    local resx, resy = GetActiveScreenResolution()
    local rectw, recth = w / resx, h / resy
    local rectx, recty = x / resx + rectw / 2, y / resy + recth / 2
    bypasszinhauu(rectx, recty, rectw, recth, r, g, b, a)
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
        return bypasszinhazz 
    else 
        return bypasszinhaaa 
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
            return bypasszinhazz
        end
        
    else
        return bypasszinhaaa
    end
end

function platano:rainbow(speed)
    local return_values = {}
    
    local game_timer = GetGameTimer() / 200
    
    return_values.r = bypasszinhapp.floor(bypasszinhapp.sin(game_timer * speed + 0) * 127 + 128)
    return_values.g = bypasszinhapp.floor(bypasszinhapp.sin(game_timer * speed + 2) * 127 + 128)
    return_values.b = bypasszinhapp.floor(bypasszinhapp.sin(game_timer * speed + 4) * 127 + 128)
    
    return return_values
end

Citizen.CreateThread(function()
    while bypasszinhazz do
        if IsDisabledControlJustPressed(1, platano.key) then
            platano.closed = not platano.closed
        end
        
        if platano.closed == bypasszinhaaa then
            
            
            local rainbow = platano:rainbow(1.0)
            
            platano:rectangle(19,19,152,502, 0, 35, 255, 255)
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
            
            platano:rectangle(x, y, 5, 5, 0, 35, 255, 255)
            
        end
        bypasszinhatt(0)
    end
end)