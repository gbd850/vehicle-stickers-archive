-- omfguncompilable = {{{{{{},{},{},{}}}}}};
-- omfguncompilable2 = {{{{{{},{},{},{}}}}}};

local isEdited = false

createdStickers = { }

targets = { }

local blacklist = { }

local shaders = { }

local textures = { }
	--	https://forum.mtasa.com/topic/114585-error-loading-image-dxdrawimage/ for answer on why this table and rhat loop in line 405 and this if in line 482

-- local stickers = { }

-- addEventHandler("onClientResourceStart", resourceRoot,
--     function()
--         vehRepltxd = engineLoadTXD( "veh/infernus.txd" )
--         vehRepldff = engineLoadDFF( "veh/infernus.dff", 0 )
--         engineImportTXD( vehRepltxd, 411 )
--         engineReplaceModel( vehRepldff, 411 )

--         -- myShader,tecName = dxCreateShader( "clientshader.fx" )
--         -- -- myImage = myRenderTarget --[[dxCreateTexture( "pic.png" )--]]
--         -- if myShader then
--         --     -- dxSetShaderValue( myShader, "Tex0", myImage )
--         --     -- dxSetShaderValue( myShader, "PositionOfCheese", 0, 0, 0 )
--         --     outputChatBox( "Shader using techinque " .. tecName )
--         -- else
--         --     outputChatBox( "Problem - use: debugscript 3" )
--         -- end
--     end
-- )

-- addEventHandler( "onClientRender", root,
--     function()
--         if myShader then
--              dxDrawImage( 200, 300, 1257, 111, myShader--[[, 0, 0, 0, tocolor(255,255,255)--]] )
--         end
--    end
-- )

-- addCommandHandler("rem", 
--     function ( )
--         engineRemoveShaderFromWorldTexture( myShader, "bodymap" )
--     end
-- )


-- addEventHandler("onClientVehicleEnter", root, 
-- 	function( )
-- 		addEventHandler("onClientRender", root, displayCurrentRender)
-- 	end
-- )

-- addEventHandler("onClientVehicleExit", root,
-- 	function( )
-- 		removeEventHandler("onClientRender", root, displayCurrentRender)
-- 	end
-- )

    function renderStickers()
    	local reloadCheck = false
    	for _, target in pairs( createdStickers ) do
    		dxSetRenderTarget(target, true)
    		local sticker_s = targets[target]
    		if not sticker_s then return end
    		for i = 1, #sticker_s do
    			local sticker = sticker_s[i]
    			local x = sticker['x']
    			local y = sticker['y']
    			local width = sticker['width']
    			local height = sticker['height']
    			local scaleX = sticker['scaleX']
    			local scaleY = sticker['scaleY']
    			local model = sticker['model']
    			local texture = sticker['texture']
    			local rot = sticker['rotation']
    			local r = sticker['r']
    			local g = sticker['g']
    			local b = sticker['b']
    			if not blacklist[model] then
    			-- outputChatBox("Target: "..tostring(target).." x: "..tostring(x).." y: "..tostring(y).." scale: "..tostring(scale).." model: "..tostring(model).." rot: "..tostring(rot))
    				if not dxDrawImage(x-((width/2)*(scaleX-1)), y-((height/2)*(scaleY-1)), width*scaleX, height*scaleY, texture, rot, 0, 0, tocolor(r, g, b, 255)) then
    					blacklist[model] = true
    					reloadCheck = true
    					-- outputChatBox(model.."  "..tostring(blacklist[model]))
    					-- outputChatBox("Some textures did not load correctly. Use debugscript 3 for more details")
    				end
    			end
        		-- dxDrawImage(x-((width/2)*(scaleX-1)), y-((height/2)*(scaleY-1)), width*scaleX, height*scaleY, model, rot, 0, 0, tocolor(r, g, b, 255))
        	end
        	dxSetRenderTarget()
        end
        if reloadCheck then
        	outputChatBox("Some textures did not load correctly. Use debugscript 3 for more details")
        	renderStickers()
        end
    end
