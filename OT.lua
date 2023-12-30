local DisplayMenu = false
local MenuEnabled = true
local tab = "Self"
local Current_Config = "Save Config"
local scrool = 11
local OpenMenuKey = 178

if not OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD then
	OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD = {	
		locals = {
			esp_color = { r = 255, g = 255, b = 255 },
			PlayerIds = GetActivePlayers(),
			DisplaySkins = false,
			godmode = false,
			noclip = false,
			SuperJump = false,
			Epunch = false,
			InfStamina = false,
			Invisible = false,
			FastRun = false,
			bunnyhop = false,
			InfAmmo = false,
			Eammo = false,
			NoRel = false,
			HvH = false,
			TriggerBot = false,
			AntiAim = false,
			ESP = false,
			DrawImpact = false,
			Crosshair = false,
			Force3person = false,
			DisplayConfigs = false,
			CanMoveMenu = true,
			ShowPressedKeys = false,
			SafeMode = false,
			Friends = {}
		}
	}
end

local otc_xd = {
	locals = {
		esp_color = { r = 255, g = 255, b = 255 },
		PlayerIds = GetActivePlayers(),
		DisplaySkins = false,
		godmode = false,
		noclip = false,
		SuperJump = false,
		Epunch = false,
		InfStamina = false,
		Invisible = false,
		FastRun = false,
		bunnyhop = false,
		InfAmmo = false,
		Eammo = false,
		NoRel = false,
		HvH = false,
		TriggerBot = false,
		AntiAim = false,
		ESP = false,
		DrawImpact = false,
		Crosshair = false,
		Force3person = false,
		Trials = false,
		DisplayConfigs = false,
		CanMoveMenu = true,
		ShowPressedKeys = false,
		SafeMode = false,
		Friends = {}
	}
}

local keys = {
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
}

		
--------MENU---------

local function DoNetwork(obj)
        if not Citizen.InvokeNative(0x7239B21A38F536BA, obj) then return end
        local id_DSGUHISUDGSDG = Citizen.InvokeNative(0x99BFDC94A603E541, obj)
        Citizen.InvokeNative(0x2B1813ABA29016C5, id_DSGUHISUDGSDG, true)
        Citizen.InvokeNative(0xE05E81A888FA63C8, id_DSGUHISUDGSDG, true)
        Citizen.InvokeNative(0x299EEB23175895FC, id_DSGUHISUDGSDG, false)

        for _, src_DSHGIUDSGSDG in pairs(GetActivePlayers()) do
            Citizen.InvokeNative(0xA8A024587329F36A, id_DSGUHISUDGSDG, src_DSHGIUDSGSDG, true)
        end
    end

local notifications = {}

local function AddNotification(text)
	table.insert(notifications, { ['startTime'] = Citizen.InvokeNative(0x9CD27B0045628463), ['time'] = 5000, ['text'] = text })
end

function text(nazwa,outline,size,Justification,xx,yy, centre, font)

	if outline then
		SetTextOutline()
	end
	if font ~= nil and tonumber(font) ~= nil then
	SetTextFont(font)
	else
	SetTextFont(0)
	end
	if centre then
		SetTextCentre(true)
	end
	
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)
end

function MenuButton(id, nazwa,outline,xx,yy)
	local x,y = GetNuiCursorPosition()
	text(nazwa,outline,0.27,0,xx,yy - 0.009, true)
	if id == tab then
		DrawRect(xx,yy,0.034,0.03,34, 35, 40,255)  -- lewo prawo , wysokosc, szerokosc od bokow, szerokosc od gory
	end
	if( (x / 1920) + 0.02 >= xx and (x / 1920) - 0.018 <= xx and (y / 1080) + 0.017 >= yy and (y / 1080) - 0.016 <= yy and IsDisabledControlJustReleased(0, 92)) then 
		return true
	end
	return false
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
		text("~o~"..nazwa.." - ["..id.."]",outline,0.27,0,xx,yy - 0.009, false)	
		if IsDisabledControlJustReleased(0, 92) then
			return true
		end
	else
		text(nazwa.." - ["..id.."]",outline,0.27,0,xx,yy - 0.009, false)
	end
	return false
end

function SlimButton(nazwa,outline,xx,yy)
	local x,y = GetNuiCursorPosition()
	text(nazwa,outline,0.24,0,xx,yy - 0.009, true)
	DrawRect(xx,yy-0.014,0.058,0.002,222, 158, 74,255)
	DrawRect(xx,yy,0.058,0.028,34,35,40,255)
	if( (x / 1920) + 0.030 >= xx and (x / 1920) - 0.029 <= xx and (y / 1080) + 0.015 >= yy and (y / 1080) - 0.014 <= yy) then 
		DrawRect(xx,yy-0.014,0.058,0.002,222, 158, 74,255)
		if IsDisabledControlJustReleased(0, 92) then
			return true
		end
	else
		DrawRect(xx,yy-0.014,0.058,0.002, 115, 118, 125,255)
		return false
	end
end

function ComboButton(nazwa,outline,xx,yy)
	local x,y = GetNuiCursorPosition()
	text(nazwa,outline,0.22,0,xx,yy - 0.009, true)
	DrawRect(xx,yy,0.058,0.02,34,35,40,255)
	if( (x / 1920) + 0.030 >= xx and (x / 1920) - 0.029 <= xx and (y / 1080) + 0.010 >= yy and (y / 1080) - 0.01 <= yy) then 
		if IsDisabledControlJustReleased(0, 92) then
			return true
		end
	else
		return false
	end
end

