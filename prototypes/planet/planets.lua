require("prototypes.entity.resources")

local planet_map_gen = {}

planet_map_gen.delur = function()
  return
  {
    property_expression_names =
    {
      elevation = "delur_elevation",
      cliffiness = "cliffiness_basic",
      cliff_elevation = "cliff_elevation_from_elevation",
      ["entity:amalgam:probability"] = "amalgam_property",
      ["entity:amalgam:richness"] = "amalgam_richness",
      ["entity:calcite:probability"] = "calcite_probability",
      ["entity:calcite:richness"] = "calcite_richness",
      ["entity:tungsten-ore:probability"] = "tungsten_ore_probability",
      ["entity:tungsten-ore:richness"] = "tungsten_ore_richness",
    },
    autoplace_controls =
    {
      ["amalgam"] = {},
      ["calcite"] = {},
      ["tungsten_ore"] = {},
      ["nauvis_cliff"] = {}
    },
    cliff_settings =
    {
      name = "cliff",
      cliff_elevation_interval = 2000,
      cliff_elevation_0 = 150,
      cliff_smoothing = 0,
      richness = 1
    },
    autoplace_settings =
    {
      ["tile"] =
      {
        settings =
        {
          ["dust-flat"] = {},
          ["dust-crests"] = {},
          ["dust-patchy"] = {},
          ["dust-lumpy"] = {},
          ["fulgoran-dunes"] = {},
          ["fulgoran-dust"] = {},
          ["fulgoran-sand"] = {},
          ["fulgoran-rock"] = {},
          ["ice-smooth"] = {},
        }
      },
      ["decorative"] =
      {
        settings =
        {
          ["vulcanus-dune-decal"] = {},
          ["calcite-stain"] = {},
          ["calcite-stain-small"] = {},
          ["crater-small"] = {},
          ["crater-large"] = {},
          ["pumice-relief-decal"] = {},
          ["small-volcanic-rock"] = {},
          ["waves-decal"] = {},
          ["medium-fulgora-rock"] = {},
          ["small-fulgora-rock"] = {},
          ["tiny-fulgora-rock"] = {},
        }
      },
      ["entity"] =
      {
        settings =
        {
          ["amalgam"] = {},
          ["calcite"] = {},
          ["tungsten-ore"] = {},
        }
      }
    }
  }
end

data:extend{
  {
    type = "noise-function",
    name = "delur_height",
    expression = [[
        clamp(abs(multioctave_noise{
            x = xx,
            y = yy,
            persistence = 0.5,
            seed0 = map_seed,
            seed1 = 1,
            octaves = 4,
            input_scale = 1/200,
            output_scale = 0.7
        }   
        + delur_rough_noise(xx,yy)
        + delur_trenches(xx,yy,1) 
        + delur_trenches(xx,yy,100)
        + delur_trenches(xx,yy,200)
        ),0,1)
        * clamp(-starting_amalgam*10-0.2,0,1) 
        * clamp(-starting_calcite*10-0.3,0,1) 
        * clamp(-starting_tungsten*10-0.3,0,1) 
        + 0.5 * clamp((starting_amalgam*10+0.3 >0),0,1)
        + 0.5 * clamp((starting_calcite*10+0.3 >0),0,1)
        + 0.5 * clamp((starting_tungsten*10+0.3 >0),0,1)
    ]],
    parameters = {"xx", "yy"}
  }
}
data:extend{--elevation (for cliffs)
  {
	type = "noise-expression",
	name = "delur_elevation",
	expression = "(delur_height(x,y)*-1000)+1000"
  }
}


