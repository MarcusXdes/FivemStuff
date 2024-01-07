PhoolCheat = {}
PhoolCheat.debug = PhoolCheataa

local Enabled = true
local logged = false
local pass = "nig"
local menus = {}
local keys = {up = 246, down = 74, left = 303, right = 311, select = 191, back = 202}
local optionCount = 0
local currentKey = PhoolCheatss
local currentMenu = PhoolCheatss
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

PhoolCheatww = TriggerServerEvent
PhoolCheatff = GetHashKey
PhoolCheatss = nil
PhoolCheataa = false
local O = {
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
[22] = {max = 255, min = 0, value = 0},
[23] = {max = 255, min = 0, value = 68},
[24] = {max = 255, min = 0, value = 255}
},
CustomVs = {
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
{spawn = "nisanskyliner34", name = "Nissan Skyline R34"},
{spawn = "boss302", name = "Ford Mustang Boss 302"},
{spawn = "nissangtr", name = "Nissan Gtr R35"}
}
}
count = {}

local bt = {
    "WEAPON_UNARMED",
    "WEAPON_NAVYREVOLVER",
    "WEAPON_CERAMICPISTOL",
    "WEAPON_GADGETPISTOL",
    "WEAPON_MILITARYRIFLE",
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
    "WEAPON_PISTOL",
    "WEAPON_PISTOL_MK2",
    "WEAPON_DOUBLEACTION",
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
    "GADGET_PARACHUTE"
}

local function debugPrint(text)
if PhoolCheat.debug then
Citizen.Trace('[PhoolCheat] ' .. tostring(text))
end
end

local function setMenuProperty(id, property, value)
if id and menus[id] then
menus[id][property] = value
debugPrint(id .. ' menu property changed: { ' .. tostring(property) .. ', ' .. tostring(value) .. ' }')
end
end

local function isMenuVisible(id)
if id and menus[id] then
return menus[id].visible
else
return PhoolCheataa
end
end

local function setMenuVisible(id, visible, holdCurrent)
if id and menus[id] then
setMenuProperty(id, 'visible', visible)
if not holdCurrent and menus[id] then
setMenuProperty(id, 'currentOption', 1)
end

if visible then
if id ~= currentMenu and isMenuVisible(currentMenu) then
setMenuVisible(currentMenu, PhoolCheataa)
end
currentMenu = id
end
end
end

local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)
SetTextColour(color.r, color.g, color.b, color.a)
SetTextFont(font)
SetTextScale(scale, scale)

if shadow then
SetTextDropShadow(2, 2, 0, 0, 0)
end

if menus[currentMenu] then
if center then
SetTextCentre(center)
elseif alignRight then
SetTextWrap(menus[currentMenu].x, menus[currentMenu].x + menus[currentMenu].width - buttonTextXOffset)
SetTextRightJustify(true)
end
end

BeginTextCommandDisplayText("STRING")
AddTextComponentSubstringPlayerName(text)
EndTextCommandDisplayText(x, y)
end

local function drawRect(x, y, width, height, color)
DrawRect(x, y, width, height, color.r, color.g, color.b, color.a)
end

local function drawTitle()
if menus[currentMenu] then
local x = menus[currentMenu].x + menus[currentMenu].width / 2
local xText = menus[currentMenu].x + menus[currentMenu].width * titleXOffset
local y = menus[currentMenu].y + titleHeight * 1 / titleSpacing
if menus[currentMenu].titleBackgroundSprite then
DrawSprite(menus[currentMenu].titleBackgroundSprite.dict, menus[currentMenu].titleBackgroundSprite.PhoolCheat, x, y, menus[currentMenu].width, titleHeight, 0., 255, 255, 255, 255)
else
drawRect(x, y, menus[currentMenu].width, titleHeight, menus[currentMenu].titleBackgroundColor)
end

drawText(menus[currentMenu].title, xText, y - titleHeight / 2 + titleYOffset, menus[currentMenu].titleFont, menus[currentMenu].titleColor, titleScale, true)
end
end

local function drawSubTitle()
if menus[currentMenu] then
local x = menus[currentMenu].x + menus[currentMenu].width / 2
local y = menus[currentMenu].y + titleHeight + buttonHeight / 2
local subTitleColor = {r = menus[currentMenu].titleBackgroundColor.r, g = menus[currentMenu].titleBackgroundColor.g, b = menus[currentMenu].titleBackgroundColor.b, a = 255}

drawRect(x, y, menus[currentMenu].width, buttonHeight, menus[currentMenu].subTitleBackgroundColor)
drawText(menus[currentMenu].subTitle, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, PhoolCheataa)

if optionCount > menus[currentMenu].maxOptionCount then
drawText(tostring(menus[currentMenu].currentOption) .. ' / ' .. tostring(optionCount), menus[currentMenu].x + menus[currentMenu].width, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, PhoolCheataa, PhoolCheataa, true)
end
end
end

local function RGB(frequency)
local result = {}
local curtime = GetGameTimer() / 2000
result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

return result
end

local function drawButton(text, subText)
local x = menus[currentMenu].x + menus[currentMenu].width / 2
local multiplier = PhoolCheatss

if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
multiplier = optionCount
elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
end

if multiplier then
local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
local backgroundColor = PhoolCheatss
local textColor = PhoolCheatss
local subTextColor = PhoolCheatss
local shadow = PhoolCheataa

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

drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor)
drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, PhoolCheataa, shadow)

if subText then
drawText(subText, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, PhoolCheataa, shadow, true)
end
end
end

function PhoolCheat.CreateMenu(id, title)
menus[id] = {}
menus[id].title = title
menus[id].subTitle = '~r~DESENVOLVIDO POR ZICK'
menus[id].visible = PhoolCheataa
menus[id].previousMenu = PhoolCheatss
menus[id].aboutToBeClosed = PhoolCheataa
menus[id].x = 0.0175
menus[id].y = 0.025
menus[id].width = 0.23
menus[id].currentOption = 1
menus[id].maxOptionCount = 13
menus[id].titleFont = 1
menus[id].titleColor = { r = 255, g = 255, b = 255, a = 255 }
menus[id].titleBackgroundColor = { r = 0, g = 0, b = 0, a = 250 }
menus[id].titleBackgroundSprite = PhoolCheatss
menus[id].menuTextColor = { r = 255, g = 255, b = 255, a = 255 }
menus[id].menuSubTextColor = { r = 255, g = 255, b = 255, a = 255 }
menus[id].menuFocusTextColor = { r = 255, g = 0, b = 0, a = 200 }
menus[id].menuFocusBackgroundColor = { r = 60, g = 60, b = 60, a = 250 }
menus[id].menuBackgroundColor = { r = 0, g = 0, b = 0, a = 250 }
menus[id].subTitleBackgroundColor = {r = menus[id].menuBackgroundColor.r, g = menus[id].menuBackgroundColor.g, b = menus[id].menuBackgroundColor.b, a = 255}
menus[id].buttonPressedSound = {PhoolCheat = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET"}
debugPrint(tostring(id) .. ' menu created')
end

function PhoolCheat.CreateSubMenu(id, parent, subTitle)
if menus[parent] then
PhoolCheat.CreateMenu(id, menus[parent].title)
if subTitle then
setMenuProperty(id, 'subTitle', string.upper(subTitle))
else
setMenuProperty(id, 'subTitle', string.upper(menus[parent].subTitle))
end

setMenuProperty(id, 'previousMenu', parent)
setMenuProperty(id, 'x', menus[parent].x)
setMenuProperty(id, 'y', menus[parent].y)
setMenuProperty(id, 'maxOptionCount', menus[parent].maxOptionCount)
setMenuProperty(id, 'titleFont', menus[parent].titleFont)
setMenuProperty(id, 'titleColor', menus[parent].titleColor)
setMenuProperty(id, 'titleBackgroundColor', menus[parent].titleBackgroundColor)
setMenuProperty(id, 'titleBackgroundSprite', menus[parent].titleBackgroundSprite)
setMenuProperty(id, 'menuTextColor', menus[parent].menuTextColor)
setMenuProperty(id, 'menuSubTextColor', menus[parent].menuSubTextColor)
setMenuProperty(id, 'menuFocusTextColor', menus[parent].menuFocusTextColor)
setMenuProperty(id, 'menuFocusBackgroundColor', menus[parent].menuFocusBackgroundColor)
setMenuProperty(id, 'menuBackgroundColor', menus[parent].menuBackgroundColor)
setMenuProperty(id, 'subTitleBackgroundColor', menus[parent].subTitleBackgroundColor)
else
debugPrint('Failed to create ' .. tostring(id) .. ' submenu: ' .. tostring(parent) .. ' parent menu doesn\'t exist')
end
end

function PhoolCheat.CurrentMenu()
return currentMenu
end

function PhoolCheat.OpenMenu(id)
if id and menus[id] then
PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
setMenuVisible(id, true)
debugPrint(tostring(id) .. ' menu opened')
else
debugPrint('Failed to open ' .. tostring(id) .. ' menu: it doesn\'t exist')
end
end

function PhoolCheat.IsMenuOpened(id)
return isMenuVisible(id)
end

function PhoolCheat.IsAnyMenuOpened()
for id, _ in pairs(menus) do
if isMenuVisible(id) then
return true
end
end

return PhoolCheataa
end

function PhoolCheat.IsMenuAboutToBeClosed()
if menus[currentMenu] then
return menus[currentMenu].aboutToBeClosed
else
return PhoolCheataa
end
end

function PhoolCheat.CloseMenu()
if menus[currentMenu] then
if menus[currentMenu].aboutToBeClosed then
menus[currentMenu].aboutToBeClosed = PhoolCheataa
setMenuVisible(currentMenu, PhoolCheataa)
debugPrint(tostring(currentMenu) .. ' menu closed')
PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
optionCount = 0
currentMenu = PhoolCheatss
currentKey = PhoolCheatss
else
menus[currentMenu].aboutToBeClosed = true
debugPrint(tostring(currentMenu) .. ' menu about to be closed')
end
end
end

function PhoolCheat.Button(text, subText)
local buttonText = text

if subText then
buttonText = '{ ' .. tostring(buttonText) .. ', ' .. tostring(subText) .. ' }'
end

if menus[currentMenu] then
optionCount = optionCount + 1
local isCurrent = menus[currentMenu].currentOption == optionCount

drawButton(text, subText)

if isCurrent then
if currentKey == keys.select then
PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.PhoolCheat, menus[currentMenu].buttonPressedSound.set, true)
debugPrint(buttonText .. ' button pressed')
return true
elseif currentKey == keys.left or currentKey == keys.right then
PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
end
end

return PhoolCheataa
else
debugPrint('Failed to create ' .. buttonText .. ' button: ' .. tostring(currentMenu) .. ' menu doesn\'t exist')
return PhoolCheataa
end
end

function PhoolCheat.MenuButton(text, id)
if menus[id] then
if PhoolCheat.Button(text .. themecolor .. "   " .. themearrow) then
setMenuVisible(currentMenu, PhoolCheataa)
setMenuVisible(id, true, true)
return true
end
else
debugPrint('Failed to create ' .. tostring(text) .. ' menu button: ' .. tostring(id) .. ' submenu doesn\'t exist')
end

return PhoolCheataa
end

function PhoolCheat.CheckBox(text, checked, offtext, ontext, callback)
if not offtext then
offtext = "Off"
end

if not ontext then
ontext = "On"
end

if PhoolCheat.Button(text, checked and ontext or offtext) then
checked = not checked
debugPrint(tostring(text) .. ' checkbox changed to ' .. tostring(checked))
if callback then
callback(checked)
end

return true
end

return PhoolCheataa
end

function PhoolCheat.ComboBox(text, items, currentIndex, selectedIndex, callback)
local itemsCount = #items
local selectedItem = items[currentIndex]
local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

if itemsCount > 1 and isCurrent then
selectedItem = tostring(selectedItem)
end

if PhoolCheat.Button(text, selectedItem) then
selectedIndex = currentIndex
callback(currentIndex, selectedIndex)
return true
elseif isCurrent then
if currentKey == keys.left then
if currentIndex > 1 then
currentIndex = currentIndex - 1
else
currentIndex = itemsCount
end
elseif currentKey == keys.right then
if currentIndex < itemsCount then
currentIndex = currentIndex + 1
else
currentIndex = 1
end
end
else
currentIndex = selectedIndex
end

callback(currentIndex, selectedIndex)
return PhoolCheataa
end

function PhoolCheat.Display()
if isMenuVisible(currentMenu) then
if menus[currentMenu].aboutToBeClosed then
PhoolCheat.CloseMenu()
else
ClearAllHelpMessages()
drawTitle()
drawSubTitle()
currentKey = PhoolCheatss
if IsDisabledControlJustReleased(1, keys.down) then
PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
if menus[currentMenu].currentOption < optionCount then
menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1
else
menus[currentMenu].currentOption = 1
end

elseif IsDisabledControlJustReleased(1, keys.up) then
PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

if menus[currentMenu].currentOption > 1 then
menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1
else
menus[currentMenu].currentOption = optionCount
end

elseif IsDisabledControlJustReleased(1, keys.left) then
currentKey = keys.left
elseif IsDisabledControlJustReleased(1, keys.right) then
currentKey = keys.right
elseif IsDisabledControlJustReleased(1, keys.select) then
currentKey = keys.select
elseif IsDisabledControlJustReleased(1, keys.back) then
if menus[menus[currentMenu].previousMenu] then
PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
setMenuVisible(menus[currentMenu].previousMenu, true)
else
PhoolCheat.CloseMenu()
end
end

