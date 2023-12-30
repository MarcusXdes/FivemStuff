local cucucucucucucucucucucucucucucucucudeanao = false
local uouoasuaosufofuwgvvauvafvlav = true
local cucucucucucucucucucucucucucucucucudeanao33 = math
local sapdadaodja = GetHashKey
local cucucucucucucucucucucucucucucucucudeanao31ss = cucucucucucucucucucucucucucucucucudeanao31ss
local sdufbsyufbsyfd = GiveWeaponToPed
local cucucucucucucucucucucucucucucucucudeanao31 = PlayerPedId
local biduahdiuabdiaudbi = Zunc 
local hiujdsaiuhsdaihudas = DrawRect 
local buiddihushuiasddhuihui = DrawText
local sdajiadsiujsdaiun = DrawTextOutline
local dsajioasdiasiojjoi = drawTextOutline
local dhdsahdashiuadshuidsauih = text
local dasjiodasiojdjiasdsaijo = {}
local asdhasiduhiu = uouoasuaosufofuwgvvauvafvlav
local sdadadadsad = 'nilsun'
local ijnodsjndksasdjnia = {['Label'] = 'DELETE',['Value'] = 178}
local ijnodsjndksasdjnia2 = {['Label'] = 'MOUSE3',['Value'] = 348}
local iusadbaiusdbasidb = {['Label'] = 'F1',['Value'] = 288}
local asoidhasdaosdha = {['Label'] = 'F5',['Value'] = 166}
local huaisodhaiudahd = {['Label'] = 'INSERT',['Value'] = 121}

Aimlock_throughwalls = true
marcadaagua = true 
visuals_skeletons_self = true

iajdsasdjaoidjaiodj = { r = 150, g = 0, b = 255 }
sdhuihudisahuidas = {r = 150, g = 0, b = 255}
dasihbudsauihdsahuidsuh = {r = 150, g = 0, b = 255}
dsajiodsaijsdaui = {r = 150, g = 0, b = 255}
asdujihihoasdhuisda = {r = 150, g = 0, b = 255}
dsajiojidsajids = {r = 150, g = 0, b = 255}
fov = {r = 255, g = 255, b = 255}

dsiojdsjiodiojadjioas = uouoasuaosufofuwgvvauvafvlav unsdjnajnkdaadskjn = uouoasuaosufofuwgvvauvafvlav usdhaiudhaudiduah = uouoasuaosufofuwgvvauvafvlav dasjnodsiojndasuni = uouoasuaosufofuwgvvauvafvlav 
iujsdaiusadii = uouoasuaosufofuwgvvauvafvlav
hiujhauisdadishu = uouoasuaosufofuwgvvauvafvlav
sdfijsdfjidfsjin = { 
    freezer = cucucucucucucucucucucucucucucucucudeanao,
    mode = 1,
    modes = {
        'Visualizar',
        'Animal Spawn',
        'Aviao',
        'Ped Spawner',
        'Explodir',
    }
}

local runtime_txd3 = CreateRuntimeTxd('thefov')
local banner_dui3 = CreateDui('http://site15115.web1.titanaxe.com/pngs/circle2.html', 1000, 1000)
CreateRuntimeTextureFromDuiHandle(runtime_txd3, 'sdjcircle',GetDuiHandle(banner_dui3))
local banner_dui3 = CreateDui('http://site15115.web1.titanaxe.com/pngs/circle2.html', 1000, 1000)

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
local function DCamDirection() local saoiduhp = GetGameplayCamRelativeHeading() + GetEntityHeading(cucucucucucucucucucucucucucucucucudeanao31()) local fpojds = GetGameplayCamRelativePitch() local x = -cucucucucucucucucucucucucucucucucudeanao33.sin(saoiduhp * cucucucucucucucucucucucucucucucucudeanao33.pi / 180.0) local y = cucucucucucucucucucucucucucucucucudeanao33.cos(saoiduhp * cucucucucucucucucucucucucucucucucudeanao33.pi / 180.0) local z = cucucucucucucucucucucucucucucucucudeanao33.sin(fpojds * cucucucucucucucucucucucucucucucucudeanao33.pi / 180.0) local len = cucucucucucucucucucucucucucucucucudeanao33.sqrt(x * x + y * y + z * z) if len ~= 0 then x = x / len y = y / len z = z / len end  return x, y, z end


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
	['sdadadadsad'] = 37,
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
    ['Aimlock_damage'] = 50, ['AIM-FOV'] = {max = 700, min = 0, value = 100},  ['Aimlock_speed'] = 1000.0, ['Aimlock_hitchance'] = 100,
    ['Super_Velocidade'] = {max = 100.0, min = 1.0, value = 30.0}, ['Super_Pulo'] = {max = 100.0, min = 1.0, value = 30.0},
    ['iusadbaiusdbasidb_Velocidade'] = {max = 5.0, min = 0.1, value = 0.5}, ['player-sdfijsdfjidfsjin-fov'] = {max = 130.0, min = 0.0, value = 50.0},  ['player-sdfijsdfjidfsjin-sensitivity'] = {max = 15.0, min = 0.0, value = 7.0}, ['player-sdfijsdfjidfsjin-speed'] = {max = 2.0, min = 0.0, value = 0.4},
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
    ['sdadadadsad'] = 37,
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
        return uouoasuaosufofuwgvvauvafvlav
    else
        return cucucucucucucucucucucucucucucucucudeanao
    end
end
function nulooooooo()
end
function hiujdsaiuhsdaihudas(x, y, w, h, r, g, b, a)
    return Citizen.InvokeNative(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
end



local function DoNetwork(obj)
        if not Citizen.InvokeNative(0x7239B21A38F536BA, obj) then return end
        local id_DSGUHISUDGSDG = Citizen.InvokeNative(0x99BFDC94A603E541, obj)
        Citizen.InvokeNative(0x2B1813ABA29016C5, id_DSGUHISUDGSDG, uouoasuaosufofuwgvvauvafvlav)
        Citizen.InvokeNative(0xE05E81A888FA63C8, id_DSGUHISUDGSDG, uouoasuaosufofuwgvvauvafvlav)
        Citizen.InvokeNative(0x299EEB23175895FC, id_DSGUHISUDGSDG, cucucucucucucucucucucucucucucucucudeanao)

        for _, src_DSHGIUDSGSDG in pairs(GetActivePlayers()) do
            Citizen.InvokeNative(0xA8A024587329F36A, id_DSGUHISUDGSDG, src_DSHGIUDSGSDG, uouoasuaosufofuwgvvauvafvlav)
        end
    end


local function RotationToDirection(rotation)
    local retz = cucucucucucucucucucucucucucucucucudeanao33.rad(rotation.z)
    local retx = cucucucucucucucucucucucucucucucucudeanao33.rad(rotation.x)
    local absx = cucucucucucucucucucucucucucucucucudeanao33.abs(cucucucucucucucucucucucucucucucucudeanao33.cos(retx))
    return vector3(-cucucucucucucucucucucucucucucucucudeanao33.sin(retz) * absx, cucucucucucucucucucucucucucucucucudeanao33.cos(retz) * absx, cucucucucucucucucucucucucucucucucudeanao33.sin(retx))
end

local function Simple_Botao(dhdsahdashiuadshuidsauih, x, y)
local _x, _y = dasjiodasiojdjiasdsaijo.MenuX-0.5, dasjiodasiojdjiasdsaijo.MenuY-0.5
local _w, _h = dasjiodasiojdjiasdsaijo.MenuW-0.5, dasjiodasiojdjiasdsaijo.MenuH-0.5
drawText(dhdsahdashiuadshuidsauih, _x+x, _y+y, 0.24, cucucucucucucucucucucucucucucucucudeanao, 4, uouoasuaosufofuwgvvauvafvlav)
if mouseZone(_x+x, _y+y, 0.0835, 0.0221+0.0018) then 
    hiujdsaiuhsdaihudas(_x+x, _y+y, 0.0835, 0.0221, 32, 32, 32, 255)
else
    hiujdsaiuhsdaihudas(_x+x, _y+y, 0.0835, 0.0221, 32, 32, 32, 255)
end
if mouseZone(_x+x, _y+y, 0.086, 0.0236+0.0018) and IsDisabledControlJustPressed(0, 24) then 
    return uouoasuaosufofuwgvvauvafvlav
end
end

function dhdsahdashiuadshuidsauih(nazwa,outline,size,Justification,xx,yy, centre, font)
	if outline then
		SetTextOutline()
	end
	if font ~= nil and tonumber(font) ~= nil then
	SetTextFont(font)
	else
	SetTextFont(0)
	end
	if centre then
		SetTextCentre(uouoasuaosufofuwgvvauvafvlav)
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
	SetTextFont(font)
	else
	SetTextFont(0)
	end
	if centre then
		SetTextCentre(uouoasuaosufofuwgvvauvafvlav)
	end
	
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(115, 0, 230,  255)
    SetTextColour(iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 255)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)
end


local function GetTextWidht(str, font, scale)
    BeginTextCommandWidth('STRING')
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)

    return length
end



local function buiddihushuiasddhuihui(dhdsahdashiuadshuidsauih, x, y, outline, size, font, centre)
    SetTextFont(0)
    if outline then
        SetTextOutline(uouoasuaosufofuwgvvauvafvlav)
    end
    if tonumber(font) ~= nil then
        SetTextFont(font)
    end
	if centre then
		SetTextCentre(uouoasuaosufofuwgvvauvafvlav)
	end
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(dhdsahdashiuadshuidsauih)
    EndTextCommandDisplayText(x, y)
end



--


drag = {
    [1] = {x = 0.5, y = 0.5, w = 0.510, h = 0.5},
    [2] = {x = 0.5, y = 0.5},
}
local function text4(name,outline,size,Justification,xx,yy, font)

    if outline then

        SetTextOutline()

    end

    if font ~= nil and tonumber(font) ~= nil then

    SetTextFont(font)

    else

    SetTextFont(6)

    end

    SetTextProportional(1)

    SetTextScale(100.0, size)

    SetTextEdge(1, 0, 0,227,255)

    BeginTextCommandDisplayText('STRING')

    AddTextComponentSubstringWebsite(name)

    EndTextCommandDisplayText(xx, yy)

end
 

function bar(x,y,height)
	hiujdsaiuhsdaihudas(x,y,0.003,height,161, 161, 161,255)
end

    function meucuuuuuuu(x, y, a9, aa, r, g, b, ab)
        resX, resY = GetActiveScreenResolution()
        local aC, aB = a9 / resX, aa / resY
        local _x, _y = x / resX + aC / 2, y / resY + aB / 2
        hiujdsaiuhsdaihudas(_x, _y, aC, aB, r, g, b, ab)
    end

    function sdciojdfiojfsdioj(id, nazwa,outline,xx,yy)
        local x,y = GetNuiCursorPosition()
        dhdsahdashiuadshuidsauih(nazwa,outline,0.44,0,xx,yy - 0.01, uouoasuaosufofuwgvvauvafvlav ,1)
        local x,y = GetNuiCursorPosition()
    
        local x_res, y_res = GetActiveScreenResolution()
    
        local xx2 = xx
    
        if id == sdadadadsad then
    
    
        end
        if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
            return uouoasuaosufofuwgvvauvafvlav
        end
        return cucucucucucucucucucucucucucucucucudeanao
    end

    function sdciojdfiojfsdioj2(id, nazwa,outline,xx,yy)
        local x,y = GetNuiCursorPosition()
        textt(nazwa,outline,0.44,0,xx,yy - 0.01, uouoasuaosufofuwgvvauvafvlav ,1)
        local x,y = GetNuiCursorPosition()
    
        local x_res, y_res = GetActiveScreenResolution()
    
        local xx2 = xx
    
        if id == sdadadadsad then
    
    
        end
        if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
            return uouoasuaosufofuwgvvauvafvlav
        end
        return cucucucucucucucucucucucucucucucucudeanao
    end




dasjiodasiojdjiasdsaijo = {
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
    SetTextFont(4)
    SetTextProportional(0)
    SetTextJustification(h)
    SetTextEntry('string')
    AddTextComponentString(d)
    buiddihushuiasddhuihui(i, j)
end


local function edsf(d, e, f, h, i, j)
    if e then
        SetTextOutline()
    end
    SetTextScale(0.00, f)
    SetTextColour(255, 255, 255, 255)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextJustification(h)
    SetTextEntry('string')
    AddTextComponentString(d)
    buiddihushuiasddhuihui(i, j)
end


DrawTxt = function(dhdsahdashiuadshuidsauih, x, y, scale, size, colour, cent, font, outline, order)
    if order then
        SetScriptGfxDrawOrder(order)
    else
        SetScriptGfxDrawOrder(1)
    end
    SetTextColour(colour.r, colour.g, colour.b, colour.a)
    if font ~= nil then
        SetTextFont(font)
    else
        SetTextFont(4)
    end
    SetTextCentre()
    SetTextProportional(uouoasuaosufofuwgvvauvafvlav)
    SetTextCentre(cent)

    SetTextScale(size, size)
    
    if outline == nil then
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 255)
        SetTextDropshadow()
        SetTextOutline()
    end
    SetTextEntry('WATAFAKMEN')
    AddTextComponentString(dhdsahdashiuadshuidsauih)
    buiddihushuiasddhuihui(x, y)
end

hiujdsaiuhsdaihudas_U = function(x, y, w, h, r, g, b, a, order)
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

Fufufufufu = function(dhdsahdashiuadshuidsauih) --(Text)
	local enabled = uouoasuaosufofuwgvvauvafvlav
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
					enabled = cucucucucucucucucucucucucucucucucudeanao 
				end
				Citizen.Wait(1)
			end
		end)
	end
	Citizen.CreateThread(function() 
		while enabled do 
			Citizen.Wait(0)
			
			hiujdsaiuhsdaihudas_U(x, 0.615, 0.24, 0.034, 10, 10, 10, 255, 6) 
			hiujdsaiuhsdaihudas_U(x-animx/2, 0.598, 0.24-animx, 0.001, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 255, 6) 
			buiddihushuiasddhuihui(dhdsahdashiuadshuidsauih, x-0.048, 0.602, 0.3, 0.3, {r = 255, g = 255, b = 255, a = 255}, cucucucucucucucucucucucucucucucucudeanao, 4, cucucucucucucucucucucucucucucucucudeanao, 6)
		end
	end)		
end

