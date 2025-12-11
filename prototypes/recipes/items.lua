    local function format_name(name)
        local formatted = name:gsub("%-", " ")
        return (formatted:gsub("^%l", string.upper))
    end

data:extend({
        {
        type = "recipe",
        name = "amalgam-smelting",
        enabled = false,
        category = "smelting",
        energy_required = 1.6,
        results = {
            {type = "item", name ="amalgam-ingot", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam", amount = 2},
        },
    },
    {
        type = "recipe",
        name = "amalgam-pressing",
        enabled = false,
        category = "crafting",
        energy_required = 1.0,
        results = {
            {type = "item", name ="amalgam-plate", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam-ingot", amount = 1},
        },
    },
    {
        type = "recipe",
        name = "crystallite-stabilization",
        enabled = false,
        category = "smelting",
        energy_required = 1.6,
        results = {
            {type = "item", name ="stabilized-crystallite", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="calcite", amount = 2},
        },
    },
    {
        type = "recipe",
        name = "wolframite-crushing",
        enabled = false,
        category = "crushing",
        icon = "__delirium__/graphics/icons/items/resources/wolframite-powder.png",
        icon_size = 64,
        energy_required = 1.0,
        results = {
            {type = "item", name ="wolframite-powder", amount = 2},
            {type = "item", name ="slag", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="wolframite", amount = 1},
        },
    },
    {
        type = "recipe",
        name = "wolframite-crushing-hand",
        enabled = false,
        category = "crafting",
        energy_required = 1.0,
        results = {
            {type = "item", name ="wolframite-powder", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="wolframite", amount = 4},
        },
    },
    {
        type = "recipe",
        name = "alloy-support-structure",
        enabled = false,
        category = "crafting",
        energy_required = 2.0,
        results = {
            {type = "item", name ="alloy-support-structure", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="basic-beam", amount = 2},
            {type = "item", name ="basic-rivets", amount = 2},
            {type = "item", name ="wolframite-powder", amount = 2},
        },
    },
    {
        type = "recipe",
        name = "amalgam-wire",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-wiring", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam-ingot", amount = 1},
        },
    },
    {
        type = "recipe",
        name = "graphite",
        enabled = false,
        category = "crafting",
        energy_required = 0.8,
        results = {
            {type = "item", name ="graphite", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="shale", amount = 2},
        },
    },
    {
        type = "recipe",
        name = "calibration-coil",
        icon = "__delirium__/graphics/icons/items/intermediates/calibration-coil.png",
        icon_size = 1024,
        enabled = false,
        category = "crafting",
        energy_required = 2.0,
        results = {
            {type = "item", name ="calibration-coil", amount = 2},
            {type = "item", name ="unstable-crystallite", amount = 1, probability = 0.5},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="basic-coil", amount = 2},
            {type = "item", name ="stabilized-crystallite", amount = 2},
        },
    },
    {
        type = "recipe",
        name = "crystallite-restabilization",
        enabled = false,
        category = "smelting",
        energy_required = 1.6,
        results = {
            {type = "item", name ="stabilized-crystallite", amount = 1, probability = 0.5},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="unstable-crystallite", amount = 1},
        },
    },
    {
        type = "recipe",
        name = "electronic-circuit",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="electronic-circuit", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="stabilized-crystallite", amount = 1},
            {type = "item", name ="basic-wiring", amount = 3},
        },
    },
    {
        type = "recipe",
        name = "material-processing-science-pack",
        enabled = false,
        category = "crafting",
        energy_required = 20,
        results = {
            {type = "item", name ="automation-science-pack", amount = 2},
        },
        subgroup = "science-pack",
        order = "c-z",
        ingredients = {
            {type = "item", name ="calibration-coil", amount = 1},
            {type = "item", name ="alloy-support-structure", amount = 1},
        },
    },
    {
        type = "recipe",
        name = "amalgam-basic-beam",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-beam", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam-plate", amount = 1},
        },
        localised_name = {"", format_name("amalgam-basic-beam")}
    },
    {
        type = "recipe",
        name = "amalgam-basic-plating",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-plating", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam-plate", amount = 1},
        },
        localised_name = {"", format_name("amalgam-basic-plating")}
    },
    {
        type = "recipe",
        name = "amalgam-basic-gear",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-gear", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam-ingot", amount = 2},
        },
        localised_name = {"", format_name("amalgam-basic-gear")}
    },
    {
        type = "recipe",
        name = "amalgam-thin-plating",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="thin-plating", amount = 4},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam-plate", amount = 1},
        },
        localised_name = {"", format_name("amalgam-thin-plating")}
    },
    {
        type = "recipe",
        name = "amalgam-basic-spring",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-spring", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam-plate", amount = 1},
        },
        localised_name = {"", format_name("amalgam-basic-spring")}
    },
    {
        type = "recipe",
        name = "amalgam-basic-rod",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-rod", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam-plate", amount = 1},
        },
        localised_name = {"", format_name("amalgam-basic-rod")}
    },
    {
        type = "recipe",
        name = "basic-coil",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-coil", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="basic-wiring", amount = 2},
            {type = "item", name ="basic-rod", amount = 1}
        },
        localised_name = {"", format_name("basic-coil")}
    },
    {
        type = "recipe",
        name = "basic-rivets",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-rivets", amount = 4},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="basic-rod", amount = 1}
        },
        localised_name = {"", format_name("basic-rivets")}
    },
    {
        type = "recipe",
        name = "early-tensile-plating",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="tensile-plating", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="wolframite-powder", amount = 3},
            {type = "item", name ="basic-plating", amount = 2},
            {type = "item", name ="basic-beam", amount = 1},
            {type = "item", name ="basic-rivets", amount = 4}
        },
        localised_name = {"", format_name("early-tensile-plating")}
    },
    {
        type = "recipe",
        name = "amalgam-basic-piping",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-piping", amount = 4},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam-ingot", amount = 1}
        },
        localised_name = {"", format_name("amalgam-basic-piping")}
    },
    {
        type = "recipe",
        name = "oxygen",
        enabled = false,
        category = "condenser",
        energy_required = 1,
        results = {
            {type = "fluid", name ="oxygen", amount = 100},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("oxygen-condensing")}
    },
    {
        type = "recipe",
        name = "hydrogen",
        enabled = false,
        category = "condenser",
        energy_required = 1,
        results = {
            {type = "fluid", name ="hydrogen", amount = 100},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("hydrogen-condensing")}
    },
    {
        type = "recipe",
        name = "nitrogen",
        enabled = false,
        category = "condenser",
        energy_required = 1,
        results = {
            {type = "fluid", name ="nitrogen", amount = 100},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("nitrogen-condensing")}
    },
    {
        type = "recipe",
        name = "chlorine",
        enabled = false,
        category = "condenser",
        energy_required = 1,
        results = {
            {type = "fluid", name ="chlorine", amount = 100},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("chlorine-condensing")}
    },
    {
        type = "recipe",
        name = "water",
        enabled = false,
        category = "chemistry",
        energy_required = 1,
        results = {
            {type = "fluid", name ="water", amount = 150},
        },
        ingredients = {
            {type = "fluid", name ="oxygen", amount = 50},
            {type = "fluid", name ="hydrogen", amount = 100},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("water")}
    },
    {
        type = "recipe",
        name = "sulfur-trioxide",
        enabled = false,
        category = "chemistry",
        energy_required = 1,
        results = {
            {type = "fluid", name ="sulfur-trioxide", amount = 200},
        },
        ingredients = {
            {type = "fluid", name ="oxygen", amount = 50},
            {type = "fluid", name ="sulfur-dioxide", amount = 150},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("sulfur-trioxide")}
    },
    {
        type = "recipe",
        name = "sulfuric-acid",
        enabled = false,
        category = "chemistry",
        energy_required = 1,
        results = {
            {type = "fluid", name ="sulfuric-acid", amount = 350},
        },
        ingredients = {
            {type = "fluid", name ="water", amount = 150},
            {type = "fluid", name ="sulfur-trioxide", amount = 200},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("sulfuric-acid")}
    },
    {
        type = "recipe",
        name = "slag-crushing",
        enabled = false,
        category = "crushing",
        energy_required = 0.5,
        results = {
            {type = "item", name ="stone", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="slag", amount = 1},
        },
        localised_name = {"", format_name("slag-crushing")}
    },
    {
        type = "recipe",
        name = "dirty-water",
        enabled = false,
        category = "chemistry",
        energy_required = 1,
        results = {
            {type = "fluid", name ="dirty-water", amount = 200},
        },
        ingredients = {
            {type = "fluid", name ="water", amount = 100},
            {type = "item", name ="stone", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("dirty-water")}
    },
    {
        type = "recipe",
        name = "dirty-water-purification",
        icon = "__delirium__/graphics/icons/fluids/dirty-water.png",
        icon_size = 1024,
        enabled = false,
        category = "purifier",
        energy_required = 1,
        results = {
            {type = "fluid", name ="water", amount = 100},
            {type = "item", name ="stone", amount = 2},
        },
        ingredients = {
            {type = "fluid", name ="dirty-water", amount = 200},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("dirty-water-purification")}
    },
    {
        type = "recipe",
        name = "amalgam-crushing",
        icon = "__Krastorio2Assets__/icons/items/enriched-rare-metals.png",
        icon_size = 64,
        enabled = false,
        category = "crushing",
        energy_required = 2,
        results = {
            {type = "item", name ="crushed-amalgam", amount = 4},
            {type = "item", name ="slag", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="amalgam", amount = 2},
        },
        localised_name = {"", format_name("amalgam-crushing")}
    },
    {
        type = "recipe",
        name = "amalgam-sorting",
        icon = "__Krastorio2Assets__/icons/items/enriched-rare-metals.png",
        icon_size = 64,
        enabled = false,
        category = "sorter",
        energy_required = 4,
        results = {
            {type = "item", name ="crushed-bauxite", amount = 8},
            {type = "item", name ="crushed-pyrite", amount = 8},
            {type = "item", name ="slag", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="crushed-amalgam", amount = 25},
        },
        localised_name = {"", format_name("amalgam-sorting")}
    },
    {
        type = "recipe",
        name = "crushed-pyrite-smelting",
        icon = "__delirium__/graphics/icons/items/resources/crushed-pyrite.png",
        icon_size = 1024,
        enabled = false,
        category = "arc-furnace",
        energy_required = 2,
        results = {
            {type = "fluid", name ="sulfur-dioxide", amount = 100},
            {type = "item", name ="hematite", amount = 3},
        },
        ingredients = {
            {type = "item", name ="crushed-pyrite", amount = 4},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("crushed-pyrite-smelting")}
    },
    {
        type = "recipe",
        name = "hematite-smelting",
        icon = "__delirium__/graphics/icons/fluids/molten-iron.png",
        icon_size = 1024,
        enabled = false,
        category = "arc-furnace",
        energy_required = 4,
        results = {
            {type = "fluid", name ="molten-iron", amount = 40},
            {type = "item", name ="slag", amount = 2},
        },
        ingredients = {
            {type = "item", name ="hematite", amount = 6},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("hematite-smelting")}
    },
    {
        type = "recipe",
        name = "iron-ingot-casting",
        enabled = false,
        category = "caster",
        energy_required = 1,
        results = {
            {type = "item", name ="iron-ingot", amount = 2},
        },
        ingredients = {
            {type = "fluid", name ="molten-iron", amount = 10},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("iron-ingot-casting")}
    },
    {
        type = "recipe",
        name = "stone-crushing",
        enabled = false,
        category = "crushing",
        energy_required = 2,
        results = {
            {type = "item", name ="sand", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="stone", amount = 1},
        },
        localised_name = {"", format_name("stone-crushing")}
    },
    {
        type = "recipe",
        name = "sand-smelting",
        icon = "__delirium__/graphics/icons/fluids/molten-glass.png",
        icon_size = 1024,
        enabled = false,
        category = "arc-furnace",
        energy_required = 5,
        results = {
            {type = "fluid", name ="molten-glass", amount = 100},
            {type = "item", name ="slag", amount = 2},
        },
        ingredients = {
            {type = "item", name ="sand", amount = 12},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("sand-smelting")}
    },
    {
        type = "recipe",
        name = "glass-casting",
        enabled = false,
        category = "caster",
        energy_required = 1,
        results = {
            {type = "item", name ="glass", amount = 2},
        },
        ingredients = {
            {type = "fluid", name ="molten-glass", amount = 20},
        },
        subgroup = "raw-material",
        order = "c-z",
        localised_name = {"", format_name("glass-casting")}
    },
    {
        type = "recipe",
        name = "iron-plates",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="iron-plate", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="iron-ingot", amount = 1},
        },
        localised_name = {"", format_name("iron-plates")}
    },
    {
        type = "recipe",
        name = "iron-basic-plating",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-plating", amount = 4},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="iron-plate", amount = 1},
        },
        localised_name = {"", format_name("basic-plating-from-iron")}
    },
    {
        type = "recipe",
        name = "iron-basic-beam",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-beam", amount = 2},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="iron-plate", amount = 1},
        },
        localised_name = {"", format_name("basic-beam-from-iron")}
    },
    {
        type = "recipe",
        name = "iron-basic-spring",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-spring", amount = 3},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="iron-plate", amount = 1},
        },
        localised_name = {"", format_name("basic-spring-from-iron")}
    },
    {
        type = "recipe",
        name = "iron-basic-gear",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-gear", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="iron-plate", amount = 1},
        },
        localised_name = {"", format_name("basic-gear-from-iron")}
    },
    {
        type = "recipe",
        name = "iron-basic-piping",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-piping", amount = 4},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="iron-plate", amount = 1},
        },
        localised_name = {"", format_name("basic-piping-from-iron")}
    },
    {
        type = "recipe",
        name = "iron-basic-rod",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-rod", amount = 4},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="iron-plate", amount = 1},
        },
        localised_name = {"", format_name("basic-rod-from-iron")}
    },
    {
        type = "recipe",
        name = "iron-basic-rivets",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="basic-rivets", amount = 4},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="iron-plate", amount = 1},
        },
        localised_name = {"", format_name("basic-rivets-from-iron")}
    },
    {
        type = "recipe",
        name = "glass-tube",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="glass-tube", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="glass", amount = 2},
        },
        localised_name = {"", format_name("glass-tube")}
    },
    {
        type = "recipe",
        name = "glass-lens",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="lens", amount = 1},
        },
        subgroup = "raw-material",
        order = "c-z",
        ingredients = {
            {type = "item", name ="glass", amount = 4},
        },
        localised_name = {"", format_name("glass-lens")}
    },
})