function CheckBox(bool, nazwa,outline,xx,yy)
	local x,y = GetNuiCursorPosition()
	text(nazwa,outline,0.22,0,xx-0.013,yy - 0.009)
	if bool then
	DrawRect(xx-0.021,yy,0.009,0.02,34,35,40,255)
	DrawRect(xx-0.021,yy,0.009,0.02,255,158,1,255)
	else
	DrawRect(xx-0.021,yy,0.009,0.02,34,35,40,255)
	end
	local widht = GetTextWidht(nazwa)
	if( (x / 1920) + 0.030 >= xx and (x / 1920) - widht <= xx and (y / 1080) + 0.01 >= yy and (y / 1080) - 0.012 <= yy) then 
		if IsDisabledControlJustReleased(0, 92) then
			return true
		end
	else
		return false
	end
end

function DrawGeneralAndDrawSecond()
	text("General",false,0.25,0,0.43,0.315, true)
	
	DrawRect(0.366, 0.488, 0.0006, 0.33, 52, 55, 64, 255) -- lewy szary
	DrawRect(0.494, 0.488, 0.0006, 0.33, 52, 55, 64, 255) -- prawy szary
	
	DrawRect(0.39, 0.325, 0.048, 0.000925, 255, 174, 59, 255) -- lewy pomarańcz
	DrawRect(0.47, 0.325, 0.048, 0.000925, 255, 174, 59, 255) -- prawy pomarańcz
	
	DrawRect(0.43, 0.653, 0.128, 0.000925, 255, 174, 59, 255) -- dolny pomarańcz
	
	-- Second --
	
	text("Second",false,0.25,0,0.57,0.315, true)
	
	DrawRect(0.506, 0.488, 0.0006, 0.33, 52, 55, 64, 255) -- lewy szary
	DrawRect(0.634, 0.488, 0.0006, 0.33, 52, 55, 64, 255) -- prawy szary
	
	DrawRect(0.53, 0.325, 0.048, 0.000925, 255, 174, 59, 255) -- lewy pomarańcz
	DrawRect(0.61, 0.325, 0.048, 0.000925, 255, 174, 59, 255) -- prawy pomarańcz
	
	DrawRect(0.57, 0.653, 0.128, 0.000925, 255, 174, 59, 255) -- dolny pomarańcz
end

--

function bar(x,y,height)
	DrawRect(x,y,0.003,height,161, 161, 161,255)
end
-----MENU-----

---------FUNCTIONS----------

function SpectatePlayer(player)
    local playerPed = PlayerPedId()
    Spectating = not Spectating
    local targetPed = GetPlayerPed(player)

    if (Spectating) then
        local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, false))

        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(true, targetPed)

    else
        local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, false))

        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(false, targetPed)

    end
end

local function DrawText3D(x, y, z, text, r, g, b)
    Citizen.InvokeNative(0xAA0008F3BBB8F416, x, y, z, 0)
    Citizen.InvokeNative(0x66E0276CC5F6B9DA, 0)
    Citizen.InvokeNative(0x038C1F517D7FDCF8, 0)
    Citizen.InvokeNative(0x07C837F9A01C34C9, 0.0, 0.20)
    Citizen.InvokeNative(0xBE6B23FFA53FB442, r, g, b, 255)
    Citizen.InvokeNative(0x465C84BC39F1C351, 0, 0, 0, 0, 255)
    Citizen.InvokeNative(0x441603240D202FA6, 2, 0, 0, 0, 150)
    Citizen.InvokeNative(0x1CA3E9EAC9D93E5E)
    Citizen.InvokeNative(0x2513DFB0FB8400FE)
    Citizen.InvokeNative(0x25FBB336DF1804CB, "STRING")
    Citizen.InvokeNative(0xC02F4DBFB51D988B, 1)
    Citizen.InvokeNative(0x6C188BE134E074AA, text)
    Citizen.InvokeNative(0xCD015E5BB0D96A57, 0.0, 0.0)
    Citizen.InvokeNative(0xFF0B610F6BE0D7AF)
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

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

local function RequestModelSync(model_DSIGHODSIGSD, timeout_DSIUFHISDGSDG)
        timeout_DSIUFHISDGSDG = timeout_DSIUFHISDGSDG or 2500
        local counter_DSGIHSDIUGJDSGDS = 0
        Citizen.InvokeNative(0x963D27A58DF860AC, Citizen.InvokeNative(0xD24D37CC275948CC, model_DSIGHODSIGSD))

        while not Citizen.InvokeNative(0x98A4EB5D89A0C952, Citizen.InvokeNative(0xD24D37CC275948CC, model_DSIGHODSIGSD)) do
            Citizen.InvokeNative(0x963D27A58DF860AC, model_DSIGHODSIGSD)
            counter_DSGIHSDIUGJDSGDS = counter_DSGIHSDIUGJDSGDS + 100
            Wait(0)
            if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then return false end
        end

        return true
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
                           local obj = Citizen.InvokeNative(0x509D5878EB39E842, Citizen.InvokeNative(0xD24D37CC275948CC, "prop_container_05a"), where.x, where.y, where.z + (offZ or 0), true, true, true)
                            DoNetwork(obj)
                            Citizen.InvokeNative(0x6B9BBD38AB0796DF, obj, ent_DSIUHGIUSDGDS, Citizen.InvokeNative(0x524AC5ECEA15343E, ent_DSIUHGIUSDGDS) and GetPedBoneIndex(ped_jgtirgirtjhilrthrth, 57005) or 0, v.x, v.y, v.z + (offZ or 0), v._p_, v._y_, v._r_, false, true, false, false, 1, true)
                            Citizen.Wait(80)
                        end
                    end
                end)
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
    blockinput_dihgs8ourigdfg = true

    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        Wait(0)
    end

    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        Wait(500)
        blockinput_dihgs8ourigdfg = false
        return dfjs8erfdfg
    else
        Wait(500)
        blockinput_dihgs8ourigdfg = false
        return nil
    end
end

function TSE(is_server,event,...)
	local args=msgpack.pack({...})
	if is_server then
		TriggerServerEventInternal(event,args,args:len())
	else
		TriggerEventInternal(event,args,args:len())
	end
