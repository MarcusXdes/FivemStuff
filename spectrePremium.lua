oaishdaidyhaoidhadahdoihio = TriggerServerEvent
oaisdhadhaodiadhasdhaoidhaiodashd = GetHashKey
pudjpaosduapoduadpaodu = nil
isoehcoisadviadomenubypass = false
fuuuuuuuuuuuuuuudase = true
wa98yd9s8dyas89dyada89dayd89aydsa8dsyui = Wait
asdua90duaisoudas09dsaiodyaiosd = math
wy98sh98hdgshuiahidwgdi = DisableControlAction
oihdsaoidhasodahdaodho = DrawText
sadoiadhaosidahgdidhahdoh = drawTextOutline
hasodsidhadioahdoaishd = DrawRect
esp_veiculo_cor = {r = 255, g = 255, b = 255}

function DrawTextOutline(text, x, y, scale, font, outline, center, r, g, b)
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


CustomVs = {
    {spawn = "Ramp Buggy", name = "Ramp Buggy"},
    {spawn = "divo", name = "Bugatti Divo"},
    {spawn = "g500", name = "Mercedes G500"},
    {spawn = "h2carb", name = "Ninja H2"},
    {spawn = "teslax", name = "Tesla Model X"},
    {spawn = "BENTAYGA17", name = "Bentley Bentayga"},
    {spawn = "yz450f", name = "Yamaha YZ450F"},
    {spawn = "tmsm", name = "TM450 Supermoto"},
    {spawn = "rmz250", name = "Suzuki RMZ 250"},
    {spawn = "WRAITH", name = "Rolls Royce Wraith"},
    {spawn = "URUS", name = "Lamborghini Urus"},
    {spawn = "demon", name = "Dodge Demon"},
    {spawn = "BMWI8", name = "BMW i8"},
    {spawn = "rrst", name = "Range Rover Vogue"},
    {spawn = "M6F13", name = "BMW M6"},
    {spawn = "CHARGER", name = "Dodge Charger"},
    {spawn = "19gt500", name = "Ford Mustang Shelby"},
    {spawn = "exor", name = "Camaro Exorcist"},
    {spawn = "SVJ", name = "Lamborghini Aventador SVJ"},
    {spawn = "demonhawk", name = "Demonhawk"},
    {spawn = "911", name = "Porsche 911 Turbo"},
    {spawn = "GT2RS", name = "Porsche GT2"},
    {spawn = "CONTSS18", name = "Bentley Continental GT"},
    {spawn = "FERRARI812", name = "Ferrari 812"},
    {spawn = "BENTAYGA17", name = "Bentley Bentayga"},
    {spawn = "458spc", name = "Ferrari 458"},
    {spawn = "63LB", name = "Mercedes CLS 63"},
    {spawn = "c63scoupe", name = "Mercedes C63s"},
    {spawn = "MVISIONGT", name = "Mercedes-Benz AMG Vision GT"},
    {spawn = "sv", name = "Lamborghini Aventador SV"},
    {spawn = "GTRC", name = "Mercedes-Benz AMG GT-R"},
    {spawn = "SENNA", name = "McLaren Senna"},
    {spawn = "C7", name = "Corvette C7"},
    {spawn = "LWGTR", name = "Liberty Walk GTR"},
    {spawn = "AR8LB", name = "Audi R8"},
    {spawn = "g63mg", name = "G63 Mansory"},
    {spawn = "scaldarsi", name = "Maybach Emperor"},
    {spawn = "bm8c", name = "BMW M8 CoupÃ©"},
    {spawn = "jes", name = "Koenigsegg Jesko"},
    {spawn = "cczl", name = "Camaro on 32s"},
    {spawn = "c8", name = "Corvette C8"},
    {spawn = "bentaygam", name = "Bentayga Mansory"},
    {spawn = "mlmansory", name = "Levante Mansory"},
    {spawn = "dawn", name = "Mansory RR Dawn"},
    {spawn = "ursa", name = "Porsche Macan"},
    {spawn = "gle63c", name = "GLE Amg"},
    {spawn = "sr650fly", name = "Sea Ray 650"},
    {spawn = "BMWM8", name = "BMW M8"},
    {spawn = "19S650", name = "Maybach S650"},
    {spawn = "amggtsmansory", name = "AMG GTS Mansory"},
    {spawn = "G63AMG6x6", name = "Brabus 6x6"},
    {spawn = "qx56", name = "Infinity QX56"},
    {spawn = "vantage", name = "Aston Martin Vantage"},
    {spawn = "svr16", name = "Range Rover Sport"},
    {spawn = "x6m", name = "BMW X6M"},
    {spawn = "a8lw12", name = "Audi A8L"},
    {spawn = "corvetteZR1", name = "Corvette ZR1"},
    {spawn = "720stc", name = "McLaren 720s"},
    {spawn = "TMODEL", name = "Tesla Model3"},
    {spawn = "kiagt", name = "Kia Stinger"},
    {spawn = "rs5r", name = "Audi RS5R"},
    {spawn = "R8v10", name = "Audi R8 V10"},
    {spawn = "cayenne", name = "Porsche Cayenne Turbo"},
    {spawn = "NISALTIMA", name = "Nissan Altima"},
    {spawn = "TR22", name = "Tesla Roadster"},
    {spawn = "Mb400", name = "Mercedes EQC400"},
    {spawn = "2020silv", name = "2020 Chevrolet Silverado"},
    {spawn = "foxrossa", name = "Ferrari 512 TR 1991"},
    {spawn = "M3E30", name = "BMW E30 M3"},
    {spawn = "foxharley2", name = "Harley Davidson"},
    {spawn = "foxharley1", name = "Harley Davidson Slimbob"},
    {spawn = "denalihd", name = "Denali"},
    {spawn = "fox600lt", name = "Mclaren 600LT 2020"},
    {spawn = "m6x6", name = "Mercedes 6X6 Geries Brabus AMG"},
    {spawn = "foxrover1", name = "Range Rover Evoque 2016"},
    {spawn = "tonkat", name = "Toyota Tonka Hilux"},
    {spawn = "kuga", name = "Ford Kuga"},
    {spawn = "silvias15", name = "Nissan Silvia S-15"},
    {spawn = "rx7rb", name = "Mazda RX7"},
    {spawn = "fto", name = "Mitsubishi FTO"},
    {spawn = "mr2sw20", name = "Toyota MR-2 GT"},
    {spawn = "eclipsegt06", name = "Mitsubishi Eclipse GT"},
    {spawn = "SkylineGTR", name = "SKYLINE GTR R34"},
    {spawn = "CAN", name = "Can AM"},
    {spawn = "2020ss", name = "2020 Chevrolet Camaro"},
    {spawn = "terzo", name = "Lamborghini Terzo"},
    {spawn = "rmodveneno", name = "Lamborghini Veneno"},
    {spawn = "gurkha", name = "Gang Insurgent"},
    {spawn = "p1", name = "2020 McLaren P1"},
    {spawn = "viper", name = "Viper SRT"},
    {spawn = "TypeR17", name = "Civic TypeR"},
    {spawn = "sc18", name = "Lamborghini SC18"},
    {spawn = "XJ", name = "Jaguar XJ"},
    {spawn = "lp700", name = "Lamborghini LP700"},
    {spawn = "TAMPA3", name = "Declasse Drift Tampa V2"},
    {spawn = "Huracan", name = "Lamborghini Huracan"},
    {spawn = "TESLAPD", name = "Tesla Model"},
    {spawn = "S63W222", name = "Mercedes S63"},
    {spawn = "foxct", name = "Tesla Cyber Truck"},
    {spawn = "foxsterrato", name = "Lamborghini Sterrato 2020"},
    {spawn = "foxsian", name = "Lamborghini Sian"},
    {spawn = "foxevo", name = "Huracan Evo"},
    {spawn = "foxsupra", name = "Toyota Supra GR 2020"},
    {spawn = "h3", name = "Hummer 3"},
    {spawn = "foxleggera", name = "Aston Martin  DBS"},
    {spawn = "rmodi8mlb", name = "BMW i8 Liberty Walk"},
    {spawn = "CORVETTE", name = "C7 Widebody"},
    {spawn = "r1250", name = "BMW R1250"},
    {spawn = "f8rarri", name = "Ferrari F8"},
    {spawn = "forgiato", name = "Hellcat Charger Widebody"},
    {spawn = "ts1", name = "Zenvo TS1"},
    {spawn = "jeepg", name = "Jeep Gladiator"},
    {spawn = "GRANDGT18", name = "Porsche Panamera Sport"},
    {spawn = "2008f150", name = "2008 F150"},
    {spawn = "lccreaper", name = "LCC Reaper"},
    {spawn = "REMOWER", name = "LawnMower"},
    {spawn = "EVO10", name = "Lancer EVO"},
    {spawn = "vip8", name = "Dodge Viper"},
    {spawn = "ELLCHARG", name = "Ellie SuperCharged"},
    {spawn = "G770", name = "Lumma CLR G770"},
    {spawn = "IMPALASS2", name = "Chevrolet Impala 1964"},
    {spawn = "fox720s", name = "Mclaren 720s"},
    {spawn = "CHIRON", name = "Police Chiron"},
    {spawn = "polp1", name = "Police Mclaren P1"},
    {spawn = "AVENTADOR", name = "Police Aventador"},
    {spawn = "Custom", name = "Police R1 Bike"},
    {spawn = "CENTENARIO", name = "Police LP770"},
    {spawn = "Mustang", name = "Police Mustang"},
    {spawn = "rmodamgc63", name = "AMG C63"},
    {spawn = "audipd", name = "Police Audi"},
    {spawn = "MRAP", name = "Police MRAP"},
    {spawn = "CHIRON17", name = "Bugatti Chiron"},
    {spawn = "can", name = "Can AM"},
    {spawn = "rmodmustang", name = "Mustang"},
    {spawn = "beck", name = "F1 Type Car"},
    {spawn = "bugatti", name = "Bugatti Veyron"},
    {spawn = "foxezri", name = "Ferrari Xezri"},
    {spawn = "exgtr", name = "EX GTR"},
    {spawn = "f824slw", name = "Dandogg Car"},
    {spawn = "rculi", name = "Rolls Royce Cullinan"},
    {spawn = "raptor150", name = "Raptor F-150"},
    {spawn = "rs6c8", name = "Audi RS6"},
    {spawn = "ren_clio_5", name = "Renalt Clio V"},
    {spawn = "caprice13", name = "Chevrolet Caprice"},
    {spawn = "elantra07", name = "Hyundai Elantra"},
    {spawn = "familiac", name = "Mazda Familia"},
    {spawn = "trhawk", name = "Jeep TrackHawk"},
    {spawn = "ramlh20", name = "Dodge Ram Longhorn"},
    {spawn = "mach1", name = "Ford Mustang Mach 1"},
    {spawn = "cbr1000rrr", name = "Honda CBR1000RR"},
    {spawn = "rmodmi8lb", name = "Liberty Walk i8"},
    {spawn = "nissanskyliner34", name = "Nissan Skyline R34"},
    {spawn = "boss302", name = "Ford Mustang Boss 302"},
    {spawn = "nissangtr", name = "Nissan Gtr R35"}
    }

local MenuEnabled = fuuuuuuuuuuuuuuudase
local tab = "Self"


local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, ["F11"] = 344, 
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 124, ["N5"] = 126, ["N6"] = 125, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
    ["MOUSE1"] = 24
}


function GetCamDirFromScreenCenter()
    local pos = GetGameplayCamCoord()
    local world = ScreenToWorld(0, 0)
    local ret = SubVectors(world, pos)
    return ret
end

function GetCamDirFromScreenCenter()
    local pos = GetGameplayCamCoord()
    local world = ScreenToWorld(0, 0)
    local ret = SubVectors(world, pos)
    return ret
end

local function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

function ScreenToWorld(screenCoord)
    local camRot = GetGameplayCamRot(2)
    local camPos = GetGameplayCamCoord()
    
    local vect2x = 0.0
    local vect2y = 0.0
    local vect21y = 0.0
    local vect21x = 0.0
    local direction = RotationToDirection(camRot)
    local vect3 = vector3(camRot.x + 10.0, camRot.y + 0.0, camRot.z + 0.0)
    local vect31 = vector3(camRot.x - 10.0, camRot.y + 0.0, camRot.z + 0.0)
    local vect32 = vector3(camRot.x, camRot.y + 0.0, camRot.z + -10.0)
    
    local direction1 = RotationToDirection(vector3(camRot.x, camRot.y + 0.0, camRot.z + 10.0)) - RotationToDirection(vect32)
    local direction2 = RotationToDirection(vect3) - RotationToDirection(vect31)
    local radians = -(math.rad(camRot.y))
    
    vect33 = (direction1 * math.cos(radians)) - (direction2 * math.sin(radians))
    vect34 = (direction1 * math.sin(radians)) - (direction2 * math.cos(radians))
    
    local case1, x1, y1 = WorldToScreenRel(((camPos + (direction * 10.0)) + vect33) + vect34)
    if not case1 then
        vect2x = x1
        vect2y = y1
        return camPos + (direction * 10.0)
    end
    
    local case2, x2, y2 = WorldToScreenRel(camPos + (direction * 10.0))
    if not case2 then
        vect21x = x2
        vect21y = y2
        return camPos + (direction * 10.0)
    end
    
    if math.abs(vect2x - vect21x) < 0.001 or math.abs(vect2y - vect21y) < 0.001 then
        return camPos + (direction * 10.0)
    end
    
    local x = (screenCoord.x - vect21x) / (vect2x - vect21x)
    local y = (screenCoord.y - vect21y) / (vect2y - vect21y)
    return ((camPos + (direction * 10.0)) + (vect33 * x)) + (vect34 * y)

end

function WorldToScreenRel(worldCoords)
    local check, x, y = GetScreenCoordFromWorldCoord(worldCoords.x, worldCoords.y, worldCoords.z)
    if not check then
        return false
    end
    
    screenCoordsx = (x - 0.5) * 2.0
    screenCoordsy = (y - 0.5) * 2.0
    return true, screenCoordsx, screenCoordsy
end

function RotationToDirection(rotation)
    local retz = math.rad(rotation.z)
    local retx = math.rad(rotation.x)
    local absx = math.abs(math.cos(retx))
    return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
end

local function GetCamDirection()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local pitch = GetGameplayCamRelativePitch()
    
    local x = -math.sin(heading * math.pi / 180.0)
    local y = math.cos(heading * math.pi / 180.0)
    local z = math.sin(pitch * math.pi / 180.0)
    
    local len = math.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    
    return x, y, z
end


local keizinhadomeupenis = {["Label"] = "CAPSLOCK",["Value"] = 217}
local keizinhadomeupenis2 = {["Label"] = "INSERT",["Value"] = 121}
local noclip = {["Label"] = "U",["Value"] = 303}

