local lokizaobipissexo1 = false
local lokizaobipissexo2 = true
local lokizaobipissexo3 = math
local lokizaobipissexo4 = GetHashKey
local lokizaobipissexo5 = lokizaobipissexo5
local lokizaobipissexo6 = GiveWeaponToPed
local lokizaobipissexo7 = PlayerPedId
local lokizaobipissexo8 = Zunc 
local lokizaobipissexo9 = DrawRect 
local lokizaobipissexo10 = DrawText
local lokizaobipissexo11 = DrawTextOutline
local lokizaobipissexo12 = drawTextOutline
local lokizaobipissexo13 = text
local lokizaobipissexo14 = {}
local lokizaobipissexo15 = lokizaobipissexo2
local lokizaobipissexo16 = 'nilsun'
local lokizaobipissexo18 = {['Label'] = 'Y',['Value'] = 246}
local lokizaobipissexo182 = {['Label'] = 'MOUSE3',['Value'] = 348}
local lokizaobipissexo19 = {['Label'] = '1',['Value'] = 157}
local lokizaobipissexo20 = {['Label'] = 'F5',['Value'] = 166}
local lokizaobipissexo21 = {['Label'] = 'INSERT',['Value'] = 121}
local lokizaobipissexopegavida = GetEntityMaxHealth

-- reviver 
--[[
local lokizaobipissexo7 = PlayerPedId
local lokizaobipissexopegavida = GetEntityMaxHealth
SetEntityHealth(lokizaobipissexo7(), lokizaobipissexopegavida(lokizaobipissexo7()) )
--]]


Aimlock_throughwalls = true
marcadaagua = true 
visuals_skeletons_self = true

lokizaobipissexo22 = { r = 30, g = 90, b = 200 }
lokizaobipissexo23 = {r = 30, g = 90, b = 200}
lokizaobipissexo24 = {r = 30, g = 90, b = 200}
lokizaobipissexo25 = {r = 30, g = 90, b = 200}
lokizaobipissexo26 = {r = 30, g = 90, b = 200}
lokizaobipissexo27 = {r = 30, g = 90, b = 200}
lokizaobipissexo28 = {r = 30, g = 90, b = 200}

lokizaobipissexo29 = lokizaobipissexo2 unsdjnajnkdaadskjn = lokizaobipissexo2 usdhaiudhaudiduah = lokizaobipissexo2 dasjnodsiojndasuni = lokizaobipissexo2 
lokizaobipissexo30 = lokizaobipissexo2
lokizaobipissexo31 = lokizaobipissexo2
lokizaobipissexo32 = { 
    freezer = lokizaobipissexo1,
    mode = 1,
    modes = {
        'Visualizar',
        'Animal Spawn',
        'Atropelar',
        'Ped Spawner',
        'Explodir',
    }
}
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
        TriggerEvent(iname .. ':proxy', key, args, proxy_callback)
        return table.unpack(proxy_rdata)
    end
    itable[key] = fcall
    return fcall
end

function Proxy.addInterface(name, itable)
    AddEventHandler(name .. ':proxy', function(member, args, callback)
        local f = itable[member]
        if type(f) == 'function' then
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


vRP = Proxy.getInterface('vRP')

local uuuids = GetActivePlayers()
local function DCamDirection() local saoiduhp = GetGameplayCamRelativeHeading() + GetEntityHeading(lokizaobipissexo7()) local fpojds = GetGameplayCamRelativePitch() local x = -lokizaobipissexo3.sin(saoiduhp * lokizaobipissexo3.pi / 180.0) local y = lokizaobipissexo3.cos(saoiduhp * lokizaobipissexo3.pi / 180.0) local z = lokizaobipissexo3.sin(fpojds * lokizaobipissexo3.pi / 180.0) local len = lokizaobipissexo3.sqrt(x * x + y * y + z * z) if len ~= 0 then x = x / len y = y / len z = z / len end  return x, y, z end


local currAimlockBoneIndex = 1
local selAimlockBoneIndex = 1
local WM = {
    Menu = {
        MenuX = 0.68,
        MenuY = 0.5,
    }
}

local to_add_X = WM.Menu.MenuX-0.5
local to_add_Y = WM.Menu.MenuY-0.5



local keys = {
	['ESC'] = 322,
	['NENHUM'] = 0,
	['F1'] = 288,
	['F2'] = 289,
	['F3'] = 170,
	['F5'] = 166,
	['F6'] = 167,
	['F7'] = 168,
	['F8'] = 169,
	['F9'] = 56,
	['F10'] = 57,
	['~'] = 243,
	['1'] = 157,
	['2'] = 158,
	['3'] = 160,
	['4'] = 164,
	['5'] = 165,
	['6'] = 159,
	['7'] = 161,
	['8'] = 162,
	['9'] = 163,
	['-'] = 84,
	['='] = 83,
	['BACKSPACE'] = 177,
	['lokizaobipissexo16'] = 37,
	['Q'] = 44,
	['W'] = 32,
	['E'] = 38,
	['R'] = 45,
	['T'] = 245,
	['Y'] = 246,
	['U'] = 303,
	['P'] = 199,
	['['] = 39,
	[']'] = 40,
	['ENTER'] = 18,
	['CAPS'] = 137,
	['A'] = 34,
	['S'] = 8,
	['D'] = 9,
	['F'] = 23,
	['G'] = 47,
	['H'] = 74,
	['K'] = 311,
	['L'] = 182,
	['LEFTSHIFT'] = 21,
	['Z'] = 20,
	['X'] = 73,
	['C'] = 26,
	['V'] = 0,
	['B'] = 29,
	['N'] = 249,
	['M'] = 244,
	[','] = 82,
	['.'] = 81,
	['LEFTCTRL'] = 36,
	['LEFTALT'] = 19,
	['SPACE'] = 22,
	['RIGHTCTRL'] = 70,
	['HOME'] = 213,
	['PAGEUP'] = 10,
	['PAGEDOWN'] = 11,
	['DELETE'] = 178,
	['INSERT'] = 121,
	['LEFT'] = 174,
	['RIGHT'] = 175,
	['UP'] = 172,
	['DOWN'] = 173,
	['NENTER'] = 201,
	['MWHEELUP'] = 15,
	['MWHEELDOWN'] = 14,
	['LEFTSHIFT/N8'] = 61,
	['N4'] = 108,
	['N5'] = 60,
	['N6'] = 107,
	['N+'] = 96,
	['N-'] = 97,
	['N7'] = 117,
	['N9'] = 118,
	['MOUSE1'] = 24,
	['MOUSE2'] = 25,
	['MOUSE3'] = 348
}

Sliders = {
    ['Aimlock_damage'] = 50, ['AIM-lokizaobipissexo28'] = {max = 700, min = 0, value = 100},  ['Aimlock_speed'] = 1000.0, ['Aimlock_hitchance'] = 100,
    ['Super_Velocidade'] = {max = 100.0, min = 1.0, value = 30.0}, ['Super_Pulo'] = {max = 100.0, min = 1.0, value = 30.0},
    ['lokizaobipissexo19_Velocidade'] = {max = 5.0, min = 0.1, value = 0.5}, ['player-lokizaobipissexo32-lokizaobipissexo28'] = {max = 130.0, min = 0.0, value = 50.0},  ['player-lokizaobipissexo32-sensitivity'] = {max = 15.0, min = 0.0, value = 7.0}, ['player-lokizaobipissexo32-speed'] = {max = 2.0, min = 0.0, value = 0.4},
    ['Acelerção'] = {max = 2000.0, min = 10.0, value = 10.0},
    ['AIM-SMOTH'] = {max = 0, min = 0, value = 0},
    ['esp_distancia'] = {value = 100, max = 1500, min = 0},
}


local Keys = {
    ['ESC'] = 322,
    ['F1'] = 288,
    ['F2'] = 289,
    ['F3'] = 170,
    ['F5'] = 166,
    ['F6'] = 167,
    ['F7'] = 168,
    ['F8'] = 169,
    ['F9'] = 56,
    ['F10'] = 57,
    ['~'] = 243,
    ['1'] = 157,
    ['2'] = 158,
    ['3'] = 160,
    ['4'] = 164,
    ['5'] = 165,
    ['6'] = 159,
    ['7'] = 161,
    ['8'] = 162,
    ['9'] = 163,
    ['-'] = 84,
    ['='] = 83,
    ['BACKSPACE'] = 177,
    ['lokizaobipissexo16'] = 37,
    ['Q'] = 44,
    ['W'] = 32,
    ['E'] = 38,
    ['R'] = 45,
    ['T'] = 245,
    ['Y'] = 246,
    ['U'] = 303,
    ['P'] = 199,
    ['['] = 39,
    [']'] = 40,
    ['ENTER'] = 18,
    ['CAPS'] = 137,
    ['A'] = 34,
    ['S'] = 8,
    ['D'] = 9,
    ['F'] = 23,
    ['G'] = 47,
    ['H'] = 74,
    ['K'] = 311,
    ['L'] = 182,
    ['LEFTSHIFT'] = 21,
    ['Z'] = 20,
    ['X'] = 73,
    ['C'] = 26,
    ['V'] = 0,
    ['B'] = 29,
    ['N'] = 249,
    ['M'] = 244,
    [','] = 82,
    ['.'] = 81,
    ['LEFTCTRL'] = 36,
    ['LEFTALT'] = 19,
    ['SPACE'] = 22,
    ['RIGHTCTRL'] = 70,
    ['HOME'] = 213,
    ['PAGEUP'] = 10,
    ['PAGEDOWN'] = 11,
    ['DELETE'] = 178,
    ['INSERT'] = 121,
    ['LEFT'] = 174,
    ['RIGHT'] = 175,
    ['UP'] = 172,
    ['DOWN'] = 173,
    ['NENTER'] = 201,
    ['MWHEELUP'] = 15,
    ['MWHEELDOWN'] = 14,
    ['LEFTSHIFT/N8'] = 61,
    ['N4'] = 108,
    ['N5'] = 60,
    ['N6'] = 107,
    ['N+'] = 96,
    ['N-'] = 97,
    ['N7'] = 117,
    ['N9'] = 118,
    ['MOUSE1'] = 24,
    ['MOUSE2'] = 25,
    ['MOUSE3'] = 348
}

--------MENU---------

mouseZone = function(x, y, w, h)  
    local cx, cy = GetNuiCursorPosition()
    if (cx > x - (w / 2) and cy > y - (h / 2) and cx < x + (w / 2) and cy < y + (h / 2)) then 
        return lokizaobipissexo2
    else
        return lokizaobipissexo1
    end
end
function nulooooooo()
end
function lokizaobipissexo9(x, y, w, h, r, g, b, a)
    return Citizen.InvokeNative(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
end



local function DoNetwork(obj)
        if not Citizen.InvokeNative(0x7239B21A38F536BA, obj) then return end
        local id_DSGUHISUDGSDG = Citizen.InvokeNative(0x99BFDC94A603E541, obj)
        Citizen.InvokeNative(0x2B1813ABA29016C5, id_DSGUHISUDGSDG, lokizaobipissexo2)
        Citizen.InvokeNative(0xE05E81A888FA63C8, id_DSGUHISUDGSDG, lokizaobipissexo2)
        Citizen.InvokeNative(0x299EEB23175895FC, id_DSGUHISUDGSDG, lokizaobipissexo1)

        for _, src_DSHGIUDSGSDG in pairs(GetActivePlayers()) do
            Citizen.InvokeNative(0xA8A024587329F36A, id_DSGUHISUDGSDG, src_DSHGIUDSGSDG, lokizaobipissexo2)
        end
    end


local function RotationToDirection(rotation)
    local retz = lokizaobipissexo3.rad(rotation.z)
    local retx = lokizaobipissexo3.rad(rotation.x)
    local absx = lokizaobipissexo3.abs(lokizaobipissexo3.cos(retx))
    return vector3(-lokizaobipissexo3.sin(retz) * absx, lokizaobipissexo3.cos(retz) * absx, lokizaobipissexo3.sin(retx))
end

local function Simple_Botao(lokizaobipissexo13, x, y)
local _x, _y = lokizaobipissexo14.MenuX-0.5, lokizaobipissexo14.MenuY-0.5
local _w, _h = lokizaobipissexo14.MenuW-0.5, lokizaobipissexo14.MenuH-0.5
drawText(lokizaobipissexo13, _x+x, _y+y, 0.24, lokizaobipissexo1, 4, lokizaobipissexo2)
if mouseZone(_x+x, _y+y, 0.0835, 0.0221+0.0018) then 
    lokizaobipissexo9(_x+x, _y+y, 0.0835, 0.0221, 32, 32, 32, 255)
else
    lokizaobipissexo9(_x+x, _y+y, 0.0835, 0.0221, 32, 32, 32, 255)
end
if mouseZone(_x+x, _y+y, 0.086, 0.0236+0.0018) and IsDisabledControlJustPressed(0, 24) then 
    return lokizaobipissexo2
end
end

function lokizaobipissexo13(nazwa,outline,size,Justification,xx,yy, centre, font)
	if outline then
		SetTextOutline()
	end
	if font ~= nil and tonumber(font) ~= nil then
	SetTextFont(1)
	else
	SetTextFont(1)
	end
	if centre then
		SetTextCentre(lokizaobipissexo2)
	end
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0,227,255)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)
end



function textt(nazwa,outline,size,Justification,xx,yy, centre, font)

	if outline then
		SetTextOutline()
	end
	if font ~= nil and tonumber(font) ~= nil then
	SetTextFont(1)
	else
	SetTextFont(1)
	end
	if centre then
		SetTextCentre(lokizaobipissexo2)
	end
	
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(115, 0, 230,  255)
    SetTextColour(lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)
end


local function GetTextWidht(str, font, scale)
    BeginTextCommandWidth('STRING')
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(1)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)

    return length
end



local function lokizaobipissexo10(lokizaobipissexo13, x, y, outline, size, font, centre)
    SetTextFont(1)
    if outline then
        SetTextOutline(lokizaobipissexo2)
    end
    if tonumber(font) ~= nil then
        SetTextFont(1)
    end
	if centre then
		SetTextCentre(lokizaobipissexo2)
	end
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(lokizaobipissexo13)
    EndTextCommandDisplayText(x, y)
end



--

local all_weapons = {"WEAPON_UNARMED", "WEAPON_KNIFE", "WEAPON_KNUCKLE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", "WEAPON_CROWBAR", "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_HATCHET", "WEAPON_MACHETE", "WEAPON_FLASHLIGHT", "WEAPON_SWITCHBLADE", "WEAPON_PISTOL", "WEAPON_PISTOL_MK2", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50", "WEAPON_SNSPISTOL", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL", "WEAPON_STUNGUN", "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", "WEAPON_REVOLVER", "WEAPON_MICROSMG", "WEAPON_SMG", "WEAPON_MINISMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", "WEAPON_COMBATPDW", "WEAPON_GUSENBERG", "WEAPON_MACHINEPISTOL", "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_BULLPUPRIFLE", "WEAPON_COMPACTRIFLE", "WEAPON_PUMPSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_MUSKET", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_STINGER", "WEAPON_FIREWORK", "WEAPON_HOMINGLAUNCHER", "WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_PROXMINE", "WEAPON_MINIGUN", "WEAPON_RAILGUN", "WEAPON_POOLCUE", "WEAPON_BZGAS", "WEAPON_SMOKEGRENADE", "WEAPON_MOLOTOV", "WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_SNOWBALL", "WEAPON_FLARE", "WEAPON_BALL"}


drag = {
    [1] = {x = 0.5, y = 0.5, w = 0.510, h = 0.5},
    [2] = {x = 0.5, y = 0.5},
}
local function text4(name,outline,size,Justification,xx,yy, font)

    if outline then

        SetTextOutline()

    end

    if font ~= nil and tonumber(font) ~= nil then

    SetTextFont(1)

    else

    SetTextFont(1)

    end

    SetTextProportional(1)

    SetTextScale(100.0, size)

    SetTextEdge(1, 0, 0,227,255)

    BeginTextCommandDisplayText('STRING')

    AddTextComponentSubstringWebsite(name)

    EndTextCommandDisplayText(xx, yy)

end
 

function bar(x,y,height)
	lokizaobipissexo9(x,y,0.003,height,161, 161, 161,255)
end

    function meucuuuuuuu(x, y, a9, aa, r, g, b, ab)
        resX, resY = GetActiveScreenResolution()
        local aC, aB = a9 / resX, aa / resY
        local _x, _y = x / resX + aC / 2, y / resY + aB / 2
        lokizaobipissexo9(_x, _y, aC, aB, r, g, b, ab)
    end

    function sdciojdfiojfsdioj(id, nazwa,outline,xx,yy)
        local x,y = GetNuiCursorPosition()
        lokizaobipissexo13(nazwa,outline,0.44,0,xx,yy - 0.01, lokizaobipissexo2 ,1)
        local x,y = GetNuiCursorPosition()
    
        local x_res, y_res = GetActiveScreenResolution()
    
        local xx2 = xx
    
        if id == lokizaobipissexo16 then
    
    
        end
        if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
            return lokizaobipissexo2
        end
        return lokizaobipissexo1
    end

    function sdciojdfiojfsdioj2(id, nazwa,outline,xx,yy)
        local x,y = GetNuiCursorPosition()
        textt(nazwa,outline,0.44,0,xx,yy - 0.01, lokizaobipissexo2 ,1)
        local x,y = GetNuiCursorPosition()
    
        local x_res, y_res = GetActiveScreenResolution()
    
        local xx2 = xx
    
        if id == lokizaobipissexo16 then
    
    
        end
        if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
            return lokizaobipissexo2
        end
        return lokizaobipissexo1
    end




lokizaobipissexo14 = {
    MenuX = 0.5, MenuY = 0.5,
    MenuX2 = 0.5, MenuY2 = 0.5,
    MenuW = 0.5, MenuH = 0.5,  
}

local function c(d, e, f, h, i, j)
    if e then
        SetTextOutline()
    end
    SetTextScale(0.00, f)
    SetTextColour(255, 255, 255, 255)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextJustification(h)
    SetTextEntry('string')
    AddTextComponentString(d)
    lokizaobipissexo10(i, j)
end


local function edsf(d, e, f, h, i, j)
    if e then
        SetTextOutline()
    end
    SetTextScale(0.00, f)
    SetTextColour(255, 255, 255, 255)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextJustification(h)
    SetTextEntry('string')
    AddTextComponentString(d)
    lokizaobipissexo10(i, j)
end


DrawTxt = function(lokizaobipissexo13, x, y, scale, size, colour, cent, font, outline, order)
    if order then
        SetScriptGfxDrawOrder(order)
    else
        SetScriptGfxDrawOrder(1)
    end
    SetTextColour(colour.r, colour.g, colour.b, colour.a)
    if font ~= nil then
        SetTextFont(1)
    else
        SetTextFont(1)
    end
    SetTextCentre()
    SetTextProportional(lokizaobipissexo2)
    SetTextCentre(cent)

    SetTextScale(size, size)
    
    if outline == nil then
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 255)
        SetTextDropshadow()
        SetTextOutline()
    end
    SetTextEntry('WATAFAKMEN')
    AddTextComponentString(lokizaobipissexo13)
    lokizaobipissexo10(x, y)