Citizen.CreateThread(function() while asdhasiduhiu do
    Wait(0)
        if spectar then
			DisableControlAction(0, 32, uouoasuaosufofuwgvvauvafvlav) -- W
			DisableControlAction(0, 31, uouoasuaosufofuwgvvauvafvlav) -- S
			DisableControlAction(0, 30, uouoasuaosufofuwgvvauvafvlav) -- D
			DisableControlAction(0, 34, uouoasuaosufofuwgvvauvafvlav) -- A
			DisableControlAction(0, 71, uouoasuaosufofuwgvvauvafvlav) -- W
			DisableControlAction(0, 72, uouoasuaosufofuwgvvauvafvlav) -- S
			DisableControlAction(0, 63, uouoasuaosufofuwgvvauvafvlav) -- D
			DisableControlAction(0, 64, uouoasuaosufofuwgvvauvafvlav) -- A
                    local spectate_cam = spectate_cam
                    if not spectate_cam ~= nil then
                spectate_cam = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
            end
            RenderScriptCams(1, 0, 0, 1, 1)
            SetCamActive(spectate_cam, uouoasuaosufofuwgvvauvafvlav)
            local coords = GetEntityCoords(GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss))
            SetCamCoord(spectate_cam, coords.x, coords.y, coords.z + 3)
            local offsetRotX = 0.0
            local offsetRotY = 0.0
            local offsetRotZ = 0.0

            local weapondelay = 0
            while DoesCamExist(spectate_cam) do
                Wait(0)
                if not spectar then
					
                    DestroyCam(spectate_cam, cucucucucucucucucucucucucucucucucudeanao)
                    ClearTimecycleModifier()
                    RenderScriptCams(cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao, 0, 1, 0)
                    SetFocusEntity(cucucucucucucucucucucucucucucucucudeanao31())
                    break
                end
                local playerPed = GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss)
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
				DisableControlAction(0, 32, uouoasuaosufofuwgvvauvafvlav) -- W
				DisableControlAction(0, 31, uouoasuaosufofuwgvvauvafvlav) -- S
				DisableControlAction(0, 30, uouoasuaosufofuwgvvauvafvlav) -- D
				DisableControlAction(0, 34, uouoasuaosufofuwgvvauvafvlav) -- A
				DisableControlAction(0, 71, uouoasuaosufofuwgvvauvafvlav) -- W
				DisableControlAction(0, 72, uouoasuaosufofuwgvvauvafvlav) -- S
				DisableControlAction(0, 63, uouoasuaosufofuwgvvauvafvlav) -- D
				DisableControlAction(0, 64, uouoasuaosufofuwgvvauvafvlav) -- A
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

