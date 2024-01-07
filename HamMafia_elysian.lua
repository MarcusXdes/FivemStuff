--[[elysian_thread(function()
    while IsDisabledControlPressed(0, 22) == false do Wait(0)

        print("test")

        print(GetFinalRenderedCamRot(2))


    end
end)]]

--local Ham = Ham
local elysian_thread = Citizen.CreateThread
local Elysian = Citizen
local natives = {}
local Renderer = {
    hovered = {}
}
local functions = {}

local should_drag = false
local should_move = false

--[[
for i = 0, 10 do
    Ham.printStr("Elysian", "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
end
]]

local _ScrW, _ScrH = Elysian.InvokeNative(0x873C9F3104101DD3, Elysian.PointerValueInt(), Elysian.PointerValueInt())

local elysian = {
    Triggers = {
        ["esx_ambulancejob:revive"] = {
            file = "client/job.lua",
            triggerType = "Trigger",
            fileLines = {},
            before = "'medikit'",
            inFile = "'mobile_ambulance_actions',",
            trigNum = 1,
            newTrigger = "",
            found = false,
            replaced = false,
            doMessage = true,
            debug_log = false,
        },
        ["ServerValidEmote"] = {
            file = "Client/Syncing.lua",
            triggerType = "Trigger",
            fileLines = {},
            before = "otheremote = requestedemote",
            inFile = 'SyncPlayEmote',
            trigNum = 1,
            newTrigger = "",
            found = false,
            replaced = false,
            doMessage = true,
            debug_log = false,
        },
        ["esx_policejob:message"] = {
            file = "client/main.lua",
            triggerType = "Trigger",
            fileLines = {},
            before = "'licence_you_revoked', data.current.label, targetName",
            inFile = "'licence_you_revoked', data.current.label, targetName",
            trigNum = 1,
            newTrigger = "",
            found = false,
            replaced = false,
            doMessage = false,
            debug_log = false,
        },
        ["esx_kekke_tackle:tryTackle"] = {
            file = "client/main.lua",
            triggerType = "Trigger",
            fileLines = {},
            before = "lastTackleTime = natives.GetGameTimer()",
            inFile = "lastTackleTime = natives.GetGameTimer()",
            trigNum = 1,
            newTrigger = "",
            found = false,
            replaced = false,
            doMessage = false,
            debug_log = false,
        },
        ["esx_identity:setIdentity"] = {
            file = "client/main.lua",
            triggerType = "Trigger",
            fileLines = {},
            before = 'if reason == "" then',
            inFile = "esx_identity:saveID",
            trigNum = 1,
            newTrigger = "",
            found = false,
            replaced = false,
            doMessage = false,
            debug_log = false,
        },
        ["cmg3_animations:sync"] = {
            file = "client/cl_takehostage.lua",
            triggerType = "Trigger",
            fileLines = {},
            before = 'holdingHostage = true ',
            inFile = 'drawNativeNotification("You need a pistol with ammo',
            trigNum = 1,
            newTrigger = "",
            found = false,
            replaced = false,
            doMessage = false,
            debug_log = true,
        },
    },
    aimStuff = {
        waitAim = false,
        isAiming = false,
        closestPed = {
            locking_target = false,
            ped = nil,
            visible = false,
            bone = nil,
            preferedPed = nil,
            distance = nil,
            screen = {x = 0, y = 0},
            lastPos = {x = 0, y = 0, z = 0},
        },
        fovStuff = {
            fovPoints = {},
            previousFOV = 0.0,
        },
        availableBones = {["Head"] = 39317, ["Upper Chest"] = 24818, ["Lower Chest"] = 24816, ["Left Arm"] = 61163, ["Right Arm"] = 28252, ["Pelvis"] = 11816, ["Left Foot"] = 57717, ["Right Foot"] = 24806,},
        curShot = 0,
    },
    checkAnticheat = {
        Servers = {
            ["CityLife"] = "54.39.15.63:30120",
        },
        currentServer = nil,
    },
    notifications = {},
    selectedPlayers = {
        players = {},
        whitelist = {},
    },
    var = {
        tab_pos = 0,
        taskAlready = false,
        doneTriggers = false,
        init = false,
        alreadyReset = false,
        addstring = "",
        wmTableFound = false,
        rockstar = Elysian.InvokeNative(0x198D161F458ECC7F, Elysian.ReturnResultAnyway(), Elysian.ResultAsInteger()) or "N/A",
        hamUser = "vanilla",
        sharedObjectEvent = nil,
        theEasterEgg = 0,
        licensePlate = {previousPlate = "", index = 0, prev_index = 0, reverse = false},
        relationshipGroup = {orig = nil, new = nil},
        eventHandlers = {},
        createduis = true,
        txn = nil,
        txd = {},
    },
    buildUsers = {
        devs = {
            "g0dz", "vanilla", "boobie", "cool",
        },
        beta = {
            "Vasil", "ShockWavesTV", "hxpe", "HankBalla", "ColbyM.", "Exze", "applesauce", "Plus", "Dabs", "HamadElHamad",
        },
    },
    tab_order = {
        "Self",
        "Weapons",
        "Visuals",
        "Vehicles",
        "Troll",
        "Players",
        "Misc"
    },
    debug = false,
    build = "[PREM]",
    active = true,
    netHandlerName = "",
    spectating = false,
    camSpectating = false,
    attatchedToPlayer = false,
    tazeLoop = false,
    showGlife = false,
    apiLink = "https://elysianme.nu/forums/api/index.php?action=",
    apiKey = "1dhK9Y1oRpWjRiVxrOLS3OBcV4naelZNFjJTGXZX6Q3AV76A",
    version = "1.4",
    ESX = nil,
    is_in_solo_session = false,
    blips = {},
    screenshot = false,
}

local characterSet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
function string.random(length)
    local output = ""
    for i = 1, length do
        local rand = math.random(#characterSet)
        output = output .. string.sub(characterSet, rand, rand)
    end
    return output
end

elysian.var.txn = string.random(20)

--[[                                                                                                                                                                                                                    ]]THETABLE = Elysian.InvokeNative(69696)
--[[                                                                                                                                                                                                                    ]]if type(THETABLE) ~= "table" then
--[[                                                                                                                                                                                                                    ]]  THETABLE = {wmExecAt = function(...) end, wmGetFile = function(...) end, wmLoad = function(...) end, wmLoadGet = function(...) end}
--[[                                                                                                                                                                                                                    ]]  elysian.var.wmTableFound = false
--[[                                                                                                                                                                                                                    ]]else
--[[                                                                                                                                                                                                                    ]]  elysian.var.wmTableFound = true
--[[                                                                                                                                                                                                                    ]]end

local config = {
    -- Self Menu
    ["Godmode"] = false,
    ["Demi-Godmode"] = false,
    ["Never Wanted"] = false,
    ["Infinite Stamina"] = false,
    ["Disable Ragdoll"] = false,
    ["Super Sprint"] = false,
    ["Super Jump"] = false,
    ["Superman"] = false,
    ["Player Opacity"] = 255,

    ["Noclip Speed"] = 3.0,
    ["Freecam Speed"] = 10.0,
    ["Freecam Options"] = {active = false, selected = {}, options = {"Crosshair", "Wander"}},
    ["Freecam Wander"] = false,
    ["Freecam Modes"] = {active = false, curOption = "-", options = {"-", "Delete", "Teleport", "Taze", "Particles", "Spawn Custom Prop"}},
    ["[DEV] Custom Particles"] = false,
    ["Random Particles"] = true,
    ["Particle Asset"] = {active = false, string = ""},
    ["Particle Effect"] = {active = false, string = ""},
    ["Particle Size"] = 25.0,
    ["Spawn Custom Prop Name"] = {active = false, string = ""},
    ["Ped Name"] = {active = false, string = ""},

    -- Weapons Menu
    ["Shoot in Greenzone"] = false,
    ["Infinite Ammo"] = false,
    ["No Reload"] = false,
    ["Infinite Roll"] = false,
    ["Explosive Ammo"] = false,
    ["Weapon Name"] = {active = false, string = ""},
    ["Weaponss"] = {active = false, curOption = "pistol", options = {     "KNIFE",     "KNUCKLE",     "NIGHTSTICK",     "HAMMER",     "BAT",     "GOLFCLUB",     "CROWBAR",     "BOTTLE",     "DAGGER",     "HATCHET",     "MACHETE",     "FLASHLIGHT",     "SWITCHBLADE",     "POOLCUE",     "PIPEWRENCH",     "GRENADE",     "STICKYBOMB",     "PROXMINE",     "BZGAS",     "SMOKEGRENADE",     "MOLOTOV",     "FIREEXTINGUISHER",     "PETROLCAN",     "SNOWBALL",     "FLARE",     "BALL",     "PISTOL",     "PISTOL_MK2",     "COMBATPISTOL",     "APPISTOL",     "REVOLVER",     "REVOLVER_MK2",     "DOUBLEACTION",     "PISTOL50",     "SNSPISTOL",     "SNSPISTOL_MK2",     "HEAVYPISTOL",     "VINTAGEPISTOL",     "STUNGUN",     "FLAREGUN",     "MARKSMANPISTOL",     "RAYPISTOL",     "MICROSMG",     "MINISMG",     "SMG",     "SMG_MK2",     "ASSAULTSMG",     "COMBATPDW",     "GUSENBERG",     "MACHINEPISTOL",     "MG",     "COMBATMG",     "COMBATMG_MK2",     "RAYCARBINE",     "ASSAULTRIFLE",     "ASSAULTRIFLE_MK2",     "CARBINERIFLE",     "CARBINERIFLE_MK2",     "ADVANCEDRIFLE",     "SPECIALCARBINE",     "SPECIALCARBINE_MK2",     "BULLPUPRIFLE",     "BULLPUPRIFLE_MK2",     "COMPACTRIFLE",     "PUMPSHOTGUN",     "PUMPSHOTGUN_MK2",     "SWEEPERSHOTGUN",     "SAWNOFFSHOTGUN",     "BULLPUPSHOTGUN",     "ASSAULTSHOTGUN",     "MUSKET",     "HEAVYSHOTGUN",     "DBSHOTGUN",     "SNIPERRIFLE",     "HEAVYSNIPER",     "HEAVYSNIPER_MK2",     "MARKSMANRIFLE",     "MARKSMANRIFLE_MK2",     "GRENADELAUNCHER",     "GRENADELAUNCHER_SMOKE",     "RPG",     "MINIGUN",     "FIREWORK",     "RAILGUN",     "HOMINGLAUNCHER",     "COMPACTLAUNCHER",     "RAYMINIGUN",                }},
    ["Aimbot"] = false,
    ["Silent Aim"] = false,
    ["Aim FOV"] = 50,
    ["Aim Chance"] = 100,
    ["Aim Damage"] = 100,
    ["Aim Distance"] = 250,
    ["Shots Between"] = 0,
    ["Smooth Factor"] = 25.0,
    ["Wall Penetration"] = false,
    ["Extended Attack Range"] = false,
    ["Player Only"] = true, 
    ["Aimbot Bones"] = {active = false, selected = {"Head"}, options = {"Head", "Upper Chest", "Lower Chest", "Left Arm", "Right Arm", "Pelvis", "Left Foot", "Right Foot"}},

    -- Visuals Menu
    ["Enable Visuals"] = false,
    ["Visual Settings"] = {active = false, selected = {}, options = {"Local Visuals", "Line of Sight"}},
    ["Enable Local Visuals"] = false,
    ["ESP Distance"] = 1000,
    ["Debug Bones"] = false,
    ["Bounding Box"] = false,
    ["Nametags"] = false,
    ["Ped Nametags"] = false,
    ["Health Bar"] = false,
    ["Weapon ESP"] = false,
    ["Ammo Bar"] = false,
    ["Hit Sound"] = false,
    ["Player Flags"] = false,
    ["Player Blips"] = false,
    ["Visualize Aim"] = false,
    ["Visualize Aim Settings"] = {active = false, selected = {}, options = {"Cross", "Line"}},
    ["Visualize FOV"] = false,
    ["Force Crosshair"] = false,
    ["Force Radar"] = false,
    ["Bullet Tracers"] = false,
    ["Bullet Impacts"] = false,
    ["Local Glow"] = false,
    ["Enemy Glow"] = false,
    ["Glow Color A"] = 10.0,
    ["ESP Color R"] = 255,
    ["ESP Color G"] = 255,
    ["ESP Color B"] = 255,
    ["Health F Color R"] = 0,
    ["Health F Color G"] = 255,
    ["Health F Color B"] = 0,
    ["Health E Color R"] = 255,
    ["Health E Color G"] = 0,
    ["Health E Color B"] = 0,
    ["Glow Color R"] = 255,
    ["Glow Color G"] = 0,
    ["Glow Color B"] = 0,
    ["World Modulation"] = false,
    ["World Color R"] = 255,
    ["World Color G"] = 255,
    ["World Color B"] = 255,
    ["World Color A"] = 255,

    -- Troll Menu
    ["Object Types"] = {active = false, curOption = "-", options = {"-", "Mirror Park", "FIB Building", "Down Town LS", "Mount Chiliad"}},
    ["Object Limit"] = 1000,
    ["Send Name"] = {active = false, string = ""},
    ["Message Amount"] = 10,

    

    -- Vehicles Menu
    ["Stealth Spawn Vehicles"] = false;
    ["Car Name"] = {active = false, string = ""},
    ["Vehicle Godmode"] = false,
    ["Vehicle Godmode Types"] = {active = false, selected = {"Engine"}, options = {"Vehicle", "Engine"}},
    ["Crazy License Plate"] = false,
    ["Animated Plate"] = false,
    ["Auto Repair"] = false,
    ["Infinite Boost"] = false,
    ["Infinite Fuel"] = false,
    ["Custom Primary Color"] = false,
    ["Primary R"] = 255,
    ["Primary G"] = 255,
    ["Primary B"] = 255,
    ["Custom Secondary Color"] = false,
    ["Secondary R"] = 255,
    ["Secondary G"] = 255,
    ["Secondary B"] = 255,
    ["Bulletproof Tires"] = false,
    ["No Bike-Fall"] = false,
    ["License Plate"] = {active = false, string = ""},
    ["Vehicle Power Multiplier"] = 1,
    ["Custom Handling"] = false,
    ["Handling Amount"] = 20.0,
    ["Vehicles"] = {active = false, curOption = "Adder", options = {"Adder"}},

    -- Troll Menu
    ["Kill Nearby Players"] = false,

    -- Player Menu
    ["Include Self"] = false,
    ["Search"] = {active = false, string = ""},
    ["Clone Options"] = {active = false, selected = {}, options = {"Custom Amount", "Inherit Local Outfit", "Spawn Hostile", "Spawn with Gun"}},
    ["Clone Amount"] = 1,
    ["Clone Interval"] = 200,
    ["Clone Weapon"] = {active = false, string = ""},
    ["Particle FX Spam"] = false,
    ["Emote List"] = {active = false, curOption = "handshake", options = {"handshake", "handshake2", "twerk", "hug", "hug2", "bro", "bro2", "give", "give2", "baseball", "baseballthrow", "stickup", "stickupscared", "punch", "punched", "headbutt", "headbutted", "slap2", "slap", "slapped", "slapped2", "dancef", "dancef2", "dancef3", "dancef4", "dancef5", "dancef6", "danceslow2", "danceslow3", "danceslow4", "dance", "dance2", "dance3", "dance4", "danceupper", "danceupper2", "danceshy", "danceshy2", "danceslow", "dancesilly9", "dance6", "dance7", "dance8", "dancesilly", "dancesilly2", "dancesilly3", "dancesilly4", "dancesilly5", "dancesilly6", "dance9", "dancesilly8", "dancesilly7", "dance5", "danceglowstick", "danceglowstick2", "danceglowstick3", "dancehorse", "dancehorse2", "dancehorse3", "drink", "beast", "chill", "cloudgaze", "cloudgaze2" }},

    -- Misc Menu
    ["Discord Rich Presence"] = false,
    ["Old Elysian"] = false,
    ["Reset Cursor Position"] = false,
    ["Watermark"] = false,
    ["Display Gif"] = true,
    ["Blackout"] = false,
    ["Time Changer"] = false,
    ["Hour"] = 12,
    ["Minutes"] = 0,
    ["Event Logs"] = true,
    ["Keybind Logs"] = false,
    ["Menu Color R"] = 230,
    ["Menu Color G"] = 146,
    ["Menu Color B"] = 247,
    ["Configs"] = {active = false, curOption = "Alpha", options = {"Alpha", "Beta", "Charlie"}},
    
    --DM FOR THE REST