end

lokizaobipissexo9_U = function(x, y, w, h, r, g, b, a, order)
	if order then
		SetScriptGfxDrawOrder(order)
	else
		SetScriptGfxDrawOrder(1)
	end
	return Citizen.InvokeNative(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
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

Fufufufufu = function(lokizaobipissexo13) --(Text)
	local enabled = lokizaobipissexo2
	local x = 0.0
	local animx = 0.0
	local time = 0
	if enabled then
		Citizen.CreateThread(function() 
			while x < 0.048 do 
				Citizen.Wait(1) 
				x = x + 0.0025
				Citizen.Wait(1)
			end
		end)
		Citizen.CreateThread(function()
			while time < 4000 do 
				Citizen.Wait(0)
				time = time + 22
				animx = animx + 0.00055
				Citizen.Wait(2)
			end
			while time >= 4000 do
				Citizen.Wait(0)
				x = x - 0.0025
				if x <= -0.1 then
					enabled = lokizaobipissexo1 
				end
				Citizen.Wait(1)
			end
		end)
	end
	Citizen.CreateThread(function() 
		while enabled do 
			Citizen.Wait(0)
			
			lokizaobipissexo9_U(x, 0.615, 0.24, 0.034, 10, 10, 10, 255, 6) 
			lokizaobipissexo9_U(x-animx/2, 0.598, 0.24-animx, 0.001, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255, 6) 
			lokizaobipissexo10(lokizaobipissexo13, x-0.048, 0.602, 0.3, 0.3, {r = 255, g = 255, b = 255, a = 255}, lokizaobipissexo1, 4, lokizaobipissexo1, 6)
		end
	end)		
end

Citizen.CreateThread(function() while lokizaobipissexo15 do
    Wait(0)
        if spectar then
			DisableControlAction(0, 32, lokizaobipissexo2) -- W
			DisableControlAction(0, 31, lokizaobipissexo2) -- S
			DisableControlAction(0, 30, lokizaobipissexo2) -- D
			DisableControlAction(0, 34, lokizaobipissexo2) -- A
			DisableControlAction(0, 71, lokizaobipissexo2) -- W
			DisableControlAction(0, 72, lokizaobipissexo2) -- S
			DisableControlAction(0, 63, lokizaobipissexo2) -- D
			DisableControlAction(0, 64, lokizaobipissexo2) -- A
                    local spectate_cam = spectate_cam
                    if not spectate_cam ~= nil then
                spectate_cam = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
            end
            RenderScriptCams(1, 0, 0, 1, 1)
            SetCamActive(spectate_cam, lokizaobipissexo2)
            local coords = GetEntityCoords(GetPlayerPed(lokizaobipissexo5))
            SetCamCoord(spectate_cam, coords.x, coords.y, coords.z + 3)
            local offsetRotX = 0.0
            local offsetRotY = 0.0
            local offsetRotZ = 0.0

            local weapondelay = 0
            while DoesCamExist(spectate_cam) do
                Wait(0)
                if not spectar then
					
                    DestroyCam(spectate_cam, lokizaobipissexo1)
                    ClearTimecycleModifier()
                    RenderScriptCams(lokizaobipissexo1, lokizaobipissexo1, 0, 1, 0)
                    SetFocusEntity(lokizaobipissexo7())
                    break
                end
                local playerPed = GetPlayerPed(lokizaobipissexo5)
                local playerRot = GetEntityRotation(playerPed, 2)

                local rotX = playerRot.x
                local rotY = playerRot.y
                local rotZ = playerRot.z

                offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 8.0)
                offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 8.0)

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
				DisableControlAction(0, 32, lokizaobipissexo2) -- W
				DisableControlAction(0, 31, lokizaobipissexo2) -- S
				DisableControlAction(0, 30, lokizaobipissexo2) -- D
				DisableControlAction(0, 34, lokizaobipissexo2) -- A
				DisableControlAction(0, 71, lokizaobipissexo2) -- W
				DisableControlAction(0, 72, lokizaobipissexo2) -- S
				DisableControlAction(0, 63, lokizaobipissexo2) -- D
				DisableControlAction(0, 64, lokizaobipissexo2) -- A
                local x, y, z = table.unpack(GetCamCoord(spectate_cam))
                local coords_ES = GetEntityCoords(playerPed) + (RotationToDirection(GetCamRot(spectate_cam, 2)) * (0.5 * 1.5))

                SetCamCoord(spectate_cam, coords_ES.x-3.0, coords_ES.y, coords_ES.z + 2.0)
                if not Displayed then
                    SetFocusArea(GetCamCoord(spectate_cam).x, GetCamCoord(spectate_cam).y, GetCamCoord(spectate_cam).z,0.0,0.0,0.0)
                    SetCamRot(spectate_cam, offsetRotX, offsetRotY, offsetRotZ, 2)
                end
            end
        end
    end
end)