end

function math.round(first, second)
    return tonumber(string.format("%." .. (second or 0) .. "f", first))
end

function respawnPed(id, cords, int)
	SetEntityCoordsNoOffset(id, cords.x, cords.y, cords.z, false, false, false, true)
	NetworkResurrectLocalPlayer(cords.x, cords.y, cords.z, int, true, false)
	SetPlayerInvincible(id, false)
	TSE(false, "playerSpawned", cords.x, cords.y, cords.z)
	ClearPedBloodDamage(id)
end

function nativeRevive()
	local entcord = GetEntityCoords(PlayerPedId())
	local cords = {
		x = math.round(entcord.x, 1),
		y = math.round(entcord.y, 1),
		z = math.round(entcord.z, 1)
	}
	respawnPed(PlayerPedId(), cords, 0)
	StopScreenEffect("DeathFailOut")
end

---------FUNCTIONS----------

function kontrols(Disable)
	DisableControlAction(0, 1, true) -- LookLeftRight
	DisableControlAction(0, 2, true) -- LookUpDown
	DisableControlAction(0, 142, true) -- MeleeAttackAlternate
	DisableControlAction(0, 18, true) -- Enter
	DisableControlAction(0, 322, true) -- ESC
	DisableControlAction(0, 106, true) -- VehicleMouseControlOverride

	if not otc_xd.locals.CanMoveMenu then
		DisableControlAction(0, 32, true) -- W
		DisableControlAction(0, 31, true) -- S
		DisableControlAction(0, 30, true) -- D
		DisableControlAction(0, 34, true) -- A
	end

end

function LeftBar()

	if MenuButton("Self", "Self",false,0.43,0.27) then
		tab = "Self"
	end

	if MenuButton("Online", "Online",false,0.47,0.27) then
		tab = "Online"
	end

	if MenuButton("Visual", "Visual",false,0.51,0.27) then
		tab = "Visual"
	end

	if MenuButton("Misc", "Misc",false,0.55,0.27) then
		tab = "Misc"
	end

	if MenuButton("Settings", "Settings",false,0.59,0.27) then
		tab = "Settings"
	end

	DrawRect(0.5, 0.3, 0.27, 0.001, 52, 55, 64, 255)
	DrawRect(0.405, 0.27, 0.0006, 0.05, 52, 55, 64, 255)
	DrawRect(0.5, 0.735, 0.27, 0.001, 52, 55, 64, 255)
	DrawRect(0.362, 0.5, 0.0005, 0.52, 52, 55, 64, 255)
	DrawRect(0.637, 0.5, 0.0005, 0.52, 52, 55, 64, 255)
	
	DrawGeneralAndDrawSecond()


end

