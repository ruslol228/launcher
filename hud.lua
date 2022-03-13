require "lib.moonloader"

local font = renderCreateFont("TT Norms Regular", 20, 9)



--пропуск

function main()
  if not isSampLoaded() or not isSampfuncsLoaded() then return end
  while not isSampAvailable() do wait(100) end
 
  repeat
  	wait(0)
  until sampTextdrawIsExists(2093) or sampTextdrawIsExists(2092)

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

empty_bar = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_stats_bar.png')

hp_bar = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_stats_bar_health.png')
hg_bar = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_stats_bar_satiety.png')
arm_bar = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\hud\\hud_stats_bar_armour.png')

  
  while true do
    
  
  wait(0)
  money = getPlayerMoney(PLAYER_HANDLE)
 

  resX, resY = getScreenResolution()

  x1 = ((resX - 1280) / 0.984615) 
  y1 = (resX - 1280) / 32
  x2 = (resX - 1280)
  x3 = ((resX - 1280) / 0.992248)
  x4 = ((resX - 1280) / 1.007874)
  
  renderDrawTexture(bg, 850 + x1, 50 + y1, 512, 128, 0.0, 0xFFFFFFFF)
  renderDrawTexture(mbg, 880 + x2, 10 + y1, 512, 64, 0.0, 0xFFFFFFFF)
  renderDrawTexture(wbg, 1025 + x3, 140 + y1, 256, 128, 0.0, 0xFFFFFFFF)

  renderFontDrawText(font, "{04c904}${FFFFFF}"..money, 1100 + x1, 25 + y1, 0xFFFFFFFF)


  renderDrawTexture(hunger, 1035 + x4, 65 + y1, 32, 32, 0.0, 0xFFFFFFFF)
  renderDrawTexture(hp, 1035 + x4, 90 + y1, 32, 32, 0.0, 0xFFFFFFFF)
  renderDrawTexture(arm, 1035 + x4, 115 + y1, 32, 32, 0.0, 0xFFFFFFFF)


  renderDrawTexture(empty_bar, 1075 + x4, 77 + y1, 128, 8, 0.0, 0xFFFFFFFF)
  renderDrawTexture(empty_bar, 1075 + x4, 102 + y1, 128, 8, 0.0, 0xFFFFFFFF)
  renderDrawTexture(empty_bar, 1075 + x4, 127 + y1, 128, 8, 0.0, 0xFFFFFFFF)


  if sampTextdrawIsExists(2093) and tonumber(sampTextdrawGetString(2093):match("%d+")) ~= 0 then
	renderDrawTexture(hg_bar, 1075 + x4, 77 + y1, (128 / (100 / tonumber(sampTextdrawGetString(2093):match("%d+")))), 8, 0.0, 0xFFFFFFFF)
  elseif sampTextdrawIsExists(2092) and tonumber(sampTextdrawGetString(2092):match("%d+")) ~= 0 then
	renderDrawTexture(hg_bar, 1075 + x4, 77 + y1, (128 / (100 / tonumber(sampTextdrawGetString(2092):match("%d+")))), 8, 0.0, 0xFFFFFFFF)
  end
  

  if getCharHealth(PLAYER_PED) ~= 0 then renderDrawTexture(hp_bar, 1075 + x4, 102 + y1, (128 / (100 / getCharHealth(PLAYER_PED))), 8, 0.0, 0xFFFFFFFF) end

  if getCharArmour(PLAYER_PED) ~= 0 then renderDrawTexture(arm_bar, 1075 + x4, 127 + y1, (128 / (100 / getCharArmour(PLAYER_PED))), 8, 0.0, 0xFFFFFFFF) end






    weaponId =  getCurrentCharWeapon(PLAYER_PED)
    if weaponId == 0 then
      renderDrawTexture(gun0, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 1 then 
      renderDrawTexture(gun1, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 2 then 
      renderDrawTexture(gun2, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 3 then 
      renderDrawTexture(gun3, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 4 then 
      renderDrawTexture(gun4, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 5 then 
      renderDrawTexture(gun5, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 6 then 
      renderDrawTexture(gun6, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 7 then 
      renderDrawTexture(gun7, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 8 then 
      renderDrawTexture(gun8, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 9 then 
      renderDrawTexture(gun9, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 10 then 
      renderDrawTexture(gun10, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 11 then 
      renderDrawTexture(gun11, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 12 then 
      renderDrawTexture(gun12, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 13 then 
      renderDrawTexture(gun13, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 14 then 
      renderDrawTexture(gun14, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 15 then 
      renderDrawTexture(gun15, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 16 then 
      renderDrawTexture(gun16, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 17 then 
      renderDrawTexture(gun17, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 18 then 
      renderDrawTexture(gun18, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 22 then 
      renderDrawTexture(gun22, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 23 then 
      renderDrawTexture(gun23, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 24 then 
      renderDrawTexture(gun24, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 25 then 
      renderDrawTexture(gun25, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 26 then 
      renderDrawTexture(gun26, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 27 then 
      renderDrawTexture(gun27, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 28 then 
      renderDrawTexture(gun28, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 29 then 
      renderDrawTexture(gun29, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 30 then 
      renderDrawTexture(gun30, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 31 then 
      renderDrawTexture(gun31, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 32 then 
      renderDrawTexture(gun32, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 33 then 
      renderDrawTexture(gun33, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 34 then 
      renderDrawTexture(gun34, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 35 then 
      renderDrawTexture(gun35, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 36 then 
      renderDrawTexture(gun36, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 37 then 
      renderDrawTexture(gun37, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 38 then 
      renderDrawTexture(gun38, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 39 then 
      renderDrawTexture(gun39, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 40 then 
      renderDrawTexture(gun40, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 41 then 
      renderDrawTexture(gun41, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 42 then 
      renderDrawTexture(gun42, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 43 then 
      renderDrawTexture(gun43, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 44 then 
      renderDrawTexture(gun44, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 45 then 
      renderDrawTexture(gun45, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    elseif weaponId == 46 then 
      renderDrawTexture(gun46, 1050 + x1, 140 + y1, 128, 128, 0.0, 0xFFFFFFFF)
    end
    
    
   
  
  end
end