Citizen.CreateThread(function() while lokizaobipissexo15 do
    Wait(0)

        if lokizaobipissexo32m then
            if not Displayed then
                local camera = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
                RenderScriptCams(lokizaobipissexo2, lokizaobipissexo2, 700, 1, 1)
                SetCamActive(camera, lokizaobipissexo2)
                SetCamCoord(camera, GetGameplayCamCoord())
                local offsetRotX = GetGameplayCamRot(2).x
                local offsetRotY = GetGameplayCamRot(2).y
                local offsetRotZ = GetGameplayCamRot(2).z
                
                
                while DoesCamExist(camera) do
                    Wait(0)
                    DisableControlAction(0, 1, lokizaobipissexo2)
                    DisableControlAction(0, 2, lokizaobipissexo2)
                    DisableControlAction(0, 142, lokizaobipissexo2)
                    DisableControlAction(0, 18, lokizaobipissexo2)
                    DisableControlAction(0, 322, lokizaobipissexo2)
                    DisableControlAction(0, 106, lokizaobipissexo2)
                    DisableControlAction(0, 24, lokizaobipissexo2)
                    DisableControlAction(0, 25, lokizaobipissexo2)
                    DisableControlAction(0, 1, lokizaobipissexo2)
                    DisableControlAction(0, 2, lokizaobipissexo2)
                    DisableControlAction(0, 24, lokizaobipissexo2)
                    DisableControlAction(0, 69, lokizaobipissexo2)
                    DisableControlAction(0, 142, lokizaobipissexo2)
                    DisableControlAction(0, 257, lokizaobipissexo2)
                    DisableControlAction(0, 25, lokizaobipissexo2)
                    DisableControlAction(0, 17, lokizaobipissexo2)
                    DisableControlAction(0, 16, lokizaobipissexo2)
                    DisableControlAction(0, 200, lokizaobipissexo2)
                    DisableControlAction(0, 85, lokizaobipissexo2)
                    DisableControlAction(0, 99, lokizaobipissexo2)
                    DisableControlAction(0, 92, lokizaobipissexo2)
                    local currentmode = lokizaobipissexo32.modes[lokizaobipissexo32.mode]
                    local camera_rot = GetCamRot(camera, 2)
                    local coords = GetCamCoord(camera)
                    local adjustedRotation = {x = (lokizaobipissexo3.pi / 180) * GetCamRot(camera,0).x, y = (lokizaobipissexo3.pi / 180) * GetCamRot(camera,0).y, z = (lokizaobipissexo3.pi / 180) * GetCamRot(camera,0).z 	}	
                    local direction = {x = - lokizaobipissexo3.sin(adjustedRotation.z) * lokizaobipissexo3.abs(lokizaobipissexo3.cos(adjustedRotation.x)), y = lokizaobipissexo3.cos(adjustedRotation.z) * lokizaobipissexo3.abs(lokizaobipissexo3.cos(adjustedRotation.x)), z = lokizaobipissexo3.sin(adjustedRotation.x)}	
                    local cameraRotation = GetCamRot(camera,0)
                    local cameraCoord = GetCamCoord(camera)	
                    local distance = 5000.0
                    local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance}	
                    local a, b, coords, d, entity = GetShapeTestResult(StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1))
                    SetCamActive(camera, Sliders['player-lokizaobipissexo32-lokizaobipissexo28'].value)
                    
                    -------------------------------------------------------------------------------------------------------------------------------------------------
                    if not lokizaobipissexo32m then
                        DestroyCam(camera, lokizaobipissexo1)
                        ClearTimecycleModifier()
                        RenderScriptCams(lokizaobipissexo1, lokizaobipissexo2, 700, 1, 0)
                        FreezeEntityPosition(lokizaobipissexo7(), lokizaobipissexo1)
                        SetFocusEntity(lokizaobipissexo7())
                        break;
                    end
                    if not Displayed then
                        local playerPed = lokizaobipissexo7()
                        local playerRot = GetEntityRotation(playerPed, 2)

                
                        local rotX = playerRot.x
                        local rotY = playerRot.y
                        local rotZ = playerRot.z
                
                        offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * Sliders['player-lokizaobipissexo32-sensitivity'].value)
                        offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * Sliders['player-lokizaobipissexo32-sensitivity'].value)
                
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
                        local CurrentSpeed = Sliders['player-lokizaobipissexo32-speed'].value

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
                        lokizaobipissexo9(0.5, 0.5, 0.009, 3/resY, 0, 0, 0, 255)
                        lokizaobipissexo9(0.5, 0.5, 3/resX, 0.009*1.8, 0, 0, 0, 255)
                        lokizaobipissexo9(0.5, 0.5, 0.008, 1/resY, 255, 255, 255, 255)
                        lokizaobipissexo9(0.5, 0.5, 1/resX, 0.008*1.8, 255, 255, 255, 255)


                        if currentmode == 'Visualizar' then
                            DisableControlAction(0, 32, lokizaobipissexo2) -- W
                            DisableControlAction(0, 31, lokizaobipissexo2) -- S
                            DisableControlAction(0, 30, lokizaobipissexo2) -- D
                            DisableControlAction(0, 34, lokizaobipissexo2) -- A
                            DisableControlAction(0, 71, lokizaobipissexo2) -- W
                            DisableControlAction(0, 72, lokizaobipissexo2) -- S
                            DisableControlAction(0, 63, lokizaobipissexo2) -- D
                            DisableControlAction(0, 64, lokizaobipissexo2) -- A
                        end

                        if currentmode == 'Ped Spawner' then
                            DisableControlAction(0, 32, lokizaobipissexo2) -- W
                            DisableControlAction(0, 31, lokizaobipissexo2) -- S
                            DisableControlAction(0, 30, lokizaobipissexo2) -- D
                            DisableControlAction(0, 34, lokizaobipissexo2) -- A
                            DisableControlAction(0, 71, lokizaobipissexo2) -- W
                            DisableControlAction(0, 72, lokizaobipissexo2) -- S
                            DisableControlAction(0, 63, lokizaobipissexo2) -- D
                            DisableControlAction(0, 64, lokizaobipissexo2) -- A
                            armapeed = {'weapon_carbinerifle'}
                            local armaped = (armapeed[lokizaobipissexo3.random(#armapeed)])
                            if coords ~= vector3(0, 0, 0) and not DisplayMenu then 		
                                    if IsDisabledControlJustPressed(0, 69) then 
                                        local pedtable = {'csb_ramp_gang','g_m_importexport_01','g_m_y_famca_01',}
                                        local randomPed = (pedtable[lokizaobipissexo3.random(#pedtable)])
                                        if not HasModelLoaded(asdasdasadsasdasdoqedsoansdlokizaobipissexo4lokizaobipissexo4lokizaobipissexo4lokizaobipissexo4lokizaobipissexo4oiasexosexosexodaoid(randomPed)) then 
                                            RequestModel(lokizaobipissexo4(randomPed))
                                        end 										
                                        Wait(5)
                                            local ped = CreatePed(3, lokizaobipissexo4(randomPed),coords.x,coords.y,coords.z - 0.5,lokizaobipissexo2,lokizaobipissexo2)
                                            lokizaobipissexo6(ped, lokizaobipissexo4(armaped), 200, 1, 1)
                                            for k, i in pairs(GetActivePlayers()) do 
                                                TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                            end
                                        end
                                    end
                                end



                        if currentmode == 'Atropelar' then
                            DisableControlAction(0, 32, lokizaobipissexo2) -- W
                            DisableControlAction(0, 31, lokizaobipissexo2) -- S
                            DisableControlAction(0, 30, lokizaobipissexo2) -- D
                            DisableControlAction(0, 34, lokizaobipissexo2) -- A
                            DisableControlAction(0, 71, lokizaobipissexo2) -- W
                            DisableControlAction(0, 72, lokizaobipissexo2) -- S
                            DisableControlAction(0, 63, lokizaobipissexo2) -- D
                            DisableControlAction(0, 64, lokizaobipissexo2) -- A
                                        if IsDisabledControlJustPressed(0, 24) then
                                                local wa = lokizaobipissexo4('submersible')
                                        if IsDisabledControlJustPressed(0, 69) then 
                                            if coords ~= vector3(0, 0, 0) and not drawmenu then
                                                local hash = lokizaobipissexo4('submersible')
                                                if not HasModelLoaded(hash) then 
                                                    RequestModel(hash)
                                                end
                                                local veh = CreateVehicle('submersible', coords, 1, 1, 1)
                                                SetVehicleEngineOn(veh, lokizaobipissexo2, lokizaobipissexo2, lokizaobipissexo2)
                                                SetEntityRotation(veh, GetCamRot(camera, 2), 0.0, GetCamRot(camera, 2), 0.0, lokizaobipissexo2)
                                                SetVehicleForwardSpeed(veh, 50.0)
                                            else
                                        end
                                    end
                                end
                            end
                            if currentmode == 'Explodir' then
                                DisableControlAction(0, 32, lokizaobipissexo2) -- W
                                DisableControlAction(0, 31, lokizaobipissexo2) -- S
                                DisableControlAction(0, 30, lokizaobipissexo2) -- D
                                DisableControlAction(0, 34, lokizaobipissexo2) -- A
                                DisableControlAction(0, 71, lokizaobipissexo2) -- W
                                DisableControlAction(0, 72, lokizaobipissexo2) -- S
                                DisableControlAction(0, 63, lokizaobipissexo2) -- D
                                DisableControlAction(0, 64, lokizaobipissexo2) -- A
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu  then 
                                    if IsDisabledControlJustPressed(0, 69) then
                                    AddExplosion(coords, 1, 1000.0, lokizaobipissexo2, lokizaobipissexo1, lokizaobipissexo1)
                                end
                            end
                        end

                        if currentmode == 'Animal Spawn' then
                            DisableControlAction(0, 32, lokizaobipissexo2) -- W
                            DisableControlAction(0, 31, lokizaobipissexo2) -- S
                            DisableControlAction(0, 30, lokizaobipissexo2) -- D
                            DisableControlAction(0, 34, lokizaobipissexo2) -- A
                            DisableControlAction(0, 71, lokizaobipissexo2) -- W
                            DisableControlAction(0, 72, lokizaobipissexo2) -- S
                            DisableControlAction(0, 63, lokizaobipissexo2) -- D
                            DisableControlAction(0, 64, lokizaobipissexo2) -- A
                            if coords ~= vector3(0, 0, 0) and not DisplayMenu then 		
                                    if IsDisabledControlJustPressed(0, 69) then 
                                        local pedtable = {'a_c_deer','a_c_pug','a_c_dolphin','a_c_killerwhal','a_c_humpback'}
                                        local randomPed = (pedtable[lokizaobipissexo3.random(#pedtable)])
                                        if not HasModelLoaded(lokizaobipissexo4(randomPed)) then 
                                            RequestModel(lokizaobipissexo4(randomPed))
                                        end 										
                                        Wait(5)
                                            local ped = CreatePed(3, lokizaobipissexo4(randomPed),coords.x,coords.y,coords.z - 0.5,lokizaobipissexo2,lokizaobipissexo2)
                                            for k, i in pairs(GetActivePlayers()) do 
                                                TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                            end
                                        end
                                    end
                                end

                        
                        if coords ~= vector3(0, 0, 0) then 
                            lokizaobipissexo9(0.5, 0.0796, 0.14, 0.08, 10, 10, 10, 250)
                            SetTextColour(lokizaobipissexo22.r,lokizaobipissexo22.g,lokizaobipissexo22.b,255)
                            local abc = getWidth('~s~[~w~Freecam Mode~s~]  ~w~'..currentmode..'',4,0.5)
                            local rX, rY = GetActiveScreenResolution()
                            SetTextColour(lokizaobipissexo22.r,lokizaobipissexo22.g,lokizaobipissexo22.b,255)
                            lokizaobipissexo12('~w~~s~A~s~v~s~e~s~l~s~i~s~n~s~o ~n~~w~[~y~Freecam~w~] ~n~ ~w~Freecam Mode: ~s~'..currentmode..'',0.5,0.0568,0.36,10,lokizaobipissexo2,lokizaobipissexo2,255,255,255)
                            else
                            lokizaobipissexo9(0.5, 0.0796, 0.14, 0.08, 10, 10, 10, 250)
                            local abc =
                                getWidth('~w~~s~A~s~v~s~e~s~l~s~i~s~n~s~o ~n~~w~[~y~Freecam~w~] ~n~ ~w~Freecam Mode: ~s~'..currentmode..'',4,0.5)
                            local rX, rY = GetActiveScreenResolution()
                            SetTextColour(lokizaobipissexo22.r,lokizaobipissexo22.g,lokizaobipissexo22.b,255)
                            lokizaobipissexo12('~w~~s~A~s~v~s~e~s~l~s~i~s~n~s~o ~n~~w~[~y~Freecam~w~] ~n~ ~w~Freecam Mode: ~s~'..currentmode..'',0.5,0.0568,0.36,10,lokizaobipissexo2,lokizaobipissexo2,255,255,255)
                        end
                    
                        

                        if IsDisabledControlJustPressed(1, 14) then
                            lokizaobipissexo32.mode = lokizaobipissexo32.mode + 1
                            if lokizaobipissexo32.mode > #lokizaobipissexo32.modes then
                                lokizaobipissexo32.mode = 1
                            end
                        end

                        if IsDisabledControlJustPressed(1, 15) then
                            lokizaobipissexo32.mode = lokizaobipissexo32.mode - 1
                            if lokizaobipissexo32.mode < 1 then
                                lokizaobipissexo32.mode = #lokizaobipissexo32.modes
                            end
                        end


                        SetFocusPosAndVel(GetCamCoord(camera).x, GetCamCoord(camera).y, GetCamCoord(camera).z, 0.0, 0.0, 0.0)
                        SetCamRot(camera, offsetRotX, offsetRotY, offsetRotZ, 2)	
                    end			
                end	
            end
        end
    end
end)


local function text4(name,outline,size,Justification,xx,yy, font)
    if outline then
        SetTextOutline()
    end
    if font ~= nil and tonumber(font) ~= nil then
    SetTextFont(1)
    else
    SetTextFont(1)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0,227,255)
    BeginTextCommandDisplayText('STRING')
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
            Wait(0)
            if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then return lokizaobipissexo1 end
        end

        return lokizaobipissexo2
    end
	
    local function text2(name,outline,size,Justification,xx,yy) 
        if outline then SetTextOutline() end SetTextScale(0.00,size) SetTextColour(255, 255, 255, 255) SetTextFont(1) SetTextProportional(0) SetTextJustification(Justification) SetTextEntry('string') AddTextComponentString(name) lokizaobipissexo10(xx,yy) end
        
        local function textt2(name,outline,size,Justification,xx,yy) 
            if outline then SetTextOutline() end SetTextScale(0.00,size) SetTextColour(lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255) SetTextFont(1) SetTextProportional(0) SetTextJustification(Justification) SetTextEntry('string') AddTextComponentString(name) lokizaobipissexo10(xx,yy) end
            
    

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
                BeginTextCommandDisplayText('STRING')
                AddTextComponentSubstringWebsite(m)
                EndTextCommandDisplayText(x, y)
                return EndTextCommandGetWidth(lokizaobipissexo2)
            end
            
            lokizaobipissexo8 = function()
                local c_x, c_y = GetNuiCursorPosition() 
                local widht, height = GetActiveScreenResolution()
                c_x = c_x / widht
                c_y = c_y / height 
                local res_w, res_h = lokizaobipissexo14.MenuW-0.5, lokizaobipissexo14.MenuH-0.5
  
                if (c_x >= lokizaobipissexo14.MenuX - 0.208 and c_y >= lokizaobipissexo14.MenuY - 0.248 and c_x <= lokizaobipissexo14.MenuX + 0.148+res_w and c_y < lokizaobipissexo14.MenuY - 0.23+res_h) and IsDisabledControlJustPressed(0, 24) then 
                    _x = lokizaobipissexo14.MenuX - c_x
                    _y = lokizaobipissexo14.MenuY - c_y
                    dragging_allowed = lokizaobipissexo2
                elseif IsDisabledControlReleased( 0, 24) then
                    dragging_allowed = lokizaobipissexo1
                end
        
                if dragging_allowed then
                    lokizaobipissexo14.MenuX = c_x + _x
                    lokizaobipissexo14.MenuY = c_y + _y
                end
            end

      
            function getmousepos()
                local x, y = GetNuiCursorPosition()
                local w, h = GetActiveScreenResolution()
                x = x / w ; y = y / h 
                return x, y
            end

            function mouse(x, y, w, h)
                local X, Y = getmousepos()
                local a, b = w / 2, h / 2
                if (X >= x - a and X <= x + a and Y >= y - b and Y <= y + b) then 
                    return lokizaobipissexo2 
                end
            end
                        

            function Surf_Botao(lokizaobipissexo13, x, y) 
                local drag_X = lokizaobipissexo14.MenuX-0.5 
                local drag_Y = lokizaobipissexo14.MenuY-0.5 
                local dW = lokizaobipissexo14.MenuW-0.5 
                local dH = lokizaobipissexo14.MenuH-0.5
                if x == 0.51 then 
                    x = x + dW/2
                end
                x = x + drag_X ; y = y + drag_Y
                local resX, resY = GetActiveScreenResolution()
                local width = getWidth(lokizaobipissexo13, 4, 0.27)
                drawText(lokizaobipissexo13, x-0.008, y+0.001, 0.321, 0, lokizaobipissexo1)
                
            
                
                if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
                    return lokizaobipissexo2
                end
            end

            function Carmenu_Surf_Botao(lokizaobipissexo13, x, y) 
                local drag_X = lokizaobipissexo14.MenuX-0.5 
                local drag_Y = lokizaobipissexo14.MenuY-0.5 
                local dW = lokizaobipissexo14.MenuW-0.5 
                local dH = lokizaobipissexo14.MenuH-0.5
                if x == 0.51 then 
                    x = x + dW/2
                end
                x = x + drag_X ; y = y + drag_Y
                local resX, resY = GetActiveScreenResolution()
                local width = getWidth(lokizaobipissexo13, 4, 0.27)
                drawText(lokizaobipissexo13, x-0.008, y+0.001, 0.18, 0, lokizaobipissexo1)
                
            
                
                if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
                    return lokizaobipissexo2
                end
            end

            function Players_Surf_Botao(lokizaobipissexo13, x, y) 
                local drag_X = lokizaobipissexo14.MenuX-0.5 
                local drag_Y = lokizaobipissexo14.MenuY-0.5 
                local dW = lokizaobipissexo14.MenuW-0.5 
                local dH = lokizaobipissexo14.MenuH-0.5
                if x == 0.51 then 
                    x = x + dW/2
                end
                x = x + drag_X ; y = y + drag_Y
                local resX, resY = GetActiveScreenResolution()
                local width = getWidth(lokizaobipissexo13, 4, 0.27)
                drawText(lokizaobipissexo13, x-0.008, y+0.001, 0.321, 0, lokizaobipissexo1)
                
            
                
                if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
                    return lokizaobipissexo2
                end
            end


            function asddadasdad_DrawText(lokizaobipissexo13, x, y, _outl, size, font, centre)
                SetTextFont(1)
                if _outl then
                    SetTextOutline(lokizaobipissexo2)
                end
                if tonumber(font) ~= nil then
                    SetTextFont(1)
                end
                SetTextCentre(centre)
                SetTextScale(100.0, size or 0.23)
                BeginTextCommandDisplayText('STRING')
                AddTextComponentSubstringWebsite(lokizaobipissexo13)
                EndTextCommandDisplayText(x, y)
            end

            function asdkjnjidasijasdihujdasiujcsadslider(slider, x, y, dum)
                local drag_X = lokizaobipissexo14.MenuX-0.5
                local drag_Y = lokizaobipissexo14.MenuY-0.5
                local drag_X2 = lokizaobipissexo14.MenuX2-0.5
                local drag_Y2 = lokizaobipissexo14.MenuY2-0.5
                local dW, dH = lokizaobipissexo14.MenuW-0.5, lokizaobipissexo14.MenuH-0.5
                if x == 0.51 then 
                    x = x + dW/2
                end
                x = x + drag_X ; y = y + drag_Y
                x = x + 0.0515
                local wslid = 0.115+dW/2
                local resX, resY = GetActiveScreenResolution()
                lokizaobipissexo9((dW/2)/2+x, y, wslid+0.002, 7/resY, 60, 60, 60, 255)
                lokizaobipissexo9((dW/2)/2+x, y, wslid+0.001, 5/resY, 22, 22, 22, 255)
                lokizaobipissexo9((dW/2)/2+x + (slider.value/(slider.max/wslid)/2) - wslid/2, y, (slider.value/(slider.max/wslid)), 3/resY, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255)
                SetTextOutline()
                drawText(slider.value, (dW/2)/2+x + (slider.value/(slider.max/wslid)) - wslid/2, y+0.002, 0.21, 4, lokizaobipissexo2)
                local CX, CY = getmousepos()
                local sxl, sxr = x - (0.5-0.440), x + ((0.557+(dW/2))-0.5)
                if (mouse((dW/2)/2+x, y, wslid+0.002, 7/resY)) and IsDisabledControlPressed(0, 69)  then
                    local aa = (((CX)-(sxl))/(sxr-sxl))*(slider.max-slider.min)-slider.min
                    if dum then 
                        slider.value = tonumber(string.format('%.'..dum..'f', aa))
                    else
                        slider.value = lokizaobipissexo3.floor(aa)
                    end
                end
                if slider.value > slider.max then
                    slider.value = slider.max
                elseif slider.value < slider.min then
                    slider.value = slider.min
                end
            end

        function asddadasdad_Button(name, outline, xx, yy)
            local x,y = GetNuiCursorPosition()

            local x_res, y_res = GetActiveScreenResolution()
        

        
            if( (x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and (y / y_res) - 0.015 <= yy) then 
                textt2(name,outline,0.32,0,xx,yy - 0.014)
                lokizaobipissexo9(xx, yy, 0.07, 0.0292, 35, 35, 35, 255)
                if IsDisabledControlJustReleased(0, 92) then
        
                    return lokizaobipissexo2
        
                end
        
            else
        
                text2(name,outline,0.34,0,xx,yy - 0.014)
                lokizaobipissexo9(xx, yy, 0.07, 0.0292, 35, 35, 35, 255)
                return lokizaobipissexo1
        
            end
        
        end       
function asdkjnjidasijasdihujdasiujcsadTPway()
    local WaypointHandle = GetFirstBlipInfoId(8)
   
    if DoesBlipExist(WaypointHandle) then
        local waypointCoords = GetBlipInfoIdCoord(WaypointHandle)
      for height = 1, 1000 do
        SetPedCoordsKeepVehicle(lokizaobipissexo7(), waypointCoords['x'], waypointCoords['y'], height + 0.0)

          local foundGround, zPos = GetGroundZFor_3dCoord(waypointCoords['x'], waypointCoords['y'], height + 0.0)

          if foundGround then
            Fufufufufu('Teleportado!')
            SetPedCoordsKeepVehicle(lokizaobipissexo7(), waypointCoords['x'], waypointCoords['y'], height + 0.0)

              break
          end

          Wait(0)
      end
  else
    Fufufufufu('Marque Um Waypoint Primeiro!')
  end
end

function GetScreenSize()
    local x, y = GetActiveScreenResolution()
    return {x = x, y = y}
end


local function aE(m, x, y, aF, aG, aH, aI)
    SetTextScale(0.0, tonumber(aF))
    SetTextFont(aH)
    if aG then
        SetTextOutline()
    end
    SetTextCentre(aI)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(m)
    EndTextCommandDisplayText(x, y)
    return EndTextCommandGetWidth(lokizaobipissexo2)
end

function hsvToRgb(h, s, v, a)
    local r, g, b
    local i = lokizaobipissexo3.floor(h * 6);
    local f = h * 6 - i;
    local p = v * (1 - s);
    local q = v * (1 - f * s);
    local t = v * (1 - (1 - f) * s);
    i = i % 6
    if i == 0 then 
        r, g, b = v, t, p
    elseif i == 1 then 
        r, g, b = q, v, p
    elseif i == 2 then 
        r, g, b = p, v, t
    elseif i == 3 then 
        r, g, b = p, q, v
    elseif i == 4 then 
        r, g, b = t, p, v
    elseif i == 5 then 
        r, g, b = v, p, q
    end
    return lokizaobipissexo3.floor(r * 255 + 0.5), lokizaobipissexo3.floor(g * 255 + 0.5), lokizaobipissexo3.floor(b * 255 + 0.5), lokizaobipissexo3.floor(a * 255)
end

ApplyForce = function(entity, direction)
    ApplyForceToEntity(entity, 3, direction, 0, 0, 0, lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo2, lokizaobipissexo2, lokizaobipissexo1, lokizaobipissexo2)
end

Oscillate = function(entity, position, angleFreq, dampRatio)
    local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
    local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
    local targetPos = SubVectors(pos1, pos2)
    ApplyForce(entity, targetPos)
end

function Rectangle(x, y, a9, aa, r, g, b, ab)
    local ac, ad = GetActiveScreenResolution()
    local ae, af = 1 / ac, 1 / ad
    local ag, ah = ae * x, af * y
    local ai, aj = ae * a9, af * aa
    lokizaobipissexo9(ag + ai / 2, ah + aj / 2, ai, aj, r, g, b, ab)
end

function Gradient(x, y, a9, aa, aq, r, g, b, ab, ar, as, at, au)
    if aq then
        for l = 0, a9, 2 do
            if l > a9 then
                break
            end
            local ab = lokizaobipissexo3.floor((au - ab) / a9 * l + ab)
            Rectangle(x + l, y, l < a9 - 1 and 2 or 1, aa, ar, as, at, lokizaobipissexo3.abs(ab))
        end
    else
        for l = 0, aa, 2 do
            if l > aa then
                break
            end
            local ab = lokizaobipissexo3.floor((au - ab) / aa * l + ab)
            Rectangle(x, y + l, a9, l < aa - 1 and 2 or 1, ar, as, at, lokizaobipissexo3.abs(ab))
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
function text_szpachlan_szmata(
    nazwa_szpachlan_szmata,
    outline_szpachlan_szmata,
    size_szpachlan_szmata,
    Justification_szpachlan_szmata,
    x,
    y,
    czcionka,
    centre)
    if outline_szpachlan_szmata then
        SetTextOutline()
    end
    if czcionka ~= nil and tonumber(czcionka) ~= nil then
        SetTextFont(czcionka)
    else
        SetTextFont(1)
    end
    if centre then
        SetTextCentre(lokizaobipissexo2)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size_szpachlan_szmata)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(nazwa_szpachlan_szmata)
    EndTextCommandDisplayText(x, y)
end



function ColorPicker(R, aJ, aK)
    colorpicker = lokizaobipissexo2
    open = lokizaobipissexo1
    local R = {
        HSV = {H = 0, S = 0, V = 0},
        RGB = {R = R, G = aJ, B = aK},
        Held = {Hue = lokizaobipissexo1, Value = lokizaobipissexo1},
        Opened = lokizaobipissexo1,
        Turned = lokizaobipissexo2
    }
    while R.Turned do
        DisableControlAction(0, 1, lokizaobipissexo2)
        DisableControlAction(0, 2, lokizaobipissexo2)
        DisableControlAction(0, 142, lokizaobipissexo2)
        DisableControlAction(0, 322, lokizaobipissexo2)
        DisableControlAction(0, 106, lokizaobipissexo2)
        DisableControlAction(0, 25, lokizaobipissexo2)
        DisableControlAction(0, 24, lokizaobipissexo2)
        DisableControlAction(0, 257, lokizaobipissexo2)
        DisableControlAction(0, 32, lokizaobipissexo2)
        DisableControlAction(0, 31, lokizaobipissexo2)
        DisableControlAction(0, 30, lokizaobipissexo2)
        DisableControlAction(0, 34, lokizaobipissexo2)
        DisableControlAction(0, 23, lokizaobipissexo2)
        DisableControlAction(0, 22, lokizaobipissexo2)
        DisableControlAction(0, 16, lokizaobipissexo2)
        DisableControlAction(0, 17, lokizaobipissexo2)
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        Rectangle(0, 0, a9, aa, 24, 24, 24, 200)
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        Rectangle(aL - 2, aM - 2, 204, 208, 18, 18, 18, 255)
        Rectangle(aL - 1, aM - 1, 202, 206, 42, 42, 42, 255)
        Rectangle(aL, aM, 200, 204, 24, 24, 24, 255)
        Rectangle(aL, aM, 200, 2, R.RGB.R, R.RGB.G, R.RGB.B, 255)
        local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
        local r, g, b, ab = hsvToRgb(R.HSV.H, 1, 1, 1)
        Rectangle(aL + 10, aM + 10, 160, 180, r, g, b, 255)
        Gradient(aL + 10, aM + 10, 160, 180, lokizaobipissexo2, r, g, b, 255, 255, 255, 255, 0)
        Gradient(aL + 10, aM + 10, 160, 180, lokizaobipissexo1, 255, 255, 255, 0, 0, 0, 0, 255)
        HSVGradient(aL + 20 + 160, aM + 10, 10, 180, lokizaobipissexo1, 0, 1, 1, 1, 1, 1)
        local x, y = GetNuiCursorPosition()
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        if IsControlJustPressed(0, 18) then
            if x > aL + 20 and x < aL + 20 + 160 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Value = lokizaobipissexo2
            end
            if x > aL + 20 + 160 and x < aL + 20 + 160 + 10 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Hue = lokizaobipissexo2
            end
            if x < aL or x > aL + 200 or y < aM or y > aM + 200 then
                R.Opened = lokizaobipissexo1
            end
        end
        if IsDisabledControlPressed(0, 69) then
            if R.Held.Value then
                local aN = x - aL - 10
                local aO = y - aM - 60
                R.HSV.S = lokizaobipissexo3.clamp(aN / 180, 0, 1)
                R.HSV.V = lokizaobipissexo3.clamp(1 - aO / 160, 0, 1)
            end
            if R.Held.Hue then
                local aP = y - aM + -19
                R.HSV.H = lokizaobipissexo3.clamp(aP / 180, 0, 1)
            end
            local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
            R.RGB.R, R.RGB.G, R.RGB.B = r, g, b
        else
            if R.Held.Value then
                R.Opened = lokizaobipissexo1
            end
            R.Held.Value = lokizaobipissexo1
            R.Held.Hue = lokizaobipissexo1
        end
        local x, y = GetNuiCursorPosition() local x_ez, y_ez = GetActiveScreenResolution() local cursorX, cursorY = x / x_ez, y / y_ez
        lokizaobipissexo12('^', cursorX, cursorY, 0.560, 0, lokizaobipissexo2, 255, 255, 255)
        if IsDisabledControlJustPressed(0, 191) then
            open = lokizaobipissexo2
            colorpicker = lokizaobipissexo1
            R.Turned = lokizaobipissexo1
            return R.RGB.R, R.RGB.G, R.RGB.B
        end
        Wait(0)
    end
end

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(
        function()
            local iter, id = initFunc()
            if not id or id == 0 then
                disposeFunc(iter)
                return
            end
            local enum = {handle = iter, destructor = disposeFunc}
            setmetatable(enum, entityEnumerator)
            local next = lokizaobipissexo2
            repeat
                coroutine.yield(id)
                next, id = moveFunc(iter)
            until not next
            enum.destructor, enum.handle = nil, nil
            disposeFunc(iter)
        end
    )
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

---------FUNCTIONS----------

function kontrols(Disable)
    DisableControlAction(0, 1, lokizaobipissexo2)
    DisableControlAction(0, 2, lokizaobipissexo2)
    DisableControlAction(0, 142, lokizaobipissexo2)
    DisableControlAction(0, 322, lokizaobipissexo2)
    DisableControlAction(0, 106, lokizaobipissexo2)
    DisableControlAction(0, 25, lokizaobipissexo2)
    DisableControlAction(0, 24, lokizaobipissexo2)
    DisableControlAction(0, 257, lokizaobipissexo2)
    DisableControlAction(0, 23, lokizaobipissexo2)
    DisableControlAction(0, 16, lokizaobipissexo2)
    DisableControlAction(0, 17, lokizaobipissexo2)

end
   
--[[quit to game
RestartGame()
ForceSocialClubUpdate()]]

function asdkjnjidasijasdihujdasiujcsadlokizaobipissexo21()
    if GetEntityHealth(lokizaobipissexo7()) < 200 then
    SetEntityHealth(lokizaobipissexo7(), 200)
    end
end

function asdkjnjidasijasdihujdasiujcsadTPveh()
    local vehicle = GetClosestVehicle(GetEntityCoords(lokizaobipissexo7()), 8000.0, 0, 70)
    local vehnamenotif = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(lokizaobipissexo7())))
    if not IsPedInAnyVehicle(lokizaobipissexo7()) then
        Fufufufufu('Teleportado! ')
    end
    if vehicle ~= nil then
        SetPedIntoVehicle(lokizaobipissexo7(), vehicle, -1)
    end
    if IsPedInAnyVehicle(lokizaobipissexo7()) then
    end
end

function asdkjnjidasijasdihujdasiujcsadCurar()
    if GetEntityHealth(lokizaobipissexo7()) < 200 then
        SetEntityHealth(lokizaobipissexo7(), 200)
    end
    if GetEntityHealth(lokizaobipissexo7()) < 400 then
        SetEntityHealth(lokizaobipissexo7(), 400)
    end
    if GetEntityHealth(lokizaobipissexo7()) ~= 0 then 
    end
end

function asdkjnjidasijasdihujdasiujcsadCurar2()
    SetEntityHealth(lokizaobipissexo7(), lokizaobipissexopegavida(lokizaobipissexo7()) )
    --[[
    if GetEntityHealth(lokizaobipissexo7()) < 200 then
        SetEntityHealth(lokizaobipissexo7(), 200)
    end
    if GetEntityHealth(lokizaobipissexo7()) < 400 then
        SetEntityHealth(lokizaobipissexo7(), 400)
    end
    if GetEntityHealth(lokizaobipissexo7()) ~= 0 then 
    end
    --]]
end

function asdkjnjidasijasdihujdasiujcsadSuicidio()
    SetEntityHealth(lokizaobipissexo7(), 0)
end

function bindtext(
    nazwa_szpachlan_szmata,
    outline_szpachlan_szmata,
    size_szpachlan_szmata,
    Justification_szpachlan_szmata,
    x,
    y,
    czcionka,
    centre)
    if outline_szpachlan_szmata then
        SetTextOutline()
    end
    if czcionka ~= nil and tonumber(czcionka) ~= nil then
        SetTextFont(czcionka)
    else
        SetTextFont(1)
    end
    if centre then
        SetTextCentre(lokizaobipissexo2)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size_szpachlan_szmata)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(nazwa_szpachlan_szmata)
    EndTextCommandDisplayText(x, y)
end


function getmousepos()
    local x, y = GetNuiCursorPosition()
    local w, h = GetActiveScreenResolution()
    x = x / w ; y = y / h 
    return x, y
end
function TPveh()
    local vehicle = GetClosestVehicle(GetEntityCoords(lokizaobipissexo7()), 100.0, 0, 70)
    local vehnamenotif = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(lokizaobipissexo7())))
    if not IsPedInAnyVehicle(lokizaobipissexo7()) then
    end
    if vehicle ~= nil then
        SetPedIntoVehicle(lokizaobipissexo7(), vehicle, -1)

    end
end

function colorpicker_botao(x, y,r,g,b)
    drag_x = lokizaobipissexo14.MenuX-0.5
    drag_y = lokizaobipissexo14.MenuY-0.5
    local dW, dH = lokizaobipissexo14.MenuW-0.5, lokizaobipissexo14.MenuH-0.5
    local drag_x, drag_y = lokizaobipissexo14.MenuX-0.5, lokizaobipissexo14.MenuY-0.5
    if x == 0.51 then 
        x = x + dW
        else
            x = x + dW/2
    end
    x = x + drag_x ; y = y + drag_y
    x = x + 0.111
    local resX, resY = GetActiveScreenResolution()
    lokizaobipissexo9(x-0.004, y, 0.0076, 0.0059, r, g, b, 255)
    if mouse(x-0.004, y, 0.0076, 0.0059) and clicked() then 
        return lokizaobipissexo2 
    end
end


function getWidth(str, font, scale)
    BeginTextCommandWidth('STRING')
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)
    return length
end

   
function drawText(lokizaobipissexo13, x, y, scale, font, center)
    SetTextScale(50.0, scale)
    SetTextFont(1)
    SetTextCentre(center)

    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(lokizaobipissexo13)
    EndTextCommandDisplayText(x, y-0.011)
end

function lokizaobipissexo12(lokizaobipissexo13, x, y, scale, font, outline, center, r, g, b)
    SetTextScale(0.0, scale)
    SetTextFont(10)
    if outline then
    SetTextOutline(outline)
    else end
    SetTextCentre(center)
    SetTextColour(lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255)
    SetTextFont(1)
    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(lokizaobipissexo13)
    EndTextCommandDisplayText(x, y-0.011)
end
   

function clicked()
    return IsDisabledControlJustPressed(0, 24)
end

function bindzinha()
    local clicked = nil
    local lokizaobipissexo13 = nil
    local binded = lokizaobipissexo1
    local alpha = 0
        while not binded do
            Wait(0)
    
            if alpha < 255 then
                alpha = alpha + 3
            end

            lokizaobipissexo9(0.5, 0.51, 0.151, 0.037, 0, 0, 0, alpha) 
            lokizaobipissexo9(0.5, 0.51, 0.150, 0.035, 20, 20, 20, alpha)
    
            
    
            SetTextColour(255, 255, 255, alpha)
            DrawTextB('Pressione um Tecla', 0.465, 0.495, lokizaobipissexo2, 0.4, 4, lokizaobipissexo1)
    
            for k, v in pairs(Keys) do
                if IsDisabledControlPressed(0, v) then
                    clicked = v
                    lokizaobipissexo13 = k
                   Wait(100)
                end
            end
            if clicked ~= nil then
                binded = lokizaobipissexo2
                return clicked, lokizaobipissexo13
            end
        end
    end

function asdkjnjidasijasdihujdasiujcsadCheckBox(name,xx,yy,yy2,bool)
    local x,y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    local xx2 = xx-0.012
    local yy2 = yy+0.0020
    drawText(name, xx2 + 0.006, yy2 + 0.0025, 0.321, 0, lokizaobipissexo1)

    if bool then
        lokizaobipissexo9(xx2,yy2,0.007, 0.006*1.8 + 0.0018, 1, 1, 1, 255)
        lokizaobipissexo9(xx2,yy2,0.006, 0.006*1.8, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255) 
    else
        lokizaobipissexo9(xx2,yy2,0.007, 0.006*1.8 + 0.0018, 1, 1, 1, 255)
        lokizaobipissexo9(xx2,yy2,0.006, 0.006*1.8, 66, 66, 66, 255) 
    end
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
        bool = not bool
       return lokizaobipissexo2
end
    return lokizaobipissexo1
end
 


Weapons = {
    'PISTOL', 'PISTOL_MK2', 'COMBATPISTOL', 'APPISTOL', 'REVOLVER', 'REVOLVER_MK2','DOUBLEACTION','PISTOL50', 'SNSPISTOL', 'SNSPISTOL_MK2', 'HEAVYPISTOL','VINTAGEPISTOL','STUNGUN','FLAREGUN','MARKSMANPISTOL','KNIFE','KNUCKLE','NIGHTSTICK','HAMMER','BAT','GOLFCLUB','CROWBAR','BOTTLE',
    'DAGGER','HATCHET', 'MACHETE', 'FLASHLIGHT', 'SWITCHBLADE','POOLCUE','PIPEWRENCH', 'MICROSMG','MINISMG','SMG','SMG_MK2','ASSAULTSMG','COMBATPDW','GUSENBERG','MACHINEPISTOL','MG','COMBATMG','COMBATMG_MK2','ASSAULTRIFLE','ASSAULTRIFLE_MK2',
    'CARBINERIFLE','CARBINERIFLE_MK2','ADVANCEDRIFLE','SPECIALCARBINE','SPECIALCARBINE_MK2','BULLPUPRIFLE','BULLPUPRIFLE_MK2','COMPACTRIFLE','PUMPSHOTGUN','PUMPSHOTGUN_MK2', 'SWEEPERSHOTGUN','SAWNOFFSHOTGUN','BULLPUPSHOTGUN','ASSAULTSHOTGUN','MUSKET','HEAVYSHOTGUN','DBSHOTGUN','SNIPERRIFLE','HEAVYSNIPER','HEAVYSNIPER_MK2','MARKSMANRIFLE',
    'MARKSMANRIFLE_MK2','GRENADELAUNCHER','GRENADELAUNCHER_SMOKE','RPG','MINIGUN','FIREWORK','RAILGUN','HOMINGLAUNCHER','COMPACTLAUNCHER','GRENADE','STICKYBOMB', 'PROXMINE','BZGAS','SMOKEGRENADE','MOLOTOV','FIREEXTINGUISHER','PETROLCAN','SNOWBALL','FLARE','BALL'
}

local v = {
    colors = {
        ['Vehicle_Color_r'] = {max = 255, min = 0, value = 255}, ['Vehicle_Color_g'] = {max = 255, min = 0, value = 255}, ['Vehicle_Color_b'] = {max = 255, min = 0, value = 255},
    }
}
local h = {
ThisIsSliders = {
    [2] = {max = 1.0, min = 0.0, value = 0.4},
    [3] = {max = 100, min = 0, value = 100},
    [4] = {max = 50.0, min = 0, value = 20.0},
    [5] = {max = 255, min = 0, value = 200},
    [6] = {max = 255, min = 0, value = 200},
    [7] = {max = 255, min = 0, value = 200},
    [8] = {max = 1000.0, min = 0, value = 5000.0},
    [9] = {max = 100.0, min = 0, value = 3.0},
    [10] = {max = 1000.0, min = 0, value = 1000.0},
    [11] = {max = 100.0, min = 0, value = 2.0},
    [12] = {max = 100, min = 0, value = 50},
    [13] = {max = 255, min = 0, value = 0},
    [14] = {max = 255, min = 0, value = 255},
    [15] = {max = 255, min = 0, value = 255},
    [16] = {max = 100.0, min = 0.0, value = 50.0},
    [17] = {max = 2.0, min = 0.0, value = 0.5},
    [18] = {max = 15.0, min = 0.0, value = 8.0},
    [19] = {max = 0.5, min = 0.0, value = 0.05},
    [20] = {max = 1.5, min = 0.0, value = 0.1},
    [21] = {max = 200, min = 0, value = 90},
    [22] = {max = 1.00, min = 0, value = 0.22},
    [23] = {value = 0.0019, min = 0, max = 0.1},
    [24] = {value = 0.0011, min = 0, max = 0.02},
}
}

stasd = {
    ['Scroll'] = {static = 0.0, static2 = 0.0, static3 = 0.0},
    ['Aimlock'] = {static = 0.0, static2 = 0.0},
}


function enumerate_vehicles()
    return coroutine.wrap(function()
      local iter, id =  FindFirstVehicle()
      if not id or id == 0 then
        EndFindVehicle(iter)
        return
      end
      
      local enum = {handle = iter, destructor = EndFindVehicle}
      setmetatable(enum, entityEnumerator)
      
      local next = lokizaobipissexo2
      repeat
        coroutine.yield(id)
        next, id = FindNextVehicle(iter)
      until not next
      
      enum.destructor, enum.handle = nil, nil
      EndFindVehicle(iter)
    end)
  end
  
  function ptutu (lokizaobipissexo13, font, centered, x, y, scale, r, g, b, a)
	local resx, resy = GetActiveScreenResolution()
	SetTextFont(1)
	SetTextScale(scale, scale)  
	SetTextCentre(centered)  
	SetTextColour(r, g, b, a) 
	BeginTextCommandDisplayText('STRING')  
	AddTextComponentSubstringPlayerName(lokizaobipissexo13)  
	EndTextCommandDisplayText(x / resx, y / resy)
end
  
function button(name,xx,yy,r,g,b)
	local x,y = GetNuiCursorPosition()
	ptutu(name,4,0,xx,yy + 8, 0.3,255, 255,255,255)

	if hovered(xx,yy + 8,100,18) then 
	
		if IsDisabledControlPressed(0, 92) then
			ptutu(name,4,0,xx,yy + 8, 0.3,r, g,b,255)
		end
		
		if IsDisabledControlJustPressed(0, 92) then
			return lokizaobipissexo2
		end
		
	else
		return lokizaobipissexo1
	end
end

function asdkjnjidasijasdihujdasiujcsadKickFlip_Veh()
    if IsPedInAnyVehicle(lokizaobipissexo7(), 0) then 
    requestControlOnce(veh)
    local veh = GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo1)        
 ApplyForceToEntity(veh, 1, 0.0, 0.0, 15.0, 0.0, 60.0, 0.0, 0, 0, 1, 1, 0, 0)
    end  
