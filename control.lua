if not defines then
  require "defines"
  defines.trainstate = defines.train_state
end

script.on_event(defines.events.on_tick, function(event)
	for i, player in pairs(game.players) do
		if bPlayerIneCar(player) then
            local tractor = player.character.vehicle
            local position = player.character.vehicle.position
            local width = 10
            local height = 5
            local relative_box = relative_box(position, player.character.vehicle.orientation, width, height)
            local tree_area = {{relative_box.x_a + position.x, relative_box.y_a + position.y}, {relative_box.x_b + position.x, relative_box.y_b + position.y}}
            for key, entity in pairs(tractor.surface.find_entities(tree_area)) do
                if(entity.type == "tree") then entity.destroy() player.character.vehicle.get_inventory(2).insert{name="raw-wood", count=4} end
            end
			--player.character.vehicle.get_inventory(2).insert{name="raw-wood", count=1}
		end
	end
end)

function bPlayerIneCar(player)
--	if player.character and  player.vehicle and player.vehicle.name == "ghost-e-car" then 
--  if player.character and  player.character.vehicle and player.character.vehicle.name == "ghost-e-car" then 	return true end
	if player ~= nil and player.connected then -- need a "player.connected" from 0.13
		if player.character
				and player.character.vehicle
				and player.character.vehicle.name == "tractor" then
			return true
		end
	end
return false
end

function relative_box(position, orientation, width, height)
    local w_r = width / 2
    local h_r = height / 2
    local r_a = (w_r^2 + (3 * h_r)^2)^(1 / 2)
    local r_b = (w_r^2 + h_r^2)^(1 / 2)
    local o_a = 360 * orientation - math.atan(w_r / (3 * h_r))
    local o_b = 360 * orientation - math.atan(w_r / h_r)
    local box = {x_a = r_a * math.sin(math.rad(360 * o_a)), x_b = r_b * math.sin(math.rad(360 * o_b)), y_a = r_a * math.cos(math.rad(360 * o_a)), y_b = r_b * math.cos(math.rad(360 * o_b))}
    return box
end

