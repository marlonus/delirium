-- Clear the player inventory
local function clear_inv(e)
local player = game.players[e.player_index]
player.clear_items_inside()
end

-- Disable the crash site and skip cutscene
local function disable_crash()
-- If we're in freeplay, disable the crash site

if remote.interfaces["freeplay"] then
remote.call("freeplay", "set_disable_crashsite", true)
end
end

script.on_event(defines.events.on_player_created, clear_inv) -- on player created
script.on_init(disable_crash) -- on mod init

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	local character = player.character or player.cutscene_character
    player.clear_items_inside()
	character.insert{name = "burner-mining-drill", count = 8}
    character.insert{name = "stone-furnace", count = 8}
    player.force.manual_mining_speed_modifier=2
    player.character.character_running_speed_modifier=1.5
end)