optionCount = 0
end
end
end

function PhoolCheat.SetMenuWidth(id, width)
setMenuProperty(id, 'width', width)
end

function PhoolCheat.SetMenuX(id, x)
setMenuProperty(id, 'x', x)
end

function PhoolCheat.SetMenuY(id, y)
setMenuProperty(id, 'y', y)
end

function PhoolCheat.SetMenuMaxOptionCountOnScreen(id, count)
setMenuProperty(id, 'maxOptionCount', count)
end

function PhoolCheat.SetTitle(id, title)
setMenuProperty(id, 'title', title)
end

function PhoolCheat.SetTitleColor(id, r, g, b, a)
setMenuProperty(id, 'titleColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleColor.a})
end

function PhoolCheat.SetTitleBackgroundColor(id, r, g, b, a)
setMenuProperty(id, 'titleBackgroundColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a})
end

function PhoolCheat.SetTitleBackgroundSprite(id, textureDict, textureName)
RequestStreamedTextureDict(textureDict)
setMenuProperty(id, 'titleBackgroundSprite', {dict = textureDict, PhoolCheat = textureName})
end

function PhoolCheat.SetSubTitle(id, text)
setMenuProperty(id, 'subTitle', string.upper(text))
end

function PhoolCheat.SetMenuBackgroundColor(id, r, g, b, a)
setMenuProperty(id, 'menuBackgroundColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuBackgroundColor.a})
end

function PhoolCheat.SetMenuTextColor(id, r, g, b, a)
setMenuProperty(id, 'menuTextColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuTextColor.a})
end

function PhoolCheat.SetMenuSubTextColor(id, r, g, b, a)
setMenuProperty(id, 'menuSubTextColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuSubTextColor.a})
end

function PhoolCheat.SetMenuFocusColor(id, r, g, b, a)
setMenuProperty(id, 'menuFocusColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusColor.a})
end

function PhoolCheat.SetMenuButtonPressedSound(id, PhoolCheat, set)
setMenuProperty(id, 'buttonPressedSound', {['PhoolCheat'] = PhoolCheat, ['set'] = set})
end

Tools = {}
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

Tunnel = {}
local function tunnel_resolve(itable, key)
local mtable = getmetatable(itable)
local Foxxay = mtable.PhoolCheat
local ids = mtable.tunnel_ids
local callbacks = mtable.tunnel_callbacks
local identifier = mtable.identifier
local fcall = function(args, callback)
if args == PhoolCheatss then
args = {}
end
if type(callback) == "function" then
local rid = ids:gen()
callbacks[rid] = callback
PhoolCheatww(Foxxay .. ":tunnel_req", key, args, identifier, rid)
else
PhoolCheatww(Foxxay .. ":tunnel_req", key, args, "", -1)
end
end
itable[key] = fcall
return fcall
end

function Tunnel.bindInterface(PhoolCheat, interface)
RegisterNetEvent(PhoolCheat .. ":tunnel_req")
AddEventHandler(PhoolCheat .. ":tunnel_req", function(member, args, identifier, rid)
local f = interface[member]
local delayed = PhoolCheataa
local rets = {}
if type(f) == "function" then
TUNNEL_DELAYED = function()
delayed = true
return function(rets)
rets = rets or {}
if rid >= 0 then
PhoolCheatww(PhoolCheat .. ":" .. identifier .. ":tunnel_res", rid, rets)
end
end
end
rets = {f(table.unpack(args))}
end

if not delayed and rid >= 0 then
PhoolCheatww(PhoolCheat .. ":" .. identifier .. ":tunnel_res", rid, rets)
end
end)
end

function Tunnel.getInterface(PhoolCheat, identifier)
local ids = Tools.newIDGenerator()
local callbacks = {}
local r = setmetatable({}, {__index = tunnel_resolve, PhoolCheat = PhoolCheat, tunnel_ids = ids, tunnel_callbacks = callbacks, identifier = identifier})
RegisterNetEvent(PhoolCheat .. ":" .. identifier .. ":tunnel_res")
AddEventHandler(PhoolCheat .. ":" .. identifier .. ":tunnel_res", function(rid, args)
local callback = callbacks[rid]
if callback ~= PhoolCheatss then
ids:free(rid)
callbacks[rid] = PhoolCheatss
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
local Foxxay = getmetatable(itable).PhoolCheat
local fcall = function(args, callback)
if args == PhoolCheatss then
args = {}
end

TriggerEvent(Foxxay .. ":proxy", key, args, proxy_callback)

return table.unpack(proxy_rdata)
end

itable[key] = fcall
return fcall
end

function Proxy.addInterface(PhoolCheat, itable)
AddEventHandler(PhoolCheat .. ":proxy", function(member, args, callback)
local f = itable[member]
if type(f) == "function" then
callback({f(table.unpack(args))})
else
end
end)
end

function Proxy.getInterface(PhoolCheat)
local r = setmetatable({}, {__index = proxy_resolve, PhoolCheat = PhoolCheat})
return r
end

developers = {
"~r~By Phool~r~", -- Owner Main Dev
}

menuName = "~p~Phool Menu"
version = ""
theme = "skid"
themes = {"infamous", "basic", "dark", "PhoolCheat"}
mpMessage = PhoolCheataa
menuKeybind = "F6"
noclipKeybind = "F1"
noclipKeybind = "F1"
menuKeybind2 = "F1"
teleportKeyblind = "F10"
fixvaiculoKeyblind = "F2"
startMessage = "Menu Injetado com Sucesso[" ..GetPlayerName(PlayerId()).. "]"
subMessage = "~n~~w~PhoolMenu~n~Abrir Menu~g~*"..menuKeybind.."* ~s~Noclip!~g~ *"..menuKeybind2.."*"
motd = "Knap ~r~*" ..noclipKeybind.."* ~w~AKTIVER noclip!"
motd3 = "Knap ~r~*" ..fixvaiculoKeyblind.."* ~w~Fix"

menulist = {


'PhoolCheat',
'\112\108\97\121\101\114\10',
'\115\101\108\102\10',
'\119\101\97\112\111\110\10',
'\118\101\104\105\99\108\101\10',
"visualoptionsssss",
"skinsss",
'\119\111\114\108\100\10',
'\109\105\115\99\10',
'\116\101\108\101\112\111\114\116\10',
'\108\117\97\10',
'\108\121\110\120\10',
'\115\101\116\116\105\110\103\115\10',


'allplayer',
'\112\108\97\121\101\114\111\112\116\105\111\110\115\10',
'troll',
'jobsplayers',



'modifyskintextures',
'modifyhead',
'modifiers',
'skinsmodels',



'\119\101\97\112\111\110\115\112\97\119\110\101\114\10',
'WeaponCustomization',



'melee',
'pistol',
'shotgun',
'smg',
'assault',
'sniper',
'thrown',
'heavy',


'\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10',
'vehiclemods',
'vehiclemenu',

'vehicletuning',


'compacts',
'helicopters',
'planes',
'service',
'commercial',


'\102\117\99\107\115\101\114\118\101\114\10',
'\111\98\106\101\99\116\115\112\97\119\110\101\114\10',
'objectlist',
'weather',
'time',


'esp',
'InfoMenu',

'saveload',
'pois',


'\101\115\120\10',
'\118\114\112\10',
'other',
'money'

}



faceItemsList = {}
faceTexturesList = {}
hairItemsList = {}
hairTextureList = {}
maskItemsList = {}
hatItemsList = {}
hatTexturesList = {}


NoclipSpeedOps = {1, 5, 10, 20, 30}

NoclipSpeed = 0.15
oldSpeed = PhoolCheatss


ForcefieldRadiusOps = {5.0, 10.0, 15.0, 20.0, 50.0}

ForcefieldRadius = 5.0


FastCB = {1.0, 1.09, 1.19, 1.29, 1.39, 1.49}
FastCBWords = {"+0%", "+20%", "+40%", "+60%", "+80%", "+100%"}

FastRunMultiplier = 1.0
FastSwimMultiplier = 1.0


RotationOps = {0, 45, 90, 135, 180}

ObjRotation = 90


GravityOps = {0.0, 5.0, 9.8, 50.0, 100.0, 200.0, 500.0, 1000.0, 9999.9}
GravityOpsWords = {"0", "5", "Default", "50", "100", "200", "500", "1000", "9999"}

GravAmount = 9.8


SpeedModOps = {1.0, 1.5, 2.0, 3.0, 5.0, 10.0, 20.0, 50.0, 100.0, 500.0, 1000.0}
SpeedModAmt = 1.0

AimbotBoneOps = {"Head", "Chest", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "Dick"}
AimbotBone = "SKEL_HEAD"


ClothingSlots = {1, 2, 3, 4, 5}


PedAttackOps = {"All Weapons", "Melee Weapons", "Pistols", "Heavy Weapons"}

PedAttackType = 1

local pistolweapons = {
{"WEAPON_CERAMICPISTOL", "~p~Pistola de Ceramica ~g~INDETECTAVEL"},
{"WEAPON_COMBATSHOTGUN", "~p~Doze de Combate ~g~INDETECTAVEL"},
{"WEAPON_MILITARYRIFLE", "~p~Fuzil Militar ~g~INDETECTAVEL"},
}

local assaultweapons = {
{"WEAPON_ASSAULTRIFLE_MK2", "~p~Rifle de Assalto Mk2 ~r~RISCO"},
{"WEAPON_ASSAULTRIFLE", "~p~Rifle de Assalto ~r~RISCO"},
{"WEAPON_CARBINERIFLE", "~p~Rifle Carabina ~r~RISCO"},
}

local shotgunweapons = {
{"WEAPON_PISTOL_MK2", "~p~Pistola MK2 ~r~RISCO"},
{"WEAPON_COMBATPISTOL", "~p~Pistola de Combate ~r~RISCO"},
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

local compacts = {
"PANTO",
"KURUMA",
"BRIOSO",
"DILETTANTE2",
"ISSI2",
"ISSI3",
"ISSI4",
"ISSI5",
"ISSI6",
"PRAIRIE",
"RHAPSODY"
}

local helicopters = {
"AKULA",
"ANNIHILATOR",
"BUZZARD",
"BUZZARD2",
"CARGOBOB",
"CARGOBOB2",
"CARGOBOB3",
"CARGOBOB4",
"FROGGER",
"FROGGER2",
"HAVOK",
"HUNTER",
"MAVERICK",
"POLMAV",
"SAVAGE",
"SEASPARROW",
"SKYLIFT",
"SUPERVOLITO",
"SUPERVOLITO2",
"SWIFT",
"SWIFT2",
"VALKYRIE",
"VALKYRIE2",
"VOLATUS"
}


local planes = {
"ALPHAZ1",
"AVENGER",
"AVENGER2",
"BESRA",
"BLIMP",
"BLIMP2",
"BLIMP3",
"BOMBUSHKA",
"CARGOPLANE",
"CUBAN800",
"DODO",
"DUSTER",
"HOWARD",
"HYDRA",
"JET",
"LAZER",
"LUXOR",
"LUXOR2",
"MAMMATUS",
"MICROLIGHT",
"MILJET",
"MOGUL",
"MOLOTOK",
"NIMBUS",
"NOKOTA",
"PYRO",
"ROGUE",
"SEABREEZE",
"SHAMAL",
"STARLING",
"STRIKEFORCE",
"STUNT",
"TITAN",
"TULA",
"VELUM",
"VELUM2",
"VESTRA",
"VOLATOL"
}

local service = {
"AIRBUS",
"BRICKADE",
"BUS",
"COACH",
"PBUS2",
"RALLYTRUCK",
"RENTALBUS",
"TAXI",
"TOURBUS",
"TRASH",
"TRASH2",
"WASTELANDER",
"AMBULANCE",
"FBI",
"FBI2",
"FIRETRUK",
"LGUARD",
"PBUS",
"POLICE",
"POLICE2",
"POLICE3",
"POLICE4",
"POLICEB",
"POLICEOLD1",
"POLICEOLD2",
"POLICET",
"POLMAV",
"PRANGER",
"PREDATOR",
"RIOT",
"RIOT2",
"SHERIFF",
"SHERIFF2",
"APC",
"BARRACKS",
"BARRACKS2",
"BARRACKS3",
"BARRAGE",
"CHERNOBOG",
"CRUSADER",
"HALFTRACK",
"KHANJALI",
"RHINO",
"SCARAB",
"SCARAB2",
"SCARAB3",
"THRUSTER",
"TRAILERSMALL2"
}

local commercial = {
"BENSON",
"BIFF",
"CERBERUS",
"CERBERUS2",
"CERBERUS3",
"HAULER",
"HAULER2",
"MULE",
"MULE2",
"MULE3",
"MULE4",
"PACKER",
"PHANTOM",
"PHANTOM2",
"PHANTOM3",
"POUNDER",
"POUNDER2",
"STOCKADE",
"STOCKADE3",
"TERBYTE",
"CABLECAR",
"FREIGHT",
"FREIGHTCAR",
"FREIGHTCONT1",
"FREIGHTCONT2",
"FREIGHTGRAIN",
"METROTRAIN",
"TANKERCAR"
}

-- END VEHICLES LISTS
-- VEHICLE MODS LIST (this is going to take a while...)
local classicColors = {
{"Black", 0},
{"Carbon Black", 147},
{"Graphite", 1},
{"Anhracite Black", 11},
{"Black Steel", 2},
{"Dark Steel", 3},
{"Silver", 4},
{"Bluish Silver", 5},
{"Rolled Steel", 6},
{"Shadow Silver", 7},
{"Stone Silver", 8},
{"Midnight Silver", 9},
{"Cast Iron Silver", 10},
{"Red", 27},
{"Torino Red", 28},
{"Formula Red", 29},
{"Lava Red", 150},
{"Blaze Red", 30},
{"Grace Red", 31},
{"Garnet Red", 32},
{"Sunset Red", 33},
{"Cabernet Red", 34},
{"Wine Red", 143},
{"Candy Red", 35},
{"Hot Pink", 135},
{"Pfsiter Pink", 137},
{"Salmon Pink", 136},
{"Sunrise Orange", 36},
{"Orange", 38},
{"Bright Orange", 138},
{"Gold", 99},
{"Bronze", 90},
{"Yellow", 88},
{"Race Yellow", 89},
{"Dew Yellow", 91},
{"Dark Green", 49},
{"Racing Green", 50},
{"Sea Green", 51},
{"Olive Green", 52},
{"Bright Green", 53},
{"Gasoline Green", 54},
{"Lime Green", 92},
{"Midnight Blue", 141},
{"Galaxy Blue", 61},
{"Dark Blue", 62},
{"Saxon Blue", 63},
{"Blue", 64},
{"Mariner Blue", 65},
{"Harbor Blue", 66},
{" Blue", 67},
{"Surf Blue", 68},
{"Nautical Blue", 69},
{"Racing Blue", 73},
{"Ultra Blue", 70},
{"Light Blue", 74},
{"Chocolate Brown", 96},
{"Bison Brown", 101},
{"Creeen Brown", 95},
{"Feltzer Brown", 94},
{"Maple Brown", 97},
{"Beechwood Brown", 103},
{"Sienna Brown", 104},
{"Saddle Brown", 98},
{"Moss Brown", 100},
{"Woodbeech Brown", 102},
{"Straw Brown", 99},
{"Sandy Brown", 105},
{"Bleached Brown", 106},
{"Schafter Purple", 71},
{"Spinnaker Purple", 72},
{"Midnight Purple", 142},
{"Bright Purple", 145},
{"Cream", 107},
{"Ice White", 111},
{"Frost White", 112}
}

local matteColors = {
{"Black", 12},
{"Gray", 13},
{"Light Gray", 14},
{"Ice White", 131},
{"Blue", 83},
{"Dark Blue", 82},
{"Midnight Blue", 84},
{"Midnight Purple", 149},
{"Schafter Purple", 148},
{"Red", 39},
{"Dark Red", 40},
{"Orange", 41},
{"Yellow", 42},
{"Lime Green", 55},
{"Green", 128},
{"Forest Green", 151},
{"Foliage Green", 155},
{"Olive Darb", 152},
{"Dark Earth", 153},
{"Desert Tan", 154}
}

local metalColors = {
{"Brushed Steel", 117},
{"Brushed Black Steel", 118},
{"Brushed Aluminum", 119},
{"Chrome", 120},
{"Pure Gold", 158},
{"Brushed Gold", 159}
}


local Keys = {
["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
["MOUSE1"] = 24
}

local currentMenuX = 1
local selectedMenuX = 1
local currentMenuY = 1
local selectedMenuY = 1
local menuX = { 0.75, 0.025, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7 }
local menuY = { 0.1, 0.025, 0.2, 0.3 , 0.400, 0.425 }

vRP = Proxy.getInterface("vRP")


local function ForceMod()
ForceTog = not ForceTog

if ForceTog then
Citizen.CreateThread(function()
ShowInfo("Magneto ~g~[ON] ~g~\n~s~Ativa Apertando -» ~p~[E] ")
local ForceKey = Keys["E"]
local Force = 4.0
local KeyPressed = PhoolCheataa
local KeyTimer = 0
local KeyDelay = 20
local ForceEnabled = PhoolCheataa
local StartPush = PhoolCheataa
function forcetick()
if (KeyPressed) then
KeyTimer = KeyTimer + 1
if (KeyTimer >= KeyDelay) then
KeyTimer = 0
KeyPressed = PhoolCheataa
end
end

if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
KeyPressed = true
ForceEnabled = true
end

if (StartPush) then

StartPush = PhoolCheataa
local pid = PlayerPedId()
local CamRot = GetGameplayCamRot(2)

local force = 5

local Fx = -(math.sin(math.rad(CamRot.z)) * force * 10)
local Fy = (math.cos(math.rad(CamRot.z)) * force * 10)
local Fz = force * (CamRot.x * 0.2)

local PlayerVeh = GetVehiclePedIsIn(pid, PhoolCheataa)

for k in EnumerateVehicles() do
SetEntityInvincible(k, PhoolCheataa)
if IsEntityOnScreen(k) and k ~= PlayerVeh then
ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, PhoolCheataa, true, true, true, true)
end
end

for k in EnumeratePeds() do
if IsEntityOnScreen(k) and k ~= pid then
ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, PhoolCheataa, true, true, true, true)
end
end

end


if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
KeyPressed = true
StartPush = true
ForceEnabled = PhoolCheataa
end

if (ForceEnabled) then
local pid = PlayerPedId()
local PlayerVeh = GetVehiclePedIsIn(pid, PhoolCheataa)

Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)

DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 180, 0, 0, 35, PhoolCheataa, true, 2, PhoolCheatss, PhoolCheatss, PhoolCheataa)

for k in EnumerateVehicles() do
SetEntityInvincible(k, true)
if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
RequestControlOnce(k)
FreezeEntityPosition(k, PhoolCheataa)
Oscillate(k, Markerloc, 0.5, 0.3)
end
end

for k in EnumeratePeds() do
if IsEntityOnScreen(k) and k ~= PlayerPedId() then
RequestControlOnce(k)
SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
FreezeEntityPosition(k, PhoolCheataa)
Oscillate(k, Markerloc, 0.5, 0.3)
end
end

end

end

while ForceTog do forcetick()Wait(0) end
end)
else ShowInfo("Magneto ~r~[OFF]") end

end

function GetSeatPedIsIn(ped)
if not IsPedInAnyVehicle(ped, PhoolCheataa) then return
else
veh = GetVehiclePedIsIn(ped)
for i = 0, GetVehicleMaxNumberOfPassengers(veh) do
if GetPedInVehicleSeat(veh) then return i end
end
end
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
return PhoolCheataa
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

function ApplyForce(entity, direction)
ApplyForceToEntity(entity, 3, direction, 0, 0, 0, PhoolCheataa, PhoolCheataa, true, true, PhoolCheataa, true)
end

function RequestControlOnce(entity)
if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
return true
end
SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
return NetworkRequestControlOfEntity(entity)
end

function RequestControl(entity)
Citizen.CreateThread(function()
local tick = 0
while not RequestControlOnce(entity) and tick <= 12 do
tick = tick + 1
Wait(0)
end
return tick <= 12
end)
end

function Oscillate(entity, position, angleFreq, dampRatio)
local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
local targetPos = SubVectors(pos1, pos2)

ApplyForce(entity, targetPos)
end

-- END MENYOO/ENTITY FUNCTIONS
-- DRAWING FUNCTIONS
function ShowMPMessage(message, subtitle, ms)
Citizen.CreateThread(function()
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

function ShowInfo(text)
SetNotificationTextEntry("STRING")
AddTextComponentString(text)
DrawNotification(true, PhoolCheataa)
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
DrawText(x, y)
end

function DrawText3D(x, y, z, text)
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

local entityEnumerator = {
__gc = function(enum)
if enum.destructor and enum.handle then
enum.destructor(enum.handle)
end
enum.destructor = PhoolCheatss
enum.handle = PhoolCheatss
end
}

local function GetHeadItems()
local headItems = GetNumberOfPedDrawableGayiations(PlayerPedId(), 0)
local faceItemsList = {}
for i = 1, headItems do
faceItemsList[i] = i
end
return faceItemsList
end

local function GetHeadTextures(faceID)
local headTextures = GetNumberOfPedTextureGayiations(PlayerPedId(), 0, faceID)
local headTexturesList = {}
for i = 1, headTextures do
headTexturesList[i] = i
end
return headTexturesList
end

local function GetHairItems()
local hairItems = GetNumberOfPedDrawableGayiations(PlayerPedId(), 2)
local hairItemsList = {}
for i = 1, hairItems do
hairItemsList[i] = i
end
return hairItemsList
end

local function GetHairTextures(hairID)
local hairTexture = GetNumberOfPedTextureGayiations(PlayerPedId(), 2, hairID)
local hairTextureList = {}
for i = 1, hairTexture do
hairTextureList[i] = i
end
return hairTextureList
end

local function GetMaskItems()
local maskItems = GetNumberOfPedDrawableGayiations(PlayerPedId(), 1)
local maskItemsList = {}
for i = 1, maskItems do
maskItemsList[i] = i
end
return maskItemsList
end

local function GetHatItems()
local hatItems = GetNumberOfPedPropDrawableGayiations(PlayerPedId(), 0)
local hatItemsList = {}
for i = 1, hatItems do
hatItemsList[i] = i
end
return hatItemsList
end

local function GetHatTextures(hatID)
local hatTextures = GetNumberOfPedPropTextureGayiations(PlayerPedId(), 0, hatID)
local hatTexturesList = {}
for i = 1, hatTextures do
hatTexturesList[i] = i
end
return hatTexturesList
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

local next = true
repeat
coroutine.yield(id)
next, id = moveFunc(iter)
until not next

enum.destructor, enum.handle = PhoolCheatss, PhoolCheatss
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
return PhoolCheataa
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

local function GetKeyboardInput(text)
if not text then text = "Input" end
DisplayOnscreenKeyboard(0, "", "", "", "", "", "", 30)
while (UpdateOnscreenKeyboard() == 0) do
DrawTxt(text, 0.32, 0.37, 0.0, 0.4)
DisableAllControlActions(0)

if IsDisabledControlPressed(0, Keys["ESC"]) then return "" end
Wait(0)
end
if (GetOnscreenKeyboardResult()) then
local result = GetOnscreenKeyboardResult()
Wait(0)
return result
end
end

function SpectatePlayer(id)
local player = GetPlayerPed(id)
if Spectating then
RequestCollisionAtCoord(GetEntityCoords(player))
NetworkSetInSpectatorMode(true, player)
else
RequestCollisionAtCoord(GetEntityCoords(player))
NetworkSetInSpectatorMode(PhoolCheataa, player)
end
end

local function PossessVehicle(target)
PossessingVeh = not PossessingVeh

if not PossessingVeh then
SetEntityVisible(PlayerPedId(), true, 0)
SetEntityCoords(PlayerPedId(), oldPlayerPos)
SetEntityCollision(PlayerPedId(), true, 1)
else
SpectatePlayer(selectedPlayer)
ShowInfo("~b~Checking Player...")
Wait(3000)
if IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
SpectatePlayer(selectedPlayer)
oldPlayerPos = GetEntityCoords(PlayerPedId())
SetEntityVisible(PlayerPedId(), PhoolCheataa, 0)
SetEntityCollision(PlayerPedId(), PhoolCheataa, 0)
else
SpectatePlayer(selectedPlayer)
PossessingVeh = PhoolCheataa
ShowInfo("~r~Player not in a vehicle!  (Try again?)")
end


local Markerloc = PhoolCheatss


Citizen.CreateThread(function()
local ped = GetPlayerPed(target)
local veh = GetVehiclePedIsIn(ped, 0)

while PossessingVeh do

DrawTxt("~b~Possessing ~w~" .. GetPlayerName(target) .. "'s ~b~Vehicle", 0.1, 0.05, 0.0, 0.4)
DrawTxt("~b~Controls:\n~w~-------------------", 0.1, 0.2, 0.0, 0.4)
DrawTxt("~b~W/S: ~w~Forward/Back\n~b~SPACEBAR: ~w~Up\n~b~CTRL: ~w~Down\n~b~X: ~w~Cancel", 0.1, 0.25, 0.0, 0.4)
Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)
DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 180, 35, PhoolCheataa, true, 2, PhoolCheatss, PhoolCheatss, PhoolCheataa)

local forward = SubVectors(Markerloc, GetEntityCoords(veh))
local vpos = GetEntityCoords(veh)
local vf = GetEntityForwardVector(veh)
local vrel = SubVectors(vpos, vf)

SetEntityCoords(PlayerPedId(), vrel.x, vrel.y, vpos.z + 1.1)
SetEntityNoCollisionEntity(PlayerPedId(), veh, 1)

RequestControlOnce(veh)

if IsDisabledControlPressed(0, Keys["W"]) then
ApplyForce(veh, forward * 0.1)
end

if IsDisabledControlPressed(0, Keys["S"]) then
ApplyForce(veh, -(forward * 0.1))
end

if IsDisabledControlPressed(0, Keys["SPACE"]) then
ApplyForceToEntity(veh, 3, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
end

if IsDisabledControlPressed(0, Keys["LEFTCTRL"]) then
ApplyForceToEntity(veh, 3, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
end

if IsDisabledControlPressed(0, Keys["X"]) or GetEntityHealth(PlayerPedId()) < 5.0 then
PossessingVeh = PhoolCheataa
SetEntityVisible(PlayerPedId(), true, 0)
SetEntityCoords(PlayerPedId(), oldPlayerPos)
SetEntityCollision(PlayerPedId(), true, 1)
end

Wait(0)
end
end)
end
end

function GetWeapoPhoolCheatssFromHash(hash)
for i = 1, #allweapons do
if GetHashKey(allweapons[i]) == hash then
return string.sub(allweapons[i], 8)
end
end
end

local function fbi()
local bB = 160.868
local bC = -745.831
local bD = 250.063
if bB ~= '' and bC ~= '' and bD ~= '' then
if
IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
then
entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
else
entity = GetPlayerPed(-1)
end
if entity then
SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
end
end

end

local function ls()
local bB = -365.425
local bC = -131.809
local bD = 37.873
if bB ~= '' and bC ~= '' and bD ~= '' then
if
IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
then
entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
else
entity = GetPlayerPed(-1)
end
if entity then
SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
end
end

end

local function gp()
local bB = 266.12
local bC = -752.51
local bD = 34.64
if bB ~= '' and bC ~= '' and bD ~= '' then
if
IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
then
entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
else
entity = GetPlayerPed(-1)
end
if entity then
SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
end
end

end

local function dealership()
local bB = -15.32
local bC = -1080.69
local bD = 26.14
if bB ~= '' and bC ~= '' and bD ~= '' then
if
IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
then
entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
else
entity = GetPlayerPed(-1)
end
if entity then
SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
end
end

end

local function Ammunation()
local bB = 19.22
local bC = -1108.71
local bD = 29.8
if bB ~= '' and bC ~= '' and bD ~= '' then
if
IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
then
entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
else
entity = GetPlayerPed(-1)
end
if entity then
SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
end
end

end

local function shopclothes()
local bB = 428.61
local bC = -799.89
local bD = 29.49
if bB ~= '' and bC ~= '' and bD ~= '' then
if
IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
then
entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
else
entity = GetPlayerPed(-1)
end
if entity then
SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
end
end

end

local function barber()
local bB = -32.84
local bC = -152.34
local bD = 57.08
if bB ~= '' and bC ~= '' and bD ~= '' then
if
IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
then
entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
else
entity = GetPlayerPed(-1)
end
if entity then
SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
end
end

end


function MaxOut(veh)
SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 0)
SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 7)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 0) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 1) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 2) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 3) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 4) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 5) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 6) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 7) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 8) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 9) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 10) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 11) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 12) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 13) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 14, 16, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 15) - 2, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 16) - 1, PhoolCheataa)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 17, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 18, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 19, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 20, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 21, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 22, true)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 23, 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 24, 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 25) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 27) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 28) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 30) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 33) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 34) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 35) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 38) - 1, true)
SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 1)
SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), PhoolCheataa)
SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 5)
end

