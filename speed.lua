require "lib.moonloader"
local keys = require "vkeys"
local imgui = require "imgui"
local encoding = require "encoding"
encoding.default = 'CP1251'
u8 = encoding.UTF8

main_window_state = imgui.ImBool(false)


local font = renderCreateFont("Arial", 40, 1)
local font2 = renderCreateFont("Arial", 24, 1)
function main()
    repeat wait(0) until isSampAvailable()
    
    bg = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\bg_speed_orp_onlinespeed.png')
rpov = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\nright_speed_orp_onlinespeed.png')
lpov = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\nleft_speed_orp_onlinespeed.png')
avar = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\navar_speed_orp_onlinespeed.png')
benz = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\f0_speed_orp_onlinespeed.png')
benz1 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\f1_speed_orp_onlinespeed.png')
benz2 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\f2_speed_orp_onlinespeed.png')
benz3 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\f3_speed_orp_onlinespeed.png')
benz4 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\f4_speed_orp_onlinespeed.png')
avar = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\navar_speed_orp_onlinespeed.png')
hpbar  = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\h0_speed_orp_onlinespeed.png')
hpbar1  = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\h1_speed_orp_onlinespeed.png')
hpbar2  = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\h2_speed_orp_onlinespeed.png')
hpbar3  = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\h3_speed_orp_onlinespeed.png')
hpbar4  = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\h4_speed_orp_onlinespeed.png')
speed0 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\s0_speed_orp_onlinespeed.png')
speed1 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\s1_speed_orp_onlinespeed.png')
speed2 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\s2_speed_orp_onlinespeed.png')
speed3 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\s3_speed_orp_onlinespeed.png')
speed4 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\s4_speed_orp_onlinespeed.png')
speed5 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\s5_speed_orp_onlinespeed.png')
speed6 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\s6_speed_orp_onlinespeed.png')
speed7 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\s7_speed_orp_onlinespeed.png')
speed8 = renderLoadTextureFromFile(getGameDirectory() .. '\\moonloader\\config\\speed\\s8_speed_orp_onlinespeed.png')

    while true do
        wait(0)

        resX, resY = getScreenResolution()
        x = (resX - 1280) / 2.0
        y = (resY - 720) / 1.02
	s = 1
        if isCharInAnyCar(PLAYER_PED) then
            car = storeCarCharIsInNoSave(PLAYER_PED)
            hpcar = getCarHealth(car)
            
           
          
           
            renderDrawTexture(bg, 420 + x, 300 + y , 512 / s, 512 / s, 0.0, 0xFFFFFFFF)
	    renderDrawTexture(rpov, 860 + x , 620 + y, 64 / s, 64 / s, 0.0, 0xFFFFFFFF)
            renderDrawTexture(lpov, 700 + x , 620 + y, 64 / s, 64 / s, 0.0, 0xFFFFFFFF)
            renderDrawTexture(avar,  780 + x , 620 + y , 64 / s, 64 / s, 0.0, 0xFFFFFFFF)
            renderDrawTexture(speed0, 420 + x , 300 + y, 512 / s, 512 / s, 0.0, 0xFFFFFFFF)
            car = storeCarCharIsInNoSave(PLAYER_PED)
            test1 = getCarSpeed(car)
            test2 = 3.5
            test3= test1 * test2
            local carSpeed = math.ceil(test3)
            if hpcar == 1000 then
            	renderDrawTexture(hpbar4, 420 + x, 520 + y, 256 / s, 256 / s, 0.0, 0xFFFFFFFF)
            
	    elseif hpcar >= 750 then
                renderDrawTexture(hpbar3, 420 + x, 520 + y, 256 / s, 256 / s, 0.0, 0xFFFFFFFF)
            elseif hpcar >= 500 then
                renderDrawTexture(hpbar2, 420 + x, 520 + y, 256 / s, 256 / s, 0.0, 0xFFFFFFFF)
            elseif hpcar >= 250 then
                renderDrawTexture(hpbar1, 420 + x, 520 + y, 256 / s, 256 / s, 0.0, 0xFFFFFFFF)
            elseif hpcar == 0 then
                renderDrawTexture(hpbar, 420 + x, 520 + y, 256 / s, 256 / s, 0.0, 0xFFFFFFFF)
            end

	text = "  0"
	if carSpeed == 0 then
            renderDrawTexture(speed0, 420 + x, 300 + y,512 / s, 512 / s, 0.0, 0xFFFFFFFF)
	elseif carSpeed < 25 then
	    text = " " .. carSpeed
            renderDrawTexture(speed1, 420 + x ,300 + y ,512 / s, 512 / s, 0.0, 0xFFFFFFFF)
        elseif carSpeed < 50 then
            renderDrawTexture(speed2, 420 + x,300 + y ,512 / s, 512 / s, 0.0, 0xFFFFFFFF)
        elseif carSpeed < 80 then
            renderDrawTexture(speed3, 420 + x ,300 + y ,512 / s, 512 / s, 0.0, 0xFFFFFFFF)            
        elseif carSpeed < 100 then
            renderDrawTexture(speed4, 420 + x ,300 + y ,512 / s, 512 / s, 0.0, 0xFFFFFFFF)
        elseif carSpeed < 125 then
            renderDrawTexture(speed5, 420 + x,300 + y ,512 / s, 512 / s, 0.0, 0xFFFFFFFF)
        elseif carSpeed < 150 then
            renderDrawTexture(speed6, 420 + x ,300 + y ,512 / s, 512 / s, 0.0, 0xFFFFFFFF)
        elseif carSpeed < 175 then
                renderDrawTexture(speed7, 420 + x ,300 + y ,512 / s, 512 / s, 0.0, 0xFFFFFFFF)
        elseif carSpeed < 400 then
            renderDrawTexture(speed8, 420 + x ,300 + y,512 / s, 512 / s, 0.0, 0xFFFFFFFF)
        
        end


       
	
       
        --next funct
       --next funct

       if tonumber(string.match(sampTextdrawGetString(2057), "%d+")) == nil then
       		repeat wait(0) until tonumber(string.match(sampTextdrawGetString(2057), "%d+"))
	        _benz = tonumber(string.match(sampTextdrawGetString(2057), "%d+"))

       		if _benz > 75 and _benz < 101 then
        		renderDrawTexture(benz4, 640 + x ,385 + y ,256 / s, 256 / s, 0.0, 0xFFFFFFFF)
       		elseif _benz > 50 and _benz < 76 then
        		renderDrawTexture(benz3, 640 + x,385 + y ,256 / s, 256 / s, 0.0, 0xFFFFFFFF)
       		elseif _benz > 25 and _benz < 51 then
        		renderDrawTexture(benz2, 640 + x ,385 + y, 256 / s, 256 / s, 0.0, 0xFFFFFFFF)
       		elseif _benz < 26 then
        		renderDrawTexture(benz1, 640 + x ,385 + y ,256 / s, 256 / s, 0.0, 0xFFFFFFFF)
       		elseif _benz == 0 then
        		renderDrawTexture(benz, 640 + x ,385 + y ,256 / s, 256 / s, 0.0, 0xFFFFFFFF)
       		end
	else
		_benz = tonumber(string.match(sampTextdrawGetString(2057), "%d+"))

       		if _benz > 75 and _benz < 101 then
        		renderDrawTexture(benz4, 640 + x ,385 + y ,256 / s, 256 / s, 0.0, 0xFFFFFFFF)
       		elseif _benz > 50 and _benz < 76 then
        		renderDrawTexture(benz3, 640 + x,385 + y ,256 / s, 256 / s, 0.0, 0xFFFFFFFF)
       		elseif _benz > 25 and _benz < 51 then
        		renderDrawTexture(benz2, 640 + x ,385 + y, 256 / s, 256 / s, 0.0, 0xFFFFFFFF)
       		elseif _benz < 26 then
        		renderDrawTexture(benz1, 640 + x ,385 + y ,256 / s, 256 / s, 0.0, 0xFFFFFFFF)
       		elseif _benz == 0 then
        		renderDrawTexture(benz, 640 + x ,385 + y ,256 / s, 256 / s, 0.0, 0xFFFFFFFF)
       		end
	end		    

	text = tostring(carSpeed)
	if carSpeed > -1 and carSpeed < 10 then
		renderFontDrawText(font, text, 622 + x, 480 + y, 0xFFFFFFFF )
	elseif carSpeed > 9 and carSpeed < 100 then
		renderFontDrawText(font, text, 605 + x, 480 + y, 0xFFFFFFFF )
	elseif carSpeed > 100 then
		renderFontDrawText(font, text, 585 + x, 480 + y, 0xFFFFFFFF )
	end
	


	

	if sampTextdrawIsExists(2061) then
		text2 = sampTextdrawGetString(2061):match("%d+")
		renderFontDrawText(font2, text2, 636 - (#text2 * 9) + x, 565 + y, 0xFFFFFFFF )
	else
		renderFontDrawText(font2, "0", 627 + x, 565 + y, 0xFFFFFFFF )	
	end

        end
    end
end