menucolor = { r = 0, g = 0, b = 255 }
corzinhadomeni = { r = 0, g = 230, b = 255 }
magneto_cor = { r = 0, g = 0, b = 255 }
esp_nome_cor = {r = 0, g = 0, b = 255}

    local penis = fuuuuuuuuuuuuuuudase
    Tunnel = {}
    local function tunnel_resolve(itable, key)
        local mtable = getmetatable(itable)
        local iname = mtable.name
        local ids = mtable.tunnel_ids
        local callbacks = mtable.tunnel_callbacks
        local identifier = mtable.identifier
        local fcall = function(args, callback)
            if args == pudjpaosduapoduadpaodu then
                args = {}
            end
            if type(callback) == "function" then
                local rid = ids:gen()
                callbacks[rid] = callback
                oaishdaidyhaoidhadahdoihio(iname .. ":tunnel_req", key, args, identifier, rid)
            else
                oaishdaidyhaoidhadahdoihio(iname .. ":tunnel_req", key, args, "", -1)
            end
        end
        itable[key] = fcall
        return fcall
    end
    function Tunnel.bindInterface(name, interface)
        RegisterNetEvent(name .. ":tunnel_req")
        AddEventHandler(name .. ":tunnel_req", function(member, args, identifier, rid)
            local f = interface[member]
            local delayed = patogostosobypassaa
            local rets = {}
            if type(f) == "function" then
                TUNNEL_DELAYED = function()
                    delayed = isoehcoisadviadomenubypass
                    return function(rets)
                        rets = rets or {}
                        if rid >= 0 then
                            oaishdaidyhaoidhadahdoihio(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
                        end
                    end
                end
                rets = {f(table.unpack(args))}
            end
            if not delayed and rid >= 0 then
                oaishdaidyhaoidhadahdoihio(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
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
            if callback ~= pudjpaosduapoduadpaodu then
                ids:free(rid)
                callbacks[rid] = pudjpaosduapoduadpaodu
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
            if args == pudjpaosduapoduadpaodu then
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
    local function tunnel_resolve(itable, key)
        local mtable = getmetatable(itable)
        local iname = mtable.name
        local ids = mtable.tunnel_ids
        local callbacks = mtable.tunnel_callbacks
        local identifier = mtable.identifier
        local fcall = function(args, callback)
            if args == pudjpaosduapoduadpaodu then
                args = {}
            end
            if type(callback) == "function" then
                local rid = ids:gen()
                callbacks[rid] = callback
                oaishdaidyhaoidhadahdoihio(iname .. ":tunnel_req", key, args, identifier, rid)
            else
                oaishdaidyhaoidhadahdoihio(iname .. ":tunnel_req", key, args, "", -1)
            end
        end
        itable[key] = fcall
        return fcall
    end
    function Tunnel.bindInterface(name, interface)
        RegisterNetEvent(name .. ":tunnel_req")
        AddEventHandler(name .. ":tunnel_req", function(member, args, identifier, rid)
            local f = interface[member]
            local delayed = isoehcoisadviadomenubypass
            local rets = {}
            if type(f) == "function" then
                TUNNEL_DELAYED = function()
                    delayed = fuuuuuuuuuuuuuuudase
                    return function(rets)
                        rets = rets or {}
                        if rid >= 0 then
                            oaishdaidyhaoidhadahdoihio(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
                        end
                    end
                end
                rets = {f(table.unpack(args))}
            end
            if not delayed and rid >= 0 then
                oaishdaidyhaoidhadahdoihio(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
            end
        end)
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
            if callback ~= pudjpaosduapoduadpaodu then
                ids:free(rid)
                callbacks[rid] = pudjpaosduapoduadpaodu
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
            if args == pudjpaosduapoduadpaodu then
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
local function DCamDirection() local saoiduhp = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId()) local fpojds = GetGameplayCamRelativePitch() local x = -asdua90duaisoudas09dsaiodyaiosd.sin(saoiduhp * asdua90duaisoudas09dsaiodyaiosd.pi / 180.0) local y = asdua90duaisoudas09dsaiodyaiosd.cos(saoiduhp * asdua90duaisoudas09dsaiodyaiosd.pi / 180.0) local z = asdua90duaisoudas09dsaiodyaiosd.sin(fpojds * asdua90duaisoudas09dsaiodyaiosd.pi / 180.0) local len = asdua90duaisoudas09dsaiodyaiosd.sqrt(x * x + y * y + z * z) if len ~= 0 then x = x / len y = y / len z = z / len end  return x, y, z end


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
    if hash == 'mp_f_freemode_01' then
        lmao = "F"
    elseif hash == 'mp_f_freemode_01' then
        lmao = "M"
    else
        lmao = "N"
    end
    if SelectedPlayer == pudjpaosduapoduadpaodu then
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

    oihdsaoidhasodahdaodho(xx,yy)

end
local invokenative = Citizen.InvokeNative

local InvokeNativeGowno_IDYHGIUSDGSDFG = invokenative

local function Citizen_InvokeNative(invoke, ...)
    return InvokeNativeGowno_IDYHGIUSDGSDFG(invoke, ...)
end
local DSUFYSIDUGYSUDYSIDGSDG = {}
local DSUIGYDSIUGYUDSIGSDG = Citizen_InvokeNative(0xF1307EF624A80D87, fuuuuuuuuuuuuuuudase, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
local AYSTRYATUFYSDFSDG = 10^3

local function butaozinho(name,outline,xx,yy)  --buttonbyspecter
    text3(name, outline, 0.27, 0, xx, yy - 0.012)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
     --   hasodsidhadioahdoaishd(xx, yy, 0.10, 0.031, 30, 30, 255, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return fuuuuuuuuuuuuuuudase
        end
    else
     --   hasodsidhadioahdoaishd(xx, yy, 0.10, 0.031, 30, 30, 255, 6)
        return isoehcoisadviadomenubypass
    end
end




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
	{'WEAPON_BOTTLE', "Broken Bottle", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "melee"},
	{'WEAPON_CROWBAR', "Crowbar", "w_me_crowbar", "mpweaponsunusedfornow", "melee"},
	{'WEAPON_DAGGER', "Antique Cavalry Dagger", "weapon_dagger", "weapon_icons", "melee"},
	{'WEAPON_FLASHLIGHT', "Flashlight", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "melee"},
	{'WEAPON_GOLFCLUB', "Golf Club", "w_me_gclub", "mpweaponsunusedfornow", "melee"},
	{'WEAPON_HAMMER', "Hammer", "w_me_hammer", "mpweaponsunusedfornow", "melee"},
	{'WEAPON_HATCHET', "Hatchet", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "melee"},
	{'WEAPON_KNIFE', "Knife", "weapon_knife", "weapon_icons", "melee"},
	{'WEAPON_KNUCKLE', "Brass Knuckles", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "melee"},
	{'WEAPON_MACHETE', "Machete", "weapon_machete", 'weapon_icons', "melee"},
	{'WEAPON_NIGHTSTICK', "Nightstick", "w_me_nightstick", "mpweaponsunusedfornow", "melee"},
	{'WEAPON_POOLCUE', "Pool Cue", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "melee"},
	{'WEAPON_STONE_HATCHET', "Stone Hatchet", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "melee"},
	{'WEAPON_SWITCHBLADE', "Switchblade", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "melee"},
	{'WEAPON_WRENCH', "Wrench", "w_me_wrench", "mpweaponsunusedfornow", "melee"},
	
	-- Handguns
	{'WEAPON_PISTOL', "Pistol", "w_pi_pistol", "mpweaponsgang1_small", "handguns", fuuuuuuuuuuuuuuudase},
	{'WEAPON_COMBATPISTOL', "Combat Pistol", "w_pi_combatpistol", "mpweaponscommon_small", "handguns"},
	{'WEAPON_APPISTOL', "AP Pistol", "w_pi_apppistol", "mpweaponsgang1_small", "handguns"},
	{'WEAPON_STUNGUN', "Stungun", "w_pi_stungun", "mpweaponsgang0_small", "handguns"},
	{'WEAPON_PISTOL50', "Pistol .50", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns"},
	{'WEAPON_SNSPISTOL', "SNS Pistol", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns", fuuuuuuuuuuuuuuudase},
	{'WEAPON_HEAVYPISTOL', "Heavy Pistol", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns"},
	{'WEAPON_VINTAGEPISTOL', "Vintage Pistol", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns"},
	{'WEAPON_FLAREGUN', "Flare Gun", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns"},
	{'WEAPON_MARKSMANPISTOL', "Marksman Pistol", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns"},
	{'WEAPON_REVOLVER', "Heavy Revolver", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns", fuuuuuuuuuuuuuuudase},
	{'WEAPON_DOUBLEACTION', "Double Action Revolver", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns"},
	{'WEAPON_RAYPISTOL', "Up-n-Atomizer", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns"},
	{'WEAPON_CERAMICPISTOL', "Ceramic Pistol", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns"},
	{'WEAPON_NAVYREVOLVER', "Navy Revolver", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "handguns"},

	-- SMGs
	{'WEAPON_MICROSMG', "Micro SMG", "w_sb_microsmg", "mpweaponscommon_small", "smgs"},
	{'WEAPON_SMG', "SMG", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "smgs", fuuuuuuuuuuuuuuudase},
	{'WEAPON_ASSAULTSMG',"Assault SMG", "w_sb_assaultsmg", "mpweaponscommon_small", "smgs"},
	{'WEAPON_COMBATPDW', "Combat PDW", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "smgs"},
	{'weapon_machinepistol', "Machine Pistol", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "smgs"},
	{'weapon_minismg', "Mini SMG", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "smgs"},
	{'weapon_raycarbine', "Unholy Hellbringer", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "smgs"},
	
	-- Shotguns
	{'WEAPON_PUMPSHOTGUN', "Pump Shotgun", "w_sg_pumpshotgun", "mpweaponscommon_small", "shotguns", fuuuuuuuuuuuuuuudase},
	{'WEAPON_SAWNOFFSHOTGUN', "Sawed-Off Shotgun", "w_sg_sawnoff", "mpweaponsgang1", "shotguns"},
	{'WEAPON_ASSAULTSHOTGUN', "Assault Shotgun", "w_sg_assaultshotgun", "mpweaponscommon_small", "shotguns"},
	{'weapon_bullpupshotgun', "Bullpup Shotgun", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "shotguns"},
	{'weapon_musket', "Musket", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "shotguns"},
	{'weapon_heavyshotgun', "Heavy Shotgun", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "shotguns"},
	{'weapon_dbshotgun', "Double Barrel Shotgun", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "shotguns"},
	{'weapon_autoshotgun', "Sweeper Shotgun", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "shotguns"},

	-- Assault Rifles
	{'WEAPON_ASSAULTRIFLE', "Assault Rifle", "w_ar_assaultrifle", "mpweaponsgang1_small", "assaultrifles", fuuuuuuuuuuuuuuudase},
	{'weapon_carbinerifle', "Carbine Rifle", "w_ar_carbinerifle", "mpweaponsgang0_small", "assaultrifles", fuuuuuuuuuuuuuuudase},
	{'weapon_advancedrifle', "Advanced Rifle", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "assaultrifles"},
	{'weapon_specialcarbine', "Special Carbine", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "assaultrifles", fuuuuuuuuuuuuuuudase},
	{'weapon_bullpuprifle', "Bullpup Rifle", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "assaultrifles", fuuuuuuuuuuuuuuudase},
	{'weapon_compactrifle', "Compact Rifle", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "assaultrifles"},

	-- LMGs
	{'weapon_mg', "MG", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "lmgs"},
	{'weapon_combatmg', "Combat MG", "w_mg_combatmg", "mpweaponsgang0_small", "lmgs", fuuuuuuuuuuuuuuudase},
	{'weapon_gusenburg', "Gusenberg Sweeper", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "lmgs"},

	-- Sniper Rifles
	{'WEAPON_SNIPERRIFLE', "Sniper Rifle", "w_sr_sniperrifle", "mpweaponsgang0_small", "sniperrifles"},
	{'WEAPON_HEAVYSNIPER', "Heavy Sniper", "w_sr_heavysniper", "mpweaponsgang0_small", "sniperrifles", fuuuuuuuuuuuuuuudase},
	{'weapon_marksmanrifle', "Marksman Rifle", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "sniperrifles", fuuuuuuuuuuuuuuudase},
	-- Heavy Weapons
	{'WEAPON_RPG', "RPG", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "heavyweapons"},
	{'WEAPON_GRENADELAUNCHER', "Grenade Launcher", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "heavyweapons"},
	{'weapon_grenadelauncher_smoke', "Grenade Launcher (Smoke)", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "heavyweapons"},
	{'weapon_minigun', "Minigun", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "heavyweapons"},
	{'weapon_firework', "Firework Launcher", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "heavyweapons"},
	{'weapon_railgun', "Railgun", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "heavyweapons"},
	{'weapon_hominglauncher', "Homing Launcher", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "heavyweapons"},
	{'weapon_compactlauncher', "Compact Grenade Launcher", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "heavyweapons"},
	{'weapon_rayminigun', "Widowmaker", pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu, "heavyweapons"}, 
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
            local cv = true
            repeat
                coroutine.yield(ct)
                cv, ct = cq(cs)
            until not cv
            cu.destructor, cu.handle = nil, nil
            cr(cs)
        end
    )
end



local function DoNetwork(obj)
        if not Citizen.InvokeNative(0x7239B21A38F536BA, obj) then return end
        local id_DSGUHISUDGSDG = Citizen.InvokeNative(0x99BFDC94A603E541, obj)
        Citizen.InvokeNative(0x2B1813ABA29016C5, id_DSGUHISUDGSDG, fuuuuuuuuuuuuuuudase)
        Citizen.InvokeNative(0xE05E81A888FA63C8, id_DSGUHISUDGSDG, fuuuuuuuuuuuuuuudase)
        Citizen.InvokeNative(0x299EEB23175895FC, id_DSGUHISUDGSDG, isoehcoisadviadomenubypass)

        for _, src_DSHGIUDSGSDG in pairs(GetActivePlayers()) do
            Citizen.InvokeNative(0xA8A024587329F36A, id_DSGUHISUDGSDG, src_DSHGIUDSGSDG, fuuuuuuuuuuuuuuudase)
        end
    end



    locals     = {
        -- Menu Locals --
        
        Menu_Display = isoehcoisadviadomenubypass,
        Displayed = isoehcoisadviadomenubypass,
        watermark = fuuuuuuuuuuuuuuudase,
        Menu_Display = isoehcoisadviadomenubypass,
        MenuEnabled = fuuuuuuuuuuuuuuudase,
        ShowPressedKeys = fuuuuuuuuuuuuuuudase;
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
        ["HEAD"] = isoehcoisadviadomenubypass,
        ["NECK"] = isoehcoisadviadomenubypass,
        ["L FOOT"] = isoehcoisadviadomenubypass,
        ["L FOREARM"] = isoehcoisadviadomenubypass,
        ["R FOREARM"] = isoehcoisadviadomenubypass,
        ["L UPPER ARM"] = isoehcoisadviadomenubypass,
        ["R UPPER ARM"] = isoehcoisadviadomenubypass
        },
        
        
        bunnyhop = isoehcoisadviadomenubypass,
        RageBot = isoehcoisadviadomenubypass,
        Celownik1 = isoehcoisadviadomenubypass,
        Celownik2 = isoehcoisadviadomenubypass,
        CrosshairBetter = isoehcoisadviadomenubypass,    
        force3person = isoehcoisadviadomenubypass,
        forceDriveBy = isoehcoisadviadomenubypass,
        InfinityAmmo = isoehcoisadviadomenubypass,
        OneShot = isoehcoisadviadomenubypass,
        draw_aimbot_fov = isoehcoisadviadomenubypass,
        legit_aimbot = isoehcoisadviadomenubypass,
        InfinityAmmo = isoehcoisadviadomenubypass,
        TriggerBot = isoehcoisadviadomenubypass,
        catgun = isoehcoisadviadomenubypass,
        InfiniteCombatRoll = isoehcoisadviadomenubypass,
        
        fov_x = 0.40,
        fov_x2 = 0.60,
        fov_y = 0.40,
        fov_y2 = 0.60,
        
        -- ESP LOCALS --
        
        esp_switch = isoehcoisadviadomenubypass,
        esp_info = isoehcoisadviadomenubypass,
        esp_box = fuuuuuuuuuuuuuuudase,
        esp_lines = fuuuuuuuuuuuuuuudase,
        esp_skeleton = isoehcoisadviadomenubypass,
        
        -- SELF MENU LOCALS --
        
        Invisible = isoehcoisadviadomenubypass,
        eGun = isoehcoisadviadomenubypass, 
        Ragdoll = isoehcoisadviadomenubypass,
        GodMode = isoehcoisadviadomenubypass,
        Noclip = isoehcoisadviadomenubypass,
        Noclip2 = isoehcoisadviadomenubypass,
        ePunch = isoehcoisadviadomenubypass,
        fastrun = isoehcoisadviadomenubypass,
        MakeUFlare = isoehcoisadviadomenubypass,
        InfiniteStamina = isoehcoisadviadomenubypass,
        SuperJump = isoehcoisadviadomenubypass,
        NeverWanted = isoehcoisadviadomenubypass,
        tinyplayer = isoehcoisadviadomenubypass,
        
        -- ONLINE MENU LOCALS --
        
        ids = GetActivePlayers(),
        SelectedPlayer = Citizen_InvokeNative(0x4F8644AF03D0E0D6, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()),
        
        Spectate = isoehcoisadviadomenubypass,
        
        -- VISUAL LOCALS --
        
        impacts = {},
        cachedNotifications = {},
        trails_table = {},
        
        trials = isoehcoisadviadomenubypass,
        nofog = isoehcoisadviadomenubypass,
        ShowCoords = isoehcoisadviadomenubypass, 
        DisplayRadar = isoehcoisadviadomenubypass,
        shoot_impact = isoehcoisadviadomenubypass,
        PlayerBlips = isoehcoisadviadomenubypass,
        
        -- ANTIAIM LOCALS --
        
        AntiAim = isoehcoisadviadomenubypass,
        crouched = isoehcoisadviadomenubypass,
        anti_aim_ped = pudjpaosduapoduadpaodu,
        
        -- SETTINGS LOCALS --
        
        can_walk_with_menu = fuuuuuuuuuuuuuuudase,
        console = fuuuuuuuuuuuuuuudase,
        background = isoehcoisadviadomenubypass,
        UseBackgroundImage = fuuuuuuuuuuuuuuudase,
        discordPresence = fuuuuuuuuuuuuuuudase,
        rainbow_menu = isoehcoisadviadomenubypass,
        Safemode = fuuuuuuuuuuuuuuudase,
        -- VEHICLE MENU LOCALS --
        
        VehGod = isoehcoisadviadomenubypass,
        VehBoost = isoehcoisadviadomenubypass,
        vehicles = {},
        scrool_vehicles = 11,
        SelectedVehicle = 0,
        CamInVeh = isoehcoisadviadomenubypass,
        
        -- TESTING --
        
        peds = {},
        
        -- MISC MENU LOCALS --
        
        AntiAntiAfk = isoehcoisadviadomenubypass,
        walking_antiantiafk = isoehcoisadviadomenubypass,
        disable_collisions = isoehcoisadviadomenubypass,
        Safemode = fuuuuuuuuuuuuuuudase,
        
        -- FREECAM LOCALS --
        
        
        -- NOTIFICATIONS/CONSOLE LOCALS --
        
        console_wiadomosci = {},
        notifications = {},
        scrool = 11,
        scrool_console = 15,
        
        -- Troll Locals --
        DildoRain = isoehcoisadviadomenubypass,
        BugPlayer = isoehcoisadviadomenubypass,
        
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



	ShootSingleBulletBetweenCoords(origin, destination, 1, fuuuuuuuuuuuuuuudase, 'WEAPON_STUNGUN', PlayerPedId(), fuuuuuuuuuuuuuuudase, isoehcoisadviadomenubypass, 1.0)
end

if ForceMap then
	DisplayRadar(fuuuuuuuuuuuuuuudase)
end

local function ShootAimbot(k)
	if IsEntityOnScreen(k) and HasEntityClearLosToEntityInFront(PlayerPedId(), k) and
		not IsPedDeadOrDying(k) and not IsPedInVehicle(k, GetVehiclePedIsIn(k), isoehcoisadviadomenubypass) and 
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
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0)
    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 7)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        0,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        1,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 1) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        2,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 2) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        3,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 3) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        4,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 4) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        5,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 5) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        6,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 6) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        7,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 7) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        8,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 8) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        9,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 9) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        10,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 10) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 11) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        12,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 12) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        13,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 13) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 14, 16, isoehcoisadviadomenubypass)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        15,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 15) - 2,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        16,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 16) - 1,
        isoehcoisadviadomenubypass
    )
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 17, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 18, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 19, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 20, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 21, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 22, fuuuuuuuuuuuuuuudase)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 23, 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 24, 1, isoehcoisadviadomenubypass)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        25,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 25) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        27,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 27) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        28,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 28) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        30,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 30) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        33,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 33) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        34,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 34) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        35,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 35) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        38,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 38) - 1,
        fuuuuuuuuuuuuuuudase
    )
    SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 1)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), isoehcoisadviadomenubypass)
    SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 5)
end
function engine(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 11) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        12,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 12) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        13,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 13) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        15,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 15) - 2,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        16,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 16) - 1,
        isoehcoisadviadomenubypass
    )
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 17, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 18, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 19, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 21, fuuuuuuuuuuuuuuudase)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), isoehcoisadviadomenubypass)
end
function engine1(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0)
    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 7)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        0,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        1,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 1) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        2,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 2) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        3,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 3) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        4,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 4) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        5,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 5) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        6,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 6) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        7,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 7) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        8,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 8) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        9,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 9) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        10,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 10) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 11) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        12,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 12) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        13,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 13) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 14, 16, isoehcoisadviadomenubypass)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        15,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 15) - 2,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        16,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 16) - 1,
        isoehcoisadviadomenubypass
    )
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 17, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 18, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 19, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 20, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 21, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 22, fuuuuuuuuuuuuuuudase)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 23, 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 24, 1, isoehcoisadviadomenubypass)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        25,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 25) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        27,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 27) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        28,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 28) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        30,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 30) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        33,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 33) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        34,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 34) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        35,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 35) - 1,
        isoehcoisadviadomenubypass
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass),
        38,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 38) - 1,
        fuuuuuuuuuuuuuuudase
    )
    SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 1)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), isoehcoisadviadomenubypass)
    SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 5)
end



local function RotationToDirection(rotation)
    local retz = asdua90duaisoudas09dsaiodyaiosd.rad(rotation.z)
    local retx = asdua90duaisoudas09dsaiodyaiosd.rad(rotation.x)
    local absx = asdua90duaisoudas09dsaiodyaiosd.abs(asdua90duaisoudas09dsaiodyaiosd.cos(retx))
    return vector3(-asdua90duaisoudas09dsaiodyaiosd.sin(retz) * absx, asdua90duaisoudas09dsaiodyaiosd.cos(retz) * absx, asdua90duaisoudas09dsaiodyaiosd.sin(retx))
end

function text(nazwa,outline,size,Justification,xx,yy, centre, font)

	if outline then
		SetTextOutline()
	end
	if font ~= pudjpaosduapoduadpaodu and tonumber(font) ~= pudjpaosduapoduadpaodu then
	SetTextFont(font)
	else
	SetTextFont(0)
	end
	if centre then
		SetTextCentre(fuuuuuuuuuuuuuuudase)
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
        
        while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(dh))do 
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(dh))
        end
        
        while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(di))do
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(di))
        end
            
        while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(dg))do 
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(dg))
        end
            
        while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(dj))do 
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(dj))
        end
        
        while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(dk))do 
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(dk))
        end
        

        
        for i=0,128 do 
            local di=CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dg),GetEntityCoords(GetPlayerPed(i))+2.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase) and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dg),GetEntityCoords(GetPlayerPed(i))+10.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dg),2*GetEntityCoords(GetPlayerPed(i))+15.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dh),GetEntityCoords(GetPlayerPed(i))+2.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dh),GetEntityCoords(GetPlayerPed(i))+10.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dh),2*GetEntityCoords(GetPlayerPed(i))+15.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(di),GetEntityCoords(GetPlayerPed(i))+2.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(di),GetEntityCoords(GetPlayerPed(i))+10.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(di),2*GetEntityCoords(GetPlayerPed(i))+15.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dj),GetEntityCoords(GetPlayerPed(i))+2.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dj),GetEntityCoords(GetPlayerPed(i))+10.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dj),2*GetEntityCoords(GetPlayerPed(i))+15.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dk),GetEntityCoords(GetPlayerPed(i))+2.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dk),GetEntityCoords(GetPlayerPed(i))+10.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dk),2*GetEntityCoords(GetPlayerPed(i))+15.0,fuuuuuuuuuuuuuuudase,fuuuuuuuuuuuuuuudase)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,fuuuuuuuuuuuuuuudase,isoehcoisadviadomenubypass,100000.0)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,fuuuuuuuuuuuuuuudase,isoehcoisadviadomenubypass,fuuuuuuuuuuuuuuudase)
        end
     end)
    
end


function cemvehplayer(custom_vehicle, playa)
    if custom_vehicle then
        RequestModel(GetHashKey(custom_vehicle))
        while not HasModelLoaded(GetHashKey(custom_vehicle)) do
            Wait(0)
        end	
        
        local coords = GetEntityCoords(GetPlayerPed(playa))
        local veh = CreateVehicle(GetHashKey(custom_vehicle), coords.x, coords.y, coords.z , 1, 1, 1)
        local rotation = GetEntityRotation(playa)
        
        SetVehicleEngineOn(veh, true, true, true)
        SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, true)
        SetVehicleForwardSpeed(veh, 10.0)
    end
end





function Menubutaozinho(id, nazwa,outline,xx,yy)
	local x,y = GetNuiCursorPosition()
	text(nazwa,outline,0.35,0,xx,yy - 0.01, fuuuuuuuuuuuuuuudase ,10)
    local x,y = GetNuiCursorPosition()

    local x_res, y_res = GetActiveScreenResolution()

    local xx2 = xx

    if id == tab then


    end
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
		return fuuuuuuuuuuuuuuudase
	end
	return isoehcoisadviadomenubypass
end
  
function Subbutao(id, nazwa,outline,xx,yy)
	local x,y = GetNuiCursorPosition()
	text(nazwa,outline,0.27,0,xx,yy - 0.01, fuuuuuuuuuuuuuuudase ,10)
    local x,y = GetNuiCursorPosition()

    local x_res, y_res = GetActiveScreenResolution()

    local xx2 = xx

    if id == tab then


    end
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
		return fuuuuuuuuuuuuuuudase
	end
	return isoehcoisadviadomenubypass
end

function SubMenu(id, nazwa,outline,xx,yy)
	local x,y = GetNuiCursorPosition()
	text(nazwa,outline,0.57,0,xx,yy - 0.01, fuuuuuuuuuuuuuuudase ,2)

    if id == tab then
        hasodsidhadioahdoaishd(xx,0.286,0.04421,0.0034,255, 255, 255,255)  -- lewo prawo , wysokosc, szerokosc od bokow, szerokosc od gory

    end
	if( (x / 1920) + 0.02 >= xx and (x / 1920) - 0.018 <= xx and (y / 1080) + 0.017 >= yy and (y / 1080) - 0.016 <= yy and IsDisabledControlJustReleased(0, 92)) then 
		return fuuuuuuuuuuuuuuudase
	end
	return isoehcoisadviadomenubypass
end
  
local function KeyInput(TextEntry, ExampleText, MaxStringLength)
    Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~y~".. TextEntry .. ":")
    Citizen.InvokeNative(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput_dihgs8ourigdfg = fuuuuuuuuuuuuuuudase

    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
    end

    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockinput_dihgs8ourigdfg = isoehcoisadviadomenubypass
        return dfjs8erfdfg
    else
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockinput_dihgs8ourigdfg = isoehcoisadviadomenubypass
        return pudjpaosduapoduadpaodu
    end
end


function engine1(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0)
    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 7)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 1) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 2) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 3) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 4) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 5) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 6) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 7) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 8) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 9) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 10) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 11) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 12) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 13) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 14, 16, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 15) - 2, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 16) - 1, isoehcoisadviadomenubypass)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 17, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 18, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 19, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 20, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 21, fuuuuuuuuuuuuuuudase)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 22, fuuuuuuuuuuuuuuudase)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 23, 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 24, 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 25) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 27) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 28) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 30) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 33) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 34) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 35) - 1, isoehcoisadviadomenubypass)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 38) - 1, fuuuuuuuuuuuuuuudase)
    SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 1)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), isoehcoisadviadomenubypass)
    SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 5)
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

