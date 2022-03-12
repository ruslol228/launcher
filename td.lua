require "lib.moonloader"
local inicfg = require "inicfg"
local directIni = "moonloader\\config\\td.ini"
local mainIni = inicfg.load(nil, directIni)

hg = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\hunger.png')
--shops
acs = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\head_acs_orp_orp.png')
avia = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\head_avia_orp_orp.png')
car = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\head_car_orp_orp.png')
cloath = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\head_cloath_orp_orp.png')
int = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\head_int_orp_orp.png')
moto = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\head_moto_orp_orp.png')
ship = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\head_ship_orp_orp.png')
--other
zz = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\zz_o.png')
headac = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\headacs.png')
menubuyskin = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\menu_buyskin_orp_orp.png')
menubuyb = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\menu_buy_orp_orp.png')
exit = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\exit.png')
rbuy = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\right_buy_orp_orp.png')
lbuy = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\left_buy_orp_orp.png')
rcam = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\cright_buy_orp_orp.png')
lcam = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\cleft_buy_orp_orp.png')
buyveh = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\buycar_orp_orp.png')
job1 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\job1_orp_orp.png')
job2 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\job2_orp_orp.png')
job3 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\job3_orp_orp.png')
job4 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\job4_orp_orp.png')
job5 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\job5_orp_orp.png')
job6 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\job6_orp_orp.png')
capt = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\capture_orp_onlinecapture.png')
function main()
  repeat wait(0) until isSampAvailable()
  
    sampAddChatMessage('{00BFFF}[MOBILE MOD] {ffffff}Совместно с Fraiser и cheeburechek загружен', 0xFFFFFFFF)
    ip = sampGetCurrentServerAddress()
    if ip == "51.83.196.236" then
      floridablue = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\FLORIDA\\florida_blue_orp_onlinerplogo.png')
floridagreen = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\FLORIDA\\florida_green_orp_onlinerplogo.png')
floridapink = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\FLORIDA\\florida_pink_orp_onlinerplogo.png')
floridapurple = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\FLORIDA\\florida_purple_orp_onlinerplogo.png')
floridared = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\FLORIDA\\florida_red_orp_onlinerplogo.png')
floridayellow = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\FLORIDA\\florida_yellow_orp_onlinerplogo.png')
    elseif ip == "51.83.179.217" then
      texasblue = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\TEXAS\\texas_blue_orp_onlinerplogo.png')
texasgreen = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\TEXAS\\texas_green_orp_onlinerplogo.png')
texaspink = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\TEXAS\\texas_pink_orp_onlinerplogo.png')
texaspurple = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\TEXAS\\texas_purple_orp_onlinerplogo.png')
texasred = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\TEXAS\\texas_red_orp_onlinerplogo.png')
texasyellow = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\TEXAS\\texas_yellow_orp_onlinerplogo.png')
    elseif ip == "80.66.71.65" then
      nevadablue = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\NEVADA\\nevada_blue_orp_onlinerplogo.png')
      nevadagreen = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\NEVADA\\nevada_green_orp_onlinerplogo.png')
      nevadapink = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\NEVADA\\nevada_pink_orp_onlinerplogo.png')
      nevadapurple = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\NEVADA\\nevada_purple_orp_onlinerplogo.png')
      nevadared = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\NEVADA\\nevada_red_orp_onlinerplogo.png')
      nevadayellow = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\NEVADA\\nevada_yellow_orp_onlinerplo')
    elseif ip == "80.66.71.64" then
      hawaiiblue = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\HAWAII\\hawaii_blue_orp_onlinerplogo.png')
hawaiigreen = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\HAWAII\\hawaii_green_orp_onlinerplogo.png')
hawaiipink = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\HAWAII\\hawaii_pink_orp_onlinerplogo.png')
hawaiipurple = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\HAWAII\\hawaii_purple_orp_onlinerplogo.png')
hawaiired = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\HAWAII\\hawaii_red_orp_onlinerplogo.png')
hawaiiyellow = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\HAWAII\\hawaii_yellow_orp_onlinerplogo.png')
    elseif ip == "80.66.71.63" then
      indianablue = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\INDIANA\\indiana_blue_orp_onlinerplogo.png')