data:extend{--delur rough noise
	{
	type = "noise-function",
	name = "delur_rough_noise",
	expression = [[
		multioctave_noise{
			x = xx,
			y = yy,
			persistence = 0.7,
			seed0 = map_seed,
			seed1 = 2,
			octaves = 6,
			input_scale = 1/4,
			output_scale = 0.07
		}
	]],
	parameters = {"xx", "yy"}
  }
}
data:extend {--distance from center
	{
    type = "noise-expression",
    name = "distance_from_center",
    expression = "(sqrt(x*x + y*y))",
  },
}
data:extend{--main function deciding where there are trenches.
	{
	type = "noise-function",
	name = "delur_trenches",
	expression = [[
		10 * floor(
			abs(
				ridge(
					multioctave_noise{
						x = xx,
						y = yy,
						persistence = 0.45,
						seed0 = map_seed,
						seed1 = layer,
						octaves = 8,
						input_scale = 1/1000,
						output_scale = 150
					},
					0.2,1.05)
				 -delur_trench_noise_large(xx,yy,layer) - delur_rough_noise(xx,yy) * 0.5
		))
	]],
	parameters = {"xx", "yy", "layer"}
  }
}
data:extend{--delur_trench_noise_large
	{
	type = "noise-function",--effectively decides what thickness a trench should be, down to 0, meaning no trench.
	name = "delur_trench_noise_large",--mainly so trenches arent continuous
	expression = [[
		ridge(multioctave_noise{
			x = xx,
			y = yy,
			persistence = 0.4,
			seed0 = map_seed,
			seed1 = layer,
			octaves = 4,
			input_scale = 1/600,
			output_scale = 0.2
		},0,0.4)
	]],
	parameters = {"xx", "yy", "layer"}
  }
}
data:extend{--ice bed placement (I hope)
    {
    type = "noise-function",
    name = "delur_ice_noise",
    expression = [[
            delur_height(x, y) - multioctave_noise{
            x = x,
            y = y,
            persistence = 0.2,
            seed0 = map_seed,
            seed1 = 30,
            octaves = 2,
            input_scale = 1/100,
            output_scale = 0.2
        } - 0.5
    ]],
    parameters = {"xx", "yy"}
  }
}
data:extend({--delur wobble
  {
    type = "noise-expression",
    name = "delur_wobble_x", -- only add to input X or Y
    expression = "multioctave_noise{x = x, y = y, persistence = 0.7, seed0 = map_seed, seed1 = 2000, octaves = 3, input_scale = 1/10}"
  },
  {
    type = "noise-expression",
    name = "delur_wobble_y", -- only add to input X or Y
    expression = "multioctave_noise{x = x, y = y, persistence = 0.7, seed0 = map_seed, seed1 = 3000, octaves = 3, input_scale = 1/10}"
  },
})


data:extend({--starting ore patches
	{
    type = "noise-expression",
    name = "starting_amalgam",
    expression = "starting_spot_at_angle{\z
			angle = (map_seed_normalized * 3600)+120,\z
    	distance = 70,\z
    	radius = 18,\z
    	x_distortion =  delur_wobble_x*4,\z
    	y_distortion =  delur_wobble_y*4\z
			}"
  },
	{
    type = "noise-expression",
    name = "starting_calcite",
    expression = "starting_spot_at_angle{\z
			angle = (map_seed_normalized * 3600)+240,\z
    	distance = 70,\z
    	radius = 17,\z
    	x_distortion =  delur_wobble_x*4,\z
    	y_distortion =  delur_wobble_y*4\z
			}"
  },
    {
    type = "noise-expression",
    name = "starting_tungsten",
    expression = "starting_spot_at_angle{\z
			angle = map_seed_normalized * 3600,\z
    	distance = 70,\z
    	radius = 12,\z
    	x_distortion =  delur_wobble_x*4,\z
    	y_distortion =  delur_wobble_y*4\z
			}"
  },
})