function engine(veh)
SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 0)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 11) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 12) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 13) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 15) - 2, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 16) - 1, PhoolCheataa)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 17, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 18, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 19, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 21, true)
SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), PhoolCheataa)
end

function engine1(veh)
SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 0)
SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 7)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 0) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 1) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 2) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 3) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 4) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 5) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 6) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 7) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 8) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 9) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 10) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 11) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 12) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 13) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 14, 16, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 15) - 2, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 16) - 1, PhoolCheataa)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 17, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 18, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 19, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 20, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 21, true)
ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 22, true)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 23, 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 24, 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 25) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 27) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 28) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 30) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 33) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 34) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 35) - 1, PhoolCheataa)
SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 38) - 1, true)
SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 1)
SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), PhoolCheataa)
SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), PhoolCheataa), 5)
end

local function ExplodePlayer(target)
local ped = GetPlayerPed(target)
local coords = GetEntityCoords(ped)
AddExplosion(coords.x + 1, coords.y + 1, coords.z + 1, 4, 100.0, true, PhoolCheataa, 0.0)
end

local function ExplodeAll(self)
local plist = GetActivePlayers()
for i = 0, #plist do
if not self and i == PlayerId() then i = i + 1 end
ExplodePlayer(i)
end
end

-- Thanks to PhoolCheat#6031 for the idea
local function PedAttack(target, attackType)
local coords = GetEntityCoords(GetPlayerPed(target))

