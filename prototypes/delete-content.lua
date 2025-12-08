--this is the part where I murder the game, Thanks to Rseding91's fourm comments which helped me do this.

	data.raw ["technology"] = {}
	data.raw ["tips-and-tricks-item"] = {}
	data.raw ["utility-constants"]["default"].main_menu_simulations = {}
	data.raw ["space-connection"] = {}
    
--Due to the removal of vanilla techs, shortcuts dependant on them must be modified.

	data.raw ["shortcut"]["undo"].technology_to_unlock = nil
	data.raw ["shortcut"]["redo"].technology_to_unlock = nil
	data.raw ["shortcut"]["copy"].technology_to_unlock = nil
	data.raw ["shortcut"]["cut"].technology_to_unlock = nil
	data.raw ["shortcut"]["paste"].technology_to_unlock = nil
	data.raw ["shortcut"]["import-string"].technology_to_unlock = nil
	data.raw ["shortcut"]["give-blueprint"].technology_to_unlock = nil
	data.raw ["shortcut"]["give-blueprint-book"].technology_to_unlock = nil
	data.raw ["shortcut"]["give-deconstruction-planner"].technology_to_unlock = nil
	data.raw ["shortcut"]["give-upgrade-planner"].technology_to_unlock = nil
	data.raw ["shortcut"]["toggle-personal-roboport"].technology_to_unlock = nil
	data.raw ["shortcut"]["toggle-equipment-movement-bonus"].technology_to_unlock = nil
	data.raw ["shortcut"]["give-copper-wire"].technology_to_unlock = nil
	data.raw ["shortcut"]["give-red-wire"].technology_to_unlock = nil
	data.raw ["shortcut"]["give-green-wire"].technology_to_unlock = nil
	data.raw ["shortcut"]["give-spidertron-remote"].technology_to_unlock = nil
	data.raw ["shortcut"]["give-discharge-defense-remote"].technology_to_unlock = nil
	data.raw ["shortcut"]["give-artillery-targeting-remote"].technology_to_unlock = nil
	data.raw ["shortcut"]["undo"].unavailable_until_unlocked = nil
	data.raw ["shortcut"]["redo"].unavailable_until_unlocked = nil
	data.raw ["shortcut"]["copy"].unavailable_until_unlocked = nil
	data.raw ["shortcut"]["cut"].unavailable_until_unlocked = nil
	data.raw ["shortcut"]["paste"].unavailable_until_unlocked = nil
	data.raw ["shortcut"]["import-string"].unavailable_until_unlocked = nil
	data.raw ["shortcut"]["give-blueprint"].unavailable_until_unlocked = nil
	data.raw ["shortcut"]["give-blueprint-book"].unavailable_until_unlocked = nil
	data.raw ["shortcut"]["give-deconstruction-planner"].unavailable_until_unlocked = nil
	data.raw ["shortcut"]["give-upgrade-planner"].unavailable_until_unlocked = nil
	data.raw ["shortcut"]["toggle-personal-roboport"].unavailable_until_unlocked = true
	data.raw ["shortcut"]["toggle-equipment-movement-bonus"].unavailable_until_unlocked = true
	data.raw ["shortcut"]["give-discharge-defense-remote"].unavailable_until_unlocked = true
	data.raw ["shortcut"]["give-artillery-targeting-remote"].unavailable_until_unlocked = true

--remove recipes

	local removed_recipes = {"stone-brick","space-platform-foundation","small-lamp","constant-combinator","selector-combinator","arithmetic-combinator","decider-combinator","decider-combinator","power-switch","programmable-speaker","display-panel","repair-pack","construction-robot","logistic-robot","electric-mining-drill","pumpjack","pipe","pipe-to-ground","pump","storage-tank","rail","cargo-wagon","fluid-wagon","rail-signal","rail-chain-signal","train-stop","locomotive","radar","cargo-landing-pad","speed-module","efficiency-module","transport-belt","fast-transport-belt","underground-belt","fast-underground-belt","splitter","fast-splitter","toolbelt-equipment","rocket-silo","rocket-part","iron-chest","basic-oil-processing","advanced-oil-processing","simple-coal-liquefaction","coal-liquefaction","heavy-oil-cracking","light-oil-cracking","solid-fuel-from-petroleum-gas","solid-fuel-from-light-oil","solid-fuel-from-heavy-oil","acid-neutralisation","steam-condensation","ice-melting","iron-plate","copper-plate","steel-plate","plastic-bar","coal-synthesis","carbon","explosives","battery","sulfur","iron-gear-wheel","iron-stick","copper-cable","sulfuric-acid","thruster-fuel","advanced-thruster-fuel","thruster-oxidizer","advanced-thruster-oxidizer","concrete","concrete-from-molten-iron","hazard-concrete","refined-concrete","refined-hazard-concrete","barrel","cliff-explosives","inserter","long-handed-inserter","beacon","thruster","productivity-module","space-platform-starter-pack","wooden-chest","burner-inserter","burner-mining-drill","stone-furnace","firearm-magazine","light-armor"}

	for name, recipe in pairs(data.raw.recipe) do
		for _, hideName in ipairs(removed_recipes) do
			if recipe.name == hideName then
				data.raw.recipe[recipe.name] = nil
			end
		end
	end

--hide autoplace control

    data.raw["autoplace-control"]["iron-ore"].hidden = true
    data.raw["autoplace-control"]["copper-ore"].hidden = true
    data.raw["autoplace-control"]["coal"].hidden = true
    data.raw["autoplace-control"]["stone"].hidden = true
    data.raw["autoplace-control"]["crude-oil"].hidden = true
    data.raw["autoplace-control"]["uranium-ore"].hidden = true
    data.raw["autoplace-control"]["vulcanus_coal"].hidden = true
    data.raw["autoplace-control"]["sulfuric_acid_geyser"].hidden = true
    data.raw["autoplace-control"]["gleba_stone"].hidden = true
    data.raw["autoplace-control"]["scrap"].hidden = true
    data.raw["autoplace-control"]["lithium_brine"].hidden = true
    data.raw["autoplace-control"]["fluorine_vent"].hidden = true
    data.raw["autoplace-control"]["aquilo_crude_oil"].hidden = true

--disable the nauvis climate controls.

	data.raw["planet"]["nauvis"].map_gen_settings.aux_climate_control = false
	data.raw["planet"]["nauvis"].map_gen_settings.moisture_climate_control = false