Citizen.CreateThread(function() while asdhasiduhiu do
    Wait(0)

        if sdfijsdfjidfsjinm then
            if not Displayed then
                local camera = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
                RenderScriptCams(uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav, 700, 1, 1)
                SetCamActive(camera, uouoasuaosufofuwgvvauvafvlav)
                SetCamCoord(camera, GetGameplayCamCoord())
                local offsetRotX = GetGameplayCamRot(2).x
                local offsetRotY = GetGameplayCamRot(2).y
                local offsetRotZ = GetGameplayCamRot(2).z
                
                
                while DoesCamExist(camera) do
                    Wait(0)
                    DisableControlAction(0, 1, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 2, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 142, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 18, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 322, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 106, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 24, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 25, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 1, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 2, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 24, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 69, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 142, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 257, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 25, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 17, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 16, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 200, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 85, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 99, uouoasuaosufofuwgvvauvafvlav)
                    DisableControlAction(0, 92, uouoasuaosufofuwgvvauvafvlav)
                    local currentmode = sdfijsdfjidfsjin.modes[sdfijsdfjidfsjin.mode]
                    local camera_rot = GetCamRot(camera, 2)
                    local coords = GetCamCoord(camera)
                    local adjustedRotation = {x = (cucucucucucucucucucucucucucucucucudeanao33.pi / 180) * GetCamRot(camera,0).x, y = (cucucucucucucucucucucucucucucucucudeanao33.pi / 180) * GetCamRot(camera,0).y, z = (cucucucucucucucucucucucucucucucucudeanao33.pi / 180) * GetCamRot(camera,0).z 	}	
                    local direction = {x = - cucucucucucucucucucucucucucucucucudeanao33.sin(adjustedRotation.z) * cucucucucucucucucucucucucucucucucudeanao33.abs(cucucucucucucucucucucucucucucucucudeanao33.cos(adjustedRotation.x)), y = cucucucucucucucucucucucucucucucucudeanao33.cos(adjustedRotation.z) * cucucucucucucucucucucucucucucucucudeanao33.abs(cucucucucucucucucucucucucucucucucudeanao33.cos(adjustedRotation.x)), z = cucucucucucucucucucucucucucucucucudeanao33.sin(adjustedRotation.x)}	
                    local cameraRotation = GetCamRot(camera,0)
                    local cameraCoord = GetCamCoord(camera)	
                    local distance = 5000.0
                    local destination = {x = cameraCoord.x + direction.x * distance, y = cameraCoord.y + direction.y * distance, z = cameraCoord.z + direction.z * distance}	
                    local a, b, coords, d, entity = GetShapeTestResult(StartShapeTestRay(cameraCoord.x, cameraCoord.y, cameraCoord.z, destination.x, destination.y, destination.z, -1, -1, 1))
                    SetCamFov(camera, Sliders['player-sdfijsdfjidfsjin-fov'].value)
                    
                    -------------------------------------------------------------------------------------------------------------------------------------------------
                    if not sdfijsdfjidfsjinm then
                        DestroyCam(camera, cucucucucucucucucucucucucucucucucudeanao)
                        ClearTimecycleModifier()
                        RenderScriptCams(cucucucucucucucucucucucucucucucucudeanao, uouoasuaosufofuwgvvauvafvlav, 700, 1, 0)
                        FreezeEntityPosition(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao)
                        SetFocusEntity(cucucucucucucucucucucucucucucucucudeanao31())
                        break;
                    end
                    if not Displayed then
                        local playerPed = cucucucucucucucucucucucucucucucucudeanao31()
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
                            DisableControlAction(0, 32, uouoasuaosufofuwgvvauvafvlav) -- W
                            DisableControlAction(0, 31, uouoasuaosufofuwgvvauvafvlav) -- S
                            DisableControlAction(0, 30, uouoasuaosufofuwgvvauvafvlav) -- D
                            DisableControlAction(0, 34, uouoasuaosufofuwgvvauvafvlav) -- A
                            DisableControlAction(0, 71, uouoasuaosufofuwgvvauvafvlav) -- W
                            DisableControlAction(0, 72, uouoasuaosufofuwgvvauvafvlav) -- S
                            DisableControlAction(0, 63, uouoasuaosufofuwgvvauvafvlav) -- D
                            DisableControlAction(0, 64, uouoasuaosufofuwgvvauvafvlav) -- A
                        end

                        if currentmode == 'Ped Spawner' then
                            DisableControlAction(0, 32, uouoasuaosufofuwgvvauvafvlav) -- W
                            DisableControlAction(0, 31, uouoasuaosufofuwgvvauvafvlav) -- S
                            DisableControlAction(0, 30, uouoasuaosufofuwgvvauvafvlav) -- D
                            DisableControlAction(0, 34, uouoasuaosufofuwgvvauvafvlav) -- A
                            DisableControlAction(0, 71, uouoasuaosufofuwgvvauvafvlav) -- W
                            DisableControlAction(0, 72, uouoasuaosufofuwgvvauvafvlav) -- S
                            DisableControlAction(0, 63, uouoasuaosufofuwgvvauvafvlav) -- D
                            DisableControlAction(0, 64, uouoasuaosufofuwgvvauvafvlav) -- A
                            armapeed = {'weapon_carbinerifle'}
                            local armaped = (armapeed[cucucucucucucucucucucucucucucucucudeanao33.random(#armapeed)])
                            if coords ~= vector3(0, 0, 0) and not DisplayMenu then 		
                                    if IsDisabledControlJustPressed(0, 69) then 
                                        local pedtable = {'csb_ramp_gang','g_m_importexport_01','g_m_y_famca_01',}
                                        local randomPed = (pedtable[cucucucucucucucucucucucucucucucucudeanao33.random(#pedtable)])
                                        if not HasModelLoaded(sapdadaodja(randomPed)) then 
                                            RequestModel(sapdadaodja(randomPed))
                                        end 										
                                        Wait(5)
                                            local ped = CreatePed(3, sapdadaodja(randomPed),coords.x,coords.y,coords.z - 0.5,uouoasuaosufofuwgvvauvafvlav,uouoasuaosufofuwgvvauvafvlav)
                                            sdufbsyufbsyfd(ped, sapdadaodja(armaped), 200, 1, 1)
                                            for k, i in pairs(GetActivePlayers()) do 
                                                TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                            end
                                        end
                                    end
                                end



                        if currentmode == 'Aviao' then
                            DisableControlAction(0, 32, uouoasuaosufofuwgvvauvafvlav) -- W
                            DisableControlAction(0, 31, uouoasuaosufofuwgvvauvafvlav) -- S
                            DisableControlAction(0, 30, uouoasuaosufofuwgvvauvafvlav) -- D
                            DisableControlAction(0, 34, uouoasuaosufofuwgvvauvafvlav) -- A
                            DisableControlAction(0, 71, uouoasuaosufofuwgvvauvafvlav) -- W
                            DisableControlAction(0, 72, uouoasuaosufofuwgvvauvafvlav) -- S
                            DisableControlAction(0, 63, uouoasuaosufofuwgvvauvafvlav) -- D
                            DisableControlAction(0, 64, uouoasuaosufofuwgvvauvafvlav) -- A
                                        if IsDisabledControlJustPressed(0, 24) then
                                                local wa = sapdadaodja('cargoplane')
                                        if IsDisabledControlJustPressed(0, 69) then 
                                            if coords ~= vector3(0, 0, 0) and not drawmenu then
                                                local hash = sapdadaodja('cargoplane')
                                                if not HasModelLoaded(hash) then 
                                                    RequestModel(hash)
                                                end
                                                local veh = CreateVehicle('cargoplane', coords, 1, 1, 1)
                                                SetVehicleEngineOn(veh, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
                                                SetEntityRotation(veh, GetCamRot(camera, 2), 0.0, GetCamRot(camera, 2), 0.0, uouoasuaosufofuwgvvauvafvlav)
                                                SetVehicleForwardSpeed(veh, 50.0)
                                            else
                                        end
                                    end
                                end
                            end
                            if currentmode == 'Explodir' then
                                DisableControlAction(0, 32, uouoasuaosufofuwgvvauvafvlav) -- W
                                DisableControlAction(0, 31, uouoasuaosufofuwgvvauvafvlav) -- S
                                DisableControlAction(0, 30, uouoasuaosufofuwgvvauvafvlav) -- D
                                DisableControlAction(0, 34, uouoasuaosufofuwgvvauvafvlav) -- A
                                DisableControlAction(0, 71, uouoasuaosufofuwgvvauvafvlav) -- W
                                DisableControlAction(0, 72, uouoasuaosufofuwgvvauvafvlav) -- S
                                DisableControlAction(0, 63, uouoasuaosufofuwgvvauvafvlav) -- D
                                DisableControlAction(0, 64, uouoasuaosufofuwgvvauvafvlav) -- A
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu  then 
                                    if IsDisabledControlJustPressed(0, 69) then
                                    AddExplosion(coords, 1, 1000.0, uouoasuaosufofuwgvvauvafvlav, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)
                                end
                            end
                        end

                        if currentmode == 'Animal Spawn' then
                            DisableControlAction(0, 32, uouoasuaosufofuwgvvauvafvlav) -- W
                            DisableControlAction(0, 31, uouoasuaosufofuwgvvauvafvlav) -- S
                            DisableControlAction(0, 30, uouoasuaosufofuwgvvauvafvlav) -- D
                            DisableControlAction(0, 34, uouoasuaosufofuwgvvauvafvlav) -- A
                            DisableControlAction(0, 71, uouoasuaosufofuwgvvauvafvlav) -- W
                            DisableControlAction(0, 72, uouoasuaosufofuwgvvauvafvlav) -- S
                            DisableControlAction(0, 63, uouoasuaosufofuwgvvauvafvlav) -- D
                            DisableControlAction(0, 64, uouoasuaosufofuwgvvauvafvlav) -- A
                            if coords ~= vector3(0, 0, 0) and not DisplayMenu then 		
                                    if IsDisabledControlJustPressed(0, 69) then 
                                        local pedtable = {'a_c_deer','a_c_pug','a_c_dolphin','a_c_killerwhal','a_c_humpback'}
                                        local randomPed = (pedtable[cucucucucucucucucucucucucucucucucudeanao33.random(#pedtable)])
                                        if not HasModelLoaded(sapdadaodja(randomPed)) then 
                                            RequestModel(sapdadaodja(randomPed))
                                        end 										
                                        Wait(5)
                                            local ped = CreatePed(3, sapdadaodja(randomPed),coords.x,coords.y,coords.z - 0.5,uouoasuaosufofuwgvvauvafvlav,uouoasuaosufofuwgvvauvafvlav)
                                            for k, i in pairs(GetActivePlayers()) do 
                                                TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                            end
                                        end
                                    end
                                end

                        
                        if coords ~= vector3(0, 0, 0) then 
                            hiujdsaiuhsdaihudas(0.5, 0.0796, 0.14, 0.08, 10, 10, 10, 0)
                            SetTextColour(iajdsasdjaoidjaiodj.r,iajdsasdjaoidjaiodj.g,iajdsasdjaoidjaiodj.b,255)
                            local abc = getWidth('~s~[~w~Freecam Mode~s~]  ~w~'..currentmode..'',4,0.5)
                            local rX, rY = GetActiveScreenResolution()
                            SetTextColour(iajdsasdjaoidjaiodj.r,iajdsasdjaoidjaiodj.g,iajdsasdjaoidjaiodj.b,255)
                            dsajioasdiasiojjoi('Birulinha ~n~~w~[~y~Freecam~w~] ~n~ ~w~Freecam Mode: ~s~'..currentmode..'',0.5,0.0568,0.36,10,uouoasuaosufofuwgvvauvafvlav,uouoasuaosufofuwgvvauvafvlav,255,255,255)
                            else
                            hiujdsaiuhsdaihudas(0.5, 0.0796, 0.14, 0.08, 10, 10, 10, 0)
                            local abc =
                                getWidth('Birulinha ~n~~w~[~y~Freecam~w~] ~n~ ~w~Freecam Mode: ~s~'..currentmode..'',4,0.5)
                            local rX, rY = GetActiveScreenResolution()
                            SetTextColour(iajdsasdjaoidjaiodj.r,iajdsasdjaoidjaiodj.g,iajdsasdjaoidjaiodj.b,0)
                            dsajioasdiasiojjoi('Birulinha ~n~~w~[~y~Freecam~w~] ~n~ ~w~Freecam Mode: ~s~'..currentmode..'',0.5,0.0568,0.36,10,uouoasuaosufofuwgvvauvafvlav,uouoasuaosufofuwgvvauvafvlav,255,255,255)
                        end
                    
                        

                        if IsDisabledControlJustPressed(1, 14) then
                            sdfijsdfjidfsjin.mode = sdfijsdfjidfsjin.mode + 1
                            if sdfijsdfjidfsjin.mode > #sdfijsdfjidfsjin.modes then
                                sdfijsdfjidfsjin.mode = 1
                            end
                        end

                        if IsDisabledControlJustPressed(1, 15) then
                            sdfijsdfjidfsjin.mode = sdfijsdfjidfsjin.mode - 1
                            if sdfijsdfjidfsjin.mode < 1 then
                                sdfijsdfjidfsjin.mode = #sdfijsdfjidfsjin.modes
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
    SetTextFont(font)
    else
    SetTextFont(6)
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
            if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then return cucucucucucucucucucucucucucucucucudeanao end
        end

        return uouoasuaosufofuwgvvauvafvlav
    end
	
    local function text2(name,outline,size,Justification,xx,yy) 
        if outline then SetTextOutline() end SetTextScale(0.00,size) SetTextColour(255, 255, 255, 255) SetTextFont(4) SetTextProportional(0) SetTextJustification(Justification) SetTextEntry('string') AddTextComponentString(name) buiddihushuiasddhuihui(xx,yy) end
        
        local function textt2(name,outline,size,Justification,xx,yy) 
            if outline then SetTextOutline() end SetTextScale(0.00,size) SetTextColour(iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 255) SetTextFont(4) SetTextProportional(0) SetTextJustification(Justification) SetTextEntry('string') AddTextComponentString(name) buiddihushuiasddhuihui(xx,yy) end
            
    

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
                return EndTextCommandGetWidth(uouoasuaosufofuwgvvauvafvlav)
            end
            
            biduahdiuabdiaudbi = function()
                local c_x, c_y = GetNuiCursorPosition() 
                local widht, height = GetActiveScreenResolution()
                c_x = c_x / widht
                c_y = c_y / height 
                local res_w, res_h = dasjiodasiojdjiasdsaijo.MenuW-0.5, dasjiodasiojdjiasdsaijo.MenuH-0.5
  
                if (c_x >= dasjiodasiojdjiasdsaijo.MenuX - 0.208 and c_y >= dasjiodasiojdjiasdsaijo.MenuY - 0.248 and c_x <= dasjiodasiojdjiasdsaijo.MenuX + 0.148+res_w and c_y < dasjiodasiojdjiasdsaijo.MenuY - 0.23+res_h) and IsDisabledControlJustPressed(0, 24) then 
                    _x = dasjiodasiojdjiasdsaijo.MenuX - c_x
                    _y = dasjiodasiojdjiasdsaijo.MenuY - c_y
                    dragging_allowed = uouoasuaosufofuwgvvauvafvlav
                elseif IsDisabledControlReleased( 0, 24) then
                    dragging_allowed = cucucucucucucucucucucucucucucucucudeanao
                end
        
                if dragging_allowed then
                    dasjiodasiojdjiasdsaijo.MenuX = c_x + _x
                    dasjiodasiojdjiasdsaijo.MenuY = c_y + _y
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
                    return uouoasuaosufofuwgvvauvafvlav 
                end
            end
                        

            function Surf_Botao(dhdsahdashiuadshuidsauih, x, y) 
                local drag_X = dasjiodasiojdjiasdsaijo.MenuX-0.5 
                local drag_Y = dasjiodasiojdjiasdsaijo.MenuY-0.5 
                local dW = dasjiodasiojdjiasdsaijo.MenuW-0.5 
                local dH = dasjiodasiojdjiasdsaijo.MenuH-0.5
                if x == 0.51 then 
                    x = x + dW/2
                end
                x = x + drag_X ; y = y + drag_Y
                local resX, resY = GetActiveScreenResolution()
                local width = getWidth(dhdsahdashiuadshuidsauih, 4, 0.27)
                drawText(dhdsahdashiuadshuidsauih, x-0.008, y+0.001, 0.216, 0, cucucucucucucucucucucucucucucucucudeanao)
                
            
                
                if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
                    return uouoasuaosufofuwgvvauvafvlav
                end
            end

            function Carmenu_Surf_Botao(dhdsahdashiuadshuidsauih, x, y) 
                local drag_X = dasjiodasiojdjiasdsaijo.MenuX-0.5 
                local drag_Y = dasjiodasiojdjiasdsaijo.MenuY-0.5 
                local dW = dasjiodasiojdjiasdsaijo.MenuW-0.5 
                local dH = dasjiodasiojdjiasdsaijo.MenuH-0.5
                if x == 0.51 then 
                    x = x + dW/2
                end
                x = x + drag_X ; y = y + drag_Y
                local resX, resY = GetActiveScreenResolution()
                local width = getWidth(dhdsahdashiuadshuidsauih, 4, 0.27)
                drawText(dhdsahdashiuadshuidsauih, x-0.008, y+0.001, 0.18, 0, cucucucucucucucucucucucucucucucucudeanao)
                
            
                
                if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
                    return uouoasuaosufofuwgvvauvafvlav
                end
            end

            function Players_Surf_Botao(dhdsahdashiuadshuidsauih, x, y) 
                local drag_X = dasjiodasiojdjiasdsaijo.MenuX-0.5 
                local drag_Y = dasjiodasiojdjiasdsaijo.MenuY-0.5 
                local dW = dasjiodasiojdjiasdsaijo.MenuW-0.5 
                local dH = dasjiodasiojdjiasdsaijo.MenuH-0.5
                if x == 0.51 then 
                    x = x + dW/2
                end
                x = x + drag_X ; y = y + drag_Y
                local resX, resY = GetActiveScreenResolution()
                local width = getWidth(dhdsahdashiuadshuidsauih, 4, 0.27)
                drawText(dhdsahdashiuadshuidsauih, x-0.008, y+0.001, 0.199, 0, cucucucucucucucucucucucucucucucucudeanao)
                
            
                
                if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
                    return uouoasuaosufofuwgvvauvafvlav
                end
            end


            function asddadasdad_DrawText(dhdsahdashiuadshuidsauih, x, y, _outl, size, font, centre)
                SetTextFont(0)
                if _outl then
                    SetTextOutline(uouoasuaosufofuwgvvauvafvlav)
                end
                if tonumber(font) ~= nil then
                    SetTextFont(font)
                end
                SetTextCentre(centre)
                SetTextScale(100.0, size or 0.23)
                BeginTextCommandDisplayText('STRING')
                AddTextComponentSubstringWebsite(dhdsahdashiuadshuidsauih)
                EndTextCommandDisplayText(x, y)
            end

            function asdkjnjidasijasdihujdasiujcsadslider(slider, x, y, dum)
                local drag_X = dasjiodasiojdjiasdsaijo.MenuX-0.5
                local drag_Y = dasjiodasiojdjiasdsaijo.MenuY-0.5
                local drag_X2 = dasjiodasiojdjiasdsaijo.MenuX2-0.5
                local drag_Y2 = dasjiodasiojdjiasdsaijo.MenuY2-0.5
                local dW, dH = dasjiodasiojdjiasdsaijo.MenuW-0.5, dasjiodasiojdjiasdsaijo.MenuH-0.5
                if x == 0.51 then 
                    x = x + dW/2
                end
                x = x + drag_X ; y = y + drag_Y
                x = x + 0.0515
                local wslid = 0.115+dW/2
                local resX, resY = GetActiveScreenResolution()
                hiujdsaiuhsdaihudas((dW/2)/2+x, y, wslid+0.002, 7/resY, 60, 60, 60, 255)
                hiujdsaiuhsdaihudas((dW/2)/2+x, y, wslid+0.001, 5/resY, 22, 22, 22, 255)
                hiujdsaiuhsdaihudas((dW/2)/2+x + (slider.value/(slider.max/wslid)/2) - wslid/2, y, (slider.value/(slider.max/wslid)), 3/resY, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 255)
                SetTextOutline()
                drawText(slider.value, (dW/2)/2+x + (slider.value/(slider.max/wslid)) - wslid/2, y+0.002, 0.21, 4, uouoasuaosufofuwgvvauvafvlav)
                local CX, CY = getmousepos()
                local sxl, sxr = x - (0.5-0.440), x + ((0.557+(dW/2))-0.5)
                if (mouse((dW/2)/2+x, y, wslid+0.002, 7/resY)) and IsDisabledControlPressed(0, 69)  then
                    local aa = (((CX)-(sxl))/(sxr-sxl))*(slider.max-slider.min)-slider.min
                    if dum then 
                        slider.value = tonumber(string.format('%.'..dum..'f', aa))
                    else
                        slider.value = cucucucucucucucucucucucucucucucucudeanao33.floor(aa)
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
                hiujdsaiuhsdaihudas(xx, yy, 0.07, 0.0292, 35, 35, 35, 255)
                if IsDisabledControlJustReleased(0, 92) then
        
                    return uouoasuaosufofuwgvvauvafvlav
        
                end
        
            else
        
                text2(name,outline,0.34,0,xx,yy - 0.014)
                hiujdsaiuhsdaihudas(xx, yy, 0.07, 0.0292, 35, 35, 35, 255)
                return cucucucucucucucucucucucucucucucucudeanao
        
            end
        
        end       
function asdkjnjidasijasdihujdasiujcsadTPway()
    local WaypointHandle = GetFirstBlipInfoId(8)
   
    if DoesBlipExist(WaypointHandle) then
        local waypointCoords = GetBlipInfoIdCoord(WaypointHandle)
      for height = 1, 1000 do
        SetPedCoordsKeepVehicle(cucucucucucucucucucucucucucucucucudeanao31(), waypointCoords['x'], waypointCoords['y'], height + 0.0)

          local foundGround, zPos = GetGroundZFor_3dCoord(waypointCoords['x'], waypointCoords['y'], height + 0.0)

          if foundGround then
            Fufufufufu('Teleportado!')
            SetPedCoordsKeepVehicle(cucucucucucucucucucucucucucucucucudeanao31(), waypointCoords['x'], waypointCoords['y'], height + 0.0)

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
    return EndTextCommandGetWidth(uouoasuaosufofuwgvvauvafvlav)
end

function hsvToRgb(h, s, v, a)
    local r, g, b
    local i = cucucucucucucucucucucucucucucucucudeanao33.floor(h * 6);
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
    return cucucucucucucucucucucucucucucucucudeanao33.floor(r * 255 + 0.5), cucucucucucucucucucucucucucucucucudeanao33.floor(g * 255 + 0.5), cucucucucucucucucucucucucucucucucudeanao33.floor(b * 255 + 0.5), cucucucucucucucucucucucucucucucucudeanao33.floor(a * 255)
end

ApplyForce = function(entity, direction)
    ApplyForceToEntity(entity, 3, direction, 0, 0, 0, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav, cucucucucucucucucucucucucucucucucudeanao, uouoasuaosufofuwgvvauvafvlav)
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
    hiujdsaiuhsdaihudas(ag + ai / 2, ah + aj / 2, ai, aj, r, g, b, ab)
end

function Gradient(x, y, a9, aa, aq, r, g, b, ab, ar, as, at, au)
    if aq then
        for l = 0, a9, 2 do
            if l > a9 then
                break
            end
            local ab = cucucucucucucucucucucucucucucucucudeanao33.floor((au - ab) / a9 * l + ab)
            Rectangle(x + l, y, l < a9 - 1 and 2 or 1, aa, ar, as, at, cucucucucucucucucucucucucucucucucudeanao33.abs(ab))
        end
    else
        for l = 0, aa, 2 do
            if l > aa then
                break
            end
            local ab = cucucucucucucucucucucucucucucucucudeanao33.floor((au - ab) / aa * l + ab)
            Rectangle(x, y + l, a9, l < aa - 1 and 2 or 1, ar, as, at, cucucucucucucucucucucucucucucucucudeanao33.abs(ab))
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
        SetTextFont(0)
    end
    if centre then
        SetTextCentre(uouoasuaosufofuwgvvauvafvlav)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size_szpachlan_szmata)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText('STRING')
    AddTextComponentSubstringWebsite(nazwa_szpachlan_szmata)
    EndTextCommandDisplayText(x, y)
end



function ColorPicker(R, aJ, aK)
    colorpicker = uouoasuaosufofuwgvvauvafvlav
    open = cucucucucucucucucucucucucucucucucudeanao
    local R = {
        HSV = {H = 0, S = 0, V = 0},
        RGB = {R = R, G = aJ, B = aK},
        Held = {Hue = cucucucucucucucucucucucucucucucucudeanao, Value = cucucucucucucucucucucucucucucucucudeanao},
        Opened = cucucucucucucucucucucucucucucucucudeanao,
        Turned = uouoasuaosufofuwgvvauvafvlav
    }
    while R.Turned do
        DisableControlAction(0, 1, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 2, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 142, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 322, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 106, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 25, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 24, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 257, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 32, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 31, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 30, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 34, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 23, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 22, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 16, uouoasuaosufofuwgvvauvafvlav)
        DisableControlAction(0, 17, uouoasuaosufofuwgvvauvafvlav)
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
        Gradient(aL + 10, aM + 10, 160, 180, uouoasuaosufofuwgvvauvafvlav, r, g, b, 255, 255, 255, 255, 0)
        Gradient(aL + 10, aM + 10, 160, 180, cucucucucucucucucucucucucucucucucudeanao, 255, 255, 255, 0, 0, 0, 0, 255)
        HSVGradient(aL + 20 + 160, aM + 10, 10, 180, cucucucucucucucucucucucucucucucucudeanao, 0, 1, 1, 1, 1, 1)
        local x, y = GetNuiCursorPosition()
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        if IsControlJustPressed(0, 18) then
            if x > aL + 20 and x < aL + 20 + 160 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Value = uouoasuaosufofuwgvvauvafvlav
            end
            if x > aL + 20 + 160 and x < aL + 20 + 160 + 10 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Hue = uouoasuaosufofuwgvvauvafvlav
            end
            if x < aL or x > aL + 200 or y < aM or y > aM + 200 then
                R.Opened = cucucucucucucucucucucucucucucucucudeanao
            end
        end
        if IsDisabledControlPressed(0, 69) then
            if R.Held.Value then
                local aN = x - aL - 10
                local aO = y - aM - 60
                R.HSV.S = cucucucucucucucucucucucucucucucucudeanao33.clamp(aN / 180, 0, 1)
                R.HSV.V = cucucucucucucucucucucucucucucucucudeanao33.clamp(1 - aO / 160, 0, 1)
            end
            if R.Held.Hue then
                local aP = y - aM + -19
                R.HSV.H = cucucucucucucucucucucucucucucucucudeanao33.clamp(aP / 180, 0, 1)
            end
            local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
            R.RGB.R, R.RGB.G, R.RGB.B = r, g, b
        else
            if R.Held.Value then
                R.Opened = cucucucucucucucucucucucucucucucucudeanao
            end
            R.Held.Value = cucucucucucucucucucucucucucucucucudeanao
            R.Held.Hue = cucucucucucucucucucucucucucucucucudeanao
        end
        local x, y = GetNuiCursorPosition() local x_ez, y_ez = GetActiveScreenResolution() local cursorX, cursorY = x / x_ez, y / y_ez
        dsajioasdiasiojjoi('^', cursorX, cursorY, 0.560, 0, uouoasuaosufofuwgvvauvafvlav, 255, 255, 255)
        if IsDisabledControlJustPressed(0, 191) then
            open = uouoasuaosufofuwgvvauvafvlav
            colorpicker = cucucucucucucucucucucucucucucucucudeanao
            R.Turned = cucucucucucucucucucucucucucucucucudeanao
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
            local next = uouoasuaosufofuwgvvauvafvlav
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
    DisableControlAction(0, 1, uouoasuaosufofuwgvvauvafvlav)
    DisableControlAction(0, 2, uouoasuaosufofuwgvvauvafvlav)
    DisableControlAction(0, 142, uouoasuaosufofuwgvvauvafvlav)
    DisableControlAction(0, 322, uouoasuaosufofuwgvvauvafvlav)
    DisableControlAction(0, 106, uouoasuaosufofuwgvvauvafvlav)
    DisableControlAction(0, 25, uouoasuaosufofuwgvvauvafvlav)
    DisableControlAction(0, 24, uouoasuaosufofuwgvvauvafvlav)
    DisableControlAction(0, 257, uouoasuaosufofuwgvvauvafvlav)
    DisableControlAction(0, 23, uouoasuaosufofuwgvvauvafvlav)
    DisableControlAction(0, 16, uouoasuaosufofuwgvvauvafvlav)
    DisableControlAction(0, 17, uouoasuaosufofuwgvvauvafvlav)

end
   
--[[quit to game
RestartGame()
ForceSocialClubUpdate()]]

function asdkjnjidasijasdihujdasiujcsadhuaisodhaiudahd()
    if GetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31()) < 200 then
    SetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31(), 200)
    end
end

function asdkjnjidasijasdihujdasiujcsadTPveh()
    local vehicle = GetClosestVehicle(GetEntityCoords(cucucucucucucucucucucucucucucucucudeanao31()), 8000.0, 0, 70)
    local vehnamenotif = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31())))
    if not IsPedInAnyVehicle(cucucucucucucucucucucucucucucucucudeanao31()) then
        Fufufufufu('Teleportado! ')
    end
    if vehicle ~= nil then
        SetPedIntoVehicle(cucucucucucucucucucucucucucucucucudeanao31(), vehicle, -1)
    end
    if IsPedInAnyVehicle(cucucucucucucucucucucucucucucucucudeanao31()) then
    end
end

function asdkjnjidasijasdihujdasiujcsadCurar()
    if GetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31()) < 200 then
        SetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31(), 200)
    end
    if GetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31()) < 400 then
        SetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31(), 400)
    end
    if GetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31()) ~= 0 then 
    end
