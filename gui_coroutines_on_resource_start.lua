_array = { { { } } }
_2array = { { { } } }

local localPlayer = getLocalPlayer()

local stickers_imgs = {
    "stickers/1.png",    
    "stickers/2.png",    
    "stickers/3.png",    
    "stickers/4.png",    
    "stickers/5.png",    
    "stickers/6.png",    
    "stickers/7.png",    
    "stickers/8.png",    
    "stickers/9.png",    
    "stickers/10.png",   
    "stickers/11.png",   
    "stickers/12.png",   
    "stickers/13.png",   
    "stickers/14.png",   
    "stickers/15.png",   
    "stickers/16.png",   
    "stickers/17.png",   
    "stickers/18.png",   
    "stickers/19.png",   
    "stickers/20.png",   
    "stickers/21.png",   
    "stickers/22.png",   
    "stickers/23.png",   
    "stickers/24.png",   
    "stickers/25.png",   
    "stickers/26.png",   
    "stickers/27.png",   
    "stickers/28.png",   
    "stickers/29.png",   
    "stickers/30.png",   
    "stickers/31.png",   
    "stickers/32.png",   
    "stickers/33.png",   
    "stickers/34.png",   
    "stickers/35.png",   
    "stickers/36.png",   
    "stickers/37.png",   
    "stickers/38.png",   
    "stickers/39.png",   
    "stickers/40.png",   
    "stickers/41.png",   
    "stickers/42.png",   
    "stickers/43.png",   
    "stickers/44.png",   
    "stickers/45.png",   
    "stickers/46.png",   
    "stickers/47.png",   
    "stickers/48.png",   
    "stickers/49.png",   
    "stickers/50.png",   
    "stickers/51.png",   
    "stickers/52.png",   
    "stickers/53.png",   
    "stickers/54.png",   
    "stickers/55.png",   
    "stickers/56.png",   
    "stickers/57.png",   
    "stickers/58.png",   
    "stickers/59.png",   
    "stickers/60.png",   
    "stickers/61.png",   
    "stickers/62.png",   
    "stickers/63.png",   
    "stickers/64.png",   
    "stickers/65.png",   
    "stickers/66.png",   
    "stickers/67.png",   
    "stickers/68.png",   
    "stickers/69.png",   
    "stickers/70.png",   
    "stickers/71.png",   
    "stickers/72.png",   
    "stickers/73.png",   
    "stickers/74.png",   
    "stickers/75.png",   
    "stickers/76.png",   
    "stickers/77.png",   
    "stickers/78.png",   
    "stickers/79.png",   
    "stickers/80.png",   
    "stickers/81.png",   
    "stickers/82.png",   
    "stickers/83.png",   
    "stickers/84.png",   
    "stickers/85.png",   
    "stickers/86.png",   
    "stickers/87.png",   
    "stickers/88.png",   
    "stickers/89.png",   
    "stickers/90.png",   
    "stickers/91.png",   
    "stickers/92.png",   
    "stickers/93.png",   
    "stickers/94.png",   
    "stickers/95.png",   
    "stickers/96.png",   
    "stickers/97.png",   
    "stickers/98.png",   
    "stickers/99.png",   
    "stickers/100.png",  
    "stickers/101.png",  
    "stickers/102.png",  
    "stickers/103.png",  
    "stickers/104.png",  
    "stickers/105.png",  
    "stickers/106.png",  
    "stickers/107.png",  
    "stickers/108.png",  
    "stickers/109.png",  
    "stickers/110.png",  
    "stickers/111.png",  
    "stickers/112.png",  
    "stickers/113.png",  
    "stickers/114.png",  
    "stickers/115.png",  
    "stickers/116.png",  
    "stickers/117.png",  
    "stickers/118.png",  
    "stickers/119.png",  
    "stickers/120.png",  
    "stickers/121.png",  
    "stickers/122.png",  
    "stickers/123.png",  
    "stickers/124.png",  
    "stickers/125.png",  
    "stickers/126.png",  
    "stickers/127.png",  
    "stickers/128.png",  
    "stickers/129.png",  
    "stickers/130.png",  
    "stickers/131.png",  
    "stickers/132.png",  
    "stickers/133.png",  
    "stickers/134.png",  
    "stickers/135.png",  
    "stickers/136.png",  
    "stickers/137.png",  
    "stickers/138.png",  
    "stickers/139.png",  
    "stickers/140.png",  
    "stickers/141.png",  
    "stickers/142.png",  
    "stickers/143.png",  
    "stickers/144.png",  
    "stickers/145.png",  
    "stickers/146.png",  
    "stickers/147.png",  
    "stickers/148.png",  
    "stickers/149.png",  
    "stickers/150.png",  
    "stickers/151.png",  
    "stickers/152.png",  
    "stickers/153.png",  
    "stickers/154.png",  
    "stickers/155.png",  
    "stickers/156.png",  
    "stickers/157.png",  
    "stickers/158.png",  
    "stickers/159.png",  
    "stickers/160.png",  
    "stickers/161.png",  
    "stickers/162.png",  
    "stickers/163.png",  
    "stickers/164.png",  
    "stickers/165.png",  
    "stickers/166.png",  
    "stickers/167.png",  
    "stickers/168.png",  
    "stickers/169.png",  
    "stickers/170.png",  
    "stickers/171.png",  
    "stickers/172.png",  
    "stickers/173.png",  
    "stickers/174.png",  
    "stickers/175.png",  
    "stickers/176.png",  
    "stickers/177.png",  
    "stickers/178.png",  
    "stickers/179.png",  
    "stickers/180.png",  
    "stickers/181.png",  
    "stickers/182.png",  
    "stickers/183.png",  
    "stickers/184.png",  
    "stickers/185.png",  
    "stickers/186.png",  
    "stickers/187.png",  
    "stickers/188.png",  
    "stickers/189.png",  
    "stickers/190.png",  
    "stickers/191.png",  
    "stickers/192.png",  
    "stickers/193.png",  
    "stickers/194.png",  
    "stickers/195.png",  
    "stickers/196.png",  
    "stickers/197.png",  
    "stickers/198.png",  
    "stickers/199.png",  
    "stickers/200.png",  
    "stickers/201.png",  
    "stickers/202.png",  
    "stickers/203.png",  
    "stickers/204.png",  
    "stickers/205.png",  
    "stickers/206.png",  
    "stickers/207.png",  
    "stickers/208.png",  
    "stickers/209.png",  
    "stickers/210.png",  
    "stickers/211.png",  
    "stickers/212.png",  
    "stickers/213.png",  
    "stickers/214.png",  
    "stickers/215.png",  
    "stickers/216.png",  
    "stickers/217.png",  
    "stickers/218.png",  
    "stickers/219.png",  
    "stickers/220.png",  
    "stickers/221.png",  
    "stickers/222.png",  
    "stickers/223.png",  
    "stickers/224.png",  
    "stickers/225.png",  
    "stickers/226.png",  
    "stickers/227.png",  
    "stickers/228.png",  
    "stickers/229.png",  
    "stickers/230.png",  
    "stickers/231.png",  
    "stickers/232.png",  
    "stickers/233.png",  
    "stickers/234.png",  
    "stickers/235.png",  
    "stickers/236.png",  
    "stickers/237.png",  
    "stickers/238.png",  
    "stickers/239.png",  
    "stickers/240.png",  
    "stickers/241.png",  
    "stickers/242.png",  
    "stickers/243.png",  
    "stickers/244.png",  
    "stickers/245.png",  
    "stickers/246.png",  
    "stickers/247.png",  
    "stickers/248.png",  
    "stickers/249.png",  
    "stickers/250.png",  
    "stickers/251.png",  
    "stickers/252.png",  
    "stickers/253.png",  
    "stickers/254.png",  
    "stickers/255.png",  
    "stickers/256.png",  
    "stickers/257.png",  
    "stickers/258.png",  
    "stickers/259.png",  
    "stickers/260.png",  
    "stickers/261.png",  
    "stickers/262.png",  
    "stickers/263.png",  
    "stickers/264.png",  
    "stickers/265.png",  
    "stickers/266.png",  
    "stickers/267.png",  
    "stickers/268.png",  
    "stickers/269.png",  
    "stickers/270.png",  
    "stickers/271.png",  
    "stickers/272.png",  
    "stickers/273.png",  
    "stickers/274.png",  
    "stickers/275.png",  
    "stickers/276.png",  
    "stickers/277.png",  
    "stickers/278.png",  
    "stickers/279.png",  
    "stickers/280.png",  
    "stickers/281.png",  
    "stickers/282.png",  
    "stickers/283.png",  
    "stickers/284.png",  
    "stickers/285.png",  
    "stickers/286.png",  
    "stickers/287.png",  
    "stickers/288.png",  
    "stickers/289.png",  
    "stickers/290.png",  
    "stickers/291.png",  
    "stickers/292.png",  
    "stickers/293.png",  
    "stickers/294.png",  
    "stickers/295.png",  
    "stickers/296.png",  
    "stickers/297.png",  
    "stickers/298.png",  
    "stickers/299.png",  
    "stickers/300.png",  
    "stickers/301.png",  
    "stickers/302.png",  
    "stickers/303.png",  
    "stickers/304.png",  
    "stickers/305.png",  
    "stickers/306.png",  
    "stickers/307.png",  
    "stickers/308.png",  
    "stickers/309.png",  
    "stickers/310.png",  
    "stickers/311.png",  
    "stickers/312.png",
    "stickers/313.png",
    "stickers/314.png",
    "stickers/315.png",
    "stickers/316.png",
    "stickers/317.png",
    "stickers/318.png",
    "stickers/319.png",
    "stickers/320.png",
    "stickers/321.png",
    "stickers/322.png",
    "stickers/323.png",
    "stickers/324.png",
    "stickers/325.png",
    "stickers/326.png",
    "stickers/327.png",
    "stickers/328.png",
    "stickers/329.png",
    "stickers/330.png",
    "stickers/331.png",
    "stickers/332.png",
    "stickers/333.png"--[[,
    "stickers/334.png",
    "stickers/335.png",
    "stickers/336.png",
    "stickers/337.png",
    "stickers/338.png",
    "stickers/339.png",
    "stickers/340.png",
    "stickers/341.png",
    "stickers/342.png",
    "stickers/343.png",
    "stickers/344.png",
    "stickers/345.png",
    "stickers/346.png",
    "stickers/347.png",
    "stickers/348.png",
    "stickers/349.png",
    "stickers/350.png",
    "stickers/351.png",
    "stickers/352.png",
    "stickers/353.png",
    "stickers/354.png",
    "stickers/355.png",
    "stickers/356.png",
    "stickers/357.png",
    "stickers/358.png",
    "stickers/359.png",
    "stickers/360.png",
    "stickers/361.png",
    "stickers/362.png",
    "stickers/363.png",
    "stickers/364.png",
    "stickers/365.png",
    "stickers/366.png",
    "stickers/367.png",
    "stickers/368.png",
    "stickers/369.png",
    "stickers/370.png",
    "stickers/371.png",
    "stickers/372.png",
    "stickers/373.png",
    "stickers/374.png",
    "stickers/375.png",
    "stickers/376.png",
    "stickers/377.png",
    "stickers/378.png",
    "stickers/379.png",
    "stickers/380.png",
    "stickers/381.png",
    "stickers/382.png",
    "stickers/383.png",
    "stickers/384.png",
    "stickers/385.png",
    "stickers/386.png",
    "stickers/387.png",
    "stickers/388.png",
    "stickers/389.png"--]]

}

