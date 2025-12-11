data:extend({
    {
        type = "burner-generator",
        name = "combustion-generator",
        icon = "__delirium__/graphics/icons/entity/thermal-plant/thermal-plant-icon.png",
        icon_size = 64,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 1, result = "combustion-generator"},
        max_health = 600,
        corpse = "big-remnants",

        collision_box = {{-2.9, -2.9}, {2.9, 2.9}}, 
        selection_box = {{-3.0, -3.0}, {3.0, 3.0}},

        max_power_output = "10MW",

        energy_source = {
            type = "electric",
            usage_priority = "secondary-output",
        },

        burner = {
            type = "burner",
            fuel_categories = {"chemical"},
            effectivity = 1.0,
            fuel_inventory_size = 1
        },

        maximum_glow_intensity = 0.5,

            animation = {
                layers = {
                    {
                        filename = "__delirium__/graphics/icons/entity/thermal-plant/thermal-plant-hr-animation-1.png",
                        width = 330,
                        height = 410,
                        frame_count = 64,
                        line_length = 8,
                        shift = {0, 0},
                        scale = 0.6,
                        run_mode = "forward-then-backward"
                    },
                    {
                        filename = "__delirium__/graphics/icons/entity/thermal-plant/thermal-plant-hr-emission-1.png",
                        width = 330,
                        height = 410,
                        frame_count = 64,
                        line_length = 8,
                        shift = {0, 0},
                        blend_mode = "additive",
                        scale = 0.6,
                        run_mode = "forward-then-backward"
                    },
                },

            },

            shadow = {
                filename = "__delirium__/graphics/icons/entity/thermal-plant/thermal-plant-hr-shadow.png",
                width = 900,
                height = 500,
                shift = {0.3, 0.4},
            }
        },
        {
        name = "crystallizer",
        type = "recipe-category",
    },
        {
        name = "cooler",
        type = "recipe-category",
    },
        {
        name = "sorter",
        type = "recipe-category",
    },
        {
        name = "purifier",
        type = "recipe-category",
    },
        {
        name = "arc-furnace",
        type = "recipe-category",
    },
        {
        name = "caster",
        type = "recipe-category",
    },
        {
        name = "condenser",
        type = "recipe-category",
    },
  {
    type = "assembling-machine", 
    name = "crystallizer",
    icon = "__delirium__/graphics/icons/entity/grower.png",
    icon_size = 512,
    
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "crystallizer"}, 
    max_health = 450,
    corpse = "big-remnants",
    
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}}, 
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    
    crafting_speed = 1.0, 
    crafting_categories = {"crystallizer"}, 
    
    energy_source = 
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "400kW",
    
    fluid_boxes = {
        {
            volume = 200,
            pipe_connections = {
                {
                    flow_direction = "input", 
                    direction = defines.direction.east,  
                    position = {2, 1}
                },
            },
            production_type = "input",
        },
        {
            volume = 200,
            pipe_connections = {
                {
                    flow_direction = "input", 
                    direction = defines.direction.east,  
                    position = {2, -1}
                },
            },
            production_type = "input",
        },
        {
            volume = 200,
            pipe_connections = {
                {
                    flow_direction = "output", 
                    direction = defines.direction.west,  
                    position = {-2, 0}
                },
            },
            production_type = "output",
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,


    graphics_set = {
        animation = {
            filename = "__delirium__/graphics/icons/entity/grower.png", 
            size = {512, 512},
            shift = {0, 0},
            scale = 0.35,
            frame_count = 1,
            line_length = 1,
        },
        working_visualisations = {
            {
                animation = {
                    filename = "__delirium__/graphics/icons/entity/grower_animation.png",
                    size = {512, 512},
                    shift = {0, 0},
                    scale = 0.35,
                    line_length = 6,
                    frame_count = 36, 
                    animation_speed = 0.4,
                }
            },
        }
    },
    
    working_sound = {
        sound = {filename = "__base__/sound/chemical-plant-3.ogg", volume = 0.6},
        apparent_volume = 0.3,
    },
  },
      {
        name = "cooler",
        type = "assembling-machine",
        crafting_categories = {"cooler"},
        icon = "__delirium__/graphics/icons/entity/cooler.png",
        icon_size = 512,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
            mining_time = 1,
            result = "cooler"
        },
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        crafting_speed = 1,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
        },
        energy_usage = "300kW",
        fluid_boxes = {
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "input", direction = defines.direction.east, position = {2, 0}},
                },
                production_type = "input",
            },
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "output", direction = defines.direction.west, position = {-2, 0}},
                },
                production_type = "output",
            },
        },
        graphics_set = {
            animation = {
                filename = "__delirium__/graphics/icons/entity/cooler.png",
                size = {512,512},
                shift = {0, 0},
    	        scale = 0.35,
                line_length = 1,
                --lines_per_file = 2,
                frame_count = 1,
                -- animation_speed = 0.2,
            },
            working_visualisations = {
                {
                  animation = 
                  {
                    filename = "__delirium__/graphics/icons/entity/cooler_animation.png",
                    size = {512,512},
                    shift = {0, 0},
    	            scale = 0.35,
                    line_length = 1,
                    lines_per_file = 1,
                    frame_count = 1,
                    animation_speed = 0.4,
                    run_mode = "backward",
                  }
                },
                {
                    light = {
                    type = "basic",
                    intensity = 1,
                    size = 15
                    }
                }
            },
        },
        working_sound =
        {
            sound = {filename = "__base__/sound/chemical-plant-3.ogg", volume = 0.6},
            apparent_volume = 0.3,
        },
    },
      {
        name = "ore-sorter",
        type = "assembling-machine",
        crafting_categories = {"sorter"},
        icon = "__delirium__/graphics/icons/entity/ore-sorting-facility.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
            mining_time = 1,
            result = "ore-sorter"
        },
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
    collision_box = { { -3.4, -3.4 }, { 3.4, 3.4 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
        crafting_speed = 1,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
        },
        energy_usage = "150kW",
        graphics_set = {
            animation = {
                filename = "__delirium__/graphics/icons/entity/sorter.png",
                priority = "extra-high",
                width = 449,
                height = 458,
                frame_count = 40,
                line_length = 10,
                animation_speed = 0.5,
                scale = 0.5
            },
        },
        working_sound =
        {
            sound = {filename = "__base__/sound/chemical-plant-3.ogg", volume = 0.6},
            apparent_volume = 0.3,
        },
    },
        {
        name = "arc-furnace",
        type = "assembling-machine",
        icon = "__delirium__/graphics/icons/entity/arc-furnace.png",
        icon_size = 512,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
            mining_time = 1,
            result = "arc-furnace"
        },
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        crafting_categories = {"arc-furnace"},
        crafting_speed = 1,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
        },
        energy_usage = "1MW",
        fluid_boxes = {
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "input", direction = defines.direction.east, position = {2, 0}},
                },
                production_type = "input",
            },
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "output", direction = defines.direction.west, position = {-2, 0}},
                },
                production_type = "output",
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        graphics_set = {
            animation = {
                filename = "__delirium__/graphics/icons/entity/arc-furnace.png",
                size = {512,512},
                shift = {0, 0},
    	        scale = 0.35,
                line_length = 1,
                --lines_per_file = 2,
                frame_count = 1,
                -- animation_speed = 0.2,
            },
            working_visualisations = {
                -- simulate always on idle capacitor glow
                {
                  animation = 
                  {
                    filename = "__delirium__/graphics/icons/entity/arc-furnace_animation.png",
                    size = {512,512},
                    shift = {0, 0},
    	            scale = 0.35,
                    line_length = 4,
                    lines_per_file = 4,
                    frame_count = 16,
                    animation_speed = 0.4,
                    run_mode = "backward",
                  }
                },

            },
        },
        working_sound =
        {
            sound = {filename = "__base__/sound/electric-furnace.ogg", volume = 0.6},
            apparent_volume = 0.3,
        },
    },
        {
        name = "caster",
        type = "assembling-machine",
        icon = "__delirium__/graphics/icons/entity/caster.png",
        icon_size = 512,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
            mining_time = 0.5,
            result = "caster"
        },
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        crafting_categories = {"caster"},
        crafting_speed = 1,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
        },
        energy_usage = "400kW",
        graphics_set = {
            animation = {
                filename = "__delirium__/graphics/icons/entity/caster.png",
                size = {512,512},
                width = 512,
                height = 512,
                shift = {0,-0.2},
    	        scale = 0.44/2,
                line_length = 1,
                --lines_per_file = 2,
                frame_count = 1,
                -- animation_speed = 0.2,
            },
            working_visualisations = {
                {
                  animation = 
                  {
                    filename = "__delirium__/graphics/icons/entity/caster_animation.png",
                    size = {512,512},
                    width = 512,
                    height = 512,
                    shift = {0,-0.2},
    	            scale = 0.44/2,
                    line_length = 4,
                    lines_per_file = 4,
                    frame_count = 16,
                    animation_speed = 0.6,
                    run_mode = "backward",
                  }
                },
            },
        },
        fluid_boxes = {
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "input", direction = defines.direction.east, position = {1, 0}},
                },
                production_type = "input",
            },
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "input", direction = defines.direction.west, position = {-1, 0}},
                },
                production_type = "input",
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        working_sound =
        {
            sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.8},
            apparent_volume = 0.3,
        },
    },
    {
        name = "purifier",
        type = "assembling-machine",
        icon = "__delirium__/graphics/icons/entity/purifier.png",
        icon_size = 512,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
            mining_time = 0.5,
            result = "purifier"
        },
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        crafting_categories = {"purifier"},
        crafting_speed = 1,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
        },
        energy_usage = "600kW",
        fluid_boxes = {
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "input", direction = defines.direction.east, position = {2, 1}},
                },
                production_type = "input",
            },
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "input", direction = defines.direction.east, position = {2, -1}},
                },
                production_type = "input",
            },
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "output", direction = defines.direction.west, position = {-2, 1}},
                },
                production_type = "output",
            },
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "output", direction = defines.direction.west, position = {-2, -1}},
                },
                production_type = "output",
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        graphics_set = {
            animation = {
                filename = "__delirium__/graphics/icons/entity/purifier.png",
                size = {512,512},
                shift = {0, 0},
    	        scale = 0.35,
                line_length = 1,
                --lines_per_file = 2,
                frame_count = 1,
                -- animation_speed = 0.2,
            },
            working_visualisations = {
                {
                  animation = 
                  {
                    filename = "__delirium__/graphics/icons/entity/purifier_animation.png",
                    size = {512,512},
                    shift = {0, 0},
    	            scale = 0.35,
                    line_length = 4,
                    lines_per_file = 4,
                    frame_count = 16,
                    animation_speed = 0.4,
                    run_mode = "backward",
                  }
                },
                {
                    light = {
                    type = "basic",
                    intensity = 1,
                    size = 15
                    }
                }
            },
        },
        working_sound =
        {
            sound = {filename = "__base__/sound/chemical-plant-3.ogg", volume = 0.6},
            apparent_volume = 0.3,
        },
    },
        {
        name = "condenser",
        type = "assembling-machine",
        icon = "__delirium__/graphics/icons/entity/lufter.png",
        icon_size = 512,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {
            mining_time = 1,
            result = "condenser"
        },
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        crafting_categories = {"condenser"},
        crafting_speed = 1,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
        },
        energy_usage = "100kW",
        graphics_set = {
            animation = {
                filename = "__delirium__/graphics/icons/entity/lufter.png",
                size = {512,512},
                width = 512,
                height = 512,
                shift = {0,-0.2},
    	        scale = 0.44/2,
                line_length = 1,
                --lines_per_file = 2,
                frame_count = 1,
                -- animation_speed = 0.2,
            },
            working_visualisations = {
                {
                  animation = 
                  {
                    filename = "__delirium__/graphics/icons/entity/lufter_animation.png",
                    size = {512,512},
                    width = 512,
                    height = 512,
                    shift = {0,-0.2},
    	            scale = 0.44/2,
                    line_length = 4,
                    lines_per_file = 4,
                    frame_count = 16,
                    animation_speed = 0.6,
                    run_mode = "backward",
                  }
                },
                {
                    light = {
                    type = "basic",
                    intensity = 1,
                    size = 15
                    }
                }
            },
        },
        fluid_boxes = {
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "output", direction = defines.direction.east, position = {1, 0}},
                },
                production_type = "output",
            },
            {   
                volume = 200,
                pipe_connections = {
                    {flow_direction = "input", direction = defines.direction.west, position = {-1, 0}},
                },
                production_type = "input",
            },
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        working_sound =
        {
            sound = {filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.8},
            apparent_volume = 0.3,
        },
    },
})

