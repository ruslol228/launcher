require "lib.moonloader"
local sampev = require 'lib.samp.events'
local imgui = require "imgui"
local encoding = require "encoding"
encoding.default = 'CP1251'
u8 = encoding.UTF8
local inicfg = require "inicfg"
memory = require "memory"

main_window_state = imgui.ImBool(false)



local all_inv_list = {
	{'Адреналин' ,'adrenaline_inv.png'},
	{'Патроны' ,'ammo_inv.png'},
	{'Among Us на спину' ,'amongus_inv.png'},
	{'' ,'android_inv.png'},
	{'' ,'apple_inv.png'},
	{'Аптечка' ,'apteka_inv.png'},
	{"Костюм 'Арабский шейх'" ,'arabsheikh_inv.png'},
	{'' ,'armour_inv.png'},
	{'Аспирин' ,'aspirin_inv.png'},
	{'рюкзак' ,'backpack_inv.png'},
	{'' ,'back_bag_inv.png'},
	{'Кола на спину' ,'back_cocacola_inv.png'},
	{'Подарок на спину' ,'back_gift_inv.png'},
	{'Щелкунчик на спину' ,'back_nutcracker_inv.png'},
	{'' ,'back_snowman_inv.png'},
	{'Носок на спину' ,'back_sock_inv.png'},
	{'' ,'back_wreath_inv.png'},
	{'' ,'bag2_gucci_inv.png'},
	{'Бананка Louis Vuitton' ,'bag2_lv_inv.png'},
	{'' ,'bag2_supreme_inv.png'},
	{'' ,'bag_guccifake_inv.png'},
	{'' ,'bag_gucci_inv.png'},
	{'Рюкзак Louis Vuitton' ,'bag_lv_inv.png'},
	{'Сумка Supreme' ,'bag_supreme_inv.png'},
	{'Шар на плечо' ,'ballon_inv.png'},
	{'Воздушный шар' ,'balloon_inv.png'},
	{'Бинты' ,'bandages_inv.png'},
	{'Повязка' ,'bandage_inv.png'},
	{'Бандана' ,'bandana_inv.png'},
	{'' ,'baretsky_inv.png'},
	{'Мишка на спине' ,'beer_inv.png'},
	{'Берет' ,'beret_inv.png'},
	{'' ,'bginv2_inv.png'},
	{'' ,'bginv_inv.png'},
	{'Котёл на спину' ,'boiler_back_inv.png'},
	{"Костюм 'Невеста'" ,'bride2_inv.png'},
	{'' ,'bride_inv.png'},
	{'' ,'bukin_inv.png'},
	{'' ,'burger_inv.png'},
	{'' ,'buster_inv.png'},
	{'Конфета на спину' ,'candy_back_inv.png'},
	{'анистра' ,'canister_inv.png'},
	{'кепка' ,'cap_inv.png'},
	{'' ,'cap_russia_inv.png'},
	{'Бензопила на спине' ,'chainsaw_inv.png'},
	{'Часы' ,'clock_inv.png'},
	{'' ,'clown_inv.png'},
	{'' ,'cosmonaut_inv.png'},
	{'Крест на спину' ,'cross_back_inv.png'},
	{"Костюм 'Влад А4'" ,'c_a4_inv.png'},
	{'Маска Печенья' ,'c_cookie_inv.png'},
	{'' ,'c_detsad_inv.png'},
	{'Костюм Дракулы' ,'c_drakula_inv.png'},
	{'' ,'c_elf_inv.png'},
	{'' ,'c_geyb_inv.png'},
	{'Костюм Призрака' ,'c_ghost_inv.png'},
	{"Костюм 'Глент'",'c_glent_inv.png'},
	{'' ,'c_grinch_inv.png'},
	{"Костюм 'Литвин'" ,'c_litvin_inv.png'},
	{'Костюм Медсестрички' ,'c_medsister_inv.png'},
	{'Костюм Миссис Клаус' ,'c_missclaus_inv.png'},
	{'Костюм Фигуристки' ,'c_missfigur_inv.png'},
	{'' ,'c_montana_inv.png'},
	{"Костюм 'Моргенштерн'", 'c_morgenshtern_inv.png'},
	{'Костюм Фигуриста' ,'c_mrfigur_inv.png'},
	{"Костюм 'Пинкман'" ,'c_pinkman_inv.png'},
	{'' ,'c_pirat_inv.png'},
	{'' ,'c_podrostok_inv.png'},
	{'' ,'c_pumpkin_inv.png'},
	{'Корабль на плечо', 'sship_staricon.png'},
	{"Костюм 'Робот'",'c_robot_inv.png'},
	{'Костюм Санта Клауса' ,'c_santaclaus_inv.png'},
	{'' ,'c_school_inv.png'},
	{'Костюм Шрека' ,'c_shrek_inv.png'},
	{'Костюм Снегурочки' ,'c_snowmaiden_inv.png'},
	{'Костюм Снеговика' ,'c_snowman_inv.png'},
	{'' ,'c_tikovka_inv.png'},
	{'Костюм Зомби' ,'c_zombi_inv.png'},
	{'' ,'darthvader_inv.png'},
	{'' ,'diamondpickhand_inv.png'},
	{'Алмазная кирка на спине' ,'diamondpick_inv.png'},
	{'Алмазный меч в руку' ,'diamondswordhand_inv.png'},
	{'Алмазный меч на спине' ,'diamondsword_inv.png'},
	{'Справочник' ,'directory_inv.png'},
	{'' ,'doncorleone_inv.png'},
	{'' ,'drill_inv.png'},
	{'Наркотики' ,'drugs_inv.png'},
	{'Динамит на спине' ,'dynamite_inv.png'},
	{'' ,'elonmusk_inv.png'},
	{'' ,'elvis_inv.png'},
	{'Очки' ,'glasses_inv.png'},
	{'Золотое яйцо на спину' ,'goldegg_inv.png'},
	{'' ,'goldpickhand_inv.png'},
	{'Золотая кирка на спине' ,'goldpick_inv.png'},
	{'Золотая лопата' ,'goldshovel_inv.png'},
	{'Золотой меч в руку' ,'goldswordhand_inv.png'},
	{'' ,'goldsword_inv.png'},
	{'' ,'groom_inv.png'},
	{'' ,'guitar_black_inv.png'},
	{'Гитара на спине' ,'guitar_inv.png'},
	{'Маска Гая Фокса' ,'guyfawkes_inv.png'},
	{'' ,'hand_candy_inv.png'},
	{'Шапка' ,'hat2_inv.png'},
	{'Шляпа' ,'hat_inv.png'},
	{'наушники' ,'headphones_inv.png'},
	{'Сердце на спину' ,'heart_inv.png'},
	{'' ,'heisenberg_inv.png'},
	{'Каска' ,'helmet_inv.png'},
	{'' ,'inv2_inv.png'},
	{'' ,'inv_inv.png'},
	{'' ,'jdun_inv.png'},
	{'' ,'johnwick_inv.png'},
	{'' ,'joker_inv.png'},
	{'' ,'keys_inv.png'},
	{'' ,'kizaru_inv.png'},
	{'' ,'lego_inv.png'},
	{'Спасательный круг' ,'lifebuoy_inv.png'},
	{"Костюм 'Lil Pump'" ,'lilpump_inv.png'},
	{'' ,'loto_inv.png'},
	{'' ,'map_pirat_inv.png'},
	{'' ,'marshmello_inv.png'},
	{'' ,'mask_barbarian_inv.png'},
	{'' ,'mask_black_inv.png'},
	{'' ,'mask_colt_inv.png'},
	{'' ,'mask_creeper_inv.png'},
	{'Маска оленя' ,'mask_deer_inv.png'},
	{'Маска Дьявола' ,'mask_diavol_inv.png'},
	{'Маска Эльфа' ,'mask_elf_inv.png'},
	{'' ,'mask_el_primo_inv.png'},
	{'' ,'mask_freddy_inv.png'},
	{'Маска Лягушки' ,'mask_frog_inv.png'},
	{'Маска Лошади' ,'mask_horse_inv.png'},
	{'Маска Леона' ,'mask_leon_inv.png'},
	{'' ,'mask_llama_inv.png'},
	{'' ,'mask_lv_inv.png'},
	{'' ,'mask_nita_inv.png'},
	{'' ,'mask_pig_inv.png'},
	{'' ,'mask_poko_inv.png'},
	{'Маска Тыквы' ,'mask_pumpkin_inv.png'},
	{'Маска Санты' ,'mask_santaclaus_inv.png'},
	{'' ,'mask_shelli_inv.png'},
	{'' ,'mask_skeleton_inv.png'},
	{'Маска Снеговика' ,'mask_snowman_inv.png'},
	{'Маска Спайдермена' ,'mask_spiderman_inv.png'},
	{'' ,'mask_spike_inv.png'},
	{'Маска Стив' ,'mask_steve_inv.png'},
	{'Маска Томат' ,'mask_tomato_inv.png'},
	{'' ,'mask_zombi_inv.png'},
	{'' ,'masterkey_inv.png'},
	{'Материалы' ,'materials_inv.png'},
	{'' ,'material_inv.png'},
	{'' ,'metalshovel_inv.png'},
	{'Миниган на спине' ,'minigun_inv.png'},
	{'Морфий' ,'morfiy_inv.png'},
	{'' ,'morgenshtern_inv.png'},
	{'Нимб' ,'nimbus_inv.png'},
	{'НЛО на плечо' ,'nlo_up_inv.png'},
	{'Новогодняя шапка' ,'nyhat_inv.png'},
	{'' ,'olenina_inv.png'},
	{'панама' ,'panama_inv.png'},
	{'Попугай на плечо' ,'parrot_inv.png'},
	{'Смартфон' ,'phone_inv.png'},
	{'Пластиковая лопата' ,'plasticshovel_inv.png'},
	{'Полицейский на спину' ,'police_back_inv.png'},
	{"Костюм 'Священник'" ,'priest_inv.png'},
	{'' ,'pshield_inv.png'},
	{'' ,'putin_inv.png'},
	{'' ,'randomgift_inv.png'},
	{'RC Bucket' ,'rcbucket_inv.png'},
	{'RC Car' ,'rccar_inv.png'},
	{'RC Tank' ,'rctank_inv.png'},
	{'RC Гроб' ,'rc_grob_1_inv.png'},
	{'Рем. комплект' ,'repair_inv.png'},
	{"Костюм 'Рикардо Милос'" ,'ricardomillos_inv.png'},
	{'Обручальные кольца' ,'rings_inv.png'},
	{'Веревка' ,'rope_inv.png'},
	{'Мешок с деньгами', 'sbag_staricon.png'},
	{'Петух на плечо', 'scock_staricon.png'},
	{'', 'skey_staricon.png'},
	{"Костюм 'Крик'" ,'scream_inv.png'},
	{'' ,'screwdriver_inv.png'},
	{'Семена' ,'seeds_inv.png'},
	{'' ,'sell_newyera_or_newyear_or.png'},
	{'Шина' ,'shina_inv.png'},
	{'' ,'sh_christree_inv.png'},
	{'Печенье на плечо' ,'sh_cookie_inv.png'},
	{'' ,'simcard_inv.png'},
	{'Скейтборд' ,'skeit_inv.png'},
	{'Маска череп' ,'skull_inv.png'},
	{'' ,'slota_inv.png'},
	{'' ,'slotk_inv.png'},
	{'' ,'slot_inv.png'},
	{'Снежинка над головой', 'snowflake_inv.png'},
	{'Маска совы' ,'sova_inv.png'},
	{'Морская звезда' ,'starfish_inv.png'},
	{'' ,'str_inv.png'},
	{"Рюкзак 'Supreme'" ,'supreme_inv.png'},
	{'' ,'tonystark_inv.png'},
	{'Факел в руке' ,'torch_hand_inv.png'},
	{'' ,'trash_inv.png'},
	{'Дерево за спиной' ,'tree_inv.png'},
	{'' ,'trump_inv.png'},
	{'' ,'white_inv.png'},
	{'Парик' ,'wig_inv.png'},
	{'Шляпа волшебника' ,'wizardhat_inv.png'},
	{'Маска' ,'mask_inv.png'}
}