indianagreen = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\INDIANA\\indiana_green_orp_onlinerplogo.png')
indianapink = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\INDIANA\\indiana_pink_orp_onlinerplogo.png')
indianapurple = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\INDIANA\\indiana_purple_orp_onlinerplogo.png')
indianared = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\INDIANA\\indiana_red_orp_onlinerplogo.png')
indianayellow = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\td\\INDIANA\\indiana_yellow_orp_onlinerplogo.png')
  
    end
  resX, resY = getScreenResolution()
  font = renderCreateFont("Arial", resX / 64, 0)
  while true do
  wait(0)
  resX, resY = getScreenResolution()
  
  x1 = (resX - 1280) / (-1.01587)
  x2 = (resX - 1280) / 2.16949
  y2 = (resY - 720) / 1.67441
  x3 = (resX - 1280) / 1.13274
  y3 = (resY - 720) / 1.2
  y4 = (resY - 720) / 1.28571
  y5 = (resY - 720) / 3.6
  x6 = (resX - 1280) / 1.04918
  y6 = resY - 720
  x7 = (resX - 1280) / 1.2549
  y7 = (resY - 720) / 36
  x8 = (resX - 1280) / 1.223709
  y8 = (resY - 720) / 36
    if sampTextdrawGetString(79) == 'onlineother:zz' then
      renderDrawTexture(zz, 1350, 160, 256, 256, 0.0, 0xFFFFFFFF) 
     end
  
  sampTextdrawDelete(92)
  sampTextdrawDelete(91)
  sampTextdrawDelete(90)
  sampTextdrawDelete(89)
  sampTextdrawDelete(88)
  sampTextdrawDelete(87)
  sampTextdrawDelete(86)
  sampTextdrawDelete(85)
  sampTextdrawDelete(84)
  sampTextdrawDelete(83)
  sampTextdrawDelete(82)
  sampTextdrawDelete(81)
  sampTextdrawDelete(80)
  sampTextdrawDelete(2091)
  if sampTextdrawIsExists(2093) then
  renderDrawTexture(hg, 1433, -70, 256, 256, 0.0, 0xFFFFFFFF)

  end
  if ip == "51.83.196.236" then
    renderDrawTexture(floridapink, 960 + x6, 470 + y6, 400, 400, 0.0, 0xFFFFFFFF)
  elseif ip == "51.83.179.217" then
    renderDrawTexture(texaspurple, 960 + x6, 470 + y6, 400, 400, 0.0, 0xFFFFFFFF) 
  elseif ip == "80.66.71.65" then
    renderDrawTexture(nevadapurple, 960 + x6, 470 + y6, 400, 400, 0.0, 0xFFFFFFFF)
  elseif ip == "80.66.71.63" then
    renderDrawTexture(indianapurple, 960 + x6, 470 + y6, 400, 400, 0.0, 0xFFFFFFFF)
  elseif ip == "80.66.71.64" then
    renderDrawTexture(hawaiipurple, 960 + x6, 470 + y6, 400, 400, 0.0, 0xFFFFFFFF)
  end

 
  
 
  if sampTextdrawGetString(2148) == 'orp:head_car_orp' then
   
    renderDrawTexture(car, 0, 0, resX, resY / 8.4375, 0.0, 0xFFFFFFFF) 
    renderDrawTexture(buyveh, 0, 0, resX, resY, 0.0, 0xFFFFFFFF)
    renderDrawTexture(menubuyskin, 0, 420 + y2, resX, resY / 2.109375, 0.0, 0xFFFFFFFF)

    mon = sampTextdrawGetString(2149)
    mon2 = sampTextdrawGetString(2164)    
    
    sampTextdrawSetPos(2158, 10000, 1000)

    str1 = sampTextdrawGetString(2159)
    str2 = sampTextdrawGetString(2160)
    mon4 = string.gsub(str1, "_", "", 1):lower()
    mon3 = string.gsub(str2, "_", "", 1)  
    renderFontDrawText(font, mon, 960 + ((resX - 1280)/ 1.306122), 20 + ((resY - 720) / 18), 0xFFFFFFFF )
    renderFontDrawText(font, mon2, 570 + ((resX - 1280) / 2.20689), 570 + ((resY - 720) / 1.2), 0xFFFFFFFF )
    renderFontDrawText(font, mon3, 955 + ((resX - 1280) / 1.347368), 570 + ((resY - 720) / 1.2), 0xFFFFFFFF )
    renderFontDrawText(font, mon4, 383 + ((resX - 1280) / 3.2487309), 570 + ((resY - 720) / 1.2), 0xFFFFFFFF )
    mon5 = sampTextdrawGetString(2158)
    renderFontDrawText(font, mon5, 560 + ((resX - 1280) / 2.13333), 510 + ((resY - 720) / 1.384615), 0xFFFFFFFF )

    sampTextdrawSetPos(2164, 10000, 600)
    sampTextdrawSetPos(2160, 10000, 600)
    sampTextdrawSetPos(2159, 10000, 600)

  elseif sampTextdrawGetString(2148) == 'orp:head_acs_orp' then
    renderDrawTexture(acs, 0, 0, resX, resY / 8.4375, 0.0, 0xFFFFFFFF) 

    renderDrawTexture(menubuyskin, 0, 420 + y2, resX, resY / 2.109375, 0.0, 0xFFFFFFFF)
    mon = sampTextdrawGetString(2149)
    mon2 = sampTextdrawGetString(2158)
    sampTextdrawSetPos(2156, 1000, 1000)
    sampTextdrawSetPos(2158, 1000, 10000)
    renderFontDrawText(font, mon, 960 + ((resX - 1280)/ 1.306122), 20 + ((resY - 720) / 18), 0xFFFFFFFF )
    renderFontDrawText(font, mon2, 570 + ((resX - 1280) / 2.20689), 570 + ((resY - 720) / 1.2), 0xFFFFFFFF )
    
  elseif sampTextdrawGetString(2148) == 'orp:head_cloath_orp' then
    renderDrawTexture(cloath, 0, 0, resX, resY / 8.4375, 0.0, 0xFFFFFFFF)
    renderDrawTexture(menubuyskin, 0, 420 + y2, resX, resY / 2.109375, 0.0, 0xFFFFFFFF)
    mon = sampTextdrawGetString(2149)
    str1 = sampTextdrawGetString(2159)
    mon2 = string.gsub(str1, "_", "")    -- заменить ',' на ' -'
    mon3 = sampTextdrawGetString(2156)
    renderFontDrawText(font, mon3, 570 + ((resX - 1280) / 2.20689), 570 + ((resY - 720) / 1.2), 0xFFFFFFFF )
    sampTextdrawSetPos(2156, 1000, 1000)
    renderFontDrawText(font, mon, 960 + ((resX - 1280)/ 1.306122), 20 + ((resY - 720) / 18), 0xFFFFFFFF )
    renderFontDrawText(font, mon2, 570 + ((resX - 1280) / 2.20689), 570 + ((resY - 720) / 1.2), 0xFFFFFFFF )
  elseif sampTextdrawGetString(2148) == 'orp:head_ship_orp' then
    renderDrawTexture(ship, 0, 0, resX, resY / 8.4375, 0.0, 0xFFFFFFFF)
    renderDrawTexture(menubuyskin, 0, 420 + y2, resX, resY / 2.109375, 0.0, 0xFFFFFFFF)
    mon = sampTextdrawGetString(2149)
    mon2 = sampTextdrawGetString(2161)
    sampTextdrawSetPos(2161, 1000, 1000)
    renderFontDrawText(font, mon, 960 + ((resX - 1280)/ 1.306122), 20 + ((resY - 720) / 18), 0xFFFFFFFF )
    renderFontDrawText(font, mon2, 570 + ((resX - 1280) / 2.20689), 570 + ((resY - 720) / 1.2), 0xFFFFFFFF )