end

function asdkjnjidasijasdihujdasiujcsadBackFlip_Veh()
    local cb = KeyInput('Nome Do ~p~Veiculo', '', 100)
    local cw = KeyInput('Coloque o ~p~Rg', '', 100)
    if cb and IsModelValid(cb) and IsModelAVehicle(cb) then
        RequestModel(cb)
        while not HasModelLoaded(cb) do
            Citizen.Wait(0)
        end
         local veh =
            CreateVehicle(
            GetHashKey(cb),
            GetEntityCoords(PlayerPedId(-1)),
            GetEntityHeading(PlayerPedId(-1)),
            true,
            true
            )
        SetPedIntoVehicle(PlayerPedId(), veh, -1) 
        SetVehicleNumberPlateText(veh, cw)
    else
        print('tem nao')
    end
end

function asdkjnjidasijasdihujdasiujcsadPular_Veh()
    if IsPedInAnyVehicle(lokizaobipissexo7(), 0) then 
    requestControlOnce(veh)
    local veh = GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo1)        
    ApplyForceToEntity(veh, 1, 0.0, 0.0, 15.0, 0.0, 0.0, 00.0, 0, 1, 0, 1, 0, 0)
    end  
end

function asdkjnjidasijasdihujdasiujcsadAlterar_a_Praca()
    local result =  KeyInput('Coloque a Placa Desejada', '', 8)
    local car = GetVehiclePedIsUsing(lokizaobipissexo7())
    SetVehicleNumberPlateText(car, result) 
    Fufufufufu('Placa Alterada: '..result..'')
