--
-- Created by IntelliJ IDEA.
-- User: Epix
-- Date: 2016/7/4
-- Time: 19:07
-- To change this template use File | Settings | File Templates.
--

data:extend({
    {
        type = "item",
        name = "long-long-inserter",
        icon = "__Overpowered__/graphics/icons/long-long-inserter.png",
        flags = {"goes-to-quickbar"},
        subgroup = "inserter",
        place_result = "long-long-inserter",
        stack_size = 50
    },

    {
        type = "recipe",
        name = "long-long-inserter",
        enabled = "true",
        ingredients =
        {
            {"electronic-circuit", 2},
            {"iron-plate", 2},
            {"long-handed-inserter", 1}
        },
        result = "long-long-inserter"
    },
    {
        type = "inserter",
        name = "long-long-inserter",
        icon = "__Overpowered__/graphics/icons/long-long-inserter.png",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable =
        {
            hardness = 0.2,
            mining_time = 0.5,
            result = "long-long-inserter"
        },
        max_health = 40,
        corpse = "small-remnants",
        resistances =
        {
            {
                type = "fire",
                percent = 90
            }
        },
        collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
        selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
        energy_per_movement = 7000,
        energy_per_rotation = 7000,
        hand_size = 1.5,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            drain = "0.5kW"
        },
        extension_speed = 0.1,
        rotation_speed = 0.04,
        pickup_position = {0, -3},
        insert_position = {0, 1.2},
        fast_replaceable_group = "long-handed-inserter",
        hand_base_picture =
        {
            filename = "__Overpowered__/graphics/entity/inserter/long-long-inserter-hand-base.png",
            priority = "extra-high",
            width = 8,
            height = 34
        },
        hand_closed_picture =
        {
            filename = "__Overpowered__/graphics/entity/inserter/long-long-inserter-hand-closed.png",
            priority = "extra-high",
            width = 18,
            height = 41
        },
        hand_open_picture =
        {
            filename = "__Overpowered__/graphics/entity/inserter/long-long-inserter-hand-open.png",
            priority = "extra-high",
            width = 18,
            height = 41
        },
        platform_picture =
        {
            sheet =
            {
                filename = "__Overpowered__/graphics/entity/inserter/long-long-inserter-platform.png",
                priority = "extra-high",
                width = 46,
                height = 46
            }
        },
        circuit_wire_connection_point = inserter_circuit_wire_connection_point,
        circuit_connector_sprites = inserter_circuit_connector_sprites,
        circuit_wire_max_distance = inserter_circuit_wire_max_distance
    }
})

