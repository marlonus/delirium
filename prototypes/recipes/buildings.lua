    local function format_name(name)
        local formatted = name:gsub("%-", " ")
        return (formatted:gsub("^%l", string.upper))
    end

data:extend({
    {
        type = "recipe",
        name = "yellow-belt",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="transport-belt", amount = 2},
        },
        subgroup = "belt",
        order = "a",
        ingredients = {
            {type = "item", name ="basic-plating", amount = 2},
            {type = "item", name ="basic-gear", amount = 1},
        },
    },
    {
        type = "recipe",
        name = "yellow-underground",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="underground-belt", amount = 2},
        },
        subgroup = "belt",
        order = "a-b",
        ingredients = {
            {type = "item", name ="transport-belt", amount = 5},
            {type = "item", name ="basic-plating", amount = 10},
        },
    },
    {
        type = "recipe",
        name = "yellow-splitter",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="splitter", amount = 2},
        },
        subgroup = "belt",
        order = "a-c",
        ingredients = {
            {type = "item", name ="basic-plating", amount = 4},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="transport-belt", amount = 2},
        },
    },
    {
        type = "recipe",
        name = "burner-inserter",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="burner-inserter", amount = 1},
        },
        subgroup = "inserter",
        order = "a",
        ingredients = {
            {type = "item", name ="basic-plating", amount = 2},
            {type = "item", name ="basic-gear", amount = 1},
        },
    },
    {
        type = "recipe",
        name = "yellow-inserter",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="inserter", amount = 1},
        },
        subgroup = "inserter",
        order = "a-b",
        ingredients = {
            {type = "item", name ="basic-plating", amount = 1},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="burner-inserter", amount = 1},
        },
    },
    {
        type = "recipe",
        name = "red-inserter",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="long-handed-inserter", amount = 1},
        },
        subgroup = "inserter",
        order = "a-c",
        ingredients = {
            {type = "item", name ="basic-plating", amount = 1},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="inserter", amount = 1},
        },
    },
    {
        type = "recipe",
        name = "assembler",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="assembling-machine-1", amount = 2},
        },
        subgroup = "production-machine",
        order = "a",
        ingredients = {
            {type = "item", name ="basic-plating", amount = 4},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-gear", amount = 2},
        },
    },
    {
        type = "recipe",
        name = "mining-drill",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="electric-mining-drill", amount = 2},
        },
        subgroup = "extraction-machine",
        order = "a-b",
        ingredients = {
            {type = "item", name ="basic-plating", amount = 4},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-beam", amount = 2},
        },
    },
    {
        type = "recipe",
        name = "power-pole",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="small-electric-pole", amount = 2},
        },
        subgroup = "energy-pipe-distribution",
        order = "c",
        ingredients = {
            {type = "item", name ="basic-rod", amount = 2},
            {type = "item", name ="basic-wiring", amount = 2},
        },
    },
    {
        type = "recipe",
        name = "furnace",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="stone-furnace", amount = 1},
        },
        subgroup = "smelting-machine",
        order = "a",
        ingredients = {
            {type = "item", name ="calcite", amount = 5},
        },
    },
    {
        type = "recipe",
        name = "lab",
        enabled = false,
        category = "crafting",
        energy_required = 2,
        results = {
            {type = "item", name ="lab", amount = 1},
        },
        subgroup = "production-machine",
        order = "a-b",
        ingredients = {
            {type = "item", name ="basic-plating", amount = 10},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-beam", amount = 2},
        },
    },
    {
        type = "recipe",
        name = "chest",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="iron-chest", amount = 1},
        },
        subgroup = "storage",
        order = "a",
        ingredients = {
            {type = "item", name ="basic-plating", amount = 8},
        },
    },
    {
        type = "recipe",
        name = "combustion-generator",
        enabled = false,
        category = "crafting",
        energy_required = 2,
        results = {
            {type = "item", name ="combustion-generator", amount = 1},
        },
        subgroup = "energy-pipe-distribution",
        order = "c",
        ingredients = {
            {type = "item", name ="calibration-coil", amount = 2},
            {type = "item", name ="alloy-support-structure", amount = 2},
            {type = "item", name ="basic-plating", amount = 10},
        },
    },
        {
        type = "recipe",
        name = "crusher",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="crusher", amount = 1},
        },
        subgroup = "production-machine",
        order = "a-c",
        ingredients = {
            {type = "item", name ="basic-gear", amount = 2},
            {type = "item", name ="alloy-support-structure", amount = 2},
            {type = "item", name ="tensile-plating", amount = 3},
            {type = "item", name ="electronic-circuit", amount = 2},
        },
    },
        {
        type = "recipe",
        name = "burner-mining-drill",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="burner-mining-drill", amount = 1},
        },
        subgroup = "extraction-machine",
        order = "a",
        ingredients = {
            {type = "item", name ="stone-furnace", amount = 1},
            {type = "item", name ="basic-gear", amount = 1},
            {type = "item", name ="basic-plating", amount = 6},
        },
    },
    {
        type = "recipe",
        name = "pipe",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="pipe", amount = 2},
        },
        subgroup = "energy-pipe-distribution",
        order = "a",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 1}
        },
        localised_name = {"", format_name("pipe")}
    },
    {
        type = "recipe",
        name = "underground-pipe",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="pipe-to-ground", amount = 2},
        },
        subgroup = "energy-pipe-distribution",
        order = "a-b",
        ingredients = {
            {type = "item", name ="basic-plating", amount = 5},
            {type = "item", name ="pipe", amount = 10}
        },
        localised_name = {"", format_name("underground-pipe")}
    },
    {
        type = "recipe",
        name = "fluid-tank",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="storage-tank", amount = 1},
        },
        subgroup = "storage",
        order = "a-b",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 4},
            {type = "item", name ="pipe", amount = 4},
            {type = "item", name ="basic-beam", amount = 2}
        },
        localised_name = {"", format_name("fluid-storage-tank")}
    },
    {
        type = "recipe",
        name = "pump",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="pump", amount = 1},
        },
        subgroup = "energy-pipe-distribution",
        order = "a-c",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 4},
            {type = "item", name ="pipe", amount = 2},
            {type = "item", name ="electronic-circuit", amount = 2}
        },
        localised_name = {"", format_name("pump")}
    },
    {
        type = "recipe",
        name = "overflow",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="valves-overflow", amount = 1},
        },
        subgroup = "energy-pipe-distribution",
        order = "a-d",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 2},
            {type = "item", name ="pipe", amount = 1},
            {type = "item", name ="electronic-circuit", amount = 1}
        },
        localised_name = {"", format_name("overflow-valve")}
    },
    {
        type = "recipe",
        name = "top-up",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="valves-top_up", amount = 1},
        },
        subgroup = "energy-pipe-distribution",
        order = "a-e",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 2},
            {type = "item", name ="pipe", amount = 1},
            {type = "item", name ="electronic-circuit", amount = 1}
        },
        localised_name = {"", format_name("top-up-valve")}
    },
    {
        type = "recipe",
        name = "one-way",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="valves-one_way", amount = 1},
        },
        subgroup = "energy-pipe-distribution",
        order = "a-f",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 2},
            {type = "item", name ="pipe", amount = 1},
            {type = "item", name ="electronic-circuit", amount = 1}
        },
        localised_name = {"", format_name("one-way-valve")}
    },
    {
        type = "recipe",
        name = "chemical-plant",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="chemical-plant", amount = 1},
        },
        subgroup = "production-machine",
        order = "e",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 4},
            {type = "item", name ="pipe", amount = 4},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-plating", amount = 6}
        },
        localised_name = {"", format_name("chemical-plant")}
    },
    {
        type = "recipe",
        name = "chemical-refinery",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="oil-refinery", amount = 1},
        },
        subgroup = "production-machine",
        order = "e-b",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 4},
            {type = "item", name ="pipe", amount = 4},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-plating", amount = 6}
        },
        localised_name = {"", format_name("chemical-refinery")}
    },
    {
        type = "recipe",
        name = "crystallizer",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="crystallizer", amount = 1},
        },
        subgroup = "production-machine",
        order = "e-c",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 4},
            {type = "item", name ="pipe", amount = 4},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-plating", amount = 6}
        },
        localised_name = {"", format_name("crystallizer")}
    },
    {
        type = "recipe",
        name = "purifier",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="purifier", amount = 1},
        },
        subgroup = "production-machine",
        order = "e-d",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 4},
            {type = "item", name ="pipe", amount = 4},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-plating", amount = 6}
        },
        localised_name = {"", format_name("purifier")}
    },
    {
        type = "recipe",
        name = "cooler",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="cooler", amount = 1},
        },
        subgroup = "production-machine",
        order = "e-e",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 4},
            {type = "item", name ="pipe", amount = 4},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-plating", amount = 6}
        },
        localised_name = {"", format_name("cooler")}
    },
    {
        type = "recipe",
        name = "condenser",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="condenser", amount = 1},
        },
        subgroup = "production-machine",
        order = "e-f",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 2},
            {type = "item", name ="pipe", amount = 2},
            {type = "item", name ="electronic-circuit", amount = 1},
            {type = "item", name ="basic-plating", amount = 2}
        },
        localised_name = {"", format_name("condenser")}
    },
    {
        type = "recipe",
        name = "caster",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="caster", amount = 1},
        },
        subgroup = "production-machine",
        order = "c",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 2},
            {type = "item", name ="pipe", amount = 2},
            {type = "item", name ="electronic-circuit", amount = 1},
            {type = "item", name ="basic-plating", amount = 2}
        },
        localised_name = {"", format_name("caster")}
    },
    {
        type = "recipe",
        name = "arc-furnace",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="arc-furnace", amount = 1},
        },
        subgroup = "production-machine",
        order = "c-b",
        ingredients = {
            {type = "item", name ="basic-piping", amount = 8},
            {type = "item", name ="pipe", amount = 4},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-plating", amount = 12}
        },
        localised_name = {"", format_name("arc-furnace")}
    },
    {
        type = "recipe",
        name = "sorter",
        enabled = false,
        category = "crafting",
        energy_required = 0.5,
        results = {
            {type = "item", name ="ore-sorter", amount = 1},
        },
        subgroup = "production-machine",
        order = "c-c",
        ingredients = {
            {type = "item", name ="tensile-plating", amount = 4},
            {type = "item", name ="transport-belt", amount = 4},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-plating", amount = 12}
        },
        localised_name = {"", format_name("ore-sorting-facility")}
    },
    {
        type = "recipe",
        name = "assembler-2",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        results = {
            {type = "item", name ="assembling-machine-2", amount = 1},
        },
        subgroup = "production-machine",
        order = "a-c",
        ingredients = {
            {type = "item", name ="tensile-plating", amount = 2},
            {type = "item", name ="assembling-machine-1", amount = 1},
            {type = "item", name ="electronic-circuit", amount = 2},
            {type = "item", name ="basic-plating", amount = 12}
        },
        localised_name = {"", format_name("assembler-2")}
    },
        {
        type = "recipe",
        name = "arithmetic",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        subgroup = "circuit-network",
        order = "a",
        results = {
            {type = "item", name ="arithmetic-combinator", amount = 1},
        },
        ingredients = {
            {type = "item", name ="basic-wiring", amount = 5},
            {type = "item", name ="basic-plating", amount = 5},
        },
        localised_name = {"", format_name("arithmetic-combinator")}
    },
        {
        type = "recipe",
        name = "decider",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        subgroup = "circuit-network",
        order = "a-b",
        results = {
            {type = "item", name ="decider-combinator", amount = 1},
        },
        ingredients = {
            {type = "item", name ="basic-wiring", amount = 5},
            {type = "item", name ="basic-plating", amount = 5},
        },
        localised_name = {"", format_name("decider-combinator")}
    },
        {
        type = "recipe",
        name = "speaker",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        subgroup = "circuit-network",
        order = "b",
        results = {
            {type = "item", name ="programmable-speaker", amount = 1},
        },
        ingredients = {
            {type = "item", name ="basic-wiring", amount = 5},
            {type = "item", name ="basic-plating", amount = 5},
        },
        localised_name = {"", format_name("programmable-speaker")}
    },
        {
        type = "recipe",
        name = "switch",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        subgroup = "circuit-network",
        order = "b-b",
        results = {
            {type = "item", name ="power-switch", amount = 1},
        },
        ingredients = {
            {type = "item", name ="basic-wiring", amount = 5},
            {type = "item", name ="basic-plating", amount = 5},
        },
        localised_name = {"", format_name("power-switch")}
    },
        {
        type = "recipe",
        name = "lamp",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        subgroup = "circuit-network",
        order = "b-c",
        results = {
            {type = "item", name ="small-lamp", amount = 1},
        },
        ingredients = {
            {type = "item", name ="basic-wiring", amount = 5},
            {type = "item", name ="basic-plating", amount = 5},
        },
        localised_name = {"", format_name("lamp")}
    },
        {
        type = "recipe",
        name = "display",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        subgroup = "circuit-network",
        order = "b-d",
        results = {
            {type = "item", name ="display-panel", amount = 1},
        },
        ingredients = {
            {type = "item", name ="basic-wiring", amount = 5},
            {type = "item", name ="basic-plating", amount = 5},
        },
        localised_name = {"", format_name("display-panel")}
    },
        {
        type = "recipe",
        name = "selector",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        subgroup = "circuit-network",
        order = "a-c",
        results = {
            {type = "item", name ="selector-combinator", amount = 1},
        },
        ingredients = {
            {type = "item", name ="basic-wiring", amount = 5},
            {type = "item", name ="basic-plating", amount = 5},
        },
        localised_name = {"", format_name("selector-combinator")}
    },
        {
        type = "recipe",
        name = "constant",
        enabled = false,
        category = "crafting",
        energy_required = 1,
        subgroup = "circuit-network",
        order = "a-d",
        results = {
            {type = "item", name ="constant-combinator", amount = 1},
        },
        ingredients = {
            {type = "item", name ="basic-wiring", amount = 5},
            {type = "item", name ="basic-plating", amount = 5},
        },
        localised_name = {"", format_name("constant-combinator")}
    },
})