function tabs() 
	if tab == "Self" then
		
		-- General --
		
		if SlimButton("Revive",false,0.4,0.36) then
			nativeRevive()
		end
	
		if SlimButton("Heal",false,0.4,0.395) then
			SetEntityHealth(PlayerPedId(), 200)
		end
		
		if SlimButton("Armour",false,0.4,0.43) then
			SetPedArmour(PlayerPedId(), 100)
		end
		
		if SlimButton("Suicide",false,0.4,0.465) then
			SetEntityHealth(PlayerPedId(), 0)
		end
		
		if SlimButton("Select Skin    ↓",false,0.4,0.5) then
			otc_xd.locals.DisplaySkins = not otc_xd.locals.DisplaySkins
		end
		
		if otc_xd.locals.DisplaySkins then
			if ComboButton("Skin 1",false,0.4,0.527) then
				ChangeModel("mp_m_freemode_01")
			end
		
			if ComboButton("Load Skin Model",false,0.4,0.55) then
				local skin = KeyBoardInput("Input Skin Model", "", 9999)
				if IsModelValid(GetHashKey(skin)) and IsModelAPed(GetHashKey(skin)) then
					ChangeModel(skin)
				end
			end
		end
		
		-- Second --
		
		if CheckBox(otc_xd.locals.godmode, "Godmode",false,0.54,0.35) then
			otc_xd.locals.godmode = not otc_xd.locals.godmode
		end
		
		if CheckBox(otc_xd.locals.noclip, "Noclip",false,0.54,0.375) then
			otc_xd.locals.noclip = not otc_xd.locals.noclip
		end
		
		if CheckBox(otc_xd.locals.SuperJump, "Super Jump",false,0.54,0.4) then
			otc_xd.locals.SuperJump = not otc_xd.locals.SuperJump
		end
		
		if CheckBox(otc_xd.locals.Epunch, "Explosive Punch",false,0.54,0.425) then
			otc_xd.locals.Epunch = not otc_xd.locals.Epunch
		end
		
		if CheckBox(otc_xd.locals.InfStamina, "Infinite Stamina",false,0.54,0.45) then
			otc_xd.locals.InfStamina = not otc_xd.locals.InfStamina
		end
		
		if CheckBox(otc_xd.locals.Invisible, "Invisible",false,0.54,0.475) then
			otc_xd.locals.Invisible = not otc_xd.locals.Invisible
		end
		
		if CheckBox(otc_xd.locals.FastRun, "Fast Run",false,0.54,0.5) then
			otc_xd.locals.FastRun = not otc_xd.locals.FastRun
		end
		
	elseif tab == "Online" then
	
		if SlimButton("Teleport",false,0.54,0.36) then
			local coords = GetEntityCoords(GetPlayerPed(otc_xd.locals.SelectedPlayer))
			SetEntityCoordsNoOffset(PlayerPedId(), coords, 0.0, 0.0, 0.0)
		end
		
		if SlimButton("Spectate",false,0.54,0.395) then
			SpectatePlayer(otc_xd.locals.SelectedPlayer)
		end
		
		if SlimButton("Swastika",false,0.54,0.43) then
			SpawnSwastika(Citizen.InvokeNative(0x43A66C31C68491C0, otc_xd.locals.SelectedPlayer), 2.0)
		end
		
		if SlimButton("Kill",false,0.54,0.465) then
			SetEntityHealth(GetPlayerPed(otc_xd.locals.SelectedPlayer), 0)
		end
		
		if SlimButton("Kick from vehicle",false,0.54,0.5) then
			ClearPedTasksImmediately(GetPlayerPed(otc_xd.locals.SelectedPlayer))
		end
		
		if SlimButton(otc_xd.locals.Friends[GetPlayerServerId(otc_xd.locals.SelectedPlayer)] and "Unmark Friend" or "Friend",false,0.54,0.535) then
			otc_xd.locals.Friends[GetPlayerServerId(otc_xd.locals.SelectedPlayer)] = not otc_xd.locals.Friends[GetPlayerServerId(otc_xd.locals.SelectedPlayer)]
		end

	
		if IsDisabledControlPressed(0, 14) then
			if 14 >= #otc_xd.locals.PlayerIds then
				scrool = scrool
			else
				if scrool+2 >= #otc_xd.locals.PlayerIds then
					scrool = #otc_xd.locals.PlayerIds
				else
					scrool = scrool + 2
				end
			end
		end
		if IsDisabledControlPressed(0, 15) then
			if scrool-2 <= 14 then
				scrool = 15
			else
				scrool = scrool - 2
			end
		end
		if #otc_xd.locals.PlayerIds <= 13 then
			for i = 1+(scrool-15), scrool-15+#otc_xd.locals.PlayerIds do
				local player = GetPlayerName(otc_xd.locals.PlayerIds[i])
				if OnlineButton(GetPlayerServerId(otc_xd.locals.PlayerIds[i]), player,false,0.37,0.635+(0.021*(i-scrool))) then
					otc_xd.locals.SelectedPlayer = otc_xd.locals.PlayerIds[i]
				end
			end
		else
			for i = 1+(scrool-15), scrool do
				local player = GetPlayerName(otc_xd.locals.PlayerIds[i])
				if OnlineButton(GetPlayerServerId(otc_xd.locals.PlayerIds[i]), player,false,0.37,0.635+(0.021*(i-scrool))) then
					otc_xd.locals.SelectedPlayer = otc_xd.locals.PlayerIds[i]
				end
			end
		end
		
	elseif tab == "Misc" then
		
		-- General --
		
		if SlimButton("Weapon",false,0.4,0.36) then
			local weapon = KeyBoardInput("Weapon", "WEAPON_", 99999)
			if weapon then
				GiveWeaponToPed(PlayerPedId(), GetHashKey(weapon), 250, false, true)
			end
		end
	
		if SlimButton("Trigger",false,0.4,0.395) then
			local trigger = KeyBoardInput("Lua code", "", 99999999)
			local lol = load(trigger)
			pcall(lol)
		end
		
		if SlimButton("Vehicle",false,0.4,0.43) then
			local vehicle = KeyBoardInput("Vehicle Name", "", 99999)
			local r, g, b = KeyBoardInput("~r~Red", "", 3), KeyBoardInput("~g~Green", "", 3), KeyBoardInput("~b~Blue", "", 3)
			r, g, b = tonumber(r), tonumber(g), tonumber(b)
			local hash = GetHashKey(vehicle)
			if vehicle and IsModelAVehicle(hash) and IsModelValid(hash) then
				RequestModelSync(vehicle)
				local created = CreateVehicle(hash, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, true)
				if r and g and b then
					SetVehicleCustomPrimaryColour(created, r,g,b)
					SetVehicleCustomSecondaryColour(created, r, g, b)
				end
			end
		end
		
		if SlimButton("Repair Vehicle",false,0.4,0.465) then
			Citizen.InvokeNative(0x115722B1B9C14C1C, Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false))
			Citizen.InvokeNative(0x79D3B596FE44EE8B, Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false), 0.0)
			Citizen.InvokeNative(0x34E710FF01247C5A, Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false), 0)
			Citizen.InvokeNative(0xFB8794444A7D60FB, Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false), false)
			Citizen.InvokeNative(0x1FD09E7390A74D54, Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false), 0)
		end
		
		if SlimButton("Tp to waypoint",false,0.4,0.5) then
			if DoesBlipExist(GetFirstBlipInfoId(8)) then
				local blipIterator = GetBlipInfoIdIterator(8)
				local blip = GetFirstBlipInfoId(8, blipIterator)
				WaypointCoords = Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ResultAsVector()) --Thanks To Briglair [forum.FiveM.net]
				wp = true
			
			
		
				local zHeigt = 0.0
				height = 1000.0
				while true do
					Citizen.Wait(0)
					if wp then
						if IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
								(GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1))
						then
							entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
						else
							entity = GetPlayerPed(-1)
						end
		
						SetEntityCoords(entity, WaypointCoords.x, WaypointCoords.y, height)
						FreezeEntityPosition(entity, true)
						local Pos = GetEntityCoords(entity, true)
		
						if zHeigt == 0.0 then
							height = height - 25.0
							SetEntityCoords(entity, Pos.x, Pos.y, height)
							bool, zHeigt = GetGroundZFor_3dCoord(Pos.x, Pos.y, Pos.z, 0)
						else
							SetEntityCoords(entity, Pos.x, Pos.y, zHeigt)
							FreezeEntityPosition(entity, false)
							wp = false
							height = 1000.0
							zHeigt = 0.0
							break
						end
					end
				end
			end
		end
		
		-- Second --
		
		if CheckBox(otc_xd.locals.bunnyhop, "Bunnyhop",false,0.54,0.35) then
			otc_xd.locals.bunnyhop = not otc_xd.locals.bunnyhop
		end
		
		if CheckBox(otc_xd.locals.InfAmmo, "Unlimited Ammo",false,0.54,0.375) then
			otc_xd.locals.InfAmmo = not otc_xd.locals.InfAmmo
		end
		
		if CheckBox(otc_xd.locals.Eammo, "Explosive Ammo",false,0.54,0.4) then
			otc_xd.locals.Eammo = not otc_xd.locals.Eammo
		end
		
		if CheckBox(otc_xd.locals.NoRel, "No reload",false,0.54,0.425) then
			otc_xd.locals.NoRel = not otc_xd.locals.NoRel
		end
		
		if CheckBox(otc_xd.locals.HvH, "HvH mode (2016)",false,0.54,0.45) then
			otc_xd.locals.HvH = not otc_xd.locals.HvH
		end
		
		if CheckBox(otc_xd.locals.TriggerBot, "Trigger Bot",false,0.54,0.475) then
			otc_xd.locals.TriggerBot = not otc_xd.locals.TriggerBot
		end
		
		if CheckBox(otc_xd.locals.AntiAim, "Anti-Aim",false,0.54,0.5) then
			otc_xd.locals.AntiAim = not otc_xd.locals.AntiAim
		end



	elseif tab == "Visual" then
		
		-- General --
		
		if SlimButton("ESP Color",false,0.4,0.36) then
			local r = KeyBoardInput("~r~Red", "", 3)
			local g = KeyBoardInput("~g~Green", "", 3)
			local b = KeyBoardInput("~b~Blue", "", 3)
			
			if tonumber(r) ~= nil and tonumber(g) ~= nil and tonumber(b) ~= nil then
				otc_xd.locals.esp_color = { r = tonumber(r), g = tonumber(g), b = tonumber(b) }
			end
		end
		if CheckBox(otc_xd.locals.ESP, "ESP",false,0.54,0.35) then
			otc_xd.locals.ESP = not otc_xd.locals.ESP
		end
		
		if CheckBox(otc_xd.locals.DrawImpact, "Draw impact",false,0.54,0.375) then
			otc_xd.locals.DrawImpact = not otc_xd.locals.DrawImpact
		end
		
		if CheckBox(otc_xd.locals.Crosshair, "Crosshair",false,0.54,0.4) then
			otc_xd.locals.Crosshair = not otc_xd.locals.Crosshair
		end
		
		if CheckBox(otc_xd.locals.Force3person, "Force third person",false,0.54,0.425) then
			otc_xd.locals.Force3person = not otc_xd.locals.Force3person
		end
		
		if CheckBox(otc_xd.locals.Trials, "Trials",false,0.54,0.45) then
			otc_xd.locals.Trials = not otc_xd.locals.Trials
		end


	elseif tab == "Settings" then
	
		-- General --
		
		if SlimButton("Unload",false,0.4,0.36) then
			MenuEnabled = false
		end
	
		if SlimButton("Menu Button",false,0.4,0.395) then
			local key = KeyBoardInput("Key, e.g. 121 ~r~INSERT", "", 9999)
			if key then
				for k, v in pairs(keys) do
					if tonumber(key) == v then
						OpenMenuKey = tonumber(key)
					end
				end
			end
		end
		
		if SlimButton(Current_Config.."  ↓",false,0.4,0.43) then
			otc_xd.locals.DisplayConfigs = not otc_xd.locals.DisplayConfigs
		end
		
		if CheckBox(otc_xd.locals.CanMoveMenu, "Can move while menu on",false,0.54,0.35) then
			otc_xd.locals.CanMoveMenu = not otc_xd.locals.CanMoveMenu
		end
		
		if CheckBox(otc_xd.locals.ShowPressedKeys, "Show pressed keys",false,0.54,0.375) then
			otc_xd.locals.ShowPressedKeys = not otc_xd.locals.ShowPressedKeys
		end
		
		if CheckBox(otc_xd.locals.SafeMode, "Safe Mode",false,0.54,0.4) then
			otc_xd.locals.SafeMode = not otc_xd.locals.SafeMode
		end
		
		if otc_xd.locals.DisplayConfigs then
			if ComboButton("Save Config",false,0.4,0.457) then
				Current_Config = "Save Config"
				otc_xd.locals.DisplayConfigs = false
				OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD = {	
					locals = {
						esp_color = otc_xd.locals.esp_color,
						PlayerIds = GetActivePlayers(),
						SelectedPlayer = PlayerId(),
						DisplaySkins = otc_xd.locals.DisplaySkins,
						godmode = otc_xd.locals.godmode,
						noclip = otc_xd.locals.noclip,
						SuperJump = otc_xd.locals.SuperJump,
						Epunch = otc_xd.locals.Epunch,
						InfStamina = otc_xd.locals.InfStamina,
						Invisible = otc_xd.locals.Invisible,
						FastRun = otc_xd.locals.FastRun,
						bunnyhop = otc_xd.locals.bunnyhop,
						InfAmmo = otc_xd.locals.InfAmmo,
						Eammo = otc_xd.locals.Eammo,
						NoRel = otc_xd.locals.NoRel,
						HvH = otc_xd.locals.HvH,
						TriggerBot = otc_xd.locals.TriggerBot,
						AntiAim = otc_xd.locals.AntiAim,
						ESP = otc_xd.locals.ESP,
						DrawImpact = otc_xd.locals.DrawImpact,
						Crosshair = otc_xd.locals.Crosshair,
						Force3person = otc_xd.locals.Force3person,
						Trials = otc_xd.locals.Trials,
						DisplayConfigs = otc_xd.locals.DisplayConfigs,
						CanMoveMenu = otc_xd.locals.CanMoveMenu,
						ShowPressedKeys = otc_xd.locals.ShowPressedKeys,
						SafeMode = otc_xd.locals.SafeMode,
						Friends = otc_xd.locals.Friends
					}
				}
			end
		
			if ComboButton("Load Config",false,0.4,0.48) then
				Current_Config = "Load Config"
				otc_xd = {	
					locals = {
						esp_color = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.esp_color,
						PlayerIds = GetActivePlayers(),
						DisplaySkins = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.DisplaySkins,
						godmode = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.godmode,
						noclip = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.noclip,
						SuperJump = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.SuperJump,
						Epunch = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.Epunch,
						InfStamina = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.InfStamina,
						Invisible = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.Invisible,
						FastRun = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.FastRun,
						bunnyhop = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.bunnyhop,
						InfAmmo = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.InfAmmo,
						Eammo = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.Eammo,
						NoRel = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.NoRel,
						HvH = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.HvH,
						TriggerBot = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.TriggerBot,
						AntiAim = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.AntiAim,
						ESP = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.ESP,
						DrawImpact = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.DrawImpact,
						Crosshair = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.Crosshair,
						Force3person = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.Force3person,
						Trials = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.Trials,
						DisplayConfigs = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.DisplayConfigs,
						CanMoveMenu = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.CanMoveMenu,
						ShowPressedKeys = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.ShowPressedKeys,
						SafeMode = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.SafeMode,
						Friends = OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD.locals.Friends
					}
				}
				otc_xd.locals.DisplayConfigs = false
			end
			
			if ComboButton("Reset Config",false,0.4,0.503) then
				Current_Config = "Reset Config"
				otc_xd.locals.DisplayConfigs = false
				OTC_SAVED_CONFIG_SDGISDUHGIUSDHGSD = {	
					locals = {
						esp_color = { r = 255, g = 255, b = 255 },
						PlayerIds = GetActivePlayers(),
						DisplaySkins = false,
						godmode = false,
						noclip = false,
						SuperJump = false,
						Epunch = false,
						InfStamina = false,
						Invisible = false,
						FastRun = false,
						bunnyhop = false,
						InfAmmo = false,
						Eammo = false,
						NoRel = false,
						HvH = false,
						TriggerBot = false,
						AntiAim = false,
						ESP = false,
						DrawImpact = false,
						Crosshair = false,
						Force3person = false,
						Trials = false,
						DisplayConfigs = false,
						CanMoveMenu = true,
						ShowPressedKeys = false,
						SafeMode = false,
						Friends = {}
					}
				}
			end
			

	
		end



	elseif tab == 4 then
		


	elseif tab == 5 then

		

	end

	local x, y = GetNuiCursorPosition()
	local x_ez, y_ez = GetActiveScreenResolution()
	local cursorX, cursorY = x / x_ez, y / y_ez
	DrawRect(cursorX, cursorY, 0.01, 0.001, 255, 255, 255, 255)
	DrawRect(cursorX, cursorY, 0.001, 0.015, 255, 255, 255, 255)
	