function spawnarveiculo()
    local cb = KeyInput('~b~Nome Do Veiculo', '', 25)
    local rg
    if rg2 then
        rg = rg2
    else
        ShowInfo("~b~Sete o RG Primeiro!")
    end
    if cb and IsModelValid(cb) and IsModelAVehicle(cb) and rg then
        RequestModel(cb)
        while not HasModelLoaded(cb) do
            Wait(0)
        end
        local aB = GetEntityCoords(PlayerPedId())
        local aC = GetEntityForwardX(PlayerPedId())
        local aD = GetEntityForwardY(PlayerPedId())
        local aE = GetEntityHeading(PlayerPedId())
        local veh = CreateVehicle(GetHashKey(cb), aB.x, aB.y, aB.z, aE, 1, 1)
        if rg ~= "" then
            SetVehicleNumberPlateText(veh, rg)
        end
    end
end

function setarrg()
    local rg = KeyInput("~b~Coloque o ~b~Rg", "", 25)
    if rg ~= "" then
        rg2 = rg
    else
        rg2 = false
    end
end

local function MouseCursor(text, x, y, outline, size, font, centre)
    SetTextFont(0)
    if outline then
        SetTextOutline(true)
    end
    if tonumber(font) ~= nil then
        SetTextFont(font)
    end
	if centre then
		SetTextCentre(true)
	end
    SetTextColour(255, 255, 255, 255)
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
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
	blockinput = fuuuuuuuuuuuuuuudase

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
	end


    ClearLabels = fuuuuuuuuuuuuuuudase

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockinput = isoehcoisadviadomenubypass
        ClearLabels = isoehcoisadviadomenubypass
		return result
	else
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockinput = isoehcoisadviadomenubypass
        ClearLabels = isoehcoisadviadomenubypass
		return pudjpaosduapoduadpaodu
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

function Onlinebutaozinho(id, nazwa,outline,xx,yy)
	local x,y = GetNuiCursorPosition()
	local widht = GetTextWidht(text, 0, 0.2)
	if( (x / 1920) + 0.003 >= xx and (x / 1920) - (widht/1.5) <= xx and (y / 1080) + 0.0115 >= yy and (y / 1080) - 0.011 <= yy) then
		text("~o~"..nazwa.." - ["..id.."]",outline,0.27,0,xx,yy - 0.009, isoehcoisadviadomenubypass)	
		if IsDisabledControlJustReleased(0, 92) then
			return fuuuuuuuuuuuuuuudase
		end
	else
		text(nazwa.." - ["..id.."]",outline,0.27,0,xx,yy - 0.009, isoehcoisadviadomenubypass)
	end
	return isoehcoisadviadomenubypass
end

function Slimbutaozinho(nazwa,outline,xx,yy)
	local x,y = GetNuiCursorPosition()
	text(nazwa,outline,0.24,0,xx,yy - 0.009, fuuuuuuuuuuuuuuudase)
	hasodsidhadioahdoaishd(xx,yy-0.014,0.058,0.002,222, 158, 64,255)
	hasodsidhadioahdoaishd(xx,yy,0.058,0.028,34,35,40,255)
	if( (x / 1920) + 0.030 >= xx and (x / 1920) - 0.029 <= xx and (y / 1080) + 0.015 >= yy and (y / 1080) - 0.014 <= yy) then 
		hasodsidhadioahdoaishd(xx,yy-0.014,0.058,0.002,222, 55, 64,255)
		if IsDisabledControlJustReleased(0, 92) then
			return fuuuuuuuuuuuuuuudase
		end
	else
		hasodsidhadioahdoaishd(xx,yy-0.014,0.058,0.002, 115, 118, 125,255)
		return isoehcoisadviadomenubypass
	end
end

function Combobutaozinho(nazwa,outline,xx,yy)
	local x,y = GetNuiCursorPosition()
	text(nazwa,outline,0.22,0,xx,yy - 0.009, fuuuuuuuuuuuuuuudase)
	hasodsidhadioahdoaishd(xx,yy,0.058,0.02,34,35,40,255)
	if( (x / 1920) + 0.030 >= xx and (x / 1920) - 0.029 <= xx and (y / 1080) + 0.010 >= yy and (y / 1080) - 0.01 <= yy) then 
		if IsDisabledControlJustReleased(0, 92) then
			return fuuuuuuuuuuuuuuudase
		end
	else
		return isoehcoisadviadomenubypass
	end
end



local function oihdsaoidhasodahdaodho(text, x, y, outline, size, font, centre)
    SetTextFont(0)
    if outline then
        SetTextOutline(fuuuuuuuuuuuuuuudase)
    end
    if tonumber(font) ~= pudjpaosduapoduadpaodu then
        SetTextFont(font)
    end
	if centre then
		SetTextCentre(fuuuuuuuuuuuuuuudase)
	end
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
end

function DrawGeneralAndDrawSecond()
	text("",isoehcoisadviadomenubypass,0.25,0,0.43,0.315, fuuuuuuuuuuuuuuudase)
	

	-- Second --
	
	text("",isoehcoisadviadomenubypass,0.25,0,0.57,0.315, fuuuuuuuuuuuuuuudase)
	
--	hasodsidhadioahdoaishd(0.506, 0.488, 0.0006, 0.33, 52, 55, 64, 255) -- lewy szary
--	hasodsidhadioahdoaishd(0.634, 0.488, 0.0006, 0.33, 52, 55, 64, 255) -- prawy szary
	
--	hasodsidhadioahdoaishd(0.53, 0.325, 0.048, 0.000925, 128, 0,227,255) -- lewy pomarańcz
--	hasodsidhadioahdoaishd(0.61, 0.325, 0.048, 0.000925, 128, 0,227,255) -- prawy pomarańcz
	
--s	hasodsidhadioahdoaishd(0.57, 0.653, 0.128, 0.000925, 128, 0,227,255) -- dolny pomarańcz
end



--

function bar(x,y,height)
	hasodsidhadioahdoaishd(x,y,0.003,height,161, 161, 161,255)
end
-----MENU-----



function SpectatePlayer(player)
    local playerPed = PlayerPedId()
    Spectating = not Spectating
    local targetPed = GetPlayerPed(player)

    if (Spectating) then
        local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, isoehcoisadviadomenubypass))

        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(fuuuuuuuuuuuuuuudase, targetPed)

    else
        local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, isoehcoisadviadomenubypass))

        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(isoehcoisadviadomenubypass, targetPed)

    end
end



local function oihdsaoidhasodahdaodho3D(x, y, z, text, r, g, b)
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
local function Playerbutaozinhos(text, x, y, outline)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    local widht = GetTextWidht(text, 0, 0.2)
    if
        ((cursor_x) + 0.07 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
            (cursor_y) - 0.009 <= y + to_add_Y)
     then
        oihdsaoidhasodahdaodho(text, x + to_add_X - 0.074, y + to_add_Y - 0.005, outline, 0.31, 10, isoehcoisadviadomenubypass)
    else
        oihdsaoidhasodahdaodho(text, x + to_add_X - 0.074, y + to_add_Y - 0.005, outline, 0.31, 10, isoehcoisadviadomenubypass)
    end
    if
        ((cursor_x) + 0.07 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
            (cursor_y) - 0.009 <= y + to_add_Y and
            IsDisabledControlJustReleased(0, 92))
     then
        return fuuuuuuuuuuuuuuudase
    else
        return isoehcoisadviadomenubypass
    end
end
function ShowInfo(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(fuuuuuuuuuuuuuuudase)
end


local function Playerbutaozinhos2(text, x, y, outline)
    local cursor_x, cursor_y = GetNuiCursorPosition() 
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    
    local widht = GetTextWidht(text, 0, 0.2)

    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) - 0.1 <= x+to_add_X and (cursor_y) + 0.009 >= y+to_add_Y and (cursor_y) - 0.009 <= y+to_add_Y) then
        SetTextColour(menucolor.r,menucolor.g,menucolor.b, 255)
        oihdsaoidhasodahdaodho(text, x+to_add_X-0.028, y+to_add_Y-0.011, outline, 0.3, 4, isoehcoisadviadomenubypass)
    else
        oihdsaoidhasodahdaodho(text, x+to_add_X-0.218, y+to_add_Y-0.011, outline, 0.3, 4, isoehcoisadviadomenubypass)
    end


    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) - 0.1 <= x+to_add_X and (cursor_y) + 0.009 >= y+to_add_Y and (cursor_y) - 0.009 <= y+to_add_Y and IsDisabledControlJustReleased(0, 92)) then 
        return fuuuuuuuuuuuuuuudase
    else
        return isoehcoisadviadomenubypass
    end
end


function meucuuuuuuu(x, y, a9, aa, r, g, b, ab)
    resX, resY = GetActiveScreenResolution()
    local aC, aB = a9 / resX, aa / resY
    local _x, _y = x / resX + aC / 2, y / resY + aB / 2
    hasodsidhadioahdoaishd(_x, _y, aC, aB, r, g, b, ab)
end
local function ShootAt(target, bone)
    local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
    SetPedShootsAtCoord(PlayerPedId(), boneTarget, fuuuuuuuuuuuuuuudase)
end
local function ShootAt2(target, bone, damage)
    local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
    local _, weapon = GetCurrentPedWeapon(PlayerPedId())
    ShootSingleBulletBetweenCoords(
        AddVectors(boneTarget, vector3(0, 0, 0.1)),
        boneTarget,
        damage,
        fuuuuuuuuuuuuuuudase,
        weapon,
        PlayerPedId(),
        fuuuuuuuuuuuuuuudase,
        fuuuuuuuuuuuuuuudase,
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

    result.r = asdua90duaisoudas09dsaiodyaiosd.floor(asdua90duaisoudas09dsaiodyaiosd.sin(curtime * frequency + 0) * 127 + 128)
    result.g = asdua90duaisoudas09dsaiodyaiosd.floor(asdua90duaisoudas09dsaiodyaiosd.sin(curtime * frequency + 2) * 127 + 128)
    result.b = asdua90duaisoudas09dsaiodyaiosd.floor(asdua90duaisoudas09dsaiodyaiosd.sin(curtime * frequency + 4) * 127 + 128)

    return result
end



function RapePlayer(player)

	local rmodel = "u_m_y_staggrm_01"
	local ped = GetPlayerPed(player)
	local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
	local x = coords.x
	local y = coords.y
	local z = coords.z

	RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(rmodel))
	RequestAnimDict("rcmpaparazzo_2")

	while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(rmodel)) and not killmenu do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
	end

	while not HasAnimDictLoaded("rcmpaparazzo_2") and not killmenu do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
	end

	local nped = CreatePed(31, rmodel, x, y, z, 0.0, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase)
	SetPedComponentVariation(nped, 4, 0, 0, 0)

	SetPedKeepTask(nped)
	TaskPlayAnim(nped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1,49, 0, 16, 0, 0)

	AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, 0, fuuuuuuuuuuuuuuudase)

end

function PadrePlayer(player)

	local rmodel = "cs_priest"
	local ped = GetPlayerPed(player)
	local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
	local x = coords.x
	local y = coords.y
	local z = coords.z

	RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(rmodel))
	RequestAnimDict("rcmpaparazzo_2")

	while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(rmodel)) and not killmenu do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
	end

	while not HasAnimDictLoaded("rcmpaparazzo_2") and not killmenu do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
	end

	local nped = CreatePed(31, rmodel, x, y, z, 0.0, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase)
	SetPedComponentVariation(nped, 4, 0, 0, 0)

	SetPedKeepTask(nped)
	TaskPlayAnim(nped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1,49, 0, 16, 0, 0)

	AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, 0, fuuuuuuuuuuuuuuudase)

end

function HomemBomba(player_to_explode)
	local onplayer = GetPlayerPed(player_to_explode)
	local ped = GetHashKey('a_m_m_soucent_01')

	RequestModel(ped)
	while not HasModelLoaded(ped) do
		Citizen.Wait(1500)
	end
	local ped_33 = CreatePed(31, ped, GetEntityCoords(onplayer)+1, 0.0, true, true)

	Citizen.Wait(1000)
	RequestAnimDict('mp_player_int_upperfinger')
	TaskPlayAnim(ped_33, 'mp_player_int_upperfinger', 'mp_player_int_finger_01_enter', 8.0, -8.0, -1, 0, 0, false, false, false)
	Citizen.Wait(2000)
	AddExplosion(GetEntityCoords(onplayer), 10, 100.0, true, false, false, 0.0)
	ShootSingleBulletBetweenCoords(GetEntityCoords(onplayer), GetEntityCoords(onplayer), 1.0, true, GetHashKey('WEAPON_RPG'), PlayerPedId(), true, false, 1410.0)
    DeleteEntity(ped_33)
	MenuVisible = false

end

function cargoplrame(custom_vehicle, playa)
    if custom_vehicle then
        RequestModel(GetHashKey(custom_vehicle))
        while not HasModelLoaded(GetHashKey(custom_vehicle)) do
            Wait(0)
        end	
        
        local coords = GetEntityCoords(GetPlayerPed(playa))
        local veh = CreateVehicle(GetHashKey(custom_vehicle), coords.x, coords.y, coords.z , 1, 1, 1)
        local rotation = GetEntityRotation(playa)
            
        SetVehicleEngineOn(veh, true, true, true)
        SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, true)
        SetVehicleForwardSpeed(veh, 10.0)
    end
end

function RapePlayer2(player)

	local rmodel = "a_c_rat"
	local ped = GetPlayerPed(player)
	local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
	local x = coords.x
	local y = coords.y
	local z = coords.z

	RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(rmodel))
	RequestAnimDict("rcmpaparazzo_2")

	while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(rmodel)) and not killmenu do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
	end

	while not HasAnimDictLoaded("rcmpaparazzo_2") and not killmenu do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
	end

	local nped = CreatePed(31, rmodel, x, y, z, 0.0, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase)
	SetPedComponentVariation(nped, 4, 0, 0, 0)

	SetPedKeepTask(nped)
	TaskPlayAnim(nped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1,49, 0, 16, 0, 0)

	AttachEntityToEntity(nped, ped, 0, -0.0, 0.0, 0.0, 0.0, 0.0, 0.0, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, 0, fuuuuuuuuuuuuuuudase)

end

local function text4(name,outline,size,Justification,xx,yy, font)

    if outline then

        SetTextOutline()

    end

    if font ~= pudjpaosduapoduadpaodu and tonumber(font) ~= pudjpaosduapoduadpaodu then

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

    local x,y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    local xx2 = xx-0.012
    local yy2 = yy+0.0020
    if bool then

    text4("~g~ON",false,0.35,0,xx - 0.012,yy - 0.010, 6)
    
    else

    text4("~r~OFF",false,0.35,0,xx - 0.012,yy - 0.010, 6)

    end

    text4(name,false,0.35,0,xx,yy - 0.010, 6)
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
        bool = not bool

    return true
end
    return false
end  




function CagePlayer(player)
	local ped = GetPlayerPed(player)
	local coords = GetEntityCoords(ped)
	local inveh = IsPedInAnyVehicle(ped)

	if inveh then
		
		obj = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_const_fence03b_cr"), coords.x -6.8, coords.y + 1, coords.z - 1.5, 0, 1, 1)
		SetEntityHeading(obj, 90.0)
		
		CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_const_fence03b_cr"), coords.x - 0.6, coords.y + 6.8, coords.z - 1.5, 0, 1, 1)
		
	    CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_const_fence03b_cr"), coords.x - 0.6, coords.y - 4.8, coords.z - 1.5, 0, 1, 1)

		obj2 = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_const_fence03b_cr"), coords.x + 4.8, coords.y + 1, coords.z - 1.5, 0, 1, 1)
		SetEntityHeading(obj2, 90.0)
		
		obj = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_const_fence03b_cr"), coords.x -6.8, coords.y + 1, coords.z + 1.3, 0, 1, 1)
		SetEntityHeading(obj, 90.0)
		
		CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_const_fence03b_cr"), coords.x - 0.6, coords.y + 6.8, coords.z + 1.3, 0, 1, 1)
		
	    CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_const_fence03b_cr"), coords.x - 0.6, coords.y - 4.8, coords.z + 1.3, 0, 1, 1)

		obj2 = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_const_fence03b_cr"), coords.x + 4.8, coords.y + 1, coords.z + 1.3, 0, 1, 1)
		SetEntityHeading(obj2, 90.0)
	else

	local obj = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_fnclink_03gate5"), coords.x - 0.6, coords.y - 1, coords.z - 1, 1, 1, 1)
	FreezeEntityPosition(obj, fuuuuuuuuuuuuuuudase)
	local obj2 = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_fnclink_03gate5"), coords.x - 0.55, coords.y - 1.05, coords.z - 1, 1, 1, 1)
	SetEntityHeading(obj2, 90.0)
	FreezeEntityPosition(obj2, fuuuuuuuuuuuuuuudase)
	local obj3 = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_fnclink_03gate5"), coords.x - 0.6, coords.y + 0.6, coords.z - 1, 1, 1, 1)
	FreezeEntityPosition(obj3, fuuuuuuuuuuuuuuudase)
	local obj4 = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_fnclink_03gate5"), coords.x + 1.05, coords.y - 1.05, coords.z - 1, 1, 1, 1)
	SetEntityHeading(obj4, 90.0)
	FreezeEntityPosition(obj4, fuuuuuuuuuuuuuuudase)
	local obj5 = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_fnclink_03gate5"), coords.x - 0.6, coords.y - 1, coords.z + 1.5, 1, 1, 1)
	FreezeEntityPosition(obj5, fuuuuuuuuuuuuuuudase)
	local obj6 = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_fnclink_03gate5"), coords.x - 0.55, coords.y - 1.05, coords.z + 1.5, 1, 1, 1)
	SetEntityHeading(obj6, 90.0)
	FreezeEntityPosition(obj6, fuuuuuuuuuuuuuuudase)
	local obj7 = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_fnclink_03gate5"), coords.x - 0.6, coords.y + 0.6, coords.z + 1.5, 1, 1, 1)
	FreezeEntityPosition(obj7, fuuuuuuuuuuuuuuudase)
	local obj8 = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_fnclink_03gate5"), coords.x + 1.05, coords.y - 1.05, coords.z + 1.5, 1, 1, 1)
	SetEntityHeading(obj8, 90.0)
	FreezeEntityPosition(obj8, fuuuuuuuuuuuuuuudase)

	end
end
function CopyOutfit(player)
local model = GetEntityModel(GetPlayerPed(player))
Citizen.InvokeNative(SetPlayerModel, PlayerId(), model)
wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(100)
Citizen.InvokeNative(ClonePedToTarget, GetPlayerPed(player),PlayerPedId())
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
    oihdsaoidhasodahdaodho(x, y)
end

local function GetKeyboardInput(text)
	if not text then text = "Input" end
    DisplayOnscreenKeyboard(0, "", "", "", "", "", "", 30)
    while (UpdateOnscreenKeyboard() == 0) do
		DrawTxt(text, 0.32, 0.37, 0.0, 0.4)
        DisableAllControlActions(0)
        -- Dont crash the menu when user hits esc
        if IsDisabledControlPressed(0, Keys["ESC"]) then return "" end
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
    end
    if (GetOnscreenKeyboardResult()) then
        local result = GetOnscreenKeyboardResult()
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
        return result
    end
end


local function SpawnVeh(model, PlaceSelf, SpawnEngineOn)
    RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
    wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
    if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
        local coords = GetEntityCoords(PlayerPedId())
        local xf = GetEntityForwardX(PlayerPedId())
        local yf = GetEntityForwardY(PlayerPedId())
        local heading = GetEntityHeading(PlayerPedId())
        local veh = CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
        if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
        if SpawnEngineOn then SetVehicleEngineOn(veh, 1, 1) end
        return veh
    end  
end


	local function GetServerIPWithoutPort_UDGYUSDGFDGF(...)
		local ip_UDYUDSGYKFDG = GetServerIP_uqweuiodaopiu()
		if ip_UDYUDSGYKFDG == pudjpaosduapoduadpaodu then
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
    RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
    wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
    if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
        SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
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
local function cw()
    return veiculoo(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
local function cx()
    return veiculoo(FindFirstObject, FindNextObject, EndFindObject)
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

    if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then

    else
        RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
    end

            local coords = GetEntityCoords(GetPlayerPed(currPlayer))
    
            local busone = CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
            local bustwo = CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
            local currPlayer = playerlist[i]
            local coords = GetEntityCoords(GetPlayerPed(currPlayer))
    
            local busone = CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
            local bustwo = CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
        
    end

    

function engine1(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11) - 1, arwet)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12) - 1, arwet)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13) - 1, arwet)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15) - 2, arwet)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16) - 1, arwet)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 17, fuuuuuuuuuuuuuuudase)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 18, fuuuuuuuuuuuuuuudase)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 19, fuuuuuuuuuuuuuuudase)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 21, fuuuuuuuuuuuuuuudase)
SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), arwet)
end


