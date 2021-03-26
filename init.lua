
-- Mods supported for recipe registrations, code is loaded from recipes/modname.lua
-- Loading can be disabled with `machine_parts.disable_modname = true` configuration option.
-- Loading is enabled by default if listed mod is available and enabled.
local optional_mods = {
	"advtrains",
	"advtrains_railbus",
	"advtrains_train_subway",
	"advtrains_train_japan",
	"advtrains_train_industrial",
	"linetrack",
}

-- Namespace for machine_parts
-- To add another material for crafting: add to machine_parts.materials list
-- `material_name = false,` and call add_material(mod, name, value) in materials.lua.
machine_parts = {
	dprint = minetest.settings:get_bool("machine_parts.debug") and print or (function()end),
	modpath = minetest.get_modpath("machine_parts"),
	materials = {
		-- Machine parts
		gear_assembly = false,
		gearbox = false,
		engine_block = false,
		drive_shaft = false,
		dashboard = false,
		wagon_frame = false,
		-- Metal alloys, ingots / small quantity
		iron = false,
		cast_iron = false,
		steel = false,
		carbon_steel = false,
		stainless_steel = false,
		tin = false,
		gold = false,
		lead = false,
		copper = false,
		brass = false,
		bronze = false,
		-- Metal alloys, blocks / large quantity
		iron_block = false,
		cast_iron_block = false,
		steel_block = false,
		carbon_steel_block = false,
		stainless_steel_block = false,
		tin_block = false,
		gold_block = false,
		lead_block = false,
		copper_block = false,
		brass_block = false,
		bronze_block = false,
		-- Electrical components
		copper_wire = false,
		light = false,
		ic = false,
		cpu = false,
		speaker = false,
		heating_element = false,
		motor = false,
		transformer = false,
		battery = false,
		monitor = false,
		datacable = false,
		-- Dyes
		dye_blue = false,
		dye_red = false,
		dye_violet = false,
		dye_green = false,
		dye_yellow = false,
		dye_black = false,
		-- Other
		rubber = false,
		oil = false,
		paraffin = false,
		steel_bar = false,
		steel_strip = false,
		steel_gear = false,
		ladder_wood = false,
		ladder_steel = false,
		diamond = false,
		diamond_block = false,
		glass = false,
		tempered_glass = false,
		laminated_glass = false,
	},
	mods = {},
}

-- Get material name translating machine_parts material names
local function get_material(name)
	if name == "" or name:find(":") then
		-- Return material as is if name contains colon
		return name
	end
	-- Verify and translate material
	assert(machine_parts.materials[name], "Attempt to use unavailable material "..name)
	return machine_parts.materials[name]
end

-- Translate recipe materials
function machine_parts.recipe(data)
	local result = {}
	for _,row in ipairs(data) do
		local resultrow = {}
		for _,item in ipairs(row) do
			table.insert(resultrow, get_material(item))
		end
		table.insert(result, resultrow)
	end
	return result
end

function machine_parts.register_craft(data)
	if data.clear_craft then
		minetest.clear_craft({output=data.output})
	end
	minetest.register_craft({
		output = data.output,
		recipe = machine_parts.recipe(data.recipe)
	})
end

-- Define materials and execute sanity checks
dofile(machine_parts.modpath .. "/materials.lua")
dofile(machine_parts.modpath .. "/items.lua")
for k,v in pairs(machine_parts.materials) do
	assert(type(v) == "string", "Missing or invalid material for " .. k)
end

-- Define basic recipes and craft items, core functionality of machine_parts
dofile(machine_parts.modpath .. "/recipes.lua")

-- Collect available mods that are not disabled through configuration
for _,mod in ipairs(optional_mods) do
	if not minetest.settings:get_bool("machine_parts.disable_" .. mod, false) then
		machine_parts.mods[mod] = minetest.get_modpath(mod)
	end
end

-- Check and load code if mod is enabled
local function load_mod_recipes(mod)
	if machine_parts.mods[mod] then
		local fpath = machine_parts.modpath .. "/recipes/" .. mod .. ".lua"
		local f = io.open(fpath, "r")
		if f then
			f:close()
			machine_parts.dprint(("Loading %s"):format(fpath))
			dofile(fpath)
		end
	end
end

minetest.register_on_mods_loaded(function()
	-- Another consistency check to verify no items missing / typo check for materials
	for _,item in pairs(machine_parts.materials) do
		assert(minetest.registered_items[item], "Craft item missing, verify item name: "..item)
	end

	-- Load mod specific files if not disabled in configuration
	for _,mod in ipairs(optional_mods) do
		load_mod_recipes(mod)
	end
end)
