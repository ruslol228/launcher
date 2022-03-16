require "lib.moonloader"
local dlstatus = require('moonloader').download_status
local memory = require "memory"
local inicfg = require "inicfg"
local font = renderCreateFont("TT Norms Regular", 20, 1)
local fontw = renderCreateFont("TT Norms Regular", 14, 1)
local encoding = require 'encoding'
encoding.default = 'CP1251'
u8 = encoding.UTF8



--update

--�������
function getAmmoInClip()
  local pointer = getCharPointer(playerPed)
  local weapon = getCurrentCharWeapon(playerPed)
  local slot = getWeapontypeSlot(weapon)
  local cweapon = pointer + 0x5A0
  local current_cweapon = cweapon + slot * 0x1C
  return memory.getuint32(current_cweapon + 0x8)
end

function comma_value(amount)
  local formatted = amount
  while true do  
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
    if (k==0) then
      break
    end
  end
  return formatted
end

function main()
  if not isSampLoaded() or not isSampfuncsLoaded() then return end
  while not isSampAvailable() do wait(100) end
 
  
hunger = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_satiety_icon.png')
hp = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_health_icon.png')
arm = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_armour_icon.png')

bg = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_stats_bg.png')
mbg = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_money_bg.png')
wbg = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_bg.png')
gun0 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_0.png')
gun1 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_1.png')
gun2 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_2.png')
gun3 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_3.png')
gun4 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_4.png')
gun5 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_5.png')
gun6 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_6.png')
gun7 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_7.png')
gun8 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_8.png')
gun9 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_9.png')
gun10 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_10.png')
gun11 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_11.png')
gun12 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_12.png')
gun13 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_13.png')
gun14 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_14.png')
gun15 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_15.png')
gun16 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_16.png')
gun17 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_17.png')
gun18 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_18.png')
gun22 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_22.png')
gun23 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_23.png')
gun24 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_24.png')
gun25 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_25.png')
gun26 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_26.png')
gun27 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_27.png')
gun28 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_28.png')
gun29 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_29.png')
gun30 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_30.png')
gun31 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_31.png')
gun32 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_32.png')
gun33 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_33.png')
gun34 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_34.png')
gun35 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_35.png')
gun36 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_36.png')
gun37 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_37.png')
gun38 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_38.png')
gun39 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_39.png')
gun40 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_40.png')
gun41 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_41.png')
gun42 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_42.png')
gun43 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_43.png')
gun44= renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_44.png')
gun45 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_45.png')
gun46 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_weapon_46.png')
star = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\zvzda0.png')
star1 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\zvzda1.png')
star2 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\zvzda2.png')
star3 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\zvzda3.png')
star4 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\zvzda4.png')
star5 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\zvzda5.png')
star6 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\zvzda6.png')
empty_bar = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_stats_bar.png')