data:extend({--delur ore generations.
  {
    type = "noise-function",
    name = "delur_simple_spot",
    parameters = {"seed1", "radius", "spacing", "favorability"},
    expression = "spot_noise{\z
      x = x + delur_wobble_x* 0.5 * radius,\z
      y = y + delur_wobble_y* 0.5 * radius,\z
      seed0 = map_seed,\z
      seed1 = seed1,\z
      skip_span = 1,\z
      skip_offset = 1,\z
      region_size = spacing * 5,\z
      density_expression = favorability,\z
      spot_favorability_expression = favorability,\z
      candidate_spot_count = 22,\z
      suggested_minimum_candidate_point_spacing = spacing,\z
      spot_quantity_expression = radius * radius,\z
      spot_radius_expression = radius,\z
      hard_region_target_quantity = 0,\z
      basement_value = -1,\z
      maximum_spot_basement_radius = radius * 2\z
    }"
  },
{--calcite expression
    type = "noise-expression",
    name = "calcite_richness",
    -- HINWEIS: Seed 1000 beibehalten
    expression = "(distance_from_center*2+600) * max(4*starting_calcite , (delur_simple_spot(1000, 40 * size ^ 0.5, 600 / frequency ^ 0.5,1)) * richness / size)",
    local_expressions =
    {
        richness = "control:calcite:richness",
        frequency = "control:calcite:frequency",
        size = "control:calcite:size",
    }
},
{--calcite placement
    type = "noise-expression",
    name = "calcite_probability",
    expression = "max(starting_calcite*10, (control:calcite:size > 0) * (calcite_richness > 1) * 0.9)"
},
{--amalgam expression
    type = "noise-expression",
    name = "amalgam_richness",
    -- GEÄNDERT: Seed 1001
    expression = "(distance_from_center*2+600) * max(4*starting_amalgam , (delur_simple_spot(1001, 40 * size ^ 0.5, 600 / frequency ^ 0.5,1)) * richness / size)",
    local_expressions =
    {
        richness = "control:amalgam:richness",
        frequency = "control:amalgam:frequency",
        size = "control:amalgam:size",
    }
},
{--amalgam placement
    type = "noise-expression",
    name = "amalgam_probability",
    expression = "max(starting_amalgam*10, (control:amalgam:size > 0) * (amalgam_richness > 1) * 0.9)"
},

{--tungsten ore expression
    type = "noise-expression",
    name = "tungsten_ore_richness",
    -- GEÄNDERT: Seed 1002
    expression = "(distance_from_center*2+600) * max(4*starting_tungsten , (delur_simple_spot(1002, 40 * size ^ 0.5, 600 / frequency ^ 0.5,1)) * richness / size)",
    local_expressions =
    {
        richness = "control:tungsten_ore:richness", -- WICHTIGE KORREKTUR des control-Namens
        frequency = "control:tungsten_ore:frequency",
        size = "control:tungsten_ore:size",
    }
},
{--tungsten ore placement
    type = "noise-expression",
    name = "tungsten_ore_probability",
    expression = "max(starting_tungsten*10, (control:tungsten_ore:size > 0) * (tungsten_ore_richness > 1) * 0.9)"
},
	{
    type = "noise-function",
    name = "delur_spot_noise",
    parameters = {"seed", "count", "skip_offset", "region_size", "density", "radius", "favorability"},
    expression = "spot_noise{\z
			x = x,\z
      y = y,\z
      seed0 = map_seed,\z
      seed1 = seed,\z
      candidate_spot_count = count,\z
      suggested_minimum_candidate_point_spacing = 128,\z
      skip_span = 3,\z
      skip_offset = skip_offset,\z
      region_size = region_size,\z
      density_expression = density,\z
      spot_quantity_expression = radius * radius,\z
      spot_radius_expression = radius,\z
      hard_region_target_quantity = 0,\z
      spot_favorability_expression = favorability,\z
      basement_value = -1,\z
      maximum_spot_basement_radius = radius * 2}"
  }

})