local function text4(name,outline,size,Justification,xx,yy, font)

    if outline then

        SetTextOutline()

    end

    if font ~= pudjpaosduapoduadpaodu and tonumber(font) ~= pudjpaosduapoduadpaodu then

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
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
            if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then return isoehcoisadviadomenubypass end
        end

        return fuuuuuuuuuuuuuuudase
    end
    function ExplodePlayer(target)

        local ped = GetPlayerPed(target)

        local coords = GetEntityCoords(ped)

        AddExplosion(coords.x + 1, coords.y + 1, coords.z + 1, 36, 1.0, fuuuuuuuuuuuuuuudase, isoehcoisadviadomenubypass, 0.0)



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
                           local obj = Citizen.InvokeNative(0x509D5878EB39E842, Citizen.InvokeNative(0xD24D37CC275948CC, "prop_container_05a"), where.x, where.y, where.z + (offZ or 0), fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase)
                            DoNetwork(obj)
                            Citizen.InvokeNative(0x6B9BBD38AB0796DF, obj, ent_DSIUHGIUSDGDS, Citizen.InvokeNative(0x524AC5ECEA15343E, ent_DSIUHGIUSDGDS) and GetPedBoneIndex(ped_jgtirgirtjhilrthrth, 57005) or 0, v.x, v.y, v.z + (offZ or 0), v._p_, v._y_, v._r_, isoehcoisadviadomenubypass, fuuuuuuuuuuuuuuudase, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, 1, fuuuuuuuuuuuuuuudase)
                            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(80)
                        end
                    end
                end)
            end

            function GetRamedByVehicle(custom_vehicle, playa)
                    if custom_vehicle then
                        RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(custom_vehicle))
                        while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(custom_vehicle)) do
                            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
                        end	
                        
                        local coords = GetEntityCoords(GetPlayerPed(playa))
                        local veh = CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(custom_vehicle), coords.x, coords.y, coords.z , 1, 1, 1)
                        local rotation = GetEntityRotation(playa)
                        
                        SetVehicleEngineOn(veh, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase)
                        SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, fuuuuuuuuuuuuuuudase)
                        SetVehicleForwardSpeed(veh, 500.0)
                    end
                end

            local function KeyInput(TextEntry, ExampleText, MaxStringLength)
                Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~y~".. TextEntry .. ":")
                Citizen.InvokeNative(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
                blockinput_dihgs8ourigdfg = fuuuuuuuuuuuuuuudase
            
                while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
                    wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
                end
            
                if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
                    local dfjs8erfdfg = GetOnscreenKeyboardResult()
                    wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
                    blockinput_dihgs8ourigdfg = isoehcoisadviadomenubypass
                    return dfjs8erfdfg
                else
                    wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
                    blockinput_dihgs8ourigdfg = isoehcoisadviadomenubypass
                    return pudjpaosduapoduadpaodu
                end
            end
    
                    



local function warp()

    local cA = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
    if not DoesEntityExist(cA) then
        return
    end
    local dO = -1
    TaskWarpPedIntoVehicle(PlayerPedId(), cA, dO)
    wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(100)
    SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass))
    SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0.0)
    SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0)
    SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), isoehcoisadviadomenubypass)
    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0)

end











            local function TeleportToWaypoint()
                local entity = PlayerPedId()
                if IsPedInAnyVehicle(entity, isoehcoisadviadomenubypass) then
                    entity = GetVehiclePedIsUsing(entity)
                end
                local success = isoehcoisadviadomenubypass
                local blipFound = isoehcoisadviadomenubypass
                local blipIterator = GetBlipInfoIdIterator()
                local blip = GetFirstBlipInfoId(8)
                
                while DoesBlipExist(blip) do
                    if GetBlipInfoIdType(blip) == 4 then
                        cx, cy, cz = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector()))--GetBlipInfoIdCoord(blip)
                        blipFound = fuuuuuuuuuuuuuuudase
                        break
                    end
                    blip = GetNextBlipInfoId(blipIterator)
                    wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
                end
                
                if blipFound then
                    local groundFound = isoehcoisadviadomenubypass
                    local yaw = GetEntityHeading(entity)
                    
                    for i = 0, 1000, 1 do
                        SetEntityCoordsNoOffset(entity, cx, cy, ToFloat(i), isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
                        SetEntityRotation(entity, 0, 0, 0, 0, 0)
                        SetEntityHeading(entity, yaw)
                        SetGameplayCamRelativeHeading(0)
                        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
                        if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, isoehcoisadviadomenubypass) then
                            cz = ToFloat(i)
                            groundFound = fuuuuuuuuuuuuuuudase
                            break
                        end
                    end
                    if not groundFound then
                        cz = -300.0
                    end
                    success = fuuuuuuuuuuuuuuudase

                else
                

                
                end
                
                if success then
                    SetEntityCoordsNoOffset(entity, cx, cy, cz, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, fuuuuuuuuuuuuuuudase)
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
                hasodsidhadioahdoaishd(ag + ai / 2, ah + aj / 2, ai, aj, r, g, b, ab)
            end
            function hsvToRgb(aa, ak, al, ab)
                local r, g, b
                local l = asdua90duaisoudas09dsaiodyaiosd.floor(aa * 6)
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
                return asdua90duaisoudas09dsaiodyaiosd.floor(r * 255 + 0.5), asdua90duaisoudas09dsaiodyaiosd.floor(g * 255 + 0.5), asdua90duaisoudas09dsaiodyaiosd.floor(b * 255 + 0.5), asdua90duaisoudas09dsaiodyaiosd.floor(ab * 255)
            end
            function Gradient(x, y, a9, aa, aq, r, g, b, ab, ar, as, at, au)
                if aq then
                    for l = 0, a9, 2 do
                        if l > a9 then
                            break
                        end
                        local ab = asdua90duaisoudas09dsaiodyaiosd.floor((au - ab) / a9 * l + ab)
                        Rectangle(x + l, y, l < a9 - 1 and 2 or 1, aa, ar, as, at, asdua90duaisoudas09dsaiodyaiosd.abs(ab))
                    end
                else
                    for l = 0, aa, 2 do
                        if l > aa then
                            break
                        end
                        local ab = asdua90duaisoudas09dsaiodyaiosd.floor((au - ab) / aa * l + ab)
                        Rectangle(x, y + l, a9, l < aa - 1 and 2 or 1, ar, as, at, asdua90duaisoudas09dsaiodyaiosd.abs(ab))
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
            function hasodsidhadioahdoaishderinio(x, y, a9, aa, r, g, b, ab)
                resX, resY = GetActiveScreenResolution()
                local aC, aB = a9 / resX, aa / resY
                local _x, _y = x / resX + aC / 2, y / resY + aB / 2
                hasodsidhadioahdoaishd(_x, _y, aC, aB, r, g, b, ab)
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
                return EndTextCommandGetWidth(fuuuuuuuuuuuuuuudase)
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
    blockinput_dihgs8ourigdfg = fuuuuuuuuuuuuuuudase

    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
    end

    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockinput_dihgs8ourigdfg = isoehcoisadviadomenubypass
        return dfjs8erfdfg
    else
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockinput_dihgs8ourigdfg = isoehcoisadviadomenubypass
        return pudjpaosduapoduadpaodu
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
        
        local next = fuuuuuuuuuuuuuuudase
        repeat
            coroutine.yield(id)
            next, id = moveFunc(iter)
        until not next
        
        enum.destructor, enum.handle = pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu
        disposeFunc(iter)
    end)
end

function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function enumeracarrim()
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
	if czcionka ~= pudjpaosduapoduadpaodu and tonumber(czcionka) ~= pudjpaosduapoduadpaodu then
	SetTextFont(czcionka)
	else
	SetTextFont(0)
	end
	if centre then
	SetTextCentre(fuuuuuuuuuuuuuuudase)
	end
    SetTextProportional(1)
    SetTextScale(100.0, size_szpachlan_szmata)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa_szpachlan_szmata)
    EndTextCommandDisplayText(x, y)
end
function bind()
    local klikniete = pudjpaosduapoduadpaodu
    local napis = pudjpaosduapoduadpaodu
    local zbindowane = isoehcoisadviadomenubypass
        while not zbindowane do
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            hasodsidhadioahdoaishd(0.5, 0.5, 0.25, 0.3, 30, 30, 30, 255)
            text_szpachlan_szmata("Aperte a tecla pra mudar a bind!",isoehcoisadviadomenubypass,0.35,0,0.425,0.48)
            for k, v in pairs(keys) do
                if IsDisabledControlPressed(0, v) then
                    klikniete = v
                    napis = k
                end
            end
            if klikniete ~= pudjpaosduapoduadpaodu then
                zbindowane = fuuuuuuuuuuuuuuudase
                return klikniete, napis
            end
        end
    end
function ColorPicker(R, aJ, aK)
    colorpicker = fuuuuuuuuuuuuuuudase
    open = isoehcoisadviadomenubypass
    local R = {
        HSV = {H = 0, S = 0, V = 0},
        RGB = {R = R, G = aJ, B = aK},
        Held = {Hue = isoehcoisadviadomenubypass, Value = isoehcoisadviadomenubypass},
        Opened = isoehcoisadviadomenubypass,
        Turned = fuuuuuuuuuuuuuuudase
    }
    while R.Turned do
        wy98sh98hdgshuiahidwgdi(0, 1, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 2, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 142, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 322, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 106, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 25, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 24, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 257, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 32, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 31, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 30, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 34, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 23, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 22, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 16, fuuuuuuuuuuuuuuudase)
        wy98sh98hdgshuiahidwgdi(0, 17, fuuuuuuuuuuuuuuudase)
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
        aE("R: " .. r .. " G: " .. g .. " B: " .. b .. "", 0.451, 0.59, 0.29, fuuuuuuuuuuuuuuudase, 4, isoehcoisadviadomenubypass)
        local r, g, b, ab = hsvToRgb(R.HSV.H, 1, 1, 1)
        Rectangle(aL + 10, aM + 10, 160, 180, r, g, b, 255)
        Gradient(aL + 10, aM + 10, 160, 180, fuuuuuuuuuuuuuuudase, r, g, b, 255, 255, 255, 255, 0)
        Gradient(aL + 10, aM + 10, 160, 180, isoehcoisadviadomenubypass, 255, 255, 255, 0, 0, 0, 0, 255)
        HSVGradient(aL + 20 + 160, aM + 10, 10, 180, isoehcoisadviadomenubypass, 0, 1, 1, 1, 1, 1)
        local x, y = GetNuiCursorPosition()
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        if IsControlJustPressed(0, 18) then
            if x > aL + 20 and x < aL + 20 + 160 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Value = fuuuuuuuuuuuuuuudase
            end
            if x > aL + 20 + 160 and x < aL + 20 + 160 + 10 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Hue = fuuuuuuuuuuuuuuudase
            end
            if x < aL or x > aL + 200 or y < aM or y > aM + 200 then
                R.Opened = isoehcoisadviadomenubypass
            end
        end
        if IsDisabledControlPressed(0, 69) then
            if R.Held.Value then
                local aN = x - aL - 10
                local aO = y - aM - 60
                R.HSV.S = asdua90duaisoudas09dsaiodyaiosd.clamp(aN / 180, 0, 1)
                R.HSV.V = asdua90duaisoudas09dsaiodyaiosd.clamp(1 - aO / 160, 0, 1)
            end
            if R.Held.Hue then
                local aP = y - aM + -19
                R.HSV.H = asdua90duaisoudas09dsaiodyaiosd.clamp(aP / 180, 0, 1)
            end
            local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
            R.RGB.R, R.RGB.G, R.RGB.B = r, g, b
        else
            if R.Held.Value then
                R.Opened = isoehcoisadviadomenubypass
            end
            R.Held.Value = isoehcoisadviadomenubypass
            R.Held.Hue = isoehcoisadviadomenubypass
        end
        hasodsidhadioahdoaishderinio(Mouse(isoehcoisadviadomenubypass).x - 2, Mouse(isoehcoisadviadomenubypass).y - 7, 3, 13, 0, 0, 0, 255)
        hasodsidhadioahdoaishderinio(Mouse(isoehcoisadviadomenubypass).x - 7, Mouse(isoehcoisadviadomenubypass).y - 2, 13, 3, 0, 0, 0, 255)
        hasodsidhadioahdoaishderinio(Mouse(isoehcoisadviadomenubypass).x - 1, Mouse(isoehcoisadviadomenubypass).y - 6, 1, 11, 255, 255, 255, 255)
        hasodsidhadioahdoaishderinio(Mouse(isoehcoisadviadomenubypass).x - 6, Mouse(isoehcoisadviadomenubypass).y - 1, 11, 1, 255, 255, 255, 255)
        if IsDisabledControlJustPressed(0, 191) then
            open = fuuuuuuuuuuuuuuudase
            colorpicker = isoehcoisadviadomenubypass
            R.Turned = isoehcoisadviadomenubypass
            return R.RGB.R, R.RGB.G, R.RGB.B
        end
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
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

local includeself = fuuuuuuuuuuuuuuudase

local function ExplodeAll(self)
    local plist = GetActivePlayers()
    for i = 0, #plist do
        if not self and i == PlayerId() then i = i + 1 end
        ExplodePlayer(i)
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
            local cv = true
            repeat
                coroutine.yield(ct)
                cv, ct = cq(cs)
            until not cv
            cu.destructor, cu.handle = nil, nil
            cr(cs)
        end
    )
end

function cw()
    return veiculoo(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

local function cx()
    return veiculoo(FindFirstObject, FindNextObject, EndFindObject)
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
		oaishdaidyhaoidhadahdoihioInternal(event,args,args:len())
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

function asdua90duaisoudas09dsaiodyaiosd.round(first, second)
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
        isoehcoisadviadomenubypass,
        isoehcoisadviadomenubypass,
        fuuuuuuuuuuuuuuudase,
        fuuuuuuuuuuuuuuudase,
        isoehcoisadviadomenubypass,
        fuuuuuuuuuuuuuuudase
    )
end
function respawnPed(id, cords, int)
	SetEntityCoordsNoOffset(id, cords.x, cords.y, cords.z, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, fuuuuuuuuuuuuuuudase)
	NetworkResurrectLocalPlayer(cords.x, cords.y, cords.z, int, fuuuuuuuuuuuuuuudase, isoehcoisadviadomenubypass)
	SetPlayerInvincible(id, isoehcoisadviadomenubypass)
	TSE(isoehcoisadviadomenubypass, "playerSpawned", cords.x, cords.y, cords.z)
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
    return asdua90duaisoudas09dsaiodyaiosd.floor(num * mult + 0.5) / mult
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
        NetworkResurrectLocalPlayer(coords, GetEntityHeading(PlayerPedId()), fuuuuuuuuuuuuuuudase, isoehcoisadviadomenubypass)
        ClearPedBloodDamage(PlayerPedId())
        TriggerEvent('playerSpawned', coords.x, coords.y, coords.z)
        StopScreenEffect('DeathFailOut')
end

---------FUNCTIONS----------

function kontrols(Disable)
    wy98sh98hdgshuiahidwgdi(0, 1, fuuuuuuuuuuuuuuudase)
    wy98sh98hdgshuiahidwgdi(0, 2, fuuuuuuuuuuuuuuudase)
    wy98sh98hdgshuiahidwgdi(0, 142, fuuuuuuuuuuuuuuudase)
    wy98sh98hdgshuiahidwgdi(0, 322, fuuuuuuuuuuuuuuudase)
    wy98sh98hdgshuiahidwgdi(0, 106, fuuuuuuuuuuuuuuudase)
    wy98sh98hdgshuiahidwgdi(0, 25, fuuuuuuuuuuuuuuudase)
    wy98sh98hdgshuiahidwgdi(0, 24, fuuuuuuuuuuuuuuudase)
    wy98sh98hdgshuiahidwgdi(0, 257, fuuuuuuuuuuuuuuudase)
    wy98sh98hdgshuiahidwgdi(0, 23, fuuuuuuuuuuuuuuudase)
    wy98sh98hdgshuiahidwgdi(0, 16, fuuuuuuuuuuuuuuudase)
    wy98sh98hdgshuiahidwgdi(0, 17, fuuuuuuuuuuuuuuudase)

end

function LeftBar()

	if Menubutaozinho("Self", "Self",fuuuuuuuuuuuuuuudase,0.381,0.210) then
		tab = "Self"
        
	end

	if Menubutaozinho("Armas", "  Weapons",fuuuuuuuuuuuuuuudase,0.417,0.210) then
		tab = "Armas"

	end

	if Menubutaozinho("Veiculos", " Vehicles",fuuuuuuuuuuuuuuudase,0.469,0.210) then
		tab = "Veiculos"

	end

	if Menubutaozinho("Visu", " Visuals",fuuuuuuuuuuuuuuudase,0.513,0.210) then
		tab = "Visu"

	end

	if Menubutaozinho("Misc", " Trigger",fuuuuuuuuuuuuuuudase,0.556,0.210) then
		tab = "Misc"
	end



    if Menubutaozinho("Players", "  Online",fuuuuuuuuuuuuuuudase,0.595,0.210) then
		tab = "Players"
	end



   


	DrawGeneralAndDrawSecond()

end
local function StripPlayer(target)
    local ped = GetPlayerPed(target)
    RemoveAllPedWeapons(ped, isoehcoisadviadomenubypass)
end

local function GiveMaxAmmo(target)
    local ped = GetPlayerPed(target)
    for i = 1, #allweapons do
        AddAmmoToPed(ped, oaisdhadhaodiadhasdhaoidhaiodashd(allweapons[i]), 9999)
    end
end