function theme()
    imgui.SwitchContext()
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    local ImVec4 = imgui.ImVec4
    local ImVec2 = imgui.ImVec2

    style.WindowPadding = imgui.ImVec2(8, 8)
    style.WindowRounding = 6
    style.ChildWindowRounding = 15
    style.FramePadding = imgui.ImVec2(5, 3)
    style.FrameRounding = 3.0
    style.ItemSpacing = imgui.ImVec2(5, 4)
    style.ItemInnerSpacing = imgui.ImVec2(4, 4)
    style.IndentSpacing = 21
    style.ScrollbarSize = 10.0
    style.ScrollbarRounding = 13
    style.GrabMinSize = 8
    style.GrabRounding = 1
    style.WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)


    colors[clr.Text]                 = ImVec4(1, 1, 1, 1)
    colors[clr.TextDisabled]         = ImVec4(0.36, 0.42, 0.47, 1.00)
    colors[clr.WindowBg]             = ImVec4(0.11, 0.15, 0.17, 0.00)
    colors[clr.ChildWindowBg]        = ImVec4(0.03, 0.18, 0.24, 1.00)
    colors[clr.PopupBg]              = ImVec4(0, 0.21, 0.36, 1)
    colors[clr.Border]               = ImVec4(0.43, 0.43, 0.50, 0.50)
    colors[clr.BorderShadow]         = ImVec4(0.00, 0.00, 0.00, 0.00)
    colors[clr.FrameBg]              = ImVec4(0.20, 0.25, 0.29, 1.00)
    colors[clr.FrameBgHovered]       = ImVec4(0.12, 0.20, 0.28, 1.00)
    colors[clr.FrameBgActive]        = ImVec4(0.09, 0.12, 0.14, 1.00)
    colors[clr.TitleBg]              = ImVec4(0.09, 0.12, 0.14, 0.65)
    colors[clr.TitleBgActive]        = ImVec4(0.11, 0.30, 0.59, 1.00)
    colors[clr.TitleBgCollapsed]     = ImVec4(0.00, 0.00, 0.00, 0.51)
    colors[clr.MenuBarBg]            = ImVec4(0.15, 0.18, 0.22, 1.00)
    colors[clr.ScrollbarBg]          = ImVec4(0.02, 0.02, 0.02, 0.39)
    colors[clr.ScrollbarGrab]        = ImVec4(0.20, 0.25, 0.29, 1.00)
    colors[clr.ScrollbarGrabHovered] = ImVec4(0.18, 0.22, 0.25, 1.00)
    colors[clr.ScrollbarGrabActive]  = ImVec4(0.09, 0.21, 0.31, 1.00)
    colors[clr.ComboBg]              = ImVec4(0.20, 0.25, 0.29, 1.00)
    colors[clr.CheckMark]            = ImVec4(0.28, 0.56, 1.00, 1.00)
    colors[clr.SliderGrab]           = ImVec4(0.28, 0.56, 1.00, 1.00)
    colors[clr.SliderGrabActive]     = ImVec4(0.37, 0.61, 1.00, 1.00)
    colors[clr.Button]               = ImVec4(0.08, 0.33, 0.55, 1.00)
    colors[clr.ButtonHovered]        = ImVec4(0.28, 0.56, 1.00, 1.00)
    colors[clr.ButtonActive]         = ImVec4(0.06, 0.53, 0.98, 1.00)
    colors[clr.Header]               = ImVec4(0.20, 0.25, 0.29, 0.55)
    colors[clr.HeaderHovered]        = ImVec4(0.26, 0.59, 0.98, 0.80)
    colors[clr.HeaderActive]         = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.Separator]            = ImVec4(0.50, 0.50, 0.50, 1.00)
    colors[clr.SeparatorHovered]     = ImVec4(0.60, 0.60, 0.70, 1.00)
    colors[clr.SeparatorActive]      = ImVec4(0.70, 0.70, 0.90, 1.00)
    colors[clr.ResizeGrip]           = ImVec4(0.26, 0.59, 0.98, 0.25)
    colors[clr.ResizeGripHovered]    = ImVec4(0.26, 0.59, 0.98, 0.67)
    colors[clr.ResizeGripActive]     = ImVec4(0.06, 0.05, 0.07, 1.00)
    colors[clr.CloseButton]          = ImVec4(0.40, 0.39, 0.38, 0.16)
    colors[clr.CloseButtonHovered]   = ImVec4(0.40, 0.39, 0.38, 0.39)
    colors[clr.CloseButtonActive]    = ImVec4(0.40, 0.39, 0.38, 1.00)
    colors[clr.PlotLines]            = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered]     = ImVec4(1.00, 0.43, 0.35, 1.00)
    colors[clr.PlotHistogram]        = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00)
    colors[clr.TextSelectedBg]       = ImVec4(0.25, 1.00, 0.00, 0.43)
    colors[clr.ModalWindowDarkening] = ImVec4(1.00, 0.98, 0.95, 0.73)
