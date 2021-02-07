
-- Namespace for machine_parts
machine_parts = {
	modpath = minetest.get_modpath("machine_parts"),
	materials = {
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
		ironblock = false,
		cast_ironblock = false,
		steelblock = false,
		carbon_steelblock = false,
		stainless_steelblock = false,
		tinblock = false,
		goldblock = false,
		leadblock = false,
		copperblock = false,
		brassblock = false,
		bronzeblock = false,
		-- Electrical components
		copper_wire = false,
		light = false,
		-- Other
		steel_bar = false,
		steel_strip = false,
		steel_gear = false,
		ladder_wood = false,
		ladder_steel = false,
		diamond = false,
		diamondblock = false,
		glass = false,
		tempered_glass = false,
		laminated_glass = false,
	},
	mods = {},
}

-- Get material name translating machine_parts material names
local function get_material(name)
	if name:find(":") then
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

-- Define materials and execute sanity checks
dofile(machine_parts.modpath .. "/materials.lua")
for k,v in pairs(machine_parts.materials) do
	assert(type(v) == "string", "Missing or invalid material for " .. k)
end

-- Define basic recipes and craft items, core functionality of machine_parts
dofile(machine_parts.modpath .. "/items.lua")
dofile(machine_parts.modpath .. "/recipes.lua")

-- Mods supported for recipe registrations, code is loaded from recipes/modname.lua
local optional_mods = {
	"advtrains",
	"advtrains_railbus",
	"advtrains_subway_colored",
	"linetrack",
}

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
			dofile(fpath)
		end
	end
end

-- Load mod specific files if not disabled in configuration
for _,mod in ipairs(optional_mods) do
	load_mod_recipes(mod)
end