end

function asdkjnjidasijasdihujdasiujcsadSuicidio()
    SetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31(), 0)
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
        SetTextFont(0)
    end
    if centre then
        SetTextCentre(uouoasuaosufofuwgvvauvafvlav)
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
    local vehicle = GetClosestVehicle(GetEntityCoords(cucucucucucucucucucucucucucucucucudeanao31()), 100.0, 0, 70)
    local vehnamenotif = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31())))
    if not IsPedInAnyVehicle(cucucucucucucucucucucucucucucucucudeanao31()) then
    end
    if vehicle ~= nil then
        SetPedIntoVehicle(cucucucucucucucucucucucucucucucucudeanao31(), vehicle, -1)

    end
end

function colorpicker_botao(x, y,r,g,b)
    drag_x = dasjiodasiojdjiasdsaijo.MenuX-0.5
    drag_y = dasjiodasiojdjiasdsaijo.MenuY-0.5
    local dW, dH = dasjiodasiojdjiasdsaijo.MenuW-0.5, dasjiodasiojdjiasdsaijo.MenuH-0.5
    local drag_x, drag_y = dasjiodasiojdjiasdsaijo.MenuX-0.5, dasjiodasiojdjiasdsaijo.MenuY-0.5
    if x == 0.51 then 
        x = x + dW
        else
            x = x + dW/2
    end
    x = x + drag_x ; y = y + drag_y
    x = x + 0.111
    local resX, resY = GetActiveScreenResolution()
    hiujdsaiuhsdaihudas(x-0.004, y, 0.0076, 0.0059, r, g, b, 255)
    if mouse(x-0.004, y, 0.0076, 0.0059) and clicked() then 
        return uouoasuaosufofuwgvvauvafvlav 
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

   
function drawText(dhdsahdashiuadshuidsauih, x, y, scale, font, center)
    SetTextScale(0.0, scale)
    SetTextFont(font)
    SetTextCentre(center)

    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(dhdsahdashiuadshuidsauih)
    EndTextCommandDisplayText(x, y-0.011)
end

function dsajioasdiasiojjoi(dhdsahdashiuadshuidsauih, x, y, scale, font, outline, center, r, g, b)
    SetTextScale(0.0, scale)
    SetTextFont(10)
    if outline then
    SetTextOutline(outline)
    else end
    SetTextCentre(center)
    SetTextColour(iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 255)
    SetTextFont(1)
    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(dhdsahdashiuadshuidsauih)
    EndTextCommandDisplayText(x, y-0.011)
end
   

function clicked()
    return IsDisabledControlJustPressed(0, 24)
end

function bindzinha()
    local clicked = nil
    local dhdsahdashiuadshuidsauih = nil
    local binded = cucucucucucucucucucucucucucucucucudeanao
    local alpha = 0
        while not binded do
            Wait(0)
    
            if alpha < 255 then
                alpha = alpha + 3
            end

            hiujdsaiuhsdaihudas(0.5, 0.51, 0.151, 0.037, 0, 0, 0, alpha) 
            hiujdsaiuhsdaihudas(0.5, 0.51, 0.150, 0.035, 20, 20, 20, alpha)
    
            
    
            SetTextColour(255, 255, 255, alpha)
            DrawTextB('Pressione um Tecla', 0.465, 0.495, uouoasuaosufofuwgvvauvafvlav, 0.4, 4, cucucucucucucucucucucucucucucucucudeanao)
    
            for k, v in pairs(Keys) do
                if IsDisabledControlPressed(0, v) then
                    clicked = v
                    dhdsahdashiuadshuidsauih = k
                   Wait(100)
                end
            end
            if clicked ~= nil then
                binded = uouoasuaosufofuwgvvauvafvlav
                return clicked, dhdsahdashiuadshuidsauih
            end
        end
    end

function asdkjnjidasijasdihujdasiujcsadCheckBox(name,xx,yy,yy2,bool)
    local x,y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    local xx2 = xx-0.012
    local yy2 = yy+0.0020
    drawText(name, xx2 + 0.006, yy2 + 0.0025, 0.206, 0, cucucucucucucucucucucucucucucucucudeanao)

    if bool then
        hiujdsaiuhsdaihudas(xx2,yy2,0.007, 0.006*1.8 + 0.0018, 1, 1, 1, 255)
        hiujdsaiuhsdaihudas(xx2,yy2,0.006, 0.006*1.8, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 255) 
    else
        hiujdsaiuhsdaihudas(xx2,yy2,0.007, 0.006*1.8 + 0.0018, 1, 1, 1, 255)
        hiujdsaiuhsdaihudas(xx2,yy2,0.006, 0.006*1.8, 66, 66, 66, 255) 
    end
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
        bool = not bool
       return uouoasuaosufofuwgvvauvafvlav
end
    return cucucucucucucucucucucucucucucucucudeanao
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
      
      local next = uouoasuaosufofuwgvvauvafvlav
      repeat
        coroutine.yield(id)
        next, id = FindNextVehicle(iter)
      until not next
      
      enum.destructor, enum.handle = nil, nil
      EndFindVehicle(iter)
    end)
  end
  
  function ptutu (dhdsahdashiuadshuidsauih, font, centered, x, y, scale, r, g, b, a)
	local resx, resy = GetActiveScreenResolution()
	SetTextFont(font)
	SetTextScale(scale, scale)  
	SetTextCentre(centered)  
	SetTextColour(r, g, b, a) 
	BeginTextCommandDisplayText('STRING')  
	AddTextComponentSubstringPlayerName(dhdsahdashiuadshuidsauih)  
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
			return uouoasuaosufofuwgvvauvafvlav
		end
		
	else
		return cucucucucucucucucucucucucucucucucudeanao
	end
end

function asdkjnjidasijasdihujdasiujcsadKickFlip_Veh()
    if IsPedInAnyVehicle(cucucucucucucucucucucucucucucucucudeanao31(), 0) then 
    requestControlOnce(veh)
    local veh = GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao)        
 ApplyForceToEntity(veh, 1, 0.0, 0.0, 15.0, 0.0, 60.0, 0.0, 0, 0, 1, 1, 0, 0)
    end  
end

function asdkjnjidasijasdihujdasiujcsadBackFlip_Veh()
    if IsPedInAnyVehicle(cucucucucucucucucucucucucucucucucudeanao31(), 0) then 
    requestControlOnce(veh)
    local veh = GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao)        
    ApplyForceToEntity(veh, 1, 0.0, 0.0, 10.0, 90.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
    end  
end

function asdkjnjidasijasdihujdasiujcsadPular_Veh()
    if IsPedInAnyVehicle(cucucucucucucucucucucucucucucucucudeanao31(), 0) then 
    requestControlOnce(veh)
    local veh = GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao)        
    ApplyForceToEntity(veh, 1, 0.0, 0.0, 15.0, 0.0, 0.0, 00.0, 0, 1, 0, 1, 0, 0)
    end  
end

function asdkjnjidasijasdihujdasiujcsadAlterar_a_Praca()
    local result =  KeyInput('Coloque a Placa Desejada', '', 8)
    local car = GetVehiclePedIsUsing(cucucucucucucucucucucucucucucucucudeanao31())
    SetVehicleNumberPlateText(car, result) 
    Fufufufufu('Placa Alterada: '..result..'')
end

function asdkjnjidasijasdihujdasiujcsadReparar()
    SetVehicleOnGroundProperly(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), 0))
    SetVehicleFixed(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao))
    SetVehicleDirtLevel(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao), 0.0)
    SetVehicleLights(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao), 0)
    SetVehicleBurnout(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao), cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleLightsMode(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao), 0)
end  

function asdkjnjidasijasdihujdasiujcsadTunar()
    local p = cucucucucucucucucucucucucucucucucudeanao31()
    local veh = GetVehiclePedIsIn(p, cucucucucucucucucucucucucucucucucudeanao) 
    SetVehicleModKit(veh, 0)
    SetVehicleWheelType(veh, 7)
    SetVehicleMod(veh, 0, GetNumVehicleMods(veh, 0) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 1, GetNumVehicleMods(veh, 1) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 2, GetNumVehicleMods(veh, 2) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 3, GetNumVehicleMods(veh, 3) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 4, GetNumVehicleMods(veh, 4) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 5, GetNumVehicleMods(veh, 5) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 6, GetNumVehicleMods(veh, 6) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 7, GetNumVehicleMods(veh, 7) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 8, GetNumVehicleMods(veh, 8) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 9, GetNumVehicleMods(veh, 9) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 10, GetNumVehicleMods(veh, 10) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 11, GetNumVehicleMods(veh, 11) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 12, GetNumVehicleMods(veh, 12) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 13, GetNumVehicleMods(veh, 13) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 15, GetNumVehicleMods(veh, 15) - 2, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 16, GetNumVehicleMods(veh, 16) - 1, cucucucucucucucucucucucucucucucucudeanao)
    ToggleVehicleMod(veh, 17, uouoasuaosufofuwgvvauvafvlav)
    ToggleVehicleMod(veh, 18, uouoasuaosufofuwgvvauvafvlav)
    ToggleVehicleMod(veh, 19, uouoasuaosufofuwgvvauvafvlav)
    ToggleVehicleMod(veh, 20, uouoasuaosufofuwgvvauvafvlav)
    ToggleVehicleMod(veh, 21, uouoasuaosufofuwgvvauvafvlav)
    ToggleVehicleMod(veh, 22, uouoasuaosufofuwgvvauvafvlav)
    SetVehicleXenonLightsColor(veh, 7)
    SetVehicleMod(veh, 25, GetNumVehicleMods(veh, 25) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 27, GetNumVehicleMods(veh, 27) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 28, GetNumVehicleMods(veh, 28) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 30, GetNumVehicleMods(veh, 30) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 33, GetNumVehicleMods(veh, 33) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 34, GetNumVehicleMods(veh, 34) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleMod(veh, 35, GetNumVehicleMods(veh, 35) - 1, cucucucucucucucucucucucucucucucucudeanao)
    SetVehicleWindowTint(veh, 1)
    SetVehicleTyresCanBurst(veh, cucucucucucucucucucucucucucucucucudeanao)
end

function asdkjnjidasijasdihujdasiujcsadAlterar_a_Cor()
    v.colors['Vehicle_Color_r'].value, v.colors['Vehicle_Color_g'].value, v.colors['Vehicle_Color_b'].value = ColorPicker()
    SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(cucucucucucucucucucucucucucucucucudeanao31(-1)),v.colors['Vehicle_Color_r'].value,v.colors['Vehicle_Color_g'].value,v.colors['Vehicle_Color_b'].value)
    SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(cucucucucucucucucucucucucucucucucudeanao31(-1)),v.colors['Vehicle_Color_r'].value,v.colors['Vehicle_Color_g'].value,v.colors['Vehicle_Color_b'].value)