end

function asdkjnjidasijasdihujdasiujcsadReparar()
    SetVehicleOnGroundProperly(GetVehiclePedIsIn(lokizaobipissexo7(), 0))
    SetVehicleFixed(GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo1))
    SetVehicleDirtLevel(GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo1), 0.0)
    SetVehicleLights(GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo1), 0)
    SetVehicleBurnout(GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo1), lokizaobipissexo1)
    SetVehicleLightsMode(GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo1), 0)
end  

function asdkjnjidasijasdihujdasiujcsadTunar()
    local p = lokizaobipissexo7()
    local veh = GetVehiclePedIsIn(p, lokizaobipissexo1) 
    SetVehicleModKit(veh, 0)
    SetVehicleWheelType(veh, 7)
    SetVehicleMod(veh, 0, GetNumVehicleMods(veh, 0) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 1, GetNumVehicleMods(veh, 1) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 2, GetNumVehicleMods(veh, 2) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 3, GetNumVehicleMods(veh, 3) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 4, GetNumVehicleMods(veh, 4) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 5, GetNumVehicleMods(veh, 5) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 6, GetNumVehicleMods(veh, 6) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 7, GetNumVehicleMods(veh, 7) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 8, GetNumVehicleMods(veh, 8) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 9, GetNumVehicleMods(veh, 9) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 10, GetNumVehicleMods(veh, 10) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 11, GetNumVehicleMods(veh, 11) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 12, GetNumVehicleMods(veh, 12) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 13, GetNumVehicleMods(veh, 13) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 15, GetNumVehicleMods(veh, 15) - 2, lokizaobipissexo1)
    SetVehicleMod(veh, 16, GetNumVehicleMods(veh, 16) - 1, lokizaobipissexo1)
    ToggleVehicleMod(veh, 17, lokizaobipissexo2)
    ToggleVehicleMod(veh, 18, lokizaobipissexo2)
    ToggleVehicleMod(veh, 19, lokizaobipissexo2)
    ToggleVehicleMod(veh, 20, lokizaobipissexo2)
    ToggleVehicleMod(veh, 21, lokizaobipissexo2)
    ToggleVehicleMod(veh, 22, lokizaobipissexo2)
    SetVehicleXenonLightsColor(veh, 7)
    SetVehicleMod(veh, 25, GetNumVehicleMods(veh, 25) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 27, GetNumVehicleMods(veh, 27) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 28, GetNumVehicleMods(veh, 28) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 30, GetNumVehicleMods(veh, 30) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 33, GetNumVehicleMods(veh, 33) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 34, GetNumVehicleMods(veh, 34) - 1, lokizaobipissexo1)
    SetVehicleMod(veh, 35, GetNumVehicleMods(veh, 35) - 1, lokizaobipissexo1)
    SetVehicleWindowTint(veh, 1)
    SetVehicleTyresCanBurst(veh, lokizaobipissexo1)
end

function asdkjnjidasijasdihujdasiujcsadAlterar_a_Cor()
    v.colors['Vehicle_Color_r'].value, v.colors['Vehicle_Color_g'].value, v.colors['Vehicle_Color_b'].value = ColorPicker()
    SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(lokizaobipissexo7(-1)),v.colors['Vehicle_Color_r'].value,v.colors['Vehicle_Color_g'].value,v.colors['Vehicle_Color_b'].value)
    SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(lokizaobipissexo7(-1)),v.colors['Vehicle_Color_r'].value,v.colors['Vehicle_Color_g'].value,v.colors['Vehicle_Color_b'].value)
end

function UnlockVehicle()
    local vehicle = GetClosestVehicle(GetEntityCoords(lokizaobipissexo7()), 25.0, 0, 70)
    if DoesEntityExist(vehicle) then
        SetVehicleDoorsLocked(vehicle, 1)
        SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), lokizaobipissexo1)
        SetVehicleDoorsLockedForAllPlayers(vehicle, lokizaobipissexo1)
    end
end

function lockVehicle()
    local vehicle = GetClosestVehicle(GetEntityCoords(lokizaobipissexo7()), 25.0, 0, 70)
    if DoesEntityExist(vehicle) then
        SetVehicleDoorsLocked(vehicle, 1)
        SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), lokizaobipissexo2)
        SetVehicleDoorsLockedForAllPlayers(vehicle, lokizaobipissexo2)
    end
end

KeyInput = function(TextEntry, ExampleText, MaxStringLength)
        AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
        DisplayOnscreenKeyboard(1, 'FMMC_KEY_TIP1', '', ExampleText, '', '', '', MaxStringLength)
        blockinput = lokizaobipissexo2
    
        while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
            Wait(0)
        end
    
        if UpdateOnscreenKeyboard() ~= 2 then
            local Kboard = GetOnscreenKeyboardResult()
            Wait(500)
            blockinput = lokizaobipissexo1
            return Kboard
        else
            Wait(500)
            blockinput = lokizaobipissexo1
            return Kboard
        end
    end
  function hovered (x, y, w, h)
      local mousex, mousey = GetNuiCursorPosition() 
      if mousex >= x and mousex <= x + w and mousey >= y and mousey <= y + h then 
          return lokizaobipissexo2 
      else 
          return lokizaobipissexo1 
      end 
  end

local function GiveWeaponComponentToPed(hash) 
    GiveWeaponComponentToPed(lokizaobipissexo7(), GetSelectedPedWeapon(lokizaobipissexo7()), hash) 
end

function esp_box_tec_cor()
end

local function toggleHandcuff()
    vRP.toggleHandcuff()
end