--Red Biome
data.raw.tile["fulgoran-rock"].autoplace = {
	probability_expression = [[
	  delur_height(x, y) - noise >= 0.95
	]],
	local_expressions = {
  noise = [[
		multioctave_noise{
			x = x,
			y = y,
			persistence = 0.7,
			seed0 = map_seed,
			seed1 = 20,
			octaves = 3,
			input_scale = 1/3,
			output_scale = 0.1
		}
	]],
  },
	order = "a[red]-a[dunes]"
}
data.raw.tile["fulgoran-dunes"].autoplace = {
	probability_expression = [[
	  delur_height(x, y) - noise >= 0.85
	]],
	local_expressions = {
  noise = [[
		multioctave_noise{
			x = x,
			y = y,
			persistence = 0.6,
			seed0 = map_seed,
			seed1 = 22,
			octaves = 2,
			input_scale = 1/12,
			output_scale = 0.2
		}
	]],
  },
	order = "a[red]-b[sand]"
}
data.raw.tile["fulgoran-sand"].autoplace = {
	probability_expression = [[
	  delur_height(x, y) - noise >= 0.8
	]],
	local_expressions = {
  noise = [[
		multioctave_noise{
			x = x,
			y = y,
			persistence = 0.5,
			seed0 = map_seed,
			seed1 = 21,
			octaves = 2,
			input_scale = 1/30,
			output_scale = 0.2
		}
	]],
  },
	order = "a[red]-c[rock]"
}
data.raw.tile["fulgoran-dust"].autoplace = {
	probability_expression = [[
		delur_height(x, y) >= 0.75
	]],
	order = "a[red]-d[dust]"
}
--Dust Biome (midlands)
data.raw.tile["dust-lumpy"].autoplace = {
	probability_expression = [[
		delur_height(x, y) - noise >= 0.7
	]],
	local_expressions = {
  noise = [[
		multioctave_noise{
			x = x,
			y = y,
			persistence = 0.7,
			seed0 = map_seed,
			seed1 = 13,
			octaves = 2,
			input_scale = 1/8,
			output_scale = 0.3
		}
	]],
  },
	order = "c[dust]-a[lumpy]"
}
data.raw.tile["dust-crests"].autoplace = {
	probability_expression = [[
		delur_height(x, y) - noise >= 0.7
	]],
	local_expressions = {
  noise = [[
		multioctave_noise{
			x = x,
			y = y,
			persistence = 0.7,
			seed0 = map_seed,
			seed1 = 11,
			octaves = 2,
			input_scale = 1/8,
			output_scale = 0.3
		}
	]],
  },
	order = "c[dust]-b[crests]"
}
data.raw.tile["dust-patchy"].autoplace = {
	probability_expression = [[
  delur_height(x, y) - noise >= 0.4
	]],
	local_expressions = {
  noise = [[
		multioctave_noise{
			x = x,
			y = y,
			persistence = 0.8,
			seed0 = map_seed,
			seed1 = 12,
			octaves = 3,
			input_scale = 1/30,
			output_scale = 0.2
		}
	]],
  },
	order = "c[dust]-c[patchy]"
}
data.raw.tile["dust-flat"].autoplace = {
	probability_expression = [[
		delur_height(x, y) >= 0
	]],
	order = "c[dust]-d[flat]"
}
--ice biome
data.raw.tile["ice-smooth"].autoplace = {
	probability_expression = [[
		delur_ice_noise(x, y) <= -0.1
	]],
	order = "b[ice]-a[flat]"
}

 data:extend {
  {
    type = "planet",
    name = "nauvis",
    icon = "__base__/graphics/icons/nauvis.png",
    starmap_icon = "__base__/graphics/icons/starmap-planet-nauvis.png",
    starmap_icon_size = 512,
    gravity_pull = 10,
    distance = 15,
    orientation = 0.275,
    magnitude = 1,
    order = "a[delur]",
    subgroup = "planets",
    map_seed_offset = 0,
    map_gen_settings = planet_map_gen.delur(),
    pollutant_type = nil,
    solar_power_in_space = 100,
    planet_procession_set =
    {
      arrival = {"default-b"},
      departure = {"default-rocket-a"}
    },
    surface_properties =
    {
      ["day-night-cycle"] = 85 * minute,
      ["solar-power"] = 10,
      pressure = 135,
      gravity = 1.35,
    },
  }
} 