end

function UnlockVehicle()
    local vehicle = GetClosestVehicle(GetEntityCoords(cucucucucucucucucucucucucucucucucudeanao31()), 25.0, 0, 70)
    if DoesEntityExist(vehicle) then
        SetVehicleDoorsLocked(vehicle, 1)
        SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), cucucucucucucucucucucucucucucucucudeanao)
        SetVehicleDoorsLockedForAllPlayers(vehicle, cucucucucucucucucucucucucucucucucudeanao)
    end
end

function lockVehicle()
    local vehicle = GetClosestVehicle(GetEntityCoords(cucucucucucucucucucucucucucucucucudeanao31()), 25.0, 0, 70)
    if DoesEntityExist(vehicle) then
        SetVehicleDoorsLocked(vehicle, 1)
        SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), uouoasuaosufofuwgvvauvafvlav)
        SetVehicleDoorsLockedForAllPlayers(vehicle, uouoasuaosufofuwgvvauvafvlav)
    end
end

KeyInput = function(TextEntry, ExampleText, MaxStringLength)
        AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
        DisplayOnscreenKeyboard(1, 'FMMC_KEY_TIP1', '', ExampleText, '', '', '', MaxStringLength)
        blockinput = uouoasuaosufofuwgvvauvafvlav
    
        while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
            Wait(0)
        end
    
        if UpdateOnscreenKeyboard() ~= 2 then
            local Kboard = GetOnscreenKeyboardResult()
            Wait(500)
            blockinput = cucucucucucucucucucucucucucucucucudeanao
            return Kboard
        else
            Wait(500)
            blockinput = cucucucucucucucucucucucucucucucucudeanao
            return Kboard
        end
    end
  function hovered (x, y, w, h)
      local mousex, mousey = GetNuiCursorPosition() 
      if mousex >= x and mousex <= x + w and mousey >= y and mousey <= y + h then 
          return uouoasuaosufofuwgvvauvafvlav 
      else 
          return cucucucucucucucucucucucucucucucucudeanao 
      end 
  end

local function GiveWeaponComponentToPed(hash) 
    GiveWeaponComponentToPed(cucucucucucucucucucucucucucucucucudeanao31(), GetSelectedPedWeapon(cucucucucucucucucucucucucucucucucudeanao31()), hash) 
end

function esp_box_tec_cor()
end

local function toggleHandcuff()
    vRP.toggleHandcuff()
end

local function asihdoadh(target)
    Citizen.CreateThread(function()
        if IsPedInAnyVehicle(GetPlayerPed(target), uouoasuaosufofuwgvvauvafvlav) then
            local veh = GetVehiclePedIsIn(GetPlayerPed(target), uouoasuaosufofuwgvvauvafvlav)
            while not NetworkHasControlOfEntity(veh) do
                NetworkRequestControlOfEntity(veh)
                Wait(0)
            end
            InvokeSetEntityAsMissionEntity(veh, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
            DeleteEntity(veh)
        end
        local count = -0.2
        for b = 1, 3 do
            local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(target), uouoasuaosufofuwgvvauvafvlav))
            local pp = ClonePed(GetPlayerPed(target), 1, 1, 1)
            SetEntityAsMissionEntity(bD, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
            AttachEntityToEntity(pp, GetPlayerPed(target), 4103, 11816, count, 0.00, 0.0, 0.0, 0.0, 0.0, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao, 2, uouoasuaosufofuwgvvauvafvlav)
            ClearPedTasks(GetPlayerPed(target))
            TaskPlayAnim(GetPlayerPed(target), 'rcmpaparazzo_2', 'shag_loop_poppy', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
            SetPedKeepTask(pp)
            TaskPlayAnim(pp, 'rcmpaparazzo_2', 'shag_loop_a', 2.0, 2.5, -1, 49, 0, 0, 0, 0)
            SetEntityInvincible(pp, uouoasuaosufofuwgvvauvafvlav)
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
DrawTextB = function(dhdsahdashiuadshuidsauih, x, y, _outl, size, font, centre) SetTextFont(0) if _outl then SetTextOutline(uouoasuaosufofuwgvvauvafvlav) end if tonumber(font) ~= nil then SetTextFont(font) end SetTextCentre(centre) SetTextScale(100.0, size or 0.23) BeginTextCommandDisplayText('STRING') AddTextComponentSubstringWebsite(dhdsahdashiuadshuidsauih) EndTextCommandDisplayText(x, y) end
local function ataquedefacas()
local coord = GetEntityCoords(GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss))
local pullp = {
    'g_m_importexport_01',
}
local gangn = (pullp[cucucucucucucucucucucucucucucucucudeanao33.random(#pullp)])
if not HasModelLoaded(sapdadaodja(gangn)) then 
    RequestModel(sapdadaodja(gangn))
end 
local spawngang = CreatePed(3, sapdadaodja(gangn), coord, 1, 1, 1) 
sdufbsyufbsyfd(spawngang, sapdadaodja('weapon_dagger'), 200, 1, 1)
TaskCombatPed(spawngang, GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss), 0, 16)
end


local function GetRamedByVehicle(veh, playa)
    Citizen.Wait(1000)
    Citizen.CreateThread(function()
        if veh then
            RequestModel(sapdadaodja(veh))
            while not HasModelLoaded(sapdadaodja(veh)) do
                Wait(0)
            end	
            
            local coords = GetEntityCoords(GetPlayerPed(playa))
            local veh = CreateVehicle(sapdadaodja(veh), coords.x, coords.y, coords.z , 1, 1, 1)
            local rotation = GetEntityRotation(playa)
            
            SetVehicleEngineOn(veh, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
            SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, uouoasuaosufofuwgvvauvafvlav)
            --SetVehicleForwardSpeed(veh, 500.0)
        end
    end)
end




local function fmotorkkkk()
    local ped = GetPlayerPed(pped)
    local vehicle = GetVehiclePedIsIn(ped)
    SetVehicleEngineOn(vehicle, cucucucucucucucucucucucucucucucucudeanao, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)    
    SetVehicleEngineHealth(vehicle, -100000)   
    SetVehicleEngineOn(vehicle, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)  
    SetVehicleEngineOn(vehicle, cucucucucucucucucucucucucucucucucudeanao, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)    
    SetVehicleEngineHealth(vehicle, -100000)   
    SetVehicleEngineOn(vehicle, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)  
    SetVehicleEngineOn(vehicle, cucucucucucucucucucucucucucucucucudeanao, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)    
    SetVehicleEngineHealth(vehicle, -100000)   
    SetVehicleEngineOn(vehicle, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)  
    SetVehicleEngineOn(vehicle, cucucucucucucucucucucucucucucucucudeanao, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)    
    SetVehicleEngineHealth(vehicle, -100000)   
    SetVehicleEngineOn(vehicle, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)  
end

local function fmotor2kkkk()
        if IsPedSittingInVehicle(GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss), 
        GetVehiclePedIsIn(GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss), cucucucucucucucucucucucucucucucucudeanao)) then
        local coords = GetEntityCoords(GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss))
        AddExplosion(coords.x, coords.y, coords.z, 9, 100.0, uouoasuaosufofuwgvvauvafvlav, cucucucucucucucucucucucucucucucucudeanao, 0.0)
    end
end

function copiarroupa()
    model = GetEntityModel(GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss))
    ClonePedToTarget(GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss), cucucucucucucucucucucucucucucucucudeanao31())
end

function explode2()
    local player = cucucucucucucucucucucucucucucucucudeanao31ss
    AddExplosion(GetEntityCoords(GetPlayerPed(player)), 6, 1000.0, uouoasuaosufofuwgvvauvafvlav, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)
end

function tazez()
    local ped = GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss)
    local bonecoords = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local bonecoords2 = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    ShootSingleBulletBetweenCoords(bonecoords,bonecoords2,1,uouoasuaosufofuwgvvauvafvlav,sapdadaodja('WEAPON_STUNGUN'),cucucucucucucucucucucucucucucucucudeanao31(),uouoasuaosufofuwgvvauvafvlav,cucucucucucucucucucucucucucucucucudeanao,0.1)
end

function SetCurrentAmmo(ammo)
    local weaponnow = GetSelectedPedWeapon(cucucucucucucucucucucucucucucucucudeanao31())
    SetPedAmmo(cucucucucucucucucucucucucucucucucudeanao31(), weaponnow, ammo)
end

function explode()
    local player = cucucucucucucucucucucucucucucucucudeanao31ss
    AddExplosion(GetEntityCoords(GetPlayerPed(player)), 3, 1000.0, uouoasuaosufofuwgvvauvafvlav, cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)
end

local function GetRamedByVehiclee(veh, playa)
    Citizen.CreateThread(function()
        if veh then
            RequestModel(sapdadaodja(veh))
            while not HasModelLoaded(sapdadaodja(veh)) do
                Wait(0)
            end	
            
            local coords = GetEntityCoords(GetPlayerPed(playa))
            local veh = CreateVehicle(sapdadaodja(veh), coords.x, coords.y, coords.z , 1, 1, 1)
            local rotation = GetEntityRotation(playa)
            
            SetVehicleEngineOn(veh, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
            SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, uouoasuaosufofuwgvvauvafvlav)
        end
    end)
end

CreateAnDui = function(url, w, h) return CreateDui(tostring(url), w, h, Citizen.ReturnResultAnyway(), Citizen.ResultAsLong())  end

local function destrirveh()
        if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer, 0)) then 
        local veh = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), true)
        if 	NetworkRequestControlOfEntity(veh) then
            SetEntityAsMissionEntity(veh, false, false)
            StartVehicleAlarm(veh)
            PopOutVehicleWindscreen(veh)
            SmashVehicleWindow(veh, 0)SmashVehicleWindow(veh, 1)SmashVehicleWindow(veh, 2)SmashVehicleWindow(veh, 3)
            SetVehicleTyreBurst(veh, 0, true, 1000.0)
            SetVehicleTyreBurst(veh, 1, true, 1000.0)
            SetVehicleTyreBurst(veh, 2, true, 1000.0)
            SetVehicleTyreBurst(veh, 3, true, 1000.0)
            SetVehicleTyreBurst(veh, 4, true, 1000.0)
            SetVehicleTyreBurst(veh, 5, true, 1000.0)
            SetVehicleTyreBurst(veh, 4, true, 1000.0)
            SetVehicleTyreBurst(veh, 7, true, 1000.0)
            SetVehicleDoorBroken(veh, 0, true)
            SetVehicleDoorBroken(veh, 1, true)
            SetVehicleDoorBroken(veh, 2, true)
            SetVehicleDoorBroken(veh, 3, true)
            SetVehicleDoorBroken(veh, 4, true)
            SetVehicleDoorBroken(veh, 5, true)
            SetVehicleDoorBroken(veh, 6, true)
            SetVehicleDoorBroken(veh, 7, true)
        end
    end
end



local function bmxxx() 
    
    GetRamedByVehiclee('Cargoplane', cucucucucucucucucucucucucucucucucudeanao31ss)
    GetRamedByVehiclee('Cargoplane', cucucucucucucucucucucucucucucucucudeanao31ss)
    GetRamedByVehiclee('Cargoplane', cucucucucucucucucucucucucucucucucudeanao31ss)
end



local function removerarmas()
    RemoveAllPedWeapons(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao)
end


