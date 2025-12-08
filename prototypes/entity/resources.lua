local sounds = require "__base__.prototypes.entity.sounds"
local base_tile_sounds = require("__base__.prototypes.tile.tile-sounds")
local resource_autoplace = require("resource-autoplace")

local function resource(resource_parameters, autoplace_parameters)
  return
  {
    type = "resource",
    name = resource_parameters.name,
    icon = resource_parameters.icon,
    flags = {"placeable-neutral"},
    order="a-b-"..resource_parameters.order,
    tree_removal_probability = 0.8,
    tree_removal_max_distance = 32 * 32,
    minable = resource_parameters.minable or
    {
      mining_particle = "stone-particle",--remember to change later
      mining_time = resource_parameters.mining_time,
      result = resource_parameters.result
    },
    category = resource_parameters.category,
    subgroup = resource_parameters.subgroup,
    walking_sound = resource_parameters.walking_sound,
    collision_mask = resource_parameters.collision_mask,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    resource_patch_search_radius = resource_parameters.resource_patch_search_radius,
    autoplace = autoplace_parameters.probability_expression ~= nil and
    {
      --control = resource_parameters.name,
      order = resource_parameters.order,
      probability_expression = autoplace_parameters.probability_expression,
      richness_expression = autoplace_parameters.richness_expression
    }
    or resource_autoplace.resource_autoplace_settings
    {
      name = resource_parameters.name,
      order = resource_parameters.order,
      autoplace_control_name = resource_parameters.autoplace_control_name,
      base_density = autoplace_parameters.base_density,
      base_spots_per_km = autoplace_parameters.base_spots_per_km2,
      regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
      starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
      candidate_spot_count = autoplace_parameters.candidate_spot_count,
      tile_restriction = autoplace_parameters.tile_restriction
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages =
    {
      sheet =
      {
        filename = resource_parameters.entityicon,
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
    map_color = resource_parameters.map_color,
    mining_visualisation_tint = resource_parameters.mining_visualisation_tint,
    factoriopedia_simulation = resource_parameters.factoriopedia_simulation
  }
end

data:extend({
  resource(--amalgam
    {
      name = "amalgam",
      order = "b",
      map_color = {0.35, 0.65, 0.65},
      mining_time = 1,
      result = "amalgam",
      walking_sound = sounds.ore,
      mining_visualisation_tint = {r = 1.000, g = 0.675, b = 0.541, a = 1.000},
      icon = "__Krastorio2Assets__/icons/resources/rare-metal-ore.png",
      entityicon = "__Krastorio2Assets__/resources/rare-metal-ore/rare-metal-ore.png",
    },
    {
    probability_expression = "amalgam_probability",
    richness_expression = "amalgam_richness"
    }
  ),
  {--amalgam autoplace controls
    type = "autoplace-control",
    name = "amalgam",
    localised_name = {"", "[entity=amalgam] ", {"entity-name.amalgam"}},
    richness = true,
    order = "a-a",
    category = "resource"
  },

})