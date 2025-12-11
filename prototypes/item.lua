local basic_items = {"basic-beam","basic-bearing","basic-cable-ribbon","basic-cabling","basic-coil","basic-gear","basic-plating","basic-rivets","basic-solder","basic-spring","glass-tube","lens","radiation-resistant-plating","rubber-tube","tensile-plating","thermal-plating","thin-plating","magnet"}

    local function format_name(name)
        local formatted = name:gsub("%-", " ")
        return (formatted:gsub("^%l", string.upper))
    end
    local function create_basic_item(itemname)
        local basic_item_function = {
            type = "item",
            name = itemname,
            icon = "__delirium__/graphics/icons/items/intermediates/".. itemname .. ".png",
            icon_size = 1024,
            pictures = {{size = 1024, filename = "__delirium__/graphics/icons/items/intermediates/".. itemname .. ".png", scale = 0.03125, mipmap_count = 4}},
            subgroup = "intermediate-product",
            stack_size = 100,
            localised_name = {"", format_name(itemname)}
        }
        data:extend({basic_item_function})
        return basic_item_function
    end

for name, itemname in ipairs(basic_items) do
    create_basic_item(itemname)
end

data:extend({

    {
        type = "item",
        name = "amalgam",
        icon = "__Krastorio2Assets__/icons/items/rare-metal-ore.png",
            pictures =
            {
            {size = 64, filename = "__Krastorio2Assets__/icons/items/rare-metal-ore.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__Krastorio2Assets__/icons/items/rare-metal-ore-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__Krastorio2Assets__/icons/items/rare-metal-ore-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__Krastorio2Assets__/icons/items/rare-metal-ore-3.png", scale = 0.5, mipmap_count = 4}
            },
            subgroup = "raw-resource",
            stack_size = 50
    },
    {
    type = "item",
    name = "amalgam-ingot",
        icon = "__Krastorio2Assets__/icons/items/rare-metals.png",
            pictures =
            {
            {size = 64, filename = "__Krastorio2Assets__/icons/items/rare-metals.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__Krastorio2Assets__/icons/items/rare-metals-1.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__Krastorio2Assets__/icons/items/rare-metals-2.png", scale = 0.5, mipmap_count = 4},
            {size = 64, filename = "__Krastorio2Assets__/icons/items/rare-metals-3.png", scale = 0.5, mipmap_count = 4}
            },
            subgroup = "raw-material",
            stack_size = 100
    },
  {
    type = "item",
    name = "wolframite-powder",
    icon = "__delirium__/graphics/icons/items/resources/wolframite-powder.png",
    icon_size = 64,
    pictures = {
    {size = 64, filename = "__delirium__/graphics/icons/items/resources/wolframite-powder.png", scale = 0.5, mipmap_count = 4}
    },
    subgroup = "raw-material",
    order = "a-b-2",
    stack_size = 200
  },
  {
    type = "item",
    name = "amalgam-plate",
    icon = "__delirium__/graphics/icons/items/resources/amalgam-plate.png",
    subgroup = "raw-material",
    order = "a-b-2",
    stack_size = 200
  },
  {
    type = "item",
    name = "stabilized-crystallite",
    icon = "__Krastorio2Assets__/icons/items/quartz.png",
    subgroup = "raw-material",
    order = "b-a-1",
    stack_size = 100,
  },
  {
    type = "item",
    name = "unstable-crystallite",
    icon = "__delirium__/graphics/icons/items/resources/unstable-crystallite.png",
    icon_size = 1024,
    pictures = {
    {size = 1024, filename = "__delirium__/graphics/icons/items/resources/unstable-crystallite.png", scale = 0.03125, mipmap_count = 4}
    },
    subgroup = "raw-material",
    order = "b-a-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "alloy-support-structure",
    icon = "__delirium__/graphics/icons/items/intermediates/alloy-support-structure.png",
    icon_size = 1024,
    pictures = {
    {size = 1024, filename = "__delirium__/graphics/icons/items/intermediates/alloy-support-structure.png", scale = 0.03125, mipmap_count = 4}
    },
    subgroup = "intermediate-product",
    order = "c-a-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "calibration-coil",
    icon = "__delirium__/graphics/icons/items/intermediates/calibration-coil.png",
    icon_size = 1024,
    pictures = {
    {size = 1024, filename = "__delirium__/graphics/icons/items/intermediates/calibration-coil.png", scale = 0.03125, mipmap_count = 4}
    },
    subgroup = "intermediate-product",
    order = "c-b-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "basic-wiring",
    icon = "__delirium__/graphics/icons/items/intermediates/basic-wiring.png",
    icon_size = 64,
    pictures = {
    {size = 64, filename = "__delirium__/graphics/icons/items/intermediates/basic-wiring.png", scale = 0.5, mipmap_count = 4}
    },
    subgroup = "intermediate-product",
    order = "c-b-1",
    stack_size = 200
  },
  {
    type = "item",
    name = "shale",
    icon = "__delirium__/graphics/icons/items/resources/shale/shale.png",
        pictures =
        {
        {size = 64, filename = "__delirium__/graphics/icons/items/resources/shale/shale.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "raw-resource",
        stack_size = 200,
        icon_size = 64,
  },
    {
    type = "item",
    name = "graphite",
    icon = "__delirium__/graphics/icons/items/resources/graphite.png",
    icon_size = 1024,
    pictures = {
    {size = 1024, filename = "__delirium__/graphics/icons/items/resources/graphite.png", scale = 0.03125, mipmap_count = 4}
    },
    subgroup = "raw-material",
    order = "c-b-1",
    stack_size = 50,
    fuel_value = "10MJ",
    fuel_category = "chemical",
  },
  {
    type = "item",
    name = "combustion-generator",
    icon = "__delirium__/graphics/icons/entity/thermal-plant/thermal-plant-icon.png",
    icon_size = 64,
    pictures = {
    {size = 64, filename = "__delirium__/graphics/icons/entity/thermal-plant/thermal-plant-icon.png", scale = 0.5, mipmap_count = 4}
    },
    subgroup = "energy",
    order = "a-b-1",
    stack_size = 10,
    place_result = "combustion-generator"
  },
  {
    type = "item",
    name = "wolframite",
    icon = "__delirium__/graphics/icons/items/resources/wolframite/wolframite.png",
        pictures =
        {
        {size = 64, filename = "__delirium__/graphics/icons/items/resources/wolframite/wolframite.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "raw-resource",
        stack_size = 200,
        icon_size = 64,
  },
    {
    type = "item",
    name = "crushed-amalgam",
    icon = "__delirium__/graphics/icons/items/resources/wolframite/wolframite.png",
        pictures =
        {
        {size = 64, filename = "__delirium__/graphics/icons/items/resources/wolframite/wolframite.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "raw-resource",
        stack_size = 200,
        icon_size = 64,
    localised_name = {"", format_name("crushed-amalgam")}
  },
    {
    type = "item",
    name = "basic-piping",
    icon = "__delirium__/graphics/icons/items/intermediates/basic-tubing.png",
        pictures =
        {
        {size = 64, filename = "__delirium__/graphics/icons/items/intermediates/basic-tubing.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 64,
    localised_name = {"", format_name("basic-piping")}
  },
    {
    type = "item",
    name = "basic-rod",
    icon = "__delirium__/graphics/icons/items/intermediates/basic-rod.png",
        pictures =
        {
        {size = 64, filename = "__delirium__/graphics/icons/items/intermediates/basic-rod.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 64,
    localised_name = {"", format_name("basic-rod")}
  },
    {
        type = "item",
        name = "crystallizer",
        icon = "__delirium__/graphics/icons/entity/grower.png",
        pictures =
        {
        {size = 512, filename = "__delirium__/graphics/icons/entity/grower.png", scale = 0.0625, mipmap_count = 4}
        },
        icon_size = 512,
        subgroup = "production-machine",
        order = "z-a",
        stack_size = 10,
        place_result = "crystallizer",
        localised_name = {"", format_name("crystallizer")}
  },
    {
        type = "item",
        name = "ore-sorter",
        icon = "__delirium__/graphics/icons/entity/ore-sorting-facility.png",
        pictures =
        {
        {size = 64, filename = "__delirium__/graphics/icons/entity/ore-sorting-facility.png", scale = 0.5, mipmap_count = 4}
        },
        icon_size = 64,
        subgroup = "production-machine",
        order = "z-a",
        stack_size = 10,
        place_result = "ore-sorter",
        localised_name = {"", format_name("ore-sorting-facility")}
  },
    {
        type = "item",
        name = "cooler",
        icon = "__delirium__/graphics/icons/entity/cooler.png",
        pictures =
        {
        {size = 512, filename = "__delirium__/graphics/icons/entity/cooler.png", scale = 0.0625, mipmap_count = 4}
        },
        icon_size = 512,
        subgroup = "production-machine",
        order = "z-a",
        stack_size = 10,
        place_result = "cooler",
        localised_name = {"", format_name("cooler")}
  },
    {
        type = "item",
        name = "purifier",
        icon = "__delirium__/graphics/icons/entity/purifier.png",
        pictures =
        {
        {size = 512, filename = "__delirium__/graphics/icons/entity/purifier.png", scale = 0.0625, mipmap_count = 4}
        },
        icon_size = 512,
        subgroup = "production-machine",
        order = "z-a",
        stack_size = 10,
        place_result = "purifier",
        localised_name = {"", format_name("purifier")}
  },
    {
        type = "item",
        name = "caster",
        icon = "__delirium__/graphics/icons/entity/caster.png",
        pictures =
        {
        {size = 512, filename = "__delirium__/graphics/icons/entity/caster.png", scale = 0.0625, mipmap_count = 4}
        },
        icon_size = 512,
        subgroup = "production-machine",
        order = "z-a",
        stack_size = 10,
        place_result = "caster",
        localised_name = {"", format_name("caster")}
  },
    {
        type = "item",
        name = "arc-furnace",
        icon = "__delirium__/graphics/icons/entity/arc-furnace.png",
        pictures =
        {
        {size = 512, filename = "__delirium__/graphics/icons/entity/arc-furnace.png", scale = 0.0625, mipmap_count = 4}
        },
        icon_size = 512,
        subgroup = "production-machine",
        order = "z-a",
        stack_size = 10,
        place_result = "arc-furnace",
        localised_name = {"", format_name("arc-furnace")}
  },
    {
        type = "item",
        name = "condenser",
        icon = "__delirium__/graphics/icons/entity/lufter.png",
        pictures =
        {
        {size = 512, filename = "__delirium__/graphics/icons/entity/lufter.png", scale = 0.0625, mipmap_count = 4}
        },
        icon_size = 512,
        subgroup = "production-machine",
        order = "z-a",
        stack_size = 10,
        place_result = "condenser",
        localised_name = {"", format_name("atmospheric-condenser")}
  },
    {
    type = "item",
    name = "slag",
    icon = "__delirium__/graphics/icons/items/resources/slag.png",
        pictures =
        {
        {size = 1024, filename = "__delirium__/graphics/icons/items/resources/slag.png", scale = 0.03125, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 1024,
    localised_name = {"", format_name("slag")}
  },
    {
    type = "item",
    name = "crushed-amalgam",
    icon = "__Krastorio2Assets__/icons/items/enriched-rare-metals.png",
    icon_size = 64,
        pictures =
        {
        {size = 64, filename = "__Krastorio2Assets__/icons/items/enriched-rare-metals.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
    localised_name = {"", format_name("crushed-amalgam")}
  },
    {
    type = "item",
    name = "hematite",
    icon = "__delirium__/graphics/icons/items/resources/hematite.png",
        pictures =
        {
        {size = 1024, filename = "__delirium__/graphics/icons/items/resources/hematite.png", scale = 0.03125, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 1024,
    localised_name = {"", format_name("hematite")}
  },
    {
    type = "item",
    name = "crushed-pyrite",
    icon = "__delirium__/graphics/icons/items/resources/crushed-pyrite.png",
    icon_size = 1024,
        pictures =
        {
        {size = 1024, filename = "__delirium__/graphics/icons/items/resources/crushed-pyrite.png", scale = 0.03125, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
    localised_name = {"", format_name("crushed-pyrite")}
  },
    {
    type = "item",
    name = "glass",
    icon = "__delirium__/graphics/icons/items/resources/glass.png",
        pictures =
        {
        {size = 1024, filename = "__delirium__/graphics/icons/items/resources/glass.png", scale = 0.03125, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 1024,
    localised_name = {"", format_name("glass")}
  },
    {
    type = "item",
    name = "sand",
    icon = "__Krastorio2Assets__/icons/items/sand.png",
        pictures =
        {
        {size = 64, filename = "__Krastorio2Assets__/icons/items/sand.png", scale = 0.5, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 64,
    localised_name = {"", format_name("sand")}
  },
    {
    type = "item",
    name = "alumina",
    icon = "__delirium__/graphics/icons/items/resources/alumina.png",
        pictures =
        {
        {size = 1024, filename = "__delirium__/graphics/icons/items/resources/alumina.png", scale = 0.03125, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 1024,
    localised_name = {"", format_name("alumina")}
  },
    {
    type = "item",
    name = "aluminium-ingot",
    icon = "__delirium__/graphics/icons/items/resources/aluminium-ingot.png",
        pictures =
        {
        {size = 1024, filename = "__delirium__/graphics/icons/items/resources/aluminium-ingot.png", scale = 0.03125, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 1024,
    localised_name = {"", format_name("aluminium-ingot")}
  },
    {
    type = "item",
    name = "iron-ingot",
    icon = "__delirium__/graphics/icons/items/resources/iron-ingot.png",
        pictures =
        {
        {size = 1024, filename = "__delirium__/graphics/icons/items/resources/iron-ingot.png", scale = 0.03125, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 1024,
    localised_name = {"", format_name("iron-ingot")}
  },
    {
    type = "item",
    name = "sodium-hydroxide",
    icon = "__delirium__/graphics/icons/items/resources/sodium-hydroxide.png",
        pictures =
        {
        {size = 1024, filename = "__delirium__/graphics/icons/items/resources/sodium-hydroxide.png", scale = 0.03125, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 1024,
    localised_name = {"", format_name("sodium-hydroxide")}
  },
    {
    type = "item",
    name = "crushed-bauxite",
    icon = "__delirium__/graphics/icons/items/resources/crushed-bauxite.png",
        pictures =
        {
        {size = 1024, filename = "__delirium__/graphics/icons/items/resources/crushed-bauxite.png", scale = 0.03125, mipmap_count = 4}
        },
        subgroup = "raw-material",
        stack_size = 200,
        icon_size = 1024,
    localised_name = {"", format_name("crushed-bauxite")}
  },
})