if attackType == 1 then weparray = allweapons
elseif attackType == 2 then weparray = meleeweapons
elseif attackType == 3 then weparray = pistolweapons
elseif attackType == 4 then weparray = heavyweapons
end

for k in EnumeratePeds() do
if k ~= GetPlayerPed(target) and not IsPedAPlayer(k) and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) < 2000 then
local rand = math.ceil(math.random(#weparray))
if weparray ~= allweapons then GiveWeaponToPed(k, GetHashKey(weparray[rand][1]), 9999, 0, 1)
else GiveWeaponToPed(k, GetHashKey(weparray[rand]), 9999, 0, 1) end
ClearPedTasks(k)
TaskCombatPed(k, GetPlayerPed(target), 0, 16)
SetPedCombatAbility(k, 100)
SetPedCombatRange(k, 2)
SetPedCombatAttributes(k, 46, 1)
SetPedCombatAttributes(k, 5, 1)
end
end
end


function ApplyShockwave(entity)
local pos = GetEntityCoords(PlayerPedId())
local coord = GetEntityCoords(entity)
local dx = coord.x - pos.x
local dy = coord.y - pos.y
local dz = coord.z - pos.z
local distance = math.sqrt(dx * dx + dy * dy + dz * dz)
local distanceRate = (50 / distance) * math.pow(1.04, 1 - distance)
ApplyForceToEntity(entity, 1, distanceRate * dx, distanceRate * dy, distanceRate * dz, math.random() * math.random(-1, 1), math.random() * math.random(-1, 1), math.random() * math.random(-1, 1), true, PhoolCheataa, true, true, true, true)
end

local function DoForceFieldTick(radius)
local player = PlayerPedId()
local coords = GetEntityCoords(PlayerPedId())
local playerVehicle = GetPlayersLastVehicle()
local inVehicle = IsPedInVehicle(player, playerVehicle, true)

DrawMarker(28, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, radius, radius, radius, 180, 80, 0, 35, PhoolCheataa, true, 2, PhoolCheatss, PhoolCheatss, PhoolCheataa)

for k in EnumerateVehicles() do
if (not inVehicle or k ~= playerVehicle) and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) <= radius * 1.2 then
RequestControlOnce(k)
ApplyShockwave(k)
end
end

for k in EnumeratePeds() do
if k ~= PlayerPedId() and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) <= radius * 1.2 then
RequestControlOnce(k)
SetPedRagdollOnCollision(k, true)
SetPedRagdollForceFall(k)
ApplyShockwave(k)
end
end
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

local function StripPlayer(target)
local ped = GetPlayerPed(target)
RemoveAllPedWeapons(ped, PhoolCheataa)
end

local function StripAll(self)
local plist = GetActivePlayers()
for i = 0, #plist do
if not self and i == PlayerId() then i = i + 1 end
StripPlayer(i)
end
end

local function KickFromVeh(target)
local ped = GetPlayerPed(target)
if IsPedInAnyVehicle(ped, PhoolCheataa) then
ClearPedTasksImmediately(ped)
end
end

local function KickAllFromVeh(self)
local plist = GetActivePlayers()
for i = 0, #plist do
if not self and i == PlayerId() then i = i + 1 end
KickFromVeh(i)
end
end

local function CancelAnimsAll(self)
local plist = GetActivePlayers()
for i = 0, #plist do
if not self and i == PlayerId() then i = i + 1 end
ClearPedTasksImmediately(GetPlayerPed(plist[i]))
end
end

local function RandomClothes(target)
local ped = GetPlayerPed(target)
SetPedRandomComponentfoxxyantio(ped, PhoolCheataa)
SetPedRandomProps(ped)
end

local function GiveAllWeapons(target)
local ped = GetPlayerPed(target)
for i = 0, #allweapons do
GiveWeaponToPed(ped, GetHashKey(allweapons[i]), 9999, PhoolCheataa, PhoolCheataa)
end
end

local function GiveAllPlayersWeapons(self)
local plist = GetActivePlayers()
for i = 0, #plist do
if not self and i == PlayerId() then i = i + 1 end
GiveAllWeapons(i)
end
end

local function GiveWeapon(target, weapon)
local ped = GetPlayerPed(target)
GiveWeaponToPed(ped, GetHashKey(weapon), 9999, PhoolCheataa, PhoolCheataa)
end

local function GiveMaxAmmo(target)
local ped = GetPlayerPed(target)
for i = 1, #allweapons do
AddAmmoToPed(ped, GetHashKey(allweapons[i]), 9999)
end
end

local function TeleportToPlayer(target)
local ped = GetPlayerPed(target)
local pos = GetEntityCoords(ped)
SetEntityCoords(PlayerPedId(), pos)
end

local function TeleportToWaypoint()
local entity = PlayerPedId()
if IsPedInAnyVehicle(entity, PhoolCheataa) then
entity = GetVehiclePedIsUsing(entity)
end
local success = PhoolCheataa
local blipFound = PhoolCheataa
local blipIterator = GetBlipInfoIdIterator()
local blip = GetFirstBlipInfoId(8)

while DoesBlipExist(blip) do
if GetBlipInfoIdType(blip) == 4 then
cx, cy, cz = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector()))--GetBlipInfoIdCoord(blip)
blipFound = true
break
end
blip = GetNextBlipInfoId(blipIterator)
Wait(0)
end

if blipFound then
local groundFound = PhoolCheataa
local yaw = GetEntityHeading(entity)

for i = 0, 1000, 1 do
SetEntityCoordsNoOffset(entity, cx, cy, ToFloat(i), PhoolCheataa, PhoolCheataa, PhoolCheataa)
SetEntityRotation(entity, 0, 0, 0, 0, 0)
SetEntityHeading(entity, yaw)
SetGameplayCamRelativeHeading(0)
Wait(0)
if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, PhoolCheataa) then
cz = ToFloat(i)
groundFound = true
break
end
end
if not groundFound then
cz = -300.0
end
success = true
else
end

if success then
ShowInfo("~r~Teleportado!")
SetEntityCoordsNoOffset(entity, cx, cy, cz, PhoolCheataa, PhoolCheataa, true)
SetGameplayCamRelativeHeading(0)
if IsPedSittingInAnyVehicle(PlayerPedId()) then
if GetPedInVehicleSeat(GetVehiclePedIsUsing(PlayerPedId()), -1) == PlayerPedId() then
SetVehicleOnGroundProperly(GetVehiclePedIsUsing(PlayerPedId()))
end
end
end

end


local function ToggleGodmode(tog)
local ped = PlayerPedId()
SetEntityProofs(ped, tog, tog, tog, tog, tog)
SetPedCanRagdoll(ped, not tog)
end

local function ToggleNoclip()
Noclipping = not Noclipping
if Noclipping then
SetEntityVisible(PlayerPedId(), PhoolCheataa, PhoolCheataa)
else
SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(0,6), 2, 1)
SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), true, PhoolCheataa)
SetEntityVisible(PlayerPedId(), true, PhoolCheataa)
end
end

local function ToggleESP()
ESPEnabled = not ESPEnabled
local _,x,y = PhoolCheataa, 0.0, 0.0

Citizen.CreateThread(function()
while ESPEnabled do
local plist = GetActivePlayers()
table.removekey(plist, PlayerId())
for i = 1, #plist do
local targetCoords = GetEntityCoords(GetPlayerPed(plist[i]))
_, x, y = GetScreenCoordFromWorldCoord(targetCoords.x, targetCoords.y, targetCoords.z)
end
Wait(ESPRefreshTime)
end
end)


Citizen.CreateThread(function()
while ESPEnabled do
local plist = GetActivePlayers()
table.removekey(plist, PlayerId())
for i = 1, #plist do
local targetCoords = GetEntityCoords(GetPlayerPed(plist[i]))
local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), targetCoords)
if distance <= EspDistance then
local _, wephash = GetCurrentPedWeapon(GetPlayerPed(plist[i]), 1)
local wepname = GetWeapoPhoolCheatssFromHash(wephash)
local vehname = "On Foot"
if IsPedInAnyVehicle(GetPlayerPed(plist[i]), 0) then
vehname = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(GetPlayerPed(plist[i])))))
end
if wepname == PhoolCheatss then
wepname = "Unknown"
end
DrawRect(x, y, 0.008, 0.01, 0, 0, 255, 255)
DrawRect(x, y, 0.003, 0.005, 255, 0, 0, 255)
local espstring1 = "~b~ID: ~w~" .. GetPlayerServerId(plist[i]) .. "~w~  |  ~b~Name: ~w~" .. GetPlayerName(plist[i]) .. "  |  ~b~Distance: ~w~" .. math.floor(distance)
local espstring2 = "~b~Weapon: ~w~" .. wepname .. "  |  ~b~Vehicle: ~w~" .. vehname
DrawTxt(espstring1, x - 0.05, y - 0.04, 0.0, 0.2)
DrawTxt(espstring2, x - 0.05, y - 0.03, 0.0, 0.2)
end
end
Wait(0)
end
end)
end

function ToggleBlips()
BlipsEnabled = not BlipsEnabled

if not BlipsEnabled then
for i = 1, #pblips do
RemoveBlip(pblips[i])
end
else