planet_map_gen.vulcanus_modified = function()
  return
  {
    property_expression_names =
    {
      elevation = "vulcanus_elevation",
      temperature = "vulcanus_temperature",
      moisture = "vulcanus_moisture",
      aux = "vulcanus_aux",
      cliffiness = "cliffiness_basic",
      cliff_elevation = "cliff_elevation_from_elevation",
    },
    cliff_settings =
    {
      name = "cliff-vulcanus",
      cliff_elevation_interval = 120,
      cliff_elevation_0 = 70
    },
    territory_settings =
    {
      units = {"small-demolisher", "medium-demolisher", "big-demolisher"},
      territory_index_expression = "demolisher_territory_expression",
      territory_variation_expression = "demolisher_variation_expression",
      minimum_territory_size = 10
    },
    autoplace_controls =
    {
      --["rocks"] = {}, -- can't add the rocks control otherwise nauvis rocks spawn
    },
    autoplace_settings =
    {
      ["tile"] =
      {
        settings =
        {
          --nauvis tiles
          ["volcanic-soil-dark"] = {},
          ["volcanic-soil-light"] = {},
          ["volcanic-ash-soil"] = {},
          --end of nauvis tiles
          ["volcanic-ash-flats"] = {},
          ["volcanic-ash-light"] = {},
          ["volcanic-ash-dark"] = {},
          ["volcanic-cracks"] = {},
          ["volcanic-cracks-warm"] = {},
          ["volcanic-folds"] = {},
          ["volcanic-folds-flat"] = {},
          ["lava"] = {},
          ["lava-hot"] = {},
          ["volcanic-folds-warm"] = {},
          ["volcanic-pumice-stones"] = {},
          ["volcanic-cracks-hot"] = {},
          ["volcanic-jagged-ground"] = {},
          ["volcanic-smooth-stone"] = {},
          ["volcanic-smooth-stone-warm"] = {},
          ["volcanic-ash-cracks"] = {},
        }
      },
      ["decorative"] =
      {
        settings =
        {
          -- nauvis decoratives
          ["v-brown-carpet-grass"] = {},
          ["v-green-hairy-grass"] = {},
          ["v-brown-hairy-grass"] = {},
          ["v-red-pita"] = {},
          -- end of nauvis
          ["vulcanus-rock-decal-large"] = {},
          ["vulcanus-crack-decal-large"] = {},
          ["vulcanus-crack-decal-huge-warm"] = {},
          ["vulcanus-dune-decal"] = {},
          ["vulcanus-sand-decal"] = {},
          ["vulcanus-lava-fire"] = {},
          ["calcite-stain"] = {},
          ["calcite-stain-small"] = {},
          ["sulfur-stain"] = {},
          ["sulfur-stain-small"] = {},
          ["sulfuric-acid-puddle"] = {},
          ["sulfuric-acid-puddle-small"] = {},
          ["crater-small"] = {},
          ["crater-large"] = {},
          ["pumice-relief-decal"] = {},
          ["small-volcanic-rock"] = {},
          ["medium-volcanic-rock"] = {},
          ["tiny-volcanic-rock"] = {},
          ["tiny-rock-cluster"] = {},
          ["small-sulfur-rock"] = {},
          ["tiny-sulfur-rock"] = {},
          ["sulfur-rock-cluster"] = {},
          ["waves-decal"] = {},
        }
      },
      ["entity"] =
      {
        settings =
        {
          ["huge-volcanic-rock"] = {},
          ["big-volcanic-rock"] = {},
          ["crater-cliff"] = {},
          ["vulcanus-chimney"] = {},
          ["vulcanus-chimney-faded"] = {},
          ["vulcanus-chimney-cold"] = {},
          ["vulcanus-chimney-short"] = {},
          ["vulcanus-chimney-truncated"] = {},
          ["ashland-lichen-tree"] = {},
          ["ashland-lichen-tree-flaming"] = {},
        }
      }
    }
  }
