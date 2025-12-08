data:extend
({
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
    icon = "__Krastorio2Assets__/icons/items/black-reinforced-plate.png",
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
    fuel_value = "10MJ",
    fuel_category = "chemical",
  },
  {
    type = "item",
    name = "unstable-crystallite",
    icon = "__delirium__/graphics/icons/items/resources/unstable-crystallite.png",
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
    pictures = {
    {size = 1024, filename = "__delirium__/graphics/icons/items/intermediates/calibration-coil.png", scale = 0.03125, mipmap_count = 4}
    },
    subgroup = "intermediate-product",
    order = "c-b-1",
    stack_size = 50
  },
})