--
-- Created by IntelliJ IDEA.
-- User: Oscar
-- Date: 2016/7/8
-- Time: 20:29
-- To change this template use File | Settings | File Templates.
--

data:extend({
    -- Item
    {
        type = "item",
        name = "tractor",
        icon = "__Overpowered__/graphics/icons/icon_tractor_car.png",
        flags = {"goes-to-quickbar"},
        subgroup = "transport",
        order = "b[personal-transport]-e[tractor]",
        place_result = "tractor",
        stack_size = 1
    },

    --Recipe
    {
        type = "recipe",
        name = "tractor",
        energy_required = 30,
        enabled = true,
        ingredients =
        {
            {"electric-engine-unit", 4},
            {"steel-plate", 6},
            {"plastic-bar", 20},
        },
        result = "tractor"
    },

    --Entity

    {
        type = "car",
        name = "tractor",
        icon = "__Overpowered__/graphics/entity/tractor/tractor.png",
        flags = {"pushable", "placeable-neutral", "player-creation"},
        --collision_mask = { "resource-layer" },


        -----------------

        minable = {mining_time = 1, result = "tractor"},
        max_health = 200000,
        inventory_size = 12,
        corpse = "medium-remnants",
        dying_explosion = "big-explosion",
        energy_per_hit_point = 1,
        crash_trigger = crash_trigger(),
        resistances =
        {
            {
                type = "fire",
                percent = 10
            },
            {
                type = "impact",
                percent = 100
            }
        },
        collision_box = {{-2, -2}, {2, 2}},
        selection_box = {{-2, -2}, {2, 2}},
        effectivity = 1,
        braking_power = "500kW",
        burner =
        {
            effectivity = 1,
            fuel_inventory_size = 10,
            emissions = 0,
        },
        stationing_offset = {0, 0},

        charging_offsets =
        {
            {-0.5, -0.5}, {0.5, -0.5}, {0.5, 0.5}, {-0.5, 0.5},
        },

        --consumption = maxconsumption,
        consumption = "500kW", -- 680 hp
        friction = 0.00001,
        friction_force = 0.001, --
        air_resistance = 0.005, --

        -----------------------------------

        light =
        {
            {
                type = "oriented",
                minimum_darkness = 0.3,
                picture =
                {
                    filename = "__core__/graphics/light-cone.png",
                    priority = "medium",
                    scale = 3,
                    width = 200,
                    height = 200
                },
                shift = {0, -21},
                size = 2,
                intensity = 0.8
            },
        },

        animation =
        {
            layers =
            {
                {
                    width = 100,
                    height = 96,
                    frame_count = 1,
                    direction_count = 128,
                    shift = {0, 0},
                    animation_speed = 8,
                    max_advance = 0.2,
                    stripes =
                    {
                        {
                            filename = "__Overpowered__/graphics/entity/tractor/tractor.png",
                            width_in_frames = 16,
                            height_in_frames = 8,
                        },
                    }
                },
            }
        },
        stop_trigger_speed = 0.2,
        stop_trigger =
        {
            {
                type = "play-sound",
                sound =
                {
                    {
                        filename = "__base__/sound/car-breaks.ogg",
                        volume = 0.6
                    },
                }
            },
        },
        sound_minimum_speed = 0.9;
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/car-engine.ogg",
                volume = 0.2
            },
            activate_sound =
            {
                filename = "__base__/sound/car-engine-start.ogg",
                volume = 0.2
            },
            deactivate_sound =
            {
                filename = "__base__/sound/car-engine-stop.ogg",
                volume = 0.2
            },
            match_speed_to_activity = true,
        },
        open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
        close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
        rotation_speed = 0.015,
        weight = 20000,
        inventory_size = 20
    },
})