function meni()
    drag_x = dasjiodasiojdjiasdsaijo.MenuX-0.5
    drag_y = dasjiodasiojdjiasdsaijo.MenuY-0.5
    drag_x2 = dasjiodasiojdjiasdsaijo.MenuX2-0.5
    drag_y2 = dasjiodasiojdjiasdsaijo.MenuY2-0.5
    local res_w, res_h = dasjiodasiojdjiasdsaijo.MenuW-0.5, dasjiodasiojdjiasdsaijo.MenuH-0.5
    local drag_x, drag_y = dasjiodasiojdjiasdsaijo.MenuX-0.5, dasjiodasiojdjiasdsaijo.MenuY-0.5
    biduahdiuabdiaudbi()

   																																																																													 buiddihushuiasddhuihui('~w~Birulinha ~w~Menu',0.3726+drag_x,0.25+drag_y,1,0.246, 0.780)
     hiujdsaiuhsdaihudas(0.5+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.3200+res_w, 0.364+res_h, 13, 13, 13, 230) -- Background (Centro)

    hiujdsaiuhsdaihudas(0.5010+drag_x+res_w/2, 0.26+drag_y+res_h/2, 0.2610+res_w, 0.013+res_h, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 0) -- Cima

    hiujdsaiuhsdaihudas(0.5+drag_x+res_w/2, 0.666+drag_y+res_h/2, 0.29+res_w, 0.002+res_h, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 0) -- Baixo

    hiujdsaiuhsdaihudas(0.6156+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.0012+res_w, 0.369+res_h, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 0) -- Direirta

    hiujdsaiuhsdaihudas(0.3702+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.0022+res_w, 0.364+res_h, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 0) -- Esquerda


    
    hiujdsaiuhsdaihudas(0.315+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.05+res_w, 0.360+res_h, 13, 13, 13, 0) -- Background (Esquerda)

    hiujdsaiuhsdaihudas(0.3285+drag_x+res_w/2, 0.46+drag_y+res_h/2, 0.0706+res_w, 0.036+res_h, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 0) -- Cima

    hiujdsaiuhsdaihudas(0.328+drag_x+res_w/2, 0.626+drag_y+res_h/2, 0.06+res_w, 0.002+res_h, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 0) -- Baixo

    hiujdsaiuhsdaihudas(0.3574+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.0012+res_w, 0.364+res_h, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 0) -- Direirta

    hiujdsaiuhsdaihudas(0.2978+drag_x+res_w/2, 0.444+drag_y+res_h/2, 0.0012+res_w, 0.364+res_h, iajdsasdjaoidjaiodj.r, iajdsasdjaoidjaiodj.g, iajdsasdjaoidjaiodj.b, 0) -- Esquerda
                                                                                                                                                                                                                                                                                                                    


	if sdciojdfiojfsdioj('Player', '~p~Player',lokiza1ob1yp3as11111111,0.3930+drag_x,0.24+drag_y) then sdadadadsad = 'Player' end

    if sdciojdfiojfsdioj('Veiculos', '~p~Veiculos',lokiza1ob1yp3as11111111,0.4350+drag_x,0.24+drag_y) then sdadadadsad = 'Veiculos' end

    if sdciojdfiojfsdioj('Armas', '~p~Armas',lokiza1ob1yp3as11111111,0.4850+drag_x,0.24+drag_y) then sdadadadsad = 'Armas' end

    if sdciojdfiojfsdioj('Visual', '~p~Visual',lokiza1ob1yp3as11111111,0.5250+drag_x,0.24+drag_y) then sdadadadsad = 'Visual' end

    if sdciojdfiojfsdioj('Online', '~p~Online',lokiza1ob1yp3as11111111,0.5600+drag_x,0.24+drag_y) then sdadadadsad = 'Online' end
    
    if sdciojdfiojfsdioj('Troll', '~p~Troll',lokiza1ob1yp3as11111111,0.5900+drag_x,0.24+drag_y) then sdadadadsad = 'Troll' end

    if sdciojdfiojfsdioj('Config', '~p~Config',lokiza1ob1yp3as11111111,0.6300+drag_x,0.24+drag_y) then sdadadadsad = 'Config' end

	if sdadadadsad == 'Player' then if sdciojdfiojfsdioj2('Player', 'Player',uouoasuaosufofuwgvvauvafvlav,0.+drag_x,0.999+drag_y) then sdadadadsad = 'Player' end

    if Surf_Botao('Reviver', 0.384, 0.288) then asdkjnjidasijasdihujdasiujcsadhuaisodhaiudahd() end

    if Surf_Botao('Curar', 0.384, 0.308) then asdkjnjidasijasdihujdasiujcsadCurar() end

    if Surf_Botao('Suicidio', 0.384, 0.328) then asdkjnjidasijasdihujdasiujcsadSuicidio() end

    if Surf_Botao('Limpar Sangue', 0.384, 0.348) then ClearPedBloodDamage(cucucucucucucucucucucucucucucucucudeanao31())  end

    if Surf_Botao('TP Waypoint', 0.384, 0.368) then asdkjnjidasijasdihujdasiujcsadTPway() end

    if Surf_Botao('~r~Algemar ~w~/ ~g~Desalgemar', 0.384, 0.388) then toggleHandcuff() end






    if asdkjnjidasijasdihujdasiujcsadCheckBox('Noclip', 0.52+drag_x,0.368+drag_y,0.368+drag_y, Shit_iusadbaiusdbasidb) then 
        Shit_iusadbaiusdbasidb = not Shit_iusadbaiusdbasidb 
        if Shit_iusadbaiusdbasidb then
            SetEntityVisible(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), 0), cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)
            SetEntityVisible(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)
            FreezeEntityPosition(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31()), uouoasuaosufofuwgvvauvafvlav)
            FreezeEntityPosition(cucucucucucucucucucucucucucucucucudeanao31(), uouoasuaosufofuwgvvauvafvlav)
            SetEntityCollision(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31()), cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)
            SetEntityCollision(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)
			SetEntityRotation(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), 0), GetGameplayCamRot(2), 2, 1)
        else
            SetEntityVisible(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), 0), uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
            SetEntityVisible(cucucucucucucucucucucucucucucucucudeanao31(), uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
            FreezeEntityPosition(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31()), cucucucucucucucucucucucucucucucucudeanao)
            FreezeEntityPosition(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao)
            SetEntityCollision(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31()), uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
            SetEntityCollision(cucucucucucucucucucucucucucucucucudeanao31(), uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
			SetEntityRotation(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), 0), GetGameplayCamRot(2), 2, 1)
        end
    end

    asdkjnjidasijasdihujdasiujcsadslider(Sliders['iusadbaiusdbasidb_Velocidade'], 0.512, 0.388, 2)




elseif sdadadadsad == 'nilsun' then

    SetTextColour(iajdsasdjaoidjaiodj.r,iajdsasdjaoidjaiodj.g,iajdsasdjaoidjaiodj.b,255)

    																																																																																																																																																																											if Surf_Botao('Birulinha M~s~e~s~n~s~u~w~', 0.384, 0.288) then end
    
    																																																																																																																																																																						if Surf_Botao('~w~D~w~e~w~s~w~e~w~n~w~v~w~o~w~l~w~v~w~i~w~d~w~o P~w~o~w~r:  ~w~$ Birulinha', 0.384, 0.308) then end
    	

elseif sdadadadsad == 'Veiculos' then if sdciojdfiojfsdioj2('Veiculos', 'Veiculos',uouoasuaosufofuwgvvauvafvlav,0.0+drag_x,0.999+drag_y) then sdadadadsad = 'Veiculos' end

    if Surf_Botao('Reparar/Desvirar', 0.384, 0.288) then asdkjnjidasijasdihujdasiujcsadReparar() end

    if Surf_Botao('Tunar no Maximo', 0.384, 0.308) then asdkjnjidasijasdihujdasiujcsadTunar() end

    if Surf_Botao('Deletar', 0.384, 0.328) then DeleteEntity(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31())) end

    if Surf_Botao('Destrancar', 0.384, 0.348) then UnlockVehicle() end

    if Surf_Botao('Trancar', 0.384, 0.368) then lockVehicle() end

    if Surf_Botao('Alterar a Cor', 0.384, 0.388) then asdkjnjidasijasdihujdasiujcsadAlterar_a_Cor() end 

    if Surf_Botao('Alterar a Placa', 0.384, 0.408) then asdkjnjidasijasdihujdasiujcsadAlterar_a_Praca() end

    if Surf_Botao('TP Veiculo Proximo', 0.384, 0.428) then asdkjnjidasijasdihujdasiujcsadTPveh() end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Boost Buzina', 0.392+drag_x,0.548+drag_y,0.548+drag_y, HornBoost) then HornBoost = not HornBoost end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Nao Cair da Bike/Moto', 0.392+drag_x,0.568+drag_y,0.568+drag_y, puduronaocair) then puduronaocair = not puduronaocair end


	elseif sdadadadsad == 'Armas' then if sdciojdfiojfsdioj2('Armas', 'Armas',uouoasuaosufofuwgvvauvafvlav,0.0+drag_x,0.999+drag_y) then sdadadadsad = 'Armas' end
    if Surf_Botao('SMG  ~r~Risco' , 0.384, 0.348) then sdufbsyufbsyfd(BYbirulinharp31(), sapdadaodja('weapon_assaultsmg'), BYbirulinharp, BYbirulinharp, BYbirulinharp)  end

    if Surf_Botao('Puxar arma  ~r~Risco', 0.384, 0.368) then local weapon_disygo9dfuigdsf = KeyInput("Weapon Name", "WEAPON_", 100)
        if weapon_disygo9dfuigdsf ~= nil then
            Citizen.InvokeNative(0xBF0FD6E56C964FCB, Citizen.InvokeNative(0xD80958FC74E988A6), Citizen.InvokeNative(0xD24D37CC275948CC, string.upper(weapon_disygo9dfuigdsf)), 1000, false, false)
        end

    end
    if Surf_Botao('Armas ', 0.384, 0.388) then TriggerEvent('ponto:daarmamento', 'grupo7') end

    if Surf_Botao('Remover Armas', 0.384, 0.288) then removerarmas() end

    if Surf_Botao('Remover Munição', 0.384, 0.308) then SetCurrentAmmo(0)  end

    if Surf_Botao('Encher Munição', 0.384, 0.328) then SetCurrentAmmo(155) end


   
    elseif sdadadadsad == 'Visual' then if sdciojdfiojfsdioj2('Visual', 'Visual',uouoasuaosufofuwgvvauvafvlav,0.0+drag_x,0.999+drag_y) then sdadadadsad = 'Visual' end
    
    if asdkjnjidasijasdihujdasiujcsadCheckBox('ESP Box', 0.392+drag_x,0.288+drag_y,0.288+drag_y, espbox) then espbox = not espbox end 
    if colorpicker_botao(0.346, 0.291, sdhuihudisahuidas.r, sdhuihudisahuidas.g, sdhuihudisahuidas.b, 255) then 

        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        sdhuihudisahuidas = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}

    end  

    if asdkjnjidasijasdihujdasiujcsadCheckBox('ESP Skeletons', 0.392+drag_x,0.308+drag_y,0.308+drag_y, espskel) then espskel = not espskel end 
    if colorpicker_botao(0.346, 0.311,dasihbudsauihdsahuidsuh.r, dasihbudsauihdsahuidsuh.g, dasihbudsauihdsahuidsuh.b, 255) then 

        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        dasihbudsauihdsahuidsuh = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}

    end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('ESP Names', 0.392+drag_x,0.328+drag_y,0.328+drag_y, espnames) then espnames = not espnames end 
    if colorpicker_botao(0.346, 0.332,dsajiodsaijsdaui.r, dsajiodsaijsdaui.g, dsajiodsaijsdaui.b, 255) then 

        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        dsajiodsaijsdaui = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}

    end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('ESP Lines', 0.392+drag_x,0.348+drag_y,0.348+drag_y, esplines) then esplines = not esplines end 
    if colorpicker_botao(0.346, 0.352,dsajiojidsajids.r, dsajiojidsajids.g, dsajiojidsajids.b, 255) then 

        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        dsajiojidsajids = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}

    end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('ESP Veiculos', 0.392+drag_x,0.368+drag_y,0.368+drag_y, espvehs) then espvehs = not espvehs end 
    if colorpicker_botao(0.346, 0.372,asdujihihoasdhuisda.r, asdujihihoasdhuisda.g, asdujihihoasdhuisda.b, 255) then 

        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        asdujihihoasdhuisda = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}

    end

    if Surf_Botao('ESP Distancia', 0.384, 0.391) then end
    asdkjnjidasijasdihujdasiujcsadslider(Sliders['esp_distancia'], 0.385, 0.408, 2)



    elseif sdadadadsad == 'Online' then if sdciojdfiojfsdioj2('Online', 'Online',uouoasuaosufofuwgvvauvafvlav,0.0+drag_x,0.999+drag_y) then sdadadadsad = 'Online' end

    if Surf_Botao('Molotov Player  ~r~Risco', 0.384, 0.288) then explode() end

    if Surf_Botao('Explodir Player ~p~2  ~r~Risco', 0.384, 0.308) then explode2() end

    if Surf_Botao('Taze Player', 0.384, 0.328) then tazez() end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Taze Player ~b~Loop ', 0.392+drag_x,0.345+drag_y,0.345+drag_y, tazezz) then tazezz = not tazezz end 

    if Surf_Botao('Npcs Grudados no Player', 0.384, 0.368) then asihdoadh(cucucucucucucucucucucucucucucucucudeanao31ss) end

    if Surf_Botao('Npcs Armados Player  ~r~Risco', 0.384, 0.388) then asdhaoidado() asdhaoidado2() asdhaoidado3() end 

    if Surf_Botao('Mae do Adm Armada Player  ~r~Risco', 0.384, 0.408) then maedoadmgordinha(cucucucucucucucucucucucucucucucucudeanao31ss) end

    if Surf_Botao('Juggernaut Armado ~r~Risco', 0.384, 0.428) then  juggernautpkrl(SelectedPlayer) juggernautpkrl2 (SelectedPlayer) juggernautpkrl3 (SelectedPlayer) end

    if Surf_Botao('Cargoplane Player', 0.384, 0.448) then GetRamedByVehicle('CARGOPLANE', cucucucucucucucucucucucucucucucucudeanao31ss) end

    if Surf_Botao('Explodir Motor do Veiculo  ~r~Risco', 0.384, 0.468) then fmotor2kkkk(cucucucucucucucucucucucucucucucucudeanao31ss) end

    if Surf_Botao('3 Cargoplane Player', 0.384, 0.488) then bmxxx(cucucucucucucucucucucucucucucucucudeanao31ss) end

    if Surf_Botao('Destroir Veiculo', 0.384, 0.508) then destrirveh(cucucucucucucucucucucucucucucucucudeanao31ss) end

    if Surf_Botao('Copiar Roupa', 0.384, 0.528) then copiarroupa(cucucucucucucucucucucucucucucucucudeanao31ss) end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Espectar Player ~r~Risco', 0.392+drag_x,0.546+drag_y,0.546+drag_y, spectar) then spectar = not spectar end

    --  LISTA DE PLAYERS

    local drag_X = dasjiodasiojdjiasdsaijo.MenuX - 0.5
    local drag_Y = dasjiodasiojdjiasdsaijo.MenuY - 0.5
    local dW = dasjiodasiojdjiasdsaijo.MenuW - 0.5
    local dH = dasjiodasiojdjiasdsaijo.MenuH - 0.5
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
            if v == cucucucucucucucucucucucucucucucucudeanao31ss then 
                SetTextColour(iajdsasdjaoidjaiodj.r,iajdsasdjaoidjaiodj.g,iajdsasdjaoidjaiodj.b,255)
                    if Players_Surf_Botao('~w~[~s~Sel~w~] ~w~'..GetPlayerName(v), 0.563, y-0.12) then 
                    cucucucucucucucucucucucucucucucucudeanao31ss = v
                end
            else
                SetTextColour(iajdsasdjaoidjaiodj.r,iajdsasdjaoidjaiodj.g,iajdsasdjaoidjaiodj.b,255)
                    if Players_Surf_Botao('~w~[~c~Player~w~] ~w~'..GetPlayerName(v), 0.563, y-0.12) then 
                    cucucucucucucucucucucucucucucucucudeanao31ss = v
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


    elseif sdadadadsad == 'Troll' then if sdciojdfiojfsdioj2('Troll', 'Troll',uouoasuaosufofuwgvvauvafvlav,0.0+drag_x,0.999+drag_y) then sdadadadsad = 'Troll' end
    if asdkjnjidasijasdihujdasiujcsadCheckBox('Freecam  ~r~Risco', 0.392+drag_x,0.288+drag_y,0.288+drag_y, sdfijsdfjidfsjinm) then sdfijsdfjidfsjinm = not sdfijsdfjidfsjinm end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Bugar Carros', 0.392+drag_x,0.308+drag_y,0.308+drag_y, lolcarrao) then lolcarrao = not lolcarrao end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Explodir ~g~Carros ~b~Loop', 0.392+drag_x,0.328+drag_y,0.328+drag_y, explodevehicles  ) then explodevehicles   = not explodevehicles   end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Estragar ~g~Carros ~b~Loop', 0.477+drag_x,0.328+drag_y,0.328+drag_y, fuckallcars  ) then fuckallcars   = not fuckallcars   end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Veiculos Para O Lado',  0.477+drag_x,0.290+drag_y,0.328+drag_y, LOLcarao  ) then LOLcarao   = not LOLcarao  end

    if asdkjnjidasijasdihujdasiujcsadCheckBox('Veiculos Pulando',  0.477+drag_x,0.310+drag_y,0.328+drag_y, lolcars ) then lolcars  = not lolcars  lolcarsww   = not lolcarsww   lolcarszz    = not lolcarszz  lolcarsaa     = not lolcarsaa  lolcars44      = not lolcars44 end


    
    elseif sdadadadsad == 'Config' then if sdciojdfiojfsdioj2('Config', 'Config',uouoasuaosufofuwgvvauvafvlav,0.0+drag_x,0.999+drag_y) then sdadadadsad = 'Config' end

    if Surf_Botao('Bind Noclip ~c~'.. iusadbaiusdbasidb['Label'], 0.384, 0.288) then
        bindzinha()
        local value, label = bindzinha()
        iusadbaiusdbasidb['Label'] = label
        iusadbaiusdbasidb['Value'] = value
    end
    if Surf_Botao('Bind Reviver  ~c~'.. huaisodhaiudahd['Label'], 0.384, 0.308) then
        bindzinha()
        local value, label = bindzinha() 
        huaisodhaiudahd['Label'] = label
        huaisodhaiudahd['Value'] = value
    end

    if Surf_Botao('Bind Reparar Veiculo  ~c~'.. asoidhasdaosdha['Label'], 0.384, 0.328) then
        bindzinha()
        local value, label = bindzinha()
        asoidhasdaosdha['Label'] = label
        asoidhasdaosdha['Value'] = value
    end


    if Surf_Botao('Bind Abrir Menu  ~c~'.. ijnodsjndksasdjnia['Label'], 0.384, 0.348) then 
        bindzinha()
        local value, label = bindzinha()
        ijnodsjndksasdjnia['Label'] = label
        ijnodsjndksasdjnia['Value'] = value
    end

    if Surf_Botao('Bind Abrir Menu 2  ~c~'.. ijnodsjndksasdjnia2['Label'], 0.384, 0.368) then 
        bindzinha()
        local value, label = bindzinha()
        ijnodsjndksasdjnia2['Label'] = label
        ijnodsjndksasdjnia2['Value'] = value
    end


    if Surf_Botao('Alterar a Cor do Menu', 0.384, 0.388) then 
        h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
        iajdsasdjaoidjaiodj = {r = h.ThisIsSliders[7].value, g = h.ThisIsSliders[8].value, b = h.ThisIsSliders[9].value}
    end
    if Surf_Botao('~r~Desinjetar', 0.384, 0.408) then 
        asdhasiduhiu = cucucucucucucucucucucucucucucucucudeanao
    end