end
theme()



local exit_png
local slot
local right_inv
local left_inv
local skin_inv
local slota
local slotk
local health_inv
local hunger_inv

original = 0

function main()

	while not isSampAvailable() do wait(100) end
	
	
	repeat
      		wait(0)
   	until sampIsLocalPlayerSpawned()

	if not doesFileExist(getWorkingDirectory() .. "\\config\\skin.ini")then
			f = io.open(getWorkingDirectory() .. "\\config\\skin.ini", 'a')
			f:write("[skin]\n")
			f:write("id=0\n")
			
			f:write("[costume]\n")
			f:write("name=none")
			f:close()
	end

	mainIni = inicfg.load(nil, getWorkingDirectory() .. "\\config\\skin.ini")
	
	original = memory.getuint8(sampGetBase() + 0x6B240, true)

	costume_inv = nil		
	if mainIni.costume.name ~= "none" then
		for i = 1, #all_inv_list do
			didFind = false
			if mainIni.costume.name:find(all_inv_list[i][1]) and all_inv_list[i][1] ~= '' then
				didFind = true
				costume_inv = imgui.CreateTextureFromFile("moonloader/config/inv/" .. all_inv_list[i][2])
				break
			end
			if not didFind then
				costume_inv = imgui.CreateTextureFromFile("moonloader/config/inv/unknown_inv.png")
			end
		end
	end
	sizeCostume = 64
	
	
	if mainIni ~= nil and mainIni.skin.id ~= getCharModel(PLAYER_PED) and getCharModel(PLAYER_PED) ~= 0 then
		print("ID скина не соответсвует, обновление skin.ini. Нынешний ID - " .. getCharModel(PLAYER_PED))
		mainIni.skin.id = tostring(getCharModel(PLAYER_PED))
		inicfg.save(mainIni, getWorkingDirectory() .. "\\config\\skin.ini")
	end
	

	if mainIni ~= nil then
		downloadUrlToFile("https://samp-servers.ru/images/samp_skins/".. mainIni.skin.id ..".png", getWorkingDirectory() .. "\\config\\skin.png")		
	end
	

	imgui.Process = false	

	exit_png = imgui.CreateTextureFromFile("moonloader/config/inv/exit.png")
	slot = imgui.CreateTextureFromFile("moonloader/config/inv/slot_inv.png")
	right_inv = imgui.CreateTextureFromFile("moonloader/config/inv/right_inv.png")
	left_inv = imgui.CreateTextureFromFile("moonloader/config/inv/left_inv.png")
	slota = imgui.CreateTextureFromFile("moonloader/config/inv/slota_inv.png")
	slotk = imgui.CreateTextureFromFile("moonloader/config/inv/slotk_inv.png")
	health_inv = imgui.CreateTextureFromFile("moonloader/config/inv/health_icon_inv.png")
	hunger_inv = imgui.CreateTextureFromFile("moonloader/config/inv/hunger_icon_inv.png")
	
	list = {}
	sizeInv = {}
	for i = 1, 41 do
		table.insert(sizeInv, 64)
	end

	sizeAccs = {}
	for i = 1, 7 do
		table.insert(sizeAccs, 64)
	end		

	
	closeDialog = false
	dialogAction = false
	dialogSelection1 = -1
	dialogSelection2 = -1
	accsAction = false
	accsSelection = -1
	costumeAction = false
	invAction = true

	str_value = 1	


	curr_inv_list = {}



	sampRegisterChatCommand("unload", function(arg)
					thisScript():unload()
				end)

	original = memory.getuint8(sampGetBase() + 0x6B240, true)
	print(original)

	while true do
		wait(0)
		if main_window_state.v == false then
            		imgui.Process = false
        	end

		imgui.LockPlayer = main_window_state.v
		
		if mainIni.skin.id ~= getCharModel(PLAYER_PED) then
			mainIni.skin.id = getCharModel(PLAYER_PED)
			inicfg.save(mainIni, getWorkingDirectory() .. "\\config\\skin.ini")
			downloadUrlToFile("https://samp-servers.ru/images/samp_skins/".. mainIni.skin.id ..".png", getWorkingDirectory() .. "\\config\\skin.png")

			skin_inv = imgui.CreateTextureFromFile("moonloader/config/skin_inv.png")
		end
	end
end



function onScriptTerminate(scr)
	if scr == script.this then
		memory.setuint8(sampGetBase() + 0x6B240, original, true)
	end
end



