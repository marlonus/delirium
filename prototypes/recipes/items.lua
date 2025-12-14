    local function format_name(name)
        local formatted = name:gsub("%-", " ")
        return (formatted:gsub("^%l", string.upper))
    end

data:extend({

    {
  type = "item-group",
  name = "components",
  icon = "__delirium__/graphics/icons/group/components.png",
  icon_size = 1024,
  localised_name = {"", format_name("components")}
    },
    {
  type = "item-subgroup",
  name = "plating",
  group = "components",
  order = "a"
    },
    {
  type = "item-subgroup",
  name = "beam",
  group = "components",
  order = "b"
    },
    {
  type = "item-subgroup",
  name = "gear",
  group = "components",
  order = "c"
    },
    {
  type = "item-subgroup",
  name = "bearing",
  group = "components",
  order = "d"
    },
    {
  type = "item-subgroup",
  name = "spring",
  group = "components",
  order = "e"
    },
    {
  type = "item-subgroup",
  name = "rivets",
  group = "components",
  order = "f"
    },
    {
  type = "item-subgroup",
  name = "rod",
  group = "components",
  order = "g"
    },
    {
  type = "item-subgroup",
  name = "cabling",
  group = "components",
  order = "h"
    },
    {
  type = "item-subgroup",
  name = "ribbon",
  group = "components",
  order = "i"
    },
    {
  type = "item-subgroup",
  name = "coil",
  group = "components",
  order = "j"
    },
    {
  type = "item-subgroup",
  name = "solder",
  group = "components",
  order = "k"
    },
    {
  type = "item-subgroup",
  name = "piping",
  group = "components",
  order = "l"
    },
    {
  type = "item-subgroup",
  name = "wiring",
  group = "components",
  order = "m"
    },
    {
  type = "item-subgroup",
  name = "misc",
  group = "components",
  order = "n"
    },
    {
  type = "item-subgroup",
  name = "glass",
  group = "components",
  order = "o"
    },
    {
  type = "item-group",
  name = "resources",
  icon = "__delirium__/graphics/icons/group/resources.png",
  icon_size = 1024,
  localised_name = {"", format_name("resources")}
    },
    {
  type = "item-subgroup",
  name = "amalgam",
  group = "resources",
  order = "a"
    },
    {
  type = "item-subgroup",
  name = "crystallite",
  group = "resources",
  order = "b"
    },
    {
  type = "item-subgroup",
  name = "wolframite",
  group = "resources",
  order = "c"
    },
    {
  type = "item-subgroup",
  name = "shale",
  group = "resources",
  order = "d"
    },
    {
  type = "item-subgroup",
  name = "stone",
  group = "resources",
  order = "e"
    },
    {
  type = "item-subgroup",
  name = "iron",
  group = "resources",
  order = "f"
    },
    {
  type = "item-subgroup",
  name = "aluminium",
  group = "resources",
  order = "g"
    },
    {
  type = "item-subgroup",
  name = "copper",
  group = "resources",
  order = "h"
    },
    {
  type = "item-subgroup",
  name = "tin",
  group = "resources",
  order = "i"
    },
    {
  type = "item-subgroup",
  name = "zinc",
  group = "resources",
  order = "j"
    },
    {
  type = "item-subgroup",
  name = "titanium",
  group = "resources",
  order = "k"
    },
    {
  type = "item-subgroup",
  name = "recycling",
  group = "resources",
  order = "l"
    },
        {
        type = "recipe",
        name = "amalgam-smelting",
        enabled = false,
        category = "smelting",
        energy_required = 1.6,
        results = {
            {type = "item", name ="amalgam-ingot", amount = 1},
        },
        subgroup = "amalgam",
        order = "a",
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
        subgroup = "amalgam",
        order = "a-b",
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
        subgroup = "crystallite",
        order = "b",
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
        subgroup = "wolframite",
        order = "c-b",
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
        subgroup = "wolframite",
        order = "c",
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
        subgroup = "intermediate-product",
        order = "a",
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
        subgroup = "wiring",
        order = "a",
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
        subgroup = "shale",
        order = "a",
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
        subgroup = "intermediate-product",
        order = "a-b",
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
        subgroup = "crystallite",
        order = "b-b",
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
        subgroup = "intermediate-product",
        order = "a-c",
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
        order = "a",
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
        subgroup = "beam",
        order = "a",
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
        subgroup = "plating",
        order = "a",
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
        subgroup = "gear",
        order = "a",
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
        subgroup = "plating",
        order = "b",
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
        subgroup = "spring",
        order = "a",
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
        subgroup = "rod",
        order = "a",
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
        subgroup = "coil",
        order = "a",
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
        subgroup = "rivets",
        order = "a",
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
        subgroup = "plating",
        order = "c",
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
        subgroup = "piping",
        order = "a",
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
        order = "e",
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
        order = "e-b",
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
        order = "e-c",
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
        order = "e-d",
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
        order = "f",
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
        order = "f-b",
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
        order = "f-c",
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
        subgroup = "stone",
        order = "g-a",
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
        order = "f-d",
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
        order = "f-e",
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
        subgroup = "amalgam",
        order = "a-c",
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
        subgroup = "amalgam",
        order = "a-d",
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
        subgroup = "iron",
        order = "h",
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
        subgroup = "iron",
        order = "h-b",
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
        subgroup = "iron",
        order = "h-c",
        localised_name = {"", format_name("iron-ingot-casting")}
    },
    {
        type = "recipe",
        name = "stone-crushing",
        enabled = false,
        category = "crushing",
        energy_required = 0.5,
        results = {
            {type = "item", name ="sand", amount = 2},
        },
        subgroup = "stone",
        order = "g-b",
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
        subgroup = "stone",
        order = "g-c",
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
        subgroup = "stone",
        order = "g-d",
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
        subgroup = "iron",
        order = "h-d",
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
        subgroup = "plating",
        order = "a-b",
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
        subgroup = "beam",
        order = "a-b",
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
        subgroup = "spring",
        order = "a-b",
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
        subgroup = "gear",
        order = "a-b",
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
        subgroup = "piping",
        order = "a-b",
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
        subgroup = "rod",
        order = "a-b",
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
        subgroup = "rivets",
        order = "a-b",
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
        subgroup = "glass",
        order = "a",
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
        subgroup = "glass",
        order = "b",
        ingredients = {
            {type = "item", name ="glass", amount = 4},
        },
        localised_name = {"", format_name("glass-lens")}
    },
    {
        type = "recipe",
        name = "beaker",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="empty-beaker", amount = 1},
        },
        subgroup = "glass",
        order = "c",
        ingredients = {
            {type = "item", name ="glass", amount = 2},
        },
        localised_name = {"", format_name("empty-beaker")}
    },
    {
        type = "recipe",
        name = "chemical-utilization-science-pack",
        enabled = false,
        category = "crafting-with-fluid",
        energy_required = 20,
        results = {
            {type = "item", name ="logistic-science-pack", amount = 2},
        },
        subgroup = "science-pack",
        order = "a-b",
        ingredients = {
            {type = "item", name ="vacuum-tube", amount = 2},
            {type = "item", name ="empty-beaker", amount = 2},
            {type = "item", name ="lens", amount = 2},
            {type = "fluid", name ="water", amount = 100},
            {type = "fluid", name ="sulfuric-acid", amount = 100},
        },
        localised_name = {"", format_name("chemical-utilization-science-pack")}
    },
    {
        type = "recipe",
        name = "vacuum-tube",
        enabled = false,
        category = "crafting",
        energy_required = 2,
        results = {
            {type = "item", name ="vacuum-tube", amount = 2},
        },
        subgroup = "intermediate-product",
        order = "a-d",
        ingredients = {
            {type = "item", name ="glass-tube", amount = 1},
            {type = "item", name ="basic-coil", amount = 2},
            {type = "item", name ="basic-plating", amount = 4},
            {type = "item", name ="basic-wiring", amount = 8},
        },
        localised_name = {"", format_name("vacuum-tube")}
    },
    {
        type = "recipe",
        name = "dirty-water-dumping",
        enabled = false,
        icon = "__delirium__/graphics/icons/recipes/dirty-water-dumping.png",
        icon_size = 1024,
        category = "chemistry",
        energy_required = 1,
        subgroup = "recycling",
        order = "a",
        ingredients = {
            {type = "fluid", name ="dirty-water", amount = 100},
        },
        localised_name = {"", format_name("dump-dirty-water-into-the-ground")}
    },
})