end
local x, y = GetNuiCursorPosition() local x_ez, y_ez = GetActiveScreenResolution() local cursorX, cursorY = x / x_ez, y / y_ez
dsajioasdiasiojjoi('^', cursorX, cursorY, 0.560, 0, uouoasuaosufofuwgvvauvafvlav, 255, 255, 255)
end



Citizen.CreateThread(function()
	
	while asdhasiduhiu do
		Wait(0)

function RequestControlOnce(entity)
    if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
        return uouoasuaosufofuwgvvauvafvlav
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), uouoasuaosufofuwgvvauvafvlav)
    return NetworkRequestControlOfEntity(entity)
end

if tazezz then
    local ped = GetPlayerPed(cucucucucucucucucucucucucucucucucudeanao31ss)
    local bonecoords = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local bonecoords2 = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    ShootSingleBulletBetweenCoords(bonecoords,bonecoords2,1,uouoasuaosufofuwgvvauvafvlav,sapdadaodja('WEAPON_STUNGUN'),cucucucucucucucucucucucucucucucucudeanao31(),uouoasuaosufofuwgvvauvafvlav,cucucucucucucucucucucucucucucucucudeanao,0.1)
end

if HornBoost and IsPedInAnyVehicle(cucucucucucucucucucucucucucucucucudeanao31(-1), uouoasuaosufofuwgvvauvafvlav) then
    if IsControlPressed(1, 38) then
    Citizen.InvokeNative(0xAB54A438726D25D5, GetVehiclePedIsUsing(cucucucucucucucucucucucucucucucucudeanao31(-1)), 80+0.0)
    end
end
if InfiniteCombatRoll then
for i = 0, 3 do
StatSetInt(sapdadaodja('mp' .. i .. '_shooting_ability'), 9999, uouoasuaosufofuwgvvauvafvlav)
StatSetInt(sapdadaodja('sp' .. i .. '_shooting_ability'), 9999, uouoasuaosufofuwgvvauvafvlav)
end
else
for i = 0, 3 do
StatSetInt(sapdadaodja('mp' .. i .. '_shooting_ability'), 0, uouoasuaosufofuwgvvauvafvlav)
StatSetInt(sapdadaodja('sp' .. i .. '_shooting_ability'), 0, uouoasuaosufofuwgvvauvafvlav)
end
end

if puduronaocair then
    SetPedCanBeKnockedOffVehicle(cucucucucucucucucucucucucucucucucudeanao31(), uouoasuaosufofuwgvvauvafvlav)
else
    SetPedCanBeKnockedOffVehicle(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao)
end

if Super_Pulo then
    SetPedCanRagdoll(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao)
    if IsDisabledControlJustPressed(0, 22) then
        ApplyForceToEntity(cucucucucucucucucucucucucucucucucudeanao31(), 3, 0.0, 0.0, Sliders['Super_Pulo'].value, 0.0, 0.0, 0.0, 0, 0, 0, 1, 1, 1)
    end
end

if Super_Velocidade then
    if IsDisabledControlPressed(0, 34) or IsDisabledControlPressed(0, 33) or IsDisabledControlPressed(0, 32) or IsDisabledControlPressed(0, 35) then
        if IsPedRagdoll(cucucucucucucucucucucucucucucucucudeanao31()) then
            
        else
           SetEntityVelocity(
               cucucucucucucucucucucucucucucucucudeanao31(), 
               GetOffsetFromEntityInWorldCoords(
                   cucucucucucucucucucucucucucucucucudeanao31(), 
                   0.0, 
                   Sliders['Super_Velocidade'].value, 
                   GetEntityVelocity(cucucucucucucucucucucucucucucucucudeanao31())[3]
                ) - GetEntityCoords(
                    cucucucucucucucucucucucucucucucucudeanao31()
                )
            )
        end
    end
end

function camDirect()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(cucucucucucucucucucucucucucucucucudeanao31())
    local pitch = GetGameplayCamRelativePitch()
    local x = -cucucucucucucucucucucucucucucucucudeanao33.sin(heading * cucucucucucucucucucucucucucucucucudeanao33.pi / 180.0)
    local y = cucucucucucucucucucucucucucucucucudeanao33.cos(heading * cucucucucucucucucucucucucucucucucudeanao33.pi / 180.0)
    local z = cucucucucucucucucucucucucucucucucudeanao33.sin(pitch * cucucucucucucucucucucucucucucucucudeanao33.pi / 180.0)
    local len = cucucucucucucucucucucucucucucucucudeanao33.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    return x, y, z
end

local function ExplodePlayerLoop()

    CreateThread(function()

        while _use_explode_player_loop do

            for _, src in dict.pairs(self.PlayerCache) do

                if not _use_explode_player_loop then break end

                src = dict.tonumber(src)



                if src ~= self.NetworkID or self.Config.OnlineIncludeSelf then

                    self:GetFunction("AddExplosion")(self:GetFunction("GetOffsetFromEntityInWorldCoords")(self:GetFunction("GetPlayerPed")(src), 0.0, 0.0, 0.0), 34, 100000.0, true, false, 0.0)

                end



                Wait(1)

            end



            Wait(5)

        end

    end)

end

function requestControlOnce(entity)
    if NetworkHasControlOfEntity(entity) then
       return uouoasuaosufofuwgvvauvafvlav
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), uouoasuaosufofuwgvvauvafvlav)
    return NetworkRequestControlOfEntity(entity)
end



function getSeatPedIsIn(ped)
    if not IsPedInAnyVehicle(ped, cucucucucucucucucucucucucucucucucudeanao) then
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

if hiujhauisdadishu then
    local veh = GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), 0)
    ModifyVehicleTopSpeed(veh, 0.0 +Sliders['Acelerção'].value)
else
    ModifyVehicleTopSpeed(veh, cucucucucucucucucucucucucucucucucudeanao)
end

if lolcars then
    for vehicle in EnumerateVehicles() do
        RequestControlOnce(vehicle)
        ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
    end
end

if lolcarsww then
    for vehicle in EnumerateVehicles() do
        RequestControlOnce(vehicle)
        ApplyForceToEntity(vehicle, 4, 0.0, 0.0, 10000000.0, 1.0, 1.0, 1.0, 1, 1, 1, 1, 1, 1)
    end
end