elseif sampTextdrawGetString(2148) == 'orp:head_int_orp' then
  renderDrawTexture(int, 0, 0, resX, resY / 8.4375, 0.0, 0xFFFFFFFF)
  renderDrawTexture(menubuyskin, 0, 420 + y2, resX, resY / 2.109375, 0.0, 0xFFFFFFFF)
  mon = sampTextdrawGetString(2149)
  mon2 = sampTextdrawGetString(2156)
  sampTextdrawSetPos(2156, 1000, 1000)
  renderFontDrawText(font, mon, 960 + ((resX - 1280)/ 1.306122), 20 + ((resY - 720) / 18), 0xFFFFFFFF )
  renderFontDrawText(font, mon2, 570 + ((resX - 1280) / 2.20689), 570 + ((resY - 720) / 1.2), 0xFFFFFFFF )
elseif sampTextdrawGetString(2148) == 'orp:head_avia_orp' then
  renderDrawTexture(menubuyskin, 0, 420 + y2, resX, resY / 2.109375, 0.0, 0xFFFFFFFF)
  renderDrawTexture(avia, 0, 0, resX, resY / 8.4375, 0.0, 0xFFFFFFFF)
  renderDrawTexture(menubuyb, 0, 0, resX, resY, 0.0, 0xFFFFFFFF)
  mon = sampTextdrawGetString(2149)
  mon2 = sampTextdrawGetString(2161)
  mon3 = sampTextdrawGetString(2158)
  renderFontDrawText(font, mon3, 570 + ((resX - 1280) / 2.13333), 510 + ((resY - 720) / 1.384615), 0xFFFFFFFF )
  sampTextdrawSetPos(2161, 1000, 1000)
  sampTextdrawSetPos(2158, 1000, 10000)
  renderFontDrawText(font, mon, 960 + ((resX - 1280)/ 1.306122), 20 + ((resY - 720) / 18), 0xFFFFFFFF )
  renderFontDrawText(font, mon2, 570 + ((resX - 1280) / 2.20689), 570 + ((resY - 720) / 1.2), 0xFFFFFFFF )

