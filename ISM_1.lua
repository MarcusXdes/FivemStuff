local rgb = { r = 0, g = 0, b = 0}

local noclipping = false
local NoclipSpeed = 5.0

local cam = nil
local FreeCameraMode = "Object Spooner"

local ISMMENU = { 
	ESP = {},
	ObjectOptions = {
		Sensitivity = 0.1,
		currentObject = {},
	},
	Functions = {},
	DynamicTriggers = {
		Search = {
			-- Usage { Trigger To Search for but trim it down, ID that gets uded in buttons }
			{ "jail:jailPlayer", "ESXQalleJail" },
			{ "job:rev", 'ESXRevive' },
			{ "job:ESXHandcuff", 'ESXHandcuff' },
			{ "job:drag", 'ESXDrag' },
			{ "vangelico_robbery:rob", 'ESXVangelicoRobbery' },
			{ "Tackle", "tryTackle"},
			{ "InteractionMenu:Jail", 'JailSEM' },
			{ "InteractionMenu:DragNear", 'DragSEM' },
		},
		Triggers = {
			['JailSEM'] = "SEM_InteractionMenu:Jail",
			['DragSEM'] = "SEM_InteractionMenu:DragNear",
		},
	},
	Objectlist = {},
    menus = {},
    Cache = {},
    UI = {
		GTAInput = false,
		RGB = true,
		MenuX = 0.75,
		MenuY = 0.025,
		NotificationX = 0.011,
		NotificationY = 0.3025,
        TitleHeight = 0.11,
        ButtonHeight = 0.038,
        ButtonScale = 0.325,
        ButtonFont = 0,
		MaximumOptionCount = 14,
	},
	BottomText = nil,
	Version = "2.0",
	ScreenWidth, ScreenHeight = Citizen.InvokeNative(0x873C9F3104101DD3, Citizen.PointerValueInt(), Citizen.PointerValueInt()),
    rgb = { r = 255, g = 255, b = 255},
	rgb1 = { r = 255, g = 255, b = 255},
	rgb2 = { r = 255, g = 255, b = 0},
    optionCount = 0,
    currentMenu = nil,
}

local RuntimeTXD = CreateRuntimeTxd('ISMMENU')
local HeaderObject = CreateDui("https://media.discordapp.net/attachments/810162964832976907/822427947234754560/LOGO_SM_MENU.gif", 250, 120)
_G.HeaderObject = HeaderObject
local TextureThing = GetDuiHandle(HeaderObject)
local Texture = CreateRuntimeTextureFromDuiHandle(RuntimeTXD, 'ISMMENUHeader', TextureThing)
local LogoObject = CreateDui("https://cdn.discordapp.com/attachments/820810915862544384/826836811724095488/unknown.png", 300, 300)
_G.LogoObject = LogoObject
local TextureThing = GetDuiHandle(LogoObject)
local Texture = CreateRuntimeTextureFromDuiHandle(RuntimeTXD, 'ISMMENULogo', TextureThing)

if Ham == nil then
	ISMMENU.UI.GTAInput = true
	Ham = {}
	
	function Ham.printStr(resname, msg)
	    print(msg)
	end

	function Ham.getName()
        return "nil"
	end

	function Ham.getKeyState(val)
        return 0
	end
end

function ISMMENU.RGBRainbow(frequency)
	if ISMMENU.UI.RGB then
		local result = {}
		
		local curtime = GetGameTimer() / 1000
		
		result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
		result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
		result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)
	
		return result
	else
		return ISMMENU.rgb
	end
end

function ISMMENU.SetMenuProperty(id, property, value)
	if id and ISMMENU.menus[id] then
		ISMMENU.menus[id][property] = value
	end
end

function ISMMENU.IsMenuVisible(id)
	if id and ISMMENU.menus[id] then
		return ISMMENU.menus[id].visible
	else
		return false
	end
end

function ISMMENU.CloseMenu()
	local menu = ISMMENU.menus[ISMMENU.currentMenu]
	if menu then
		if menu.aboutToBeClosed then
			ISMMENU.optionCount = 0
			menu.aboutToBeClosed = false
			ISMMENU.SetMenuVisible(ISMMENU.currentMenu, false)
			PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			ISMMENU.currentMenu = nil
		else
			menu.aboutToBeClosed = true
		end
	end
end

function ISMMENU.SetMenuVisible(id, visible, holdCurrent)
	if id and ISMMENU.menus[id] then
		ISMMENU.SetMenuProperty(id, 'visible', visible)

		if not holdCurrent and ISMMENU.menus[id] then
			ISMMENU.SetMenuProperty(id, 'currentOption', 1)
		end

		if visible then
			if id ~= ISMMENU.currentMenu and ISMMENU.IsMenuVisible(ISMMENU.currentMenu) then
				ISMMENU.SetMenuProperty(ISMMENU.currentMenu, false)
			end

			ISMMENU.currentMenu = id
		end
	end
end

function GetTextWidthS(string, font, scale)
	font = font or 4
	scale = scale or 0.35
	ISMMENU.Cache[font] = ISMMENU.Cache[font] or {}
	ISMMENU.Cache[font][scale] = ISMMENU.Cache[font][scale] or {}
	if ISMMENU.Cache[font][scale][string] then return ISMMENU.Cache[font][scale][string].length end
	Citizen.InvokeNative(0x54CE8AC98E120CAB, "STRING")
	Citizen.InvokeNative(0x6C188BE134E074AA, string)
	Citizen.InvokeNative(0x66E0276CC5F6B9DA, font or 4)
	Citizen.InvokeNative(0x07C837F9A01C34C9, scale or 0.35, scale or 0.35)
	local length = Citizen.InvokeNative(0x85F061DA64ED2F67, 1, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())

	ISMMENU.Cache[font][scale][string] = {length = length}
	return length
end

function ISMMENU.GetTextWidth(string, font, scale)
    return GetTextWidthS(string, font, scale)
end

function ISMMENU.DrawSprite(TxtDict, TxtName, x, y, width, height, heading, red, green, blue, alpha)
	Citizen.InvokeNative(0xE7FFAE5EBF23D890, TxtDict, TxtName, x, y, width, height, heading, red, green, blue, alpha)
end

function ISMMENU.DrawRect(x, y, width, height, color)
	Citizen.InvokeNative(0x3A618A217E5154F0, x, y, width, height, color.r, color.g, color.b, color.a)
end

function ISMMENU.DrawTitle()
	local menu = ISMMENU.menus[ISMMENU.currentMenu]
	if menu then
		local x = menu.x + menu.width / 2
		local y = menu.y + ISMMENU.UI.TitleHeight / 2

		ISMMENU.DrawSprite('ISMMENU', 'ISMMENUHeader', x, y, menu.width, ISMMENU.UI.TitleHeight, 0.0, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
	end
end

function ISMMENU.DrawBottom()
	local menu = ISMMENU.menus[ISMMENU.currentMenu]

	if menu then
		local x = menu.x + menu.width / 2

		local multiplier = 1
	
		if ISMMENU.optionCount > ISMMENU.UI.MaximumOptionCount then
			multiplier = ISMMENU.UI.MaximumOptionCount
		else
			multiplier = ISMMENU.optionCount
		end

		ISMMENU.DrawRect(x, menu.y + ISMMENU.UI.TitleHeight + ISMMENU.UI.ButtonHeight / 2 + ISMMENU.UI.ButtonHeight + ISMMENU.UI.ButtonHeight * multiplier, menu.width, ISMMENU.UI.ButtonHeight, {r = 0, g = 0, b = 0, a = 255})
	
		ISMMENU.DrawRect(x, menu.y + ISMMENU.UI.TitleHeight + ISMMENU.UI.ButtonHeight + ISMMENU.UI.ButtonHeight * multiplier, menu.width, 0.001, {r = ISMMENU.rgb.r, g = ISMMENU.rgb.g, b = ISMMENU.rgb.b, a = 255})
		
		ISMMENU.DrawSprite('ISMMENU', 'ISMMENULogo', x, menu.y + ISMMENU.UI.ButtonHeight / 2 + ISMMENU.UI.TitleHeight + ISMMENU.UI.ButtonHeight + ISMMENU.UI.ButtonHeight * multiplier, 0.02, 0.02 * ISMMENU.ScreenWidth / ISMMENU.ScreenHeight, 0.0, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)

		ISMMENU.DrawText(ISMMENU.Version, {menu.x + menu.width - ISMMENU.GetTextWidth(ISMMENU.Version), menu.y + ISMMENU.UI.TitleHeight + ISMMENU.UI.ButtonHeight / 6 + ISMMENU.UI.ButtonHeight + ISMMENU.UI.ButtonHeight * multiplier}, {255, 255, 255, 255}, ISMMENU.UI.ButtonScale, 0, 1, 0, 0)

		ISMMENU.DrawText(menu.currentOption .. " / " ..ISMMENU.optionCount, {menu.x + 0.005, menu.y + ISMMENU.UI.TitleHeight + ISMMENU.UI.ButtonHeight / 6 + ISMMENU.UI.ButtonHeight + ISMMENU.UI.ButtonHeight * multiplier}, {255, 255, 255, 255}, ISMMENU.UI.ButtonScale, 0, 0, 0, 0)

		
		--[[
		if ISMMENU.BottomText ~= nil and ISMMENU.BottomText ~= "" then
            
		    ISMMENU.DrawRect(x, menu.y + ISMMENU.UI.TitleHeight + 0.005 + ISMMENU.UI.ButtonHeight * 2 + ISMMENU.UI.ButtonHeight * multiplier, menu.width, 0.001, {r = ISMMENU.rgb.r, g = ISMMENU.rgb.g, b = ISMMENU.rgb.b, a = 255})
		
		    ISMMENU.DrawRect(x, menu.y + ISMMENU.UI.TitleHeight + 0.025 + ISMMENU.UI.ButtonHeight * 2 + ISMMENU.UI.ButtonHeight * multiplier, menu.width, ISMMENU.UI.ButtonHeight, {r = 0, g = 0, b = 0, a = 200})
		
			ISMMENU.DrawText(ISMMENU.BottomText, {menu.x + 0.018, 0.044 + menu.y + ISMMENU.UI.TitleHeight + ISMMENU.UI.ButtonHeight / 6 + ISMMENU.UI.ButtonHeight + ISMMENU.UI.ButtonHeight * multiplier}, {255, 255, 255, 255}, 0.3, 0)
			
		    ISMMENU.DrawSprite('shared', 'info_icon_32', menu.x + 0.010, 0.058 + menu.y + ISMMENU.UI.TitleHeight + ISMMENU.UI.ButtonHeight / 6 + ISMMENU.UI.ButtonHeight + ISMMENU.UI.ButtonHeight * multiplier, 0.016, 0.016 * ISMMENU.ScreenWidth / ISMMENU.ScreenHeight, 0.0, 255, 255, 255, 255)

		end
		]]
	end
end

function ISMMENU.DrawSubTitle()
	local menu = ISMMENU.menus[ISMMENU.currentMenu]
	if menu then
		local x = menu.x + menu.width / 2
		local y = menu.y + ISMMENU.UI.TitleHeight + ISMMENU.UI.ButtonHeight / 2
		local subTitleColor = { r = 0, g = 0, b = 0, a = 240 }
		ISMMENU.DrawRect(x, y, menu.width, ISMMENU.UI.ButtonHeight, subTitleColor)
		ISMMENU.DrawRect(x, y - ISMMENU.UI.ButtonHeight / 2, menu.width, 0.001, {r = ISMMENU.rgb.r, g = ISMMENU.rgb.g, b = ISMMENU.rgb.b, a = 255})
		ISMMENU.DrawText(menu.subTitle, {menu.x + menu.width / 2, y - ISMMENU.UI.ButtonHeight / 2 + 0.005}, {255, 255, 255, 255}, ISMMENU.UI.ButtonScale, 0, 1, 0, 1)
	end
end

function ISMMENU.DrawText(text, location, colour, size, font, alignment, textentry, outline)
	x, y = table.unpack(location)
	r, g, b, a = table.unpack(colour)

	menu = ISMMENU.menus[ISMMENU.currentMenu]

    SetTextFont(font)
    SetTextProportional(1)
	SetTextScale(size, size)
	if outline then
		SetTextDropshadow(1, 0, 0, 0, 255)
		SetTextEdge(1, 0, 0, 0, 255)
		SetTextDropShadow()
		SetTextOutline()
	end
	SetTextColour(r, g, b, a)
	if alignment == 1 then
		SetTextCentre(1)
	elseif alignment == 2 then
		if menu then
			SetTextWrap(menu.x, menu.x + menu.width - 0.005)
		end
		SetTextRightJustify(true)
	elseif alignment == 3 then
		if menu then
			SetTextWrap(menu.x, menu.x + menu.width - 0.022)
		end
		SetTextRightJustify(true)
	elseif alignment == 4 then
		if menu then
			SetTextWrap(0.0, -1.0)
		end
	end
	if type(textentry) == "string" then
		AddTextEntry(textentry, text)
		SetTextEntry(textentry)
	else
		SetTextEntry("STRING")
	end
    AddTextComponentString(text)
    DrawText(x, y)
end
  
function ISMMENU.drawButton(text, subText, menubutton, bottomtext)
	local menu = ISMMENU.menus[ISMMENU.currentMenu]
	local x = menu.x + menu.width / 2
	local multiplier = nil

	if menu.currentOption <= menu.maxOptionCount and ISMMENU.optionCount <= menu.maxOptionCount then
		multiplier = ISMMENU.optionCount
	elseif ISMMENU.optionCount > menu.currentOption - menu.maxOptionCount and ISMMENU.optionCount <= menu.currentOption then
		multiplier = ISMMENU.optionCount - (menu.currentOption - menu.maxOptionCount)
	end

	if multiplier then
		local y = menu.y + ISMMENU.UI.TitleHeight + ISMMENU.UI.ButtonHeight + (ISMMENU.UI.ButtonHeight * multiplier) - ISMMENU.UI.ButtonHeight / 2
		local backgroundColor = nil

		if menu.currentOption == ISMMENU.optionCount then
			backgroundColor = {r = ISMMENU.rgb.r, g = ISMMENU.rgb.g, b = ISMMENU.rgb.b, a = 180}
			ISMMENU.BottomText = bottomtext
		else
			backgroundColor = menu.menuBackgroundColor
		end
		
		ISMMENU.DrawRect(x, y, menu.width, ISMMENU.UI.ButtonHeight, backgroundColor)
		
		ISMMENU.DrawText(text, {menu.x + 0.005, y - (ISMMENU.UI.ButtonHeight / 2) + 0.005}, {255, 255, 255, 255}, ISMMENU.UI.ButtonScale, 0, 0)
		
		if menubutton then

			ISMMENU.DrawText(">>>", {menu.width + 0.005, y - ISMMENU.UI.ButtonHeight / 2 + 0.005}, {255, 255, 255, 255}, ISMMENU.UI.ButtonScale, 0, 2)
		
		end

		if not HasStreamedTextureDictLoaded('commonmenu') then
			RequestStreamedTextureDict('commonmenu', true)
		end
		
		if subText == "On" then
	
            ISMMENU.DrawSprite('commonmenu', "shop_box_tick", ISMMENU.menus[ISMMENU.currentMenu].width + 0.005 + menu.x - 0.017, y + 0.005 - 0.0048, 0.025, 0.025 * ISMMENU.ScreenWidth / ISMMENU.ScreenHeight, 0.0, 255, 255, 255, 200)
			--ISMMENU.DrawText("~g~On", {menu.width + 0.005, y - ISMMENU.UI.ButtonHeight / 2 + 0.005}, {255, 255, 255, 255}, ISMMENU.UI.ButtonScale, 0, 2)
		
		elseif subText == "Off" then

			ISMMENU.DrawSprite('commonmenu', "shop_box_blank", ISMMENU.menus[ISMMENU.currentMenu].width + 0.005 + menu.x - 0.017, y + 0.005 - 0.0048, 0.025, 0.025 * ISMMENU.ScreenWidth / ISMMENU.ScreenHeight, 0.0, 255, 255, 255, 200)
			--ISMMENU.DrawText("~r~Off", {menu.width + 0.005, y - ISMMENU.UI.ButtonHeight / 2 + 0.005}, {255, 255, 255, 255}, ISMMENU.UI.ButtonScale, 0, 2)
		
		elseif not menubutton and subText ~= nil then

			ISMMENU.DrawText(subText, {menu.width + 0.005, y - ISMMENU.UI.ButtonHeight / 2 + 0.005}, {255, 255, 255, 255}, ISMMENU.UI.ButtonScale, 0, 2)
		
		end
	end
end

function ISMMENU.DrawChanger(text, subText)
	local menu = ISMMENU.menus[ISMMENU.currentMenu]
	local x = menu.x + menu.width / 2
	local multiplier = nil

	if menu.currentOption <= menu.maxOptionCount and ISMMENU.optionCount <= menu.maxOptionCount then
		multiplier = ISMMENU.optionCount
	elseif ISMMENU.optionCount > menu.currentOption - menu.maxOptionCount and ISMMENU.optionCount <= menu.currentOption then
		multiplier = ISMMENU.optionCount - (menu.currentOption - menu.maxOptionCount)
	end

	if multiplier then
		local y = menu.y + ISMMENU.UI.TitleHeight + ISMMENU.UI.ButtonHeight + (ISMMENU.UI.ButtonHeight * multiplier) - ISMMENU.UI.ButtonHeight / 2
		local backgroundColor = nil

		if menu.currentOption == ISMMENU.optionCount then
			backgroundColor = {r = ISMMENU.rgb.r, g = ISMMENU.rgb.g, b = ISMMENU.rgb.b, a = 180}
			Alignment = 3
		else
			backgroundColor = menu.menuBackgroundColor
			Alignment = 2
		end


		if not HasStreamedTextureDictLoaded('commonmenu') then RequestStreamedTextureDict('commonmenu', true) end

		ISMMENU.DrawRect(x, y, menu.width, ISMMENU.UI.ButtonHeight, backgroundColor)
		
		ISMMENU.DrawText(text, {menu.x + 0.005, y - (ISMMENU.UI.ButtonHeight / 2) + 0.005}, {255, 255, 255, 255}, ISMMENU.UI.ButtonScale, 0, 0)
	
		ISMMENU.DrawText(subText, {menu.width + 0.005, y - ISMMENU.UI.ButtonHeight / 2 + 0.005}, {255, 255, 255, 255}, ISMMENU.UI.ButtonScale, 0, Alignment)
		
		if menu.currentOption == ISMMENU.optionCount then
			ISMMENU.DrawSprite('commonmenu', 'arrowright', ISMMENU.UI.MenuX + menu.width - 0.0075, y, 0.0205, 0.0205 * ISMMENU.ScreenWidth / ISMMENU.ScreenHeight, 0.0, 255, 255, 255, 255)
			
			ISMMENU.DrawSprite('commonmenu', 'arrowright', ISMMENU.UI.MenuX + menu.width - 0.0175, y, 0.0205, 0.0205 * ISMMENU.ScreenWidth / ISMMENU.ScreenHeight, 180.0, 255, 255, 255, 255)
		end
	end
end


function ISMMENU.CreateMenu(id, title, subtitle)
	-- Default settings
	ISMMENU.menus[id] = { }
	ISMMENU.menus[id].title = title
	ISMMENU.menus[id].subTitle = subtitle

	ISMMENU.menus[id].visible = false

	ISMMENU.menus[id].previousMenu = nil

	ISMMENU.menus[id].aboutToBeClosed = false

	ISMMENU.menus[id].x = 0.75
	ISMMENU.menus[id].y = 0.025
	ISMMENU.menus[id].width = 0.24

	ISMMENU.menus[id].currentOption = 1
	ISMMENU.menus[id].maxOptionCount = ISMMENU.UI.MaximumOptionCount

	ISMMENU.menus[id].titleFont = 6
	ISMMENU.menus[id].titleColor = { r = 255, g = 255, b = 255, a = 255 }
	ISMMENU.menus[id].titleBackgroundColor = { r = 255, g = 0, b = 0, a = 255 }
	ISMMENU.menus[id].titleBackgroundSprite = nil

	ISMMENU.menus[id].menuTextColor = { r = 255, g = 255, b = 255, a = 255 }
	ISMMENU.menus[id].menuSubTextColor = { r = 189, g = 189, b = 189, a = 255 }
	ISMMENU.menus[id].menuFocusTextColor = { r = 255, g = 255, b = 255, a = 255 }
	ISMMENU.menus[id].menuFocusBackgroundColor = { r = 245, g = 245, b = 245, a = 255 }
	ISMMENU.menus[id].menuBackgroundColor = { r = 0, g = 0, b = 0, a = 160 }

	ISMMENU.menus[id].subTitleBackgroundColor = { r = ISMMENU.menus[id].menuBackgroundColor.r, g = ISMMENU.menus[id].menuBackgroundColor.g, b = ISMMENU.menus[id].menuBackgroundColor.b, a = 255 }

	ISMMENU.menus[id].buttonPressedSound = { name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET" } --https://pastebin.com/0neZdsZ5
end

function ISMMENU.CreateSubMenu(id, parent, subTitle)
	if ISMMENU.menus[parent] then
		ISMMENU.CreateMenu(id, ISMMENU.menus[parent].title)

		if subTitle then
			ISMMENU.SetMenuProperty(id, 'subTitle', subTitle)
		else
			ISMMENU.SetMenuProperty(id, 'subTitle', ISMMENU.menus[parent].subTitle)
		end

		ISMMENU.SetMenuProperty(id, 'previousMenu', parent)

		ISMMENU.SetMenuProperty(id, 'x', ISMMENU.menus[parent].x)
		ISMMENU.SetMenuProperty(id, 'y', ISMMENU.menus[parent].y)
		ISMMENU.SetMenuProperty(id, 'maxOptionCount', ISMMENU.menus[parent].maxOptionCount)
		ISMMENU.SetMenuProperty(id, 'titleFont', ISMMENU.menus[parent].titleFont)
		ISMMENU.SetMenuProperty(id, 'titleColor', ISMMENU.menus[parent].titleColor)
		ISMMENU.SetMenuProperty(id, 'titleBackgroundColor', ISMMENU.menus[parent].titleBackgroundColor)
		ISMMENU.SetMenuProperty(id, 'titleBackgroundSprite', ISMMENU.menus[parent].titleBackgroundSprite)
		ISMMENU.SetMenuProperty(id, 'menuTextColor', ISMMENU.menus[parent].menuTextColor)
		ISMMENU.SetMenuProperty(id, 'menuSubTextColor', ISMMENU.menus[parent].menuSubTextColor)
		ISMMENU.SetMenuProperty(id, 'menuFocusTextColor', ISMMENU.menus[parent].menuFocusTextColor)
		ISMMENU.SetMenuProperty(id, 'menuFocusBackgroundColor', ISMMENU.menus[parent].menuFocusBackgroundColor)
		ISMMENU.SetMenuProperty(id, 'menuBackgroundColor', ISMMENU.menus[parent].menuBackgroundColor)
		ISMMENU.SetMenuProperty(id, 'subTitleBackgroundColor', ISMMENU.menus[parent].subTitleBackgroundColor)
	end
end

function ISMMENU.MenuButton(text, id, bottomText)
	local buttonText = text
	local menu = ISMMENU.menus[ISMMENU.currentMenu]
	if menu then
		ISMMENU.optionCount = ISMMENU.optionCount + 1

		local isCurrent = menu.currentOption == ISMMENU.optionCount

		ISMMENU.drawButton(text, nil, true, bottomText)

		if isCurrent then
			if IsDisabledControlJustPressed(0, 201) then
				PlaySoundFrontend(-1, menu.buttonPressedSound.name, menu.buttonPressedSound.set, true)
				ISMMENU.SetMenuVisible(ISMMENU.currentMenu, false)
				ISMMENU.SetMenuProperty(id, 'x', ISMMENU.UI.MenuX)
				ISMMENU.SetMenuProperty(id, 'y', ISMMENU.UI.MenuY)
				ISMMENU.SetMenuVisible(id, true, true)
				return true
			elseif IsDisabledControlJustPressed(0, 189) or IsDisabledControlJustPressed(0, 190) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		return false
	end
end

function ISMMENU.CurrentMenu()
	return ISMMENU.currentMenu
end

PlaySoundFrontend(-1, "BASE_JUMP_PASSED", "HUD_AWARDS", true)

function ISMMENU.ValueChanger(text, index, changeamout, minmaxvalues, callback, sensitivity)

	lowestvalue, highestvalue = table.unpack(minmaxvalues)

	if index == nil then
		index = 0
	end

	local menu = ISMMENU.menus[ISMMENU.currentMenu]

	if menu then

		ISMMENU.optionCount = ISMMENU.optionCount + 1

		local retval = ISMMENU.DrawChanger(text, tostring(index))

		if menu.currentOption == ISMMENU.optionCount then
			if sensitivity then
				if IsDisabledControlPressed(0, 189) then
					if index > lowestvalue then
						callback(index - changeamout)
					end
				end
				if IsDisabledControlPressed(0, 190) then
					if index < highestvalue then
						callback(index + changeamout)
					end
				end
			else
				if IsDisabledControlJustPressed(0, 189) then
					if index > lowestvalue then
						callback(index - changeamout)
					end
				end
				if IsDisabledControlJustPressed(0, 190) then
					if index < highestvalue then
						callback(index + changeamout)
					end
				end
			end
		end

		if retval then
	        return true
		end
	end
	return false
end

function ISMMENU.ComboBox(text, items, index, callback)
	
	local itemsCount = #items
	local selectedItem = items[index]
	local buttonText = text

	local menu = ISMMENU.menus[ISMMENU.currentMenu]

	if menu then

		ISMMENU.optionCount = ISMMENU.optionCount + 1

		ISMMENU.DrawChanger(text, selectedItem)

		if menu.currentOption == ISMMENU.optionCount then
			if IsDisabledControlJustPressed(0, 189) then
				if index > 1 then
					callback(index - 1)
				elseif index == 1 then
					callback(itemsCount)
				end
			end
			if IsDisabledControlJustPressed(0, 190) then
				if itemsCount > index then
					callback(index + 1)
				elseif index == itemsCount then
					callback(1)
				end
			end
			if IsDisabledControlJustPressed(0, 201) then
				PlaySoundFrontend(-1, menu.buttonPressedSound.name, menu.buttonPressedSound.set, true)
				return true
			elseif IsDisabledControlJustPressed(0, 189) or IsDisabledControlJustPressed(0, 190) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		return false
	end
end

function ISMMENU.Button(text, subText, bottomText)
	local buttonText = text
	if subText then
		buttonText = '{ '..tostring(buttonText)..', '..tostring(subText)..' }'
	end
	local menu = ISMMENU.menus[ISMMENU.currentMenu]
	if menu then
		ISMMENU.optionCount = ISMMENU.optionCount + 1

		ISMMENU.drawButton(text, subText, false, bottomText)

		if menu.currentOption == ISMMENU.optionCount then
			if IsDisabledControlJustPressed(0, 201) then
				PlaySoundFrontend(-1, menu.buttonPressedSound.name, menu.buttonPressedSound.set, true)
				return true
			elseif IsDisabledControlJustPressed(0, 189) or IsDisabledControlJustPressed(0, 190) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		return false
	end
end

function ISMMENU.CheckBox(text, checked, bottomText)
	local buttonText = text
	local menu = ISMMENU.menus[ISMMENU.currentMenu]
	if menu then
		ISMMENU.optionCount = ISMMENU.optionCount + 1

		local isCurrent = menu.currentOption == ISMMENU.optionCount

		ISMMENU.drawButton(text, (checked and "On" or "Off"), false, bottomText)

		if isCurrent then
			if IsDisabledControlJustPressed(0, 201) then
				PlaySoundFrontend(-1, menu.buttonPressedSound.name, menu.buttonPressedSound.set, true)
				return true
			elseif IsDisabledControlJustPressed(0, 189) or IsDisabledControlJustPressed(0, 190) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		return false
	end
end

function ISMMENU.ESP.DrawRect(Location, Size, Color)
    SetDrawOrigin(Location.x, Location.y, Location.z, 0)
	ISMMENU.DrawSprite("", "", 0.0, 0.0, Size.Width, Size.Height, 0.0, Color.r, Color.g, Color.b, Color.a)
	ClearDrawOrigin()
end

function ISMMENU.Display()
	if ISMMENU.IsMenuVisible(ISMMENU.currentMenu) then
		DisableControlAction(0, 187, true)
		DisableControlAction(0, 188, true)
		DisableControlAction(0, 189, true)
		DisableControlAction(0, 190, true)
		DisableControlAction(0, 201, true)
		DisableControlAction(0, 202, true)

		DisableControlAction(0, 24, true)
		DisableControlAction(0, 27, true)

		local menu = ISMMENU.menus[ISMMENU.currentMenu]

		if menu.currentOption > ISMMENU.optionCount then
			ISMMENU.menus[ISMMENU.currentMenu].currentOption = ISMMENU.CurrentOption
		end
		
		if menu.aboutToBeClosed then
			ISMMENU.CloseMenu()
		else
			ClearAllHelpMessages()

			if ISMMENU.menus[ISMMENU.currentMenu].currentOption == nil then
				ISMMENU.menus[ISMMENU.currentMenu].currentOption = ISMMENU.optionCount
			end
			
			ISMMENU.DrawTitle()
			ISMMENU.DrawSubTitle()
			ISMMENU.DrawBottom()

			if IsDisabledControlJustReleased(0, 187) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

				if menu.currentOption < ISMMENU.optionCount then
					menu.currentOption = menu.currentOption + 1
				else
					menu.currentOption = 1
				end
			elseif IsDisabledControlJustReleased(0, 188) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

				if menu.currentOption > 1 then
					menu.currentOption = menu.currentOption - 1
				else
					menu.currentOption = ISMMENU.optionCount
				end
			elseif IsDisabledControlJustReleased(0, 202) then
				if ISMMENU.menus[menu.previousMenu] then
					PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
					ISMMENU.SetMenuVisible(ISMMENU.currentMenu, false)
					ISMMENU.SetMenuProperty(menu.previousMenu, 'x', ISMMENU.UI.MenuX)
					ISMMENU.SetMenuProperty(menu.previousMenu, 'y', ISMMENU.UI.MenuY)
					ISMMENU.SetMenuVisible(menu.previousMenu, true)
				else
					ISMMENU.CloseMenu()
				end
			end

			ISMMENU.optionCount = 0
		end
	end
end

function ISMMENU.IsMenuOpened(id)
	return ISMMENU.IsMenuVisible(id)
end

function ISMMENU.OpenMenu(id)
	if id and ISMMENU.menus[id] then
		PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
		ISMMENU.SetMenuVisible(id, true)
	end
end

------------------------------------------------------
--------------------- Menu Code ----------------------
------------------------------------------------------


local globalAttachmentTable = {  
	-- Putting these at the top makes them work properly as they need to be applied to the weapon first before other attachments
	{ "COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_CARBINERIFLE_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_ASSAULTRIFLE_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_MICROSMG_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_SNIPERRIFLE_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_PISTOL_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_PISTOL50_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_APPISTOL_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_HEAVYPISTOL_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_SMG_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },
	{ "COMPONENT_MARKSMANRIFLE_VARMOD_LUXE", "Yusuf Amir Luxury Finish" },

	{ "COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER", "Lowrider Finish" },
	{ "COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER", "Lowrider Finish" },
	{ "COMPONENT_SNSPISTOL_VARMOD_LOWRIDER", "Lowrider Finish" },
	{ "COMPONENT_MG_COMBATMG_LOWRIDER", "Lowrider Finish" },
	{ "COMPONENT_BULLPUPRIFLE_VARMOD_LOWRIDER", "Lowrider Finish" },
	{ "COMPONENT_MG_VARMOD_LOWRIDER", "Lowrider Finish" },
	{ "COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER", "Lowrider Finish" },
	{ "COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER", "Lowrider Finish" },

	{ "COMPONENT_CARBINERIFLE_MK2_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_MARKSMANRIFLE_MK2_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_COMBATMG_MK2_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_SMG_MK2_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_PISTOL_MK2_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_PISTOL_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_ASSAULTSHOTGUN_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_HEAVYSHOTGUN_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_PISTOL50_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_COMBATPISTOL_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_APPISTOL_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_COMBATPDW_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_SNSPISTOL_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_SNSPISTOL_MK2_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_ASSAULTRIFLE_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_COMBATMG_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_MG_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_ASSAULTSMG_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_GUSENBERG_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_MICROSMG_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_BULLPUPRIFLE_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_COMPACTRIFLE_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_HEAVYPISTOL_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_VINTAGEPISTOL_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_CARBINERIFLE_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_ADVANCEDRIFLE_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_MARKSMANRIFLE_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_SMG_CLIP_02", "Chargeur plus grand" },
	{ "COMPONENT_SPECIALCARBINE_CLIP_02", "Chargeur plus grand" },

	{ "COMPONENT_SPECIALCARBINE_CLIP_03", "Drum Magazine" },
	{ "COMPONENT_COMPACTRIFLE_CLIP_03", "Drum Magazine" },
	{ "COMPONENT_COMBATPDW_CLIP_03", "Drum Magazine" },
	{ "COMPONENT_ASSAULTRIFLE_CLIP_03", "Drum Magazine" },
	{ "COMPONENT_HEAVYSHOTGUN_CLIP_03", "Drum Magazine" },
	{ "COMPONENT_CARBINERIFLE_CLIP_03", "Drum Magazine" },
	{ "COMPONENT_SMG_CLIP_03", "Drum Magazine" },

	{ "COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING", "Armor Piercing Rounds" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },

	{ "COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING", "Armor Piercing Rounds" },
	{ "COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },

	{ "COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING", "Armor Piercing Rounds" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },

	{ "COMPONENT_PISTOL_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_PISTOL_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_PISTOL_MK2_CLIP_ARMORPIERCING", "Armor Piercing Rounds" },
	{ "COMPONENT_PISTOL_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },

	{ "COMPONENT_PUMPSHOTGUN_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT", "Hollowpoint Rounds" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE", "Explosive Rounds" },

	{ "COMPONENT_SNSPISTOL_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT", "Hollowpoint Rounds" },
	{ "COMPONENT_SNSPISTOL_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },

	{ "COMPONENT_REVOLVER_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT", "Hollowpoint Rounds" },
	{ "COMPONENT_REVOLVER_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },

	{ "COMPONENT_SMG_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_SMG_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_SMG_MK2_CLIP_ARMORPIERCING", "Armor Piercing Rounds" },
	{ "COMPONENT_SMG_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },

	{ "COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_COMBATMG_MK2_CLIP_TRACER", "Tracer Rounds" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CLIP_TRACER", "Tracer Rounds" },

	{ "COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY", "Incendiary Rounds" },

	{ "COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING", "Armor Piercing Rounds" },
	{ "COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING", "Armor Piercing Rounds" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING", "Armor Piercing Rounds" },
	{ "COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING", "Armor Piercing Rounds" },

	{ "COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },
	{ "COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },
	{ "COMPONENT_COMBATMG_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ", "Full Metal Jacket Rounds" },

	{ "COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE", "Explosive Rounds" },

	{ "COMPONENT_AT_PI_FLSH_02", "Lampe torche" },
	{ "COMPONENT_AT_AR_FLSH	", "Lampe torche" },
	{ "COMPONENT_AT_PI_FLSH", "Lampe torche" },
	{ "COMPONENT_AT_AR_FLSH", "Lampe torche" },
	{ "COMPONENT_AT_PI_FLSH_03", "Lampe torche" },

	{ "COMPONENT_AT_PI_SUPP", "Silencieux" },
	{ "COMPONENT_AT_PI_SUPP_02", "Silencieux" },
	{ "COMPONENT_AT_AR_SUPP", "Silencieux" },
	{ "COMPONENT_AT_AR_SUPP_02", "Silencieux" },
	{ "COMPONENT_AT_SR_SUPP", "Silencieux" },
	{ "COMPONENT_AT_SR_SUPP_03", "Silencieux" },

	{ "COMPONENT_AT_PI_COMP", "Compensator" },
	{ "COMPONENT_AT_PI_COMP_02", "Compensator" },
	{ "COMPONENT_AT_PI_COMP_03", "Compensator" },
	{ "COMPONENT_AT_MRFL_BARREL_01", "Barrel Attachment 1" },
	{ "COMPONENT_AT_MRFL_BARREL_02", "Barrel Attachment 2" },
	{ "COMPONENT_AT_SR_BARREL_01", "Barrel Attachment 1" },
	{ "COMPONENT_AT_BP_BARREL_01", "Barrel Attachment 1" },
	{ "COMPONENT_AT_BP_BARREL_02", "Barrel Attachment 2" },
	{ "COMPONENT_AT_SC_BARREL_01", "Barrel Attachment 1" },
	{ "COMPONENT_AT_SC_BARREL_02", "Barrel Attachment 2" },
	{ "COMPONENT_AT_AR_BARREL_01", "Barrel Attachment 1" },
	{ "COMPONENT_AT_SB_BARREL_01", "Barrel Attachment 1" },
	{ "COMPONENT_AT_CR_BARREL_01", "Barrel Attachment 1" },
	{ "COMPONENT_AT_MG_BARREL_01", "Barrel Attachment 1" },
	{ "COMPONENT_AT_MG_BARREL_02", "Barrel Attachment 2" },
	{ "COMPONENT_AT_CR_BARREL_02", "Barrel Attachment 2" },
	{ "COMPONENT_AT_SR_BARREL_02", "Barrel Attachment 2" },
	{ "COMPONENT_AT_SB_BARREL_02", "Barrel Attachment 2" },
	{ "COMPONENT_AT_AR_BARREL_02", "Barrel Attachment 2" },
	{ "COMPONENT_AT_MUZZLE_01", "Muzzle Attachment 1" },
	{ "COMPONENT_AT_MUZZLE_02", "Muzzle Attachment 2" },
	{ "COMPONENT_AT_MUZZLE_03", "Muzzle Attachment 3" },
	{ "COMPONENT_AT_MUZZLE_04", "Muzzle Attachment 4" },
	{ "COMPONENT_AT_MUZZLE_05", "Muzzle Attachment 5" },
	{ "COMPONENT_AT_MUZZLE_06", "Muzzle Attachment 6" },
	{ "COMPONENT_AT_MUZZLE_07", "Muzzle Attachment 7" },

	{ "COMPONENT_AT_AR_AFGRIP", "Grip" },
	{ "COMPONENT_AT_AR_AFGRIP_02", "Grip" },

	{ "COMPONENT_AT_PI_RAIL", "Holographic Sight" },
	{ "COMPONENT_AT_SCOPE_MACRO_MK2", "Holographic Sight" },
	{ "COMPONENT_AT_PI_RAIL_02", "Holographic Sight" },
	{ "COMPONENT_AT_SIGHTS_SMG", "Holographic Sight" },
	{ "COMPONENT_AT_SIGHTS", "Holographic Sight" },

	{ "COMPONENT_AT_SCOPE_SMALL", "Scope Small" },
	{ "COMPONENT_AT_SCOPE_SMALL_02", "Scope Small" },

	{ "COMPONENT_AT_SCOPE_MACRO_02", "Scope" },
	{ "COMPONENT_AT_SCOPE_SMALL_02", "Scope" },
	{ "COMPONENT_AT_SCOPE_MACRO", "Scope" },
	{ "COMPONENT_AT_SCOPE_MEDIUM", "Scope" },
	{ "COMPONENT_AT_SCOPE_LARGE", "Scope" },
	{ "COMPONENT_AT_SCOPE_SMALL", "Scope" },

	{ "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2", "2x Scope" },
	{ "COMPONENT_AT_SCOPE_SMALL_MK2", "2x Scope" },

	{ "COMPONENT_AT_SCOPE_SMALL_SMG_MK2", "4x Scope" },
	{ "COMPONENT_AT_SCOPE_MEDIUM_MK2", "4x Scope" },

	{ "COMPONENT_AT_SCOPE_MAX", "Advanced Scope" },
	{ "COMPONENT_AT_SCOPE_LARGE", "Scope Large" },
	{ "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2", "Scope Large" },
	{ "COMPONENT_AT_SCOPE_LARGE_MK2", "8x Scope" },

	{ "COMPONENT_AT_SCOPE_NV", "Nightvision Scope" },
	{ "COMPONENT_AT_SCOPE_THERMAL", "Thermal Scope" },

	--{ "COMPONENT_KNUCKLE_VARMOD_PLAYER", "Default Skin" },
	{ "COMPONENT_KNUCKLE_VARMOD_LOVE", "Couleur Rose" },
	{ "COMPONENT_KNUCKLE_VARMOD_DOLLAR", "Couleur Dollar" },
	{ "COMPONENT_KNUCKLE_VARMOD_VAGOS", "Couleur Vagos" },
	{ "COMPONENT_KNUCKLE_VARMOD_HATE", "Couleur Horeur" },
	{ "COMPONENT_KNUCKLE_VARMOD_DIAMOND", "Couleur Diamant" },
	{ "COMPONENT_KNUCKLE_VARMOD_PIMP", "Couleur pimpé" },
	{ "COMPONENT_KNUCKLE_VARMOD_KING", "Couleur de roi" },
	{ "COMPONENT_KNUCKLE_VARMOD_BALLAS", "Couleur Ballas" },
	{ "COMPONENT_KNUCKLE_VARMOD_BASE", "Couleur de base" },
	{ "COMPONENT_SWITCHBLADE_VARMOD_VAR1", "Couleur par default" },
	{ "COMPONENT_SWITCHBLADE_VARMOD_VAR2", "Deux couleurs" },
	--{ "COMPONENT_SWITCHBLADE_VARMOD_BASE", "Base Skin" },

	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_MARKSMANRIFLERIFLE_MK2_CAMO_IND_01", "American Camo" },

	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_BULLPUPRIFLE_MK2_CAMO_IND_01", "American Camo" },

	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_PUMPSHOTGUN_MK2_CAMO_IND_01", "American Camo" },

	{ "COMPONENT_REVOLVER_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_REVOLVER_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_REVOLVER_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_REVOLVER_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_REVOLVER_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_REVOLVER_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_REVOLVER_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_REVOLVER_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_REVOLVER_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_REVOLVER_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_REVOLVER_MK2_CAMO_IND_01", "American Camo" },

	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_SPECIALCARBINE_MK2_CAMO_IND_01", "American Camo" },

	{ "COMPONENT_PISTOL_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_SMG_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_COMBATMG_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO", "Camo 1" },
	{ "COMPONENT_PISTOL_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_SMG_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_COMBATMG_MK2_CAMO_02", "Camo 2" },
	{ "COMPONENT_PISTOL_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_SMG_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_COMBATMG_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO_03", "Camo 3" },
	{ "COMPONENT_PISTOL_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_SMG_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_COMBATMG_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO_04", "Camo 4" },
	{ "COMPONENT_PISTOL_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_SMG_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_COMBATMG_MK2_CAMO_05", "Camo 5" },
	{ "COMPONENT_PISTOL_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_SMG_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_COMBATMG_MK2_CAMO_06", "Camo 6" },
	{ "COMPONENT_PISTOL_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_COMBATMG_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_SMG_MK2_CAMO_07", "Camo 7" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_PISTOL_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_COMBATMG_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_SMG_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO_08", "Camo 8" },
	{ "COMPONENT_PISTOL_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_COMBATMG_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_SMG_MK2_CAMO_09", "Camo 9" },
	{ "COMPONENT_PISTOL_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_COMBATMG_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_SMG_MK2_CAMO_10", "Camo 10" },
	{ "COMPONENT_PISTOL_MK2_CAMO_IND_01", "American Camo" },
	{ "COMPONENT_SMG_MK2_CAMO_IND_01", "American Camo" },
	{ "COMPONENT_ASSAULTRIFLE_MK2_CAMO_IND_01", "American Camo" },
	{ "COMPONENT_CARBINERIFLE_MK2_CAMO_IND_01", "American Camo" },
	{ "COMPONENT_COMBATMG_MK2_CAMO_IND_01", "American Camo" },
	{ "COMPONENT_HEAVYSNIPER_MK2_CAMO_IND_01", "American Camo" },
	{ "COMPONENT_SNSPISTOL_MK2_CAMO_IND_01", "American Camo" },
}

local allWeapons = {
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
	"WEAPON_Lampe torche",
	"WEAPON_SWITCHBLADE",
	"WEAPON_PISTOL",
	"WEAPON_PISTOL_MK2",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_STUNGUN",
	"WEAPON_FLAREGUN",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_REVOLVER",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_MICROSMG",
	"WEAPON_SMG",
	"WEAPON_SMG_MK2",
	"WEAPON_ASSAULTSMG",
	"WEAPON_MG",
	"WEAPON_COMBATMG",
	"WEAPON_COMBATMG_MK2",
	"WEAPON_COMBATPDW",
	"WEAPON_GUSENBERG",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_ASSAULTRIFLE_MK2",
	"WEAPON_CARBINERIFLE",
	"WEAPON_CARBINERIFLE_MK2",
	"WEAPON_ADVANCEDRIFLE",
	"WEAPON_SPECIALCARBINE",
	"WEAPON_BULLPUPRIFLE",
	"WEAPON_COMPACTRIFLE",
	"WEAPON_PUMPSHOTGUN",
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
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_RPG",
	"WEAPON_MINIGUN",
	"WEAPON_STINGER",
	"WEAPON_FIREWORK",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_GRENADE",
	"WEAPON_STICKYBOMB",
	"WEAPON_PROXMINE",
	"WEAPON_BZGAS",
	"WEAPON_SMOKEGRENADE",
	"WEAPON_MOLOTOV",
	"WEAPON_FIREEXTINGUISHER",
	"WEAPON_PETROLCAN",
	"WEAPON_FLARE",
	"WEAPON_RAYPISTOL",
	"WEAPON_RAYCARBINE",
	"WEAPON_RAYMINIGUN",
	"WEAPON_STONE_HATCHET",
	"WEAPON_BATTLEAXE",
	"GADGET_PARACHUTE",
}

local PlayerModels = {
	"mp_m_freemode_01",
	"a_m_m_acult_01",
	"a_m_m_afriamer_01",
	"a_m_m_beach_01",
	"a_m_m_beach_02",
	"a_m_m_bevhills_01",
	"a_m_m_bevhills_02",
	"a_m_m_business_01",
	"a_m_m_eastsa_01",
	"a_m_m_eastsa_02",
	"a_m_m_farmer_01",
	"a_m_m_fatlatin_01",
	"a_m_m_genfat_01",
	"a_m_m_genfat_02",
	"a_m_m_golfer_01",
	"a_m_m_hasjew_01",
	"a_m_m_hillbilly_01",
	"a_m_m_hillbilly_02",
	"a_m_m_indian_01",
	"a_m_m_ktown_01",
	"a_m_m_malibu_01",
	"a_m_m_mexcntry_01",
	"a_m_m_mexlabor_01",
	"a_m_m_og_boss_01",
	"a_m_m_paparazzi_01",
	"a_m_m_polynesian_01",
	"a_m_m_prolhost_01",
	"a_m_m_rurmeth_01",
	"a_m_m_salton_01",
	"a_m_m_salton_02",
	"a_m_m_salton_03",
	"a_m_m_salton_04",
	"a_m_m_skater_01",
	"a_m_m_skidrow_01",
	"a_m_m_socenlat_01",
	"a_m_m_soucent_01",
	"a_m_m_soucent_02",
	"a_m_m_soucent_03",
	"a_m_m_soucent_04",
	"a_m_m_stlat_02",
	"a_m_m_tennis_01",
	"a_m_m_tourist_01",
	"a_m_m_tramp_01",
	"a_m_m_trampbeac_01",
	"a_m_m_tranvest_01",
	"a_m_m_tranvest_02",
	"a_m_o_acult_01",
	"a_m_o_acult_02",
	"a_m_o_beach_01",
	"a_m_o_genstreet_01",
	"a_m_o_ktown_01",
	"a_m_o_salton_01",
	"a_m_o_soucent_01",
	"a_m_o_soucent_02",
	"a_m_o_soucent_03",
}

local DoorPropNames = {
	"v_ilev_shrfdoor",
	"v_ilev_ph_gendoor004",
	"prop_faceoffice_door_l",
	"v_ilev_ct_door03",
	"v_ilev_ml_door1",
	"v_ilev_ss_door04",
	"v_ilev_ss_doorext",
	"v_ilev_methdoorscuff",
	"v_ilev_fibl_door01",
	"v_ilev_fibl_door02",
	"v_ilev_fib_doore_l",
	"v_ilev_fib_doore_r",
	"v_ilev_csr_door_l",
	"v_ilev_csr_door_r",
	"v_ilev_fib_door1",
	"apa_prop_ss1_mpint_door_l",
	"apa_prop_ss1_mpint_door_r",
	"v_ilev_roc_door4",
	"v_ilev_roc_door1_l",
	"v_ilev_roc_door1_r",
	"v_ilev_roc_door2",
	"prop_strip_door_01",
	"v_ilev_door_orange",
	"v_ilev_door_orangesolid",
	"v_ilev_247door",
	"v_ilev_247door_r",
	"v_ilev_mldoor2"
}

local spawninsidevehicle = false
local CustomSpawnColour = false
local defaultvehcolor = { 0, 0, 0 }
local VehicleList = {
    Catagories = {
		"Boats",
		"Commercial",
		"Compacts",
		"Coupes",
		"Cycles",
		"Emergency",
		"Helictopers",
		"Industrial",
		"Military",
		"Motorcycles",
		"Muscle",
		"Off-Road",
		"Planes",
		"SUVs",
		"Sedans",
		"Service",
		"Sports",
		"Sports Classic",
		"Super",
		"Trailer",
		"Trains",
		"Utility",
		"Vans"
	},
	Boats = {
		"Dinghy",
		"Dinghy2",
		"Dinghy3",
		"Dingh4",
		"Jetmax",
		"Marquis",
		"Seashark",
		"Seashark2",
		"Seashark3",
		"Speeder",
		"Speeder2",
		"Squalo",
		"Submersible",
		"Submersible2",
		"Suntrap",
		"Toro",
		"Toro2",
		"Tropic",
		"Tropic2",
		"Tug"
	},
    Commercial = {
		"Benson",
		"Biff",
		"Cerberus",
		"Cerberus2",
		"Cerberus3",
        "Hauler",
        "Hauler2",
        "Mule",
        "Mule2",
        "Mule3",
		"Mule4",
        "Packer",
        "Phantom",
		"Phantom2",
        "Phantom3",
        "Pounder",
        "Pounder2",
        "Stockade",
        "Stockade3",
        "Terbyte"
	},
	Compacts = {
		"Blista",
		"Blista2",
		"Blista3",
		"Brioso",
		"Dilettante",
		"Dilettante2",
		"Issi2",
		"Issi3",
		"issi4",
		"Iss5",
		"issi6",
		"Panto",
		"Prarire",
		"Rhapsody"
	},
	Coupes = {
		"CogCabrio",
		"Exemplar",
		"F620",
		"Felon",
		"Felon2",
		"Jackal",
		"Oracle",
		"Oracle2",
		"Sentinel",
		"Sentinel2",
		"Windsor",
		"Windsor2",
		"Zion",
		"Zion2"
	},
	Cycles = {
		"Bmx", 
		"Cruiser", 
		"Fixter", 
		"Scorcher", 
		"Tribike", 
		"Tribike2", 
		"tribike3"
	},
	Emergency = {
		"AMBULANCE",
		"FBI",
		"FBI2",
		"FireTruk",
		"PBus",
		"police",
		"Police2",
		"Police3",
		"Police4",
		"PoliceOld1",
		"PoliceOld2",
		"PoliceT",
		"Policeb",
		"Polmav",
		"Pranger",
		"Predator",
		"Riot",
		"Riot2",
		"Sheriff",
		"Sheriff2"
	},
	Helictopers = {
		"Akula",
		"Annihilator",
		"Buzzard",
		"Buzzard2",
		"Cargobob",
		"Cargobob2",
		"Cargobob3",
		"Cargobob4",
		"Frogger",
		"Frogger2",
		"Havok",
		"Hunter",
		"Maverick",
		"Savage",
		"Seasparrow",
		"Skylift",
		"Supervolito",
		"Supervolito2",
		"Swift",
		"Swift2",
		"Valkyrie",
		"Valkyrie2",
		"Volatus"
	},
	Industrial = {
		"Bulldozer",
		"Cutter",
		"Dump",
		"Flatbed",
		"Guardian",
		"Handler",
		"Mixer",
		"Mixer2",
		"Rubble",
		"Tiptruck",
		"Tiptruck2"
	},
	Military = {
		"APC",
		"Barracks",
		"Barracks2",
		"Barracks3",
		"Barrage",
		"Chernobog",
		"Crusader",
		"Halftrack",
		"Khanjali",
		"Rhino",
		"Scarab",
		"Scarab2",
		"Scarab3",
		"Thruster",
		"Trailersmall2"
	},
	Motorcycles = {
		"Akuma",
		"Avarus",
		"Bagger",
		"Bati2",
		"Bati",
		"BF400",
		"Blazer4",
		"CarbonRS",
		"Chimera",
		"Cliffhanger",
		"Daemon",
		"Daemon2",
		"Defiler",
		"Deathbike",
		"Deathbike2",
		"Deathbike3",
		"Diablous",
		"Diablous2",
		"Double",
		"Enduro",
		"esskey",
		"Faggio2",
		"Faggio3",
		"Faggio",
		"Fcr2",
		"fcr",
		"gargoyle",
		"hakuchou2",
		"hakuchou",
		"hexer",
		"innovation",
		"Lectro",
		"Manchez",
		"Nemesis",
		"Nightblade",
		"Oppressor",
		"Oppressor2",
		"PCJ",
		"Ratbike",
		"Ruffian",
		"Sanchez2",
		"Sanchez",
		"Sanctus",
		"Shotaro",
		"Sovereign",
		"Thrust",
		"Vader",
		"Vindicator",
		"Vortex",
		"Wolfsbane",
		"zombiea",
		"zombieb"
	},
	Muscle = {
		"Blade",
		"Buccaneer",
		"Buccaneer2",
		"Chino",
		"Chino2",
		"clique",
		"Deviant",
		"Dominator",
		"Dominator2",
		"Dominator3",
		"Dominator4",
		"Dominator5",
		"Dominator6",
		"Dukes",
		"Dukes2",
		"Ellie",
		"Faction",
		"faction2",
		"faction3",
		"Gauntlet",
		"Gauntlet2",
		"Hermes",
		"Hotknife",
		"Hustler",
		"Impaler",
		"Impaler2",
		"Impaler3",
		"Impaler4",
		"Imperator",
		"Imperator2",
		"Imperator3",
		"Lurcher",
		"Moonbeam",
		"Moonbeam2",
		"Nightshade",
		"Phoenix",
		"Picador",
		"RatLoader",
		"RatLoader2",
		"Ruiner",
		"Ruiner2",
		"Ruiner3",
		"SabreGT",
		"SabreGT2",
		"Sadler2",
		"Slamvan",
		"Slamvan2",
		"Slamvan3",
		"Slamvan4",
		"Slamvan5",
		"Slamvan6",
		"Stalion",
		"Stalion2",
		"Tampa",
		"Tampa3",
		"Tulip",
		"Vamos,",
		"Vigero",
		"Virgo",
		"Virgo2",
		"Virgo3",
		"Voodoo",
		"Voodoo2",
		"Yosemite"
	},
	Off_Road = {
		"BFinjection",
		"Bifta",
		"Blazer",
		"Blazer2",
		"Blazer3",
		"Blazer5",
		"Bohdi",
		"Brawler",
		"Bruiser",
		"Bruiser2",
		"Bruiser3",
		"Caracara",
		"DLoader",
		"Dune",
		"Dune2",
		"Dune3",
		"Dune4",
		"Dune5",
		"Insurgent",
		"Insurgent2",
		"Insurgent3",
		"Kalahari",
		"Kamacho",
		"LGuard",
		"Marshall",
		"Mesa",
		"Mesa2",
		"Mesa3",
		"Monster",
		"Monster4",
		"Monster5",
		"Nightshark",
		"RancherXL",
		"RancherXL2",
		"Rebel",
		"Rebel2",
		"RCBandito",
		"Riata",
		"Sandking",
		"Sandking2",
		"Technical",
		"Technical2",
		"Technical3",
		"TrophyTruck",
		"TrophyTruck2",
		"Freecrawler",
		"Menacer"
	},
	Planes = {
		"AlphaZ1",
		"Avenger",
		"Avenger2",
		"Besra",
		"Blimp",
		"blimp2",
		"Blimp3",
		"Bombushka",
		"Cargoplane",
		"Cuban800",
		"Dodo",
		"Duster",
		"Howard",
		"Hydra",
		"Jet",
		"Lazer",
		"Luxor",
		"Luxor2",
		"Mammatus",
		"Microlight",
		"Miljet",
		"Mogul",
		"Molotok",
		"Nimbus",
		"Nokota",
		"Pyro",
		"Rogue",
		"Seabreeze",
		"Shamal",
		"Starling",
		"Stunt",
		"Titan",
		"Tula",
		"Velum",
		"Velum2",
		"Vestra",
		"Volatol",
		"Striekforce"
	},
	SUVs = {
		"BJXL",
		"Baller",
		"Baller2",
		"Baller3",
		"Baller4",
		"Baller5",
		"Baller6",
		"Cavalcade",
		"Cavalcade2",
		"Dubsta",
		"Dubsta2",
		"Dubsta3",
		"FQ2",
		"Granger",
		"Gresley",
		"Habanero",
		"Huntley",
		"Landstalker",
		"patriot",
		"Patriot2",
		"Radi",
		"Rocoto",
		"Seminole",
		"Serrano",
		"Toros",
		"XLS",
		"XLS2"
	},
	Sedans = {
		"Asea",
		"Asea2",
		"Asterope",
		"Cog55",
		"Cogg552",
		"Cognoscenti",
		"Cognoscenti2",
		"emperor",
		"emperor2",
		"emperor3",
		"Fugitive",
		"Glendale",
		"ingot",
		"intruder",
		"limo2",
		"premier",
		"primo",
		"primo2",
		"regina",
		"romero",
		"stafford",
		"Stanier",
		"stratum",
		"stretch",
		"surge",
		"tailgater",
		"warrener",
		"Washington"
	},
	Service = {
		"Airbus",
		"Brickade",
		"Bus",
		"Coach",
		"Rallytruck",
		"Rentalbus",
		"taxi",
		"Tourbus",
		"Trash",
		"Trash2",
		"WastIndr",
		"PBus2"
	},
	Sports = {
		"Alpha",
		"Banshee",
		"Banshee2",
		"BestiaGTS",
		"Buffalo",
		"Buffalo2",
		"Buffalo3",
		"Carbonizzare",
		"Comet2",
		"Comet3",
		"Comet4",
		"Comet5",
		"Coquette",
		"Deveste",
		"Elegy2",
		"Feltzer2",
		"Feltzer3",
		"FlashGT",
		"Furoregt",
		"Fusilade",
		"Futo",
		"GB200",
		"Hotring",
		"Infernus2",
		"Italigto",
		"Jester",
		"Jester2",
		"Khamelion",
		"Kurama",
		"Kurama2",
		"Lynx",
		"MAssacro",
		"MAssacro2",
		"neon",
		"Ninef",
		"ninfe2",
		"omnis",
		"Pariah",
		"Penumbra",
		"Raiden",
		"RapidGT",
		"RapidGT2",
		"Raptor",
		"Revolter",
		"Ruston",
		"Schafter2",
		"Schafter3",
		"Schafter4",
		"Schafter5",
		"Schafter6",
		"Schlagen",
		"Schwarzer",
		"Sentinel3",
		"Seven70",
		"Specter",
		"Specter2",
		"Streiter",
		"Sultan",
		"Surano",
		"Tampa2",
		"Tropos",
		"Verlierer2",
		"ZR380"
	},
	Sports_Classic = {
		"Ardent",
		"BType",
		"BType2",
		"BType3",
		"Casco",
		"Cheetah2",
		"Cheburek",
		"Coquette2",
		"Coquette3",
		"Deluxo",
		"Fagaloa",
		"Gt500",
		"JB700",
		"Jester3",
		"MAmba",
		"Manana",
		"Michelli",
		"Monroe",
		"Peyote",
		"Pigalle",
		"RapidGT3",
		"Retinue",
		"Savestra",
		"Stinger",
		"Stingergt",
		"Stromberg",
		"Swinger",
		"Torero",
		"Tornado",
		"Tornado2",
		"Tornado3",
		"Tornado4",
		"Tornado5",
		"Tornado6",
		"Viseris",
		"Z190",
		"ZType"
	},
	Super = {
		"Adder",
		"Autarch",
		"Bullet",
		"Cheetah",
		"Cyclone",
		"Elegy",
		"EntityXF",
		"Entity2",
		"FMJ",
		"GP1",
		"Infernus",
		"LE7B",
		"Nero",
		"Nero2",
		"Osiris",
		"Penetrator",
		"PFister811",
		"Prototipo",
		"Reaper",
		"SC1",
		"Scramjet",
		"Sheava",
		"SultanRS",
		"Superd",
		"T20",
		"Taipan",
		"Tempesta",
		"Tezeract",
		"Turismo2",
		"Turismor",
		"Tyrant",
		"Tyrus",
		"Vacca",
		"Vagner",
		"Vigilante",
		"Visione",
		"Voltic",
		"Voltic2",
		"Zentorno",
		"Italigtb",
		"Italigtb2",
		"XA21"
	},
	Trailer = {
		"ArmyTanker",
		"ArmyTrailer",
		"ArmyTrailer2",
		"BaleTrailer",
		"BoatTrailer",
		"CableCar",
		"DockTrailer",
		"Graintrailer",
		"Proptrailer",
		"Raketailer",
		"TR2",
		"TR3",
		"TR4",
		"TRFlat",
		"TVTrailer",
		"Tanker",
		"Tanker2",
		"Trailerlogs",
		"Trailersmall",
		"Trailers",
		"Trailers2",
		"Trailers3"
	},
	Trains = {
		"Freight",
		"Freightcar",
		"Freightcont1",
		"Freightcont2",
		"Freightgrain",
		"Freighttrailer",
		"TankerCar"
	},
	Utility = {
		"Airtug",
		"Caddy",
		"Caddy2",
		"Caddy3",
		"Docktug",
		"Forklift",
		"Mower",
		"Ripley",
		"Sadler",
		"Scrap",
		"TowTruck",
		"Towtruck2",
		"Tractor",
		"Tractor2",
		"Tractor3",
		"TrailerLArge2",
		"Utilitruck",
		"Utilitruck3",
		"Utilitruck2"
	},
	Vans = {
		"Bison",
		"Bison2",
		"Bison3",
		"BobcatXL",
		"Boxville",
		"Boxville2",
		"Boxville3",
		"Boxville4",
		"Boxville5",
		"Burrito",
		"Burrito2",
		"Burrito3",
		"Burrito4",
		"Burrito5",
		"Camper",
		"GBurrito",
		"GBurrito2",
		"Journey",
		"Minivan",
		"Minivan2",
		"Paradise",
		"pony",
		"Pony2",
		"Rumpo",
		"Rumpo2",
		"Rumpo3",
		"Speedo",
		"Speedo2",
		"Speedo4",
		"Surfer",
		"Surfer2",
		"Taco",
		"Youga",
		"youga2"
	}
}

-------- Menu Config --------

local killmenu = false

local ISMVariables = {
	SelfOptions = {
		Wardrobe = {
			Head = 0,
			Mask = 0,
		},
		AlienColorSpam = false,
		invisiblitity = false,
		godmode = false,
		AutoHealthRefil = false,
		AntiHeadshot = false,
		MoonWalk = false,
		InfiniteCombatRoll = false,
		superjump = false,
		superrun = false,
		infstamina = false,
		FreezeWantedLevel = false,
		noragdoll = false,
		disableobjectcollisions = false,
		disablepedcollisions = false,
		disablevehiclecollisions = false,
		forceradar = false,
		playercoords = false
	},
	VehicleOptions = {
		AutoPilotOptions = {
			DrivingStyles = {"Évitez le trafic extrême", "Parfois, dépasser le trafic", "Pressé", "Normal", "Ignorer les lumières", "Évitez le trafic"},
			CruiseSpeed = 50.0,
			DrivingStyle = 6,
			SelCruiseSpeedIndex = 1,
			CurCruiseSpeedIndex = 1,
		},
		SelDoorPV = 1,
		CurDoorPV = 1,
		SelCloseDoorPV = 1,
		CurCloseDoorPV = 1,
		AutoClean = false,
		vehgodmode = false,
		speedboost = false,
		Waterproof = false,
		InstantBreaks = false,
		ISMplate = false,
		rainbowcar = false,
		speedometer = false,
		EasyHandling = false,
		DriveOnWater = false,
		AlwaysWheelie = false,
		PersonalVehicle = false,
		forcelauncontrol = false,
		activetorquemulr = false,
		activeenignemulr = false,
		PersonalVehicleESP = false,
		PersonalVehicleCam = false,
		PersonalVehicleMarker = false,
		vehenginemultiplier = { "x2", "x4", "x8", "x16", "x32", "x64", "x128", "x256", "x512", "x1024" },
		selactivetorqueIndex = 1,
		curractivetorqueIndex = 1,
		selactiveenignemulrIndex = 1,
		curractiveenignemulrIndex = 1
	},
	TeleportOptions = {
		smoothteleport = false,
		teleportlocations = {
			{"Teleporte-toi au Parking Central", 215.76, -810.12, 30.73},
			{"Teleporte-toi au magasin Habits comico", 416.85, -807.7, 29.39},
			{"Teleporte-toi à Paleto", 141.06, 6612.61, 32.03},
			{"Teleporte-toi à la Fourriere", 409.16, -1625.47, 29.29},
			{"Teleporte-toi au Mécano", -176.2, -1312.43, 32.3},
			{"Teleporte-toi au Comico", 435.76, -976.23, 30.72},
			{"Teleporte-toi Aeroport", -1018.56, -2700.75, 13.76}
		}
	},
	WeaponOptions = {
		BulletOptions = {
			Enabled = false,
			Bullets = { "Revolver", "Sniper Lourd", "Lance Roquettes", "Feux d'artifice", "Pistolet RAY" },
			CurrentBullet = 1,
			WeaponBulletName = "WEAPON_REVOLVER",
		},
		BulletToUse = "WEAPON_HEAVYSNIPER",
		ExplosiveAmmo = false,
		TriggerBot = false,
		RapidFire = false,
		Crosshair = false, 
		DelGun = false,
		AimBot = {
			Targeting = {
				Target = nil,
				LowestResult = { x = 1.0, y = 1.0}
			},
			ComboBox = {
				SelIndex = 1,
				CurIndex = 1,
				IndexItems = { "Tête", "Corps", "Bassin" },
			},
			MultiTarget = 1,
			Target = nil,
			Enabled = false,
			Bone = "SKEL_HEAD",
			HitChance = 100,
			ThroughWalls = false,
			DrawFOV = true,
			ShowTarget = false,
			FOV = 0.50,
			OnlyPlayers = false,
			IgnoreFriends = true,
			Distance = 1000.0,
			InvisibilityCheck = true,
		},
		NoRecoil = false,
		Tracers = false,
		RageBot = false,
		Spinbot = false,
		InfAmmo = false,
		NoReload = false,
		OneShot = false
	},
	OnlinePlayer = {
		ExplosionType = 1,
		TrackingPlayer = nil,
		attatchedplayer = nil,
		attachtoplayer = false,
		playertofreeze = nil,
		freezeplayer = false,
		messageloopplayer = nil,
		messagetosend = ".",
		messagelooping = false,
		CargodPlayer = nil,
		cargoplaneloop = false,
		ExplosionLoop = false,
		ExplodingPlayer = nil,
		FlingingPlayer = false,
		FireWorkPlayer = nil,
		FireWorkLoop = false,
		FireWork2Player = nil,
		FireWork2Loop = false,
		SmokeLoop = false,
		SmokePlayer = nil,
		JesusLightLoop = false,
		JesusPlayer = nil,
		AlienLightLoop = false,
		ExplosionParticlePlayer = nil,
		AlienPlayer = nil,
		FlarePlayer = nil,
		FlareLoop = false,
		lighttroll = false,
		lighttrollingplayer = nil
	},
	AllOnlinePlayers = {
	    DPEmotes = {"DanseIdiote", "Twerké", "TeteCoupé", "DanseCheval", "Gifle", "Barman"},
		CurrentEmote = 1,
		IncludeSelf = true,
		ParicleEffects = {
			HugeExplosionLoop = false,
			ClownLoop = false,
			BloodLoop = false,
			FireworksLoop = false,
		},
		busingserverloop = false,
		cargoplaneserverloop = false,
		freezeserver = false,
		tugboatrainoverplayers = false,
		ExplodisionLoop = false,
		PTFXSpam = false,
	},
	ScriptOptions = {
		GGACBypass = false,
		SSBBypass = false,
		script_crouch = false,
		vault_doors = false,
		blocktakehostage = false,
		BlockBlackScreen = false,
		blockbeingcarried = false,
		BlockPeacetime = false
	},
	MiscOptions = {
		GlifeHack = false,
		UnlockAllVehicles = false,
		SpamServerChat = false,
		FlyingCars = false,
		ESPLines = false,
		ESPBones = false,
		ESPName = false,
		ESPBlips = false,
		ESPBlipDB = {},
		ESPBox = true,
		ESPBoxStyle = 1,
		ESPDistance = 1000.0,
	},
	MenuOptions = {
		DiscordRichPresence = true,
		Watermark = false
	},
	Keybinds = {
		OpenKey = " ~g~Page Down",
		NoClipKey = " ~g~V",
		DriftMode = " ~g~Aucune",
		RefilHealthKey = " ~g~Aucune",
		RefilArmourKey = " ~g~Aucune",
		AimBotToggleKey = " ~g~Aucune",
	},
	ServerOptions = {
		ESXServer = false,
		VRPServer = false
	}
}

local rgbhud = false

local OnlinePlayerOptions = false

local mocks = 0

local selectedPlayer = 0
local selectedWeapon = nil

local FriendsList = {}
local TazeLoop = false
local TazeLoopingPlayer = nil

local policeheadlights = false

local SafeMode = false

local AntiCheats = {
	ATG = false,
	WaveSheild = false,
	AntiCheese = false,
	ChocoHax = false,
	BadgerAC = false,
	TigoAC = false,
	ESXAC = false,
	VAC = false,
}

local selDoorIndex = 1
local curDoorIndex = 1

local selClosedDoorIndex = 1
local curClosedDoorIndex = 1

local selClosedBreakIndex = 1
local curClosedBreakIndex = 1

local spawnedobjectslist = {}

function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end


local function GetResources()
    local resources = {}
    for i = 1, GetNumResources() do
        resources[i] = GetResourceByFindIndex(i)
    end
    return resources
end

AddEventHandler('cmg3_animations:syncTarget', function(target)
	if ISMVariables.ScriptOptions.blocktakehostage then
		TriggerEvent("cmg3_animations:cl_stop")
	end
end)
AddEventHandler('cmg3_animations:Me', function(target)
	if ISMVariables.ScriptOptions.blocktakehostage then
		TriggerEvent("cmg3_animations:cl_stop")
	end
end)

AddEventHandler('CarryPeople:syncTarget', function(target)
	if ISMVariables.ScriptOptions.blocktakehostage then
		TriggerEvent("CarryPeople:cl_stop")
	end
end)
AddEventHandler('CarryPeople:Me', function(target)
	if ISMVariables.ScriptOptions.blocktakehostage then
		TriggerEvent("CarryPeople:cl_stop")
	end
end)

RegisterNetEvent('screenshot_basic:requestScreenshot')
AddEventHandler('screenshot_basic:requestScreenshot', function()
	CancelEvent()
end)

RegisterNetEvent('EasyAdmin:CaptureScreenshot')
AddEventHandler('EasyAdmin:CaptureScreenshot', function()
	CancelEvent()
end)

RegisterNetEvent('requestScreenshot')
AddEventHandler('requestScreenshot', function()
	CancelEvent()
end)

RegisterNetEvent('__cfx_nui:screenshot_created')
AddEventHandler('__cfx_nui:screenshot_created', function()
	CancelEvent()
end)

RegisterNetEvent('screenshot-basic')
AddEventHandler('screenshot-basic', function()
	CancelEvent()
end)

RegisterNetEvent('requestScreenshotUpload')
AddEventHandler('requestScreenshotUpload', function()
	CancelEvent()
end)

AddEventHandler('EasyAdmin:FreezePlayer', function(toggle)
	TriggerEvent("EasyAdmin:FreezePlayer", false)
end)

RegisterNetEvent('EasyAdmin:CaptureScreenshot')
AddEventHandler('EasyAdmin:CaptureScreenshot', function()
	PushNotification("You're screen is being screen shotted", 1000)
	TriggerServerEvent("EasyAdmin:TookScreenshot", "ERROR")
	CancelEvent()
end)

local year, month, day, hour, minute, second = GetLocalTime()

local InjectionTime = string.format("%02d/%02d/%04d", day, month, year) .. " à " .. string.format("%02d:%02d:%02d", hour, minute, second)


Ham.printStr("ISM Menu", "\n^1ISM Menu Chargé!\nBienvenue " .. Ham.getName() .. "\n^3Page DOWN pour ouvrir le menu !\n^5Les ressources : " .. GetCurrentResourceName() .."\n^6Version du menu : " .. ISMMENU.Version)
Ham.printStr("ISM Menu", "\n^1Injection ~g~effectuée ~w~le " .. InjectionTime .. "\n")

Resources = GetResources()

-- Main Thread
	
Citizen.CreateThread(function()
	
	for i = 1, #Resources do
		if Resources[i] == "Badger-AntiCheat" then
			AntiCheats.BadgerAC = true
		elseif Resources[i] == "BadgerAntiCheat" then
			AntiCheats.BadgerAC = true
		elseif Resources[i] == "BadgerAntiCheat" then
			AntiCheats.BadgerAC = true
		elseif Resources[i] == "Tigo-Anticheat" then
			AntiCheats.TigoAC = true
		elseif Resources[i] == "TigoAnticheat" then
			AntiCheats.TigoAC = true
		elseif string.find(Resources[i], "Tigo") then
			AntiCheats.TigoAC = true
		elseif string.find(Resources[i], "VAC") then
			AntiCheats.VAC = true
		elseif string.find(Resources[i], "Badger") and string.find(Resources[i], "Anti") then
			AntiCheats.BadgerAC = true
		elseif string.find(Resources[i], "cheese") then
			AntiCheats.AntiCheese = true
		elseif string.find(Resources[i], "Choco") then
		    AntiCheats.ChocoHax = true
		elseif string.find(Resources[i], "esx") then
			ISMVariables.ServerOptions.ESXServer = true
		elseif string.find(Resources[i], "vrp") then
			ISMVariables.ServerOptions.VRPServer = true
		end
	end
	
	ISMMENU.CreateMenu('main', 'ISM Menu', 'ISM Menu')
	ISMMENU.CreateSubMenu('onlineplayerlist', 'main', 'Joueurs en Ligne')

	ISMMENU.CreateSubMenu('allplayeroptions', 'onlineplayerlist', 'Joueurs en ligne')
	ISMMENU.CreateSubMenu('attachpropsallplayeroptions', 'allplayeroptions', 'Joueurs en ligne > Options Prop')
	ISMMENU.CreateSubMenu('particleeffectsallplayeroptions', 'allplayeroptions', 'Joueurs en ligne > Options Particules')
	ISMMENU.CreateSubMenu('triggereventsallplayeroptions', 'allplayeroptions', 'Joueurs en ligne > Options Triggers')

	ISMMENU.CreateSubMenu('selectedonlineplayr', 'onlineplayerlist', 'Selected Player Options')
	ISMMENU.CreateSubMenu('trollonlineplayr', 'selectedonlineplayr', 'Troll Options')
	ISMMENU.CreateSubMenu('attachpropstoplayer', 'selectedonlineplayr', 'Attach Options')
	ISMMENU.CreateSubMenu('pedspawningonplayer', 'selectedonlineplayr', 'Ped Spawning')
	ISMMENU.CreateSubMenu('particleeffectsonplayer', 'selectedonlineplayr', 'Pariticle Options')
	ISMMENU.CreateSubMenu('selectedPlayervehicleopts', 'selectedonlineplayr', 'Selectionne le joueur Options Véhicule')
	ISMMENU.CreateSubMenu('selectedplayerTriggerEvents', 'selectedonlineplayr', 'Options Triggers Joueurs')

	ISMMENU.CreateSubMenu('selfoptions', 'main', 'Mes Options')
	ISMMENU.CreateSubMenu('selfmodellist', 'selfoptions', 'Mes Options > Se changer en Ped')
	ISMMENU.CreateSubMenu('visionoptions', 'selfoptions', 'Mes Options > Les visions')
	ISMMENU.CreateSubMenu('selfwardrobe', 'selfoptions', 'Mes Options > Changer sa tenue')
	ISMMENU.CreateSubMenu('premadeoutfits', 'selfoptions', 'Changer sa tenue > Tenue save ISM')
	ISMMENU.CreateSubMenu('superpowers', 'selfoptions', 'Mes Options > Super Pouvoirs')
	ISMMENU.CreateSubMenu('collisionoptions', 'selfoptions', 'Mes Options > Collisions')
	
	ISMMENU.CreateSubMenu('vehicleoptions', 'main', 'Options Véhicule')
	ISMMENU.CreateSubMenu('spawnvehicleoptions', 'vehicleoptions', 'Faire apparaitre un véhicule')

	ISMMENU.CreateSubMenu('funnyvehicles', 'spawnvehicleoptions', 'Vehicules Fun')

	ISMMENU.CreateSubMenu('spawnvehiclesettings', 'spawnvehicleoptions', 'Faire apparaitre un véhicule  Options')
	ISMMENU.CreateSubMenu("selectectedcatagoryvehicleoptions", 'spawnvehicleoptions', 'Options')
	ISMMENU.CreateSubMenu('doorvehicleoptions', 'vehicleoptions', 'Options Véhicule > Portes')
	ISMMENU.CreateSubMenu('vehicletricks', 'vehicleoptions', 'Options Véhicule > Sauts')
	ISMMENU.CreateSubMenu('vehicleautopilot', 'vehicleoptions', 'Auto-Pilote')

	ISMMENU.CreateSubMenu('personalvehicle', 'vehicleoptions', 'Vehicule Personnel')
	ISMMENU.CreateSubMenu('personalvehicleautopilot', 'personalvehicle', 'Vehicule Personnel')

	ISMMENU.CreateSubMenu('ISMcustoms', 'vehicleoptions', 'ISM Customs')

	ISMMENU.CreateSubMenu('teleportoptions', 'main', 'Options Téléportations')
	
	ISMMENU.CreateSubMenu('weaponoptions', 'main', 'Options Armes')
	ISMMENU.CreateSubMenu('weaponaimbotsettings', 'weaponoptions', 'Aimbot')
	ISMMENU.CreateSubMenu('bulletoptions', 'weaponoptions', 'Options Balles')
	ISMMENU.CreateSubMenu('weaponslist', 'weaponoptions', 'Options Armes 1par1')
	ISMMENU.CreateSubMenu('selectedweaponoptions', 'weaponslist', 'Le nom des Armes')

	ISMMENU.CreateSubMenu('worldoptions', 'main', 'Options Serveurs')
	ISMMENU.CreateSubMenu('weatheroptions', 'worldoptions', 'Options Métèo')
	ISMMENU.CreateSubMenu('timeoptions', 'worldoptions', 'Options Heures')
	ISMMENU.CreateSubMenu('serverKorioz', 'worldoptions', 'Options Serveur Korioz')
	ISMMENU.CreateSubMenu('serverNoob', 'worldoptions', 'Options Serveur ~r~Non Fonctionnel Partout')

	ISMMENU.CreateSubMenu('miscellaneousoptions', 'main', 'Options Supplémentaires')
	ISMMENU.CreateSubMenu('serveroptions', 'miscellaneousoptions', 'Options Serveurs')
	ISMMENU.CreateSubMenu('anticheatdetections', 'miscellaneousoptions', 'Options Anti-Cheat')
	ISMMENU.CreateSubMenu('espoptions', 'miscellaneousoptions', 'Options ESP')
	ISMMENU.CreateSubMenu('triggerevents', 'miscellaneousoptions', "Triggers")
	ISMMENU.CreateSubMenu('scriptoptions', 'miscellaneousoptions', "Différents Scripts")
	
	ISMMENU.CreateSubMenu('objectslist', 'main', 'Liste d\'objets')
	ISMMENU.CreateSubMenu('selectedobjectsettings', 'objectslist', 'Options des objets')
	ISMMENU.CreateSubMenu('selectedobjectattachmentsettings', 'selectedobjectsettings', 'Options pour attacher des Objets')
	ISMMENU.CreateSubMenu('clearareaobjects', 'objectslist', 'Supprimer tout')
	
	ISMMENU.CreateSubMenu('menusettings', 'main', "Options")
	ISMMENU.CreateSubMenu('menuthemes', 'menusettings', "Themes")
	ISMMENU.CreateSubMenu('keybinds', 'menusettings', "Les commandes rapides !")
	

	if IsDisabledControlJustPressed(0, 11) then
		ISMMENU.OpenMenu()
	end

	PushNotification("~r~ISM n'est pas responsable de vos BAN", 1000)
	PushNotification("ISM Menu ~g~Chargé !", 1000)
	PushNotification("Ouverture du menu :" .. ISMVariables.Keybinds.OpenKey, 1000)

	FindACResource()
	FindDynamicTriggers()
	
	while true do

		if ISMVariables.MenuOptions.DiscordRichPresence then
			SetDiscordAppId(826870942139023370)
			SetDiscordRichPresenceAsset('ISM')
			SetDiscordRichPresenceAssetText("ISM Menu On top")
			SetDiscordRichPresenceAssetSmall('discord')
			SetDiscordRichPresenceAssetSmallText('discord.gg/TVxy6HwNSg')
		end

		EnableControlAction(0, 178, true)

		if killmenu then
            break
		end

		curMenu = ISMMENU.CurrentMenu()

		ISMMENU.SetMenuProperty(curMenu, 'maxOptionCount', ISMMENU.UI.MaximumOptionCount)

		if curMenu ~= nil then
			if string.find(curMenu, "playr") or string.find(curMenu, "onplayer") or string.find(curMenu, "selectedPlayer") or  string.find(curMenu, "selectedplayer") or string.find(curMenu, "toplayer") then
				OnlinePlayerOptions = true
			else
				OnlinePlayerOptions = false
			end
	    end
		allWeapons = {
			"WEAPON_PISTOL50",
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
			"WEAPON_Lampe torche",
			"WEAPON_SWITCHBLADE",
			"WEAPON_PISTOL",
			"WEAPON_PISTOL_MK2",
			"WEAPON_COMBATPISTOL",
			"WEAPON_APPISTOL",
			"WEAPON_SNSPISTOL",
			"WEAPON_HEAVYPISTOL",
			"WEAPON_VINTAGEPISTOL",
			"WEAPON_STUNGUN",
			"WEAPON_FLAREGUN",
			"WEAPON_MARKSMANPISTOL",
			"WEAPON_REVOLVER",
			"WEAPON_REVOLVER_MK2",
			"WEAPON_MICROSMG",
			"WEAPON_SMG",
			"WEAPON_SMG_MK2",
			"WEAPON_ASSAULTSMG",
			"WEAPON_MG",
			"WEAPON_COMBATMG",
			"WEAPON_COMBATMG_MK2",
			"WEAPON_COMBATPDW",
			"WEAPON_GUSENBERG",
			"WEAPON_MACHINEPISTOL",
			"WEAPON_ASSAULTRIFLE",
			"WEAPON_ASSAULTRIFLE_MK2",
			"WEAPON_CARBINERIFLE",
			"WEAPON_CARBINERIFLE_MK2",
			"WEAPON_ADVANCEDRIFLE",
			"WEAPON_SPECIALCARBINE",
			"WEAPON_BULLPUPRIFLE",
			"WEAPON_COMPACTRIFLE",
			"WEAPON_PUMPSHOTGUN",
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
			"WEAPON_GRENADELAUNCHER",
			"WEAPON_GRENADELAUNCHER_SMOKE",
			"WEAPON_RPG",
			"WEAPON_MINIGUN",
			"WEAPON_STINGER",
			"WEAPON_FIREWORK",
			"WEAPON_HOMINGLAUNCHER",
			"WEAPON_GRENADE",
			"WEAPON_STICKYBOMB",
			"WEAPON_PROXMINE",
			"WEAPON_BZGAS",
			"WEAPON_SMOKEGRENADE",
			"WEAPON_MOLOTOV",
			"WEAPON_FIREEXTINGUISHER",
			"WEAPON_PETROLCAN",
			"WEAPON_FLARE",
			"WEAPON_RAYPISTOL",
			"WEAPON_RAYCARBINE",
			"WEAPON_RAYMINIGUN",
			"WEAPON_STONE_HATCHET",
			"WEAPON_BATTLEAXE",
			"GADGET_PARACHUTE",
			}
		

		if ISMMENU.IsMenuOpened('main') then

			if ISMMENU.MenuButton('~b~Joueurs en ligne', 'onlineplayerlist', "Individual Players / All Players") then
			elseif ISMMENU.MenuButton('~g~Mes Options', 'selfoptions', "Godmode, Mes Pouvoirs") then
			elseif ISMMENU.MenuButton('~y~Options Véhicule', 'vehicleoptions', "Vehicules Fun, Rainbow Car") then
			elseif ISMMENU.MenuButton('~w~Options téléportations', 'teleportoptions', "Teleport to a Location or Waypoint") then
			elseif ISMMENU.MenuButton('~r~Options des Armes', 'weaponoptions', "Infinite Ammo, Explosive ammo") then
			elseif ISMMENU.MenuButton('~b~Options Serveurs Five M', 'worldoptions', "Set World Options") then
			elseif ISMMENU.MenuButton('~g~Options des Objets', 'objectslist', "Spawned Objects") then
			elseif ISMMENU.MenuButton('~y~Différentes Options', 'miscellaneousoptions', "Anticheat Options, Script Options") then
			elseif ISMMENU.MenuButton('Les Options', 'menusettings', "Change Menu Settings") then
			elseif ISMMENU.Button('~r~Fermez le Menu', "", false, "Vous devez réexécuter le menu si vous fermez le menu") then
				killmenu = true
				break;
				ISMMENU.CloseMenu()
			end
			
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('objectslist') then
			
			if ISMMENU.MenuButton("Options pour supprimer les objets", "clearareaobjects") then
		    elseif ISMMENU.CheckBox("Apparition d'objet en freecam", fcam) then
				fcam = not fcam
				if fcam then
					FreeCameraMode = "Object Spooner"
					StartFreeCam(GetGameplayCamFov())
				else
					FreeCameraMode = false
					EndFreeCam()
				end
			elseif ISMMENU.Button("Créer un objet avec le nom !") then
				local model = ISMMENU.KeyboardEntry("Nom de l'objet :", 200)
				coords = GetEntityCoords(PlayerPedId())
				local obj = CreateObject(GetHashKey(model), coords, 1, 1, 1)
				SetEntityHeading(obj, GetEntityHeading(PlayerPedId()))
				SetEntityAsMissionEntity(obj, true, true)
			    cord = GetEntityCoords(obj)
				local Information = {ID = obj, AttachedEntity = nil, AttachmentOffset = {X = 	0, Y = 0, Z = 0, XAxis = 0, YAxis = 0, ZAxis = 0}}
				table.insert(ISMMENU.Objectlist, #ISMMENU.Objectlist + 1, Information)
				if cam and FreeCameraMode == "Object Spooner" then		
					local coords = GetCoordCamLooking()
					local retval, zz, normal = GetGroundZAndNormalFor_3dCoord(coords.x, coords.y, coords.z + 100)
                    SetEntityCoords(obj, coords.x, coords.y, zz)
				end
			end
			for i = 1, #ISMMENU.Objectlist do
				if ISMMENU.MenuButton(ISMMENU.Objectlist[i].ID, "selectedobjectsettings") then
					ISMMENU.ObjectOptions.currentObject = ISMMENU.Objectlist[i]
				end
				if not DoesEntityExist(ISMMENU.Objectlist[i].ID) then
					table.remove(ISMMENU.Objectlist, i)
                    break
				end
			end
			
			if IsDisabledControlJustPressed(0, 11) then
				ting = ISMMENU.menus[ISMMENU.currentMenu].currentOption	- 3
				if ISMMENU.menus[ISMMENU.currentMenu].currentOption > 3 then
					ISMMENU.menus[ISMMENU.currentMenu].currentOption = ISMMENU.menus[ISMMENU.currentMenu].currentOption - 1
					DeleteEntity(ISMMENU.Objectlist[ting].ID)
				end
			end
			
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('selectedobjectsettings') then

			if ISMMENU.MenuButton("Attachment Options", "selectedobjectattachmentsettings") then
	        elseif ISMMENU.ValueChanger("Sensitivity", ISMMENU.ObjectOptions.Sensitivity, 0.01, {0.011, 10}, function(value)
				ISMMENU.ObjectOptions.Sensitivity = value
			end, true) then
			elseif ISMMENU.ValueChanger("X Coordinate", tonumber(string.format("%.2f", GetEntityCoords(ISMMENU.ObjectOptions.currentObject.ID).x)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
				x, y, z = table.unpack(GetEntityCoords(ISMMENU.ObjectOptions.currentObject.ID))
				SetEntityCoords(ISMMENU.ObjectOptions.currentObject.ID, value, y, z)
			end) then
			elseif ISMMENU.ValueChanger("Y Coordinate", tonumber(string.format("%.2f", GetEntityCoords(ISMMENU.ObjectOptions.currentObject.ID).y)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
				x, y, z = table.unpack(GetEntityCoords(ISMMENU.ObjectOptions.currentObject.ID))
				SetEntityCoords(ISMMENU.ObjectOptions.currentObject.ID, x, value, z)
			end) then
			elseif ISMMENU.ValueChanger("Z Coordinate", tonumber(string.format("%.2f", GetEntityCoords(ISMMENU.ObjectOptions.currentObject.ID).z)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
				x, y, z = table.unpack(GetEntityCoords(ISMMENU.ObjectOptions.currentObject.ID))
				SetEntityCoords(ISMMENU.ObjectOptions.currentObject.ID, x, y, value)
			end) then
			elseif ISMMENU.ValueChanger("X Rotation", tonumber(string.format("%.2f", GetEntityRotation(ISMMENU.ObjectOptions.currentObject.ID).x)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
				x, y, z = table.unpack(GetEntityRotation(ISMMENU.ObjectOptions.currentObject.ID))
				SetEntityRotation(ISMMENU.ObjectOptions.currentObject.ID, value, y, z)
			end) then
			elseif ISMMENU.ValueChanger("Y Rotation", tonumber(string.format("%.2f", GetEntityRotation(ISMMENU.ObjectOptions.currentObject.ID).y)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
				x, y, z = table.unpack(GetEntityRotation(ISMMENU.ObjectOptions.currentObject.ID))
				SetEntityRotation(ISMMENU.ObjectOptions.currentObject.ID, x, value, z)
			end) then
			elseif ISMMENU.ValueChanger("Z Rotation", tonumber(string.format("%.2f", GetEntityRotation(ISMMENU.ObjectOptions.currentObject.ID).z)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
				x, y, z = table.unpack(GetEntityRotation(ISMMENU.ObjectOptions.currentObject.ID))
				SetEntityRotation(ISMMENU.ObjectOptions.currentObject.ID, x, y, value)
			end) then
			elseif ISMMENU.Button("Set Entity Upright") then
				SetEntityRotation(ISMMENU.ObjectOptions.currentObject.ID, 0.0, 0.0, GetEntityHeading(ISMMENU.ObjectOptions.currentObject.ID))
			elseif ISMMENU.Button("Teleport Entity To Self") then
				SetEntityCoords(ISMMENU.ObjectOptions.currentObject.ID, GetEntityCoords(PlayerPedId()))
			elseif ISMMENU.CheckBox("Freeze / Unfreeze Entity", IsEntityStatic(ISMMENU.ObjectOptions.currentObject.ID)) then
				if IsEntityStatic(ISMMENU.ObjectOptions.currentObject.ID) then
					FreezeEntityPosition(ISMMENU.ObjectOptions.currentObject.ID, false)
				else
					FreezeEntityPosition(ISMMENU.ObjectOptions.currentObject.ID, true)
				end
			elseif ISMMENU.CheckBox("Collision", EntityCollision) then
				EntityCollision = not EntityCollision
				SetEntityCollision(ISMMENU.ObjectOptions.currentObject.ID, EntityCollision, true)
			elseif ISMMENU.Button("Delete Entity") then
				DeleteEntity(ISMMENU.ObjectOptions.currentObject.ID)
				ISMMENU.OpenMenu("objectslist")
			end
			
			ISMMENU.Display()

		elseif ISMMENU.IsMenuOpened('selectedobjectattachmentsettings') then

			if ISMMENU.Button("Detach Entity") then
				ISMMENU.ObjectOptions.currentObject.AttachedEntity = nil
				DetachEntity(ISMMENU.ObjectOptions.currentObject.ID)
			elseif ISMMENU.Button("Attach To Self") then
				ISMMENU.ObjectOptions.currentObject.AttachedEntity = PlayerPedId()
				AttachEntityToEntity(ISMMENU.ObjectOptions.currentObject.ID, ISMMENU.ObjectOptions.currentObject.AttachedEntity, 0, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.X, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Y, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Z, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.XAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.YAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.ZAxis, true, true, IsEntityAPed(ISMMENU.ObjectOptions.currentObject.AttachedEntity), false, true, true)
			elseif ISMMENU.Button("Attach To Current Vehicle") then
				ISMMENU.ObjectOptions.currentObject.AttachedEntity = GetVehiclePedIsIn(PlayerPedId())
				AttachEntityToEntity(ISMMENU.ObjectOptions.currentObject.ID, ISMMENU.ObjectOptions.currentObject.AttachedEntity, 0, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.X, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Y, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Z, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.XAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.YAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.ZAxis, true, true, IsEntityAPed(ISMMENU.ObjectOptions.currentObject.AttachedEntity), false, true, true)
			end

			if ISMMENU.ObjectOptions.currentObject.AttachedEntity then
				if ISMMENU.ValueChanger("Sensitivity", ISMMENU.ObjectOptions.Sensitivity, 0.01, {0.02, 10}, function(value)
					ISMMENU.ObjectOptions.Sensitivity = value
				end, true) then
				elseif ISMMENU.ValueChanger("X Coordinate", tonumber(string.format("%.2f", ISMMENU.ObjectOptions.currentObject.AttachmentOffset.X)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
					ISMMENU.ObjectOptions.currentObject.AttachmentOffset.X = value
					AttachEntityToEntity(ISMMENU.ObjectOptions.currentObject.ID, ISMMENU.ObjectOptions.currentObject.AttachedEntity, 0, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.X, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Y, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Z, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.XAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.YAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.ZAxis, true, true, false, IsEntityAPed(ISMMENU.ObjectOptions.currentObject.AttachedEntity), true, true)
				end) then
				elseif ISMMENU.ValueChanger("Y Coordinate", tonumber(string.format("%.2f", ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Y)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
					ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Y = value
					AttachEntityToEntity(ISMMENU.ObjectOptions.currentObject.ID, ISMMENU.ObjectOptions.currentObject.AttachedEntity, 0, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.X, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Y, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Z, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.XAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.YAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.ZAxis, true, true, false, IsEntityAPed(ISMMENU.ObjectOptions.currentObject.AttachedEntity), true, true)
				end) then
				elseif ISMMENU.ValueChanger("Z Coordinate", tonumber(string.format("%.2f", ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Z)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
					ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Z = value
					AttachEntityToEntity(ISMMENU.ObjectOptions.currentObject.ID, ISMMENU.ObjectOptions.currentObject.AttachedEntity, 0, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.X, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Y, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Z, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.XAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.YAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.ZAxis, true, true, false, IsEntityAPed(ISMMENU.ObjectOptions.currentObject.AttachedEntity), true, true)
				end) then
				elseif ISMMENU.ValueChanger("X Rotation", tonumber(string.format("%.2f", ISMMENU.ObjectOptions.currentObject.AttachmentOffset.XAxis)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
					ISMMENU.ObjectOptions.currentObject.AttachmentOffset.XAxis = value
					AttachEntityToEntity(ISMMENU.ObjectOptions.currentObject.ID, ISMMENU.ObjectOptions.currentObject.AttachedEntity, 0, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.X, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Y, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Z, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.XAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.YAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.ZAxis, true, true, false, IsEntityAPed(ISMMENU.ObjectOptions.currentObject.AttachedEntity), true, true)
				end) then
				elseif ISMMENU.ValueChanger("Y Rotation", tonumber(string.format("%.2f", ISMMENU.ObjectOptions.currentObject.AttachmentOffset.YAxis)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
					ISMMENU.ObjectOptions.currentObject.AttachmentOffset.YAxis = value
					AttachEntityToEntity(ISMMENU.ObjectOptions.currentObject.ID, ISMMENU.ObjectOptions.currentObject.AttachedEntity, 0, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.X, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Y, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Z, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.XAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.YAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.ZAxis, true, true, false, IsEntityAPed(ISMMENU.ObjectOptions.currentObject.AttachedEntity), true, true)
				end) then
				elseif ISMMENU.ValueChanger("Z Rotation", tonumber(string.format("%.2f", ISMMENU.ObjectOptions.currentObject.AttachmentOffset.ZAxis)), ISMMENU.ObjectOptions.Sensitivity, {-math.huge, math.huge}, function(value)
					ISMMENU.ObjectOptions.currentObject.AttachmentOffset.ZAxis = value
					AttachEntityToEntity(ISMMENU.ObjectOptions.currentObject.ID, ISMMENU.ObjectOptions.currentObject.AttachedEntity, 0, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.X, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Y, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.Z, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.XAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.YAxis, ISMMENU.ObjectOptions.currentObject.AttachmentOffset.ZAxis, true, true, false, IsEntityAPed(ISMMENU.ObjectOptions.currentObject.AttachedEntity), true, true)
				end) then
				end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('clearareaobjects') then
			
			if ISMMENU.Button("Effacer la zone des objets") then
				for object in EnumerateObjects() do
					NetworkRequestControlOfEntity(object)
					DeleteEntity(object)
				end
			elseif ISMMENU.Button("Effacer la zone des véhicules") then
				for vehicle in EnumerateVehicles() do
					NetworkRequestControlOfEntity(vehicle)
					DeleteEntity(vehicle)
				end
			elseif ISMMENU.Button("Effacer la zone des PEDS") then
				for ped in EnumeratePeds() do
					if ped ~= PlayerPedId() and not IsPedAPlayer(ped) then
						NetworkRequestControlOfEntity(ped)
						DeleteEntity(ped)
					end
				end
			elseif ISMMENU.Button("Effacer la liste d'objets") then
				ISMMENU.Objectlist = {}
			end

			ISMMENU.Display()
	
		elseif ISMMENU.IsMenuOpened('menuthemes') then
			if ISMMENU.CheckBox("Couleur Multicouleur", ISMMENU.UI.RGB) then
				ISMMENU.UI.RGB = not ISMMENU.UI.RGB
			elseif ISMMENU.ValueChanger("Rouge", ISMMENU.rgb.r, 1, {0, 255}, function(val)
				ISMMENU.rgb.r = val
			end, true) then
			elseif ISMMENU.ValueChanger("Vert", ISMMENU.rgb.g, 1, {0, 255}, function(val)
				ISMMENU.rgb.g = val
			end, true) then
			elseif ISMMENU.ValueChanger("Bleue", ISMMENU.rgb.b, 1, {0, 255}, function(val)
				ISMMENU.rgb.b = val
			end, true) then
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('keybinds') then

			if ISMMENU.Button("Choisis la touche du NoClip", tostring(ISMVariables.Keybinds.NoClipKey), false, "https://docs.fivem.net/docs/game-references/controls/") then
				local NoClipKey = ISMMENU.KeyboardEntry("~b~Rentre la touche :", 3)
			
				if tonumber(NoClipKey) == nil then
					ISMVariables.Keybinds.NoClipKey = 31
				else
					ISMVariables.Keybinds.NoClipKey = NoClipKey
				end

			elseif ISMMENU.Button("Changer la touche pour la Vie", tostring(ISMVariables.Keybinds.RefilHealthKey), false, "https://docs.fivem.net/docs/game-references/controls/") then
				local HealthRefilKey = ISMMENU.KeyboardEntry("~b~Rentre la touche :", 3)
			
				if tonumber(HealthRefilKey) == nil then
					ISMVariables.Keybinds.RefilHealthKey = 999
				else
					ISMVariables.Keybinds.RefilHealthKey = HealthRefilKey
				end

			elseif ISMMENU.Button("Changer la touche pour Drift", tostring(ISMVariables.Keybinds.DriftMode), false, "https://docs.fivem.net/docs/game-references/controls/") then
				local DriftKey = ISMMENU.KeyboardEntry("~b~Rentre la touche :", 3)
			
				if tonumber(DriftKey) == nil then
					ISMVariables.Keybinds.DriftMode = 999
				else
					ISMVariables.Keybinds.DriftMode = DriftKey
				end
			elseif ISMMENU.Button("Changer la touche pour la Armure", tostring(ISMVariables.Keybinds.RefilHealthKey), false, "https://docs.fivem.net/docs/game-references/controls/") then
				local RefilArmourKey = ISMMENU.KeyboardEntry("~b~Rentre la touche :", 3)
			
				if tonumber(RefilArmourKey) == nil then
					ISMVariables.Keybinds.RefilArmourKey = 999
				else
					ISMVariables.Keybinds.RefilArmourKey = RefilArmourKey
				end
			elseif ISMMENU.Button("Change la clé de l'Aimbot", tostring(ISMVariables.Keybinds.AimBotToggleKey), false, "https://docs.fivem.net/docs/game-references/controls/") then
				local AimbotToggleKey = ISMMENU.KeyboardEntry("~b~Rentre la touche :", 3)
			
				if tonumber(AimbotToggleKey) == nil then
					ISMVariables.Keybinds.AimbotToggleKey = 999
				else
					ISMVariables.Keybinds.AimbotToggleKey = AimbotToggleKey
				end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('menusettings') then
			if ISMMENU.MenuButton("Change la couleur", "menuthemes") then
			elseif ISMMENU.MenuButton("Choisis tes touches", "keybinds") then
			elseif ISMMENU.CheckBox("Fais de la pub Merci", ISMVariables.MenuOptions.DiscordRichPresence) then
				ISMVariables.MenuOptions.DiscordRichPresence = not ISMVariables.MenuOptions.DiscordRichPresence

				if not ISMVariables.MenuOptions.DiscordRichPresence then
                    SetDiscordAppId(0)
					SetDiscordRichPresenceAsset(0)
					SetDiscordRichPresenceAssetText(0)
					SetDiscordRichPresenceAssetSmall(0)
					SetDiscordRichPresenceAssetSmallText(0)
				end

			elseif ISMMENU.CheckBox("Clavier GTA !", ISMMENU.UI.GTAInput) then
				ISMMENU.UI.GTAInput = not ISMMENU.UI.GTAInput
			elseif ISMMENU.CheckBox("Informations Serveur !", ISMVariables.MenuOptions.Watermark) then
				ISMVariables.MenuOptions.Watermark = not ISMVariables.MenuOptions.Watermark
			elseif ISMMENU.ValueChanger("Choisis le nombre des options !", ISMMENU.UI.MaximumOptionCount, 1, {1, 19}, function(val)
				ISMMENU.UI.MaximumOptionCount = val
			end) then
			elseif ISMMENU.ValueChanger("Menu X", ISMMENU.UI.MenuX, 0.01, {0.025, 0.99 - ISMMENU.menus[ISMMENU.currentMenu].width}, function(val)
				ISMMENU.UI.MenuX = val
				ISMMENU.SetMenuProperty(ISMMENU.currentMenu, 'x', ISMMENU.UI.MenuX)
			end) then
			elseif ISMMENU.ValueChanger("Menu Y", ISMMENU.UI.MenuY, 0.01, {0.025, 0.2}, function(val)
				ISMMENU.UI.MenuY = val
				ISMMENU.SetMenuProperty(ISMMENU.currentMenu, 'y', ISMMENU.UI.MenuY)
			end) then
			elseif ISMMENU.ValueChanger("Notification X", ISMMENU.UI.NotificationX, 0.01, {0.025, 0.690}, function(val)
				ISMMENU.UI.NotificationX = val
			end) then
			elseif ISMMENU.ValueChanger("Notification Y", ISMMENU.UI.NotificationY, 0.01, {0.025, 0.5}, function(val)
				ISMMENU.UI.NotificationY = val
			end) then
			elseif ISMMENU.Button("Injection ~g~effectuée ~w~le : " .. InjectionTime) then
			elseif ISMMENU.Button("Version ISM Menu : " ..ISMMENU.Version) then
			end
			
			if ISMMENU.menus[ISMMENU.currentMenu].currentOption == 9 or ISMMENU.menus[ISMMENU.currentMenu].currentOption == 10 then
				PushNotification("Trop beau tout ça", 1)
			end
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('worldoptions') then
			if ISMMENU.MenuButton('Options Météo ~r~Seulement pour toi', 'weatheroptions', "Set the Weather") then
			elseif ISMMENU.MenuButton('Options Horaires ~r~Seulement pour toi', 'timeoptions', "Set the Time") then
			elseif ISMMENU.MenuButton('Options Serveur Korioz', 'serverKorioz', "Korioz") then
			elseif ISMMENU.MenuButton('Options Serveur ~r~Non Fonctionnel Partout', 'serverNoob', "Noob") then
			end
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('doorvehicleoptions') then
			
			if ISMMENU.Button("Ouvrir toutes les portes", "", false, "Ouvrir toutes les portes") then
				for door = 0, 7 do
					SetVehicleDoorOpen(GetPlayersLastVehicle(), door, false, false)
				end
			elseif ISMMENU.Button("Fermer toutes les portes", "", false, "Fermer toutes les portes") then
				for door = 0, 7 do
					SetVehicleDoorShut(GetPlayersLastVehicle(), door, false)
				end
			elseif ISMMENU.Button("Casser toutes les portes", "", false, "Casser toutes les portes") then
				for door = 0, 7 do
					SetVehicleDoorBroken(GetPlayersLastVehicle(), door, false)
				end
			elseif ISMMENU.ComboBox("Ouvrir la porte", {"Gauche conducteur", "Droite passager", "Gauche arrière", "Droite arrière", "Capot", "Coffre"}, curDoorIndex, function(currentIndex, selectedIndex)
				curDoorIndex = currentIndex
				selDoorIndex = currentIndex
				end) then

				SetVehicleDoorOpen(GetPlayersLastVehicle(), selDoorIndex - 1, false, false)
			elseif ISMMENU.ComboBox("Fermer la porte", {"Gauche conducteur", "Droite passager", "Gauche arrière", "Droite arrière", "Capot", "Coffre"}, curClosedDoorIndex, function(currentIndex, selectedIndex)
				curClosedDoorIndex = currentIndex
				selClosedDoorIndex = currentIndex
				end) then
	
				SetVehicleDoorShut(GetPlayersLastVehicle(), selClosedDoorIndex - 1, false)
			elseif ISMMENU.ComboBox("Casser une porte", {"Gauche conducteur", "Droite passager", "Gauche arrière", "Droite arrière", "Capot", "Coffre"}, curClosedBreakIndex, function(currentIndex, selectedIndex)
				curClosedBreakIndex = currentIndex
				selClosedBreakIndex = currentIndex
				end) then
	
				SetVehicleDoorBroken(GetPlayersLastVehicle(), selClosedBreakIndex - 1, false)
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('selectectedcatagoryvehicleoptions') then
			local menu = ISMMENU.menus[ISMMENU.currentMenu]
			local catagory = ISMMENU.menus[ISMMENU.currentMenu].subTitle

			if VehicleList[catagory] ~= nil then
				for i = 1, #VehicleList[catagory] do
					if ISMMENU.Button(VehicleList[catagory][i]) then
						RequestModel(GetHashKey(VehicleList[catagory][i]))
	
						local loops = 0
	
						while not HasModelLoaded(GetHashKey(VehicleList[catagory][i])) and loops < 500 do
							loops = loops + 1
							Wait(1)
						end
						
						if spawninsidevehicle then
							local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5)
							local SpawnedCar = CreateVehicle(GetHashKey(VehicleList[catagory][i]), coords.x, coords.y, coords.z, GetEntityHeading(PlayerPedId()), 1, 1)	  
							SetPedInVehicleContext(PlayerPedId(), GetHashKey(VehicleList[catagory][i]))
							SetPedIntoVehicle(PlayerPedId(), SpawnedCar, -1)
							if CustomSpawnColour then
								local r,g,b = table.unpack(defaultvehcolor)
								SetVehicleCustomPrimaryColour(SpawnedCar, r, g, b)
								SetVehicleCustomSecondaryColour(SpawnedCar, r, g, b)
							end
						else
							local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5)
							local SpawnedCar = CreateVehicle(GetHashKey(VehicleList[catagory][i]), coords.x, coords.y, coords.z, GetEntityHeading(PlayerPedId()), 1, 1)
							if CustomSpawnColour then
								local r,g,b = table.unpack(defaultvehcolor)
								SetVehicleCustomPrimaryColour(SpawnedCar, r, g, b)
								SetVehicleCustomSecondaryColour(SpawnedCar, r, g, b)
							end
						end
					end
				end
		    end
		
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('spawnvehiclesettings') then
			if ISMMENU.CheckBox("Apparaitre dans le véhicule", spawninsidevehicle) then
				spawninsidevehicle = not spawninsidevehicle
			elseif ISMMENU.CheckBox("Apparaitre avec une couleur precise", CustomSpawnColour) then
				CustomSpawnColour = not CustomSpawnColour
			elseif ISMMENU.Button("Choisir la couleur d'apparition") then
				local r = ISMMENU.KeyboardEntry("Enter Red Value 0 - 255", 3)
				local g = ISMMENU.KeyboardEntry("Enter Green Value 0 - 255", 3)
				local b = ISMMENU.KeyboardEntry("Enter Blue Value 0 - 255", 3)
				r = tonumber(r)
				g = tonumber(g)
				b = tonumber(b)
				if r == nil or g == nil or b == nil then
				elseif r  < 0 or g < 0 or b < 0 or r > 255 or g > 255 or b > 255 then
				else
					defaultvehcolor = { r,g,b }
				end
			end
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('spawnvehicleoptions') then

			if ISMMENU.MenuButton("Les options d'apparition", "spawnvehiclesettings") then
			elseif ISMMENU.Button("Rentre le nom du véhicule") then
				local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 5.0, 0.5)
				local result = ISMMENU.KeyboardEntry("~b~Nom du véhicule :", 200)

				if HasModelLoaded(GetHashKey(result)) then

				else
					RequestModel(GetHashKey(result))
					Wait(500)
				end
				
				CancelOnscreenKeyboard()
					
				local vehicle = CreateVehicle(GetHashKey(result), coords.x + 1.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
				if CustomSpawnColour then
					local r,g,b = table.unpack(defaultvehcolor)
					SetVehicleCustomPrimaryColour(vehicle, r, g, b)
					SetVehicleCustomSecondaryColour(vehicle, r, g, b)
				end
				SetVehicleNeedsToBeHotwired(vehicle, false)
				SetEntityHeading(vehicle, GetEntityHeading(PlayerPedId()))
				SetVehicleEngineOn(vehicle, true, false, false)
				SetVehRadioStation(vehicle, 'OFF')
				if spawninsidevehicle then
					SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
				end

				CancelOnscreenKeyboard()
			elseif ISMMENU.MenuButton("Véhicules Fun", "funnyvehicles") then
			end

			for i = 1, #VehicleList.Catagories do
				if ISMMENU.MenuButton(VehicleList.Catagories[i], "selectectedcatagoryvehicleoptions") then
					ISMMENU.SetMenuProperty('selectectedcatagoryvehicleoptions', 'subTitle', VehicleList.Catagories[i])
				end
			end
 
			ISMMENU.Display()

		elseif ISMMENU.IsMenuOpened('funnyvehicles') then
			
			if ISMMENU.Button("Secoupe volante") then

				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("Anticheat activé | Fonction Bloqué", 600)
				else
					UFOVeh(-1)
				end

			elseif ISMMENU.Button("Une T20 avec une rampe !") then

				RampCar(-1)

			elseif ISMMENU.Button("Une sultan avec une rampe !") then

				RampCar1(-1)

			elseif ISMMENU.Button("Conduire un contenaire !") then

				ContCar(-1)

			elseif ISMMENU.Button("Banshee invincible") then
				RequestModel(GetHashKey("banshee"))
				RequestModel(GetHashKey("kuruma2"))

				local r = math.random(1, 254)
				local g = math.random(1, 254)
				local b = math.random(1, 254)

				Wait(500)

				local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5)

				local vehicle = CreateVehicle(GetHashKey("banshee"), coords.x, coords.y, coords.z, 0.0, 1, 1)
				local vehicle2 = CreateVehicle(GetHashKey("kuruma2"), coords.x, coords.y, coords.z, 0.0, 1, 1)

				SetEntityHeading(vehicle, GetEntityHeading(PlayerPedId()))

				AttachEntityToEntity(vehicle2, vehicle, 0, 0.0, -0.11, -0.0100, 0.5, 0.0, 0.0, true, true, false, false, true, true)

				SetVehicleCanBreak(vehicle2, false)

				WashDecalsFromVehicle(vehicle, 1.0)
				SetVehicleDirtLevel(vehicle)
				WashDecalsFromVehicle(vehicle2, 1.0)
				SetVehicleDirtLevel(vehicle2)
				SetVehicleCustomPrimaryColour(vehicle, r, g, b)
				SetVehicleCustomSecondaryColour(vehicle, r, g, b)
				SetVehicleModColor_1(vehicle, 4, 255, 0)
				SetVehicleModColor_1(vehicle2, 4, 255, 0)

				SetVehicleCustomPrimaryColour(vehicle2, r, g, b)
				SetEntityHeading(vehicle, GetEntityHeading(PlayerPedId()))

				SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
			elseif ISMMENU.Button("Voiture Boombox TV") then
				RequestModel(GetHashKey("surano"))
				RequestModel(GetHashKey("prop_speaker_05"))
				RequestModel(GetHashKey("prop_speaker_03"))
				RequestModel(GetHashKey("prop_speaker_01"))
				RequestModel(GetHashKey("prop_cs_tv_stand"))

				local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5)

				local vehicle = CreateVehicle(GetHashKey("surano"), coords.x, coords.y, coords.z, 0.0, 1, 1)
				local frontspeaker = CreateObject(GetHashKey("prop_speaker_05"), 9, 9, 9, 1, 1, 1)
				local secondspeaker = CreateObject(GetHashKey("prop_speaker_01"), 9, 9, 9, 1, 1, 1)
				local thirdspeaker = CreateObject(GetHashKey("prop_speaker_03"), 9, 9, 9, 1, 1, 1)
				local fourthspeaker = CreateObject(GetHashKey("prop_speaker_03"), 9, 9, 9, 1, 1, 1)
				local four1thspeaker = CreateObject(GetHashKey("prop_cs_tv_stand"), 9, 9, 9, 1, 1, 1)
				local four2thspeaker = CreateObject(GetHashKey("prop_cs_tv_stand"), 9, 9, 9, 1, 1, 1)

				AttachEntityToEntity(frontspeaker, vehicle, 0, 0.0, 1.8830, 0.2240, 0.0, 0.0, 180.0, true, true, false, false, true, true)
				AttachEntityToEntity(secondspeaker, vehicle, 0, 0.0, -1.23, -0.24, 0.0, 0.0, 180.0, true, true, false, false, true, true)
				AttachEntityToEntity(thirdspeaker, vehicle, 0, -0.6, -1.5, 0.25, 0.0, 0.0, 0.0, true, true, false, false, true, true)
				AttachEntityToEntity(fourthspeaker, thirdspeaker, 0, 1.2, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, false, true, true)
				AttachEntityToEntity(four1thspeaker, vehicle, 0, -0.6, -1.5, 0.25, 0.0, 0.0, 0.0, true, true, false, false, true, true)
				AttachEntityToEntity(four2thspeaker, vehicle, 0, 0.5, -1.5, 0.25, 0.0, 0.0, 0.0, true, true, false, false, true, true)

				SetVehicleCustomPrimaryColour(vehicle, 0, 0, 0)

				SetEntityHeading(vehicle, GetEntityHeading(PlayerPedId()))
				
				SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('ISMcustoms') then
			
			local inveh = IsPedInAnyVehicle(PlayerPedId(), false)

			if ISMMENU.Button("Changer la plaque", "", false, "Plaque d'immatriculation") then
				license = ISMMENU.KeyboardEntry("La plaque : ", 8)
				SetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId()), license)
				
			elseif ISMMENU.Button("Choisir la couleur !") then
				local playerVeh = GetVehiclePedIsIn(PlayerPedId(), true)
				local r = ISMMENU.KeyboardEntry("Rouge | entre 0-255", 3)
				local g = ISMMENU.KeyboardEntry("Vert | entre 0-255", 3)
				local b = ISMMENU.KeyboardEntry("Bleue | entre 0-255", 3)

				r = tonumber(r)
				g = tonumber(g)
				b = tonumber(b)

				if r == nil then
					r = 0
				end
				if g == nil then
					g = 0
				end
				if b == nil then
					b = 0
				end

				if r > 255 then
					r = 255
				end
				if r < 0 then
					r = 0
				end
				if g > 255 then
					g = 255
				end
				if g < 0 then
					g = 0
				end
				if b > 255 then
					b = 255
				end
				if b < 0 then
					b = 0
				end

				SetVehicleCustomPrimaryColour(playerVeh, r, g, b)
				SetVehicleCustomSecondaryColour(playerVeh, r, g, b)
		    elseif ISMMENU.Button("Toutes les options", "", false, "Full options") then
			    MaxOut(GetVehiclePedIsIn(PlayerPedId(), 0))
			end
			if ISMMENU.Button("Avoir les lames d'helico sous le véhicule") then
				for i = 1, 5 do 
					
			     	local ped = PlayerPedId()
			     	local coords = GetEntityCoords(ped)
					local vehicleplyr = GetVehiclePedIsIn(ped, 0)
				
			     	local pedmodel = "a_m_m_eastsa_01"
			     	local planemodel = "buzzard"
			
			     	RequestModel(GetHashKey(pedmodel))
			     	RequestModel(GetHashKey(planemodel))
			
			     	local loadattemps = 0
			
			     	while not HasModelLoaded(GetHashKey(pedmodel)) do
						loadattemps = loadattemps + 1
						Citizen.Wait(1)
						if loadattemps > 10000 then
							break
						end
					end
			
					while not HasModelLoaded(GetHashKey(planemodel)) and loadattemps < 10000 do
						Wait(500)
					end
				
					local nped = CreatePed(4, pedmodel, coords.x, coords.y, coords.z, 0.0, true, true)
			
					local veh = CreateVehicle(GetHashKey(planemodel), coords.x, coords.y, coords.z + 50.0, GetEntityHeading(ped), 1, 1)
				
					ClearPedTasks(nped)
				
					SetPedIntoVehicle(nped, veh, -1)
			
					SetPedKeepTask(nped, true)

					AttachEntityToEntity(veh, vehicleplyr, 0, 0.0, 0.0, -2.5, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

					SetVehicleCanBreak(veh, false)

				end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('vehicletricks') then
			if ISMMENU.Button("Figure : Kick Flip", "", "KickFlip") then
				local playerPed = PlayerPedId()
				local playerVeh = GetVehiclePedIsIn(playerPed, true)
			       
	            if DoesEntityExist(playerVeh) then
				    ApplyForceToEntity(playerVeh, 1, 0.0, 0.0, 10.0, 90.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
				end
			elseif ISMMENU.Button("Figure : BackFlip") then
				local playerPed = PlayerPedId()
				local playerVeh = GetVehiclePedIsIn(playerPed, true)
			       
	            if DoesEntityExist(playerVeh) then
				    ApplyForceToEntity(playerVeh, 1, 0.0, 0.0, 15.0, 0.0, 60.0, 0.0, 0, 0, 1, 1, 0, 0)
				end
			elseif ISMMENU.Button("Figure : Sauter") then
				local playerPed = PlayerPedId()
				local playerVeh = GetVehiclePedIsIn(playerPed, true)
			       
	            if DoesEntityExist(playerVeh) then
				    ApplyForceToEntity(playerVeh, 1, 0.0, 0.0, 15.0, 0.0, 0.0, 00.0, 0, 1, 0, 1, 0, 0)
				end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('personalvehicleautopilot') then
			if ISMMENU.Button("Téléportez-vous dans le véhicule") then
				SetPedIntoVehicle(PlayerPedId(), ISMVariables.VehicleOptions.PersonalVehicle, -1)
			elseif ISMMENU.Button("Téléporter le véhicule à soi") then
				SetEntityCoords(ISMVariables.VehicleOptions.PersonalVehicle, GetEntityCoords(PlayerPedId()))
			elseif ISMMENU.Button("Véhicule pilote automatique vers soi", "", false, "le véhicule viens a toi") then
				if GetVehiclePedIsUsing(PlayerPedId()) == ISMVariables.VehicleOptions.PersonalVehicle then
					PVAutoDriving = false
				else
					PVAutoDriving = true
					Citizen.CreateThread(function()
						if DoesEntityExist(Driver) then
							DeleteEntity(Driver)
						end
						Driver = CreatePed(5, GetEntityModel(PlayerPedId()), spawnCoords, spawnHeading, true)
						TaskWarpPedIntoVehicle(Driver, ISMVariables.VehicleOptions.PersonalVehicle, -1)
						SetEntityVisible(Driver, false)
						while not killmenu and PVAutoDriving do
							SetPedMaxHealth(Driver, 10000)
							SetEntityHealth(Driver, 10000)
							SetEntityInvincible(Driver, false)
							SetPedCanRagdoll(Driver, true)
							ClearPedLastWeaponDamage(Driver)
							SetEntityProofs(Driver, false, false, false, false, false, false, false, false)
							SetEntityOnlyDamagedByPlayer(Driver, true)
							SetEntityCanBeDamaged(Driver, true)

							if not DoesEntityExist(ISMVariables.VehicleOptions.PersonalVehicle) or not DoesEntityExist(Driver) then
								break
							end
							Wait(100)
							coords = GetEntityCoords(ISMVariables.VehicleOptions.PersonalVehicle)
							plycoords = GetEntityCoords(PlayerPedId())
							TaskVehicleDriveToCoordLongrange(Driver, ISMVariables.VehicleOptions.PersonalVehicle, plycoords.x, plycoords.y, plycoords.z, 25.0, 1074528293, 1.0)
							SetVehicleLightsMode(ISMVariables.VehicleOptions.PersonalVehicle, 2)
							distance = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, plycoords.x, plycoords.y, coords.z, true)
							if IsVehicleStuckOnRoof(ISMVariables.VehicleOptions.PersonalVehicle) then
								SetVehicleCoords(ISMVariables.VehicleOptions.PersonalVehicle, GetEntityCoords(ISMVariables.VehicleOptions.PersonalVehicle))
							end
							if distance < 5.0 then
								PushNotification("~g~Ton véhicule personnel est la !")
								SetVehicleForwardSpeed(ISMVariables.VehicleOptions.PersonalVehicle, 1.0)
								DeleteEntity(Driver)
								PVAutoDriving = false
								return
							end
						end
					end)
				end
			
			elseif ISMMENU.Button("Pilote automatique au point GPS !", "", false, "Go point GPS") then
				local plycoords = GetBlipCoords(GetFirstBlipInfoId(8))
				if GetVehiclePedIsUsing(PlayerPedId()) == ISMVariables.VehicleOptions.PersonalVehicle then
					PVAutoDriving = false
				else
					PVAutoDriving = true
					Citizen.CreateThread(function()
						if DoesEntityExist(Driver) then
							DeleteEntity(Driver)
						end
						Driver = CreatePed(5, GetEntityModel(PlayerPedId()), spawnCoords, spawnHeading, true)
						TaskWarpPedIntoVehicle(Driver, ISMVariables.VehicleOptions.PersonalVehicle, -1)
						SetEntityVisible(Driver, false)
				
						while not killmenu and PVAutoDriving do
							if not DoesEntityExist(ISMVariables.VehicleOptions.PersonalVehicle) or not DoesEntityExist(Driver) then
								break
							end
							Wait(100)
							coords = GetEntityCoords(ISMVariables.VehicleOptions.PersonalVehicle)
							TaskVehicleDriveToCoordLongrange(Driver, ISMVariables.VehicleOptions.PersonalVehicle, plycoords.x, plycoords.y, plycoords.z, 25.0, 1074528293, 1.0)
							SetVehicleLightsMode(ISMVariables.VehicleOptions.PersonalVehicle, 2)
							distance = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, plycoords.x, plycoords.y, coords.z, true)
							if IsVehicleStuckOnRoof(ISMVariables.VehicleOptions.PersonalVehicle) then
								SetVehicleCoords(ISMVariables.VehicleOptions.PersonalVehicle, GetEntityCoords(ISMVariables.VehicleOptions.PersonalVehicle))
							end
							if distance < 5.0 then
								SetVehicleForwardSpeed(ISMVariables.VehicleOptions.PersonalVehicle, 1.0)
								DeleteEntity(Driver)
								PVAutoDriving = false
								return
							end
						end
					end)
				end
			
			elseif ISMMENU.Button("Pilote automatique autour de la Zone !", "", false, "Go Zone") then
				Driver = CreatePed(5, GetEntityModel(PlayerPedId()), spawnCoords, spawnHeading, true)
				TaskWarpPedIntoVehicle(Driver, ISMVariables.VehicleOptions.PersonalVehicle, -1)
				SetEntityVisible(Driver, false)
				TaskVehicleDriveWander(Driver, ISMVariables.VehicleOptions.PersonalVehicle, 50.0, 5)
			elseif ISMMENU.Button("Cela ne fonctionne pas !", "", false, "c'est trop bien Invictus") then
				PVAutoDriving = false
				if DoesEntityExist(Driver) then
					DeleteEntity(Driver)
				end
			elseif PVAutoDriving and ISMMENU.Button("Téléporter le véhicule vers l'avant") then
				offset = GetOffsetFromEntityInWorldCoords(ISMVariables.VehicleOptions.PersonalVehicle, 0.0, 5.0, 0.5)
				SetEntityCoords(ISMVariables.VehicleOptions.PersonalVehicle, offset.x, offset.y, offset.z, 0, 0, 0, 0)
			elseif PVAutoDriving and ISMMENU.Button("Téléporter le véhicule vers l'arrière") then
				offset = GetOffsetFromEntityInWorldCoords(ISMVariables.VehicleOptions.PersonalVehicle, 0.0, -5.0, 0.5)
				SetEntityCoords(ISMVariables.VehicleOptions.PersonalVehicle, offset.x, offset.y, offset.z, 0, 0, 0, 0)
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('personalvehicle') then

			if not DoesEntityExist(ISMVariables.VehicleOptions.PersonalVehicle) then
                ISMVariables.VehicleOptions.PersonalVehicle = false
			end

			if ISMVariables.VehicleOptions.PersonalVehicle == false then

				ISMVariables.VehicleOptions.PersonalVehicleESP = false
				ISMVariables.VehicleOptions.PersonalVehicleMarker = false
				PVLocked = false
				PVLockedForSelf = false
				
				if ISMMENU.Button("Se donner le véhicule") then
					ISMVariables.VehicleOptions.PersonalVehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					SetEntityAsMissionEntity(ISMVariables.VehicleOptions.PersonalVehicle, 1, 1)
				end
			end

			if ISMVariables.VehicleOptions.PersonalVehicle ~= false then
				if ISMMENU.MenuButton("Auto Pilot", "personalvehicleautopilot") then
				elseif ISMMENU.Button("Remove Personal Vehicle") then
					ISMVariables.VehicleOptions.PersonalVehicle = false
					SetEntityAsMissionEntity(ISMVariables.VehicleOptions.PersonalVehicle, 0, 0)
			    elseif ISMMENU.Button("Repair Vehicle") then
					NetworkRequestControlOfNetworkId(VehToNet(ISMVariables.VehicleOptions.PersonalVehicle))
					if NetworkHasControlOfNetworkId(VehToNet(ISMVariables.VehicleOptions.PersonalVehicle)) then
						SetVehicleEngineHealth(ISMVariables.VehicleOptions.PersonalVehicle, 1000)
						SetVehicleFixed(ISMVariables.VehicleOptions.PersonalVehicle)
					else
                        NetworkRequestControlOfNetworkId(VehToNet(ISMVariables.VehicleOptions.PersonalVehicle))
					end
			    elseif ISMMENU.Button("Burst Vehicle Tyres") then
					NetworkRequestControlOfNetworkId(VehToNet(ISMVariables.VehicleOptions.PersonalVehicle))
					if NetworkHasControlOfNetworkId(VehToNet(ISMVariables.VehicleOptions.PersonalVehicle)) then
						SetVehicleTyreBurst(ISMVariables.VehicleOptions.PersonalVehicle, 0, true, 1000.0)
						SetVehicleTyreBurst(ISMVariables.VehicleOptions.PersonalVehicle, 1, true, 1000.0)
						SetVehicleTyreBurst(ISMVariables.VehicleOptions.PersonalVehicle, 2, true, 1000.0)
						SetVehicleTyreBurst(ISMVariables.VehicleOptions.PersonalVehicle, 3, true, 1000.0)
						SetVehicleTyreBurst(ISMVariables.VehicleOptions.PersonalVehicle, 4, true, 1000.0)
						SetVehicleTyreBurst(ISMVariables.VehicleOptions.PersonalVehicle, 5, true, 1000.0)
						SetVehicleTyreBurst(ISMVariables.VehicleOptions.PersonalVehicle, 4, true, 1000.0)
						SetVehicleTyreBurst(ISMVariables.VehicleOptions.PersonalVehicle, 7, true, 1000.0)
					else
                        NetworkRequestControlOfNetworkId(VehToNet(ISMVariables.VehicleOptions.PersonalVehicle))
					end
				elseif ISMMENU.CheckBox("Siern", VehicleSiren) then
					VehicleSiren = not VehicleSiren
					SetVehicleSiren(ISMVariables.VehicleOptions.PersonalVehicle, VehicleSiren)
				elseif ISMMENU.CheckBox("Locked", PVLocked) then
					PVLocked = not PVLocked
					RequestControlOnce(ISMVariables.VehicleOptions.PersonalVehicle)
					SetVehicleDoorsLocked(ISMVariables.VehicleOptions.PersonalVehicle, PVLocked)
					SetVehicleDoorsLockedForAllPlayers(ISMVariables.VehicleOptions.PersonalVehicle, PVLocked)
					if PVLocked == false then
						PVLockedForSelf = false
					end
				elseif PVLocked and ISMMENU.CheckBox("Unlocked For Self", PVLockedForSelf, "The Car is locked for everyone but you") then
					PVLockedForSelf = not PVLockedForSelf
					RequestControlOnce(ISMVariables.VehicleOptions.PersonalVehicle)
					SetVehicleDoorsLockedForPlayer(ISMVariables.VehicleOptions.PersonalVehicle, PlayerId(), not PVLockedForSelf)
				elseif PVLocked and ISMMENU.CheckBox("Unlocked For Friends", PVLockedForFriends, "The Car is locked for everyone but yourfriends") then
					PVLockedForFriends = not PVLockedForFriends
					RequestControlOnce(ISMVariables.VehicleOptions.PersonalVehicle)
					for i = 1, #FriendsList do
					    SetVehicleDoorsLockedForPlayer(ISMVariables.VehicleOptions.PersonalVehicle, FriendsList[i], not PVLockedForFriends)
					end
				elseif ISMMENU.CheckBox("Camera", ISMVariables.VehicleOptions.PersonalVehicleCam) then
					if ISMVariables.VehicleOptions.PersonalVehicleCam then
                        EndPersonalVehicleCam()
					else
                        StartPersonalVehicleCam()
					end
				elseif ISMMENU.CheckBox("ESP", ISMVariables.VehicleOptions.PersonalVehicleESP) then
					ISMVariables.VehicleOptions.PersonalVehicleESP = not ISMVariables.VehicleOptions.PersonalVehicleESP
				elseif ISMMENU.CheckBox("Blip", ISMVariables.VehicleOptions.PersonalVehicleMarker) then
					ISMVariables.VehicleOptions.PersonalVehicleMarker = not ISMVariables.VehicleOptions.PersonalVehicleMarker
				elseif ISMMENU.ComboBox("Open Vehicle Doors", {"Left Front", "Right Front", "Left Back", "Right Back", "Hood", "Trunk"}, ISMVariables.VehicleOptions.CurDoorPV, function(currentIndex, selectedIndex)
					
					ISMVariables.VehicleOptions.CurDoorPV = currentIndex

				end) then
					SetVehicleDoorOpen(GetPlayersLastVehicle(), ISMVariables.VehicleOptions.SelDoorPV - 1, false, false)
				elseif ISMMENU.ComboBox("Close Vehicle Doors", {"Left Front", "Right Front", "Left Back", "Right Back", "Hood", "Trunk"}, ISMVariables.VehicleOptions.CurCloseDoorPV, function(currentIndex, selectedIndex)
					
					ISMVariables.VehicleOptions.CurCloseDoorPV = currentIndex

				end) then
					SetVehicleDoorShut(GetPlayersLastVehicle(), ISMVariables.VehicleOptions.SelCloseDoorPV - 1, false, false)
				end
			end
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('vehicleautopilot') then

			if ISMMENU.Button("Conduite automatique au point GPS") then
				autodriving = true
				local waypoint = GetFirstBlipInfoId(8)
				if DoesBlipExist(waypoint) then
					coords = GetBlipInfoIdCoord(waypoint)
					TaskVehicleDriveToCoordLongrange(PlayerPedId(), GetVehiclePedIsUsing(PlayerPedId()), coords.x, coords.y, coords.z, ISMVariables.VehicleOptions.AutoPilotOptions.CruiseSpeed, ISMVariables.VehicleOptions.AutoPilotOptions.DrivingStyle, 10.0)
					Citizen.CreateThread(function()
						while not killmenu and autodriving do
							Wait(1000)
							plycoords = GetEntityCoords(PlayerPedId())
							distance = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, plycoords.x, plycoords.y, coords.z, false)
							if distance < 10.0 then
								ClearPedTasks(PlayerPedId())
								PushNotification("Tu es arrivé à destination", 600)
								SetDriveTaskCruiseSpeed(PlayerPedId(), 0)
								autodriving = false
							end
						end
					end)
				end
			elseif ISMMENU.ComboBox("Style de conduite", ISMVariables.VehicleOptions.AutoPilotOptions.DrivingStyles, ISMVariables.VehicleOptions.AutoPilotOptions.CurCruiseSpeedIndex, function(currentIndex)
					
				ISMVariables.VehicleOptions.AutoPilotOptions.CurCruiseSpeedIndex = currentIndex

			end) then
				
				if ISMVariables.VehicleOptions.AutoPilotOptions.SelCruiseSpeedIndex == 1 then
					ISMVariables.VehicleOptions.AutoPilotOptions.DrivingStyle = 6
				elseif ISMVariables.VehicleOptions.AutoPilotOptions.SelCruiseSpeedIndex == 2 then
					ISMVariables.VehicleOptions.AutoPilotOptions.DrivingStyle = 5
				elseif ISMVariables.VehicleOptions.AutoPilotOptions.SelCruiseSpeedIndex == 3 then
					ISMVariables.VehicleOptions.AutoPilotOptions.DrivingStyle = 1074528293
				elseif ISMVariables.VehicleOptions.AutoPilotOptions.SelCruiseSpeedIndex == 4 then
					ISMVariables.VehicleOptions.AutoPilotOptions.DrivingStyle = 786603
				elseif ISMVariables.VehicleOptions.AutoPilotOptions.SelCruiseSpeedIndex == 5 then
					ISMVariables.VehicleOptions.AutoPilotOptions.DrivingStyle = 2883621
				elseif ISMVariables.VehicleOptions.AutoPilotOptions.SelCruiseSpeedIndex == 6 then
					ISMVariables.VehicleOptions.AutoPilotOptions.DrivingStyle = 786468 
				end
			elseif ISMMENU.Button("Vitesse",  " " .. ISMVariables.VehicleOptions.AutoPilotOptions.CruiseSpeed .. " ") then
			elseif ISMMENU.Button("Stopper le pilote Auto !") then
				autodriving = false
				ClearPedTasks(PlayerPedId())
			end

			if ISMMENU.menus[ISMMENU.currentMenu].currentOption == 3 then
				if IsDisabledControlJustReleased(0, 175) then
					if ISMVariables.VehicleOptions.AutoPilotOptions.CruiseSpeed < 200.0 then
					    ISMVariables.VehicleOptions.AutoPilotOptions.CruiseSpeed = ISMVariables.VehicleOptions.AutoPilotOptions.CruiseSpeed + 1 
					end
				end
				if IsDisabledControlJustReleased(0, 174) then
					if ISMVariables.VehicleOptions.AutoPilotOptions.CruiseSpeed > 10.0 then
					    ISMVariables.VehicleOptions.AutoPilotOptions.CruiseSpeed = ISMVariables.VehicleOptions.AutoPilotOptions.CruiseSpeed - 1
					end
				end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('vehicleoptions') then
			
			if ISMMENU.MenuButton("Faire apparaitre des véhicules", "spawnvehicleoptions") then
			elseif ISMMENU.MenuButton("Portes véhicules", "doorvehicleoptions") then
			elseif ISMMENU.MenuButton("Figures en véhicule", "vehicletricks") then
			elseif ISMMENU.MenuButton("Amélioration véhicule ", "ISMcustoms") then
			elseif ISMMENU.MenuButton("Véhicule Personnel", "personalvehicle") then
			elseif ISMMENU.MenuButton("Conduite autonome", "vehicleautopilot") then
			elseif ISMMENU.CheckBox("Voler un véhicule en freecam", VehicleSnatcher) then
				VehicleSnatcher = not VehicleSnatcher
				if VehicleSnatcher then
					FreeCameraMode = "Voler un véhicule en freecam"
					StartFreeCam(GetGameplayCamFov())
				else
					FreeCameraMode = false
					EndFreeCam()
				end
				
			elseif ISMMENU.Button("Allumez moteur véhicule", "", false, "Allumez moteur véhicule") then
				local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
				if GetIsVehicleEngineRunning(veh) then
					SetVehicleEngineOn(veh, false, true, true)
				else
					SetVehicleEngineOn(veh, true, true, false)
				end
		    elseif ISMMENU.Button("Réparer le véhicule", "", false, "Réparer le véhicule") then

				local veh = GetVehiclePedIsIn(PlayerPedId(), 0)

				SetVehicleEngineHealth(veh, 1000)
				SetVehicleFixed(veh)

			elseif ISMMENU.CheckBox("Mettre le véhicule invisible", ISMVariables.VehicleOptions.invisible) then
				
				ISMVariables.VehicleOptions.invisible = not ISMVariables.VehicleOptions.invisible

			elseif ISMMENU.Button("Bloquer/Débloquer le véhicule") then
				local veh = GetVehiclePedIsIn(PlayerPedId(), 0)

				if IsEntityStatic(veh) then
					FreezeEntityPosition(veh, false)
				else
					FreezeEntityPosition(veh, true)
				end
			elseif ISMMENU.Button("Prendre la place à droite") then
				
				local veh = GetVehiclePedIsIn(PlayerPedId(), 0)

				SetEntityRotation(veh, 0.0, 0.0, GetEntityHeading(veh))

			elseif ISMMENU.Button("Nettoyer le véhicule") then
				WashDecalsFromVehicle(GetVehiclePedIsUsing(GetPlayerPed(-1)), 1.0)
				SetVehicleDirtLevel(GetVehiclePedIsUsing(GetPlayerPed(-1)))
			elseif ISMMENU.CheckBox("Mettre le véhicule invincible", ISMVariables.VehicleOptions.vehgodmode) then
				
				ISMVariables.VehicleOptions.vehgodmode = not ISMVariables.VehicleOptions.vehgodmode

				if not ISMVariables.VehicleOptions.vehgodmode then
					SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId(-1)), false)
				end
		
			elseif ISMMENU.CheckBox("Nettoyer le véhicule (en boucle)", ISMVariables.VehicleOptions.AutoClean) then
				ISMVariables.VehicleOptions.AutoClean = not ISMVariables.VehicleOptions.AutoClean
			elseif ISMMENU.CheckBox("Boost avec klaxon (touche E)", ISMVariables.VehicleOptions.speedboost, "vas moins vite il y a des papillons") then
				ISMVariables.VehicleOptions.speedboost = not ISMVariables.VehicleOptions.speedboost
			elseif ISMMENU.CheckBox("Freine sur place (touche reculer)", ISMVariables.VehicleOptions.InstantBreaks, "J'ai les freins de GMK") then
				ISMVariables.VehicleOptions.InstantBreaks = not ISMVariables.VehicleOptions.InstantBreaks
			elseif ISMMENU.CheckBox("Roule sous l'eau (active godmode)", ISMVariables.VehicleOptions.Waterproof) then
				ISMVariables.VehicleOptions.Waterproof = not ISMVariables.VehicleOptions.Waterproof
			elseif ISMMENU.CheckBox("Active Multiplicateur de vitesse !", ISMVariables.VehicleOptions.activeenignemulr) then
				ISMVariables.VehicleOptions.activeenignemulr = not ISMVariables.VehicleOptions.activeenignemulr

				if not ISMVariables.VehicleOptions.activeenignemulr then
					local vehicle = GetPlayersLastVehicle()
					SetVehicleEnginePowerMultiplier(vehicle, 1.0)
				end

			elseif ISMMENU.ComboBox("Multiplie la vitesse !", ISMVariables.VehicleOptions.vehenginemultiplier, ISMVariables.VehicleOptions.curractiveenignemulrIndex, function(currentIndex, selectedIndex)
				
				ISMVariables.VehicleOptions.curractiveenignemulrIndex = currentIndex

				end) then
		
			elseif ISMMENU.CheckBox("Active Multiplicateur de couple !", ISMVariables.VehicleOptions.activetorquemulr) then

				ISMVariables.VehicleOptions.activetorquemulr = not ISMVariables.VehicleOptions.activetorquemulr
	
				if not ISMVariables.VehicleOptions.activetorquemulr then
					local vehicle = GetPlayersLastVehicle()
					SetVehicleEngineTorqueMultiplier(vehicle, 1.0)
				end

			elseif ISMMENU.ComboBox("Multiplie le couple !", ISMVariables.VehicleOptions.vehenginemultiplier, ISMVariables.VehicleOptions.curractivetorqueIndex, function(currentIndex, selectedIndex)
				    ISMVariables.VehicleOptions.curractivetorqueIndex = currentIndex
				end) then

			elseif ISMMENU.UI.RGB and ISMMENU.CheckBox("Change la couleur (en boucle)", ISMVariables.VehicleOptions.rainbowcar) then
				
				ISMVariables.VehicleOptions.rainbowcar = not ISMVariables.VehicleOptions.rainbowcar

			elseif ISMMENU.CheckBox("Wheeling (en dev)", ISMVariables.VehicleOptions.AlwaysWheelie) then
				ISMVariables.VehicleOptions.AlwaysWheelie = not ISMVariables.VehicleOptions.AlwaysWheelie
			elseif ISMMENU.CheckBox("Direction assisté", ISMVariables.VehicleOptions.EasyHandling) then
					
				ISMVariables.VehicleOptions.EasyHandling = not ISMVariables.VehicleOptions.EasyHandling
				local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
	
				if not ISMVariables.VehicleOptions.EasyHandling then
					SetVehicleGravityAmount(veh, 9.8)
				end
				
			elseif ISMMENU.CheckBox("Roule sur l'eau", ISMVariables.VehicleOptions.DriveOnWater) then
				ISMVariables.VehicleOptions.DriveOnWater = not ISMVariables.VehicleOptions.DriveOnWater
				if ISMVariables.VehicleOptions.DriveOnWaterProp == nil then
					x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
					ISMVariables.VehicleOptions.DriveOnWaterProp = CreateObject(GetHashKey("ar_prop_ar_bblock_huge_01"), x, y, -90.0, 0, 1, 0)
				elseif not ISMVariables.VehicleOptions.DriveOnWater then
					DeleteEntity(ISMVariables.VehicleOptions.DriveOnWaterProp)
					ISMVariables.VehicleOptions.DriveOnWaterProp = nil
				end
			elseif ISMMENU.CheckBox("Sirene de police (en dev)", policeheadlights) then

	            policeheadlights = not policeheadlights
				TogPoliceHeadlights()

			elseif ISMMENU.CheckBox("Compteur Véhicule", ISMVariables.VehicleOptions.speedometer) then
	
				ISMVariables.VehicleOptions.speedometer = not ISMVariables.VehicleOptions.speedometer

			elseif ISMMENU.CheckBox("Contrôle de lancement forcé (dev)", ISMVariables.VehicleOptions.forcelauncontrol) then
				ISMVariables.VehicleOptions.forcelauncontrol = not ISMVariables.VehicleOptions.forcelauncontrol
				if ISMVariables.VehicleOptions.forcelauncontrol then
					SetLaunchControlEnabled(true)
				else
					SetLaunchControlEnabled(false)
				end
			elseif ISMMENU.CheckBox("Ne tombe jamais en moto", ISMVariables.VehicleOptions.NoBikeFall) then
				ISMVariables.VehicleOptions.NoBikeFall = not ISMVariables.VehicleOptions.NoBikeFall
				SetPedCanBeKnockedOffVehicle(PlayerPedId(), ISMVariables.VehicleOptions.NoBikeFall)
			elseif ISMMENU.CheckBox("Changer la plaque du véhicule !", ISMVariables.VehicleOptions.ISMplate) then
				ISMVariables.VehicleOptions.ISMplate = not ISMVariables.VehicleOptions.ISMplate
				ISMPlate()
			elseif ISMMENU.Button("Supprimer le véhicule") then
				DeleteEntity(GetPlayersLastVehicle(PlayerPedId()))
			end

			ISMMENU.Display()

		elseif ISMMENU.IsMenuOpened('visionoptions') then
			if ISMMENU.CheckBox("Vision Thermique", thermalvision) then
				thermalvision = not thermalvision
				if thermalvision then
					SetSeethrough(true)
				else
					SetSeethrough(false)
				end
			elseif ISMMENU.CheckBox("Vision Nocturne", nightvision) then
				nightvision = not nightvision
				if nightvision then
					SetNightvision(true)
				else
					SetNightvision(false)
				end
			elseif ISMMENU.Button("Vision Normale") then
				ClearTimecycleModifier()
				ClearExtraTimecycleModifier()
			elseif ISMMENU.Button("Vision Alcoolique") then
				SetTimecycleModifier("Drunk")
			elseif ISMMENU.Button("Vision Bleue sur les joueurs", "") then
				SetExtraTimecycleModifier("LostTimeFlash")
			elseif ISMMENU.Button("Vision Rouge sur les joueurs") then
				SetTimecycleModifier("mp_lad_night")
				SetTimecycleModifierStrength(1.2)
			elseif ISMMENU.Button("Vision Jaune sur les joueurs") then
				SetTimecycleModifier("mp_lad_judgment")
				SetTimecycleModifierStrength(1.2)
			elseif ISMMENU.Button("Vision Blanche sur les joueurs") then
				SetTimecycleModifier("mp_lad_day")
				SetTimecycleModifierStrength(1.2)
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('selfoptions') then

			if ISMMENU.MenuButton("Se changer en PED", "selfmodellist") then
			elseif ISMMENU.MenuButton("Changer sa tenue", "selfwardrobe") then
			elseif ISMMENU.MenuButton("Mes Pouvoirs", "superpowers") then
			elseif ISMMENU.MenuButton("Modifier la vision de jeu", "visionoptions") then
			elseif ISMMENU.MenuButton("Options Triggers", 'triggerevents') then
			elseif ISMMENU.MenuButton("Options des Collissions", "collisionoptions", "Désactiver les collisions pour certains objets") then
				
		    elseif ISMMENU.CheckBox("Invisible", ISMVariables.SelfOptions.invisiblitity) then
				ISMVariables.SelfOptions.invisiblitity = not ISMVariables.SelfOptions.invisiblitity
				
				if not ISMVariables.SelfOptions.invisiblitity then
					SetEntityVisible(PlayerPedId(), true, true)
				end 
			elseif ISMMENU.CheckBox("Invincible", ISMVariables.SelfOptions.godmode) then
				if SafeMode then
                    SafeModeNotification()
				else
					ISMVariables.SelfOptions.godmode = not ISMVariables.SelfOptions.godmode
					if not ISMVariables.SelfOptions.godmode then
						SetPedCanRagdoll(PlayerPedId(), true)
						ClearPedLastWeaponDamage(PlayerPedId())
						SetEntityProofs(PlayerPedId(), false, false, false, false, false, false, false, false)
						SetEntityOnlyDamagedByPlayer(PlayerPedId(), false)
						SetEntityCanBeDamaged(PlayerPedId(), true)
						SetEntityProofs(PlayerPedId(), false, false, false, false, false, false, false, false)
					end
				end
			elseif ISMMENU.CheckBox("Invincible à moitié", ISMVariables.SelfOptions.AutoHealthRefil) then
				ISMVariables.SelfOptions.AutoHealthRefil = not ISMVariables.SelfOptions.AutoHealthRefil
			elseif ISMMENU.CheckBox("Endurance Infinie", ISMVariables.SelfOptions.infstamina) then
				ISMVariables.SelfOptions.infstamina = not ISMVariables.SelfOptions.infstamina
			elseif ISMMENU.CheckBox("Ne jamais tomber", ISMVariables.SelfOptions.noragdoll) then

				ISMVariables.SelfOptions.noragdoll = not ISMVariables.SelfOptions.noragdoll 
			elseif ISMMENU.CheckBox("Les coordonnées de ton perso", ISMVariables.SelfOptions.playercoords) then
				ISMVariables.SelfOptions.playercoords = not ISMVariables.SelfOptions.playercoords
			elseif ISMMENU.CheckBox("Activer la Minimap", ISMVariables.SelfOptions.forceradar, "Redemarre ton GPS") then
				ISMVariables.SelfOptions.forceradar = not ISMVariables.SelfOptions.forceradar
			elseif ISMMENU.Button("No Clip") then
				NoClip()
			
	        elseif ISMMENU.ValueChanger("Vitesse du No Clip", NoclipSpeed, 0.1, {0.1, 15}, function(value)
				NoclipSpeed = value
			end, true) then
				
			elseif ISMMENU.Button("Se Relever", "", "Se relever fonctionne sur la plupart des serveurs non ESX") then
				local ped = PlayerPedId()
				local playerPos = GetEntityCoords(ped, true)
				local heading = GetEntityHeading(ped)

				TriggerEvent("PGX:RevivePlayer")
			
				NetworkResurrectLocalPlayer(playerPos, true, true, false)
				SetPlayerInvincible(ped, false)
				ClearPedBloodDamage(ped)
				SetEntityHeading(ped, heading)
				FreezeEntityPosition(ped, false)

			elseif ISMMENU.DynamicTriggers.Triggers['ESXRevive'] ~= nil and ISMMENU.Button("ESX Revive", "", false, "Se revivre fonctionne sur la plupart des serveurs non ESX") then
				
				TriggerEvent(ISMMENU.DynamicTriggers.Triggers['ESXRevive'])

			elseif ISMMENU.Button("Se tuer") then

				SetEntityHealth(PlayerPedId(), 0)

			elseif ISMMENU.Button("Se donner da la vie") then

				SetEntityHealth(PlayerPedId(), 200)

			elseif ISMMENU.Button("Se donner de l'armure") then

				SetPedArmour(PlayerPedId(), 100)

			elseif ISMMENU.Button("Etre mouiller") then

				SetPedWetnessHeight(PlayerPedId(), 100.0)

			elseif ISMMENU.Button("Etre sec") then

				SetPedWetnessHeight(PlayerPedId(), -100.0)

			elseif ISMMENU.Button("Allumez feux d'artifice") then

				StartFireworks()
				
			elseif ISMMENU.Button("Se freeze / Se défreeze") then

				if IsEntityStatic(PlayerPedId()) then
                    FreezeEntityPosition(PlayerPedId(), false)
				else
                    FreezeEntityPosition(PlayerPedId(), true)
				end

			elseif ISMMENU.CheckBox("Anti Absent", wonderaround) then
				wonderaround = not wonderaround

				if wonderaround then
					TaskWanderStandard(PlayerPedId(), 10.0, 10)	
				else
					ClearPedTasksImmediately(PlayerPedId())
				end
			elseif ISMMENU.Button("Stopper toutes les animations") then
                ClearPedTasksImmediately(PlayerPedId())
			
			end
			ISMMENU.Display()
			
		elseif ISMMENU.IsMenuOpened('teleportoptions') then
			if ISMMENU.CheckBox("Mode de téléportation Trevor", ISMVariables.TeleportOptions.smoothteleport, "Trevor is good") then
				ISMVariables.TeleportOptions.smoothteleport = not ISMVariables.TeleportOptions.smoothteleport
			elseif ISMMENU.Button("Se teleport au point GPS") then
				
				local waypoint = GetFirstBlipInfoId(8)

				if DoesBlipExist(waypoint) then
					TeleportToCoords(GetBlipInfoIdCoord(waypoint))
				else
					PushNotification("~r~Aucun point GPS", 600)
				end

			elseif ISMMENU.Button('Se téléporter aux cordonnées') then

				local x = ISMMENU.KeyboardEntry("X coordonnées :", 10)
				local y = ISMMENU.KeyboardEntry("Y coordonnée :", 10)
				local z = ISMMENU.KeyboardEntry("Z coordonnées :", 10)

				x = tonumber(x)
				y = tonumber(y)
				z = tonumber(z)

				SetEntityCoords(PlayerPedId(), x, y, z)

			elseif ISMMENU.Button('Se téléporter vers l\'avant') then

				local ped = PlayerPedId()
				local vehicle = GetPlayersLastVehicle()

				if IsPedInAnyVehicle(ped, true) then
					local coords = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 2.5, 0)
					local x = coords.x
					local y = coords.y
					local z = coords.z
				    SetEntityCoords(vehicle, x, y, z)
				else
					local coords = GetOffsetFromEntityInWorldCoords(ped, 0.0, 2.5, -1.0)
					local x = coords.x
					local y = coords.y
					local z = coords.z
				    SetEntityCoords(PlayerPedId(), x, y, z)
				end
			end

			if ISMMENU.Button("~c~--------------------- TP rapide --------------------") then

			end

			for i = 1, #ISMVariables.TeleportOptions.teleportlocations do
				local currLocation = ISMVariables.TeleportOptions.teleportlocations[i]
	
				if ISMMENU.Button(currLocation[1]) then
					local x = currLocation[2]
					local y = currLocation[3]
					local z = currLocation[4]

					TeleportToCoords(x, y, z)
				end
			end
			

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('selectedweaponoptions') then

			local currentWeapon = selectedWeapon

			currentWeapon = currentWeapon:gsub("WEAPON_", "")

			firstletter = currentWeapon:sub(1, 1)

			firstletter = string.upper(firstletter)

			currentWeapon = currentWeapon:sub(2)

			local weapo = firstletter .. string.upper(currentWeapon)

			ISMMENU.SetMenuProperty('selectedweaponoptions', 'subTitle', weapo)
			
			equporrem = ""

			if not HasPedGotWeapon(PlayerPedId(), GetHashKey(selectedWeapon), false) then
				equporrem = "Equipé Arme"
			else
				equporrem = "Retiré Arme"
			end

			if ISMMENU.Button(equporrem) then
				if HasPedGotWeapon(PlayerPedId(), GetHashKey(selectedWeapon), false) then
				    RemoveWeaponFromPed(PlayerPedId(), GetHashKey(selectedWeapon))
			    else
				    GiveWeaponToPed(PlayerPedId(), GetHashKey(selectedWeapon), 9999, false, false)
				end
			elseif ISMMENU.Button("Charger l'arme") then
				SetAmmoInClip(PlayerPedId(), GetHashKey(selectedWeapon), 9999)
				SetPedAmmo(PlayerPedId(), GetHashKey(selectedWeapon), 9999)
			end
			
			for i = 1, #globalAttachmentTable do

				if DoesWeaponTakeWeaponComponent(GetHashKey(selectedWeapon), GetHashKey(globalAttachmentTable[i][1])) then
					if ISMMENU.Button(globalAttachmentTable[i][2]) then
						if HasPedGotWeaponComponent(PlayerPedId(), GetHashKey(selectedWeapon), globalAttachmentTable[i][1]) then
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetHashKey(selectedWeapon), globalAttachmentTable[i][1])
						else
						    GiveWeaponComponentToPed(PlayerPedId(), GetHashKey(selectedWeapon), globalAttachmentTable[i][1])
						end
				    end
			    end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('weaponslist') then

			for i = 1, #allWeapons do
				local currentWeapon = allWeapons[i]
	
				currentWeapon = currentWeapon:gsub("WEAPON_", "")

				firstletter = currentWeapon:sub(1, 1)

				firstletter = string.upper(firstletter)

				currentWeapon = currentWeapon:sub(2)

				currentWeapon = string.lower(currentWeapon)

				if string.find(currentWeapon, "_") then
					currentWeapon = currentWeapon:gsub("_", " ")
				end

				if string.find(currentWeapon, "50") then
					currentWeapon = currentWeapon:gsub("50", " 50")
				end

				if string.find(currentWeapon, "mk") then
					currentWeapon = currentWeapon:gsub("mk", " MK")
				end

				if firstletter .. string.lower(currentWeapon) ~= "Unarmed" then
					if not string.find(currentWeapon, "adget") then
						if ISMMENU.MenuButton(firstletter .. currentWeapon, "selectedweaponoptions") then
							selectedWeapon = allWeapons[i] 
						end
					end
				end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('bulletoptions') then
			
			if ISMMENU.CheckBox("Change la balle de ton arme", ISMVariables.WeaponOptions.BulletOptions.Enabled) then
				ISMVariables.WeaponOptions.BulletOptions.Enabled = not ISMVariables.WeaponOptions.BulletOptions.Enabled
			elseif ISMMENU.ComboBox("Quel type de balle :", ISMVariables.WeaponOptions.BulletOptions.Bullets, ISMVariables.WeaponOptions.BulletOptions.CurrentBullet, function(currentIndex)
				ISMVariables.WeaponOptions.BulletOptions.CurrentBullet = currentIndex
				if ISMVariables.WeaponOptions.BulletOptions.CurrentBullet == 1 then
					ISMVariables.WeaponOptions.BulletOptions.WeaponBulletName = "WEAPON_REVOLVER"
				elseif ISMVariables.WeaponOptions.BulletOptions.CurrentBullet == 2 then
					ISMVariables.WeaponOptions.BulletOptions.WeaponBulletName = "WEAPON_HEAVYSNIPER"
				elseif ISMVariables.WeaponOptions.BulletOptions.CurrentBullet == 3 then
					ISMVariables.WeaponOptions.BulletOptions.WeaponBulletName = "WEAPON_RPG"
				elseif ISMVariables.WeaponOptions.BulletOptions.CurrentBullet == 4 then
					ISMVariables.WeaponOptions.BulletOptions.WeaponBulletName = "WEAPON_FIREWORK"
				elseif ISMVariables.WeaponOptions.BulletOptions.CurrentBullet == 5 then
					ISMVariables.WeaponOptions.BulletOptions.WeaponBulletName = "WEAPON_RAYPISTOL"
				end
			end) then
			end
			
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('weaponaimbotsettings') then
			if ISMMENU.CheckBox("Aimbot", ISMVariables.WeaponOptions.AimBot.Enabled) then
				ISMVariables.WeaponOptions.AimBot.Enabled = not ISMVariables.WeaponOptions.AimBot.Enabled
				if not ISMVariables.WeaponOptions.AimBot.Enabled then
					SetPedShootsAtCoord(PlayerPedId(), 0.0, 0.0, 0.0, false)
				end
			elseif ISMMENU.CheckBox("Tir à travers les murs", ISMVariables.WeaponOptions.AimBot.ThroughWalls) then
				ISMVariables.WeaponOptions.AimBot.ThroughWalls = not ISMVariables.WeaponOptions.AimBot.ThroughWalls
			elseif ISMMENU.CheckBox("Déssine le FOV", ISMVariables.WeaponOptions.AimBot.DrawFOV) then
				ISMVariables.WeaponOptions.AimBot.DrawFOV = not ISMVariables.WeaponOptions.AimBot.DrawFOV
			elseif ISMMENU.CheckBox("Affiche la cible", ISMVariables.WeaponOptions.AimBot.ShowTarget) then
				ISMVariables.WeaponOptions.AimBot.ShowTarget = not ISMVariables.WeaponOptions.AimBot.ShowTarget
			elseif ISMMENU.ValueChanger("FOV", ISMVariables.WeaponOptions.AimBot.FOV, 0.01, {0.02, 1}, function(val)
				ISMVariables.WeaponOptions.AimBot.FOV = val
			end, true) then
			elseif ISMMENU.ValueChanger("Distance", ISMVariables.WeaponOptions.AimBot.Distance, 1, {1, 1000}, function(val)
				ISMVariables.WeaponOptions.AimBot.Distance = val
			end, true) then
			elseif ISMMENU.ValueChanger("Coup de chance", ISMVariables.WeaponOptions.AimBot.HitChance, 1, {0, 100}, function(val)
				ISMVariables.WeaponOptions.AimBot.HitChance = val
			end, true) then
			elseif ISMMENU.ComboBox("Boxe", ISMVariables.WeaponOptions.AimBot.ComboBox.IndexItems, ISMVariables.WeaponOptions.AimBot.ComboBox.CurIndex, function(currentIndex, selectedIndex)
				ISMVariables.WeaponOptions.AimBot.ComboBox.CurIndex = currentIndex
				ISMVariables.WeaponOptions.AimBot.ComboBox.SelIndex = selectedIndex
				end) then

				if ISMVariables.WeaponOptions.AimBot.ComboBox.CurIndex == 1 then
					ISMVariables.WeaponOptions.AimBot.Bone = "SKEL_HEAD"
				elseif ISMVariables.WeaponOptions.AimBot.ComboBox.CurIndex == 2 then
					ISMVariables.WeaponOptions.AimBot.Bone = "SKEL_ROOT"
				elseif ISMVariables.WeaponOptions.AimBot.ComboBox.CurIndex == 3 then
					ISMVariables.WeaponOptions.AimBot.Bone = "SKEL_PELVIS"
				end

			elseif ISMMENU.CheckBox("Les joueurs avec la cible", ISMVariables.WeaponOptions.AimBot.OnlyPlayers) then
				ISMVariables.WeaponOptions.AimBot.OnlyPlayers = not ISMVariables.WeaponOptions.AimBot.OnlyPlayers
			elseif ISMMENU.CheckBox("Ne tue pas tes amis", ISMVariables.WeaponOptions.AimBot.IgnoreFriends) then
				ISMVariables.WeaponOptions.AimBot.IgnoreFriends = not ISMVariables.WeaponOptions.AimBot.IgnoreFriends
			elseif ISMMENU.CheckBox("Vérifie la visibilité", ISMVariables.WeaponOptions.AimBot.InvisibilityCheck, ":p") then
				ISMVariables.WeaponOptions.AimBot.InvisibilityCheck = not ISMVariables.WeaponOptions.AimBot.InvisibilityCheck
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('weaponoptions') then

			if ISMMENU.MenuButton("Liste des Armes", 'weaponslist') then
			elseif ISMMENU.MenuButton("Aimbot", 'weaponaimbotsettings') then
			elseif ISMMENU.MenuButton("Choisis le type de Balle", 'bulletoptions') then
			elseif ISMMENU.Button("Donne toi toutes les Armes") then
				for i = 1, #allWeapons do
				    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(allWeapons[i]), 9999, false, false)
				end
			elseif ISMMENU.Button("Retire toi toutes les Armes") then
				RemoveAllPedWeapons(PlayerPedId(), false)
			elseif ISMMENU.Button("Remets toi les munitions") then
				for i = 1, #allWeapons do
					SetAmmoInClip(PlayerPedId(), GetHashKey(allWeapons[i]), 9999)
					SetPedAmmo(PlayerPedId(), GetHashKey(allWeapons[i]), 9999)
				end
            elseif ISMMENU.CheckBox("Munitions Infinie", ISMVariables.WeaponOptions.InfAmmo) then
				ISMVariables.WeaponOptions.InfAmmo = not ISMVariables.WeaponOptions.InfAmmo
            elseif ISMMENU.CheckBox("Aucun Recul", ISMVariables.WeaponOptions.NoReload) then
				ISMVariables.WeaponOptions.NoReload = not ISMVariables.WeaponOptions.NoReload
			elseif ISMMENU.CheckBox("Tir Automatique", ISMVariables.WeaponOptions.RageBot) then
                ISMVariables.WeaponOptions.RageBot = not ISMVariables.WeaponOptions.RageBot
			elseif ISMMENU.CheckBox("Tourne sur toi même", ISMVariables.WeaponOptions.Spinbot) then
				ISMVariables.WeaponOptions.Spinbot = not ISMVariables.WeaponOptions.Spinbot
            elseif ISMMENU.CheckBox("Tir rapide", ISMVariables.WeaponOptions.RapidFire) then
				ISMVariables.WeaponOptions.RapidFire = not ISMVariables.WeaponOptions.RapidFire
			elseif ISMMENU.CheckBox("Déclanchement de Robot", ISMVariables.WeaponOptions.TriggerBot) then
				ISMVariables.WeaponOptions.TriggerBot = not ISMVariables.WeaponOptions.TriggerBot
            elseif ISMMENU.CheckBox("Le viseur", ISMVariables.WeaponOptions.Crosshair) then
				ISMVariables.WeaponOptions.Crosshair = not ISMVariables.WeaponOptions.Crosshair
            elseif ISMMENU.CheckBox("Traceur de balles", ISMVariables.WeaponOptions.Tracers) then
				ISMVariables.WeaponOptions.Tracers = not ISMVariables.WeaponOptions.Tracers
				if not ISMVariables.WeaponOptions.Tracers then
					BulletCoords = {}
				end
            elseif ISMMENU.CheckBox("Aucun recul", ISMVariables.WeaponOptions.NoRecoil) then
				ISMVariables.WeaponOptions.NoRecoil = not ISMVariables.WeaponOptions.NoRecoil
			elseif ISMMENU.CheckBox("Magneto", ISMVariables.WeaponOptions.MagnetoMode) then
				ISMVariables.WeaponOptions.MagnetoMode = not ISMVariables.WeaponOptions.MagnetoMode
				ForceMod(ISMVariables.WeaponOptions.MagnetoMode)
			elseif ISMMENU.CheckBox("Balles Explosives", ISMVariables.WeaponOptions.ExplosiveAmmo) then
				if AntiCheats.WaveSheild or AntiCheats.BadgerAC or AntiCheats.TigoAC then
					PushNotification("Attention Anti Cheat Activé", 600)
				elseif SafeMode then  
					SafeModeNotification()
				else
				    ISMVariables.WeaponOptions.ExplosiveAmmo = not ISMVariables.WeaponOptions.ExplosiveAmmo
				end
			elseif ISMMENU.CheckBox("Supprimer les véhicules avec l'arme", ISMVariables.WeaponOptions.DelGun) then
				ISMVariables.WeaponOptions.DelGun = not ISMVariables.WeaponOptions.DelGun
			elseif ISMMENU.CheckBox("Une balle un mort", ISMVariables.WeaponOptions.OneShot) then
				if SafeMode then
                    SafeModeNotification()
				else
					ISMVariables.WeaponOptions.OneShot = not ISMVariables.WeaponOptions.OneShot
				end
			end

			ISMMENU.Display()

		elseif ISMMENU.IsMenuOpened('espoptions') then

			if ISMMENU.CheckBox("Tout en RGB", ISMVariables.MiscOptions.ESPMenuColours) then
				ISMVariables.MiscOptions.ESPMenuColours = not ISMVariables.MiscOptions.ESPMenuColours
			elseif ISMMENU.ValueChanger("Modifier la Distance", ISMVariables.MiscOptions.ESPDistance, 1, {100, 5000}, function(val)
				ISMVariables.MiscOptions.ESPDistance = val
			end, true) then
			elseif ISMMENU.CheckBox("Activer les lignes", ISMVariables.MiscOptions.ESPLines) then
				ISMVariables.MiscOptions.ESPLines = not ISMVariables.MiscOptions.ESPLines 
			elseif ISMMENU.CheckBox("ESP Player Bones", ISMVariables.MiscOptions.ESPBones) then
				ISMVariables.MiscOptions.ESPBones = not ISMVariables.MiscOptions.ESPBones 
				if not ISMVariables.MiscOptions.ESPBones then
					local playerlist = GetActivePlayers()
					for i = 1, #playerlist do
						local curplayer = playerlist[i]
						local curplayerped = GetPlayerPed(curplayer)
		
						ResetEntityAlpha(curplayerped)
					end
				end

			elseif ISMMENU.CheckBox("Activer la Box autour des joueurs", ISMVariables.MiscOptions.ESPBox) then
				ISMVariables.MiscOptions.ESPBox = not ISMVariables.MiscOptions.ESPBox 
			elseif ISMMENU.CheckBox("Activer les Blips", ISMVariables.MiscOptions.ESPBlips) then
				ISMVariables.MiscOptions.ESPBlips = not ISMVariables.MiscOptions.ESPBlips 
				PlayerBlips()
			elseif ISMMENU.CheckBox("Activer Noms joueurs", ISMVariables.MiscOptions.ESPName) then
				ISMVariables.MiscOptions.ESPName = not ISMVariables.MiscOptions.ESPName 
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('serveroptions') then

			if ISMMENU.Button("Ip du serveur : " ..GetCurrentServerEndpoint()) then
			elseif ISMMENU.CheckBox("Méthode GLife", ISMVariables.MiscOptions.GlifeHack) then
				ISMVariables.MiscOptions.GlifeHack = not ISMVariables.MiscOptions.GlifeHack
			elseif ISMMENU.CheckBox("Faire voler tous les véhicules", ISMVariables.MiscOptions.FlyingCars) then
				ISMVariables.MiscOptions.FlyingCars = not ISMVariables.MiscOptions.FlyingCars
			elseif ISMMENU.Button("Téléporter tout le monde dans les airs") then
				for ped in EnumeratePeds() do
					if IsPedAPlayer(ped) ~= true and ped ~= PlayerPedId() then
						RequestControlOnce(ped)
						SetPedToRagdoll(ped, 4000, 5000, 0, true, true, true)
						local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
						SetEntityCoords(ped, x, y, z + 100.0)
					end
				end
			elseif ISMMENU.Button("Tuez tout les peds") then
				for ped in EnumeratePeds() do
					if IsPedAPlayer(ped) ~= true and ped ~= PlayerPedId() then
						RequestControlOnce(ped)
						SetEntityHealth(ped, 0)
					end
				end
			elseif ISMMENU.Button("Mettre une rampe sur tout les véhicules") then
				RampAllCars()
			elseif ISMMENU.Button("Mettre batiment fbi sur tout les véhicules") then
				for vehicle in EnumerateVehicles() do
					local building = CreateObject(-1404869155, 0, 0, 0, true, true, true)
					NetworkRequestControlOfEntity(vehicle)
					if DoesEntityExist(vehicle) then
						AttachEntityToEntity(building, vehicle, 0, 0, 0.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
					end
					NetworkRequestControlOfEntity(building)
					SetEntityAsMissionEntity(building, true, true)
				end
			elseif ISMMENU.CheckBox("Ouvrir toutes les voitures", ISMVariables.MiscOptions.UnlockAllVehicles, ":(") then
				ISMVariables.MiscOptions.UnlockAllVehicles = not ISMVariables.MiscOptions.UnlockAllVehicles
			elseif ISMMENU.Button("Chat spammer") then

				if AntiCheats.WaveSheild or AntiCheats.ChocoHax or AntiCheats.BadgerAC then
					PushNotification("Il y a une anticheat | Fonction Bloqué", 600)
				else
					SpamServerChat()
				end
				
			elseif ISMMENU.CheckBox("Chat Spammer ~r~Boucle", ISMVariables.MiscOptions.SpamServerChat, ":p") then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("Il y a une anticheat | Fonction Bloqué", 600)
				else
					ISMVariables.MiscOptions.SpamServerChat = not ISMVariables.MiscOptions.SpamServerChat
					SpamServerChatLoop()
					if not ISMVariables.MiscOptions.SpamServerChat then
						PushNotification("Chat spammer serveur ! " ..tostring(mocks).. " temps", 500)
						mocks = 0
					end
				end

			elseif ISMMENU.Button("Supprimer le chat pour vous") then
				TriggerEvent("chat:clear")
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('scriptoptions') then
		    if ISMMENU.CheckBox('Script Accroupi ~r~DEV', ISMVariables.ScriptOptions.script_crouch) then
				ISMVariables.ScriptOptions.script_crouch = not ISMVariables.ScriptOptions.script_crouch
				if ISMVariables.ScriptOptions.script_crouch then
					PushNotification("Accroupi toi : ~g~Activé", 600)
					CrouchScript()
				else
					PushNotification("Accroupi toi : ~r~Désactivé", 600)
					ResetPedMovementClipset(PlayerPedId(), 1.0)
				end
			elseif ISMMENU.CheckBox('Menu non visible avec Screenshoot ~r~DEV', ISMVariables.ScriptOptions.SSBBypass) then
				ISMVariables.ScriptOptions.SSBBypass = not ISMVariables.ScriptOptions.SSBBypass
				ScreenshotBasicBypass()
			elseif ISMMENU.CheckBox("Stoppé le GGAC", ISMVariables.ScriptOptions.GGACBypass) then
				ISMVariables.ScriptOptions.GGACBypass = not ISMVariables.ScriptOptions.GGACBypass
				if ISMVariables.ScriptOptions.GGACBypass then
					GGACBypass()
                    PushNotification("GGAC Stop ~g~Activé", 1000)
                    PushNotification("La ressource a éte stoppé !)", 1000)
				end
			elseif ISMMENU.CheckBox("Ouvrir coffre fort Script", ISMVariables.ScriptOptions.vault_doors) then
				ISMVariables.ScriptOptions.vault_doors = not ISMVariables.ScriptOptions.vault_doors
				if ISMVariables.ScriptOptions.vault_doors then
					PushNotification("Ouvrir coffre fort Script : ~g~Activé", 600)
					VaultDoors()
				else
					PushNotification("Ouvrir coffre fort Script : ~r~Désactivé", 600)
				end
			elseif ISMMENU.CheckBox("Prise d'otage impossible", ISMVariables.ScriptOptions.blocktakehostage) then
				ISMVariables.ScriptOptions.blocktakehostage = not ISMVariables.ScriptOptions.blocktakehostage
			elseif ISMMENU.CheckBox("Impossible Ecran Noir", ISMVariables.ScriptOptions.BlockBlackScreen) then
				ISMVariables.ScriptOptions.BlockBlackScreen = not ISMVariables.ScriptOptions.BlockBlackScreen
			elseif ISMMENU.CheckBox("Impossible de porter", ISMVariables.ScriptOptions.blockbeingcarried) then
				ISMVariables.ScriptOptions.blockbeingcarried = not ISMVariables.ScriptOptions.blockbeingcarried
			elseif ISMMENU.CheckBox("Impossible d'avoir la paix", ISMVariables.ScriptOptions.BlockPeacetime) then
				ISMVariables.ScriptOptions.BlockPeacetime = not ISMVariables.ScriptOptions.BlockPeacetime
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('weatheroptions') then
			
			if ISMMENU.Button("Temps très ensoleillé", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("EXTRASUNNY")
				SetOverrideWeather("EXTRASUNNY")
				SetWeatherTypeNowPersist("EXTRASUNNY")
				SetRainLevel(0.0)
			elseif ISMMENU.Button("Temps clair", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("CLEAR")
				SetOverrideWeather("CLEAR")
				SetWeatherTypeNowPersist("CLEAR")
				SetRainLevel(0.0)
			elseif ISMMENU.Button("Temps nuageux", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("CLOUDS")
				SetOverrideWeather("CLOUDS")
				SetWeatherTypeNowPersist("CLOUDS")
				SetRainLevel(0.0)
			elseif ISMMENU.Button("Météo Couverte", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("OVERCAST")
				SetOverrideWeather("OVERCAST")
				SetWeatherTypeNowPersist("OVERCAST")
				SetRainLevel(0.0)
			elseif ISMMENU.Button("Climat pluvieux", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("RAIN")
				SetOverrideWeather("RAIN")
				SetWeatherTypeNowPersist("RAIN")
				SetRainLevel(10.0)
			elseif ISMMENU.Button("Météo dégagée", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("CLEARING")
				SetOverrideWeather("CLEARING")
				SetWeatherTypeNowPersist("CLEARING")
				SetRainLevel(0.0)
			elseif ISMMENU.Button("Météo avec orages", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("THUNDER")
				SetOverrideWeather("THUNDER")
				SetWeatherTypeNowPersist("THUNDER")
				SetRainLevel(0.0)
			elseif ISMMENU.Button("Météo avec brouillard", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("SMOG")
				SetOverrideWeather("SMOG")
				SetWeatherTypeNowPersist("SMOG")
				SetRainLevel(0.0)
			elseif ISMMENU.Button("Temps brumeux", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("FOGGY")
				SetOverrideWeather("FOGGY")
				SetWeatherTypeNowPersist("FOGGY")
				SetRainLevel(0.0)
			elseif ISMMENU.Button("Temps de Noël", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("XMAS")
				SetOverrideWeather("XMAS")
				SetWeatherTypeNowPersist("XMAS")
				SetRainLevel(0.0)
			elseif ISMMENU.Button("Temps léger de neige", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("SNOWLIGHT")
				SetOverrideWeather("SNOWLIGHT")
				SetWeatherTypeNowPersist("SNOWLIGHT")
				SetRainLevel(0.0)
			elseif ISMMENU.Button("Tempête De Neige", "") then 
				ClearOverrideWeather()
				ClearWeatherTypePersist()
				SetWeatherTypeNow("BLIZZARD")
				SetOverrideWeather("BLIZZARD")
				SetWeatherTypeNowPersist("BLIZZARD")
				SetRainLevel(0.0)
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('timeoptions') then
			if ISMMENU.Button("Heure : 9h du matin", "") then 

				SetClockTime(9, 0, 0)
				NetworkOverrideClockTime(9, 0, 0)

			elseif ISMMENU.Button("Heure : midi 12h00", "") then 
	
				SetClockTime(12, 0, 0)
				NetworkOverrideClockTime(12, 0, 0)

			elseif ISMMENU.Button("Heure : 15h00", "") then 
		
				SetClockTime(15, 0, 0)
				NetworkOverrideClockTime(15, 0, 0)
	
			elseif ISMMENU.Button("Heure : 18h00", "") then 
		
				SetClockTime(18, 0, 0)
				NetworkOverrideClockTime(18, 0, 0)
				
			elseif ISMMENU.Button("Heure : 21h00", "") then 
		
				SetClockTime(21, 0, 0)
				NetworkOverrideClockTime(21, 0, 0)

			elseif ISMMENU.Button("Heure : Minuit 00h00", "") then 
		
				SetClockTime(0, 0, 0)
				NetworkOverrideClockTime(0, 0, 0)

			end
			ISMMENU.Display()

		elseif ISMMENU.IsMenuOpened('serverKorioz') then

			if ISMMENU.Button("Give Argent Job Civil Payement ! ~r~Detect", "") then 
				local cycle = 100 -- Nombre de répétition
					
					Citizen.CreateThread(function()
						for i = 1, cycle do
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
        					TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
        					TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
       						TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
       						TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:payement", 999)
							Citizen.Wait(7500) -- Temps en MS
						end
					end)

				elseif ISMMENU.Button("Give Argent Job Civil Pay ! ~r~Detect", "") then
					local cycle = 1 -- Nombre de répétition
					Citizen.CreateThread(function()
						for i = 1, cycle do
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							TriggerServerEvent("::{korioz#0110}::jobs_civil:pay", 999)
							Citizen.Wait(7500) -- Temps en MS
						end
					end)
				elseif ISMMENU.Button("Plaquer toute la ville !", "") then
					Citizen.CreateThread(function()
						while true do
							Citizen.Wait(200)
							TriggerServerEvent('::{korioz#0110}::esx_kekke_tackle:tryTackle', -1)
						end
					end)
			end
		ISMMENU.Display()

		elseif ISMMENU.IsMenuOpened('serverNoob') then

			if ISMMENU.Button("Give Points Boutiques", "") then 
				TriggerServerEvent('shutdown:deltniop',-26650)

			elseif ISMMENU.Button("Annonce Go Life", "") then
				local cycle = 100 -- Nombre de répétition
				Citizen.CreateThread(function()
					for i = 1, cycle do
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annoncepolice","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annoncebcsd","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annonceambulance","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annoncemecano","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annonceconcess","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annoncetaxi","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annoncevigneron","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annonceagentimmobilier","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::AnnonceGouvernement","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annonceavocat","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annoncebahama","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annoncejournaliste","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annonceunicorn","Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")  
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annonceperso", "Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						TriggerServerEvent("::{J#ul#ia#n#go#li#fe#_#00#01}::Annonceano", "Changement de discord voici le nouveau : https://discord.gg/WdNgR9A7EE")
						Citizen.Wait(7500) -- Temps en MS
					end
				end)
			elseif ISMMENU.Button("Give Argent FlashCity", "") then
				local cycle = 50 -- Nombre de répétition
				Citizen.CreateThread(function()
					for i = 1, cycle do
						TriggerServerEvent('::{korioz#0110}::esx_drugs:startHarvestOpium')
						TriggerServerEvent('::{korioz#0110}::esx_drugs:startTransformOpium')
						TriggerServerEvent('::{korioz#0110}::esx_drugs:startSellOpium')
						TriggerServerEvent('::{korioz#0110}::jojo:blanchiement', 1000000)
						TriggerServerEvent('::{korioz#0110}::jojo:blanchiement', 1000000)
						TriggerServerEvent('::{korioz#0110}::jojo:blanchiement', 1000000)
						TriggerServerEvent('::{korioz#0110}::jojo:blanchiement', 1000000)
						TriggerServerEvent('::{korioz#0110}::jojo:blanchiement', 1000000)
						TriggerServerEvent('::{korioz#0110}::jojo:blanchiement', 1000000)
						Citizen.Wait(2500) -- Temps en MS
					end
				end)
			elseif ISMMENU.Button("Annonce Job Police", "") then
				Citizen.CreateThread(function()
					while true do
						 Citizen.Wait(1000)
					  for id = 0, 256 do
					   if NetworkIsPlayerActive(id) then
						   local serverID = GetPlayerServerId(id)
						   TriggerServerEvent('esx_policejob:message', serverID, "∑ ~r~ISM MENU BY INVICTUS : ~h~https://discord.gg/m3gTer69hH ~w~ ∑")
					   end
					  end
					end
				  end)

				elseif ISMMENU.Button("Give Argent Sun Life", "") then

					local cycle = 50 -- Nombre de répétition
					Citizen.CreateThread(function()
						for i = 1, cycle do
							TriggerServerEvent('esx_reprogjob:onNPCJobMissionCompleted')
							TriggerServerEvent('esx_reprogjob:onNPCJobMissionCompleted')
							TriggerServerEvent('esx_reprogjob:onNPCJobMissionCompleted')
							TriggerServerEvent('esx_reprogjob:onNPCJobMissionCompleted')
							TriggerServerEvent('esx_reprogjob:onNPCJobMissionCompleted')
							TriggerServerEvent('esx_reprogjob:onNPCJobMissionCompleted')
							TriggerServerEvent('esx_reprogjob:onNPCJobMissionCompleted')
							Citizen.Wait(2500) -- Temps en MS
						end
					end)

				elseif ISMMENU.Button("Give Argent TripCity", "") then

					local cycle = 50 -- Nombre de répétition
					Citizen.CreateThread(function()
						for i = 1, cycle do
							TriggerServerEvent("trip_adminmenu:addMoney", tonumber(99999999999))
							TriggerServerEvent("trip_adminmenu:addMoney", tonumber(99999999999))
							TriggerServerEvent("trip_adminmenu:addMoney", tonumber(99999999999))
							TriggerServerEvent("trip_adminmenu:addMoney", tonumber(99999999999))
							TriggerServerEvent("trip_adminmenu:addMoney", tonumber(99999999999))
							TriggerServerEvent("trip_adminmenu:addMoney", tonumber(99999999999))
							TriggerServerEvent("trip_adminmenu:addMoney", tonumber(99999999999))
							TriggerServerEvent("trip_adminmenu:addMoney", tonumber(99999999999))
							TriggerServerEvent("trip_adminmenu:addMoney", tonumber(99999999999))
							Citizen.Wait(2500) -- Temps en MS
						end
					end)

				elseif ISMMENU.Button("Give Argent DreamLife", "") then

					local cycle = 50 -- Nombre de répétition
					Citizen.CreateThread(function()
						for i = 1, cycle do
							TriggerServerEvent('::{korioz#0110}::esx_drugs:startHarvestOpium')
 							TriggerServerEvent('::{korioz#0110}::esx_drugs:startTransformOpium')
							TriggerServerEvent('::{korioz#0110}::esx_drugs:startSellOpium')
							TriggerServerEvent('::{korioz#0110}::esx_moneywash:startWash')
							TriggerServerEvent('::{korioz#0110}::esx_moneywash:startWash')
							TriggerServerEvent('::{korioz#0110}::esx_moneywash:startWash')
							TriggerServerEvent('::{korioz#0110}::esx_moneywash:startWash')
							TriggerServerEvent('::{korioz#0110}::esx_moneywash:startWash')
							Citizen.Wait(2500) -- Temps en MS
						end
					end)

				elseif ISMMENU.Button("Give Argent Sensity", "") then
					local cycle = 100 -- Nombre de répétition
					Citizen.CreateThread(function()
						for i = 1, cycle do
							TriggerServerEvent("Impulsionjobs_civil:pay", 299) 
							Citizen.Wait(7500) -- Temps en MS
						end
					end)
				elseif ISMMENU.Button("Revive en continue la ville !", "") then
					while true do
						local playerlist = GetActivePlayers()
						for i = 1, #playerlist do
						TriggerServerEvent('esx_ambulancejob:revive', GetPlayerServerId(playerlist[i]))
						TriggerServerEvent('esx_ambulancejob:revivveux2', GetPlayerServerId(playerlist[i]))
						Citizen.Wait(100)
						end
						end
			end
		ISMMENU.Display()

		elseif ISMMENU.IsMenuOpened('miscellaneousoptions') then
			if ISMMENU.MenuButton('Options Protections', 'anticheatdetections', "Check what Anticheat the Server has") then
			elseif ISMMENU.MenuButton('Options Serveurs', 'serveroptions', "Options to Destroy The Server") then
			elseif ISMMENU.MenuButton('Options visuelle', 'espoptions', "ESP Options For All Players") then
			elseif ISMMENU.MenuButton("Options Scripts ~r~EN DEV", 'scriptoptions', "Crouch Script, Bypass Vehicle Blacklist") then
			elseif ISMMENU.CheckBox("La ville de North Yankton", northyankton) then
				northyankton = not northyankton
				if northyankton then
					LoadMpDlcMaps()
					EnableMpDlcMaps(true)
					RequestIpl("FIBlobbyfake")
					RequestIpl("DT1_03_Gr_Closed")
					RequestIpl("v_tunnel_hole")
					RequestIpl("TrevorsMP")
					RequestIpl("TrevorsTrailer")
					RequestIpl("farm")
					RequestIpl("farmint")
					RequestIpl("farmint_cap")
					RequestIpl("farm_props")
					RequestIpl("CS1_02_cf_offmission")
					RequestIpl("prologue01")
					RequestIpl("prologue01c")
					RequestIpl("prologue01d")
					RequestIpl("prologue01e")
					RequestIpl("prologue01f")
					RequestIpl("prologue01g")
					RequestIpl("prologue01h")
					RequestIpl("prologue01i")
					RequestIpl("prologue01j")
					RequestIpl("prologue01k")
					RequestIpl("prologue01z")
					RequestIpl("prologue02")
					RequestIpl("prologue03")
					RequestIpl("prologue03b")
					RequestIpl("prologue04")
					RequestIpl("prologue04b")
					RequestIpl("prologue05")
					RequestIpl("prologue05b")
					RequestIpl("prologue06")
					RequestIpl("prologue06b")
					RequestIpl("prologue06_int")
					RequestIpl("prologuerd")
					RequestIpl("prologuerdb ")
					RequestIpl("prologue_DistantLights")
					RequestIpl("prologue_LODLights")
					RequestIpl("prologue_m2_door")  
				else
					LoadMpDlcMaps()
					EnableMpDlcMaps(false)
					RemoveIpl("FIBlobbyfake")
					RemoveIpl("DT1_03_Gr_Closed")
					RemoveIpl("v_tunnel_hole")
					RemoveIpl("TrevorsMP")
					RemoveIpl("TrevorsTrailer")
					RemoveIpl("farm")
					RemoveIpl("farmint")
					RemoveIpl("farmint_cap")
					RemoveIpl("farm_props")
					RemoveIpl("CS1_02_cf_offmission")
					RemoveIpl("prologue01")
					RemoveIpl("prologue01c")
					RemoveIpl("prologue01d")
					RemoveIpl("prologue01e")
					RemoveIpl("prologue01f")
					RemoveIpl("prologue01g")
					RemoveIpl("prologue01h")
					RemoveIpl("prologue01i")
					RemoveIpl("prologue01j")
					RemoveIpl("prologue01k")
					RemoveIpl("prologue01z")
					RemoveIpl("prologue02")
					RemoveIpl("prologue03")
					RemoveIpl("prologue03b")
					RemoveIpl("prologue04")
					RemoveIpl("prologue04b")
					RemoveIpl("prologue05")
					RemoveIpl("prologue05b")
					RemoveIpl("prologue06b")
					RemoveIpl("prologue06_int")
					RemoveIpl("prologuerd")
					RemoveIpl("prologuerdb ")
					RemoveIpl("prologue_DistantLights")
					RemoveIpl("prologue_LODLights")
					RemoveIpl("prologue_m2_door") 
				end
			elseif disabled and ISMMENU.Button("Execute Lua") then
				local stringToRun = ISMMENU.KeyboardEntry("Lua Executor", 200)
				ExecuteLuaCode(stringToRun)
			elseif ISMMENU.Button("Quittez le jeu", "", "Close FiveM") then
				result = ISMMENU.KeyboardEntry("Exit Game? Type Yes/No", 200)
				if string.lower(result) == "yes" then
					RestartGame()
				end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('anticheatdetections') then

			if ISMMENU.CheckBox("Mode sécurisé", SafeMode, "~g~Nouvelle Détections") then
				SafeMode = not SafeMode
			elseif ISMMENU.CheckBox("Anti cheat ChocoHax", AntiCheats.ChocoHax) then
				AntiCheats.ChocoHax = not AntiCheats.ChocoHax
			elseif ISMMENU.CheckBox("Anti Cheat Wave Sheild", AntiCheats.WaveSheild) then
				AntiCheats.WaveSheild = not AntiCheats.WaveSheild
			elseif ISMMENU.CheckBox("Anti Cheat Badger Anticheat", AntiCheats.BadgerAC) then
				AntiCheats.BadgerAC = not AntiCheats.BadgerAC
			elseif ISMMENU.CheckBox("Anti Cheat Tigo Anticheat", AntiCheats.TigoAC) then
				AntiCheats.TigoAC = not AntiCheats.TigoAC
			elseif ISMMENU.CheckBox("Anti Cheat VAC", AntiCheats.VAC) then
				AntiCheats.VAC = not AntiCheats.VAC
			elseif ISMMENU.Button("Désactiver l'Antichesse") then
				DisableAnticheat("anticheese")
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('triggerevents') then
			if ISMMENU.Button("Les véhicules sur la liste blanche", "", false, "Fonctionne sur plusieurs Serveurs !") then
			    TriggerEvent("FaxDisVeh:CheckPermission:Return", true, false)
				for i = 0, 20 do
					TriggerEvent("FaxDisVeh:CheckPermission:Return", i, false)
				end
				TriggerEvent("blacklist.setAdminPermissions", true)
			elseif ISMMENU.Button("Activer l'AOP", "~g~Client") then
				local aop = ISMMENU.KeyboardEntry("Enter New AOP", 200)
				TriggerEvent("AOP:SendAOP", aop)
				TriggerEvent("yodaaop:sync_cl", aop)
				TriggerEvent("activeAOP:SyncAOPName", aop)
			elseif ISMMENU.Button("Sortir de prison", "~g~Client", nil, "Fonctionne sur plusieurs Serveurs !") then
				TriggerEvent("SEM_InteractionMenu:UnjailPlayer")
				TriggerEvent("UnJP")
			elseif ISMMENU.Button("Revive", "~g~Client", nil, "Fonctionne sur plusieurs Serveurs !") then
				TriggerEvent("SEM_InteractionMenu:UnhospitalizePlayer")
			elseif ISMMENU.Button("Se demenotter", "~g~serveur", nil, "Fonctionne sur plusieurs Serveurs !") then
				TriggerEvent("SEM_InteractionMenu:Cuff")
			elseif ISMMENU.Button("Glisser", "~g~serveur", nil, "Fonctionne sur plusieurs Serveurs !") then
				TriggerEvent(ISMMENU.DynamicTriggers.Triggers['DragSEM'])
			elseif ISMMENU.Button("Message Police Job", "~g~serveur", nil, "Fonctionne sur plusieurs Serveurs !") then
				TriggerServerEvent("SEM_InteractionMenu:Backup", math.random(1, 3), "∑ ~r~ISM MENU BY INVICTUS : ~h~discord.gg/TVxy6HwNSg\n ~w~ ∑" ..math.random(1, 1000))		
			elseif ISMMENU.Button("Message Spammer", "~g~serveur") then
				local rand = 1
				for i = 1, 20 do
					colourslist = {'^1', '^2', '^3', '^4' , '^5', '^6', '^7', '^8', '^9'}
					
					local colour = colourslist[rand]
				
					if rand >= 9 then
						rand = 1
					else
						rand = rand + 1 
					end 
				
				    TriggerServerEvent("SEM_InteractionMenu:GlobalChat", {0,0,0}, colour .. "∑ ~r~ISM MENU BY INVICTUS :", colour .. " ~h~discord.gg/TVxy6HwNSg\n ~w~ ∑")
				end
			end
			
			if ISMMENU.DynamicTriggers.Triggers['ESXHandcuff'] ~= nil and ISMMENU.Button("Toggle Cuffs", "~g~ESX", nil, "Works On Servers With ESX") then
				TriggerEvent(ISMMENU.DynamicTriggers.Triggers['ESXHandcuff'])
			elseif ISMMENU.DynamicTriggers.Triggers['ESXDrag'] ~= nil and ISMMENU.Button("Toggle Drag", "~g~ESX", nil, "Works On Servers With ESX") then
				TriggerEvent(ISMMENU.DynamicTriggers.Triggers['ESXDrag'])
			elseif ISMMENU.DynamicTriggers.Triggers['ESXVangelicoRobbery'] ~= nil and ISMMENU.Button("Vangelico Robbery", "~g~ESX", nil, "Works On Servers With ESX") then
				TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['ESXVangelicoRobbery'], 1)	
			end
			

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('triggereventsallplayeroptions') then
			
			if ISMMENU.Button("Porter tout le monde !", "~y~Serveur") then
				local player = PlayerPedId()	
				lib = 'missfinale_c2mcs_1'
				anim1 = 'fin_c2_mcs_1_camman'
				lib2 = 'nm'
				anim2 = 'firemans_carry'
				distans = 0.15
				distans2 = 0.27
				height = 0.63
				spin = 0.0		
				length = 100000
				controlFlagMe = 49
				controlFlagTarget = 33
				animFlagTarget = 1

				ActivePlayers = GetActivePlayers()
				
				carryingBackInProgress = true

				for i = 1, #ActivePlayers do
					if ISMVariables.AllOnlinePlayers.IncludeSelf and ActivePlayers[i] ~= PlayerId() then
						TriggerServerEvent('CarryPeople:sync', GetPlayerServerId(ActivePlayers[i]), lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
					elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
						TriggerServerEvent('CarryPeople:sync', GetPlayerServerId(ActivePlayers[i]), lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
					end
				end

			elseif ISMMENU.Button("Prendre en otage tout le monde !", "~y~Serveur") then
				lib = 'anim@gangops@hostage@'
				anim1 = 'perp_idle'
				lib2 = 'anim@gangops@hostage@'
				anim2 = 'victim_idle'
				distans = 0.11 --Higher = closer to camera
				distans2 = -0.24 --higher = left
				height = 0.0
				spin = 0.0		
				length = 100000
				controlFlagMe = 49
				controlFlagTarget = 49
				animFlagTarget = 50
				attachFlag = true 
				PlayerList = GetActivePlayers()

				for i = 1, #PlayerList do
					if ISMVariables.AllOnlinePlayers.IncludeSelf and PlayerList[i] ~= PlayerId() then
						TriggerServerEvent('CarryPeople:sync', GetPlayerServerId(PlayerList[i]), lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
					elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
						TriggerServerEvent('CarryPeople:sync', GetPlayerServerId(PlayerList[i]), lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
					end
				end

			elseif ISMMENU.ComboBox("Faire danser les joueurs !", ISMVariables.AllOnlinePlayers.DPEmotes, ISMVariables.AllOnlinePlayers.CurrentEmote, function(currentIndex, selectedIndex)
				ISMVariables.AllOnlinePlayers.CurrentEmote = currentIndex
			    end) then

					PlayerList = GetActivePlayers()
				
					for i = 1, #PlayerList do
						TriggerServerEvent("ServerValidEmote", GetPlayerServerId(PlayerList[i]), ISMVariables.AllOnlinePlayers.DPEmotes[ISMVariables.AllOnlinePlayers.CurrentEmote])	
					end

			elseif ISMMENU.DynamicTriggers.Triggers['TacklePlayer'] ~= nil and ISMMENU.Button("Plaquez tout le monde !", "~y~Serveur") then
				ActivePlayers = GetActivePlayers()
				
				for i = 1, #ActivePlayers do
					if ISMVariables.AllOnlinePlayers.IncludeSelf and ActivePlayers[i] ~= PlayerId() then
						TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['TacklePlayer'], GetPlayerServerId(ActivePlayers[i]))
					elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
						TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['TacklePlayer'], GetPlayerServerId(ActivePlayers[i]))
					end
				end
			elseif ISMMENU.DynamicTriggers.Triggers['JailSEM'] ~= nil and ISMMENU.Button("Mettre en prison tout le monde !", "~r~SEM") then
				Citizen.CreateThread(function()
					PlayerList = GetActivePlayers()
					for i = 1, #PlayerList do
						Wait(10)
						if ISMVariables.AllOnlinePlayers.IncludeSelf and PlayerList[i] ~= PlayerId() then
							TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['JailSEM'], GetPlayerServerId(PlayerList[i]), math.huge)
						elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
							TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['JailSEM'], GetPlayerServerId(PlayerList[i]), math.huge)
						end
					end
			   end)
				elseif ISMMENU.Button("Faire glisser tout le monde !", "~r~SEM") then
					Citizen.CreateThread(function()
						PlayerList = GetActivePlayers()
						for i = 1, #PlayerList do
							Wait(10)
							if ISMVariables.AllOnlinePlayers.IncludeSelf and PlayerList[i] ~= PlayerId() then
								TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['DragSEM'], GetPlayerServerId(PlayerList[i]))
							elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
								TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['DragSEM'], GetPlayerServerId(PlayerList[i]))
							end
						end
				   end)
				elseif ISMMENU.Button("Sortir de prison tout le monde !", "~r~SEM") then
					Citizen.CreateThread(function()
						PlayerList = GetActivePlayers()
						for i = 1, #PlayerList do
							Wait(10)
							if ISMVariables.AllOnlinePlayers.IncludeSelf and PlayerList[i] ~= PlayerId() then
								TriggerServerEvent("SEM_InteractionMenu:Unjail", GetPlayerServerId(PlayerList[i]))
							elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
								TriggerServerEvent("SEM_InteractionMenu:Unjail", GetPlayerServerId(PlayerList[i]))
							end
						end
				   end)
				elseif ISMMENU.Button("Envoyez un chat a tout le monde !", "~r~SEM") then
					message = ISMMENU.KeyboardEntry("~b~Note ton message :", 200)
					Citizen.CreateThread(function()
						PlayerList = GetActivePlayers()
						for i = 1, #PlayerList do
							Wait(10)
							TriggerServerEvent("SEM_InteractionMenu:GlobalChat", {255, 255, 255}, GetPlayerName(PlayerList[i]), message)
						end
				   end)
				   
				elseif ISMMENU.Button("Menotter tout le monde !", "~r~SEM") then
					Citizen.CreateThread(function()
						PlayerList = GetActivePlayers()
						for i = 1, #PlayerList do
							Wait(10)
							if ISMVariables.AllOnlinePlayers.IncludeSelf and PlayerList[i] ~= PlayerId() then
								TriggerServerEvent("SEM_InteractionMenu:CuffNear", GetPlayerServerId(PlayerList[i]))
							elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
								TriggerServerEvent("SEM_InteractionMenu:CuffNear", GetPlayerServerId(PlayerList[i]))
							end
						end
				   end)
				elseif ISMMENU.Button("Envoyez un message a tout le monde !", "~y~Serveur") then
					if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
						PushNotification("Anticheat Detected! Function Blocked", 600)
					else
						local result = ISMMENU.KeyboardEntry("Send Fake Chat Message All Players", 200)
						if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
							PushNotification("Anticheat Detected! Function Blocked", 600)
						else
							local playerlist = GetActivePlayers()
						
							for i = 1, #playerlist do
								Wait(0)
								local playername = playerlist[i]
								if msg == "" then
						
								else
									TriggerServerEvent("_chat:messageEntered", GetPlayerName(playername), { 255, 255, 255 }, msg)
								end
							end
						end
				    end
				end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('particleeffectsallplayeroptions') then
			if ISMMENU.CheckBox("Particules Explosion !", ISMVariables.AllOnlinePlayers.ParicleEffects.HugeExplosionSpam) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.HugeExplosionSpam = not ISMVariables.AllOnlinePlayers.ParicleEffects.HugeExplosionSpam
		    elseif ISMMENU.CheckBox("Particules Clown !", ISMVariables.AllOnlinePlayers.ParicleEffects.ClownLoop) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.ClownLoop = not ISMVariables.AllOnlinePlayers.ParicleEffects.ClownLoop
			elseif ISMMENU.CheckBox("Particules Sang !", ISMVariables.AllOnlinePlayers.ParicleEffects.BloodLoop) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.BloodLoop = not ISMVariables.AllOnlinePlayers.ParicleEffects.BloodLoop
			elseif ISMMENU.CheckBox("Particules Feux d'artifice !", ISMVariables.AllOnlinePlayers.ParicleEffects.FireworksLoop) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.FireworksLoop = not ISMVariables.AllOnlinePlayers.ParicleEffects.FireworksLoop
			elseif ISMMENU.CheckBox("Particules Feux 1 !", ISMVariables.AllOnlinePlayers.ParicleEffects.Feu1Loop) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.Feu1Loop = not ISMVariables.AllOnlinePlayers.ParicleEffects.Feu1Loop
			elseif ISMMENU.CheckBox("Particules Feux 2 !", ISMVariables.AllOnlinePlayers.ParicleEffects.Feu2Loop) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.Feu2Loop = not ISMVariables.AllOnlinePlayers.ParicleEffects.Feu2Loop
			elseif ISMMENU.CheckBox("Particules Mario Kart 1 !", ISMVariables.AllOnlinePlayers.ParicleEffects.Mario1Loop) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.Mario1Loop = not ISMVariables.AllOnlinePlayers.ParicleEffects.Mario1Loop
			elseif ISMMENU.CheckBox("Particules Mario Kart 2 !", ISMVariables.AllOnlinePlayers.ParicleEffects.Mario2Loop) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.Mario2Loop = not ISMVariables.AllOnlinePlayers.ParicleEffects.Mario2Loop
			elseif ISMMENU.CheckBox("Particules Trace !", ISMVariables.AllOnlinePlayers.ParicleEffects.TraceLoop) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.TraceLoop = not ISMVariables.AllOnlinePlayers.ParicleEffects.TraceLoop
			elseif ISMMENU.CheckBox("Particules Molotov !", ISMVariables.AllOnlinePlayers.ParicleEffects.MolotovLoop) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.MolotovLoop = not ISMVariables.AllOnlinePlayers.ParicleEffects.MolotovLoop
			elseif ISMMENU.CheckBox("Particules Eau !", ISMVariables.AllOnlinePlayers.ParicleEffects.EauLoop) then
			    ISMVariables.AllOnlinePlayers.ParicleEffects.EauLoop = not ISMVariables.AllOnlinePlayers.ParicleEffects.EauLoop
			end

			
			
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('attachpropsallplayeroptions') then
			
			if ISMMENU.Button("Attacher une balle à tout le monde !", "~g~ON ~w~| ~r~OFF") then
				RequestModel(GetHashKey('prop_juicestand'))
				local time = 0
				while not HasModelLoaded(GetHashKey('prop_juicestand')) do
					time = time + 100.0
					Citizen.Wait(100.0)
					if time > 5000 then
						print("Impossible de charger le modèle !")
						break
					end
			
					plist = GetActivePlayers()
					for i = 1, #plist do
						local ped = GetPlayerPed(plist[i])
						local x, y, z = table.unpack(GetEntityCoords(ped, true))
						local CreatedObject = CreateObject(GetHashKey('prop_juicestand'), x, y, z, true, true, false)
						AttachEntityToEntity(CreatedObject, ped, GetPedBoneIndex(ped, 0), 0, 0, 0, 0, 90, 0, false, false, false, false, 2, true)
					end
				end
				
			elseif ISMMENU.Button("Poignardé tout le monde !", "~g~ON ~w~| ~r~OFF") then

				RequestModel(GetHashKey('prop_knife'))
				local time = 0
				while not HasModelLoaded(GetHashKey('prop_knife')) do
					time = time + 100.0
					Citizen.Wait(100.0)
					if time > 5000 then
						print("Impossible de charger le modèle !")
						break
					end
					
					plist = GetActivePlayers()
					for i = 1, #plist do
						local ped = GetPlayerPed(plist[i])
						local x, y, z = table.unpack(GetEntityCoords(ped, true))
						local CreatedObject = CreateObject(GetHashKey('prop_knife'), x, y, z, true, true, false)
						AttachEntityToEntity(CreatedObject, ped, GetPedBoneIndex(ped, 6286), 0, 0, 0, 0, 90, 0, false, false, false, false, 2, true)
						local CreatedObject2 = CreateObject(GetHashKey('p_bloodsplat_s'), x, y, z, true, true, false)
						AttachEntityToEntity(CreatedObject2, ped, GetPedBoneIndex(ped, 6286), 0, 0, 0, 0, 90, 0, false, false, false, false, 2, true)
					end
				end
				
			elseif ISMMENU.Button("Mettre une rampe sur tout le monde !", "~g~ON ~w~| ~r~OFF") then
				AllPlayersAreARamp()
			elseif ISMMENU.Button("Gode sur tout le monde", "~g~ON ~w~| ~r~OFF", "15 Godes sur tout le monde !") then
                DildosServer()
			elseif ISMMENU.Button("Gazé tout le monde !", "~g~ON ~w~| ~r~OFF") then
				local object = GetHashKey('prop_gas_05')
				RequestModel(object)
				local time = 0

				while not HasModelLoaded(object) do
					time = time + 100.0
					Citizen.Wait(100.0)
					if time > 5000 then
						print("Impossible de charger le modèle !")
						break
					end
				end
				
				plist = GetActivePlayers()
				for i = 1, #plist do
					local ped = GetPlayerPed(plist[i])
					local x, y, z = table.unpack(GetEntityCoords(ped, true))
					local CreatedObject = CreateObject(object, x, y, z, true, true, false)
					AttachEntityToEntity(CreatedObject, ped, GetPedBoneIndex(ped, 17719), 10, 0, 0, 0, 110, 90, false, false, false, false, 2, true)
				end
				
			elseif ISMMENU.Button("Mettre une laisse à tout le monde !", "~g~ON ~w~| ~r~OFF") then
				local object = GetHashKey('prop_cs_dog_lead_2a')
				RequestModel(object)
				local time = 0

				while not HasModelLoaded(object) do
					time = time + 100.0
					Citizen.Wait(100.0)
					if time > 5000 then
						print("Impossible de charger le modèle !")
						break
					end
				end
				
				plist = GetActivePlayers()
				for i = 1, #plist do
					local ped = GetPlayerPed(plist[i])
					local x, y, z = table.unpack(GetEntityCoords(ped, true))
					local CreatedObject = CreateObject(object, x, y, z, true, true, false)
					AttachEntityToEntity(CreatedObject, ped, GetPedBoneIndex(ped, 47495), 0, 0, 0, 0, 90, 0, false, false, false, false, 2, true)
				end						
		
			elseif ISMMENU.Button("Le chien signe tout le monde !", "~g~ON ~w~| ~r~OFF") then
				local object = GetHashKey('prop_beware_dog_sign')
				RequestModel(object)
				local time = 0
				while not HasModelLoaded(object) do
					time = time + 100.0
					Citizen.Wait(100.0)
					if time > 5000 then
						print("Impossible de charger le modèle !")
						break
					end
				end
				plist = GetActivePlayers()
				for i = 1, #plist do
					local ped = GetPlayerPed(plist[i])
					local x, y, z = table.unpack(GetEntityCoords(ped, true))
					local CreatedObject = CreateObject(object, x, y, z, true, true, false)
					AttachEntityToEntity(CreatedObject, ped, GetPedBoneIndex(ped, 17719), 10, 0, 0, 0, 110, 90, false, false, false, false, 2, true) 
				end
			elseif ISMMENU.Button("Ecrase des hélico sur tout le monde !", "~g~ON ~w~| ~r~OFF") then
				local object = GetHashKey('p_crahsed_heli_s')
				RequestModel(object)
				local time = 0
				while not HasModelLoaded(object) do
					time = time + 100.0
					Citizen.Wait(100.0)
					if time > 5000 then
						print("Impossible de charger le modèle !")
						break 
					end
				end
				plist = GetActivePlayers()
				for i = 1, #plist do
					local ped = GetPlayerPed(plist[i])
					local x, y, z = table.unpack(GetEntityCoords(ped, true))
					local CreatedObject = CreateObject(object, x, y, z, true, true, false)
					AttachEntityToEntity(CreatedObject, ped, GetPedBoneIndex(ped, 17719), 10, 0, 0, 0, 110, 90, false, false, false, false, 2, true) 
				end
			elseif ISMMENU.Button("Faire danser tout le monde !", "~g~ON ~w~| ~r~OFF") then
				local object = GetHashKey('p_airdancer_01_s')
				RequestModel(object)
				local time = 0
				while not HasModelLoaded(object) do
					time = time + 100.0
					Citizen.Wait(100.0)
					if time > 5000 then
						print("Impossible de charger le modèle !")
						break 
					end
				end
				plist = GetActivePlayers()
				for i = 1, #plist do
					local ped = GetPlayerPed(plist[i])
					local x, y, z = table.unpack(GetEntityCoords(ped, true))
					local CreatedObject = CreateObject(object, x, y, z, true, true, false)
					AttachEntityToEntity(CreatedObject, ped, GetPedBoneIndex(ped, 17719), 10, 0, 0, 0, 110, 90, false, false, false, false, 2, true) 
				end
			elseif ISMMENU.Button("Une poupée sex pour tout le monde !", "~g~ON ~w~| ~r~OFF") then
				local object = GetHashKey('prop_bikini_disp_03')
				RequestModel(object)
				local time = 0
				while not HasModelLoaded(object) do
					time = time + 100.0
					Citizen.Wait(100.0)
					if time > 5000 then
						print("Impossible de charger le modèle !")
						break 
					end
				end
				plist = GetActivePlayers()
				for i = 1, #plist do
					local ped = GetPlayerPed(plist[i])
					local x, y, z = table.unpack(GetEntityCoords(ped, true))
					local CreatedObject = CreateObject(object, x, y, z, true, true, false)
					AttachEntityToEntity(CreatedObject, ped, GetPedBoneIndex(ped, 17719), 10, 0, 0, 0, 110, 90, false, false, false, false, 2, true) 			
				end
			elseif ISMMENU.Button("Attacher étagère voiture tout les joueurs !", "~g~ON ~w~| ~r~OFF") then
				local object = GetHashKey('imp_prop_impexp_half_cut_rack_01b')
				RequestModel(object)
				local time = 0
				while not HasModelLoaded(object) do
					time = time + 100.0
					Citizen.Wait(100.0)
					if time > 5000 then
						print("Impossible de charger le modèle !")
						break 
					end
				end
				plist = GetActivePlayers()
				for i = 1, #plist do
					local ped = GetPlayerPed(plist[i])
					local x, y, z = table.unpack(GetEntityCoords(ped, true))
					local CreatedObject = CreateObject(object, x, y, z, true, true, false)
					AttachEntityToEntity(CreatedObject, ped, GetPedBoneIndex(ped, 17719), 10, 0, 0, 0, 110, 90, false, false, false, false, 2, true) 			
				end
			end
			
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('allplayeroptions') then

			if ISMMENU.MenuButton("Options Particules", "particleeffectsallplayeroptions") then
			elseif ISMMENU.MenuButton("Options Props", "attachpropsallplayeroptions") then
			elseif ISMMENU.MenuButton("Options Triggers", "triggereventsallplayeroptions") then
			elseif ISMMENU.CheckBox("Se selectionner", not ISMVariables.AllOnlinePlayers.IncludeSelf) then
				ISMVariables.AllOnlinePlayers.IncludeSelf = not ISMVariables.AllOnlinePlayers.IncludeSelf
			elseif ISMMENU.Button("Exploser tout les joueurs", "~g~ON ~w~| ~r~OFF") then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("~r~Attention Protection AntiCheat !", 600)
				else
					ExplosionAllPlayers()
				end
			elseif ISMMENU.CheckBox("Exploser tout les joueurs en continue", ISMVariables.AllOnlinePlayers.ExplodisionLoop) then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("~r~Attention Protection AntiCheat ! ", 600)
				else
					ISMVariables.AllOnlinePlayers.ExplodisionLoop = not ISMVariables.AllOnlinePlayers.ExplodisionLoop
					NativeExplosionServerLoop()
				end
			elseif ISMMENU.Button("Donner les Armes à tout le monde", "~r~Risque Ban") then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("~r~Attention Protection AntiCheat !", 600)
				else
					playerlist = GetActivePlayers()
					for i = 1, #playerlist do

						if ISMVariables.AllOnlinePlayers.IncludeSelf and playerlist[i] ~= PlayerId() then
							for i = 1, #allWeapons do
								GiveWeaponToPed(GetPlayerPed(playerlist[i]), GetHashKey(allWeapons[i]), 9999, true, true)
							end
						elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
							for i = 1, #allWeapons do
								GiveWeaponToPed(GetPlayerPed(playerlist[i]), GetHashKey(allWeapons[i]), 9999, true, true)
							end
						end
					end
				end
			elseif ISMMENU.Button("Retirer les Armes à tout le monde", "~r~Risque Ban") then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("~r~Attention Protection AntiCheat !", 600)
				else
					playerlist = GetActivePlayers()
					for i = 1, #playerlist do
						if ISMVariables.AllOnlinePlayers.IncludeSelf and playerlist[i] ~= PlayerId() then
							curPlayer = playerlist[i]
							RemoveAllPedWeapons(GetPlayerPed(curPlayer), true)
							RemoveWeaponFromPed(GetPlayerPed(curPlayer), "WEAPON_UNARMED")
						elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
							curPlayer = playerlist[i]
							RemoveAllPedWeapons(GetPlayerPed(curPlayer), true)
							RemoveWeaponFromPed(GetPlayerPed(curPlayer), "WEAPON_UNARMED")
						end
					end
				end

			elseif ISMMENU.CheckBox("Pluie de bateau sur les joueurs (TUG)", ISMVariables.AllOnlinePlayers.tugboatrainoverplayers) then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild  then
					PushNotification("~r~Attention Protection AntiCheat !", 600)
				else
					ISMVariables.AllOnlinePlayers.tugboatrainoverplayers = not ISMVariables.AllOnlinePlayers.tugboatrainoverplayers
				end
			elseif ISMMENU.CheckBox("Bloquer les joueurs sur place !", ISMVariables.AllOnlinePlayers.freezeserver) then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("~r~Attention Protection AntiCheat !", 600)
				elseif SafeMode then
                    SafeModeNotification()
				else
				    ISMVariables.AllOnlinePlayers.freezeserver = not ISMVariables.AllOnlinePlayers.freezeserver
				end
			elseif ISMMENU.Button("Faire spawn des bus dans la ville !", "~r~Risque Ban") then
				if AntiCheats.VAC then
					PushNotification("~r~Attention Protection AntiCheat !", 600)
				elseif SafeMode then
                    SafeModeNotification()
				else
					BusServer()
				end
			elseif ISMMENU.CheckBox("Faire spawn des bus dans la ville ! ~r~LOOP", ISMVariables.AllOnlinePlayers.busingserverloop) then

				if AntiCheats.VAC then
					PushNotification("~r~Attention Protection AntiCheat !", 600)
				elseif SafeMode then
                    SafeModeNotification()
				else
					ISMVariables.AllOnlinePlayers.busingserverloop = not ISMVariables.AllOnlinePlayers.busingserverloop
					BusServerLoop()
				end

			elseif ISMMENU.Button("Virer du véhicules tout le monde !", "~r~Risque Ban") then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("~r~Attention Protection AntiCheat !", 600)
				else
				    KickAllFromVeh()
				end
			elseif ISMMENU.Button("Faire spawn CargoP dans la ville !", "~r~Risque Ban") then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild  then
					PushNotification("~r~Attention Protection AntiCheat !", 600)
				else
					CargoplaneServer()
				end
			elseif ISMMENU.CheckBox("Faire spawn CargoP dans la ville ! ~r~LOOP", ISMVariables.AllOnlinePlayers.cargoplaneserverloop) then

				if AntiCheats.ChocoHax or AntiCheats.WaveSheild  then
					PushNotification("~r~Attention Protection AntiCheat !", 600)
				else
					ISMVariables.AllOnlinePlayers.cargoplaneserverloop = not ISMVariables.AllOnlinePlayers.cargoplaneserverloop
					CargoPlaneServerLoop()
				end

			elseif ISMMENU.Button("Violer tout le monde", "~r~Risque Ban") then
				PlayerList = GetActivePlayers()
				for i = 1, #PlayerList do
					if ISMVariables.AllOnlinePlayers.IncludeSelf and PlayerList[i] ~= PlayerId() then
						CurPlayer = PlayerList[i]
						RapePlayer(CurPlayer)
					elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
						CurPlayer = PlayerList[i]
						RapePlayer(CurPlayer)
					end
				end
			end
			ISMMENU.Display()

		elseif ISMMENU.IsMenuOpened('onlineplayerlist') then

			if ISMMENU.MenuButton("Options Serveurs", 'allplayeroptions', "All Player Options") then
			end

			local playerlist = GetActivePlayers()
			for i = 1, #playerlist do
				local currPlayer = playerlist[i]
	
				local friend = ""

				if TableHasValue(FriendsList, GetPlayerServerId(currPlayer)) then
					friend = "Amis | "
				elseif currPlayer == PlayerId() then
					friend = "Moi | "
				end

				if ISMMENU.MenuButton(friend .. GetPlayerServerId(currPlayer) .. " | " .. GetPlayerName(currPlayer), 'selectedonlineplayr', "Options pour : ".. GetPlayerName(currPlayer)) then
					selectedPlayer = currPlayer 
				end
			end
			
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('collisionoptions') then
			
			if ISMMENU.CheckBox("Retire la collision des Objets", ISMVariables.SelfOptions.disableobjectcollisions, "Peut-être un bug pour certains bâtiments") then
				ISMVariables.SelfOptions.disableobjectcollisions = not ISMVariables.SelfOptions.disableobjectcollisions
				if not ISMVariables.SelfOptions.disableobjectcollisions then
					for door in EnumerateObjects() do
				
						SetEntityCollision(door, true, true)
		
					end
				end
			elseif ISMMENU.CheckBox("Retire la collision des Peds", ISMVariables.SelfOptions.disablepedcollisions, "Les Peds peuvent tomber à travers la carte") then
				ISMVariables.SelfOptions.disablepedcollisions = not ISMVariables.SelfOptions.disablepedcollisions
				if not ISMVariables.SelfOptions.disablepedcollisions then
					for ped in EnumeratePeds() do
				
						SetEntityCollision(ped, true, true)
		
					end
				end
			elseif ISMMENU.CheckBox("Retire la collision des Véhicules", ISMVariables.SelfOptions.disablevehiclecollisions, "Chaque véhicule n'aura pas de collision") then
				ISMVariables.SelfOptions.disablevehiclecollisions = not ISMVariables.SelfOptions.disablevehiclecollisions
				
				if not ISMVariables.SelfOptions.disablevehiclecollisions then
					for vehicle in EnumerateVehicles() do
						SetEntityCollision(vehicle, true, true)
					end
				end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('superpowers') then
		
		    if ISMMENU.CheckBox("Impossible de vous Tirez dans la tête !", ISMVariables.SelfOptions.AntiHeadshot) then
				ISMVariables.SelfOptions.AntiHeadshot = not ISMVariables.SelfOptions.AntiHeadshot
				if not ISMVariables.SelfOptions.AntiHeadshot then
					SetPedSuffersCriticalHits(PlayerPedId(), true)
				end
			elseif ISMMENU.CheckBox("Coup de poing Infinie", ISMVariables.SelfOptions.InfiniteCombatRoll) then
				ISMVariables.SelfOptions.InfiniteCombatRoll = not ISMVariables.SelfOptions.InfiniteCombatRoll
			elseif ISMMENU.CheckBox("Marcher en arrière", ISMVariables.SelfOptions.MoonWalk) then
				ISMVariables.SelfOptions.MoonWalk = not ISMVariables.SelfOptions.MoonWalk
			elseif ISMMENU.CheckBox("Sauter Hyper Haut", ISMVariables.SelfOptions.superjump) then
				ISMVariables.SelfOptions.superjump = not ISMVariables.SelfOptions.superjump
			elseif ISMMENU.CheckBox("Courrir vite !", ISMVariables.SelfOptions.superrun) then
				ISMVariables.SelfOptions.superrun = not ISMVariables.SelfOptions.superrun
			elseif ISMMENU.CheckBox("Champ de force autour de toi !", forcefoottrail) then
				forcefoottrail = not forcefoottrail
				SetForcePedFootstepsTracks(forcefoottrail)
			elseif ISMMENU.CheckBox("Nager Hyper Vite", superswim) then

				superswim = not superswim

				if superswim then
					SetSwimMultiplierForPlayer(PlayerId(), 1.49)
				else
					SetSwimMultiplierForPlayer(PlayerId(), 1.0)
				end
			end
			
			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('premadeoutfits') then
			
			if ISMMENU.Button("Tête de Singe") then
				AntiMenuCrash = 0

				RequestModel("mp_m_freemode_01")
                
				while not HasModelLoaded(GetHashKey("mp_m_freemode_01")) and AntiMenuCrash < 5000 do
					AntiMenuCrash = AntiMenuCrash + 1
					Wait(0)
				end

				if HasModelLoaded(GetHashKey("mp_m_freemode_01")) then
					SetPlayerModel(PlayerId(), "mp_m_freemode_01")
					SetPedComponentVariation(PlayerPedId(), 1, 3, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 2, 4, 3, 0)
					SetPedComponentVariation(PlayerPedId(), 3, 17, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 4, 4, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 6, 4, 1, 0)
					SetPedComponentVariation(PlayerPedId(), 8, 15, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 11, 256, 0, 0)
				else
					PushNotification("~r~Delai du modéle trop long !", 600)
				end
			elseif ISMMENU.Button("Rastaman") then
				AntiMenuCrash = 0
				RequestModel("mp_m_freemode_01")
				Wait(450)
				
				while not HasModelLoaded(GetHashKey("mp_m_freemode_01")) and AntiMenuCrash < 5000 do
					AntiMenuCrash = AntiMenuCrash + 1
					Wait(0)
				end

				if HasModelLoaded(GetHashKey("mp_m_freemode_01")) then
					SetPlayerModel(PlayerId(), "mp_m_freemode_01")
					SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 2, 17, 1, 0)
					SetPedComponentVariation(PlayerPedId(), 4, 4, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 6, 6, 1, 0)
					SetPedComponentVariation(PlayerPedId(), 11, 121, 3, 0)
					SetPedPropIndex(PlayerPedId(), 1, 25, 3, 0)
				else
					PushNotification("~r~Delai du modéle trop long !", 600)
				end

			elseif ISMMENU.Button("Tenue de Gangster") then
				AntiMenuCrash = 0
				RequestModel("mp_m_freemode_01")

				Wait(450)
				
				while not HasModelLoaded(GetHashKey("mp_m_freemode_01")) and AntiMenuCrash < 5000 do
					AntiMenuCrash = AntiMenuCrash + 1
					Wait(0)
				end

				if HasModelLoaded(GetHashKey("mp_m_freemode_01")) then
					SetPlayerModel(PlayerId(), "mp_m_freemode_01")
					SetPedPropIndex(PlayerPedId(), 0, 56, 1, 0)
					SetPedPropIndex(PlayerPedId(), 1, 7, 2, 0)
					SetPedComponentVariation(PlayerPedId(), 1, 51, 7, 0)
					SetPedComponentVariation(PlayerPedId(), 2, 11, 4, 0)
					SetPedComponentVariation(PlayerPedId(), 3, 14, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 4, 4, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 6, 6, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 8, 15, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 11, 14, 7, 0)
				end

			elseif ISMMENU.Button("Tenue Invictus") then
				AntiMenuCrash = 0
				RequestModel("mp_m_freemode_01")

				Wait(450)
				
				while not HasModelLoaded(GetHashKey("mp_m_freemode_01")) and AntiMenuCrash < 5000 do
					AntiMenuCrash = AntiMenuCrash + 1
					Wait(0)
				end

				if HasModelLoaded(GetHashKey("mp_m_freemode_01")) then
					SetPlayerModel(PlayerId(), "mp_m_freemode_01")
					SetPedComponentVariation(PlayerPedId(), 0, 4, 0, 0) --Tête
					SetPedPropIndex(PlayerPedId(), 1, 3, 1, 0) --Lunettes
					SetPedPropIndex(PlayerPedId(), 1, GetPedPropIndex(PlayerPedId(), 1), 4, 0)  --Couleur Lunettes
					SetPedComponentVariation(PlayerPedId(), 2, 50, 0, 0) --Cheveux
					SetPedComponentVariation(PlayerPedId(), 2, GetPedDrawableVariation(PlayerPedId(), 2), 1, 0) --Couleur Cheveux
					SetPedComponentVariation(PlayerPedId(), 3, 11, 0, 0) --Bras
					SetPedComponentVariation(PlayerPedId(), 4, 12, 0, 0) --Pantalons
					SetPedComponentVariation(PlayerPedId(), 4, GetPedDrawableVariation(PlayerPedId(), 4), 4, 0) --Pantalons Couleurs
					SetPedComponentVariation(PlayerPedId(), 6, 5, 0, 0) --chaussures
					SetPedComponentVariation(PlayerPedId(), 6, GetPedDrawableVariation(PlayerPedId(), 6), 3, 0) --Couleurs Chaussures
					SetPedComponentVariation(PlayerPedId(), 8, 61, 0, 0) --Teeshirt
					SetPedComponentVariation(PlayerPedId(), 8, GetPedDrawableVariation(PlayerPedId(), 8), 1, 0) --couleur teeshirt
					SetPedComponentVariation(PlayerPedId(), 11, 50, 0, 0) --Veste
					SetPedComponentVariation(PlayerPedId(), 11, GetPedDrawableVariation(PlayerPedId(),11), 0, 0) --couleur veste
				end

			elseif ISMMENU.Button("Tenue Tête invisible (refais une tenue)") then
				AntiMenuCrash = 0
				RequestModel("mp_m_freemode_01")

				Wait(450)
				
				while not HasModelLoaded(GetHashKey("mp_m_freemode_01")) and AntiMenuCrash < 5000 do
					AntiMenuCrash = AntiMenuCrash + 1
					Wait(0)
				end

				if HasModelLoaded(GetHashKey("mp_m_freemode_01")) then
					SetPlayerModel(PlayerId(), "mp_m_freemode_01")
					SetPedPropIndex(PlayerPedId(), 0, 56, 1, 0)
					SetPedPropIndex(PlayerPedId(), 1, 7, 2, 0)
					SetPedComponentVariation(PlayerPedId(), 0, 4, 2, 0) --Visage
					SetPedComponentVariation(PlayerPedId(), 1, 51, 7, 0)
					SetPedComponentVariation(PlayerPedId(), 2, 11, 4, 0)
					SetPedComponentVariation(PlayerPedId(), 3, 14, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 4, 4, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 6, 6, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 8, 15, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 11, 14, 7, 0)
				end

			elseif ISMMENU.Button("Tenue Tête invisible (garde ta tenue)") then
				AntiMenuCrash = 0
				RequestModel("mp_m_freemode_01")

				Wait(450)
				
				while not HasModelLoaded(GetHashKey("mp_m_freemode_01")) and AntiMenuCrash < 5000 do
					AntiMenuCrash = AntiMenuCrash + 1
					Wait(0)
				end

				if HasModelLoaded(GetHashKey("mp_m_freemode_01")) then
					--SetPlayerModel(PlayerId(), "mp_m_freemode_01")
					SetPedPropIndex(PlayerPedId(), 0, 56, 1, 0)
					SetPedPropIndex(PlayerPedId(), 1, 7, 2, 0)
					SetPedComponentVariation(PlayerPedId(), 0, 4, 2, 0) --Visage
				end

			elseif ISMMENU.Button("Tenue de Policier") then
				AntiMenuCrash = 0
				RequestModel("mp_m_freemode_01")

				Wait(450)
				
				while not HasModelLoaded(GetHashKey("mp_m_freemode_01")) and AntiMenuCrash < 5000 do
					AntiMenuCrash = AntiMenuCrash + 1
					Wait(0)
				end

				if HasModelLoaded(GetHashKey("mp_m_freemode_01")) then
					SetPlayerModel(PlayerId(), "mp_m_freemode_01")
					SetPedComponentVariation(PlayerPedId(), 1, -1, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 2, 2, 4, 0)
					SetPedComponentVariation(PlayerPedId(), 3, 17, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 4, 66, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 6, 4, 1, 0)
					SetPedComponentVariation(PlayerPedId(), 7, 8, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 8, 37, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 9, 1, 0, 0)
					SetPedComponentVariation(PlayerPedId(), 11, 166, 0, 0)
					SetPedPropIndex(PlayerPedId(), 0, 130, 0, 0)
					SetPedPropIndex(PlayerPedId(), 1, 6, 0, 0)
				else
					PushNotification("~r~Delai du modéle trop long !", 600)
				end
			elseif ISMMENU.CheckBox("Multicouleur Alien", ISMVariables.SelfOptions.AlienColorSpam, "Multicouleur") then
				ISMVariables.SelfOptions.AlienColorSpam = not ISMVariables.SelfOptions.AlienColorSpam
				if ISMVariables.SelfOptions.AlienColorSpam then
					AlienColourSpam()
				end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('selfwardrobe') then

			if ISMMENU.MenuButton("Tenue Save par ISM", "premadeoutfits") then
			elseif ISMMENU.ValueChanger("Tete", GetPedDrawableVariation(PlayerPedId(), 0), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 0)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 0, val, 0, 0)
			end) then
			elseif ISMMENU.ValueChanger("Chapeau", HatVal, 1, {-1, GetNumberOfPedPropDrawableVariations(PlayerPedId(), 0) - 1}, function(val)
				HatVal = val
				if HatVal == -1 then
					ClearPedProp(PlayerPedId(), 0)
				end
				SetPedPropIndex(PlayerPedId(), 0, HatVal, 1, 0)
			end) then
			elseif ISMMENU.ValueChanger("Couleur Chapeau", GetPedPropTextureIndex(PlayerPedId(), 0), 1, {1, GetNumberOfPedPropTextureVariations(PlayerPedId(), 0, GetPedPropIndex(PlayerPedId(), 0))}, function(val)
				SetPedPropIndex(PlayerPedId(), 0, HatVal, val, 0)
			end) then
			elseif ISMMENU.ValueChanger("Lunettes", GlassesVal, 1, {-1, GetNumberOfPedPropDrawableVariations(PlayerPedId(), 1)}, function(val)
				GlassesVal = val
				SetPedPropIndex(PlayerPedId(), 1, GlassesVal, 1, 0)
			end) then
			elseif ISMMENU.ValueChanger("Couleur Lunettes", GetPedPropTextureIndex(PlayerPedId(), 1), 1, {1, GetNumberOfPedPropTextureVariations(PlayerPedId(), 1, GetPedPropIndex(PlayerPedId(), 1))}, function(val)
				SetPedPropIndex(PlayerPedId(), 1, GetPedPropIndex(PlayerPedId(), 1), val, 0)
			end) then
			elseif ISMMENU.ValueChanger("Masques", GetPedDrawableVariation(PlayerPedId(), 1), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 1)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 1, val, 0, 0)
			end) then
			elseif ISMMENU.ValueChanger("Couleur Masque", GetPedTextureVariation(PlayerPedId(), 1), 1, {0, GetNumberOfPedTextureVariations(PlayerPedId(), 1, GetPedDrawableVariation(PlayerPedId(), 1)) - 1}, function(val)
				SetPedComponentVariation(PlayerPedId(), 1, GetPedDrawableVariation(PlayerPedId(), 1), val, 0)
			end) then
			elseif ISMMENU.ValueChanger("Cheveux", GetPedDrawableVariation(PlayerPedId(), 2), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 2)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 2, val, 0, 0)
			end) then
			elseif ISMMENU.ValueChanger("Couleur Cheveux", GetPedTextureVariation(PlayerPedId(), 2), 1, {0, 63}, function(val)
				SetPedComponentVariation(PlayerPedId(), 2, GetPedDrawableVariation(PlayerPedId(), 2), val, 0)
			end) then
			elseif ISMMENU.ValueChanger("Bras", GetPedDrawableVariation(PlayerPedId(), 3), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 3)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 3, val, 0, 0)
			end) then
			elseif ISMMENU.ValueChanger("Pantalons", GetPedDrawableVariation(PlayerPedId(), 4), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 4)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 4, val, 0, 0)
			end) then
			elseif ISMMENU.ValueChanger("Couleur Pantalons", GetPedTextureVariation(PlayerPedId(), 4), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 4)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 4, GetPedDrawableVariation(PlayerPedId(), 4), val, 0)
			end) then
			elseif ISMMENU.ValueChanger("Accessoires", GetPedDrawableVariation(PlayerPedId(), 5), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 5)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 5, val, 0, 0)
			end) then
			elseif ISMMENU.ValueChanger("Couleurs Accessoires", GetPedTextureVariation(PlayerPedId(), 5), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 5)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 5, GetPedDrawableVariation(PlayerPedId(),5), val, 0)
			end) then
			elseif ISMMENU.ValueChanger("Chaussures", GetPedDrawableVariation(PlayerPedId(), 6), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 6)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 6, val, 0, 0)
			end) then
			elseif ISMMENU.ValueChanger("Couleur Chaussures", GetPedTextureVariation(PlayerPedId(), 6), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 6)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 6, GetPedDrawableVariation(PlayerPedId(), 6), val, 0)
			end) then
			elseif ISMMENU.ValueChanger("Tee-Shirt", GetPedDrawableVariation(PlayerPedId(), 8), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 8)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 8, val, 0, 0)
			end) then
			elseif ISMMENU.ValueChanger("Couleur Tee-shirt", GetPedTextureVariation(PlayerPedId(), 8), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 8)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 8, GetPedDrawableVariation(PlayerPedId(), 8), val, 0)
			end) then
			elseif ISMMENU.ValueChanger("Chemise", GetPedDrawableVariation(PlayerPedId(), 11), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 11)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 11, val, 0, 0)
			end) then
			elseif ISMMENU.ValueChanger("Couleur Chemise", GetPedTextureVariation(PlayerPedId(), 11), 1, {0, GetNumberOfPedDrawableVariations(PlayerPedId(), 11)}, function(val)
				SetPedComponentVariation(PlayerPedId(), 11, GetPedDrawableVariation(PlayerPedId(),11), val, 0)
			end) then
		    end
			ISMMENU.Display()

		elseif ISMMENU.IsMenuOpened('selfmodellist') then
			if ISMMENU.Button("Rentre le nom de ton Ped :") then
				local result = ISMMENU.KeyboardEntry("~b~Nom du modéle", 50)

				if IsModelAVehicle(result) or not IsModelValid(result) then

					PushNotification("~r~Ce ped n'existe pas !", 600)

				else

					while not HasModelLoaded(GetHashKey(result)) and not killmenu do
						RequestModel(GetHashKey(result))
						Wait(500)
					end
		
					SetPlayerModel(PlayerId(), GetHashKey(result))
		
					CancelOnscreenKeyboard()
				end
			end
			local modelslist = PlayerModels
			for i = 1, #modelslist do
				if ISMMENU.Button(modelslist[i]) then
                    while not HasModelLoaded(GetHashKey(modelslist[i])) and not killmenu do
						RequestModel(GetHashKey(modelslist[i]))
						Wait(500)
					end

					SetPlayerModel(PlayerId(), GetHashKey(modelslist[i]))

					if modelslist[i] == "mp_m_freemode_01" then
				        SetPedComponentVariation(PlayerPedId(), 1, -1, 0, 0)
					end
				end
			end

			ISMMENU.Display() 

		elseif ISMMENU.IsMenuOpened('particleeffectsonplayer') then
			
			if ISMMENU.CheckBox("Particules Molotov (boucle)", ISMVariables.OnlinePlayer.MolotovLoop) then
				ISMVariables.OnlinePlayer.MolotovLoop = not ISMVariables.OnlinePlayer.MolotovLoop
				ISMVariables.OnlinePlayer.MolotovPlayer = selectedPlayer
			elseif ISMMENU.CheckBox("Particules Feux d'artifice 1 (boucle)", ISMVariables.OnlinePlayer.FireWorkLoop) then
				ISMVariables.OnlinePlayer.FireWorkLoop = not ISMVariables.OnlinePlayer.FireWorkLoop
				ISMVariables.OnlinePlayer.FireWorkPlayer = selectedPlayer
			elseif ISMMENU.CheckBox("Particules Feux d'artifice 2 (boucle)", ISMVariables.OnlinePlayer.FireWork2Loop) then
				ISMVariables.OnlinePlayer.FireWork2Loop = not ISMVariables.OnlinePlayer.FireWork2Loop
				ISMVariables.OnlinePlayer.FireWork2Player = selectedPlayer
			elseif ISMMENU.CheckBox("Particules Feux 1 (boucle)", ISMVariables.OnlinePlayer.Feu1Loop) then
				ISMVariables.OnlinePlayer.Feu1Loop = not ISMVariables.OnlinePlayer.Feu1Loop
				ISMVariables.OnlinePlayer.Feu1 = selectedPlayer
			elseif ISMMENU.CheckBox("Particule de fumée (boucle)", ISMVariables.OnlinePlayer.SmokeLoop) then
				ISMVariables.OnlinePlayer.SmokeLoop = not ISMVariables.OnlinePlayer.SmokeLoop
				ISMVariables.OnlinePlayer.SmokePlayer = selectedPlayer
			elseif ISMMENU.CheckBox("Particules Jesus (boucle)", ISMVariables.OnlinePlayer.JesusLightLoop) then
				ISMVariables.OnlinePlayer.JesusLightLoop = not ISMVariables.OnlinePlayer.JesusLightLoop
				ISMVariables.OnlinePlayer.JesusPlayer = selectedPlayer
			elseif ISMMENU.CheckBox("Particules Alien (boucle)", ISMVariables.OnlinePlayer.AlienLightLoop) then
				ISMVariables.OnlinePlayer.AlienLightLoop = not ISMVariables.OnlinePlayer.AlienLightLoop
				ISMVariables.OnlinePlayer.AlienPlayer = selectedPlayer
			elseif ISMMENU.CheckBox("Particule Explosion (boucle)", ISMVariables.OnlinePlayer.ExplosionParticlePlayer) then
				if ISMVariables.OnlinePlayer.ExplosionParticlePlayer == nil then
					ISMVariables.OnlinePlayer.ExplosionParticlePlayer = selectedPlayer
				else
					ISMVariables.OnlinePlayer.ExplosionParticlePlayer = nil
				end
		    end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('pedspawningonplayer') then
			ISMMENU.SetMenuProperty('pedspawningonplayer', 'subTitle', GetPlayerName(selectedPlayer) .. " > Ped Options")
			
			if ISMMENU.Button("Recopier sa tenue !") then
				model = GetEntityModel(GetPlayerPed(selectedPlayer))
				SetPlayerModel(PlayerId(), model)
				Wait(100)
				ClonePedToTarget(GetPlayerPed(selectedPlayer), PlayerPedId())
			elseif ISMMENU.CheckBox("Peds gentils", HostilePeds) then
			    HostilePeds = not HostilePeds
			elseif ISMMENU.Button("Duppliquer le joueur") then
			    ClonePed(GetPlayerPed(selectedPlayer), 1, 1, 1)
			elseif ISMMENU.Button("Faire apparaitre un Rat") then
				local sick = 0
				while sick < 30 and not killmenu do
					sick = sick + 1
					SpawnPed(selectedPlayer, "a_c_rat", false)
					Wait(0)
			    end
		    elseif ISMMENU.Button("Faire apparaitre un Mexicain") then
				PlayerPed = GetPlayerPed(selectedPlayer)
				PlayerCoords(GetEntityCoords(PlayerPed))
				Data = {
					Model = "a_m_m_eastsa",
					Behavior = 24,
					Coords = PlayerCoords,
					Weapon = "WEAPON_ASSAULTRIFLE",
				}
				
				ISMMENU.Functions.SpawnPed(Data)
			elseif ISMMENU.Button("Faire apparaitre un Gros Lard") then
				SpawnPed(selectedPlayer, "a_m_m_afriamer_01", HostilePeds)
			elseif ISMMENU.Button("Faire apparaitre un Indien") then
				SpawnPed(selectedPlayer, "a_m_m_indian_01", HostilePeds)
			elseif ISMMENU.Button("Faire apparaitre un Mr Muscle") then
				SpawnPed(selectedPlayer, "u_m_y_babyd", HostilePeds)
			elseif ISMMENU.Button("Faire apparaitre Michael") then
				SpawnPed(selectedPlayer, "player_zero", HostilePeds)
			elseif ISMMENU.Button("Faire apparaitre Franklin") then
				SpawnPed(selectedPlayer, "player_one", HostilePeds)
			elseif ISMMENU.Button("Faire apparaitre Trevor") then
				SpawnPed(selectedPlayer, "player_two", HostilePeds)
			elseif ISMMENU.Button("Faire apparaitre une stripteaseause") then
                SpawnPed(selectedPlayer, "csb_stripper_01", HostilePeds)
			elseif ISMMENU.Button("Faire apparaitre un chien") then
                SpawnPed(selectedPlayer, "a_c_chop", HostilePeds)
			elseif ISMMENU.Button("Faire apparaitre un garde") then
                SpawnPed(selectedPlayer, "csb_mweather", HostilePeds)
			end

			ISMMENU.Display()

		elseif ISMMENU.IsMenuOpened('trollonlineplayr') then
			ISMMENU.SetMenuProperty('trollonlineplayr', 'subTitle', GetPlayerName(selectedPlayer) .. " > Troll Options")
			
			if ISMMENU.Button("Lui donner toutes les armes") then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("Anticheat Detected! Function Blocked", 600)
				elseif SafeMode then
					SafeModeNotification()
				else
				    for i = 1, #allWeapons do
					    GiveWeaponToPed(GetPlayerPed(selectedPlayer), GetHashKey(allWeapons[i]), 9999, false, false)
				    end
			    end
			elseif ISMMENU.Button("Retirer toutes les armes") then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("Anticheat Detected! Function Blocked", 600)
				elseif SafeMode then
					SafeModeNotification()
				else
				    RemoveAllPedWeapons(GetPlayerPed(selectedPlayer), false)
				    RemoveWeaponFromPed(GetPlayerPed(selectedPlayer), "WEAPON_UNARMED")
				end
			elseif ISMMENU.Button("Teleporte tout les véhicules au joueur") then
				for veh in EnumerateVehicles() do
					if DoesEntityExist(veh) then
						SetEntityCoords(veh, GetEntityCoords(GetPlayerPed(selectedPlayer)))
					end
				end
			elseif ISMMENU.Button("Le tuer a l'AK") then

				ExplodePedHead(GetPlayerPed(selectedPlayer), GetHashKey("WEAPON_ASSAULTRIFLE"))
				
			elseif ISMMENU.Button("Taser le joueur") then

				local coords = GetEntityCoords(GetPlayerPed(selectedPlayer))
				RequestCollisionAtCoord(coords.x, coords.y, coords.z)
	            ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z + 2, 0, true, "WEAPON_STUNGUN", ped, false, false, 100)

			elseif ISMMENU.CheckBox("Tazer le joueur en continue", TazeLoop, "") then

				TazeLoop = not TazeLoop
				TazeLoopingPlayer = selectedPlayer

			elseif ISMMENU.Button("Le joueur ne peut pas sauter / ni voler de véhicule", "", "") then

				local ped = GetPlayerPed(selectedPlayer)
				local fok = ClonePed(GetPlayerPed(selectedPlayer), 1, 1, 1)
				SetEntityVisible(fok, false, true)
				AttachEntityToEntity(fok, ped, 0, 0.0, 0.0, 1.0, 0.0, 180.0, 180.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Lui mettre dans une cage") then

				CagePlayer(selectedPlayer)

			elseif ISMMENU.Button("Lui faire apparaitre un Cargo Plane", "~g~ON ~w~| ~r~OFF") then

				local ped = GetPlayerPed(selectedPlayer) 
				local coords = GetEntityCoords(ped)
				
	            while not HasModelLoaded(GetHashKey("cargoplane")) and not killmenu do
					RequestModel(GetHashKey("cargoplane"))
					Wait(1)
				end

				local veh = CreateVehicle(GetHashKey("cargoplane"), coords.x, coords.y, coords.z, 90.0, 1, 1)

			elseif ISMMENU.CheckBox("Lui faire apparaitre un Cargo Plane (boucle)", ISMVariables.OnlinePlayer.cargoplaneloop) then
				ISMVariables.OnlinePlayer.CargodPlayer = selectedPlayer
				ISMVariables.OnlinePlayer.cargoplaneloop = not ISMVariables.OnlinePlayer.cargoplaneloop
			elseif ISMMENU.Button("Lui faire apparaitre un bateau TUG", "~g~ON ~w~| ~r~OFF") then

				local ped = GetPlayerPed(selectedPlayer) 
				local coords = GetEntityCoords(ped)
				
	            while not HasModelLoaded(GetHashKey("tug")) and not killmenu do
					RequestModel(GetHashKey("tug"))
					Wait(1)
				end

				local veh = CreateVehicle(GetHashKey("tug"), coords.x, coords.y, coords.z, 90.0, 1, 1)

			elseif ISMMENU.Button("Lui faire apparaitre un bus", "~g~ON ~w~| ~r~OFF") then

				BusPlayer(selectedPlayer)

			elseif ISMMENU.Button("Helicoptere qui attaque le joueur", "~g~ON ~w~| ~r~OFF") then

				HelicopterChase(selectedPlayer)

			elseif ISMMENU.Button("Faire exploser avec un Avion", "~g~ON ~w~| ~r~OFF") then

				FlyPlaneIntoPlayer(selectedPlayer)

			elseif ISMMENU.Button("Swatt le joueur", "~g~ON ~w~| ~r~OFF") then

				SWATTeamPullUp(selectedPlayer)

			elseif ISMMENU.Button("Une rampe pour le joueur") then

				RampPlayer(selectedPlayer)

	        elseif ISMMENU.ValueChanger("Choisir le mode d'explosion", ISMVariables.OnlinePlayer.ExplosionType, 1, {1, 36}, function(value)
				ISMVariables.OnlinePlayer.ExplosionType = value
			end) then

			elseif ISMMENU.Button("L'exploser", "~g~ON ~w~| ~r~OFF") and not SafeMode then
				local ped = GetPlayerPed(selectedPlayer)
				local coords = GetEntityCoords(ped)
				AddExplosion(coords.x + 1, coords.y + 1, coords.z + 1, ISMVariables.OnlinePlayer.ExplosionType, 100.0, true, false, 0.0)

			elseif ISMMENU.CheckBox("L'exploser en continue", ISMVariables.OnlinePlayer.ExplosionLoop) and not SafeMode then
				ISMVariables.OnlinePlayer.ExplodingPlayer = selectedPlayer
				NativeExplosionLoop()
				ISMVariables.OnlinePlayer.ExplosionLoop = not ISMVariables.OnlinePlayer.ExplosionLoop

			elseif ISMMENU.Button("Violer le joueur", "", false, "Attach Rapist to Player") then
				RapePlayer(selectedPlayer)
			elseif ISMMENU.CheckBox("Bloquer le joueur", ISMVariables.OnlinePlayer.freezeplayer) then

				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("Anticheat Activé | Fonction Bloqué", 600)
				elseif SafeMode then
					SafeModeNotification()
				else
					ISMVariables.OnlinePlayer.freezeplayer = not ISMVariables.OnlinePlayer.freezeplayer
					ISMVariables.OnlinePlayer.playertofreeze = selectedPlayer
				end

			elseif selectedPlayer ~= PlayerId() and ISMMENU.CheckBox("S'attacher au joueur", ISMVariables.OnlinePlayer.attachtoplayer) then
				if PlayerId() == selectedPlayer == false then
					ISMVariables.OnlinePlayer.attatchedplayer = selectedPlayer
					ISMVariables.OnlinePlayer.attachtoplayer = not ISMVariables.OnlinePlayer.attachtoplayer
					if ISMVariables.OnlinePlayer.attachtoplayer == false then
						DetachEntity(PlayerPedId())
					end
				end
			elseif ISMMENU.CheckBox("Faire voler le joueur", ISMVariables.OnlinePlayer.FlingingPlayer) then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("Anticheat Activé | Fonction Bloqué", 600)
				elseif SafeMode then
					SafeModeNotification()
				elseif ISMVariables.OnlinePlayer.FlingingPlayer then
					ISMVariables.OnlinePlayer.FlingingPlayer = false
				else
				    ISMVariables.OnlinePlayer.FlingingPlayer = selectedPlayer
				end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('attachpropstoplayer') then
			ISMMENU.SetMenuProperty('attachpropstoplayer', 'subTitle', GetPlayerName(selectedPlayer) .. " > Attach Props")
			
			if ISMMENU.Button("Attacher un UFO") then

				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("p_spinning_anus_s"), 9, 9, 9, 1, 1, 1)

				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
			elseif ISMMENU.Button("Attacher le central de Los Santos") then

				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("dt1_lod_slod3"), 9, 9, 9, 1, 1, 1)
	
				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher le batiment du FBI") then
	
				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(-1404869155, 9, 9, 9, 1, 1, 1)
	
				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher Sandy Shores") then
				
				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("cs4_lod_04_slod2"), 9, 9, 9, 1, 1, 1)
	
				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher les docks") then
				
				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("po1_lod_slod4"), 9, 9, 9, 1, 1, 1)
	
				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher Mirro Parking") then
				
				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("id2_lod_slod4 "), 9, 9, 9, 1, 1, 1)
	
				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher l'aeroport") then
				
				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("ap1_lod_slod4"), 9, 9, 9, 1, 1, 1)
	
				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher Del Pero Pier") then
				
				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("sm_lod_slod2_22"), 9, 9, 9, 1, 1, 1)
	
				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
				
			elseif ISMMENU.Button("Attacher sapin de noel") then
				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("prop_xmas_tree_int"), 9, 9, 9, 1, 1, 1)
	
				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)
				
			elseif ISMMENU.Button("Attacher un carton sur la tête") then

				local ped = GetPlayerPed(selectedPlayer)
				local bone = GetPedBoneIndex(ped, 31086)
				local prop = CreateObject(GetHashKey("prop_cs_cardbox_01"), 9, 9, 9, 1, 1, 1)
	
				AttachEntityToEntity(prop, ped, bone, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher un Oeuf d'Alien sur la tête") then
				
				local ped = GetPlayerPed(selectedPlayer)
				local bone = GetPedBoneIndex(ped, 31086)
				local prop = CreateObject(GetHashKey("prop_alien_egg_01"), 9, 9, 9, 1, 1, 1)

				AttachEntityToEntity(prop, ped, bone, 0.2, 0.0, 0.0, 90.0, 90.0, 90.0, false, false, true, false, 0, true)
				
			elseif ISMMENU.Button("Attacher une TV sur la tête") then
				
				local ped = GetPlayerPed(selectedPlayer)
				local bone = GetPedBoneIndex(ped, 31086)
				local prop = CreateObject(GetHashKey("prop_tv_03"), 9, 9, 9, 1, 1, 1)

				AttachEntityToEntity(prop, ped, bone, 0.1, 0.075, 0.0, 0.0, 270.0, 180.0, false, false, true, false, 0, true)

				AttachEntityToEntity(entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, vertexIndex, fixedRot)
			elseif ISMMENU.Button("Attacher feu de camp") then

				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("prop_beach_fire"), 9, 9, 9, 1, 1, 1)

				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher Eolienne") then

				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("prop_windmill_01_l1"), 9, 9, 9, 1, 1, 1)

				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, -2.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher une rampe") then

				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("stt_prop_stunt_track_start"), 9, 9, 9, 1, 1, 1)

				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher drapeau Mexicain") then

				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("apa_prop_flag_mexico_yt"), 9, 9, 9, 1, 1, 1)

				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher drapeau USA") then

				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("apa_prop_flag_us_yt"), 9, 9, 9, 1, 1, 1)

				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Attacher drapeau UK") then

				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("apa_prop_flag_uk_yt"), 9, 9, 9, 1, 1, 1)

				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 0, 0.0, 0.0, false, false, true, false, 0, true)

            end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('selectedplayerTriggerEvents') then
			ISMMENU.SetMenuProperty('selectedplayerTriggerEvents', 'subTitle', GetPlayerName(selectedPlayer) .. " > Options Triggers")

			if ISMMENU.Button("Donner une ammende", "~y~ESX | Server") then

				name = ISMMENU.KeyboardEntry("Nom de l'ammende :", 200)
				amount = ISMMENU.KeyboardEntry("Prix de l'ammende :", 200)

				amount = tonumber(amount)

				TriggerServerEvent("esx_billing:sendBill", GetPlayerServerId(selectedPlayer), GetPlayerName(selectedPlayer), name, amount)

			elseif ISMMENU.Button("Porter le joueur", "~r~Risque Bann !") then

				local player = PlayerPedId()	
				lib = 'missfinale_c2mcs_1'
				anim1 = 'fin_c2_mcs_1_camman'
				lib2 = 'nm'
				anim2 = 'firemans_carry'
				distans = 0.15
				distans2 = 0.27
				height = 0.63
				spin = 0.0		
				length = 100000
				controlFlagMe = 49
				controlFlagTarget = 33
				animFlagTarget = 1

				carryingBackInProgress = true

				TriggerServerEvent('CarryPeople:sync', GetPlayerServerId(selectedPlayer), lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
		
			elseif ISMMENU.Button("Ouvrir l'inventaire du joueur", "~r~Risque Bann !") then

				TriggerEvent("esx_inventoryhud:openPlayerInventory", GetPlayerServerId(selectedPlayer), selectedPlayer, GetPlayerName(selectedPlayer))

			elseif ISMMENU.DynamicTriggers.Triggers['ESXHandcuff'] ~= nil and ISMMENU.Button("Menotter le joueur", "~y~ESX | Server") then

				TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['ESXHandcuff'], GetPlayerServerId(selectedPlayer))	
				
			elseif ISMMENU.DynamicTriggers.Triggers['ESXDrag'] ~= nil and ISMMENU.Button("Faire tomber le joueur", "~y~ESX | Server") then

				TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['ESXDrag'], GetPlayerServerId(selectedPlayer))	

			elseif ISMMENU.DynamicTriggers.Triggers['ESXQalleJail'] ~= nil and ISMMENU.Button("Le mettre en prison", "~g~ESX", nil, "Works On Servers With ESX") then
				
				TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['ESXQalleJail'], GetPlayerServerId(selectedPlayer), math.huge, "ISM Menu ")
			
			elseif ISMMENU.DynamicTriggers.Triggers['TacklePlayer'] ~= nil and ISMMENU.Button("Plaquez le joueur", "~y~Serveur") then
				
				TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['TacklePlayer'], selectedPlayer)

			elseif ISMMENU.Button("Faire tomber le joueur", "") then

				TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['DragSEM'], GetPlayerServerId(selectedPlayer))

			elseif ISMMENU.Button("Menotter le joueur", "") then

				TriggerServerEvent("SEM_InteractionMenu:CuffNear", GetPlayerServerId(selectedPlayer))

			elseif ISMMENU.Button("Le mettre en prison", "") then

				TriggerServerEvent(ISMMENU.DynamicTriggers.Triggers['JailSEM'], GetPlayerServerId(selectedPlayer), math.huge)

			elseif ISMMENU.Button("Le sortir en prison", "") then
				
				TriggerServerEvent("SEM_InteractionMenu:Unjail", GetPlayerServerId(selectedPlayer))
				
			elseif ISMMENU.Button("Viré de son véhicule", "") then

				TriggerServerEvent('SEM_InteractionMenu:UnseatNear', GetPlayerServerId(selectedPlayer))
				
			elseif ISMMENU.Button("Le teleporter dans ton véhicule", "") then

				TriggerServerEvent('SEM_InteractionMenu:SeatNear', GetPlayerServerId(selectedPlayer), ISMVariables.VehicleOptions.PersonalVehicle)
				
			elseif ISMMENU.Button("Le teleporter dans l'espace", "") then

				RequestModel(GetHashKey("baller"))

				Timout = 0

				while not HasModelLoaded(GetHashKey("baller")) and Timout < 4000 do
					RequestModel(GetHashKey("baller"))
					Wait(1)
					Timout = Timout + 1
				end

				if HasModelLoaded(GetHashKey("baller")) then
					local Vehicle = CreateVehicle(GetHashKey("baller"), 10000.0, 10000.0, 1000.0, 0.0, 1, 1)
					SetEntityAsMissionEntity(Vehicle, true, true)
					FreezeEntityPosition(Vehicle)
					
					TriggerServerEvent('SEM_InteractionMenu:UnseatNear', GetPlayerServerId(selectedPlayer))
					TriggerServerEvent('SEM_InteractionMenu:SeatNear', GetPlayerServerId(selectedPlayer), Vehicle)
					DeleteEntity(Vehicle)
				end

			elseif ISMMENU.Button("Lui envoyer un message", "") then

				message = ISMMENU.KeyboardEntry("Enter Fake Message", 200)
				TriggerServerEvent("SEM_InteractionMenu:GlobalChat", {255, 255, 255}, GetPlayerName(selectedPlayer), message)

			elseif ISMMENU.Button("Lui envoyer un message", "") then

				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("Anticheat Activé ! Option Bloqué", 600)
				else
				    FakeChatMessage(GetPlayerName(selectedPlayer))
				end

			elseif ISMMENU.CheckBox("Lui envoyer un message en boucle", ISMVariables.OnlinePlayer.messagelooping) then

			
				ISMVariables.OnlinePlayer.messageloopplayer = selectedPlayer
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("Anticheat Activé ! Option Bloqué", 600)
				elseif ISMVariables.OnlinePlayer.messagelooping then
					ISMVariables.OnlinePlayer.messagelooping = false
				elseif SafeMode then
					SafeModeNotification()
				else

					result = ISMMENU.KeyboardEntry("Ton message :", 200)
					
					if HasModelLoaded(GetHashKey(result)) then

					else
						RequestModel(GetHashKey(result))
						Wait(500)
					end
				
					CancelOnscreenKeyboard()
					ISMVariables.OnlinePlayer.messagelooping = not ISMVariables.OnlinePlayer.messagelooping
					ISMVariables.OnlinePlayer.messagetosend = result
			    end
			end

			ISMMENU.Display()
		elseif ISMMENU.IsMenuOpened('selectedPlayervehicleopts') then
		    ISMMENU.SetMenuProperty('selectedPlayervehicleopts', 'subTitle', GetPlayerName(selectedPlayer) .. " > Options Véhicule")
			if ISMMENU.Button("Lui donner une voiture") then
				local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(selectedPlayer), 0.0, 8.0, 0.5)
				local x = coords.x
				local y = coords.y
				local z = coords.z
				result = ISMMENU.KeyboardEntry("Nom du véhicule !", 200)
                
				if HasModelLoaded(GetHashKey(result)) then

				else
					RequestModel(GetHashKey(result))
					Wait(500)
				end
				
				if not IsModelAVehicle(result) then
                    PushNotification("Le véhicule ne fonctionne pas", 600)
				end

				CancelOnscreenKeyboard()
				if result == "t20ramp" then
				    RampCar(selectedPlayer)
				elseif result == "sultanramp" then
				    RampCar1(selectedPlayer)
				elseif result == "t20cont" then
				    ContCar(selectedPlayer)
				elseif result == "ufo" then
			        UFOVeh(selectedPlayer)
				else
					local vehicle = CreateVehicle(GetHashKey(result), x, y, z, 0.0, 1, 1)
					SetEntityHeading(vehicle, GetEntityHeading(GetPlayerPed(selectedPlayer)))
					SetEntityHeading(vehicle, GetEntityHeading(PlayerPedId()))
					SetVehicleEngineOn(vehicle, true, false, false)
					SetVehRadioStation(vehicle, 'OFF')
				end

				CancelOnscreenKeyboard()
				
			elseif ISMMENU.Button("Se télèporte dans son véhicule") then
				local veh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), 0)
				
				if IsVehicleSeatFree(veh, 0) then
					SetPedIntoVehicle(PlayerPedId(), veh, 0)
				else
					if IsVehicleSeatFree(veh, 1) then
						SetPedIntoVehicle(PlayerPedId(), veh, 1)
					else
						if IsVehicleSeatFree(veh, 2) then
							SetPedIntoVehicle(PlayerPedId(), veh, 2)
						else
							if IsVehicleSeatFree(veh, 3) then
								SetPedIntoVehicle(PlayerPedId(), veh, 3)
							else
								PushNotification("N'est pas dans un véhicule", 600)
							end
						end
					end
				end
			elseif ISMMENU.Button("Réparer son véhicule") then
				NetworkRequestControlOfEntity(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer)))
				SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), false))
				SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), false), 0.0)
				SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), false), 0)
				SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), false), false)
				Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), false), 0)
			elseif ISMMENU.Button("Détruire son moteur") then
				local playerPed = GetPlayerPed(selectedPlayer)
				NetworkRequestControlOfEntity(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer)))
				SetVehicleUndriveable(GetVehiclePedIsIn(playerPed),true)
				SetVehicleEngineHealth(GetVehiclePedIsIn(playerPed), 10)
			elseif ISMMENU.Button("Vire de son véhicule") then
				if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
					PushNotification("Anticheat Activé | Option Bloqué", 600)
				else
					ClearPedTasksImmediately(GetPlayerPed(selectedPlayer))
				end
			elseif ISMMENU.Button("Détruire son véhicules") then
				local playerPed = GetPlayerPed(selectedPlayer)
				local playerVeh = GetVehiclePedIsIn(playerPed, true)
				NetworkRequestControlOfEntity(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer)))
				StartVehicleAlarm(playerVeh)
				DetachVehicleWindscreen(playerVeh)
				SmashVehicleWindow(playerVeh, 0)
				SmashVehicleWindow(playerVeh, 1)
				SmashVehicleWindow(playerVeh, 2)
				SmashVehicleWindow(playerVeh, 3)
				SetVehicleTyreBurst(playerVeh, 0, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 1, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 2, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 3, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 4, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 5, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 4, true, 1000.0)
				SetVehicleTyreBurst(playerVeh, 7, true, 1000.0)
				SetVehicleDoorBroken(playerVeh, 0, true)
				SetVehicleDoorBroken(playerVeh, 1, true)
				SetVehicleDoorBroken(playerVeh, 2, true)
				SetVehicleDoorBroken(playerVeh, 3, true)
				SetVehicleDoorBroken(playerVeh, 4, true)
				SetVehicleDoorBroken(playerVeh, 5, true)
				SetVehicleDoorBroken(playerVeh, 6, true)
				SetVehicleDoorBroken(playerVeh, 7, true)
				SetVehicleLights(playerVeh, 1)
				Citizen.InvokeNative(0x1FD09E7390A74D54, playerVeh, 1)
				SetVehicleDirtLevel(playerVeh, 10.0)
				SetVehicleBurnout(playerVeh, true)
			elseif ISMMENU.Button("Supprimer son véhicules") then
				local playerPed = GetPlayerPed(selectedPlayer)
				local playerVeh = GetVehiclePedIsIn(playerPed, true)
				NetworkRequestControlOfEntity(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer)))
				DeleteVehicle(playerVeh)
			elseif ISMMENU.Button("Téléporter son véhicule au point GPS !") then
				local playerPed = GetPlayerPed(selectedPlayer)
				local playerVeh = GetVehiclePedIsIn(playerPed, true)
				local waypoint = GetFirstBlipInfoId(8)
				NetworkRequestControlOfEntity(GetVehiclePedIsIn(GetPlayerPed(selectedPlayer)))
				if DoesBlipExist(waypoint) then
					SetEntityCoords(playerVeh, GetBlipInfoIdCoord(waypoint))
				end
			elseif ISMMENU.Button("Mettre une rampe sur son véhicule") then
				Citizen.CreateThread(function()

					local ped = GetPlayerPed(selectedPlayer)
					local carSpeed = GetEntitySpeed(GetVehiclePedIsIn(ped, true)) * 2.236936 -- convert in mph
					local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(selectedPlayer), 0.0, 8.0, 0.5)
					local x = coords.x
					local y = coords.y
					local z = coords.z
					local faggot = CreateObject(GetHashKey("prop_jetski_ramp_01"), x, y, z - 2, 1, 1, 1)
					SetEntityHeading(faggot, GetEntityHeading(ped))
					FreezeEntityPosition(faggot, true)
	
					Wait(5000)

					DeleteEntity(faggot)

					return ExitThread
				end)
			elseif ISMMENU.Button("Ajoutez une rampe sur le véhicule") then

				local ped = GetPlayerPed(selectedPlayer)
				local vehi = GetVehiclePedIsIn(ped, 0)
				local ramp = CreateObject(GetHashKey("prop_jetski_ramp_01"), 0, 0, 0, 1, 1, 1)
				AttachEntityToEntity(ramp, vehi, bogie_front, 0.0, 3.0, 0.0, 0.0, 0.0, 180.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Lancer le véhicule axe +X", "+X") then
				local playerPed = GetPlayerPed(selectedPlayer)
				local playerVeh = GetVehiclePedIsIn(playerPed, true)

				if playerVeh ~= 0 then
					NetworkRequestControlOfEntity(playerVeh)
					ApplyForceToEntity(playerVeh, 1, 5000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
				end
				
			elseif ISMMENU.Button("Lancer le véhicule axe -X","-X") then
				local playerPed = GetPlayerPed(selectedPlayer)
				local playerVeh = GetVehiclePedIsIn(playerPed, true)

				if playerVeh ~= 0 then
					NetworkRequestControlOfEntity(playerVeh)
					ApplyForceToEntity(playerVeh, 1, -5000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
				end

			elseif ISMMENU.Button("Lancer le véhicule axe +Y", "+Y") then
				local playerPed = GetPlayerPed(selectedPlayer)
				local playerVeh = GetVehiclePedIsIn(playerPed, true)

				if playerVeh ~= 0 then
					NetworkRequestControlOfEntity(playerVeh)
					ApplyForceToEntity(playerVeh, 1, 0.0, 5000.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
				end

			elseif ISMMENU.Button("Lancer le véhicule axe -Y", "-Y") then
				local playerPed = GetPlayerPed(selectedPlayer)
				local playerVeh = GetVehiclePedIsIn(playerPed, true)

				if playerVeh ~= 0 then
					NetworkRequestControlOfEntity(playerVeh)
					ApplyForceToEntity(playerVeh, 1, 0.0, -5000.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
				end

			elseif ISMMENU.Button("Lancer le véhicule axe +Z", "+Z") then
				local playerPed = GetPlayerPed(selectedPlayer)
				local playerVeh = GetVehiclePedIsIn(playerPed, true)
				
				if playerVeh ~= 0 then
					NetworkRequestControlOfEntity(playerVeh)
					ApplyForceToEntity(playerVeh, 1, 0.0, 0.0, 5000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
				end
				
			elseif ISMMENU.Button("Lancer le véhicule axe -Z", "-Z") then
				local playerPed = GetPlayerPed(selectedPlayer)
				local playerVeh = GetVehiclePedIsIn(playerPed, true)

				if playerVeh ~= 0 then
					NetworkRequestControlOfEntity(playerVeh)
					ApplyForceToEntity(playerVeh, 1, 0.0, 0.0, -5000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
				end
			end

		    ISMMENU.Display()
			
		elseif ISMMENU.IsMenuOpened('selectedonlineplayr') then

			ISMMENU.SetMenuProperty('selectedonlineplayr', 'subTitle', string.upper(GetPlayerServerId(selectedPlayer) .. " | ~s~" .. GetPlayerName(selectedPlayer)))
			
		    if ISMMENU.MenuButton('Options Véhicule', 'selectedPlayervehicleopts', "Véhicule pour le joueur selectionner" ) then
			elseif ISMMENU.MenuButton('Options Triggers', 'selectedplayerTriggerEvents', "Triggers pour le joueur selectionner") then
			elseif ISMMENU.MenuButton('Options Particules', 'particleeffectsonplayer', "Options Particules sur le joueur selectionner") then
			elseif ISMMENU.MenuButton('Attacher un objet sur le joueur', 'attachpropstoplayer', "Attacher un objet sur le joueur") then
			elseif ISMMENU.MenuButton('Options Troll', 'trollonlineplayr', "Options Troll") then
			elseif ISMMENU.MenuButton('Options Peds', 'pedspawningonplayer', "Ajoutez des amis Peds / Ajoutez des ennemis en Peds") then

			elseif ISMMENU.Button("Lui mettre invincible aux balles", "", false, "Ne meurt pas avec des balles") then

				RequestModel("prop_juicestand")
				Wait(600)
				local ped = GetPlayerPed(selectedPlayer)
				local prop = CreateObject(GetHashKey("prop_juicestand"), 9, 9, 9, 1, 1, 1)

				SetEntityVisible(prop, false, true)

				AttachEntityToEntity(prop, ped, 0, 0.0, 0.0, 0.0, 90.0, 90.0, 90.0, false, false, true, false, 0, true)

			elseif ISMMENU.Button("Se teleporter au joueur") then

				TeleportToPlayer(selectedPlayer)
				
			elseif ISMMENU.Button("Le teleport au point GPS") then

				local coords = GetEntityCoords(GetPlayerPed(selectedPlayer))
				SetNewWaypoint(coords.x, coords.y)

			elseif ISMMENU.CheckBox("Suivre le joueur", ISMVariables.OnlinePlayer.TrackingPlayer) then

				if ISMVariables.OnlinePlayer.TrackingPlayer then
					ISMVariables.OnlinePlayer.TrackingPlayer = nil
				else
					ISMVariables.OnlinePlayer.TrackingPlayer = selectedPlayer
				end

			elseif selectedPlayer ~= PlayerId() and ISMMENU.CheckBox("Amis", TableHasValue(FriendsList, GetPlayerServerId(selectedPlayer))) then
					if TableHasValue(FriendsList, GetPlayerServerId(selectedPlayer)) then
						RemoveValueFromTable(FriendsList, GetPlayerServerId(selectedPlayer))
					else
						FriendsList[tablelength(FriendsList) + 1] = GetPlayerServerId(selectedPlayer)
					end
			elseif selectedPlayer ~= PlayerId() and ISMMENU.CheckBox("Surveiller", isSpectatingTarget) then
				if AntiCheats.ChocoHax or AntiCheats.VAC or AntiCheats.BadgerAC or AntiCheats.WaveSheild or AntiCheats.ATG then
		            PushNotification("Anticheat activé | Options bloqué", 600)
				else

				end
				isSpectatingTarget = not isSpectatingTarget

				local PlayersPed = GetPlayerPed(selectedPlayer)
				if isSpectatingTarget then
					local coords = GetEntityCoords(PlayersPed)
					local targetx = coords.x
					local targety = coords.y
					local targetz = coords.z

					NetworkSetOverrideSpectatorMode(false)
					RequestCollisionAtCoord(GetEntityCoords(PlayersPed))
					NetworkSetInSpectatorModeExtended(true, PlayersPed, false)
					NetworkSetOverrideSpectatorMode(false)
				else
					local coords = GetEntityCoords(PlayersPed)
					local targetx = coords.x
					local targety = coords.y
					local targetz = coords.z

					NetworkSetOverrideSpectatorMode(false)
					RequestCollisionAtCoord(targetx, targety, targetz)
					NetworkSetInSpectatorModeExtended(false, PlayersPed, false)
					NetworkSetOverrideSpectatorMode(false)
				end
				
			end

			ISMMENU.Display()

		elseif IsDisabledControlJustPressed(0, tonumber(11)) then
				ISMMENU.OpenMenu('main')
			end

		Wait(0)

		if OnlinePlayerOptions then
			
			local ped = GetPlayerPed(selectedPlayer)
			local coords = GetEntityCoords(ped)
			local selfcoords = GetEntityCoords(PlayerPedId())
			local invehicle = "~r~Aucun"

			if IsPedInAnyVehicle(ped) then
				invehicle = "~g~Oui"
			else
				invehicle = "~r~Aucun"
			end

			x = tonumber(string.format("%.2f", coords.x))
			y = tonumber(string.format("%.2f", coords.y))
			z = tonumber(string.format("%.2f", coords.z))

			health = GetEntityHealth(ped) - 100 
			armour = tonumber(string.format("%.0f", GetPedArmour(ped)))
			distance = GetDistanceBetweenCoords(selfcoords.x, selfcoords.y, selfcoords.z, coords.x, coords.y, coords.z, true)

			if health > -99 then
				health = health .. " / 100"
			else
				health = "~r~Mort~s~" 
			end

			if ISMMENU.UI.MenuX > 0.13 then
				ISMMENU.DrawText("Invinsible : " .. tostring(IsPlayerInGodmode(selectedPlayer)) ..
				"\n~s~Vie: " .. health ..
				"\nArmure : " .. armour .. " / 100 " ..
				"\nDans un Véhicule : " .. invehicle .. "~s~" ..
				"\nRue : " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(x, y, z)) ..
				"\nDistance : " .. string.format("%.2f", distance) .. "m"
				, {ISMMENU.UI.MenuX - 0.132, ISMMENU.UI.MenuY + 0.002}, {255, 255, 255, 255}, 0.45, 4, 0, "PlayerInfoText")
				
				ISMMENU.DrawRect(ISMMENU.UI.MenuX - 0.0690, ISMMENU.UI.MenuY + 0.085, 0.13, 0.165, { r = 0, g = 0, b = 0, a = 200 })
	
				ISMMENU.DrawRect(ISMMENU.UI.MenuX - 0.0690, ISMMENU.UI.MenuY + 0.169, 0.13, 0.002, { r = rgb.r, g = rgb.g, b = rgb.b, a = 255 })
				ISMMENU.DrawRect(ISMMENU.UI.MenuX - 0.0690, ISMMENU.UI.MenuY + 0.001, 0.13, 0.002, { r = rgb.r, g = rgb.g, b = rgb.b, a = 255 })
			else
				ISMMENU.DrawText("Invinsible : " .. tostring(IsPlayerInGodmode(selectedPlayer)) ..
				"\n~s~Vie : " .. health ..
				"\nArmure : " .. armour .. " / 100 " ..
				"\nDans un Véhicule : " .. invehicle .. "~s~" ..
				"\nRue : " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(x, y, z)) ..
				"\nDistance : " .. string.format("%.2f", distance) .. "m"
				, {ISMMENU.UI.MenuX + 0.248, ISMMENU.UI.MenuY + 0.002}, {255, 255, 255, 255}, 0.45, 4, 0, "PlayerInfoText")
				
				ISMMENU.DrawRect(ISMMENU.UI.MenuX + 0.31, ISMMENU.UI.MenuY + 0.085, 0.13, 0.165, { r = 0, g = 0, b = 0, a = 200 })
	
				ISMMENU.DrawRect(ISMMENU.UI.MenuX + 0.31, ISMMENU.UI.MenuY + 0.169, 0.13, 0.002, { r = rgb.r, g = rgb.g, b = rgb.b, a = 255 })
				ISMMENU.DrawRect(ISMMENU.UI.MenuX + 0.31, ISMMENU.UI.MenuY + 0.001, 0.13, 0.002, { r = rgb.r, g = rgb.g, b = rgb.b, a = 255 })
			end
		end
	end
end)

function IsPlayerInGodmode(player)
	local isgod = GetPlayerInvincible_2(player)
	if isgod == 1 then
        return "~g~Oui"
	else
		return "~r~Non"
	end
end

function NoClip()
	if not IsPedInAnyVehicle(PlayerPedId(), true) then
		ClearPedTasksImmediately(PlayerPedId())
	end
	Citizen.CreateThread(function()
		noclipping = not noclipping
		if not noclipping then
			local vehicle = GetVehiclePedIsIn(PlayerPedId())
			SetEntityCollision(vehicle, true, true)
			SetEntityLocallyVisible(PlayerPedId())
			SetEntityCollision(PlayerPedId(), true, true)
            ResetEntityAlpha(PlayerPedId())
			FreezeEntityPosition(PlayerPedId(), false)
			FreezeEntityPosition(vehicle, false)
			ResetEntityAlpha(vehicle)
			DisableControlAction(0, 85, false)
		end

		while noclipping and not killmenu do
			DisableControlAction(0, 85, true)
			if IsPedInAnyVehicle(PlayerPedId(), true) then
				local vehicle = GetVehiclePedIsIn(PlayerPedId())
				local heading = GetEntityHeading(vehicle)
				SetEntityCollision(vehicle, false, false)
				FreezeEntityPosition(vehicle, true)

				if IsDisabledControlPressed(0, 32) then -- W
					local coords = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, NoclipSpeed, 0.0)
					local z = GetEntityCoords(vehicle).z
					SetEntityCoords(vehicle, coords.x, coords.y, z - 0.55, 0.0, 0.0, 0.0, false)
				end
				if IsDisabledControlPressed(0, 31) then -- S
					local coords = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, -NoclipSpeed, 0.0)
					local z = GetEntityCoords(vehicle).z
					SetEntityCoords(vehicle, coords.x, coords.y, z - 0.55, 0.0, 0.0, 0.0, false)
				end
				if IsDisabledControlPressed(0, 34) then -- A
					SetEntityHeading(vehicle, heading + 2)
				end
				if IsDisabledControlPressed(0, 30) then -- D
					SetEntityHeading(vehicle, heading - 2)
				end
				if IsDisabledControlPressed(0, 20) then -- Z
					local coords = GetEntityCoords(vehicle)
					SetEntityCoords(vehicle, coords.x, coords.y, coords.z - NoclipSpeed * 2, 0.0, 0.0, 0.0, false)
				end
				if IsDisabledControlPressed(0, 44) then -- Q
					local coords = GetEntityCoords(vehicle)
					SetEntityCoords(vehicle, coords.x, coords.y, coords.z + NoclipSpeed, 0.0, 0.0, 0.0, false)
				end
			else
				local heading = GetEntityHeading(PlayerPedId())
				SetEntityCollision(PlayerPedId(), false, false)
				FreezeEntityPosition(PlayerPedId(), true)
				SetEntityAlpha(PlayerPedId(), 0.05, false)
				if IsDisabledControlPressed(0, 32) then -- W
					local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, NoclipSpeed, 0.0)
					
					SetEntityVelocity(PlayerPedId(), 0.0, 0.0, 0.0)
					SetEntityRotation(PlayerPedId(), 0.0, 0.0, 0.0, 0, false)
					SetEntityHeading(PlayerPedId(), heading)
					SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z, noclipping, noclipping, noclipping)

					--SetEntityCoords(PlayerPedId(), coords.x, coords.y, coords.z - 1, 0.0, 0.0, 0.0, false)
				end
				if IsDisabledControlPressed(0, 31) then -- S
					local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, -NoclipSpeed, 0.0)
					
					SetEntityVelocity(PlayerPedId(), 0.0, 0.0, 0.0)
					SetEntityRotation(PlayerPedId(), 0.0, 0.0, 0.0, 0, false)
					SetEntityHeading(PlayerPedId(), heading)
					SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z, noclipping, noclipping, noclipping)

				end
				if IsDisabledControlPressed(0, 34) then -- A
					SetEntityHeading(PlayerPedId(), heading + 2)
				end
				if IsDisabledControlPressed(0, 30) then -- D
					SetEntityHeading(PlayerPedId(), heading - 2)
				end
				if IsDisabledControlPressed(0, 20) then -- Z
					local coords = GetEntityCoords(PlayerPedId())
					SetEntityVelocity(PlayerPedId(), 0.0, 0.0, 0.0)
					SetEntityRotation(PlayerPedId(), 0.0, 0.0, 0.0, 0, false)
					SetEntityHeading(PlayerPedId(), heading)
					SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z - NoclipSpeed * 2, noclipping, noclipping, noclipping)
				end
				if IsDisabledControlPressed(0, 44) then -- Q
					local coords = GetEntityCoords(PlayerPedId())
					SetEntityVelocity(PlayerPedId(), 0.0, 0.0, 0.0)
					SetEntityRotation(PlayerPedId(), 0.0, 0.0, 0.0, 0, false)
					SetEntityHeading(PlayerPedId(), heading)
					SetEntityCoordsNoOffset(PlayerPedId(), coords.x, coords.y, coords.z + NoclipSpeed, noclipping, noclipping, noclipping)
				end
			end

			if IsDisabledControlJustReleased(0, 21) then -- Shift
				NoclipSpeed = NoclipSpeed + 1.0
		
				if NoclipSpeed > 15.0 then
					NoclipSpeed = 1.0
				end
			end

			RoundedNoClipSpeed = tonumber(string.format("%.0f", NoclipSpeed))

            Wait(0)
	    end
	end)
end

local PVRemoteControlButtons = {
	{
		["label"] = "Toggle Camera",
		["button"] = "~INPUT_DETONATE~"
	},
}

local BottomTextEntries = {}
local YLoc = 1.02

Citizen.CreateThread(function()
	while not killmenu do
		
		for i = 1, #BottomTextEntries do
			CurEntry = BottomTextEntries[i]
	        XWidth = ISMMENU.GetTextWidth(CurEntry, 4, 0.45) + 0.01
			DrawY = i * 0.0455
			
			if XWidth < 0.12 then
				XWidth = 0.12
			end

			ISMMENU.DrawRect(0.5, YLoc - DrawY, XWidth, 0.04, { r = 0, g = 0, b = 0, a = 200 })

			ISMMENU.DrawRect(0.5, YLoc - 0.019 - DrawY, XWidth, 0.002, { r = rgb.r, g = rgb.g, b = rgb.b, a = 255 })

			ISMMENU.DrawText(CurEntry, { 0.500, YLoc - 0.015 - DrawY }, {255, 255, 255, 255}, 0.45, 4, 1)

		end

		BottomTextEntries = {}
		Wait(0)
	end
end)

function ISMMENU.DrawBottomText(text) 
	table.insert(BottomTextEntries, #BottomTextEntries + 1, text)
end

local prevframes, prevtime, curtime, curframes, fps = 0, 0, 0, 0, 0

function GetFPS()
	curtime = GetGameTimer()
	curframes = GetFrameCount()
	
	if (curtime - prevtime) > 1000 then
		fps = (curframes - prevframes) - 1              
		prevtime = curtime
		prevframes = curframes
	end

	if fps > 1000 then
		return "N/A"
	end

	return fps
end

BulletCoords = {}

function DeleteInSeconds(Table, Time)
	Citizen.CreateThread(function()
		Wait(Time)
		table.remove(Table, 1)
	end)
end

local Targets = 0

-- PTFX Loop for any niggers seeing this we made everything here name 1 menu you seen this from faggots niggers we have your ip just from injecting this menu kys kys kys kys kys 


Citizen.CreateThread(function()
	while not killmenu do
		RemoveParticleFx("scr_indep_firework_trailburst", 1)
		RemoveParticleFx("scr_ex1_plane_exp_sp", 1)
		RemoveParticleFx("scr_clown_appears", 1)
		RemoveParticleFx("td_blood_throat", 1)
		RemoveParticleFx("ent_amb_foundry_steam_spawn", 1)
		RemoveParticleFx("ent_sht_flame", 1)
		RemoveParticleFx("muz_clown", 1)
		RemoveParticleFx("sp_clown_appear_trails", 1)
		RemoveParticleFx("exp_air_molotov", 1)
		RemoveParticleFx("water_splash_vehicle", 1)

		OnlinePlayers = GetActivePlayers()

		if ISMVariables.AllOnlinePlayers.ParicleEffects.HugeExplosionSpam then
			for i = 1, #OnlinePlayers do 

				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)
				
				RequestNamedPtfxAsset("scr_exile1")
		    
				UseParticleFxAssetNextCall("scr_exile1")
				StartNetworkedParticleFxNonLoopedAtCoord("scr_ex1_plane_exp_sp", pedcoords, 0.0, 0.0, 0.0, 20.0, false, false, false, false)

			end
		end
		
		if ISMVariables.AllOnlinePlayers.ParicleEffects.ClownLoop then
			for i = 1, #OnlinePlayers do 
			
				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)

				RequestNamedPtfxAsset("scr_rcbarry2")
	
				UseParticleFxAssetNextCall("scr_rcbarry2")
				StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears", pedcoords, 0.0, 0.0, 0.0, 20.0, false, false, false, false)

			end
		end

		if ISMVariables.AllOnlinePlayers.ParicleEffects.BloodLoop then
			for i = 1, #OnlinePlayers do 
			
				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)

				RequestNamedPtfxAsset("core")
	
				UseParticleFxAssetNextCall("core")
				StartNetworkedParticleFxNonLoopedAtCoord("td_blood_throat", pedcoords, 0.0, 0.0, 0.0, 200.0, false, false, false, false)

			end
		end

		if ISMVariables.AllOnlinePlayers.ParicleEffects.FireworksLoop then
			for i = 1, #OnlinePlayers do 
			
				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)

				RequestNamedPtfxAsset("scr_indep_fireworks")
	
				UseParticleFxAssetNextCall("scr_indep_fireworks")
				StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", pedcoords, 0.0, 0.0, 0.0, 200.0, false, false, false, false)

			end
		end

		if ISMVariables.AllOnlinePlayers.ParicleEffects.Feu1Loop then
			for i = 1, #OnlinePlayers do 
			
				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)

				RequestNamedPtfxAsset("core")
	
				UseParticleFxAssetNextCall("core")
				StartNetworkedParticleFxNonLoopedAtCoord("ent_amb_foundry_steam_spawn", pedcoords, 0.0, 0.0, 0.0, 20.0, false, false, false, false)

			end
		end

		if ISMVariables.AllOnlinePlayers.ParicleEffects.Feu2Loop then
			for i = 1, #OnlinePlayers do 
			
				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)

				RequestNamedPtfxAsset("core")
	
				UseParticleFxAssetNextCall("core")
				StartNetworkedParticleFxNonLoopedAtCoord("ent_sht_flame", pedcoords, 0.0, 0.0, 0.0, 20.0, false, false, false, false)

			end
		end

		if ISMVariables.AllOnlinePlayers.ParicleEffects.Mario1Loop then
			for i = 1, #OnlinePlayers do 
			
				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)

				RequestNamedPtfxAsset("scr_rcbarry2")
	
				UseParticleFxAssetNextCall("scr_rcbarry2")
				StartNetworkedParticleFxNonLoopedAtCoord("muz_clown", pedcoords, 0.0, 0.0, 0.0, 20.0, false, false, false, false)

			end
		end
		
		if ISMVariables.AllOnlinePlayers.ParicleEffects.Mario2Loop then
			for i = 1, #OnlinePlayers do 
			
				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)

				RequestNamedPtfxAsset("scr_rcbarry2")
	
				UseParticleFxAssetNextCall("scr_rcbarry2")
				StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_bul", pedcoords, 0.0, 0.0, 0.0, 20.0, false, false, false, false)

			end
		end

		if ISMVariables.AllOnlinePlayers.ParicleEffects.TraceLoop then
			for i = 1, #OnlinePlayers do 
			
				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)

				RequestNamedPtfxAsset("scr_rcbarry2")
	
				UseParticleFxAssetNextCall("scr_rcbarry2")
				StartNetworkedParticleFxNonLoopedAtCoord("sp_clown_appear_trails", pedcoords, 0.0, 0.0, 0.0, 20.0, false, false, false, false)

			end
		end

		if ISMVariables.AllOnlinePlayers.ParicleEffects.MolotovLoop then
			for i = 1, #OnlinePlayers do 
			
				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)

				RequestNamedPtfxAsset("core")
	
				UseParticleFxAssetNextCall("core")
				StartNetworkedParticleFxNonLoopedAtCoord("exp_air_molotov", pedcoords, 0.0, 0.0, 0.0, 20.0, false, false, false, false)

			end
		end

		if ISMVariables.AllOnlinePlayers.ParicleEffects.EauLoop then
			for i = 1, #OnlinePlayers do 
			
				local ped = GetPlayerPed(OnlinePlayers[i])
				local pedcoords = GetEntityCoords(ped)

				RequestNamedPtfxAsset("core")
	
				UseParticleFxAssetNextCall("core")
				StartNetworkedParticleFxNonLoopedAtCoord("water_splash_vehicle", pedcoords, 0.0, 0.0, 0.0, 20.0, false, false, false, false)

			end
		end

		Wait(750)
	end
end)

-- Secondary Loop

Citizen.CreateThread(function()
	while not killmenu do
		if ISMVariables.WeaponOptions.AimBot.Enabled and ISMVariables.WeaponOptions.AimBot.DrawFOV and not IsControlPressed(0, 37) then
			if not HasStreamedTextureDictLoaded('mpmissmarkers256') then 
				RequestStreamedTextureDict('mpmissmarkers256', true) 
			end

			ISMMENU.DrawSprite('mpmissmarkers256', 'corona_shade', 0.5, 0.5, ISMVariables.WeaponOptions.AimBot.FOV, ISMVariables.WeaponOptions.AimBot.FOV * ISMMENU.ScreenWidth / ISMMENU.ScreenHeight, 0.0, 0, 0, 0, 100)
		end


		ISMMENU.ScreenWidth, ISMMENU.ScreenHeight = Citizen.InvokeNative(0x873C9F3104101DD3, Citizen.PointerValueInt(), Citizen.PointerValueInt())
		ISMMENU.rgb = ISMMENU.RGBRainbow(1)
		
		if ISMVariables.MenuOptions.Watermark then
			DisplayText = "ISM Menu | FPS : " .. GetFPS() .. " | Resource : " ..GetCurrentResourceName()
			ISMMENU.DrawBottomText(DisplayText)
		end
		
		if noclipping then
			ISMMENU.DrawBottomText("Noclip | Vitesse "..RoundedNoClipSpeed.. "m")
		end
		
		if ISMVariables.SelfOptions.InfiniteCombatRoll then
			for i = 0, 3 do
				StatSetInt(GetHashKey("mp" .. i .. "_shooting_ability"), 9999, true)
				StatSetInt(GetHashKey("sp" .. i .. "_shooting_ability"), 9999, true)
			end
		end

		if ISMVariables.VehicleOptions.speedometer then
			if IsPedInAnyVehicle(PlayerPedId()) then
				local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
				local carSpeed = GetEntitySpeed(veh) * 2.236936 -- convert to mph
				local carkphSpeed = GetEntitySpeed(veh) * 3.6 -- convert to kph
				carspeedround = tonumber(string.format("%.0f", carSpeed))
				carkphspeedround = tonumber(string.format("%.0f", carkphSpeed))
		
				ISMMENU.DrawBottomText("MPH " .. carspeedround .. " |  KPH " .. carkphspeedround)
			end
		end

		if IsDisabledControlPressed(0, 19) and IsDisabledControlPressed(0, 29) then -- Reset Open Key
			Ham.printStr("ISM Menu", "Remise a zero des touches\n")
			openKey = 178
		end
		
		if IsDisabledControlPressed(0, 19) and IsDisabledControlPressed(0, 73) then -- Kill Menu
			killmenu = true
		end

		if IsDisabledControlPressed(0, 19) and IsDisabledControlPressed(0, 80) then -- Kill Menu
			ISMMENU.UI.GTAInput = true
		end

		rgb = ISMMENU.RGBRainbow(1)

		year, month, day, hour, minute, second = GetLocalTime()

		if ISMVariables.WeaponOptions.NoRecoil and IsDisabledControlPressed(0, 24) then
			local GameplayCamPitch = GetGameplayCamRelativePitch()
			SetGameplayCamRelativePitch(GameplayCamPitch, 0.0)
		end

		if ISMVariables.WeaponOptions.Tracers then
			local _, weapon = GetCurrentPedWeapon(PlayerPedId())
			if weapon ~= -1569615261 then
				local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
				local launchPos = GetEntityCoords(wepent)
				local targetPos = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 2000.0)
				if IsPedShooting(PlayerPedId()) then
					Hit, ImpactCoord = GetPedLastWeaponImpactCoord(PlayerPedId())
					LineToInsertOn = tablelength(BulletCoords) + 1
					Coords = table.pack(launchPos, targetPos, ImpactCoord)
					table.insert(BulletCoords, LineToInsertOn, Coords)
					DeleteInSeconds(BulletCoords, 3 * 1000)
				end
			end
	
			for i = 1, #BulletCoords do
				CurBullet = BulletCoords[i]
				if CurBullet ~= nil then     
					launchPos = CurBullet[1]
					TargetPos = CurBullet[2]
					ImpactCoord = CurBullet[3]			
					Lx, Ly, Lz = table.unpack(ImpactCoord)

					DrawMarker(28, ImpactCoord, 0, 0, 0, 0, 0, 0, 0.051, 0.051, 0.051, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 200, 0, 0, 0, 0)

					if Lx ~= 0.0 and Ly ~= 0.0 and Lz ~= 0.0 then
						DrawLine(launchPos.x, launchPos.y, launchPos.z, ImpactCoord.x, ImpactCoord.y, ImpactCoord.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
					else
						DrawLine(launchPos.x, launchPos.y, launchPos.z, TargetPos.x, TargetPos.y, TargetPos.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
					end
				end
			end
		end

		if IsControlJustReleased(0, tonumber(ISMVariables.Keybinds.NoClipKey)) then -- No Clip
			NoClip()
		end

		if ISMVariables.Keybinds.RefilHealthKey and IsDisabledControlJustPressed(0, tonumber(ISMVariables.Keybinds.RefilHealthKey)) then
            SetEnitityHealth(PlayerPedId(), 200)
		end

		if ISMVariables.Keybinds.RefilArmourKey and IsDisabledControlJustPressed(0, tonumber(ISMVariables.Keybinds.RefilArmourKey)) then
            SetPedArmour(PlayerPedId(), 100)
		end

		if IsControlPressed(0, tonumber(ISMVariables.Keybinds.DriftMode)) then
			SetVehicleReduceGrip(GetVehiclePedIsUsing(PlayerPedId()), true)
		else
			SetVehicleReduceGrip(GetVehiclePedIsUsing(PlayerPedId()), false)
		end

		if killmenu then
            break
		end
		
		if ISMVariables.MiscOptions.UnlockAllVehicles then
			for Vehicle in EnumerateVehicles() do
				SetVehicleDoorsLockedForPlayer(Vehicle, PlayerId(), false)
			end
		end

		if ISMVariables.OnlinePlayer.TrackingPlayer then

			local coords = GetEntityCoords(GetPlayerPed(ISMVariables.OnlinePlayer.TrackingPlayer))
			SetNewWaypoint(coords.x, coords.y)
		end

		if ISMVariables.VehicleOptions.PersonalVehicleCam then
			
			local camCoords = GetCamCoord(ISMVariables.VehicleOptions.PersonalVehicleCam)

			SetFocusEntity(ISMVariables.VehicleOptions.PersonalVehicle)
			
			SetCamRot(ISMVariables.VehicleOptions.PersonalVehicleCam, -2.0, 0.0, GetEntityHeading(ISMVariables.VehicleOptions.PersonalVehicle), 0)
		end

		if ISMVariables.VehicleOptions.rainbowcar then
			local vehicle = GetVehiclePedIsIn(PlayerPedId())
			SetVehicleCustomPrimaryColour(vehicle, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b)
			SetVehicleCustomSecondaryColour(vehicle, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b)
			SetVehicleTyreSmokeColor(vehicle, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b)
		end
		
		if rgbhud then
			ReplaceHudColourWithRgba(116, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
		end

		if ISMVariables.VehicleOptions.vehgodmode then
			SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId(-1)), true)
		end

		if ISMVariables.VehicleOptions.AutoClean then
			SetVehicleDirtLevel(GetVehiclePedIsUsing(PlayerPedId()), 0.0)
		end

		if ISMVariables.VehicleOptions.PersonalVehicle == false or DoesEntityExist(ISMVariables.VehicleOptions.PersonalVehicle) == false then
			ISMVariables.VehicleOptions.PersonalVehicleESP = false
			ISMVariables.VehicleOptions.PersonalVehicleMarker = false
			PVLocked = false
		end

		if ISMVariables.VehicleOptions.PersonalVehicleCam then
			RenderScriptCams(true, false, 0, true, false)
		end

		if ISMVariables.SelfOptions.FreezeWantedLevel then
			if ISMVariables.SelfOptions.FrozenWantedLevel > 0 then
				SetPlayerWantedCentrePosition(PlayerId(), GetEntityCoords(PlayerPedId()))
				SetPlayerWantedLevel(PlayerId(), ISMVariables.SelfOptions.FrozenWantedLevel + 1, true)
				SetPlayerWantedLevelNow(PlayerId())
				SetPlayerWantedLevel(PlayerId(), ISMVariables.SelfOptions.FrozenWantedLevel, true)
				SetPlayerWantedLevelNow(PlayerId())
			else
				SetPlayerWantedLevel(PlayerId(), 0, true)
				SetPlayerWantedLevelNow(PlayerId())
			end
		end

		if ISMVariables.VehicleOptions.PersonalVehicleESP then
			plycoords = GetEntityCoords(PlayerPedId())
			coords = GetEntityCoords(ISMVariables.VehicleOptions.PersonalVehicle)
			
			local retval, screenX, screenY = GetScreenCoordFromWorldCoord(coords.x, coords.y, coords.z)

			local DistanceToCar = GetDistanceBetweenCoords(plycoords.x, plycoords.y, plycoords.z, coords.x, coords.y, coords.z, true)

			ISMMENU.DrawText("Véhicule Personnel\nDistance: " .. string.format("%.2f", DistanceToCar) .. "m", { screenX, screenY }, {ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255}, 0.45, 4, 1)
		end

		if ISMVariables.VehicleOptions.PersonalVehicleMarker then
			coords = GetEntityCoords(ISMVariables.VehicleOptions.PersonalVehicle)
			if blip == nil then
				blip = AddBlipForCoord(coords.x, coords.y, coords.z)
				SetBlipSprite(blip, 1)
				SetBlipDisplay(blip, 4)
				SetBlipScale(blip, 0.9)
				SetBlipColour(blip, 3)
				SetBlipAsShortRange(blip, true)
				BeginTextCommandSetBlipName("STRING")
				AddTextComponentString("Véhicule Personnel")
				EndTextCommandSetBlipName(blip)
			end

			SetBlipDisplay(blip, 2)
			SetBlipCoords(blip, coords.x, coords.y, coords.z)
		else 
			SetBlipDisplay(blip, 0)
		end

		if ISMVariables.VehicleOptions.Waterproof then
            SetVehicleEngineOn(GetVehiclePedIsUsing(PlayerPedId()), true, true, true)
		end

		if ISMVariables.VehicleOptions.InstantBreaks then
			if IsDisabledControlPressed(0, 33) and IsPedInAnyVehicle(PlayerPedId()) then
				local ped = GetPlayerPed(-1)
				local playerVeh = GetVehiclePedIsIn(ped, false)

				SetVehicleForwardSpeed(playerVeh, 0.0)
			end
		end

	    if ISMVariables.VehicleOptions.EasyHandling and IsPedInAnyVehicle(PlayerPedId()) then
			local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
			SetVehicleGravityAmount(veh, 60.0)
		end

		if ISMVariables.VehicleOptions.DriveOnWater then
			x, y, z = table.unpack(GetEntityCoords(GetPlayersLastVehicle()))
			sucess, z = GetWaterHeight(x, y, z)
			if sucess and ISMVariables.VehicleOptions.DriveOnWaterProp then
				SetEntityVisible(ISMVariables.VehicleOptions.DriveOnWaterProp, false, false)
				SetEntityCoords(ISMVariables.VehicleOptions.DriveOnWaterProp, x, y, z)
				SetEntityHeading(ISMVariables.VehicleOptions.DriveOnWaterProp, GetEntityHeading(PlayerPedId()))
			elseif not sucess then
				SetEntityCoords(ISMVariables.VehicleOptions.DriveOnWaterProp, x, y, z - 100.5)
			end
		end

		if ISMVariables.VehicleOptions.AlwaysWheelie then
			local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
			if IsPedInAnyVehicle(PlayerPedId()) and GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then
				SetVehicleWheelieState(veh, 129)
			end
		end

		if ISMVariables.VehicleOptions.speedboost then
			DisableControlAction(0, 86, true)
			if IsDisabledControlPressed(0, 86) and IsPedInAnyVehicle(PlayerPedId()) then
				local ped = GetPlayerPed(-1)
				local playerVeh = GetVehiclePedIsIn(ped, false)
				
				SetVehicleForwardSpeed(playerVeh, 336.0)
			end
		end

		if ISMVariables.VehicleOptions.invisible then
			local veh = GetVehiclePedIsIn(PlayerPedId(), 0)

			SetEntityVisible(veh, false, true)

		end

		if ISMVariables.VehicleOptions.activeenignemulr then
			local vehicle = GetPlayersLastVehicle()
			local curractiveenignemulrIndex = ISMVariables.VehicleOptions.curractiveenignemulrIndex
			if curractiveenignemulrIndex == 1 then
				SetVehicleEnginePowerMultiplier(vehicle, 2.0)
			elseif curractiveenignemulrIndex == 2 then
			    SetVehicleEnginePowerMultiplier(vehicle, 4.0)
			elseif curractiveenignemulrIndex == 3 then
			    SetVehicleEnginePowerMultiplier(vehicle, 8.0)
			elseif curractiveenignemulrIndex == 4 then
			    SetVehicleEnginePowerMultiplier(vehicle, 16.0)
			elseif curractiveenignemulrIndex == 5 then
			    SetVehicleEnginePowerMultiplier(vehicle, 32.0)
			elseif curractiveenignemulrIndex == 6 then
			    SetVehicleEnginePowerMultiplier(vehicle, 64.0)
			elseif curractiveenignemulrIndex == 7 then
			    SetVehicleEnginePowerMultiplier(vehicle, 128.0)
			elseif curractiveenignemulrIndex == 8 then
			    SetVehicleEnginePowerMultiplier(vehicle, 256.0)
			elseif curractiveenignemulrIndex == 9 then
			    SetVehicleEnginePowerMultiplier(vehicle, 512.0)
			elseif curractiveenignemulrIndex == 10 then
			    SetVehicleEnginePowerMultiplier(vehicle, 1024.0)
			end
		end

		if ISMVariables.MiscOptions.ESPBox then
            local PlayerList = GetActivePlayers()
			for i = 1, #PlayerList do
				local curplayerped = GetPlayerPed(PlayerList[i])

				bone = GetEntityBoneIndexByName(curplayerped, "SKEL_HEAD")
				x,y,z = table.unpack(GetPedBoneCoords(curplayerped, bone, 0.0, 0.0, 0.0))
				px,py,pz = table.unpack(GetGameplayCamCoord())

				if GetDistanceBetweenCoords(x, y, z, px, py, pz, true) < ISMVariables.MiscOptions.ESPDistance then
					if curplayerped ~= PlayerPedId() and  IsEntityOnScreen(curplayerped) and not IsPedDeadOrDying(curplayerped) then
						z = z + 0.9
						local Distance = GetDistanceBetweenCoords(x, y, z, px, py, pz, true) * 0.002 / 2
						if Distance < 0.0042 then
							Distance = 0.0042
						end
						
						if ISMVariables.MiscOptions.ESPMenuColours then
							color = { r = ISMMENU.rgb.r, g = ISMMENU.rgb.g, b = ISMMENU.rgb.b}
						else
							color = { r = 255, g = 255, b = 255}
						end
	
						retval, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
	
						width = 0.00045
						height = 0.0023
	
						DrawRect(_x, _y, width / Distance, 0.0015, color.r, color.g, color.b, 200)
						DrawRect(_x, _y + height / Distance, width / Distance, 0.0015, color.r, color.g, color.b, 200)
						DrawRect(_x + width / 2 / Distance, _y + height / 2 / Distance , 0.001, height / Distance, color.r, color.g, color.b, 200)
						DrawRect(_x - width / 2 / Distance, _y + height / 2 / Distance , 0.001, height / Distance, color.r, color.g, color.b, 200)
						
						health = GetEntityHealth(curplayerped)
						if health > 200 then
							health = 200
						end

						DrawRect(_x - 0.00028 / Distance, _y + height / 2 / Distance, 0.0016 / Distance * 0.015, height / Distance, 0, 0, 0, 200)
						DrawRect(_x - 0.00028 / Distance, _y + height / Distance - GetEntityHealth(curplayerped) / 175000 / Distance,  0.0016 / Distance * 0.015, GetEntityHealth(curplayerped) / 87500 / Distance, 0, 255, 0, 200)
					
					end
				end
			end
		end	
		
		if ISMVariables.MiscOptions.ESPName then
            local PlayerList = GetActivePlayers()
			for i = 1, #PlayerList do
				local curplayerped = GetPlayerPed(PlayerList[i])

				x,y,z = table.unpack(GetPedBoneCoords(curplayerped, 0, 0.0, 0.0, 1.0))
				x1,y1,z1 = table.unpack(GetPedBoneCoords(curplayerped, 0, 0.0, 0.0, 1.2))
				px,py,pz = table.unpack(GetGameplayCamCoord())

				if GetDistanceBetweenCoords(x, y, z, px, py, pz, true) < ISMVariables.MiscOptions.ESPDistance then
					local retval, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
					local retval1, _x1, _y1 = GetScreenCoordFromWorldCoord(x1, y1, z1)
					local Distance = GetDistanceBetweenCoords(x, y, z, px, py, pz, true) * 0.0002
					local Distance = GetDistanceBetweenCoords(x1, y1, z1, px, py, pz, true) * 0.0002
					if Distance < 1 then
						Distance = 1
					end
					ISMMENU.DrawText(GetPlayerName(PlayerList[i]), { _x, _y }, {ISMMENU.rgb1.r, ISMMENU.rgb1.g, ISMMENU.rgb1.b, 255}, 0.5 / Distance, 4, 1, 0)
					ISMMENU.DrawText(GetPlayerServerId(PlayerList[i]), { _x1, _y1 }, {ISMMENU.rgb2.r, ISMMENU.rgb2.g, ISMMENU.rgb2.b, 255}, 0.5 / Distance, 4, 1, 0)
				end
			end
		end

		if ISMVariables.MiscOptions.ESPBones then
			local playerlist = GetActivePlayers()
			for i = 1, #playerlist do
				local curplayer = playerlist[i]
				local curplayerped = GetPlayerPed(curplayer)
				local PlayerCoords = GetEntityCoords(curplayerped)
				x,y,z = table.unpack(PlayerCoords)

				local RightShoulderBone = GetPedBoneIndex(curplayerped, 31086)
				local RightElbowBone = GetPedBoneIndex(curplayerped, 2992)
				local RightHand = GetPedBoneIndex(curplayerped, 28422)

				local LeftElbowBone = GetPedBoneIndex(curplayerped, 22711)
				local LeftHand = GetPedBoneIndex(curplayerped, 18905)

				local rightshoulder = GetWorldPositionOfEntityBone(curplayerped, RightShoulderBone, 0.0, 0.0, 0.0)
				local rightelbow = GetWorldPositionOfEntityBone(curplayerped, RightElbowBone, 0.0, 0.0, 0.0)
				local rightelhand = GetWorldPositionOfEntityBone(curplayerped, RightHand, 0.0, 0.0, 0.0)
				
				local leftelbow = GetWorldPositionOfEntityBone(curplayerped, LeftElbowBone, 0.0, 0.0, 0.0)
				local lefthand = GetWorldPositionOfEntityBone(curplayerped, LeftHand, 0.0, 0.0, 0.0)

				local pelvis = GetWorldPositionOfEntityBone(curplayerped, GetPedBoneIndex(curplayerped, 11816), 0.0, 0.0, 0.0)
				local rightknee = GetWorldPositionOfEntityBone(curplayerped, GetPedBoneIndex(curplayerped, 16335), 0.0, 0.0, 0.0)
				local leftknee = GetWorldPositionOfEntityBone(curplayerped, GetPedBoneIndex(curplayerped, 46078), 0.0, 0.0, 0.0)
				local leftfoot = GetWorldPositionOfEntityBone(curplayerped, GetPedBoneIndex(curplayerped, 14201), 0.0, 0.0, 0.0)
				local rightfoot = GetWorldPositionOfEntityBone(curplayerped, GetPedBoneIndex(curplayerped, 52301), 0.0, 0.0, 0.0)
				
				DrawLine(rightshoulder.x, rightshoulder.y, rightshoulder.z, rightelbow.x, rightelbow.y, rightelbow.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				DrawLine(rightelbow.x, rightelbow.y, rightelbow.z, rightelhand.x, rightelhand.y, rightelhand.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				
				DrawLine(rightshoulder.x, rightshoulder.y, rightshoulder.z, leftelbow.x, leftelbow.y, leftelbow.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				DrawLine(leftelbow.x, leftelbow.y, leftelbow.z, lefthand.x, lefthand.y, lefthand.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				
				DrawLine(rightshoulder.x, rightshoulder.y, rightshoulder.z, pelvis.x, pelvis.y, pelvis.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				DrawLine(rightknee.x, rightknee.y, rightknee.z, pelvis.x, pelvis.y, pelvis.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				DrawLine(leftknee.x, leftknee.y, leftknee.z, pelvis.x, pelvis.y, pelvis.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				
				DrawLine(rightknee.x, rightknee.y, rightknee.z, rightfoot.x, rightfoot.y, rightfoot.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				DrawLine(leftknee.x, leftknee.y, leftknee.z, leftfoot.x, leftfoot.y, leftfoot.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				
				ResetEntityAlpha(curplayerped)
				SetEntityAlpha(curplayerped, 200, true)
			end
		end

		if ISMVariables.MiscOptions.ESPLines then
			local pedcoords = GetEntityCoords(PlayerPedId())

			local playerlist = GetActivePlayers()
			for i = 1, #playerlist do
				local curplayer = playerlist[i]
				local curplayerped = GetPlayerPed(curplayer)
				local PlayerCoords = GetEntityCoords(curplayerped)
				
				DrawLine(pedcoords.x, pedcoords.y, pedcoords.z, PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
			end
		end
		
		if ISMVariables.VehicleOptions.activetorquemulr then
			local vehicle = GetPlayersLastVehicle()
			local curractivetorqueIndex = ISMVariables.VehicleOptions.curractivetorqueIndex
			if curractivetorqueIndex == 1 then
				SetVehicleEngineTorqueMultiplier(vehicle, 2.0)
			elseif curractivetorqueIndex == 2 then
			    SetVehicleEngineTorqueMultiplier(vehicle, 4.0)
			elseif curractivetorqueIndex == 3 then
			    SetVehicleEngineTorqueMultiplier(vehicle, 8.0)
			elseif curractivetorqueIndex == 4 then
			    SetVehicleEngineTorqueMultiplier(vehicle, 16.0)
			elseif curractivetorqueIndex == 5 then
			    SetVehicleEngineTorqueMultiplier(vehicle, 32.0)
			elseif curractivetorqueIndex == 6 then
			    SetVehicleEngineTorqueMultiplier(vehicle, 64.0)
			elseif curractivetorqueIndex == 7 then
			    SetVehicleEngineTorqueMultiplier(vehicle, 128.0)
			elseif curractivetorqueIndex == 8 then
			    SetVehicleEngineTorqueMultiplier(vehicle, 256.0)
			elseif curractivetorqueIndex == 9 then
			    SetVehicleEngineTorqueMultiplier(vehicle, 512.0)
			elseif curractivetorqueIndex == 10 then
			    SetVehicleEngineTorqueMultiplier(vehicle, 1024.0)
			end
		end

		if ISMVariables.OnlinePlayer.cargoplaneloop then
			local coords = GetEntityCoords(GetPlayerPed(ISMVariables.OnlinePlayer.CargodPlayer))
			SpawnVehAtCoords("cargoplane", coords)
		end

		if ISMVariables.OnlinePlayer.attachtoplayer then
			local self = PlayerPedId()
			
			AttachEntityToEntity(self, GetPlayerPed(ISMVariables.OnlinePlayer.attatchedplayer), 0, 0.0, 0.0, 0.0, 0.0, 0.0, 180.0, false, false, true, false, 0, true)
		end
		
		if ISMVariables.ScriptOptions.BlockBlackScreen then
            DoScreenFadeIn(0)
		end

		if ISMVariables.ScriptOptions.BlockPeacetime then
			TriggerEvent("AOP:SendPT", false)
			TriggerEvent("yoda:peacetime", false)
			TriggerEvent("Badssentials:SetPT", false)
		end

		if ISMVariables.SelfOptions.infstamina then
            RestorePlayerStamina(PlayerId(), GetPlayerSprintStaminaRemaining(PlayerId()))
		end

		if ISMVariables.SelfOptions.superrun then
			if IsDisabledControlPressed(0, 21) and not IsPedRagdoll(PlayerPedId()) then
			    local x, y, z = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 30.0, GetEntityVelocity(PlayerPedId())[3]) - GetEntityCoords(PlayerPedId())

			    SetEntityVelocity(PlayerPedId(), x, y, z)
			end
		end

		if ISMVariables.MiscOptions.FlyingCars then
            for vehicle in EnumerateVehicles() do
                NetworkRequestControlOfEntity(vehicle)
                ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
            end
		end

		if ISMVariables.MiscOptions.GlifeHack then
            for ped in EnumeratePeds() do
				if not IsPedAPlayer(ped) and ped ~= PlayerPedId() then
					Wait(1)
					RequestControlOnce(ped)
					SetEntityHealth(ped, 0)
					SetEntityCoords(ped, GetEntityCoords(PlayerPedId()))
				end
			end
		end

		if ISMVariables.OnlinePlayer.freezeplayer then
			local ped = GetPlayerPed(ISMVariables.OnlinePlayer.playertofreeze)

			if not HasAnimDictLoaded("reaction@shove") then
				RequestAnimDict("reaction@shove")
				while not HasAnimDictLoaded("reaction@shove") do
					Wait(0)
				end        
			end

			TaskPlayAnim(ped, "reaction@shove", "shoved_back", 8.0, -8.0, -1, 0, 0, false, false, false)
		end

		if ISMVariables.AllOnlinePlayers.freezeserver then
			ActivePlayers = GetActivePlayers()
			for i = 1, #ActivePlayers do
				if ISMVariables.AllOnlinePlayers.IncludeSelf and ActivePlayers[i] ~= PlayerId() then
					local ped = GetPlayerPed(ActivePlayers[i])
					FreezeEntityPosition(ISMVariables.OnlinePlayer.playertofreeze, true)
					ClearPedTasksImmediately(ped)
				elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
					local ped = GetPlayerPed(ActivePlayers[i])
					FreezeEntityPosition(ISMVariables.OnlinePlayer.playertofreeze, true)
					ClearPedTasksImmediately(ped)
				end
			end
		end
		
		if ISMVariables.AllOnlinePlayers.tugboatrainoverplayers then
			for i = 1, #GetActivePlayers() do
				if ISMVariables.AllOnlinePlayers.IncludeSelf and GetActivePlayers()[i] ~= PlayerId() then
					coords = GetEntityCoords(GetPlayerPed(GetActivePlayers()[i]))
					
					while not HasModelLoaded(GetHashKey("tug")) and not killmenu do
						RequestModel(GetHashKey("tug"))
						Wait(1)
					end
	
					CreateVehicle(GetHashKey("tug"), coords.x, coords.y, coords.z + 300.0, 90.0, 1, 1)	
				elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
					coords = GetEntityCoords(GetPlayerPed(GetActivePlayers()[i]))
					
					while not HasModelLoaded(GetHashKey("tug")) and not killmenu do
						RequestModel(GetHashKey("tug"))
						Wait(1)
					end
	
					CreateVehicle(GetHashKey("tug"), coords.x, coords.y, coords.z + 300.0, 90.0, 1, 1)	
				end
			end
		end
		
		if ISMVariables.WeaponOptions.RageBot then
			if IsDisabledControlPressed(0, 24) then
				for k in EnumeratePeds() do
					if k ~= PlayerPedId() then 
						RageShoot(k) 
					end
				end
			end
		end

		if ISMVariables.WeaponOptions.Spinbot and not noclipping then
			if GetEntityVelocity(PlayerPedId()) == vector3(0, 0, 0) then
				SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId()) + 20)
				for Ped in EnumeratePeds() do
					if Ped ~= PlayerPedId() and HasEntityClearLosToEntityInFront(PlayerPedId(), Ped) then
						x, y, z = table.unpack(GetEntityCoords(Ped)) 
						SetPedShootsAtCoord(PlayerPedId(), x, y, z, true)
						RageShoot(Ped)
					end
				end
			end
		end

		if ISMVariables.WeaponOptions.InfAmmo then
			if IsPedShooting(PlayerPedId()) then
				local __, weapon = GetCurrentPedWeapon(PlayerPedId())
				ammo = GetAmmoInPedWeapon(PlayerPedId(), weapon)
				SetPedAmmo(PlayerPedId(), weapon, ammo + 1)
			end
		end

		if ISMVariables.WeaponOptions.NoReload then
			if IsPedShooting(PlayerPedId()) then
				PedSkipNextReloading(PlayerPedId())
				MakePedReload(PlayerPedId())
			end
		end

		if ISMVariables.WeaponOptions.AimBot.Enabled then
			FOV = ISMVariables.WeaponOptions.AimBot.FOV

			--[[
			DrawRect(0.5 - FOV / 2, 0.5, 0.01, 0.515, 255, 80, 80, 100)
			DrawRect(0.5 + FOV / 2, 0.5, 0.01, 0.515, 255, 80, 80, 100)
			DrawRect(0.5, 0.5 - FOV / 1.2, 0.49, 0.015, 255, 80, 80, 100)
			DrawRect(0.5, 0.5 + FOV / 1.2, 0.49, 0.015, 255, 80, 80, 100)
			]]
	
			local success, PedAimingAt = GetEntityPlayerIsFreeAimingAt(PlayerId())
	
			if GetEntityType(PedAimingAt) == 1 then
				ISMVariables.WeaponOptions.AimBot.Targeting.LowestResult = { x = 0, y = 0}
				ISMVariables.WeaponOptions.AimBot.Targeting.Target = PedAimingAt
			end
	
			if IsPedDeadOrDying(ISMVariables.WeaponOptions.AimBot.Targeting.Target) then
				ISMVariables.WeaponOptions.AimBot.Targeting.Target = nil
				ISMVariables.WeaponOptions.AimBot.Targeting.LowestResult = { x = 1.0, y = 1.0}
			end
	
			for Ped in EnumeratePeds() do
				SuccessAimbot = true
				local x, y, z = table.unpack(GetEntityCoords(Ped))
				local _, _x, _y = World3dToScreen2d(x, y, z)

				if GetEntityModel(Ped) ~= 111281960 then
					if not IsPedDeadOrDying(Ped) then
						local _, _xx, _xy = World3dToScreen2d(table.unpack(GetEntityCoords(ISMVariables.WeaponOptions.AimBot.Targeting.Target)))
		
						if _x > 0.5 - FOV / 2 and _x < 0.5 + FOV / 2 and _y > 0.5 - FOV / 2 and _y < 0.5 + FOV / 2 then
							if Ped ~= PlayerPedId() then
								if ISMVariables.WeaponOptions.AimBot.OnlyPlayers then
									if IsPedAPlayer(Ped) then
										SuccessAimbot = true
									else
										SuccessAimbot = false
									end
								end
								if SuccessAimbot and ISMVariables.WeaponOptions.AimBot.InvisibilityCheck then
									if IsEntityVisible(Ped) then
										SuccessAimbot = true
									else
										SuccessAimbot = false
									end
								end
								if SuccessAimbot and ISMVariables.WeaponOptions.AimBot.IgnoreFriends then
									for i = 1, #FriendsList do
										pped = GetPlayerPed(FriendsList[i])
										if Ped == pped then
											SuccessAimbot = false
										end
									end
								end

								if SuccessAimbot then
									CrosshairCheck(Ped, _x, _y)
								end
							end
						end
						
						--ISMMENU.DrawRect(_xx, _xy, 0.06, 0.02 * ISMMENU.ScreenWidth / ISMMENU.ScreenHeight, { r = 20, g = 20, b = 255, a = 150 })
						
						if _xx > 0.5 - FOV / 2 and _xx < 0.5 + FOV / 2 and _xy > 0.5 - FOV / 2 and _xy < 0.5 + FOV / 2 then
							
						else
							ISMVariables.WeaponOptions.AimBot.Targeting.LowestResult = { x = 1.0, y = 1.0}
						end
					end
				end
			end
			
			if ISMVariables.WeaponOptions.AimBot.ShowTarget and ISMVariables.WeaponOptions.AimBot.Targeting.Target ~= nil then
				local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
				local launchPos = GetEntityCoords(wepent)

				DrawLine(launchPos, GetEntityCoords(ISMVariables.WeaponOptions.AimBot.Targeting.Target), ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
			end
	
			if IsEntityOnScreen(ISMVariables.WeaponOptions.AimBot.Targeting.Target) and IsPedShooting(PlayerPedId()) and IsPlayerFreeAiming(PlayerId()) then
				local coords = GetEntityCoords(ISMVariables.WeaponOptions.AimBot.Targeting.Target)
				RequestCollisionAtCoord(coords.x, coords.y, coords.z)
				
				ShootAtBone(ISMVariables.WeaponOptions.AimBot.Targeting.Target, ISMVariables.WeaponOptions.AimBot.Bone, 50)
			end

		end

		if ISMVariables.WeaponOptions.RapidFire then
            DoRapidFireTick()
		end
		
		if ISMVariables.WeaponOptions.BulletOptions.Enabled then
			if IsPedShooting(PlayerPedId()) then
				local _, weapon = GetCurrentPedWeapon(PlayerPedId())
				local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
				local launchPos = GetEntityCoords(wepent)
				local targetPos = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 200.0)
				local weaponbullet = ISMVariables.WeaponOptions.BulletOptions.WeaponBulletName
			
				ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, GetHashKey(weaponbullet), PlayerPedId(), true, true, 24000.0)
			end
		end

		if ISMVariables.WeaponOptions.TriggerBot then
			local hasTarget, target = GetEntityPlayerIsFreeAimingAt(PlayerId())
			
            if hasTarget and IsEntityAPed(target) then
				local boneTarget = GetPedBoneCoords(target, 0, 0.0, -0.2, 0.0)
				x, y, z = table.unpack(boneTarget)
				SetPedShootsAtCoord(PlayerPedId(), x, y, z, true)
            end
		end

		if ISMVariables.WeaponOptions.ExplosiveAmmo then
            local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
            if ret then
				AddExplosion(pos.x, pos.y, pos.z, 1, 1.0, 1, 0, 0.1)
            end
		end

		if ISMVariables.WeaponOptions.DelGun then
			if IsPlayerFreeAiming(PlayerId()) then
                local entity = getEntity(PlayerId())
                if GetEntityType(entity) == 2 or 3 then
                    if aimCheck(GetPlayerPed(-1)) then
                        SetEntityAsMissionEntity(entity, true, true)
                        DeleteEntity(entity)
                    end
                end
            end
		end

		if ISMVariables.WeaponOptions.OneShot then
			SetWeaponDamageModifier(GetSelectedPedWeapon(PlayerPedId()), 1000.0)
		else
			SetWeaponDamageModifier(GetSelectedPedWeapon(PlayerPedId()), 1.0)
		end
		
		if ISMVariables.SelfOptions.noragdoll then
			SetPedCanRagdoll(PlayerPedId(), false)
		else
			SetPedCanRagdoll(PlayerPedId(), true)
		end

		if ISMVariables.SelfOptions.superjump then
			SetSuperJumpThisFrame(PlayerId())
		end

		if ISMVariables.SelfOptions.MoonWalk then
			if IsDisabledControlPressed(0, 21) and IsDisabledControlPressed(0, 32) then
				forwardback = -9.8
			elseif IsPedWalking(PlayerPedId()) then
				forwardback = -3.6
			else
				forwardback = 0.0
			end

			local x, y, z = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, forwardback, GetEntityVelocity(PlayerPedId())[3]) - GetEntityCoords(PlayerPedId())

			SetEntityVelocity(PlayerPedId(), x, y, z)
		end
		
		if ISMVariables.OnlinePlayer.messagelooping then
			if NetworkIsPlayerConnected(ISMVariables.OnlinePlayer.messageloopplayer) then

				TriggerServerEvent("_chat:messageEntered", GetPlayerName(ISMVariables.OnlinePlayer.messageloopplayer), { 255, 255, 255 }, ISMVariables.OnlinePlayer.messagetosend)
				
			else

				ISMVariables.OnlinePlayer.messagelooping = false
				ISMVariables.OnlinePlayer.messageloopplayer = nil
				ISMVariables.OnlinePlayer.messagetosend = "."

			end
		end

		if ISMVariables.SelfOptions.disableobjectcollisions then
			for door in EnumerateObjects() do
				
				SetEntityCollision(door, false, true)

			end
		end

		if ISMVariables.SelfOptions.disablepedcollisions then
			for ped in EnumeratePeds() do
				if ped ~= PlayerPedId() and IsPedAPlayer(ped) ~= true then
					SetEntityCollision(ped, false, true)
				end
			end
		end

		if ISMVariables.SelfOptions.disablevehiclecollisions then
			local ped = PlayerPedId()

			for vehicle in EnumerateVehicles() do
			    SetEntityCollision(vehicle, false, true)
			end
		end

		if ISMVariables.SelfOptions.forceradar then
			DisplayRadar(true)
		end

		if ISMVariables.SelfOptions.playercoords then

			local entity = IsPedInAnyVehicle(PlayerPedId()) and GetVehiclePedIsIn(PlayerPedId(), false) or PlayerPedId()

			local coords = GetEntityCoords(PlayerPedId())
			local x = coords.x
			local y = coords.y
			local z = coords.z
			local h = GetEntityHeading(PlayerPedId())
			
			roundx = tonumber(string.format("%.2f", x))
			roundy = tonumber(string.format("%.2f", y))
			roundz = tonumber(string.format("%.2f", z))
			roundh = tonumber(string.format("%.2f", h))
			
			ISMMENU.DrawText("X: ~w~"..roundx, {0.01, 0.20 }, {ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255}, 0.5, 4, 0, 0, 1)
			ISMMENU.DrawText("Y: ~w~"..roundy, {0.01, 0.225 }, {ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255}, 0.5, 4, 0, 0, 1)
			ISMMENU.DrawText("Z: ~w~"..roundz, {0.01, 0.25 }, {ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255}, 0.5, 4, 0, 0, 1)
			ISMMENU.DrawText("Heading: ~w~"..roundh, {0.01, 0.275 }, {ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255}, 0.5, 4, 0, 0, 1)

		end
		 
		if ISMVariables.OnlinePlayer.MolotovWLoop then
			local coords = GetEntityCoords(GetPlayerPed(ISMVariables.OnlinePlayer.MolotovWPlayer))
			AddExplosion(coords.x, coords.y, coords.z, 3, 100.0, true, false, 0.0)
		end

		if ISMVariables.OnlinePlayer.HydrantPlayer then
			local coords = GetEntityCoords(GetPlayerPed(ISMVariables.OnlinePlayer.MolotovWPlayer))
			AddExplosion(coords.x, coords.y, coords.z, 13, 100.0, true, false, 0.0)
		end

		if ISMVariables.SelfOptions.godmode then
			SetPedCanRagdoll(PlayerPedId(), false)
			ClearPedBloodDamage(PlayerPedId())
			ResetPedVisibleDamage(PlayerPedId())
			ClearPedLastWeaponDamage(PlayerPedId())
			SetEntityProofs(PlayerPedId(), true, true, true, true, true, true, true, true)
			SetEntityOnlyDamagedByPlayer(PlayerPedId(), false)
			SetEntityCanBeDamaged(PlayerPedId(), false)
		end

		if ISMVariables.SelfOptions.AutoHealthRefil then
			SetEntityHealth(PlayerPedId(), 200)
		end

		if ISMVariables.SelfOptions.AntiHeadshot then
			SetPedSuffersCriticalHits(PlayerPedId(), false)
		end

		if ISMVariables.SelfOptions.invisiblitity then
            SetEntityVisible(PlayerPedId(), false, true)
		end

		if ISMVariables.OnlinePlayer.FlingingPlayer then
			local coords = GetEntityCoords(GetPlayerPed(ISMVariables.OnlinePlayer.FlingingPlayer))
		
			ShootSingleBulletBetweenCoords(AddVectors(coords, vector3(0, 0, 0.1)), coords, 0.0, true, GetHashKey("WEAPON_RAYPISTOL"), PlayerPedId(), true, true, 100)
		end

		if ISMVariables.OnlinePlayer.MolotovLoop then

			local ped = GetPlayerPed(ISMVariables.OnlinePlayer.MolotovPlayer)
			local pedcoords = GetEntityCoords(ped)

			RequestNamedPtfxAsset("core")
			
			UseParticleFxAssetNextCall("core")
			StartNetworkedParticleFxNonLoopedAtCoord("exp_air_molotov", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
		
		end

		if ISMVariables.OnlinePlayer.FireWorkLoop then

			local ped = GetPlayerPed(ISMVariables.OnlinePlayer.FireWorkPlayer)

			RequestNamedPtfxAsset("scr_indep_fireworks")
		    
			local pedcoords = GetEntityCoords(ped)

			UseParticleFxAssetNextCall("scr_indep_fireworks")
			StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", pedcoords, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
		
		end

		if ISMVariables.OnlinePlayer.FireWork2Loop then

			local ped = GetPlayerPed(ISMVariables.OnlinePlayer.FireWork2Player)

			RequestNamedPtfxAsset("proj_indep_firework_v2")
		    
			local pedcoords = GetEntityCoords(ped)

			UseParticleFxAssetNextCall("proj_indep_firework_v2")
			StartNetworkedParticleFxNonLoopedAtCoord("scr_firework_indep_ring_burst_rwb", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
		
		end

		if ISMVariables.OnlinePlayer.SmokeLoop then

			local ped = GetPlayerPed(ISMVariables.OnlinePlayer.SmokePlayer)

			RequestNamedPtfxAsset("scr_agencyheist")
		    
			local pedcoords = GetEntityCoords(ped)

			UseParticleFxAssetNextCall("scr_agencyheist")
			StartNetworkedParticleFxNonLoopedAtCoord("scr_fbi_dd_breach_smoke", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
		
		end

		if ISMVariables.OnlinePlayer.JesusLightLoop then

			local ped = GetPlayerPed(ISMVariables.OnlinePlayer.JesusPlayer)

			RequestNamedPtfxAsset("scr_rcbarry1")
		    
			local pedcoords = GetEntityCoords(ped)

			UseParticleFxAssetNextCall("scr_rcbarry1")

			StartNetworkedParticleFxNonLoopedAtCoord("scr_alien_teleport", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
		
		end

		if ISMVariables.OnlinePlayer.AlienLightLoop then

			local ped = GetPlayerPed(ISMVariables.OnlinePlayer.AlienPlayer)

			RequestNamedPtfxAsset("scr_rcbarry2")
		    
			local pedcoords = GetEntityCoords(ped)

			UseParticleFxAssetNextCall("scr_rcbarry2")

			StartNetworkedParticleFxNonLoopedAtCoord("scr_clown_appears", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
		
		end

		if ISMVariables.OnlinePlayer.ExplosionParticlePlayer then

			local ped = GetPlayerPed(ISMVariables.OnlinePlayer.ExplosionParticlePlayer)

			RequestNamedPtfxAsset("scr_exile1")
		    
			local pedcoords = GetEntityCoords(ped)

			UseParticleFxAssetNextCall("scr_exile1")
			StartNetworkedParticleFxNonLoopedAtCoord("scr_ex1_plane_exp_sp", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
		
		end

		if ISMVariables.OnlinePlayer.Feu1Loop then

			local ped = GetPlayerPed(ISMVariables.OnlinePlayer.Feu1)

			RequestNamedPtfxAsset("core")
		    
			local pedcoords = GetEntityCoords(ped)

			UseParticleFxAssetNextCall("core")
			StartNetworkedParticleFxNonLoopedAtCoord("ent_amb_foundry_steam_spawn", pedcoords, 0.0, 0.0, 0.0, 10.0, false, false, false, false)
		
		end

		if TazeLoop then

			local coords = GetEntityCoords(GetPlayerPed(selectedPlayer))
			RequestCollisionAtCoord(coords.x, coords.y, coords.z)
			ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z + 2, 0, true, "WEAPON_STUNGUN", ped, false, false, 100)

		end

		if ISMVariables.WeaponOptions.Crosshair and not (cam) then
			local success, PedAimingAt = GetEntityPlayerIsFreeAimingAt(PlayerId())
	
			DrawRect2(ISMMENU.ScreenWidth / 2 - 2, ISMMENU.ScreenHeight / 2 - 7, 3, 13, 0, 0, 0, 255)
			DrawRect2(ISMMENU.ScreenWidth / 2 - 7, ISMMENU.ScreenHeight / 2 - 2, 13, 3, 0, 0, 0, 255)
			DrawRect2(ISMMENU.ScreenWidth / 2 - 1, ISMMENU.ScreenHeight / 2 - 6, 1, 11, 255, 255, 255, 255)
			DrawRect2(ISMMENU.ScreenWidth / 2 - 6, ISMMENU.ScreenHeight / 2 - 1, 11, 1, 255, 255, 255, 255)

		end

		Wait(0)
		
	end
end)

function CrosshairCheck(Ped, x, y)
	if x < 0.0 then
		x = x * -1
	end
	if y < 0.0 then
		y = y * -1
	end
	if ISMVariables.WeaponOptions.AimBot.ThroughWalls then
		if x < ISMVariables.WeaponOptions.AimBot.Targeting.LowestResult.x and y < ISMVariables.WeaponOptions.AimBot.Targeting.LowestResult.y then
			ISMVariables.WeaponOptions.AimBot.Targeting.LowestResult.x = x
			ISMVariables.WeaponOptions.AimBot.Targeting.Target = Ped
		end
	elseif HasEntityClearLosToEntityInFront(PlayerPedId(), Ped) then
		if x < ISMVariables.WeaponOptions.AimBot.Targeting.LowestResult.x and y < ISMVariables.WeaponOptions.AimBot.Targeting.LowestResult.y then
			ISMVariables.WeaponOptions.AimBot.Targeting.LowestResult.x = x
			ISMVariables.WeaponOptions.AimBot.Targeting.Target = Ped
		end
	end
end

function DrawRect2(x, y, w, h, r, g, b, a)
    local _w, _h = w / ISMMENU.ScreenWidth, h / ISMMENU.ScreenHeight
    local _x, _y = x / ISMMENU.ScreenWidth + _w / 2, y / ISMMENU.ScreenHeight + _h / 2
    Citizen.InvokeNative(0x3A618A217E5154F0,_x, _y, _w, _h, r, g, b, a)
end

function NativeExplosionServerLoop()
    Citizen.CreateThread(function()
        while ISMVariables.AllOnlinePlayers.ExplodisionLoop do
			OnlinePlayers = GetActivePlayers()
			Wait(250)
			for i = 1, #OnlinePlayers do
				if ISMVariables.AllOnlinePlayers.IncludeSelf and OnlinePlayers[i] ~= PlayerId() then
					local ped = GetPlayerPed(OnlinePlayers[i])
					local coords = GetEntityCoords(ped)
					AddExplosion(coords.x, coords.y, coords.z, 29, 100.0, true, false, 0.0)
				elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
					local ped = GetPlayerPed(OnlinePlayers[i])
					local coords = GetEntityCoords(ped)
					AddExplosion(coords.x, coords.y, coords.z, 29, 100.0, true, false, 0.0)
				end
			end
		end
    end)
end

function NativeExplosionLoop()
    Citizen.CreateThread(function()
		while ISMVariables.OnlinePlayer.ExplosionLoop do
			Wait(1)
			local ped = GetPlayerPed(ISMVariables.OnlinePlayer.ExplodingPlayer)
			local coords = GetEntityCoords(ped)
			AddExplosion(coords.x, coords.y, coords.z, ISMVariables.OnlinePlayer.ExplosionType, 100.0, true, false, 0.0)
		end
    end)
end

function ShootAtCoords(coords, weapon)
    ShootSingleBulletBetweenCoords(AddVectors(coords, vector3(0, 0, 0.1)), 0, GetWeaponDamage(weapon, 1), true, weapon, PlayerPedId(), true, true, 1000.0)
end

function GetVelocityAimbot(entity)
	vel = GetEntityVelocity(entity)
	vel = vel[2]
	if vel < 0 then
		vel = vel * -1
	end
	vel = vel / 2
	return vel
end

function DoRapidFireTick()
    DisablePlayerFiring(PlayerPedId(), true)
    if IsDisabledControlPressed(0, 257) and IsPlayerFreeAiming(PlayerId()) then
        local _, weapon = GetCurrentPedWeapon(PlayerPedId())
        local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
        local launchPos = GetEntityCoords(wepent)
        local targetPos = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 200.0)
    
        ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
        ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
    end
end

function ShootAtBone(target, bone, damage)
	local bone = GetEntityBoneIndexByName(target, bone)
	local velocity = GetVelocityAimbot(target)
	local boneTarget = GetPedBoneCoords(target, bone, 0.0, -0.2, 0.0)
	local boneTarget2 = GetPedBoneCoords(target, bone, 0.0, 0.2 + velocity, 0.0)
	local _, weapon = GetCurrentPedWeapon(PlayerPedId())
    ShootSingleBulletBetweenCoords(boneTarget, boneTarget2, damage, true, weapon, PlayerPedId(), true, true, 100.0)
end

function getEntity(player) 
	local _, entity = GetEntityPlayerIsFreeAimingAt(player)
	return entity
end

function aimCheck(player)
    if onAim == "true" then
        return true
    else
        return IsPedShooting(player)
	end
end
	
function HelpAlert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end

-- How To Use
-- local clientid, serverid = ISMMENU.GetPlayerFromPedId(ped) 

function ISMMENU.GetPlayerFromPedId(ped) 
	PlayerList = GetActivePlayers()
	for i = 1, #PlayerList do
		local playerped = GetPlayerPed(PlayerList[i])
		if playerped == ped then
			return i, GetPlayerServerId(PlayerList[i])
		end
	end
	return false
end

function TogPoliceHeadlights()
	Citizen.CreateThread(function()
		while not killmenu do
			if not policeheadlights then
					local veh = GetVehiclePedIsUsing(PlayerPedId())
					ToggleVehicleMod(veh, 22, true)
					SetVehicleHeadlightsColour(veh, 0)
                return
			end
			Wait(500)
			local veh = GetVehiclePedIsUsing(PlayerPedId())
			ToggleVehicleMod(veh, 22, true) -- toggle xenon
			SetVehicleHeadlightsColour(veh, 1)
			Wait(500)
			SetVehicleHeadlightsColour(veh, 8)
		end
	end)
end

local Keybinds = {
	{ 0x30, "0", false }, 
	{ 0x31, "1", false }, 
	{ 0x32, "2", false }, 
	{ 0x33, "3", false }, 
	{ 0x34, "4", false }, 
	{ 0x35, "5", false }, 
	{ 0x36, "6", false }, 
	{ 0x37, "7", false }, 
	{ 0x38, "8", false }, 
	{ 0x39, "9", false }, 
	{ 0x41, "A", false }, 
	{ 0x42, "B", false }, 
	{ 0x43, "C", false }, 
	{ 0x44, "D", false }, 
	{ 0x45, "E", false }, 
	{ 0x46, "F", false }, 
	{ 0x47, "G", false }, 
	{ 0x48, "H", false }, 
	{ 0x49, "I", false }, 
	{ 0x4A, "J", false }, 
	{ 0x4B, "K", false }, 
	{ 0x4C, "L", false }, 
	{ 0x4D, "M", false }, 
	{ 0x4E, "N", false }, 
	{ 0x4F, "O", false }, 
	{ 0x50, "P", false }, 
	{ 0x51, "Q", false }, 
	{ 0x52, "R", false }, 
	{ 0x53, "S", false }, 
	{ 0x54, "T", false }, 
	{ 0x55, "U", false }, 
	{ 0x56, "V", false }, 
	{ 0x57, "W", false }, 
	{ 0x58, "X", false }, 
	{ 0x59, "Y", false }, 
	{ 0x5A, "Z", false }, 
	{ 0x20, " ", false }, 
	{ 0xBD, "_", false }
}


function ISMMENU.KeyboardEntry(title, maxchar)
	if ISMMENU.UI.GTAInput then
        local GTAINPUT = KeyboardEntry(title, maxchar)
		return GTAINPUT
	end

	Wait(30)
	local OneUsed = 0
	local FlashThing = 0
	local Input = ""

	if maxchar > 188 then
        maxchar = 188
	end

	for i = 1, #Keybinds do
		Keybinds[i][3] = false
	end

	while true do

		DisableAllControlActions(0)

		ISMMENU.DrawRect(0.5, 0.56, 0.5, 0.04, { r = 20, g = 20, b = 20, a = 200 })
		ISMMENU.DrawRect(0.5, 0.52, 0.5, 0.04, { r = 0, g = 0, b = 0, a = 200 })
		ISMMENU.DrawRect(0.5, 0.54, 0.5, 0.001, { r = ISMMENU.rgb.r, g = ISMMENU.rgb.g, b = ISMMENU.rgb.b, a = 200 })

		ISMMENU.DrawText("[ISM Menu] ~w~" .. title, {0.252, 0.5025}, {ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255}, 0.5, 4, 0)
		ISMMENU.DrawText(Input .. "_", {0.252, 0.54}, {255, 255, 255, 255}, 0.5, 4, 0, "ISMTextBox")

		if IsDisabledControlJustPressed(1, 194) and #Input > 0 then
			Input = Input:sub(1, #Input - 1)
		end

		if Ham.getKeyState(0x10) ~= 0 or Ham.getKeyState(0x14) ~= 0 then
			for i = 1, #Keybinds do
				local pressed = Ham.getKeyState(Keybinds[i][1])
				if pressed ~= 0 then
					if not Keybinds[i][3] then
						Input = Input .. string.upper(Keybinds[i][2])
					end
					Keybinds[i][3] = true
				else
					Keybinds[i][3] = false
				end
			end
		else
			for i = 1, #Keybinds do
				local pressed = Ham.getKeyState(Keybinds[i][1])
				if pressed ~= 0 then
					if not Keybinds[i][3] then
						Input = Input .. string.lower(Keybinds[i][2])
					end
					Keybinds[i][3] = true
				else
					Keybinds[i][3] = false
				end
			end
		end

		if IsDisabledControlJustPressed(1, 191) then
			for i = 1, #Keybinds do
				Keybinds[i][3] = false
			end
			return Input
		end
		
		if OneUsed < 5 then
			OneUsed = OneUsed + 1
			Input = ""
		end

		Wait(0)
	end
end

function AlienColourSpam()
	Citizen.CreateThread(function()
		while ISMVariables.SelfOptions.AlienColorSpam do
			SetPedComponentVariation(PlayerPedId(), 0, 0, 0, 0)
			SetPedComponentVariation(PlayerPedId(), 1, 134, 8, 0)
			SetPedComponentVariation(PlayerPedId(), 2, 0, 0, 0)
			SetPedComponentVariation(PlayerPedId(), 3, 13, 0, 0)
			SetPedComponentVariation(PlayerPedId(), 4, 106, 8, 0)
			SetPedComponentVariation(PlayerPedId(), 8, 274, 8, 0)
			SetPedComponentVariation(PlayerPedId(), 11, 274, 8, 0)
			SetPedComponentVariation(PlayerPedId(), 6, 83, 8, 0)
	
			SetPedPropIndex(PlayerPedId(), 1, 0, 0, 0)

			Wait(30)

			SetPedComponentVariation(PlayerPedId(), 0, 0, 0, 0)
			SetPedComponentVariation(PlayerPedId(), 1, 134, 9, 0)
			SetPedComponentVariation(PlayerPedId(), 2, 0, 0, 0)
			SetPedComponentVariation(PlayerPedId(), 3, 13, 0, 0)
			SetPedComponentVariation(PlayerPedId(), 4, 106, 9, 0)
			SetPedComponentVariation(PlayerPedId(), 8, 274, 9, 0)
			SetPedComponentVariation(PlayerPedId(), 11, 274, 9, 0)
			SetPedComponentVariation(PlayerPedId(), 6, 83, 9, 0)
	
			SetPedPropIndex(PlayerPedId(), 1, 0, 0, 0)

			Wait(30)
		end
	end)	
end

function KeyboardEntry(title, maxchar)
	result = ""
	if result == "" then 
		AddTextEntry('TITLETEXT', title)
	   	DisplayOnscreenKeyboard(1, "TITLETEXT", "", "", "", "", "", maxchar)
	end

	while (UpdateOnscreenKeyboard() == 0) do
		DisableAllControlActions(0)
		Wait(250)		
	end

	if (GetOnscreenKeyboardResult()) then
		result = GetOnscreenKeyboardResult()
		CancelOnscreenKeyboard()
	end

	if not HasModelLoaded(GetHashKey(result)) then
		RequestModel(GetHashKey(result))
		Wait(500)
	end
				
	CancelOnscreenKeyboard()

	return result
end

local function EnumerateEntities(initFunc, moveFunc, disposeFunc) return coroutine.wrap(function() local iter, id = initFunc() if not id or id == 0 then disposeFunc(iter) return end local enum = {handle = iter, destructor = disposeFunc} setmetatable(enum, entityEnumerator) local next = true repeat coroutine.yield(id) next, id = moveFunc(iter) until not next enum.destructor, enum.handle = nil, nil disposeFunc(iter) end) end
function EnumerateVehicles() return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle) end
function EnumerateObjects() return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject) end
function EnumeratePeds() return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed) end

function RampAllCars()
	for vehicle in EnumerateVehicles() do
		local ramp = CreateObject(GetHashKey("stt_prop_stunt_track_start"), 0, 0, 0, true, true, true)
		NetworkRequestControlOfEntity(vehicle)
		if DoesEntityExist(vehicle) then
			AttachEntityToEntity(ramp, vehicle, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
		end
		NetworkRequestControlOfEntity(ramp)
		SetEntityAsMissionEntity(ramp, true, true)
	end
end

function DisableAnticheat(anticheat)
	if string.find(anticheat, "anticheese") then
		TriggerServerEvent("anticheese:SetComponentStatus", "Teleport", false)
		TriggerServerEvent("anticheese:SetComponentStatus", "GodMode", false)
		TriggerServerEvent("anticheese:SetComponentStatus", "Speedhack", false)
		TriggerServerEvent("anticheese:SetComponentStatus", "WeaponBlacklist", false)
		TriggerServerEvent("anticheese:SetComponentStatus", "CustomFlag", false)
		TriggerServerEvent("anticheese:SetComponentStatus", "Explosions", false)
		TriggerServerEvent("anticheese:SetComponentStatus", "CarBlacklist", false)
		PushNotification("Disabled Anticheese", 600)
	elseif string.find(anticheat, "badger") then
		TriggerEvent("Anticheat:CheckStaffReturn", true)
	end
end

local specialmessage = 1
local messsage = "ISM   "

function ISMPlate()
    Citizen.CreateThread(function()
		while ISMVariables.VehicleOptions.ISMplate do
			if specialmessage == 1 then
				messsage = "ISM   "
			elseif specialmessage == 2 then
				messsage = "ISM    "
			elseif specialmessage == 3 then
				messsage = "ism     "
			elseif specialmessage == 4 then
				messsage = "ISM      "
			elseif specialmessage == 5 then
				messsage = "ISM       "
			elseif specialmessage == 6 then
				messsage = "        "
			elseif specialmessage == 7 then
				messsage = "       ISM"
			elseif specialmessage == 8 then
				messsage = "      ISM"
			elseif specialmessage == 9 then
				messsage = "     ISM"
			elseif specialmessage == 10 then
				messsage = "    ISM"
			elseif specialmessage == 11 then
				messsage = "   ISM"
			elseif specialmessage == 12 then
				messsage = "  ISM "
			elseif specialmessage == 13 then
				messsage = " ISM  "
			elseif specialmessage == 14 then
				messsage = "ISM   "
			end
			if specialmessage > 13 then
				specialmessage = 1
			end
			local vehicle = GetVehiclePedIsIn(PlayerPedId())
			local lastveh = GetPlayersLastVehicle(PlayerPedId())
			SetVehicleNumberPlateText(vehicle, messsage)
			SetVehicleNumberPlateText(lastveh, messsage)
			specialmessage = specialmessage + 1
			Citizen.Wait(250)
			if killmenu then
				break
			end
		end
	end)
end

function ISMMENU.DoesServerHaveResource(resource)
	local resourcelist = GetResources()
	for i = 1, #resourcelist do
		if resourcelist[i] == resource then
			return true
		end
	end
	return false
end

function IsEntityAlreadyAdded(entity)
    for i = 1, #ISMMENU.Objectlist do
		local id = ISMMENU.Objectlist[i].ID
        if ISMMENU.Objectlist[i].ID == entity then
            return true
		end
	end
	return false
end

function TableHasValue(tab, val)
	for index, value in ipairs(tab) do
		if value == val then
            return true
        end
    end

    return false
end

function RemoveValueFromTable(tbl, val)
	for i, v in ipairs(tbl) do
	    if v == val then
		    return table.remove(tbl, i)
	    end
	end
end  

function ForceMod(Toggle)
    ForceTog = Toggle
    
    if ForceTog then
        
        Citizen.CreateThread(function()
			PushNotification("Force ~g~Enabled ~w~Press E to use", 600)
            
            local ForceKey = 38
            local KeyPressed = false
            local KeyTimer = 0
            local KeyDelay = 15
            local ForceEnabled = false
			local StartPush = false
			local Distance = 20
            
            function forcetick()
            
                if (KeyPressed) then
                    KeyTimer = KeyTimer + 1
                    if (KeyTimer >= KeyDelay) then
                        KeyTimer = 0
                        KeyPressed = false
                    end
				end
				
				DisableControlAction(0, 14, true)
				DisableControlAction(0, 15, true)
				DisableControlAction(0, 16, true)
				DisableControlAction(0, 17, true)
                
				if IsDisabledControlPressed(0, 15) then
					Distance = Distance + 1
				end
                
				if IsDisabledControlPressed(0, 14) then
					if Distance > 20 then
					    Distance = Distance - 1
					end
				end

                if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
                    KeyPressed = true
                    ForceEnabled = true
                end
                
                if (StartPush) then
                    
                    StartPush = false
                    local pid = PlayerPedId()
                    local CamRot = GetGameplayCamRot(2)
                    
                    local force = 5
                    
                    local Fx = -(math.sin(math.rad(CamRot.z)) * force * 10)
                    local Fy = (math.cos(math.rad(CamRot.z)) * force * 10)
                    local Fz = force * (CamRot.x * 0.2)
                    
                    local PlayerVeh = GetVehiclePedIsIn(pid, false)
                    
                    for k in EnumerateVehicles() do
                        SetEntityInvincible(k, false)
                        if IsEntityOnScreen(k) and k ~= PlayerVeh and  k ~= ISMVariables.VehicleOptions.PersonalVehicle then
                            ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, false, true, true, true, true)
                        end
                    end
                    
                    for k in EnumeratePeds() do
                        if IsEntityOnScreen(k) and k ~= pid then
                            ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, false, true, true, true, true)
                        end
                    end
                end
                
                if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
                    KeyPressed = true
                    StartPush = true
                    ForceEnabled = false
                end
                
                if (ForceEnabled) then
                    local pid = PlayerPedId()
                    local PlayerVeh = GetVehiclePedIsIn(pid, false)
                    
                    Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * Distance)
                    
                    DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 35, false, true, 2, nil, nil, false)
                    
                    for k in EnumerateVehicles() do
                        SetEntityInvincible(k, true)
                        if IsEntityOnScreen(k) and (k ~= PlayerVeh) and k ~= ISMVariables.VehicleOptions.PersonalVehicle then
                            RequestControlOnce(k)
                            FreezeEntityPosition(k, false)
                            Oscillate(k, Markerloc, 0.5, 0.3)
                        end
                    end
                    
                    for k in EnumeratePeds() do
                        if IsEntityOnScreen(k) and k ~= PlayerPedId() then
                            RequestControlOnce(k)
                            SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
                            FreezeEntityPosition(k, false)
                            Oscillate(k, Markerloc, 0.5, 0.3)
                        end
                    end
                end
            end
            while ForceTog do forcetick() Wait(0) end
        end)
    else PushNotification("Force ~r~Disabled ~w~Press E to use", 600) end
end

function ShootAt(target, bone)
    local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
    SetPedShootsAtCoord(PlayerPedId(), boneTarget, true)
end

function RequestControlOnce(entity)
    if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
    return NetworkRequestControlOfEntity(entity)
end

function Oscillate(entity, position, angleFreq, dampRatio)
    local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
    local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
    local targetPos = SubVectors(pos1, pos2)
    
    ApplyForce(entity, targetPos)
end

function ScaleVector(vect, mult)
    return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
end

function AddVectors(vect1, vect2)
    return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
end

function ApplyForce(entity, direction)
    ApplyForceToEntity(entity, 3, direction, 0, 0, 0, false, false, true, true, false, true)
end

function KickAllFromVeh()
	local playerlist = GetActivePlayers()
	
	for i = 1, #playerlist do
		Wait(50)
		local currPlayer = playerlist[i]
		if ISMVariables.AllOnlinePlayers.IncludeSelf and playerlist[i] ~= PlayerId() then
			ClearPedTasksImmediately(GetPlayerPed(currPlayer))
		elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
			ClearPedTasksImmediately(GetPlayerPed(currPlayer))
		end
	end
end

function AddRampToCar(player)
	local ped = GetPlayerPed(player)
	local vehi = GetVehiclePedIsIn(ped, 0)
	local ramp = CreateObject(GetHashKey("prop_jetski_ramp_01"), 0, 0, 0, 1, 1, 1)
	AttachEntityToEntity(ramp, vehi, 0, 0.0, 5.0, 0.0, 0.0, 0.0, 180.0, false, false, true, false, 0, true)
end

function MaxOutEngine(veh, toggle)
	ToggleVehicleMod(veh, 2, toggle)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11) - 1, toggle)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13) - 1, toggle)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 14, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 14) - 1, toggle)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16) - 1, toggle)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 17, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 17) - 1, toggle)
end

function MaxOut(veh)
	SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
	SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 3) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 4) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 6) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 8) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 9) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 10) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 14, 16, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15) - 2, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16) - 1, false)
	ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 17, true)
	ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 18, true)
	ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 19, true)
	ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 20, true)
	ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 21, true)
	ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 22, true)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 23, 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 24, 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 25) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 27) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 28) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 30) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 33) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 34) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 35) - 1, false)
	SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 38) - 1, true)
	SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1)
	SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
	SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1)
end

function CagePlayer(player)
	local ped = GetPlayerPed(player)
	local coords = GetEntityCoords(ped)
	local inveh = IsPedInAnyVehicle(ped)

	if inveh then
		
		obj = CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x -6.8, coords.y + 1, coords.z - 1.5, 0, 1, 1)
		SetEntityHeading(obj, 90.0)
		
		CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x - 0.6, coords.y + 6.8, coords.z - 1.5, 0, 1, 1)
		
	    CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x - 0.6, coords.y - 4.8, coords.z - 1.5, 0, 1, 1)

		obj2 = CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x + 4.8, coords.y + 1, coords.z - 1.5, 0, 1, 1)
		SetEntityHeading(obj2, 90.0)
		
		obj = CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x -6.8, coords.y + 1, coords.z + 1.3, 0, 1, 1)
		SetEntityHeading(obj, 90.0)
		
		CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x - 0.6, coords.y + 6.8, coords.z + 1.3, 0, 1, 1)
		
	    CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x - 0.6, coords.y - 4.8, coords.z + 1.3, 0, 1, 1)

		obj2 = CreateObject(GetHashKey("prop_const_fence03b_cr"), coords.x + 4.8, coords.y + 1, coords.z + 1.3, 0, 1, 1)
		SetEntityHeading(obj2, 90.0)
	else

	local obj = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y - 1, coords.z - 1, 1, 1, 1)
	FreezeEntityPosition(obj, true)
	local obj2 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.55, coords.y - 1.05, coords.z - 1, 1, 1, 1)
	SetEntityHeading(obj2, 90.0)
	FreezeEntityPosition(obj2, true)
	local obj3 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y + 0.6, coords.z - 1, 1, 1, 1)
	FreezeEntityPosition(obj3, true)
	local obj4 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x + 1.05, coords.y - 1.05, coords.z - 1, 1, 1, 1)
	SetEntityHeading(obj4, 90.0)
	FreezeEntityPosition(obj4, true)
	local obj5 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y - 1, coords.z + 1.5, 1, 1, 1)
	FreezeEntityPosition(obj5, true)
	local obj6 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.55, coords.y - 1.05, coords.z + 1.5, 1, 1, 1)
	SetEntityHeading(obj6, 90.0)
	FreezeEntityPosition(obj6, true)
	local obj7 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x - 0.6, coords.y + 0.6, coords.z + 1.5, 1, 1, 1)
	FreezeEntityPosition(obj7, true)
	local obj8 = CreateObject(GetHashKey("prop_fnclink_03gate5"), coords.x + 1.05, coords.y - 1.05, coords.z + 1.5, 1, 1, 1)
	SetEntityHeading(obj8, 90.0)
	FreezeEntityPosition(obj8, true)

	end
end

function UFOVeh(player)
	local ped = GetPlayerPed(player)
	local coords = GetOffsetFromEntityInWorldCoords(ped, 0.0, 8.0, 0.5)
	local x = coords.x
	local y = coords.y
	local z = coords.z
	if not HasModelLoaded(GetHashKey("hydra")) then
		RequestModel(GetHashKey("hydra"))
		Wait(500)
	end

	local vehi = CreateVehicle(GetHashKey("hydra"), x, y, z, 0.0, 1, 1)
	Wait(50)
	if DoesEntityExist(vehi) then
		SetVehicleEngineTorqueMultiplier(vehi, 8000)
		SetVehicleEnginePowerMultiplier(vehi, 600)
		local ufoprop = CreateObject(GetHashKey("p_spinning_anus_s"), x, y, z, 1, 1, 0)
		SetEntityHeading(vehi, GetEntityHeading(ped))
		SetPedIntoVehicle(ped, vehi, -1)
		SetEntityCollision(ufoprop, false, true)
		AttachEntityToEntity(ufoprop, vehi, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 180.0, false, false, true, false, 0, true)
	else
		return
	end
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

function SubVectors(vect1, vect2)
    return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
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

function GetCamDirFromScreenCenter()
    local pos = GetGameplayCamCoord()
    local world = ScreenToWorld(0, 0)
    local ret = SubVectors(world, pos)
    return ret
end

function RampCar(player)
	local ped = GetPlayerPed(player)
	local coords = GetOffsetFromEntityInWorldCoords(ped, 0.0, 8.0, 0.5)
	local x = coords.x
	local y = coords.y
	local z = coords.z

	if not HasModelLoaded(GetHashKey("t20")) then
		RequestModel(GetHashKey("t20"))
		Wait(500)
	end

	local vehi = CreateVehicle(GetHashKey("t20"), x, y, z, 0.0, 1, 1)
	Wait(50)
	if DoesEntityExist(vehi) then
	    local ramp = CreateObject(GetHashKey("prop_jetski_ramp_01"), x, y, z - 1, 1, 1, 1)
		SetEntityHeading(vehi, GetEntityHeading(ped))
		SetPedIntoVehicle(ped, vehi, -1)
		AttachEntityToEntity(ramp, vehi, 0, 0.0, 3.0, 0.0, 0.0, 0.0, 180.0, false, false, true, false, 0, true)
		SetVehicleCustomPrimaryColour(vehi, 0, 0, 0)
		SetVehicleCustomSecondaryColour(vehi, 0, 0, 0)
		MaxOut(vehi)
	else
        return
	end
end

function ContCar(player)
	local ped = GetPlayerPed(player)
	local coords = GetOffsetFromEntityInWorldCoords(ped, 0.0, 8.0, 0.5)
	local x = coords.x
	local y = coords.y
	local z = coords.z

	if not HasModelLoaded(GetHashKey("t20")) then
		RequestModel(GetHashKey("t20"))
		Wait(500)
	end

	local vehi = CreateVehicle(GetHashKey("t20"), x, y, z, 0.0, 1, 1)
	Wait(50)
	if DoesEntityExist(vehi) then
	    local ramp = CreateObject(GetHashKey("prop_container_01a"), x, y, z - 1, 1, 1, 1)
		SetEntityVisible(vehi, false)
		--SetEntityHeading(vehi, GetEntityHeading(ped))
		SetPedIntoVehicle(ped, vehi, -1)
		AttachEntityToEntity(ramp, vehi, 0, 0.0, 3.0, 0.0, 0.0, 0.0, 180.0, false, false, true, false, 0, true)
		--SetVehicleCustomPrimaryColour(vehi, 0, 0, 0)
		--SetVehicleCustomSecondaryColour(vehi, 0, 0, 0)
		MaxOut(vehi)
	else
        return
	end
end

function RampCar1(player)
	local ped = GetPlayerPed(player)
	local coords = GetOffsetFromEntityInWorldCoords(ped, 0.0, 8.0, 0.5)
	local x = coords.x
	local y = coords.y
	local z = coords.z

	if not HasModelLoaded(GetHashKey("sultan")) then
		RequestModel(GetHashKey("sultan"))
		Wait(500)
	end

	local vehi = CreateVehicle(GetHashKey("sultan"), x, y, z, 0.0, 1, 1)
	Wait(50)
	if DoesEntityExist(vehi) then
	    local ramp = CreateObject(GetHashKey("prop_jetski_ramp_01"), x, y, z - 1, 1, 1, 1)
		SetEntityHeading(vehi, GetEntityHeading(ped))
		SetPedIntoVehicle(ped, vehi, -1)
		AttachEntityToEntity(ramp, vehi, 0, 0.0, 3.0, 0.0, 0.0, 0.0, 180.0, false, false, true, false, 0, true)
		SetVehicleCustomPrimaryColour(vehi, 0, 0, 0)
		SetVehicleCustomSecondaryColour(vehi, 0, 0, 0)
		MaxOut(vehi)
	else
        return
	end
end

function SWATTeamPullUp(player)
	for i = 1, 1 do
		local ped = GetPlayerPed(player)
		local coords = GetEntityCoords(ped)

		local ret, x, y, z = GetClosestRoad(coords.x + 100.0, coords.y + 125.0, coords.z, 1, 1)

		local pedmodel = "s_m_y_swat_01"
		local carmodel = "riot"

		RequestModel(GetHashKey(pedmodel))
		RequestModel(GetHashKey(carmodel))

		local loadattemps = 0

		while not HasModelLoaded(GetHashKey(pedmodel)) and not HasModelLoaded(GetHashKey(carmodel)) do
			loadattemps = loadattemps + 1
			Citizen.Wait(1)
			if loadattemps > 10000 then
    	        break
			end
		end

		local nped = CreatePed(31, pedmodel, x, y, z, 0.0, true, true)
		local nped2 = CreatePed(31, pedmodel, x, y, z, 0.0, true, true)
		local nped3 = CreatePed(31, pedmodel, x, y, z, 0.0, true, true)
		local nped4 = CreatePed(31, pedmodel, x, y, z, 0.0, true, true)

		local veh = CreateVehicle(GetHashKey(carmodel), x, y, z, GetEntityHeading(ped), 1, 1)
		
		SetVehicleSiren(veh, true)
	
		ClearPedTasks(nped)
	
		GiveWeaponToPed(nped, "WEAPON_ASSAULTRIFLE", 9999, false, true)
		GiveWeaponToPed(nped2, "WEAPON_ASSAULTRIFLE", 9999, false, true)
		GiveWeaponToPed(nped3, "WEAPON_ASSAULTRIFLE", 9999, false, true)
		GiveWeaponToPed(nped4, "WEAPON_MINIGUN", 9999, false, true)
	
		if DoesEntityExist(veh) then
			SetPedIntoVehicle(nped, veh, -1)
			SetPedIntoVehicle(nped2, veh, 0)
			SetPedIntoVehicle(nped3, veh, 1)
			SetPedIntoVehicle(nped4, veh, 2)
		else
			DeleteEntity(nped)
			DeleteEntity(nped2)
			DeleteEntity(nped3)
			DeleteEntity(nped4)
			DeleteEntity(veh)
		end

		TaskVehicleDriveToCoord(nped, veh, coords.x + 7 * i, coords.y + 7 * i, coords.z, 200.0, 40.0, GetHashKey(veh), 6, 1.0, true)
		
		TaskCombatPed(nped2, GetPlayerPed(selectedPlayer), true, true)
		TaskCombatPed(nped3, GetPlayerPed(selectedPlayer), true, true)
		TaskCombatPed(nped4, GetPlayerPed(selectedPlayer), true, true)

		SetRelationshipBetweenGroups(5, GetHashKey(ped), GetHashKey(nped))
		SetRelationshipBetweenGroups(5, GetHashKey(nped), GetHashKey(ped))
		SetRelationshipBetweenGroups(5, GetHashKey(ped), GetHashKey(nped2))
		SetRelationshipBetweenGroups(5, GetHashKey(nped2), GetHashKey(ped))
		SetRelationshipBetweenGroups(5, GetHashKey(ped), GetHashKey(nped))
		SetRelationshipBetweenGroups(5, GetHashKey(nped3), GetHashKey(ped))
		SetRelationshipBetweenGroups(5, GetHashKey(ped), GetHashKey(nped3))
		SetRelationshipBetweenGroups(5, GetHashKey(nped4), GetHashKey(ped))
		SetRelationshipBetweenGroups(5, GetHashKey(ped), GetHashKey(nped4))

		SetPedKeepTask(nped, true)
		SetPedKeepTask(nped2, true)
		SetPedKeepTask(nped3, true)
		SetPedKeepTask(nped4, true)

		SetVehicleOnGroundProperly(veh)
    end
end

function StartFireworks()
	Citizen.CreateThread(function()
		box = nil

		if not HasNamedPtfxAssetLoaded("scr_indep_fireworks") then
			RequestNamedPtfxAsset("scr_indep_fireworks")
			while not HasNamedPtfxAssetLoaded("scr_indep_fireworks") do
			   Wait(10)
			end
		end
	
		local pedcoords = GetEntityCoords(GetPlayerPed(-1))
		local ped = GetPlayerPed(-1)
		local times = 20
	
		   
		box = CreateObject(GetHashKey('ind_prop_firework_03'), pedcoords, true, false, false)
		PlaceObjectOnGroundProperly(box)
		FreezeEntityPosition(box, true)
		local firecoords = GetEntityCoords(box)
	    DeleteEntity(box)

		repeat
		UseParticleFxAssetNextCall("scr_indep_fireworks")
		local part1 = StartNetworkedParticleFxNonLoopedAtCoord("scr_indep_firework_trailburst", firecoords, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
		times = times - 1
		Citizen.Wait(2000)
		until(times == 0)
		DeleteEntity(box)
		box = nil
	end)
end

function TeleportToCoords(x, y, z, heading)
	if ISMVariables.TeleportOptions.smoothteleport then
		SwitchOutPlayer(PlayerPedId(), 0, 1)
		Wait(800)
		if IsPedInAnyVehicle(PlayerPedId(), false) then
			SetEntityCoords(GetPlayersLastVehicle(), x, y, z)
			SetPedIntoVehicle(PlayerPedId(), playersveh, -1)
		else
			SetEntityCoords(PlayerPedId(), x, y, z)
		end
		SwitchInPlayer(PlayerPedId())
	else
		if IsPedInAnyVehicle(PlayerPedId(), false) then
			SetEntityCoords(GetPlayersLastVehicle(), x, y, z)
		else
			SetEntityCoords(PlayerPedId(), x, y, z)
		end
	end
end

function FlyPlaneIntoPlayer(player)
	
	local ped = GetPlayerPed(player)
	local coords = GetEntityCoords(ped)
	
	local pedmodel = "a_m_m_eastsa_01"
	local planemodel = "jet"

	RequestModel(GetHashKey(pedmodel))
	RequestModel(GetHashKey(planemodel))

    local loadattemps = 0

	while not HasModelLoaded(GetHashKey(pedmodel)) do
		loadattemps = loadattemps + 1
		Citizen.Wait(1)
		if loadattemps > 10000 then
            break
		end
	end

	while not HasModelLoaded(GetHashKey(planemodel)) and loadattemps < 10000 do
		Wait(500)
	end

	
	local nped = CreatePed(31, pedmodel, coords.x, coords.y, coords.z, 0.0, true, true)

	local veh = CreateVehicle(GetHashKey(planemodel), coords.x, coords.y, coords.z + 250.0, GetEntityHeading(ped), 1, 1)
	
	SetVehicleEngineOn(veh, true, true, true)

	ClearPedTasks(nped)
	
	SetPedIntoVehicle(nped, veh, -1)

	-- SetPedIntoVehicle(PlayerPedId(), veh, 0)

	SetEntityRotation(veh, -90.0, 0.0, 0.0, 0.0, true)

	SetVehicleForwardSpeed(veh, 336.0)

	-- TaskVehicleDriveToCoord(nped, veh, coords.x, coords.y, coords.z + 10.0, 10.0, true, GetHashKey(veh), 5, 1.0, true)
	
	SetPedKeepTask(nped, true)
end

function HelicopterChase(player)

	ped = GetPlayerPed(player)
	coords = GetEntityCoords(ped)
	
	local pedmodel = "a_m_m_eastsa_01"
	local planemodel = "buzzard2"

	RequestModel(GetHashKey(pedmodel))
	RequestModel(GetHashKey(planemodel))

    local loadattemps = 0

	while not HasModelLoaded(GetHashKey(pedmodel)) do
		loadattemps = loadattemps + 1
		Citizen.Wait(1)
		if loadattemps > 10000 then
            break
		end
	end

	while not HasModelLoaded(GetHashKey(planemodel)) and loadattemps < 10000 do
		Wait(500)
	end

	local nped = CreatePed(31, pedmodel, coords.x, coords.y, coords.z, 0.0, true, true)

	local veh = CreateVehicle(GetHashKey(planemodel), coords.x, coords.y + 15.0, coords.z + 60.0, GetEntityHeading(ped), 1, 1)
	
	local nped2 = CreatePedInsideVehicle(veh, 31, pedmodel, 0, true, true)
	local nped3 = CreatePedInsideVehicle(veh, 31, pedmodel, 1, true, true)
	local nped4 = CreatePedInsideVehicle(veh, 31, pedmodel, 2, true, true)

	ClearPedTasks(nped)
	
	SetPedIntoVehicle(nped, veh, -1)
	SetPedIntoVehicle(nped2, veh, 0)
	SetPedIntoVehicle(nped3, veh, 1)
	SetPedIntoVehicle(nped4, veh, 2)

	GiveWeaponToPed(nped2, "WEAPON_ASSAULTRIFLE", 9999, false, true)
	GiveWeaponToPed(nped3, "WEAPON_ASSAULTRIFLE", 9999, false, true)
	GiveWeaponToPed(nped4, "WEAPON_ASSAULTRIFLE", 9999, false, true)
	
	SetRelationshipBetweenGroups(5, GetHashKey(ped), GetHashKey(nped))
	SetRelationshipBetweenGroups(5, GetHashKey(nped), GetHashKey(ped))

	SetRelationshipBetweenGroups(5, GetHashKey(ped), GetHashKey(nped2))
	SetRelationshipBetweenGroups(5, GetHashKey(nped2), GetHashKey(ped))

	SetVehicleEngineOn(veh, 10, true, false)

	TaskVehicleChase(nped, GetPlayerPed(selectedPlayer))

	SetPedKeepTask(nped, true)
	
	SetPedCanSwitchWeapon(nped2, true)
	SetPedCanSwitchWeapon(nped3, true)
	SetPedCanSwitchWeapon(nped4, true)
	
	SetEntityInvincible(nped, true)
	SetEntityInvincible(nped2, true)
	SetEntityInvincible(nped3, true)
	SetEntityInvincible(nped2, true)
	
	TaskCombatPed(nped2, GetPlayerPed(selectedPlayer), 0, 16.0)
	TaskCombatPed(nped3, GetPlayerPed(selectedPlayer), 0, 16.0)
	TaskCombatPed(nped4, GetPlayerPed(selectedPlayer), 0, 16.0)

	SetPedKeepTask(nped, true)
	SetPedKeepTask(nped2, true)
	SetPedKeepTask(nped3, true)
	SetPedKeepTask(nped4, true)

	SetRelationshipBetweenGroups(5,GetHashKey("PLAYER"),GetHashKey(pedmodel))
	SetRelationshipBetweenGroups(5,GetHashKey(pedmodel),GetHashKey("PLAYER"))
           
end

local stops = 0 

function SpamServerChatLoop()
	stops = 0 
	Citizen.CreateThread(function()
		while ISMVariables.MiscOptions.SpamServerChat do
			Wait(1)
			SpamServerChat()
			mocks = mocks + 1
			if mocks > 1250 then
				stops = stops + 1
				Wait(10 * 1000)
				mocks = 0
			elseif stops > 5 then
				Wait(60 * 1000)
				stops = 0
			end
			if killmenu then
				break
			end
		end
	end)
end

local rand = 1
function SpamServerChat()
	colourslist = {'^1', '^2', '^3', '^4' , '^5', '^6', '^7', '^8', '^9'}
	
	local colour = colourslist[rand]

	if rand >= 9 then
		rand = 1
	else
	    rand = rand + 1 
	end 

	TriggerServerEvent("_chat:messageEntered", tostring(colour) .. "ISM Menu", { 255, 255, 255 },  tostring(colour) .. "ISM Menu on Top | discord.gg/TVxy6HwNSg")
	TriggerServerEvent("_chat:messageEntered", tostring(colour) .. "ISM Menu", { 255, 255, 255 },  tostring(colour) .. "ISM Menu on Top | discord.gg/TVxy6HwNSg")

	--TriggerServerEvent("_chat:messageEntered", tostring(colour) .. "ISM Menu", { 255, 255, 255 },  tostring(colour) .. " ISM Menu on Top Baby, Oooh Nice Skiddy Server. ISM Detects ur Anticheats")
end

function TeleportToPlayer(target)
    local ped = GetPlayerPed(target)
    local pos = GetEntityCoords(ped)
    SetEntityCoords(PlayerPedId(), pos)
end

function ISMMENU.Functions.SpawnPed(Data)
    local LoadAttemps = 0
	
	RequestModel(GetHashKey(Data.Model))

	while not HasModelLoaded(GetHashKey(Data.Model)) and LoadAttemps < 100 do
		LoadAttemps = LoadAttemps + 1
		RequestModel(GetHashKey(Data.Model))
		Citizen.Wait(1)
	end

	if not HasModelLoaded(Data.Model) then
        PushNotification("Request Model Timeout", 600)
		return
	end

	x, y, z = table.unpack(Data.Coords)

	local Ped = CreatePed(Data.Behaviour, Data.Model, x, y, z, 0.0, true, true)

	if Data.Behaviour == 24 then
		TaskCombatPed(Ped, GetPlayerPed(selectedPlayer), 0, 16 )
	end
	
	if Data.Weapon then
		GiveWeaponToPed(Ped, Data.Weapon, 9999, false, true)
	end

	SetEntityCoords(Ped, Data.Coords)

	return Ped
end

function SpawnPed(player, model, angry)
	local ped = GetPlayerPed(player)
	local coords = GetEntityCoords(ped)
	local x = coords.x
	local y = coords.y
	local z = coords.z
	
	RequestModel(GetHashKey(model))
	
    local loadattemps = 0

	while not HasModelLoaded(GetHashKey(model)) do
		loadattemps = loadattemps + 1
		Citizen.Wait(1)
		if loadattemps > 10000 then
			PushNotification("Request Model Timeout", 600)
            break
		end
	end

	if angry then
		local nped = CreatePed(31, model, x, y, z, 0.0, true, true)
		TaskCombatPed(nped, ped, 0, 16 )
		if (model == "csb_mweather") then
			SetEntityInvincible(nped, true) 
		    GiveWeaponToPed(nped, "WEAPON_RAYMINIGUN", 9999, false, true)
		end
	else
		local nped = CreatePed(4, model, x, y, z, 0.0, true, true)
	end

	SetEntityCoords(nped, x, y, z, 1, 1, 1, false)

	return nped
end

function FakeChatMessage(name)
	if AntiCheats.ChocoHax or AntiCheats.WaveSheild or AntiCheats.BadgerAC then
		PushNotification("Anticheat Detected! Function Blocked", 600)
	else
		local result = ISMMENU.KeyboardEntry("Message as " .. name, 200)
		
		if result == "" then

		else
		    TriggerServerEvent("_chat:messageEntered", name, { 255, 255, 255 }, result)
		end
    end
end

function SpawnVehAtCoords(model, coords)
	if HasModelLoaded(GetHashKey(model)) then

	else
		RequestModel(GetHashKey(model))
		Wait(500)
	end
    if HasModelLoaded(GetHashKey(model)) then
		local veh = CreateVehicle(GetHashKey(model), coords.x + 1.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
		return veh
    end
end

function ExplosionAllPlayers()
	local playerlist = GetActivePlayers()
	
	for i = 1, #playerlist do
		if ISMVariables.AllOnlinePlayers.IncludeSelf and playerlist[i] ~= PlayerId() then
			local ped = GetPlayerPed(playerlist[i])
			local coords = GetEntityCoords(ped)
			AddExplosion(coords.x, coords.y, coords.z, 4, 100.0, true, false, 0.0)
		elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
			local ped = GetPlayerPed(playerlist[i])
			local coords = GetEntityCoords(ped)
			AddExplosion(coords.x, coords.y, coords.z, 4, 100.0, true, false, 0.0)
      	end
	end
end

function RampPlayer(player)
	Citizen.CreateThread(function()
		local ped = GetPlayerPed(player)
		local coords = GetEntityCoords(ped)
		local x = coords.x
		local y = coords.y
		local z = coords.z
		
		local faggot = CreateObject(GetHashKey("stt_prop_stunt_track_start"), x, y, z, 1, 1, 1)
		local faggot2 = CreateObject(GetHashKey("stt_prop_stunt_track_start"), x + 10, y, z, 1, 1, 1)
		local faggot3 = CreateObject(GetHashKey("stt_prop_stunt_track_start"), x, y + 10, z, 1, 1, 1)
		SetEntityHeading(faggot, GetEntityHeading(ped))
		SetEntityHeading(faggot2, GetEntityHeading(ped) + 90)
		SetEntityHeading(faggot3, GetEntityHeading(ped) + 160)
		FreezeEntityPosition(faggot, true)
		FreezeEntityPosition(faggot2, true)
		FreezeEntityPosition(faggot3, true)

		if killmenu then
			return
		end
		return ExitThread
	end)
end

function DildosServer()
	local playerlist = GetActivePlayers()
	local anticrash = 0

	RequestModel("prop_cs_dildo_01")

	while not HasModelLoaded("prop_cs_dildo_01") and anticrash < 5 do
		anticrash = anticrash + 1
        Wait(500)
	end

	for i = 1, #playerlist do
		local ped = GetPlayerPed(playerlist[i])
		local coords = GetEntityCoords(ped)

		for i = 1, 15 do
		    CreateObject(GetHashKey("prop_cs_dildo_01"), coords.x, coords.y, coords.z, 1, 1, 1)
		end
	end
end

function AllPlayersAreARamp()
	local playerlist = GetActivePlayers()
	
	for i = 1, #playerlist do
		Wait(0)
		local PlayerToRamp = playerlist[i]
		RampPlayer(PlayerToRamp)
	end
end

function BusServerLoop()
	local playerlist = GetActivePlayers()
	
    local model = "airbus"

	if HasModelLoaded(GetHashKey(model)) then

	else
		RequestModel(GetHashKey(model))
		Wait(500)
	end

	Citizen.CreateThread(function()
		while ISMVariables.AllOnlinePlayers.busingserverloop do
			Wait(150)
			if killmenu then
				break
			end
	        BusServer()
		end
    end)
end

function CargoPlaneServerLoop()
	local playerlist = GetActivePlayers()
	
    local model = "cargoplane"

	if HasModelLoaded(GetHashKey(model)) then

	else
		RequestModel(GetHashKey(model))
		Wait(500)
	end

	Citizen.CreateThread(function()
		while ISMVariables.AllOnlinePlayers.cargoplaneserverloop do
			if killmenu then
				break
			end
			Wait(150)
	        CargoplaneServer()
		end
    end)
end

function CargoplaneServer()
	local playerlist = GetActivePlayers()
	
    local model = "cargoplane"

	if HasModelLoaded(GetHashKey(model)) then

	else
		RequestModel(GetHashKey(model))
		Wait(500)
	end
	
	for i = 1, #playerlist do
		if ISMVariables.AllOnlinePlayers.IncludeSelf and playerlist[i] ~= PlayerId() then
			local currPlayer = playerlist[i]
			local coords = GetEntityCoords(GetPlayerPed(currPlayer))
	
			local busone = CreateVehicle(GetHashKey(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
			local bustwo = CreateVehicle(GetHashKey(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
		elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
			local currPlayer = playerlist[i]
			local coords = GetEntityCoords(GetPlayerPed(currPlayer))
	
			local busone = CreateVehicle(GetHashKey(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
			local bustwo = CreateVehicle(GetHashKey(model), coords.x + 5.0, coords.y + 1.0, coords.z, 0.0, 1, 1)
		end
	end
end

function BusServer()
	
	local playerlist = GetActivePlayers()
	
    local model = "airbus"

	if HasModelLoaded(GetHashKey(model)) then

	else
		RequestModel(GetHashKey(model))
		Wait(500)
	end
	
	for i = 1, #playerlist do
		if ISMVariables.AllOnlinePlayers.IncludeSelf and ActivePlayers[i] ~= PlayerId() then
			local currPlayer = playerlist[i]
			BusPlayer(currPlayer)
		elseif not ISMVariables.AllOnlinePlayers.IncludeSelf then
			local currPlayer = playerlist[i]
			BusPlayer(currPlayer)
		end
	end
end

function BusPlayer(player)
    local model = "airbus"
    local anticrash = 0
	while not HasModelLoaded(GetHashKey(model)) and anticrash < 5000 do
		anticrash = anticrash + 1
		RequestModel(GetHashKey(model))
		Wait(0)
	end

	local coords = GetEntityCoords(GetPlayerPed(player))

	local busone = CreateVehicle(GetHashKey(model), coords.x + 10, coords.y, coords.z, 0.0, 1, 1)
	SetEntityHeading(busone, 90.0)

	if DoesEntityExist(busone) then
		ApplyForceToEntity(busone, 1, -5000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
	else
		SetEntityCoords(busone, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, false)
	end

	Wait(150)

	local bustwo = CreateVehicle(GetHashKey(model), coords.x + 10, coords.y, coords.z, 0.0, 1, 1)
	SetEntityHeading(bustwo, 90.0)

	if DoesEntityExist(bustwo) then
	    ApplyForceToEntity(bustwo, 1, -5000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
	else
		SetEntityCoords(bustwo, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, false)
	end
end

function RageShoot(target)
    if not IsPedDeadOrDying(target) then
        local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, "SKEL_HEAD"), 0.0, 0.0, 0.0)
        local _, weapon = GetCurrentPedWeapon(PlayerPedId())
        ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
        ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0.1, 0)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
        ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0.1, 0, 0)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
    end
end

ISMVariables.Notifications = {}

Citizen.CreateThread(function()
	while not killmenu do

		if #ISMVariables.Notifications > 0 then
			ISMMENU.DrawText([[[ISM Menu] ~w~Notifications]], {ISMMENU.UI.NotificationX, ISMMENU.UI.NotificationY}, {ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255}, 0.45, 4, 0)
			ISMMENU.DrawRect(ISMMENU.UI.NotificationX + 0.15, ISMMENU.UI.NotificationY + 0.0175, 0.30, 0.035, { r = 0, g = 0, b = 0, a = 220 })
			ISMMENU.DrawRect(ISMMENU.UI.NotificationX + 0.15, ISMMENU.UI.NotificationY + 0.0345, 0.30, 0.001, { r = rgb.r, g = rgb.g, b = rgb.b, a = 255 })
			
			for i = 1, #ISMVariables.Notifications do
				if ISMVariables.Notifications[i][2] == nil then
					ISMVariables.Notifications[i][2] = 2
				end

				if ISMVariables.Notifications[i][2] < 2 then
					table.remove(ISMVariables.Notifications, 1)
					break
				end
				ISMVariables.Notifications.HeaderAlpha = 255
				curNotification = ISMVariables.Notifications[i]
				ISMVariables.Notifications[i][2] = ISMVariables.Notifications[i][2] - 1
				ISMMENU.DrawRect(ISMMENU.UI.NotificationX + 0.15, ISMMENU.UI.NotificationY + 0.0175 + 0.035 * i, 0.30, 0.035, { r = 10, g = 10, b = 10, a = 220 })
				ISMMENU.DrawText("[ISM] ~w~" .. ISMVariables.Notifications[i][1], {ISMMENU.UI.NotificationX, ISMMENU.UI.NotificationY + 0.035 * i}, {ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255}, 0.45, 4, 0)
				if ISMVariables.Notifications[i][2] < 2 then
					table.remove(ISMVariables.Notifications, 1)
					break
				end
			end
		end
		
		Wait(1)
	end
end)

function PushNotification(Message, MSLength)
	Stuff = table.pack(Message, MSLength)
	table.insert(ISMVariables.Notifications, #ISMVariables.Notifications + 1, Stuff)
end

function SafeModeNotification()
	PushNotification("Safe Mode is ~g~Active ~s~Function Blocked", 600)
end

function VaultDoors()
    Citizen.CreateThread(function()
		while ISMVariables.ScriptOptions.vault_doors do 
			local ped = PlayerPedId()
			local coords = GetEntityCoords(ped)
			local door = GetClosestObjectOfType(coords.x, coords.y, coords.z, 1.0, "v_ilev_gb_vauldr", false, false, false)
			local door2 = GetClosestObjectOfType(coords.x, coords.y, coords.z, 1.0, "v_ilev_bk_vaultdoor", false, false, false)
			SetEntityCoords(door, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false)
			SetEntityCoords(door2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false)
			DeleteEntity(door)
			DeleteEntity(door2)
			Wait(5000)
		end
	end)
end

function GGACBypass()
    Citizen.CreateThread(function()
		while ISMVariables.ScriptOptions.GGACBypass do 
			TriggerServerEvent("gameCheck")
			Wait(5000)
		end
    end)
end

function ScreenshotBasicBypass()
    Citizen.CreateThread(function()
        while ISMVariables.ScriptOptions.SSBBypass and not killmenu do 
			for i = 1, 20 do
				TriggerServerEvent("EasyAdmin:CaptureScreenshot")
			end

			Wait(20000)
		end
	end)
end

local crouched = false

function CrouchScript()
    Citizen.CreateThread( function()
        while ISMVariables.ScriptOptions.script_crouch do 
            Citizen.Wait( 1 )

            local ped = GetPlayerPed( -1 )

            if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
                DisableControlAction( 0, 36, true ) -- INPUT_DUCK  

                if ( not IsPauseMenuActive() ) then 
                    if ( IsDisabledControlJustPressed( 0, 36 ) ) then 
                        RequestAnimSet( "move_ped_crouched" )

                        while ( not HasAnimSetLoaded( "move_ped_crouched" ) ) do 
                            Citizen.Wait( 100 )
                        end 

                        if ( crouched == true ) then 
	    					ResetPedMovementClipset( ped, 0 )
                            crouched = false 
                        elseif ( crouched == false ) then
							SetPedMovementClipset( ped, "move_ped_crouched", 0.25 )
                            crouched = true 
                        end 
                    end
                end 
            end 
        end
    end)
end

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------- Anticheat Detection --------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------


function RapePlayer(player)

	local rmodel = "a_m_o_acult_01"
	local ped = GetPlayerPed(player)
	local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
	local x = coords.x
	local y = coords.y
	local z = coords.z

	RequestModel(GetHashKey(rmodel))
	RequestAnimDict("rcmpaparazzo_2")

	while not HasModelLoaded(GetHashKey(rmodel)) and not killmenu do
		Citizen.Wait(0)
	end

	while not HasAnimDictLoaded("rcmpaparazzo_2") and not killmenu do
		Citizen.Wait(0)
	end

	local nped = CreatePed(31, rmodel, x, y, z, 0.0, true, true)
	SetPedComponentVariation(nped, 4, 0, 0, 0)

	SetPedKeepTask(nped)
	TaskPlayAnim(nped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1,49, 0, 16, 0, 0)

	AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, true, true, true, true, 0, true)

end

function PlayerBlips()
	if not ISMVariables.MiscOptions.ESPBlips then
        Wait(100)
	end
	for i = 1, #ISMVariables.MiscOptions.ESPBlipDB do
		local CurrentEntry = ISMVariables.MiscOptions.ESPBlipDB[i]
		if CurrentEntry ~= nil then
			local Blip = CurrentEntry.Blip
	
			if DoesBlipExist(Blip) then
				SetBlipDisplay(Blip, 0)
				RemoveBlip(Blip)
			end
			if DoesBlipExist(CurrentEntry.Blip) then
				SetBlipDisplay(Blip, 0)
				RemoveBlip(CurrentEntry.Blip)
			end
			table.remove(ISMVariables.MiscOptions.ESPBlipDB, i)
		end
	end

	Citizen.CreateThread(function()
		while ISMVariables.MiscOptions.ESPBlips do
			Wait(100)

			local OnlinePlayers = GetActivePlayers()
			for k = 1, #OnlinePlayers do
                local CurPlayer = OnlinePlayers[k]
				if not BlipCreatedForPlayer(CurPlayer) then
					local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(CurPlayer)))
					local Blipa = AddBlipForCoord(x, y, z)
					SetBlipSprite(Blipa, 1)

					BeginTextCommandSetBlipName("STRING")
					AddTextComponentString(GetPlayerName(CurPlayer)) 
					EndTextCommandSetBlipName(Blipa)

					SetBlipShrink(Blipa, true)

					SetBlipCategory(Blipa, 7)

                    local Data = { Player = CurPlayer, Blip = Blipa }
					table.insert(ISMVariables.MiscOptions.ESPBlipDB, #ISMVariables.MiscOptions.ESPBlipDB + 1, Data)
				end
			end
	
			for i = 1, #ISMVariables.MiscOptions.ESPBlipDB do
                local CurrentEntry = ISMVariables.MiscOptions.ESPBlipDB[i]
				if CurrentEntry ~= nil then
					local CurPlayer = CurrentEntry.Player
					local CurPlayerPed = GetPlayerPed(CurPlayer)
					local x, y, z = table.unpack(GetEntityCoords(CurPlayerPed))
					local Blip = CurrentEntry.Blip
	 
					if TableHasValue(FriendsList, GetPlayerServerId(CurPlayer)) then
						ShowCrewIndicatorOnBlip(Blip, true)
						ShowFriendIndicatorOnBlip(Blip, true)
					else
						ShowCrewIndicatorOnBlip(Blip, false)
						ShowFriendIndicatorOnBlip(Blip, false)
					end
	
					SetBlipCoords(Blip, x, y, z)
	
					if IsEntityDead(CurPlayerPed) then
						SetBlipColour(Blip, 1)
					else
						SetBlipColour(Blip, 0)
					end
	
					if NetworkIsPlayerConnected(CurPlayer) ~= 1 then
						if DoesBlipExist(Blip) then
							RemoveBlip(Blip)
						end
						if DoesBlipExist(CurrentEntry.Blip) then
							RemoveBlip(CurrentEntry.Blip)
						end
						table.remove(ISMVariables.MiscOptions.ESPBlipDB, i)
					end
				end
			end
		end
	end)
end

function BlipCreatedForPlayer(player) 
	for k = 1, #ISMVariables.MiscOptions.ESPBlipDB do
		CurrentEntry = ISMVariables.MiscOptions.ESPBlipDB[k]
        if player == CurrentEntry.Player then
            return true
		end
	end
	return false
end

function splitString(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function round(num, numDecimalPlaces)
	local value = string.format("%." .. tostring(numDecimalPlaces) .. "f %%", num)
	value = tonumber(value)
	return value
end


local SpecialCharacter = {
	ClosingBracket = ")",
}

function FindDynamicTriggers()
	PushNotification("Recherche de Triggers : ~y~en cours !", 1000)
	Citizen.CreateThread(function()
		local Resources = GetResources()
		
		for i = 1, #Resources do
			Time = math.random(5, 100)
			Wait(Time)
			curres = Resources[i]
			for k, v in pairs({'fxmanifest.lua', '__resource.lua'}) do
				data = LoadResourceFile(curres, v)

				if data ~= nil then
					for line in data:gmatch("([^\n]*)\n?") do
					    TriggersFile = line:gsub("client_scripts", "")
					    TriggersFile = TriggersFile:gsub("client_script", "")
						TriggersFile = TriggersFile:gsub("exports", "")
						TriggersFile = TriggersFile:gsub('.lua','')
						local addval = string.match(TriggersFile, "/(%a+)/")
						if addval ~= nil then
							TriggersFile = TriggersFile:gsub(addval,"")
							TriggersFile = TriggersFile:gsub('%W','')
							TriggersFile = addval .. "/" .. TriggersFile
						else
							TriggersFile = TriggersFile:gsub('%W','')
						end

						if TriggersFile ~= "" then
							test = LoadResourceFile(curres, TriggersFile .. ".lua")

							if string.find(curres, "ambulance") then
								print(curres)
								print(test)
								print(TriggersFile)
							end
							if test ~= nil then
								for resline in test:gmatch("([^\n]*)\n?") do
									if string.find(resline, "TriggerEvent") then
										for i = 1, #ISMMENU.DynamicTriggers.Search do
											local CurSearch = ISMMENU.DynamicTriggers.Search[i]
											if string.find(resline, CurSearch[1]) then
												resline = resline:gsub("TriggerEvent(", "")
												resline = splitString(resline, "(")[2]
												resline = splitString(resline, ")")[1]
												resline = splitString(resline, " ")[1]
												resline = resline:gsub(" ", "")
												resline = resline:gsub("'", "")
												resline = resline:gsub('"', "")
												resline = resline:gsub(',', "")
											
												print("Detected " .. resline  .. " in " .. curres)
		
												ISMMENU.DynamicTriggers.Triggers[CurSearch[2]] = resline
											end
										end
									elseif string.find(resline, "RegisterNetEvent") then
										for i = 1, #ISMMENU.DynamicTriggers.Search do
											local CurSearch = ISMMENU.DynamicTriggers.Search[i]
											if string.find(resline, CurSearch[1]) then
												resline = resline:gsub("RegisterNetEvent(", "")
												resline = resline:gsub("'", "")
												resline = resline:gsub([["]], "")
												resline = splitString(resline, "(")[1]
												resline = splitString(resline, ")")[1]
											
												print("Detected " .. resline  .. " in " .. curres)
		
												ISMMENU.DynamicTriggers.Triggers[CurSearch[2]] = resline
											end
										end
									elseif string.find(resline, "TriggerServerEvent") then
										for i = 1, #ISMMENU.DynamicTriggers.Search do
											local CurSearch = ISMMENU.DynamicTriggers.Search[i]
											if resline ~= nil and string.find(resline, CurSearch[1]) then
												resline = resline:gsub("TriggerServerEvent(", "")
												backup = resline
												resline = splitString(resline, "(")[2]	
												if resline ~= nil then
													resline = splitString(resline, ")")[1]
													resline = splitString(resline, " ")[1]
													resline = splitString(resline, ",")[1]
													resline = resline:gsub(" ", "")
													resline = resline:gsub("'", "")
													resline = resline:gsub('"', "")
													resline = resline:gsub(',', "")
												
													print("Detected " .. resline  .. " in " .. curres)
			
													ISMMENU.DynamicTriggers.Triggers[CurSearch[2]] = resline
												else
													backup = backup:gsub(" ", "")
													backup = splitString(backup, ",")[1]
													backup = backup:gsub('%W','')
												
													print("Detected " .. backup  .. " in " .. curres)
			
													ISMMENU.DynamicTriggers.Triggers[CurSearch[2]] = backup
												end
											end
										end
									elseif string.find(resline, "TriggerServerCallback") then
										for i = 1, #ISMMENU.DynamicTriggers.Search do
											local CurSearch = ISMMENU.DynamicTriggers.Search[i]
											if string.find(resline, CurSearch[1]) then
												resline = resline:gsub("TriggerServerCallback(", "")
												resline = splitString(resline, "(")[2]
												resline = splitString(resline, ")")[1]
												resline = splitString(resline, " ")[1]
												resline = resline:gsub(" ", "")
												resline = resline:gsub("'", "")
												resline = resline:gsub('"', "")
												resline = resline:gsub(',', "")
											
												print("Detected " .. resline  .. " in " .. curres)
		
												ISMMENU.DynamicTriggers.Triggers[CurSearch[2]] = resline
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
		PushNotification("Recherche de triggers : ~g~Réussi", 1000)
	end)
end

function FindACResource()
	PushNotification("Recherche d'AntiCheat : ~y~en cours !", 1000)
	Citizen.CreateThread(function()
		local Resources = GetResources()
		
		for i = 1, #Resources do
			curres = Resources[i]
			for k, v in pairs({'fxmanifest.lua', '__resource.lua'}) do
				data = LoadResourceFile(curres, v)
				
				if data ~= nil then
					for line in data:gmatch("([^\n]*)\n?") do
						FinishedString = line:gsub("client_script", "")
						FinishedString = FinishedString:gsub(" ", "")
						FinishedString = FinishedString:gsub('"', "")
						FinishedString = FinishedString:gsub("'", "")

						local NiceSource = LoadResourceFile(curres, FinishedString)
					
						if NiceSource ~= nil and string.find(NiceSource, "This file was obfuscated using PSU Obfuscator 4.0.A") then
							if AntiCheats.VAC == false then
								PushNotification("VAC Detected in " .. curres, 1000)
							end
							AntiCheats.VAC = true
						elseif NiceSource ~= nil and string.find(NiceSource, "he is so lonely") then
							if AntiCheats.VAC == false then
								PushNotification("VAC Detected in " .. curres, 1000)
							end
							AntiCheats.VAC = true
						elseif NiceSource ~= nil and string.find(NiceSource, "Vyast") then
							if AntiCheats.VAC == false then
								PushNotification("VAC Detected in " .. curres, 1000)
							end
							AntiCheats.VAC = true
						end

						if tonumber(FinishedString) then
							if AntiCheats.ChocoHax == false then
								PushNotification("ChocoHax Detected in " .. curres, 1000)
							end
							AntiCheats.ChocoHax = true
						end
					end
				end

				if data and type(data) == 'string' and string.find(data, 'acloader.lua') and string.find(data, 'Enumerators.lua') then
					PushNotification("Badger Anticheat Detected in " .. curres, 1000)
					AntiCheats.BadgerAC = true
				end

				if data and type(data) == 'string' and string.find(data, 'client_config.lua') then
					PushNotification("ATG Detected Detected in " .. curres, 1000)
                    AntiCheats.ATG = true
				end

				if data and type(data) == 'string' and string.find(data, 'clientconfig.lua') and string.find('blacklistedmodels.lua') then
					PushNotification("ChocoHax Detected in " .. curres, 1000)
					AntiCheats.ChocoHax = true
				end
				
				if data and type(data) == 'string' and string.find(data, 'acloader.lua') then
					if not AntiCheats.BadgerAC then
						PushNotification("Badger Anticheat Detected in " .. curres, 1000)
					end
					AntiCheats.BadgerAC = true
				end

				if data and type(data) == 'string' and string.find(data, "Badger's Official Anticheat") then
					PushNotification("Badger Anticheat Detected in " .. curres, 1000)
					AntiCheats.BadgerAC = true
				end

				if data and type(data) == 'string' and string.find(data, 'TigoAntiCheat.net.dll') then
					PushNotification("Tigo Detected in " .. curres, 1000)
					AntiCheats.TigoAC = true
				end
			end
			Wait(10)
		end
	end)
end

RegisterNetEvent('chatMessage')
AddEventHandler('chatMessage', function(author, color, text)
	local pname = GetPlayerName(source)
	local pid = GetPlayerServerId(source)

	if pname == "*Invalid*" then
        return
	end

	if pid ~= 0 then
        return
	end

	if string.find(author, "Choco") then
		AntiCheats.ChocoHax = true
	elseif string.find(author, "Badger AntiCheat") then
		AntiCheats.BadgerAC = true
	elseif string.find(author, "Tigo") then
		AntiCheats.TigoAC = true
	elseif string.find(author, "WaveSheild") then
		AntiCheats.WaveSheild = true
	elseif string.find(author, "VAC") then
		AntiCheats.VAC = true
	end
end)

function StartPersonalVehicleCam()
    ClearFocus()

    local playerPed = PlayerPedId()
    
    ISMVariables.VehicleOptions.PersonalVehicleCam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", GetEntityCoords(playerPed), 0, 0, 0, 50.0 * 1.0)

    SetCamActive(ISMVariables.VehicleOptions.PersonalVehicleCam, true)
    RenderScriptCams(true, false, 0, true, false)
    
	SetCamAffectsAiming(ISMVariables.VehicleOptions.PersonalVehicleCam, false)
	
	AttachCamToEntity(ISMVariables.VehicleOptions.PersonalVehicleCam, ISMVariables.VehicleOptions.PersonalVehicle, 0.0, -6.6, 1.2, true)
end

function EndPersonalVehicleCam()
	ClearFocus()
	
    RenderScriptCams(false, false, 0, true, false)
	DestroyCam(ISMVariables.VehicleOptions.PersonalVehicleCam, false)

	SetFocusEntity(PlayerPedId())

	ISMVariables.VehicleOptions.PersonalVehicleCam = nil
end

--------------------------------------------------
---- CINEMATIC CAM FOR FIVEM MADE BY KIMINAZE ----
--------------------------------------------------

--------------------------------------------------
------------------- VARIABLES --------------------
--------------------------------------------------

-- main variables

local offsetRotX = 0.0
local offsetRotY = 0.0
local offsetRotZ = 0.0

local offsetCoords = {}
offsetCoords.x = 0.0
offsetCoords.y = 0.0
offsetCoords.z = 0.0

local counter = 0
local precision = 1.0
local currPrecisionIndex
local precisions = {}

local speed = 1.0

local currFilter = 1
local currFilterIntensity = 10
local filterInten = {}
for i=0.1, 2.01, 0.1 do table.insert(filterInten, tostring(i)) end

local charControl = false

local isAttached = false
local entity
local camCoords

local pointEntity = false

-- menu variables

local itemCamPrecision

local itemFilter
local itemFilterIntensity

local itemAttachCam

local itemPointEntity

local ObjectSpoonerButtons = {
	{
		["label"] = "Ouvrir le menu",
		["button"] = "~INPUT_ENTER~"
	},
	{
		["label"] = "Freecam rapide",
		["button"] = "~INPUT_SPRINT~"
	},
	{
		["label"] = "Editer",
		["button"] = "~INPUT_AIM~"
	},
	{
		["label"] = "Supprimer",
		["button"] = "~INPUT_CREATOR_DELETE~"
	},
	{
		["label"] = "Dupliquer",
		["button"] = "~INPUT_LOOK_BEHIND~"
	},
	{
		["label"] = "Ajoute un objet",
		["button"] = "~INPUT_REPLAY_STARTPOINT~"
	},
	{
		["label"] = "Créer un véhicule",
		["button"] = "~INPUT_PICKUP~"
	}
}

local FreeCameraButtons = {
	{
		["label"] = "Freecam rapide",
		["button"] = "~INPUT_SPRINT~"
	},
	{
		["label"] = "Se donner le véhicule",
		["button"] = "~INPUT_CONTEXT_SECONDARY~"
	},
	{
		["label"] = "Se télèporter dans le véhicule",
		["button"] = "~INPUT_MULTIPLAYER_INFO~"
	}
}

function GetGroundZAtCoords(x, y)
	for i = 1, 500 do
		local retval, z, normal = GetGroundZAndNormalFor_3dCoord(x, y, i)
		print(normal)
        if retval == 1 then
            return z
		end
    end
end

--------------------------------------------------
---------------------- LOOP ----------------------
--------------------------------------------------

Citizen.CreateThread(function()
	while not killmenu do
		if (cam) then
			if noclipping then
			    NoClip()
			end

			ProcessCamControls()
			if FreeCameraMode == "Object Spooner" then

				if GetEntityInFrontOfCam() == 0 then
					ISMMENU.DrawRect(0.5, 0.5, 0.00075, 0.035, { r = 255, g = 255, b = 255, a = 200 })
					ISMMENU.DrawRect(0.5,  0.5, 0.02, 0.0035, { r = 255, g= 255, b = 255, a = 200 })
				else
	
					ISMMENU.DrawRect(0.5, 0.5, 0.00075, 0.035, { r = 0, g = 255, b = 0, a = 200 })
					ISMMENU.DrawRect(0.5,  0.5, 0.02, 0.0035, { r = 0, g= 255, b = 0, a = 200 })
	
					
					local plyrveh = GetEntityInFrontOfCam()
					local Dimensions = GetModelDimensions(plyrveh)
					local plyrvehcoords = GetEntityCoords(plyrveh)
			
					if Dimensions ~= nil then

						attempt1 = GetOffsetFromEntityInWorldCoords(plyrveh, Dimensions.x, Dimensions.y, Dimensions.z)
						attempt2 = GetOffsetFromEntityInWorldCoords(plyrveh, -Dimensions.x, Dimensions.y, Dimensions.z)
			
						attempt3 = GetOffsetFromEntityInWorldCoords(plyrveh, Dimensions.x, Dimensions.y, -Dimensions.z + -Dimensions.z / 2 + 0.1)
						attempt4 = GetOffsetFromEntityInWorldCoords(plyrveh, -Dimensions.x, Dimensions.y, -Dimensions.z + -Dimensions.z / 2 + 0.1)
				
						attempt5 = GetOffsetFromEntityInWorldCoords(plyrveh, Dimensions.x, -Dimensions.y, -Dimensions.z + -Dimensions.z / 2 + 0.1)
						attempt6 = GetOffsetFromEntityInWorldCoords(plyrveh, Dimensions.x, -Dimensions.y, -Dimensions.z + -Dimensions.z / 2 + 0.1)
						
						attempt7 = GetOffsetFromEntityInWorldCoords(plyrveh, -Dimensions.x, -Dimensions.y, -Dimensions.z + -Dimensions.z / 2 + 0.1)
						attempt8 = GetOffsetFromEntityInWorldCoords(plyrveh, -Dimensions.x, -Dimensions.y, -Dimensions.z + -Dimensions.z / 2 + 0.1)
				
						attempt9 = GetOffsetFromEntityInWorldCoords(plyrveh, -Dimensions.x, -Dimensions.y, Dimensions.z)
						attempt10 = GetOffsetFromEntityInWorldCoords(plyrveh, Dimensions.x, -Dimensions.y, Dimensions.z)
						
						DrawLine(attempt1.x, attempt1.y, attempt1.z, attempt2.x, attempt2.y, attempt2.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				
						DrawLine(attempt3.x, attempt3.y, attempt3.z, attempt4.x, attempt4.y, attempt4.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt3.x, attempt3.y, attempt3.z, attempt6.x, attempt6.y, attempt6.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt4.x, attempt4.y, attempt4.z, attempt5.x, attempt5.y, attempt5.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt3.x, attempt3.y, attempt3.z, attempt7.x, attempt7.y, attempt7.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt4.x, attempt4.y, attempt4.z, attempt8.x, attempt8.y, attempt8.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt4.x, attempt4.y, attempt4.z, attempt8.x, attempt8.y, attempt8.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt6.x, attempt6.y, attempt6.z, attempt8.x, attempt8.y, attempt8.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				
						DrawLine(attempt1.x, attempt1.y, attempt1.z, attempt3.x, attempt3.y, attempt3.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt2.x, attempt2.y, attempt2.z, attempt4.x, attempt4.y, attempt4.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				
						DrawLine(attempt1.x, attempt1.y, attempt1.z, attempt9.x, attempt9.y, attempt9.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt2.x, attempt2.y, attempt2.z, attempt10.x, attempt10.y, attempt10.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt10.x, attempt10.y, attempt10.z, attempt8.x, attempt8.y, attempt8.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				
						DrawLine(attempt2.x, attempt2.y, attempt2.z, attempt9.x, attempt9.y, attempt9.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt10.x, attempt10.y, attempt10.z, attempt9.x, attempt9.y, attempt9.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt1.x, attempt1.y, attempt1.z, attempt10.x, attempt10.y, attempt10.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt1.x, attempt1.y, attempt1.z, attempt4.x, attempt4.y, attempt4.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt2.x, attempt2.y, attempt2.z, attempt3.x, attempt3.y, attempt3.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt9.x, attempt9.y, attempt9.z, attempt8.x, attempt8.y, attempt8.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt10.x, attempt10.y, attempt10.z, attempt6.x, attempt6.y, attempt6.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt9.x, attempt9.y, attempt9.z, attempt6.x, attempt6.y, attempt6.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						
						DrawLine(attempt6.x, attempt6.y, attempt6.z, attempt1.x, attempt1.y, attempt1.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt7.x, attempt7.y, attempt7.z, attempt2.x, attempt2.y, attempt2.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt9.x, attempt9.y, attempt9.z, attempt4.x, attempt4.y, attempt4.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
						DrawLine(attempt10.x, attempt10.y, attempt10.z, attempt3.x, attempt3.y, attempt3.z, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 255)
				    end
				end
	
				local coords = GetCoordCamLooking()

				local retval, zz, normal = GetGroundZAndNormalFor_3dCoord(coords.x, coords.y, coords.z + 100)

				-- DrawMarker(1, coords.x, coords.y, zz, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 1.5, ISMMENU.rgb.r, ISMMENU.rgb.g, ISMMENU.rgb.b, 200, 0, 0, 0, 0)

				DrawBottomHelp(ObjectSpoonerButtons)
	
				if IsDisabledControlJustReleased(0, 23) then
					ISMMENU.OpenMenu("objectslist")
				end
	
				if IsDisabledControlJustReleased(0, 38) then
	
					ISMMENU.CloseMenu()
					ISMMENU.CloseMenu()
	
					local vehmodel = ISMMENU.KeyboardEntry("~b~Nom du véhicule :", 50)
	
					
					if IsModelAVehicle(vehmodel) then
						CreateVehicle(GetHashKey(vehmodel), coords.x, coords.y, coords.z, GetCamRot(cam, 2)[3], 1, 1)
					else
						PushNotification("Le nom du véhicule n'existe pas :", 600)
					end
	
					ISMMENU.OpenMenu("objectslist")
				end
	
				if IsDisabledControlJustReleased(0, 26) then
					local entity = GetEntityInFrontOfCam()
					if entity ~= 0 and DoesEntityExist(entity) and GetEntityType(entity) ~= 0 or nil then
						local modeltodupe = GetEntityModel(entity)
						cords = GetEntityCoords(entity)
						if IsModelAVehicle(modeltodupe) then
							CreateVehicle(modeltodupe, cords.x, cords.y, cords.z, GetEntityHeading(entity), 1, 1)
						elseif IsEntityAPed(entity) then
							pud = CreatePed(5, modeltodupe, cords.x, cords.y, cords.z, GetEntityHeading(entity), 1, 1)
							TaskWanderStandard(pud, 10.0, 10)	
						end
					end
				end
				
				if IsDisabledControlPressed(0, 305) then
					local entity = GetEntityInFrontOfCam()
					if DoesEntityExist(entity) and not IsEntityAlreadyAdded(entity) then
						if entity ~= PlayerPedId() and entity ~= IsPedAPlayer(entity) then		
							local Information = {ID = entity, AttachedEntity = nil, AttachmentOffset = {X = 0, Y = 0, Z = 0, XAxis = 0, YAxis = 0, ZAxis = 0}}
							table.insert(ISMMENU.Objectlist, #ISMMENU.Objectlist + 1, Information)
						end
					end
				end
	
				--[[
				if IsDisabledControlJustReleased(0, 25) then
					if GetEntityInFrontOfCam() ~= PlayerPedId() and GetEntityInFrontOfCam() ~= IsPedAPlayer(GetEntityInFrontOfCam()) and GetEntityInFrontOfCam() ~= 0 then
						print("^ 1ISMMENU^0: Function does not exist")
					end
				end
				]]
	
				if IsDisabledControlPressed(0, 229) then
					if GetEntityInFrontOfCam() ~= 0 then
						ISMMENU.DrawRect(0.5, 0.5, 0.005, 0.0075, { r = 255, g = 128, b = 0, a = 200 })
					end
				end
	
				if IsDisabledControlJustReleased(0, 256) then
					if GetEntityInFrontOfCam() ~= PlayerPedId() and GetEntityInFrontOfCam() ~= IsPedAPlayer(GetEntityInFrontOfCam()) then
						if TableHasValue(spawnedobjectslist, GetEntityInFrontOfCam()) then
							RemoveValueFromTable(spawnedobjectslist, GetEntityInFrontOfCam())
						end
						NetworkRequestControlOfEntity(GetEntityInFrontOfCam())
						RequestControlOnce(GetEntityInFrontOfCam())
						DeleteEntity(GetEntityInFrontOfCam())
					end
				end
			
			elseif FreeCameraMode == "Voler un véhicule en freecam" then 
				
				if GetEntityInFrontOfCam() == 0 then
					ISMMENU.DrawRect(0.5, 0.5, 0.00075, 0.035, { r = 255, g = 255, b = 255, a = 200 })
					ISMMENU.DrawRect(0.5,  0.5, 0.02, 0.0035, { r = 255, g= 255, b = 255, a = 200 })
				else
					ISMMENU.DrawRect(0.5, 0.5, 0.00075, 0.035, { r = 0, g = 255, b = 0, a = 200 })
					ISMMENU.DrawRect(0.5,  0.5, 0.02, 0.0035, { r = 0, g= 255, b = 0, a = 200 })
				end

				if IsDisabledControlJustReleased(0, 52) then
					if IsEntityAVehicle(GetEntityInFrontOfCam()) then 
						if IsPedInAnyVehicle(PlayerPedId()) then
							oldveh = GetVehiclePedIsIn(PlayerPedId(), true)
							Wait(10)
							SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), -1)
							ISMVariables.VehicleOptions.PersonalVehicle = GetEntityInFrontOfCam()
							Wait(10)
							if IsVehicleSeatFree(oldveh, -1) then
								SetPedIntoVehicle(PlayerPedId(), oldveh, -1)
							elseif IsVehicleSeatFree(oldveh, 0) then
								SetPedIntoVehicle(PlayerPedId(), oldveh, 0)
							elseif IsVehicleSeatFree(oldveh, 1) then
								SetPedIntoVehicle(PlayerPedId(), oldveh, 1)
							elseif IsVehicleSeatFree(oldveh, 2) then
								SetPedIntoVehicle(PlayerPedId(), oldveh, 2)
							end
						else
							coords = GetEntityCoords(PlayerPedId())
							SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), -1)
							ISMVariables.VehicleOptions.PersonalVehicle = GetEntityInFrontOfCam()
							SetEntityCoords(PlayerPedId(), coords)
						end
					end
					
				elseif IsDisabledControlPressed(0, 20) then
					if IsEntityAVehicle(GetEntityInFrontOfCam()) then
						if IsVehicleSeatFree(GetEntityInFrontOfCam(), -1) then
							SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), -1)
						elseif IsVehicleSeatFree(GetEntityInFrontOfCam(), 0) then
							SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), 0)
						elseif IsVehicleSeatFree(GetEntityInFrontOfCam(), 1) then
							SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), 1)
						elseif IsVehicleSeatFree(GetEntityInFrontOfCam(), 2) then
							SetPedIntoVehicle(PlayerPedId(), GetEntityInFrontOfCam(), 2)
						end
					end
				end

				DrawBottomHelp(FreeCameraButtons)
			end
        end
        Citizen.Wait(1)
    end
end)

--------------------------------------------------
------------------- FUNCTIONS --------------------
--------------------------------------------------

function DrawBottomHelp(table)
    Citizen.CreateThread(function()
        local instructionScaleform = RequestScaleformMovie("instructional_buttons")

        while not HasScaleformMovieLoaded(instructionScaleform) do
            Wait(0)
        end

        PushScaleformMovieFunction(instructionScaleform, "CLEAR_ALL")
        PushScaleformMovieFunction(instructionScaleform, "TOGGLE_MOUSE_BUTTONS")
        PushScaleformMovieFunctionParameterBool(0)
        PopScaleformMovieFunctionVoid()

        for buttonIndex, buttonValues in ipairs(table) do
            PushScaleformMovieFunction(instructionScaleform, "SET_DATA_SLOT")
            PushScaleformMovieFunctionParameterInt(buttonIndex - 1)

            PushScaleformMovieMethodParameterButtonName(buttonValues["button"])
            PushScaleformMovieFunctionParameterString(buttonValues["label"])
            PopScaleformMovieFunctionVoid()
        end

        PushScaleformMovieFunction(instructionScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
        PushScaleformMovieFunctionParameterInt(-1)
        PopScaleformMovieFunctionVoid()
        DrawScaleformMovieFullscreen(instructionScaleform, 255, 255, 255, 255)
    end)
end

-- initialize camera
function StartFreeCam(fov)
    ClearFocus()

    local playerPed = PlayerPedId()
    
    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", GetEntityCoords(playerPed), 0, 0, 0, fov * 1.0)

    SetCamActive(cam, true)
    RenderScriptCams(true, false, 0, true, false)
    
    SetCamAffectsAiming(cam, false)

    if (isAttached and DoesEntityExist(entity)) then
        offsetCoords = GetOffsetFromEntityGivenWorldCoords(entity, GetCamCoord(cam))

        AttachCamToEntity(cam, entity, offsetCoords.x, offsetCoords.y, offsetCoords.z, true)
    end
end

-- destroy camera
function EndFreeCam()
    ClearFocus()

    RenderScriptCams(false, false, 0, true, false)
	DestroyCam(cam, false)
	
	SetFocusEntity(PlayerPedId())
    
    offsetRotX = 0.0
    offsetRotY = 0.0
    offsetRotZ = 0.0

    isAttached = false

    speed       = 1.0
    precision   = 1.0
    currFov     = GetGameplayCamFov()

    cam = nil
end
disabledControls = {
    30,     -- A and D (Character Movement)
    31,     -- W and S (Character Movement)
    21,     -- LEFT SHIFT
    36,     -- LEFT CTRL
    22,     -- SPACE
    44,     -- Q
    38,     -- E
    71,     -- W (Vehicle Movement)
    72,     -- S (Vehicle Movement)
    59,     -- A and D (Vehicle Movement)
    60,     -- LEFT SHIFT and LEFT CTRL (Vehicle Movement)
    85,     -- Q (Radio Wheel)
    86,     -- E (Vehicle Horn)
    15,     -- Mouse wheel up
    14,     -- Mouse wheel down
    37,     -- Controller R1 (PS) / RT (XBOX)
    80,     -- Controller O (PS) / B (XBOX)
    228,    -- 
    229,    -- 
    172,    -- 
    173,    -- 
    37,     -- 
    44,     -- 
    178,    -- 
    244,    -- 
}

-- process camera controls
function ProcessCamControls()
    local playerPed = PlayerPedId()

    DisableFirstPersonCamThisFrame()
    BlockWeaponWheelThisFrame()
    -- disable character/vehicle controls
	if (not charControl) then
        for k, v in pairs(disabledControls) do
            DisableControlAction(0, v, true)
        end
	end
	
	-- Switch Modes

	if IsDisabledControlJustReleased(0, 82) or IsDisabledControlJustReleased(0, 81) then
		if FreeCameraMode == "Object Spooner" then
			FreeCameraMode = "Vehicle Snatcher"
		elseif FreeCameraMode == "Vehicle Snatcher" then
			FreeCameraMode = "Object Spooner"
		end
	end

    local camCoords = GetCamCoord(cam)

    -- calculate new position
    local newPos = ProcessNewPosition(camCoords.x, camCoords.y, camCoords.z)

     -- focus cam area
     SetFocusArea(newPos.x, newPos.y, newPos.z, 0.0, 0.0, 0.0)
        
    -- set coords of cam
	SetCamCoord(cam, newPos.x, newPos.y, newPos.z)
	
	SetMinimapHideFow(false)

    -- set rotation
    SetCamRot(cam, offsetRotX, offsetRotY, offsetRotZ, 2)
end

function ProcessNewPosition(x, y, z)
    local _x = x
    local _y = y
    local _z = z

    -- keyboard
    if (IsInputDisabled(0) and not charControl) then
        if (IsDisabledControlPressed(1, 32)) then
            local multX = Sin(offsetRotZ)
            local multY = Cos(offsetRotZ)
            local multZ = Sin(offsetRotX)

            _x = _x - (0.1 * speed * multX)
            _y = _y + (0.1 * speed * multY)
            _z = _z + (0.1 * speed * multZ)
        end
        if (IsDisabledControlPressed(1, 33)) then
            local multX = Sin(offsetRotZ)
            local multY = Cos(offsetRotZ)
            local multZ = Sin(offsetRotX)

            _x = _x + (0.1 * speed * multX)
            _y = _y - (0.1 * speed * multY)
            _z = _z - (0.1 * speed * multZ)
        end
        if (IsDisabledControlPressed(1, 34)) then
            local multX = Sin(offsetRotZ + 90.0)
            local multY = Cos(offsetRotZ + 90.0)
            local multZ = Sin(offsetRotY)

            _x = _x - (0.1 * speed * multX)
            _y = _y + (0.1 * speed * multY)
             _z = _z + (0.1 * speed * multZ)
        end
        if (IsDisabledControlPressed(1, 35)) then
            local multX = Sin(offsetRotZ + 90.0)
            local multY = Cos(offsetRotZ + 90.0)
            local multZ = Sin(offsetRotY)

            _x = _x + (0.1 * speed * multX)
            _y = _y - (0.1 * speed * multY)
            _z = _z - (0.1 * speed * multZ)
        end
        
            --[[
            if (IsDisabledControlPressed(1, 17)) then
                if ((speed + 0.1) < 20.0) then
                    speed = speed + 1.0
                else
                    speed = 20.0
                end
            elseif (IsDisabledControlPressed(1, 16)) then
                if (speed  > 1.0) then
                    speed = speed - 1.0
                else
                    speed = 0.1
                end
			end
			]]
			
			if IsDisabledControlPressed(0, 21) then
				speed = 15.0
			else
				speed = 2.0
			end
        

        -- rotation
        offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * precision * 8.0)
		offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * precision * 8.0)
		
    end
    

    if (offsetRotX > 90.0) then offsetRotX = 90.0 elseif (offsetRotX < -90.0) then offsetRotX = -90.0 end
    if (offsetRotY > 90.0) then offsetRotY = 90.0 elseif (offsetRotY < -90.0) then offsetRotY = -90.0 end
    if (offsetRotZ > 360.0) then offsetRotZ = offsetRotZ - 360.0 elseif (offsetRotZ < -360.0) then offsetRotZ = offsetRotZ + 360.0 end

    return {x = _x, y = _y, z = _z}
end

function ToggleCam(flag, fov)
    if (flag) then
        StartFreeCam(fov)
        _menuPool:RefreshIndex()
    else
        EndFreeCam()
        _menuPool:RefreshIndex()
    end
end

function GetEntityInFrontOfCam()
    local camCoords = GetCamCoord(cam)
    local offset = GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 40)

	local rayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, offset.x, offset.y, offset.z, -1)
    local a, b, c, d, entity = GetShapeTestResult(rayHandle)
    return entity
end

function GetPedThroughWall()
    local camCoords = GetCamCoord(cam)
    local offset = GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 40)

	local rayHandle = StartShapeTestRay(camCoords.x, camCoords.y, camCoords.z, offset.x, offset.y, offset.z, -1)
    local a, b, c, d, entity = GetShapeTestResult(rayHandle)
    return entity
end

function GetCoordCamLooking()
	Markerloc = GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 20)
	return Markerloc
end

function ToggleAttachMode()
    if (not isAttached) then
        entity = GetEntityInFrontOfCam()
        
        if (DoesEntityExist(entity)) then
            offsetCoords = GetOffsetFromEntityGivenWorldCoords(entity, GetCamCoord(cam))

            Citizen.Wait(1)
            local camCoords = GetCamCoord(cam)
            AttachCamToEntity(cam, entity, GetOffsetFromEntityInWorldCoords(entity, camCoords.x, camCoords.y, camCoords.z), true)

            isAttached = true
        end
    else
        ClearFocus()

        DetachCam(cam)

        isAttached = false
    end
end

function TogglePointing(flag)
    if (flag and isAttached) then
        pointEntity = true
        PointCamAtEntity(cam, entity, 0.0, 0.0, 0.0, 1)
    else
        pointEntity = false
        StopCamPointing(cam)
    end
end