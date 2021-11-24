local createdStickers_s = { }

-- local targets_s = { }

outputDebugString("start")

function addSticker_s( player, x, y, scaleX, scaleY, model, rotation, r, g, b )
	-- if player == source then outputChatBox("chuj") end
	-- outputChatBox("_add_server1")
	x = tonumber(x) or 400
	y = tonumber(y) or 400
	scaleX = tonumber(scaleX) or 1
	scaleY = tonumber(scaleY) or 1
	model = model or "stickers/15.png"
	rotation = tonumber(rotation) or 0
	r = tonumber(r) or 255
	g = tonumber(g) or 255
	b = tonumber(b) or 255
	triggerClientEvent("onAddSticker", player, player, x, y, scaleX, scaleY, model, rotation, r, g, b)
end
-- addCommandHandler("s", addSticker_s)
addEvent("gui_addSticker_toServer", true)
addEventHandler("gui_addSticker_toServer", root, addSticker_s)

function removeSticker_s( player, id )
	triggerClientEvent("onRemoveSticker", player, player, id)
	if not id then
		-- outputChatBox("Sticker ID not specified")
		return
	end
	local vehicle = getPedOccupiedVehicle( player )
	if vehicle then

		local stickers = createdStickers_s[vehicle]
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
			return
			-- outputChatBox("Only the last placed sticker can be removed", 255, 25, 25)
			-- return
		end
		for j=1,#stickers do
			-- outputChatBox(j)
			-- local id_s = i
			if ( j == tonumber(id) ) then
				-- outputChatBox("[command-driven] Sticker id "..j.." has been destroyed", 255, 25, 25)
				stickers[j] = nil
				break
			end
		end
	end
end
-- addCommandHandler("rs", removeSticker_s)
addEvent("gui_onRemoveSticker", true)
addEventHandler("gui_onRemoveSticker", root, removeSticker_s)


function editSticker_s( player, cName, id, x, y, scaleX, scaleY, model, rotation, r, g, b )
	triggerClientEvent("onEditSticker", player, player, id, x, y, scaleX, scaleY, model, rotation, r, g, b)
	if not id then
		return
	end
	local vehicle = getPedOccupiedVehicle( player )
	if vehicle then
		-- local stickers = { }
		local stickers = createdStickers_s[vehicle]
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
		stickers = createdStickers_s[vehicle]
		-- outputChatBox("Sticker id "..id.." has been edited")
	end
end
-- addCommandHandler("es", editSticker_s)
addEvent("onKeyEditMode", true)
addEventHandler("onKeyEditMode", root, editSticker_s)

function synchroStickers( vehicle, x, y, scaleX, scaleY, model, rotation, r, g, b )
	-- outputChatBox("_add_server_synchro")
	local sticker = {
    	['x'] = tonumber(x) or 400,
    	['y'] = tonumber(y) or 400,
    	['width'] = 512,
    	['height'] = 512,
    	['scaleX'] = tonumber(scaleX) or 1,
    	['scaleY'] = tonumber(scaleY) or 1,
    	['model'] = model or "stickers/15.png",
    	['rotation'] = tonumber(rotation) or 0,
    	['r'] = tonumber(r) or 255,
    	['g'] = tonumber(g) or 255,
    	['b'] = tonumber(b) or 255
		}

	if not createdStickers_s[vehicle] then
        	local stickers = { }
			createdStickers_s[vehicle] = stickers
			-- targets_s[target] = stickers
			stickers[#stickers+1] = sticker
		else
			local stickers = { }
			-- stickers = targets_s[ createdStickers_s[vehicle] ]
			stickers = createdStickers_s[vehicle]
			stickers[#stickers+1] = sticker

		end

end
addEvent("onSynchroStickers", true)
addEventHandler("onSynchroStickers", root, synchroStickers)


function loginRefreshStickers( )
	-- outputChatBox("_login")
	for vehicle, target in pairs(createdStickers_s) do
		-- outputChatBox(tostring(vehicle).." "..tostring(target))
		-- local stickers = targets_s[target]
		local stickers = createdStickers_s[vehicle]
		for i=1, #stickers do
			local sticker = stickers[i]
			local x = sticker.x
			local y = sticker.y
			local scaleX = sticker.scaleX
			local scaleY = sticker.scaleY
			local model = sticker.model
			local rot = sticker.rotation
			local r = sticker.r
			local g = sticker.g
			local b = sticker.b
			-- outputChatBox(tostring(x).." "..tostring(y).." "..tostring(scale).." "..tostring(model).." "..tostring(rot))
			triggerClientEvent("onPlayerLogin_stickerSynchro", source, source, x, y, scaleX, scaleY, model, rot, r, g, b, vehicle)
		end
	end
end
addEventHandler("onPlayerLogin", root, loginRefreshStickers)


-- function keyPress_s( player, cName, id, mode )
-- 	triggerClientEvent( "on_es_c", player, player, id, mode )
-- end
-- addCommandHandler("es_c", keyPress_s)
