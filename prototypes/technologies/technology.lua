data:extend({
    {
        type = "technology",
        name = "crystallite-processing",
        icon = "__Krastorio2Assets__/icons/items/quartz.png",
        essential = true,
        research_trigger = {type = "mine-entity", entity = "calcite"},
        effects = {
                {type = "unlock-recipe", recipe = "furnace"},
                {type = "unlock-recipe", recipe = "crystallite-stabilization"},
                {type = "unlock-recipe", recipe = "crystallite-restabilization"},
        },
    },
    {
        type = "technology",
        name = "amalgam-processing",
        icon = "__Krastorio2Assets__/icons/items/rare-metals.png",
        essential = true,
        research_trigger = {type = "mine-entity", entity = "amalgam"},
        effects = {
                {type = "unlock-recipe", recipe = "amalgam-smelting"},
                {type = "unlock-recipe", recipe = "amalgam-pressing"},
                {type = "unlock-recipe", recipe = "amalgam-basic-plating"},
                {type = "unlock-recipe", recipe = "chest"},
        },
        prerequisites = {
            "crystallite-processing",
        }
    },
    {
        type = "technology",
        name = "wolframite-processing",
        icon = "__delirium__/graphics/icons/items/resources/wolframite-powder.png",
        essential = true,
        research_trigger = {type = "mine-entity", entity = "wolframite"},
        effects = {
                {type = "unlock-recipe", recipe = "wolframite-crushing-hand"},
        },
    },
    {
        type = "technology",
        name = "shale-processing",
        icon = "__delirium__/graphics/icons/items/resources/shale/shale.png",
        essential = true,
        research_trigger = {type = "mine-entity", entity = "shale"},
        effects = {
                {type = "unlock-recipe", recipe = "graphite"},
                {type = "unlock-recipe", recipe = "burner-mining-drill"},
                {type = "unlock-recipe", recipe = "burner-inserter"},
                {type = "unlock-recipe", recipe = "amalgam-basic-gear"},
        },
    },
    {
        type = "technology",
        name = "combustion",
        icon = "__delirium__/graphics/icons/entity/thermal-plant/thermal-plant-icon.png",
        essential = true,
        prerequisites = {
            "shale-processing", "basic-materials"
        },
        research_trigger = {type = "craft-item", item = "graphite", count = 10},
        effects = {
                {type = "unlock-recipe", recipe = "combustion-generator"},
                {type = "unlock-recipe", recipe = "power-pole"},
                {type = "unlock-recipe", recipe = "amalgam-basic-rod"},
        },
    },
    {
        type = "technology",
        name = "basic-materials",
        icon = "__delirium__/graphics/icons/technology/basic-materials.png",
        icon_size=1024,
        essential = true,
        prerequisites = {
            "wolframite-processing", "amalgam-processing"
        },
        research_trigger = {type = "craft-item", item = "amalgam-plate", count = 10},
        effects = {
                {type = "unlock-recipe", recipe = "calibration-coil"},
                {type = "unlock-recipe", recipe = "amalgam-wire"},
                {type = "unlock-recipe", recipe = "electronic-circuit"},
                {type = "unlock-recipe", recipe = "alloy-support-structure"},
                {type = "unlock-recipe", recipe = "amalgam-thin-plating"},
                {type = "unlock-recipe", recipe = "basic-coil"},
                {type = "unlock-recipe", recipe = "basic-rivets"},
                {type = "unlock-recipe", recipe = "amalgam-basic-spring"},
                {type = "unlock-recipe", recipe = "amalgam-basic-beam"},
        },
    },
    {
        type = "technology",
        name = "material-processing-science-pack",
        icon = "__base__/graphics/icons/automation-science-pack.png",
        essential = true,
        prerequisites = {
            "combustion", "basic-materials"
        },
        research_trigger = {type = "craft-item", item = "alloy-support-structure", count = 10},
        effects = {
                {type = "unlock-recipe", recipe = "lab"},
                {type = "unlock-recipe", recipe = "material-processing-science-pack"},
        },
    },
    {
        type = "technology",
        name = "logistics",
        icon = "__delirium__/graphics/icons/technology/logistics.png",
        essential = true,
        icon_size=120,
        prerequisites = {
            "material-processing-science-pack"
        },
          unit =
        {
            count = 10,
            ingredients = {{"automation-science-pack", 1}},
            time = 10
        },
        effects = {
                {type = "unlock-recipe", recipe = "yellow-belt"},
                {type = "unlock-recipe", recipe = "yellow-underground"},
                {type = "unlock-recipe", recipe = "yellow-splitter"},
                {type = "unlock-recipe", recipe = "yellow-inserter"},
        },
    },
    {
        type = "technology",
        name = "automation",
        icon = "__delirium__/graphics/icons/technology/automation.png",
        essential = true,
        icon_size=120,
        prerequisites = {
            "material-processing-science-pack"
        },
          unit =
        {
            count = 10,
            ingredients = {{"automation-science-pack", 1}},
            time = 10
        },
        effects = {
                {type = "unlock-recipe", recipe = "mining-drill"},
                {type = "unlock-recipe", recipe = "red-inserter"},
                {type = "unlock-recipe", recipe = "assembler"},
        },
    },
    {
        type = "technology",
        name = "crushing",
        icon = "__delirium__/graphics/icons/technology/crushing.png",
        essential = true,
        icon_size=968,
        prerequisites = {
            "logistics", "automation"
        },
          unit =
        {
            count = 10,
            ingredients = {{"automation-science-pack", 1}},
            time = 10
        },
        effects = {
                {type = "unlock-recipe", recipe = "wolframite-crushing"},
                {type = "unlock-recipe", recipe = "crusher"},
                {type = "unlock-recipe", recipe = "slag-crushing"},
                {type = "unlock-recipe", recipe = "early-tensile-plating"},
        },
    },
    {
        type = "technology",
        name = "fluids",
        icon = "__delirium__/graphics/icons/technology/fluid-handling.png",
        essential = true,
        icon_size=256,
        prerequisites = {
            "logistics", "automation"
        },
          unit =
        {
            count = 10,
            ingredients = {{"automation-science-pack", 1}},
            time = 10
        },
        effects = {
                {type = "unlock-recipe", recipe = "pipe"},
                {type = "unlock-recipe", recipe = "underground-pipe"},
                {type = "unlock-recipe", recipe = "fluid-tank"},
                {type = "unlock-recipe", recipe = "pump"},

                {type = "unlock-recipe", recipe = "amalgam-basic-piping"},
        },
    },
    {
        type = "technology",
        name = "basic-chemistry",
        icon = "__delirium__/graphics/icons/technology/basic-chemistry.png",
        essential = true,
        icon_size=1024,
        prerequisites = {
            "fluids"
        },
          unit =
        {
            count = 10,
            ingredients = {{"automation-science-pack", 1}},
            time = 10
        },
        effects = {
                {type = "unlock-recipe", recipe = "chemical-refinery"},
                {type = "unlock-recipe", recipe = "chemical-plant"},
                {type = "unlock-recipe", recipe = "crystallizer"},
                {type = "unlock-recipe", recipe = "purifier"},
                {type = "unlock-recipe", recipe = "condenser"},
                {type = "unlock-recipe", recipe = "dirty-water"},
                {type = "unlock-recipe", recipe = "water"},
                {type = "unlock-recipe", recipe = "oxygen"},
                {type = "unlock-recipe", recipe = "nitrogen"},
                {type = "unlock-recipe", recipe = "chlorine"},
                {type = "unlock-recipe", recipe = "hydrogen"},
        },
    },
    {
        type = "technology",
        name = "sorting-and-metallurgy",
        icon = "__delirium__/graphics/icons/technology/sorting-and-metallurgy.png",
        essential = true,
        icon_size=1024,
        prerequisites = {
            "crushing", "basic-chemistry"
        },
          unit =
        {
            count = 15,
            ingredients = {{"automation-science-pack", 1}},
            time = 10
        },
        effects = {
                {type = "unlock-recipe", recipe = "sorter"},
                {type = "unlock-recipe", recipe = "caster"},
                {type = "unlock-recipe", recipe = "arc-furnace"},
                {type = "unlock-recipe", recipe = "cooler"},
                {type = "unlock-recipe", recipe = "amalgam-crushing"},
                {type = "unlock-recipe", recipe = "amalgam-sorting"},
                {type = "unlock-recipe", recipe = "dirty-water-purification"},
                {type = "unlock-recipe", recipe = "dirty-water-dumping"},
        },
    },
    {
        type = "technology",
        name = "iron-processing",
        icon = "__delirium__/graphics/icons/technology/iron-processing.png",
        essential = true,
        icon_size=1024,
        prerequisites = {
            "sorting-and-metallurgy"
        },
          unit =
        {
            count = 25,
            ingredients = {{"automation-science-pack", 1}},
            time = 10
        },
        effects = {
                {type = "unlock-recipe", recipe = "crushed-pyrite-smelting"},
                {type = "unlock-recipe", recipe = "sulfur-trioxide"},
                {type = "unlock-recipe", recipe = "sulfuric-acid"},
                {type = "unlock-recipe", recipe = "hematite-smelting"},
                {type = "unlock-recipe", recipe = "iron-ingot-casting"},
                {type = "unlock-recipe", recipe = "iron-plates"},
                {type = "unlock-recipe", recipe = "iron-basic-plating"},
                {type = "unlock-recipe", recipe = "iron-basic-beam"},
                {type = "unlock-recipe", recipe = "iron-basic-rod"},
                {type = "unlock-recipe", recipe = "iron-basic-rivets"},
                {type = "unlock-recipe", recipe = "iron-basic-spring"},
                {type = "unlock-recipe", recipe = "iron-basic-gear"},
                {type = "unlock-recipe", recipe = "iron-basic-piping"},
        },
    },
    {
        type = "technology",
        name = "glassworking",
        icon = "__delirium__/graphics/icons/technology/glassworking.png",
        essential = true,
        icon_size=1024,
        prerequisites = {
            "sorting-and-metallurgy"
        },
          unit =
        {
            count = 20,
            ingredients = {{"automation-science-pack", 1}},
            time = 10
        },
        effects = {
                {type = "unlock-recipe", recipe = "sand-smelting"},
                {type = "unlock-recipe", recipe = "stone-crushing"},
                {type = "unlock-recipe", recipe = "glass-casting"},
                {type = "unlock-recipe", recipe = "glass-tube"},
                {type = "unlock-recipe", recipe = "glass-lens"},
                {type = "unlock-recipe", recipe = "beaker"},
        },
    },
    {
        type = "technology",
        name = "chemical-utilization-science-pack",
        icon = "__base__/graphics/icons/logistic-science-pack.png",
        essential = true,
        prerequisites = {
            "iron-processing", "glassworking"
        },
          unit =
        {
            count = 35,
            ingredients = {{"automation-science-pack", 1}},
            time = 10
        },
        effects = {
                {type = "unlock-recipe", recipe = "assembler-2"},
                {type = "unlock-recipe", recipe = "vacuum-tube"},
                {type = "unlock-recipe", recipe = "chemical-utilization-science-pack"},
        },
    },
})