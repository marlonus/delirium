require ("sound-util")
require ("circuit-connector-sprites")
require ("util")
require ("__space-age__.prototypes.entity.circuit-network")
require ("__space-age__.prototypes.entity.space-platform-hub-cockpit")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require ("__space-age__.prototypes.entity.sounds")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")
local procession_graphic_catalogue_types = require("__base__/prototypes/planet/procession-graphic-catalogue-types")

local biochamber_pictures = require("__space-age__.prototypes.entity.biochamber-pictures")

data:extend({
{
    type = "assembling-machine",
    name = "crusher",
    icon = "__space-age__/graphics/icons/crusher.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "crusher"},
    fast_replaceable_group = "crusher",
    max_health = 350,
    corpse = "crusher-remnants",
    dying_explosion = "electric-furnace-explosion",
    circuit_wire_max_distance = 9,
    circuit_connector = circuit_connector_definitions["crusher"],
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.7, -1.2}, {0.7, 1.2}},
    selection_box = {{-1, -1.5}, {1, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    module_slots = 2,
    icons_positioning =
    {
      {inventory_index = defines.inventory.furnace_modules, shift = {0, 0.3}}
    },
    icon_draw_specification = {shift = {0, -0.45}},
    allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"},
    crafting_categories = {"crushing"},
    crafting_speed = 1,
    energy_usage = "540kW",
    heating_energy = "200kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1 }
    },
    open_sound = sounds.mech_small_open,
    close_sound = sounds.mech_small_close,
    working_sound =
    {
      sound =
      {
        filename = "__space-age__/sound/entity/crusher/crusher-loop.ogg",
        volume = 0.8,
        audible_distance_modifier = 0.6,
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      max_sounds_per_prototype = 3
    },
    graphics_set = require("__space-age__.prototypes.entity.crusher-pictures"),
    water_reflection =
    {
      pictures =
      {
        filename = "__space-age__/graphics/entity/crusher/crusher-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 40-32),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
  },
})