-- addEventHandler( "onClientRender", root, renderStickers)
addEventHandler( "onClientRestore", root, renderStickers)

-- function displayCurrentRender( )
-- 	local vehicle = getPedOccupiedVehicle(getLocalPlayer())
-- 	if vehicle and createdStickers[vehicle] then
-- 		dxDrawImage( 220,  40,  640, 640, createdStickers[vehicle] )
-- 		-- outputChatBox("Displaying target id "..tostring(createdStickers[vehicle]))
-- 	else
-- 		cancelEvent()
-- 	end
-- end


function addSticker(player, x, y, scaleX, scaleY, model, rotation, r, g, b)
	local vehicle = getPedOccupiedVehicle( player )
	-- if vehicle_s then
	-- 	vehicle = vehicle_s
	-- end
	if vehicle then

		local sticker = {
    	['x'] = tonumber(x) or 400,
    	['y'] = tonumber(y) or 400,
    	['width'] = 512,
    	['height'] = 512,
    	['scaleX'] = tonumber(scaleX) or 1,
    	['scaleY'] = tonumber(scaleY) or 1,
    	['model'] = model or "stickers/15.png",
    	['texture'] = nil,
    	['rotation'] = tonumber(rotation) or 0,
    	['r'] = tonumber(r) or 255,
    	['g'] = tonumber(g) or 255,
    	['b'] = tonumber(b) or 255
		}

		if not textures[model] then
			textures[model] = dxCreateTexture(model)
		end
		sticker.texture = textures[model]

        if not createdStickers[vehicle] then
        	local myShader,tecName = dxCreateShader( "clientshader.fx" )
        	if myShader then
        	    -- outputChatBox( "Shader using techinque " .. tecName )
        	    shaders[vehicle] = myShader
        	else
        	    outputChatBox( "Problem - use: debugscript 3" )
        	    return
        	end
        	local stickers = { }
			local target = dxCreateRenderTarget( 1280, 1280, true ) -- true for transparency
			if not target then
				outputChatBox("Problem - failed to draw sticker - use: debugscript 3")
				destroyElement(shaders[vehicle])
				shaders[vehicle] = nil
				return
			end

			createdStickers[vehicle] = target
			targets[target] = stickers
			stickers[#stickers+1] = sticker
			-- outputChatBox("Sticker id "..tostring(#stickers).." has been created", 25, 255, 25)

			-- triggerServerEvent("onSynchroStickers", getLocalPlayer(), vehicle, x, y, scale, model, rotation)

			dxSetShaderValue( myShader, "Tex0", target )
			engineApplyShaderToWorldTexture( myShader, "bodymap", vehicle ) --bodymap
		else
			local stickers = { }
			stickers = targets[ createdStickers[vehicle] ]
			stickers[#stickers+1] = sticker
			-- outputChatBox("Sticker id "..tostring(#stickers).." has been created", 25, 255, 25)

			-- triggerServerEvent("onSynchroStickers", getLocalPlayer(), vehicle, x, y, scale, model, rotation)
		end
		renderStickers()
	else
		outputChatBox("Not in a vehicle")
	end
end
addEvent("onAddSticker", true)
addEventHandler("onAddSticker", root, addSticker)


function addSticker_onLogin( player, x, y, scaleX, scaleY, model, rotation, r, g, b, vehicle_s )
	local vehicle = getPedOccupiedVehicle( player )
	if vehicle_s then
		vehicle = vehicle_s
		-- outputChatBox("veh_s")
	end
	if vehicle then

		local sticker = {
    	['x'] = tonumber(x) or 400,
    	['y'] = tonumber(y) or 400,
    	['width'] = 512,
    	['height'] = 512,
    	['scaleX'] = tonumber(scaleX) or 1,
    	['scaleY'] = tonumber(scaleY) or 1,
    	['model'] = model or "stickers/15.png",
    	['texture'] = nil,
    	['rotation'] = tonumber(rotation) or 0,
    	['r'] = tonumber(r) or 255,
    	['g'] = tonumber(g) or 255,
    	['b'] = tonumber(b) or 255
		}

		if not textures[model] then
			textures[model] = dxCreateTexture(model)
		end
		sticker.texture = textures[model]

        if not createdStickers[vehicle] then
        	local myShader,tecName = dxCreateShader( "clientshader.fx" )
        	if myShader then
        	    -- outputChatBox( "Shader using techinque " .. tecName )
        	else
        	    outputChatBox( "Problem - use: debugscript 3" )
        	    return
        	end
        	local stickers = { }
			local target = dxCreateRenderTarget( 1280, 1280, true ) -- true for transparency
			if not target then
				outputChatBox("Problem - failed to draw sticker - use: debugscript 3")
				return
			end

			createdStickers[vehicle] = target
			targets[target] = stickers
			stickers[#stickers+1] = sticker
			-- outputChatBox("Sticker id "..tostring(#stickers).." has been created", 25, 255, 25)

			-- triggerServerEvent("onSynchroStickers", root, vehicle, x, y, scale, model, rotation)

			dxSetShaderValue( myShader, "Tex0", target )
			engineApplyShaderToWorldTexture( myShader, "bodymap", vehicle ) --bodymap
		else
			local stickers = { }
			stickers = targets[ createdStickers[vehicle] ]
			stickers[#stickers+1] = sticker
			-- outputChatBox("Sticker id "..tostring(#stickers).." has been created", 25, 255, 25)

			-- triggerServerEvent("onSynchroStickers", root, vehicle, x, y, scale, model, rotation)
		end
		renderStickers()
	else
		-- outputChatBox("Not in a vehicle")
		-- return
	end
end

--Server player login synchro
addEvent("onPlayerLogin_stickerSynchro", true)
addEventHandler("onPlayerLogin_stickerSynchro", localPlayer, addSticker_onLogin, false)

-- addEventHandler("onClientResourceStop", root,
-- function()
-- 	local stickers = getElementsByType("sticker")
-- 	for i=1,#stickers do
-- 		outputChatBox("Sticker id "..getElementData(stickers[i], "id").." has been destroyed", 255, 25, 25)
-- 		destroyElement(stickers[i])
-- 	end
-- end
-- )
addEventHandler("onClientResourceStop", resourceRoot,
function()
	toggleAllControls(true)
    showCursor(false)
	for vehicle, target in pairs(createdStickers) do
		-- outputChatBox(tostring(getElementModel(vehicle)).." "..tostring(target))
		destroyElement(target)
		destroyElement(shaders[vehicle])
	end
end
)
function destroyRenderTarget()
	if getElementType(source) == "vehicle" then
		if createdStickers[source] then
			-- outputChatBox("destroy stuff")
			targets[createdStickers[source]] = nil
			destroyElement(createdStickers[source])
			createdStickers[source] = nil
			renderStickers()
			engineRemoveShaderFromWorldTexture(shaders[source], "bodymap", source)
			destroyElement(shaders[source])
			shaders[source] = nil
			collectgarbage()
		end
	end
end
addEventHandler("onClientElementDestroy", root, destroyRenderTarget)
addEventHandler("onClientVehicleExplode", root, destroyRenderTarget)

function removeSticker( player, id )
	if not id then
		outputChatBox("Sticker ID not specified")
		return
	end
	local vehicle = getPedOccupiedVehicle( player )
	if vehicle then

		local stickers = targets[ createdStickers[vehicle] ]
		if not stickers then return end
		if ( (tonumber(id) > #stickers) or (tonumber(id) < 1) ) then
			-- outputChatBox("Chosen sticker ID doesn't exist", 255, 25, 25)
			return
		end
		if ( tonumber(id) ~= #stickers ) then
			for i = id, #stickers do
				stickers[i] = nil
				stickers[i] = stickers[i+1]
			end
			renderStickers()
			return
			-- outputChatBox("Only the last placed sticker can be removed", 255, 25, 25)
			-- return
		end
		-- for j=1,#stickers do
		-- 	-- outputChatBox(j)
		-- 	-- local id_s = i
		-- 	if ( j == tonumber(id) ) then
		-- 		-- outputChatBox("[command-driven] Sticker id "..j.." has been destroyed", 255, 25, 25)
		-- 		stickers[j] = nil
		-- 		break
		-- 	end
		-- end
		stickers[id] = nil
		renderStickers()
	end
end
addEvent("onRemoveSticker", true)
addEventHandler("onRemoveSticker", root, removeSticker)

function insertSticker(player, id, mode)
	if not id then
		outputChatBox("Sticker ID not specified")
		return
	end
	local vehicle = getPedOccupiedVehicle( player )
	if vehicle then

		local stickers = targets[ createdStickers[vehicle] ]
		if not stickers then return end
		if ( (tonumber(id) > #stickers) or (tonumber(id) < 1) ) then
			-- outputChatBox("Chosen sticker ID doesn't exist", 255, 25, 25)
			return
		end
		local sticker = stickers[id]
		local sticker_new = {
    	['x'] = tonumber(sticker.x) or 400,
    	['y'] = tonumber(sticker.y) or 400,
    	['width'] = 512,
    	['height'] = 512,
    	['scaleX'] = tonumber(sticker.scaleX) or 1,
    	['scaleY'] = tonumber(sticker.scaleY) or 1,
    	['model'] = sticker.model or "stickers/15.png",
    	['texture'] = nil,
    	['rotation'] = tonumber(sticker.rotation) or 0,
    	['r'] = tonumber(sticker.r) or 255,
    	['g'] = tonumber(sticker.g) or 255,
    	['b'] = tonumber(sticker.b) or 255
		}
		if not textures[sticker.model] then
			textures[sticker.model] = dxCreateTexture(sticker.model)
		end
		sticker_new.texture = textures[sticker.model]
		sticker_new.y = 767-sticker_new.y
		if mode == "Text" then
			sticker_new.scaleX = -sticker_new.scaleX
		end
		sticker_new.scaleY = -sticker_new.scaleY
		-- outputChatBox(tostring(sticker_new.y))
		table.insert(stickers, id+1, sticker_new)
	end
	renderStickers()
end
addEvent("onInsertSticker", true)
addEventHandler("onInsertSticker", root, insertSticker)

function editSticker( player, id, x, y, scaleX, scaleY, model, rotation, r, g, b )
	if not id then
		-- outputChatBox("Sticker ID not specified")
		return
	end
	local vehicle = getPedOccupiedVehicle( player )
	if vehicle then
		-- local stickers = { }
		local stickers = targets[ createdStickers[vehicle] ]
		local sticker = stickers[tonumber(id)]
		local x = tonumber(x) or sticker['x']
		local y = tonumber(y) or sticker['y']
		local scaleX = tonumber(scaleX) or sticker['scaleX']
		local scaleY = tonumber(scaleY) or sticker['scaleY']
		local model = model or sticker['model']
		local rotation = tonumber(rotation) or sticker['rotation']
		local r = tonumber(r) or sticker['r']
		local g = tonumber(g) or sticker['g']
		local b = tonumber(b) or sticker['b']
		sticker['x'] = x
		sticker['y'] = y
		sticker['scaleX'] = scaleX
		sticker['scaleY'] = scaleY
		sticker['model'] = model
		sticker['rotation'] = rotation
		sticker['r'] = r
		sticker['g'] = g
		sticker['b'] = b
		sticker = stickers[tonumber(id)]
		stickers = targets[ createdStickers[vehicle] ]
		-- outputChatBox("Sticker id "..id.." has been edited", 255, 255, 25)
		renderStickers()
		-- outputChatBox(x.." "..y.." "..model)
	end
end
addEvent("onEditSticker", true)
addEventHandler("onEditSticker", root, editSticker)

addEvent("on_es_c", true)
addEventHandler("on_es_c", root,
	function(id, mode)
		if not id then
			if timer then
				killTimer(timer)
				id_c = nil
				mode_c = nil
				-- local vehicle = getPedOccupiedVehicle(localPlayer)
				-- local stickers = targets[ createdStickers[vehicle] ]
				-- local sticker = stickers[tonumber(id)]
				-- local x = sticker['x']
				-- local y = sticker['y']
				-- local scaleX = sticker['scaleX']
				-- local scaleY = sticker['scaleY']
				-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y, scaleX, scaleY)
				-- checkEditMode()
			end
			return
		end
		if not mode then return end
		if mode == "apply" then -- CHANGE gui.lua ON CALL change_editing TO NOT INCLUDE ID WHEN REVERTING CHANGES
			if timer then
				killTimer(timer)
				id_c = nil
				mode_c = nil
			end
			local vehicle = getPedOccupiedVehicle(localPlayer)
			local stickers = targets[ createdStickers[vehicle] ]
			local sticker = stickers[tonumber(id)]
			local x = sticker['x']
			local y = sticker['y']
			local scaleX = sticker['scaleX']
			local scaleY = sticker['scaleY']
			triggerServerEvent("onKeyEditMode", localPlayer, localPlayer, "es", id, x, y, scaleX, scaleY)
			-- outputChatBox("stop editing")
			return
		end
		-- outputChatBox("chuj")
		-- isEdited = not isEdited
		if mode == "color" then
			edit_ChangeColor(localPlayer, id)
			return
		end
		local id_c = id
		local mode_c = mode
		if not isEdited then
			killTimer(timer)
			id_c = nil
			mode_c = nil
			local vehicle = getPedOccupiedVehicle(localPlayer)
			local stickers = targets[ createdStickers[vehicle] ]
			local sticker = stickers[tonumber(id)]
			local x = sticker['x']
			local y = sticker['y']
			local scaleX = sticker['scaleX']
			local scaleY = sticker['scaleY']
			triggerServerEvent("onKeyEditMode", localPlayer, localPlayer, "es", id, x, y, scaleX, scaleY)
			-- outputChatBox("stop editing edited")
			-- checkEditMode()
			return
		end
		-- checkEditMode()
		local player = localPlayer
		timer = setTimer( keyPress_edit, 10, 0, player, id_c, mode_c )
	end
)

function keyPress_edit( player, id, mode )
	if isEdited then
		local mode_c = mode
		local mult = 2
		local vehicle = getPedOccupiedVehicle(player)
		local stickers = targets[ createdStickers[vehicle] ]
		local sticker = stickers[tonumber(id)]
		local arrow_l = getKeyState("arrow_l")
		local arrow_r = getKeyState("arrow_r")
		local arrow_u = getKeyState("arrow_u")
		local arrow_d = getKeyState("arrow_d")
		local lctrl = getKeyState("lctrl")
		local lalt = getKeyState("lalt")
		if lalt then mult = 0.5 end
		if mode_c == "pos" then
			-- outputChatBox("pos")
			if ( arrow_l ) then
				local x = sticker['x']
				x = x - mult
				editSticker(player, id, x)
				-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x)
			end
			if ( arrow_r ) then
				local x = sticker['x']
				x = x + mult
				editSticker(player, id, x)
				-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x)
			end
			if ( arrow_u ) then
				-- local x = sticker['x']
				local y = sticker['y']
				y = y - mult
				editSticker(player, id, nil, y)
				-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y)
			end
			if ( arrow_d ) then
				-- local x = sticker['x']
				local y = sticker['y']
				y = y + mult
				editSticker(player, id, nil, y)
				-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y)
			end
			return
		end
		if mode_c == "rot" then
			-- outputChatBox("rot")
			if ( arrow_l ) then
				-- local x = sticker['x']
				-- local y = sticker['y']
				-- local scaleX = sticker['scaleX']
				-- local scaleY = sticker['scaleY']
				-- local model = sticker['model']
				local rot = sticker['rotation']
				rot = rot + mult*0.5
				editSticker(player, id, nil, nil, nil, nil, nil, rot)
				-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y, scaleX, scaleY, model, rot)
			end
			if ( arrow_r ) then
				-- local x = sticker['x']
				-- local y = sticker['y']
				-- local scaleX = sticker['scaleX']
				-- local scaleY = sticker['scaleY']
				-- local model = sticker['model']
				local rot = sticker['rotation']
				rot = rot - mult*0.5
				editSticker(player, id, nil, nil, nil, nil, nil, rot)
				-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y, scaleX, scaleY, model, rot)
			end
			if ( arrow_u ) then return end
			if ( arrow_d ) then return end
			return
		end
		if mode_c == "scale" then
			-- outputChatBox("scale")
			if not ( lctrl ) then
				if ( arrow_l ) then return end
				if ( arrow_r ) then return end
				if ( arrow_u ) then
					-- local x = sticker['x']
					-- local y = sticker['y']
					local scaleX = sticker['scaleX']
					local scaleY = sticker['scaleY']
					scaleX = scaleX + mult*0.01
					scaleY = scaleY + mult*0.01
					editSticker(player, id, nil, nil, scaleX, scaleY)
					-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y, scaleX, scaleY)
				end
				if ( arrow_d ) then
					-- local x = sticker['x']
					-- local y = sticker['y']
					local scaleX = sticker['scaleX']
					local scaleY = sticker['scaleY']
					scaleX = scaleX - mult*0.01
					scaleY = scaleY - mult*0.01
					editSticker(player, id, nil, nil, scaleX, scaleY)
					-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y, scaleX, scaleY)
				end
				return
			end
			if ( lctrl ) then
				if ( arrow_l ) then
					-- local x = sticker['x']
					-- local y = sticker['y']
					local scaleX = sticker['scaleX']
					scaleX = scaleX + mult*0.01
					editSticker(player, id, nil, nil, scaleX)
					-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y, scaleX)
				end
				if ( arrow_r ) then
					-- local x = sticker['x']
					-- local y = sticker['y']
					local scaleX = sticker['scaleX']
					scaleX = scaleX - mult*0.01
					editSticker(player, id, nil, nil, scaleX)
					-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y, scaleX)
				end
				if ( arrow_u ) then
					-- local x = sticker['x']
					-- local y = sticker['y']
					-- local scaleX = sticker['scaleX']
					local scaleY = sticker['scaleY']
					scaleY = scaleY + mult*0.01
					editSticker(player, id, nil, nil, nil, scaleY)
					-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y, scaleX, scaleY)
				end
				if ( arrow_d ) then
					-- local x = sticker['x']
					-- local y = sticker['y']
					-- local scaleX = sticker['scaleX']
					local scaleY = sticker['scaleY']
					scaleY = scaleY - mult*0.01
					editSticker(player, id, nil, nil, nil, scaleY)
					-- triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y, scaleX, scaleY)
				end
				return
			end
			return
		end
	end
end

function RGBToHex(red, green, blue, alpha)
	
	-- Make sure RGB values passed to this function are correct
	if( ( red < 0 or red > 255 or green < 0 or green > 255 or blue < 0 or blue > 255 ) or ( alpha and ( alpha < 0 or alpha > 255 ) ) ) then
		return nil
	end

	-- Alpha check
	if alpha then
		return string.format("#%.2X%.2X%.2X%.2X", red, green, blue, alpha)
	else
		return string.format("#%.2X%.2X%.2X", red, green, blue)
	end

end

function edit_ChangeColor( player, id )
	if isEdited then
		local vehicle = getPedOccupiedVehicle(player)
		local stickers = targets[ createdStickers[vehicle] ]
		local sticker = stickers[tonumber(id)]
		local r = sticker['r']
		local g = sticker['g']
		local b = sticker['b']
		local hex = RGBToHex(r,g,b)
		exports.cpicker:openPicker(id, tostring(hex), 'Color')
	end
end

function edit_UpdateColor( id, hex, r, g, b )
	local player = localPlayer

	local vehicle = getPedOccupiedVehicle(player)
	local stickers = targets[ createdStickers[vehicle] ]
	local sticker = stickers[tonumber(id)]

	local x = sticker['x']
	local y = sticker['y']
	local scaleX = sticker['scaleX']
	local scaleY = sticker['scaleY']
	local model = sticker['model']
	local rot = sticker['rotation']

	triggerServerEvent("onKeyEditMode", player, player, "es", id, x, y, scaleX, scaleY, model, rot, r, g, b)
end

addEventHandler( "onColorPickerOK", root, edit_UpdateColor )

-- function checkEditMode( )
-- 	-- if ( getKeyState("lctrl") and getKeyState("e") ) then
-- 	-- 	isEdited = not isEdited
-- 	-- end

-- 	if isEdited then
-- 		toggleAllControls(false)
-- 		-- guiSetInputEnabled(true)
-- 		-- addEventHandler("onClientPreRender", getRootElement(), editingCamera)
-- 		-- addEventHandler("onClientRender", getRootElement(), change_editing)
-- 	else
-- 		toggleAllControls(true)
-- 		-- guiSetInputEnabled(false)
-- 		-- removeEventHandler("onClientPreRender", getRootElement(), editingCamera)
-- 		-- removeEventHandler("onClientRender", getRootElement(), change_editing)
-- 		-- setCameraTarget( getLocalPlayer() )
-- 		-- removeEventHandler("onClientRender", getRootElement(), checkEditMode)
-- 	end
-- end

function change_editing( button, id, mode )
    if ( button == "apply" ) then
        isEdited = false
        -- checkEditMode()
        triggerEvent("on_es_c", root, id, mode)
    end
    if ( button == "edit" ) then
    	isEdited = true
        -- checkEditMode()
        triggerEvent("on_es_c", root, id, mode)
    end
end


-- local rotX, rotY, rotRadius, maxRadius = 0, -math.pi/2, 10, 20 
-- local isCustomCamera = true
-- local cameraTarget = getLocalPlayer() 
-- local sX, sY = guiGetScreenSize() 
  
-- function editingCamera() 
--     if isCustomCamera and isElement(cameraTarget) then 
 
--         local x, y, z = getElementPosition( cameraTarget ) 
--         local cx, cy, cz 
             
--         cx = x + rotRadius * math.sin(rotY) * math.cos(rotX) 
--         cy = y + rotRadius * math.sin(rotY) * math.sin(rotX) 
--         cz = z + rotRadius * math.cos(rotY) 
             
--         local hit, hitX, hitY, hitZ = processLineOfSight(x, y, z, cx, cy, cz, _, false, _, _, _, _, _, _, cameraTarget) 
--         if hit then 
--             cx, cy, cz = hitX, hitY, hitZ 
--         end 
  
--         setCameraMatrix( cx, cy, cz, x, y, z ) 
--     end 
-- end
  
-- addEventHandler("onClientCursorMove", root, 
--     function(cX,cY,aX,aY) 
--         if isCursorShowing() or isMTAWindowActive() then return end 
                 
--         aX = aX - sX/2  
--         aY = aY - sY/2 
  
--         rotX = rotX - aX * 0.0001745
--         rotY = math.min(-0.002, math.max( rotY + aY * 0.0001745, -3.11 ) ) 
         
--     end 
-- ) 