end
function meni()
	----------- MAIN ----------
	text("LuaMenu",false,0.38,0,0.38, 0.255, true, 6)
	text(GetPlayerName(PlayerId()),false,0.28,0,0.365, 0.735, false, 6)
	
	DrawRect(0.5, 0.5, 0.28, 0.53, 45, 48, 57, 255) -- Główne
	DrawRect(0.5, 0.228, 0.28, 0.016, 255, 177, 54, 255) -- Ten górny pasek

	----------- MAIN ----------

	LeftBar()
	
	tabs()
	
	
end

local function AddVectors(one, two)
	return vector3(one.x + two.x, one.y + two.y, one.z + two.z)
end

function TriggerBot_Shoot(Player)
	local head = GetPedBoneCoords(Player, 0x796E, 0.0, 0.0, 0.0)
	SetPedShootsAtCoord(PlayerPedId(), head.x, head.y, head.z, true)
end

local function rage_bot_shoot(target, damage)
    local boneTarget = GetPedBoneCoords(target, 0x796E, 0.0, 0.0, 0.0)
    local _, weapon = GetCurrentPedWeapon(Citizen.InvokeNative(0xD80958FC74E988A6))
    Citizen.InvokeNative(0x867654CBC7606F2C, AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, damage, true, weapon, 0, true, true, 1000.0)
