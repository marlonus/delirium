    local function format_name(name)
        local formatted = name:gsub("%-", " ")
        return (formatted:gsub("^%l", string.upper))
    end

data:extend({
        {
        type = "recipe",
        name = "dirty-water-repurposing",
        enabled = false,
        icon = "__delirium__/graphics/icons/fluids/dirty-water.png",
        icon_size = 1024,
        category = "purifier",
        energy_required = 2,
        subgroup = "recycling",
        order = "a",
        results = {
            {type = "item", name ="stone", amount = 1, probability = 0.1},
            {type = "item", name ="sodium-hydroxide", amount = 2},
        },
        ingredients = {
            {type = "fluid", name ="dirty-water", amount = 200},
        },
        localised_name = {"", format_name("dirty-water-repurposing")}
    },
        {
        type = "recipe",
        name = "recycle-pyrite",
        enabled = false,
        icon = "__delirium__/graphics/icons/items/resources/crushed-pyrite.png",
        icon_size = 1024,
        category = "crushing",
        energy_required = 1,
        subgroup = "recycling",
        order = "b",
        results = {
            {type = "item", name ="stone", amount = 1, probability = 0.1},
        },
        ingredients = {
            {type = "item", name ="crushed-pyrite", amount = 4},
        },
        localised_name = {"", format_name("recycle-pyrite")}
    },
        {
        type = "recipe",
        name = "recycle-bauxite",
        enabled = false,
        icon = "__delirium__/graphics/icons/items/resources/crushed-bauxite.png",
        icon_size = 1024,
        category = "crushing",
        energy_required = 1,
        subgroup = "recycling",
        order = "b-b",
        results = {
            {type = "item", name ="stone", amount = 1, probability = 0.1},
        },
        ingredients = {
            {type = "item", name ="crushed-bauxite", amount = 4},
        },
        localised_name = {"", format_name("recycle-bauxite")}
    },
        {
        type = "recipe",
        name = "sodium-hydroxide-solution",
        enabled = false,
        category = "chemistry",
        energy_required = 1,
        subgroup = "raw-material",
        order = "f-g",
        results = {
            {type = "fluid", name ="sodium-hydroxide-solution", amount = 500},
        },
        ingredients = {
            {type = "fluid", name ="dirty-water", amount = 100},
            {type = "item", name ="sodium-hydroxide", amount = 5},
        },
        localised_name = {"", format_name("caustic-soda")}
    },
        {
        type = "recipe",
        name = "sodium-aluminate",
        enabled = false,
        icon = "__delirium__/graphics/icons/fluids/sodium-aluminate.png",
        icon_size = 1024,
        category = "chemistry",
        energy_required = 5,
        subgroup = "aluminium",
        order = "a",
        results = {
            {type = "fluid", name ="sodium-aluminate", amount = 100},
            {type = "fluid", name ="red-mud", amount = 100},
        },
        ingredients = {
            {type = "fluid", name ="sodium-hydroxide-solution", amount = 100},
            {type = "item", name ="crushed-bauxite", amount = 1},
        },
        localised_name = {"", format_name("sodium-aluminate")}
    },
        {
        type = "recipe",
        name = "red-mud-recycling",
        enabled = false,
        category = "purifier",
        energy_required = 1,
        icon = "__delirium__/graphics/icons/fluids/red-mud.png",
        icon_size = 1024,
        subgroup = "recycling",
        order = "a",
        results = {
            {type = "item", name ="crushed-bauxite", amount = 2, probability = 0.2},
            {type = "fluid", name ="oxygen", amount = 300, probability = 0.5},
        },
        ingredients = {
            {type = "fluid", name ="red-mud", amount = 500},
        },
        localised_name = {"", format_name("red-mud-recycling")}
    },
        {
        type = "recipe",
        name = "alumina",
        enabled = false,
        icon = "__delirium__/graphics/icons/items/resources/alumina.png",
        icon_size = 1024,
        category = "cooler",
        energy_required = 2,
        subgroup = "aluminium",
        order = "a-b",
        results = {
            {type = "item", name ="alumina", amount = 10},
            {type = "item", name ="sodium-hydroxide", amount = 1, probability = 0.5},
        },
        ingredients = {
            {type = "fluid", name ="sodium-aluminate", amount = 500},
        },
        localised_name = {"", format_name("alumina")}
    },
        {
        type = "recipe",
        name = "aluminium-ingot",
        enabled = false,
        category = "arc-furnace",
        energy_required = 2,
        subgroup = "aluminium",
        order = "a-c",
        results = {
            {type = "item", name ="aluminium-ingot", amount = 5},
        },
        ingredients = {
            {type = "item", name ="alumina", amount = 5},
        },
        localised_name = {"", format_name("aluminium-ingot")}
    },
        {
        type = "recipe",
        name = "aluminium-plate",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        subgroup = "aluminium",
        order = "a-d",
        results = {
            {type = "item", name ="aluminium-plate", amount = 1},
        },
        ingredients = {
            {type = "item", name ="aluminium-ingot", amount = 1},
        },
        localised_name = {"", format_name("aluminium-plate")}
    },
        {
        type = "recipe",
        name = "advanced-wire",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        subgroup = "aluminium",
        order = "a-e",
        results = {
            {type = "item", name ="advanced-wire", amount = 2},
        },
        ingredients = {
            {type = "item", name ="aluminium-plate", amount = 1},
        },
        localised_name = {"", format_name("advanced-wire")}
    },
})