if lolcarszz then
    for vehicle in EnumerateVehicles() do
        RequestControlOnce(vehicle)
        ApplyForceToEntity(vehicle, 3, 0.0, 0.0, -500000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
    end
end

if lolcarsaa then
    for vehicle in EnumerateVehicles() do
        RequestControlOnce(vehicle)
        ApplyForceToEntity(vehicle, 1, 5000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
    end
end

if lolcars44 then
    for vehicle in EnumerateVehicles() do
        RequestControlOnce(vehicle)
        ApplyForceToEntity(vehicle, 4, 0.0, 0.0, -50000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
    end
end

if fuckallcars then
    for playerVeh in EnumerateVehicles() do
      if (not IsPedAPlayer(GetPedInVehicleSeat(playerVeh, -1))) then
        SetVehicleHasBeenOwnedByPlayer(playerVeh, Pryorbypessed2)
        SetEntityAsMissionEntity(playerVeh, Pryorbypessed3, Pryorbypessed3)
        StartVehicleAlarm(playerVeh)
        DetachVehicleWindscreen(playerVeh)
        SmashVehicleWindow(playerVeh, 0)
        SmashVehicleWindow(playerVeh, 1)
        SmashVehicleWindow(playerVeh, 2)
        SmashVehicleWindow(playerVeh, 3)
        SetVehicleTyreBurst(playerVeh, 0, Pryorbypessed3, 1000.0)
        SetVehicleTyreBurst(playerVeh, 1, Pryorbypessed3, 1000.0)
        SetVehicleTyreBurst(playerVeh, 2, Pryorbypessed3, 1000.0)
        SetVehicleTyreBurst(playerVeh, 3, Pryorbypessed3, 1000.0)
        SetVehicleTyreBurst(playerVeh, 4, Pryorbypessed3, 1000.0)
        SetVehicleTyreBurst(playerVeh, 5, Pryorbypessed3, 1000.0)
        SetVehicleTyreBurst(playerVeh, 4, Pryorbypessed3, 1000.0)
        SetVehicleTyreBurst(playerVeh, 7, Pryorbypessed3, 1000.0)
        SetVehicleDoorBroken(playerVeh, 0, Pryorbypessed3)
        SetVehicleDoorBroken(playerVeh, 1, Pryorbypessed3)
        SetVehicleDoorBroken(playerVeh, 2, Pryorbypessed3)
        SetVehicleDoorBroken(playerVeh, 3, Pryorbypessed3)
        SetVehicleDoorBroken(playerVeh, 4, Pryorbypessed3)
        SetVehicleDoorBroken(playerVeh, 5, Pryorbypessed3)
        SetVehicleDoorBroken(playerVeh, 6, Pryorbypessed3)
        SetVehicleDoorBroken(playerVeh, 7, Pryorbypessed3)
        SetVehicleLights(playerVeh, 1)
        Citizen.InvokeNative(0x1FD09E7390A74D54, playerVeh, 1)
        SetVehicleNumberPlateTextIndex(playerVeh, 5)
        SetVehicleNumberPlateText(playerVeh, "67cnj087")
        SetVehicleDirtLevel(playerVeh, 10.0)
        SetVehicleModColor_1(playerVeh, 1)
        SetVehicleModColor_2(playerVeh, 1)
        SetVehicleCustomPrimaryColour(playerVeh, 255, 51, 255)
        SetVehicleCustomSecondaryColour(playerVeh, 255, 51, 255)
        SetVehicleBurnout(playerVeh, Pryorbypessed3)
      end
    end
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

if godgod then
    if GetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31()) < 200 and 200 then
        SetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31(), 200)
    end
end

if explodevehicles then
    for vehicle in EnumerateVehicles() do
      if (vehicle ~= GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2)) then
        NetworkRequestControlOfEntity(vehicle)
        NetworkExplodeVehicle(vehicle, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
      end
    end
  end

  if LOLcarao then
    for vehicle in EnumerateVehicles() do
        RequestControlOnce(vehicle)
        ApplyForceToEntity(vehicle, 1, 5000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
    end
end
  if lolcarrao then
    for vehicle in EnumerateVehicles() do
        RequestControlOnce(vehicle)
        ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
    end
end

  if explodevehicles then
    for vehicle in EnumerateVehicles() do
      if (vehicle ~= GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2)) then
        NetworkRequestControlOfEntity(vehicle)
        NetworkExplodeVehicle(vehicle, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
      end
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
            local cv = uouoasuaosufofuwgvvauvafvlav
            repeat
                coroutine.yield(ct)
                cv, ct = cq(cs)
            until not cv
            cu.destructor, cu.handle = cucucucucucucucucucucucucucucucucudeanao31s, cucucucucucucucucucucucucucucucucudeanao31s
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

if Aimlockfov then
    local fovn = (Sliders['AIM-FOV'].value / 1000)
    local nKDX, nKDY = 0.0, 0.0
    DrawSprite('thefov', 'sdjcircle', 0.5-nKDX, 0.5-nKDY, fovn, fovn * 1.8, 0.0, fov.r,fov.g, fov.b, 255)
end


if Aimlock then
    local FOV = (Sliders['AIM-FOV'].value / 1000)
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
        if (_x > 0.5 - ((FOV / 2)/0.5) and _x < 0.5 + ((FOV / 2)/0.5) and _y > 0.5 - ((FOV / 2)/0.5) and _y < 0.5 + ((FOV / 2)/0.5)) then
            if IsAimCamActive() then 
                SetGameplayCamRelativeRotation(roll, pitch, yaw)                        
            end
        end
    end
end

function bY(x, y, z, b7, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0.20, 0.20)
    SetTextColour(dsajiodsaijsdaui.r, dsajiodsaijsdaui.g, dsajiodsaijsdaui.b, 255)
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
            local dI = GetDistanceBetweenCoords(GetEntityCoords(cucucucucucucucucucucucucucucucucudeanao31()), dH)
            local dJ = Sliders['esp_distancia'].value + 0.0
            if dI <= dJ then
                local dK = GetPlayerPed(ct)
                local dL, dM, dN = table.unpack(GetEntityCoords(cucucucucucucucucucucucucucucucucudeanao31()))
                local x, y, z = table.unpack(GetEntityCoords(dK))
                local dd = ' ' .. GetPlayerName(ds[T]) .. ' ~w~[~s~' .. cucucucucucucucucucucucucucucucucudeanao33.floor(dI) .. ' M ~w~]'
                local dO = IsPlayerDead(dK)
                if GetEntityHealth(dK) <= 0 then
                    dO = uouoasuaosufofuwgvvauvafvlav
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
            ma = ped ~= cucucucucucucucucucucucucucucucucudeanao31()
        end
        local coordXMin = GetOffsetFromEntityInWorldCoords(ped, 0.4, 0.0, 0.9)
        local coordYPlus = GetOffsetFromEntityInWorldCoords(ped, -0.4, 0.0, -0.9)

        local bool, screenX, screenY = GetScreenCoordFromWorldCoord(coordXMin.x, coordXMin.y, coordXMin.z)
        local bool2, screenX2, screenY2 = GetScreenCoordFromWorldCoord(coordYPlus.x, coordYPlus.y, coordYPlus.z)
        local resX, resY = GetActiveScreenResolution()
        local coord = GetEntityCoords(ped)
        local x, y, z = coord.x, coord.y, coord.z
        local d = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), GetEntityCoords(ped), cucucucucucucucucucucucucucucucucudeanao)
        if d < Sliders['esp_distancia'].value then
            SetDrawOrigin(x, y, z, 0)
            local d = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), GetEntityCoords(ped), cucucucucucucucucucucucucucucucucudeanao)-(GetGameplayCamFov()-50.0)
            if mr and ma and bool and bool2 and not IsEntityDead(ped) and IsEntityOnScreen(ped)  then
                local cucucucucucucucucucucucucucucucucudeanao33 = (screenX - screenX2)
                local cucucucucucucucucucucucucucucucucudeanao332 = (screenY2 - screenY)
                
                if dsiojdsjiodiojadjioas then 
                    hiujdsaiuhsdaihudas(0.0, -cucucucucucucucucucucucucucucucucudeanao332/2, cucucucucucucucucucucucucucucucucudeanao33, 3/resY, 1, 1, 1, 255)
                    hiujdsaiuhsdaihudas(0.0, cucucucucucucucucucucucucucucucucudeanao332/2, cucucucucucucucucucucucucucucucucudeanao33, 3/resY, 1, 1, 1, 255)
                    hiujdsaiuhsdaihudas(cucucucucucucucucucucucucucucucucudeanao33/2, 0.0, 3/resX, screenY2 - screenY, 1, 1, 1, 255)
                    hiujdsaiuhsdaihudas(-cucucucucucucucucucucucucucucucucudeanao33/2, 0.0, 3/resX, screenY2 - screenY, 1, 1, 1, 255)
                    hiujdsaiuhsdaihudas(0.0, -cucucucucucucucucucucucucucucucucudeanao332/2, cucucucucucucucucucucucucucucucucudeanao33, 1/resY,sdhuihudisahuidas.r, sdhuihudisahuidas.g, sdhuihudisahuidas.b, 255)
                    hiujdsaiuhsdaihudas(0.0, cucucucucucucucucucucucucucucucucudeanao332/2, cucucucucucucucucucucucucucucucucudeanao33, 1/resY,sdhuihudisahuidas.r, sdhuihudisahuidas.g, sdhuihudisahuidas.b, 255)
                    hiujdsaiuhsdaihudas(cucucucucucucucucucucucucucucucucudeanao33/2, 0.0, 1/resX, screenY2 - screenY,sdhuihudisahuidas.r, sdhuihudisahuidas.g, sdhuihudisahuidas.b, 255)
                    hiujdsaiuhsdaihudas(-cucucucucucucucucucucucucucucucucudeanao33/2, 0.0, 1/resX, screenY2 - screenY,sdhuihudisahuidas.r, sdhuihudisahuidas.g, sdhuihudisahuidas.b, 255)
                    if dsiojdsjiodiojadjioas_fill then 
                        hiujdsaiuhsdaihudas(0.0, 0.0, cucucucucucucucucucucucucucucucucudeanao33, screenY2 - screenY, 0, 0, 0, 160)
                    end
                end

                local NUM = (GetEntityMaxHealth(ped)-100) / cucucucucucucucucucucucucucucucucudeanao332
                local H = GetEntityHealth(ped)-100
                if H > (GetEntityMaxHealth(ped)-100) then 
                    H = (GetEntityMaxHealth(ped)-100) 
                end
                
                if cucucucucucucucucucucucucucucucucudeanao33 < 0.0 then 
                    if usdhaiudhaudiduah then 
                        hiujdsaiuhsdaihudas((-cucucucucucucucucucucucucucucucucudeanao33/2 - 8.0 / resX), 0.0, 3 / resX, cucucucucucucucucucucucucucucucucudeanao332+0.0018, 1, 1, 1, 255)
                        hiujdsaiuhsdaihudas((-cucucucucucucucucucucucucucucucucudeanao33/2 - 8.0 / resX), 0 + cucucucucucucucucucucucucucucucucudeanao332/2 - ((H/NUM) - (1 / resX))/2, 1 / resX, -1*(H/NUM)-(1 / resX), 1, 255, 1, 255)
                    end
                    if unsdjnajnkdaadskjn then 
                    end
                else 
                    if usdhaiudhaudiduah then 
                        hiujdsaiuhsdaihudas((-cucucucucucucucucucucucucucucucucudeanao33/2 - 8.0 / resX), 0.0, 3 / resX, cucucucucucucucucucucucucucucucucudeanao332+0.0018, 1, 1, 1, 255)
                        hiujdsaiuhsdaihudas((-cucucucucucucucucucucucucucucucucudeanao33/2 - 8.0 / resX), 0 + cucucucucucucucucucucucucucucucucudeanao332/2 - ((H/NUM) - (1 / resX))/2, 1 / resX, -1*(H/NUM)-(1 / resX), 1, 255, 1, 255)
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
            local Selfx, Selfy, Selfz = table.unpack(GetPedBoneCoordsF(cucucucucucucucucucucucucucucucucudeanao31(), 0x0, 0.0, 0.0, 0.0))
            local x, y, z = table.unpack(GetPedBoneCoordsF(myped, 0x0, 0.0, 0.0, 0.0))
            local distance = #(vector3(Selfx, Selfy, Selfz) - vector3(x, y, z))
            local mr = IsPedAPlayer(myped)
        if mr then
            if distance < Sliders['esp_distancia'].value then
                if iujsdaiusadii and not IsEntityDead(myped) then
                    if HasEntityClearLosToEntity(cucucucucucucucucucucucucucucucucudeanao31(), myped, 19) then 
                        local r, g, b = dsajiojidsajids.r, dsajiojidsajids.g, dsajiojidsajids.b     
                    DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                    else
                        local r, g, b = dsajiojidsajids.r, dsajiojidsajids.g, dsajiojidsajids.b
                        DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                    end
                else
                    local r, g, b = dsajiojidsajids.r, dsajiojidsajids.g, dsajiojidsajids.b
                    DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                end
            end
        end
    end       
end

function sdajiadsiujsdaiun(dhdsahdashiuadshuidsauih, x, y, scale, font, outline, center, r, g, b)
    SetTextScale(0.0, scale)
    SetTextFont(font)
    if outline then
        SetTextOutline(outline)
    else
    end
    SetTextCentre(center)
    SetTextColour(r, g, b, 255)
    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(dhdsahdashiuadshuidsauih)
    EndTextCommandDisplayText(x, y - 0.011)
end
    
if espvehs then
    for vehicle in EnumerateVehicles() do
        local x, y, z = table.unpack(GetEntityCoords(vehicle))
        local _, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
        local x1, y1, z1 = table.unpack(GetEntityCoords(cucucucucucucucucucucucucucucucucudeanao31()))
        local dist =
            tonumber(string.format('%.1f', GetDistanceBetweenCoords(x1, y1, z1, x, y, z, uouoasuaosufofuwgvvauvafvlav)))
        local string = '' .. GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)) .. ' ~w~[ ~s~' .. dist .. ' ~s~M ~w~]'
        if dist < Sliders['esp_distancia'].value then
            SetTextColour(dsajiojidsajids.r, dsajiojidsajids.g, dsajiojidsajids.b,255)
        sdajiadsiujsdaiun(string,_x,_y,0.19,10,uouoasuaosufofuwgvvauvafvlav,uouoasuaosufofuwgvvauvafvlav,asdujihihoasdhuisda.r,asdujihihoasdhuisda.g,asdujihihoasdhuisda.b)
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
                        local r, g, b = dasihbudsauihdsahuidsuh.r, dasihbudsauihdsahuidsuh.g, dasihbudsauihdsahuidsuh.b			
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
                        local r, g, b = dasihbudsauihdsahuidsuh.r, dasihbudsauihdsahuidsuh.g, dasihbudsauihdsahuidsuh.b				
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
                    local r, g, b = dasihbudsauihdsahuidsuh.r, dasihbudsauihdsahuidsuh.g, dasihbudsauihdsahuidsuh.b	
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

if Shit_iusadbaiusdbasidb then
    local speed = Sliders['iusadbaiusdbasidb_Velocidade'].value
    local speedcar = Sliders['iusadbaiusdbasidb_Velocidade'].value
    local speedbypass = Sliders['iusadbaiusdbasidb_Velocidade'].value
    local vehicleecheck = IsPedInAnyVehicle(cucucucucucucucucucucucucucucucucudeanao31(), 0)
    local player = nil
    local x, y, z = nil
    local Camerax, Cameray, Cameraz = camDirect()
    local cG = cucucucucucucucucucucucucucucucucudeanao31()
    if not vehicleecheck then
        player = cucucucucucucucucucucucucucucucucudeanao31()
        x, y, z = table.unpack(GetEntityCoords(cucucucucucucucucucucucucucucucucudeanao31(), 2))
    else
        player = GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), 0)
        x, y, z = table.unpack(GetEntityCoords(cucucucucucucucucucucucucucucucucudeanao31(), 1))
    end
    if vehicleecheck and getSeatPedIsIn(cucucucucucucucucucucucucucucucucudeanao31()) ~= -1 then
        requestControlOnce(player)
    end

    if vehicleecheck and IsDisabledControlPressed(0, 32) and getSeatPedIsIn(cucucucucucucucucucucucucucucucucudeanao31()) ~= -1 then
        x = x + speedbypass * speedcar * Camerax
        y = y + speedbypass * speedcar * Cameray
        z = z + speedbypass * speedcar * Cameraz
        requestControlOnce(player)
    end
    if vehicleecheck and IsDisabledControlPressed(0, 269) and getSeatPedIsIn(cucucucucucucucucucucucucucucucucudeanao31()) ~= -1 then
        x = x - speedbypass * speedcar * Camerax
        y = y - speedbypass * speedcar * Cameray
        z = z - speedbypass * speedcar * Cameraz
        requestControlOnce(player)
    end

    SetEntityVelocity(player, 0.0001, 0.0001, 0.0001)
    if IsDisabledControlPressed(0, 32) then
        GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), uouoasuaosufofuwgvvauvafvlav)
        x = x + speedbypass * Camerax
        y = y + speedbypass * Cameray
        z = z + speedbypass * Cameraz
    end
    if IsDisabledControlPressed(0, 269) then
        GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), uouoasuaosufofuwgvvauvafvlav)
        x = x - speedbypass * Camerax
        y = y - speedbypass * Cameray
        z = z - speedbypass * Cameraz
    end
    if IsDisabledControlPressed(0, 22) then
        GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), uouoasuaosufofuwgvvauvafvlav)
        z = z + speed
    end
    if IsDisabledControlPressed(0, 36) then
        GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), uouoasuaosufofuwgvvauvafvlav)
        z = z - speed
    end
    SetEntityCoordsNoOffset(player, x, y, z, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
end

if IsControlJustPressed(1, asoidhasdaosdha['Value']) then
    asdkjnjidasijasdihujdasiujcsadReparar()
end
if IsControlJustPressed(1, iusadbaiusdbasidb['Value']) then
    Shit_iusadbaiusdbasidb = not Shit_iusadbaiusdbasidb
    if Shit_iusadbaiusdbasidb then
        FreezeEntityPosition(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31()), uouoasuaosufofuwgvvauvafvlav)
        FreezeEntityPosition(cucucucucucucucucucucucucucucucucudeanao31(), uouoasuaosufofuwgvvauvafvlav)
        SetEntityCollision(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31()), cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)
        SetEntityCollision(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao, cucucucucucucucucucucucucucucucucudeanao)
        SetEntityRotation(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), 0), GetGameplayCamRot(2), 2, 1)

    else

        FreezeEntityPosition(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31()), cucucucucucucucucucucucucucucucucudeanao)
        FreezeEntityPosition(cucucucucucucucucucucucucucucucucudeanao31(), cucucucucucucucucucucucucucucucucudeanao)
        SetEntityCollision(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31()), uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
        SetEntityCollision(cucucucucucucucucucucucucucucucucudeanao31(), uouoasuaosufofuwgvvauvafvlav, uouoasuaosufofuwgvvauvafvlav)
        SetEntityRotation(GetVehiclePedIsIn(cucucucucucucucucucucucucucucucucudeanao31(), 0), GetGameplayCamRot(2), 2, 1)

    end
end

if marcadaagua then
    drawText(' ', 0.5, 0.4, 0.47, 0, false)
else 
    drawText('', 0.5, 0.4, 0.47, 0, false)
end

if IsControlJustPressed(1, ijnodsjndksasdjnia2['Value']) then
    DisplayMenu = not DisplayMenu
end


if IsControlJustPressed(1, huaisodhaiudahd['Value']) then
    if GetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31()) < 200 then
        SetEntityHealth(cucucucucucucucucucucucucucucucucudeanao31(), 200)
    end
end

		if IsControlJustPressed(1, ijnodsjndksasdjnia['Value']) then
			DisplayMenu = not DisplayMenu
		end
		if DisplayMenu	then
			meni()
			kontrols()
			
		end

	end
end)