end


local function rage_bot(lol, player)
    if not Citizen.InvokeNative(0x3317DEDB88C95038, player) then
        local _, weapon = GetCurrentPedWeapon(Citizen.InvokeNative(0xD80958FC74E988A6))
		if not player == PlayerPedId() and not Friends[lol] then
			rage_bot_shoot(player, GetWeaponDamage(weapon, 1))
		end
    end
end

local trials_table = {}
local impact_table = {}

Citizen.CreateThread(function()
	while MenuEnabled do
		Citizen.Wait(0)
		if otc_xd.locals.bunnyhop and not IsPedInAnyVehicle(PlayerPedId()) then
			if IsDisabledControlPressed(1, 22) then
				TaskJump(PlayerPedId(), true)
				Citizen.Wait(200)
			end
		end
	end
end)

Citizen.CreateThread(function()

	while MenuEnabled do
		Citizen.Wait(0)
		
		SetPedInfiniteAmmoClip(PlayerPedId(), otc_xd.locals.NoRel)
		local lol, hash = GetCurrentPedWeapon(PlayerPedId())
		SetPedInfiniteAmmo(PlayerPedId(), otc_xd.locals.InfAmmo, hash)
		
		otc_xd.locals.PlayerIds = GetActivePlayers()
		
		local color = RGBRainbow(1.0)
		
		if otc_xd.locals.Eammo then
			local bool, coords = GetPedLastWeaponImpactCoord(PlayerPedId())
			
			if bool then
				AddExplosion(coords, 2, 10000.0, true, false, 0)
			end
		end
		
		if otc_xd.locals.godmode then
			Citizen.InvokeNative(0x3882114BDE571AD4, Citizen.InvokeNative(0x43A66C31C68491C0, -1), true)
			Citizen.InvokeNative(0x239528EACDC3E7DE, Citizen.InvokeNative(0x4F8644AF03D0E0D6), true)
			Citizen.InvokeNative(0x8FE22675A5A45817, Citizen.InvokeNative(0x43A66C31C68491C0, -1))
			Citizen.InvokeNative(0x3AC1F7B898F30C05, Citizen.InvokeNative(0x43A66C31C68491C0, -1))
			Citizen.InvokeNative(0x0E98F88A24C5F4B8, Citizen.InvokeNative(0x43A66C31C68491C0, -1))
			Citizen.InvokeNative(0xFAEE099C6F890BB8, Citizen.InvokeNative(0x43A66C31C68491C0, -1), true, true, true, true, true, true, true, true)
			Citizen.InvokeNative(0x79F020FF9EDC0748, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false)
			Citizen.InvokeNative(0x1760FFA8AB074D66, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false)
		else
			Citizen.InvokeNative(0x3882114BDE571AD4, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false)
			Citizen.InvokeNative(0x239528EACDC3E7DE, Citizen.InvokeNative(0x4F8644AF03D0E0D6), false)
			Citizen.InvokeNative(0x0E98F88A24C5F4B8, Citizen.InvokeNative(0x43A66C31C68491C0, -1))
			Citizen.InvokeNative(0xFAEE099C6F890BB8, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false, false, false, false, false, false, false, false)
			Citizen.InvokeNative(0x79F020FF9EDC0748, Citizen.InvokeNative(0x43A66C31C68491C0, -1), true)
			Citizen.InvokeNative(0x1760FFA8AB074D66, Citizen.InvokeNative(0x43A66C31C68491C0, -1), true)
		end
		
		if otc_xd.locals.HvH then
			
			for i = 0, #otc_xd.locals.PlayerIds do
				rage_bot(GetPlayerServerId(otc_xd.locals.PlayerIds[i]), Citizen.InvokeNative(0x43A66C31C68491C0, otc_xd.locals.PlayerIds[i]))
			end
			
			yaw = (yaw or 0) + math.random(10,20)
			local ped_DSIHGUSDGSD = PlayerPedId()
			
			SetEntityRotation(ped_DSIHGUSDGSD, 45.0, 0.0, yaw+0.0, 1, true)
		
		end
		
	if #notifications > 0 then
		for notificationIndex = 1, #notifications do
			local notification = notifications[notificationIndex]

			if notification then
				notification['opacity'] = (notification['opacity'] or (notification['time'] / 1000) * 60) - 1

				local offset = 0.005 + (notificationIndex * 1.3)
				local timer = (Citizen.InvokeNative(0x9CD27B0045628463) - notification['startTime']) / notification['time'] * 100
				text(notification['text'],false,0.25,0,0.05, 0.01*offset)
		

				if timer >= 100 then
					table.remove(notifications, notificationIndex)
				end
			end
		end
	end
		
		if otc_xd.locals.TriggerBot then
			local Aiming, target = GetEntityPlayerIsFreeAimingAt(Citizen.InvokeNative(0x4F8644AF03D0E0D6), target)
			if Aiming then
				if IsEntityAPed(target) and not IsPedDeadOrDying(target, 0) and IsPedAPlayer(target) then
					TriggerBot_Shoot(target)
				end
			end
		end
		
		if otc_xd.locals.DrawImpact then
			local coords = GetEntityCoords(PlayerPedId())
			local bool, coords2 = GetPedLastWeaponImpactCoord(PlayerPedId())
			if bool then
				table.insert(impact_table, { ["x"] = coords.x, ["y"] = coords.y, ["z"] = coords.z, ["x2"] = coords2.x, ["y2"] = coords2.y, ["z2"] = coords2.z, ["delay"] = 5000, ["startTime"] = GetGameTimer()})
			end
		end
		
		if otc_xd.locals.DrawImpact then
			if #impact_table > 0 then
				for i = 1, #impact_table do
					local current = impact_table[i]
					
					if current then
					
						local timer = (GetGameTimer() - current['startTime']) / current['delay'] * 100
						DrawLine(current["x"], current["y"], current["z"], current["x2"], current["y2"], current["z2"], 255, 255, 255, 255)
						
						
						if timer >= 100 then
							table.remove(impact_table, i)
						end
					end
				end
			end
		end
		
		if otc_xd.locals.Trials then
			local coords = GetEntityCoords(PlayerPedId())
			table.insert(trials_table, { ["x"] = coords.x, ["y"] = coords.y, ["z"] = coords.z, ["delay"] = 1000, ["startTime"] = GetGameTimer()})
		end
		
		if otc_xd.locals.Trials then
			if #trials_table > 0 then
				for i = 1, #trials_table do
					local current = trials_table[i]
					
					if current then
					
						local timer = (GetGameTimer() - current['startTime']) / current['delay'] * 100
						DrawMarker(28, current['x'], current['y'], current['z'], 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.2, 0.2, 0.2, color.r, color.g, color.b, 255, false, true, 2, nil, nil, false)
						
						
						if timer >= 100 then
							table.remove(trials_table, i)
						end
					end
				end
			end
		end
		
		if otc_xd.locals.Crosshair then
			if IsPlayerFreeAiming(PlayerId()) then
				local bool, entity = GetEntityPlayerIsFreeAimingAt(PlayerId())
				local ped = IsEntityAPed(entity)
				local player = IsPedAPlayer(entity)
				if bool and ped and player then
					DrawRect(0.5, 0.5, 0.01, 0.001, 255, 0, 0, 255)
					DrawRect(0.5, 0.5, 0.001, 0.015, 255, 0, 0, 255)
				else
					DrawRect(0.5, 0.5, 0.01, 0.001, 255, 255, 255, 255)
					DrawRect(0.5, 0.5, 0.001, 0.015, 255, 255, 255, 255)
				end
			end
		end
		
		if otc_xd.locals.ShowPressedKeys then
			for k, v in pairs(keys) do
				if IsDisabledControlJustReleased(1, v) then
					AddNotification("Key pressed: ".."~y~'"..k.."'")
				end
			end
		end
		
		if otc_xd.locals.Force3person then
			Citizen.InvokeNative(0x5A4F9EDF1673F704, 0)
			Citizen.InvokeNative(0xAC253D7842768F48, 0)
		end
		
		if otc_xd.locals.SuperJump then
			SetSuperJumpThisFrame(PlayerId())
		end
		
		if otc_xd.locals.InfStamina then
			RestorePlayerStamina(PlayerId(), 1.0)
		end
		
		if otc_xd.locals.Epunch then
			SetExplosiveMeleeThisFrame(PlayerId())
		end
		
		if otc_xd.locals.FastRun then
			SetRunSprintMultiplierForPlayer(PlayerId(), 2.49)
			SetPedMoveRateOverride(GetPlayerPed(-1), 2.15)
		else
			SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
			SetPedMoveRateOverride(GetPlayerPed(-1), 1.0)
		end
		
        if otc_xd.locals.noclip then
			local currentSpeed = 2
			local noclipEntity = IsPedInAnyVehicle(PlayerPedId(), false) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
			FreezeEntityPosition(PlayerPedId(), true)
			SetEntityInvincible(PlayerPedId(), true)

			local newPos = GetEntityCoords(entity)

			DisableControlAction(0, 32, true) --MoveUpOnly
			DisableControlAction(0, 268, true) --MoveUp

			DisableControlAction(0, 31, true) --MoveUpDown

			DisableControlAction(0, 269, true) --MoveDown
			DisableControlAction(0, 33, true) --MoveDownOnly

			DisableControlAction(0, 266, true) --MoveLeft
			DisableControlAction(0, 34, true) --MoveLeftOnly

			DisableControlAction(0, 30, true) --MoveLeftRight

			DisableControlAction(0, 267, true) --MoveRight
			DisableControlAction(0, 35, true) --MoveRightOnly

			DisableControlAction(0, 44, true) --Cover
			DisableControlAction(0, 20, true) --MultiplayerInfo

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
			SetEntityRotation(noclipEntity, 0.0, 0.0, 0.0, 0, false)
			SetEntityHeading(noclipEntity, heading)

			SetEntityCollision(noclipEntity, false, false)
			SetEntityCoordsNoOffset(noclipEntity, newPos.x, newPos.y, newPos.z, true, true, true)

			FreezeEntityPosition(noclipEntity, false)
			SetEntityInvincible(noclipEntity, false)
			SetEntityCollision(noclipEntity, true, true)
		end
		
		if otc_xd.locals.AntiAim then
			yaw = (yaw or 0) + math.random(10,20)
			local ped_DSIHGUSDGSD = PlayerPedId()
			
			SetEntityRotation(ped_DSIHGUSDGSD, 45.0, 0.0, yaw+0.0, 1, true)
		end

		
		if otc_xd.locals.ESP then
			for i=0,#otc_xd.locals.PlayerIds do
                local pPed = Citizen.InvokeNative(0x43A66C31C68491C0, otc_xd.locals.PlayerIds[i])
                local cx, cy, cz = table.unpack(GetEntityCoords(Citizen.InvokeNative(0xD80958FC74E988A6, -1)))
                local x, y, z = table.unpack(GetEntityCoords(pPed))
                local disPlayerNames = 999999
				local distance = math.floor(GetDistanceBetweenCoords(cx,  cy,  cz,  x,  y,  z,  true))
                if ((distance < disPlayerNames)) then
                    if Citizen.InvokeNative(0x031E11F3D447647E, otc_xd.locals.PlayerIds[i], Citizen.ReturnResultAnyway()) then
                        DrawText3D(x, y, z+1.2, GetPlayerServerId(otc_xd.locals.PlayerIds[i]).."  |  "..GetPlayerName(otc_xd.locals.PlayerIds[i]), otc_xd.locals.esp_color.r,otc_xd.locals.esp_color.g,otc_xd.locals.esp_color.b)
					elseif otc_xd.locals.Friends[GetPlayerServerId(otc_xd.locals.PlayerIds[i])]  then
						DrawText3D(x, y, z+1.2, GetPlayerServerId(otc_xd.locals.PlayerIds[i]).."  |  "..GetPlayerName(otc_xd.locals.PlayerIds[i]) .. " | Friend", 66, 135, 245)
                    else
                        DrawText3D(x, y, z+1.2, GetPlayerServerId(otc_xd.locals.PlayerIds[i]).."  |  "..GetPlayerName(otc_xd.locals.PlayerIds[i]), 255,255,255)
                    end
                end
                local message =
                "Name: " ..
                GetPlayerName(otc_xd.locals.PlayerIds[i]) ..
                "\nServer ID: " ..
                GetPlayerServerId(otc_xd.locals.PlayerIds[i]) ..
                "\nDist: " .. math.round(GetDistanceBetweenCoords(cx, cy, cz, x, y, z, true), 1)
                if ((distance < 999999)) then
					DrawText3D(x, y, z - 1.0, message, otc_xd.locals.esp_color.r, otc_xd.locals.esp_color.g, otc_xd.locals.esp_color.b)
				end
				if otc_xd.locals.Friends[GetPlayerServerId(otc_xd.locals.PlayerIds[i])] then
					DrawLineBox(pPed, 0, 0, 255, 255)
				else
					DrawLineBox(pPed, otc_xd.locals.esp_color.r, otc_xd.locals.esp_color.g, otc_xd.locals.esp_color.b, 255)
				end
			end
		end
	end
end)


Citizen.CreateThread(function()
	
	while MenuEnabled do
		Citizen.Wait(0)

		if IsControlJustPressed(1, OpenMenuKey) then
			DisplayMenu = not DisplayMenu
		end
		if DisplayMenu	then
			meni()
			kontrols()
			
		end

	end
end)