elseif sampTextdrawGetString(2148) == 'orp:head_moto_orp' then
  
  renderDrawTexture(menubuyb, 0, 0, resX, resY, 0.0, 0xFFFFFFFF)
  renderDrawTexture(menubuyskin, 0, 420 + y2, resX, resY / 2.109375, 0.0, 0xFFFFFFFF)
  renderDrawTexture(moto, 0, 0, resX, resY / 8.4375, 0.0, 0xFFFFFFFF)
  mon = sampTextdrawGetString(2149)
  mon3 = sampTextdrawGetString(2158)
  renderFontDrawText(font, mon3, 570 + ((resX - 1280) / 2.13333), 510 + ((resY - 720) / 1.384615), 0xFFFFFFFF )
  mon2 = sampTextdrawGetString(2161)
  sampTextdrawSetPos(2161, 1000, 1000)
  sampTextdrawSetPos(2158, 10000, 1000)
  renderFontDrawText(font, mon, 960 + ((resX - 1280)/ 1.306122), 20 + ((resY - 720) / 18), 0xFFFFFFFF )
  renderFontDrawText(font, mon2, 570 + ((resX - 1280) / 2.20689), 570 + ((resY - 720) / 1.2), 0xFFFFFFFF )


    elseif sampTextdrawGetString(2148) == 'orp:job1_orp' then
      renderDrawTexture(job1, -40, 135 + ((resY - 720) / 1.614349), 512, 512, 0.0, 0xFFFFFFFF)
      sampTextdrawSetPos(2149, 100 + ((resX - 1280) / (-21.3333)), 270)
    elseif sampTextdrawGetString(2148) == 'orp:job2_orp' then
      renderDrawTexture(job2, -40, 135 + ((resY - 720) / 1.614349), 512, 512, 0.0, 0xFFFFFFFF)
      sampTextdrawSetPos(2149, 100 + ((resX - 1280) / (-21.3333)), 270)
    elseif sampTextdrawGetString(2148) == 'orp:job3_orp' then
      renderDrawTexture(job3, -40, 135 + ((resY - 720) / 1.614349), 512, 512, 0.0, 0xFFFFFFFF)
      sampTextdrawSetPos(2149, 100 + ((resX - 1280) / (-21.3333)), 270)
    elseif sampTextdrawGetString(2148) == 'orp:job4_orp' then
      renderDrawTexture(job4, -40, 135 + ((resY - 720) / 1.614349), 512, 512, 0.0, 0xFFFFFFFF)
      sampTextdrawSetPos(2149, 100 + ((resX - 1280) / (-21.3333)), 270)
    elseif sampTextdrawGetString(2148) == 'orp:job5_orp' then
      renderDrawTexture(job5, -40, 135 + ((resY - 720) / 1.614349), 512, 512, 0.0, 0xFFFFFFFF)
      sampTextdrawSetPos(2149, 100 + ((resX - 1280) / (-21.3333)), 270)
    elseif sampTextdrawGetString(2148) == 'orp:job6_orp' then
      renderDrawTexture(job6, -40, 135 + ((resY - 720) / 1.614349), 512, 512, 0.0, 0xFFFFFFFF)
      sampTextdrawSetPos(2149, 100 + ((resX - 1280) / (-21.3333)), 270)
    
      
    end

    if sampTextdrawIsExists(2153) then
      renderDrawTexture(rbuy, 1085 + x3, 500 + y3, 128, 128, 0.0, 0xFFFFFFFF)
    
    end
    if sampTextdrawIsExists(2152) then
      renderDrawTexture(lbuy, 25, 520 + y4, 128, 128, 0.0, 0xFFFFFFFF)
    
    end
    if sampTextdrawIsExists(2154) and sampTextdrawGetString(2154) == 'orp:cright_buy_orp' then
      renderDrawTexture(rcam, -20, 200 + y5, 256, 128, 0.0, 0xFFFFFFFF)
    
    end
    if sampTextdrawIsExists(2155) and sampTextdrawGetString(2155) == 'orp:cleft_buy_orp'then
      renderDrawTexture(lcam, -20, 300 + y5, 256, 128, 0.0, 0xFFFFFFFF)
    
    end
    
    
   
    
    
    
   end
  end
 