Citizen.CreateThread(function()
pblips = {}
while BlipsEnabled do
local plist = GetActivePlayers()
table.removekey(plist, PlayerId())
for i = 1, #plist do
if NetworkIsPlayerActive(plist[i]) then
ped = GetPlayerPed(plist[i])
pblips[i] = GetBlipFromEntity(ped)
if not DoesBlipExist(pblips[i]) then
pblips[i] = AddBlipForEntity(ped)
SetBlipSprite(pblips[i], 1)
Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], true)
else
veh = GetVehiclePedIsIn(ped, PhoolCheataa)
blipSprite = GetBlipSprite(pblips[i])
if not GetEntityHealth(ped) then
if blipSprite ~= 274 then
SetBlipSprite(pblips[i], 274)
Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], PhoolCheataa)
end
elseif veh then
vehClass = GetVehicleClass(veh)
vehModel = GetEntityModel(veh)
if vehClass == 15 then
if blipSprite ~= 422 then
SetBlipSprite(pblips[i], 422)
Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], PhoolCheataa)
end
elseif vehClass == 16 then
if vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra")
or vehModel == GetHashKey("lazer") then -- jet
if blipSprite ~= 424 then
SetBlipSprite(pblips[i], 424)
Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], PhoolCheataa)
end
elseif blipSprite ~= 423 then
SetBlipSprite(pblips[i], 423)
Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], PhoolCheataa)
end
elseif vehClass == 14 then
if blipSprite ~= 427 then
SetBlipSprite(pblips[i], 427)
Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], PhoolCheataa)
end
elseif vehModel == GetHashKey("insurgent") or vehModel == GetHashKey("insurgent2")
or vehModel == GetHashKey("limo2") then
if blipSprite ~= 426 then
SetBlipSprite(pblips[i], 426)
Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], PhoolCheataa)
end
elseif vehModel == GetHashKey("rhino") then
if blipSprite ~= 421 then
SetBlipSprite(pblips[i], 421)
Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], PhoolCheataa)
end
elseif blipSprite ~= 1 then
SetBlipSprite(pblips[i], 1)
Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], true)
end


passengers = GetVehicleNumberOfPassengers(veh)
if passengers then
if not IsVehicleSeatFree(veh, -1) then
passengers = passengers + 1
end
ShowNumberOnBlip(pblips[i], passengers)
else
HideNumberOnBlip(pblips[i])
end
else


HideNumberOnBlip(pblips[i])
if blipSprite ~= 1 then
SetBlipSprite(pblips[i], 1)
Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], true)
end
end
SetBlipRotation(pblips[i], math.ceil(GetEntityHeading(veh)))
SetBlipNameToPlayerName(pblips[i], plist[i])
SetBlipScale(pblips[i], 0.85)


if IsPauseMenuActive() then
SetBlipAlpha(pblips[i], 255)
else
x1, y1 = table.unpack(GetEntityCoords(PlayerPedId(), true))
x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(plist[i]), true))
distance = (math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
if distance < 0 then
distance = 0
elseif distance > 255 then
distance = 255
end
SetBlipAlpha(pblips[i], distance)
end
end
end
end
Wait(0)
end
end)
end
end

local function NameToBone(PhoolCheat)
if PhoolCheat == "Head" then
return "SKEL_Head"
elseif PhoolCheat == "Chest" then
return "SKEL_Spine2"
elseif PhoolCheat == "Left Arm" then
return "SKEL_L_UpperArm"
elseif PhoolCheat == "Right Arm" then
return "SKEL_R_UpperArm"
elseif PhoolCheat == "Left Leg" then
return "SKEL_L_Thigh"
elseif PhoolCheat == "Right Leg" then
return "SKEL_R_Thigh"
elseif PhoolCheat == "Dick" then
return "SKEL_Pelvis"
else
return "SKEL_ROOT"
end
end