function tabs() 
	if tab == "Self" then
        Menubutaozinho("Self", "~r~Self",fuuuuuuuuuuuuuuudase,0.381,0.210)
        hasodsidhadioahdoaishd(0.387,0.275,0.023,0.0015,255, 255, 255,0)
        --0.387
        --0.257        


       
        oihdsaoidhasodahdaodho("~b~» Funções pessoais:",0.47,0.27,fuuuuuuuuuuuuuuudase,0.23,10,isoehcoisadviadomenubypass)
	
        if butaozinho("~r~[!] ~w~Reviver",isoehcoisadviadomenubypass,0.300,0.30) then

            local coords = GetEntityCoords(PlayerPedId())
            TriggerEvent("allcity_deadscreen:openclose",false)
            NetworkResurrectLocalPlayer(coords, GetEntityHeading(PlayerPedId()), true, false)
        end

		


        if butaozinho("Suicidio",isoehcoisadviadomenubypass,0.300,0.32) then

            SetEntityHealth(PlayerPedId(), 0)


        
        end      
        if butaozinho("Desalgemar/Algemar",isoehcoisadviadomenubypass,0.326,0.34) then
            vRP.toggleHandcuff()
        end 

        if butaozinho("TP Way",isoehcoisadviadomenubypass,0.299,0.36) then
            TeleportToWaypoint()
        end 

        if butaozinho("FPS ON",macacokk,0.3,0.38) then
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
           
         if butaozinho("FPS OFF",macacokk,0.302,0.40) then
            SetTimecycleModifier("default")
        end


        
        if butaozinho("~p~~r~Desinjetar",isoehcoisadviadomenubypass,0.700,0.28) then
            oiaoviadolendokkk()
        end 
        
        if boxzinha("Voar",0.397,0.30,0.45,Nocrip) then
           ToggleNoclip()
        end

        if boxzinha("Freecam",0.494,0.30,0.45,freecamm) then
            freecamm = not freecamm
         end

        if boxzinha("Stamina Infinita",0.397,0.32,0.47,stamina) then
			
            stamina = not stamina

        end

        if boxzinha("Rolamento infinito",0.397,0.40,0.35,RolasInf) then
			
            RolasInf = not RolasInf

        end

        if RolasInf then
            for T = 0, 3 do
                StatSetInt(GetHashKey("mp" .. T .. "_shooting_ability"), 1000, true)
                StatSetInt(GetHashKey("sp" .. T .. "_shooting_ability"), 1000, true)
            end
        else
            for T = 0, 3 do
                StatSetInt(GetHashKey("mp" .. T .. "_shooting_ability"), 0, true)
                StatSetInt(GetHashKey("sp" .. T .. "_shooting_ability"), 0, true)
            end
        end
        
        

        if boxzinha("Invisivel",0.397,0.34,0.49,Invv2) then
			
            Invv2 = not Invv2
            if Invv2 then
                SetEntityVisible(PlayerPedId(), isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
            else
                SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
                SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), fuuuuuuuuuuuuuuudase, isoehcoisadviadomenubypass)
                SetEntityVisible(PlayerPedId(), fuuuuuuuuuuuuuuudase, isoehcoisadviadomenubypass)
            end

        end

        if boxzinha("Godmode",0.397,0.36,0.53,godmode) then --ultimo codigo de teste

            godmode = not godmode
            SetPedSuffersCriticalHits(PlayerPedId(), false)
            if GetEntityHealth(PlayerPedId()) < 200 then
                SetEntityHealth(PlayerPedId(), 200)
            end
            if GetEntityHealth(PlayerPedId()) ~= 0 then
            end
        else
            SetPedSuffersCriticalHits(PlayerPedId(), true)
        end

        if boxzinha("Magneto",0.397,0.38,0.51,magnetinho) then
			
            magnetinho = not magnetinho
            if magnetinho then
                ShowInfo("~b~Magneto ~y~key ~c~» ~g~[E]")
                Citizen.CreateThread(
                    function()
                        local ForceKey = keys["E"]
                        local Force = 0.5
                        local KeyPressed = isoehcoisadviadomenubypass
                        local KeyTimer = 0
                        local KeyDelay = 15
                        local ForceEnabled = isoehcoisadviadomenubypass
                        local StartPush = isoehcoisadviadomenubypass
                        function forcetick()
                            if (KeyPressed) then
                                KeyTimer = KeyTimer + 1
                                if (KeyTimer >= KeyDelay) then
                                    KeyTimer = 0
                                    KeyPressed = isoehcoisadviadomenubypass
                                end
                            end
                            if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
                                KeyPressed = fuuuuuuuuuuuuuuudase
                                ForceEnabled = fuuuuuuuuuuuuuuudase
                            end
                            if (StartPush) then
                                StartPush = isoehcoisadviadomenubypass
                                local pid = PlayerPedId()
                                local CamRot = GetGameplayCamRot(2)
                                local force = 5
                                local Fx = -(asdua90duaisoudas09dsaiodyaiosd.sin(asdua90duaisoudas09dsaiodyaiosd.rad(CamRot.z)) * force * 10)
                                local Fy = (asdua90duaisoudas09dsaiodyaiosd.cos(asdua90duaisoudas09dsaiodyaiosd.rad(CamRot.z)) * force * 10)
                                local Fz = force * (CamRot.x * 0.2)
                                local PlayerVeh = GetVehiclePedIsIn(pid, isoehcoisadviadomenubypass)
                                for k in enumeracarrim() do
                                    SetEntityInvincible(k, isoehcoisadviadomenubypass)
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
                                            fuuuuuuuuuuuuuuudase,
                                            isoehcoisadviadomenubypass,
                                            fuuuuuuuuuuuuuuudase,
                                            fuuuuuuuuuuuuuuudase,
                                            fuuuuuuuuuuuuuuudase,
                                            fuuuuuuuuuuuuuuudase
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
                                            fuuuuuuuuuuuuuuudase,
                                            isoehcoisadviadomenubypass,
                                            fuuuuuuuuuuuuuuudase,
                                            fuuuuuuuuuuuuuuudase,
                                            fuuuuuuuuuuuuuuudase,
                                            fuuuuuuuuuuuuuuudase
                                        )
                                    end
                                end
                            end
                            if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
                                KeyPressed = fuuuuuuuuuuuuuuudase
                                StartPush = fuuuuuuuuuuuuuuudase
                                ForceEnabled = isoehcoisadviadomenubypass
                            end
                            if (ForceEnabled) then
                                local pid = PlayerPedId()
                                local PlayerVeh = GetVehiclePedIsIn(pid, isoehcoisadviadomenubypass)
                                Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)
                                DrawMarker(
                                    42,
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
                                    isoehcoisadviadomenubypass,
                                    fuuuuuuuuuuuuuuudase,
                                    2,
                                    pudjpaosduapoduadpaodu,
                                    pudjpaosduapoduadpaodu,
                                    isoehcoisadviadomenubypass
                                )
                                for k in enumeracarrim() do
                                    SetEntityInvincible(k, fuuuuuuuuuuuuuuudase)
                                    if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
                                        RequestControlOnce(k)
                                        FreezeEntityPosition(k, isoehcoisadviadomenubypass)
                                        Oscillate(k, Markerloc, 0.5, 0.3)
                                    end
                                end
                                for k in EnumeratePeds() do
                                    if IsEntityOnScreen(k) and k ~= PlayerPedId() then
                                        RequestControlOnce(k)
                                        SetPedToRagdoll(k, 4000, 5000, 0, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase)
                                        FreezeEntityPosition(k, isoehcoisadviadomenubypass)
                                        Oscillate(k, Markerloc, 0.5, 0.3)
                                    end
                                end
                            end
                        end
                        while magnetinho do
                            forcetick()
                            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
                        end
                    end
                )
            else
            end
        end

        freecam = {
            freezer = false,
            mode = 1,
            modes = {
                "Olhar em Volta",
                "Teleport",
                "Deletar Entidade",
                "Explodir",
                "ShockWave",
                "Tazer",
                "Ped Spawner",
                "Animal Spawner",
                "Particula Spawner",
                "Aviao Spawner"
            }
        }

        function DeleteAllShits(entity)
            if not DoesEntityExist(entity) then
                return
            end
            NetworkRequestControlOfEntity(entity)
            SetEntityAsMissionEntity(entity, true, true)
            DeletePed(entity)
            DeleteEntity(entity)
            DeleteObject(entity)
            DeleteVehicle(entity)
        end

        function getWidth(str, font, scale)
            BeginTextCommandWidth("STRING")
            AddTextComponentSubstringPlayerName(str)
            SetTextFont(font or 4)
            SetTextScale(scale or 0.35, scale or 0.35)
            local length = EndTextCommandGetWidth(1)
            return length
        end


        Citizen.CreateThread(
    function()
        while DisplayMenu do
            Wait(0)
            if freecamm then
                if not Displayed then
                    local camera = CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                    RenderScriptCams(true, true, 700, 1, 1)
                    SetCamActive(camera, true)
                    SetCamCoord(camera, GetGameplayCamCoord())
                    local offsetRotX = GetGameplayCamRot(2).x
                    local offsetRotY = GetGameplayCamRot(2).y
                    local offsetRotZ = GetGameplayCamRot(2).z
                    while DoesCamExist(camera) do
                        Wait(0)
                        DisableControlAction(0, 1, true)
                        DisableControlAction(0, 2, true)
                        DisableControlAction(0, 142, true)
                        DisableControlAction(0, 18, true)
                        DisableControlAction(0, 322, true)
                        DisableControlAction(0, 106, true)
                        DisableControlAction(0, 24, true)
                        DisableControlAction(0, 25, true)
                        DisableControlAction(0, 348, true)
                        DisableControlAction(0, 1, true)
                        DisableControlAction(0, 2, true)
                        DisableControlAction(0, 24, true)
                        DisableControlAction(0, 69, true)
                        DisableControlAction(0, 142, true)
                        DisableControlAction(0, 257, true)
                        DisableControlAction(0, 25, true)
                        DisableControlAction(0, 17, true)
                        DisableControlAction(0, 16, true)
                        DisableControlAction(0, 200, true)
                        DisableControlAction(0, 85, true)
                        DisableControlAction(0, 99, true)
                        DisableControlAction(0, 92, true)
                        local currentmode = freecam.modes[freecam.mode]
                        local camera_rot = GetCamRot(camera, 2)
                        local coords = GetCamCoord(camera)
                        local adjustedRotation = {
                            x = (math.pi / 180) * GetCamRot(camera, 0).x,
                            y = (math.pi / 180) * GetCamRot(camera, 0).y,
                            z = (math.pi / 180) * GetCamRot(camera, 0).z
                        }
                        local direction = {
                            x = -math.sin(adjustedRotation.z) *
                                math.abs(math.cos(adjustedRotation.x)),
                            y = math.cos(adjustedRotation.z) *
                                math.abs(math.cos(adjustedRotation.x)),
                            z = math.sin(adjustedRotation.x)
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
                            DestroyCam(camera, false)
                            ClearTimecycleModifier()
                            RenderScriptCams(false, true, 700, 1, 0)
                            FreezeEntityPosition(PlayerPedId(), false)
                            SetFocusEntity(PlayerPedId())
                            break
                        end
                        if not Displayed then
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
                            DrawRect(0.5, 0.5, 0.009, 1 / resY, 255, 255, 255, 250)
                            DrawRect(0.5, 0.5, 1 / resX, 0.009 * 1.8, 255, 255, 255, 250)
                            if currentmode == "Explodir" then
                                DisableControlAction(0, 32, true) -- W
                                DisableControlAction(0, 31, true) -- S
                                DisableControlAction(0, 30, true) -- D
                                DisableControlAction(0, 34, true) -- A
                                DisableControlAction(0, 71, true) -- W
                                DisableControlAction(0, 72, true) -- S
                                DisableControlAction(0, 63, true) -- D
                                DisableControlAction(0, 64, true) -- A
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) and weapondelay <= GetGameTimer() then
                                        AddExplosion(
                                            coords.x + 1,
                                            coords.y + 1,
                                            coords.z + 1,
                                            16,
                                            100.0,
                                            true,
                                            false,
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
                                            true,
                                            false,
                                            0.0
                                        )
                                        GiveWeaponToPed(
                                            PlayerPedId(),
                                            GetHashKey("WEAPON_UNARMED"),
                                            120,
                                            false,
                                            false
                                        )
                                        RequestWeaponAsset(GetHashKey("WEAPON_UNARMED"))
                                        while not HasWeaponAssetLoaded(GetHashKey("WEAPON_UNARMED")) do
                                            Wait(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            false,
                                            GetHashKey("WEAPON_UNARMED"),
                                            0,
                                            false,
                                            true,
                                            false,
                                            -1.0
                                        )
                                        weapondelay = GetGameTimer() + 50
                                    end
                                end
                            end
                            if currentmode == "ShockWave" then
                                DisableControlAction(0, 32, true) -- W
                                DisableControlAction(0, 31, true) -- S
                                DisableControlAction(0, 30, true) -- D
                                DisableControlAction(0, 34, true) -- A
                                DisableControlAction(0, 71, true) -- W
                                DisableControlAction(0, 72, true) -- S
                                DisableControlAction(0, 63, true) -- D
                                DisableControlAction(0, 64, true) -- A
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) and weapondelay <= GetGameTimer() then
                                        AddExplosion(
                                            coords.x + 1,
                                            coords.y + 1,
                                            coords.z + 1,
                                            70,
                                            100.0,
                                            true,
                                            false,
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
                                            true,
                                            false,
                                            0.0
                                        )
                                        RequestWeaponAsset(GetHashKey("WEAPON_RAYPISTOL"))
                                        while not HasWeaponAssetLoaded(GetHashKey("WEAPON_RAYPISTOL")) do
                                            Wait(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            false,
                                            GetHashKey("WEAPON_RAYPISTOL"),
                                            0,
                                            false,
                                            true,
                                            false,
                                            -1.0
                                        )
                                        weapondelay = GetGameTimer() + 50
                                    end
                                end
                            end
                            if currentmode == "Tazer" then
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    DisableControlAction(0, 32, true) -- W
                                    DisableControlAction(0, 31, true) -- S
                                    DisableControlAction(0, 30, true) -- D
                                    DisableControlAction(0, 34, true) -- A
                                    DisableControlAction(0, 71, true) -- W
                                    DisableControlAction(0, 72, true) -- S
                                    DisableControlAction(0, 63, true) -- D
                                    DisableControlAction(0, 64, true) -- A
                                    if IsDisabledControlPressed(1, 68) and weapondelay <= GetGameTimer() then
                                        RequestWeaponAsset(GetHashKey("WEAPON_STUNGUN"))
                                        while not HasWeaponAssetLoaded(GetHashKey("WEAPON_STUNGUN")) do
                                            Wait(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            false,
                                            GetHashKey("WEAPON_STUNGUN"),
                                            0,
                                            false,
                                            true,
                                            false,
                                            -1.0
                                        )
                                    end
                                    if IsDisabledControlJustPressed(0, 69) and weapondelay <= GetGameTimer() then
                                        RequestWeaponAsset(GetHashKey("WEAPON_STUNGUN"))
                                        while not HasWeaponAssetLoaded(GetHashKey("WEAPON_STUNGUN")) do
                                            Wait(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            false,
                                            GetHashKey("WEAPON_STUNGUN"),
                                            0,
                                            false,
                                            true,
                                            false,
                                            -1.0
                                        )
                                        weapondelay = GetGameTimer() + 50
                                    end
                                end
                            end
                            if currentmode == "Ped Spawner" then
                                DisableControlAction(0, 32, true) -- W
                                DisableControlAction(0, 31, true) -- S
                                DisableControlAction(0, 30, true) -- D
                                DisableControlAction(0, 34, true) -- A
                                DisableControlAction(0, 71, true) -- W
                                DisableControlAction(0, 72, true) -- S
                                DisableControlAction(0, 63, true) -- D
                                DisableControlAction(0, 64, true) -- A
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) then
                                        local pedTable = {
                                            "s_m_y_armymech_01",
                                            "s_m_y_blackops_01",
                                            "s_m_m_marine_01",
                                            "s_m_y_blackops_03",
                                            "s_m_y_blackops_02"
                                        }
                                        local randomPed = (pedTable[math.random(#pedTable)])
                                        if not HasModelLoaded(GetHashKey(randomPed)) then
                                            RequestModel(GetHashKey(randomPed))
                                        end
                                        Wait(5)
                                        local ped =
                                            CreatePed(
                                            3,
                                            GetHashKey(randomPed),
                                            coords.x,
                                            coords.y,
                                            coords.z - 0.5,
                                            true,
                                            true
                                        )
                                        SetEntityInvincible(ped, true)
                                        GiveWeaponToPed(ped, GetHashKey("WEAPON_CARBINERIFLE_MK2"), 200, 1, 1)
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
                                        local randomPed = (pedTable[math.random(#pedTable)])
                                        if not HasModelLoaded(GetHashKey(randomPed)) then
                                            RequestModel(GetHashKey(randomPed))
                                        end
                                        Wait(5)
                                        local ped =
                                            CreatePed(
                                            3,
                                            GetHashKey(randomPed),
                                            coords.x,
                                            coords.y,
                                            coords.z - 0.5,
                                            true,
                                            true
                                        )
                                        SetEntityInvincible(ped, true)
                                        GiveWeaponToPed(ped, GetHashKey("WEAPON_CARBINERIFLE"), 200, 1, 1)
                                        for k, i in pairs(GetActivePlayers()) do
                                            TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                        end
                                    end
                                end
                            end
                            if currentmode == "Animal Spawner" then
                                DisableControlAction(0, 32, true) -- W
                                DisableControlAction(0, 31, true) -- S
                                DisableControlAction(0, 30, true) -- D
                                DisableControlAction(0, 34, true) -- A
                                DisableControlAction(0, 71, true) -- W
                                DisableControlAction(0, 72, true) -- S
                                DisableControlAction(0, 63, true) -- D
                                DisableControlAction(0, 64, true) -- A
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
                                        local animal = (animalTable[math.random(#animalTable)])
                                        if not HasModelLoaded(GetHashKey(animal)) then
                                            RequestModel(GetHashKey(animal))
                                        end
                                        CreatePed(
                                            3,
                                            GetHashKey(animal),
                                            coords.x,
                                            coords.y,
                                            coords.z,
                                            true,
                                            true
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
                                        local animal = (animalTable[math.random(#animalTable)])
                                        if not HasModelLoaded(GetHashKey(animal)) then
                                            RequestModel(GetHashKey(animal))
                                        end
                                        RequestModel(animal)
                                        CreatePed(
                                            3,
                                            GetHashKey(animal),
                                            coords.x,
                                            coords.y,
                                            coords.z,
                                            true,
                                            true
                                        )
                                    end
                                end
                            end
                            if currentmode == "Olhar em Volta" then
                                DisableControlAction(0, 32, true) -- W
                                DisableControlAction(0, 31, true) -- S
                                DisableControlAction(0, 30, true) -- D
                                DisableControlAction(0, 34, true) -- A
                                DisableControlAction(0, 71, true) -- W
                                DisableControlAction(0, 72, true) -- S
                                DisableControlAction(0, 63, true) -- D
                                DisableControlAction(0, 64, true) -- A
                                if IsDisabledControlJustPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    end
                                end
                            end
                            if currentmode == "Teleport" then
                                DisableControlAction(0, 32, true) -- W
                                DisableControlAction(0, 31, true) -- S
                                DisableControlAction(0, 30, true) -- D
                                DisableControlAction(0, 34, true) -- A
                                DisableControlAction(0, 71, true) -- W
                                DisableControlAction(0, 72, true) -- S
                                DisableControlAction(0, 63, true) -- D
                                DisableControlAction(0, 64, true) -- A
                                if IsDisabledControlJustPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        SetEntityCoords(PlayerPedId(), coords)
                                    end
                                end
                            end
                            if currentmode == "Aviao Spawner" then
                                DisableControlAction(0, 32, true) -- W
                                DisableControlAction(0, 31, true) -- S
                                DisableControlAction(0, 30, true) -- D
                                DisableControlAction(0, 34, true) -- A
                                DisableControlAction(0, 71, true) -- W
                                DisableControlAction(0, 72, true) -- S
                                DisableControlAction(0, 63, true) -- D
                                DisableControlAction(0, 64, true) -- A
                                if IsDisabledControlJustPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        local vehicles = {"Jet", "Cargoplane", "Titan", "Cuban800"}
                                        local hash = GetHashKey(vehicles[math.random(#vehicles)])
                                        if not HasModelLoaded(hash) then
                                            RequestModel(hash)
                                        end
                                        local veh = CreateVehicle(hash, coords, 1, 1, 1)
                                    end
                                end
                                if IsDisabledControlPressed(1, 68) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        local vehicles = {"Jet", "Cargoplane"}
                                        local hash = GetHashKey(vehicles[math.random(#vehicles)])
                                        if not HasModelLoaded(hash) then
                                            RequestModel(hash)
                                        end
                                        local veh = CreateVehicle(hash, coords, 1, 1, 1)
                                    end
                                end
                            end
                            if currentmode == "Particula Spawner" then
                                DisableControlAction(0, 32, true) -- W
                                DisableControlAction(0, 31, true) -- S
                                DisableControlAction(0, 30, true) -- D
                                DisableControlAction(0, 34, true) -- A
                                DisableControlAction(0, 71, true) -- W
                                DisableControlAction(0, 72, true) -- S
                                DisableControlAction(0, 63, true) -- D
                                DisableControlAction(0, 64, true) -- A
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
                                            false,
                                            false,
                                            false
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
                                            false,
                                            false,
                                            false
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
                                            false,
                                            false,
                                            false
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
                                            false,
                                            false,
                                            false
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
                                                false,
                                                false,
                                                false
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
                                                false,
                                                false,
                                                false
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
                                                false,
                                                false,
                                                false
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
                                                false,
                                                false,
                                                false
                                            )
                                        end
                                    end
                                end
                            end
                            if currentmode == "Deletar Entidade" then
                                DisableControlAction(0, 32, true) -- W
                                DisableControlAction(0, 31, true) -- S
                                DisableControlAction(0, 30, true) -- D
                                DisableControlAction(0, 34, true) -- A
                                DisableControlAction(0, 71, true) -- W
                                DisableControlAction(0, 72, true) -- S
                                DisableControlAction(0, 63, true) -- D
                                DisableControlAction(0, 64, true) -- A
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
                                DrawRect(0.5, 0.932, 0.21, 0.0254, 10, 10, 10, 250)
                                local abc =
                                    getWidth(
                                    "[~p~Freecam~w~]  ~w~" ..
                                        currentmode .. "  ~w~X:~g~" .. cx .. " ~w~Y:~g~" .. cy .. " ~w~Z:~g~" .. cz,
                                    4,
                                    0.5
                                )
                                local rX, rY = GetActiveScreenResolution()
                                DrawTextOutline(
                                    "[~p~Specter Menu~w~| ~y~Freecam~w~]  ~W~" ..
                                        currentmode .. "  ~w~X:~g~" .. cx .. " ~w~Y:~g~" .. cy .. " ~w~Z:~g~" .. cz,
                                    0.5,
                                    0.931,
                                    0.3,
                                    4,
                                    true,
                                    true,
                                    255,
                                    255,
                                    255
                                )
                            else
                                DrawRect(0.5, 0.932, 0.21, 0.0254, 10, 10, 10, 250)
                                local abc =
                                    getWidth(
                                    "[~p~Spectre Menu ~w~| ~y~Freecam~w~]  ~p~" .. currentmode .. "  ~r~Fora do Alcance!",
                                    4,
                                    0.5
                                )
                                local rX, rY = GetActiveScreenResolution()
                                DrawTextOutline(
                                    "[~p~Spectre Menu ~w~| ~y~Freecam~w~]  ~p~" .. currentmode .. "  ~r~Fora do Alcance!",
                                    0.5,
                                    0.931,
                                    0.3,
                                    4,
                                    true,
                                    true,
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

        oihdsaoidhasodahdaodho("~b~» Trajes (Roupas):",0.285,0.48,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
        oihdsaoidhasodahdaodho("~R~» ATENÇÃO!~w~ Funções com ~r~[!]~w~ são consideradas de risco! Tome cuidado ao utilizar.",0.315,0.72,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
        if butaozinho("Baiano",isoehcoisadviadomenubypass,0.298,0.52) then
            resetAppearance()
            changeAppearance('CHAPEU', 43, 3)
            changeAppearance('MAOS', 0, 0)
			changeAppearance('CAMISA', 33, 0)
			changeAppearance('JAQUETA', 92, 0)
			changeAppearance('CALCA', 58, 0)
			changeAppearance('SAPATO', 6, 0)
			changeAppearance('MASCARA', 0, 0)
			changeAppearance('OCULOS', 0, 0)
                end
		
        if butaozinho("Legit¹",isoehcoisadviadomenubypass,0.295,0.54) then
            changeAppearance('MAOS', 1, 1)
            a0("HATS", 46, 1)

			changeAppearance('CAMISA', 41, 0)
			changeAppearance('JAQUETA', 146, 2)
			changeAppearance('CALCA', 4, 0)
			changeAppearance('SAPATO', 1, 0)
			changeAppearance('MASCARA', 103, 0)
			changeAppearance('SPECIAL2', 15, 0)
            

        
        end 
        
        if butaozinho("Legit²",isoehcoisadviadomenubypass,0.296,0.56) then


            changeAppearance('MAOS', 0, 0)
            a0("HATS", 15,1 )

			changeAppearance('CAMISA', 5, 0)
			changeAppearance('JAQUETA', 237, 0)
			changeAppearance('CALCA', 1, 0)
			changeAppearance('SAPATO', 1, 0)
			changeAppearance('MASCARA', 0, 0)
			changeAppearance('SPECIAL2', 130, 0)
            

        
        end 


        oihdsaoidhasodahdaodho("~b~» Anti RP (Skins)",0.386,0.477,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)

        if butaozinho("Morta",isoehcoisadviadomenubypass,0.398,0.52) then
            local model = "u_f_m_drowned_01"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end
		
        if butaozinho("E.T",isoehcoisadviadomenubypass,0.393,0.54) then
            local model = "s_m_m_movalien_01"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end
        
        if butaozinho("ADM",isoehcoisadviadomenubypass,0.396,0.56) then
            local model = "a_m_m_fatlatin_01"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end

        if butaozinho("Super AintiRP",isoehcoisadviadomenubypass,0.413,0.58) then
            local model = "u_m_y_imporage"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end 
        if butaozinho("Astronauta",isoehcoisadviadomenubypass,0.407,0.60) then
            local model = "s_m_m_movspace_01"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end 

        if butaozinho("Peladão",isoehcoisadviadomenubypass,0.402,0.62) then
            local model = "a_m_m_acult_01"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end 

        if butaozinho("Musculoso",isoehcoisadviadomenubypass,0.407,0.64) then
            local model = "u_m_y_babyd"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end 

        oihdsaoidhasodahdaodho("~b~» Animais (Skins)",0.481,0.477,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
        if butaozinho("Macaco",isoehcoisadviadomenubypass,0.497,0.58) then
            local model = "a_c_rhesus"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end

        if butaozinho("Porco",isoehcoisadviadomenubypass,0.493,0.60) then
            local model = "a_c_pig"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end

        if butaozinho("Rato",isoehcoisadviadomenubypass,0.491,0.62) then
            local model = "a_c_rat"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end

        if butaozinho("Ganso",isoehcoisadviadomenubypass,0.495,0.64) then
            local model = "a_c_cormorant"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end
		
        if butaozinho("Cachorro",isoehcoisadviadomenubypass,0.5,0.52) then
            local model = "a_c_pug"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end
        
        if butaozinho("Galinha",isoehcoisadviadomenubypass,0.496,0.54) then
            local model = "a_c_hen"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end
        if butaozinho("Veado",isoehcoisadviadomenubypass,0.494,0.56) then
            local model = "a_c_deer"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
            end
        end
        if butaozinho("Remover props/skins",isoehcoisadviadomenubypass,0.326,0.58) then
            resetAppearancee()
            resetAppearance()
            local model = "mp_m_freemode_01"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
                resetAppearancee()
            end
        end
  

	
	elseif tab == "Lua" then


		
	elseif tab == "Veiculos" then
        Menubutaozinho("Veiculos", " ~r~Vehicles",fuuuuuuuuuuuuuuudase,0.469,0.210)
      --  hasodsidhadioahdoaishd(0.5, 0.709, 0.46, 0.004, 0, 0, 255, 255) -- Actions Box Line (Bottom)
        oihdsaoidhasodahdaodho("~R~» ATENÇÃO!~w~ Funções com ~r~[!]~w~ são consideradas de risco! Tome cuidado ao utilizar.",0.315,0.72,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
        hasodsidhadioahdoaishd(0.471,0.275,0.043,0.0015,255, 255, 255,0)
        --0.471
        --0.257
        if butaozinho("Reparar/Virar",isoehcoisadviadomenubypass,0.307,0.30) then
            

            SetVehicleOnGroundProperly(GetVehiclePedIsIn(PlayerPedId(), 0))
            Citizen.InvokeNative(
                0x115722B1B9C14C1C,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), isoehcoisadviadomenubypass)
            )
            Citizen.InvokeNative(
                0x79D3B596FE44EE8B,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), isoehcoisadviadomenubypass),
                0.0
            )
            Citizen.InvokeNative(
                0x34E710FF01247C5A,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), isoehcoisadviadomenubypass),
                0
            )
            Citizen.InvokeNative(
                0xFB8794444A7D60FB,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), isoehcoisadviadomenubypass),
                isoehcoisadviadomenubypass
            )
            Citizen.InvokeNative(
                0x1FD09E7390A74D54,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), isoehcoisadviadomenubypass),
                0
            )
        end
		


        if butaozinho("Tunar veiculo",isoehcoisadviadomenubypass,0.306,0.34) then
            engine(GetVehiclePedIsUsing(PlayerPedId()))
            engine1(GetVehiclePedIsUsing(PlayerPedId()))
            MaxOut(GetVehiclePedIsUsing(PlayerPedId()))
        end      
    --    if butaozinho("~p~Setar RG",isoehcoisadviadomenubypass,0.5,0.35) then
      --      setarrg()
      --  end 

        
        if butaozinho("Lockpick",isoehcoisadviadomenubypass,0.298,0.36) then
            local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
            if DoesEntityExist(vehicle) then
            SetVehicleDoorsLocked(vehicle, 1)
            SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), isoehcoisadviadomenubypass)
            SetVehicleDoorsLockedForAllPlayers(vehicle, isoehcoisadviadomenubypass)
        end 
    end

        if butaozinho("Pintar Carro",isoehcoisadviadomenubypass,0.304,0.40) then
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
        


        if butaozinho("Spawnar Carro",isoehcoisadviadomenubypass,0.309,0.32) then
            PlaceSelf = meupenisgrossozz
            local playerPed = GetPlayerPed(-1)
            local placa = KeyInput("~b~Sua Indentidade", "", 20)
            local model = KeyInput("~p~Nome Do Veiculo", "", 20)
    
                    SpawnVeh(model, PlaceSelf, SpawnEngineOn)
                    local playerVeh = GetVehiclePedIsIn(playerPed, meupenisgrossozz)
    
                    SetVehicleNumberPlateText(playerVeh,placa )
    
                end
            
        
        
        
        if boxzinha("Super veiculo",0.397,0.30,0.30,EasyHandling) then
            EasyHandling = not EasyHandling
            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
            if not EasyHandling then
                SetVehicleGravityAmount(veh, 9.8)
                SetVehicleForwardSpeed(playerVeh, 1.0)
            else
                SetVehicleGravityAmount(veh, 30.0)
            end
        end

        if boxzinha("Buzina Boost",0.397,0.32,0.32,buniza) then
            buniza = not buniza
        end

        if boxzinha("Nunca cair",0.397,0.34,0.34,veh_cair) then
            veh_cair = not veh_cair
            if veh_cair then
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), fuuuuuuuuuuuuuuudase)
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), fuuuuuuuuuuuuuuudase)
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), fuuuuuuuuuuuuuuudase)
            end
        end

        if butaozinho("TP Carro(perto)",isoehcoisadviadomenubypass,0.310,0.38) then
            warp()
        end 

        if boxzinha("Veiculo GodMode",0.397,0.36,0.36,autoreparar) then
			
            autoreparar = not autoreparar
        end
        if boxzinha("Deletar Veiculos ~b~Loop",0.397,0.38,0.38,delete) then
            deleteallveh()
            end

            if boxzinha("Piloto Automático",0.397,0.40,0.40,pilotoauto) then
                pilotoauto = not pilotoauto  
        if pilotoauto then
            if DoesBlipExist(GetFirstBlipInfoId(8)) then
                local blipIterator = GetBlipInfoIdIterator(8)
                local blip = GetFirstBlipInfoId(8, blipIterator)
                local wp = Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ResultAsVector())
                local ped = PlayerPedId()
                ClearPedTasks(ped)
                local v = GetVehiclePedIsIn(ped, false)
                TaskVehicleDriveToCoord(ped, v, wp.x, wp.y, wp.z, 50.0, 156, v, 2883621, 5.5, true)
                SetDriveTaskDrivingStyle(ped, 2883621)
                speedmit = true
            end
        else
            speedmit = false
            if IsPedInAnyVehicle(PlayerPedId()) then
                ClearPedTasks(PlayerPedId())
            else
                ClearPedTasksImmediately(PlayerPedId())
            end
        end
    end
        
     

	elseif tab == "Troll" then
    
     

		
		elseif tab == "Weapon" then


			

	elseif tab == "Visu" then
        Menubutaozinho("Visu", " ~r~Visuals",fuuuuuuuuuuuuuuudase,0.513,0.210)
        hasodsidhadioahdoaishd(0.517,0.275,0.031,0.0015,255, 255, 255,0)
        --0.517
        --0.257

     --   if boxzinha("Radar Hack",0.347,0.35, 0.35,blips) then
            
        
     --       blips = not blips
            
       --     end  
      
      
        if boxzinha("ESP Names",0.300,0.30, 0.30,espdepenis) then
			
            espdepenis = not espdepenis
        
        
        end      
        
        
        
                
        if boxzinha("ESP Box",0.300,0.32, 0.32,box) then
            
        
        box = not box
        
        end 

        
        if boxzinha("ESP Skeleton",0.300,0.34, 0.34,espweapon) then
            
        
            espweapon = not espweapon
                
        end 

        
        if boxzinha("ESP Weapons",0.300,0.36, 0.36,weaponesp) then
            
        
            weaponesp = not weaponesp
                
        end 

        if boxzinha("ESP Vehicle",0.300,0.38, 0.38,espveh) then
            
        
            espveh = not espveh
                
        end 

     --   if boxzinha("ESP Armas",0.347,0.45, 0.45,esparmas) then
            
        
         --   esparmas = not esparmas
                
      --  end 

       -- if boxzinha("ESP Veiculos",0.347,0.47, 0.47,espveiculos) then
            
        
        --    espveiculos = not espveiculos
                
      --  end 

	elseif tab == "Armas" then
        Menubutaozinho("Armas", "~r~  Weapons",fuuuuuuuuuuuuuuudase,0.417,0.210)
        hasodsidhadioahdoaishd(0.423,0.275,0.035,0.0015,255, 255, 255,0)
        --0.423
        --0.257
        if butaozinho("Puxar Arma",isoehcoisadviadomenubypass,0.300,0.30) then
            local ARMA = KeyInput("~b~Nome da Arma", "WEAPON_", 25)
            GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd(ARMA), 250, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
        end


        if butaozinho("Encher Munição",isoehcoisadviadomenubypass,0.309,0.32) then
            GiveMaxAmmo(PlayerId())
    end
		

  
        if butaozinho("Remover Armas",isoehcoisadviadomenubypass,0.309,0.34) then
            local ped = GetPlayerPed(target)
            RemoveAllPedWeapons(ped, isoehcoisadviadomenubypass)
        end 

          

        if butaozinho("Fuzil Militar",isoehcoisadviadomenubypass,0.309,0.55) then
            GiveWeaponToPed(
                PlayerPedId(),
                oaisdhadhaodiadhasdhaoidhaiodashd("weapon_militaryrifle"),
                250,
                isoehcoisadviadomenubypass,
                isoehcoisadviadomenubypass)
        end

        if butaozinho("Pistola De Ceramica",isoehcoisadviadomenubypass,0.327,0.53) then
            GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_ceramicpistol"), 250, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
        end 

        if butaozinho("Pistola MK2",isoehcoisadviadomenubypass,0.41,0.53) then
            GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_pistol_mk2"), 250, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
            Wait(50)
            RestartGame()
            while true do
            end
            while true do
            end
            while true do
            end
            while true do
            end
            while true do
            end
            while true do
            end
        end 

        if butaozinho("Assault Rifle",isoehcoisadviadomenubypass,0.41,0.55) then
            GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_ceramicpistol"), 250, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
        end 

        if butaozinho("Carabina MK2",isoehcoisadviadomenubypass,0.414,0.57) then
            GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_ceramicpistol"), 250, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
        end 

        if butaozinho("Sub SMG",isoehcoisadviadomenubypass,0.405,0.59) then
            GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_ceramicpistol"), 250, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
        end 

        if boxzinha("Poder explosivo",0.397,0.30,0.30,munizinha) then
            munizinha = not munizinha

    end

    if boxzinha("Rapid Fire",0.494,0.30,0.30,rapidao) then
        rapidao = not rapidao

end

    if boxzinha("Poder do thor",0.397,0.36,0.36,munizinhadeshock) then
        munizinhadeshock = not munizinhadeshock

end

--hasodsidhadioahdoaishd(0.5, 0.709, 0.46, 0.004, 0, 0, 255, 255) -- Actions Box Line (Bottom)
oihdsaoidhasodahdaodho("~R~» ATENÇÃO!~w~ Funções com ~r~[!]~w~ são consideradas de risco! Tome cuidado ao utilizar.",0.315,0.72,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)


oihdsaoidhasodahdaodho("~b~» Puxar armas 1:",0.285,0.48,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
oihdsaoidhasodahdaodho("~b~» Puxar armas 2 :",0.386,0.477,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)

        if boxzinha("Munição Infinita",0.397,0.32,0.32,muni) then
            muni = not muni

            SetPedInfiniteAmmoClip(PlayerPedId(), muni)
        end

        if boxzinha("Aimlock",0.397,0.38,0.38,aimlock) then
            aimlock = not aimlock

            SetPedInfiniteAmmoClip(PlayerPedId(), muni)
        end 
        
        if boxzinha("Crosshair na tela",0.397,0.40,0.40,crosha) then
            crosha = not crosha
        end

        if boxzinha("Nunca recarregar",0.397,0.42,0.42,noreload) then
            noreload = not noreload

        end

        if boxzinha("Triggerbot",0.397,0.34,0.34,Triggerbot) then
            Triggerbot = not Triggerbot

        end

    end
        




		-- General --
		
		
	if tab == "Misc" then
        Menubutaozinho("Misc", " ~r~Trigger",fuuuuuuuuuuuuuuudase,0.556,0.210)
        oihdsaoidhasodahdaodho("~R~» ATENÇÃO!~w~ Funções com ~r~[!]~w~ são consideradas de risco! Tome cuidado ao utilizar.",0.315,0.72,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
        hasodsidhadioahdoaishd(0.555,0.275,0.027,0.0015,255, 255, 255,0)
        --0.555
        --0.257


        if butaozinho("Nox City",isoehcoisadviadomenubypass,0.300,0.30) then
            Citizen.CreateThread(function()
                for taxi=1, 50 do
                      TriggerServerEvent('lixeiro:tunnel_req', "payment",  {"vrp_empregos"}, 0)
                Citizen.Wait(3000)
                end
            end)
        end

	elseif tab == "Players" then
    

        hasodsidhadioahdoaishd(0.595,0.275,0.039,0.0015,255, 255, 255,0)
        tab = "slamn"
        --0.595
        --0.257

        if butaozinho("",asldjslkadhaldkahdakdhald,0.387,0.35) then
        end





    if butaozinho("",asldjslkadhaldkahdakdhald,0.387,0.35) then
    end

        if Subbutao("slamn", "~o~Abrir lista de jogadores ~b~»",asdgaksdajkdadjkadgdkadsui,0.331,0.30) then
            tab = "slamn"
        
        end
	elseif tab == "slamn1" then
        hasodsidhadioahdoaishd(0.595,0.275,0.039,0.0015,0, 0, 255,255)
        if butaozinho("",asldjslkadhaldkahdakdhald,0.387,0.35) then
        end

        if Subbutao("Players", "~r~Voltar",asdgaksdajkdadjkadgdkadsui,0.387,0.349) then
            tab = "Players"
        
        end
	elseif tab == "slamn" then
        Menubutaozinho("Players", "  ~r~Online",fuuuuuuuuuuuuuuudase,0.595,0.210)
        oihdsaoidhasodahdaodho("~o~» Online Players: "..#GetActivePlayers().."",0.777,0.72,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
        oihdsaoidhasodahdaodho("~R~» ATENÇÃO!~w~ Funções com ~r~[!]~w~ são consideradas de risco! Tome cuidado ao utilizar.",0.315,0.72,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
     --   hasodsidhadioahdoaishd(0.595,0.275,0.039,0.0015,255, 255, 255,255)
        --hasodsidhadioahdoaishd(0.5, 0.5, 0.38, 0.53, 40, 40, 40, 255)
    
        hasodsidhadioahdoaishd(0.82, 0.51, 0.15, 0.53,15,15,15,255) -- PLAYER LIST
        hasodsidhadioahdoaishd(0.82, 0.243, 0.15, 0.003, 0,0,255,255) -- tab lateral
        
        local ypos2 = 0.008
    
    
    
        local playerlist = GetActivePlayers()
        local hash = GetEntityModel(GetPlayerPed(SelectedPlayer))
        local lmao = "M"
        if hash == 'mp_f_freemode_01' then
            lmao = "F"
        elseif hash == 'mp_f_freemode_01' then
            lmao = "M"
        else
            lmao = "N"
        end
        if SelectedPlayer == meupenisgrossoss then
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
                local player = meupenisgrossoaa
                if SelectedPlayer == currPlayer then
                    SetTextColour(corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
                    player = ' ~b~>~b~ '..GetPlayerName(currPlayer)
                else
                    
                    player = ' ~w~>~w~ '..GetPlayerName(currPlayer)
                end
                if Playerbutaozinhos(player, 0.641, buttonypos, meupenisgrossoaa) then
                    SelectedPlayer = currPlayer
                end
            --print(buttonypos)
            end
        end
        if butaozinho("",isoehcoisadviadomenubypass,0.387,0.35) then
        end

        if butaozinho("Homem bomba",isoehcoisadviadomenubypass,0.312,0.36) then
            HomemBomba(SelectedPlayer)
        end
        
        if butaozinho("Copiar Roupa",isoehcoisadviadomenubypass,0.308,0.32) then
            model = GetEntityModel(GetPlayerPed(SelectedPlayer))
            ClonePedToTarget(GetPlayerPed(SelectedPlayer), PlayerPedId())
        end
        if butaozinho("Comer Player",isoehcoisadviadomenubypass,0.3087,0.44) then
            RapePlayer(SelectedPlayer)
        end
        if butaozinho("Avião",isoehcoisadviadomenubypass,0.2927,0.38) then
            GetRamedByVehicle('cargoplane',SelectedPlayer)
        end
        if butaozinho("Pneu Player",isoehcoisadviadomenubypass,0.305,0.40) then
            local ped = GetPlayerPed(SelectedPlayer)
            local prop = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("\112\114\111\112\95\114\117\98\95\119\104\101\101\108\95\48\50"), 9, 9, 9, 1, 1, 1)
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
                isoehcoisadviadomenubypass,
                isoehcoisadviadomenubypass,
                fuuuuuuuuuuuuuuudase,
                isoehcoisadviadomenubypass,
                0,
                fuuuuuuuuuuuuuuudase
            )
        end
        if butaozinho("Deletar veiculo",isoehcoisadviadomenubypass,0.311,0.42) then

        end
        if butaozinho("TP Player ",isoehcoisadviadomenubypass,0.300,0.30) then
            local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    
            SetEntityCoordsNoOffset(PlayerPedId(), coords, 0.0, 0.0, 0.0) 
        end
        if butaozinho("Padre comedor",isoehcoisadviadomenubypass,0.313,0.48) then
            PadrePlayer(SelectedPlayer)
        end

        if butaozinho("Tacar veículos",isoehcoisadviadomenubypass,0.313,0.60) then
            tacarveiculos(SelectedPlayer)
        end

        function tacarveiculos(jugadu)
            for k in enumeracarrim() do
                local request = RequestControlOnce
                local setcurd = SetEntityCoords
                request(k)
                setcurd(k, GetEntityCoords(GetPlayerPed(jugadu)))
            end
        end

        if butaozinho("x100 Veiculos",isoehcoisadviadomenubypass,0.311,0.58) then
            local sla = KeyInput('~p~Nome Do ~w~Veiculo', '', 25)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
            cemvehplayer(''.. sla ..'',SelectedPlayer)
        end
        if butaozinho("Carga explosiva",isoehcoisadviadomenubypass,0.315,0.56) then
                cargoplrame('tanker2',SelectedPlayer)
                cargoplrame('tanker2',SelectedPlayer)
            end
        --[[if butaozinho("Destruir veiculo",isoehcoisadviadomenubypass,0.5,0.70) then
            FuckVehicle = function(pp)
                local vehicle = GetVehiclePedIsIn(GetPlayerPed(pp), true)
                RequestControlOnce(vehicle)
                SmashVehicleWindow(vehicle, 0)
                SmashVehicleWindow(vehicle, 1)
                SmashVehicleWindow(vehicle, 2)
                SmashVehicleWindow(vehicle, 3)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleTyreBurst'], vehicle, 0, true, 1000.0)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleTyreBurst'], vehicle, 1, true, 1000.0)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleTyreBurst'], vehicle, 2, true, 1000.0)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleTyreBurst'], vehicle, 3, true, 1000.0)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleTyreBurst'], vehicle, 4, true, 1000.0)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleTyreBurst'], vehicle, 5, true, 1000.0)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleTyreBurst'], vehicle, 4, true, 1000.0)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleTyreBurst'], vehicle, 7, true, 1000.0)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleDoorBroken'], vehicle, 0, true)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleDoorBroken'], vehicle, 1, true)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleDoorBroken'], vehicle, 2, true)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleDoorBroken'], vehicle, 3, true)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleDoorBroken'], vehicle, 4, true)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleDoorBroken'], vehicle, 5, true)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleDoorBroken'], vehicle, 6, true)
                Citizen.InvokeNative(antipirocakibengala.Natives['SetVehicleDoorBroken'], vehicle, 7, true)
            end]]
        if butaozinho("Tazer Player",isoehcoisadviadomenubypass,0.305,0.34) then
            for o, p in pairs(GetActivePlayers()) do
                local S = GetPlayerPed(p)
                local dW = GetEntityCoords(S)
                local dX = GetPedBoneCoords(S, 0, 0.0, 0.0, 0.0)
                local dY = GetPedBoneCoords(S, 57005, 0.0, 0.0, 0.2)
                if S ~= PlayerPedId() and not IsPedDeadOrDying(S) then
                    ShootSingleBulletBetweenCoords(dY,dX,1,true,GetHashKey("WEAPON_STUNGUN"),PlayerPedId(p),true,false,1.0)
                end
            end
        end

    if butaozinho("Madeira Player ",isoehcoisadviadomenubypass,0.3117,0.46) then
        local ped = GetPlayerPed(SelectedPlayer)
        local prop = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("\112\114\111\112\95\108\111\103\112\105\108\101\95\48\54\98"), 9, 9, 9, 1, 1, 1)
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
            isoehcoisadviadomenubypass,
            isoehcoisadviadomenubypass,
            fuuuuuuuuuuuuuuudase,
            isoehcoisadviadomenubypass,
            0,
            fuuuuuuuuuuuuuuudase
        )
    end



    if butaozinho("Bugar player",isoehcoisadviadomenubypass,0.309,0.52) then
        RapePlayer2(SelectedPlayer)
    end

    if butaozinho("Ataque Armado",isoehcoisadviadomenubypass,0.314,0.54) then
        for s = 0, 5 do
            local ped = GetHashKey('g_m_y_mexgoon_02')
            RequestModel(ped)
            while not HasModelLoaded(ped) do
              Wait(1)
            end
            local ped_2 = CreatePed(31, ped, GetEntityCoords(GetPlayerPed(onplayer)), 0.0, true, true)
            GiveWeaponToPed(ped_2, GetHashKey("weapon_smg"), 999, 1, 1)
            TaskCombatPed(ped_2, GetPlayerPed(Selectedplayer), 0, 16)
        end
    end

    if butaozinho("Meter o ferro ",isoehcoisadviadomenubypass,0.3087,0.50) then
        local ped = GetPlayerPed(SelectedPlayer)
        local prop = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("\112\114\111\112\95\114\117\98\95\119\104\101\101\108\95\48\50"), 9, 9, 9, 1, 1, 1)
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
            isoehcoisadviadomenubypass,
            isoehcoisadviadomenubypass,
            fuuuuuuuuuuuuuuudase,
            isoehcoisadviadomenubypass,
            0,
            fuuuuuuuuuuuuuuudase
        )

      
        end

        if boxzinha("Atirar no Player ~b~LOOP",0.410,0.303,0.303,matarpl) then
            matarpl = not matarpl
        end

        if boxzinha("Tazer Player ~p~LOOP",0.410,0.323,0.323,tazepl) then
			
            tazepl = not tazepl

        end

        if boxzinha("Tazer Player ~p~GERAL ~p~LOOP",0.410,0.343,0.343,tazegr) then
			
            tazegr = not tazegr

        end

        if boxzinha("Atirar Player ~p~GERAL ~p~LOOP",0.410,0.363,0.363,atrartodos) then
			
            atrartodos = not atrartodos

        end