function sampev.onShowDialog(dialogId, style, title, button1, button2, text)
	InvSlotMenuColor = {imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1)}

	if title:find("Инвентарь") and not title:find("Выбросить предмет") and not title:find("Передать предмет") and sampIsLocalPlayerSpawned() then
		memory.setuint8(sampGetBase() + 0x6B240, 0xC3, true)
		print(dialogId)
	elseif sampIsLocalPlayerSpawned() then
		didFind = false
		for i = 1, #all_inv_list do
			if title:find(all_inv_list[i][1]) and all_inv_list[i][1] ~= '' and dialogId == 32700 then
				didFind = true
				break
			end
		end
		if didFind then
			memory.setuint8(sampGetBase() + 0x6B240, 0xC3, true)
		else
			memory.setuint8(sampGetBase() + 0x6B240, original, true)
		end
	end

	if text:find("Вы хотите снять") then
		lua_thread.create(function()
			accsSelection = -1
			
			list = {}

			wait(100)
			sampSendDialogResponse(dialogId, 1, nil, nil)

			wait(200)
			sampCloseCurrentDialogWithButton(0)
			wait(100)
			closeDialog = false
			dialogAction = false
			dialogSelection1 = -1
			dialogSelection2 = -1
			accsAction = false
			accsSelection = -1
			costumeAction = false
		end)
	end
	
	if text:find("По какой цене Вы хотите продать") then
		lua_thread.create(function()
			wait(100)
			closeDialog = false
			dialogAction = false
			dialogSelection1 = -1
			dialogSelection2 = -1
			accsAction = false
			accsSelection = -1
			costumeAction = false
			invAction = true
		end)
	end
	
	if title:find("Инвентарь") and invAction then
		sampSendDialogResponse(dialogId, 1, 2, nil)
	elseif not title:find("Инвентарь") and dialogId == 32700 and invAction and not text:find("По какой цене Вы хотите продать") then
		inv_list = Split(text, "\n")
		if inv_list[#inv_list]:find("Выставить на продажу") then
			has_sell_opt = true
		else
			has_sell_opt = false
		end
		invAction = false
		sampCloseCurrentDialogWithButton(0)
	elseif title:find("Инвентарь") and not title:find("Инвентарь | Аксессуары") and not closeDialog and not dialogAction and not accsAction and accsSelection == -1 and not costumeAction then
		getList = Split(text, "\n")
		
		lua_thread.create(function()
		if doesFileExist(getWorkingDirectory() .. "\\config\\skin.png") then
			skin_inv = imgui.CreateTextureFromFile("moonloader/config/skin.png")
		else
			skin_inv = nil
		end

		for i = 1, #getList do
			table.insert(list, getList[i])
		end
		
		if list[1]:find("Аксессуары") then
			table.remove(list, 1)
		end

		if list[1]:find("Снять костюм") then
			table.remove(list, 1)
		end

		for i = 1, #list do
			if list[i]:find("Снять костюм") then
				table.remove(list, i)
				break
			end
		end

		for i = 1, #list do
			if list[i]:find("Аксессуары") then
				table.remove(list, i)
				break
			end
		end
		

		for i = 1, #list do
			if list[i]:find("Предыдущая страница") then
				table.remove(list, i)
				break
			end	
		end


		
		for i = 1, #list do
			if list[i]:find("Следующая страница") then
				table.remove(list, i)
				break
			end	
		end



		for i = 1, #list do
			if list[i] == '' then
				table.remove(list, i)
				break
			end	
		end
		


		if #list > 40 then
			for i = 1, (#list - 40) do
				table.remove(list, 41)
			end
		end


		print("--List--")
		for i = 1, #list do
			print(list[i])
		end


		print("--getList--")
		
		for i = 1, #getList do
			print(getList[i])
		end	
		end)

		
		if getList[#getList] == '' or getList[#getList]:find("Предыдущая страница") or #getList == 1 then
			if getList[1]:find("Снять костюм") then
				accs = nil
				accs_inv_list = nil
				lua_thread.create(function()
				wait(0)
				sampCloseCurrentDialogWithButton(0)
				end)
				closeDialog = false
				curr_inv_list = {}			
				for i = 1, #list do
					didFind = false
					for j = 1, #all_inv_list do
						if list[i]:find(all_inv_list[j][1]) and all_inv_list[j][1] ~= '' then
							table.insert(curr_inv_list, {all_inv_list[j][2]})
							didFind = true
							break
						end
					end
					if not didFind then
						table.insert(curr_inv_list, {"unknown_inv.png"})
					end
				end
				
				--принты
				for i = 1, #curr_inv_list do
					table.insert(curr_inv_list[i], imgui.CreateTextureFromFile("moonloader/config/inv/" .. curr_inv_list[i][1]))
				end
		
				for i = 1, #list do
					print(list[i])
				end


				print(#list)


				main_window_state.v = not main_window_state.v
				imgui.Process = main_window_state.v
			else
				mainIni.costume.name = "none"
				inicfg.save(mainIni, getWorkingDirectory() .. "\\config\\skin.ini")
				costume_inv = nil
				sampSendDialogResponse(dialogId, 1, 0, nil)					
			end
		elseif getList[#getList]:find("Следующая страница") then
			sampSendDialogResponse(dialogId, 1, 21, nil)
		end


	elseif title:find("Инвентарь") and not title:find("Инвентарь | Аксессуары") and costumeAction then
		lua_thread.create(function() 
			wait(0)
			sampSendDialogResponse(dialogId, 1, 0, nil)
		end)
	elseif not title:find("Инвентарь") and not title:find("Инвентарь | Аксессуары") and costumeAction and dialogId == 32700 then
		list = {}
		lua_thread.create(function() 
			wait(50)
			costumeAction = false
		end)
	elseif title:find("Инвентарь") and not title:find("Инвентарь | Аксессуары") and not closeDialog and not dialogAction and not accsAction and accsSelection ~= -1 and not costumeAction then
		accsSelection = -1
		lua_thread.create(function()
			wait(100)
			sampCloseCurrentDialogWithButton(0)
			
			main_window_state.v = not main_window_state.v
			imgui.Process = main_window_state.v
		end)
		
	elseif title:find("Инвентарь") and not title:find("Инвентарь | Аксессуары") and accsAction and accsSelection ~= -1 and not costumeAction then
		
	-- снятие акса
		sampSendDialogResponse(dialogId, 1, 0, nil)

	elseif title:find("Инвентарь | Аксессуары") and accsAction and accsSelection ~= -1 and not costumeAction then
		sampSendDialogResponse(dialogId, 1, accsSelection - 1, nil)

	elseif not title:find("Инвентарь") and not title:find("Инвентарь | Аксессуары") and dialogId == 32700 and accsAction and accsSelection ~= -1 and not costumeAction then
		accsAction = false
		print("smth")
	elseif title:find("Инвентарь | Аксессуары") and not accsAction and accsSelection ~= -1 and not costumeAction then
		print("smth2")
		accsSelection = -1
		lua_thread.create(function()
			wait(100)
			list = {}
			sampCloseCurrentDialogWithButton(0)
		
		end)

	elseif title:find("Инвентарь") and not title:find("Инвентарь | Аксессуары") and not closeDialog and dialogAction and not accsAction and accsSelection == -1 and not costumeAction then
		if list[dialogSelection1]:find("Костюм") then
			mainIni.costume.name = list[dialogSelection1]
			inicfg.save(mainIni, getWorkingDirectory() .. "\\config\\skin.ini")
			for i = 1, #all_inv_list do
				didFind = false
				if mainIni.costume.name:find(all_inv_list[i][1]) and all_inv_list[i][1] ~= '' then
					didFind = true
					costume_inv = imgui.CreateTextureFromFile("moonloader/config/inv/" .. all_inv_list[i][2])
					break
				end
				if not didFind then
					costume_inv = imgui.CreateTextureFromFile("moonloader/config/inv/unknown_inv.png")
				end
			end
		end
		
		if dialogSelection1 > 20 then
			dialogSelection1 = dialogSelection1 - 20
			sampSendDialogResponse(dialogId, 1, 21, nil)
		else
			sampSendDialogResponse(dialogId, 1,  dialogSelection1, nil)
		end
		
		
		
		--32700


		
	elseif not title:find("Инвентарь") and not title:find("Инвентарь | Аксессуары") and dialogId == 32700 and not closeDialog and dialogAction and not accsAction and not costumeAction and accsSelection == -1 then
		lua_thread.create(function()
			sampSendDialogResponse(dialogId, 1,  (dialogSelection2 - 1), nil)			
			wait(50)
			closeDialog = false
			dialogAction = false
			dialogSelection1 = -1
			dialogSelection2 = -1
			list = {}
		end)
	elseif title:find("Инвентарь") and not title:find("Инвентарь | Аксессуары") and closeDialog and not dialogAction and dialogSelection1 == -1 and not costumeAction and dialogSelection2 == -1 and not accsAction and accsSelection == -1 then
		lua_thread.create(function()
			wait(0)
			sampCloseCurrentDialogWithButton(0)
			closeDialog = false

			curr_inv_list = {}			


			for i = 1, #list do
				didFind = false
				for j = 1, #all_inv_list do
					if list[i]:find(all_inv_list[j][1]) and all_inv_list[j][1] ~= '' then
						table.insert(curr_inv_list, {all_inv_list[j][2]})
						didFind = true
						break
					end
				end
				if not didFind then
					table.insert(curr_inv_list, {"unknown_inv.png"})
				end
			end


			accs_inv_list = {}


			for i = 1, #accs do
				didFind = false
				for j = 1, #all_inv_list do
					if accs[i]:find(all_inv_list[j][1]) and all_inv_list[j][1] ~= '' then
						table.insert(accs_inv_list, {all_inv_list[j][2]})
						didFind = true
						break
					end
				end
				if not didFind then
					table.insert(accs_inv_list, {"unknown_inv.png"})
				end
			end

			for i = 1, #accs_inv_list do
				table.insert(accs_inv_list[i], imgui.CreateTextureFromFile("moonloader/config/inv/" .. accs_inv_list[i][1]))
			end



			--принты

			for i = 1, #curr_inv_list do
				table.insert(curr_inv_list[i], imgui.CreateTextureFromFile("moonloader/config/inv/" .. curr_inv_list[i][1]))
			end

			for i = 1, #list do
				print(list[i])
			end
			for i = 1, #accs do
				print(accs[i])
			end

			for i = 1, #accs_inv_list do
				print(accs_inv_list[i][1])
				print(accs_inv_list[i][2])
			end
		

			print(#list)


			main_window_state.v = not main_window_state.v
			imgui.Process = main_window_state.v
		end)
	elseif title:find("Инвентарь | Аксессуары") and not accsAction and accsSelection == -1 and not costumeAction then
		lua_thread.create(function() 
			wait(0)
			sampCloseCurrentDialogWithButton(0)
			
		end)
		accs = Split(text, "\n")
		table.remove(accs, #accs)
		
		closeDialog = true
	end
	--end
end



function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end



local fontsize = nil
local str_inv = nil
function imgui.BeforeDrawFrame()
    if fontsize == nil then
        fontsize = imgui.GetIO().Fonts:AddFontFromFileTTF(getGameDirectory() .. '\\moonloader\\config\\Ubuntu.ttf', 24.0, nil, imgui.GetIO().Fonts:GetGlyphRangesCyrillic()) -- вместо 30 любой нужный размер
    end
    if str_inv == nil then
        str_inv = imgui.GetIO().Fonts:AddFontFromFileTTF(getGameDirectory() .. '\\moonloader\\config\\Ubuntu.ttf', 54.0, nil, imgui.GetIO().Fonts:GetGlyphRangesCyrillic()) -- вместо 30 любой нужный размер
    end
end




function imgui.ExitButton(image)
	imgui.Image(image, imgui.ImVec2(50, 50))
	if imgui.IsItemClicked() then
		lua_thread.create(function()
			wait(100)
			main_window_state.v = false
			list = {}
			invAction = true
			has_sell_opt = false
		end)
		
	end
end





function imgui.InvSlot(image, i)
	imgui.Image(image, imgui.ImVec2(sizeInv[i], sizeInv[i]))
	
	if list[i] ~= nil then
		if list[i]:find("(.+){FFCD00}") and list[i]:find("{FFCD00}(.+)") then
			text = list[i]:match("(.+){FFCD00}") .. list[i]:match("{FFCD00}(.+)")
		else
			text = "Предмет #" .. i
		end
	else
		text = "Предмет #" .. i
	end
	
	if imgui.IsItemHovered() then
		sizeInv[i] = 56
		imgui.BeginTooltip()
			imgui.Text(u8(text))
		imgui.EndTooltip()
	else
		sizeInv[i] = 64
	end
	
   	if imgui.IsItemClicked() then
		if has_sell_opt then
			imgui.SetNextWindowSize(imgui.ImVec2(384, 260), imgui.Cond.FirstUseEver)
			imgui.OpenPopup(u8(text) .. "2")
		else
			imgui.SetNextWindowSize(imgui.ImVec2(384, 260), imgui.Cond.FirstUseEver)
			imgui.OpenPopup(u8(text))
		end
		
	end
	if imgui.BeginPopupModal(u8(text) .. "2", _, imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoResize + imgui.WindowFlags.NoTitleBar + imgui.WindowFlags.NoMove) then
		imgui.PushFont(fontsize)	
		
		imgui.SetCursorPosX(32)
		imgui.SetCursorPosY(16)
	
		imgui.TextColored(imgui.ImVec4(1, 0.72, 0, 1), u8(text))
		
		imgui.SetCursorPosY(48)

		imgui.Separator()

	
		

		--[[
			dialogAction = true
			closeDialog = false
			dialogSelection2 = 1
			dialogSelection1 = i

			imgui.CloseCurrentPopup()
			main_window_state.v = false

			sampSendChat("/inv")
		]]--
		

		imgui.SetCursorPosY(57)
		imgui.SetCursorPosX(32)
		
		imgui.PushStyleColor(imgui.Col.ChildWindowBg, InvSlotMenuColor[1])

		imgui.BeginChild("use statement #" .. i, imgui.ImVec2(320, 42), false)
			imgui.SetCursorPosY(8)
			imgui.SetCursorPosX(8)
			
			imgui.Text(u8"Использовать")
		imgui.EndChild()

		imgui.PopStyleColor(1)
		
		
		if imgui.IsItemClicked() then
			InvSlotMenuColor[4] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[1] = imgui.ImVec4(1, 0.72, 0, 1)
			InvSlotMenuColor[2] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[3] = imgui.ImVec4(0, 0.14, 0.24, 1)

			dialogAction = true
			closeDialog = false
			dialogSelection2 = 1
			dialogSelection1 = i
		end

	
		imgui.SetCursorPosX(32)

		imgui.PushStyleColor(imgui.Col.ChildWindowBg, InvSlotMenuColor[2])

		imgui.BeginChild("use give #" .. i, imgui.ImVec2(320, 42), false)
			imgui.SetCursorPosY(8)
			imgui.SetCursorPosX(8)
			
			imgui.Text(u8"Передать")
		imgui.EndChild()

		imgui.PopStyleColor(1)
		
		
		if imgui.IsItemClicked() then
			InvSlotMenuColor[4] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[2] = imgui.ImVec4(1, 0.72, 0, 1)
			InvSlotMenuColor[1] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[3] = imgui.ImVec4(0, 0.14, 0.24, 1)


			dialogAction = true
			closeDialog = false
			dialogSelection2 = 2
			dialogSelection1 = i
		end




		imgui.SetCursorPosX(32)

		imgui.PushStyleColor(imgui.Col.ChildWindowBg, InvSlotMenuColor[3])

		imgui.BeginChild("use drop #" .. i, imgui.ImVec2(320, 42), false)
			imgui.SetCursorPosY(8)
			imgui.SetCursorPosX(8)
			
			imgui.Text(u8"Выбросить")
		imgui.EndChild()

		imgui.PopStyleColor(1)
		
		
		if imgui.IsItemClicked() then
			InvSlotMenuColor[4] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[3] = imgui.ImVec4(1, 0.72, 0, 1)
			InvSlotMenuColor[2] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[1] = imgui.ImVec4(0, 0.14, 0.24, 1)


			dialogAction = true
			closeDialog = false
			dialogSelection2 = 3
			dialogSelection1 = i
		end

		if has_sell_opt then
			imgui.SetCursorPosX(32)

			imgui.PushStyleColor(imgui.Col.ChildWindowBg, InvSlotMenuColor[4])
	
			imgui.BeginChild("use sell #" .. i, imgui.ImVec2(320, 42), false)
				imgui.SetCursorPosY(8)
				imgui.SetCursorPosX(8)
			
				imgui.Text(u8"Выставить на продажу")
			imgui.EndChild()

			imgui.PopStyleColor(1)
		
			
			if imgui.IsItemClicked() then
				InvSlotMenuColor[4] = imgui.ImVec4(1, 0.72, 0, 1)
				InvSlotMenuColor[3] = imgui.ImVec4(0, 0.14, 0.24, 1)
				InvSlotMenuColor[2] = imgui.ImVec4(0, 0.14, 0.24, 1)
				InvSlotMenuColor[1] = imgui.ImVec4(0, 0.14, 0.24, 1)


				dialogAction = true
				closeDialog = false
				dialogSelection2 = 4
				dialogSelection1 = i
			end
		end

		
		if has_sell_opt then imgui.SetCursorPosY(258) else imgui.SetCursorPosY(198) end
		imgui.Separator()


	
		function choose_btn()
		    	imgui.SwitchContext()
   		 	local style = imgui.GetStyle()
 		   	local colors = style.Colors
 		   	local clr = imgui.Col
		    	local ImVec4 = imgui.ImVec4
 		   	local ImVec2 = imgui.ImVec2

			style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
			

   			colors[clr.Button]               = ImVec4(1, 0.72, 0, 1)
    			colors[clr.ButtonHovered]        = ImVec4(1, 0.78, 0.25, 1.00)
    			colors[clr.ButtonActive]         = ImVec4(0.81, 0.58, 0, 1.00)
		end
		choose_btn()
		imgui.SetCursorPosX(32)
		if has_sell_opt then imgui.SetCursorPosY(268) else imgui.SetCursorPosY(208) end
		if imgui.Button(u8"Выбрать", imgui.ImVec2(150, 42)) then
			if dialogSelection2 ~= -1 then
				imgui.CloseCurrentPopup()
				main_window_state.v = false

				sampSendChat("/inv")
			end
		end	

		imgui.SameLine()


		function choose_btn()
		    	imgui.SwitchContext()
   		 	local style = imgui.GetStyle()
 		   	local colors = style.Colors
 		   	local clr = imgui.Col
		    	local ImVec4 = imgui.ImVec4
 		   	local ImVec2 = imgui.ImVec2

			style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
			

   			colors[clr.Button]               = ImVec4(0, 0.21, 0.36, 1)
    			colors[clr.ButtonHovered]        = ImVec4(0, 0.3, 0.5, 1)
    			colors[clr.ButtonActive]         = ImVec4(0, 0.12, 0.22, 1)
		end
		choose_btn()
		imgui.SetCursorPosX(202)
		if imgui.Button(u8"Назад", imgui.ImVec2(150, 42)) then
			closeDialog = false
			dialogAction = false
			dialogSelection1 = -1
			dialogSelection2 = -1

			InvSlotMenuColor = {imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1)}
			
			imgui.CloseCurrentPopup()
		end
		
		


		theme()

		imgui.PopFont()
		
		imgui.EndPopup()
	end


	if imgui.BeginPopupModal(u8(text), _, imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoResize + imgui.WindowFlags.NoTitleBar + imgui.WindowFlags.NoMove) then
		imgui.PushFont(fontsize)	
		
		imgui.SetCursorPosX(32)
		imgui.SetCursorPosY(16)
	
		imgui.TextColored(imgui.ImVec4(1, 0.72, 0, 1), u8(text))
		
		imgui.SetCursorPosY(48)

		imgui.Separator()

	
		

		--[[
			dialogAction = true
			closeDialog = false
			dialogSelection2 = 1
			dialogSelection1 = i

			imgui.CloseCurrentPopup()
			main_window_state.v = false

			sampSendChat("/inv")
		]]--
		

		imgui.SetCursorPosY(57)
		imgui.SetCursorPosX(32)
		
		imgui.PushStyleColor(imgui.Col.ChildWindowBg, InvSlotMenuColor[1])

		imgui.BeginChild("use statement #" .. i, imgui.ImVec2(320, 42), false)
			imgui.SetCursorPosY(8)
			imgui.SetCursorPosX(8)
			
			imgui.Text(u8"Использовать")
		imgui.EndChild()

		imgui.PopStyleColor(1)
		
		
		if imgui.IsItemClicked() then
			InvSlotMenuColor[4] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[1] = imgui.ImVec4(1, 0.72, 0, 1)
			InvSlotMenuColor[2] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[3] = imgui.ImVec4(0, 0.14, 0.24, 1)

			dialogAction = true
			closeDialog = false
			dialogSelection2 = 1
			dialogSelection1 = i
		end

	
		imgui.SetCursorPosX(32)

		imgui.PushStyleColor(imgui.Col.ChildWindowBg, InvSlotMenuColor[2])

		imgui.BeginChild("use give #" .. i, imgui.ImVec2(320, 42), false)
			imgui.SetCursorPosY(8)
			imgui.SetCursorPosX(8)
			
			imgui.Text(u8"Передать")
		imgui.EndChild()

		imgui.PopStyleColor(1)
		
		
		if imgui.IsItemClicked() then
			InvSlotMenuColor[4] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[2] = imgui.ImVec4(1, 0.72, 0, 1)
			InvSlotMenuColor[1] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[3] = imgui.ImVec4(0, 0.14, 0.24, 1)


			dialogAction = true
			closeDialog = false
			dialogSelection2 = 2
			dialogSelection1 = i
		end




		imgui.SetCursorPosX(32)

		imgui.PushStyleColor(imgui.Col.ChildWindowBg, InvSlotMenuColor[3])

		imgui.BeginChild("use drop #" .. i, imgui.ImVec2(320, 42), false)
			imgui.SetCursorPosY(8)
			imgui.SetCursorPosX(8)
			
			imgui.Text(u8"Выбросить")
		imgui.EndChild()

		imgui.PopStyleColor(1)
		
		
		if imgui.IsItemClicked() then
			InvSlotMenuColor[4] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[3] = imgui.ImVec4(1, 0.72, 0, 1)
			InvSlotMenuColor[2] = imgui.ImVec4(0, 0.14, 0.24, 1)
			InvSlotMenuColor[1] = imgui.ImVec4(0, 0.14, 0.24, 1)


			dialogAction = true
			closeDialog = false
			dialogSelection2 = 3
			dialogSelection1 = i
		end



		
		imgui.SetCursorPosY(198)
		imgui.Separator()


	
		function choose_btn()
		    	imgui.SwitchContext()
   		 	local style = imgui.GetStyle()
 		   	local colors = style.Colors
 		   	local clr = imgui.Col
		    	local ImVec4 = imgui.ImVec4
 		   	local ImVec2 = imgui.ImVec2

			style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
			

   			colors[clr.Button]               = ImVec4(1, 0.72, 0, 1)
    			colors[clr.ButtonHovered]        = ImVec4(1, 0.78, 0.25, 1.00)
    			colors[clr.ButtonActive]         = ImVec4(0.81, 0.58, 0, 1.00)
		end
		choose_btn()
		imgui.SetCursorPosX(32)
		imgui.SetCursorPosY(208)
		if imgui.Button(u8"Выбрать", imgui.ImVec2(150, 42)) then
			if dialogSelection2 ~= -1 then
				imgui.CloseCurrentPopup()
				main_window_state.v = false

				sampSendChat("/inv")
			end
		end	

		imgui.SameLine()


		function choose_btn()
		    	imgui.SwitchContext()
   		 	local style = imgui.GetStyle()
 		   	local colors = style.Colors
 		   	local clr = imgui.Col
		    	local ImVec4 = imgui.ImVec4
 		   	local ImVec2 = imgui.ImVec2

			style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
			

   			colors[clr.Button]               = ImVec4(0, 0.21, 0.36, 1)
    			colors[clr.ButtonHovered]        = ImVec4(0, 0.3, 0.5, 1)
    			colors[clr.ButtonActive]         = ImVec4(0, 0.12, 0.22, 1)
		end
		choose_btn()
		imgui.SetCursorPosX(202)
		if imgui.Button(u8"Назад", imgui.ImVec2(150, 42)) then
			closeDialog = false
			dialogAction = false
			dialogSelection1 = -1
			dialogSelection2 = -1

			InvSlotMenuColor = {imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1)}
			
			imgui.CloseCurrentPopup()
		end
		
		


		theme()

		imgui.PopFont()
		
		imgui.EndPopup()
	end

end









function imgui.AccsInv(i)
	imgui.Image(accs_inv_list[i][2], imgui.ImVec2(sizeAccs[i], sizeAccs[i]))

	text = accs[i]:match("%- (.+)")

	if imgui.IsItemHovered() then
		sizeAccs[i] = 56
		imgui.BeginTooltip()
			imgui.Text(u8(text))
		imgui.EndTooltip()
	else
		sizeAccs[i] = 64
	end



	if imgui.IsItemClicked() then
		imgui.OpenPopup(u8(text))
	end


	imgui.SetNextWindowSize(imgui.ImVec2(384, 128), imgui.Cond.FirstUseEver)
	if imgui.BeginPopupModal(u8(text), _, imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoResize + imgui.WindowFlags.NoTitleBar + imgui.WindowFlags.NoMove) then

		imgui.PushFont(fontsize)
		imgui.SetCursorPosX(32)
		imgui.SetCursorPosY(16)
	
		imgui.TextColored(imgui.ImVec4(1, 0.72, 0, 1), u8(text))
		
		imgui.SetCursorPosY(48)

		imgui.Separator()



		function choose_btn()
		    	imgui.SwitchContext()
   		 	local style = imgui.GetStyle()
 		   	local colors = style.Colors
 		   	local clr = imgui.Col
		    	local ImVec4 = imgui.ImVec4
 		   	local ImVec2 = imgui.ImVec2

			style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
			

   			colors[clr.Button]               = ImVec4(1, 0.72, 0, 1)
    			colors[clr.ButtonHovered]        = ImVec4(1, 0.78, 0.25, 1.00)
    			colors[clr.ButtonActive]         = ImVec4(0.81, 0.58, 0, 1.00)
		end
		choose_btn()
		imgui.SetCursorPosX(32)
		imgui.SetCursorPosY(70)
		if imgui.Button(u8"Снять", imgui.ImVec2(150, 42)) then
			imgui.CloseCurrentPopup()
			main_window_state.v = false

			accsAction = true
			
			accsSelection = i
			
			sampSendChat("/inv")
		end	

		imgui.SameLine()


		function choose_btn()
		    	imgui.SwitchContext()
   		 	local style = imgui.GetStyle()
 		   	local colors = style.Colors
 		   	local clr = imgui.Col
		    	local ImVec4 = imgui.ImVec4
 		   	local ImVec2 = imgui.ImVec2

			style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
			

   			colors[clr.Button]               = ImVec4(0, 0.21, 0.36, 1)
    			colors[clr.ButtonHovered]        = ImVec4(0, 0.3, 0.5, 1)
    			colors[clr.ButtonActive]         = ImVec4(0, 0.12, 0.22, 1)
		end
		choose_btn()
		imgui.SetCursorPosX(202)
		if imgui.Button(u8"Назад", imgui.ImVec2(150, 42)) then
			closeDialog = false
			dialogAction = false
			dialogSelection1 = -1
			dialogSelection2 = -1

			InvSlotMenuColor = {imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1)}
			
			imgui.CloseCurrentPopup()
		end
		
		


		theme()



		imgui.PopFont()

		imgui.EndPopup()
	end
	
end





function imgui.CostumeInv(name)
	imgui.Image(costume_inv, imgui.ImVec2(sizeCostume, sizeCostume))
	
	text = name:match("(Костюм .+)%s+{FFCD00}.+")	


	if imgui.IsItemHovered() then
		sizeCostume = 56
		imgui.BeginTooltip()
			imgui.Text(u8(text))
		imgui.EndTooltip()
	else
		sizeCostume = 64
	end

	if imgui.IsItemClicked() then
		imgui.OpenPopup(u8(text))
	end


	imgui.SetNextWindowSize(imgui.ImVec2(384, 128), imgui.Cond.FirstUseEver)
	if imgui.BeginPopupModal(u8(text), _, imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoResize + imgui.WindowFlags.NoTitleBar + imgui.WindowFlags.NoMove) then

		imgui.PushFont(fontsize)
		imgui.SetCursorPosX(32)
		imgui.SetCursorPosY(16)
	
		imgui.TextColored(imgui.ImVec4(1, 0.72, 0, 1), u8(text))
		
		imgui.SetCursorPosY(48)

		imgui.Separator()



		function choose_btn()
		    	imgui.SwitchContext()
   		 	local style = imgui.GetStyle()
 		   	local colors = style.Colors
 		   	local clr = imgui.Col
		    	local ImVec4 = imgui.ImVec4
 		   	local ImVec2 = imgui.ImVec2

			style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
			

   			colors[clr.Button]               = ImVec4(1, 0.72, 0, 1)
    			colors[clr.ButtonHovered]        = ImVec4(1, 0.78, 0.25, 1.00)
    			colors[clr.ButtonActive]         = ImVec4(0.81, 0.58, 0, 1.00)
		end
		choose_btn()
		imgui.SetCursorPosX(32)
		imgui.SetCursorPosY(70)
		if imgui.Button(u8"Снять", imgui.ImVec2(150, 42)) then
			imgui.CloseCurrentPopup()
			main_window_state.v = false

			costumeAction = true

			sampSendChat("/inv")
		end	

		imgui.SameLine()


		function choose_btn()
		    	imgui.SwitchContext()
   		 	local style = imgui.GetStyle()
 		   	local colors = style.Colors
 		   	local clr = imgui.Col
		    	local ImVec4 = imgui.ImVec4
 		   	local ImVec2 = imgui.ImVec2

			style.ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
			

   			colors[clr.Button]               = ImVec4(0, 0.21, 0.36, 1)
    			colors[clr.ButtonHovered]        = ImVec4(0, 0.3, 0.5, 1)
    			colors[clr.ButtonActive]         = ImVec4(0, 0.12, 0.22, 1)
		end
		choose_btn()
		imgui.SetCursorPosX(202)
		if imgui.Button(u8"Назад", imgui.ImVec2(150, 42)) then
			closeDialog = false
			dialogAction = false
			dialogSelection1 = -1
			dialogSelection2 = -1

			InvSlotMenuColor = {imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1), imgui.ImVec4(0, 0.14, 0.24, 1)}
			
			imgui.CloseCurrentPopup()
		end
		
		


		theme()



		imgui.PopFont()

		imgui.EndPopup()
	end
end





function imgui.OnDrawFrame()
	local X, Y = getScreenResolution()
	imgui.SetNextWindowSize(imgui.ImVec2(1024, 512), imgui.Cond.FirstUseEver)
	imgui.SetNextWindowPos(imgui.ImVec2(X / 2, Y / 2), imgui.Cond.FirstUseEver, imgui.ImVec2(0.5, 0.5))

	

	imgui.Begin(u8"Инвентарь.", main_window_state, imgui.WindowFlags.NoResize + imgui.WindowFlags.NoCollapse + imgui.WindowFlags.NoMove + imgui.WindowFlags.NoTitleBar)


	imgui.PushStyleColor(imgui.Col.ChildWindowBg, imgui.ImVec4(0.97, 0.65, 0.06, 1.00))
	imgui.SetCursorPosX(120)
	imgui.BeginChild('##1', imgui.ImVec2(250, 50), true)
		imgui.PushFont(fontsize)
		imgui.SetCursorPosX(57)
		imgui.Text(u8"Инвентарь.")
        	imgui.PopFont()
    	imgui.EndChild()
	imgui.PopStyleColor(1)

	imgui.SameLine()

	imgui.SetCursorPosX(944)
	imgui.ExitButton(exit_png)

	
	imgui.BeginChild('##2', imgui.ImVec2(490, 442), true)

		imgui.PushFont(fontsize)
		imgui.SetCursorPos(imgui.ImVec2(64, 32))
		imgui.TextColored(imgui.ImVec4(0.3, 0.4, 0.74, 1.00), u8"Аксессуары")
		imgui.PopFont()
		
		for i = 1, 3 do
			imgui.SetCursorPos(imgui.ImVec2(40, 84 + (88 * (i - 1))))
			if accs ~= nil then
				if not accs[i]:find("Пустой слот") then
					imgui.AccsInv(i)
				else
					imgui.Image(slota, imgui.ImVec2(64, 64))
				end
			else
				imgui.Image(slota, imgui.ImVec2(64, 64))
			end

			imgui.SetCursorPos(imgui.ImVec2(386, 84 + (88 * (i - 1))))

			if accs ~= nil then
				if not accs[(i + 3)]:find("Пустой слот") then
					imgui.AccsInv(i + 3)
				else
					imgui.Image(slota, imgui.ImVec2(64, 64))
				end
			else
				imgui.Image(slota, imgui.ImVec2(64, 64))
			end
		end

		if skin_inv ~= nil then
			imgui.SetCursorPos(imgui.ImVec2(196, 72))
			imgui.Image(skin_inv, imgui.ImVec2(98, 264))
		end


		if costume_inv ~= nil then
			imgui.SetCursorPos(imgui.ImVec2(213, 344))
			imgui.CostumeInv(mainIni.costume.name)
		else
			imgui.SetCursorPos(imgui.ImVec2(213, 344))
			imgui.Image(slotk, imgui.ImVec2(64, 64))
		end
		
		
		imgui.SetCursorPos(imgui.ImVec2(32, 352))
		imgui.Image(health_inv, imgui.ImVec2(48, 48))
		
		imgui.SetCursorPos(imgui.ImVec2(80, 368))
		imgui.ProgressBar(getCharHealth(PLAYER_PED) / 100.0, imgui.ImVec2(100, 16))

		
		imgui.SetCursorPos(imgui.ImVec2(302, 352))
		imgui.Image(hunger_inv, imgui.ImVec2(48, 48))
		
		imgui.SetCursorPos(imgui.ImVec2(350, 368))
		if sampTextdrawIsExists(2093) then
			imgui.ProgressBar(tonumber(sampTextdrawGetString(2093):match("%d+")) / 100.0, imgui.ImVec2(100, 16))
		elseif sampTextdrawIsExists(2092) then
			imgui.ProgressBar(tonumber(sampTextdrawGetString(2092):match("%d+")) / 100.0, imgui.ImVec2(100, 16))
		else
			imgui.ProgressBar(getCharHealth(PLAYER_PED) / 100.0, imgui.ImVec2(100, 16))
		end
		
		

	imgui.EndChild()





	imgui.SameLine()




	
	imgui.BeginChild('##3', imgui.ImVec2(490, 442), true)
		
		imgui.PushFont(fontsize)
		imgui.SetCursorPos(imgui.ImVec2(64, 32))
		imgui.TextColored(imgui.ImVec4(0.3, 0.4, 0.74, 1.00), u8"Предметы")
		imgui.PopFont()

		imgui.SetCursorPos(imgui.ImVec2(40, 72))
		
		imgui.BeginChild('##3 columns', imgui.ImVec2(426, 270), false) -- слоты
		
			imgui.Columns(5, "Columns1", false) --предметы инвентаря		
			if str_value == 1 then
				if #curr_inv_list ~= 0 and #curr_inv_list < 21 then
					for i = 1, #curr_inv_list do
						imgui.InvSlot(curr_inv_list[i][2], i)
		
						imgui.NextColumn()
					end
				elseif #curr_inv_list > 20 then
					for i = 1, 20 do
						imgui.InvSlot(curr_inv_list[i][2], i)
		
						imgui.NextColumn()
					end
				end
				for i = 1, (20 - #curr_inv_list) do
					imgui.Image(slot, imgui.ImVec2(64, 64))
					imgui.NextColumn()
				end
			elseif str_value == 2 then
				if #curr_inv_list > 20 then
					for i = 21, #curr_inv_list do
						imgui.InvSlot(curr_inv_list[i][2], i)
		
						imgui.NextColumn()
					end

					for i = 1, (40 - #curr_inv_list) do
						imgui.Image(slot, imgui.ImVec2(64, 64))
						imgui.NextColumn()
					end
				else
					for i = 1, 20 do
						imgui.Image(slot, imgui.ImVec2(64, 64))
						imgui.NextColumn()
					end
				end
			end

			imgui.Columns(1)

		imgui.EndChild()

		imgui.SetCursorPosY(370)
		imgui.SetCursorPosX(151)
		
		imgui.Image(left_inv, imgui.ImVec2(50, 50))

		if imgui.IsItemClicked() then
			str_value = 1
		end
		


		
		imgui.SameLine()

		imgui.PushFont(str_inv)

		imgui.SetCursorPosX(231)
		if str_value == 1 then
			imgui.TextColored(imgui.ImVec4(0, 0.5, 1, 1), u8"·")
		else
			imgui.TextColored(imgui.ImVec4(0.5, 0.55, 0.6, 1), u8"·")
		end
		imgui.SameLine()
		
		if str_value == 2 then
			imgui.TextColored(imgui.ImVec4(0, 0.5, 1, 1), u8"·")
		else
			imgui.TextColored(imgui.ImVec4(0.5, 0.55, 0.6, 1), u8"·")
		end
		imgui.PopFont()		

		imgui.SameLine()
		
		imgui.SetCursorPosX(291)
		imgui.Image(right_inv, imgui.ImVec2(50, 50))
		

		if imgui.IsItemClicked() then
			str_value = 2
		end

		
	imgui.EndChild()


	imgui.End()
end