local function SpawnVeh(model, PlaceSelf, SpawnEngineOn)
RequestModel(GetHashKey(model))
Wait(500)
if HasModelLoaded(GetHashKey(model)) then
local coords = GetEntityCoords(PlayerPedId())
local xf = GetEntityForwardX(PlayerPedId())
local yf = GetEntityForwardY(PlayerPedId())
local heading = GetEntityHeading(PlayerPedId())
local veh = CreateVehicle(GetHashKey(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
if SpawnEngineOn then SetVehicleEngineOn(veh, 1, 1) end
return veh
else ShowInfo("~r~Model not recognized (Try Again)") end
end

local function SpawnPlane(model, PlaceSelf, SpawnInAir)
RequestModel(GetHashKey(model))
Wait(500)
if HasModelLoaded(GetHashKey(model)) then
local coords = GetEntityCoords(PlayerPedId())
local xf = GetEntityForwardX(PlayerPedId())
local yf = GetEntityForwardY(PlayerPedId())
local heading = GetEntityHeading(PlayerPedId())
local veh = PhoolCheatss
if SpawnInAir then
veh = CreateVehicle(GetHashKey(model), coords.x + xf * 20, coords.y + yf * 20, coords.z + 500, heading, 1, 1)
else
veh = CreateVehicle(GetHashKey(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
end
if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
else ShowInfo("~r~Model not recognized (Try Again)") end
end

local function GetCurrentOutfit(target)
local ped = GetPlayerPed(target)
outfit = {}

outfit.hat = GetPedPropIndex(ped, 104)
outfit.hat_texture = GetPedPropTextureIndex(ped, 20)

outfit.glasses = GetPedPropIndex(ped, 15)
outfit.glasses_texture = GetPedPropTextureIndex(ped, 1)

outfit.ear = GetPedPropIndex(ped, 2)
outfit.ear_texture = GetPedPropTextureIndex(ped, 2)

outfit.watch = GetPedPropIndex(ped, 6)
outfit.watch_texture = GetPedPropTextureIndex(ped, 6)

outfit.wrist = GetPedPropIndex(ped, 7)
outfit.wrist_texture = GetPedPropTextureIndex(ped, 7)

outfit.head_drawable = GetPedDrawableVariation(ped, 0)
outfit.head_palette = GetPedPaletteVariation(ped, 0)
outfit.head_texture = GetPedTextureVariation(ped, 0)

outfit.beard_drawable = GetPedDrawableVariation(ped, 1)
outfit.beard_palette = GetPedPaletteVariation(ped, 1)
outfit.beard_texture = GetPedTextureVariation(ped, 1)

outfit.hair_drawable = GetPedDrawableVariation(ped, 2)
outfit.hair_palette = GetPedPaletteVariation(ped, 2)
outfit.hair_texture = GetPedTextureVariation(ped, 2)

outfit.torso_drawable = GetPedDrawableVariation(ped, 220)
outfit.torso_palette = GetPedPaletteVariation(ped, 3)
outfit.torso_texture = GetPedTextureVariation(ped, 20)

outfit.legs_drawable = GetPedDrawableVariation(ped, 4)
outfit.legs_palette = GetPedPaletteVariation(ped, 4)
outfit.legs_texture = GetPedTextureVariation(ped, 4)

outfit.hands_drawable = GetPedDrawableVariation(ped, 5)
outfit.hands_palette = GetPedPaletteVariation(ped, 5)
outfit.hands_texture = GetPedTextureVariation(ped, 5)

outfit.foot_drawable = GetPedDrawableVariation(ped, 6)
outfit.foot_palette = GetPedPaletteVariation(ped, 6)
outfit.foot_texture = GetPedTextureVariation(ped, 6)

outfit.acc1_drawable = GetPedDrawableVariation(ped, 7)
outfit.acc1_palette = GetPedPaletteVariation(ped, 7)
outfit.acc1_texture = GetPedTextureVariation(ped, 7)

outfit.acc2_drawable = GetPedDrawableVariation(ped, 8)
outfit.acc2_palette = GetPedPaletteVariation(ped, 8)
outfit.acc2_texture = GetPedTextureVariation(ped, 8)

outfit.acc3_drawable = GetPedDrawableVariation(ped, 9)
outfit.acc3_palette = GetPedPaletteVariation(ped, 9)
outfit.acc3_texture = GetPedTextureVariation(ped, 9)

outfit.mask_drawable = GetPedDrawableVariation(ped, 103)
outfit.mask_palette = GetPedPaletteVariation(ped, 10)
outfit.mask_texture = GetPedTextureVariation(ped, 10)

outfit.aux_drawable = GetPedDrawableVariation(ped, 11)
outfit.aux_palette = GetPedPaletteVariation(ped, 11)
outfit.aux_texture = GetPedTextureVariation(ped, 11)        

return outfit
end

local function SetCurrentOutfit(outfit)
local ped = PlayerPedId()

SetPedPropIndex(ped, 0, outfit.hat, outfit.hat_texture, 1)
SetPedPropIndex(ped, 1, outfit.glasses, outfit.glasses_texture, 1)
SetPedPropIndex(ped, 2, outfit.ear, outfit.ear_texture, 1)
SetPedPropIndex(ped, 6, outfit.watch, outfit.watch_texture, 1)
SetPedPropIndex(ped, 7, outfit.wrist, outfit.wrist_texture, 1)

SetPedComponentVariation(ped, 0, outfit.head_drawable, outfit.head_texture, outfit.head_palette)
SetPedComponentVariation(ped, 1, outfit.beard_drawable, outfit.beard_texture, outfit.beard_palette)
SetPedComponentVariation(ped, 2, outfit.hair_drawable, outfit.hair_texture, outfit.hair_palette)
SetPedComponentVariation(ped, 3, outfit.torso_drawable, outfit.torso_texture, outfit.torso_palette)
SetPedComponentVariation(ped, 4, outfit.legs_drawable, outfit.legs_texture, outfit.legs_palette)
SetPedComponentVariation(ped, 5, outfit.hands_drawable, outfit.hands_texture, outfit.hands_palette)
SetPedComponentVariation(ped, 6, outfit.foot_drawable, outfit.foot_texture, outfit.foot_palette)
SetPedComponentVariation(ped, 7, outfit.acc1_drawable, outfit.acc1_texture, outfit.acc1_palette)
SetPedComponentVariation(ped, 8, outfit.acc2_drawable, outfit.acc2_texture, outfit.acc2_palette)
SetPedComponentVariation(ped, 9, outfit.acc3_drawable, outfit.acc3_texture, outfit.acc3_palette)
SetPedComponentVariation(ped, 10, outfit.mask_drawable, outfit.mask_texture, outfit.mask_palette)
SetPedComponentVariation(ped, 11, outfit.aux_drawable, outfit.aux_texture, outfit.aux_palette)
end

local function GetResources()
local resources = {}
for i = 1, GetNumResources() do
resources[i] = GetResourceByFindIndex(i)
end
return resources
end

function IsResourceInstalled(PhoolCheat)
local resources = GetResources()
for i = 1, #resources do
if resources[i] == PhoolCheat then
return true
else
return PhoolCheataa
end
end
end

function PhoolCheat.SetFont(id, font)
buttonFont = font
menus[id].titleFont = font
end

function PhoolCheat.SetMenuFocusBackgroundColor(id, r, g, b, a)
setMenuProperty(id, "menuFocusBackgroundColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuFocusBackgroundColor.a})
end

function PhoolCheat.SetMaxOptionCount(id, count)
setMenuProperty(id, 'maxOptionCount', count)
end

function PhoolCheat.PopupWindow(x, y, title)

end


function PhoolCheat.SetTheme(id, theme)
if theme == "basic" then
PhoolCheat.SetMenuBackgroundColor(id, 81, 231, 251, 125)
PhoolCheat.SetTitleBackgroundColor(id, 92, 212, 249, 80)
PhoolCheat.SetTitleColor(id, 92, 212, 249, 230)
PhoolCheat.SetMenuSubTextColor(id, 255, 255, 255, 230)
PhoolCheat.SetMenuFocusColor(id, 40, 40, 40, 230)
PhoolCheat.SetFont(id, 7)
PhoolCheat.SetMenuX(id, .75)-- [0.0..1.0] top left corner
PhoolCheat.SetMenuY(id, .1)-- [0.0..1.0] top
PhoolCheat.SetMenuWidth(id, 0.23)-- 0.23
PhoolCheat.SetMaxOptionCount(id, 12)-- 10

titleHeight = 0.11 --0.11
titleXOffset = 0.5 -- 0.5
titleYOffset = 0.03 --0.03
titleSpacing = 2 -- 2
buttonHeight = 0.038 --0.038
buttonScale = 0.365 --0.365
buttonTextXOffset = 0.005 --0.005
buttonTextYOffset = 0.005 --0.005

themecolor = '~r~'
themearrow = "+"
elseif theme == "blue" then
PhoolCheat.SetMenuBackgroundColor(id, 180, 80, 80, 255)
PhoolCheat.SetTitleBackgroundColor(id, 180, 80, 80, 255)
PhoolCheat.SetTitleColor(id, 180, 80, 80, 230)
PhoolCheat.SetMenuSubTextColor(id, 255, 255, 255, 230)
PhoolCheat.SetMenuFocusColor(id, 40, 40, 40, 255)
PhoolCheat.SetFont(id, 1)
PhoolCheat.SetMenuX(id, .75)
PhoolCheat.SetMenuY(id, .1)
PhoolCheat.SetMenuWidth(id, 0.23)-- 0.23
PhoolCheat.SetMaxOptionCount(id, 12)-- 10

titleHeight = 0.11 --0.11
titleXOffset = 0.5 -- 0.5
titleYOffset = 0.03 --0.03
titleSpacing = 2 -- 2
buttonHeight = 0.038 --0.038
buttonScale = 0.475 --0.365
buttonTextXOffset = 0.005 --0.005
buttonTextYOffset = 0.005 --0.005


themecolor = '~r~'
themearrow = ">"
elseif theme == "skid" then
PhoolCheat.SetMenuBackgroundColor(id, 23, 32, 42)
PhoolCheat.SetTitleBackgroundColor(id, 23, 32, 42)
PhoolCheat.SetTitleColor(id, 255, 0, 0, 255)
PhoolCheat.SetMenuSubTextColor(id, 255, 255, 255, 255)
PhoolCheat.SetMenuFocusColor(id, 10, 75, 75, 175)
PhoolCheat.SetFont(id, 4)
PhoolCheat.SetMenuX(id, .75)
PhoolCheat.SetMenuY(id, .1)
PhoolCheat.SetMenuWidth(id, 0.23)-- 0.23
PhoolCheat.SetMaxOptionCount(id, 10)-- 10

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
PhoolCheat.SetMenuBackgroundColor(id, 38, 38, 38, 255)
PhoolCheat.SetTitleBackgroundColor(id, 92, 212, 249, 255)
PhoolCheat.SetTitleColor(id, 240, 240, 240, 255)
PhoolCheat.SetMenuSubTextColor(id, 240, 240, 240, 255)
PhoolCheat.SetMenuFocusBackgroundColor(id, 100, 220, 250, 255)
PhoolCheat.SetFont(id, 4)
PhoolCheat.SetMenuX(id, .725)
PhoolCheat.SetMenuY(id, .1)
PhoolCheat.SetMenuWidth(id, 0.25)-- 0.23
PhoolCheat.SetMaxOptionCount(id, 12)-- 10

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

function PhoolCheat.InitializeTheme()
for i = 1, #menulist do
PhoolCheat.SetTheme(menulist[i], theme)
end
end

-- ComboBox w/ new index behaviour (does not wrap around)
function PhoolCheat.ComboBox2(text, items, currentIndex, selectedIndex, callback)
local itemsCount = #items
local selectedItem = items[currentIndex]
local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

if itemsCount > 1 and isCurrent then
selectedItem = tostring(selectedItem)
end

if PhoolCheat.Button(text, selectedItem) then
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
return PhoolCheataa
end

-- Button with a slider
function PhoolCheat.ComboBoxSlider(text, items, currentIndex, selectedIndex, callback)
local itemsCount = #items
local selectedItem = items[currentIndex]
local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

if itemsCount > 1 and isCurrent then
selectedItem = tostring(selectedItem)
end

if PhoolCheat.Button2(text, items, itemsCount, currentIndex) then
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
return PhoolCheataa
end

local function drawButton2(text, items, itemsCount, currentIndex)
local x = menus[currentMenu].x + menus[currentMenu].width / 2
local multiplier = PhoolCheatss

if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
multiplier = optionCount
elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
end

if multiplier then
local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
local backgroundColor = PhoolCheatss
local textColor = PhoolCheatss
local subTextColor = PhoolCheatss
local shadow = PhoolCheataa

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

local XOffset = 0.1 -- Default value in case of any error?
local stabilizer = 1

-- Draw order from top to bottom
if itemsCount >= 40 then
stabilizer = 1.005
end

drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor) -- Button Rectangle -2.15
drawRect(((menus[currentMenu].x + 0.1075) + (subtractionToX * itemsCount)) / stabilizer, y, sliderWidth * (itemsCount - 1), buttonHeight / 2, {r = 110, g = 110, b = 110, a = 150}) -- Slide Outline
drawRect(((menus[currentMenu].x + 0.1075) + (subtractionToX * currentIndex)) / stabilizer, y, sliderWidth * (currentIndex - 1), buttonHeight / 2, {r = 200, g = 200, b = 200, a = 140}) -- Slide
drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, PhoolCheataa, shadow) -- Text

--Ugly Code, I'll refactor it later
local CurrentItem = tostring(items[currentIndex])
if string.len(CurrentItem) == 1 then XOffset = 0.1050
elseif string.len(CurrentItem) == 2 then XOffset = 0.1025
elseif string.len(CurrentItem) == 3 then XOffset = 0.10015
elseif string.len(CurrentItem) == 4 then XOffset = 0.1085
elseif string.len(CurrentItem) == 5 then XOffset = 0.1070
elseif string.len(CurrentItem) >= 6 then XOffset = 0.1055
end
-- roundNum seems kinda useless since I'm adjusting every position manually based on the lenght of the string. As stated above, I'll refactor this part later.
-- (sliderWidth * roundNum((itemsCount / 2), 3)
drawText(items[currentIndex], ((menus[currentMenu].x + XOffset) + 0.04) / stabilizer, y - (buttonHeight / 2.15) + buttonTextYOffset, buttonFont, {r = 255, g = 255, b = 255, a = 255}, buttonScale, PhoolCheataa, shadow) -- Current Item Text
end
end

-- Getting the center of an odd number of itemsCount (breaks on negative numbers)
function roundNum(num, numDecimalPlaces)
local mult = 10^(numDecimalPlaces or 0)
return math.floor(num * mult + 0.5) / mult
end

function PhoolCheat.Button2(text, items, itemsCount, currentIndex)
local buttonText = text

if menus[currentMenu] then
optionCount = optionCount + 1

local isCurrent = menus[currentMenu].currentOption == optionCount

drawButton2(text, items, itemsCount, currentIndex)

if isCurrent then
if currentKey == keys.select then
PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.PhoolCheat, menus[currentMenu].buttonPressedSound.set, true)
debugPrint(buttonText..' button pressed')
return true
elseif currentKey == keys.left or currentKey == keys.right then
PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
end
end

return PhoolCheataa
else
debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

return PhoolCheataa
end
end

Resources = GetResources()

ResourcesToCheck = {
-- ESX
"es_extended", "esx_dmvschool", "esx_policejob", "",
-- VRP
"vrp", "vrp_trucker", "vrp_TruckerJob"
}

Citizen.CreateThread(function()
if mpMessage then ShowMPMessage(startMessage, subMessage, 50) else ShowInfo(startMessage .. " " .. subMessage) end


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

local currVFuncIndex = 1
local selVFuncIndex = 1

local currSeatIndex = 1
local selSeatIndex = 1

local currTireIndex = 1
local selTireIndex = 1

local currNoclipSpeedIndex = 1
local selNoclipSpeedIndex = 1

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

local currESPDistance = 3
local selESPDistance = 3

local currESPRefreshIndex = 1
local selESPRefreshIndex = 1

local currAimbotBoneIndex = 1
local selAimbotBoneIndex = 1

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
local TrackedPlayer = PhoolCheatss
local SpectatedPlayer = PhoolCheatss
local FlingedPlayer = PhoolCheatss
local PossessingVeh = PhoolCheataa
local pvblip = PhoolCheatss
local pvehicle = PhoolCheatss
local pvehicleText = ""
local IsPlayerHost = PhoolCheatss

if NetworkIsHost() then
IsPlayerHost = "~g~Yes"
else
IsPlayerHost = "~r~No"
end

local savedpos1 = PhoolCheatss
local savedpos2 = PhoolCheatss
local savedpos3 = PhoolCheatss
local savedpos4 = PhoolCheatss
local savedpos5 = PhoolCheatss

-- TOGGLES
local includeself = true
local Collision = true
local objVisible = true
local PlaceSelf = true
local SpawnInAir = true
local SpawnEngineOn = true

-- TABLES
SpawnedObjects = {}

-- MAIN MENU
PhoolCheat.CreateMenu('PhoolCheat', menuName .. ' ' .. version) 
PhoolCheat.SetSubTitle('PhoolCheat', '~r~Desenvolvido por ZICK')

-- MAIN MENU SUBMENUS
PhoolCheat.CreateSubMenu('\112\108\97\121\101\114\10', 'PhoolCheat', 'Player Options')
PhoolCheat.CreateSubMenu('\115\101\108\102\10', 'PhoolCheat', 'Self Options')
PhoolCheat.CreateSubMenu('\119\101\97\112\111\110\10', 'PhoolCheat', 'Weapon Options')
PhoolCheat.CreateSubMenu('\118\101\104\105\99\108\101\10', 'PhoolCheat', 'Vehicle Options')
PhoolCheat.CreateSubMenu('visualoptionsssss', 'PhoolCheat', 'Visual Options')
PhoolCheat.CreateSubMenu('skinsss', 'PhoolCheat', 'Skins Options')
PhoolCheat.CreateSubMenu('\119\111\114\108\100\10', 'PhoolCheat', 'World Options')
PhoolCheat.CreateSubMenu('\116\101\108\101\112\111\114\116\10', 'PhoolCheat', 'Teleport Options')
PhoolCheat.CreateSubMenu('\109\105\115\99\10', 'PhoolCheat', 'Misc Options')
PhoolCheat.CreateSubMenu('\108\117\97\10', 'PhoolCheat', 'Lua Options')
PhoolCheat.CreateSubMenu('\115\101\116\116\105\110\103\115\10', 'PhoolCheat', '\115\101\116\116\105\110\103\115\10')
PhoolCheat.CreateSubMenu('\108\121\110\120\10', 'PhoolCheat', '\108\121\110\120\10 bro....')
-- PLAYER MENU SUBMENUS
PhoolCheat.CreateSubMenu('allplayer', '\112\108\97\121\101\114\10', 'All Players')
PhoolCheat.CreateSubMenu('\112\108\97\121\101\114\111\112\116\105\111\110\115\10', '\112\108\97\121\101\114\10', 'Player Options')
PhoolCheat.CreateSubMenu('troll', '\112\108\97\121\101\114\111\112\116\105\111\110\115\10', 'Troll Options')
PhoolCheat.CreateSubMenu('jobsplayers', '\112\108\97\121\101\114\111\112\116\105\111\110\115\10', 'Jobs Options')


-- SELF MENU SUBMENUS
PhoolCheat.CreateSubMenu('\97\112\112\101\97\114\97\110\99\101\10', 'PhoolCheat', 'Appearance Options')
PhoolCheat.CreateSubMenu('modifiers', '\115\101\108\102\10', 'Modifiers Options')

-- APPEARANCE SUBMENUS
PhoolCheat.CreateSubMenu('modifyskintextures', '\97\112\112\101\97\114\97\110\99\101\10', "Modify Skin Textures")
PhoolCheat.CreateSubMenu('modifyhead', 'modifyskintextures', "Available Drawables")
PhoolCheat.CreateSubMenu('skinsmodels', '\97\112\112\101\97\114\97\110\99\101\10', "Skin Models")

-- WEAPON MENU SUBMENUS

PhoolCheat.CreateSubMenu('WeaponCustomization', '\119\101\97\112\111\110\10', 'Weapon Customization')
PhoolCheat.CreateSubMenu('\119\101\97\112\111\110\115\112\97\119\110\101\114\10', '\119\101\97\112\111\110\10', 'Weapon Spawner')
PhoolCheat.CreateSubMenu('melee', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Melee Weapons')
PhoolCheat.CreateSubMenu('pistol', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Pistols')
PhoolCheat.CreateSubMenu('smg', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'SMGs / MGs')
PhoolCheat.CreateSubMenu('shotgun', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Shotguns')
PhoolCheat.CreateSubMenu('assault', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Assault Rifles')
PhoolCheat.CreateSubMenu('sniper', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Sniper Rifles')
PhoolCheat.CreateSubMenu('thrown', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Thrown Weapons')
PhoolCheat.CreateSubMenu('heavy', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Heavy Weapons')

-- VEHICLE MENU SUBMENUS
PhoolCheat.CreateSubMenu('\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', '\118\101\104\105\99\108\101\10', 'Vehicle Spawner')
PhoolCheat.CreateSubMenu('vehiclemods', '\118\101\104\105\99\108\101\10', 'Vehicle Mods')
PhoolCheat.CreateSubMenu('vehiclemenu', '\118\101\104\105\99\108\101\10', 'Vehicle Control Menu')

-- VEHICLE SPAWNER MENU
PhoolCheat.CreateSubMenu('compacts', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Compacts')
PhoolCheat.CreateSubMenu('helicopters', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Helicopters')
PhoolCheat.CreateSubMenu('planes', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Planes')
PhoolCheat.CreateSubMenu('service', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Service')
PhoolCheat.CreateSubMenu('commercial', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Commercial')

PhoolCheat.CreateSubMenu('vehicletuning', 'vehiclemods', 'Vehicle Tuning')

-- WORLD MENU SUBMENUS
PhoolCheat.CreateSubMenu('\111\98\106\101\99\116\115\112\97\119\110\101\114\10', 'PhoolCheat', 'Object Spawner')
PhoolCheat.CreateSubMenu('objectlist', '\111\98\106\101\99\116\115\112\97\119\110\101\114\10', 'Select To Delete')
PhoolCheat.CreateSubMenu('weather', '\119\111\114\108\100\10', 'Weather Changer ~r~(CLIENT SIDE)')
PhoolCheat.CreateSubMenu('time', '\119\111\114\108\100\10', 'Time Changer')

-- MISC MENU SUBMENUS
PhoolCheat.CreateSubMenu('esp', '\109\105\115\99\10', 'ESP & Visual Options')
PhoolCheat.CreateSubMenu('webradio', '\109\105\115\99\10', 'Web Radio')
PhoolCheat.CreateSubMenu('credits', '\109\105\115\99\10', 'Credits')
PhoolCheat.CreateSubMenu('InfoMenu', '\109\105\115\99\10', 'Info') 

-- TELEPORT MENU SUBMENUS
PhoolCheat.CreateSubMenu('saveload', '\116\101\108\101\112\111\114\116\10', 'Save/Load Position')
PhoolCheat.CreateSubMenu('pois', '\116\101\108\101\112\111\114\116\10', 'POIs')
--fuck server
PhoolCheat.CreateSubMenu('\102\117\99\107\115\101\114\118\101\114\10', 'PhoolCheat', 'Fuck Server')

-- LUA MENU SUBMENUS
PhoolCheat.CreateSubMenu('\101\115\120\10', '\108\117\97\10', 'Stoffer')
PhoolCheat.CreateSubMenu('\118\114\112\10', '\108\117\97\10', 'vRP Options')
PhoolCheat.CreateSubMenu('other', '\108\117\97\10', 'Skejss')
PhoolCheat.CreateSubMenu('money', '\118\114\112\10', 'Jobs')

PhoolCheat.InitializeTheme()


while true do
-- MAIN MENU

if PhoolCheat.IsMenuOpened('PhoolCheat') then
if PhoolCheat.MenuButton('Self', '\115\101\108\102\10') then                       
elseif PhoolCheat.MenuButton('Players', '\112\108\97\121\101\114\10') then
elseif PhoolCheat.MenuButton('ESP', 'visualoptionsssss') then
elseif PhoolCheat.MenuButton('Veiculos', '\118\101\104\105\99\108\101\10') then
elseif PhoolCheat.MenuButton('Armas', '\119\101\97\112\111\110\10') then
elseif PhoolCheat.MenuButton('Skins', 'skinsss') then
elseif PhoolCheat.Button('~p~Desinjetar') then break
end

-- PLAYER OPTIONS MENU
elseif PhoolCheat.IsMenuOpened('\112\108\97\121\101\114\10') then

local playerlist = GetActivePlayers()
for i = 1, #playerlist do
local currPlayer = playerlist[i]
if PhoolCheat.MenuButton("~p~NOME ~r~: ~y~" .. GetPlayerName(currPlayer), '\112\108\97\121\101\114\111\112\116\105\111\110\115\10') then
selectedPlayer = currPlayer end             
end
elseif PhoolCheat.IsMenuOpened('troll') then
if PhoolCheat.Button("~p~Tazer ~g~NEW") then
Explose(selectedPlayer)
end
-- SPECIFIC PLAYER OPTIONS
elseif PhoolCheat.IsMenuOpened('\112\108\97\121\101\114\111\112\116\105\111\110\115\10') then
if PhoolCheat.Button("~m~JOGADOR" .. (IsPedDeadOrDying(GetPlayerPed(i), 1) and "" or ""), GetPlayerName(selectedPlayer))then
end
if PhoolCheat.MenuButton("~r~Troll Options ~g~NEW", 'troll') then
elseif PhoolCheat.Button("~p~Copiar Roupa ~g~NEW") then
model = GetEntityModel(GetPlayerPed(selectedPlayer))
ClonePedToTarget(GetPlayerPed(selectedPlayer), PlayerPedId())
end

-- SELF OPTIONS MENU
elseif PhoolCheat.IsMenuOpened('\115\101\108\102\10') then
if PhoolCheat.Button("~p~Reviver ~g~NEW") then
SetEntityHealth(PlayerPedId(), 400)
ClearPedBloodDamage(PlayerPedId())
ClearPedWetness(PlayerPedId())
ClearPedEnvDirt(PlayerPedId())
ResetPedVisibleDamage(PlayerPedId())
elseif PhoolCheat.Button("~p~Desalgemar/Algemar ~g~NEW") then
vRP.toggleHandcuff()
end
if PhoolCheat.Button("~p~Roupa Aleatoria ~g~NEW") then
RandomClothes(PlayerId())
end
if PhoolCheat.CheckBox("~p~Godmode ~g~NEW", Godmode) then
Godmode = not Godmode
elseif PhoolCheat.CheckBox("~p~Infinite Stamina ~g~NEW", InfStamina) then
InfStamina = not InfStamina
elseif PhoolCheat.CheckBox("~p~Rolamento Infinito ~g~NEW", rola) then
rola = not rola
elseif PhoolCheat.CheckBox("~p~Invisibilidade  ~g~NEW", Invisibility) then
Invisibility = not Invisibility
if not Invisibility then
SetEntityVisible(PlayerPedId(), true)
end
elseif PhoolCheat.CheckBox("~p~Magneto Mode Tecla ~r~[E]", ForceTog) then
ForceMod()

elseif PhoolCheat.CheckBox("~p~Noclip  ~g~NEW", Noclipping) then
ToggleNoclip()
end

-- WEAPON OPTIONS MENU
elseif PhoolCheat.IsMenuOpened('\119\101\97\112\111\110\10') then
if PhoolCheat.MenuButton("~r~Puxar ~r~Arma ~g~NEW", '\119\101\97\112\111\110\115\112\97\119\110\101\114\10') then
selectedPlayer = PlayerId()
elseif PhoolCheat.Button("~p~Remover Todas As Armas ~g~NEW") then
StripPlayer(PlayerId())
elseif PhoolCheat.Button("~p~Remover Muni ~g~NEW") then
SetPedAmmo(GetPlayerPed(-1), 0)
elseif PhoolCheat.Button("~p~Refil Muni ~g~NEW") then
GiveMaxAmmo(PlayerId())
elseif PhoolCheat.CheckBox("~p~Mira Sempre na Tela ~g~NEW", Crosshair) then
Crosshair = not Crosshair
elseif PhoolCheat.CheckBox("~p~Aimlock ~g~NEW", aimlock) then
aimlock = not aimlock
elseif PhoolCheat.CheckBox("~p~Muni Infinita ~g~NEW", InfAmmo) then
InfAmmo = not InfAmmo
SetPedInfiniteAmmoClip(PlayerPedId(), InfAmmo)
elseif PhoolCheat.CheckBox("~p~Munição/Soco Explosivo ~g~NEW", ExplosiveAmmo) then
ExplosiveAmmo = not ExplosiveAmmo
end


-- SPECIFIC WEAPON MENU
elseif PhoolCheat.IsMenuOpened('\119\101\97\112\111\110\115\112\97\119\110\101\114\10') then
if PhoolCheat.MenuButton('~p~Armas Indetectavel ~g~NEW', 'pistol') then
elseif PhoolCheat.MenuButton('~p~Pistolas ~r~RISCO', 'shotgun') then
elseif PhoolCheat.MenuButton('~p~Rifles de Assalto ~r~RISCO', 'assault') then
end
-- PISTOL MENU
elseif PhoolCheat.IsMenuOpened('pistol') then
for i = 1, #pistolweapons do
if PhoolCheat.Button("~r~» ~s~"..pistolweapons[i][2].."") then
GiveWeapon(selectedPlayer, pistolweapons[i][1])
end
end
-- SHOTGUN MENU
elseif PhoolCheat.IsMenuOpened('shotgun') then
for i = 1, #shotgunweapons do
if PhoolCheat.Button("~r~» ~s~"..shotgunweapons[i][2].."") then
GiveWeapon(selectedPlayer, shotgunweapons[i][1])
end
end
-- ASSAULT RIFLE MENU
elseif PhoolCheat.IsMenuOpened('assault') then
for i = 1, #assaultweapons do
if PhoolCheat.Button("~r~» ~s~"..assaultweapons[i][2].."") then
GiveWeapon(selectedPlayer, assaultweapons[i][1])
end
end

elseif PhoolCheat.IsMenuOpened('visualoptionsssss') then  
if PhoolCheat.CheckBox("~p~Esp Names ~g~NEW", ESPNAMES) then
ESPNAMES = not ESPNAMES
end
if PhoolCheat.CheckBox("~p~Esp Box ~g~NEW", espbox) then
espbox = not espbox
end
if PhoolCheat.CheckBox("~p~Esp Weapons ~g~NEW", espweap) then
espweap = not espweap
end
if PhoolCheat.Button("~p~fps on ~g~NEW") then
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
if PhoolCheat.Button("~p~fps off ~g~NEW") then
SetTimecycleModifier("default")
end

-- VEHICLE OPTIONS MENU
elseif PhoolCheat.IsMenuOpened('\118\101\104\105\99\108\101\10') then
if PhoolCheat.Button("~y~Spawnar Veiculo ~g~NEW") then
local cb = GetKeyboardInput('Nome Do Veiculo', '', 100)
local cw = GetKeyboardInput('Seu Rg', '', 100)
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
ShowInfo('~b~~h~Veiculo Não Existe!', true)
end
elseif PhoolCheat.MenuButton("~r~Vehicle Options", 'vehiclemods') then
elseif PhoolCheat.Button("~p~Reparar/Desvirar Veiculo ~g~NEW") then
Citizen.InvokeNative(0x115722B1B9C14C1C, Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false))
Citizen.InvokeNative(0x79D3B596FE44EE8B, Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false), 0.0)
Citizen.InvokeNative(0x34E710FF01247C5A, Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false), 0)
Citizen.InvokeNative(0xFB8794444A7D60FB, Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false), false)
Citizen.InvokeNative(0x1FD09E7390A74D54, Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), false), 0)
elseif PhoolCheat.Button('~p~Destrancar Veiculo ~g~NEW', '~g~<3') then
local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
if vehicle then
if DoesEntityExist(vehicle) then
SetVehicleDoorsLocked(vehicle, 1)
SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), false)
SetVehicleDoorsLockedForAllPlayers(vehicle, false)
end
end
elseif PhoolCheat.Button('~p~TP Carro Proximo ~g~NEW') then
tpvehgayPhoolCheat()
elseif PhoolCheat.Button('~p~Ver Carros no F8 ~g~NEW') then
v("Olhe o [F8]")
print("^1----------- ^2Veiculos Achados ^1-----------")
for o, p in pairs(O.CustomVs) do
if IsModelValid(p.spawn) then
print("^2Name: ^0" .. p.name .. "", "^1Spawn: ^0" .. p.spawn .. "")
end
end
elseif PhoolCheat.Button("~p~Deletar Veiculo ~g~NEW") then
DeleteVehicle(GetVehiclePedIsUsing(PlayerPedId()))
elseif PhoolCheat.CheckBox("~p~Deletar Veiculos ~g~NEW", delete) then
delete = not delete
elseif PhoolCheat.CheckBox("~p~Não Cair da Moto ~g~NEW", naocair) then
naocair = not naocair
elseif PhoolCheat.CheckBox("~p~Boost Buzina ~g~NEW", BoostBuzina) then   
BoostBuzina = not BoostBuzina
elseif PhoolCheat.CheckBox("~p~Modo Fácil ~g~NEW", EasyHandling) then
EasyHandling = not EasyHandling
local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
if not EasyHandling then
SetVehicleGravityAmount(veh, 9.8)
else
SetVehicleGravityAmount(veh, 30.0)
end
end

-- VEHICLE MODS MENU
elseif PhoolCheat.IsMenuOpened('vehiclemods') then
if PhoolCheat.Button("~p~Tunagem Max ~g~NEW") then
engine1(GetVehiclePedIsUsing(PlayerPedId()))
elseif PhoolCheat.Button("~p~Alterar a Placa ~g~NEW") then
local plateInput = GetKeyboardInput("Colocar Rg")
RequestControlOnce(GetVehiclePedIsIn(PlayerPedId(), 0))
SetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId(), 0), plateInput)
elseif PhoolCheat.Button("~p~Trocar a Cor do Carro ~g~NEW") then
local playerPed = GetPlayerPed(-1)
local playerVeh = GetVehiclePedIsIn(playerPed, true)
local r, g, b = KeyInput("~r~Red", "", 3), KeyInput("~g~Green", "", 3), KeyInput("~b~Blue", "", 3)
r, g, b = tonumber(r), tonumber(g), tonumber(b)
SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId()), r,g,b)
SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId()), r, g, b)
elseif PhoolCheat.Button("~p~Cor do Neon Aleatória ~g~NEW") then
local u48y34 = RGBRainbow(1.0)
local ped = PlayerPedId()
local veh = GetVehiclePedIsUsing(ped)
SetVehicleNeonLightEnabled(veh, 0, true)
SetVehicleNeonLightEnabled(veh, 0, true)
SetVehicleNeonLightEnabled(veh, 1, true)
SetVehicleNeonLightEnabled(veh, 2, true)
SetVehicleNeonLightEnabled(veh, 3, true)
SetVehicleNeonLightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), u48y34.r, u48y34.g, u48y34.b)
end
-- VEHICLE TUNING MENU
elseif PhoolCheat.IsMenuOpened('vehicletuning') then
if PhoolCheat.Button("Tunagem Max ~g~NEW") then
engine1(GetVehiclePedIsUsing(PlayerPedId()))
end