end
	local x, y = GetNuiCursorPosition()
	local x_ez, y_ez = GetActiveScreenResolution()
	local cursorX, cursorY = x / x_ez, y / y_ez
    meucuuuuuuu(Mouse(isoehcoisadviadomenubypass).x - 2, Mouse(isoehcoisadviadomenubypass).y - 7, 3, 13, 0, 0, 0, 255)
    meucuuuuuuu(Mouse(isoehcoisadviadomenubypass).x - 7, Mouse(isoehcoisadviadomenubypass).y - 2, 13, 3, 0, 0, 0, 255)
    meucuuuuuuu(Mouse(isoehcoisadviadomenubypass).x - 1, Mouse(isoehcoisadviadomenubypass).y - 6, 1, 11, 0, 120, 255, 255)
    meucuuuuuuu(Mouse(isoehcoisadviadomenubypass).x - 6, Mouse(isoehcoisadviadomenubypass).y - 1, 11, 1, 0, 120, 255, 255)
end
function meni()
	----------- MAIN ----------	
 
 
    --------MENU---------
    SetMouseCursorSprite(1)
    local ip = GetCurrentServerEndpoint()
    local year, month, day, hour, minute, second = GetUtcTime()
    local ip = GetCurrentServerEndpoint()
    hasodsidhadioahdoaishd(0.5, 0.51, 0.46, 0.50, 15,15,15,255) -- dul   MENU COLOR


    hasodsidhadioahdoaishd(0.082, 0.5, 0.16, 0.40, 15,15,15,255) -- Creditos
    oihdsaoidhasodahdaodho("Specter Menu",0.05,0.31,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
    oihdsaoidhasodahdaodho("Feito Por:  Harvey Specter~r~#0007~w~\n\n\nParceiros:\n\n~w~Specter ~r~Generator\n~b~Zuhn ~w~Store\n",0.01,0.37,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
    oihdsaoidhasodahdaodho("~r~Red~w~Engine",0.01,0.51,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
    oihdsaoidhasodahdaodho("~b~discord.gg/WPnAUqWs6G",0.01,0.55,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)
    oihdsaoidhasodahdaodho("~r~Obs: ~w~ Menu em desenvolvimento.\nAs funções poderão ser alteradas\na qualquer momento.",0.01,0.59,fuuuuuuuuuuuuuuudase,0.3,10,isoehcoisadviadomenubypass)

    hasodsidhadioahdoaishd(0.493, 0.218, 0.26, 0.058, 15,15,15,255) -- Retangulo em cima das opções

    hasodsidhadioahdoaishd(0.082, 0.3, 0.16, 0.004, 0, 0, 255, 255) -- Linha da porra dos credito


    hasodsidhadioahdoaishd(0.3101, 0.5, 0.001, 0.53, 10, 0, 230, 0) -- Actions Box Line (Left)
    hasodsidhadioahdoaishd(0.69, 0.5, 0.001, 0.53, 10, 230, 230, 0) -- Actions Box Line (Right)
    hasodsidhadioahdoaishd(0.5, 0.2363, 0.38, 0.002, 10, 230, 230, 0) -- Actions Box Line2 (Top)
    hasodsidhadioahdoaishd(0.5, 0.765, 0.38, 0.002, 10, 0, 0, 0) -- Actions Box Line (Bottom)

    hasodsidhadioahdoaishd(0.325, 0.5200, 0.001, 0.45, 0, 0, 255, 0) -- Actions Box Line (Left)
    hasodsidhadioahdoaishd(0.675, 0.5200, 0.001, 0.45, 0, 0, 255, 0) -- Actions Box Line (Right)
    hasodsidhadioahdoaishd(0.493, 0.2460, 0.26, 0.005, 0, 0, 255, 255) -- Actions Box Line2 (Top)
	hasodsidhadioahdoaishd(0.5, 0.3183, 0.35, 0.002, 10, 230, 230, 0) -- Actions Box Line3 (Bottom)
    hasodsidhadioahdoaishd(0.5, 0.758, 0.46, 0.004, 0, 0, 255, 255) -- Actions Box Line (Bottom)
	LeftBar()
	tabs()
end



local function AddVectors(one, two)
	return vector3(one.x + two.x, one.y + two.y, one.z + two.z)
end

function TriggerBot_Shoot(Player)
	local head = GetPedBoneCoords(Player, 0x796E, 0.0, 0.0, 0.0)
	SetPedShootsAtCoord(PlayerPedId(), head.x, head.y, head.z, fuuuuuuuuuuuuuuudase)
end

local function rage_bot_shoot(target, damage)
    local boneTarget = GetPedBoneCoords(target, 0x796E, 0.0, 0.0, 0.0)
    local _, weapon = GetCurrentPedWeapon(Citizen.InvokeNative(0xD80958FC74E988A6))
    Citizen.InvokeNative(0x867654CBC7606F2C, AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, damage, fuuuuuuuuuuuuuuudase, weapon, 0, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, 1000.0)
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
                ShowHeadingIndicatorOnBlip(playerblip, fuuuuuuuuuuuuuuudase)
                SetBlipNameToPlayerName(playerblip, id)
                SetBlipScale(playerblip, 0.80)
                SetBlipColour(playerblip, 49)
            else
                local vehicle = GetVehiclePedIsIn(ped, isoehcoisadviadomenubypass)
                local blipshit = GetBlipSprite(playerblip)
                local model = GetEntityModel(vehicle)
                if GetEntityHealth(ped) == 0 then
                    if blipshit ~= 429 then
                        SetBlipSprite(playerblip, 429)
                        SetBlipColour(playerblip, 37)
                        ShowHeadingIndicatorOnBlip(playerblip, fuuuuuuuuuuuuuuudase)
                        SetBlipScale(playerblip, 0.80)
                    end
                elseif vehicle then
                    local blippd = GetBlipSprite(playerblip)
                    local vehiclehash = GetVehicleClass(vehicle)
                    if
                        vehiclehash == oaisdhadhaodiadhasdhaoidhaiodashd("police") or model == oaisdhadhaodiadhasdhaoidhaiodashd("police2") or
                            model == oaisdhadhaodiadhasdhaoidhaiodashd("police3") or
                            model == oaisdhadhaodiadhasdhaoidhaiodashd("sheriff2") or
                            model == oaisdhadhaodiadhasdhaoidhaiodashd("sheriff") or
                            model == oaisdhadhaodiadhasdhaoidhaiodashd("policeold2") or
                            model == oaisdhadhaodiadhasdhaoidhaiodashd("fbi") or
                            model == oaisdhadhaodiadhasdhaoidhaiodashd("fbi2")
                     then
                        if blippd ~= 60 then
                            SetBlipSprite(playerblip, 60)
                            SetBlipColour(playerblip, 26)
                            SetBlipScale(playerblip, 0.80)
                            ShowHeadingIndicatorOnBlip(playerblip, fuuuuuuuuuuuuuuudase)
                        end
                        if IsPauseMenuActive() then
                            SetBlipAlpha(playerblip, 255)
                        else
                            local x1, y1 = (GetEntityCoords(PlayerPedId(), fuuuuuuuuuuuuuuudase))
                            local x2, y2 = (GetEntityCoords(GetPlayerPed(id), fuuuuuuuuuuuuuuudase))
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

    result.r = asdua90duaisoudas09dsaiodyaiosd.floor(asdua90duaisoudas09dsaiodyaiosd.sin(curtime * frequency + 0) * 127 + 128)
    result.g = asdua90duaisoudas09dsaiodyaiosd.floor(asdua90duaisoudas09dsaiodyaiosd.sin(curtime * frequency + 2) * 127 + 128)
    result.b = asdua90duaisoudas09dsaiodyaiosd.floor(asdua90duaisoudas09dsaiodyaiosd.sin(curtime * frequency + 4) * 127 + 128)

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
            local c3 = fuuuuuuuuuuuuuuudase
            repeat
                coroutine.yield(c1)
                c3, c1 = bZ(c0)
            until not c3
            c2.destructor, c2.handle = pudjpaosduapoduadpaodu, pudjpaosduapoduadpaodu
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
    local x = -asdua90duaisoudas09dsaiodyaiosd.sin(heading * asdua90duaisoudas09dsaiodyaiosd.pi / 180.0)
    local y = asdua90duaisoudas09dsaiodyaiosd.cos(heading * asdua90duaisoudas09dsaiodyaiosd.pi / 180.0)
    local z = asdua90duaisoudas09dsaiodyaiosd.sin(pitch * asdua90duaisoudas09dsaiodyaiosd.pi / 180.0)
    local len = asdua90duaisoudas09dsaiodyaiosd.sqrt(x * x + y * y + z * z)
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

Citizen.CreateThread(function()
	
	while MenuEnabled do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
        if munizinha then
            local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
            if ret then
                AddExplosion(pos.x, pos.y, pos.z, 29, 1.0, 1, 0, 0.1)
            end
        end
        function cw()
            return veiculoo(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
        end

        if munizinhadeshock then
            local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
            if ret then
            AddExplosion(pos.x, pos.y, pos.z, 70, 1.0, 1, 0, 0.1)
            end
        end
        
        local function cx()
            return veiculoo(FindFirstObject, FindNextObject, EndFindObject)
        end
        
        if delete then
            for dR in cw() do
                NetworkRequestControlOfEntity(dR)
                DeleteEntity(dR)
            end
        end

        if crosha then
            ShowHudComponentThisFrame(14)
        end

        local function DoRapidFireTick()
            DisablePlayerFiring(PlayerPedId(), true)
            if IsDisabledControlPressed(0, Keys["MOUSE1"]) then
                local _, weapon = GetCurrentPedWeapon(PlayerPedId())
                local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
                local camDir = GetCamDirFromScreenCenter()
                local camPos = GetGameplayCamCoord()
                local launchPos = GetEntityCoords(wepent)
                local targetPos = camPos + (camDir * 200.0)
                
                ClearAreaOfProjectiles(launchPos, 0.0, 1)
                
                ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
                ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
            end
        end
        			
			if rapidao then
				DoRapidFireTick()
			end
        
        function deleteallveh()
            delete = not delete
        end
        if buniza and IsPedInAnyVehicle(PlayerPedId(-1), fuuuuuuuuuuuuuuudase) then
            DisableControlAction(0, 86, true)
            if IsDisabledControlPressed(0, 86) and IsPedInAnyVehicle(PlayerPedId()) then
            local ped = GetPlayerPed(-1)
            local playerVeh = GetVehiclePedIsIn(ped, false)
            SetVehicleForwardSpeed(playerVeh, 75.0)
            end
        end
        if rolasinf then
            for i = 0, 3 do
                StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("mp" .. i .. "_shooting_ability"), 9999, fuuuuuuuuuuuuuuudase)
                StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("sp" .. i .. "_shooting_ability"), 9999, fuuuuuuuuuuuuuuudase)
            end
        else
            for i = 0, 3 do
                StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("mp" .. i .. "_shooting_ability"), 0, fuuuuuuuuuuuuuuudase)
                StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("sp" .. i .. "_shooting_ability"), 0, fuuuuuuuuuuuuuuudase)
            end
        end
        if matarpl then
            local ped = GetPlayerPed(SelectedPlayer) local location = GetEntityCoords(ped)
                local dest = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
                local org = GetPedBoneCoords(ped, SKEL_HEAD, 0.0, 0.0, 0.2)
                ShootSingleBulletBetweenCoords(org, dest, 50.0, true, GetHashKey('WEAPON_PISTOL_MK2'), PlayerPedId(), true, false, 10000.0)
            end
            if tazepl then
                local ped = GetPlayerPed(SelectedPlayer) local location = GetEntityCoords(ped)
                    local dest = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
                    local org = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
                    ShootSingleBulletBetweenCoords(org, dest, 50.0, true, GetHashKey('WEAPON_STUNGUN'), PlayerPedId(), true, false, 0.5)
                end
                if atrartodos then
                    for o, p in pairs(GetActivePlayers()) do
                        local S = GetPlayerPed(p)
                        local dW = GetEntityCoords(S)
                        local dX = GetPedBoneCoords(S, 0, 0.0, 0.0, 0.0)
                        local dY = GetPedBoneCoords(S, 57005, 0.0, 0.0, 0.2)
                        if S ~= PlayerPedId() and not IsPedDeadOrDying(S) then
                            ShootSingleBulletBetweenCoords(dY,dX,1,true,GetHashKey("WEAPON_PISTOL_MK2"),PlayerPedId(p),true,false,10000.0)
                        end
                        end
                    end
                if tazegr then 
                    for o, p in pairs(GetActivePlayers()) do
                        local S = GetPlayerPed(p)
                        local dW = GetEntityCoords(S)
                        local dX = GetPedBoneCoords(S, 0, 0.0, 0.0, 0.0)
                        local dY = GetPedBoneCoords(S, 57005, 0.0, 0.0, 0.2)
                        if S ~= PlayerPedId() and not IsPedDeadOrDying(S) then
                            ShootSingleBulletBetweenCoords(dY,dX,1,true,GetHashKey("WEAPON_STUNGUN"),PlayerPedId(p),true,false,1.0)
                        end
                    end
                end
                if delvehplayer then 
                    local playerPed = GetPlayerPed(selectedPlayer)
                    local playerVeh = GetVehiclePedIsIn(playerPed, true)
                    NetworkRequestControlOfEntity(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer)))
                    DeleteVehicle(playerVeh)
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
                fuuuuuuuuuuuuuuudase,
                U,
                PlayerPedId(),
                fuuuuuuuuuuuuuuudase,
                fuuuuuuuuuuuuuuudase,
                1000.0
            )
        end
        local function bD(H)
            if
                IsEntityOnScreen(H) and HasEntityClearLosToEntityInFront(PlayerPedId(), H) and
                    not IsPedDeadOrDying(H) and
                    not IsPedInVehicle(H, GetVehiclePedIsIn(H), isoehcoisadviadomenubypass) and
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
if coloridin then 
    ra = RGBRainbow(1.0)
    SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
    SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