local availableVehicles = {
	[402] = true,
	[527] = true,
	[466] = true,
	[550] = true,
	[560] = true,
	[439] = true,
	[477] = true,
	[474] = true,
	[491] = true,
	[555] = true
}


local temporary_gui_stickers = {}

local temporary_gui_stickers_btn = {}
-- local temporary_gui_sticker_ids = {}
local current_selected_sticker = nil
local current_edit_mode = nil

local downloaded_state = false

local loadingCircle = dxCreateTexture( "icons/load.png" )

addEventHandler("onClientResourceStart", resourceRoot, function ()
	for i, st in pairs(stickers_imgs) do
		downloadFile(st)
	end
	-- outputChatBox("DOWNLOAD COMPLETE")
	downloaded_state = true
	-- postDownloadGUI()
	callFunctionWithSleeps(postDownloadGUI)
	addEventHandler("onClientRender", root, stickerLoadingProgress)
end)

-- local row = 0
-- local i = 1
-- addEventHandler("onClientFileDownloadComplete", root,
--     function()
--     	if (i-1) % 3 == 0 then
--             row = row +1
--         end
--         stickers_select_btn[i] = guiCreateButton( ( 0.05+( 0.3*( (i-1)%3 ) ) ), 0.02+(0.3*row), 0.27, 0.27, "", true, stickers_select_scroll )
--         stickers_select_img[i] = guiCreateStaticImage(( 0.05+( 0.3*( (i-1)%3 ) ) ), 0.02+(0.3*row), 0.27, 0.27, stickers_imgs[i], true, stickers_select_scroll)
--         guiSetProperty( stickers_select_img[i], "Disabled", "True" )
--         guiSetProperty( stickers_select_img[i], "AlwaysOnTop", "True" )
--         addEventHandler("onClientGUIClick", stickers_select_btn[i], gui_SelectSticker, false)
--     end
-- )
-- addEventHandler("onClientResourceStart", resourceRoot, function ()

function callFunctionWithSleeps(calledFunction, ...) 
    local co = coroutine.create(calledFunction) --we create a thread 
    coroutine.resume(co, ...) --and start its execution 
end 
  
function sleep(time) 
    local co = coroutine.running() 
    local function resumeThisCoroutine() --since setTimer copies the argument values and coroutines cannot be copied, co cannot be passed as an argument, so we use a nested function with co as an upvalue instead 
        coroutine.resume(co) 
    end 
    setTimer(resumeThisCoroutine, time, 1) --we set a timer to resume the current thread later 
    coroutine.yield() --we pause the execution, it will be continued when the timer calls the resume function 
end 

local isGUIReadyToOpen = false
local sticker_count = 0
local sw, sh = guiGetScreenSize ( )
function stickerLoadingProgress()
	-- dxDrawLine( sw/1.3, sh/1.3+0.02777*sh, sw/1.3+(0.101*sw*(sticker_count/#stickers_imgs)), sh/1.3+0.02777*sh, tocolor(200, 200, 200), 10 )
	if loadingCircle then
		dxDrawImage(  sw/1.425, sh/1.07-sw/384, sw/64, sw/64, loadingCircle, (getTickCount()*0.3)%360 )
	end
	dxDrawText ( "Loading stickers "..sticker_count.." / "..tostring(#stickers_imgs), sw/1.38, sh/1.07, sw/4, sh/4, tocolor ( 255, 255, 255, 255 ), 1.5, "default-bold" )
end

function postDownloadGUI ()
	-- outputChatBox("STATE: "..tostring(downloaded_state))
	if downloaded_state then
        stickers_select_window = guiCreateWindow(0.28, 0.25, 0.44, 0.49, "Select Sticker", true)
        guiWindowSetSizable(stickers_select_window, false)
        guiSetVisible(stickers_select_window, false)

        stickers_select_scroll = guiCreateScrollPane(0.01, 0.02, 0.98, 0.96, true, stickers_select_window)

        stickers_select_img = {}
        stickers_select_btn = {}
        local row = 0
        for i=1,#stickers_imgs do
        	sticker_count = i
            -- local new_row = 0
            if (i-1) % 3 == 0 then
                row = row +1
                -- new_row = 1
            end
            stickers_select_btn[i] = guiCreateButton( ( 0.05+( 0.3*( (i-1)%3 ) ) ), 0.02+(0.3*row), 0.27, 0.27, "", true, stickers_select_scroll )
            stickers_select_img[i] = guiCreateStaticImage(( 0.05+( 0.3*( (i-1)%3 ) ) ), 0.02+(0.3*row), 0.27, 0.27, stickers_imgs[i], true, stickers_select_scroll)
            guiSetProperty( stickers_select_img[i], "Disabled", "True" )
            guiSetProperty( stickers_select_img[i], "AlwaysOnTop", "True" )
            addEventHandler("onClientGUIClick", stickers_select_btn[i], gui_SelectSticker, false)
            sleep(110)
        end
        -- outputChatBox("RESUME FROM LOOP")
        stickers_settings_window = guiCreateWindow(0.32, 0.01, 0.36, 0.11, "Stickers Settings Menu", true)
        guiWindowSetSizable(stickers_settings_window, false)

        stickers_add_btn = guiCreateButton(0.01, 0.23, 0.23, 0.68, "", true, stickers_settings_window)
        guiSetProperty(stickers_add_btn, "NormalTextColour", "FFAAAAAA")
        stickers_edit_btn = guiCreateButton(0.26, 0.23, 0.23, 0.68, "", true, stickers_settings_window)
        guiSetProperty(stickers_edit_btn, "NormalTextColour", "FFAAAAAA")
        stickers_remove_btn = guiCreateButton(0.51, 0.24, 0.23, 0.67, "", true, stickers_settings_window)
        guiSetProperty(stickers_remove_btn, "NormalTextColour", "FFAAAAAA")
        stickers_exit_btn = guiCreateButton(0.75, 0.24, 0.23, 0.67, "", true, stickers_settings_window)
        guiSetProperty(stickers_exit_btn, "NormalTextColour", "FFAAAAAA")


        stickers_display_window = guiCreateWindow(0.895, 0.31, 0.10, 0.46, "Stickers", true)
        guiWindowSetSizable(stickers_display_window, false)

        stickers_display_scroll = guiCreateScrollPane(0.05, 0.05, 0.89, 0.93, true, stickers_display_window)


        stickers_edit_window = guiCreateWindow(0.38, 0.13, 0.25, 0.09, "Sticker Edit Menu", true)
        guiWindowSetSizable(stickers_edit_window, false)

        stickers_edit_pos_btn = guiCreateButton(0.02, 0.20, 0.17, 0.69, "", true, stickers_edit_window)
        guiSetProperty(stickers_edit_pos_btn, "NormalTextColour", "FFAAAAAA")
        stickers_edit_scale_btn = guiCreateButton(0.22, 0.20, 0.17, 0.69, "", true, stickers_edit_window)
        guiSetProperty(stickers_edit_scale_btn, "NormalTextColour", "FFAAAAAA")
        stickers_edit_rot_btn = guiCreateButton(0.41, 0.20, 0.17, 0.69, "", true, stickers_edit_window)
        guiSetProperty(stickers_edit_rot_btn, "NormalTextColour", "FFAAAAAA")
        stickers_edit_color_btn = guiCreateButton(0.60, 0.20, 0.17, 0.69, "", true, stickers_edit_window)
        guiSetProperty(stickers_edit_color_btn, "NormalTextColour", "FFAAAAAA")
        stickers_edit_apply_btn = guiCreateButton(0.79, 0.20, 0.17, 0.69, "", true, stickers_edit_window)
        guiSetProperty(stickers_edit_apply_btn, "NormalTextColour", "FFAAAAAA")


        stickers_save_info_window = guiCreateWindow(0.68, 0.01, 0.14, 0.11, "Save/Load & Info", true)
        guiWindowSetSizable(stickers_save_info_window, false)

        stickers_presets_btn = guiCreateButton(0.04, 0.18, 0.41, 0.73, "", true, stickers_save_info_window)
        guiSetProperty(stickers_presets_btn, "NormalTextColour", "FFAAAAAA")
        stickers_info_btn = guiCreateButton(0.55, 0.18, 0.41, 0.73, "", true, stickers_save_info_window)
        guiSetProperty(stickers_info_btn, "NormalTextColour", "FFAAAAAA")


        stickers_save_load_window = guiCreateWindow(0.31, 0.25, 0.37, 0.62, "Save/Load Presets", true)
        guiWindowSetSizable(stickers_save_load_window, false)

        stickers_save_load_gridlist = guiCreateGridList(0.08, 0.05, 0.83, 0.74, true, stickers_save_load_window)
        guiGridListAddColumn(stickers_save_load_gridlist, "Name", 0.9)
        stickers_save_load_editbox = guiCreateEdit(0.08, 0.81, 0.66, 0.07, "", true, stickers_save_load_window)
        stickers_save_btn = guiCreateButton(0.75, 0.81, 0.16, 0.07, "Save", true, stickers_save_load_window)
        guiSetProperty(stickers_save_btn, "NormalTextColour", "FFAAAAAA")
        stickers_load_btn = guiCreateButton(0.08, 0.89, 0.83, 0.07, "Load", true, stickers_save_load_window)
        guiSetProperty(stickers_load_btn, "NormalTextColour", "FFAAAAAA")
        stickers_save_exit_btn = guiCreateButton(0.93, 0.05, 0.06, 0.07, "X", true, stickers_save_load_window)
        guiSetProperty(stickers_save_exit_btn, "NormalTextColour", "FFAAAAAA")


        stickers_info_window = guiCreateWindow(0.24, 0.29, 0.51, 0.53, "Info", true)
        guiWindowSetSizable(stickers_info_window, false)

        stickers_scroll_info = guiCreateScrollPane(0.01, 0.15, 0.98, 0.84, true, stickers_info_window)

        stickers_info_label = guiCreateLabel(10, 10, 943, 462, "Stickers Panel by PiTeR\n\n\nPrawy przycisk myszy - sterowanie kamerą\n\n\nEdycja naklejki:\n\n1 - Wybieramy (klikamy) naklejkę w panelu po prawo\n2 - Po wybraniu naklejki przyciski edycji i usuwania podświetlą się\n3 - Wybieramy pożądaną opcję\n3.1 - Jeśli wybierzemy opcję edycji pojawi się okno edycji naklejki, w którym możemy wybrać następujące opcje(od lewej):\n\nPrzemieszczenie, Skalowanie, Rotacja i Kolorowanie\n\n3.1.1 - Przy wybraniu skalowania istnieje opcja skalowania w jednej osi przez przytrzymanie lewego przycisku Ctrl\n3.2 - Przycisk zatwierdzający edycje znajduje się pierwszy po prawej\n\n\nZapisywanie/wczytywanie presetów naklejek:\n1 - W oknie \"Save/Load & Info\" klikamy ikonę zapisu\n2 - Pojawi się okno zapisu/wczytywania presetów naklejek\n3 - Aby zapisać preset naklejek należy:\n    - Wypełnić textbox nazwą presetu\n    - Kliknąć przycisk \"Save\"\n4 - Aby wczytać preset naklejek należy:\n    - Wybrać żądany preset z listy\n    - Kliknąć przycisk \"Load\"\n    - Można również dwukrotnie kliknąć na żądany preset aby go wczytać", false, stickers_scroll_info)
        guiSetFont(stickers_info_label, "default-bold-small")
        guiLabelSetHorizontalAlign(stickers_info_label, "center", false)

        stickers_info_exit_btn = guiCreateButton(0.92, 0.05, 0.06, 0.08, "X", true, stickers_info_window)
        guiSetProperty(stickers_info_exit_btn, "NormalTextColour", "FFAAAAAA")





        --Main Window
        stickers_icon_add = guiCreateStaticImage(0.29, 0.09, 0.43, 0.79, "icons/add.png", true, stickers_add_btn)
        stickers_icon_edit = guiCreateStaticImage(0.33, 0.09, 0.42, 0.79, "icons/edit.png", true, stickers_edit_btn)
        stickers_icon_remove = guiCreateStaticImage(0.31, 0.13, 0.36, 0.75, "icons/remove.png", true, stickers_remove_btn)
        stickers_icon_exit = guiCreateStaticImage(0.32, 0.13, 0.36, 0.75, "icons/exit.png", true, stickers_exit_btn)
        --Edit Window
        stickers_icon_move = guiCreateStaticImage(0.24, 0.15, 0.52, 0.70, "icons/move.png", true, stickers_edit_pos_btn)
        stickers_icon_scale = guiCreateStaticImage(0.24, 0.15, 0.52, 0.70, "icons/scale.png", true, stickers_edit_scale_btn)
        stickers_icon_rot = guiCreateStaticImage(0.23, 0.15, 0.52, 0.70, "icons/rotate.png", true, stickers_edit_rot_btn)
        stickers_icon_color = guiCreateStaticImage(0.23, 0.15, 0.52, 0.70, "icons/color.png", true, stickers_edit_color_btn)
        stickers_icon_apply = guiCreateStaticImage(0.23, 0.15, 0.54, 0.70, "icons/apply.png", true, stickers_edit_apply_btn)
        --Save/Load & Info Window
        stickers_icon_save = guiCreateStaticImage(0.20, 0.11, 0.59, 0.77, "icons/save.png", true, stickers_presets_btn)
        stickers_icon_info = guiCreateStaticImage(0.20, 0.11, 0.59, 0.77, "icons/info.png", true, stickers_info_btn)


        guiSetProperty( stickers_icon_add, "Disabled", "True" )
        guiSetProperty( stickers_icon_edit, "Disabled", "True" )
        guiSetProperty( stickers_icon_remove, "Disabled", "True" )
        guiSetProperty( stickers_icon_exit, "Disabled", "True" )

        guiSetProperty( stickers_icon_move, "Disabled", "True" )
        guiSetProperty( stickers_icon_scale, "Disabled", "True" )
        guiSetProperty( stickers_icon_rot, "Disabled", "True" )
        guiSetProperty( stickers_icon_color, "Disabled", "True" )
        guiSetProperty( stickers_icon_apply, "Disabled", "True" )

        guiSetProperty( stickers_icon_save, "Disabled", "True" )
        guiSetProperty( stickers_icon_info, "Disabled", "True" )


        -- guiSetVisible(stickers_select_window, false)
        guiSetVisible(stickers_settings_window, false)
        guiSetVisible(stickers_display_window, false)
        guiSetVisible(stickers_edit_window, false)
        guiSetVisible(stickers_save_info_window, false)
        guiSetVisible(stickers_save_load_window, false)
        guiSetVisible(stickers_info_window, false)

        guiSetEnabled(stickers_edit_btn, false)
        guiSetEnabled(stickers_remove_btn, false)

        addEventHandler ( "onClientGUIClick", stickers_add_btn, gui_addSticker, false )
        addEventHandler ( "onClientGUIClick", stickers_edit_btn, gui_editSticker, false )
        addEventHandler ( "onClientGUIClick", stickers_edit_btn, editing_button_toggle, false )
        addEventHandler ( "onClientGUIClick", stickers_remove_btn, gui_removeSticker, false )
        addEventHandler ( "onClientGUIClick", stickers_exit_btn, gui_exitWindows, false )

        addEventHandler ( "onClientGUIClick", stickers_edit_pos_btn, gui_editMode, false )
        addEventHandler ( "onClientGUIClick", stickers_edit_scale_btn, gui_editMode, false )
        addEventHandler ( "onClientGUIClick", stickers_edit_rot_btn, gui_editMode, false )
        addEventHandler ( "onClientGUIClick", stickers_edit_apply_btn, editing_button_toggle, false )
        addEventHandler ( "onClientGUIClick", stickers_edit_color_btn, gui_editMode, false )

        addEventHandler( "onClientGUIClick", stickers_presets_btn, gui_PresetsWindow, false )
        addEventHandler( "onClientGUIClick", stickers_save_exit_btn, gui_PresetsWindow, false )
        addEventHandler( "onClientGUIClick", stickers_save_btn, presets_SavePreset, false )
        addEventHandler( "onClientGUIClick", stickers_load_btn, presets_LoadPreset, false )

        addEventHandler( "onClientGUIClick", stickers_save_load_gridlist, gui_gridlistClick, false )
        addEventHandler( "onClientGUIDoubleClick", stickers_save_load_gridlist, gui_gridlistDoubleClick, false )

        addEventHandler( "onClientGUIClick", stickers_info_btn, gui_InfoWindowEnter, false )
        addEventHandler( "onClientGUIClick", stickers_info_exit_btn, gui_InfoWindowExit, false )


        isGUIReadyToOpen = true
        removeEventHandler("onClientRender", root, stickerLoadingProgress)
    end
end
-- addEventHandler("onClientFileDownloadComplete", root, postDownloadGUI)

function gui_InfoWindowExit( )
	guiSetVisible(stickers_info_window, false)
	guiSetEnabled(stickers_save_info_window, true)
	guiSetEnabled(stickers_settings_window, true)
	guiSetEnabled(stickers_display_window, true)
end

function gui_InfoWindowEnter( )
	guiSetVisible(stickers_info_window, true)
	guiSetEnabled(stickers_save_info_window, false)
	guiSetEnabled(stickers_settings_window, false)
	guiSetEnabled(stickers_display_window, false)
end

function gui_PresetsWindow( )
	if ( source == stickers_presets_btn ) then
		guiSetVisible(stickers_save_load_window, true)
		guiSetEnabled(stickers_save_info_window, false)
		guiSetEnabled(stickers_settings_window, false)
		guiSetEnabled(stickers_display_window, false)
		refresh_saved_presets("true")
		return
	end
	if ( source == stickers_save_exit_btn ) then
		guiSetText(stickers_save_load_editbox, "")
		guiSetVisible(stickers_save_load_window, false)
		guiSetEnabled(stickers_save_info_window, true)
		guiSetEnabled(stickers_settings_window, true)
		guiSetEnabled(stickers_display_window, true)
		refresh_saved_presets("false")
		return
	end
end


function refresh_saved_presets( doLoading )
	if doLoading == "true" then
		local preset_file = xmlLoadFile( "presets/presets.xml", true )
		if not preset_file then
			preset_file = xmlCreateFile( "presets/presets.xml", "presets" )
			xmlSaveFile(preset_file)
			xmlUnloadFile(preset_file)
			return
		end
		local presets_table = xmlNodeGetChildren(preset_file)
		for i, node in pairs(presets_table) do
			guiGridListAddRow( stickers_save_load_gridlist, xmlNodeGetAttribute(node, "name") )
		end
		xmlUnloadFile(preset_file)
	end
	if doLoading == "false" then
		guiGridListClear(stickers_save_load_gridlist)
	end
end

function gui_gridlistClick( )
	guiSetText( stickers_save_load_editbox, guiGridListGetItemText(source, guiGridListGetSelectedItem(source)) )
end

function gui_gridlistDoubleClick( )
	if ( guiGridListGetItemText(source, guiGridListGetSelectedItem(source)) == "" ) then return end
	presets_LoadPreset()
end

function emergency_preset_window_exit( exit )
	if exit == "true" then
		guiSetText(stickers_save_load_editbox, "")
		guiSetVisible(stickers_save_load_window, false)
		guiSetEnabled(stickers_save_info_window, true)
		guiSetEnabled(stickers_settings_window, true)
		guiSetEnabled(stickers_display_window, true)
		refresh_saved_presets("false")
		return
	end
end

function presets_SavePreset( )
	if #temporary_gui_stickers == 0 then
		outputChatBox("You don't have any stickers placed!")
		return
	end
	if guiGetText(stickers_save_load_editbox) == "" then
		outputChatBox("Preset name is empty!")
		return
	end
	local vehicle = getPedOccupiedVehicle(localPlayer)
	if not vehicle then
		outputChatBox("Not in vehicle!")
		emergency_preset_window_exit( "true" )
		return
	end
	local preset
	local preset_file = xmlLoadFile("presets/presets.xml")
	local presets_table = xmlNodeGetChildren( preset_file )
	for i,node in pairs(presets_table) do
		local node_name = xmlNodeGetAttribute( node, "name" )
		if node_name == guiGetText(stickers_save_load_editbox) then
			xmlDestroyNode(node)										--	!!!		TEMPORARY SOLUTION !!!
			break
		end
	end
	-- outputChatBox(tostring(preset))
	if not preset then
		preset = xmlCreateChild( preset_file, "preset" )
		xmlNodeSetAttribute( preset, "name", guiGetText(stickers_save_load_editbox) )
	end
	for id,sticker in pairs(targets[ createdStickers[vehicle] ]) do
		local x = sticker['x']
		local y = sticker['y']
		local scaleX = sticker['scaleX']
        local scaleY = sticker['scaleY']
		local model = sticker['model']
		local rot = sticker['rotation']
        local r = sticker['r']
        local g = sticker['g']
        local b = sticker['b']
		local preset_sticker = xmlCreateChild(preset, "sticker")
		xmlNodeSetAttribute( preset_sticker, "id", tostring(id) )
		xmlNodeSetAttribute( preset_sticker, "x", tostring(x) )
		xmlNodeSetAttribute( preset_sticker, "y", tostring(y) )
		xmlNodeSetAttribute( preset_sticker, "scaleX", tostring(scaleX) )
        xmlNodeSetAttribute( preset_sticker, "scaleY", tostring(scaleY) )
		xmlNodeSetAttribute( preset_sticker, "model", model )
		xmlNodeSetAttribute( preset_sticker, "rotation", tostring(rot) )
        xmlNodeSetAttribute( preset_sticker, "r", tostring(r) )
        xmlNodeSetAttribute( preset_sticker, "g", tostring(g) )
        xmlNodeSetAttribute( preset_sticker, "b", tostring(b) )
	end
	xmlSaveFile(preset_file)
	xmlUnloadFile(preset_file)
	outputChatBox('Preset named "'..guiGetText(stickers_save_load_editbox)..'" has been saved', 25, 255, 25)
	emergency_preset_window_exit( "true" )
end

function presets_LoadPreset( )
	local preset_name = guiGetText(stickers_save_load_editbox)
	if ( preset_name == "" ) then
		outputChatBox("Preset name not specified")
		return
	end
	local preset_file = xmlLoadFile("presets/presets.xml")
	local presets_table = xmlNodeGetChildren(preset_file)
	for i, node in pairs(presets_table) do
		local preset_name_from_table = xmlNodeGetAttribute(node, "name")
		if preset_name_from_table == preset_name then
			local vehicle = getPedOccupiedVehicle(localPlayer)
			if not vehicle then outputChatBox("Not in vehicle") return end
			--Removing stickers from display
			for i=1, #temporary_gui_stickers_btn do
        		removeEventHandler( "onClientGUIClick", temporary_gui_stickers_btn[i], gui_select_created_sticker )
        		destroyElement(temporary_gui_stickers_btn[i])
        		destroyElement(temporary_gui_stickers[i])
    		end
    		for id=#temporary_gui_stickers_btn,1,-1 do
				-- outputChatBox(id)
				triggerServerEvent("gui_onRemoveSticker", getLocalPlayer(), getLocalPlayer(), id)
			end
    		temporary_gui_stickers = {}
    		temporary_gui_stickers_btn = {}
    		-----------------------------------
    		local sticker_table = xmlNodeGetChildren(node)
    		for _,sticker in pairs(sticker_table) do
				local id = xmlNodeGetAttribute(sticker, "id")
				local x = xmlNodeGetAttribute(sticker, "x")
				local y = xmlNodeGetAttribute(sticker, "y")
				local scaleX = xmlNodeGetAttribute(sticker, "scaleX") or xmlNodeGetAttribute(sticker, "scale")
                local scaleY = xmlNodeGetAttribute(sticker, "scaleY") or xmlNodeGetAttribute(sticker, "scale")
				local model = xmlNodeGetAttribute(sticker, "model")
				local rot = xmlNodeGetAttribute(sticker, "rotation")
                local r = xmlNodeGetAttribute(sticker, "r") or 255
                local g = xmlNodeGetAttribute(sticker, "g") or 255
                local b = xmlNodeGetAttribute(sticker, "b") or 255
				triggerServerEvent( "gui_addSticker_toServer", getLocalPlayer(), getLocalPlayer(), tonumber(x), tonumber(y), tonumber(scaleX), tonumber(scaleY), model, tonumber(rot), tonumber(r), tonumber(g), tonumber(b) )
				triggerServerEvent( "onSynchroStickers", getLocalPlayer(), vehicle, tonumber(x), tonumber(y), tonumber(scaleX), tonumber(scaleY), model, tonumber(rot), tonumber(r), tonumber(g), tonumber(b) )
				--Add Sticker to display
				temporary_gui_stickers_btn[tonumber(id)] = guiCreateButton(0, 0.02+(0.27*(tonumber(id-1))), 0.8, 0.265, "", true, stickers_display_scroll)
    			temporary_gui_stickers[tonumber(id)] = guiCreateStaticImage(0, 0.02+(0.27*(tonumber(id-1))), 0.8, 0.265, model, true, stickers_display_scroll)
    			guiSetProperty( temporary_gui_stickers[tonumber(id)], "Disabled", "True" )
    			guiSetProperty( temporary_gui_stickers[tonumber(id)], "AlwaysOnTop", "True" )
    			addEventHandler( "onClientGUIClick", temporary_gui_stickers_btn[tonumber(id)], gui_select_created_sticker, false )
    			-------------------------
    		end
    	end
    end
    emergency_preset_window_exit( "true" )
end

function editing_button_toggle( )
    if ( source == stickers_edit_apply_btn ) then
        change_editing( "apply" )
        outputChatBox("Sticker id "..current_selected_sticker.." has been edited", 255, 255, 25)
        guiSetEnabled( stickers_settings_window, true )

        guiSetEnabled(stickers_edit_btn, false)
        guiSetEnabled(stickers_remove_btn, false)
        guiSetEnabled(stickers_add_btn, true)
        guiSetEnabled(stickers_exit_btn, true)

        guiSetEnabled( stickers_display_window, true )
        guiSetVisible( stickers_edit_window, false )

        guiSetEnabled(stickers_save_info_window, true)

        current_edit_mode = nil
        current_selected_sticker = nil
    end
    if ( source == stickers_edit_btn ) then
        change_editing( "edit", current_selected_sticker, "pos" )
        guiSetEnabled( stickers_settings_window, false )
        guiSetEnabled( stickers_save_info_window, false )
    end
end

function toggle_main_windows( enable )
    if enable == true then
        guiSetVisible(stickers_settings_window, true)
        guiSetVisible(stickers_display_window, true)
        guiSetVisible(stickers_save_info_window, true)
        toggleAllControls(false)
        showCursor(true)
        addEventHandler( "onClientRender", root, check_cursor )
    end
    if enable == false then
        guiSetVisible(stickers_settings_window, false)
        guiSetVisible(stickers_display_window, false)
        guiSetVisible(stickers_save_info_window, false)
        toggleAllControls(true)
        showCursor(false)
        removeEventHandler( "onClientRender", root, check_cursor )
    end
end

function check_bind( )
    if getKeyState("lctrl") then
    	if not isGUIReadyToOpen then outputChatBox("Sticker panel is loading, please wait") return end
        if guiGetVisible(stickers_settings_window) then return end
        local vehicle = getPedOccupiedVehicle(getLocalPlayer())
        local seat = getPedOccupiedVehicleSeat(getLocalPlayer())
        if vehicle then
        	if seat ~= 0 then return end
            if not availableVehicles[getElementModel(vehicle)] then outputChatBox("Stickers aren't available on this vehicle!") return end
            toggle_main_windows( true )
        else
            outputChatBox("Not in a vehicle!")
        end
    end
end
bindKey( "e", "down", check_bind )

function check_cursor( )
    if getKeyState("mouse2") then
        showCursor(false)
    end
    if not getKeyState("mouse2") then
        if not isCursorShowing() then
            showCursor(true)
        end
    end
end

function gui_loadStickers_enterVehicle( player, seat )
    if player ~= localPlayer then return end
    -- outputChatBox(tostring(seat))
    if seat ~= 0 then return end
    if not isGUIReadyToOpen then return end
    local vehicle = source
    local stickers = targets[ createdStickers[vehicle] ]
    if not stickers then return end
    for i=1, #stickers do
        local sticker = stickers[i]
        -- outputChatBox(tostring(sticker['model']))
        temporary_gui_stickers[i] = guiCreateStaticImage(0, 0.02+(0.27*(i-1)), 0.8, 0.265, sticker['model'], true, stickers_display_scroll)
        temporary_gui_stickers_btn[i] = guiCreateButton( 0, 0.02+(0.27*(i-1)), 0.8, 0.265, "", true, stickers_display_scroll )
        guiSetProperty( temporary_gui_stickers[i], "Disabled", "True" )
        guiSetProperty( temporary_gui_stickers[i], "AlwaysOnTop", "True" )
        -- temporary_gui_sticker_ids[i] = guiCreateCheckBox(0.05, 0.03+(0.27*(i-1)), 0.3, 0.1, "", false, true, stickers_display_scroll)
        addEventHandler( "onClientGUIClick", temporary_gui_stickers_btn[i], gui_select_created_sticker, false )
    end
end
addEventHandler( "onClientVehicleEnter", root, gui_loadStickers_enterVehicle )

function gui_loadStickers_exitVehicle( player, seat )
    if player ~= localPlayer then return end
    local vehicle = source
    for i=1, #temporary_gui_stickers_btn do
        removeEventHandler( "onClientGUIClick", temporary_gui_stickers_btn[i], gui_select_created_sticker )
        destroyElement(temporary_gui_stickers_btn[i])
        destroyElement(temporary_gui_stickers[i])
    end
    -- for i=1, #temporary_gui_sticker_ids do
    --     destroyElement(temporary_gui_sticker_ids[i])
    -- end
    temporary_gui_stickers = {}
    temporary_gui_stickers_btn = {}
    -- temporary_gui_sticker_ids = {}
end
addEventHandler( "onClientVehicleExit", root, gui_loadStickers_exitVehicle )

function gui_addSticker( )
    guiSetVisible( stickers_select_window, true )
    guiSetEnabled( stickers_settings_window, false )
    guiSetEnabled( stickers_display_window, false )
end

function gui_editSticker( )
    guiSetVisible( stickers_edit_window, true )
    guiSetEnabled( stickers_settings_window, false )
end

function gui_editMode( )
    if source == stickers_edit_pos_btn then
        change_editing( "edit" )
        change_editing( "edit", current_selected_sticker, "pos" )
    end
    if source == stickers_edit_scale_btn then
        change_editing( "edit" )
        change_editing( "edit", current_selected_sticker, "scale" )
    end
    if source == stickers_edit_rot_btn then
        change_editing( "edit" )
        change_editing( "edit", current_selected_sticker, "rot" )
    end
    if source == stickers_edit_color_btn then
        -- change_editing( "edit" )
        change_editing( "edit", current_selected_sticker, "color" )
        guiSetEnabled(stickers_edit_window, false)
    end
end

function gui_AcceptColor( )
    -- outputChatBox("chuj")
    guiSetEnabled(stickers_edit_window, true)
end
addEventHandler("onColorPickerOK_btn", root, gui_AcceptColor)

function gui_removeSticker( )
    local player = localPlayer
    triggerServerEvent("gui_onRemoveSticker", root, player, current_selected_sticker)
    guiSetEnabled( stickers_settings_window, true )

    guiSetEnabled(stickers_edit_btn, false)
    guiSetEnabled(stickers_remove_btn, false)
    guiSetEnabled(stickers_add_btn, true)
    guiSetEnabled(stickers_exit_btn, true)

    guiSetEnabled( stickers_display_window, true )
    guiSetVisible( stickers_edit_window, false )

    local vehicle = getPedOccupiedVehicle( player )
    if vehicle then

        local id = current_selected_sticker

        local stickers = targets[ createdStickers[vehicle] ]
        if not stickers then return end
        if ( (tonumber(id) > #stickers) or (tonumber(id) < 1) ) then
            outputChatBox("Chosen sticker ID doesn't exist", 255, 25, 25)
            return
        end
        if ( tonumber(id) ~= #stickers ) then
            for i=1, #temporary_gui_stickers_btn do
                removeEventHandler( "onClientGUIClick", temporary_gui_stickers_btn[i], gui_select_created_sticker )
                destroyElement(temporary_gui_stickers_btn[i])
                destroyElement(temporary_gui_stickers[i])
            end

            temporary_gui_stickers = {}
            temporary_gui_stickers_btn = {}

            if not stickers then return end
            setTimer( function()
                for i=1, #stickers do
                    local sticker = stickers[i]
                    temporary_gui_stickers[i] = guiCreateStaticImage(0, 0.02+(0.27*(i-1)), 0.8, 0.265, sticker['model'], true, stickers_display_scroll)
                    temporary_gui_stickers_btn[i] = guiCreateButton( 0, 0.02+(0.27*(i-1)), 0.8, 0.265, "", true, stickers_display_scroll )
                    guiSetProperty( temporary_gui_stickers[i], "Disabled", "True" )
                    guiSetProperty( temporary_gui_stickers[i], "AlwaysOnTop", "True" )
                    addEventHandler( "onClientGUIClick", temporary_gui_stickers_btn[i], gui_select_created_sticker, false )
                end
            end, 100, 1 )
        --     for i = id, #temporary_gui_stickers do
        --         outputChatBox(i)
        --         if not temporary_gui_stickers[i+1] then outputChatBox("break") break end

        --         local x, y = guiGetPosition(temporary_gui_stickers[i], true)
        --         local x_b, y_b = guiGetPosition(temporary_gui_stickers_btn[i], true)

        --         guiSetPosition(temporary_gui_stickers[i+1], x, y, true)
        --         guiSetPosition(temporary_gui_stickers_btn[i+1], x_b, y_b, true)

        --         if i == id then
        --             destroyElement(temporary_gui_stickers_btn[current_selected_sticker])
        --             destroyElement(temporary_gui_stickers[current_selected_sticker])
        --         end

        --         temporary_gui_stickers[i] = nil
        --         temporary_gui_stickers[i] = temporary_gui_stickers[i+1]
        --         temporary_gui_stickers_btn[i] = nil
        --         temporary_gui_stickers_btn[i] = temporary_gui_stickers_btn[i+1]
        --     end
            outputChatBox("Sticker id "..id.." has been destroyed", 255, 25, 25)
            current_selected_sticker = nil
        --     return
        -- --     outputChatBox("Only the last placed sticker can be removed", 255, 25, 25)
            return
        end
        outputChatBox("Sticker id "..id.." has been destroyed", 255, 25, 25)
        destroyElement(temporary_gui_stickers_btn[current_selected_sticker])
        destroyElement(temporary_gui_stickers[current_selected_sticker])
        temporary_gui_stickers_btn[current_selected_sticker] = nil
        temporary_gui_stickers[current_selected_sticker] = nil

        current_selected_sticker = nil
    end
end

function gui_exitWindows( )
    toggle_main_windows( false )
end

function gui_SelectSticker( )
    local index = {}
    for k,v in ipairs(stickers_select_btn) do
        index[v] = k
    end
    -- outputChatBox(tostring(index[source]))
    triggerServerEvent( "gui_addSticker_toServer", getLocalPlayer(), getLocalPlayer(), 400, 400, 1, 1, "stickers/"..tostring(index[source])..".png", 0, 255, 255, 255 )
    local vehicle = getPedOccupiedVehicle( getLocalPlayer() )
    triggerServerEvent( "onSynchroStickers", getLocalPlayer(), vehicle, 400, 400, 1, 1, "stickers/"..tostring(index[source])..".png", 0, 255, 255, 255 )
    guiSetVisible( stickers_select_window, false )
    guiSetEnabled( stickers_settings_window, true )
    guiSetEnabled( stickers_display_window, true )
    local i = #temporary_gui_stickers_btn
    outputChatBox("Sticker id "..tostring(i+1).." has been created", 25, 255, 25)
    temporary_gui_stickers_btn[i+1] = guiCreateButton(0, 0.02+(0.27*(i)), 0.8, 0.265, "", true, stickers_display_scroll)
    temporary_gui_stickers[i+1] = guiCreateStaticImage(0, 0.02+(0.27*(i)), 0.8, 0.265, "stickers/"..tostring(index[source])..".png", true, stickers_display_scroll)
    guiSetProperty( temporary_gui_stickers[i+1], "Disabled", "True" )
    guiSetProperty( temporary_gui_stickers[i+1], "AlwaysOnTop", "True" )
    -- temporary_gui_sticker_ids[i+1] = guiCreateCheckBox(0.05, 0.03+(0.27*(i)), 0.3, 0.1, "", false, true, stickers_display_scroll)
    addEventHandler( "onClientGUIClick", temporary_gui_stickers_btn[i+1], gui_select_created_sticker, false )
end

function gui_select_created_sticker( )
    guiSetEnabled(stickers_display_window, false)
    guiSetEnabled(stickers_add_btn, false)
    guiSetEnabled(stickers_exit_btn, false)
    guiSetEnabled(stickers_edit_btn, true)
    guiSetEnabled(stickers_remove_btn, true)
    local index = {}
    for k,v in ipairs(temporary_gui_stickers_btn) do
        index[v] = k
    end
    -- outputChatBox("Selected: "..tostring(index[source]))
    current_selected_sticker = index[source]
end