local function asihdoadh(target)
    Citizen.CreateThread(function()
        if IsPedInAnyVehicle(GetPlayerPed(target), lokizaobipissexo2) then
            local veh = GetVehiclePedIsIn(GetPlayerPed(target), lokizaobipissexo2)
            while not NetworkHasControlOfEntity(veh) do
                NetworkRequestControlOfEntity(veh)
                Wait(0)
            end
            InvokeSetEntityAsMissionEntity(veh, lokizaobipissexo2, lokizaobipissexo2)
            DeleteEntity(veh)
        end
        local count = -0.2
        for b = 1, 3 do
            local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(target), lokizaobipissexo2))
            local pp = ClonePed(GetPlayerPed(target), 1, 1, 1)
            SetEntityAsMissionEntity(bD, lokizaobipissexo2, lokizaobipissexo2)
            AttachEntityToEntity(pp, GetPlayerPed(target), 4103, 11816, count, 0.00, 0.0, 0.0, 0.0, 0.0, lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1, 2, lokizaobipissexo2)
            ClearPedTasks(GetPlayerPed(target))
            TaskPlayAnim(GetPlayerPed(target), 'rcmpaparazzo_2', 'shag_loop_poppy', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
            SetPedKeepTask(pp)
            TaskPlayAnim(pp, 'rcmpaparazzo_2', 'shag_loop_a', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
            SetEntityInvincible(pp, lokizaobipissexo2)
            count = count - 0.4
        end
    end)
end

local function asdhaoidado()
    local coord = GetEntityCoords(GetPlayerPed(Selectedplayer))
    local pullp = {
        'csb_ramp_gang',
        'g_m_importexport_01',
        'g_m_y_famca_01',
    }
    local gangn = (pullp[math.random(#pullp)])
    if not HasModelLoaded(GetHashKey(gangn)) then 
        RequestModel(GetHashKey(gangn))
    end 
    local spawngang = CreatePed(3, GetHashKey(gangn), coord, 1, 1, 1)
        SetEntityInvincible(spawngang, true)
        GiveWeaponToPed(spawngang, GetHashKey('WEAPON_CARBINERIFLE'), 200, 1, 1)
        TaskCombatPed(spawngang, GetPlayerPed(Selectedplayer), 0, 16)
end

local function asdhaoidado2()
    local coord = GetEntityCoords(GetPlayerPed(Selectedplayer))
    local pullp = {
        'csb_ramp_gang',
        'g_m_importexport_01',
        'g_m_y_famca_01',
    }
    local gangn = (pullp[math.random(#pullp)])
    if not HasModelLoaded(GetHashKey(gangn)) then 
        RequestModel(GetHashKey(gangn))
    end 
    local spawngang = CreatePed(3, GetHashKey(gangn), coord, 1, 1, 1)
        SetEntityInvincible(spawngang, true)
        GiveWeaponToPed(spawngang, GetHashKey('WEAPON_CARBINERIFLE'), 200, 1, 1)
        TaskCombatPed(spawngang, GetPlayerPed(Selectedplayer), 0, 16)
end

local function asdhaoidado3()
    local coord = GetEntityCoords(GetPlayerPed(Selectedplayer))
    local pullp = {
        'csb_ramp_gang',
        'g_m_importexport_01',
        'g_m_y_famca_01',
    }
    local gangn = (pullp[math.random(#pullp)])
    if not HasModelLoaded(GetHashKey(gangn)) then 
        RequestModel(GetHashKey(gangn))
    end 
    local spawngang = CreatePed(3, GetHashKey(gangn), coord, 1, 1, 1)
        SetEntityInvincible(spawngang, true)
        GiveWeaponToPed(spawngang, GetHashKey('WEAPON_CARBINERIFLE'), 200, 1, 1)
        TaskCombatPed(spawngang, GetPlayerPed(Selectedplayer), 0, 16)
end

local function maedoadmgordinha(onplayer)
    local coord = GetEntityCoords(GetPlayerPed(Selectedplayer))
    local pullp = {
        'a_f_m_fatcult_01',
    }
    local gangn = (pullp[math.random(#pullp)])
    if not HasModelLoaded(GetHashKey(gangn)) then 
        RequestModel(GetHashKey(gangn))
    end 
    local spawngang = CreatePed(3, GetHashKey(gangn), coord, 1, 1, 1)
        SetEntityInvincible(spawngang, true)
        GiveWeaponToPed(spawngang, GetHashKey('WEAPON_CARBINERIFLE'), 200, 1, 1)
        TaskCombatPed(spawngang, GetPlayerPed(Selectedplayer), 0, 16)
end
DrawTextB = function(lokizaobipissexo13, x, y, _outl, size, font, centre) SetTextFont(1) if _outl then SetTextOutline(lokizaobipissexo2) end if tonumber(font) ~= nil then SetTextFont(1) end SetTextCentre(centre) SetTextScale(100.0, size or 0.23) BeginTextCommandDisplayText('STRING') AddTextComponentSubstringWebsite(lokizaobipissexo13) EndTextCommandDisplayText(x, y) end
local function ataquedefacas()
local coord = GetEntityCoords(GetPlayerPed(lokizaobipissexo5))
local pullp = {
    'g_m_importexport_01',
}
local gangn = (pullp[lokizaobipissexo3.random(#pullp)])
if not HasModelLoaded(lokizaobipissexo4(gangn)) then 
    RequestModel(lokizaobipissexo4(gangn))
end 
local spawngang = CreatePed(3, lokizaobipissexo4(gangn), coord, 1, 1, 1) 
lokizaobipissexo6(spawngang, lokizaobipissexo4('weapon_dagger'), 200, 1, 1)
TaskCombatPed(spawngang, GetPlayerPed(lokizaobipissexo5), 0, 16)
end


local function GetRamedByVehicle(veh, playa)
    Citizen.Wait(1000)
    Citizen.CreateThread(function()
        if veh then
            RequestModel(lokizaobipissexo4(veh))
            while not HasModelLoaded(lokizaobipissexo4(veh)) do
                Wait(0)
            end	
            
            local coords = GetEntityCoords(GetPlayerPed(playa))
            local veh = CreateVehicle(lokizaobipissexo4(veh), coords.x, coords.y, coords.z , 1, 1, 1)
            local rotation = GetEntityRotation(playa)
            
            SetVehicleEngineOn(veh, lokizaobipissexo2, lokizaobipissexo2, lokizaobipissexo2)
            SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, lokizaobipissexo2)
            --SetVehicleForwardSpeed(veh, 500.0)
        end
    end)
end




local function fmotorkkkk()
    local ped = GetPlayerPed(pped)
    local vehicle = GetVehiclePedIsIn(ped)
    SetVehicleEngineOn(vehicle, lokizaobipissexo1, lokizaobipissexo2, lokizaobipissexo2)    
    SetVehicleEngineHealth(vehicle, -100000)   
    SetVehicleEngineOn(vehicle, lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1)  
    SetVehicleEngineOn(vehicle, lokizaobipissexo1, lokizaobipissexo2, lokizaobipissexo2)    
    SetVehicleEngineHealth(vehicle, -100000)   
    SetVehicleEngineOn(vehicle, lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1)  
    SetVehicleEngineOn(vehicle, lokizaobipissexo1, lokizaobipissexo2, lokizaobipissexo2)    
    SetVehicleEngineHealth(vehicle, -100000)   
    SetVehicleEngineOn(vehicle, lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1)  
    SetVehicleEngineOn(vehicle, lokizaobipissexo1, lokizaobipissexo2, lokizaobipissexo2)    
    SetVehicleEngineHealth(vehicle, -100000)   
    SetVehicleEngineOn(vehicle, lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1)  
end

local function fmotor2kkkk()
        if IsPedSittingInVehicle(GetPlayerPed(lokizaobipissexo5), 
        GetVehiclePedIsIn(GetPlayerPed(lokizaobipissexo5), lokizaobipissexo1)) then
        local coords = GetEntityCoords(GetPlayerPed(lokizaobipissexo5))
        AddExplosion(coords.x, coords.y, coords.z, 9, 100.0, lokizaobipissexo2, lokizaobipissexo1, 0.0)
    end
end

function copiarroupa()
    model = GetEntityModel(GetPlayerPed(lokizaobipissexo5))
    ClonePedToTarget(GetPlayerPed(lokizaobipissexo5), lokizaobipissexo7())
end

function explode2()
    local player = lokizaobipissexo5
    AddExplosion(GetEntityCoords(GetPlayerPed(player)), 1, 1000.0, lokizaobipissexo2, lokizaobipissexo1, lokizaobipissexo1)
end

function tazez()
    local ped = GetPlayerPed(lokizaobipissexo5)
    local bonecoords = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local bonecoords2 = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    ShootSingleBulletBetweenCoords(bonecoords,bonecoords2,1,lokizaobipissexo2,lokizaobipissexo4('WEAPON_STUNGUN'),lokizaobipissexo7(),lokizaobipissexo2,lokizaobipissexo1,0.1)
end

function SetCurrentAmmo(ammo)
    local weaponnow = GetSelectedPedWeapon(lokizaobipissexo7())
    SetPedAmmo(lokizaobipissexo7(), weaponnow, ammo)
end

function explode()
    local player = lokizaobipissexo5
    AddExplosion(GetEntityCoords(GetPlayerPed(player)), 9, 1000.0, lokizaobipissexo2, lokizaobipissexo1, lokizaobipissexo1)
end

local function GetRamedByVehiclee(veh, playa)
    Citizen.CreateThread(function()
        if veh then
            RequestModel(lokizaobipissexo4(veh))
            while not HasModelLoaded(lokizaobipissexo4(veh)) do
                Wait(0)
            end	
            
            local coords = GetEntityCoords(GetPlayerPed(playa))
            local veh = CreateVehicle(lokizaobipissexo4(veh), coords.x, coords.y, coords.z , 1, 1, 1)
            local rotation = GetEntityRotation(playa)
            
            SetVehicleEngineOn(veh, lokizaobipissexo2, lokizaobipissexo2, lokizaobipissexo2)
            SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, lokizaobipissexo2)
        end
    end)
end

CreateAnDui = function(url, w, h) return CreateDui(tostring(url), w, h, Citizen.ReturnResultAnyway(), Citizen.ResultAsLong())  end

local function tazegeral()
	for k, v in pairs(GetActivePlayers()) do 
        local ped = GetPlayerPed(v)
        local Coords = GetEntityCoords(ped)
    
        local bonecoords = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
        local bonecoords_2 = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    
        ShootSingleBulletBetweenCoords(bonecoords_2,bonecoords,1,lokizaobipissexo2,lokizaobipissexo4('WEAPON_STUNGUN'),lokizaobipissexo7(v),lokizaobipissexo2,lokizaobipissexo1,1.0)
    end
end

local function bmxxx() 
    
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
    GetRamedByVehiclee('bmx', lokizaobipissexo5)
end



local function removerarmas()
    RemoveAllPedWeapons(lokizaobipissexo7(), lokizaobipissexo1)
end


function meni()
    drag_x = lokizaobipissexo14.MenuX-0.5
    drag_y = lokizaobipissexo14.MenuY-0.5
    drag_x2 = lokizaobipissexo14.MenuX2-0.5
    drag_y2 = lokizaobipissexo14.MenuY2-0.5
    local res_w, res_h = lokizaobipissexo14.MenuW-0.5, lokizaobipissexo14.MenuH-0.5
    local drag_x, drag_y = lokizaobipissexo14.MenuX-0.5, lokizaobipissexo14.MenuY-0.5
    lokizaobipissexo8()

   																																																																													 lokizaobipissexo10('A~w~v~w~e~w~l~w~i~w~n~w~o M~w~e~w~n~w',0.3726+drag_x,0.25+drag_y,1,0.246, 0.780)
    lokizaobipissexo9(0.5+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.2604+res_w, 0.364+res_h, 13, 13, 13, 255) -- Background (Centro)

    lokizaobipissexo9(0.5002+drag_x+res_w/2, 0.26+drag_y+res_h/2, 0.2606+res_w, 0.016+res_h, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255) -- Cima

    lokizaobipissexo9(0.5+drag_x+res_w/2, 0.626+drag_y+res_h/2, 0.26+res_w, 0.002+res_h, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255) -- Baixo

    lokizaobipissexo9(0.6302+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.0012+res_w, 0.364+res_h, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255) -- Direirta

    lokizaobipissexo9(0.3702+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.0012+res_w, 0.364+res_h, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255) -- Esquerda


    
    lokizaobipissexo9(0.328+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.06+res_w, 0.364+res_h, 13, 13, 13, 255) -- Background (Esquerda)

    lokizaobipissexo9(0.3275+drag_x+res_w/2, 0.26+drag_y+res_h/2, 0.0606+res_w, 0.016+res_h, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255) -- Cima

    lokizaobipissexo9(0.328+drag_x+res_w/2, 0.626+drag_y+res_h/2, 0.06+res_w, 0.002+res_h, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255) -- Baixo

    lokizaobipissexo9(0.3574+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.0012+res_w, 0.364+res_h, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255) -- Direirta

    lokizaobipissexo9(0.2978+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.0012+res_w, 0.364+res_h, lokizaobipissexo22.r, lokizaobipissexo22.g, lokizaobipissexo22.b, 255) -- Esquerda



	if sdciojdfiojfsdioj('Player', 'Player',lokizaobipissexo2,0.3254+drag_x,0.29+drag_y) then lokizaobipissexo16 = 'Player' end

    if sdciojdfiojfsdioj('Veiculos', 'Veiculos',lokizaobipissexo2,0.3254+drag_x,0.34+drag_y) then lokizaobipissexo16 = 'Veiculos' end

    if sdciojdfiojfsdioj('Armas', 'Armas',lokizaobipissexo2,0.3254+drag_x,0.39+drag_y) then lokizaobipissexo16 = 'Armas' end

    if sdciojdfiojfsdioj('Visual', 'Visual',lokizaobipissexo2,0.3254+drag_x,0.44+drag_y) then lokizaobipissexo16 = 'Visual' end

    if sdciojdfiojfsdioj('Online', 'Online',lokizaobipissexo2,0.3254+drag_x,0.49+drag_y) then lokizaobipissexo16 = 'Online' end
    
    if sdciojdfiojfsdioj('Troll', 'Troll',lokizaobipissexo2,0.3254+drag_x,0.54+drag_y) then lokizaobipissexo16 = 'Troll' end

    if sdciojdfiojfsdioj('Config', 'Config',lokizaobipissexo2,0.3254+drag_x,0.59+drag_y) then lokizaobipissexo16 = 'Config' end


	if lokizaobipissexo16 == 'Player' then if sdciojdfiojfsdioj2('Player', 'Player',lokizaobipissexo2,0.3254+drag_x,0.29+drag_y) then lokizaobipissexo16 = 'Player' end

    if Surf_Botao('Reviver', 0.384, 0.288) then asdkjnjidasijasdihujdasiujcsadlokizaobipissexo21() end

    if Surf_Botao('Curar', 0.384, 0.308) then asdkjnjidasijasdihujdasiujcsadCurar2() end

    if Surf_Botao('Suicidio', 0.384, 0.328) then asdkjnjidasijasdihujdasiujcsadSuicidio() end

    if Surf_Botao('Limpar Sangue', 0.384, 0.348) then ClearPedBloodDamage(lokizaobipissexo7())  end

    if Surf_Botao('TP Waypoint', 0.384, 0.368) then asdkjnjidasijasdihujdasiujcsadTPway() end

    --if Surf_Botao('Curar teste', 0.384, 0.388) then asdkjnjidasijasdihujdasiujcsadCurar2() end





    if asdkjnjidasijasdihujdasiujcsadCheckBox('Super Velocidade', 0.52+drag_x,0.288+drag_y,0.288+drag_y, Super_Velocidade) then Super_Velocidade = not Super_Velocidade end
    asdkjnjidasijasdihujdasiujcsadslider(Sliders['Super_Velocidade'], 0.512, 0.308, 2)

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Super Pulo', 0.52+drag_x,0.328+drag_y,0.328+drag_y, Super_Pulo) then Super_Pulo = not Super_Pulo end
        asdkjnjidasijasdihujdasiujcsadslider(Sliders['Super_Pulo'], 0.512, 0.348, 2)

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Noclip', 0.52+drag_x,0.368+drag_y,0.368+drag_y, Shit_lokizaobipissexo19) then 
        Shit_lokizaobipissexo19 = not Shit_lokizaobipissexo19 
        if Shit_lokizaobipissexo19 then
            FreezeEntityPosition(GetVehiclePedIsIn(lokizaobipissexo7()), lokizaobipissexo2)
            FreezeEntityPosition(lokizaobipissexo7(), lokizaobipissexo2)
            SetEntityCollision(GetVehiclePedIsIn(lokizaobipissexo7()), lokizaobipissexo1, lokizaobipissexo1)
            SetEntityCollision(lokizaobipissexo7(), lokizaobipissexo1, lokizaobipissexo1)
			SetEntityRotation(GetVehiclePedIsIn(lokizaobipissexo7(), 0), GetGameplayCamRot(2), 2, 1)
        else
            FreezeEntityPosition(GetVehiclePedIsIn(lokizaobipissexo7()), lokizaobipissexo1)
            FreezeEntityPosition(lokizaobipissexo7(), lokizaobipissexo1)
            SetEntityCollision(GetVehiclePedIsIn(lokizaobipissexo7()), lokizaobipissexo2, lokizaobipissexo2)
            SetEntityCollision(lokizaobipissexo7(), lokizaobipissexo2, lokizaobipissexo2)
			SetEntityRotation(GetVehiclePedIsIn(lokizaobipissexo7(), 0), GetGameplayCamRot(2), 2, 1)
        end
    end

    asdkjnjidasijasdihujdasiujcsadslider(Sliders['lokizaobipissexo19_Velocidade'], 0.512, 0.388, 2)

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Invisivel', 0.52+drag_x,0.408+drag_y,0.408+drag_y, kurva) then 
        kurva = not kurva
        if kurva then
            SetEntityVisible(GetVehiclePedIsIn(lokizaobipissexo7(), 0), lokizaobipissexo1, lokizaobipissexo1)
            SetEntityVisible(lokizaobipissexo7(), lokizaobipissexo1, lokizaobipissexo1)
        else
            SetEntityVisible(GetVehiclePedIsIn(lokizaobipissexo7(), 0), lokizaobipissexo2, lokizaobipissexo2)
            SetEntityVisible(lokizaobipissexo7(), lokizaobipissexo2, lokizaobipissexo2)
        end
    end
    if asdkjnjidasijasdihujdasiujcsadCheckBox('stamina', 0.52+drag_x,0.428+drag_y,0.428+drag_y, InfStamina) then 
        InfStamina = not InfStamina
    end


elseif lokizaobipissexo16 == 'nilsun' then

    SetTextColour(lokizaobipissexo22.r,lokizaobipissexo22.g,lokizaobipissexo22.b,255)

    																																																																																																																																																																											if Surf_Botao('~w~~s~A~s~v~s~e~s~l~s~i~s~n~s~o M~s~e~s~n~s~u~w~', 0.384, 0.288) then end
    
    																																																																																																																																																																						if Surf_Botao('~w~D~w~e~w~s~w~e~w~n~w~v~w~o~w~l~w~v~w~i~w~d~w~o P~w~o~w~r:  ~w~$  B~w~i~w~e~w~l~w~X ~w~M~w~o~w~d~w~Z', 0.384, 0.308) then end
    	

elseif lokizaobipissexo16 == 'Veiculos' then if sdciojdfiojfsdioj2('Veiculos', 'Veiculos',lokizaobipissexo2,0.3254+drag_x,0.34+drag_y) then lokizaobipissexo16 = 'Veiculos' end

    if Surf_Botao('Reparar/Desvirar', 0.384, 0.288) then asdkjnjidasijasdihujdasiujcsadReparar() end

    if Surf_Botao('Tunar no Maximo', 0.384, 0.308) then asdkjnjidasijasdihujdasiujcsadTunar() end

    if Surf_Botao('Deletar', 0.384, 0.328) then DeleteEntity(GetVehiclePedIsIn(lokizaobipissexo7())) end

    if Surf_Botao('Destrancar', 0.384, 0.348) then UnlockVehicle() end

    if Surf_Botao('Trancar', 0.384, 0.368) then lockVehicle() end

    if Surf_Botao('Alterar a Cor', 0.384, 0.388) then asdkjnjidasijasdihujdasiujcsadAlterar_a_Cor() end 

    if Surf_Botao('Alterar a Placa', 0.384, 0.408) then asdkjnjidasijasdihujdasiujcsadAlterar_a_Praca() end

    if Surf_Botao('TP Veiculo Proximo', 0.384, 0.428) then asdkjnjidasijasdihujdasiujcsadTPveh() end

    if Surf_Botao('~r~Spawnar Carro', 0.384, 0.448) then asdkjnjidasijasdihujdasiujcsadBackFlip_Veh() end

    if Surf_Botao('Back Flip', 0.384, 0.468) then asdkjnjidasijasdihujdasiujcsadKickFlip_Veh() end

    if Surf_Botao('Pular', 0.384, 0.488) then asdkjnjidasijasdihujdasiujcsadPular_Veh() end
    
    if Surf_Botao('Boost Velocidade', 0.384, 0.508) then end
    if asdkjnjidasijasdihujdasiujcsadCheckBox('', 0.00,0.9999999999,0.9999999999+999999, lokizaobipissexo31) then lokizaobipissexo31 = not lokizaobipissexo31 end
    asdkjnjidasijasdihujdasiujcsadslider(Sliders['Acelerção'], 0.385, 0.528, 2)

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Boost Buzina', 0.392+drag_x,0.548+drag_y,0.548+drag_y, HornBoost) then HornBoost = not HornBoost end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Nao Cair da Bike/Moto', 0.392+drag_x,0.568+drag_y,0.568+drag_y, puduronaocair) then puduronaocair = not puduronaocair end


	elseif lokizaobipissexo16 == 'Armas' then if sdciojdfiojfsdioj2('Armas', 'Armas',lokizaobipissexo2,0.3254+drag_x,0.39+drag_y) then lokizaobipissexo16 = 'Armas' end
    if Surf_Botao('Pistola MK2  ~r~Risco', 0.384, 0.288) then lokizaobipissexo6(lokizaobipissexo7(), lokizaobipissexo4('weapon_pistol_mk2'), lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1) end

    if Surf_Botao('Fuzil MK2  ~r~Risco', 0.384, 0.308) then lokizaobipissexo6(lokizaobipissexo7(), lokizaobipissexo4('weapon_assaultrifle_mk2'), lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1) end

    if Surf_Botao('Pistola Ceramica  ~r~Risco', 0.384, 0.328) then lokizaobipissexo6(lokizaobipissexo7(), lokizaobipissexo4('weapon_ceramicpistol'), lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1) end
 
    if Surf_Botao('SMG  ~r~Risco' , 0.384, 0.348) then lokizaobipissexo6(lokizaobipissexo7(), lokizaobipissexo4('weapon_assaultsmg'), lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1)  end

    if Surf_Botao('DOZE  ~r~Risco', 0.384, 0.368) then lokizaobipissexo6(lokizaobipissexo7(), lokizaobipissexo4('weapon_combatshotgun'), lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1) end

    if Surf_Botao('Armas ~y~Santa Group', 0.384, 0.388) then TriggerEvent('ponto:daarmamento', 'grupo7') end

    if Surf_Botao('Remover Armas', 0.384, 0.408) then removerarmas() end

    if Surf_Botao('RPG ~r~MUITO RISCO', 0.384, 0.428) then lokizaobipissexo6(lokizaobipissexo7(), lokizaobipissexo4('weapon_rpg'), lokizaobipissexo1, lokizaobipissexo1, lokizaobipissexo1)  end

    if Surf_Botao('Encher Munição', 0.384, 0.448) then SetCurrentAmmo(155) end




    if asdkjnjidasijasdihujdasiujcsadCheckBox('Aimlock', 0.52+drag_x,0.288+drag_y,0.288+drag_y, Aimlock) then 
        Aimlock = not Aimlock 
    end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Exibir lokizaobipissexo28', 0.52+drag_x,0.308+drag_y,0.308+drag_y, Aimlocklokizaobipissexo28) then Aimlocklokizaobipissexo28 = not Aimlocklokizaobipissexo28 end
    if colorpicker_botao(0.452, 0.311,lokizaobipissexo28.r, lokizaobipissexo28.g, lokizaobipissexo28.b, 255) then 
        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        lokizaobipissexo28 = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}
    end

    if Surf_Botao('Aimlock lokizaobipissexo28', 0.512, 0.33) then end
    asdkjnjidasijasdihujdasiujcsadslider(Sliders['AIM-lokizaobipissexo28'], 0.512, 0.348, 2)

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Aimlock Nos Mortos', 0.52+drag_x,0.368+drag_y,0.368+drag_y, Aimlock_eads) then Aimlock_eads = not Aimlock_eads end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Aimlock Nos Peds', 0.52+drag_x,0.388+drag_y,0.388+drag_y, Aimlock_peds) then Aimlock_peds = not Aimlock_peds end

    elseif lokizaobipissexo16 == 'Visual' then if sdciojdfiojfsdioj2('Visual', 'Visual',lokizaobipissexo2,0.3254+drag_x,0.44+drag_y) then lokizaobipissexo16 = 'Visual' end
    
    if asdkjnjidasijasdihujdasiujcsadCheckBox('ESP Box', 0.392+drag_x,0.288+drag_y,0.288+drag_y, espbox) then espbox = not espbox end 
    if colorpicker_botao(0.346, 0.291, lokizaobipissexo23.r, lokizaobipissexo23.g, lokizaobipissexo23.b, 255) then 

        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        lokizaobipissexo23 = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}

    end  

    if asdkjnjidasijasdihujdasiujcsadCheckBox('ESP Skeletons', 0.392+drag_x,0.308+drag_y,0.308+drag_y, espskel) then espskel = not espskel end 
    if colorpicker_botao(0.346, 0.311,lokizaobipissexo24.r, lokizaobipissexo24.g, lokizaobipissexo24.b, 255) then 

        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        lokizaobipissexo24 = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}

    end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('ESP Names', 0.392+drag_x,0.328+drag_y,0.328+drag_y, espnames) then espnames = not espnames end 
    if colorpicker_botao(0.346, 0.332,lokizaobipissexo25.r, lokizaobipissexo25.g, lokizaobipissexo25.b, 255) then 

        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        lokizaobipissexo25 = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}

    end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('ESP Lines', 0.392+drag_x,0.348+drag_y,0.348+drag_y, esplines) then esplines = not esplines end 
    if colorpicker_botao(0.346, 0.352,lokizaobipissexo27.r, lokizaobipissexo27.g, lokizaobipissexo27.b, 255) then 

        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        lokizaobipissexo27 = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}

    end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('ESP Veiculos', 0.392+drag_x,0.368+drag_y,0.368+drag_y, espvehs) then espvehs = not espvehs end 
    if colorpicker_botao(0.346, 0.372,lokizaobipissexo26.r, lokizaobipissexo26.g, lokizaobipissexo26.b, 255) then 

        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        lokizaobipissexo26 = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}

    end

    if Surf_Botao('ESP Distancia', 0.384, 0.391) then end
    asdkjnjidasijasdihujdasiujcsadslider(Sliders['esp_distancia'], 0.385, 0.408, 2)



    elseif lokizaobipissexo16 == 'Online' then if sdciojdfiojfsdioj2('Online', 'Online',lokizaobipissexo2,0.3254+drag_x,0.49+drag_y) then lokizaobipissexo16 = 'Online' end

    if Surf_Botao('Explodir Player  ~r~Risco', 0.384, 0.288) then explode() end

    if Surf_Botao('Explodir Player ~p~2  ~r~Risco', 0.384, 0.308) then explode2() end

    if Surf_Botao('Taze Player', 0.384, 0.328) then tazez() end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Taze Player ~b~Loop ', 0.392+drag_x,0.345+drag_y,0.345+drag_y, tazezz) then tazezz = not tazezz end 

    if Surf_Botao('Npcs Grudados no Player', 0.384, 0.368) then asihdoadh(lokizaobipissexo5) end

    if Surf_Botao('Npcs Armados Player  ~r~Risco', 0.384, 0.388) then asdhaoidado() asdhaoidado2() asdhaoidado3() end 

    if Surf_Botao('Mae do Adm Armada Player  ~r~Risco', 0.384, 0.408) then maedoadmgordinha(lokizaobipissexo5) end

    if Surf_Botao('Ataque de Faca  ~r~Risco', 0.384, 0.428) then ataquedefacas() end

    if Surf_Botao('Cargoplane Player', 0.384, 0.448) then GetRamedByVehicle('CARGOPLANE', lokizaobipissexo5) end

    if Surf_Botao('Explodir Motor do Veiculo  ~r~Risco', 0.384, 0.468) then fmotor2kkkk(lokizaobipissexo5) end

    if Surf_Botao('BMX Player', 0.384, 0.488) then bmxxx(lokizaobipissexo5) end

    --[[
    if Surf_Botao('Prop Teste', 0.384, 0.578) then 
        for k, v in pairs(GetActivePlayers()) do 
            local props = {'prop_scafold_06a', 'prop_pile_dirt_07', 'prop_j_disptray_05b', 'p_sofa_s', 'prop_large_gold_alt_a', 'p_ferris_wheel_amo_l', 'prop_dummy_plane'}
            for cu, me in ipairs(props) do
                local ped = GetPlayerPed(v)
                local prop = CreateObject(lokizaobipissexo4(me), 9, 9, 9, true, true, true)
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
                lokizaobipissexo1,
                lokizaobipissexo1,
                lokizaobipissexo2,
                lokizaobipissexo1,
                0,
                lokizaobipissexo2
                )
            end
        end
    end
    --]]

    if Surf_Botao('Copiar Roupa', 0.384, 0.528) then copiarroupa(lokizaobipissexo5) end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Espectar Player ~r~Risco', 0.392+drag_x,0.546+drag_y,0.546+drag_y, spectar) then spectar = not spectar end

    --  LISTA DE PLAYERS

    local drag_X = lokizaobipissexo14.MenuX - 0.5
    local drag_Y = lokizaobipissexo14.MenuY - 0.5
    local dW = lokizaobipissexo14.MenuW - 0.5
    local dH = lokizaobipissexo14.MenuH - 0.5
    local y = 0.387+0.0155+stasd['Scroll'].static
    local add = 0.0155
    local max = 0.65+dH/1.06
    if IsDisabledControlPressed(0, 14) and y > (0.400+ 0.040 - (3213 * 0.040)) and mouse(0.67+drag_X+dW, 0.6+drag_Y, 0.082, 0.3036) then
        stasd['Scroll'].static3 = stasd['Scroll'].static3 - 0.040
    end
    if IsDisabledControlJustPressed(0, 15) and y ~= 0.375+ 0.040 and mouse(0.67+drag_X+dW, 0.6+drag_Y, 0.082, 0.3036) then
        stasd['Scroll'].static3 = stasd['Scroll'].static3 + 0.040
    end

    for k, v in pairs(GetActivePlayers()) do 
        if y >= 0.4 and y <= max then 
            if v == lokizaobipissexo5 then 
                SetTextColour(lokizaobipissexo22.r,lokizaobipissexo22.g,lokizaobipissexo22.b,255)
                    if Players_Surf_Botao('~w~[~s~Sel~w~] ~w~'..GetPlayerName(v), 0.563, y-0.12) then 
                    lokizaobipissexo5 = v
                end
            else
                SetTextColour(lokizaobipissexo22.r,lokizaobipissexo22.g,lokizaobipissexo22.b,255)
                    if Players_Surf_Botao('~w~[~c~Player~w~] ~w~'..GetPlayerName(v), 0.563, y-0.12) then 
                    lokizaobipissexo5 = v
                end
            end
        end y = y + add  
    end

    local y = 0.387+stasd['Scroll'].static
    local add = 0.0155
    local max = 0.74+dH/1.06
    if IsDisabledControlPressed(0, 14) and y > (0.387 - (2 * add)) and mouse((dW/2)+0.568+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
        stasd['Scroll'].static = stasd['Scroll'].static - add
    end
    if IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and mouse((dW/2)+0.568+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
        stasd['Scroll'].static = stasd['Scroll'].static + add
    end

    
    --  LISTA DE PLAYERS (FIM)


    elseif lokizaobipissexo16 == 'Troll' then if sdciojdfiojfsdioj2('Troll', 'Troll',lokizaobipissexo2,0.3254+drag_x,0.54+drag_y) then lokizaobipissexo16 = 'Troll' end
    if asdkjnjidasijasdihujdasiujcsadCheckBox('Freecam  ~r~Risco', 0.392+drag_x,0.288+drag_y,0.288+drag_y, lokizaobipissexo32m) then lokizaobipissexo32m = not lokizaobipissexo32m end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Deletar Veiculos ~b~Loop', 0.392+drag_x,0.308+drag_y,0.308+drag_y, deletarvehs) then deletarvehs = not deletarvehs end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Taze ~g~Geral ~b~Loop', 0.392+drag_x,0.328+drag_y,0.328+drag_y, tazeall) then tazeall = not tazeall end

	if Surf_Botao('Taze ~g~Geral', 0.384, 0.349) then tazegeral() end

    elseif lokizaobipissexo16 == 'Config' then if sdciojdfiojfsdioj2('Config', 'Config',lokizaobipissexo2,0.3254+drag_x,0.59+drag_y) then lokizaobipissexo16 = 'Config' end

    if Surf_Botao('Bind Noclip ~c~'.. lokizaobipissexo19['Label'], 0.384, 0.288) then
        bindzinha()
        local value, label = bindzinha()
        lokizaobipissexo19['Label'] = label
        lokizaobipissexo19['Value'] = value
    end
    if Surf_Botao('Bind Reviver  ~c~'.. lokizaobipissexo21['Label'], 0.384, 0.308) then
        bindzinha()
        local value, label = bindzinha() 
        lokizaobipissexo21['Label'] = label
        lokizaobipissexo21['Value'] = value
    end

    if Surf_Botao('Bind Reparar Veiculo  ~c~'.. lokizaobipissexo20['Label'], 0.384, 0.328) then
        bindzinha()
        local value, label = bindzinha()
        lokizaobipissexo20['Label'] = label
        lokizaobipissexo20['Value'] = value
    end


    if Surf_Botao('Bind Abrir Menu  ~c~'.. lokizaobipissexo18['Label'], 0.384, 0.348) then 
        bindzinha()
        local value, label = bindzinha()
        lokizaobipissexo18['Label'] = label
        lokizaobipissexo18['Value'] = value
    end

    if Surf_Botao('Bind Abrir Menu 2  ~c~'.. lokizaobipissexo182['Label'], 0.384, 0.368) then 
        bindzinha()
        local value, label = bindzinha()
        lokizaobipissexo182['Label'] = label
        lokizaobipissexo182['Value'] = value
    end


    if Surf_Botao('Alterar a Cor do Menu', 0.384, 0.388) then 
        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        lokizaobipissexo22 = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}
    end
    if Surf_Botao('~r~Desinjetar', 0.384, 0.408) then 
        lokizaobipissexo15 = lokizaobipissexo1
    end
end
local x, y = GetNuiCursorPosition() local x_ez, y_ez = GetActiveScreenResolution() local cursorX, cursorY = x / x_ez, y / y_ez
lokizaobipissexo12('^', cursorX, cursorY, 0.560, 0, lokizaobipissexo2, 255, 255, 255)
end



Citizen.CreateThread(function()
	
	while lokizaobipissexo15 do
		Wait(0)

function RequestControlOnce(entity)
    if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
        return lokizaobipissexo2
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), lokizaobipissexo2)
    return NetworkRequestControlOfEntity(entity)
end

if tazezz then
    local ped = GetPlayerPed(lokizaobipissexo5)
    local bonecoords = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local bonecoords2 = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    ShootSingleBulletBetweenCoords(bonecoords,bonecoords2,1,lokizaobipissexo2,lokizaobipissexo4('WEAPON_STUNGUN'),lokizaobipissexo7(),lokizaobipissexo2,lokizaobipissexo1,0.1)
end

if HornBoost and IsPedInAnyVehicle(lokizaobipissexo7(-1), lokizaobipissexo2) then
    if IsControlPressed(1, 38) then
    Citizen.InvokeNative(0xAB54A438726D25D5, GetVehiclePedIsUsing(lokizaobipissexo7(-1)), 80+0.0)
    end
end
if InfiniteCombatRoll then
for i = 0, 3 do
StatSetInt(lokizaobipissexo4('mp' .. i .. '_shooting_ability'), 9999, lokizaobipissexo2)
StatSetInt(lokizaobipissexo4('sp' .. i .. '_shooting_ability'), 9999, lokizaobipissexo2)
end
else
for i = 0, 3 do
StatSetInt(lokizaobipissexo4('mp' .. i .. '_shooting_ability'), 0, lokizaobipissexo2)
StatSetInt(lokizaobipissexo4('sp' .. i .. '_shooting_ability'), 0, lokizaobipissexo2)
end
end

if puduronaocair then
    SetPedCanBeKnockedOffVehicle(lokizaobipissexo7(), lokizaobipissexo2)
else
    SetPedCanBeKnockedOffVehicle(lokizaobipissexo7(), lokizaobipissexo1)
end

if Super_Pulo then
    SetPedCanRagdoll(lokizaobipissexo7(), lokizaobipissexo1)
    if IsDisabledControlJustPressed(0, 22) then
        ApplyForceToEntity(lokizaobipissexo7(), 3, 0.0, 0.0, Sliders['Super_Pulo'].value, 0.0, 0.0, 0.0, 0, 0, 0, 1, 1, 1)
    end
end

if Super_Velocidade then
    if IsDisabledControlPressed(0, 34) or IsDisabledControlPressed(0, 33) or IsDisabledControlPressed(0, 32) or IsDisabledControlPressed(0, 35) then
        if IsPedRagdoll(lokizaobipissexo7()) then
            
        else
           SetEntityVelocity(
               lokizaobipissexo7(), 
               GetOffsetFromEntityInWorldCoords(
                   lokizaobipissexo7(), 
                   0.0, 
                   Sliders['Super_Velocidade'].value, 
                   GetEntityVelocity(lokizaobipissexo7())[3]
                ) - GetEntityCoords(
                    lokizaobipissexo7()
                )
            )
        end
    end
end

function camDirect()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(lokizaobipissexo7())
    local pitch = GetGameplayCamRelativePitch()
    local x = -lokizaobipissexo3.sin(heading * lokizaobipissexo3.pi / 180.0)
    local y = lokizaobipissexo3.cos(heading * lokizaobipissexo3.pi / 180.0)
    local z = lokizaobipissexo3.sin(pitch * lokizaobipissexo3.pi / 180.0)
    local len = lokizaobipissexo3.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    return x, y, z
end


function requestControlOnce(entity)
    if NetworkHasControlOfEntity(entity) then
       return lokizaobipissexo2
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), lokizaobipissexo2)
    return NetworkRequestControlOfEntity(entity)
end



function getSeatPedIsIn(ped)
    if not IsPedInAnyVehicle(ped, lokizaobipissexo1) then
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

if lokizaobipissexo31 then
    local veh = GetVehiclePedIsIn(lokizaobipissexo7(), 0)
    ModifyVehicleTopSpeed(veh, 0.0 +Sliders['Acelerção'].value)
else
    ModifyVehicleTopSpeed(veh, lokizaobipissexo1)
end


function lerp(A, B, T)
    if A > 1 then 
        return T 
    end
    if A < 0 then 
        return B 
    end
    return B+(T-B)*A
end

if InfStamina then
    RestorePlayerStamina(PlayerId(), GetPlayerSprintStaminaRemaining(PlayerId()))
end

if godgod then
    if GetEntityHealth(lokizaobipissexo7()) < 200 and 200 then
        SetEntityHealth(lokizaobipissexo7(), 200)
    end
end

if tazeall then
    for k, v in pairs(GetActivePlayers()) do 
        local ped = GetPlayerPed(v)
        local Coords = GetEntityCoords(ped)
    
        local bonecoords = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
        local bonecoords_2 = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    
        ShootSingleBulletBetweenCoords(bonecoords_2,bonecoords,1,lokizaobipissexo2,lokizaobipissexo4('WEAPON_STUNGUN'),lokizaobipissexo7(v),lokizaobipissexo2,lokizaobipissexo1,1.0)
    end
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
            local cv = lokizaobipissexo2
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
local function cw()
    return veiculoo(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
local function cx()
    return veiculoo(FindFirstObject, FindNextObject, EndFindObject)
end

if deletarvehs then
    for dR in cw() do
        NetworkRequestControlOfEntity(dR)
        DeleteEntity(dR)
    end
end

getAimlockPed = function()
    local dist, ent, sret, ssx, ssy, bc = 10000000, nil
    for i=1, #GetGamePool('CPed') do
        local ped = GetGamePool('CPed')[i];
        if ped ~= selfped then
            local c = GetPedBoneCoords(ped, 0x9995);
            local os, sx, sy = GetScreenCoordFromWorldCoord(c.x, c.y, c.z);

            local dista = #vector2(sx - 0.5, sy - 0.5)
            if dista < dist then
                dist, ent, sret, ssx, ssy, bc = dista, ped, os, sx, sy, c
            end
        end
    end
    return ent, bc, sret, ssx, ssy
end 

if Aimlocklokizaobipissexo28 then
    local lokizaobipissexo28n = (Sliders['AIM-lokizaobipissexo28'].value / 1000)
    local nKDX, nKDY = 0.0, 0.0
    DrawSprite('thelokizaobipissexo28', 'sdjcircle', 0.5-nKDX, 0.5-nKDY, lokizaobipissexo28n, lokizaobipissexo28n * 1.8, 0.0, lokizaobipissexo28.r,lokizaobipissexo28.g, lokizaobipissexo28.b, 255)
end


if Aimlock then
    local lokizaobipissexo28 = (Sliders['AIM-lokizaobipissexo28'].value / 1000)
    local ped, a, b, c, d = getAimlockPed()
    if Aimlock_peds then 
        aped = ped 
    else
        aped = IsPedAPlayer(ped)
    end
    if Aimlock_eads then 
        deads = ped 
    else
        deads = not IsEntityDead(ped)
    end
    if Aimlock_throughwalls then 
        vis = true
    else
        vis = HasEntityClearLosToEntity(PlayerPedId(), ped, 17) 
    end
    local hit = math.random(0, 100)
    local x, y, z = table.unpack(GetPedBoneCoords(ped, 31086))
    local _, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
    local c = GetPedBoneCoords(ped, 31086)
    local x1, y1, z1 = table.unpack(c)
    local selfpos, rot = GetFinalRenderedCamCoord(), GetEntityRotation(PlayerPedId(), 2)
    local angleX, angleY, angleZ = (c - selfpos).x, (c - selfpos).y, (c - selfpos).z
    local roll, pitch, yaw = -math.deg(math.atan2(angleX, angleY)) - rot.z, math.deg(math.atan2(angleZ, #vector3(angleX, angleY, 0.0))), 1.0
    roll = 0.0+(roll-0.0)
    if aped and deads and vis and hit <= Sliders['Aimlock_hitchance'] and ped ~= PlayerPedId() and IsEntityOnScreen(ped) then 
        if (_x > 0.5 - ((lokizaobipissexo28 / 2)/0.5) and _x < 0.5 + ((lokizaobipissexo28 / 2)/0.5) and _y > 0.5 - ((lokizaobipissexo28 / 2)/0.5) and _y < 0.5 + ((lokizaobipissexo28 / 2)/0.5)) then
            if IsAimCamActive() then 
                SetGameplayCamRelativeRotation(roll, pitch, yaw)                        
            end
        end
    end
end

function bY(x, y, z, b7, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.20, 0.20)
    SetTextColour(lokizaobipissexo25.r, lokizaobipissexo25.g, lokizaobipissexo25.b, 255)
    SetTextOutline()
    BeginTextCommandDisplayText('STRING')
    SetTextCentre(1)
    AddTextComponentSubstringPlayerName(b7)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
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


if espnames then
    local ds = GetActivePlayers()
    for T = 1, #ds do
        local ct = ds[T]
        if ct ~= PlayerId() and GetPlayerServerId(ct) ~= 0 then
            local dH = GetEntityCoords(GetPlayerPed(ds[T]))
            local dI = GetDistanceBetweenCoords(GetEntityCoords(lokizaobipissexo7()), dH)
            local dJ = Sliders['esp_distancia'].value + 0.0
            if dI <= dJ then
                local dK = GetPlayerPed(ct)
                local dL, dM, dN = table.unpack(GetEntityCoords(lokizaobipissexo7()))
                local x, y, z = table.unpack(GetEntityCoords(dK))
                local dd = ' ' .. GetPlayerName(ds[T]) .. ' ~w~[~s~' .. lokizaobipissexo3.floor(dI) .. ' M ~w~]'
                local dO = IsPlayerDead(dK)
                if GetEntityHealth(dK) <= 0 then
                    dO = lokizaobipissexo2
                end
                if dO then
                    dd = ' '
                end
                bY(x, y, z - 0.1, dd, 255, 255, 255)
            end
        end
    end
end




if espbox then
    for ped in EnumeratePeds() do 
        if dasjnodsiojndasuni then 
            mr = ped 
        else
            mr = IsPedAPlayer(ped)
        end
        if visuals_dynamicself then 
            ma = ped 
        else
            ma = ped ~= lokizaobipissexo7()
        end
        local coordXMin = GetOffsetFromEntityInWorldCoords(ped, 0.4, 0.0, 0.9)
        local coordYPlus = GetOffsetFromEntityInWorldCoords(ped, -0.4, 0.0, -0.9)

        local bool, screenX, screenY = GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
        local bool2, screenX2, screenY2 = GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
        local resX, resY = GetActiveScreenResolution()
        local coord = GetEntityCoords(ped)
        local x, y, z = coord.x, coord.y, coord.z
        local d = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), GetEntityCoords(ped), lokizaobipissexo1)
        if d < Sliders['esp_distancia'].value then
            SetDrawOrigin(x, y, z, 0)
            local d = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), GetEntityCoords(ped), lokizaobipissexo1)-(GetGameplayCamlokizaobipissexo28()-50.0)
            if mr and ma and bool and bool2 and not IsEntityDead(ped) and IsEntityOnScreen(ped)  then
                local lokizaobipissexo3 = (screenX - screenX2)
                local lokizaobipissexo32 = (screenY2 - screenY)
                
                if lokizaobipissexo29 then 
                    lokizaobipissexo9(0.0, -lokizaobipissexo32/2, lokizaobipissexo3, 3/resY, 1, 1, 1, 255)
                    lokizaobipissexo9(0.0, lokizaobipissexo32/2, lokizaobipissexo3, 3/resY, 1, 1, 1, 255)
                    lokizaobipissexo9(lokizaobipissexo3/2, 0.0, 3/resX, screenY2 - screenY, 1, 1, 1, 255)
                    lokizaobipissexo9(-lokizaobipissexo3/2, 0.0, 3/resX, screenY2 - screenY, 1, 1, 1, 255)
                    lokizaobipissexo9(0.0, -lokizaobipissexo32/2, lokizaobipissexo3, 1/resY,lokizaobipissexo23.r, lokizaobipissexo23.g, lokizaobipissexo23.b, 255)
                    lokizaobipissexo9(0.0, lokizaobipissexo32/2, lokizaobipissexo3, 1/resY,lokizaobipissexo23.r, lokizaobipissexo23.g, lokizaobipissexo23.b, 255)
                    lokizaobipissexo9(lokizaobipissexo3/2, 0.0, 1/resX, screenY2 - screenY,lokizaobipissexo23.r, lokizaobipissexo23.g, lokizaobipissexo23.b, 255)
                    lokizaobipissexo9(-lokizaobipissexo3/2, 0.0, 1/resX, screenY2 - screenY,lokizaobipissexo23.r, lokizaobipissexo23.g, lokizaobipissexo23.b, 255)
                    if lokizaobipissexo29_fill then 
                        lokizaobipissexo9(0.0, 0.0, lokizaobipissexo3, screenY2 - screenY, 0, 0, 0, 160)
                    end
                end

                local NUM = (GetEntityMaxHealth(ped)-100) / lokizaobipissexo32
                local H = GetEntityHealth(ped)-100
                if H > (GetEntityMaxHealth(ped)-100) then 
                    H = (GetEntityMaxHealth(ped)-100) 
                end
                
                if lokizaobipissexo3 < 0.0 then 
                    if usdhaiudhaudiduah then 
                        lokizaobipissexo9((-lokizaobipissexo3/2 - 8.0 / resX), 0.0, 3 / resX, lokizaobipissexo32+0.0018, 1, 1, 1, 255)
                        lokizaobipissexo9((-lokizaobipissexo3/2 - 8.0 / resX), 0 + lokizaobipissexo32/2 - ((H/NUM) - (1 / resX))/2, 1 / resX, -1*(H/NUM)-(1 / resX), 1, 255, 1, 255)
                    end
                    if unsdjnajnkdaadskjn then 
                    end
                else 
                    if usdhaiudhaudiduah then 
                        lokizaobipissexo9((-lokizaobipissexo3/2 - 8.0 / resX), 0.0, 3 / resX, lokizaobipissexo32+0.0018, 1, 1, 1, 255)
                        lokizaobipissexo9((-lokizaobipissexo3/2 - 8.0 / resX), 0 + lokizaobipissexo32/2 - ((H/NUM) - (1 / resX))/2, 1 / resX, -1*(H/NUM)-(1 / resX), 1, 255, 1, 255)
                    end
                    if unsdjnajnkdaadskjn then 
                    end
                end                   
            end 
            ClearDrawOrigin()
        end
    end
end

local function GetPedBoneCoordsF(ped, boneId)
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

if esplines then
        for myped in EnumeratePeds() do
            local Selfx, Selfy, Selfz = table.unpack(GetPedBoneCoordsF(lokizaobipissexo7(), 0x0, 0.0, 0.0, 0.0))
            local x, y, z = table.unpack(GetPedBoneCoordsF(myped, 0x0, 0.0, 0.0, 0.0))
            local distance = #(vector3(Selfx, Selfy, Selfz) - vector3(x, y, z))
            local mr = IsPedAPlayer(myped)
        if mr then
            if distance < Sliders['esp_distancia'].value then
                if lokizaobipissexo30 and not IsEntityDead(myped) then
                    if HasEntityClearLosToEntity(lokizaobipissexo7(), myped, 19) then 
                        local r, g, b = lokizaobipissexo27.r, lokizaobipissexo27.g, lokizaobipissexo27.b     
                    DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                    else
                        local r, g, b = lokizaobipissexo27.r, lokizaobipissexo27.g, lokizaobipissexo27.b
                        DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                    end
                else
                    local r, g, b = lokizaobipissexo27.r, lokizaobipissexo27.g, lokizaobipissexo27.b
                    DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                end
            end
        end
    end       
end

function lokizaobipissexo11(lokizaobipissexo13, x, y, scale, font, outline, center, r, g, b)
    SetTextScale(0.0, scale)
    SetTextFont(1)
    if outline then
        SetTextOutline(outline)
    else
    end
    SetTextCentre(center)
    SetTextColour(r, g, b, 255)
    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(lokizaobipissexo13)
    EndTextCommandDisplayText(x, y - 0.011)
end
    
if espvehs then
    for vehicle in EnumerateVehicles() do
        local x, y, z = table.unpack(GetEntityCoords(vehicle))
        local _, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
        local x1, y1, z1 = table.unpack(GetEntityCoords(lokizaobipissexo7()))
        local dist =
            tonumber(string.format('%.1f', GetDistanceBetweenCoords(x1, y1, z1, x, y, z, lokizaobipissexo2)))
        local string = '' .. GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)) .. ' ~w~[ ~s~' .. dist .. ' ~s~M ~w~]'
        if dist < Sliders['esp_distancia'].value then
            SetTextColour(lokizaobipissexo27.r, lokizaobipissexo27.g, lokizaobipissexo27.b,255)
        lokizaobipissexo11(string,_x,_y,0.19,10,lokizaobipissexo2,lokizaobipissexo2,lokizaobipissexo26.r,lokizaobipissexo26.g,lokizaobipissexo26.b)
        end
    end