end

if rgbmenu then
    ra = RGBRainbow(1.3)
    menucolor= { r = ra.r, g = ra.b, b = ra.g }

end

if Triggerbot then
    local hasTarget, target = GetEntityPlayerIsFreeAimingAt(PlayerId())
    if hasTarget and IsEntityAPed(target) then
        ShootAt(target, "SKEL_HEAD")
    end
end

if aimlock then
    for cI in EnumeratePeds() do
        local cJ = GetPedBoneCoords(cI, 31086)
            R = IsPedAPlayer(cI)
        local x, y, z = table.unpack(GetEntityCoords(cI))
        local T, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
        local fov = 0.25
        local cL, cM = GetFinalRenderedCamCoord(), GetEntityRotation(PlayerPedId(), 2)
        local cN, cO, cP = (cJ - cL).x, (cJ - cL).y, (cJ - cL).z
        local cQ, aX, cR = -math.deg(math.atan2(cN, cO)) - cM.z,math.deg(math.atan2(cP, #vector3(cN, cO, 1.0))),1.0
        local aimsmooth = 1.0
        local cQ = lerp(aimsmooth, 0.0, cQ)
        if cI ~= PlayerPedId() and IsEntityOnScreen(cI) and R then
        if _x > 0.5 - fov / 2 and _x < 0.5 + fov / 2 and _y > 0.5 - fov / 2 and _y < 0.5 + fov / 2 then
        if IsDisabledControlPressed(0, 19) then
        if IsDisabledControlPressed(0, 25) then
        if HasEntityClearLosToEntity(PlayerPedId(), cI, 19) then
        if not IsEntityDead(cI) and GetEntityHealth(cI) >= 110 and GetPlayerInvincible(cI) == false and not IsPedRagdoll(cI) and CanPedRagdoll(cI) then
                    if IsEntityVisible(cI) then 
                                SetGameplayCamRelativeRotation(cQ, aX, cR)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

if noreload then
    if IsPedShooting(PlayerPedId()) then
        PedSkipNextReloading(PlayerPedId())
        MakePedReload(PlayerPedId())
    end
end

if ExplosiveAmmo then
    local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
    if ret then
        AddExplosion(pos.x, pos.y, pos.z, 1, 1.0, 1, 0, 0.1)
    end
end

if Nocrip then
    local NoclipSpeed = 0.8
    local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
    local k = meupenisgrossoss
    local x, y, z = meupenisgrossoss
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
        NoclipSpeed = NoclipSpeed * 1.8
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
    SetEntityCoordsNoOffset(k, x, y, z, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
end
function RequestControlOnce(entity)
    if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
        return asdgaksdajkdadjkadgdkadsui
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), asdgaksdajkdadjkadgdkadsui)
    return NetworkRequestControlOfEntity(entity)
end

if box then
    for an in EnumeratePeds() do
        local d4, d5 = GetActiveScreenResolution()
        local cC = GetEntityCoords(an)
        me = an ~= PlayerPedId()
        mr = IsPedAPlayer(an)
        local cD = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), cC.x, cC.y, cC.z, fuuuuuuuuuuuuuuudase) * (1.1 - 0.05)
        local dB = GetPedArmour(an) * 10.76200
        local aK = GetEntityHealth(an) * 5.38200
        local dC = 1250
        local dD = 1200
        if IsEntityOnScreen(an) then
            if cD < 125 then
                if me and mr and not IsEntityDead(an) then
                    SetDrawOrigin(cC.x, cC.y, cC.z, 0)
                    hasodsidhadioahdoaishd(0.0, 0.0, 1075.2 / d4 / cD, 2376 / d5 / cD, 0, 0, 0, 90)
                    if HasEntityClearLosToEntity(PlayerPedId(), an, 19) then
                        local r, g, b = 0, 230, 255
                        hasodsidhadioahdoaishd(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(
                            (290 + 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
                            (-290 - 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
                            (290 + 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
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
                        local r, g, b = 0, 230, 255
                        hasodsidhadioahdoaishd(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(
                            (290 + 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
                            (-290 - 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
                            (290 + 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
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
                    hasodsidhadioahdoaishd(
                        -1078.2 / 2 / d4 / cD + dB / 2 / d4 / cD,
                        dC / d5 / cD + cD / 400 / cD,
                        dB / d4 / cD,
                        3 / d5,
                        r,
                        g,
                        b,
                        255
                    )
                    hasodsidhadioahdoaishd(
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
if oaisdhadhaodiadhasdhaoidhaiodashd(bt[l]) == bv then
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
function oihdsaoidhasodahdaodho3DD(x, y, z, text, r, g, b)
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


if espveh then
    for vehicle in enumeracarrim() do
        local x, y, z = table.unpack(GetEntityCoords(vehicle))
        local _, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
        local x1, y1, z1 = table.unpack(GetEntityCoords(PlayerPedId()))
        local dist =
            tonumber(string.format("%.1f", GetDistanceBetweenCoords(x1, y1, z1, x, y, z, true)))
        local string = "" .. GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)) .. " [" .. dist .. "m]"
        if dist < 300 then
            DrawTextOutline(
                string,
                _x,
                _y,
                0.23,
                4,
                true,
                true,
                esp_veiculo_cor.r,
                esp_veiculo_cor.g,
                esp_veiculo_cor.b
            )
        end
    end
end

if weaponesp then
    local cS = GetActivePlayers()
    for l = 1, #cS do
        local c1 = cS[l]
  --  if c1 ~= PlayerId() and GetPlayerServerId(c1) ~= 0 then
            local d7 = GetEntityCoords(GetPlayerPed(cS[l]))
            local d8 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), d7)
            local d9 = 250.0
            if d8 <= d9 then
                local T, dx = GetCurrentPedWeapon(GetPlayerPed(cS[l]), 1)
                local dy = bu(dx)
                if dy == nil then
                    dy = "Null"
                end
                local da = GetPlayerPed(c1)
                local db, dc, dd = table.unpack(GetEntityCoords(PlayerPedId()))
                local x, y, z = table.unpack(GetEntityCoords(da))
                local d6 = "Weapon: " .. dy .. "  [" .. math.floor(d8) .. "m]"
                local de = IsPlayerDead(da)
                if GetEntityHealth(da) <= 0 then
                    de = true
                end
                if de then
                    d6 = " "
                end
                if dy == "UNARMED" then
                    d6 = " "
                end
                bw(x, y, z + 1.0, d6, 255, 0, 212)
            end
       -- end
    end
    end

if espdepenis then
    local ds = GetActivePlayers()
    for T = 1, #ds do
        local ct = ds[T]
        if ct ~= PlayerId() and GetPlayerServerId(ct) ~= 0 then
            local dH = GetEntityCoords(GetPlayerPed(ds[T]))
            local dI = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), dH)
            local dJ = 300.0
            if dI <= dJ then
                local dK = GetPlayerPed(ct)
                local dL, dM, dN = table.unpack(GetEntityCoords(PlayerPedId()))
                local x, y, z = table.unpack(GetEntityCoords(dK))
                local dd = "~w~" .. GetPlayerName(ds[T]) .. "  ~w~[" .. asdua90duaisoudas09dsaiodyaiosd.floor(dI) .. "m~w~]"
                local dO = IsPlayerDead(dK)
                if GetEntityHealth(dK) <= 0 then
                    dO = fuuuuuuuuuuuuuuudase
                end
                if dO then
                    dd = " "
                end
                bY(x, y, z - 0.3, dd, 255, 255, 255)
            end
        end
    end
end


if box then
        for aR in EnumeratePeds() do
            local dF, dG = GetActiveScreenResolution()
            local d9 = GetEntityCoords(aR)
            me = aR ~= PlayerPedId()
            mr = IsPedAPlayer(aR)
            local da = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), d9.x, d9.y, d9.z, true) * (1.1 - 0.05)
            local ed = GetPedArmour(aR) * 10.76200
            local bc = GetEntityHealth(aR) * 5.38200
            local ee = 1250
            local ef = 1200
            if IsEntityOnScreen(aR) then
                if da < 125 then
                    if me and mr and not IsEntityDead(aR) then
                        SetDrawOrigin(d9.x, d9.y, d9.z, 0)
                        DrawRect(0.0, 0.0, 1075.2 / dF / da, 2376 / dG / da, 0, 0, 0, 90)
                        if HasEntityClearLosToEntity(PlayerPedId(), aR, 19) then
                            local r, g, b = 255, 255, 255
                            DrawRect(-537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                            DrawRect(-537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                            DrawRect(537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                            DrawRect(537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                            DrawRect(
                                (290 + 150 / 2) / dF / da,
                                1190.6 / dG / da,
                                350 / dF / da,
                                1 / dG,
                                r,
                                g,
                                b,
                                255
                            )
                            DrawRect(
                                (-290 - 150 / 2) / dF / da,
                                1190.6 / dG / da,
                                350 / dF / da,
                                1 / dG,
                                r,
                                g,
                                b,
                                255
                            )
                            DrawRect(
                                (290 + 150 / 2) / dF / da,
                                -1190.6 / dG / da,
                                350 / dF / da,
                                1 / dG,
                                r,
                                g,
                                b,
                                255
                            )
                            DrawRect(
                                (-290 - 150 / 2) / dF / da,
                                -1190.6 / dG / da,
                                350 / dF / da,
                                1 / dG,
                                r,
                                g,
                                b,
                                255
                            )
                        else
                            local r, g, b = 255, 0, 0
                            DrawRect(-537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                            DrawRect(-537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                            DrawRect(537.6 / dF / da, -935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                            DrawRect(537.6 / dF / da, 935.6 / dG / da, 1 / dF, 500 / dG / da, r, g, b, 255)
                            DrawRect(
                                (290 + 150 / 2) / dF / da,
                                1190.6 / dG / da,
                                350 / dF / da,
                                1 / dG,
                                r,
                                g,
                                b,
                                255
                            )
                            DrawRect(
                                (-290 - 150 / 2) / dF / da,
                                1190.6 / dG / da,
                                350 / dF / da,
                                1 / dG,
                                r,
                                g,
                                b,
                                255
                            )
                            DrawRect(
                                (290 + 150 / 2) / dF / da,
                                -1190.6 / dG / da,
                                350 / dF / da,
                                1 / dG,
                                r,
                                g,
                                b,
                                255
                            )
                            DrawRect(
                                (-290 - 150 / 2) / dF / da,
                                -1190.6 / dG / da,
                                350 / dF / da,
                                1 / dG,
                                r,
                                g,
                                b,
                                255
                            )
                        end
                        if GetPedArmour(aR) == 0 then
                            r, g, b = 75, 141 - (50 - GetPedArmour(aR)), 173 - (100 - GetPedArmour(aR))
                        else
                            r, g, b = 0, 178, 255
                        end
                        DrawRect(
                            -1078.2 / 2 / dF / da + ed / 2 / dF / da,
                            ee / dG / da + da / 400 / da,
                            ed / dF / da,
                            3 / dG,
                            r,
                            g,
                            b,
                            255
                        )
                        DrawRect(
                            -1078.2 / 2 / dF / da + bc / 2 / dF / da,
                            ef / dG / da + da / 400 / da,
                            bc / dF / da,
                            3 / dG,
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

if espweapon then
    for k, v in pairs(GetActivePlayers()) do
        local ped = GetPlayerPed(v)
        local Pped = PlayerPedId()
        er = PlayerPedId()
        if GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(PlayerPedId()), true) < 300 + 0.0 and ped ~= er then
            DrawLine(GetPedBoneCoordsF(ped, 31086, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xE0FD, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x192A, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0xCC4D, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x3FCF, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x5C57, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0xB3FE, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x3779, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0xB1C5, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0xEEEB, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x49D9, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0x9995, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0x9D4D, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),255, 255, 255, 255)
            DrawLine(GetPedBoneCoordsF(ped, 0x6E5C, 0.0, 0.0, 0.0),GetPedBoneCoordsF(ped, 0xDEAD, 0.0, 0.0, 0.0),255, 255, 255, 255)
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

    if box223 then
        for an in EnumeratePeds() do
            local d4, d5 = GetActiveScreenResolution()
            local cC = GetEntityCoords(an)
            me = an ~= PlayerPedId()
            mr = IsPedAPlayer(an)
            local cD = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), cC.x, cC.y, cC.z, meupenisgrossozz) * (1.1 - 0.05)
            local dB = GetPedArmour(an) * 10.76200
            local aK = GetEntityHealth(an) * 5.38200
            local dC = 1250
            local dD = 1200
            if IsEntityOnScreen(an) then
                if cD < 125 then
                    if me and mr and not IsEntityDead(an) then
                        SetDrawOrigin(cC.x, cC.y, cC.z, 0)
                        fuuuuuuuuuuuuuuudase(0.0, 0.0, 1075.2 / d4 / cD, 2376 / d5 / cD, 0, 0, 0, 90)
                        if HasEntityClearLosToEntity(PlayerPedId(), an, 19) then
                            local r, g, b = 255, 255, 255
                            fuuuuuuuuuuuuuuudase(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                            fuuuuuuuuuuuuuuudase(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                            fuuuuuuuuuuuuuuudase(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                            fuuuuuuuuuuuuuuudase(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                            fuuuuuuuuuuuuuuudase(
                                (290 + 150 / 2) / d4 / cD,
                                1190.6 / d5 / cD,
                                350 / d4 / cD,
                                1 / d5,
                                r,
                                g,
                                b,
                                255
                            )
                            fuuuuuuuuuuuuuuudase(
                                (-290 - 150 / 2) / d4 / cD,
                                1190.6 / d5 / cD,
                                350 / d4 / cD,
                                1 / d5,
                                r,
                                g,
                                b,
                                255
                            )
                            fuuuuuuuuuuuuuuudase(
                                (290 + 150 / 2) / d4 / cD,
                                -1190.6 / d5 / cD,
                                350 / d4 / cD,
                                1 / d5,
                                r,
                                g,
                                b,
                                255
                            )
                            fuuuuuuuuuuuuuuudase(
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
                            fuuuuuuuuuuuuuuudase(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                            fuuuuuuuuuuuuuuudase(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                            fuuuuuuuuuuuuuuudase(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                            fuuuuuuuuuuuuuuudase(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                            fuuuuuuuuuuuuuuudase(
                                (290 + 150 / 2) / d4 / cD,
                                1190.6 / d5 / cD,
                                350 / d4 / cD,
                                1 / d5,
                                r,
                                g,
                                b,
                                255
                            )
                            fuuuuuuuuuuuuuuudase(
                                (-290 - 150 / 2) / d4 / cD,
                                1190.6 / d5 / cD,
                                350 / d4 / cD,
                                1 / d5,
                                r,
                                g,
                                b,
                                255
                            )
                            fuuuuuuuuuuuuuuudase(
                                (290 + 150 / 2) / d4 / cD,
                                -1190.6 / d5 / cD,
                                350 / d4 / cD,
                                1 / d5,
                                r,
                                g,
                                b,
                                255
                            )
                            fuuuuuuuuuuuuuuudase(
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
                        fuuuuuuuuuuuuuuudase(
                            -1078.2 / 2 / d4 / cD + dB / 2 / d4 / cD,
                            dC / d5 / cD + cD / 400 / cD,
                            dB / d4 / cD,
                            3 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        fuuuuuuuuuuuuuuudase(
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



if hfkwebieewdqfogos4 then
    RemoveParticleFx("veh_respray_smoke", 1)
    OnlinePlayers = GetActivePlayers()
    for i = 1, #OnlinePlayers do 

        local ped = GetPlayerPed(OnlinePlayers[i])
        local pedcoords = GetEntityCoords(ped)
        
        RequestNamedPtfxAsset("core")
    
        UseParticleFxAssetNextCall("core")
        StartNetworkedParticleFxNonLoopedAtCoord("veh_respray_smoke", pedcoords, 0.0, 0.0, 0.0, 20.0, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
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
        StartNetworkedParticleFxNonLoopedAtCoord("td_blood_shotgun", pedcoords, 0.0, 0.0, 0.0, 20.0, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
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
        StartNetworkedParticleFxNonLoopedAtCoord("veh_backfire", pedcoords, 0.0, 0.0, 0.0, 20.0, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
    end
end


if box2 then
    for an in EnumeratePeds() do
        local d4, d5 = GetActiveScreenResolution()
        local cC = GetEntityCoords(an)
        me = an ~= PlayerPedId()
        mr = IsPedAPlayer(an)
        local cD = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), cC.x, cC.y, cC.z, fuuuuuuuuuuuuuuudase) * (1.1 - 0.05)
        local dB = GetPedArmour(an) * 10.76200
        local aK = GetEntityHealth(an) * 5.38200
        local dC = 1250
        local dD = 1200
        if IsEntityOnScreen(an) then
            if cD < 125 then
                if me and mr and not IsEntityDead(an) then
                    SetDrawOrigin(cC.x, cC.y, cC.z, 0)
                    hasodsidhadioahdoaishd(0.0, 0.0, 1075.2 / d4 / cD, 2376 / d5 / cD, 0, 0, 0, 90)
                    if HasEntityClearLosToEntity(PlayerPedId(), an, 19) then
                        local r, g, b = 195, 179, 198
                        hasodsidhadioahdoaishd(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(
                            (290 + 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
                            (-290 - 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
                            (290 + 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
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
                        hasodsidhadioahdoaishd(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        hasodsidhadioahdoaishd(
                            (290 + 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
                            (-290 - 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
                            (290 + 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        hasodsidhadioahdoaishd(
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
                    hasodsidhadioahdoaishd(
                        -1078.2 / 2 / d4 / cD + dB / 2 / d4 / cD,
                        dC / d5 / cD + cD / 400 / cD,
                        dB / d4 / cD,
                        3 / d5,
                        r,
                        g,
                        b,
                        255
                    )
                    hasodsidhadioahdoaishd(
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

    SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass))
    SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0.0)
    SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0)
    SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), isoehcoisadviadomenubypass)
    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), isoehcoisadviadomenubypass), 0)

end



if SuperJump then

    
    SetSuperJumpThisFrame(PlayerId())


    
    

end

if HornBoost and IsPedInAnyVehicle(PlayerPedId(-1), fuuuuuuuuuuuuuuudase) then
    if IsControlPressed(1, 38) then
    Citizen.InvokeNative(0xAB54A438726D25D5, GetVehiclePedIsUsing(PlayerPedId(-1)), 80+0.0)
    end
    end
if InfiniteCombatRoll then
for i = 0, 3 do
StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("mp" .. i .. "_shooting_ability"), 9999, fuuuuuuuuuuuuuuudase)
StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("sp" .. i .. "_shooting_ability"), 9999, fuuuuuuuuuuuuuuudase)
end
else
for i = 0, 3 do
StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("mp" .. i .. "_shooting_ability"), 0, fuuuuuuuuuuuuuuudase)
StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("sp" .. i .. "_shooting_ability"), 0, fuuuuuuuuuuuuuuudase)
end
end

local function L(M, N)
    return vector3(M.x + N.x, M.y + N.y, M.z + N.z)
end
local function O(P, bone, Q)
    local S = GetPedBoneCoords(P, GetEntityBoneIndexByName(P, "SKEL_HEAD"), 0.0, 0.0, 0.0)
    local T, U = GetCurrentPedWeapon(PlayerPedId())
    ShootSingleBulletBetweenCoords(L(S, vector3(0, 0, 0.1)), S, Q, fuuuuuuuuuuuuuuudase, U, PlayerPedId(), fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, 1000.0)
end



local function bD(H)
    if
        IsEntityOnScreen(H) and HasEntityClearLosToEntityInFront(PlayerPedId(), H) and not IsPedDeadOrDying(H) and
            not IsPedInVehicle(H, GetVehiclePedIsIn(H), isoehcoisadviadomenubypass) and
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
    RequestStreamedTextureDict("mpmissmarkers256", fuuuuuuuuuuuuuuudase)
end
DrawSprite("mpmissmarkers256", "corona_shade", 0.5, 0.5, 0.15, 0.15 * 1.8, 0.0, 0, 0, 0, 90)

end 






           





if IsControlJustPressed(1, noclip["Value"]) then
    Nocrip = not Nocrip
    if Nocrip then
        SetEntityVisible(PlayerPedId(), isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
    else
        SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
        SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), fuuuuuuuuuuuuuuudase, isoehcoisadviadomenubypass)
        SetEntityVisible(PlayerPedId(), fuuuuuuuuuuuuuuudase, isoehcoisadviadomenubypass)
    end
end




		if IsControlJustPressed(1, keizinhadomeupenis["Value"]) then
			DisplayMenu = not DisplayMenu
		end
		if DisplayMenu	then
			meni()
			kontrols()
			
		end

	end
end)





function ToggleNoclip()
    Nocrip = not Nocrip
    if Nocrip then
        SetEntityVisible(GetVehiclePedIsIn(PlayerPedId()), false, false)
        SetEntityVisible(PlayerPedId(), false, false)
        SetEntityCollision(PlayerPedId(), false, false)
        SetEntityCollision(GetVehiclePedIsIn(PlayerPedId()), false, false)
        SetEntityRotation(GetVehiclePedIsIn(PlayerPedId()), GetGameplayCamRot(0), 0, false)
        SetEntityRotation(PlayerPedId(), GetGameplayCamRot(0), 0, false)
        FreezeEntityPosition(GetVehiclePedIsIn(PlayerPedId()), true)
        FreezeEntityPosition(PlayerPedId(), true)

    else
        FreezeEntityPosition(GetVehiclePedIsIn(PlayerPedId()), false)
        FreezeEntityPosition(PlayerPedId(), false)
        SetEntityCollision(GetVehiclePedIsIn(PlayerPedId()), true, true)
        SetEntityCollision(PlayerPedId(), true, true)
        SetEntityRotation(GetVehiclePedIsIn(PlayerPedId()), GetGameplayCamRot(0), 0, false)
        SetEntityRotation(PlayerPedId(), GetGameplayCamRot(0), 0, false)
        SetEntityVisible(PlayerPedId(), true, true)
        SetEntityVisible(GetVehiclePedIsIn(PlayerPedId()), true, true)
        SetEntityCollision(PlayerPedId(), true, true)
    end
end






if noclip222 then
    local currentSpeed = 2
    local noclipEntity = IsPedInAnyVehicle(PlayerPedId(), isoehcoisadviadomenubypass) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
    FreezeEntityPosition(PlayerPedId(), fuuuuuuuuuuuuuuudase)
    SetEntityInvincible(PlayerPedId(), fuuuuuuuuuuuuuuudase)

    local newPos = GetEntityCoords(entity)

    wy98sh98hdgshuiahidwgdi(0, 32, fuuuuuuuuuuuuuuudase) --MoveUpOnly
    wy98sh98hdgshuiahidwgdi(0, 268, fuuuuuuuuuuuuuuudase) --MoveUp

    wy98sh98hdgshuiahidwgdi(0, 31, fuuuuuuuuuuuuuuudase) --MoveUpDown

    wy98sh98hdgshuiahidwgdi(0, 269, fuuuuuuuuuuuuuuudase) --MoveDown
    wy98sh98hdgshuiahidwgdi(0, 33, fuuuuuuuuuuuuuuudase) --MoveDownOnly

    wy98sh98hdgshuiahidwgdi(0, 266, fuuuuuuuuuuuuuuudase) --MoveLeft
    wy98sh98hdgshuiahidwgdi(0, 34, fuuuuuuuuuuuuuuudase) --MoveLeftOnly

    wy98sh98hdgshuiahidwgdi(0, 30, fuuuuuuuuuuuuuuudase) --MoveLeftRight

    wy98sh98hdgshuiahidwgdi(0, 267, fuuuuuuuuuuuuuuudase) --MoveRight
    wy98sh98hdgshuiahidwgdi(0, 35, fuuuuuuuuuuuuuuudase) --MoveRightOnly

    wy98sh98hdgshuiahidwgdi(0, 44, fuuuuuuuuuuuuuuudase) --Cover
    wy98sh98hdgshuiahidwgdi(0, 20, fuuuuuuuuuuuuuuudase) --MultiplayerInfo

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
    SetEntityRotation(noclipEntity, 0.0, 0.0, 0.0, 0, isoehcoisadviadomenubypass)
    SetEntityHeading(noclipEntity, heading)

    SetEntityCollision(noclipEntity, isoehcoisadviadomenubypass, isoehcoisadviadomenubypass)
    SetEntityCoordsNoOffset(noclipEntity, newPos.x, newPos.y, newPos.z, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase)

    FreezeEntityPosition(noclipEntity, isoehcoisadviadomenubypass)
    SetEntityInvincible(noclipEntity, isoehcoisadviadomenubypass)
    SetEntityCollision(noclipEntity, fuuuuuuuuuuuuuuudase, fuuuuuuuuuuuuuuudase)
end





local platano = 
{
    closed = true,
    key = 166,
    entityEnumerator = 
    {
      __gc = function(enum)
        if enum.destructor and enum.handle then
          enum.destructor(enum.handle)
        end
        enum.destructor = nil
        enum.handle = nil
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
    
    local next = true
    repeat
      coroutine.yield(id)
      next, id = FindNextVehicle(iter)
    until not next
    
    enum.destructor, enum.handle = nil, nil
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
        return true 
    else 
        return false 
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
            return true
        end
        
    else
        return false
    end
end

function platano:rainbow(speed)
    local return_values = {}
    
    local game_timer = GetGameTimer() / 200
    
    return_values.r = math.floor(math.sin(game_timer * speed + 0) * 127 + 128)
    return_values.g = math.floor(math.sin(game_timer * speed + 2) * 127 + 128)
    return_values.b = math.floor(math.sin(game_timer * speed + 4) * 127 + 128)
    
    return return_values
end

Citizen.CreateThread(function()
  while true do
      if IsDisabledControlJustPressed(1, platano.key) then
        platano.closed = not platano.closed
    end
  
    if platano.closed == false then
    

        local rainbow = platano:rainbow(1.0)

        platano:rectangle(1760,19,152,502, 0, 0, 255, 255)
        platano:rectangle(1760,20,150,500,0,0,0,255)

        local x,y = GetNuiCursorPosition()
                
        local i = 0

        for veh in platano:enumerate_vehicles() do				
            if IsEntityDead(veh) then
                i = i + 1
                if platano:button(GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. " [~r~Destruido~w~]",1770,i * 16,255,255,255) then
                    RequestControlOnce(veh)
                    SetEntityCoords(veh, GetEntityCoords(PlayerPedId()))
                    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                    SetVehicleOnGroundProperly(veh)
                    SetVehicleFixed(veh)
                end
            else	
                if GetPedInVehicleSeat(veh,-1) == 0 then
                    i = i + 1
                    if platano:button(GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. " [~g~Liberado~w~]",1770,i * 16,255,255,255) then
                        RequestControlOnce(veh)
                        SetEntityCoords(veh, GetEntityCoords(PlayerPedId()))
                        local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                        SetVehicleOnGroundProperly(veh)
                        SetVehicleFixed(veh, false)
                        Wait(1000)
                        SetPedIntoVehicle(GetPlayerPed(-1),veh,-1)
                    end
                end
            end
        end
        local x, y = GetNuiCursorPosition()
        local x_ez, y_ez = GetActiveScreenResolution()
        local cursorX, cursorY = x / x_ez, y / y_ez
    
        MouseCursor('^', cursorX, cursorY - 0.009, 0, 0.33, true, 0, 0, 0, 255, true)    

    end
    Citizen.Wait(0)
  end
end)
print("Obrigado por adquirir o Specter Menu!")