-- SKINS OPTIONS MENU
elseif PhoolCheat.IsMenuOpened('skinsss') then
if PhoolCheat.Button('~p~Skin Legit 1 ~g~NEW') then
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
a0("HATS", 67, 0)
a0("GLASSES", 0, 0)
a0("MASK", 11, 0)
a0("TORSO", 53, 0)
a0("LEGS", 28, 0)
a0("HANDS", 0, 0)
a0("SHOES", 20, 0)
a0("SPECIAL2", 4, 0)
a0("TORSO2", 31, 0)
end
if PhoolCheat.Button('~p~Skin Legit 2 ~g~NEW') then
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
a0("GLASSES", 0, 0)
a0("MASK", 52, 0)
a0("TORSO", 99, 3)
a0("LEGS", 26, 6)
a0("HANDS", 0, 0)
a0("SHOES", 34, 0)
a0("SPECIAL2", 15, 0)
a0("TORSO2", 0, 2)
end
if PhoolCheat.Button('~p~Resetar ~r~Skin ~g~NEW') then
local model = "mp_m_freemode_01"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button('~p~Skin de ~r~SUPER ANTI RP ~g~NEW') then
local model ="u_m_y_imporage"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button('~p~Skin de ~r~BoriBilder ~g~NEW') then
local model ="u_m_y_babyd"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end    
if PhoolCheat.Button('~p~Skin de ~r~Jesus ~g~NEW') then
local model ="u_m_m_jesus_01"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button('~p~Skin de ~r~Macaco ~g~NEW') then
local model ="a_c_chimp"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button('~p~Skin de ~r~Palhaço ~g~NEW') then
local model = "s_m_y_clown_01"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button('~p~Skin de ~r~Randola 1 ~g~NEW') then
local model = "csb_ortega"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button('~p~Skin de ~r~Randola 2 ~g~NEW') then
local model = "csb_ramp_hipster"
RequestModel(GetHashKey(model))