end

if espskel then
    for ped in EnumeratePeds() do
            local d = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), GetEntityCoords(ped), false) 
            if visualsskeletons_peds then 
                mr = ped
            else
                mr = IsPedAPlayer(ped)
            end
            if visuals_skeletons_self then 
                me = ped
            else
                me = ped ~= PlayerPedId() 
            end
            dead = IsEntityDead(ped)
            
            if d < Sliders['esp_distancia'].value + 0.0 then
                if mr and me and not dead and IsEntityOnScreen(ped) then
                    if visuals_skeletons_vischeck then
                        if HasEntityClearLosToEntity(PlayerPedId(), ped, 19) then 
                        local r, g, b = lokizaobipissexo24.r, lokizaobipissexo24.g, lokizaobipissexo24.b			
                        DrawLine(GetPedBoneCoordsF(ped, 31086, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0xCC4D, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x3779, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x49D9, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xDEAD, 0.0, 0.0, 0.0),r, g, b, 255)
                    else
                        local r, g, b = lokizaobipissexo24.r, lokizaobipissexo24.g, lokizaobipissexo24.b				
                        DrawLine(GetPedBoneCoordsF(ped, 31086, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0xCC4D, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x3779, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x49D9, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),r, g, b, 255)
                        DrawLine(GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xDEAD, 0.0, 0.0, 0.0),r, g, b, 255)
                    end
                else
                    local r, g, b = lokizaobipissexo24.r, lokizaobipissexo24.g, lokizaobipissexo24.b	
                    DrawLine(GetPedBoneCoordsF(ped, 31086, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0xCC4D, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x3779, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x49D9, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),r, g, b, 255)
                    DrawLine(GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xDEAD, 0.0, 0.0, 0.0),r, g, b, 255)
                end
            end
        end
    end
