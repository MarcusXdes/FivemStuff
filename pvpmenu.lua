function BeginTextCommandDisplayText(text)
    return Citizen.InvokeNative(0x25FBB336DF1804CB, text) 
end 

function AddTextComponentSubstringPlayerName(text)
    return Citizen.InvokeNative(0x6C188BE134E074AA, text)
end 

function EndTextCommandDisplayText(x, y)
    return Citizen.InvokeNative(0xCD015E5BB0D96A57, x, y)
end 

kkwiSras = {} kkwiSras.debug = false local menus = {} local keys = {up = 172, down = 173, left = 174, right = 175, select = 191, back = 202} local optionCount = 0 local currentKey = nil local currentMenu = nil local titleHeight = 0.11 local titleXOffset = 0.5 local titleSpacing = 2 local titleYOffset = 0.03 local titleScale = 1.0 local buttonHeight = 0.038 local buttonFont = 0 local buttonScale = 0.365 local buttonTextXOffset = 0.005 local buttonTextYOffset = 0.005 local function debugPrint(text) if kkwiSras.debug then Citizen.Trace('[kkwiSras] ' .. tostring(text)) end end local function setMenuProperty(id, property, value) if id and menus[id] then menus[id][property] = value debugPrint(id .. ' menu property changed: { ' .. tostring(property) .. ', ' .. tostring(value) .. ' }') end end local function isMenuVisible(id) if id and menus[id] then return menus[id].visible else return false end end local function setMenuVisible(id, visible, holdCurrent) if id and menus[id] then setMenuProperty(id, 'visible', visible) if not holdCurrent and menus[id] then setMenuProperty(id, 'currentOption', 1) end if visible then if id ~= currentMenu and isMenuVisible(currentMenu) then setMenuVisible(currentMenu, false) end currentMenu = id end end end local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)SetTextColour(color.r, color.g, color.b, color.a)SetTextFont(font)SetTextScale(scale, scale) if shadow then SetTextDropShadow(2, 2, 0, 0, 0) end if menus[currentMenu] then if center then SetTextCentre(center) elseif alignRight then SetTextWrap(menus[currentMenu].x, menus[currentMenu].x + menus[currentMenu].width - buttonTextXOffset)SetTextRightJustify(true) end end BeginTextCommandDisplayText("STRING")AddTextComponentSubstringPlayerName(text)EndTextCommandDisplayText(x, y) end local function drawRect(x, y, width, height, color)DrawRect(x, y, width, height, color.r, color.g, color.b, color.a) end local function drawTitle() if menus[currentMenu] then local x = menus[currentMenu].x + menus[currentMenu].width / 2 local xText = menus[currentMenu].x + menus[currentMenu].width * titleXOffset local y = menus[currentMenu].y + titleHeight * 1 / titleSpacing if menus[currentMenu].titleBackgroundSprite then DrawSprite(menus[currentMenu].titleBackgroundSprite.dict, menus[currentMenu].titleBackgroundSprite.name, x, y, menus[currentMenu].width, titleHeight, 0., 255, 255, 255, 255) else drawRect(x, y, menus[currentMenu].width, titleHeight, menus[currentMenu].titleBackgroundColor) end drawText(menus[currentMenu].title, xText, y - titleHeight / 2 + titleYOffset, menus[currentMenu].titleFont, menus[currentMenu].titleColor, titleScale, true) end end local function drawSubTitle() if menus[currentMenu] then local x = menus[currentMenu].x + menus[currentMenu].width / 2 local y = menus[currentMenu].y + titleHeight + buttonHeight / 2 local subTitleColor = {r = menus[currentMenu].titleBackgroundColor.r, g = menus[currentMenu].titleBackgroundColor.g, b = menus[currentMenu].titleBackgroundColor.b, a = 255}drawRect(x, y, menus[currentMenu].width, buttonHeight, menus[currentMenu].subTitleBackgroundColor)drawText(menus[currentMenu].subTitle, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false) if optionCount > menus[currentMenu].maxOptionCount then drawText(tostring(menus[currentMenu].currentOption) .. ' / ' .. tostring(optionCount), menus[currentMenu].x + menus[currentMenu].width, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false, false, true) end end end local function drawButton(text, subText) local x = menus[currentMenu].x + menus[currentMenu].width / 2 local multiplier = nil if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then multiplier = optionCount elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount) end if multiplier then local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2 local backgroundColor = nil local textColor = nil local subTextColor = nil local shadow = false if menus[currentMenu].currentOption == optionCount then backgroundColor = menus[currentMenu].menuFocusBackgroundColor textColor = menus[currentMenu].menuFocusTextColor subTextColor = menus[currentMenu].menuFocusTextColor else backgroundColor = menus[currentMenu].menuBackgroundColor textColor = menus[currentMenu].menuTextColor subTextColor = menus[currentMenu].menuSubTextColor shadow = true end drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor)drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow) if subText then drawText(subText, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow, true) end end end function kkwiSras.CreateMenu(id, title)menus[id] = {}menus[id].title = title menus[id].subTitle = 'INTERACTION MENU' menus[id].visible = false menus[id].previousMenu = nil menus[id].aboutToBeClosed = false menus[id].x = 0.0175 menus[id].y = 0.025 menus[id].width = 0.23 menus[id].currentOption = 1 menus[id].maxOptionCount = 10 menus[id].titleFont = 1 menus[id].titleColor = {r = 0, g = 0, b = 0, a = 255}menus[id].titleBackgroundColor = {r = 245, g = 127, b = 23, a = 255}menus[id].titleBackgroundSprite = nil menus[id].menuTextColor = {r = 255, g = 255, b = 255, a = 255}menus[id].menuSubTextColor = {r = 189, g = 189, b = 189, a = 255}menus[id].menuFocusTextColor = {r = 0, g = 0, b = 0, a = 255}menus[id].menuFocusBackgroundColor = {r = 245, g = 245, b = 245, a = 255}menus[id].menuBackgroundColor = {r = 0, g = 0, b = 0, a = 160}menus[id].subTitleBackgroundColor = {r = menus[id].menuBackgroundColor.r, g = menus[id].menuBackgroundColor.g, b = menus[id].menuBackgroundColor.b, a = 255}menus[id].buttonPressedSound = {name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET"}debugPrint(tostring(id) .. ' menu created') end function kkwiSras.CreateSubMenu(id, parent, subTitle) if menus[parent] then kkwiSras.CreateMenu(id, menus[parent].title) if subTitle then setMenuProperty(id, 'subTitle', string.upper(subTitle)) else setMenuProperty(id, 'subTitle', string.upper(menus[parent].subTitle)) end setMenuProperty(id, 'previousMenu', parent)setMenuProperty(id, 'x', menus[parent].x)setMenuProperty(id, 'y', menus[parent].y)setMenuProperty(id, 'maxOptionCount', menus[parent].maxOptionCount)setMenuProperty(id, 'titleFont', menus[parent].titleFont)setMenuProperty(id, 'titleColor', menus[parent].titleColor)setMenuProperty(id, 'titleBackgroundColor', menus[parent].titleBackgroundColor)setMenuProperty(id, 'titleBackgroundSprite', menus[parent].titleBackgroundSprite)setMenuProperty(id, 'menuTextColor', menus[parent].menuTextColor)setMenuProperty(id, 'menuSubTextColor', menus[parent].menuSubTextColor)setMenuProperty(id, 'menuFocusTextColor', menus[parent].menuFocusTextColor)setMenuProperty(id, 'menuFocusBackgroundColor', menus[parent].menuFocusBackgroundColor)setMenuProperty(id, 'menuBackgroundColor', menus[parent].menuBackgroundColor)setMenuProperty(id, 'subTitleBackgroundColor', menus[parent].subTitleBackgroundColor) else debugPrint('Failed to create ' .. tostring(id) .. ' submenu: ' .. tostring(parent) .. ' parent menu doesn\'t exist') end end function kkwiSras.CurrentMenu() return currentMenu end function kkwiSras.OpenMenu(id) if id and menus[id] then PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)setMenuVisible(id, true)debugPrint(tostring(id) .. ' menu opened') else debugPrint('Failed to open ' .. tostring(id) .. ' menu: it doesn\'t exist') end end function kkwiSras.IsMenuOpened(id) return isMenuVisible(id) end function kkwiSras.IsAnyMenuOpened() for id, _ in pairs(menus) do if isMenuVisible(id) then return true end end return false end function kkwiSras.IsMenuAboutToBeClosed() if menus[currentMenu] then return menus[currentMenu].aboutToBeClosed else return false end end function kkwiSras.CloseMenu() if menus[currentMenu] then if menus[currentMenu].aboutToBeClosed then menus[currentMenu].aboutToBeClosed = false setMenuVisible(currentMenu, false)debugPrint(tostring(currentMenu) .. ' menu closed')PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)optionCount = 0 currentMenu = nil currentKey = nil else menus[currentMenu].aboutToBeClosed = true debugPrint(tostring(currentMenu) .. ' menu about to be closed') end end end function kkwiSras.Button(text, subText) local buttonText = text if subText then buttonText = '{ ' .. tostring(buttonText) .. ', ' .. tostring(subText) .. ' }' end if menus[currentMenu] then optionCount = optionCount + 1 local isCurrent = menus[currentMenu].currentOption == optionCount drawButton(text, subText) if isCurrent then if currentKey == keys.select then PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)debugPrint(buttonText .. ' button pressed') return true elseif currentKey == keys.left or currentKey == keys.right then PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) end end return false else debugPrint('Failed to create ' .. buttonText .. ' button: ' .. tostring(currentMenu) .. ' menu doesn\'t exist') return false end end function kkwiSras.MenuButton(text, id) if menus[id] then if kkwiSras.Button(text .. themecolor .. "   " .. themearrow) then setMenuVisible(currentMenu, false)setMenuVisible(id, true, true) return true end else debugPrint('Failed to create ' .. tostring(text) .. ' menu button: ' .. tostring(id) .. ' submenu doesn\'t exist') end return false end function kkwiSras.CheckBox(text, checked, offtext, ontext, callback) if not offtext then offtext = "Off" end if not ontext then ontext = "On" end if kkwiSras.Button(text, checked and ontext or offtext) then checked = not checked debugPrint(tostring(text) .. ' checkbox changed to ' .. tostring(checked)) if callback then callback(checked) end return true end return false end function kkwiSras.ComboBox(text, items, currentIndex, selectedIndex, callback) local itemsCount = #items local selectedItem = items[currentIndex] local isCurrent = menus[currentMenu].currentOption == (optionCount + 1) if itemsCount > 1 and isCurrent then selectedItem = tostring(selectedItem) end if kkwiSras.Button(text, selectedItem) then selectedIndex = currentIndex callback(currentIndex, selectedIndex) return true elseif isCurrent then if currentKey == keys.left then if currentIndex > 1 then currentIndex = currentIndex - 1 else currentIndex = itemsCount end elseif currentKey == keys.right then if currentIndex < itemsCount then currentIndex = currentIndex + 1 else currentIndex = 1 end end else currentIndex = selectedIndex end callback(currentIndex, selectedIndex) return false end function kkwiSras.Display() if isMenuVisible(currentMenu) then if menus[currentMenu].aboutToBeClosed then kkwiSras.CloseMenu() else ClearAllHelpMessages()drawTitle()drawSubTitle()currentKey = nil if IsDisabledControlJustReleased(1, keys.down) then PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) if menus[currentMenu].currentOption < optionCount then menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1 else menus[currentMenu].currentOption = 1 end elseif IsDisabledControlJustReleased(1, keys.up) then PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) if menus[currentMenu].currentOption > 1 then menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1 else menus[currentMenu].currentOption = optionCount end elseif IsDisabledControlJustReleased(1, keys.left) then currentKey = keys.left elseif IsDisabledControlJustReleased(1, keys.right) then currentKey = keys.right elseif IsDisabledControlJustReleased(1, keys.select) then currentKey = keys.select elseif IsDisabledControlJustReleased(1, keys.back) then if menus[menus[currentMenu].previousMenu] then PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)setMenuVisible(menus[currentMenu].previousMenu, true) else kkwiSras.CloseMenu() end end optionCount = 0 end end end function kkwiSras.SetMenuWidth(id, width)setMenuProperty(id, 'width', width) end function kkwiSras.SetMenuX(id, x)setMenuProperty(id, 'x', x) end function kkwiSras.SetMenuY(id, y)setMenuProperty(id, 'y', y) end function kkwiSras.SetMenuMaxOptionCountOnScreen(id, count)setMenuProperty(id, 'maxOptionCount', count) end function kkwiSras.SetTitle(id, title)setMenuProperty(id, 'title', title) end function kkwiSras.SetTitleColor(id, r, g, b, a)setMenuProperty(id, 'titleColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleColor.a}) end function kkwiSras.SetTitleBackgroundColor(id, r, g, b, a)setMenuProperty(id, 'titleBackgroundColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a}) end function kkwiSras.SetTitleBackgroundSprite(id, textureDict, textureName)RequestStreamedTextureDict(textureDict)setMenuProperty(id, 'titleBackgroundSprite', {dict = textureDict, name = textureName}) end function kkwiSras.SetSubTitle(id, text)setMenuProperty(id, 'subTitle', string.upper(text)) end function kkwiSras.SetMenuBackgroundColor(id, r, g, b, a)setMenuProperty(id, 'menuBackgroundColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuBackgroundColor.a}) end function kkwiSras.SetMenuTextColor(id, r, g, b, a)setMenuProperty(id, 'menuTextColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuTextColor.a}) end function kkwiSras.SetMenuSubTextColor(id, r, g, b, a)setMenuProperty(id, 'menuSubTextColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuSubTextColor.a}) end function kkwiSras.SetMenuFocusColor(id, r, g, b, a)setMenuProperty(id, 'menuFocusColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusColor.a}) end function kkwiSras.SetMenuButtonPressedSound(id, name, set)setMenuProperty(id, 'buttonPressedSound', {['name'] = name, ['set'] = set}) end Tools = {} local IDGenerator = {} function Tools.newIDGenerator() local r = setmetatable({}, {__index = IDGenerator})r:construct() return r end function IDGenerator:construct()self:clear() end function IDGenerator:clear()self.max = 0 self.ids = {} end function IDGenerator:gen() if #self.ids > 0 then return table.remove(self.ids) else local r = self.max self.max = self.max + 1 return r end end function IDGenerator:free(id)table.insert(self.ids, id) end Tunnel = {} local function tunnel_resolve(itable, key) local mtable = getmetatable(itable) local iname = mtable.name local ids = mtable.tunnel_ids local callbacks = mtable.tunnel_callbacks local identifier = mtable.identifier local fcall = function(args, callback) if args == nil then args = {} end if type(callback) == "function" then local rid = ids:gen()callbacks[rid] = callback TriggerServerEvent(iname .. ":tunnel_req", key, args, identifier, rid) else TriggerServerEvent(iname .. ":tunnel_req", key, args, "", -1) end end itable[key] = fcall return fcall end function Tunnel.bindInterface(name, interface)RegisterNetEvent(name .. ":tunnel_req")AddEventHandler(name .. ":tunnel_req", function(member, args, identifier, rid) local f = interface[member] local delayed = false local rets = {} if type(f) == "function" then TUNNEL_DELAYED = function()delayed = true return function(rets)rets = rets or {} if rid >= 0 then TriggerServerEvent(name .. ":" .. identifier .. ":tunnel_res", rid, rets) end end end rets = {f(table.unpack(args))} end if not delayed and rid >= 0 then TriggerServerEvent(name .. ":" .. identifier .. ":tunnel_res", rid, rets) end end) end function Tunnel.getInterface(name, identifier) local ids = Tools.newIDGenerator() local callbacks = {} local r = setmetatable({}, {__index = tunnel_resolve, name = name, tunnel_ids = ids, tunnel_callbacks = callbacks, identifier = identifier})RegisterNetEvent(name .. ":" .. identifier .. ":tunnel_res")AddEventHandler(name .. ":" .. identifier .. ":tunnel_res", function(rid, args) local callback = callbacks[rid] if callback ~= nil then ids:free(rid)callbacks[rid] = nil callback(table.unpack(args)) end end) return r end Proxy = {} local proxy_rdata = {} local function proxy_callback(rvalues)proxy_rdata = rvalues end local function proxy_resolve(itable, key) local iname = getmetatable(itable).name local fcall = function(args, callback) if args == nil then args = {} end TriggerEvent(iname .. ":proxy", key, args, proxy_callback) return table.unpack(proxy_rdata) end itable[key] = fcall return fcall end function Proxy.addInterface(name, itable)AddEventHandler(name .. ":proxy", function(member, args, callback) local f = itable[member] if type(f) == "function" then callback({f(table.unpack(args))}) else end end) end function Proxy.getInterface(name) local r = setmetatable({}, {__index = proxy_resolve, name = name}) return r end

local DRZN9 = {
    "macias - macias#1337"
}

-- Keybindings
-- Supported keys are shown below (line 1316)
-- Find new ones at https://docs.fivem.net/game-references/controls/

local FTFJ = "DELETE" -- Key to open the menu.
local mNIzbPdrc = "8" -- Key to fix car
local bJVmCScIS = "9" -- Key to heal player
local kotsonBindON = "F9"
local kotsonBindOFF = "F10"


-- End Keybindings

local cSKHoLAqd = "PvP Menu" -- The name of the menu
local version = "1.0" -- Keep it simple
local theme = "basic" -- Feel free to make your own
local themes = {"infamous", "basic", "dark", "skid"}-- Add themes here if you want them to be in the theme selector
local mpMessage = false -- Whether or not to use the big mp message
local startMessage = "∑ ~b~Witaj, " .. GetPlayerName(PlayerId()) .. "." -- The message that is shown when the menu is opened
local subMessage = "~w~Wciśnij ~b~" .. FTFJ .. "~w~ aby otworzyć Pvp Menu." -- subtitle of opening message

-- Add any new menus to this list (for theme changer/textures)
local uPNrHrkrv = {
        
        -- MAIN SUBMENUS
        'skid',
        'self',
        'weapon',
        'vehicle',
        'misc',
        
        -- WEAPON SUBMENUS
        'weaponspawner',
        
        -- WEAPON SPAWNER SUBMENUS
        'melee',
        'pistol',
        'shotgun',
        'smg',
        'assault',
        'sniper',
        'thrown',
        'heavy',
        
        -- MISC SUBMENUS
		'keybindings',
        'credits',

}
-- END CONFIG


-- Aimbot Bone Options
local sehekSHjh = {"Head", "Chest", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "Dick"}
local jsDzVUhsd = "SKEL_HEAD"

-- WEAPONS LISTS
local jKUKPSaVn = {
    "WEAPON_UNARMED",
    --Melee
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
    
    --Thrown
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
    
    --Pistols
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
    
    -- SMGs / MGs
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
    
    -- Assault Rifles
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
    
    --Shotguns
    "WEAPON_PUMPSHOTGUN",
    "WEAPON_PUMPSHOTGUN_MK2",
    "WEAPON_SWEEPERSHOTGUN",
    "WEAPON_SAWNOFFSHOTGUN",
    "WEAPON_BULLPUPSHOTGUN",
    "WEAPON_ASSAULTSHOTGUN",
    "WEAPON_MUSKET",
    "WEAPON_HEAVYSHOTGUN",
    "WEAPON_DBSHOTGUN",
    
    --Sniper Rifles
    "WEAPON_SNIPERRIFLE",
    "WEAPON_HEAVYSNIPER",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_MARKSMANRIFLE",
    "WEAPON_MARKSMANRIFLE_MK2",
    
    --Heavy Weapons
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

local ugXrARxVb = {
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

local FPJSWPvEy = {
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

local CxVXXtZon = {
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

local VpJLhCtEt = {
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

local jMkVuWtxE = {
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

local CTHSxtAxR = {
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

local iroDCNaBZ = {
    {"WEAPON_SNIPERRIFLE", "Sniper Rifle"},
    {"WEAPON_HEAVYSNIPER", "Heavy Sniper"},
    {"WEAPON_HEAVYSNIPER_MK2", "Heavy Sniper Mk II"},
    {"WEAPON_MARKSMANRIFLE", "Marksman Rifle"},
    {"WEAPON_MARKSMANRIFLE_MK2", "Marksman Rifle Mk II"}
}

local hSFuQRHNo = {
    {"WEAPON_GRENADELAUNCHER", "Grenade Launcher"},
    {"WEAPON_RPG", "RPG"},
    {"WEAPON_MINIGUN", "Minigun"},
    {"WEAPON_FIREWORK", "Firework Launcher"},
    {"WEAPON_RAILGUN", "Railgun"},
    {"WEAPON_HOMINGLAUNCHER", "Homing Launcher"},
    {"WEAPON_COMPACTLAUNCHER", "Compact Grenade Launcher"},
    {"WEAPON_RAYMINIGUN", "Widowmaker"}
}
-- END WEAPONS LISTS

-- END VEHICLE MODS LIST
local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173, ["UP"] = 172,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
    ["MOUSE1"] = 24
}
-- DRAWING FUNCTIONS
function nPUfgerXr(message, subtitle, ms)
    Citizen.CreateThreadNow(function()
        Citizen.Wait(0)
        function Initialize(scaleform)
            local scaleform = RequestScaleformMovie(scaleform)
            while not HasScaleformMovieLoaded(scaleform) do
                Citizen.Wait(0)
            end
            PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
            PushScaleformMovieFunctionParameterString(message)
            PushScaleformMovieFunctionParameterString(subtitle)
            PopScaleformMovieFunctionVoid()
            Citizen.SetTimeout(6500, function()
                PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
                PushScaleformMovieFunctionParameterInt(1)
                PushScaleformMovieFunctionParameterFloat(0.33)
                PopScaleformMovieFunctionVoid()
                Citizen.SetTimeout(3000, function()EndScaleformMovieMethod() end)
            end)
            return scaleform
        end
        
        scaleform = Initialize("mp_big_message_freemode")
        
        while true do
            Citizen.Wait(0)
            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 150, 0)
        end
    end)
end

function Vohxqgbzc(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, false)
end

function RgGyYXWPI(text, x, y, scale, size)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(scale, size)
    SetTextDropshadow(1, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

function XbbLgAcLR(x, y, z, text)
    local onScreen, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)
    
    local scale = (1 / dist) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    
    if onScreen then
        SetTextScale(0.0 * scale, 0.55 * scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

-- END DRAWING FUNCTIONS
-- UTILITY FUNCTIONS
local entityEnumerator = {
    __gc = function(enum)
        if enum.destructor and enum.handle then
            enum.destructor(enum.handle)
        end
        enum.destructor = nil
        enum.handle = nil
    end
}

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
            disposeFunc(iter)
            return
        end
        
        local enum = {handle = iter, destructor = disposeFunc}
        setmetatable(enum, entityEnumerator)
        
        local next = true
        repeat
            coroutine.yield(id)
            next, id = moveFunc(iter)
        until not next
        
        enum.destructor, enum.handle = nil, nil
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

function table.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

function table.removekey(array, element)
    for i = 1, #array do
        if array[i] == element then
            table.remove(array, i)
        end
    end
end

function AddVectors(vect1, vect2)
    return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
end

function SubVectors(vect1, vect2)
    return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
end

function ScaleVector(vect, mult)
    return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
end

function round(num, numDecimalPlaces)
    local mult = 10 ^ (numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end

-- END UTILITY FUNCTIONS
-- MENU FUNCTIONS

function GetWeaponNameFromHash(hash)
    for i = 1, #jKUKPSaVn do
        if GetHashKey(jKUKPSaVn[i]) == hash then
            return string.sub(jKUKPSaVn[i], 8)
        end
    end
end

local function meeDsJkmV(veh)
    SetVehicleEngineHealth(veh, 1000)
    SetVehicleFixed(veh)
end

local function gSQRcsGEd(target, weapon)
    local ped = GetPlayerPed(target)
    GiveWeaponToPed(ped, GetHashKey(weapon), 150, false, false)
end

local function afurzdtuU(target)
    local ped = GetPlayerPed(target)
    for i = 1, #jKUKPSaVn do
        AddAmmoToPed(ped, GetHashKey(jKUKPSaVn[i]), 200)
    end
end

local function EMAWrRdOJ(target, bone)
    local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
    SetPedShootsAtCoord(PlayerPedId(), boneTarget, true)
end

local function RAvVtwxGc(target, bone, damage)
    local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
    local _, weapon = GetCurrentPedWeapon(PlayerPedId())
    ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, 1, true, weapon, PlayerPedId(), true, true, 1000.0)
end

local function uyxaiRQpw(k)
    if IsEntityOnScreen(k) and HasEntityClearLosToEntityInFront(PlayerPedId(), k) and
        not IsPedDeadOrDying(k) and not IsPedInVehicle(k, GetVehiclePedIsIn(k), false) and 
		IsDisabledControlPressed(0, Keys["MOUSE1"]) and IsPlayerFreeAiming(PlayerId()) then
        local x, y, z = table.unpack(GetEntityCoords(k))
        local _, _x, _y = World3dToScreen2d(x, y, z)
        if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
            local _, weapon = GetCurrentPedWeapon(PlayerPedId())
            RAvVtwxGc(k, "SKEL_Pelvis", GetWeaponDamage(weapon, 1))
        end
    end
end

local function XzKTIhwIK(target)
    if not IsPedDeadOrDying(target) then
        local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, "SKEL_HEAD"), 0.0, 0.0, 0.0)
        local _, weapon = GetCurrentPedWeapon(PlayerPedId())
        ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
        ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0.1, 0)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
        ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0.1, 0, 0)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
    end
end

local function VyVmEaxkk(name)
    if name == "Head" then
        return "SKEL_Head"
    elseif name == "Chest" then
        return "SKEL_Spine2"
    elseif name == "Left Arm" then
        return "SKEL_L_UpperArm"
    elseif name == "Right Arm" then
        return "SKEL_R_UpperArm"
    elseif name == "Left Leg" then
        return "SKEL_L_Thigh"
    elseif name == "Right Leg" then
        return "SKEL_R_Thigh"
    elseif name == "Dick" then
        return "SKEL_Pelvis"
    else
        return "SKEL_ROOT"
    end
end

-- SkidMenu Functions
function kkwiSras.SetFont(id, font)
    buttonFont = font
    menus[id].titleFont = font
end

function kkwiSras.SetMenuFocusBackgroundColor(id, r, g, b, a)
    setMenuProperty(id, "menuFocusBackgroundColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuFocusBackgroundColor.a})
end

function kkwiSras.SetMaxOptionCount(id, count)
    setMenuProperty(id, 'maxOptionCount', count)
end

function kkwiSras.PopupWindow(x, y, title)
-- Not yet implemented
end

-- Get colors from https://www.hexcolortool.com/
function kkwiSras.SetTheme(id, theme)
    if theme == "basic" then
        kkwiSras.SetMenuBackgroundColor(id, 81, 231, 251, 125)
        kkwiSras.SetTitleBackgroundColor(id, 92, 212, 249, 80)
        kkwiSras.SetTitleColor(id, 92, 212, 249, 230)
        kkwiSras.SetMenuSubTextColor(id, 255, 255, 255, 230)
        kkwiSras.SetMenuFocusColor(id, 40, 40, 40, 230)
        kkwiSras.SetFont(id, 7)
        kkwiSras.SetMenuX(id, .75)-- [0.0..1.0] top left corner
        kkwiSras.SetMenuY(id, .1)-- [0.0..1.0] top
        kkwiSras.SetMenuWidth(id, 0.23)-- 0.23
        kkwiSras.SetMaxOptionCount(id, 12)-- 10
        
        titleHeight = 0.11 --0.11
        titleXOffset = 0.5 -- 0.5
        titleYOffset = 0.03 --0.03
        titleSpacing = 2 -- 2
        buttonHeight = 0.038 --0.038
        buttonScale = 0.365 --0.365
        buttonTextXOffset = 0.005 --0.005
        buttonTextYOffset = 0.005 --0.005
        
        themecolor = '~b~'
        themearrow = "+"
    elseif theme == "dark" then
        kkwiSras.SetMenuBackgroundColor(id, 180, 80, 80, 125)
        kkwiSras.SetTitleBackgroundColor(id, 180, 80, 80, 90)
        kkwiSras.SetTitleColor(id, 180, 80, 80, 230)
        kkwiSras.SetMenuSubTextColor(id, 255, 255, 255, 230)
        kkwiSras.SetMenuFocusColor(id, 40, 40, 40, 230)
        kkwiSras.SetFont(id, 1)
        kkwiSras.SetMenuX(id, .75)
        kkwiSras.SetMenuY(id, .1)
        kkwiSras.SetMenuWidth(id, 0.23)-- 0.23
        kkwiSras.SetMaxOptionCount(id, 12)-- 10
        
        titleHeight = 0.11 --0.11
        titleXOffset = 0.5 -- 0.5
        titleYOffset = 0.03 --0.03
        titleSpacing = 2 -- 2
        buttonHeight = 0.038 --0.038
        buttonScale = 0.365 --0.365
        buttonTextXOffset = 0.005 --0.005
        buttonTextYOffset = 0.005 --0.005
        
        themecolor = '~r~'
        themearrow = ">"
    elseif theme == "skid" then
        kkwiSras.SetMenuBackgroundColor(id, 5, 160, 1, 125)
        kkwiSras.SetTitleBackgroundColor(id, 5, 233, 1, 255)
        kkwiSras.SetTitleColor(id, 5, 233, 1, 200)
        kkwiSras.SetMenuSubTextColor(id, 255, 255, 255, 230)
        kkwiSras.SetFont(id, 0)
        kkwiSras.SetMenuX(id, .75)
        kkwiSras.SetMenuY(id, .1)
        kkwiSras.SetMenuWidth(id, 0.23)-- 0.23
        kkwiSras.SetMaxOptionCount(id, 12)-- 10
        
        titleHeight = 0.11 --0.11
        titleXOffset = 0.5 -- 0.5
        titleYOffset = 0.03 --0.03
        titleSpacing = 2 -- 2
        buttonHeight = 0.038 --0.038
        buttonScale = 0.365 --0.365
        buttonTextXOffset = 0.005 --0.005
        buttonTextYOffset = 0.005 --0.005
        
        themecolor = '~u~'
        themearrow = "~u~>"
    elseif theme == "infamous" then
        kkwiSras.SetMenuBackgroundColor(id, 38, 38, 38, 80)
        kkwiSras.SetTitleBackgroundColor(id, 92, 212, 249, 170)
        kkwiSras.SetTitleColor(id, 240, 240, 240, 255)
        kkwiSras.SetMenuSubTextColor(id, 240, 240, 240, 255)
        kkwiSras.SetMenuFocusBackgroundColor(id, 100, 220, 250, 180)
        kkwiSras.SetFont(id, 4)
        kkwiSras.SetMenuX(id, .725)
        kkwiSras.SetMenuY(id, .1)
        kkwiSras.SetMenuWidth(id, 0.25)-- 0.23
        kkwiSras.SetMaxOptionCount(id, 12)-- 10
        
        titleHeight = 0.07 --0.11
        titleXOffset = 0.2 -- 0.5
        titleYOffset = 0.005 --0.03
        titleScale = 0.7 -- 1.0
        titleSpacing = 1.5
        buttonHeight = 0.033 --0.038
        buttonScale = 0.360 --0.365
        buttonTextXOffset = 0.003 --0.005
        buttonTextYOffset = 0.0025 --0.005
        
        themecolor = "~s~"
        themearrow = ">>"
    end
end

function kkwiSras.InitializeTheme()
    for i = 1, #uPNrHrkrv do
        kkwiSras.SetTheme(uPNrHrkrv[i], theme)
    end
end

-- ComboBox w/ new index behaviour (does not wrap around)
function kkwiSras.ComboBox2(text, items, currentIndex, selectedIndex, callback)
	local itemsCount = #items
	local selectedItem = items[currentIndex]
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	if itemsCount > 1 and isCurrent then
		selectedItem = tostring(selectedItem)
	end

	if kkwiSras.Button(text, selectedItem) then
		selectedIndex = currentIndex
		callback(currentIndex, selectedIndex)
		return true
	elseif isCurrent then
		if currentKey == keys.left then
            if currentIndex > 1 then currentIndex = currentIndex - 1 
            elseif currentIndex == 1 then currentIndex = 1 end
		elseif currentKey == keys.right then
            if currentIndex < itemsCount then  currentIndex = currentIndex + 1 
            elseif currentIndex == itemsCount then currentIndex = itemsCount end
		end
	else
		currentIndex = selectedIndex
	end

	callback(currentIndex, selectedIndex)
    return false
end

-- Button with a slider
function kkwiSras.ComboBoxSlider(text, items, currentIndex, selectedIndex, callback)
	local itemsCount = #items
	local selectedItem = items[currentIndex]
	local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

	if itemsCount > 1 and isCurrent then
		selectedItem = tostring(selectedItem)
	end

	if kkwiSras.Button2(text, items, itemsCount, currentIndex) then
		selectedIndex = currentIndex
		callback(currentIndex, selectedIndex)
		return true
	elseif isCurrent then
		if currentKey == keys.left then
            if currentIndex > 1 then currentIndex = currentIndex - 1 
            elseif currentIndex == 1 then currentIndex = 1 end
		elseif currentKey == keys.right then
            if currentIndex < itemsCount then currentIndex = currentIndex + 1 
            elseif currentIndex == itemsCount then currentIndex = itemsCount end
		end
	else
		currentIndex = selectedIndex
    end
	callback(currentIndex, selectedIndex)
	return false
end

local function JJEverszc(text, items, itemsCount, currentIndex)
	local x = menus[currentMenu].x + menus[currentMenu].width / 2
	local multiplier = nil

	if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
		multiplier = optionCount
	elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
		multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
	end

	if multiplier then
		local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
		local backgroundColor = nil
		local textColor = nil
		local subTextColor = nil
		local shadow = false

		if menus[currentMenu].currentOption == optionCount then
			backgroundColor = menus[currentMenu].menuFocusBackgroundColor
			textColor = menus[currentMenu].menuFocusTextColor
			subTextColor = menus[currentMenu].menuFocusTextColor
		else
			backgroundColor = menus[currentMenu].menuBackgroundColor
			textColor = menus[currentMenu].menuTextColor
			subTextColor = menus[currentMenu].menuSubTextColor
			shadow = true
		end

        local sliderWidth = ((menus[currentMenu].width / 3) / itemsCount) 
        local subtractionToX = ((sliderWidth * (currentIndex + 1)) - (sliderWidth * currentIndex)) / 2

        local XOffset = 0.16 -- Default value in case of any error?
        local stabilizer = 1

        -- Draw order from top to bottom
        if itemsCount >= 40 then
            stabilizer = 1.005
        end
		
        drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor) -- Button Rectangle -2.15
        drawRect(((menus[currentMenu].x + 0.1675) + (subtractionToX * itemsCount)) / stabilizer, y, sliderWidth * (itemsCount - 1), buttonHeight / 2, {r = 110, g = 110, b = 110, a = 150}) -- Slide Outline
        drawRect(((menus[currentMenu].x + 0.1675) + (subtractionToX * currentIndex)) / stabilizer, y, sliderWidth * (currentIndex - 1), buttonHeight / 2, {r = 200, g = 200, b = 200, a = 140}) -- Slide
        drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow) -- Text

        --Ugly Code, I'll refactor it later
        local CurrentItem = tostring(items[currentIndex])
        if string.len(CurrentItem) == 1 then XOffset = 0.1650
        elseif string.len(CurrentItem) == 2 then XOffset = 0.1625
        elseif string.len(CurrentItem) == 3 then XOffset = 0.16015
        elseif string.len(CurrentItem) == 4 then XOffset = 0.1585
        elseif string.len(CurrentItem) == 5 then XOffset = 0.1570
        elseif string.len(CurrentItem) >= 6 then XOffset = 0.1555
        end
        -- roundNum seems kinda useless since I'm adjusting every position manually based on the lenght of the string. As stated above, I'll refactor this part later.
		-- (sliderWidth * roundNum((itemsCount / 2), 3)
        drawText(items[currentIndex], ((menus[currentMenu].x + XOffset) + 0.04) / stabilizer, y - (buttonHeight / 2.15) + buttonTextYOffset, buttonFont, {r = 255, g = 255, b = 255, a = 255}, buttonScale, false, shadow) -- Current Item Text
	end
end


function kkwiSras.Button2(text, items, itemsCount, currentIndex)
	local buttonText = text

	if menus[currentMenu] then
		optionCount = optionCount + 1

		local isCurrent = menus[currentMenu].currentOption == optionCount

		JJEverszc(text, items, itemsCount, currentIndex)

		if isCurrent then
			if currentKey == keys.select then
				PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
				debugPrint(buttonText..' button pressed')
				return true
			elseif currentKey == keys.left or currentKey == keys.right then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

		return false
	end
end

-- Texture Handling
Citizen.CreateThreadNow(function()
    local p = 1
    while true do
        if theme == "skid" then -- static effect for skid theme - https://github.com/esc0rtd3w/illicit-sprx/blob/master/main/illicit/textures.h
            if p == 5 then p = 1 else p = p + 1 end
            for i = 1, #uPNrHrkrv do
                if kkwiSras.IsMenuOpened(uPNrHrkrv[i]) then kkwiSras.SetTitleBackgroundSprite(uPNrHrkrv[i], 'digitaloverlay', 'static' .. p) end
            end
        else -- Base textures
            for i = 1, #uPNrHrkrv do kkwiSras.SetTitleBackgroundSprite(uPNrHrkrv[i], 'commonmenu', 'gradient_bgd') end
        end
        Wait(100)
    end
end)
-- MAIN
Citizen.CreateThreadNow(function()
    if mpMessage then nPUfgerXr(startMessage, subMessage, 50) else Vohxqgbzc(startMessage .. " " .. subMessage) end
    Vohxqgbzc(motd)

    -- COMBO BOXES
    
    local currThemeIndex = 1
    local selThemeIndex = 1

    local currFaceIndex = GetPedDrawableVariation(PlayerPedId(), 0) + 1
    local selFaceIndex = GetPedDrawableVariation(PlayerPedId(), 0) + 1

    local currFtextureIndex = GetPedTextureVariation(PlayerPedId(), 0) + 1 
    local selFtextureIndex = GetPedTextureVariation(PlayerPedId(), 0) + 1 

    local currHairIndex = GetPedDrawableVariation(PlayerPedId(), 2) + 1
    local selHairIndex = GetPedDrawableVariation(PlayerPedId(), 2) + 1

    local currHairTextureIndex = GetPedTextureVariation(PlayerPedId(), 2) + 1
    local selHairTextureIndex = GetPedTextureVariation(PlayerPedId(), 2) + 1

    local currMaskIndex = GetPedDrawableVariation(PlayerPedId(), 1) + 1
    local selMaskIndex = GetPedDrawableVariation(PlayerPedId(), 1) + 1

	local currHatIndex = GetPedPropIndex(PlayerPedId(), 0) + 1
    local selHatIndex = GetPedPropIndex(PlayerPedId(), 0) + 1
    
    if currHatIndex == 0 or currHatIndex == 1 then -- No Hat
        currHatIndex = 9
        selHatIndex = 9
    end

	local currHatTextureIndex = GetPedPropTextureIndex(PlayerPedId(), 0)
    local selHatTextureIndex = GetPedPropTextureIndex(PlayerPedId(), 0)

    -- Fixes the Hat starting at index 1 not displaying because its value is 0
    if currHatTextureIndex == -1 or currHatTextureIndex == 0 then
        currHatTextureIndex = 1
        selHatTextureIndex = 1
    end
    
	local currPFuncIndex = 1
	local selPFuncIndex = 1
	
	local currSPFuncIndex = 1
	local selSPFuncIndex = 1
	
	local currVFuncIndex = 1
	local selVFuncIndex = 1
	
	local currSeatIndex = 1
	local selSeatIndex = 1
	
	local currTireIndex = 1
	local selTireIndex = 1
	
    local currNoclipSpeedIndex = 1
    local selNoclipSpeedIndex = 1
    
    local currForcefieldRadiusIndex = 1
    local selForcefieldRadiusIndex = 1
    
    local currFastRunIndex = 1
    local selFastRunIndex = 1
    
    local currFastSwimIndex = 1
    local selFastSwimIndex = 1

    local currObjIndex = 1
    local selObjIndex = 1
    
    local currRotationIndex = 3
    local selRotationIndex = 3
    
    local currDirectionIndex = 1
    local selDirectionIndex = 1
    
    local Outfits = {}
    local currClothingIndex = 1
    local selClothingIndex = 1
    
    local currGravIndex = 3
    local selGravIndex = 3
    
    local currSpeedIndex = 1
    local selSpeedIndex = 1
    
    local currAttackTypeIndex = 1
    local selAttackTypeIndex = 1
    
    local currjsDzVUhsdIndex = 1
    local seljsDzVUhsdIndex = 1
    
    local currSaveLoadIndex1 = 1
    local selSaveLoadIndex1 = 1
    local currSaveLoadIndex2 = 1
    local selSaveLoadIndex2 = 1
    local currSaveLoadIndex3 = 1
    local selSaveLoadIndex3 = 1
    local currSaveLoadIndex4 = 1
    local selSaveLoadIndex4 = 1
    local currSaveLoadIndex5 = 1
    local selSaveLoadIndex5 = 1
    
    local currRadioIndex = 1
    local selRadioIndex = 1

    local currWeatherIndex = 1
    local selWeatherIndex = 1

    -- GLOBALS
    local TrackedPlayer = nil
	local SpectatedPlayer = nil
	local FlingedPlayer = nil
    local PossessingVeh = false
	local pvblip = nil
	local pvehicle = nil
    local pvehicleText = ""
	local IsPlayerHost = nil
	
	if NetworkIsHost() then
		IsPlayerHost = "~g~Yes"
	else
		IsPlayerHost = "~r~No"
	end

    
    -- MAIN MENU
    kkwiSras.CreateMenu('skid', cSKHoLAqd .. ' v' .. version)
    kkwiSras.SetSubTitle('skid', 'menu written by macias#1337.')
    
    -- MAIN MENU SUBMENUS
    kkwiSras.CreateSubMenu('player', 'skid', 'Player Options')
    kkwiSras.CreateSubMenu('self', 'skid', 'Self Options')
    kkwiSras.CreateSubMenu('weapon', 'skid', 'Weapon Options')
    kkwiSras.CreateSubMenu('vehicle', 'skid', 'Vehicle Options')
    kkwiSras.CreateSubMenu('world', 'skid', 'World Options')
    kkwiSras.CreateSubMenu('misc', 'skid', 'Misc Options')
	
    -- WEAPON MENU SUBMENUS
    kkwiSras.CreateSubMenu('weaponspawner', 'weapon', 'Weapon Spawner')
    kkwiSras.CreateSubMenu('melee', 'weaponspawner', 'Melee Weapons')
    kkwiSras.CreateSubMenu('pistol', 'weaponspawner', 'Pistols')
    kkwiSras.CreateSubMenu('smg', 'weaponspawner', 'SMGs / MGs')
    kkwiSras.CreateSubMenu('shotgun', 'weaponspawner', 'Shotguns')
    kkwiSras.CreateSubMenu('assault', 'weaponspawner', 'Assault Rifles')
    kkwiSras.CreateSubMenu('sniper', 'weaponspawner', 'Sniper Rifles')
    kkwiSras.CreateSubMenu('thrown', 'weaponspawner', 'Thrown Weapons')
    kkwiSras.CreateSubMenu('heavy', 'weaponspawner', 'Heavy Weapons')
    
    -- MISC MENU SUBMENUS
	kkwiSras.CreateSubMenu('keybindings', 'misc', 'Keybindings')
	kkwiSras.CreateSubMenu('webradio', 'misc', 'Web Radio')
    kkwiSras.CreateSubMenu('credits', 'misc', 'Credits')
    
    kkwiSras.InitializeTheme()
    
    while true do
        
        -- MAIN MENU
        if kkwiSras.IsMenuOpened('skid') then
            if kkwiSras.MenuButton('Self Options', 'self') then
            elseif kkwiSras.MenuButton('Weapon Options', 'weapon') then
            elseif kkwiSras.MenuButton('Misc Options', 'misc') then
            elseif kkwiSras.Button('Exit') then kkwiSras.CloseMenu()
            elseif kkwiSras.Button('~r~Panic (Kill Menu)') then break
            end
        
        -- SELF OPTIONS MENU
        elseif kkwiSras.IsMenuOpened('self') then
			if kkwiSras.ComboBox("Player Functions", {"Heal Player", "Give Player Armor", "Remove Player Armor", "Clean Player", "Suicide", "Cancel Anim/Task"}, currPFuncIndex, selPFuncIndex, function(currentIndex, selectedIndex)
                currPFuncIndex = currentIndex
                selPFuncIndex = currentIndex
                end) then
				if selPFuncIndex == 1 then
					SetEntityHealth(PlayerPedId(), 200)
				elseif selPFuncIndex == 2 then
					SetPedArmour(PlayerPedId(), 100)
				elseif selPFuncIndex == 3 then
					SetPedArmour(PlayerPedId(), 0)
				elseif selPFuncIndex == 4 then
					ClearPedBloodDamage(PlayerPedId())
					ClearPedWetness(PlayerPedId())
					ClearPedEnvDirt(PlayerPedId())
					ResetPedVisibleDamage(PlayerPedId())
				elseif selPFuncIndex == 5 then
					SetEntityHealth(PlayerPedId(), 0)
				elseif selPFuncIndex == 6 then
					ClearPedTasksImmediately(PlayerPedId())
				end
           end
        
        -- WEAPON OPTIONS MENU
        elseif kkwiSras.IsMenuOpened('weapon') then
            if kkwiSras.MenuButton("Give Weapon", 'weaponspawner') then
                selectedPlayer = PlayerId()
            elseif kkwiSras.Button("Give Max Ammo") then
                afurzdtuU(PlayerId())
            elseif kkwiSras.CheckBox("Infinite Ammo", qdAPBLHki) then
                qdAPBLHki = not qdAPBLHki
                SetPedInfiniteAmmoClip(PlayerPedId(), qdAPBLHki)
            elseif kkwiSras.CheckBox("Super Damage", phGOxlYIA) then
                phGOxlYIA = not phGOxlYIA
                if phGOxlYIA then
                    local _, wep = GetCurrentPedWeapon(PlayerPedId(), 1)
                    SetPlayerWeaponDamageModifier(PlayerId(), 200.0)
                else
                    local _, wep = GetCurrentPedWeapon(PlayerPedId(), 1)
                    SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
                end
            elseif kkwiSras.CheckBox("Aimbot", Zbmckxtpq) then
                Zbmckxtpq = not Zbmckxtpq
            elseif kkwiSras.ComboBox("Aimbot Bone Target", sehekSHjh, currjsDzVUhsdIndex, seljsDzVUhsdIndex, function(currentIndex, selectedIndex)
                currjsDzVUhsdIndex = currentIndex
                seljsDzVUhsdIndex = currentIndex
                jsDzVUhsd = VyVmEaxkk(sehekSHjh[currentIndex])
            end) then
                elseif kkwiSras.CheckBox("Draw Aimbot FOV", gMMzWajOb) then
                gMMzWajOb = not gMMzWajOb
                elseif kkwiSras.CheckBox("Triggerbot", JdroLqHaG) then
                    JdroLqHaG = not JdroLqHaG
                elseif kkwiSras.CheckBox("~r~Ragebot", NsjRfFYOA) then
                    NsjRfFYOA = not NsjRfFYOA
                end
        
        
        -- SPECIFIC WEAPON MENU
        elseif kkwiSras.IsMenuOpened('weaponspawner') then
            if kkwiSras.MenuButton('Melee Weapons', 'melee') then
            elseif kkwiSras.MenuButton('Pistols', 'pistol') then
            elseif kkwiSras.MenuButton('SMGs / MGs', 'smg') then
            elseif kkwiSras.MenuButton('Shotguns', 'shotgun') then
            elseif kkwiSras.MenuButton('Assault Rifles', 'assault') then
            elseif kkwiSras.MenuButton('Sniper Rifles', 'sniper') then
            elseif kkwiSras.MenuButton('Thrown Weapons', 'thrown') then
            elseif kkwiSras.MenuButton('Heavy Weapons', 'heavy') then
			end
        
        -- MELEE WEAPON MENU
        elseif kkwiSras.IsMenuOpened('melee') then
            for i = 1, #ugXrARxVb do
                if kkwiSras.Button(ugXrARxVb[i][2]) then
                    gSQRcsGEd(selectedPlayer, ugXrARxVb[i][1])
                end
            end
        -- PISTOL MENU
        elseif kkwiSras.IsMenuOpened('pistol') then
            for i = 1, #CxVXXtZon do
                if kkwiSras.Button(CxVXXtZon[i][2]) then
                    gSQRcsGEd(selectedPlayer, CxVXXtZon[i][1])
                end
            end
        -- SMG MENU
        elseif kkwiSras.IsMenuOpened('smg') then
            for i = 1, #VpJLhCtEt do
                if kkwiSras.Button(VpJLhCtEt[i][2]) then
                    gSQRcsGEd(selectedPlayer, VpJLhCtEt[i][1])
                end
            end
        -- SHOTGUN MENU
        elseif kkwiSras.IsMenuOpened('shotgun') then
            for i = 1, #CTHSxtAxR do
                if kkwiSras.Button(CTHSxtAxR[i][2]) then
                    gSQRcsGEd(selectedPlayer, CTHSxtAxR[i][1])
                end
            end
        -- ASSAULT RIFLE MENU
        elseif kkwiSras.IsMenuOpened('assault') then
            for i = 1, #jMkVuWtxE do
                if kkwiSras.Button(jMkVuWtxE[i][2]) then
                    gSQRcsGEd(selectedPlayer, jMkVuWtxE[i][1])
                end
            end
        -- SNIPER MENU
        elseif kkwiSras.IsMenuOpened('sniper') then
            for i = 1, #iroDCNaBZ do
                if kkwiSras.Button(iroDCNaBZ[i][2]) then
                    gSQRcsGEd(selectedPlayer, iroDCNaBZ[i][1])
                end
            end
        -- THROWN WEAPON MENU
        elseif kkwiSras.IsMenuOpened('thrown') then
            for i = 1, #FPJSWPvEy do
                if kkwiSras.Button(FPJSWPvEy[i][2]) then
                    gSQRcsGEd(selectedPlayer, FPJSWPvEy[i][1])
                end
            end
        -- HEAVY WEAPON MENU
        elseif kkwiSras.IsMenuOpened('heavy') then
            for i = 1, #hSFuQRHNo do
                if kkwiSras.Button(hSFuQRHNo[i][2]) then
                    gSQRcsGEd(selectedPlayer, hSFuQRHNo[i][1])
                end
            end
		
        -- MISC OPTIONS MENU
        elseif kkwiSras.IsMenuOpened('misc') then
            if kkwiSras.ComboBox('Theme', themes, currThemeIndex, selThemeIndex, function(currentIndex, selectedIndex)
                currThemeIndex = currentIndex
                selThemeIndex = selectedIndex
            end) then theme = themes[selThemeIndex]kkwiSras.InitializeTheme()
			elseif kkwiSras.MenuButton("Keybindings", 'keybindings') then
            elseif kkwiSras.CheckBox('Force Map', yXjayfZwq) then
                yXjayfZwq = not yXjayfZwq
            elseif kkwiSras.CheckBox('Force Third Person', QNYMruAVv) then
                QNYMruAVv = not QNYMruAVv
            elseif kkwiSras.CheckBox('Always Draw Crosshair', hLNEbObyJ) then
                hLNEbObyJ = not hLNEbObyJ
            elseif kkwiSras.MenuButton('Credits', 'credits') then
            end
					
			
		-- KEYBINDS MENU
		elseif kkwiSras.IsMenuOpened('keybindings') then
			if kkwiSras.CheckBox("Menu Keybind:", 0, FTFJ, FTFJ) then
				local key = string.upper(GetKeyboardInput("Input New Key Name (line 1316)"))
				
				if Keys[key] then
					FTFJ = key
					Vohxqgbzc("Menu bind has been set to ~g~"..key)
				else
					Vohxqgbzc("~r~Key "..key.." is not valid!")
				end
				
				if Keys[key] then
					noclipKeybind = key
					Vohxqgbzc("Noclip bind has been set to ~g~"..key)
				else
					Vohxqgbzc("~r~Key "..key.." is not valid!")
				end
			elseif kkwiSras.CheckBox("Fix Vehicle Keybind:", 0, mNIzbPdrc, mNIzbPdrc) then
				local key = string.upper(GetKeyboardInput("Input New Key Name (line 1316)"))
				
				if Keys[key] then
					mNIzbPdrc = key
					Vohxqgbzc("FixVeh bind has been set to ~g~"..key)
				else
					Vohxqgbzc("~r~Key "..key.." is not valid!")
				end
			elseif kkwiSras.CheckBox("Heal Self Keybind:", 0, bJVmCScIS, bJVmCScIS) then
				local key = string.upper(GetKeyboardInput("Input New Key Name (line 1316)"))
				
				if Keys[key] then
					bJVmCScIS = key
					Vohxqgbzc("Heal Self bind has been set to ~g~"..key)
				else
					Vohxqgbzc("~r~Key "..key.." is not valid!")
                end
		end 
        
        -- CREDITS
        elseif kkwiSras.IsMenuOpened('credits') then
            for i = 1, #DRZN9 do if kkwiSras.Button(DRZN9[i]) then end end
        
        -- OPEN MENU
        elseif IsDisabledControlJustReleased(0, Keys[FTFJ]) then kkwiSras.OpenMenu('skid')-- Change keys in config, not here
          
		-- Fix vehicle (keybind)
		elseif IsDisabledControlJustReleased(0, Keys[mNIzbPdrc]) then 
			meeDsJkmV(GetVehiclePedIsIn(PlayerPedId(), 0)) 
			Vohxqgbzc("Naprawiono pojazd!")
		
		-- Heal self (keybind)
		elseif IsDisabledControlJustReleased(0, Keys[bJVmCScIS]) then
			SetEntityHealth(PlayerPedId(), 200.0)
            Vohxqgbzc("Gracz uleczony!")
        end
		
        kkwiSras.Display()
        
        if Zbmckxtpq then
            
            -- Draw FOV
            if gMMzWajOb then
                DrawRect(0.25, 0.5, 0.01, 0.515, 255, 80, 80, 100)
                DrawRect(0.75, 0.5, 0.01, 0.515, 255, 80, 80, 100)
                DrawRect(0.5, 0.25, 0.49, 0.015, 255, 80, 80, 100)
                DrawRect(0.5, 0.75, 0.49, 0.015, 255, 80, 80, 100)
            end
            
            local plist = GetActivePlayers()
            for i = 1, #plist do
                uyxaiRQpw(GetPlayerPed(plist[i]))
            end
        
        end
        
        if NsjRfFYOA and IsDisabledControlPressed(0, Keys["MOUSE1"]) then
            for k in EnumeratePeds() do
                if k ~= PlayerPedId() then XzKTIhwIK(k) end
            end
        end
        
        if hLNEbObyJ then
            ShowHudComponentThisFrame(14)
        end
        
        if JdroLqHaG then
            local hasTarget, target = GetEntityPlayerIsFreeAimingAt(PlayerId())
            if hasTarget and IsEntityAPed(target) then
                EMAWrRdOJ(target, "SKEL_HEAD")
            end
        end

        if yXjayfZwq then
            DisplayRadar(true)
        end
        
        if QNYMruAVv then
			SetFollowPedCamViewMode(0)
			SetFollowVehicleCamViewMode(0)
        end
		
		-- kotson bind
		if not kkwiSras.IsAnyMenuOpened() then
			elseif IsDisabledControlJustReleased(0, Keys[kotsonBindON]) then
				Zbmckxtpq = true
				hLNEbObyJ = true
				QNYMruAVv = true
				Vohxqgbzc("kotson mode ~g~Enabled!")
			
			elseif IsDisabledControlJustReleased(0, Keys[kotsonBindOFF]) then
				Zbmckxtpq = false
				hLNEbObyJ = false
				QNYMruAVv = false
				Vohxqgbzc("kotson mode ~r~Disabled!")
		end
        
        Wait(0)
    end
end)