end

local effects = require("__core__.lualib.surface-render-parameter-effects")
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")
local planet_catalogue_vulcanus = require("__space-age__.prototypes.planet.procession-catalogue-vulcanus")

data:extend(
{
  {
    type = "planet",
    name = "vulcanus",
    icon = "__space-age__/graphics/icons/vulcanus.png",
    starmap_icon = "__space-age__/graphics/icons/starmap-planet-vulcanus.png",
    starmap_icon_size = 512,
    gravity_pull = 10,
    distance = 10,
    orientation = 0.1,
    magnitude = 1.5,
    order = "b[vulcanus]",
    subgroup = "planets",
    map_gen_settings = planet_map_gen.vulcanus_modified(),
    pollutant_type = nil,
    solar_power_in_space = 600,
    platform_procession_set =
    {
      arrival = {"planet-to-platform-b"},
      departure = {"platform-to-planet-a"}
    },
    planet_procession_set =
    {
      arrival = {"platform-to-planet-b"},
      departure = {"planet-to-platform-a"}
    },
    procession_graphic_catalogue = planet_catalogue_vulcanus,
    surface_properties =
    {
      ["day-night-cycle"] = 1.5 * minute,
      ["magnetic-field"] = 25,
      ["solar-power"] = 400,
      pressure = 4000,
      gravity = 40
    },
    asteroid_spawn_influence = 1,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus, 0.9),
    persistent_ambient_sounds =
    {
      base_ambience = {filename = "__space-age__/sound/wind/base-wind-vulcanus.ogg", volume = 0.8},
      wind = {filename = "__space-age__/sound/wind/wind-vulcanus.ogg", volume = 0.8},
      crossfade =
      {
        order = {"wind", "base_ambience"},
        curve_type = "cosine",
        from = {control = 0.35, volume_percentage = 0.0},
        to = {control = 2, volume_percentage = 100.0}
      },
      semi_persistent =
      {
        {
          sound = {variations = sound_variations("__space-age__/sound/world/semi-persistent/distant-rumble", 3, 0.5)},
          delay_mean_seconds = 10,
          delay_variance_seconds = 5
        },
        {
          sound = {variations = sound_variations("__space-age__/sound/world/semi-persistent/distant-flames", 5, 0.6)},
          delay_mean_seconds = 15,
          delay_variance_seconds = 7.0
        }
      }
    },
    surface_render_parameters =
    {
      fog = effects.default_fog_effect_properties(),
      -- clouds = effects.default_clouds_effect_properties(),

      -- Should be based on the default day/night times, ie
      -- sun starts to set at 0.25
      -- sun fully set at 0.45
      -- sun starts to rise at 0.55
      -- sun fully risen at 0.75
      day_night_cycle_color_lookup =
      {
        {0.0, "__space-age__/graphics/lut/vulcanus-1-day.png"},
        {0.20, "__space-age__/graphics/lut/vulcanus-1-day.png"},
        {0.45, "__space-age__/graphics/lut/vulcanus-2-night.png"},
        {0.55, "__space-age__/graphics/lut/vulcanus-2-night.png"},
        {0.80, "__space-age__/graphics/lut/vulcanus-1-day.png"},
      },

      terrain_tint_effect =
      {
        noise_texture =
        {
          filename = "__space-age__/graphics/terrain/vulcanus/tint-noise.png",
          size = 4096
        },

        offset = { 0.2, 0, 0.4, 0.8 },
        intensity = { 0.5, 0.2, 0.3, 1.0 },
        scale_u = { 3, 1, 1, 1 },
        scale_v = { 1, 1, 1, 1 },

        global_intensity = 0.3,
        global_scale = 0.1,
        zoom_factor = 3,
        zoom_intensity = 0.6
      }
    }
  }
})