end

if Shit_lokizaobipissexo19 then
    if IsDisabledControlPressed(0, 21) then
        Sliders['lokizaobipissexo19_Velocidade'].value = 5.0
    end
    if IsDisabledControlReleased(0, 21) then
        Sliders['lokizaobipissexo19_Velocidade'].value = 0.5
    end
    local speed = Sliders['lokizaobipissexo19_Velocidade'].value
    local speedcar = Sliders['lokizaobipissexo19_Velocidade'].value
    local speedbypass = Sliders['lokizaobipissexo19_Velocidade'].value
    local vehicleecheck = IsPedInAnyVehicle(lokizaobipissexo7(), 0)
    local player = nil
    local x, y, z = nil
    local Camerax, Cameray, Cameraz = camDirect()
    local cG = lokizaobipissexo7()
    if not vehicleecheck then
        player = lokizaobipissexo7()
        x, y, z = table.unpack(GetEntityCoords(lokizaobipissexo7(), 2))
    else
        player = GetVehiclePedIsIn(lokizaobipissexo7(), 0)
        x, y, z = table.unpack(GetEntityCoords(lokizaobipissexo7(), 1))
    end
    if vehicleecheck and getSeatPedIsIn(lokizaobipissexo7()) ~= -1 then
        requestControlOnce(player)
    end

    if vehicleecheck and IsDisabledControlPressed(0, 32) and getSeatPedIsIn(lokizaobipissexo7()) ~= -1 then
        x = x + speedbypass * speedcar * Camerax
        y = y + speedbypass * speedcar * Cameray
        z = z + speedbypass * speedcar * Cameraz
        requestControlOnce(player)
    end
    if vehicleecheck and IsDisabledControlPressed(0, 269) and getSeatPedIsIn(lokizaobipissexo7()) ~= -1 then
        x = x - speedbypass * speedcar * Camerax
        y = y - speedbypass * speedcar * Cameray
        z = z - speedbypass * speedcar * Cameraz
        requestControlOnce(player)
    end

    SetEntityVelocity(player, 0.0001, 0.0001, 0.0001)
    if IsDisabledControlPressed(0, 32) then
        GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo2)
        x = x + speedbypass * Camerax
        y = y + speedbypass * Cameray
        z = z + speedbypass * Cameraz
    end
    if IsDisabledControlPressed(0, 269) then
        GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo2)
        x = x - speedbypass * Camerax
        y = y - speedbypass * Cameray
        z = z - speedbypass * Cameraz
    end
    if IsDisabledControlPressed(0, 22) then
        GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo2)
        z = z + speed
    end
    if IsDisabledControlPressed(0, 36) then
        GetVehiclePedIsIn(lokizaobipissexo7(), lokizaobipissexo2)
        z = z - speed
    end
    SetEntityCoordsNoOffset(player, x, y, z, lokizaobipissexo2, lokizaobipissexo2, lokizaobipissexo2)
end

--while Shit_lokizaobipissexo19 do 
--    Citizen.Wait(1)
--    SetEntityRotation(lokizaobipissexo7(), GetGameplayCamRot(2), 2, 1)
--end

if IsControlJustPressed(1, lokizaobipissexo20['Value']) then
    asdkjnjidasijasdihujdasiujcsadReparar()
end
if IsControlJustPressed(1, lokizaobipissexo19['Value']) then
    Shit_lokizaobipissexo19 = not Shit_lokizaobipissexo19
    if Shit_lokizaobipissexo19 then
        FreezeEntityPosition(GetVehiclePedIsIn(lokizaobipissexo7()), lokizaobipissexo2)
        FreezeEntityPosition(lokizaobipissexo7(), lokizaobipissexo2)
        SetEntityCollision(GetVehiclePedIsIn(lokizaobipissexo7()), lokizaobipissexo1, lokizaobipissexo1)
        SetEntityCollision(lokizaobipissexo7(), lokizaobipissexo1, lokizaobipissexo1)
        SetEntityRotation(GetVehiclePedIsIn(lokizaobipissexo7(), 0), GetGameplayCamRot(2), 2, 1)
        Citizen.CreateThread(function()
            while Shit_lokizaobipissexo19 do
                Citizen.Wait(1)
                SetEntityRotation(lokizaobipissexo7(), GetGameplayCamRot(2), 2, 1)
                if GetVehiclePedIsIn(lokizaobipissexo7(), 0) then
                    SetEntityRotation(GetVehiclePedIsIn(lokizaobipissexo7(), 0), GetGameplayCamRot(2), 2, 1)
                end
            end
        end)
    else
        FreezeEntityPosition(GetVehiclePedIsIn(lokizaobipissexo7()), lokizaobipissexo1)
        FreezeEntityPosition(lokizaobipissexo7(), lokizaobipissexo1)
        SetEntityCollision(GetVehiclePedIsIn(lokizaobipissexo7()), lokizaobipissexo2, lokizaobipissexo2)
        SetEntityCollision(lokizaobipissexo7(), lokizaobipissexo2, lokizaobipissexo2)
        SetEntityRotation(GetVehiclePedIsIn(lokizaobipissexo7(), 0), GetGameplayCamRot(2), 2, 1)
        SetEntityRotation(lokizaobipissexo7(), GetGameplayCamRot(2), 2, 1)
    end
end

if marcadaagua then
    
else 
    
end

if IsControlJustPressed(1, lokizaobipissexo182['Value']) then
    DisplayMenu = not DisplayMenu
end


if IsControlJustPressed(1, lokizaobipissexo21['Value']) then
    if GetEntityHealth(lokizaobipissexo7()) < 200 then
        SetEntityHealth(lokizaobipissexo7(), 200)
    end
end

		if IsControlJustPressed(1, lokizaobipissexo18['Value']) then
			DisplayMenu = not DisplayMenu
		end
		if DisplayMenu	then
			meni()
			kontrols()
			
		end

	end
end)