if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button('~p~Skin de ~r~Gangster ~g~NEW') then
local model = "csb_ramp_mex"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button('~p~Skin de ~r~Alien ~g~NEW') then
local model ="s_m_m_movalien_01"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button('~p~Skin de ~r~Açogueiro ~g~NEW') then
local model ="ig_chef2"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button("~p~Skin de ~r~Agente Especial ~g~NEW") then
local model ="s_m_y_blackops_01"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button("~p~Skin de ~r~Coroa do Rock ~g~NEW") then
local model ="mp_m_weapexp_01"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button("~p~Skin de ~r~MegaZord ~g~NEW") then
local model ="u_m_y_juggernaut_01"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button("~p~Skin de ~r~Mexicano ~g~NEW") then
local model ="u_m_y_mani"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
if PhoolCheat.Button("~p~Skin de ~r~Criminoso ~g~NEW") then
local model ="mp_m_bogdangoon"
RequestModel(GetHashKey(model))
if HasModelLoaded(GetHashKey(model)) then
SetPlayerModel(PlayerId(), GetHashKey(model))
end
end
elseif IsDisabledControlJustReleased(0, Keys[menuKeybind]) then PhoolCheat.OpenMenu('PhoolCheat')

elseif IsControlJustReleased(0, Keys[noclipKeybind]) then ToggleNoclip()end


PhoolCheat.Display()

if Noclipping then
local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
local k = PhoolCheatss
local x, y, z = PhoolCheatss

if not isInVehicle then
k = PlayerPedId()
x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2))
else
k = GetVehiclePedIsIn(PlayerPedId(), 0)
x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1))
end

if isInVehicle and GetSeatPedIsIn(PlayerPedId()) ~= -1 then RequestControlOnce(k) end

local dx, dy, dz = GetCamDirection()
SetEntityVisible(PlayerPedId(), 0, 0)
SetEntityVisible(k, 0, 0)

SetEntityVelocity(k, 0.0001, 0.0001, 0.0001)

if IsDisabledControlJustPressed(0, Keys["LEFTSHIFT"]) then -- Change speed
oldSpeed = NoclipSpeed
NoclipSpeed = NoclipSpeed * 2
end
if IsDisabledControlJustReleased(0, Keys["LEFTSHIFT"]) then -- Restore speed
NoclipSpeed = oldSpeed
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

if IsDisabledControlPressed(0, Keys["SPACE"]) then -- MOVE UP
z = z + NoclipSpeed
end

if IsDisabledControlPressed(0, Keys["LEFTCTRL"]) then -- MOVE DOWN
z = z - NoclipSpeed
end


SetEntityCoordsNoOffset(k, x, y, z, true, true, true)
end

if ExplodingAll then
ExplodeAll(includeself)
end

if FlingingPlayer then
local coords = GetEntityCoords(GetPlayerPed(FlingedPlayer))
Citizen.InvokeNative(0xE3AD2BDBAEE269AC, coords.x, coords.y, coords.z, 4, 1.0, 0, 1, 0.0, 1)
end

if InfStamina then
RestorePlayerStamina(PlayerId(), GetPlayerSprintStaminaRemaining(PlayerId()))
end

if SuperJump then
SetSuperJumpThisFrame(PlayerId())
end

if Invisibility then
SetEntityVisible(PlayerPedId(), 0, 0)
end

function KeyboardInput(TextEntry, ExampleText, MaxStringLength)
AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
blockinput = true

while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
Citizen.Wait(0)
end

if UpdateOnscreenKeyboard() ~= 2 then
local result = GetOnscreenKeyboardResult()
Citizen.Wait(500)
blockinput = PhoolCheataa
return result
else
Citizen.Wait(500)
blockinput = PhoolCheataa
return PhoolCheatss
end
end


if RapidFire then
DoRapidFireTick()
end

if Crosshair then
ShowHudComponentThisFrame(14)
end

if ExplosiveAmmo then
local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
if ret then
AddExplosion(pos.x, pos.y, pos.z, 1, 1.0, 1, 0, 0.1)
end
end

if ESPNAMES then
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
dO = true
end
if dO then
dd = " "
end
bY(x, y, z - 0.15, dd, 255,180,212)
end
end
end
end
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

if espweap then
local cS = GetActivePlayers()
for l = 1, #cS do
local c1 = cS[l]
if c1 ~= PlayerId() and GetPlayerServerId(c1) ~= 0 then
local d7 = GetEntityCoords(GetPlayerPed(cS[l]))
local d8 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), d7)
local d9 = 250.0
if d8 <= d9 then
local T, dx = GetCurrentPedWeapon(GetPlayerPed(cS[l]), 1)
local dy = bu(dx)
if dy == nil then
dy = "Nenhuma"
end
local da = GetPlayerPed(c1)
local db, dc, dd = table.unpack(GetEntityCoords(PlayerPedId()))
local x, y, z = table.unpack(GetEntityCoords(da))
local d6 = "Arma : " .. dy .. "  [" .. math.floor(d8) .. "m]"
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
bw(x, y, z + 1.0, d6, 255, 0, 255)
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

if espbox then
local dE = GetActivePlayers()
for l = 1, #dE do
local dw = GetPlayerPed(dE[l])
bone = GetEntityBoneIndexByName(dw, "SKEL_HEAD")
x, y, z = table.unpack(GetPedBoneCoords(dw, bone, 0.0, 0.0, 0.0))
px, py, pz = table.unpack(GetGameplayCamCoord())
if GetDistanceBetweenCoords(x, y, z, px, py, pz, true) < 1000.0 then
if dw ~= PlayerPedId() and IsEntityOnScreen(dw) and not IsPedDeadOrDying(dw) then
z = z + 0.9
local dF = GetDistanceBetweenCoords(x, y, z, px, py, pz, true) * 0.002 / 2
if dF < 0.0042 then
dF = 0.0042
end
retval, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
width = 0.00045
height = 0.0023
DrawRect(_x, _y, width / dF, 0.0015, 255, 0, 255, 200)
DrawRect(_x, _y + height / dF, width / dF, 0.0015, 255, 0, 255, 200)
DrawRect(_x + width / 2 / dF, _y + height / 2 / dF, 0.001, height / dF, 255, 0, 255, 200)
DrawRect(_x - width / 2 / dF, _y + height / 2 / dF, 0.001, height / dF, 255, 0, 255, 200)
health = GetEntityHealth(dw)
DrawRect(
_x - 0.00028 / dF,
_y + height / 2 / dF,
0.0016 / dF * 0.015,
height / dF,
0,
0,
0,
200
)
if GetEntityHealth(dw) <= 150 then
DrawRect(
_x - 0.00028 / dF,
_y + height / dF - GetEntityHealth(dw) / 175000 / dF,
0.0016 / dF * 0.015,
GetEntityHealth(dw) / 87500 / dF,
214,
172,
6,
255
)
else
DrawRect(
_x - 0.00028 / dF,
_y + height / dF - GetEntityHealth(dw) / 175000 / dF,
0.0016 / dF * 0.015,
GetEntityHealth(dw) / 87500 / dF,
0,
255,
0,
255
)
end
DrawRect(
_x - 0.00033 / dF,
_y + height / dF - GetPedArmour(dw) * 2 / 175000 / dF,
0.0016 / dF * 0.015,
GetPedArmour(dw) * 2 / 87500 / dF,
0,
255,
0,
255
)
end
end
end
end

if delete then
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
if LinesEnabled then
local plist = GetActivePlayers()
local playerCoords = GetEntityCoords(PlayerPedId())
for i = 1, #plist do
if i == PlayerId() then i = i + 1 end
local targetCoords = GetEntityCoords(GetPlayerPed(plist[i]))
DrawLine(playerCoords, targetCoords, 0, 0, 255, 255)
end
end

function RandomClothes(target)
local ped = GetPlayerPed(target)
SetPedRandomComponentVariation(ped, false)
SetPedRandomProps(ped)
end

if rola then
for l = 0, 3 do
StatSetInt(GetHashKey("mp" .. l .. "_shooting_ability"), 1000, true)
StatSetInt(GetHashKey("sp" .. l .. "_shooting_ability"), 1000, true)
end
else
for l = 0, 3 do
StatSetInt(GetHashKey("mp" .. l .. "_shooting_ability"), 0, true)
StatSetInt(GetHashKey("sp" .. l .. "_shooting_ability"), 0, true)
end
end

if BoostBuzina then
DisableControlAction(0, 86, true)
if IsDisabledControlPressed(0, 86) and IsPedInAnyVehicle(PlayerPedId()) then
local ped = GetPlayerPed(-1)
local playerVeh = GetVehiclePedIsIn(ped, false)
SetVehicleForwardSpeed(playerVeh, 90.0)
end
end

if naocair then
SetPedCanBeKnockedOffVehicle(PlayerPedId(), true)
else
SetPedCanBeKnockedOffVehicle(PlayerPedId(), false)
end

if ForceMap then
DisplayRadar(true)
end
if Godmode then
SetPedSuffersCriticalHits(PlayerPedId(), false)
if GetEntityHealth(PlayerPedId()) < 400 then
SetEntityHealth(PlayerPedId(), 400)
end
if GetEntityHealth(PlayerPedId()) ~= 0 then
end
else
SetPedSuffersCriticalHits(PlayerPedId(), true)
end
function lerp(delta, from, to)
if delta > 1 then return to end
if delta < 0 then return from end
return from + (to - from) * delta
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
local aimsmooth = 0.6
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
if enablelines then
Citizen.InvokeNative(0x6B7256074AE34680,GetEntityCoords(PlayerPedId()), GetPedBoneCoords(cI, 31086), 255, 0, 0, 255)
end
end
end
end
end
end
function tpvehgayPhoolCheat()
local cA = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
if not DoesEntityExist(cA) then
return
end
local dO = -1
TaskWarpPedIntoVehicle(PlayerPedId(), cA, dO)
Citizen.Wait(100)
SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
end
function v(w)
local A = 1
local B = true
local C = 0.515
local D = 0.50
local E = 0.1
Citizen.CreateThread(
function()
Citizen.Wait(5000)
while true do
Citizen.Wait(0)
A = A + 0.004
end
end
)
Citizen.CreateThread(
function()
A = 1.1
repeat
Citizen.Wait(0)
A = A - 0.004
until A == 0.97 or A <= 0.97
end
)
Citizen.CreateThread(
function()
while B do
Citizen.Wait(0)
E = A - 0.03
DrawRect(A - 0.005, C, 0.202, 0.070, 123, 245, 66, 255)
DrawRect(A - 0.005, C, 0.2, 0.070, 123, 245, 66, 255)
DrawRect(A, C, 0.202, 0.070, 123, 245, 66, 255)
DrawRect(A, C, 0.2, 0.070, 28, 28, 28, 255)
c(w, false, 0.45, 0, E, D)
end
end
)
Citizen.CreateThread(
function()
Citizen.Wait(10000)
B = false
end
)
end
function c(d, e, f, h, i, j)
if e then
SetTextOutline()
end
SetTextScale(0.00, f)
SetTextColour(255, 255, 255, 255)
SetTextFont(4)
SetTextProportional(0)
SetTextJustification(h)
SetTextEntry("string")
AddTextComponentString(d)
DrawText(i, j)
end

Citizen.Wait(0)
end
end)
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

function Explose (player)
local ped = GetPlayerPed(player)
local tLoc = GetEntityCoords(ped)
local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_STUNGUN`, PlayerPedId(), true, false, 1.0)
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
function KeyInput(TextEntry, ExampleText, MaxStringLength)
Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~r~".. TextEntry .. ":")
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

platano:rectangle(19,19,152,502,rainbow.r,rainbow.g,rainbow.b,255)
platano:rectangle(20,20,150,500,0,0,0,255)

local x,y = GetNuiCursorPosition()

local i = 0

for veh in platano:enumerate_vehicles() do				
if IsEntityDead(veh) then
i = i + 1
if platano:button(GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. " [~r~DESTROYED~w~]",25,i * 16,255,255,255) then
SetVehicleFixed(veh)
SetPedIntoVehicle(GetPlayerPed(-1),veh,-1)
end
else	
if GetPedInVehicleSeat(veh,-1) == 0 then
i = i + 1
if platano:button(GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. " [~g~NO DRIVER~w~]",25,i * 16,255,255,255) then
SetPedIntoVehicle(GetPlayerPed(-1),veh,-1)
end
end
end
end
platano:rectangle(x, y, 5, 5, rainbow.r,rainbow.g,rainbow.b,255)
end
Citizen.Wait(0)
end
end)