hp_bar = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_stats_bar_health.png')
hg_bar = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_stats_bar_satiety.png')
arm_bar = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_stats_bar_armour.png')

  repeat
  	wait(0)
  until sampIsLocalPlayerSpawned()

  showHud = true
  sampRegisterChatCommand("hud", function (arg)
    showHud = not showHud
  end)

  while true do
    
  wait(0)
  
  if isKeyJustPressed(VK_F7) then
    showHud = not showHud
  end

 if not sampTextdrawIsExists(2148) and showHud then
  displayHud(false)
  money = getPlayerMoney(PLAYER_HANDLE)
  resX, resY = getScreenResolution()

  x1 = (resX - 1280) / 0.984615
  y1 = (resX - 1280) / 32
  x2 = resX - 1280
  x3 = (resX - 1280) / 0.992248
  x4 = (resX - 1280) / 1.007874
  
  renderDrawTexture(bg, 850 + x1, 50 + y1, 512, 128, 0.0, 0xFFFFFFFF)
  renderDrawTexture(mbg, 880 + x2, 10 + y1, 512, 64, 0.0, 0xFFFFFFFF)
  renderDrawTexture(wbg, 1025 + x3, 135 + y1, 256, 128, 0.0, 0xFFFFFFFF)

  
  x= 1170 + x1
  y = 25 + y1
  if money > 999 then
    money = comma_value(money)
  end
  renderFontDrawText(font, "{A3FF00}${FFFFFF}" .. money, x - renderGetFontDrawTextLength(font, money) / 2, y, 0xFFFFFFFF)
  --x10 = resX / 126
  --renderFontDrawText(font, "{A3FF00}$", x - renderGetFontDrawTextLength(font, money) / 2 - x10 , y, 0xFFFFFFFF)
  
  renderDrawTexture(hunger, 1035 + x4, 65 + y1, 32, 32, 0.0, 0xFFFFFFFF)
  renderDrawTexture(hp, 1035 + x4, 90 + y1, 32, 32, 0.0, 0xFFFFFFFF)
  renderDrawTexture(arm, 1035 + x4, 115 + y1, 32, 32, 0.0, 0xFFFFFFFF)


  renderDrawTexture(empty_bar, 1075 + x4, 77 + y1, 128, 8, 0.0, 0xFFFFFFFF)
  renderDrawTexture(empty_bar, 1075 + x4, 102 + y1, 128, 8, 0.0, 0xFFFFFFFF)
  renderDrawTexture(empty_bar, 1075 + x4, 127 + y1, 128, 8, 0.0, 0xFFFFFFFF)


  if sampTextdrawIsExists(2093) and tonumber(sampTextdrawGetString(2093):match("%d+")) ~= 0 then
	renderDrawTexture(hg_bar, 1075 + x4, 77 + y1, (128 / (100 / tonumber(sampTextdrawGetString(2093):match("%d+")))), 8, 0.0, 0xFFFFFFFF)
  else
	renderDrawTexture(hg_bar, 1075 + x4, 77 + y1, 0, 8, 0.0, 0xFFFFFFFF)
  end
  

  if getCharHealth(PLAYER_PED) ~= 0 then renderDrawTexture(hp_bar, 1075 + x4, 102 + y1, (128 / (100 / getCharHealth(PLAYER_PED))), 8, 0.0, 0xFFFFFFFF) end

  if getCharArmour(PLAYER_PED) ~= 0 then renderDrawTexture(arm_bar, 1075 + x4, 127 + y1, (128 / (100 / getCharArmour(PLAYER_PED))), 8, 0.0, 0xFFFFFFFF) end
  
  ammo = getAmmoInCharWeapon(PLAYER_PED, weaponId)
  ammoInClip = getAmmoInClip()
  xw = 1200 + x1
  yw = 210 + y1
  

    weaponId =  getCurrentCharWeapon(PLAYER_PED)
    if weaponId == 0 then
      renderDrawTexture(gun0, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 1 then 
      renderDrawTexture(gun1, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 2 then 
      renderDrawTexture(gun2, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 3 then 
      renderDrawTexture(gun3, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 4 then 
      renderDrawTexture(gun4, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 5 then 
      renderDrawTexture(gun5, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 6 then 
      renderDrawTexture(gun6, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 7 then 
      renderDrawTexture(gun7, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 8 then 
      renderDrawTexture(gun8, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 9 then 
      renderDrawTexture(gun9, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 10 then 
      renderDrawTexture(gun10, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 11 then 
      renderDrawTexture(gun11, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 12 then 
      renderDrawTexture(gun12, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 13 then 
      renderDrawTexture(gun13, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 14 then 
      renderDrawTexture(gun14, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 15 then 
      renderDrawTexture(gun15, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 16 then 
      renderDrawTexture(gun16, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 17 then 
      renderDrawTexture(gun17, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 18 then 
      renderDrawTexture(gun18, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 22 then 
      renderDrawTexture(gun22, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 23 then 
      renderDrawTexture(gun23, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 24 then 
      renderDrawTexture(gun24, 1045 + x1, 132 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 25 then 
      renderDrawTexture(gun25, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 26 then 
      renderDrawTexture(gun26, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 27 then 
      renderDrawTexture(gun27, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 28 then 
      renderDrawTexture(gun28, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 29 then 
      renderDrawTexture(gun29, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 30 then 
      renderDrawTexture(gun30, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 31 then 
      renderDrawTexture(gun31, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 32 then 
      renderDrawTexture(gun32, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 33 then 
      renderDrawTexture(gun33, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 34 then 
      renderDrawTexture(gun34, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 35 then 
      renderDrawTexture(gun35, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 36 then 
      renderDrawTexture(gun36, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 37 then 
      renderDrawTexture(gun37, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 38 then 
      renderDrawTexture(gun38, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
      renderFontDrawText(fontw, ammo.."-"..ammoInClip, xw - renderGetFontDrawTextLength(fontw, ammo.."-"..ammoInClip) / 2, yw, 0xFFFFFFFF)
    elseif weaponId == 39 then 
      renderDrawTexture(gun39, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 40 then 
      renderDrawTexture(gun40, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 41 then 
      renderDrawTexture(gun41, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 42 then 
      renderDrawTexture(gun42, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 43 then 
      renderDrawTexture(gun43, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 44 then 
      renderDrawTexture(gun44, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 45 then 
      renderDrawTexture(gun45, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 46 then 
      renderDrawTexture(gun46, 1045 + x1, 135 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    end
    
     if isWantedLevelGreater(PLAYER_HANDLE, -1) == true then
      renderDrawTexture(star, 1060 + x1, 250 + y1, 194, 32, 0.0, 0xFFFFFFFF)
     elseif isWantedLevelGreater(PLAYER_HANDLE, 1) == true then
        renderDrawTexture(star1, 1060 + x1, 250 + y1, 194, 32, 0.0, 0xFFFFFFFF)
     elseif isWantedLevelGreater(PLAYER_HANDLE, 2) == true then
          renderDrawTexture(star2, 1060 + x1, 250 + y1, 194, 32, 0.0, 0xFFFFFFFF)
     elseif isWantedLevelGreater(PLAYER_HANDLE, 3) == true then
            renderDrawTexture(star3, 1060 + x1, 250 + y1, 194, 32, 0.0, 0xFFFFFFFF)
     elseif isWantedLevelGreater(PLAYER_HANDLE, 4) == true then
      renderDrawTexture(star4, 1060 + x1, 250 + y1, 194, 32, 0.0, 0xFFFFFFFF)
     elseif isWantedLevelGreater(PLAYER_HANDLE, 5) == true then
     renderDrawTexture(star5, 1060 + x1, 250 + y1, 194, 32, 0.0, 0xFFFFFFFF)
    elseif isWantedLevelGreater(PLAYER_HANDLE, 6) == true then
      renderDrawTexture(star6, 1060 + x1, 250 + y1, 194, 32, 0.0, 0xFFFFFFFF)
     end
  elseif not showHud then
    displayHud(true)
  end
end
end